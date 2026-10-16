import type {
	LilToonRenderMode,
	LilToonTransparencyMode,
	LilToonScalarOrVector,
} from "./LilToonMaterialParameters.js";

export interface SerializedLilToonMaterial {
	shaderVariant?: import("./shaderVariants.js").LilToonShaderVariant;
	specVersion?: string;
	lilToonVersion?: string | number;
	/** Effective Unity material queue. Does not change blending or depth state.
	 * @asType integer
	 * @minimum 0
	 * @maximum 5000
	 */
	renderQueue?: number;
	renderMode: LilToonRenderMode;
	transparencyMode?: LilToonTransparencyMode;
	properties: Record<string, LilToonScalarOrVector>;
	textures: Record<string, string | number | null>;
}
