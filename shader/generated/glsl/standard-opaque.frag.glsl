#version 300 es
precision mediump float;
precision highp int;

vec3 _316;
vec3 _322;

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
    highp vec4 _OutlineColor;
    highp vec4 _OutlineLitColor;
    highp vec4 _OutlineTex_ST;
    highp float _AsUnlit;
    highp float _Cutoff;
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
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;
uniform highp sampler2D SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap;

in highp vec4 out_var_TEXCOORD0;
in highp vec4 out_var_TEXCOORD1;
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
    highp vec3 _341 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _348 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _365 = float(gl_FrontFacing ? 1 : (-1));
    highp float _416;
    do
    {
        highp vec3 _372 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _373 = _372.xy;
        highp float _379 = _372.z;
        if ((any(lessThan(_373, vec2(0.0))) || any(greaterThan(_373, vec2(1.0)))) || (_379 > 1.0))
        {
            _416 = 1.0;
            break;
        }
        highp float _389 = _379 + _Globals.uShadowBias;
        _416 = (((step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _417 = normalize(out_var_TEXCOORD7);
    highp vec3 _421 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _425 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _426 = length(_425);
    highp vec3 _433 = normalize(_425);
    highp mat3 _442 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _443 = _433 * _442;
    highp vec2 _448 = _443.xy / vec2(_443.z + 0.5);
    bvec2 _453 = bvec2(_365 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _454 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _467 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _468 = sin(_467);
    highp float _469 = cos(_467);
    highp vec2 _470 = (vec2(_453.x ? _454.x : out_var_TEXCOORD0.xy.x, _453.y ? _454.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _471 = _470.x;
    highp float _472 = _470.y;
    highp vec2 _483 = (vec2(_471 * _469 + (-(_472 * _468)), _471 * _468 + (_472 * _469)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _487 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _483);
    highp vec3 _494 = pow(abs(_487.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _495 = _494.z;
    highp float _496 = _494.y;
    bvec4 _498 = bvec4(_495 > _496);
    highp vec4 _499 = vec4(_495, _496, -1.0, 0.666666686534881591796875);
    highp vec4 _500 = vec4(_496, _495, 0.0, -0.3333333432674407958984375);
    highp vec4 _501 = vec4(_498.x ? _499.x : _500.x, _498.y ? _499.y : _500.y, _498.z ? _499.z : _500.z, _498.w ? _499.w : _500.w);
    highp float _502 = _501.x;
    highp float _503 = _494.x;
    bvec4 _505 = bvec4(_502 > _503);
    highp vec4 _508 = vec4(_502, _501.yw, _503);
    highp vec4 _510 = vec4(_503, _501.yz, _502);
    highp vec4 _511 = vec4(_505.x ? _508.x : _510.x, _505.y ? _508.y : _510.y, _505.z ? _508.z : _510.z, _505.w ? _508.w : _510.w);
    highp float _516 = _511.x - (isnan(_511.y) ? _511.w : (isnan(_511.w) ? _511.y : min(_511.w, _511.y)));
    highp float _529 = clamp((_516 / (_511.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _532 = clamp(_511.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _546 = vec3((-_532) * _529 + _532) + (clamp(abs((fract(vec3(abs(_511.z + ((_511.w - _511.y) / (6.0 * _516 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_532 * _529));
    highp vec4 _550 = vec4(_546.x, _546.y, _546.z, _487.w) * _Globals._Color;
    highp vec3 _582;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _563 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _483 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _563.w = _563.w * _563.x;
        highp vec2 _574 = ((_563.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _575 = vec3(_574.x, _574.y, _322.z);
        highp vec2 _576 = _574.xy;
        _575.z = sqrt(1.0 - clamp(dot(_576, _576), 0.0, 1.0));
        _582 = _575;
    }
    else
    {
        _582 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _631;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _591 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _592 = vec2(_591.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _591.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _594 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _595 = vec2(_594.x ? out_var_TEXCOORD1.xy.x : _592.x, _594.y ? out_var_TEXCOORD1.xy.y : _592.y);
        bvec2 _597 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _607 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_597.x ? out_var_TEXCOORD1.zw.x : _595.x, _597.y ? out_var_TEXCOORD1.zw.y : _595.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _607.w = _607.w * _607.x;
        highp vec2 _619 = (((_607.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _631 = vec3(_582.xy + _619, _582.z * sqrt(1.0 - clamp(dot(_619, _619), 0.0, 1.0)));
    }
    else
    {
        _631 = _582;
    }
    highp vec3 _633 = normalize(_442 * _631);
    bvec3 _638 = bvec3(_365 < (_Globals._FlipNormal - 1.0));
    highp vec3 _639 = -_633;
    highp vec3 _640 = vec3(_638.x ? _639.x : _633.x, _638.y ? _639.y : _633.y, _638.z ? _639.z : _633.z);
    highp float _641 = dot(_640, _433);
    highp float _642 = clamp(_641, 0.0, 1.0);
    highp vec2 _644 = vec2(abs(_641));
    highp vec3 _645 = normalize(out_var_TEXCOORD4);
    highp vec2 _649 = ((_640 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _348, _341)).xy * 0.5) + vec2(0.5);
    bool _650 = out_var_TEXCOORD5.w > 0.0;
    bool _655 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _893;
    highp vec4 _894;
    if (_655)
    {
        bvec2 _661 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _662 = vec2(_661.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _661.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _664 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _665 = vec2(_664.x ? out_var_TEXCOORD1.xy.x : _662.x, _664.y ? out_var_TEXCOORD1.xy.y : _662.y);
        bvec2 _667 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _668 = vec2(_667.x ? out_var_TEXCOORD1.zw.x : _665.x, _667.y ? out_var_TEXCOORD1.zw.y : _665.y);
        bvec2 _670 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _671 = vec2(_670.x ? _649.x : _668.x, _670.y ? _649.y : _668.y);
        highp vec4 _710 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _711 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _719;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _718 = _671;
            _718.x = abs(_671.x - 0.5) + 0.5;
            _719 = _718;
        }
        else
        {
            _719 = _671;
        }
        highp vec2 _720 = _710.xy;
        highp vec2 _721 = _710.zw;
        highp vec2 _722 = _719 * _720 + _721;
        highp vec2 _731;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_671.x < 0.5))
        {
            highp vec2 _730 = _722;
            _730.x = 1.0 - _722.x;
            _731 = _730;
        }
        else
        {
            _731 = _722;
        }
        highp vec2 _738;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _650)
        {
            highp vec2 _737 = _731;
            _737.x = 1.0 - _731.x;
            _738 = _737;
        }
        else
        {
            _738 = _731;
        }
        highp vec2 _743;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _650)
        {
            highp vec2 _742 = _738;
            _742.x = -1.0;
            _743 = _742;
        }
        else
        {
            _743 = _738;
        }
        highp vec2 _749;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_650))
        {
            highp vec2 _748 = _743;
            _748.x = -1.0;
            _749 = _748;
        }
        else
        {
            _749 = _743;
        }
        highp float _752 = sin(_711);
        highp float _753 = cos(_711);
        highp vec2 _754 = ((_749 - _721) / _720) - vec2(0.5);
        highp float _755 = _754.x;
        highp float _756 = _754.y;
        highp vec2 _764 = (vec2(_755 * _753 + (-(_756 * _752)), _755 * _752 + (_756 * _753)) + vec2(0.5)) * _720 + _721;
        uint _768 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _772 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _768 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _768);
        highp float _773 = _764.x;
        highp float _774 = _764.y;
        uint _781 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _791 = ((mix(vec2(_773, 1.0 - _774), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_772 % _781), float(_772 / _781))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _791.y = 1.0 - _791.y;
        highp vec4 _796 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _791);
        highp vec4 _812;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _799 = _796.x;
            highp float _800 = _796.y;
            highp float _801 = _796.z;
            highp float _802 = isnan(_800) ? _799 : (isnan(_799) ? _800 : min(_799, _800));
            highp float _803 = isnan(_800) ? _799 : (isnan(_799) ? _800 : max(_799, _800));
            highp float _804 = isnan(_801) ? _803 : (isnan(_803) ? _801 : min(_803, _801));
            highp float _805 = isnan(_804) ? _802 : (isnan(_802) ? _804 : max(_802, _804));
            _812 = vec4(1.0, 1.0, 1.0, clamp((_805 - 0.5) / clamp(fwidth(_805), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _812 = _796;
        }
        highp vec4 _835;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _816 = clamp(_642 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _819 = 0.5 - abs(_773 - 0.5);
            highp float _826 = 0.5 - abs(_774 - 0.5);
            highp vec4 _834 = _812;
            _834.w = _812.w * (clamp(_819 / clamp(fwidth(_819), 9.9999997473787516355514526367188e-05, _816), 0.0, 1.0) * clamp(_826 / clamp(fwidth(_826), 9.9999997473787516355514526367188e-05, _816), 0.0, 1.0));
            _835 = _834;
        }
        else
        {
            _835 = _812;
        }
        highp vec4 _836 = _Globals._Color2nd * _835;
        highp float _837 = _836.w;
        _836.w = mix(_837, _837 * clamp((_426 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _863;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_365 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_365 < 0.0)))
        {
            highp vec4 _862 = _836;
            _862.w = 0.0;
            _863 = _862;
        }
        else
        {
            _863 = _836;
        }
        highp vec3 _864 = _550.xyz;
        highp vec3 _873 = _864 + _863.xyz;
        highp vec3 _874 = _864 * _863.xyz;
        bvec3 _876 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _877 = vec3(_876.x ? _863.xyz.x : _316.x, _876.y ? _863.xyz.y : _316.y, _876.z ? _863.xyz.z : _316.z);
        bvec3 _879 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _887;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _885 = (-_864) * _863.xyz + _873;
            bvec3 _2457 = isnan(_885);
            bvec3 _2458 = isnan(_864);
            highp vec3 _2459 = max(_885, _864);
            highp vec3 _2460 = vec3(_2457.x ? _864.x : _2459.x, _2457.y ? _864.y : _2459.y, _2457.z ? _864.z : _2459.z);
            _887 = vec3(_2458.x ? _885.x : _2460.x, _2458.y ? _885.y : _2460.y, _2458.z ? _885.z : _2460.z);
        }
        else
        {
            _887 = vec3(_879.x ? _873.x : _877.x, _879.y ? _873.y : _877.y, _879.z ? _873.z : _877.z);
        }
        bvec3 _889 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _891 = mix(_864, vec3(_889.x ? _874.x : _887.x, _889.y ? _874.y : _887.y, _889.z ? _874.z : _887.z), vec3(_863.w * _Globals._Main2ndEnableLighting));
        _893 = _863;
        _894 = vec4(_891.x, _891.y, _891.z, _550.w);
    }
    else
    {
        _893 = _Globals._Color2nd;
        _894 = _550;
    }
    bool _899 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1137;
    highp vec4 _1138;
    if (_899)
    {
        bvec2 _905 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _906 = vec2(_905.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _905.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _908 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _909 = vec2(_908.x ? out_var_TEXCOORD1.xy.x : _906.x, _908.y ? out_var_TEXCOORD1.xy.y : _906.y);
        bvec2 _911 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _912 = vec2(_911.x ? out_var_TEXCOORD1.zw.x : _909.x, _911.y ? out_var_TEXCOORD1.zw.y : _909.y);
        bvec2 _914 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _915 = vec2(_914.x ? _649.x : _912.x, _914.y ? _649.y : _912.y);
        highp vec4 _954 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _955 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _963;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _962 = _915;
            _962.x = abs(_915.x - 0.5) + 0.5;
            _963 = _962;
        }
        else
        {
            _963 = _915;
        }
        highp vec2 _964 = _954.xy;
        highp vec2 _965 = _954.zw;
        highp vec2 _966 = _963 * _964 + _965;
        highp vec2 _975;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_915.x < 0.5))
        {
            highp vec2 _974 = _966;
            _974.x = 1.0 - _966.x;
            _975 = _974;
        }
        else
        {
            _975 = _966;
        }
        highp vec2 _982;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _650)
        {
            highp vec2 _981 = _975;
            _981.x = 1.0 - _975.x;
            _982 = _981;
        }
        else
        {
            _982 = _975;
        }
        highp vec2 _987;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _650)
        {
            highp vec2 _986 = _982;
            _986.x = -1.0;
            _987 = _986;
        }
        else
        {
            _987 = _982;
        }
        highp vec2 _993;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_650))
        {
            highp vec2 _992 = _987;
            _992.x = -1.0;
            _993 = _992;
        }
        else
        {
            _993 = _987;
        }
        highp float _996 = sin(_955);
        highp float _997 = cos(_955);
        highp vec2 _998 = ((_993 - _965) / _964) - vec2(0.5);
        highp float _999 = _998.x;
        highp float _1000 = _998.y;
        highp vec2 _1008 = (vec2(_999 * _997 + (-(_1000 * _996)), _999 * _996 + (_1000 * _997)) + vec2(0.5)) * _964 + _965;
        uint _1012 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1016 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1012 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1012);
        highp float _1017 = _1008.x;
        highp float _1018 = _1008.y;
        uint _1025 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1035 = ((mix(vec2(_1017, 1.0 - _1018), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1016 % _1025), float(_1016 / _1025))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1035.y = 1.0 - _1035.y;
        highp vec4 _1040 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1035);
        highp vec4 _1056;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1043 = _1040.x;
            highp float _1044 = _1040.y;
            highp float _1045 = _1040.z;
            highp float _1046 = isnan(_1044) ? _1043 : (isnan(_1043) ? _1044 : min(_1043, _1044));
            highp float _1047 = isnan(_1044) ? _1043 : (isnan(_1043) ? _1044 : max(_1043, _1044));
            highp float _1048 = isnan(_1045) ? _1047 : (isnan(_1047) ? _1045 : min(_1047, _1045));
            highp float _1049 = isnan(_1048) ? _1046 : (isnan(_1046) ? _1048 : max(_1046, _1048));
            _1056 = vec4(1.0, 1.0, 1.0, clamp((_1049 - 0.5) / clamp(fwidth(_1049), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1056 = _1040;
        }
        highp vec4 _1079;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1060 = clamp(_642 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1063 = 0.5 - abs(_1017 - 0.5);
            highp float _1070 = 0.5 - abs(_1018 - 0.5);
            highp vec4 _1078 = _1056;
            _1078.w = _1056.w * (clamp(_1063 / clamp(fwidth(_1063), 9.9999997473787516355514526367188e-05, _1060), 0.0, 1.0) * clamp(_1070 / clamp(fwidth(_1070), 9.9999997473787516355514526367188e-05, _1060), 0.0, 1.0));
            _1079 = _1078;
        }
        else
        {
            _1079 = _1056;
        }
        highp vec4 _1080 = _Globals._Color3rd * _1079;
        highp float _1081 = _1080.w;
        _1080.w = mix(_1081, _1081 * clamp((_426 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1107;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_365 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_365 < 0.0)))
        {
            highp vec4 _1106 = _1080;
            _1106.w = 0.0;
            _1107 = _1106;
        }
        else
        {
            _1107 = _1080;
        }
        highp vec3 _1117 = _894.xyz + _1107.xyz;
        highp vec3 _1118 = _894.xyz * _1107.xyz;
        bvec3 _1120 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1121 = vec3(_1120.x ? _1107.xyz.x : _316.x, _1120.y ? _1107.xyz.y : _316.y, _1120.z ? _1107.xyz.z : _316.z);
        bvec3 _1123 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1131;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1129 = (-_894.xyz) * _1107.xyz + _1117;
            bvec3 _2482 = isnan(_1129);
            bvec3 _2483 = isnan(_894.xyz);
            highp vec3 _2484 = max(_1129, _894.xyz);
            highp vec3 _2485 = vec3(_2482.x ? _894.xyz.x : _2484.x, _2482.y ? _894.xyz.y : _2484.y, _2482.z ? _894.xyz.z : _2484.z);
            _1131 = vec3(_2483.x ? _1129.x : _2485.x, _2483.y ? _1129.y : _2485.y, _2483.z ? _1129.z : _2485.z);
        }
        else
        {
            _1131 = vec3(_1123.x ? _1117.x : _1121.x, _1123.y ? _1117.y : _1121.y, _1123.z ? _1117.z : _1121.z);
        }
        bvec3 _1133 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1135 = mix(_894.xyz, vec3(_1133.x ? _1118.x : _1131.x, _1133.y ? _1118.y : _1131.y, _1133.z ? _1118.z : _1131.z), vec3(_1107.w * _Globals._Main3rdEnableLighting));
        _1137 = _1107;
        _1138 = vec4(_1135.x, _1135.y, _1135.z, _894.w);
    }
    else
    {
        _1137 = _Globals._Color3rd;
        _1138 = _894;
    }
    highp vec4 _1139 = _1138;
    _1139.w = 1.0;
    highp vec4 _1313;
    highp float _1314;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1163 = clamp(dot(_417, mix(_645, _640, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1166 = clamp(dot(_417, mix(_645, _640, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1169 = clamp(dot(_417, mix(_645, _640, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1173 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1176 = clamp(_416 + distance(_417, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1179 = mix(1.0, _1176, _Globals._ShadowReceive);
        highp float _1180 = _1163 * _1179;
        highp float _1183 = mix(1.0, _1176, _Globals._Shadow2ndReceive);
        highp float _1187 = mix(1.0, _1176, _Globals._Shadow3rdReceive);
        highp float _1198 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1199 = clamp(_1198, 0.0, 1.0);
        highp float _1201 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1214 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1228 = clamp(_1198 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1241 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1256 = (_365 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1257 = clamp((_1163 * _1179 + (-_1199)) / clamp(fwidth(_1180) * _1173 + (_1201 - _1199), 0.0, 1.0), 0.0, 1.0) * _1256;
        highp vec3 _1289 = mix(mix(_1139.xyz * _Globals._ShadowColor.xyz, (_1139.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1166 * _1183 + (-_1214)) / clamp(fwidth(_1166 * _1183) * _1173 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1214), 0.0, 1.0), 0.0, 1.0) * _1256)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1139.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1169 * _1187 + (-_1241)) / clamp(fwidth(_1169 * _1187) * _1173 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1241), 0.0, 1.0), 0.0, 1.0) * _1256)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1295 = _1139.xyz * out_var_TEXCOORD6;
        highp vec3 _1301 = mix(mix(_1289, _1289 * _1139.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1139.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2487 = isnan(_1301);
        bvec3 _2488 = isnan(_1295);
        highp vec3 _2489 = min(_1301, _1295);
        highp vec3 _2490 = vec3(_2487.x ? _1295.x : _2489.x, _2487.y ? _1295.y : _2489.y, _2487.z ? _1295.z : _2489.z);
        highp vec3 _1309 = mix(mix(vec3(_2488.x ? _1301.x : _2490.x, _2488.y ? _1301.y : _2490.y, _2488.z ? _1301.z : _2490.z), _1295, _Globals._ShadowBorderColor.xyz * (clamp((_1163 * _1179 + (-_1228)) / clamp(fwidth(_1180) * _1173 + (_1201 - _1228), 0.0, 1.0), 0.0, 1.0) * _1256)), _1295, vec3(mix(1.0, _1257, _Globals._ShadowStrength)));
        _1313 = vec4(_1309.x, _1309.y, _1309.z, _1139.w);
        _1314 = _1257;
    }
    else
    {
        highp vec3 _1311 = _1139.xyz * out_var_TEXCOORD6;
        _1313 = vec4(_1311.x, _1311.y, _1311.z, _1139.w);
        _1314 = 1.0;
    }
    highp vec3 _1317 = vec3(_Globals._LightMaxLimit);
    bvec3 _2492 = isnan(out_var_TEXCOORD6);
    bvec3 _2493 = isnan(_1317);
    highp vec3 _2494 = min(out_var_TEXCOORD6, _1317);
    highp vec3 _2495 = vec3(_2492.x ? _1317.x : _2494.x, _2492.y ? _1317.y : _2494.y, _2492.z ? _1317.z : _2494.z);
    highp vec3 _1318 = vec3(_2493.x ? out_var_TEXCOORD6.x : _2495.x, _2493.y ? out_var_TEXCOORD6.y : _2495.y, _2493.z ? out_var_TEXCOORD6.z : _2495.z);
    highp float _1319 = clamp(_1314, 0.0, 1.0);
    highp vec3 _1321 = _1139.xyz * _Globals._LightMaxLimit;
    bvec3 _2497 = isnan(_1313.xyz);
    bvec3 _2498 = isnan(_1321);
    highp vec3 _2499 = min(_1313.xyz, _1321);
    highp vec3 _2500 = vec3(_2497.x ? _1321.x : _2499.x, _2497.y ? _1321.y : _2499.y, _2497.z ? _1321.z : _2499.z);
    highp vec3 _1322 = vec3(_2498.x ? _1313.xyz.x : _2500.x, _2498.y ? _1313.xyz.y : _2500.y, _2498.z ? _1313.xyz.z : _2500.z);
    highp vec4 _1356;
    if (_655)
    {
        highp vec3 _1326 = _1322.xyz;
        highp vec3 _1336 = _1326 + _893.xyz;
        highp vec3 _1337 = _1326 * _893.xyz;
        bvec3 _1339 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1340 = vec3(_1339.x ? _893.xyz.x : _316.x, _1339.y ? _893.xyz.y : _316.y, _1339.z ? _893.xyz.z : _316.z);
        bvec3 _1342 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1350;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1348 = (-_1326) * _893.xyz + _1336;
            bvec3 _2502 = isnan(_1348);
            bvec3 _2503 = isnan(_1326);
            highp vec3 _2504 = max(_1348, _1326);
            highp vec3 _2505 = vec3(_2502.x ? _1326.x : _2504.x, _2502.y ? _1326.y : _2504.y, _2502.z ? _1326.z : _2504.z);
            _1350 = vec3(_2503.x ? _1348.x : _2505.x, _2503.y ? _1348.y : _2505.y, _2503.z ? _1348.z : _2505.z);
        }
        else
        {
            _1350 = vec3(_1342.x ? _1336.x : _1340.x, _1342.y ? _1336.y : _1340.y, _1342.z ? _1336.z : _1340.z);
        }
        bvec3 _1352 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1354 = mix(_1326, vec3(_1352.x ? _1337.x : _1350.x, _1352.y ? _1337.y : _1350.y, _1352.z ? _1337.z : _1350.z), vec3((-_893.w) * _Globals._Main2ndEnableLighting + _893.w));
        _1356 = vec4(_1354.x, _1354.y, _1354.z, _1313.w);
    }
    else
    {
        _1356 = vec4(_1322.x, _1322.y, _1322.z, _1313.w);
    }
    highp vec4 _1389;
    if (_899)
    {
        highp vec3 _1369 = _1356.xyz + _1137.xyz;
        highp vec3 _1370 = _1356.xyz * _1137.xyz;
        bvec3 _1372 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1373 = vec3(_1372.x ? _1137.xyz.x : _316.x, _1372.y ? _1137.xyz.y : _316.y, _1372.z ? _1137.xyz.z : _316.z);
        bvec3 _1375 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1383;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1381 = (-_1356.xyz) * _1137.xyz + _1369;
            bvec3 _2507 = isnan(_1381);
            bvec3 _2508 = isnan(_1356.xyz);
            highp vec3 _2509 = max(_1381, _1356.xyz);
            highp vec3 _2510 = vec3(_2507.x ? _1356.xyz.x : _2509.x, _2507.y ? _1356.xyz.y : _2509.y, _2507.z ? _1356.xyz.z : _2509.z);
            _1383 = vec3(_2508.x ? _1381.x : _2510.x, _2508.y ? _1381.y : _2510.y, _2508.z ? _1381.z : _2510.z);
        }
        else
        {
            _1383 = vec3(_1375.x ? _1369.x : _1373.x, _1375.y ? _1369.y : _1373.y, _1375.z ? _1369.z : _1373.z);
        }
        bvec3 _1385 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1387 = mix(_1356.xyz, vec3(_1385.x ? _1370.x : _1383.x, _1385.y ? _1370.y : _1383.y, _1385.z ? _1370.z : _1383.z), vec3((-_1137.w) * _Globals._Main3rdEnableLighting + _1137.w));
        _1389 = vec4(_1387.x, _1387.y, _1387.z, _1356.w);
    }
    else
    {
        _1389 = _1356;
    }
    highp vec4 _1435;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1405 = pow(clamp(1.0 - abs(dot(mix(_645, _640, vec3(_Globals._RimShadeNormalStrength)), _433)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1414 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1433 = mix(_1389.xyz, _1389.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1405 - _1414) / clamp(fwidth(_1405) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1414), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1435 = vec4(_1433.x, _1433.y, _1433.z, _1389.w);
    }
    else
    {
        _1435 = _1389;
    }
    highp vec4 _1508;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1459 = dot(normalize(((-_433) * _Globals._BacklightViewStrength) + _417), mix(_645, _640, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1469;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1469 = _1459 * clamp(_416 + distance(_417, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1469 = _1459;
        }
        highp float _1478 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1506 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1139.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_365 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_433, _417) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1469 - _1478) / clamp(fwidth(_1469) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1478), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1318 + _1435.xyz;
        _1508 = vec4(_1506.x, _1506.y, _1506.z, _1435.w);
    }
    else
    {
        _1508 = _1435;
    }
    highp vec4 _1751;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1518 = dFdx(_640);
        highp vec3 _1519 = abs(_1518);
        highp vec3 _1520 = dFdy(_640);
        highp vec3 _1521 = abs(_1520);
        highp float _1522 = dot(_1519, _1519);
        highp float _1523 = dot(_1521, _1521);
        highp float _1524 = isnan(_1523) ? _1522 : (isnan(_1522) ? _1523 : max(_1522, _1523));
        highp float _1527 = (_1524 / (_1524 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1530 = clamp(1.0 - (isnan(_1527) ? 0.0 : (isnan(0.0) ? _1527 : max(0.0, _1527))), 0.0, 1.0);
        highp float _1531 = isnan(_1530) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1530 : min(_Globals._Smoothness, _1530));
        highp float _1532 = 1.0 - _1531;
        highp float _1533 = _1532 * _1532;
        highp vec3 _1538 = _1508.xyz - (_1508.xyz * _Globals._Metallic);
        highp vec3 _1544 = mix(vec3(_Globals._Reflectance), _1139.xyz, vec3(_Globals._Metallic));
        highp vec4 _1647;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1619;
            do
            {
                highp vec3 _1557 = mix(_645, _640, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1559 = normalize(_433 + _417);
                highp float _1561 = clamp(dot(_1557, _1559), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1570 = pow(_1561, 1.0 / _1533);
                    highp float _1577 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1619 = vec3(clamp((_1570 - _1577) / clamp(fwidth(_1570) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1577), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1589 = clamp(dot(_1557, _433), 0.0, 1.0);
                highp float _1591 = clamp(dot(_1557, _417), 0.0, 1.0);
                highp float _1594 = isnan(0.00200000009499490261077880859375) ? _1533 : (isnan(_1533) ? 0.00200000009499490261077880859375 : max(_1533, 0.00200000009499490261077880859375));
                highp float _1595 = 1.0 - _1594;
                highp float _1599 = _1594 * _1594;
                highp float _1602 = (_1561 * _1599 + (-_1561)) * _1561 + 1.0;
                highp float _1610 = 1.0 - clamp(dot(_417, _1559), 0.0, 1.0);
                _1619 = (_1544 + ((((((vec3(1.0) - _1544) * _1610) * _1610) * _1610) * _1610) * _1610)) * (((0.5 / ((_1591 * (_1589 * _1595 + _1594) + (_1589 * (_1591 * _1595 + _1594))) + 9.9999997473787516355514526367188e-06)) * (_1599 / (_1602 * _1602 + 1.0000000116860974230803549289703e-07))) * _1591);
                break;
            } while(false);
            highp vec3 _1620 = _1538.xyz;
            highp vec3 _1622 = _Globals._ReflectionColor.xyz * _1318;
            highp vec3 _1627 = _Globals._ReflectionColor.xyz * _1318 + _1620;
            highp vec3 _1628 = _1620 * _1622;
            bvec3 _1630 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1631 = vec3(_1630.x ? _1622.x : _316.x, _1630.y ? _1622.y : _316.y, _1630.z ? _1622.z : _316.z);
            bvec3 _1633 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1641;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1639 = (-_1620) * _1622 + _1627;
                bvec3 _2532 = isnan(_1639);
                bvec3 _2533 = isnan(_1620);
                highp vec3 _2534 = max(_1639, _1620);
                highp vec3 _2535 = vec3(_2532.x ? _1620.x : _2534.x, _2532.y ? _1620.y : _2534.y, _2532.z ? _1620.z : _2534.z);
                _1641 = vec3(_2533.x ? _1639.x : _2535.x, _2533.y ? _1639.y : _2535.y, _2533.z ? _1639.z : _2535.z);
            }
            else
            {
                _1641 = vec3(_1633.x ? _1627.x : _1631.x, _1633.y ? _1627.y : _1631.y, _1633.z ? _1627.z : _1631.z);
            }
            bvec3 _1643 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1645 = mix(_1620, vec3(_1643.x ? _1628.x : _1641.x, _1643.y ? _1628.y : _1641.y, _1643.z ? _1628.z : _1641.z), _1619 * _Globals._ReflectionColor.w);
            _1647 = vec4(_1645.x, _1645.y, _1645.z, _1508.w);
        }
        else
        {
            _1647 = vec4(_1538.x, _1538.y, _1538.z, _1508.w);
        }
        highp vec4 _1750;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1669 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1676 = reflect(-_433, mix(_645, _640, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1679 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1676, _1532 * ((-4.19999980926513671875) * _1532 + 10.19999980926513671875));
            highp vec3 _1699 = ((_1679.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1679.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1318, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1705 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1676, _1532 * 8.0).xyz * 1.0;
            highp float _1716 = 1.0 - _642;
            highp vec3 _1730 = _1647.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1731 = _1647.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1733 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1734 = vec3(_1733.x ? _Globals._ReflectionColor.xyz.x : _316.x, _1733.y ? _Globals._ReflectionColor.xyz.y : _316.y, _1733.z ? _Globals._ReflectionColor.xyz.z : _316.z);
            bvec3 _1736 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1744;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1742 = (-_1647.xyz) * _Globals._ReflectionColor.xyz + _1730;
                bvec3 _2537 = isnan(_1742);
                bvec3 _2538 = isnan(_1647.xyz);
                highp vec3 _2539 = max(_1742, _1647.xyz);
                highp vec3 _2540 = vec3(_2537.x ? _1647.xyz.x : _2539.x, _2537.y ? _1647.xyz.y : _2539.y, _2537.z ? _1647.xyz.z : _2539.z);
                _1744 = vec3(_2538.x ? _1742.x : _2540.x, _2538.y ? _1742.y : _2540.y, _2538.z ? _1742.z : _2540.z);
            }
            else
            {
                _1744 = vec3(_1736.x ? _1730.x : _1734.x, _1736.y ? _1730.y : _1734.y, _1736.z ? _1730.z : _1734.z);
            }
            bvec3 _1746 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1748 = mix(_1647.xyz, vec3(_1746.x ? _1731.x : _1744.x, _1746.y ? _1731.y : _1744.y, _1746.z ? _1731.z : _1744.z), ((vec3(_1669.x ? _1699.x : _1705.x, _1669.y ? _1699.y : _1705.y, _1669.z ? _1699.z : _1705.z) * (1.0 / (_1533 * _1533 + 1.0))) * mix(_1544, vec3(clamp(_1531 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1716 * _1716) * _1716) * _1716) * _1716))) * _Globals._ReflectionColor.w);
            _1750 = vec4(_1748.x, _1748.y, _1748.z, _1647.w);
        }
        else
        {
            _1750 = _1647;
        }
        _1751 = _1750;
    }
    else
    {
        _1751 = _1508;
    }
    highp vec4 _1857;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _1777 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1778 = vec3(_1777.x ? _433.x : _341.x, _1777.y ? _433.y : _341.y, _1777.z ? _433.z : _341.z);
        bvec3 _1779 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1780 = vec3(_1779.x ? vec3(0.0, 1.0, 0.0).x : _348.x, _1779.y ? vec3(0.0, 1.0, 0.0).y : _348.y, _1779.z ? vec3(0.0, 1.0, 0.0).z : _348.z);
        highp vec3 _1784 = normalize(_1780 - (_1778 * dot(_1778, _1780)));
        highp vec4 _1806 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_645, _640, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_1778, _1784), _1784, _1778)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1807 = _1806.xyz;
        highp float _1813 = _1806.w;
        highp vec3 _1823 = mix(_1807, _1807 * _1318, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1830 = mix(_1823, _1823 * _1139.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1837 = _1751.xyz + _1830;
        highp vec3 _1838 = _1751.xyz * _1830;
        bvec3 _1840 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1841 = vec3(_1840.x ? _1830.x : _316.x, _1840.y ? _1830.y : _316.y, _1840.z ? _1830.z : _316.z);
        bvec3 _1843 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1851;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1849 = (-_1751.xyz) * _1830 + _1837;
            bvec3 _2542 = isnan(_1849);
            bvec3 _2543 = isnan(_1751.xyz);
            highp vec3 _2544 = max(_1849, _1751.xyz);
            highp vec3 _2545 = vec3(_2542.x ? _1751.xyz.x : _2544.x, _2542.y ? _1751.xyz.y : _2544.y, _2542.z ? _1751.xyz.z : _2544.z);
            _1851 = vec3(_2543.x ? _1849.x : _2545.x, _2543.y ? _1849.y : _2545.y, _2543.z ? _1849.z : _2545.z);
        }
        else
        {
            _1851 = vec3(_1843.x ? _1837.x : _1841.x, _1843.y ? _1837.y : _1841.y, _1843.z ? _1837.z : _1841.z);
        }
        bvec3 _1853 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1855 = mix(_1751.xyz, vec3(_1853.x ? _1838.x : _1851.x, _1853.y ? _1838.y : _1851.y, _1853.z ? _1838.z : _1851.z), vec3(1.0) * (_Globals._MatCapBlend * ((_365 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1813, _1813 * _1319, _Globals._MatCapShadowMask))));
        _1857 = vec4(_1855.x, _1855.y, _1855.z, _1751.w);
    }
    else
    {
        _1857 = _1751;
    }
    highp vec4 _1962;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _1882 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1883 = vec3(_1882.x ? _433.x : _341.x, _1882.y ? _433.y : _341.y, _1882.z ? _433.z : _341.z);
        bvec3 _1884 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1885 = vec3(_1884.x ? vec3(0.0, 1.0, 0.0).x : _348.x, _1884.y ? vec3(0.0, 1.0, 0.0).y : _348.y, _1884.z ? vec3(0.0, 1.0, 0.0).z : _348.z);
        highp vec3 _1889 = normalize(_1885 - (_1883 * dot(_1883, _1885)));
        highp vec4 _1911 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_645, _640, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_1883, _1889), _1889, _1883)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1912 = _1911.xyz;
        highp float _1918 = _1911.w;
        highp vec3 _1928 = mix(_1912, _1912 * _1318, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1935 = mix(_1928, _1928 * _1139.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1942 = _1857.xyz + _1935;
        highp vec3 _1943 = _1857.xyz * _1935;
        bvec3 _1945 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1946 = vec3(_1945.x ? _1935.x : _316.x, _1945.y ? _1935.y : _316.y, _1945.z ? _1935.z : _316.z);
        bvec3 _1948 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1956;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1954 = (-_1857.xyz) * _1935 + _1942;
            bvec3 _2547 = isnan(_1954);
            bvec3 _2548 = isnan(_1857.xyz);
            highp vec3 _2549 = max(_1954, _1857.xyz);
            highp vec3 _2550 = vec3(_2547.x ? _1857.xyz.x : _2549.x, _2547.y ? _1857.xyz.y : _2549.y, _2547.z ? _1857.xyz.z : _2549.z);
            _1956 = vec3(_2548.x ? _1954.x : _2550.x, _2548.y ? _1954.y : _2550.y, _2548.z ? _1954.z : _2550.z);
        }
        else
        {
            _1956 = vec3(_1948.x ? _1942.x : _1946.x, _1948.y ? _1942.y : _1946.y, _1948.z ? _1942.z : _1946.z);
        }
        bvec3 _1958 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1960 = mix(_1857.xyz, vec3(_1958.x ? _1943.x : _1956.x, _1958.y ? _1943.y : _1956.y, _1958.z ? _1943.z : _1956.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_365 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1918, _1918 * _1319, _Globals._MatCap2ndShadowMask))));
        _1962 = vec4(_1960.x, _1960.y, _1960.z, _1857.w);
    }
    else
    {
        _1962 = _1857;
    }
    highp vec4 _2108;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1981 = mix(_645, _640, vec3(_Globals._RimNormalStrength));
        highp float _1985 = dot(_417, _1981) * 0.5 + 0.5;
        highp float _2008 = (_365 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1981, _433)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2012 = mix(_2008, _2008 * clamp((_1985 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2013 = _2008 * clamp(((1.0 - _1985) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2023 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2032 = clamp((_2012 - _2023) / clamp(fwidth(_2012) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2023), 0.0, 1.0), 0.0, 1.0);
        highp float _2039 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2049 = clamp((_2013 * _Globals._RimDirStrength + (-_2039)) / clamp(fwidth(_2013 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2039), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2061 = vec3(1.0 - _Globals._RimEnableLighting) + (_1318 * _Globals._RimEnableLighting);
        highp vec3 _2063 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1139.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2064 = _2063 * _2061;
        highp vec3 _2070 = _2063 * _2061 + _1962.xyz;
        highp vec3 _2071 = _1962.xyz * _2064;
        bvec3 _2073 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2074 = vec3(_2073.x ? _2064.x : _316.x, _2073.y ? _2064.y : _316.y, _2073.z ? _2064.z : _316.z);
        bvec3 _2076 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2078 = _Globals._RimBlendMode == 2u;
        highp vec3 _2084;
        if (_2078)
        {
            highp vec3 _2082 = (-_1962.xyz) * _2064 + _2070;
            bvec3 _2552 = isnan(_2082);
            bvec3 _2553 = isnan(_1962.xyz);
            highp vec3 _2554 = max(_2082, _1962.xyz);
            highp vec3 _2555 = vec3(_2552.x ? _1962.xyz.x : _2554.x, _2552.y ? _1962.xyz.y : _2554.y, _2552.z ? _1962.xyz.z : _2554.z);
            _2084 = vec3(_2553.x ? _2082.x : _2555.x, _2553.y ? _2082.y : _2555.y, _2553.z ? _2082.z : _2555.z);
        }
        else
        {
            _2084 = vec3(_2076.x ? _2070.x : _2074.x, _2076.y ? _2070.y : _2074.y, _2076.z ? _2070.z : _2074.z);
        }
        bvec3 _2086 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2089 = mix(_1962.xyz, vec3(_2086.x ? _2071.x : _2084.x, _2086.y ? _2071.y : _2084.y, _2086.z ? _2071.z : _2084.z), vec3(mix(_2032, _2032 * _1319, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2091 = _Globals._RimIndirColor.xyz * _2061;
        highp vec3 _2095 = _Globals._RimIndirColor.xyz * _2061 + _2089;
        highp vec3 _2096 = _2089 * _2091;
        highp vec3 _2097 = vec3(_2073.x ? _2091.x : _316.x, _2073.y ? _2091.y : _316.y, _2073.z ? _2091.z : _316.z);
        highp vec3 _2104;
        if (_2078)
        {
            highp vec3 _2102 = (-_2089) * _2091 + _2095;
            bvec3 _2557 = isnan(_2102);
            bvec3 _2558 = isnan(_2089);
            highp vec3 _2559 = max(_2102, _2089);
            highp vec3 _2560 = vec3(_2557.x ? _2089.x : _2559.x, _2557.y ? _2089.y : _2559.y, _2557.z ? _2089.z : _2559.z);
            _2104 = vec3(_2558.x ? _2102.x : _2560.x, _2558.y ? _2102.y : _2560.y, _2558.z ? _2102.z : _2560.z);
        }
        else
        {
            _2104 = vec3(_2076.x ? _2095.x : _2097.x, _2076.y ? _2095.y : _2097.y, _2076.z ? _2095.z : _2097.z);
        }
        highp vec3 _2106 = mix(_2089, vec3(_2086.x ? _2096.x : _2104.x, _2086.y ? _2096.y : _2104.y, _2086.z ? _2096.z : _2104.z), vec3(mix(_2049, _2049 * _1319, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2108 = vec4(_2106.x, _2106.y, _2106.z, _1962.w);
    }
    else
    {
        _2108 = _1962;
    }
    highp vec4 _2222;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2119 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2120 = vec2(_2119.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2119.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2122 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2123 = vec2(_2122.x ? out_var_TEXCOORD1.xy.x : _2120.x, _2122.y ? out_var_TEXCOORD1.xy.y : _2120.y);
        bvec2 _2125 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2126 = vec2(_2125.x ? out_var_TEXCOORD1.zw.x : _2123.x, _2125.y ? out_var_TEXCOORD1.zw.y : _2123.y);
        bvec2 _2128 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2145 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2146 = sin(_2145);
        highp float _2147 = cos(_2145);
        highp vec2 _2148 = ((vec2(_2128.x ? _644.x : _2126.x, _2128.y ? _644.y : _2126.y) + (_448 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2149 = _2148.x;
        highp float _2150 = _2148.y;
        highp vec4 _2163 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2149 * _2147 + (-(_2150 * _2146)), _2149 * _2146 + (_2150 * _2147)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2164 = _Globals._EmissionColor * _2163;
        highp vec3 _2165 = _2164.xyz;
        highp vec3 _2171 = mix(_2165, _2165 * _421, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2185 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2191;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2191 = roundEven(_2185);
        }
        else
        {
            _2191 = _2185;
        }
        highp vec3 _2198 = mix(_2171, _2171 * _1139.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2202 = _2108.xyz + _2198;
        highp vec3 _2203 = _2108.xyz * _2198;
        bvec3 _2205 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2206 = vec3(_2205.x ? _2198.x : _316.x, _2205.y ? _2198.y : _316.y, _2205.z ? _2198.z : _316.z);
        bvec3 _2208 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2216;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2214 = (-_2108.xyz) * _2198 + _2202;
            bvec3 _2562 = isnan(_2214);
            bvec3 _2563 = isnan(_2108.xyz);
            highp vec3 _2564 = max(_2214, _2108.xyz);
            highp vec3 _2565 = vec3(_2562.x ? _2108.xyz.x : _2564.x, _2562.y ? _2108.xyz.y : _2564.y, _2562.z ? _2108.xyz.z : _2564.z);
            _2216 = vec3(_2563.x ? _2214.x : _2565.x, _2563.y ? _2214.y : _2565.y, _2563.z ? _2214.z : _2565.z);
        }
        else
        {
            _2216 = vec3(_2208.x ? _2202.x : _2206.x, _2208.y ? _2202.y : _2206.y, _2208.z ? _2202.z : _2206.z);
        }
        bvec3 _2218 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2220 = mix(_2108.xyz, vec3(_2218.x ? _2203.x : _2216.x, _2218.y ? _2203.y : _2216.y, _2218.z ? _2203.z : _2216.z), vec3((_Globals._EmissionBlend * mix(1.0, _2191, _Globals._EmissionBlink.x)) * _2164.w));
        _2222 = vec4(_2220.x, _2220.y, _2220.z, _2108.w);
    }
    else
    {
        _2222 = _2108;
    }
    highp vec4 _2336;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2233 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2234 = vec2(_2233.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2233.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2236 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2237 = vec2(_2236.x ? out_var_TEXCOORD1.xy.x : _2234.x, _2236.y ? out_var_TEXCOORD1.xy.y : _2234.y);
        bvec2 _2239 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2240 = vec2(_2239.x ? out_var_TEXCOORD1.zw.x : _2237.x, _2239.y ? out_var_TEXCOORD1.zw.y : _2237.y);
        bvec2 _2242 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2259 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2260 = sin(_2259);
        highp float _2261 = cos(_2259);
        highp vec2 _2262 = ((vec2(_2242.x ? _644.x : _2240.x, _2242.y ? _644.y : _2240.y) + (_448 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2263 = _2262.x;
        highp float _2264 = _2262.y;
        highp vec4 _2277 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2263 * _2261 + (-(_2264 * _2260)), _2263 * _2260 + (_2264 * _2261)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2278 = _Globals._Emission2ndColor * _2277;
        highp vec3 _2279 = _2278.xyz;
        highp vec3 _2285 = mix(_2279, _2279 * _421, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2299 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2305;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2305 = roundEven(_2299);
        }
        else
        {
            _2305 = _2299;
        }
        highp vec3 _2312 = mix(_2285, _2285 * _1139.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2316 = _2222.xyz + _2312;
        highp vec3 _2317 = _2222.xyz * _2312;
        bvec3 _2319 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2320 = vec3(_2319.x ? _2312.x : _316.x, _2319.y ? _2312.y : _316.y, _2319.z ? _2312.z : _316.z);
        bvec3 _2322 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2330;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2328 = (-_2222.xyz) * _2312 + _2316;
            bvec3 _2567 = isnan(_2328);
            bvec3 _2568 = isnan(_2222.xyz);
            highp vec3 _2569 = max(_2328, _2222.xyz);
            highp vec3 _2570 = vec3(_2567.x ? _2222.xyz.x : _2569.x, _2567.y ? _2222.xyz.y : _2569.y, _2567.z ? _2222.xyz.z : _2569.z);
            _2330 = vec3(_2568.x ? _2328.x : _2570.x, _2568.y ? _2328.y : _2570.y, _2568.z ? _2328.z : _2570.z);
        }
        else
        {
            _2330 = vec3(_2322.x ? _2316.x : _2320.x, _2322.y ? _2316.y : _2320.y, _2322.z ? _2316.z : _2320.z);
        }
        bvec3 _2332 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2334 = mix(_2222.xyz, vec3(_2332.x ? _2317.x : _2330.x, _2332.y ? _2317.y : _2330.y, _2332.z ? _2317.z : _2330.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2305, _Globals._Emission2ndBlink.x)) * _2278.w));
        _2336 = vec4(_2334.x, _2334.y, _2334.z, _2222.w);
    }
    else
    {
        _2336 = _2222;
    }
    bvec3 _2338 = bvec3(_365 < 0.0);
    highp vec3 _2347 = mix(_2336.xyz, _Globals._BackfaceColor.xyz * _1318, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2382 = vec3(_2338.x ? _2347.x : _2336.xyz.x, _2338.y ? _2347.y : _2336.xyz.y, _2338.z ? _2347.z : _2336.xyz.z).xyz;
    highp vec3 _2390 = mix(_2382, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2382, vec3(pow(clamp(1.0 - abs(dot(_645, _433)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_365 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _426) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2390.x, _2390.y, _2390.z, _2336.w), vec4(out_var_TEXCOORD9));
}
