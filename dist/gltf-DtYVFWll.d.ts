import { L as LilToonWarning } from './GLTFLilToonExtension-2SkJrHyN.js';
import { Color, Vector2, Vector3, Vector4, ColorRepresentation, Texture, Matrix4, RawShaderMaterial, Object3D, WebGLRenderer, Loader, LoadingManager } from 'three';

type LilToonRenderMode = "opaque" | "cutout" | "transparent";
type LilToonScalarOrVector = number | boolean | number[] | Color | Vector2 | Vector3 | Vector4;
interface LilToonMaterialParameters {
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

type UniformPrimitive = number | Matrix4 | Vector2 | Vector3 | Vector4 | UniformPrimitive[];
type LilToonGlobalUniforms = Record<string, UniformPrimitive>;

interface LilToonFeatureSet {
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
declare function detectLilToonFeatures(properties: Record<string, LilToonScalarOrVector>): LilToonFeatureSet;

interface SerializedLilToonMaterial {
    specVersion?: string;
    lilToonVersion?: string | number;
    renderMode: LilToonRenderMode;
    properties: Record<string, LilToonScalarOrVector>;
    textures: Record<string, string | number | null>;
}

declare class LilToonMaterial extends RawShaderMaterial {
    #private;
    color: Color;
    readonly isLilToonMaterial = true;
    readonly lilToonProperties: Record<string, LilToonScalarOrVector>;
    readonly lilToonTextures: Record<string, Texture | null>;
    globalUniforms: LilToonGlobalUniforms;
    renderMode: LilToonRenderMode;
    pass: "forward" | "outline";
    featureSet: LilToonFeatureSet;
    constructor(parameters?: LilToonMaterialParameters);
    /** The actual compiled program, reselected when texture requirements change. */
    get shaderKey(): string;
    /** Recheck active forward features and textures without logging or changing the material. */
    getWarnings(): LilToonWarning[];
    setProperty(name: string, value: LilToonScalarOrVector): this;
    getProperty<T extends LilToonScalarOrVector = LilToonScalarOrVector>(name: string): T | undefined;
    toLilToonJSON(resolveTexture?: (texture: Texture, property: string) => string | number | null): SerializedLilToonMaterial;
    setTexture(name: string, texture: Texture | null): this;
    copy(source: LilToonMaterial): this;
    get map(): Texture | null;
    set map(texture: Texture | null);
    private readColor;
    private syncColor;
    private refreshProgram;
    /** @internal Renderer ABI texture binding. */
    setSystemTexture(binding: "__environment" | "__shadow" | "__bones" | "__morphs", texture: Texture | null): void;
    updateDeformationUniforms(object: Object3D, renderer: WebGLRenderer): void;
}

declare class LilToonMaterialLoader extends Loader<LilToonMaterial> {
    /** Non-fatal compatibility warnings. Omit to log them to the console. */
    onWarning?: (warning: LilToonWarning) => void;
    constructor(manager?: LoadingManager);
    parse(json: string | SerializedLilToonMaterial): LilToonMaterial;
    load(url: string, onLoad: (material: ReturnType<LilToonMaterialLoader["parse"]>) => void, onProgress?: (event: ProgressEvent) => void, onError?: (error: unknown) => void): void;
}

declare const LILTOON_GLTF_EXTENSION = "MOCHIYA_materials_liltoon";
declare const LILTOON_GLTF_SPEC_VERSION = "1.0";
/**
 * A zero-based glTF index.
 * @asType integer
 * @minimum 0
 */
type GLTFIndex = number;
/** JSON property values. Colors and vectors use numeric arrays, not Three.js objects. */
type GLTFLilToonPropertyValue = number | boolean | number[];
/** A reference to a texture in the enclosing glTF document. */
interface GLTFLilToonTextureInfo {
    /** Index into the glTF textures array. */
    index: GLTFIndex;
    /**
     * Texture coordinate set. The current renderer uses TEXCOORD_0 only.
     * @default 0
     */
    texCoord?: GLTFIndex;
}
/** Material extension payload at materials[i].extensions.MOCHIYA_materials_liltoon. */
interface GLTFLilToonMaterialDefinition {
    /** Extension version. When omitted, the current version is assumed. */
    specVersion?: typeof LILTOON_GLTF_SPEC_VERSION;
    /** Source lilToon version, retained as metadata. */
    lilToonVersion?: string | number;
    /** Original Unity shader name; does not imply renderer support for that shader. */
    shaderVariant?: string;
    /** When omitted, inferred from shaderVariant (cutout, trans, otherwise opaque). */
    renderMode?: LilToonRenderMode;
    /** Original property names and linear values, including per-texture <name>_ST transforms. */
    properties?: Record<string, GLTFLilToonPropertyValue>;
    /** Original texture property names mapped to glTF texture indices or texture-info objects. */
    textures?: Record<string, GLTFLilToonTextureInfo | GLTFIndex>;
}

export { type GLTFLilToonMaterialDefinition as G, LilToonMaterial as L, type SerializedLilToonMaterial as S, type LilToonGlobalUniforms as a, LILTOON_GLTF_EXTENSION as b, LILTOON_GLTF_SPEC_VERSION as c, type LilToonFeatureSet as d, LilToonMaterialLoader as e, type LilToonMaterialParameters as f, type LilToonRenderMode as g, type LilToonScalarOrVector as h, detectLilToonFeatures as i, type GLTFLilToonPropertyValue as j, type GLTFLilToonTextureInfo as k };
