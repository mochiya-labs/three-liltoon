import type {
	LilToonRenderMode,
	LilToonTransparencyMode,
} from "../material/LilToonMaterialParameters.js";

export const LILTOON_GLTF_EXTENSION = "MOCHIYA_materials_liltoon";
export const LILTOON_GLTF_SPEC_VERSION = "1.2";

/**
 * A zero-based glTF index.
 * @asType integer
 * @minimum 0
 */
type GLTFIndex = number;

/** JSON property values. Colors and vectors use numeric arrays, not Three.js objects. */
export type GLTFLilToonPropertyValue = number | boolean | number[];

/** A reference to a texture in the enclosing glTF document. */
export interface GLTFLilToonTextureInfo {
	/** Index into the glTF textures array. */
	index: GLTFIndex;
	/**
	 * Texture coordinate set. The current renderer uses TEXCOORD_0 only.
	 * @default 0
	 */
	texCoord?: GLTFIndex;
}

/** Material extension payload at materials[i].extensions.MOCHIYA_materials_liltoon. */
export interface GLTFLilToonMaterialDefinition {
	/** Extension version. When omitted, the current version is assumed. */
	specVersion?: "1.0" | "1.1" | typeof LILTOON_GLTF_SPEC_VERSION;
	/** Source lilToon version, retained as metadata. */
	lilToonVersion?: string | number;
	/** Original Unity shader name; does not imply renderer support for that shader. */
	shaderVariant?: string;
	/** When omitted, inferred from the original supported shader family. */
	renderMode?: LilToonRenderMode;
	/** Transparent family pass configuration. Defaults to normal or is inferred from shaderVariant. */
	transparencyMode?: LilToonTransparencyMode;
	/** Original property names and linear values, including per-texture <name>_ST transforms. */
	properties?: Record<string, GLTFLilToonPropertyValue>;
	/** Original texture property names mapped to glTF texture indices or texture-info objects. */
	textures?: Record<string, GLTFLilToonTextureInfo | GLTFIndex>;
}
