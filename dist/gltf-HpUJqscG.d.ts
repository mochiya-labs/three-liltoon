import { Color, Vector2, Vector3, Vector4, Texture, Matrix4, RawShaderMaterial, Object3D, WebGLRenderer, Scene, DirectionalLight, Camera, Material, Loader, LoadingManager } from 'three';
import { GLTFLoaderPlugin, GLTFParser, GLTF } from 'three/examples/jsm/loaders/GLTFLoader.js';

type LilToonRenderMode = "opaque" | "cutout" | "transparent";
type LilToonScalarOrVector = number | boolean | number[] | Color | Vector2 | Vector3 | Vector4;
interface LilToonMaterialParameters {
    name?: string;
    renderMode?: LilToonRenderMode;
    properties?: Record<string, LilToonScalarOrVector>;
    textures?: Record<string, Texture | null>;
    /** Enables the generated skin/morph vertex ABI. Safe for static meshes too. */
    deformation?: boolean;
    /** @internal Used by OutlinePass. */
    pass?: "forward" | "outline";
}

type UniformPrimitive = number | Matrix4 | Vector2 | Vector3 | Vector4 | UniformPrimitive[];
type LilToonGlobalUniforms = Record<string, UniformPrimitive>;

type LilToonWarningCode = "unsupported-feature" | "unused-texture" | "texture-type-mismatch" | "spec-version-mismatch" | "unsupported-shader-variant";
/** Serializable, non-fatal compatibility diagnostic. */
interface LilToonWarning {
    severity: "warning";
    code: LilToonWarningCode;
    materialName: string;
    materialIndex?: number;
    shaderKey: string;
    property: string;
    message: string;
}

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
    readonly isLilToonMaterial = true;
    readonly lilToonProperties: Record<string, LilToonScalarOrVector>;
    readonly lilToonTextures: Record<string, Texture | null>;
    globalUniforms: LilToonGlobalUniforms;
    renderMode: LilToonRenderMode;
    pass: "forward" | "outline";
    featureSet: LilToonFeatureSet;
    rendererAdapter?: LilToonRendererAdapter;
    constructor(parameters?: LilToonMaterialParameters);
    /** The actual compiled program; edits do not automatically reselect it. */
    get shaderKey(): string;
    /** Recheck active forward features and textures without logging or changing the material. */
    getWarnings(): LilToonWarning[];
    setProperty(name: string, value: LilToonScalarOrVector): this;
    getProperty<T extends LilToonScalarOrVector = LilToonScalarOrVector>(name: string): T | undefined;
    toLilToonJSON(resolveTexture?: (texture: Texture, property: string) => string | number | null): SerializedLilToonMaterial;
    setTexture(name: string, texture: Texture | null): this;
    setRendererAdapter(adapter: LilToonRendererAdapter | undefined): this;
    copy(source: LilToonMaterial): this;
    /** @internal Renderer ABI texture binding. */
    setSystemTexture(binding: "__environment" | "__shadow" | "__bones" | "__morphs", texture: Texture | null): void;
    updateDeformationUniforms(object: Object3D, renderer: WebGLRenderer): void;
}

declare class LilToonEnvironmentAdapter {
    #private;
    read(scene: Scene): Texture | null;
    bind(scene: Scene, globals: LilToonGlobalUniforms): Texture | null;
}

interface LilToonSceneLighting {
    main?: DirectionalLight;
    direction: Vector3;
    color: Color;
    ambient: Color;
}
declare class LilToonLightAdapter {
    read(scene: Scene): LilToonSceneLighting;
}

interface LilToonShadowBinding {
    texture: Texture | null;
}
declare class LilToonShadowAdapter {
    bind(light: DirectionalLight | undefined, globals: LilToonGlobalUniforms, shadowsEnabled?: boolean): LilToonShadowBinding;
}

declare class LilToonRendererAdapter {
    #private;
    readonly renderer: WebGLRenderer;
    readonly lightAdapter: LilToonLightAdapter;
    readonly shadowAdapter: LilToonShadowAdapter;
    readonly environmentAdapter: LilToonEnvironmentAdapter;
    constructor(renderer: WebGLRenderer);
    attach(root: Object3D): this;
    prepareMaterial(material: LilToonMaterial, renderer: WebGLRenderer, scene: Scene, _camera: Camera, _object: Object3D, _elapsedSeconds: number): void;
    render(scene: Scene, camera: Camera): void;
}

interface GLTFLilToonExtensionOptions {
    rendererAdapter?: LilToonRendererAdapter;
    addOutlines?: boolean;
    configureShadowCasters?: boolean;
    /** Non-fatal compatibility warnings. Omit to log them to the console. */
    onWarning?: (warning: LilToonWarning) => void;
}
declare class GLTFLilToonExtension implements GLTFLoaderPlugin {
    #private;
    readonly parser: GLTFParser;
    readonly options: GLTFLilToonExtensionOptions;
    readonly name = "MOCHIYA_materials_liltoon";
    constructor(parser: GLTFParser, options?: GLTFLilToonExtensionOptions);
    loadMaterial(materialIndex: number): Promise<Material> | null;
    afterRoot(result: GLTF): Promise<void>;
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
interface GLTFLilToonTextureInfo {
    index: number;
    texCoord?: number;
}
interface GLTFLilToonMaterialDefinition {
    specVersion?: string;
    lilToonVersion?: string | number;
    shaderVariant?: string;
    renderMode?: LilToonRenderMode;
    properties?: Record<string, LilToonScalarOrVector>;
    textures?: Record<string, GLTFLilToonTextureInfo | number>;
}

export { GLTFLilToonExtension as G, LilToonMaterial as L, type SerializedLilToonMaterial as S, LilToonRendererAdapter as a, type GLTFLilToonExtensionOptions as b, LILTOON_GLTF_EXTENSION as c, LILTOON_GLTF_SPEC_VERSION as d, LilToonEnvironmentAdapter as e, type LilToonFeatureSet as f, LilToonLightAdapter as g, LilToonMaterialLoader as h, type LilToonMaterialParameters as i, type LilToonRenderMode as j, type LilToonScalarOrVector as k, LilToonShadowAdapter as l, type LilToonWarning as m, type LilToonWarningCode as n, detectLilToonFeatures as o, type GLTFLilToonMaterialDefinition as p, type GLTFLilToonTextureInfo as q };
