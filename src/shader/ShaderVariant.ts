import type { LilToonRenderMode } from "../material/LilToonMaterialParameters.js";
import type { LilToonFeatureSet } from "../material/LilToonFeatureSet.js";

export interface ShaderVariant {
	pass: "forward" | "outline" | "shadowcaster";
	renderMode: LilToonRenderMode;
	features: LilToonFeatureSet;
	skinning: boolean;
	morphTargets: boolean;
}

export function shaderVariantKey(variant: ShaderVariant): string {
	const enabled = Object.entries(variant.features)
		.filter(([, value]) => value)
		.map(([name]) => name)
		.sort()
		.join(",");
	return `${variant.pass}:${variant.renderMode}:${variant.skinning ? "skin" : "static"}:${variant.morphTargets ? "morph" : "base"}:${enabled}`;
}
