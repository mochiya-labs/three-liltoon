import { S as SerializedLilToonMaterial, L as LilToonMaterial, a as LilToonGlobalUniforms } from './gltf-4R9KLypd.js';
export { b as LILTOON_GLTF_EXTENSION, c as LILTOON_GLTF_SPEC_VERSION, d as LilToonFeatureSet, e as LilToonMaterialLoader, f as LilToonMaterialParameters, g as LilToonRenderMode, h as LilToonScalarOrVector, i as detectLilToonFeatures } from './gltf-4R9KLypd.js';
import { WebGLRenderer, Texture, Scene, DirectionalLight, Vector3, Color } from 'three';
export { a as GLTFLilToonExtension, G as GLTFLilToonExtensionOptions, L as LilToonWarning, b as LilToonWarningCode } from './GLTFLilToonExtension-2SkJrHyN.js';
import 'three/examples/jsm/loaders/GLTFLoader.js';

/** Install automatic passes on an existing renderer. Release the returned lease on teardown. */
declare function enableLilToon(renderer: WebGLRenderer): () => void;

declare class LilToonMaterialFactory {
    create(source: SerializedLilToonMaterial, textures?: Record<string, Texture | null>): LilToonMaterial;
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

declare class LilToonEnvironmentAdapter {
    #private;
    read(scene: Scene): Texture | null;
    bind(scene: Scene, globals: LilToonGlobalUniforms): Texture | null;
}

declare class RefractionPass {
    constructor();
}

declare class GemPass {
    constructor();
}

declare class FurPass {
    constructor();
}

declare class UnsupportedFeatureError extends Error {
    constructor(message: string);
}

declare const LILTOON_PROPERTIES: readonly [{
    readonly name: "_DummyProperty";
    readonly displayName: "";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Invisible";
    readonly displayName: "sInvisible";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AsUnlit";
    readonly displayName: "sAsUnlit";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Cutoff";
    readonly displayName: "sCutoff";
    readonly type: "Range";
    readonly range: readonly [-0.001, 1.001];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_SubpassCutoff";
    readonly displayName: "sSubpassCutoff";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_FlipNormal";
    readonly displayName: "sFlipBackfaceNormal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ShiftBackfaceUV";
    readonly displayName: "sShiftBackfaceUV";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_BackfaceForceShadow";
    readonly displayName: "sBackfaceForceShadow";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_BackfaceColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_VertexLightStrength";
    readonly displayName: "sVertexLightStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_LightMinLimit";
    readonly displayName: "sLightMinLimit";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.05;
    readonly attributes: readonly [];
}, {
    readonly name: "_LightMaxLimit";
    readonly displayName: "sLightMaxLimit";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_BeforeExposureLimit";
    readonly displayName: "sBeforeExposureLimit";
    readonly type: "Float";
    readonly defaultValue: 10000;
    readonly attributes: readonly [];
}, {
    readonly name: "_MonochromeLighting";
    readonly displayName: "sMonochromeLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_AlphaBoostFA";
    readonly displayName: "sAlphaBoostFA";
    readonly type: "Range";
    readonly range: readonly [1, 100];
    readonly defaultValue: 10;
    readonly attributes: readonly [];
}, {
    readonly name: "_lilDirectionalLightStrength";
    readonly displayName: "sDirectionalLightStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_LightDirectionOverride";
    readonly displayName: "sLightDirectionOverrides";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.001, 0.002, 0.001, 0];
    readonly attributes: readonly ["lilVec3B"];
}, {
    readonly name: "_AAStrength";
    readonly displayName: "sAAShading";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseDither";
    readonly displayName: "sDither";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_DitherTex";
    readonly displayName: "Dither";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_DitherMaxValue";
    readonly displayName: "Max Value";
    readonly type: "Float";
    readonly defaultValue: 255;
    readonly attributes: readonly [];
}, {
    readonly name: "_EnvRimBorder";
    readonly displayName: "[VRCLV] Rim Border";
    readonly type: "Range";
    readonly range: readonly [0, 3];
    readonly defaultValue: 3;
    readonly attributes: readonly [];
}, {
    readonly name: "_EnvRimBlur";
    readonly displayName: "[VRCLV] Rim Blur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.35;
    readonly attributes: readonly [];
}, {
    readonly name: "_Color";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR", "MainColor"];
}, {
    readonly name: "_MainTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["MainTexture"];
}, {
    readonly name: "_MainTex_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_MainTexHSVG";
    readonly displayName: "sHSVGs";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 1, 1, 1];
    readonly attributes: readonly ["lilHSVG"];
}, {
    readonly name: "_MainGradationStrength";
    readonly displayName: "Gradation Strength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MainGradationTex";
    readonly displayName: "Gradation Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_MainColorAdjustMask";
    readonly displayName: "Adjust Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_UseMain2ndTex";
    readonly displayName: "sMainColor2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_Color2nd";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_Main2ndTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main2ndTexAngle";
    readonly displayName: "sAngle";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilAngle"];
}, {
    readonly name: "_Main2ndTex_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Main2ndTex_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3|MatCap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main2ndTex_Cull";
    readonly displayName: "sCullModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main2ndTexDecalAnimation";
    readonly displayName: "sDecalAnimations";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 1, 1, 30];
    readonly attributes: readonly ["lilDecalAnim"];
}, {
    readonly name: "_Main2ndTexDecalSubParam";
    readonly displayName: "sDecalSubParams";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 1, 0, 1];
    readonly attributes: readonly ["lilDecalSub"];
}, {
    readonly name: "_Main2ndTexIsDecal";
    readonly displayName: "sAsDecal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexIsLeftOnly";
    readonly displayName: "Left Only";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexIsRightOnly";
    readonly displayName: "Right Only";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexShouldCopy";
    readonly displayName: "Copy";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexShouldFlipMirror";
    readonly displayName: "Flip Mirror";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexShouldFlipCopy";
    readonly displayName: "Flip Copy";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndTexIsMSDF";
    readonly displayName: "sAsMSDF";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main2ndBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Main2ndTexBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main2ndTexAlphaMode";
    readonly displayName: "sAlphaModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main2ndEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Main2ndDissolveMask";
    readonly displayName: "Dissolve Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main2ndDissolveNoiseMask";
    readonly displayName: "Dissolve Noise Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "gray";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main2ndDissolveNoiseMask_ScrollRotate";
    readonly displayName: "Scroll";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Main2ndDissolveNoiseStrength";
    readonly displayName: "Dissolve Noise Strength";
    readonly type: "Float";
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Main2ndDissolveColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_Main2ndDissolveParams";
    readonly displayName: "sDissolveParams";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0.5, 0.1];
    readonly attributes: readonly ["lilDissolve"];
}, {
    readonly name: "_Main2ndDissolvePos";
    readonly displayName: "Dissolve Position";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilDissolveP"];
}, {
    readonly name: "_Main2ndDistanceFade";
    readonly displayName: "sDistanceFadeSettings";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.1, 0.01, 0, 0];
    readonly attributes: readonly ["lilFFFB"];
}, {
    readonly name: "_UseMain3rdTex";
    readonly displayName: "sMainColor3rd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_Color3rd";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_Main3rdTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main3rdTexAngle";
    readonly displayName: "sAngle";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilAngle"];
}, {
    readonly name: "_Main3rdTex_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Main3rdTex_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3|MatCap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main3rdTex_Cull";
    readonly displayName: "sCullModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main3rdTexDecalAnimation";
    readonly displayName: "sDecalAnimations";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 1, 1, 30];
    readonly attributes: readonly ["lilDecalAnim"];
}, {
    readonly name: "_Main3rdTexDecalSubParam";
    readonly displayName: "sDecalSubParams";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 1, 0, 1];
    readonly attributes: readonly ["lilDecalSub"];
}, {
    readonly name: "_Main3rdTexIsDecal";
    readonly displayName: "sAsDecal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexIsLeftOnly";
    readonly displayName: "Left Only";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexIsRightOnly";
    readonly displayName: "Right Only";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexShouldCopy";
    readonly displayName: "Copy";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexShouldFlipMirror";
    readonly displayName: "Flip Mirror";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexShouldFlipCopy";
    readonly displayName: "Flip Copy";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdTexIsMSDF";
    readonly displayName: "sAsMSDF";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Main3rdBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Main3rdTexBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main3rdTexAlphaMode";
    readonly displayName: "sAlphaModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Main3rdEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Main3rdDissolveMask";
    readonly displayName: "Dissolve Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main3rdDissolveNoiseMask";
    readonly displayName: "Dissolve Noise Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "gray";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Main3rdDissolveNoiseMask_ScrollRotate";
    readonly displayName: "Scroll";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Main3rdDissolveNoiseStrength";
    readonly displayName: "Dissolve Noise Strength";
    readonly type: "Float";
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Main3rdDissolveColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_Main3rdDissolveParams";
    readonly displayName: "sDissolveParams";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0.5, 0.1];
    readonly attributes: readonly ["lilDissolve"];
}, {
    readonly name: "_Main3rdDissolvePos";
    readonly displayName: "Dissolve Position";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilDissolveP"];
}, {
    readonly name: "_Main3rdDistanceFade";
    readonly displayName: "sDistanceFadeSettings";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.1, 0.01, 0, 0];
    readonly attributes: readonly ["lilFFFB"];
}, {
    readonly name: "_AlphaMaskMode";
    readonly displayName: "sAlphaMaskModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnumLabel"];
}, {
    readonly name: "_AlphaMask";
    readonly displayName: "AlphaMask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_AlphaMaskScale";
    readonly displayName: "Scale";
    readonly type: "Float";
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_AlphaMaskValue";
    readonly displayName: "Offset";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseBumpMap";
    readonly displayName: "sNormalMap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_BumpMap";
    readonly displayName: "Normal Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["Normal"];
}, {
    readonly name: "_BumpScale";
    readonly displayName: "Scale";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseBump2ndMap";
    readonly displayName: "sNormalMap2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_Bump2ndMap";
    readonly displayName: "Normal Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["Normal"];
}, {
    readonly name: "_Bump2ndMap_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Bump2ndScale";
    readonly displayName: "Scale";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Bump2ndScaleMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_UseAnisotropy";
    readonly displayName: "sAnisotropy";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_AnisotropyTangentMap";
    readonly displayName: "Tangent Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["Normal"];
}, {
    readonly name: "_AnisotropyScale";
    readonly displayName: "Scale";
    readonly type: "Range";
    readonly range: readonly [-1, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropyScaleMask";
    readonly displayName: "Scale Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_AnisotropyTangentWidth";
    readonly displayName: "sTangentWidth";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropyBitangentWidth";
    readonly displayName: "sBitangentWidth";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropyShift";
    readonly displayName: "sOffset";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropyShiftNoiseScale";
    readonly displayName: "sNoiseStrength";
    readonly type: "Range";
    readonly range: readonly [-1, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropySpecularStrength";
    readonly displayName: "sStrength";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2ndTangentWidth";
    readonly displayName: "sTangentWidth";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2ndBitangentWidth";
    readonly displayName: "sBitangentWidth";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2ndShift";
    readonly displayName: "sOffset";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2ndShiftNoiseScale";
    readonly displayName: "sNoiseStrength";
    readonly type: "Range";
    readonly range: readonly [-1, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2ndSpecularStrength";
    readonly displayName: "sStrength";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_AnisotropyShiftNoiseMask";
    readonly displayName: "sNoise";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Anisotropy2Reflection";
    readonly displayName: "sReflection";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Anisotropy2MatCap";
    readonly displayName: "sMatCap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Anisotropy2MatCap2nd";
    readonly displayName: "sMatCap2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UseBacklight";
    readonly displayName: "sBacklight";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_BacklightColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0.85, 0.8, 0.7, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_BacklightColorTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_BacklightMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightBorder";
    readonly displayName: "Border";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.35;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.05;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightDirectivity";
    readonly displayName: "sDirectivity";
    readonly type: "Float";
    readonly defaultValue: 5;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightViewStrength";
    readonly displayName: "sViewDirectionStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_BacklightReceiveShadow";
    readonly displayName: "sReceiveShadow";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_BacklightBackfaceMask";
    readonly displayName: "sBackfaceMask";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UseShadow";
    readonly displayName: "sShadow";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_ShadowStrength";
    readonly displayName: "sStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowStrengthMask";
    readonly displayName: "sStrength";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ShadowStrengthMaskLOD";
    readonly displayName: "LOD";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilLOD"];
}, {
    readonly name: "_ShadowBorderMask";
    readonly displayName: "sBorder";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ShadowBorderMaskLOD";
    readonly displayName: "LOD";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilLOD"];
}, {
    readonly name: "_ShadowBlurMask";
    readonly displayName: "sBlur";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ShadowBlurMaskLOD";
    readonly displayName: "LOD";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilLOD"];
}, {
    readonly name: "_ShadowAOShift";
    readonly displayName: "1st Scale|1st Offset|2nd Scale|2nd Offset";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 0, 1, 0];
    readonly attributes: readonly ["lilFFFF"];
}, {
    readonly name: "_ShadowAOShift2";
    readonly displayName: "3rd Scale|3rd Offset";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 0, 1, 0];
    readonly attributes: readonly ["lilFF"];
}, {
    readonly name: "_ShadowPostAO";
    readonly displayName: "sIgnoreBorderProperties";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ShadowColorType";
    readonly displayName: "sShadowColorTypes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_ShadowColor";
    readonly displayName: "Shadow Color";
    readonly type: "Color";
    readonly defaultValue: readonly [0.82, 0.76, 0.85, 1];
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowColorTex";
    readonly displayName: "Shadow Color";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "black";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ShadowNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowReceive";
    readonly displayName: "sReceiveShadow";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow2ndColor";
    readonly displayName: "2nd Color";
    readonly type: "Color";
    readonly defaultValue: readonly [0.68, 0.66, 0.79, 1];
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow2ndColorTex";
    readonly displayName: "2nd Color";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "black";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Shadow2ndNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow2ndBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.15;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow2ndBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow2ndReceive";
    readonly displayName: "sReceiveShadow";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow3rdColor";
    readonly displayName: "3rd Color";
    readonly type: "Color";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow3rdColorTex";
    readonly displayName: "3rd Color";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "black";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Shadow3rdNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow3rdBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.25;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow3rdBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Shadow3rdReceive";
    readonly displayName: "sReceiveShadow";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowBorderColor";
    readonly displayName: "sShadowBorderColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0.1, 0, 1];
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowBorderRange";
    readonly displayName: "sShadowBorderRange";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.08;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowMainStrength";
    readonly displayName: "sContrast";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowEnvStrength";
    readonly displayName: "sShadowEnvStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowMaskType";
    readonly displayName: "sShadowMaskTypes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_ShadowFlatBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [-2, 2];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ShadowFlatBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0.001, 2];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseRimShade";
    readonly displayName: "RimShade";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_RimShadeColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0.5, 0.5, 0.5, 1];
    readonly attributes: readonly [];
}, {
    readonly name: "_RimShadeMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_RimShadeNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimShadeBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimShadeBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimShadeFresnelPower";
    readonly displayName: "sFresnelPower";
    readonly type: "Range";
    readonly range: readonly [0.01, 50];
    readonly defaultValue: 1;
    readonly attributes: readonly ["PowerSlider(3.0)"];
}, {
    readonly name: "_UseReflection";
    readonly displayName: "sReflection";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_Smoothness";
    readonly displayName: "Smoothness";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_SmoothnessTex";
    readonly displayName: "Smoothness";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Metallic";
    readonly displayName: "Metallic";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly ["Gamma"];
}, {
    readonly name: "_MetallicGlossMap";
    readonly displayName: "Metallic";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Reflectance";
    readonly displayName: "sReflectance";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.04;
    readonly attributes: readonly ["Gamma"];
}, {
    readonly name: "_GSAAStrength";
    readonly displayName: "GSAA";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ApplySpecular";
    readonly displayName: "Apply Specular";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ApplySpecularFA";
    readonly displayName: "sMultiLightSpecular";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_SpecularToon";
    readonly displayName: "Specular Toon";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_SpecularNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_SpecularBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_SpecularBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ApplyReflection";
    readonly displayName: "sApplyReflection";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ReflectionNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ReflectionColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_ReflectionColorTex";
    readonly displayName: "sColor";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ReflectionApplyTransparency";
    readonly displayName: "sApplyTransparency";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ReflectionCubeTex";
    readonly displayName: "Cubemap Fallback";
    readonly type: "Cube";
    readonly defaultValue: {
        readonly texture: "black";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_ReflectionCubeColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0, 0, 0, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_ReflectionCubeOverride";
    readonly displayName: "Override";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ReflectionCubeEnableLighting";
    readonly displayName: "sEnableLighting+ (Fallback)";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_ReflectionBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_UseMatCap";
    readonly displayName: "sMatCap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_MatCapColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_MatCapTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapBlendUV1";
    readonly displayName: "sBlendUV1";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilVec2R"];
}, {
    readonly name: "_MatCapZRotCancel";
    readonly displayName: "sMatCapZRotCancel";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCapPerspective";
    readonly displayName: "sFixPerspective";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCapVRParallaxStrength";
    readonly displayName: "sVRParallaxStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapBlend";
    readonly displayName: "Blend";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_MatCapEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapShadowMask";
    readonly displayName: "sShadowMask";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapBackfaceMask";
    readonly displayName: "sBackfaceMask";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCapLod";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_MatCapApplyTransparency";
    readonly displayName: "sApplyTransparency";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCapNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCapCustomNormal";
    readonly displayName: "sMatCapCustomNormal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCapBumpMap";
    readonly displayName: "Normal Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["Normal"];
}, {
    readonly name: "_MatCapBumpScale";
    readonly displayName: "Scale";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseMatCap2nd";
    readonly displayName: "sMatCap2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_MatCap2ndColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_MatCap2ndTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndBlendUV1";
    readonly displayName: "sBlendUV1";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilVec2R"];
}, {
    readonly name: "_MatCap2ndZRotCancel";
    readonly displayName: "sMatCapZRotCancel";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCap2ndPerspective";
    readonly displayName: "sFixPerspective";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCap2ndVRParallaxStrength";
    readonly displayName: "sVRParallaxStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndBlend";
    readonly displayName: "Blend";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_MatCap2ndEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndShadowMask";
    readonly displayName: "sShadowMask";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndBackfaceMask";
    readonly displayName: "sBackfaceMask";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCap2ndLod";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 10];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_MatCap2ndApplyTransparency";
    readonly displayName: "sApplyTransparency";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCap2ndNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_MatCap2ndCustomNormal";
    readonly displayName: "sMatCapCustomNormal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_MatCap2ndBumpMap";
    readonly displayName: "Normal Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["Normal"];
}, {
    readonly name: "_MatCap2ndBumpScale";
    readonly displayName: "Scale";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseRim";
    readonly displayName: "sRimLight";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_RimColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0.66, 0.5, 0.48, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_RimColorTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_RimMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.65;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimFresnelPower";
    readonly displayName: "sFresnelPower";
    readonly type: "Range";
    readonly range: readonly [0.01, 50];
    readonly defaultValue: 3.5;
    readonly attributes: readonly ["PowerSlider(3.0)"];
}, {
    readonly name: "_RimEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimShadowMask";
    readonly displayName: "sShadowMask";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimBackfaceMask";
    readonly displayName: "sBackfaceMask";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_RimVRParallaxStrength";
    readonly displayName: "sVRParallaxStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimApplyTransparency";
    readonly displayName: "sApplyTransparency";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_RimDirStrength";
    readonly displayName: "sRimLightDirection";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimDirRange";
    readonly displayName: "sRimDirectionRange";
    readonly type: "Range";
    readonly range: readonly [-1, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimIndirRange";
    readonly displayName: "sRimIndirectionRange";
    readonly type: "Range";
    readonly range: readonly [-1, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimIndirColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_RimIndirBorder";
    readonly displayName: "sBorder";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimIndirBlur";
    readonly displayName: "sBlur";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_RimBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_UseGlitter";
    readonly displayName: "sGlitter";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_GlitterUVMode";
    readonly displayName: "UV Mode|UV0|UV1";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_GlitterColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_GlitterColorTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterColorTex_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_GlitterMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterNormalStrength";
    readonly displayName: "sNormalStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterScaleRandomize";
    readonly displayName: "sRandomize+ (Size)";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterApplyShape";
    readonly displayName: "Shape";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_GlitterShapeTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterAtras";
    readonly displayName: "Atras";
    readonly type: "Vector";
    readonly defaultValue: readonly [1, 1, 0, 0];
    readonly attributes: readonly ["lilVec2"];
}, {
    readonly name: "_GlitterAngleRandomize";
    readonly displayName: "sRandomize+ (+sAngle+)";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_GlitterParams1";
    readonly displayName: "Tiling|Particle Size|Contrast";
    readonly type: "Vector";
    readonly defaultValue: readonly [256, 256, 0.16, 50];
    readonly attributes: readonly ["lilGlitParam1"];
}, {
    readonly name: "_GlitterParams2";
    readonly displayName: "sGlitterParams2";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.25, 0, 0, 0];
    readonly attributes: readonly ["lilGlitParam2"];
}, {
    readonly name: "_GlitterPostContrast";
    readonly displayName: "sPostContrast";
    readonly type: "Float";
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterSensitivity";
    readonly displayName: "Sensitivity";
    readonly type: "Float";
    readonly defaultValue: 0.25;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterShadowMask";
    readonly displayName: "sShadowMask";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_GlitterBackfaceMask";
    readonly displayName: "sBackfaceMask";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_GlitterApplyTransparency";
    readonly displayName: "sApplyTransparency";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_GlitterVRParallaxStrength";
    readonly displayName: "sVRParallaxStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_UseEmission";
    readonly displayName: "sEmission";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_EmissionColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["HDR", "lilHDR"];
}, {
    readonly name: "_EmissionMap";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionMap_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_EmissionMap_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3|Rim";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_EmissionMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionBlend";
    readonly displayName: "Blend";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionBlendMask_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_EmissionBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_EmissionBlink";
    readonly displayName: "sBlinkSettings";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 3.141593, 0];
    readonly attributes: readonly ["lilBlink"];
}, {
    readonly name: "_EmissionUseGrad";
    readonly displayName: "sGradation";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_EmissionGradTex";
    readonly displayName: "Gradation Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_EmissionGradSpeed";
    readonly displayName: "Gradation Speed";
    readonly type: "Float";
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionParallaxDepth";
    readonly displayName: "sParallaxDepth";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_EmissionFluorescence";
    readonly displayName: "sFluorescence";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_egci";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egai";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc0";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc1";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc2";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc3";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc4";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc5";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc6";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_egc7";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega0";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega1";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 1];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega2";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega3";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega4";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega5";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega6";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_ega7";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_UseEmission2nd";
    readonly displayName: "sEmission2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_Emission2ndColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["HDR", "lilHDR"];
}, {
    readonly name: "_Emission2ndMap";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndMap_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Emission2ndMap_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3|Rim";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Emission2ndMainStrength";
    readonly displayName: "sMainColorPower";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndBlend";
    readonly displayName: "Blend";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndBlendMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndBlendMask_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_Emission2ndBlendMode";
    readonly displayName: "sBlendModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_Emission2ndBlink";
    readonly displayName: "sBlinkSettings";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 3.141593, 0];
    readonly attributes: readonly ["lilBlink"];
}, {
    readonly name: "_Emission2ndUseGrad";
    readonly displayName: "sGradation";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_Emission2ndGradTex";
    readonly displayName: "Gradation Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Emission2ndGradSpeed";
    readonly displayName: "Gradation Speed";
    readonly type: "Float";
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndParallaxDepth";
    readonly displayName: "sParallaxDepth";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_Emission2ndFluorescence";
    readonly displayName: "sFluorescence";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_e2gci";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gai";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc0";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc1";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc2";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc3";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc4";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc5";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc6";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2gc7";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga0";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga1";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 1];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga2";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga3";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga4";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga5";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga6";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_e2ga7";
    readonly displayName: "";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0, 0, 0];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_UseParallax";
    readonly displayName: "sParallax";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_UsePOM";
    readonly displayName: "sPOM";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ParallaxMap";
    readonly displayName: "Parallax Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "gray";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_Parallax";
    readonly displayName: "Parallax Scale";
    readonly type: "Float";
    readonly defaultValue: 0.02;
    readonly attributes: readonly [];
}, {
    readonly name: "_ParallaxOffset";
    readonly displayName: "sParallaxOffset";
    readonly type: "Float";
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_DistanceFadeColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0, 0, 0, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_DistanceFade";
    readonly displayName: "sDistanceFadeSettings";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.1, 0.01, 0, 0];
    readonly attributes: readonly ["lilFFFB"];
}, {
    readonly name: "_DistanceFadeMode";
    readonly displayName: "sDistanceFadeModes";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_DistanceFadeRimColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_DistanceFadeRimFresnelPower";
    readonly displayName: "sFresnelPower";
    readonly type: "Range";
    readonly range: readonly [0.01, 50];
    readonly defaultValue: 5;
    readonly attributes: readonly ["PowerSlider(3.0)"];
}, {
    readonly name: "_UseAudioLink";
    readonly displayName: "sAudioLink";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_AudioLinkDefaultValue";
    readonly displayName: "Strength|Blink Strength|Blink Speed|Blink Threshold";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 2, 0.75];
    readonly attributes: readonly ["lilFRFR"];
}, {
    readonly name: "_AudioLinkUVMode";
    readonly displayName: "sAudioLinkUVModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_AudioLinkUVParams";
    readonly displayName: "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.25, 0, 0, 0.125];
    readonly attributes: readonly ["lilALUVParams"];
}, {
    readonly name: "_AudioLinkStart";
    readonly displayName: "sAudioLinkStartPosition";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilVec3"];
}, {
    readonly name: "_AudioLinkMask";
    readonly displayName: "Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "blue";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_AudioLinkMask_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_AudioLinkMask_UVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_AudioLink2Main2nd";
    readonly displayName: "sMainColor2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2Main3rd";
    readonly displayName: "sMainColor3rd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2Emission";
    readonly displayName: "sEmission";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2EmissionGrad";
    readonly displayName: "sEmission+sGradation";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2Emission2nd";
    readonly displayName: "sEmission2nd";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2Emission2ndGrad";
    readonly displayName: "sEmission2nd+sGradation";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLink2Vertex";
    readonly displayName: "sVertex";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLinkVertexUVMode";
    readonly displayName: "sAudioLinkVertexUVModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_AudioLinkVertexUVParams";
    readonly displayName: "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble";
    readonly type: "Vector";
    readonly defaultValue: readonly [0.25, 0, 0, 0.125];
    readonly attributes: readonly ["lilALUVParams"];
}, {
    readonly name: "_AudioLinkVertexStart";
    readonly displayName: "sAudioLinkStartPosition";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilVec3"];
}, {
    readonly name: "_AudioLinkVertexStrength";
    readonly displayName: "sAudioLinkVertexStrengths";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 1];
    readonly attributes: readonly ["lilVec3Float"];
}, {
    readonly name: "_AudioLinkAsLocal";
    readonly displayName: "sAudioLinkAsLocal";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AudioLinkLocalMap";
    readonly displayName: "Local Map";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "black";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_AudioLinkLocalMapParams";
    readonly displayName: "sAudioLinkLocalMapParams";
    readonly type: "Vector";
    readonly defaultValue: readonly [120, 1, 0, 0];
    readonly attributes: readonly ["lilALLocal"];
}, {
    readonly name: "_DissolveMask";
    readonly displayName: "Dissolve Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_DissolveNoiseMask";
    readonly displayName: "Dissolve Noise Mask";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "gray";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_DissolveNoiseMask_ScrollRotate";
    readonly displayName: "Scroll";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_DissolveNoiseStrength";
    readonly displayName: "Dissolve Noise Strength";
    readonly type: "Float";
    readonly defaultValue: 0.1;
    readonly attributes: readonly [];
}, {
    readonly name: "_DissolveColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_DissolveParams";
    readonly displayName: "sDissolveParamsModes";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0.5, 0.1];
    readonly attributes: readonly ["lilDissolve"];
}, {
    readonly name: "_DissolvePos";
    readonly displayName: "Dissolve Position";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilDissolveP"];
}, {
    readonly name: "_IDMaskCompile";
    readonly displayName: "_IDMaskCompile";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskFrom";
    readonly displayName: "_IDMaskFrom|0: UV0|1: UV1|2: UV2|3: UV3|4: UV4|5: UV5|6: UV6|7: UV7|8: VertexID";
    readonly type: "Int";
    readonly defaultValue: 8;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_IDMask1";
    readonly displayName: "_IDMask1";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask2";
    readonly displayName: "_IDMask2";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask3";
    readonly displayName: "_IDMask3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask4";
    readonly displayName: "_IDMask4";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask5";
    readonly displayName: "_IDMask5";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask6";
    readonly displayName: "_IDMask6";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask7";
    readonly displayName: "_IDMask7";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMask8";
    readonly displayName: "_IDMask8";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskIsBitmap";
    readonly displayName: "_IDMaskIsBitmap";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskIndex1";
    readonly displayName: "_IDMaskIndex1";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex2";
    readonly displayName: "_IDMaskIndex2";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex3";
    readonly displayName: "_IDMaskIndex3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex4";
    readonly displayName: "_IDMaskIndex4";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex5";
    readonly displayName: "_IDMaskIndex5";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex6";
    readonly displayName: "_IDMaskIndex6";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex7";
    readonly displayName: "_IDMaskIndex7";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskIndex8";
    readonly displayName: "_IDMaskIndex8";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_IDMaskControlsDissolve";
    readonly displayName: "_IDMaskControlsDissolve";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior1";
    readonly displayName: "_IDMaskPrior1";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior2";
    readonly displayName: "_IDMaskPrior2";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior3";
    readonly displayName: "_IDMaskPrior3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior4";
    readonly displayName: "_IDMaskPrior4";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior5";
    readonly displayName: "_IDMaskPrior5";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior6";
    readonly displayName: "_IDMaskPrior6";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior7";
    readonly displayName: "_IDMaskPrior7";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_IDMaskPrior8";
    readonly displayName: "_IDMaskPrior8";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["ToggleUI"];
}, {
    readonly name: "_UDIMDiscardCompile";
    readonly displayName: "sUDIMDiscard";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_UDIMDiscardUV";
    readonly displayName: "sUDIMDiscardUV|0: UV0|1: UV1|2: UV2|3: UV3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_UDIMDiscardMode";
    readonly displayName: "sUDIMDiscardMode|0: Vertex|1: Pixel (slower)";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_UDIMDiscardRow3_3";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow3_2";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow3_1";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow3_0";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow2_3";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow2_2";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow2_1";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow2_0";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow1_3";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow1_2";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow1_1";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow1_0";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow0_3";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow0_2";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow0_1";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_UDIMDiscardRow0_0";
    readonly displayName: "";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [0.6, 0.56, 0.73, 1];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_OutlineTex";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineTex_ScrollRotate";
    readonly displayName: "sScrollRotates";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 0, 0, 0];
    readonly attributes: readonly ["lilUVAnim"];
}, {
    readonly name: "_OutlineTexHSVG";
    readonly displayName: "sHSVGs";
    readonly type: "Vector";
    readonly defaultValue: readonly [0, 1, 1, 1];
    readonly attributes: readonly ["lilHSVG"];
}, {
    readonly name: "_OutlineLitColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 0.2, 0, 0];
    readonly attributes: readonly ["lilHDR"];
}, {
    readonly name: "_OutlineLitApplyTex";
    readonly displayName: "sColorFromMain";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineLitScale";
    readonly displayName: "Scale";
    readonly type: "Float";
    readonly defaultValue: 10;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineLitOffset";
    readonly displayName: "Offset";
    readonly type: "Float";
    readonly defaultValue: -8;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineLitShadowReceive";
    readonly displayName: "sReceiveShadow";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineWidth";
    readonly displayName: "Width";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.08;
    readonly attributes: readonly ["lilOLWidth"];
}, {
    readonly name: "_OutlineWidthMask";
    readonly displayName: "Width";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["NoScaleOffset"];
}, {
    readonly name: "_OutlineFixWidth";
    readonly displayName: "sFixWidth";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineVertexR2Width";
    readonly displayName: "sOutlineVertexColorUsages";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_OutlineDeleteMesh";
    readonly displayName: "sDeleteMesh0";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineVectorTex";
    readonly displayName: "Vector";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "bump";
    };
    readonly attributes: readonly ["NoScaleOffset", "Normal"];
}, {
    readonly name: "_OutlineVectorUVMode";
    readonly displayName: "UV Mode|UV0|UV1|UV2|UV3";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_OutlineVectorScale";
    readonly displayName: "Vector scale";
    readonly type: "Range";
    readonly range: readonly [-10, 10];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineEnableLighting";
    readonly displayName: "sEnableLighting";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 1;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineZBias";
    readonly displayName: "Z Bias";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineDisableInVR";
    readonly displayName: "sDisableInVR";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_TessEdge";
    readonly displayName: "sTessellationEdge";
    readonly type: "Range";
    readonly range: readonly [1, 100];
    readonly defaultValue: 10;
    readonly attributes: readonly [];
}, {
    readonly name: "_TessStrength";
    readonly displayName: "sStrength";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0.5;
    readonly attributes: readonly [];
}, {
    readonly name: "_TessShrink";
    readonly displayName: "sTessellationShrink";
    readonly type: "Range";
    readonly range: readonly [0, 1];
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_TessFactorMax";
    readonly displayName: "sTessellationFactor";
    readonly type: "Range";
    readonly range: readonly [1, 8];
    readonly defaultValue: 3;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_UseOutline";
    readonly displayName: "Use Outline";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggleLeft"];
}, {
    readonly name: "_TransparentMode";
    readonly displayName: "Rendering Mode|Opaque|Cutout|Transparent|Refraction|Fur|FurCutout|Gem";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_UseClippingCanceller";
    readonly displayName: "sSettingClippingCanceller";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_AsOverlay";
    readonly displayName: "sAsOverlay";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_BaseColor";
    readonly displayName: "sColor";
    readonly type: "Color";
    readonly defaultValue: readonly [1, 1, 1, 1];
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_BaseMap";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_BaseColorMap";
    readonly displayName: "Texture";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_lilToonVersion";
    readonly displayName: "Version";
    readonly type: "Int";
    readonly defaultValue: 45;
    readonly attributes: readonly ["HideInInspector"];
}, {
    readonly name: "_Ramp";
    readonly displayName: "Shadow Ramp";
    readonly type: "2D";
    readonly defaultValue: {
        readonly texture: "white";
    };
    readonly attributes: readonly [];
}, {
    readonly name: "_Cull";
    readonly displayName: "sCullModes";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_SrcBlend";
    readonly displayName: "sSrcBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_DstBlend";
    readonly displayName: "sDstBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_SrcBlendAlpha";
    readonly displayName: "sSrcBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_DstBlendAlpha";
    readonly displayName: "sDstBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 10;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_BlendOp";
    readonly displayName: "sBlendOpRGB";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_BlendOpAlpha";
    readonly displayName: "sBlendOpAlpha";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_SrcBlendFA";
    readonly displayName: "sSrcBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_DstBlendFA";
    readonly displayName: "sDstBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_SrcBlendAlphaFA";
    readonly displayName: "sSrcBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_DstBlendAlphaFA";
    readonly displayName: "sDstBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_BlendOpFA";
    readonly displayName: "sBlendOpRGB";
    readonly type: "Int";
    readonly defaultValue: 4;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_BlendOpAlphaFA";
    readonly displayName: "sBlendOpAlpha";
    readonly type: "Int";
    readonly defaultValue: 4;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_ZClip";
    readonly displayName: "sZClip";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ZWrite";
    readonly displayName: "sZWrite";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_ZTest";
    readonly displayName: "sZTest";
    readonly type: "Int";
    readonly defaultValue: 4;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.CompareFunction)"];
}, {
    readonly name: "_StencilRef";
    readonly displayName: "Ref";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 0;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_StencilReadMask";
    readonly displayName: "ReadMask";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 255;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_StencilWriteMask";
    readonly displayName: "WriteMask";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 255;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_StencilComp";
    readonly displayName: "Comp";
    readonly type: "Float";
    readonly defaultValue: 8;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.CompareFunction)"];
}, {
    readonly name: "_StencilPass";
    readonly displayName: "Pass";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_StencilFail";
    readonly displayName: "Fail";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_StencilZFail";
    readonly displayName: "ZFail";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_OffsetFactor";
    readonly displayName: "sOffsetFactor";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_OffsetUnits";
    readonly displayName: "sOffsetUnits";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_ColorMask";
    readonly displayName: "sColorMask";
    readonly type: "Int";
    readonly defaultValue: 15;
    readonly attributes: readonly ["lilColorMask"];
}, {
    readonly name: "_AlphaToMask";
    readonly displayName: "sAlphaToMask";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_lilShadowCasterBias";
    readonly displayName: "Shadow Caster Bias";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineCull";
    readonly displayName: "sCullModes";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilEnum"];
}, {
    readonly name: "_OutlineSrcBlend";
    readonly displayName: "sSrcBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineDstBlend";
    readonly displayName: "sDstBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineSrcBlendAlpha";
    readonly displayName: "sSrcBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineDstBlendAlpha";
    readonly displayName: "sDstBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 10;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineBlendOp";
    readonly displayName: "sBlendOpRGB";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_OutlineBlendOpAlpha";
    readonly displayName: "sBlendOpAlpha";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_OutlineSrcBlendFA";
    readonly displayName: "sSrcBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineDstBlendFA";
    readonly displayName: "sDstBlendRGB";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineSrcBlendAlphaFA";
    readonly displayName: "sSrcBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineDstBlendAlphaFA";
    readonly displayName: "sDstBlendAlpha";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendMode)"];
}, {
    readonly name: "_OutlineBlendOpFA";
    readonly displayName: "sBlendOpRGB";
    readonly type: "Int";
    readonly defaultValue: 4;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_OutlineBlendOpAlphaFA";
    readonly displayName: "sBlendOpAlpha";
    readonly type: "Int";
    readonly defaultValue: 4;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.BlendOp)"];
}, {
    readonly name: "_OutlineZClip";
    readonly displayName: "sZClip";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineZWrite";
    readonly displayName: "sZWrite";
    readonly type: "Int";
    readonly defaultValue: 1;
    readonly attributes: readonly ["lilToggle"];
}, {
    readonly name: "_OutlineZTest";
    readonly displayName: "sZTest";
    readonly type: "Int";
    readonly defaultValue: 2;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.CompareFunction)"];
}, {
    readonly name: "_OutlineStencilRef";
    readonly displayName: "Ref";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 0;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_OutlineStencilReadMask";
    readonly displayName: "ReadMask";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 255;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_OutlineStencilWriteMask";
    readonly displayName: "WriteMask";
    readonly type: "Range";
    readonly range: readonly [0, 255];
    readonly defaultValue: 255;
    readonly attributes: readonly ["IntRange"];
}, {
    readonly name: "_OutlineStencilComp";
    readonly displayName: "Comp";
    readonly type: "Float";
    readonly defaultValue: 8;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.CompareFunction)"];
}, {
    readonly name: "_OutlineStencilPass";
    readonly displayName: "Pass";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_OutlineStencilFail";
    readonly displayName: "Fail";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_OutlineStencilZFail";
    readonly displayName: "ZFail";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly ["Enum(UnityEngine.Rendering.StencilOp)"];
}, {
    readonly name: "_OutlineOffsetFactor";
    readonly displayName: "sOffsetFactor";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineOffsetUnits";
    readonly displayName: "sOffsetUnits";
    readonly type: "Float";
    readonly defaultValue: 0;
    readonly attributes: readonly [];
}, {
    readonly name: "_OutlineColorMask";
    readonly displayName: "sColorMask";
    readonly type: "Int";
    readonly defaultValue: 15;
    readonly attributes: readonly ["lilColorMask"];
}, {
    readonly name: "_OutlineAlphaToMask";
    readonly displayName: "sAlphaToMask";
    readonly type: "Int";
    readonly defaultValue: 0;
    readonly attributes: readonly ["lilToggle"];
}];

