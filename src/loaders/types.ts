import type { LilToonRenderMode, LilToonScalarOrVector } from "../material/LilToonMaterialParameters.js";

export const LILTOON_GLTF_EXTENSION = "MOCHIYA_materials_liltoon";

export interface GLTFLilToonTextureInfo {
  index: number;
  texCoord?: number;
}

export interface GLTFLilToonMaterialDefinition {
  lilToonVersion?: string | number;
  shaderVariant?: string;
  renderMode?: LilToonRenderMode;
  properties?: Record<string, LilToonScalarOrVector>;
  textures?: Record<string, GLTFLilToonTextureInfo | number>;
}
