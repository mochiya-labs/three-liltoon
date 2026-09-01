import type { Texture } from "three";
import { LilToonMaterial } from "./LilToonMaterial.js";
import type { SerializedLilToonMaterial } from "./LilToonMaterialState.js";

export class LilToonMaterialFactory {
  create(
    source: SerializedLilToonMaterial,
    textures: Record<string, Texture | null> = {},
  ): LilToonMaterial {
    return new LilToonMaterial({
      renderMode: source.renderMode,
      properties: source.properties,
      textures,
    });
  }
}
