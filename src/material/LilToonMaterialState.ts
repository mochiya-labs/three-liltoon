import type { LilToonRenderMode, LilToonScalarOrVector } from "./LilToonMaterialParameters.js";

export interface SerializedLilToonMaterial {
  specVersion?: string;
  lilToonVersion?: string | number;
  renderMode: LilToonRenderMode;
  properties: Record<string, LilToonScalarOrVector>;
  textures: Record<string, string | number | null>;
}
