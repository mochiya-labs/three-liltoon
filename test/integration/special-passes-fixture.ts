import {
	Scene,
	PerspectiveCamera,
	WebGLRenderer,
	WebGLRenderTarget,
	Mesh,
	PlaneGeometry,
	SphereGeometry,
	MeshBasicMaterial,
	Color,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../dist/index.js";

export function verifySpecialPasses() {
	const gallery = document.createElement("div");
	gallery.style.cssText =
		"position:fixed;inset:0;z-index:99999;background:white;color:black;display:flex;align-items:flex-start;gap:24px;padding:24px";
	document.body.append(gallery);
	const renderer = new WebGLRenderer({
		antialias: false,
		preserveDrawingBuffer: true,
	});
	renderer.setSize(128, 128);
	const draws: {
		pass: string;
		depth: boolean;
		coverage: boolean;
		src: number;
		dst: number;
	}[] = [];
	const direct = renderer.renderBufferDirect;
	renderer.renderBufferDirect = function (...args) {
		const material = args[3];
		if (material instanceof LilToonMaterial)
			draws.push({
				pass: material.pass,
				depth: material.depthWrite,
				coverage: material.alphaToCoverage,
				src: material.blendSrc,
				dst: material.blendDst,
			});
		return direct.apply(this, args);
	};
	const release = enableLilToon(renderer),
		scene = new Scene();
	scene.background = new Color(0x204080);
	const camera = new PerspectiveCamera(35, 1, 0.1, 30);
	camera.position.z = 4;
	const back = new Mesh(
		new PlaneGeometry(5, 5),
		new MeshBasicMaterial({ color: 0xe04020 }),
	);
	back.position.z = -1;
	scene.add(back);
	const stripe = new Mesh(
		new PlaneGeometry(0.5, 5),
		new MeshBasicMaterial({ color: 0x20e040 }),
	);
	stripe.position.set(0.2, 0, -0.9);
	scene.add(stripe);
	const read = () => {
		const b = new Uint8Array(128 * 128 * 4);
		renderer
			.getContext()
			.readPixels(
				0,
				0,
				128,
				128,
				renderer.getContext().RGBA,
				renderer.getContext().UNSIGNED_BYTE,
				b,
			);
		return b;
	};
	const count = (a: Uint8Array, b: Uint8Array) => {
		let n = 0;
		for (let i = 0; i < a.length; i += 4)
			if (a[i] !== b[i] || a[i + 1] !== b[i + 1] || a[i + 2] !== b[i + 2]) n++;
		return n;
	};
	const results: Record<string, unknown> = {};
	let clearRefraction: Uint8Array | undefined;
	for (const mode of [
		"refraction",
		"gem",
		"fur",
		"refraction-blur",
		"fur-cutout",
		"fur-two-pass",
	] as const) {
		const material = new LilToonMaterial({
			renderMode: mode,
			properties: {
				_UseOutline: 0,
				_AsUnlit: 1,
				_Color: [1, 1, 1, mode.startsWith("refraction") ? 0 : 1],
				_RefractionStrength: 0,
				_Smoothness: 1,
				_RefractionFresnelPower: 1,
				_GemEnvContrast: 1,
				_FurVector: [0, 0, 1, 0.2],
				_FurLayerNum: 2,
				_FurRandomize: 0,
			},
		});
		const geometry = new SphereGeometry(0.65, 12, 8);
		if (mode === "fur") {
			const morph = geometry.attributes.position!.clone();
			for (let i = 0; i < morph.count; i++) morph.setX(i, morph.getX(i) * 1.6);
			geometry.morphAttributes.position = [morph];
		}
		const mesh = new Mesh(geometry, material);
		mesh.frustumCulled = false;
		scene.add(mesh);
		const before = mesh.onBeforeRender,
			after = mesh.onAfterRender;
		draws.length = 0;
		renderer.render(scene, camera);
		const sequence = draws.slice();
		const first = read();
		if (mode === "refraction") clearRefraction = first;
		if (mode === "refraction-blur")
			results.zeroBlurDifference = count(clearRefraction!, first);
		material.setProperty(
			mode.startsWith("fur")
				? "_FurVector"
				: mode === "refraction-blur"
					? "_Smoothness"
					: "_RefractionStrength",
			mode.startsWith("fur")
				? [0, 0, 1, 0.6]
				: mode === "refraction-blur"
					? 0
					: 0.15,
		);
		renderer.render(scene, camera);
		const second = read();
		const preview = document.createElement("img");
		preview.src = renderer.domElement.toDataURL();
		preview.alt = mode;
		const figure = document.createElement("figure");
		figure.append(preview, document.createElement("br"), mode);
		gallery.append(figure);
		results[mode] = {
			sequence,
			changed: count(first, second),
			glError: renderer.getContext().getError(),
			restored: mesh.onBeforeRender === before && mesh.onAfterRender === after,
			children: mesh.children.length,
			warnings: material.getWarnings().map((w) => w.property),
		};
		if (mode === "fur") {
			mesh.morphTargetInfluences![0] = 1;
			renderer.render(scene, camera);
			results.furMorphChanged = count(second, read());
			mesh.morphTargetInfluences![0] = 0;
			renderer.render(scene, camera);
			results.furMorphReset = count(second, read());
			results.furMorphError = renderer.getContext().getError();
		}
		scene.remove(mesh);
		material.dispose();
		geometry.dispose();
	}
	renderer.render(scene, camera);
	const target = new WebGLRenderTarget(80, 60, { samples: 4 });
	renderer.setRenderTarget(target);
	const glass = new Mesh(
		new SphereGeometry(0.5, 8, 6),
		new LilToonMaterial({
			renderMode: "refraction-blur",
			properties: { _UseOutline: 0, _Color: [1, 1, 1, 0] },
		}),
	);
	scene.add(glass);
	renderer.render(scene, camera);
	results.offscreenError = renderer.getContext().getError();
	results.targetRestored = renderer.getRenderTarget() === target;
	scene.remove(glass);
	glass.geometry.dispose();
	glass.material.dispose();
	renderer.setRenderTarget(null);
	target.dispose();
	results.memory = { ...renderer.info.memory };
	release();
	renderer.dispose();
	return results;
}
