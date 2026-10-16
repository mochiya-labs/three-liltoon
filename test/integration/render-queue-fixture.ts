import {
	type Material,
	BufferGeometry,
	Float32BufferAttribute,
	Mesh,
	OrthographicCamera,
	Scene,
	WebGLRenderer,
	NoToneMapping,
	LinearSRGBColorSpace,
	MeshBasicMaterial,
	Color,
} from "three";
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import {
	LilToonMaterial,
	enableLilToon,
	GLTFLilToonExtension,
} from "../../src/index.js";

export async function verifyRenderQueues(reversedDepthBuffer = false) {
	const renderer = new WebGLRenderer({ antialias: false, reversedDepthBuffer });
	renderer.setSize(32, 32);
	renderer.toneMapping = NoToneMapping;
	renderer.outputColorSpace = LinearSRGBColorSpace;
	const scene = new Scene();
	scene.background = new Color(0, 0, 0);
	const camera = new OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 3;
	const make = (color: number[], alpha: number, renderQueue: number) =>
		new LilToonMaterial({
			renderMode: "transparent",
			renderQueue,
			properties: {
				_Color: [...color, alpha],
				_AsUnlit: 1,
				_UseOutline: 0,
				_UseShadow: 0,
				_ZWrite: 1,
				_Cutoff: -0.001,
				_Cull: 2,
			},
		});
	const shirt = make([1, 0, 0], 0.25, 3000),
		underwear = make([0, 0, 1], 1, 2450);
	const geometry = new BufferGeometry();
	geometry.setAttribute(
		"position",
		new Float32BufferAttribute(
			[
				-1, -1, 0.5, 1, -1, 0.5, 1, 1, 0.5, -1, -1, 0.5, 1, 1, 0.5, -1, 1, 0.5,
				-1, -1, 0, 1, -1, 0, 1, 1, 0, -1, -1, 0, 1, 1, 0, -1, 1, 0,
			],
			3,
		),
	);
	geometry.computeVertexNormals();
	geometry.setAttribute(
		"uv",
		new Float32BufferAttribute(new Array(24).fill(0), 2),
	);
	geometry.addGroup(0, 6, 0);
	geometry.addGroup(6, 6, 1);
	const mesh: Mesh<BufferGeometry, Material[]> = new Mesh(geometry, [
		shirt,
		underwear,
	]);
	scene.add(mesh);
	let order: number[] = [];
	mesh.onBeforeRender = (_r, _s, _c, _g, m) => {
		order.push((m as LilToonMaterial).renderQueue!);
	};
	const draw = () => {
		order = [];
		renderer.render(scene, camera);
		const pixels = new Uint8Array(4);
		const gl = renderer.getContext();
		gl.readPixels(16, 16, 1, 1, gl.RGBA, gl.UNSIGNED_BYTE, pixels);
		return { pixel: [...pixels], order: [...order] };
	};
	const plain = enableLilToon(renderer);
	const original = draw();
	plain();
	const release = enableLilToon(renderer, { materialRenderQueue: true });
	const corrected = draw();
	shirt.renderQueue = 2400;
	const changed = draw();
	shirt.renderQueue = 3000;
	const standard = new MeshBasicMaterial({ color: 0x00ff00 });
	mesh.material = [shirt, standard];
	const mixed = draw();
	mesh.material = [shirt, underwear];
	// Transparent pre/surface/outline remain adjacent inside their material's queue slot.
	underwear.transparencyMode = "two-pass";
	underwear.setProperty("_PreZWrite", 1);
	underwear.setProperty("_UseOutline", 1);
	underwear.setProperty("_OutlineWidth", 0.01);
	const passes = draw();
	release();
	const restored = draw();
	const glError = renderer.getContext().getError();
	const reversed = renderer.capabilities.reversedDepthBuffer;
	mesh.geometry.dispose();
	shirt.dispose();
	underwear.dispose();
	standard.dispose();
	renderer.dispose();
	// Use the real public GLTFLoader path, not just material construction.
	const loader = new GLTFLoader();
	loader.register((parser) => new GLTFLilToonExtension(parser));
	const loaded = await loader.parseAsync(
		JSON.stringify({
			asset: { version: "2.0" },
			scenes: [{}],
			scene: 0,
			extensionsUsed: ["MOCHIYA_materials_liltoon"],
			materials: [
				{
					extensions: {
						MOCHIYA_materials_liltoon: {
							specVersion: "1.3",
							shaderVariant: "Hidden/lilToonTransparent",
							renderQueue: 2450,
							properties: { _ZWrite: 1 },
						},
					},
				},
			],
		}),
		"",
	);
	const material = (await loaded.parser.getDependency(
		"material",
		0,
	)) as LilToonMaterial;
	const loadedQueue = material.renderQueue;
	material.dispose();
	return {
		original,
		corrected,
		changed,
		mixed,
		passes,
		restored,
		loadedQueue,
		glError,
		reversed,
	};
}

export async function loadQueueFixture(url: string) {
	const loader = new GLTFLoader();
	loader.register((p) => new GLTFLilToonExtension(p));
	const gltf = await loader.loadAsync(url);
	const materials = (await gltf.parser.getDependencies(
		"material",
	)) as LilToonMaterial[];
	const values = materials.map((m) => ({
		name: m.name,
		queue: m.renderQueue,
		transparent: m.transparent,
		depthWrite: m.depthWrite,
	}));
	for (const material of materials) material.dispose();
	gltf.scene.traverse((o) => {
		if (o instanceof Mesh) o.geometry.dispose();
	});
	return values;
}
