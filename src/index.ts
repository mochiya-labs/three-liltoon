export { LilToonMaterial } from "./material/LilToonMaterial.js";
export { LilToonMaterialFactory } from "./material/LilToonMaterialFactory.js";
export type {
  LilToonMaterialParameters,
  LilToonRenderMode,
  LilToonScalarOrVector,
} from "./material/LilToonMaterialParameters.js";
export type { SerializedLilToonMaterial } from "./material/LilToonMaterialState.js";
export { detectLilToonFeatures } from "./material/LilToonFeatureSet.js";
export type { LilToonFeatureSet } from "./material/LilToonFeatureSet.js";
export { LilToonRendererAdapter } from "./renderer/LilToonRendererAdapter.js";
export { LilToonPassManager } from "./renderer/LilToonPassManager.js";
export { LilToonLightAdapter } from "./renderer/LilToonLightAdapter.js";
export { LilToonShadowAdapter } from "./renderer/LilToonShadowAdapter.js";
export { LilToonEnvironmentAdapter } from "./renderer/LilToonEnvironmentAdapter.js";
export { OutlinePass } from "./passes/OutlinePass.js";
export { ShadowCasterPass } from "./passes/ShadowCasterPass.js";
export { RefractionPass } from "./passes/RefractionPass.js";
export { GemPass } from "./passes/GemPass.js";
export { FurPass } from "./passes/FurPass.js";
export { GLTFLilToonExtension } from "./loaders/GLTFLilToonExtension.js";
export { LilToonMaterialLoader } from "./loaders/LilToonMaterialLoader.js";
export { LILTOON_GLTF_EXTENSION } from "./loaders/types.js";
export { UnsupportedFeatureError } from "./utils/diagnostics.js";
export { LILTOON_PROPERTIES } from "./generated/properties.js";
export { LILTOON_DEFAULTS } from "./generated/defaults.js";
export { LILTOON_RENDER_RECIPES } from "./generated/renderStates.js";
export {
  LILTOON_UPSTREAM_COMMIT,
  LILTOON_UPSTREAM_VERSION,
  THREE_VERSION_RANGE,
} from "./generated/compatibility.js";
