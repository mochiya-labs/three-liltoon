import type {
	LilToonRenderMode,
	LilToonTransparencyMode,
	LilToonScalarOrVector,
} from "./LilToonMaterialParameters.js";

export interface SerializedLilToonMaterial {
	specVersion?: string;
	lilToonVersion?: string | number;
	renderMode: LilToonRenderMode;
	transparencyMode?: LilToonTransparencyMode;
	properties: Record<string, LilToonScalarOrVector>;
	textures: Record<string, string | number | null>;
}
