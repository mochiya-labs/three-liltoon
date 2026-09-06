import type {
	Color,
	ColorRepresentation,
	Texture,
	Vector2,
	Vector3,
	Vector4,
} from "three";

export type LilToonRenderMode = "opaque" | "cutout" | "transparent";
export type LilToonScalarOrVector =
	number | boolean | number[] | Color | Vector2 | Vector3 | Vector4;

export interface LilToonMaterialParameters {
	color?: ColorRepresentation;
	opacity?: number;
	map?: Texture | null;
	alphaTest?: number;
	name?: string;
	renderMode?: LilToonRenderMode;
	properties?: Record<string, LilToonScalarOrVector>;
	textures?: Record<string, Texture | null>;
	/** Enables the generated skin/morph vertex ABI. Safe for static meshes too. */
	deformation?: boolean;
	/** @internal Used by automatic outline rendering. */
	pass?: "forward" | "outline";
}
