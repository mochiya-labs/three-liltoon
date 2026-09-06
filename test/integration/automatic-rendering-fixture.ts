import {
	AmbientLight,
	BoxGeometry,
	Color,
	DataTexture,
	DirectionalLight,
	Mesh,
	MeshBasicMaterial,
	PerspectiveCamera,
	Scene,
	WebGLRenderTarget,
	WebGLRenderer,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../src/index.js";

export function verifyAutomaticRendering() {
	const renderer = new WebGLRenderer({ antialias: false });
	enableLilToon(renderer);
	renderer.setSize(64, 64);
	renderer.shadowMap.enabled = true;
	const scene = new Scene(),
		camera = new PerspectiveCamera(40, 1, 0.1, 20);
	camera.position.z = 4;
	const light = new DirectionalLight(0xffffff, 1);
	light.position.set(2, 3, 4);
	light.castShadow = true;
	light.shadow.mapSize.set(64, 64);
	scene.add(light, new AmbientLight(0xffffff, 0.3));
	const material = new LilToonMaterial({
		color: new Color(0.6, 0.1, 0.2),
		properties: { _UseOutline: 1, _OutlineWidth: 0.1 },
	});
	const mesh = new Mesh(new BoxGeometry(), material);
	mesh.castShadow = true;
	scene.add(mesh);
	const standard = new MeshBasicMaterial({ color: 0x00ff00 });
	const target = new WebGLRenderTarget(64, 64);
	renderer.setRenderTarget(target);
	const checks: Record<string, boolean> = {};
	let outlineDraws = 0,
		shadowDraws = 0;
	mesh.onBeforeRender = () => {
		for (const child of mesh.children)
			child.onAfterRender = () => outlineDraws++;
	};
	mesh.onBeforeShadow = () => shadowDraws++;
	const render = () => {
		outlineDraws = 0;
		renderer.render(scene, camera);
		return renderer.info.render.calls;
	};
	checks.firstFrame = render() === 2 && shadowDraws > 0;
	checks.cleanScene =
		mesh.children.length === 0 && mesh.customDepthMaterial === undefined;
	checks.targetPreserved = renderer.getRenderTarget() === target;
	mesh.material = standard as unknown as LilToonMaterial;
	checks.standardReplacement = render() === 1 && outlineDraws === 0;
	mesh.material = material;
	checks.restore = render() === 2 && outlineDraws === 1;
	material.setProperty("_UseOutline", 0);
	checks.disable = render() === 1;
	material.setProperty("_UseOutline", 1);
	const originalCallback = scene.onBeforeRender;
	scene.onBeforeRender = () => {
		mesh.material = standard as unknown as LilToonMaterial;
		mesh.position.x = 0.2;
	};
	checks.sceneMutation = render() === 1;
	scene.onBeforeRender = originalCallback;
	mesh.material = [standard, material] as unknown as LilToonMaterial;
	mesh.geometry.clearGroups();
	mesh.geometry.addGroup(0, 18, 0);
	mesh.geometry.addGroup(18, 18, 1);
	checks.groups =
		render() === 3 && outlineDraws === 1 && mesh.geometry.groups.length === 2;
	const pixels = new Uint8Array(64 * 64 * 4);
	renderer.readRenderTargetPixels(target, 0, 0, 64, 64, pixels);
	checks.drawn = pixels.some((value, index) => index % 4 !== 3 && value > 10);
	const context = renderer.getContext();
	checks.gl = context.getError() === context.NO_ERROR;
	// Main texture alpha and UV changes compile through the real shadow path.
	material.map = new DataTexture(new Uint8Array([255, 255, 255, 128]), 1, 1);
	material.map.needsUpdate = true;
	material.alphaTest = 0.25;
	material.opacity = 0.75;
	material.setProperty("_MainTex_ST", [2, 3, 0.2, 0.4]);
	render();
	checks.cutoutGl = context.getError() === context.NO_ERROR;
	scene.remove(mesh);
	checks.removal = render() === 0;
	material.map.dispose();
	material.dispose();
	standard.dispose();
	mesh.geometry.dispose();
	target.dispose();
	light.shadow.dispose();
	renderer.dispose();
	// A stock renderer needs no adapter for the forward surface, and can opt into passes once.
	const stock = new WebGLRenderer();
	stock.setSize(16, 16);
	const plain = new LilToonMaterial(),
		model = new Mesh(new BoxGeometry(), plain),
		world = new Scene();
	world.add(model);
	stock.render(world, camera);
	checks.stockForward = stock.info.render.calls === 1;
	const release = enableLilToon(stock);
	plain.setProperty("_UseOutline", 1);
	stock.render(world, camera);
	checks.existingRenderer = stock.info.render.calls === 2;
	release();
	model.geometry.dispose();
	plain.dispose();
	stock.dispose();
	return checks;
}
