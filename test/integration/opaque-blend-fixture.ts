import {
	Scene,
	OrthographicCamera,
	WebGLRenderer,
	WebGLRenderTarget,
	Mesh,
	PlaneGeometry,
	Color,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../dist/index.js";

export function verifyOpaqueBlend() {
	const renderer = new WebGLRenderer({ antialias: false });
	renderer.setSize(16, 16);
	const release = enableLilToon(renderer);
	const target = new WebGLRenderTarget(16, 16);
	renderer.setRenderTarget(target);
	const scene = new Scene();
	scene.background = new Color(0, 0, 1);
	const camera = new OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 2;
	const material = new LilToonMaterial({
		shaderVariant: "lilToon",
		renderQueue: 2000,
		properties: {
			_AsUnlit: 1,
			_Color: [1, 0, 0, 1],
			_UseShadow: 0,
			_SrcBlend: 1,
			_DstBlend: 1,
			_ZWrite: 1,
			_Cull: 0,
		},
	});
	const geometry = new PlaneGeometry(2, 2);
	scene.add(new Mesh(geometry, material));
	const pixel = new Uint8Array(4);
	const sample = () => {
		renderer.render(scene, camera);
		renderer.readRenderTargetPixels(target, 8, 8, 1, 1, pixel);
		return [...pixel];
	};
	const additive = sample();
	material.setProperty("_DstBlend", 0);
	const replacement = sample();
	const checks = {
		additive: additive[0]! > 240 && additive[1]! < 10 && additive[2]! > 240,
		replacement:
			replacement[0]! > 240 && replacement[1]! < 10 && replacement[2]! < 10,
		classification:
			!material.transparent &&
			material.shaderVariant === "lilToon" &&
			material.renderQueue === 2000,
		noErrors: renderer.getContext().getError() === 0,
	};
	geometry.dispose();
	material.dispose();
	target.dispose();
	release();
	renderer.dispose();
	return { checks, additive, replacement };
}
