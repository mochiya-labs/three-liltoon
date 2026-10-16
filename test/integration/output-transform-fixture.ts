import * as THREE from "three";
import { EffectComposer } from "three/examples/jsm/postprocessing/EffectComposer.js";
import { RenderPass } from "three/examples/jsm/postprocessing/RenderPass.js";
import { OutputPass } from "three/examples/jsm/postprocessing/OutputPass.js";
import { LilToonMaterial, enableLilToon } from "../../dist/index.js";

export function verifyOutputTransform() {
	const renderer = new THREE.WebGLRenderer({
		alpha: true,
		preserveDrawingBuffer: true,
	});
	renderer.setSize(32, 32);
	const release = enableLilToon(renderer);
	const scene = new THREE.Scene();
	scene.background = new THREE.Color(0.12, 0.2, 0.3);
	const camera = new THREE.OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 2;
	const geometry = new THREE.PlaneGeometry(1, 1);
	const lil = new LilToonMaterial({
		properties: { _AsUnlit: 1, _Color: [0.18, 0.4, 2, 1], _UseOutline: 0 },
	});
	const standard = new THREE.MeshBasicMaterial({
		color: new THREE.Color(0.18, 0.4, 2),
	});
	const mesh = new THREE.Mesh(geometry, lil);
	scene.add(mesh);
	const composer = new EffectComposer(
		renderer,
		new THREE.WebGLRenderTarget(32, 32, { type: THREE.HalfFloatType }),
	);
	const renderPass = new RenderPass(scene, camera);
	const outputPass = new OutputPass();
	composer.addPass(renderPass);
	composer.addPass(outputPass);
	const gl = renderer.getContext();
	function sample(material: THREE.Material, post = false) {
		mesh.material = material as LilToonMaterial;
		if (post) composer.render();
		else renderer.render(scene, camera);
		const pixel = new Uint8Array(4);
		gl.readPixels(16, 16, 1, 1, gl.RGBA, gl.UNSIGNED_BYTE, pixel);
		return [...pixel];
	}
	const checks: Record<string, boolean> = {};
	const samples: Record<string, number[]> = {};
	const close = (a: number[], b: number[], tolerance = 2) =>
		a.every((v, i) => Math.abs(v - b[i]!) <= tolerance);
	for (const mode of [
		THREE.NoToneMapping,
		THREE.LinearToneMapping,
		THREE.ReinhardToneMapping,
		THREE.CineonToneMapping,
		THREE.ACESFilmicToneMapping,
		THREE.AgXToneMapping,
		THREE.NeutralToneMapping,
	]) {
		for (const exposure of [0.5, 1, 2]) {
			renderer.toneMapping = mode;
			renderer.toneMappingExposure = exposure;
			const a = sample(lil),
				b = sample(standard);
			samples[`${mode}/${exposure}`] = a;
			checks[`direct-${mode}-${exposure}`] = close(a, b);
			checks[`output-pass-${mode}-${exposure}`] = close(
				sample(lil, true),
				sample(standard, true),
			);
		}
	}
	renderer.toneMapping = THREE.NeutralToneMapping;
	lil.toneMapped = false;
	standard.toneMapped = false;
	checks.toneMappedFalse = close(sample(lil), sample(standard));
	const clone = lil.clone();
	checks.clone = close(sample(clone), sample(standard));
	// Mutable color and specialization refresh must retain the output boundary.
	lil.setProperty("_UseRim", 1);
	lil.setProperty("_UseRim", 0);
	checks.refresh = close(sample(lil), sample(standard));
	lil.toneMapped = true;
	standard.toneMapped = true;
	renderer.outputColorSpace = THREE.LinearSRGBColorSpace;
	checks.linearOutput = close(sample(lil), sample(standard));
	renderer.outputColorSpace = THREE.SRGBColorSpace;
	const target = new THREE.WebGLRenderTarget(32, 32, {
		type: THREE.UnsignedByteType,
	});
	function offscreen(material: THREE.Material) {
		renderer.setRenderTarget(target);
		mesh.material = material as LilToonMaterial;
		renderer.render(scene, camera);
		const pixel = new Uint8Array(4);
		renderer.readRenderTargetPixels(target, 16, 16, 1, 1, pixel);
		renderer.setRenderTarget(null);
		return [...pixel];
	}
	checks.linearTarget = close(offscreen(lil), offscreen(standard));
	target.texture.colorSpace = THREE.SRGBColorSpace;
	target.dispose();
	checks.srgbTarget = close(offscreen(lil), offscreen(standard));
	checks.returnToScreen = close(sample(lil), sample(standard));
	// A material's output uniforms must follow the current renderer, not its first owner.
	const secondRenderer = new THREE.WebGLRenderer({
		preserveDrawingBuffer: true,
	});
	secondRenderer.setSize(32, 32);
	secondRenderer.toneMapping = THREE.ACESFilmicToneMapping;
	secondRenderer.toneMappingExposure = 0.25;
	const secondSample = (material: THREE.Material) => {
		mesh.material = material as LilToonMaterial;
		secondRenderer.render(scene, camera);
		const context = secondRenderer.getContext();
		const pixel = new Uint8Array(4);
		context.readPixels(
			16,
			16,
			1,
			1,
			context.RGBA,
			context.UNSIGNED_BYTE,
			pixel,
		);
		return [...pixel];
	};
	checks.sharedRenderer = close(secondSample(lil), secondSample(standard));
	checks.firstRendererRestored = close(sample(lil), sample(standard));
	secondRenderer.dispose();
	const translucent = new LilToonMaterial({
		renderMode: "transparent",
		properties: {
			_AsUnlit: 1,
			_Color: [0.18, 0.4, 2, 0.5],
			_UseOutline: 0,
			_Cutoff: -0.001,
			_ZWrite: 0,
		},
	});
	standard.transparent = true;
	standard.premultipliedAlpha = true;
	standard.needsUpdate = true;
	for (const alpha of [0, 0.01, 0.5, 1]) {
		translucent.opacity = alpha;
		standard.opacity = alpha;
		checks[`premultiplied-${alpha}`] = close(
			sample(translucent),
			sample(standard),
		);
		checks[`linear-blending-${alpha}`] = close(
			sample(translucent, true),
			sample(standard, true),
		);
	}
	// Auxiliary draws must inherit toneMapped independently of authored properties.
	translucent.shaderVariant = "Hidden/lilToonTransparentOutline";
	translucent.setProperty("_OutlineWidth", 0.04);
	translucent.transparencyMode = "two-pass";
	translucent.toneMapped = false;
	const auxiliary: boolean[] = [];
	const original = renderer.renderBufferDirect;
	renderer.renderBufferDirect = function (...args) {
		if (args[3] instanceof LilToonMaterial) auxiliary.push(args[3].toneMapped);
		return original.apply(this, args);
	};
	sample(translucent);
	renderer.renderBufferDirect = original;
	checks.auxiliaryToneMapped =
		auxiliary.length === 3 && auxiliary.every((v) => v === false);
	const error = gl.getError();
	for (const m of [lil, standard, translucent, clone]) m.dispose();
	geometry.dispose();
	target.dispose();
	renderPass.dispose();
	outputPass.dispose();
	composer.dispose();
	release();
	renderer.dispose();
	return { checks, samples, glError: error };
}
