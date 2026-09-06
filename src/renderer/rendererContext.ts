import { Vector4, type Scene, type WebGLRenderer } from "three";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";
import { LilToonEnvironmentAdapter } from "./LilToonEnvironmentAdapter.js";
import {
	LilToonLightAdapter,
	type LilToonSceneLighting,
} from "./LilToonLightAdapter.js";
import { LilToonShadowAdapter } from "./LilToonShadowAdapter.js";

interface SceneFrameState {
	frame: number;
	lighting: LilToonSceneLighting;
}

const contexts = new WeakMap<WebGLRenderer, RendererContext>();

/** @internal Context is selected for the renderer performing this draw. */
export function rendererContext(renderer: WebGLRenderer): RendererContext {
	let context = contexts.get(renderer);
	if (!context) {
		context = new RendererContext(renderer);
		contexts.set(renderer, context);
	}
	return context;
}

/** Private lighting and texture state for one renderer. */
class RendererContext {
	readonly lightAdapter = new LilToonLightAdapter();
	readonly shadowAdapter = new LilToonShadowAdapter();
	readonly environmentAdapter = new LilToonEnvironmentAdapter();
	readonly #sceneState = new WeakMap<Scene, SceneFrameState>();

	constructor(readonly renderer: WebGLRenderer) {}

	prepareMaterial(material: LilToonMaterial, scene: Scene): void {
		const renderer = this.renderer;
		const frame = renderer.info.render.frame;
		let state = this.#sceneState.get(scene);
		if (!state || state.frame !== frame) {
			state = { frame, lighting: this.lightAdapter.read(scene) };
			this.#sceneState.set(scene, state);
		}
		const { lighting } = state;
		(material.globalUniforms.uMainLightDirection as Vector4 | undefined)?.set(
			lighting.direction.x,
			lighting.direction.y,
			lighting.direction.z,
			0,
		);
		(material.globalUniforms.uMainLightColor as Vector4 | undefined)?.set(
			lighting.color.r,
			lighting.color.g,
			lighting.color.b,
			1,
		);
		(material.globalUniforms.uAmbientColor as Vector4 | undefined)?.set(
			lighting.ambient.r,
			lighting.ambient.g,
			lighting.ambient.b,
			1,
		);
		for (const [name, channel] of [
			["unity_SHAr", "r"],
			["unity_SHAg", "g"],
			["unity_SHAb", "b"],
		] as const) {
			const value = material.globalUniforms[name];
			if (value instanceof Vector4)
				value.set(0, 0, 0, lighting.ambient[channel]);
		}
		for (const name of [
			"unity_SHBr",
			"unity_SHBg",
			"unity_SHBb",
			"unity_SHC",
		]) {
			const value = material.globalUniforms[name];
			if (value instanceof Vector4) value.set(0, 0, 0, 0);
		}
		if (Number(material.lilToonProperties._UdonForceSceneLighting ?? 0) !== 0) {
			material.globalUniforms._LightMinLimit = 0;
			material.globalUniforms._LightMaxLimit = 100000;
			material.globalUniforms._MonochromeLighting = 0;
			material.globalUniforms._AsUnlit = 0;
		}
		const shadow = this.shadowAdapter.bind(
			lighting.main,
			material.globalUniforms,
			renderer.shadowMap.enabled,
		);
		material.setSystemTexture("__shadow", shadow.texture);
		material.setSystemTexture(
			"__environment",
			this.environmentAdapter.bind(scene, material.globalUniforms),
		);
	}
}