declare const LILTOON_DEFAULTS: {
    readonly _DummyProperty: 0;
    readonly _Invisible: 0;
    readonly _AsUnlit: 0;
    readonly _Cutoff: 0.5;
    readonly _SubpassCutoff: 0.5;
    readonly _FlipNormal: 0;
    readonly _ShiftBackfaceUV: 0;
    readonly _BackfaceForceShadow: 0;
    readonly _BackfaceColor: readonly [0, 0, 0, 0];
    readonly _VertexLightStrength: 0;
    readonly _LightMinLimit: 0.05;
    readonly _LightMaxLimit: 1;
    readonly _BeforeExposureLimit: 10000;
    readonly _MonochromeLighting: 0;
    readonly _AlphaBoostFA: 10;
    readonly _lilDirectionalLightStrength: 1;
    readonly _LightDirectionOverride: readonly [0.001, 0.002, 0.001, 0];
    readonly _AAStrength: 1;
    readonly _UseDither: 0;
    readonly _DitherTex: {
        readonly texture: "white";
    };
    readonly _DitherMaxValue: 255;
    readonly _EnvRimBorder: 3;
    readonly _EnvRimBlur: 0.35;
    readonly _Color: readonly [1, 1, 1, 1];
    readonly _MainTex: {
        readonly texture: "white";
    };
    readonly _MainTex_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _MainTexHSVG: readonly [0, 1, 1, 1];
    readonly _MainGradationStrength: 0;
    readonly _MainGradationTex: {
        readonly texture: "white";
    };
    readonly _MainColorAdjustMask: {
        readonly texture: "white";
    };
    readonly _UseMain2ndTex: 0;
    readonly _Color2nd: readonly [1, 1, 1, 1];
    readonly _Main2ndTex: {
        readonly texture: "white";
    };
    readonly _Main2ndTexAngle: 0;
    readonly _Main2ndTex_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Main2ndTex_UVMode: 0;
    readonly _Main2ndTex_Cull: 0;
    readonly _Main2ndTexDecalAnimation: readonly [1, 1, 1, 30];
    readonly _Main2ndTexDecalSubParam: readonly [1, 1, 0, 1];
    readonly _Main2ndTexIsDecal: 0;
    readonly _Main2ndTexIsLeftOnly: 0;
    readonly _Main2ndTexIsRightOnly: 0;
    readonly _Main2ndTexShouldCopy: 0;
    readonly _Main2ndTexShouldFlipMirror: 0;
    readonly _Main2ndTexShouldFlipCopy: 0;
    readonly _Main2ndTexIsMSDF: 0;
    readonly _Main2ndBlendMask: {
        readonly texture: "white";
    };
    readonly _Main2ndTexBlendMode: 0;
    readonly _Main2ndTexAlphaMode: 0;
    readonly _Main2ndEnableLighting: 1;
    readonly _Main2ndDissolveMask: {
        readonly texture: "white";
    };
    readonly _Main2ndDissolveNoiseMask: {
        readonly texture: "gray";
    };
    readonly _Main2ndDissolveNoiseMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Main2ndDissolveNoiseStrength: 0.1;
    readonly _Main2ndDissolveColor: readonly [1, 1, 1, 1];
    readonly _Main2ndDissolveParams: readonly [0, 0, 0.5, 0.1];
    readonly _Main2ndDissolvePos: readonly [0, 0, 0, 0];
    readonly _Main2ndDistanceFade: readonly [0.1, 0.01, 0, 0];
    readonly _UseMain3rdTex: 0;
    readonly _Color3rd: readonly [1, 1, 1, 1];
    readonly _Main3rdTex: {
        readonly texture: "white";
    };
    readonly _Main3rdTexAngle: 0;
    readonly _Main3rdTex_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Main3rdTex_UVMode: 0;
    readonly _Main3rdTex_Cull: 0;
    readonly _Main3rdTexDecalAnimation: readonly [1, 1, 1, 30];
    readonly _Main3rdTexDecalSubParam: readonly [1, 1, 0, 1];
    readonly _Main3rdTexIsDecal: 0;
    readonly _Main3rdTexIsLeftOnly: 0;
    readonly _Main3rdTexIsRightOnly: 0;
    readonly _Main3rdTexShouldCopy: 0;
    readonly _Main3rdTexShouldFlipMirror: 0;
    readonly _Main3rdTexShouldFlipCopy: 0;
    readonly _Main3rdTexIsMSDF: 0;
    readonly _Main3rdBlendMask: {
        readonly texture: "white";
    };
    readonly _Main3rdTexBlendMode: 0;
    readonly _Main3rdTexAlphaMode: 0;
    readonly _Main3rdEnableLighting: 1;
    readonly _Main3rdDissolveMask: {
        readonly texture: "white";
    };
    readonly _Main3rdDissolveNoiseMask: {
        readonly texture: "gray";
    };
    readonly _Main3rdDissolveNoiseMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Main3rdDissolveNoiseStrength: 0.1;
    readonly _Main3rdDissolveColor: readonly [1, 1, 1, 1];
    readonly _Main3rdDissolveParams: readonly [0, 0, 0.5, 0.1];
    readonly _Main3rdDissolvePos: readonly [0, 0, 0, 0];
    readonly _Main3rdDistanceFade: readonly [0.1, 0.01, 0, 0];
    readonly _AlphaMaskMode: 0;
    readonly _AlphaMask: {
        readonly texture: "white";
    };
    readonly _AlphaMaskScale: 1;
    readonly _AlphaMaskValue: 0;
    readonly _UseBumpMap: 0;
    readonly _BumpMap: {
        readonly texture: "bump";
    };
    readonly _BumpScale: 1;
    readonly _UseBump2ndMap: 0;
    readonly _Bump2ndMap: {
        readonly texture: "bump";
    };
    readonly _Bump2ndMap_UVMode: 0;
    readonly _Bump2ndScale: 1;
    readonly _Bump2ndScaleMask: {
        readonly texture: "white";
    };
    readonly _UseAnisotropy: 0;
    readonly _AnisotropyTangentMap: {
        readonly texture: "bump";
    };
    readonly _AnisotropyScale: 1;
    readonly _AnisotropyScaleMask: {
        readonly texture: "white";
    };
    readonly _AnisotropyTangentWidth: 1;
    readonly _AnisotropyBitangentWidth: 1;
    readonly _AnisotropyShift: 0;
    readonly _AnisotropyShiftNoiseScale: 0;
    readonly _AnisotropySpecularStrength: 1;
    readonly _Anisotropy2ndTangentWidth: 1;
    readonly _Anisotropy2ndBitangentWidth: 1;
    readonly _Anisotropy2ndShift: 0;
    readonly _Anisotropy2ndShiftNoiseScale: 0;
    readonly _Anisotropy2ndSpecularStrength: 0;
    readonly _AnisotropyShiftNoiseMask: {
        readonly texture: "white";
    };
    readonly _Anisotropy2Reflection: 0;
    readonly _Anisotropy2MatCap: 0;
    readonly _Anisotropy2MatCap2nd: 0;
    readonly _UseBacklight: 0;
    readonly _BacklightColor: readonly [0.85, 0.8, 0.7, 1];
    readonly _BacklightColorTex: {
        readonly texture: "white";
    };
    readonly _BacklightMainStrength: 0;
    readonly _BacklightNormalStrength: 1;
    readonly _BacklightBorder: 0.35;
    readonly _BacklightBlur: 0.05;
    readonly _BacklightDirectivity: 5;
    readonly _BacklightViewStrength: 1;
    readonly _BacklightReceiveShadow: 1;
    readonly _BacklightBackfaceMask: 1;
    readonly _UseShadow: 0;
    readonly _ShadowStrength: 1;
    readonly _ShadowStrengthMask: {
        readonly texture: "white";
    };
    readonly _ShadowStrengthMaskLOD: 0;
    readonly _ShadowBorderMask: {
        readonly texture: "white";
    };
    readonly _ShadowBorderMaskLOD: 0;
    readonly _ShadowBlurMask: {
        readonly texture: "white";
    };
    readonly _ShadowBlurMaskLOD: 0;
    readonly _ShadowAOShift: readonly [1, 0, 1, 0];
    readonly _ShadowAOShift2: readonly [1, 0, 1, 0];
    readonly _ShadowPostAO: 0;
    readonly _ShadowColorType: 0;
    readonly _ShadowColor: readonly [0.82, 0.76, 0.85, 1];
    readonly _ShadowColorTex: {
        readonly texture: "black";
    };
    readonly _ShadowNormalStrength: 1;
    readonly _ShadowBorder: 0.5;
    readonly _ShadowBlur: 0.1;
    readonly _ShadowReceive: 0;
    readonly _Shadow2ndColor: readonly [0.68, 0.66, 0.79, 1];
    readonly _Shadow2ndColorTex: {
        readonly texture: "black";
    };
    readonly _Shadow2ndNormalStrength: 1;
    readonly _Shadow2ndBorder: 0.15;
    readonly _Shadow2ndBlur: 0.1;
    readonly _Shadow2ndReceive: 0;
    readonly _Shadow3rdColor: readonly [0, 0, 0, 0];
    readonly _Shadow3rdColorTex: {
        readonly texture: "black";
    };
    readonly _Shadow3rdNormalStrength: 1;
    readonly _Shadow3rdBorder: 0.25;
    readonly _Shadow3rdBlur: 0.1;
    readonly _Shadow3rdReceive: 0;
    readonly _ShadowBorderColor: readonly [1, 0.1, 0, 1];
    readonly _ShadowBorderRange: 0.08;
    readonly _ShadowMainStrength: 0;
    readonly _ShadowEnvStrength: 0;
    readonly _ShadowMaskType: 0;
    readonly _ShadowFlatBorder: 1;
    readonly _ShadowFlatBlur: 1;
    readonly _UseRimShade: 0;
    readonly _RimShadeColor: readonly [0.5, 0.5, 0.5, 1];
    readonly _RimShadeMask: {
        readonly texture: "white";
    };
    readonly _RimShadeNormalStrength: 1;
    readonly _RimShadeBorder: 0.5;
    readonly _RimShadeBlur: 1;
    readonly _RimShadeFresnelPower: 1;
    readonly _UseReflection: 0;
    readonly _Smoothness: 1;
    readonly _SmoothnessTex: {
        readonly texture: "white";
    };
    readonly _Metallic: 0;
    readonly _MetallicGlossMap: {
        readonly texture: "white";
    };
    readonly _Reflectance: 0.0030959752321981426;
    readonly _GSAAStrength: 0;
    readonly _ApplySpecular: 1;
    readonly _ApplySpecularFA: 1;
    readonly _SpecularToon: 1;
    readonly _SpecularNormalStrength: 1;
    readonly _SpecularBorder: 0.5;
    readonly _SpecularBlur: 0;
    readonly _ApplyReflection: 0;
    readonly _ReflectionNormalStrength: 1;
    readonly _ReflectionColor: readonly [1, 1, 1, 1];
    readonly _ReflectionColorTex: {
        readonly texture: "white";
    };
    readonly _ReflectionApplyTransparency: 1;
    readonly _ReflectionCubeTex: {
        readonly texture: "black";
    };
    readonly _ReflectionCubeColor: readonly [0, 0, 0, 1];
    readonly _ReflectionCubeOverride: 0;
    readonly _ReflectionCubeEnableLighting: 1;
    readonly _ReflectionBlendMode: 1;
    readonly _UseMatCap: 0;
    readonly _MatCapColor: readonly [1, 1, 1, 1];
    readonly _MatCapTex: {
        readonly texture: "white";
    };
    readonly _MatCapMainStrength: 0;
    readonly _MatCapBlendUV1: readonly [0, 0, 0, 0];
    readonly _MatCapZRotCancel: 1;
    readonly _MatCapPerspective: 1;
    readonly _MatCapVRParallaxStrength: 1;
    readonly _MatCapBlend: 1;
    readonly _MatCapBlendMask: {
        readonly texture: "white";
    };
    readonly _MatCapEnableLighting: 1;
    readonly _MatCapShadowMask: 0;
    readonly _MatCapBackfaceMask: 0;
    readonly _MatCapLod: 0;
    readonly _MatCapBlendMode: 1;
    readonly _MatCapApplyTransparency: 1;
    readonly _MatCapNormalStrength: 1;
    readonly _MatCapCustomNormal: 0;
    readonly _MatCapBumpMap: {
        readonly texture: "bump";
    };
    readonly _MatCapBumpScale: 1;
    readonly _UseMatCap2nd: 0;
    readonly _MatCap2ndColor: readonly [1, 1, 1, 1];
    readonly _MatCap2ndTex: {
        readonly texture: "white";
    };
    readonly _MatCap2ndMainStrength: 0;
    readonly _MatCap2ndBlendUV1: readonly [0, 0, 0, 0];
    readonly _MatCap2ndZRotCancel: 1;
    readonly _MatCap2ndPerspective: 1;
    readonly _MatCap2ndVRParallaxStrength: 1;
    readonly _MatCap2ndBlend: 1;
    readonly _MatCap2ndBlendMask: {
        readonly texture: "white";
    };
    readonly _MatCap2ndEnableLighting: 1;
    readonly _MatCap2ndShadowMask: 0;
    readonly _MatCap2ndBackfaceMask: 0;
    readonly _MatCap2ndLod: 0;
    readonly _MatCap2ndBlendMode: 1;
    readonly _MatCap2ndApplyTransparency: 1;
    readonly _MatCap2ndNormalStrength: 1;
    readonly _MatCap2ndCustomNormal: 0;
    readonly _MatCap2ndBumpMap: {
        readonly texture: "bump";
    };
    readonly _MatCap2ndBumpScale: 1;
    readonly _UseRim: 0;
    readonly _RimColor: readonly [0.66, 0.5, 0.48, 1];
    readonly _RimColorTex: {
        readonly texture: "white";
    };
    readonly _RimMainStrength: 0;
    readonly _RimNormalStrength: 1;
    readonly _RimBorder: 0.5;
    readonly _RimBlur: 0.65;
    readonly _RimFresnelPower: 3.5;
    readonly _RimEnableLighting: 1;
    readonly _RimShadowMask: 0.5;
    readonly _RimBackfaceMask: 1;
    readonly _RimVRParallaxStrength: 1;
    readonly _RimApplyTransparency: 1;
    readonly _RimDirStrength: 0;
    readonly _RimDirRange: 0;
    readonly _RimIndirRange: 0;
    readonly _RimIndirColor: readonly [1, 1, 1, 1];
    readonly _RimIndirBorder: 0.5;
    readonly _RimIndirBlur: 0.1;
    readonly _RimBlendMode: 1;
    readonly _UseGlitter: 0;
    readonly _GlitterUVMode: 0;
    readonly _GlitterColor: readonly [1, 1, 1, 1];
    readonly _GlitterColorTex: {
        readonly texture: "white";
    };
    readonly _GlitterColorTex_UVMode: 0;
    readonly _GlitterMainStrength: 0;
    readonly _GlitterNormalStrength: 1;
    readonly _GlitterScaleRandomize: 0;
    readonly _GlitterApplyShape: 0;
    readonly _GlitterShapeTex: {
        readonly texture: "white";
    };
    readonly _GlitterAtras: readonly [1, 1, 0, 0];
    readonly _GlitterAngleRandomize: 0;
    readonly _GlitterParams1: readonly [256, 256, 0.16, 50];
    readonly _GlitterParams2: readonly [0.25, 0, 0, 0];
    readonly _GlitterPostContrast: 1;
    readonly _GlitterSensitivity: 0.25;
    readonly _GlitterEnableLighting: 1;
    readonly _GlitterShadowMask: 0;
    readonly _GlitterBackfaceMask: 0;
    readonly _GlitterApplyTransparency: 1;
    readonly _GlitterVRParallaxStrength: 0;
    readonly _UseEmission: 0;
    readonly _EmissionColor: readonly [1, 1, 1, 1];
    readonly _EmissionMap: {
        readonly texture: "white";
    };
    readonly _EmissionMap_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _EmissionMap_UVMode: 0;
    readonly _EmissionMainStrength: 0;
    readonly _EmissionBlend: 1;
    readonly _EmissionBlendMask: {
        readonly texture: "white";
    };
    readonly _EmissionBlendMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _EmissionBlendMode: 1;
    readonly _EmissionBlink: readonly [0, 0, 3.141593, 0];
    readonly _EmissionUseGrad: 0;
    readonly _EmissionGradTex: {
        readonly texture: "white";
    };
    readonly _EmissionGradSpeed: 1;
    readonly _EmissionParallaxDepth: 0;
    readonly _EmissionFluorescence: 0;
    readonly _egci: 2;
    readonly _egai: 2;
    readonly _egc0: readonly [1, 1, 1, 0];
    readonly _egc1: readonly [1, 1, 1, 1];
    readonly _egc2: readonly [1, 1, 1, 0];
    readonly _egc3: readonly [1, 1, 1, 0];
    readonly _egc4: readonly [1, 1, 1, 0];
    readonly _egc5: readonly [1, 1, 1, 0];
    readonly _egc6: readonly [1, 1, 1, 0];
    readonly _egc7: readonly [1, 1, 1, 0];
    readonly _ega0: readonly [1, 0, 0, 0];
    readonly _ega1: readonly [1, 0, 0, 1];
    readonly _ega2: readonly [1, 0, 0, 0];
    readonly _ega3: readonly [1, 0, 0, 0];
    readonly _ega4: readonly [1, 0, 0, 0];
    readonly _ega5: readonly [1, 0, 0, 0];
    readonly _ega6: readonly [1, 0, 0, 0];
    readonly _ega7: readonly [1, 0, 0, 0];
    readonly _UseEmission2nd: 0;
    readonly _Emission2ndColor: readonly [1, 1, 1, 1];
    readonly _Emission2ndMap: {
        readonly texture: "white";
    };
    readonly _Emission2ndMap_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Emission2ndMap_UVMode: 0;
    readonly _Emission2ndMainStrength: 0;
    readonly _Emission2ndBlend: 1;
    readonly _Emission2ndBlendMask: {
        readonly texture: "white";
    };
    readonly _Emission2ndBlendMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _Emission2ndBlendMode: 1;
    readonly _Emission2ndBlink: readonly [0, 0, 3.141593, 0];
    readonly _Emission2ndUseGrad: 0;
    readonly _Emission2ndGradTex: {
        readonly texture: "white";
    };
    readonly _Emission2ndGradSpeed: 1;
    readonly _Emission2ndParallaxDepth: 0;
    readonly _Emission2ndFluorescence: 0;
    readonly _e2gci: 2;
    readonly _e2gai: 2;
    readonly _e2gc0: readonly [1, 1, 1, 0];
    readonly _e2gc1: readonly [1, 1, 1, 1];
    readonly _e2gc2: readonly [1, 1, 1, 0];
    readonly _e2gc3: readonly [1, 1, 1, 0];
    readonly _e2gc4: readonly [1, 1, 1, 0];
    readonly _e2gc5: readonly [1, 1, 1, 0];
    readonly _e2gc6: readonly [1, 1, 1, 0];
    readonly _e2gc7: readonly [1, 1, 1, 0];
    readonly _e2ga0: readonly [1, 0, 0, 0];
    readonly _e2ga1: readonly [1, 0, 0, 1];
    readonly _e2ga2: readonly [1, 0, 0, 0];
    readonly _e2ga3: readonly [1, 0, 0, 0];
    readonly _e2ga4: readonly [1, 0, 0, 0];
    readonly _e2ga5: readonly [1, 0, 0, 0];
    readonly _e2ga6: readonly [1, 0, 0, 0];
    readonly _e2ga7: readonly [1, 0, 0, 0];
    readonly _UseParallax: 0;
    readonly _UsePOM: 0;
    readonly _ParallaxMap: {
        readonly texture: "gray";
    };
    readonly _Parallax: 0.02;
    readonly _ParallaxOffset: 0.5;
    readonly _DistanceFadeColor: readonly [0, 0, 0, 1];
    readonly _DistanceFade: readonly [0.1, 0.01, 0, 0];
    readonly _DistanceFadeMode: 0;
    readonly _DistanceFadeRimColor: readonly [0, 0, 0, 0];
    readonly _DistanceFadeRimFresnelPower: 5;
    readonly _UseAudioLink: 0;
    readonly _AudioLinkDefaultValue: readonly [0, 0, 2, 0.75];
    readonly _AudioLinkUVMode: 1;
    readonly _AudioLinkUVParams: readonly [0.25, 0, 0, 0.125];
    readonly _AudioLinkStart: readonly [0, 0, 0, 0];
    readonly _AudioLinkMask: {
        readonly texture: "blue";
    };
    readonly _AudioLinkMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _AudioLinkMask_UVMode: 0;
    readonly _AudioLink2Main2nd: 0;
    readonly _AudioLink2Main3rd: 0;
    readonly _AudioLink2Emission: 0;
    readonly _AudioLink2EmissionGrad: 0;
    readonly _AudioLink2Emission2nd: 0;
    readonly _AudioLink2Emission2ndGrad: 0;
    readonly _AudioLink2Vertex: 0;
    readonly _AudioLinkVertexUVMode: 1;
    readonly _AudioLinkVertexUVParams: readonly [0.25, 0, 0, 0.125];
    readonly _AudioLinkVertexStart: readonly [0, 0, 0, 0];
    readonly _AudioLinkVertexStrength: readonly [0, 0, 0, 1];
    readonly _AudioLinkAsLocal: 0;
    readonly _AudioLinkLocalMap: {
        readonly texture: "black";
    };
    readonly _AudioLinkLocalMapParams: readonly [120, 1, 0, 0];
    readonly _DissolveMask: {
        readonly texture: "white";
    };
    readonly _DissolveNoiseMask: {
        readonly texture: "gray";
    };
    readonly _DissolveNoiseMask_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _DissolveNoiseStrength: 0.1;
    readonly _DissolveColor: readonly [1, 1, 1, 1];
    readonly _DissolveParams: readonly [0, 0, 0.5, 0.1];
    readonly _DissolvePos: readonly [0, 0, 0, 0];
    readonly _IDMaskCompile: 0;
    readonly _IDMaskFrom: 8;
    readonly _IDMask1: 0;
    readonly _IDMask2: 0;
    readonly _IDMask3: 0;
    readonly _IDMask4: 0;
    readonly _IDMask5: 0;
    readonly _IDMask6: 0;
    readonly _IDMask7: 0;
    readonly _IDMask8: 0;
    readonly _IDMaskIsBitmap: 0;
    readonly _IDMaskIndex1: 0;
    readonly _IDMaskIndex2: 0;
    readonly _IDMaskIndex3: 0;
    readonly _IDMaskIndex4: 0;
    readonly _IDMaskIndex5: 0;
    readonly _IDMaskIndex6: 0;
    readonly _IDMaskIndex7: 0;
    readonly _IDMaskIndex8: 0;
    readonly _IDMaskControlsDissolve: 0;
    readonly _IDMaskPrior1: 0;
    readonly _IDMaskPrior2: 0;
    readonly _IDMaskPrior3: 0;
    readonly _IDMaskPrior4: 0;
    readonly _IDMaskPrior5: 0;
    readonly _IDMaskPrior6: 0;
    readonly _IDMaskPrior7: 0;
    readonly _IDMaskPrior8: 0;
    readonly _UDIMDiscardCompile: 0;
    readonly _UDIMDiscardUV: 0;
    readonly _UDIMDiscardMode: 0;
    readonly _UDIMDiscardRow3_3: 0;
    readonly _UDIMDiscardRow3_2: 0;
    readonly _UDIMDiscardRow3_1: 0;
    readonly _UDIMDiscardRow3_0: 0;
    readonly _UDIMDiscardRow2_3: 0;
    readonly _UDIMDiscardRow2_2: 0;
    readonly _UDIMDiscardRow2_1: 0;
    readonly _UDIMDiscardRow2_0: 0;
    readonly _UDIMDiscardRow1_3: 0;
    readonly _UDIMDiscardRow1_2: 0;
    readonly _UDIMDiscardRow1_1: 0;
    readonly _UDIMDiscardRow1_0: 0;
    readonly _UDIMDiscardRow0_3: 0;
    readonly _UDIMDiscardRow0_2: 0;
    readonly _UDIMDiscardRow0_1: 0;
    readonly _UDIMDiscardRow0_0: 0;
    readonly _OutlineColor: readonly [0.6, 0.56, 0.73, 1];
    readonly _OutlineTex: {
        readonly texture: "white";
    };
    readonly _OutlineTex_ScrollRotate: readonly [0, 0, 0, 0];
    readonly _OutlineTexHSVG: readonly [0, 1, 1, 1];
    readonly _OutlineLitColor: readonly [1, 0.2, 0, 0];
    readonly _OutlineLitApplyTex: 0;
    readonly _OutlineLitScale: 10;
    readonly _OutlineLitOffset: -8;
    readonly _OutlineLitShadowReceive: 0;
    readonly _OutlineWidth: 0.08;
    readonly _OutlineWidthMask: {
        readonly texture: "white";
    };
    readonly _OutlineFixWidth: 0.5;
    readonly _OutlineVertexR2Width: 0;
    readonly _OutlineDeleteMesh: 0;
    readonly _OutlineVectorTex: {
        readonly texture: "bump";
    };
    readonly _OutlineVectorUVMode: 0;
    readonly _OutlineVectorScale: 1;
    readonly _OutlineEnableLighting: 1;
    readonly _OutlineZBias: 0;
    readonly _OutlineDisableInVR: 0;
    readonly _TessEdge: 10;
    readonly _TessStrength: 0.5;
    readonly _TessShrink: 0;
    readonly _TessFactorMax: 3;
    readonly _UseOutline: 0;
    readonly _TransparentMode: 0;
    readonly _UseClippingCanceller: 0;
    readonly _AsOverlay: 0;
    readonly _BaseColor: readonly [1, 1, 1, 1];
    readonly _BaseMap: {
        readonly texture: "white";
    };
    readonly _BaseColorMap: {
        readonly texture: "white";
    };
    readonly _lilToonVersion: 45;
    readonly _Ramp: {
        readonly texture: "white";
    };
    readonly _Cull: 2;
    readonly _SrcBlend: 1;
    readonly _DstBlend: 0;
    readonly _SrcBlendAlpha: 1;
    readonly _DstBlendAlpha: 10;
    readonly _BlendOp: 0;
    readonly _BlendOpAlpha: 0;
    readonly _SrcBlendFA: 1;
    readonly _DstBlendFA: 1;
    readonly _SrcBlendAlphaFA: 0;
    readonly _DstBlendAlphaFA: 1;
    readonly _BlendOpFA: 4;
    readonly _BlendOpAlphaFA: 4;
    readonly _ZClip: 1;
    readonly _ZWrite: 1;
    readonly _ZTest: 4;
    readonly _StencilRef: 0;
    readonly _StencilReadMask: 255;
    readonly _StencilWriteMask: 255;
    readonly _StencilComp: 8;
    readonly _StencilPass: 0;
    readonly _StencilFail: 0;
    readonly _StencilZFail: 0;
    readonly _OffsetFactor: 0;
    readonly _OffsetUnits: 0;
    readonly _ColorMask: 15;
    readonly _AlphaToMask: 0;
    readonly _lilShadowCasterBias: 0;
    readonly _OutlineCull: 1;
    readonly _OutlineSrcBlend: 1;
    readonly _OutlineDstBlend: 0;
    readonly _OutlineSrcBlendAlpha: 1;
    readonly _OutlineDstBlendAlpha: 10;
    readonly _OutlineBlendOp: 0;
    readonly _OutlineBlendOpAlpha: 0;
    readonly _OutlineSrcBlendFA: 1;
    readonly _OutlineDstBlendFA: 1;
    readonly _OutlineSrcBlendAlphaFA: 0;
    readonly _OutlineDstBlendAlphaFA: 1;
    readonly _OutlineBlendOpFA: 4;
    readonly _OutlineBlendOpAlphaFA: 4;
    readonly _OutlineZClip: 1;
    readonly _OutlineZWrite: 1;
    readonly _OutlineZTest: 2;
    readonly _OutlineStencilRef: 0;
    readonly _OutlineStencilReadMask: 255;
    readonly _OutlineStencilWriteMask: 255;
    readonly _OutlineStencilComp: 8;
    readonly _OutlineStencilPass: 0;
    readonly _OutlineStencilFail: 0;
    readonly _OutlineStencilZFail: 0;
    readonly _OutlineOffsetFactor: 0;
    readonly _OutlineOffsetUnits: 0;
    readonly _OutlineColorMask: 15;
    readonly _OutlineAlphaToMask: 0;
};

