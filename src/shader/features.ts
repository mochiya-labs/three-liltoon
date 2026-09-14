/** Boolean gates retain the original uniform when enabled. IDs are stable build/runtime ABI. */
export const SPECIALIZATION_PROPERTIES = [
	"_UseMain2ndTex",
	"_UseMain3rdTex",
	"_UseShadow",
	"_UseRimShade",
	"_UseBacklight",
	"_UseBumpMap",
	"_UseBump2ndMap",
	"_UseAnisotropy",
	"_UseReflection",
	"_UseMatCap",
	"_UseMatCap2nd",
	"_UseRim",
	"_UseGlitter",
	"_UseEmission",
	"_UseEmission2nd",
	"_UseParallax",
	"_UsePOM",
	"_EmissionUseGrad",
	"_Emission2ndUseGrad",
	"_MatCapCustomNormal",
	"_MatCap2ndCustomNormal",
	"_ApplyReflection",
	"_UseDither",
] as const;

export function firstComponent(value: unknown): number {
	if (Array.isArray(value)) return Number(value[0] ?? 0);
	if (value && typeof value === "object" && "x" in value)
		return Number(value.x);
	return Number(value ?? 0);
}

/** A texture is only removed if its upstream parent operation is inactive. */
export function textureIsUsed(
	property: string,
	properties: Record<string, unknown>,
	mode: string,
	outline = false,
): boolean {
	const on = (name: string) => firstComponent(properties[name]) !== 0;
	if (property.startsWith("__")) return true;
	if (property.startsWith("_Fur")) return mode.startsWith("fur") && !outline;
	if (property.startsWith("_Outline")) return outline;
	if (property === "_AlphaMask")
		return mode !== "opaque" && on("_AlphaMaskMode");
	if (property === "_DitherTex")
		return (mode === "cutout" || mode === "fur-cutout") && on("_UseDither");
	if (property.startsWith("_Dissolve"))
		return mode !== "opaque" && on("_DissolveParams");
	if (outline) return false;
	if (property.startsWith("_Emission2nd"))
		return (
			on("_UseEmission2nd") &&
			(!property.includes("GradTex") || on("_Emission2ndUseGrad"))
		);
	if (property.startsWith("_Emission"))
		return (
			on("_UseEmission") &&
			(!property.includes("GradTex") || on("_EmissionUseGrad"))
		);
	for (const [prefix, gate] of [
		["_MatCap2nd", "_UseMatCap2nd"],
		["_MatCap", "_UseMatCap"],
		["_Main2nd", "_UseMain2ndTex"],
		["_Main3rd", "_UseMain3rdTex"],
		["_Bump2nd", "_UseBump2ndMap"],
		["_Bump", "_UseBumpMap"],
		["_Shadow", "_UseShadow"],
		["_RimShade", "_UseRimShade"],
		["_Rim", "_UseRim"],
		["_Backlight", "_UseBacklight"],
		["_Anisotropy", "_UseAnisotropy"],
		["_Glitter", "_UseGlitter"],
		["_Parallax", "_UseParallax"],
	] as const) {
		if (!property.startsWith(prefix)) continue;
		if (!on(gate)) return false;
		if (prefix.startsWith("_MatCap") && property.includes("Bump"))
			return on(`${prefix}CustomNormal`);
		if (prefix.startsWith("_Main") && property.includes("Dissolve"))
			return on(`${prefix}DissolveParams`);
		return true;
	}
	if (/^_(Reflection|Metallic|Smoothness)/.test(property))
		if (
			(mode === "gem" || mode === "refraction-blur") &&
			property === "_SmoothnessTex"
		)
			return true;
	if (/^_(Reflection|Metallic|Smoothness)/.test(property))
		return (
			on("_UseReflection") &&
			(!property.includes("Cube") || on("_ApplyReflection"))
		);
	if (property.startsWith("_Dissolve"))
		return mode !== "opaque" && on("_DissolveParams");
	if (property === "_MainGradationTex") return on("_MainGradationStrength");
	return true;
}
