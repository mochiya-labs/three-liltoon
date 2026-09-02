#version 300 es
precision mediump float;
precision highp int;

vec3 _333;
vec3 _339;

struct type_Globals
{
    highp mat4 uModelMatrix;
    highp mat4 uModelMatrixInverse;
    highp mat4 uViewMatrix;
    highp mat4 uProjectionMatrix;
    highp mat4 uViewProjectionMatrix;
    highp vec4 uCameraPosition;
    highp vec4 uScreenParams;
    highp vec4 uProjectionParams;
    highp vec4 uOrthoParams;
    highp vec4 uWorldTransformParams;
    highp vec4 uTime;
    highp vec4 uMainLightColor;
    highp vec4 uMainLightDirection;
    highp vec4 uAmbientColor;
    highp vec4 unity_SHAr;
    highp vec4 unity_SHAg;
    highp vec4 unity_SHAb;
    highp vec4 unity_SHBr;
    highp vec4 unity_SHBg;
    highp vec4 unity_SHBb;
    highp vec4 unity_SHC;
    highp vec4 unity_4LightPosX0;
    highp vec4 unity_4LightPosY0;
    highp vec4 unity_4LightPosZ0;
    highp vec4 unity_4LightAtten0;
    highp vec4 unity_LightColor[4];
    highp vec4 unity_SpecCube0_HDR;
    highp vec4 unity_SpecCube1_HDR;
    highp vec4 unity_SpecCube0_BoxMin;
    highp vec4 unity_SpecCube0_BoxMax;
    highp vec4 unity_SpecCube0_ProbePosition;
    highp vec4 unity_SpecCube1_BoxMin;
    highp vec4 unity_SpecCube1_BoxMax;
    highp vec4 unity_SpecCube1_ProbePosition;
    highp mat4 uMainShadowMatrix;
    highp vec4 uShadowMapSize;
    highp float uShadowBias;
    highp float uShadowNormalBias;
    highp vec4 unity_LightShadowBias;
    highp vec4 unity_FogColor;
    highp mat4 uBindMatrix;
    highp mat4 uBindMatrixInverse;
    highp vec4 uBoneTextureSize;
    uint uSkinningEnabled;
    highp vec4 uMorphTargetsTextureSize;
    highp float uMorphTargetInfluences[64];
    uint uMorphTargetCount;
    uint uMorphVertexDataStride;
    uint uMorphHasPositions;
    uint uMorphHasNormals;
    uint uMorphTargetsRelative;
    highp float uMorphTargetBaseInfluence;
    highp vec4 _lilBackgroundTexture_TexelSize;
    highp vec4 _LightDirectionOverride;
    highp vec4 _BackfaceColor;
    highp vec4 _PreColor;
    highp vec4 _Color;
    highp vec4 _MainTex_ST;
    highp vec4 _MainTex_ScrollRotate;
    highp vec4 _MainTexHSVG;
    highp vec4 _Color2nd;
    highp vec4 _Main2ndTex_ST;
    highp vec4 _Main2ndTex_ScrollRotate;
    highp vec4 _Main2ndDistanceFade;
    highp vec4 _Main2ndTexDecalAnimation;
    highp vec4 _Main2ndTexDecalSubParam;
    highp vec4 _Color3rd;
    highp vec4 _Main3rdTex_ST;
    highp vec4 _Main3rdTex_ScrollRotate;
    highp vec4 _Main3rdDistanceFade;
    highp vec4 _Main3rdTexDecalAnimation;
    highp vec4 _Main3rdTexDecalSubParam;
    highp vec4 _ShadowColor;
    highp vec4 _Shadow2ndColor;
    highp vec4 _Shadow3rdColor;
    highp vec4 _ShadowBorderColor;
    highp vec4 _ShadowAOShift;
    highp vec4 _ShadowAOShift2;
    highp vec4 _RimShadeColor;
    highp vec4 _BacklightColor;
    highp vec4 _BacklightColorTex_ST;
    highp vec4 _EmissionColor;
    highp vec4 _EmissionBlink;
    highp vec4 _EmissionMap_ST;
    highp vec4 _EmissionMap_ScrollRotate;
    highp vec4 _EmissionBlendMask_ST;
    highp vec4 _Emission2ndColor;
    highp vec4 _Emission2ndBlink;
    highp vec4 _Emission2ndMap_ST;
    highp vec4 _Emission2ndMap_ScrollRotate;
    highp vec4 _Emission2ndBlendMask_ST;
    highp vec4 _BumpMap_ST;
    highp vec4 _Bump2ndMap_ST;
    highp vec4 _Bump2ndScaleMask_ST;
    highp vec4 _ReflectionColor;
    highp vec4 _MetallicGlossMap_ST;
    highp vec4 _ReflectionColorTex_ST;
    highp vec4 _SmoothnessTex_ST;
    highp vec4 _ReflectionCubeColor;
    highp vec4 _ReflectionCubeTex_HDR;
    highp vec4 _MatCapColor;
    highp vec4 _MatCapTex_ST;
    highp vec4 _MatCapBlendMask_ST;
    highp vec4 _MatCapBlendUV1;
    highp vec4 _MatCap2ndColor;
    highp vec4 _MatCap2ndTex_ST;
    highp vec4 _MatCap2ndBlendMask_ST;
    highp vec4 _MatCap2ndBlendUV1;
    highp vec4 _RimColor;
    highp vec4 _RimColorTex_ST;
    highp vec4 _RimIndirColor;
    highp vec4 _DistanceFade;
    highp vec4 _DistanceFadeColor;
    highp vec4 _DistanceFadeRimColor;
    highp vec4 _DissolveMask_ST;
    highp vec4 _DissolveColor;
    highp vec4 _DissolveParams;
    highp vec4 _DissolvePos;
    highp vec4 _DissolveNoiseMask_ST;
    highp vec4 _DissolveNoiseMask_ScrollRotate;
    highp vec4 _OutlineColor;
    highp vec4 _OutlineLitColor;
    highp vec4 _OutlineTex_ST;
    highp float _AsUnlit;
    highp float _Cutoff;
    highp float _PreCutoff;
    highp float _SubpassCutoff;
    highp float _FlipNormal;
    highp float _ShiftBackfaceUV;
    highp float _VertexLightStrength;
    highp float _LightMinLimit;
    highp float _LightMaxLimit;
    highp float _MonochromeLighting;
    highp float _AAStrength;
    highp float _EnvRimBorder;
    highp float _EnvRimBlur;
    highp float _AlphaBoostFA;
    highp float _Main2ndTexAngle;
    highp float _Main2ndEnableLighting;
    highp float _Main3rdTexAngle;
    highp float _Main3rdEnableLighting;
    highp vec4 _AlphaMask_ST;
    highp float _AlphaMaskScale;
    highp float _AlphaMaskValue;
    highp float _BackfaceForceShadow;
    highp float _ShadowStrength;
    highp float _ShadowNormalStrength;
    highp float _ShadowBorder;
    highp float _ShadowBlur;
    highp float _ShadowStrengthMaskLOD;
    highp float _ShadowBorderMaskLOD;
    highp float _ShadowBlurMaskLOD;
    highp float _Shadow2ndNormalStrength;
    highp float _Shadow2ndBorder;
    highp float _Shadow2ndBlur;
    highp float _Shadow3rdNormalStrength;
    highp float _Shadow3rdBorder;
    highp float _Shadow3rdBlur;
    highp float _ShadowMainStrength;
    highp float _ShadowEnvStrength;
    highp float _ShadowBorderRange;
    highp float _ShadowReceive;
    highp float _Shadow2ndReceive;
    highp float _Shadow3rdReceive;
    highp float _ShadowFlatBlur;
    highp float _ShadowFlatBorder;
    highp float _RimShadeNormalStrength;
    highp float _RimShadeBorder;
    highp float _RimShadeBlur;
    highp float _RimShadeFresnelPower;
    highp float _BacklightNormalStrength;
    highp float _BacklightBorder;
    highp float _BacklightBlur;
    highp float _BacklightDirectivity;
    highp float _BacklightViewStrength;
    highp float _BacklightBackfaceMask;
    highp float _BacklightMainStrength;
    highp float _BumpScale;
    highp float _Bump2ndScale;
    highp float _Reflectance;
    highp float _SpecularNormalStrength;
    highp float _SpecularBorder;
    highp float _SpecularBlur;
    highp float _ReflectionNormalStrength;
    highp float _ReflectionCubeEnableLighting;
    highp float _Smoothness;
    highp float _Metallic;
    highp float _GSAAStrength;
    highp float _MatCapBlend;
    highp float _MatCapEnableLighting;
    highp float _MatCapShadowMask;
    highp float _MatCapVRParallaxStrength;
    highp float _MatCapBackfaceMask;
    highp float _MatCapLod;
    highp float _MatCapNormalStrength;
    highp float _MatCapMainStrength;
    highp float _MatCap2ndBlend;
    highp float _MatCap2ndEnableLighting;
    highp float _MatCap2ndShadowMask;
    highp float _MatCap2ndVRParallaxStrength;
    highp float _MatCap2ndBackfaceMask;
    highp float _MatCap2ndLod;
    highp float _MatCap2ndNormalStrength;
    highp float _MatCap2ndMainStrength;
    highp float _RimNormalStrength;
    highp float _RimBorder;
    highp float _RimBlur;
    highp float _RimFresnelPower;
    highp float _RimEnableLighting;
    highp float _RimShadowMask;
    highp float _RimVRParallaxStrength;
    highp float _RimBackfaceMask;
    highp float _RimMainStrength;
    highp float _RimDirStrength;
    highp float _RimDirRange;
    highp float _RimIndirRange;
    highp float _RimIndirBorder;
    highp float _RimIndirBlur;
    highp float _DistanceFadeRimFresnelPower;
    highp float _EmissionBlend;
    highp float _EmissionParallaxDepth;
    highp float _EmissionFluorescence;
    highp float _EmissionMainStrength;
    highp float _Emission2ndBlend;
    highp float _Emission2ndParallaxDepth;
    highp float _Emission2ndFluorescence;
    highp float _Emission2ndMainStrength;
    highp float _DissolveNoiseStrength;
    highp float _lilShadowCasterBias;
    highp float _OutlineLitScale;
    highp float _OutlineLitOffset;
    highp float _OutlineWidth;
    highp float _OutlineEnableLighting;
    highp float _OutlineVectorScale;
    highp float _OutlineFixWidth;
    highp float _OutlineZBias;
    uint _Cull;
    uint _OutlineCull;
    uint _PreOutType;
    uint _Main2ndTexBlendMode;
    uint _Main2ndTexAlphaMode;
    uint _Main2ndTex_UVMode;
    uint _Main2ndTex_Cull;
    uint _Main3rdTexBlendMode;
    uint _Main3rdTexAlphaMode;
    uint _Main3rdTex_UVMode;
    uint _Main3rdTex_Cull;
    uint _AlphaMaskMode;
    uint _ShadowColorType;
    uint _ShadowMaskType;
    uint _Bump2ndMap_UVMode;
    uint _ReflectionBlendMode;
    uint _MatCapBlendMode;
    uint _MatCap2ndBlendMode;
    uint _RimBlendMode;
    uint _EmissionMap_UVMode;
    uint _EmissionBlendMode;
    uint _Emission2ndMap_UVMode;
    uint _Emission2ndBlendMode;
    uint _DistanceFadeMode;
    uint _OutlineVertexR2Width;
    uint _OutlineVectorUVMode;
    uint _Invisible;
    uint _UseMain2ndTex;
    uint _Main2ndTexIsMSDF;
    uint _Main2ndTexIsDecal;
    uint _Main2ndTexIsLeftOnly;
    uint _Main2ndTexIsRightOnly;
    uint _Main2ndTexShouldCopy;
    uint _Main2ndTexShouldFlipMirror;
    uint _Main2ndTexShouldFlipCopy;
    uint _UseMain3rdTex;
    uint _Main3rdTexIsMSDF;
    uint _Main3rdTexIsDecal;
    uint _Main3rdTexIsLeftOnly;
    uint _Main3rdTexIsRightOnly;
    uint _Main3rdTexShouldCopy;
    uint _Main3rdTexShouldFlipMirror;
    uint _Main3rdTexShouldFlipCopy;
    uint _UseShadow;
    uint _ShadowPostAO;
    uint _UseRimShade;
    uint _UseBacklight;
    uint _BacklightReceiveShadow;
    uint _UseBumpMap;
    uint _UseBump2ndMap;
    uint _UseReflection;
    uint _ApplySpecular;
    uint _ApplySpecularFA;
    uint _ApplyReflection;
    uint _SpecularToon;
    uint _ReflectionApplyTransparency;
    uint _ReflectionCubeOverride;
    uint _UseMatCap;
    uint _MatCapApplyTransparency;
    uint _MatCapPerspective;
    uint _MatCapZRotCancel;
    uint _UseMatCap2nd;
    uint _MatCap2ndApplyTransparency;
    uint _MatCap2ndPerspective;
    uint _MatCap2ndZRotCancel;
    uint _UseRim;
    uint _RimApplyTransparency;
    uint _UseEmission;
    uint _UseEmission2nd;
    uint _OutlineLitApplyTex;
    uint _OutlineLitShadowReceive;
    uint _OutlineDeleteMesh;
    uint _OutlineDisableInVR;
    uint _UdonForceSceneLighting;
};