declare const LILTOON_RENDER_RECIPES: {
    readonly opaque: {
        readonly source: "ltspass_opaque.shader";
        readonly passes: {
            readonly forward: {
                readonly name: "FORWARD";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: {
                        readonly property: "_ZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_ZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOp";
                    }, {
                        readonly property: "_BlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlend";
                    }, {
                        readonly property: "_DstBlend";
                    }, {
                        readonly property: "_SrcBlendAlpha";
                    }, {
                        readonly property: "_DstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_outline: {
                readonly name: "FORWARD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: {
                        readonly property: "_OutlineZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_OutlineZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOp";
                    }, {
                        readonly property: "_OutlineBlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlend";
                    }, {
                        readonly property: "_OutlineDstBlend";
                    }, {
                        readonly property: "_OutlineSrcBlendAlpha";
                    }, {
                        readonly property: "_OutlineDstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add: {
                readonly name: "FORWARD_ADD";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlendFA";
                    }, {
                        readonly property: "_DstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOpFA";
                    }, {
                        readonly property: "_BlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add_outline: {
                readonly name: "FORWARD_ADD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlendFA";
                    }, {
                        readonly property: "_OutlineDstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOpFA";
                    }, {
                        readonly property: "_OutlineBlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly shadow_caster: {
                readonly name: "SHADOW_CASTER";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly shadow_caster_outline: {
                readonly name: "SHADOW_CASTER_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly meta: {
                readonly name: "META";
                readonly tags: {
                    readonly LightMode: "Meta";
                };
                readonly renderState: {
                    readonly cull: false;
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_META"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "shader_feature EDITOR_VISUALIZATION"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_meta.hlsl"];
            };
        };
    };
    readonly cutout: {
        readonly source: "ltspass_cutout.shader";
        readonly passes: {
            readonly forward: {
                readonly name: "FORWARD";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: {
                        readonly property: "_ZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_ZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOp";
                    }, {
                        readonly property: "_BlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlend";
                    }, {
                        readonly property: "_DstBlend";
                    }, {
                        readonly property: "_SrcBlendAlpha";
                    }, {
                        readonly property: "_DstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_outline: {
                readonly name: "FORWARD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: {
                        readonly property: "_OutlineZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_OutlineZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOp";
                    }, {
                        readonly property: "_OutlineBlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlend";
                    }, {
                        readonly property: "_OutlineDstBlend";
                    }, {
                        readonly property: "_OutlineSrcBlendAlpha";
                    }, {
                        readonly property: "_OutlineDstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add: {
                readonly name: "FORWARD_ADD";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlendFA";
                    }, {
                        readonly property: "_DstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOpFA";
                    }, {
                        readonly property: "_BlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add_outline: {
                readonly name: "FORWARD_ADD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlendFA";
                    }, {
                        readonly property: "_OutlineDstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOpFA";
                    }, {
                        readonly property: "_OutlineBlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly shadow_caster: {
                readonly name: "SHADOW_CASTER";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly shadow_caster_outline: {
                readonly name: "SHADOW_CASTER_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly meta: {
                readonly name: "META";
                readonly tags: {
                    readonly LightMode: "Meta";
                };
                readonly renderState: {
                    readonly cull: false;
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_META"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "shader_feature EDITOR_VISUALIZATION"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_meta.hlsl"];
            };
        };
    };
    readonly transparent: {
        readonly source: "ltspass_transparent.shader";
        readonly passes: {
            readonly forward_back: {
                readonly name: "FORWARD_BACK";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_PreCull";
                    };
                    readonly zWrite: {
                        readonly property: "_PreZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_PreZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_PreColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_PreOffsetFactor";
                    }, {
                        readonly property: "_PreOffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_PreBlendOp";
                    }, {
                        readonly property: "_PreBlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_PreSrcBlend";
                    }, {
                        readonly property: "_PreDstBlend";
                    }, {
                        readonly property: "_PreSrcBlendAlpha";
                    }, {
                        readonly property: "_PreDstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_PreAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_PreStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_PreStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_PreStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_PreStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_PreStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_PreStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_PreStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD", "LIL_TRANSPARENT_PRE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward: {
                readonly name: "FORWARD";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: {
                        readonly property: "_ZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_ZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOp";
                    }, {
                        readonly property: "_BlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlend";
                    }, {
                        readonly property: "_DstBlend";
                    }, {
                        readonly property: "_SrcBlendAlpha";
                    }, {
                        readonly property: "_DstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_outline: {
                readonly name: "FORWARD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardBase";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: {
                        readonly property: "_OutlineZWrite";
                    };
                    readonly zTest: {
                        readonly property: "_OutlineZTest";
                    };
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOp";
                    }, {
                        readonly property: "_OutlineBlendOpAlpha";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlend";
                    }, {
                        readonly property: "_OutlineDstBlend";
                    }, {
                        readonly property: "_OutlineSrcBlendAlpha";
                    }, {
                        readonly property: "_OutlineDstBlendAlpha";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fwdbase", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add: {
                readonly name: "FORWARD_ADD";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_ColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OffsetFactor";
                    }, {
                        readonly property: "_OffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_SrcBlendFA";
                    }, {
                        readonly property: "_DstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_BlendOpFA";
                    }, {
                        readonly property: "_BlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_AlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly forward_add_outline: {
                readonly name: "FORWARD_ADD_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ForwardAdd";
                };
                readonly renderState: {
                    readonly cull: {
                        readonly property: "_OutlineCull";
                    };
                    readonly zWrite: false;
                    readonly zTest: "LEqual";
                    readonly colorMask: {
                        readonly property: "_OutlineColorMask";
                    };
                    readonly offset: readonly [{
                        readonly property: "_OutlineOffsetFactor";
                    }, {
                        readonly property: "_OutlineOffsetUnits";
                    }];
                    readonly blend: readonly [{
                        readonly property: "_OutlineSrcBlendFA";
                    }, {
                        readonly property: "_OutlineDstBlendFA";
                    }, "Zero", "One"];
                    readonly blendOp: readonly [{
                        readonly property: "_OutlineBlendOpFA";
                    }, {
                        readonly property: "_OutlineBlendOpAlphaFA";
                    }];
                    readonly alphaToMask: {
                        readonly property: "_OutlineAlphaToMask";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_OutlineStencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_OutlineStencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_OutlineStencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_OutlineStencilComp";
                        };
                        readonly pass: {
                            readonly property: "_OutlineStencilPass";
                        };
                        readonly fail: {
                            readonly property: "_OutlineStencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_OutlineStencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_FORWARDADD", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE", "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_forward.hlsl"];
            };
            readonly shadow_caster: {
                readonly name: "SHADOW_CASTER";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly shadow_caster_outline: {
                readonly name: "SHADOW_CASTER_OUTLINE";
                readonly tags: {
                    readonly LightMode: "ShadowCaster";
                };
                readonly renderState: {
                    readonly offset: readonly [1, 1];
                    readonly cull: {
                        readonly property: "_Cull";
                    };
                    readonly stencil: {
                        readonly ref: {
                            readonly property: "_StencilRef";
                        };
                        readonly readMask: {
                            readonly property: "_StencilReadMask";
                        };
                        readonly writeMask: {
                            readonly property: "_StencilWriteMask";
                        };
                        readonly comp: {
                            readonly property: "_StencilComp";
                        };
                        readonly pass: {
                            readonly property: "_StencilPass";
                        };
                        readonly fail: {
                            readonly property: "_StencilFail";
                        };
                        readonly zFail: {
                            readonly property: "_StencilZFail";
                        };
                    };
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_SHADOWCASTER", "LIL_OUTLINE"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "multi_compile_shadowcaster", "multi_compile_instancing"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_shadowcaster.hlsl"];
            };
            readonly meta: {
                readonly name: "META";
                readonly tags: {
                    readonly LightMode: "Meta";
                };
                readonly renderState: {
                    readonly cull: false;
                };
                readonly defines: readonly ["LIL_RENDER", "LIL_FEATURE_ANIMATE_MAIN_UV", "LIL_FEATURE_MAIN_TONE_CORRECTION", "LIL_FEATURE_MAIN_GRADATION_MAP", "LIL_FEATURE_MAIN2ND", "LIL_FEATURE_MAIN3RD", "LIL_FEATURE_DECAL", "LIL_FEATURE_ANIMATE_DECAL", "LIL_FEATURE_LAYER_DISSOLVE", "LIL_FEATURE_ALPHAMASK", "LIL_FEATURE_SHADOW", "LIL_FEATURE_RECEIVE_SHADOW", "LIL_FEATURE_SHADOW_3RD", "LIL_FEATURE_SHADOW_LUT", "LIL_FEATURE_RIMSHADE", "LIL_FEATURE_EMISSION_1ST", "LIL_FEATURE_EMISSION_2ND", "LIL_FEATURE_ANIMATE_EMISSION_UV", "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV", "LIL_FEATURE_EMISSION_GRADATION", "LIL_FEATURE_NORMAL_1ST", "LIL_FEATURE_NORMAL_2ND", "LIL_FEATURE_ANISOTROPY", "LIL_FEATURE_REFLECTION", "LIL_FEATURE_MATCAP", "LIL_FEATURE_MATCAP_2ND", "LIL_FEATURE_RIMLIGHT", "LIL_FEATURE_RIMLIGHT_DIRECTION", "LIL_FEATURE_GLITTER", "LIL_FEATURE_BACKLIGHT", "LIL_FEATURE_PARALLAX", "LIL_FEATURE_POM", "LIL_FEATURE_DISTANCE_FADE", "LIL_FEATURE_AUDIOLINK", "LIL_FEATURE_AUDIOLINK_VERTEX", "LIL_FEATURE_AUDIOLINK_LOCAL", "LIL_FEATURE_DISSOLVE", "LIL_FEATURE_DITHER", "LIL_FEATURE_IDMASK", "LIL_FEATURE_UDIMDISCARD", "LIL_FEATURE_OUTLINE_TONE_CORRECTION", "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW", "LIL_FEATURE_ANIMATE_OUTLINE_UV", "LIL_FEATURE_FUR_COLLISION", "LIL_FEATURE_MainGradationTex", "LIL_FEATURE_MainColorAdjustMask", "LIL_FEATURE_Main2ndTex", "LIL_FEATURE_Main2ndBlendMask", "LIL_FEATURE_Main2ndDissolveMask", "LIL_FEATURE_Main2ndDissolveNoiseMask", "LIL_FEATURE_Main3rdTex", "LIL_FEATURE_Main3rdBlendMask", "LIL_FEATURE_Main3rdDissolveMask", "LIL_FEATURE_Main3rdDissolveNoiseMask", "LIL_FEATURE_AlphaMask", "LIL_FEATURE_BumpMap", "LIL_FEATURE_Bump2ndMap", "LIL_FEATURE_Bump2ndScaleMask", "LIL_FEATURE_AnisotropyTangentMap", "LIL_FEATURE_AnisotropyScaleMask", "LIL_FEATURE_AnisotropyShiftNoiseMask", "LIL_FEATURE_ShadowBorderMask", "LIL_FEATURE_ShadowBlurMask", "LIL_FEATURE_ShadowStrengthMask", "LIL_FEATURE_ShadowColorTex", "LIL_FEATURE_Shadow2ndColorTex", "LIL_FEATURE_Shadow3rdColorTex", "LIL_FEATURE_RimShadeMask", "LIL_FEATURE_BacklightColorTex", "LIL_FEATURE_SmoothnessTex", "LIL_FEATURE_MetallicGlossMap", "LIL_FEATURE_ReflectionColorTex", "LIL_FEATURE_ReflectionCubeTex", "LIL_FEATURE_MatCapTex", "LIL_FEATURE_MatCapBlendMask", "LIL_FEATURE_MatCapBumpMap", "LIL_FEATURE_MatCap2ndTex", "LIL_FEATURE_MatCap2ndBlendMask", "LIL_FEATURE_MatCap2ndBumpMap", "LIL_FEATURE_RimColorTex", "LIL_FEATURE_GlitterColorTex", "LIL_FEATURE_GlitterShapeTex", "LIL_FEATURE_EmissionMap", "LIL_FEATURE_EmissionBlendMask", "LIL_FEATURE_EmissionGradTex", "LIL_FEATURE_Emission2ndMap", "LIL_FEATURE_Emission2ndBlendMask", "LIL_FEATURE_Emission2ndGradTex", "LIL_FEATURE_ParallaxMap", "LIL_FEATURE_AudioLinkMask", "LIL_FEATURE_AudioLinkLocalMap", "LIL_FEATURE_DissolveMask", "LIL_FEATURE_DissolveNoiseMask", "LIL_FEATURE_OutlineTex", "LIL_FEATURE_OutlineWidthMask", "LIL_FEATURE_OutlineVectorTex", "LIL_FEATURE_FurNoiseMask", "LIL_FEATURE_FurMask", "LIL_FEATURE_FurLengthMask", "LIL_FEATURE_FurVectorTex", "LIL_OPTIMIZE_APPLY_SHADOW_FA", "LIL_OPTIMIZE_USE_FORWARDADD", "LIL_OPTIMIZE_USE_VERTEXLIGHT", "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE", "LIL_PASS_META"];
                readonly pragmas: readonly ["skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE", "target 3.5", "fragmentoption ARB_precision_hint_fastest", "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3", "skip_variants _ADDITIONAL_LIGHT_SHADOWS", "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2", "skip_variants _SCREEN_SPACE_OCCLUSION", "vertex vert", "fragment frag", "shader_feature EDITOR_VISUALIZATION"];
                readonly includes: readonly ["Includes/lil_pipeline_brp.hlsl", "Includes/lil_common.hlsl", "Includes/lil_pass_meta.hlsl"];
            };
        };
    };
};

declare const LILTOON_UPSTREAM_COMMIT = "72fc09625b24c9a750591c286e9192512a5177a1";
declare const LILTOON_UPSTREAM_VERSION = "2.1.1";
declare const THREE_VERSION_RANGE = ">=0.180.0 <0.190.0";

export { FurPass, GemPass, LILTOON_DEFAULTS, LILTOON_PROPERTIES, LILTOON_RENDER_RECIPES, LILTOON_UPSTREAM_COMMIT, LILTOON_UPSTREAM_VERSION, LilToonEnvironmentAdapter, LilToonLightAdapter, LilToonMaterial, LilToonMaterialFactory, LilToonShadowAdapter, RefractionPass, SerializedLilToonMaterial, THREE_VERSION_RANGE, UnsupportedFeatureError, enableLilToon };
