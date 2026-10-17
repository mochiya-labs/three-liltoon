import { L as LilToonWarning } from './GLTFLilToonExtension-Onocr_71.js';
import { Color, Vector2, Vector3, Vector4, ColorRepresentation, Texture, Matrix4, RawShaderMaterial, Object3D, WebGLRenderer, Loader, LoadingManager } from 'three';

/** Supported Unity shader names and their pass configurations. */
declare const shaderVariants: {
    readonly lilToon: readonly ["opaque", "normal", false];
    readonly "Hidden/lilToonOutline": readonly ["opaque", "normal", true];
    readonly "Hidden/lilToonCutout": readonly ["cutout", "normal", false];
    readonly "Hidden/lilToonCutoutOutline": readonly ["cutout", "normal", true];
    readonly "Hidden/lilToonTransparent": readonly ["transparent", "normal", false];
    readonly "Hidden/lilToonTransparentOutline": readonly ["transparent", "normal", true];
    readonly "Hidden/lilToonOnePassTransparent": readonly ["transparent", "one-pass", false];
    readonly "Hidden/lilToonOnePassTransparentOutline": readonly ["transparent", "one-pass", true];
    readonly "Hidden/lilToonTwoPassTransparent": readonly ["transparent", "two-pass", false];
    readonly "Hidden/lilToonTwoPassTransparentOutline": readonly ["transparent", "two-pass", true];
    readonly "Hidden/lilToonRefraction": readonly ["refraction", "normal", false];
    readonly "Hidden/lilToonRefractionBlur": readonly ["refraction-blur", "normal", false];
    readonly "Hidden/lilToonFur": readonly ["fur", "normal", false];
    readonly "Hidden/lilToonFurCutout": readonly ["fur-cutout", "normal", false];
    readonly "Hidden/lilToonFurTwoPass": readonly ["fur-two-pass", "normal", false];
    readonly "Hidden/lilToonGem": readonly ["gem", "normal", false];
};
type LilToonShaderVariant = keyof typeof shaderVariants;

type LilToonRenderMode = "opaque" | "cutout" | "transparent" | "refraction" | "refraction-blur" | "fur" | "fur-cutout" | "fur-two-pass" | "gem";
type LilToonTransparencyMode = "normal" | "one-pass" | "two-pass";
type LilToonPass = "forward" | "outline" | "fur" | "fur-pre" | "transparent-pre" | "refraction-blur-pre";
type LilToonScalarOrVector = number | boolean | number[] | Color | Vector2 | Vector3 | Vector4;
interface LilToonMaterialParameters {
    /** Authoritative lilToon shader selection, including outline and transparent passes. Defaults to lilToon when no legacy mode is supplied. */
    shaderVariant?: LilToonShaderVariant;
    color?: ColorRepresentation;
    opacity?: number;
    map?: Texture | null;
    alphaTest?: number;
    name?: string;
    /** Effective Unity queue (0–5000). Requires materialRenderQueue sorting opt-in. */
    renderQueue?: number;
    /** @deprecated Select shaderVariant instead. Used only when shaderVariant is absent. */
    renderMode?: LilToonRenderMode;
    /** @deprecated Select shaderVariant instead. Used only when shaderVariant is absent. */
    transparencyMode?: LilToonTransparencyMode;
    properties?: Record<string, LilToonScalarOrVector>;
    textures?: Record<string, Texture | null>;
    /** Enables the generated skin/morph vertex ABI. Safe for static meshes too. */
    deformation?: boolean;
    /** @internal Used by automatic outline rendering. */
    pass?: LilToonPass;
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
declare function detectLilToonFeatures(properties: Record<string, LilToonScalarOrVector>, shaderVariant?: LilToonShaderVariant): LilToonFeatureSet;

interface SerializedLilToonMaterial {
    shaderVariant?: LilToonShaderVariant;
    specVersion?: string;
    lilToonVersion?: string | number;
    /** Effective Unity material queue. Does not change blending or depth state.
     * @asType integer
     * @minimum 0
     * @maximum 5000
     */
    renderQueue?: number;
    /** @deprecated Legacy input fallback when shaderVariant is absent. New writers omit this field. */
    renderMode?: LilToonRenderMode;
    /** @deprecated Legacy input fallback when shaderVariant is absent. New writers omit this field. */
    transparencyMode?: LilToonTransparencyMode;
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
    get renderQueue(): number | undefined;
    set renderQueue(value: number | undefined);
    get shaderVariant(): LilToonShaderVariant;
    set shaderVariant(value: LilToonShaderVariant);
    /** Derived shader mode. @deprecated Read shaderVariant for shader identity. */
    get renderMode(): LilToonRenderMode;
    /** @deprecated Set shaderVariant instead. Retained for legacy callers. */
    set renderMode(value: LilToonRenderMode);
    /** Derived transparent pass mode. @deprecated Read shaderVariant instead. */
    get transparencyMode(): LilToonTransparencyMode;
    /** @deprecated Set shaderVariant instead. Retained for legacy callers. */
    set transparencyMode(value: LilToonTransparencyMode);
    pass: LilToonPass;
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
    private bindTextureViews;
    dispose(): void;
    copy(source: LilToonMaterial): this;
    get map(): Texture | null;
    set map(texture: Texture | null);
    private readColor;
    private syncColor;
    private refreshProgram;
    /** @internal Renderer ABI texture binding. */
    setSystemTexture(binding: "__environment" | "__shadow" | "__bones" | "__background" | "__grab" | "__furVertices", texture: Texture | null): void;
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
declare const LILTOON_GLTF_SPEC_VERSION = "1.3";
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
/** Linear, little-endian RGBA binary16 cubemap in glTF world coordinates. */
interface GLTFLilToonCubeTextureInfo {
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
interface GLTFLilToonMaterialDefinition {
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
    /** Legacy fallback without a supported shaderVariant. Recognized shader names take precedence; new writers omit this field.
     * @deprecated
     */
    renderMode?: LilToonRenderMode;
    /** Legacy fallback without a supported shaderVariant. Recognized shader names take precedence; new writers omit this field.
     * @deprecated
     */
    transparencyMode?: LilToonTransparencyMode;
    /** Original property names and linear values, including per-texture <name>_ST transforms. */
    properties?: Record<string, GLTFLilToonPropertyValue>;
    /** Original texture property names mapped to glTF texture indices or texture-info objects. */
    textures?: Record<string, GLTFLilToonTextureInfo | GLTFIndex>;
    /** Direction-sampled resources, separate from ordinary glTF 2D textures. */
    cubeTextures?: Record<string, GLTFLilToonCubeTextureInfo>;
}

export { type GLTFLilToonCubeTextureInfo as G, LilToonMaterial as L, type SerializedLilToonMaterial as S, type LilToonGlobalUniforms as a, type LilToonMaterialParameters as b, LILTOON_GLTF_EXTENSION as c, LILTOON_GLTF_SPEC_VERSION as d, type LilToonFeatureSet as e, LilToonMaterialLoader as f, type LilToonRenderMode as g, type LilToonScalarOrVector as h, type LilToonShaderVariant as i, type LilToonTransparencyMode as j, detectLilToonFeatures as k, type GLTFLilToonMaterialDefinition as l, type GLTFLilToonPropertyValue as m, type GLTFLilToonTextureInfo as n };
