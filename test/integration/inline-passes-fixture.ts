import {
	Bone,
	Color,
	Float32BufferAttribute,
	Mesh,
	MeshBasicMaterial,
	PerspectiveCamera,
	PlaneGeometry,
	Scene,
	Skeleton,
	SkinnedMesh,
	SphereGeometry,
	Uint16BufferAttribute,
	WebGLRenderer,
	WebGLRenderTarget,
} from "three";
import { enableLilToon, LilToonMaterial } from "../../dist/index.js";

// Compare inline draws with the former nested-scene submission, using identical
// shaders, source geometry, camera and MSAA target in the same WebGL context.
export async function verifyInlinePasses() {
	const renderer = new WebGLRenderer();
	renderer.setSize(96, 96);
	const nativeRender = renderer.render.bind(renderer);
	const release = enableLilToon(renderer);
	const target = new WebGLRenderTarget(96, 96, { samples: 4 });
	const scene = new Scene();
	scene.background = new Color(0.12, 0.24, 0.36);
	const camera = new PerspectiveCamera(40, 1, 0.1, 20);
	camera.position.z = 3;
	const geometry = new SphereGeometry(0.65, 16, 12);
	const morph = geometry.attributes.position.clone();
	for (let i = 0; i < morph.count; i++) morph.setX(i, morph.getX(i) * 1.2);
	geometry.morphAttributes.position = [morph];
	const count = geometry.attributes.position.count;
	geometry.setAttribute(
		"skinIndex",
		new Uint16BufferAttribute(new Uint16Array(count * 4), 4),
	);
	const weights = new Float32Array(count * 4);
	for (let i = 0; i < count; i++) weights[i * 4] = 1;
	geometry.setAttribute("skinWeight", new Float32BufferAttribute(weights, 4));
	const source = new LilToonMaterial({
		shaderVariant: "Hidden/lilToonTwoPassTransparentOutline",
		properties: {
			_AsUnlit: 1,
			_Color: [0.8, 0.3, 0.1, 0.6],
			_Cull: 0,
			_ZWrite: 0,
			_PreZWrite: 0,
			_PreCull: 1,
			_Cutoff: 0,
			_PreCutoff: 0,
			_OutlineWidth: 0.05,
			_OutlineZWrite: 0,
			_RefractionStrength: 0.1,
			_Smoothness: 0.5,
			_FurLayerNum: 3,
			_FurVector: [0, 0, 0.12, 0],
			_FurRandomize: 0.1,
		},
	});
	const mesh: SkinnedMesh = new SkinnedMesh(geometry, source),
		bone = new Bone();
	mesh.add(bone);
	mesh.bind(new Skeleton([bone]));
	scene.add(mesh);
	const back = new Mesh(
		new PlaneGeometry(5, 5),
		new MeshBasicMaterial({ color: 0x4080c0 }),
	);
	back.position.z = -1;
	scene.add(back);
	const half = Math.floor(geometry.index!.count / 6) * 3;
	geometry.clearGroups();
	geometry.addGroup(0, half, 0);
	geometry.addGroup(half, geometry.index!.count - half, 1);
	mesh.material = [source, source];
	let legacy = false,
		inside = false,
		blits = 0,
		draws = 0;
	const gl = renderer.getContext() as WebGL2RenderingContext,
		blit = gl.blitFramebuffer.bind(gl);
	gl.blitFramebuffer = (...args) => {
		blits++;
		return blit(...args);
	};
	const direct = renderer.renderBufferDirect.bind(renderer);
	renderer.renderBufferDirect = (...args) => {
		const [cam, drawScene, geo, mat, object, group] = args;
		const auxiliary =
			object !== mesh &&
			object !== back &&
			(mat instanceof LilToonMaterial || mat instanceof MeshBasicMaterial);
		if (legacy && auxiliary && !inside) {
			const proxy = object as Mesh,
				auto = renderer.autoClear,
				reset = renderer.info.autoReset,
				shadow = renderer.shadowMap.autoUpdate;
			const range = { ...geo.drawRange };
			const matrix = proxy.matrix.clone();
			const materialBefore = mat.onBeforeRender;
			try {
				inside = true;
				// Per-draw binding/configuration already ran at the inline boundary.
				mat.onBeforeRender = () => {};
				renderer.autoClear = false;
				renderer.info.autoReset = false;
				renderer.shadowMap.autoUpdate = false;
				proxy.matrix.copy(proxy.matrixWorld);
				if (group) {
					const start = Math.max(range.start, group.start);
					geo.setDrawRange(
						start,
						Math.max(
							0,
							Math.min(range.start + range.count, group.start + group.count) -
								start,
						),
					);
				}
				nativeRender(drawScene, cam);
			} finally {
				mat.onBeforeRender = materialBefore;
				inside = false;
				proxy.matrix.copy(matrix);
				geo.setDrawRange(range.start, range.count);
				renderer.autoClear = auto;
				renderer.info.autoReset = reset;
				renderer.shadowMap.autoUpdate = shadow;
			}
		} else {
			draws++;
			direct(...args);
		}
	};
	const render = (nested: boolean) => {
		legacy = nested;
		blits = 0;
		draws = 0;
		renderer.setRenderTarget(target);
		renderer.render(scene, camera);
		const pixels = new Uint8Array(96 * 96 * 4);
		renderer.readRenderTargetPixels(target, 0, 0, 96, 96, pixels);
		return { pixels, blits, draws };
	};
	const results = [];
	for (const variant of [
		"Hidden/lilToonTwoPassTransparentOutline",
		"Hidden/lilToonGem",
		"Hidden/lilToonRefractionBlur",
		"Hidden/lilToonFur",
		"Hidden/lilToonFurCutout",
		"Hidden/lilToonFurTwoPass",
	] as const) {
		source.shaderVariant = variant;
		for (const pose of [0, 1]) {
			mesh.position.set(0.1, -0.05, 0);
			mesh.rotation.z = pose * 0.1;
			bone.rotation.y = pose * 0.2;
			mesh.morphTargetInfluences![0] = pose;
			camera.position.x = pose * 0.35;
			camera.lookAt(0, 0, 0);
			const first = render(false);
			render(true);
			const old = render(true),
				current = render(false),
				repeat = render(false);
			// A completed nested Three render can unbind READ while keeping DRAW.
			const before = mesh.onBeforeRender;
			mesh.onBeforeRender = () => gl.bindFramebuffer(gl.READ_FRAMEBUFFER, null);
			const separateRead = render(false);
			mesh.onBeforeRender = before;
			const diff = (a: Uint8Array, b: Uint8Array) =>
				a.reduce((n, v, i) => n + Number(Math.abs(v - b[i]!) > 2), 0);
			results.push({
				variant,
				pose,
				difference: diff(old.pixels, current.pixels),
				firstDifference: diff(first.pixels, current.pixels),
				separateReadDifference: diff(current.pixels, separateRead.pixels),
				repeat: diff(current.pixels, repeat.pixels),
				oldBlits: old.blits,
				blits: current.blits,
				oldDraws: old.draws,
				draws: current.draws,
				error: gl.getError(),
			});
		}
	}
	const rebuilt = [];
	for (const update of [
		() => source.setProperty("_FurLayerNum", 4),
		() => {
			geometry.index!.needsUpdate = true;
		},
		() => {
			mesh.geometry = geometry.clone();
			geometry.dispose();
		},
	]) {
		update();
		const first = render(false),
			repeated = render(false),
			old = render(true);
		rebuilt.push({
			difference: first.pixels.reduce(
				(n, v, i) => n + Number(Math.abs(v - old.pixels[i]!) > 2),
				0,
			),
			repeat: first.pixels.reduce(
				(n, v, i) => n + Number(Math.abs(v - repeated.pixels[i]!) > 2),
				0,
			),
			error: gl.getError(),
		});
	}
	const before = render(false);
	const restored = new Promise<void>((resolve) =>
		renderer.domElement.addEventListener(
			"webglcontextrestored",
			() => resolve(),
			{ once: true },
		),
	);
	renderer.forceContextLoss();
	await new Promise((r) => setTimeout(r, 50));
	renderer.forceContextRestore();
	await restored;
	const after = render(false);
	const contextError = gl.getError();
	const contextDifference = before.pixels.reduce(
		(n, v, i) => n + Number(Math.abs(v - after.pixels[i]!) > 2),
		0,
	);
	renderer.setRenderTarget(null);
	release();
	target.dispose();
	source.dispose();
	geometry.dispose();
	mesh.geometry.dispose();
	mesh.skeleton.dispose();
	back.geometry.dispose();
	(back.material as MeshBasicMaterial).dispose();
	const remaining = { ...renderer.info.memory };
	renderer.dispose();
	return { results, rebuilt, contextDifference, contextError, remaining };
}
