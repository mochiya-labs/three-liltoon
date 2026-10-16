import type {
	LilToonRenderMode,
	LilToonTransparencyMode,
} from "../material/LilToonMaterialParameters.js";

export const LILTOON_GLTF_EXTENSION = "MOCHIYA_materials_liltoon";
export const LILTOON_GLTF_SPEC_VERSION = "1.3";

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

/** Linear, little-endian RGBA binary16 cubemap in glTF world coordinates. */
export interface GLTFLilToonCubeTextureInfo {
	encoding: "rgba16f-linear";
	/** Square base face size; power of two. @asType integer @minimum 1 */
	size: number;
	/** Base level followed by every authored level down to 1x1, or base only.
	 * Each bufferView contains six tightly packed faces: +X,-X,+Y,-Y,+Z,-Z.
	 * @minItems 1
	 */
	mipmaps: GLTFIndex[];
}

/** Material extension payload at materials[i].extensions.MOCHIYA_materials_liltoon. */
export interface GLTFLilToonMaterialDefinition {
	/** Extension version. When omitted, the current version is assumed. */
	specVersion?: "1.0" | "1.1" | "1.2" | typeof LILTOON_GLTF_SPEC_VERSION;
	/** Source lilToon version, retained as metadata. */
	lilToonVersion?: string | number;
	/** Original Unity shader name. Supported regular names select surface, transparency and outline passes; unsupported names warn and use fallback. */
	shaderVariant?: string;
	/** Effective Unity material queue. Does not change blending or depth state.
	 * @asType integer
	 * @minimum 0
	 * @maximum 5000
	 */
	renderQueue?: number;
	/** When omitted, inferred from the shader family. Must agree with a supported shaderVariant. */
	renderMode?: LilToonRenderMode;
	/** Transparent family pass configuration. Inferred from shaderVariant when present; explicit values must agree with supported variants. */
	transparencyMode?: LilToonTransparencyMode;
	/** Original property names and linear values, including per-texture <name>_ST transforms. */
	properties?: Record<string, GLTFLilToonPropertyValue>;
	/** Original texture property names mapped to glTF texture indices or texture-info objects. */
	textures?: Record<string, GLTFLilToonTextureInfo | GLTFIndex>;
	/** Direction-sampled resources, separate from ordinary glTF 2D textures. */
	cubeTextures?: Record<string, GLTFLilToonCubeTextureInfo>;
}
