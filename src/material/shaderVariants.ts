import type {
	LilToonMaterialParameters,
	LilToonRenderMode,
	LilToonTransparencyMode,
} from "./LilToonMaterialParameters.js";

/** Supported Unity shader names and their pass configurations. */
export const shaderVariants = {
	lilToon: ["opaque", "normal", false],
	"Hidden/lilToonOutline": ["opaque", "normal", true],
	"Hidden/lilToonCutout": ["cutout", "normal", false],
	"Hidden/lilToonCutoutOutline": ["cutout", "normal", true],
	"Hidden/lilToonTransparent": ["transparent", "normal", false],
	"Hidden/lilToonTransparentOutline": ["transparent", "normal", true],
	"Hidden/lilToonOnePassTransparent": ["transparent", "one-pass", false],
	"Hidden/lilToonOnePassTransparentOutline": ["transparent", "one-pass", true],
	"Hidden/lilToonTwoPassTransparent": ["transparent", "two-pass", false],
	"Hidden/lilToonTwoPassTransparentOutline": ["transparent", "two-pass", true],
	"Hidden/lilToonRefraction": ["refraction", "normal", false],
	"Hidden/lilToonRefractionBlur": ["refraction-blur", "normal", false],
	"Hidden/lilToonFur": ["fur", "normal", false],
	"Hidden/lilToonFurCutout": ["fur-cutout", "normal", false],
	"Hidden/lilToonFurTwoPass": ["fur-two-pass", "normal", false],
	"Hidden/lilToonGem": ["gem", "normal", false],
} as const;
export type LilToonShaderVariant = keyof typeof shaderVariants;
export function isShaderVariant(
	value: string | undefined,
): value is LilToonShaderVariant {
	return value !== undefined && Object.hasOwn(shaderVariants, value);
}
export function variantForModes(
	mode: LilToonRenderMode,
	transparency: LilToonTransparencyMode = "normal",
	outline = false,
): LilToonShaderVariant {
	const entries = Object.entries(shaderVariants);
	const candidates = entries.filter(
		([, v]) => v[0] === mode && v[1] === transparency,
	);
	const match = candidates.find(([, v]) => v[2] === outline) ?? candidates[0];
	if (!match)
		throw new Error(
			`Unsupported lilToon pass configuration: ${mode}/${transparency}`,
		);
	return match[0] as LilToonShaderVariant;
}
export function resolveShaderVariant(
	parameters: LilToonMaterialParameters,
): LilToonShaderVariant {
	const variant = parameters.shaderVariant;
	if (variant === undefined)
		return variantForModes(
			parameters.renderMode ?? "opaque",
			parameters.transparencyMode,
		);
	if (!isShaderVariant(variant))
		throw new Error(`Unsupported lilToon shader: ${variant}`);
	return variant;
}
