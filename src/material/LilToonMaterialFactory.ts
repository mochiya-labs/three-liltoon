import type { Texture } from "three";
import { LilToonMaterial } from "./LilToonMaterial.js";
import type { SerializedLilToonMaterial } from "./LilToonMaterialState.js";

export class LilToonMaterialFactory {
	create(
		source: SerializedLilToonMaterial,
		textures: Record<string, Texture | null> = {},
	): LilToonMaterial {
		return new LilToonMaterial({
			shaderVariant: source.shaderVariant,
			renderMode: source.renderMode,
			renderQueue: source.renderQueue,
			transparencyMode: source.transparencyMode,
			properties: source.properties,
			textures,
		});
	}
}
