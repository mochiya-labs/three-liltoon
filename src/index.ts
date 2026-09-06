export { LilToonMaterial } from "./material/LilToonMaterial.js";
export { enableLilToon } from "./renderer/enableLilToon.js";
export { LilToonMaterialFactory } from "./material/LilToonMaterialFactory.js";
export type {
	LilToonMaterialParameters,
	LilToonRenderMode,
	LilToonScalarOrVector,
} from "./material/LilToonMaterialParameters.js";
export type { SerializedLilToonMaterial } from "./material/LilToonMaterialState.js";
export { detectLilToonFeatures } from "./material/LilToonFeatureSet.js";
export type { LilToonFeatureSet } from "./material/LilToonFeatureSet.js";
export { LilToonLightAdapter } from "./renderer/LilToonLightAdapter.js";
export { LilToonShadowAdapter } from "./renderer/LilToonShadowAdapter.js";
export { LilToonEnvironmentAdapter } from "./renderer/LilToonEnvironmentAdapter.js";
export { RefractionPass } from "./passes/RefractionPass.js";
export { GemPass } from "./passes/GemPass.js";
export { FurPass } from "./passes/FurPass.js";
export { GLTFLilToonExtension } from "./loaders/GLTFLilToonExtension.js";
export type { GLTFLilToonExtensionOptions } from "./loaders/GLTFLilToonExtension.js";
export type {
	LilToonWarning,
	LilToonWarningCode,
} from "./utils/materialWarnings.js";
export { LilToonMaterialLoader } from "./loaders/LilToonMaterialLoader.js";
export {
	LILTOON_GLTF_EXTENSION,
	LILTOON_GLTF_SPEC_VERSION,
} from "./loaders/types.js";
export { UnsupportedFeatureError } from "./utils/diagnostics.js";
export { LILTOON_PROPERTIES } from "./generated/properties.js";
export { LILTOON_DEFAULTS } from "./generated/defaults.js";
export { LILTOON_RENDER_RECIPES } from "./generated/renderStates.js";
export {
	LILTOON_UPSTREAM_COMMIT,
	LILTOON_UPSTREAM_VERSION,
	THREE_VERSION_RANGE,
} from "./generated/compatibility.js";
