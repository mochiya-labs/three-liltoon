export type ShaderStage = "vertex" | "fragment";

export interface ShaderVariantRecipe {
	key: string;
	renderMode: "opaque" | "cutout" | "transparent" | "outline" | "smoke";
	sources: Record<ShaderStage, string>;
	entries: Record<ShaderStage, string>;
	defines: string[];
}

export interface BuiltShaderStage {
	stage: ShaderStage;
	spirv: string;
	glsl: string;
	reflection: string;
	sourceIncludes: string[];
}

export interface BuiltShaderVariant {
	key: string;
	renderMode: ShaderVariantRecipe["renderMode"];
	defines: string[];
	stages: Record<ShaderStage, BuiltShaderStage>;
}
