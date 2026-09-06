import type { LilToonScalarOrVector } from "./LilToonMaterialParameters.js";

export interface LilToonFeatureSet {
	main2nd: boolean;
	main3rd: boolean;
	shadow: boolean;
	shadow3rd: boolean;
	normal1st: boolean;
	normal2nd: boolean;
	matcap: boolean;
	matcap2nd: boolean;
	rim: boolean;
	emission1st: boolean;
	emission2nd: boolean;
	reflection: boolean;
	anisotropy: boolean;
	backlight: boolean;
	outline: boolean;
	dissolve: boolean;
}

function enabled(
	properties: Record<string, LilToonScalarOrVector>,
	name: string,
): boolean {
	const value = properties[name];
	return typeof value === "boolean"
		? value
		: typeof value === "number" && value !== 0;
}

function colorVisible(value: LilToonScalarOrVector | undefined): boolean {
	if (Array.isArray(value)) return Number(value[3] ?? value[0] ?? 0) !== 0;
	return typeof value === "number" && value !== 0;
}

export function detectLilToonFeatures(
	properties: Record<string, LilToonScalarOrVector>,
): LilToonFeatureSet {
	return {
		main2nd: enabled(properties, "_UseMain2ndTex"),
		main3rd: enabled(properties, "_UseMain3rdTex"),
		shadow: enabled(properties, "_UseShadow"),
		shadow3rd:
			enabled(properties, "_UseShadow") &&
			colorVisible(properties._Shadow3rdColor),
		normal1st: enabled(properties, "_UseBumpMap"),
		normal2nd: enabled(properties, "_UseBump2ndMap"),
		matcap: enabled(properties, "_UseMatCap"),
		matcap2nd: enabled(properties, "_UseMatCap2nd"),
		rim: enabled(properties, "_UseRim"),
		emission1st: enabled(properties, "_UseEmission"),
		emission2nd: enabled(properties, "_UseEmission2nd"),
		reflection: enabled(properties, "_UseReflection"),
		anisotropy: enabled(properties, "_UseAnisotropy"),
		backlight: enabled(properties, "_UseBacklight"),
		outline: enabled(properties, "_UseOutline"),
		dissolve:
			Array.isArray(properties._DissolveParams) &&
			Number(properties._DissolveParams[0]) !== 0,
	};
}
