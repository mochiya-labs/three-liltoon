import {
	Scene,
	PerspectiveCamera,
	WebGLRenderer,
	Mesh,
	SphereGeometry,
	Color,
	DataTexture,
	RGBAFormat,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../dist/index.js";

export function verifyTransparency() {
	const renderer = new WebGLRenderer({
		antialias: true,
		preserveDrawingBuffer: true,
	});
	renderer.setSize(96, 96);
	const release = enableLilToon(renderer),
		scene = new Scene(),
		camera = new PerspectiveCamera(40, 1, 0.1, 20);
	camera.position.z = 3;
	scene.background = new Color(0.1, 0.2, 0.4);
	const calls: { pass: string; side: number; depth: boolean; key: string }[] =
		[];
	const direct = renderer.renderBufferDirect;
	renderer.renderBufferDirect = function (...args) {
		const m = args[3];
		if (m instanceof LilToonMaterial)
			calls.push({
				pass: m.pass,
				side: m.side,
				depth: m.depthWrite,
				key: m.shaderKey,
			});
		return direct.apply(this, args);
	};
	const geometry = new SphereGeometry(0.7, 16, 12);
	const morph = geometry.attributes.position!.clone();
	for (let i = 0; i < morph.count; i++) morph.setX(i, morph.getX(i) * 1.3);
	geometry.morphAttributes.position = [morph];
	const source = new LilToonMaterial({
		renderMode: "transparent",
		properties: {
			_AsUnlit: 1,
			_Color: [1, 0.2, 0.1, 0.7],
			_Cutoff: 0,
			_Cull: 0,
			_ZWrite: 0,
			_UseOutline: 1,
			_OutlineWidth: 0.05,
			_OutlineColor: [0, 1, 0, 0.5],
			_OutlineZWrite: 0,
			_PreCull: 1,
			_PreZWrite: 0,
			_PreCutoff: 0,
			_PreOutType: 2,
			_PreColor: [0, 0.1, 1, 1],
		},
	});
	const mesh: Mesh = new Mesh(geometry, source);
	scene.add(mesh);
	const before = mesh.onBeforeRender,
		after = mesh.onAfterRender;
	const read = () => {
		const p = new Uint8Array(96 * 96 * 4),
			gl = renderer.getContext();
		gl.readPixels(0, 0, 96, 96, gl.RGBA, gl.UNSIGNED_BYTE, p);
		return p;
	};
	const diff = (a: Uint8Array, b: Uint8Array) =>
		a.reduce((n, v, i) => n + Number(v !== b[i]), 0);
	const results: Record<string, unknown> = {},
		images: Uint8Array[] = [];
	for (const mode of ["normal", "one-pass", "two-pass"] as const) {
		source.transparencyMode = mode;
		calls.length = 0;
		renderer.render(scene, camera);
		results[mode] = calls.slice();
		images.push(read());
	}
	results.normalOneDifference = diff(images[0]!, images[1]!);
	results.twoDifference = diff(images[0]!, images[2]!);
	mesh.morphTargetInfluences![0] = 1;
	renderer.render(scene, camera);
	results.morphDifference = diff(images[2]!, read());
	mesh.morphTargetInfluences![0] = 0;
	renderer.render(scene, camera);
	results.morphReset = diff(images[2]!, read());
	geometry.clearGroups();
	const half = Math.floor(geometry.index!.count / 6) * 3;
	geometry.addGroup(0, half, 0);
	geometry.addGroup(half, geometry.index!.count - half, 1);
	mesh.material = [source, source];
	calls.length = 0;
	renderer.render(scene, camera);
	results.groups = calls.map((c) => c.pass);
	const black = new DataTexture(
		new Uint8Array([0, 0, 0, 255]),
		1,
		1,
		RGBAFormat,
	);
	black.needsUpdate = true;
	source.setTexture("_AlphaMask", black);
	source.setProperty("_AlphaMaskMode", 1);
	source.setProperty("_Cutoff", 0.5);
	source.setProperty("_PreCutoff", 0.5);
	renderer.render(scene, camera);
	const masked = read();
	mesh.visible = false;
	renderer.render(scene, camera);
	results.maskDifference = diff(masked, read());
	mesh.visible = true;
	results.restored =
		mesh.onBeforeRender === before &&
		mesh.onAfterRender === after &&
		mesh.children.length === 0;
	results.glError = renderer.getContext().getError();
	source.dispose();
	geometry.dispose();
	black.dispose();
	release();
	results.remainingTextures = renderer.info.memory.textures;
	renderer.dispose();
	return results;
}