uniform type_Globals _Globals;

uniform highp sampler2D SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap;
uniform highp sampler2D SPIRV_Cross_Combined_MainTexsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_BumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp sampler2D SPIRV_Cross_Combined_AlphaMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_DissolveMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;

in highp vec4 out_var_TEXCOORD0;
in highp vec4 out_var_TEXCOORD1;
in highp vec4 out_var_TEXCOORD2;
in highp vec3 out_var_TEXCOORD3;
in highp vec3 out_var_TEXCOORD4;
in highp vec4 out_var_TEXCOORD5;
in highp vec3 out_var_TEXCOORD6;
in highp vec3 out_var_TEXCOORD7;
in highp vec3 out_var_TEXCOORD8;
in highp float out_var_TEXCOORD9;
in highp vec4 out_var_TEXCOORD10;
layout(location = 0) out highp vec4 out_var_SV_Target;

highp mat4 spvWorkaroundRowMajor(highp mat4 wrap) { return wrap; }
mediump mat4 spvWorkaroundRowMajorMP(mediump mat4 wrap) { return wrap; }

void main()
{
    highp vec3 _359 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _366 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _382 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _391 = float(gl_FrontFacing ? 1 : (-1));
    highp float _442;
    do
    {
        highp vec3 _398 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _399 = _398.xy;
        highp float _405 = _398.z;
        if ((any(lessThan(_399, vec2(0.0))) || any(greaterThan(_399, vec2(1.0)))) || (_405 > 1.0))
        {
            _442 = 1.0;
            break;
        }
        highp float _415 = _405 + _Globals.uShadowBias;
        _442 = (((step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _443 = normalize(out_var_TEXCOORD7);
    highp vec3 _447 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _451 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _452 = length(_451);
    highp vec3 _459 = normalize(_451);
    highp mat3 _468 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _469 = _459 * _468;
    bvec2 _479 = bvec2(_391 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _480 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _493 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _494 = sin(_493);
    highp float _495 = cos(_493);
    highp vec2 _496 = (vec2(_479.x ? _480.x : out_var_TEXCOORD0.xy.x, _479.y ? _480.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _497 = _496.x;
    highp float _498 = _496.y;
    highp vec2 _509 = (vec2(_497 * _495 + (-(_498 * _494)), _497 * _494 + (_498 * _495)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _513 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _509);
    highp vec3 _520 = pow(abs(_513.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _521 = _520.z;
    highp float _522 = _520.y;
    bvec4 _524 = bvec4(_521 > _522);
    highp vec4 _525 = vec4(_521, _522, -1.0, 0.666666686534881591796875);
    highp vec4 _526 = vec4(_522, _521, 0.0, -0.3333333432674407958984375);
    highp vec4 _527 = vec4(_524.x ? _525.x : _526.x, _524.y ? _525.y : _526.y, _524.z ? _525.z : _526.z, _524.w ? _525.w : _526.w);
    highp float _528 = _527.x;
    highp float _529 = _520.x;
    bvec4 _531 = bvec4(_528 > _529);
    highp vec4 _534 = vec4(_528, _527.yw, _529);
    highp vec4 _536 = vec4(_529, _527.yz, _528);
    highp vec4 _537 = vec4(_531.x ? _534.x : _536.x, _531.y ? _534.y : _536.y, _531.z ? _534.z : _536.z, _531.w ? _534.w : _536.w);
    highp float _542 = _537.x - (isnan(_537.y) ? _537.w : (isnan(_537.w) ? _537.y : min(_537.w, _537.y)));
    highp float _555 = clamp((_542 / (_537.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _558 = clamp(_537.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _572 = vec3((-_558) * _555 + _558) + (clamp(abs((fract(vec3(abs(_537.z + ((_537.w - _537.y) / (6.0 * _542 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_558 * _555));
    highp vec4 _576 = vec4(_572.x, _572.y, _572.z, _513.w) * _Globals._Color;
    highp vec3 _608;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _589 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _509 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _589.w = _589.w * _589.x;
        highp vec2 _600 = ((_589.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _601 = vec3(_600.x, _600.y, _339.z);
        highp vec2 _602 = _600.xy;
        _601.z = sqrt(1.0 - clamp(dot(_602, _602), 0.0, 1.0));
        _608 = _601;
    }
    else
    {
        _608 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _657;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _617 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _618 = vec2(_617.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _617.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _620 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _621 = vec2(_620.x ? out_var_TEXCOORD1.xy.x : _618.x, _620.y ? out_var_TEXCOORD1.xy.y : _618.y);
        bvec2 _623 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _633 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_623.x ? out_var_TEXCOORD1.zw.x : _621.x, _623.y ? out_var_TEXCOORD1.zw.y : _621.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _633.w = _633.w * _633.x;
        highp vec2 _645 = (((_633.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _657 = vec3(_608.xy + _645, _608.z * sqrt(1.0 - clamp(dot(_645, _645), 0.0, 1.0)));
    }
    else
    {
        _657 = _608;
    }
    highp vec3 _659 = normalize(_468 * _657);
    bvec3 _664 = bvec3(_391 < (_Globals._FlipNormal - 1.0));
    highp vec3 _665 = -_659;
    highp vec3 _666 = vec3(_664.x ? _665.x : _659.x, _664.y ? _665.y : _659.y, _664.z ? _665.z : _659.z);
    highp float _667 = dot(_666, _459);
    highp float _668 = clamp(_667, 0.0, 1.0);
    highp vec2 _670 = vec2(abs(_667));
    highp vec3 _671 = normalize(out_var_TEXCOORD4);
    highp vec2 _675 = ((_666 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _366, _359)).xy * 0.5) + vec2(0.5);
    bool _676 = out_var_TEXCOORD5.w > 0.0;
    bool _681 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _959;
    highp vec4 _960;
    if (_681)
    {
        bvec2 _687 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _688 = vec2(_687.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _687.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _690 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _691 = vec2(_690.x ? out_var_TEXCOORD1.xy.x : _688.x, _690.y ? out_var_TEXCOORD1.xy.y : _688.y);
        bvec2 _693 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _694 = vec2(_693.x ? out_var_TEXCOORD1.zw.x : _691.x, _693.y ? out_var_TEXCOORD1.zw.y : _691.y);
        bvec2 _696 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _697 = vec2(_696.x ? _675.x : _694.x, _696.y ? _675.y : _694.y);
        highp vec4 _736 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _737 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _745;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _744 = _697;
            _744.x = abs(_697.x - 0.5) + 0.5;
            _745 = _744;
        }
        else
        {
            _745 = _697;
        }
        highp vec2 _746 = _736.xy;
        highp vec2 _747 = _736.zw;
        highp vec2 _748 = _745 * _746 + _747;
        highp vec2 _757;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_697.x < 0.5))
        {
            highp vec2 _756 = _748;
            _756.x = 1.0 - _748.x;
            _757 = _756;
        }
        else
        {
            _757 = _748;
        }
        highp vec2 _764;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _676)
        {
            highp vec2 _763 = _757;
            _763.x = 1.0 - _757.x;
            _764 = _763;
        }
        else
        {
            _764 = _757;
        }
        highp vec2 _769;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _676)
        {
            highp vec2 _768 = _764;
            _768.x = -1.0;
            _769 = _768;
        }
        else
        {
            _769 = _764;
        }
        highp vec2 _775;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_676))
        {
            highp vec2 _774 = _769;
            _774.x = -1.0;
            _775 = _774;
        }
        else
        {
            _775 = _769;
        }
        highp float _778 = sin(_737);
        highp float _779 = cos(_737);
        highp vec2 _780 = ((_775 - _747) / _746) - vec2(0.5);
        highp float _781 = _780.x;
        highp float _782 = _780.y;
        highp vec2 _790 = (vec2(_781 * _779 + (-(_782 * _778)), _781 * _778 + (_782 * _779)) + vec2(0.5)) * _746 + _747;
        uint _794 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _798 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _794 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _794);
        highp float _799 = _790.x;
        highp float _800 = _790.y;
        uint _807 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _817 = ((mix(vec2(_799, 1.0 - _800), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_798 % _807), float(_798 / _807))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _817.y = 1.0 - _817.y;
        highp vec4 _822 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _817);
        highp vec4 _838;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _825 = _822.x;
            highp float _826 = _822.y;
            highp float _827 = _822.z;
            highp float _828 = isnan(_826) ? _825 : (isnan(_825) ? _826 : min(_825, _826));
            highp float _829 = isnan(_826) ? _825 : (isnan(_825) ? _826 : max(_825, _826));
            highp float _830 = isnan(_827) ? _829 : (isnan(_829) ? _827 : min(_829, _827));
            highp float _831 = isnan(_830) ? _828 : (isnan(_828) ? _830 : max(_828, _830));
            _838 = vec4(1.0, 1.0, 1.0, clamp((_831 - 0.5) / clamp(fwidth(_831), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _838 = _822;
        }
        highp vec4 _861;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _842 = clamp(_668 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _845 = 0.5 - abs(_799 - 0.5);
            highp float _852 = 0.5 - abs(_800 - 0.5);
            highp vec4 _860 = _838;
            _860.w = _838.w * (clamp(_845 / clamp(fwidth(_845), 9.9999997473787516355514526367188e-05, _842), 0.0, 1.0) * clamp(_852 / clamp(fwidth(_852), 9.9999997473787516355514526367188e-05, _842), 0.0, 1.0));
            _861 = _860;
        }
        else
        {
            _861 = _838;
        }
        highp vec4 _862 = _Globals._Color2nd * _861;
        highp float _863 = _862.w;
        _862.w = mix(_863, _863 * clamp((_452 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _889;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_391 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_391 < 0.0)))
        {
            highp vec4 _888 = _862;
            _888.w = 0.0;
            _889 = _888;
        }
        else
        {
            _889 = _862;
        }
        highp vec4 _928;
        highp vec4 _929;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _900;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _899 = _576;
                _899.w = _889.w;
                _900 = _899;
            }
            else
            {
                _900 = _576;
            }
            highp vec4 _908;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _907 = _900;
                _907.w = _900.w * _889.w;
                _908 = _907;
            }
            else
            {
                _908 = _900;
            }
            highp vec4 _917;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _916 = _908;
                _916.w = clamp(_908.w + _889.w, 0.0, 1.0);
                _917 = _916;
            }
            else
            {
                _917 = _908;
            }
            highp vec4 _926;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _925 = _917;
                _925.w = clamp(_917.w - _889.w, 0.0, 1.0);
                _926 = _925;
            }
            else
            {
                _926 = _917;
            }
            highp vec4 _927 = _889;
            _927.w = 1.0;
            _928 = _927;
            _929 = _926;
        }
        else
        {
            _928 = _889;
            _929 = _576;
        }
        highp vec3 _939 = _929.xyz + _928.xyz;
        highp vec3 _940 = _929.xyz * _928.xyz;
        bvec3 _942 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _943 = vec3(_942.x ? _928.xyz.x : _333.x, _942.y ? _928.xyz.y : _333.y, _942.z ? _928.xyz.z : _333.z);
        bvec3 _945 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _953;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _951 = (-_929.xyz) * _928.xyz + _939;
            bvec3 _2761 = isnan(_951);
            bvec3 _2762 = isnan(_929.xyz);
            highp vec3 _2763 = max(_951, _929.xyz);
            highp vec3 _2764 = vec3(_2761.x ? _929.xyz.x : _2763.x, _2761.y ? _929.xyz.y : _2763.y, _2761.z ? _929.xyz.z : _2763.z);
            _953 = vec3(_2762.x ? _951.x : _2764.x, _2762.y ? _951.y : _2764.y, _2762.z ? _951.z : _2764.z);
        }
        else
        {
            _953 = vec3(_945.x ? _939.x : _943.x, _945.y ? _939.y : _943.y, _945.z ? _939.z : _943.z);
        }
        bvec3 _955 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _957 = mix(_929.xyz, vec3(_955.x ? _940.x : _953.x, _955.y ? _940.y : _953.y, _955.z ? _940.z : _953.z), vec3(_928.w * _Globals._Main2ndEnableLighting));
        _959 = _928;
        _960 = vec4(_957.x, _957.y, _957.z, _929.w);
    }
    else
    {
        _959 = _Globals._Color2nd;
        _960 = _576;
    }
    bool _965 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1243;
    highp vec4 _1244;
    if (_965)
    {
        bvec2 _971 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _972 = vec2(_971.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _971.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _974 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _975 = vec2(_974.x ? out_var_TEXCOORD1.xy.x : _972.x, _974.y ? out_var_TEXCOORD1.xy.y : _972.y);
        bvec2 _977 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _978 = vec2(_977.x ? out_var_TEXCOORD1.zw.x : _975.x, _977.y ? out_var_TEXCOORD1.zw.y : _975.y);
        bvec2 _980 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _981 = vec2(_980.x ? _675.x : _978.x, _980.y ? _675.y : _978.y);
        highp vec4 _1020 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1021 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1029;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1028 = _981;
            _1028.x = abs(_981.x - 0.5) + 0.5;
            _1029 = _1028;
        }
        else
        {
            _1029 = _981;
        }
        highp vec2 _1030 = _1020.xy;
        highp vec2 _1031 = _1020.zw;
        highp vec2 _1032 = _1029 * _1030 + _1031;
        highp vec2 _1041;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_981.x < 0.5))
        {
            highp vec2 _1040 = _1032;
            _1040.x = 1.0 - _1032.x;
            _1041 = _1040;
        }
        else
        {
            _1041 = _1032;
        }
        highp vec2 _1048;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _676)
        {
            highp vec2 _1047 = _1041;
            _1047.x = 1.0 - _1041.x;
            _1048 = _1047;
        }
        else
        {
            _1048 = _1041;
        }
        highp vec2 _1053;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _676)
        {
            highp vec2 _1052 = _1048;
            _1052.x = -1.0;
            _1053 = _1052;
        }
        else
        {
            _1053 = _1048;
        }
        highp vec2 _1059;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_676))
        {
            highp vec2 _1058 = _1053;
            _1058.x = -1.0;
            _1059 = _1058;
        }
        else
        {
            _1059 = _1053;
        }
        highp float _1062 = sin(_1021);
        highp float _1063 = cos(_1021);
        highp vec2 _1064 = ((_1059 - _1031) / _1030) - vec2(0.5);
        highp float _1065 = _1064.x;
        highp float _1066 = _1064.y;
        highp vec2 _1074 = (vec2(_1065 * _1063 + (-(_1066 * _1062)), _1065 * _1062 + (_1066 * _1063)) + vec2(0.5)) * _1030 + _1031;
        uint _1078 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1082 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1078 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1078);
        highp float _1083 = _1074.x;
        highp float _1084 = _1074.y;
        uint _1091 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1101 = ((mix(vec2(_1083, 1.0 - _1084), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1082 % _1091), float(_1082 / _1091))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1101.y = 1.0 - _1101.y;
        highp vec4 _1106 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1101);
        highp vec4 _1122;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1109 = _1106.x;
            highp float _1110 = _1106.y;
            highp float _1111 = _1106.z;
            highp float _1112 = isnan(_1110) ? _1109 : (isnan(_1109) ? _1110 : min(_1109, _1110));
            highp float _1113 = isnan(_1110) ? _1109 : (isnan(_1109) ? _1110 : max(_1109, _1110));
            highp float _1114 = isnan(_1111) ? _1113 : (isnan(_1113) ? _1111 : min(_1113, _1111));
            highp float _1115 = isnan(_1114) ? _1112 : (isnan(_1112) ? _1114 : max(_1112, _1114));
            _1122 = vec4(1.0, 1.0, 1.0, clamp((_1115 - 0.5) / clamp(fwidth(_1115), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1122 = _1106;
        }
        highp vec4 _1145;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1126 = clamp(_668 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1129 = 0.5 - abs(_1083 - 0.5);
            highp float _1136 = 0.5 - abs(_1084 - 0.5);
            highp vec4 _1144 = _1122;
            _1144.w = _1122.w * (clamp(_1129 / clamp(fwidth(_1129), 9.9999997473787516355514526367188e-05, _1126), 0.0, 1.0) * clamp(_1136 / clamp(fwidth(_1136), 9.9999997473787516355514526367188e-05, _1126), 0.0, 1.0));
            _1145 = _1144;
        }
        else
        {
            _1145 = _1122;
        }
        highp vec4 _1146 = _Globals._Color3rd * _1145;
        highp float _1147 = _1146.w;
        _1146.w = mix(_1147, _1147 * clamp((_452 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1173;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_391 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_391 < 0.0)))
        {
            highp vec4 _1172 = _1146;
            _1172.w = 0.0;
            _1173 = _1172;
        }
        else
        {
            _1173 = _1146;
        }
        highp vec4 _1212;
        highp vec4 _1213;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1184;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1183 = _960;
                _1183.w = _1173.w;
                _1184 = _1183;
            }
            else
            {
                _1184 = _960;
            }
            highp vec4 _1192;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1191 = _1184;
                _1191.w = _1184.w * _1173.w;
                _1192 = _1191;
            }
            else
            {
                _1192 = _1184;
            }
            highp vec4 _1201;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1200 = _1192;
                _1200.w = clamp(_1192.w + _1173.w, 0.0, 1.0);
                _1201 = _1200;
            }
            else
            {
                _1201 = _1192;
            }
            highp vec4 _1210;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1209 = _1201;
                _1209.w = clamp(_1201.w - _1173.w, 0.0, 1.0);
                _1210 = _1209;
            }
            else
            {
                _1210 = _1201;
            }
            highp vec4 _1211 = _1173;
            _1211.w = 1.0;
            _1212 = _1211;
            _1213 = _1210;
        }
        else
        {
            _1212 = _1173;
            _1213 = _960;
        }
        highp vec3 _1223 = _1213.xyz + _1212.xyz;
        highp vec3 _1224 = _1213.xyz * _1212.xyz;
        bvec3 _1226 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1227 = vec3(_1226.x ? _1212.xyz.x : _333.x, _1226.y ? _1212.xyz.y : _333.y, _1226.z ? _1212.xyz.z : _333.z);
        bvec3 _1229 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1237;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1235 = (-_1213.xyz) * _1212.xyz + _1223;
            bvec3 _2786 = isnan(_1235);
            bvec3 _2787 = isnan(_1213.xyz);
            highp vec3 _2788 = max(_1235, _1213.xyz);
            highp vec3 _2789 = vec3(_2786.x ? _1213.xyz.x : _2788.x, _2786.y ? _1213.xyz.y : _2788.y, _2786.z ? _1213.xyz.z : _2788.z);
            _1237 = vec3(_2787.x ? _1235.x : _2789.x, _2787.y ? _1235.y : _2789.y, _2787.z ? _1235.z : _2789.z);
        }
        else
        {
            _1237 = vec3(_1229.x ? _1223.x : _1227.x, _1229.y ? _1223.y : _1227.y, _1229.z ? _1223.z : _1227.z);
        }
        bvec3 _1239 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1241 = mix(_1213.xyz, vec3(_1239.x ? _1224.x : _1237.x, _1239.y ? _1224.y : _1237.y, _1239.z ? _1224.z : _1237.z), vec3(_1212.w * _Globals._Main3rdEnableLighting));
        _1243 = _1212;
        _1244 = vec4(_1241.x, _1241.y, _1241.z, _1213.w);
    }
    else
    {
        _1243 = _Globals._Color3rd;
        _1244 = _960;
    }
    highp vec4 _1293;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1257 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _509 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1264 = clamp(_1257.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1269;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1268 = _1244;
            _1268.w = _1264;
            _1269 = _1268;
        }
        else
        {
            _1269 = _1244;
        }
        highp vec4 _1276;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1275 = _1269;
            _1275.w = _1269.w * _1264;
            _1276 = _1275;
        }
        else
        {
            _1276 = _1269;
        }
        highp vec4 _1284;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1283 = _1276;
            _1283.w = clamp(_1276.w + _1264, 0.0, 1.0);
            _1284 = _1283;
        }
        else
        {
            _1284 = _1276;
        }
        highp vec4 _1292;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1291 = _1284;
            _1291.w = clamp(_1284.w - _1264, 0.0, 1.0);
            _1292 = _1291;
        }
        else
        {
            _1292 = _1284;
        }
        _1293 = _1292;
    }
    else
    {
        _1293 = _1244;
    }
    highp vec4 _1414;
    highp float _1415;
    if ((_382 & 1) != 0)
    {
        highp vec4 _1297 = _1293;
        _1297.w = 1.0;
        highp vec2 _1313 = roundEven(_Globals._DissolveParams.xy);
        highp float _1314 = _1313.x;
        highp vec4 _1403;
        highp float _1404;
        if (_1314 != 0.0)
        {
            bool _1318 = _1314 == 1.0;
            highp float _1328;
            if (_1318 && true)
            {
                _1328 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1328 = 1.0;
            }
            highp vec4 _1337 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1339 = _1337.x - 0.5;
            highp float _1352;
            highp float _1353;
            if (_1318)
            {
                highp float _1342 = _1339 * _Globals._DissolveNoiseStrength + _1328;
                _1352 = 1.0 - clamp(abs(_1342 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1353 = float(_1342 > _Globals._DissolveParams.z);
            }
            else
            {
                _1352 = 0.0;
                _1353 = _1328;
            }
            highp float _1376;
            highp float _1377;
            if (_1314 == 2.0)
            {
                highp float _1365 = (_1313.y == 1.0) ? (_1339 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1339 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1376 = 1.0 - clamp(abs(_1365 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1377 = _1353 * float(_1365 > _Globals._DissolveParams.z);
            }
            else
            {
                _1376 = _1352;
                _1377 = _1353;
            }
            highp float _1400;
            highp float _1401;
            if (_1314 == 3.0)
            {
                highp float _1389 = (_1313.y == 1.0) ? (_1339 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1339 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1400 = 1.0 - clamp(abs(_1389 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1401 = _1377 * float(_1389 > _Globals._DissolveParams.z);
            }
            else
            {
                _1400 = _1376;
                _1401 = _1377;
            }
            highp vec4 _1402 = _1297;
            _1402.w = _1401;
            _1403 = _1402;
            _1404 = _1400;
        }
        else
        {
            _1403 = _1297;
            _1404 = 0.0;
        }
        highp vec4 _1410;
        if ((_382 & 2) != 0)
        {
            highp vec4 _1409 = _1403;
            _1409.w = 1.0 - _1403.w;
            _1410 = _1409;
        }
        else
        {
            _1410 = _1403;
        }
        highp vec4 _1413 = _1410;
        _1413.w = _1410.w * _1293.w;
        _1414 = _1413;
        _1415 = _1404;
    }
    else
    {
        _1414 = _1293;
        _1415 = 0.0;
    }
    if ((_1414.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1596;
    highp float _1597;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1446 = clamp(dot(_443, mix(_671, _666, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1449 = clamp(dot(_443, mix(_671, _666, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1452 = clamp(dot(_443, mix(_671, _666, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1456 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1459 = clamp(_442 + distance(_443, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1462 = mix(1.0, _1459, _Globals._ShadowReceive);
        highp float _1463 = _1446 * _1462;
        highp float _1466 = mix(1.0, _1459, _Globals._Shadow2ndReceive);
        highp float _1470 = mix(1.0, _1459, _Globals._Shadow3rdReceive);
        highp float _1481 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1482 = clamp(_1481, 0.0, 1.0);
        highp float _1484 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1497 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1511 = clamp(_1481 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1524 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1539 = (_391 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1540 = clamp((_1446 * _1462 + (-_1482)) / clamp(fwidth(_1463) * _1456 + (_1484 - _1482), 0.0, 1.0), 0.0, 1.0) * _1539;
        highp vec3 _1572 = mix(mix(_1414.xyz * _Globals._ShadowColor.xyz, (_1414.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1449 * _1466 + (-_1497)) / clamp(fwidth(_1449 * _1466) * _1456 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1497), 0.0, 1.0), 0.0, 1.0) * _1539)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1414.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1452 * _1470 + (-_1524)) / clamp(fwidth(_1452 * _1470) * _1456 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1524), 0.0, 1.0), 0.0, 1.0) * _1539)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1578 = _1414.xyz * out_var_TEXCOORD6;
        highp vec3 _1584 = mix(mix(_1572, _1572 * _1414.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1414.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2791 = isnan(_1584);
        bvec3 _2792 = isnan(_1578);
        highp vec3 _2793 = min(_1584, _1578);
        highp vec3 _2794 = vec3(_2791.x ? _1578.x : _2793.x, _2791.y ? _1578.y : _2793.y, _2791.z ? _1578.z : _2793.z);
        highp vec3 _1592 = mix(mix(vec3(_2792.x ? _1584.x : _2794.x, _2792.y ? _1584.y : _2794.y, _2792.z ? _1584.z : _2794.z), _1578, _Globals._ShadowBorderColor.xyz * (clamp((_1446 * _1462 + (-_1511)) / clamp(fwidth(_1463) * _1456 + (_1484 - _1511), 0.0, 1.0), 0.0, 1.0) * _1539)), _1578, vec3(mix(1.0, _1540, _Globals._ShadowStrength)));
        _1596 = vec4(_1592.x, _1592.y, _1592.z, _1414.w);
        _1597 = _1540;
    }
    else
    {
        highp vec3 _1594 = _1414.xyz * out_var_TEXCOORD6;
        _1596 = vec4(_1594.x, _1594.y, _1594.z, _1414.w);
        _1597 = 1.0;
    }
    highp vec3 _1600 = vec3(_Globals._LightMaxLimit);
    bvec3 _2796 = isnan(out_var_TEXCOORD6);
    bvec3 _2797 = isnan(_1600);
    highp vec3 _2798 = min(out_var_TEXCOORD6, _1600);
    highp vec3 _2799 = vec3(_2796.x ? _1600.x : _2798.x, _2796.y ? _1600.y : _2798.y, _2796.z ? _1600.z : _2798.z);
    highp vec3 _1601 = vec3(_2797.x ? out_var_TEXCOORD6.x : _2799.x, _2797.y ? out_var_TEXCOORD6.y : _2799.y, _2797.z ? out_var_TEXCOORD6.z : _2799.z);
    highp float _1602 = clamp(_1597, 0.0, 1.0);
    highp vec3 _1604 = _1414.xyz * _Globals._LightMaxLimit;
    bvec3 _2801 = isnan(_1596.xyz);
    bvec3 _2802 = isnan(_1604);
    highp vec3 _2803 = min(_1596.xyz, _1604);
    highp vec3 _2804 = vec3(_2801.x ? _1604.x : _2803.x, _2801.y ? _1604.y : _2803.y, _2801.z ? _1604.z : _2803.z);
    highp vec3 _1605 = vec3(_2802.x ? _1596.xyz.x : _2804.x, _2802.y ? _1596.xyz.y : _2804.y, _2802.z ? _1596.xyz.z : _2804.z);
    highp vec4 _1639;
    if (_681)
    {
        highp vec3 _1609 = _1605.xyz;
        highp vec3 _1619 = _1609 + _959.xyz;
        highp vec3 _1620 = _1609 * _959.xyz;
        bvec3 _1622 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1623 = vec3(_1622.x ? _959.xyz.x : _333.x, _1622.y ? _959.xyz.y : _333.y, _1622.z ? _959.xyz.z : _333.z);
        bvec3 _1625 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1633;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1631 = (-_1609) * _959.xyz + _1619;
            bvec3 _2806 = isnan(_1631);
            bvec3 _2807 = isnan(_1609);
            highp vec3 _2808 = max(_1631, _1609);
            highp vec3 _2809 = vec3(_2806.x ? _1609.x : _2808.x, _2806.y ? _1609.y : _2808.y, _2806.z ? _1609.z : _2808.z);
            _1633 = vec3(_2807.x ? _1631.x : _2809.x, _2807.y ? _1631.y : _2809.y, _2807.z ? _1631.z : _2809.z);
        }
        else
        {
            _1633 = vec3(_1625.x ? _1619.x : _1623.x, _1625.y ? _1619.y : _1623.y, _1625.z ? _1619.z : _1623.z);
        }
        bvec3 _1635 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1637 = mix(_1609, vec3(_1635.x ? _1620.x : _1633.x, _1635.y ? _1620.y : _1633.y, _1635.z ? _1620.z : _1633.z), vec3((-_959.w) * _Globals._Main2ndEnableLighting + _959.w));
        _1639 = vec4(_1637.x, _1637.y, _1637.z, _1596.w);
    }
    else
    {
        _1639 = vec4(_1605.x, _1605.y, _1605.z, _1596.w);
    }
    highp vec4 _1672;
    if (_965)
    {
        highp vec3 _1652 = _1639.xyz + _1243.xyz;
        highp vec3 _1653 = _1639.xyz * _1243.xyz;
        bvec3 _1655 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1656 = vec3(_1655.x ? _1243.xyz.x : _333.x, _1655.y ? _1243.xyz.y : _333.y, _1655.z ? _1243.xyz.z : _333.z);
        bvec3 _1658 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1666;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1664 = (-_1639.xyz) * _1243.xyz + _1652;
            bvec3 _2811 = isnan(_1664);
            bvec3 _2812 = isnan(_1639.xyz);
            highp vec3 _2813 = max(_1664, _1639.xyz);
            highp vec3 _2814 = vec3(_2811.x ? _1639.xyz.x : _2813.x, _2811.y ? _1639.xyz.y : _2813.y, _2811.z ? _1639.xyz.z : _2813.z);
            _1666 = vec3(_2812.x ? _1664.x : _2814.x, _2812.y ? _1664.y : _2814.y, _2812.z ? _1664.z : _2814.z);
        }
        else
        {
            _1666 = vec3(_1658.x ? _1652.x : _1656.x, _1658.y ? _1652.y : _1656.y, _1658.z ? _1652.z : _1656.z);
        }
        bvec3 _1668 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1670 = mix(_1639.xyz, vec3(_1668.x ? _1653.x : _1666.x, _1668.y ? _1653.y : _1666.y, _1668.z ? _1653.z : _1666.z), vec3((-_1243.w) * _Globals._Main3rdEnableLighting + _1243.w));
        _1672 = vec4(_1670.x, _1670.y, _1670.z, _1639.w);
    }
    else
    {
        _1672 = _1639;
    }
    highp vec4 _1718;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1688 = pow(clamp(1.0 - abs(dot(mix(_671, _666, vec3(_Globals._RimShadeNormalStrength)), _459)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1697 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1716 = mix(_1672.xyz, _1672.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1688 - _1697) / clamp(fwidth(_1688) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1697), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1718 = vec4(_1716.x, _1716.y, _1716.z, _1672.w);
    }
    else
    {
        _1718 = _1672;
    }
    highp vec4 _1791;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1742 = dot(normalize(((-_459) * _Globals._BacklightViewStrength) + _443), mix(_671, _666, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1752;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1752 = _1742 * clamp(_442 + distance(_443, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1752 = _1742;
        }
        highp float _1761 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1789 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1414.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_391 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_459, _443) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1752 - _1761) / clamp(fwidth(_1752) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1761), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1601 + _1718.xyz;
        _1791 = vec4(_1789.x, _1789.y, _1789.z, _1718.w);
    }
    else
    {
        _1791 = _1718;
    }
    highp vec3 _1794 = _1791.xyz * _1791.w;
    highp vec4 _2047;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1805 = dFdx(_666);
        highp vec3 _1806 = abs(_1805);
        highp vec3 _1807 = dFdy(_666);
        highp vec3 _1808 = abs(_1807);
        highp float _1809 = dot(_1806, _1806);
        highp float _1810 = dot(_1808, _1808);
        highp float _1811 = isnan(_1810) ? _1809 : (isnan(_1809) ? _1810 : max(_1809, _1810));
        highp float _1814 = (_1811 / (_1811 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1817 = clamp(1.0 - (isnan(_1814) ? 0.0 : (isnan(0.0) ? _1814 : max(0.0, _1814))), 0.0, 1.0);
        highp float _1818 = isnan(_1817) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1817 : min(_Globals._Smoothness, _1817));
        highp float _1819 = 1.0 - _1818;
        highp float _1820 = _1819 * _1819;
        highp vec3 _1823 = _1794.xyz;
        highp vec3 _1825 = _1823 - (_1823 * _Globals._Metallic);
        highp vec3 _1831 = mix(vec3(_Globals._Reflectance), _1414.xyz, vec3(_Globals._Metallic));
        highp vec4 _1833 = _Globals._ReflectionColor;
        highp vec4 _1842;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1841 = _1833;
            _1841.w = _1833.w * _1791.w;
            _1842 = _1841;
        }
        else
        {
            _1842 = _1833;
        }
        highp vec4 _1943;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1915;
            do
            {
                highp vec3 _1853 = mix(_671, _666, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1855 = normalize(_459 + _443);
                highp float _1857 = clamp(dot(_1853, _1855), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1866 = pow(_1857, 1.0 / _1820);
                    highp float _1873 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1915 = vec3(clamp((_1866 - _1873) / clamp(fwidth(_1866) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1873), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1885 = clamp(dot(_1853, _459), 0.0, 1.0);
                highp float _1887 = clamp(dot(_1853, _443), 0.0, 1.0);
                highp float _1890 = isnan(0.00200000009499490261077880859375) ? _1820 : (isnan(_1820) ? 0.00200000009499490261077880859375 : max(_1820, 0.00200000009499490261077880859375));
                highp float _1891 = 1.0 - _1890;
                highp float _1895 = _1890 * _1890;
                highp float _1898 = (_1857 * _1895 + (-_1857)) * _1857 + 1.0;
                highp float _1906 = 1.0 - clamp(dot(_443, _1855), 0.0, 1.0);
                _1915 = (_1831 + ((((((vec3(1.0) - _1831) * _1906) * _1906) * _1906) * _1906) * _1906)) * (((0.5 / ((_1887 * (_1885 * _1891 + _1890) + (_1885 * (_1887 * _1891 + _1890))) + 9.9999997473787516355514526367188e-06)) * (_1895 / (_1898 * _1898 + 1.0000000116860974230803549289703e-07))) * _1887);
                break;
            } while(false);
            highp vec3 _1916 = _1825.xyz;
            highp vec3 _1918 = _1842.xyz * _1601;
            highp vec3 _1923 = _1842.xyz * _1601 + _1916;
            highp vec3 _1924 = _1916 * _1918;
            bvec3 _1926 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1927 = vec3(_1926.x ? _1918.x : _333.x, _1926.y ? _1918.y : _333.y, _1926.z ? _1918.z : _333.z);
            bvec3 _1929 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1937;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1935 = (-_1916) * _1918 + _1923;
                bvec3 _2836 = isnan(_1935);
                bvec3 _2837 = isnan(_1916);
                highp vec3 _2838 = max(_1935, _1916);
                highp vec3 _2839 = vec3(_2836.x ? _1916.x : _2838.x, _2836.y ? _1916.y : _2838.y, _2836.z ? _1916.z : _2838.z);
                _1937 = vec3(_2837.x ? _1935.x : _2839.x, _2837.y ? _1935.y : _2839.y, _2837.z ? _1935.z : _2839.z);
            }
            else
            {
                _1937 = vec3(_1929.x ? _1923.x : _1927.x, _1929.y ? _1923.y : _1927.y, _1929.z ? _1923.z : _1927.z);
            }
            bvec3 _1939 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1941 = mix(_1916, vec3(_1939.x ? _1924.x : _1937.x, _1939.y ? _1924.y : _1937.y, _1939.z ? _1924.z : _1937.z), _1915 * _1842.w);
            _1943 = vec4(_1941.x, _1941.y, _1941.z, _1791.w);
        }
        else
        {
            _1943 = vec4(_1825.x, _1825.y, _1825.z, _1791.w);
        }
        highp vec4 _2046;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1965 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1972 = reflect(-_459, mix(_671, _666, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1975 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1972, _1819 * ((-4.19999980926513671875) * _1819 + 10.19999980926513671875));
            highp vec3 _1995 = ((_1975.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1975.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1601, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2001 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1972, _1819 * 8.0).xyz * 1.0;
            highp float _2012 = 1.0 - _668;
            highp vec3 _2026 = _1943.xyz + _1842.xyz;
            highp vec3 _2027 = _1943.xyz * _1842.xyz;
            bvec3 _2029 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2030 = vec3(_2029.x ? _1842.xyz.x : _333.x, _2029.y ? _1842.xyz.y : _333.y, _2029.z ? _1842.xyz.z : _333.z);
            bvec3 _2032 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2040;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2038 = (-_1943.xyz) * _1842.xyz + _2026;
                bvec3 _2841 = isnan(_2038);
                bvec3 _2842 = isnan(_1943.xyz);
                highp vec3 _2843 = max(_2038, _1943.xyz);
                highp vec3 _2844 = vec3(_2841.x ? _1943.xyz.x : _2843.x, _2841.y ? _1943.xyz.y : _2843.y, _2841.z ? _1943.xyz.z : _2843.z);
                _2040 = vec3(_2842.x ? _2038.x : _2844.x, _2842.y ? _2038.y : _2844.y, _2842.z ? _2038.z : _2844.z);
            }
            else
            {
                _2040 = vec3(_2032.x ? _2026.x : _2030.x, _2032.y ? _2026.y : _2030.y, _2032.z ? _2026.z : _2030.z);
            }
            bvec3 _2042 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2044 = mix(_1943.xyz, vec3(_2042.x ? _2027.x : _2040.x, _2042.y ? _2027.y : _2040.y, _2042.z ? _2027.z : _2040.z), ((vec3(_1965.x ? _1995.x : _2001.x, _1965.y ? _1995.y : _2001.y, _1965.z ? _1995.z : _2001.z) * (1.0 / (_1820 * _1820 + 1.0))) * mix(_1831, vec3(clamp(_1818 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2012 * _2012) * _2012) * _2012) * _2012))) * _1842.w);
            _2046 = vec4(_2044.x, _2044.y, _2044.z, _1943.w);
        }
        else
        {
            _2046 = _1943;
        }
        _2047 = _2046;
    }
    else
    {
        _2047 = vec4(_1794.x, _1794.y, _1794.z, _1791.w);
    }
    highp vec4 _2165;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2073 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2074 = vec3(_2073.x ? _459.x : _359.x, _2073.y ? _459.y : _359.y, _2073.z ? _459.z : _359.z);
        bvec3 _2075 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2076 = vec3(_2075.x ? vec3(0.0, 1.0, 0.0).x : _366.x, _2075.y ? vec3(0.0, 1.0, 0.0).y : _366.y, _2075.z ? vec3(0.0, 1.0, 0.0).z : _366.z);
        highp vec3 _2080 = normalize(_2076 - (_2074 * dot(_2074, _2076)));
        highp vec4 _2102 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_671, _666, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2074, _2080), _2080, _2074)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2103 = _2102.xyz;
        highp vec3 _2108 = mix(_2103, _2103 * _1601, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2109 = vec4(_2108.x, _2108.y, _2108.z, _2102.w);
        highp float _2110 = _2102.w;
        highp float _2114 = mix(_2110, _2110 * _1602, _Globals._MatCapShadowMask);
        _2109.w = _2114;
        highp vec4 _2124;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2123 = _2109;
            _2123.w = _2114 * _2047.w;
            _2124 = _2123;
        }
        else
        {
            _2124 = _2109;
        }
        highp vec3 _2138 = mix(_2124.xyz, _2124.xyz * _1414.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2145 = _2047.xyz + _2138;
        highp vec3 _2146 = _2047.xyz * _2138;
        bvec3 _2148 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2149 = vec3(_2148.x ? _2138.x : _333.x, _2148.y ? _2138.y : _333.y, _2148.z ? _2138.z : _333.z);
        bvec3 _2151 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2159;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2157 = (-_2047.xyz) * _2138 + _2145;
            bvec3 _2846 = isnan(_2157);
            bvec3 _2847 = isnan(_2047.xyz);
            highp vec3 _2848 = max(_2157, _2047.xyz);
            highp vec3 _2849 = vec3(_2846.x ? _2047.xyz.x : _2848.x, _2846.y ? _2047.xyz.y : _2848.y, _2846.z ? _2047.xyz.z : _2848.z);
            _2159 = vec3(_2847.x ? _2157.x : _2849.x, _2847.y ? _2157.y : _2849.y, _2847.z ? _2157.z : _2849.z);
        }
        else
        {
            _2159 = vec3(_2151.x ? _2145.x : _2149.x, _2151.y ? _2145.y : _2149.y, _2151.z ? _2145.z : _2149.z);
        }
        bvec3 _2161 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2163 = mix(_2047.xyz, vec3(_2161.x ? _2146.x : _2159.x, _2161.y ? _2146.y : _2159.y, _2161.z ? _2146.z : _2159.z), vec3(1.0) * (_Globals._MatCapBlend * ((_391 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2124.w)));
        _2165 = vec4(_2163.x, _2163.y, _2163.z, _2047.w);
    }
    else
    {
        _2165 = _2047;
    }
    highp vec4 _2282;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2190 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2191 = vec3(_2190.x ? _459.x : _359.x, _2190.y ? _459.y : _359.y, _2190.z ? _459.z : _359.z);
        bvec3 _2192 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2193 = vec3(_2192.x ? vec3(0.0, 1.0, 0.0).x : _366.x, _2192.y ? vec3(0.0, 1.0, 0.0).y : _366.y, _2192.z ? vec3(0.0, 1.0, 0.0).z : _366.z);
        highp vec3 _2197 = normalize(_2193 - (_2191 * dot(_2191, _2193)));
        highp vec4 _2219 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_671, _666, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2191, _2197), _2197, _2191)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2220 = _2219.xyz;
        highp vec3 _2225 = mix(_2220, _2220 * _1601, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2226 = vec4(_2225.x, _2225.y, _2225.z, _2219.w);
        highp float _2227 = _2219.w;
        highp float _2231 = mix(_2227, _2227 * _1602, _Globals._MatCap2ndShadowMask);
        _2226.w = _2231;
        highp vec4 _2241;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2240 = _2226;
            _2240.w = _2231 * _2165.w;
            _2241 = _2240;
        }
        else
        {
            _2241 = _2226;
        }
        highp vec3 _2255 = mix(_2241.xyz, _2241.xyz * _1414.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2262 = _2165.xyz + _2255;
        highp vec3 _2263 = _2165.xyz * _2255;
        bvec3 _2265 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2266 = vec3(_2265.x ? _2255.x : _333.x, _2265.y ? _2255.y : _333.y, _2265.z ? _2255.z : _333.z);
        bvec3 _2268 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2276;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2274 = (-_2165.xyz) * _2255 + _2262;
            bvec3 _2851 = isnan(_2274);
            bvec3 _2852 = isnan(_2165.xyz);
            highp vec3 _2853 = max(_2274, _2165.xyz);
            highp vec3 _2854 = vec3(_2851.x ? _2165.xyz.x : _2853.x, _2851.y ? _2165.xyz.y : _2853.y, _2851.z ? _2165.xyz.z : _2853.z);
            _2276 = vec3(_2852.x ? _2274.x : _2854.x, _2852.y ? _2274.y : _2854.y, _2852.z ? _2274.z : _2854.z);
        }
        else
        {
            _2276 = vec3(_2268.x ? _2262.x : _2266.x, _2268.y ? _2262.y : _2266.y, _2268.z ? _2262.z : _2266.z);
        }
        bvec3 _2278 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2280 = mix(_2165.xyz, vec3(_2278.x ? _2263.x : _2276.x, _2278.y ? _2263.y : _2276.y, _2278.z ? _2263.z : _2276.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_391 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2241.w)));
        _2282 = vec4(_2280.x, _2280.y, _2280.z, _2165.w);
    }
    else
    {
        _2282 = _2165;
    }
    highp vec4 _2438;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2301 = mix(_671, _666, vec3(_Globals._RimNormalStrength));
        highp float _2305 = dot(_443, _2301) * 0.5 + 0.5;
        highp float _2328 = (_391 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2301, _459)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2332 = mix(_2328, _2328 * clamp((_2305 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2333 = _2328 * clamp(((1.0 - _2305) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2343 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2352 = clamp((_2332 - _2343) / clamp(fwidth(_2332) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2343), 0.0, 1.0), 0.0, 1.0);
        highp float _2359 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2369 = clamp((_2333 * _Globals._RimDirStrength + (-_2359)) / clamp(fwidth(_2333 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2359), 0.0, 1.0), 0.0, 1.0);
        highp float _2373 = mix(_2352, _2352 * _1602, _Globals._RimShadowMask);
        highp float _2375 = mix(_2369, _2369 * _1602, _Globals._RimShadowMask);
        highp float _2384;
        highp float _2385;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2384 = _2375 * _2282.w;
            _2385 = _2373 * _2282.w;
        }
        else
        {
            _2384 = _2375;
            _2385 = _2373;
        }
        highp vec3 _2391 = vec3(1.0 - _Globals._RimEnableLighting) + (_1601 * _Globals._RimEnableLighting);
        highp vec3 _2393 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1414.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2394 = _2393 * _2391;
        highp vec3 _2400 = _2393 * _2391 + _2282.xyz;
        highp vec3 _2401 = _2282.xyz * _2394;
        bvec3 _2403 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2404 = vec3(_2403.x ? _2394.x : _333.x, _2403.y ? _2394.y : _333.y, _2403.z ? _2394.z : _333.z);
        bvec3 _2406 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2408 = _Globals._RimBlendMode == 2u;
        highp vec3 _2414;
        if (_2408)
        {
            highp vec3 _2412 = (-_2282.xyz) * _2394 + _2400;
            bvec3 _2856 = isnan(_2412);
            bvec3 _2857 = isnan(_2282.xyz);
            highp vec3 _2858 = max(_2412, _2282.xyz);
            highp vec3 _2859 = vec3(_2856.x ? _2282.xyz.x : _2858.x, _2856.y ? _2282.xyz.y : _2858.y, _2856.z ? _2282.xyz.z : _2858.z);
            _2414 = vec3(_2857.x ? _2412.x : _2859.x, _2857.y ? _2412.y : _2859.y, _2857.z ? _2412.z : _2859.z);
        }
        else
        {
            _2414 = vec3(_2406.x ? _2400.x : _2404.x, _2406.y ? _2400.y : _2404.y, _2406.z ? _2400.z : _2404.z);
        }
        bvec3 _2416 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2419 = mix(_2282.xyz, vec3(_2416.x ? _2401.x : _2414.x, _2416.y ? _2401.y : _2414.y, _2416.z ? _2401.z : _2414.z), vec3(_2385 * _Globals._RimColor.w)).xyz;
        highp vec3 _2421 = _Globals._RimIndirColor.xyz * _2391;
        highp vec3 _2425 = _Globals._RimIndirColor.xyz * _2391 + _2419;
        highp vec3 _2426 = _2419 * _2421;
        highp vec3 _2427 = vec3(_2403.x ? _2421.x : _333.x, _2403.y ? _2421.y : _333.y, _2403.z ? _2421.z : _333.z);
        highp vec3 _2434;
        if (_2408)
        {
            highp vec3 _2432 = (-_2419) * _2421 + _2425;
            bvec3 _2861 = isnan(_2432);
            bvec3 _2862 = isnan(_2419);
            highp vec3 _2863 = max(_2432, _2419);
            highp vec3 _2864 = vec3(_2861.x ? _2419.x : _2863.x, _2861.y ? _2419.y : _2863.y, _2861.z ? _2419.z : _2863.z);
            _2434 = vec3(_2862.x ? _2432.x : _2864.x, _2862.y ? _2432.y : _2864.y, _2862.z ? _2432.z : _2864.z);
        }
        else
        {
            _2434 = vec3(_2406.x ? _2425.x : _2427.x, _2406.y ? _2425.y : _2427.y, _2406.z ? _2425.z : _2427.z);
        }
        highp vec3 _2436 = mix(_2419, vec3(_2416.x ? _2426.x : _2434.x, _2416.y ? _2426.y : _2434.y, _2416.z ? _2426.z : _2434.z), vec3(_2384 * _Globals._RimIndirColor.w));
        _2438 = vec4(_2436.x, _2436.y, _2436.z, _2282.w);
    }
    else
    {
        _2438 = _2282;
    }
    highp vec4 _2554;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2449 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2450 = vec2(_2449.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2449.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2452 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2453 = vec2(_2452.x ? out_var_TEXCOORD1.xy.x : _2450.x, _2452.y ? out_var_TEXCOORD1.xy.y : _2450.y);
        bvec2 _2455 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2456 = vec2(_2455.x ? out_var_TEXCOORD1.zw.x : _2453.x, _2455.y ? out_var_TEXCOORD1.zw.y : _2453.y);
        bvec2 _2458 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2475 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2476 = sin(_2475);
        highp float _2477 = cos(_2475);
        highp vec2 _2478 = ((vec2(_2458.x ? _670.x : _2456.x, _2458.y ? _670.y : _2456.y) + ((_469.xy / vec2(_469.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2479 = _2478.x;
        highp float _2480 = _2478.y;
        highp vec4 _2493 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2479 * _2477 + (-(_2480 * _2476)), _2479 * _2476 + (_2480 * _2477)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2494 = _Globals._EmissionColor * _2493;
        highp vec3 _2495 = _2494.xyz;
        highp vec3 _2501 = mix(_2495, _2495 * _447, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2515 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2521;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2521 = roundEven(_2515);
        }
        else
        {
            _2521 = _2515;
        }
        highp vec3 _2530 = mix(_2501, _2501 * _1414.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2534 = _2438.xyz + _2530;
        highp vec3 _2535 = _2438.xyz * _2530;
        bvec3 _2537 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2538 = vec3(_2537.x ? _2530.x : _333.x, _2537.y ? _2530.y : _333.y, _2537.z ? _2530.z : _333.z);
        bvec3 _2540 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2548;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2546 = (-_2438.xyz) * _2530 + _2534;
            bvec3 _2866 = isnan(_2546);
            bvec3 _2867 = isnan(_2438.xyz);
            highp vec3 _2868 = max(_2546, _2438.xyz);
            highp vec3 _2869 = vec3(_2866.x ? _2438.xyz.x : _2868.x, _2866.y ? _2438.xyz.y : _2868.y, _2866.z ? _2438.xyz.z : _2868.z);
            _2548 = vec3(_2867.x ? _2546.x : _2869.x, _2867.y ? _2546.y : _2869.y, _2867.z ? _2546.z : _2869.z);
        }
        else
        {
            _2548 = vec3(_2540.x ? _2534.x : _2538.x, _2540.y ? _2534.y : _2538.y, _2540.z ? _2534.z : _2538.z);
        }
        bvec3 _2550 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2552 = mix(_2438.xyz, vec3(_2550.x ? _2535.x : _2548.x, _2550.y ? _2535.y : _2548.y, _2550.z ? _2535.z : _2548.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2521, _Globals._EmissionBlink.x)) * _2494.w) * _2438.w));
        _2554 = vec4(_2552.x, _2552.y, _2552.z, _2438.w);
    }
    else
    {
        _2554 = _2438;
    }
    highp vec4 _2621;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2568 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _447, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2582 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2588;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2588 = roundEven(_2582);
        }
        else
        {
            _2588 = _2582;
        }
        highp vec3 _2597 = mix(_2568, _2568 * _1414.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2601 = _2554.xyz + _2597;
        highp vec3 _2602 = _2554.xyz * _2597;
        bvec3 _2604 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2605 = vec3(_2604.x ? _2597.x : _333.x, _2604.y ? _2597.y : _333.y, _2604.z ? _2597.z : _333.z);
        bvec3 _2607 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2615;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2613 = (-_2554.xyz) * _2597 + _2601;
            bvec3 _2871 = isnan(_2613);
            bvec3 _2872 = isnan(_2554.xyz);
            highp vec3 _2873 = max(_2613, _2554.xyz);
            highp vec3 _2874 = vec3(_2871.x ? _2554.xyz.x : _2873.x, _2871.y ? _2554.xyz.y : _2873.y, _2871.z ? _2554.xyz.z : _2873.z);
            _2615 = vec3(_2872.x ? _2613.x : _2874.x, _2872.y ? _2613.y : _2874.y, _2872.z ? _2613.z : _2874.z);
        }
        else
        {
            _2615 = vec3(_2607.x ? _2601.x : _2605.x, _2607.y ? _2601.y : _2605.y, _2607.z ? _2601.z : _2605.z);
        }
        bvec3 _2617 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2619 = mix(_2554.xyz, vec3(_2617.x ? _2602.x : _2615.x, _2617.y ? _2602.y : _2615.y, _2617.z ? _2602.z : _2615.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2588, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2554.w));
        _2621 = vec4(_2619.x, _2619.y, _2619.z, _2554.w);
    }
    else
    {
        _2621 = _2554;
    }
    bvec3 _2631 = bvec3(_391 < 0.0);
    highp vec3 _2632 = (_2621.xyz + ((_Globals._DissolveColor.xyz * _1415) * _2621.w)).xyz;
    highp vec3 _2640 = mix(_2632, _Globals._BackfaceColor.xyz * _1601, vec3(_Globals._BackfaceColor.w));
    highp float _2661 = (_391 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _452) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2675 = vec3(_2631.x ? _2640.x : _2632.x, _2631.y ? _2640.y : _2632.y, _2631.z ? _2640.z : _2632.z).xyz;
    highp vec3 _2686 = mix(_2675, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2675, vec3(pow(clamp(1.0 - abs(dot(_671, _459)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2661));
    highp vec4 _2687 = vec4(_2686.x, _2686.y, _2686.z, _2621.w);
    highp float _2689 = mix(_2621.w, _2621.w * _Globals._DistanceFadeColor.w, _2661);
    _2687.w = _2689;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2689, _2687, vec4(out_var_TEXCOORD9));
}
