import type { Camera, Scene, WebGLRenderer } from "three";
import { LilToonRendererAdapter } from "./LilToonRendererAdapter.js";

export class LilToonPassManager {
	readonly adapter: LilToonRendererAdapter;

	constructor(readonly renderer: WebGLRenderer) {
		this.adapter = new LilToonRendererAdapter(renderer);
	}

	render(scene: Scene, camera: Camera): void {
		this.adapter.render(scene, camera);
	}
}
