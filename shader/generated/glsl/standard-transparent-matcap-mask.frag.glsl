#version 300 es
precision mediump float;
precision highp int;

vec3 _330;
vec3 _336;
float _337;

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
    highp vec4 _MatCapBumpMap_ST;
    highp vec4 _MatCap2ndColor;
    highp vec4 _MatCap2ndTex_ST;
    highp vec4 _MatCap2ndBlendMask_ST;
    highp vec4 _MatCap2ndBlendUV1;
    highp vec4 _MatCap2ndBumpMap_ST;
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
    highp float _MatCapBumpScale;
    highp float _MatCap2ndBlend;
    highp float _MatCap2ndEnableLighting;
    highp float _MatCap2ndShadowMask;
    highp float _MatCap2ndVRParallaxStrength;
    highp float _MatCap2ndBackfaceMask;
    highp float _MatCap2ndLod;
    highp float _MatCap2ndNormalStrength;
    highp float _MatCap2ndMainStrength;
    highp float _MatCap2ndBumpScale;
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
    uint _MatCapCustomNormal;
    uint _UseMatCap2nd;
    uint _MatCap2ndApplyTransparency;
    uint _MatCap2ndPerspective;
    uint _MatCap2ndZRotCancel;
    uint _MatCap2ndCustomNormal;
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
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex;

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
    highp vec3 _357 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _364 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _380 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _389 = float(gl_FrontFacing ? 1 : (-1));
    highp float _440;
    do
    {
        highp vec3 _396 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _397 = _396.xy;
        highp float _403 = _396.z;
        if ((any(lessThan(_397, vec2(0.0))) || any(greaterThan(_397, vec2(1.0)))) || (_403 > 1.0))
        {
            _440 = 1.0;
            break;
        }
        highp float _413 = _403 + _Globals.uShadowBias;
        _440 = (((step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _397), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _397), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _397), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _397), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _441 = normalize(out_var_TEXCOORD7);
    highp vec3 _445 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _449 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _450 = length(_449);
    highp vec3 _457 = normalize(_449);
    highp mat3 _466 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _471 = bvec2(_389 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _472 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _485 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _486 = sin(_485);
    highp float _487 = cos(_485);
    highp vec2 _488 = (vec2(_471.x ? _472.x : out_var_TEXCOORD0.xy.x, _471.y ? _472.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _489 = _488.x;
    highp float _490 = _488.y;
    highp vec2 _501 = (vec2(_489 * _487 + (-(_490 * _486)), _489 * _486 + (_490 * _487)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _505 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _501);
    highp vec3 _512 = pow(abs(_505.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _513 = _512.z;
    highp float _514 = _512.y;
    bvec4 _516 = bvec4(_513 > _514);
    highp vec4 _517 = vec4(_513, _514, -1.0, 0.666666686534881591796875);
    highp vec4 _518 = vec4(_514, _513, 0.0, -0.3333333432674407958984375);
    highp vec4 _519 = vec4(_516.x ? _517.x : _518.x, _516.y ? _517.y : _518.y, _516.z ? _517.z : _518.z, _516.w ? _517.w : _518.w);
    highp float _520 = _519.x;
    highp float _521 = _512.x;
    bvec4 _523 = bvec4(_520 > _521);
    highp vec4 _526 = vec4(_520, _519.yw, _521);
    highp vec4 _528 = vec4(_521, _519.yz, _520);
    highp vec4 _529 = vec4(_523.x ? _526.x : _528.x, _523.y ? _526.y : _528.y, _523.z ? _526.z : _528.z, _523.w ? _526.w : _528.w);
    highp float _534 = _529.x - (isnan(_529.y) ? _529.w : (isnan(_529.w) ? _529.y : min(_529.w, _529.y)));
    highp float _547 = clamp((_534 / (_529.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _550 = clamp(_529.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _564 = vec3((-_550) * _547 + _550) + (clamp(abs((fract(vec3(abs(_529.z + ((_529.w - _529.y) / (6.0 * _534 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_550 * _547));
    highp vec4 _568 = vec4(_564.x, _564.y, _564.z, _505.w) * _Globals._Color;
    highp vec3 _600;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _581 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _501 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _581.w = _581.w * _581.x;
        highp vec2 _592 = ((_581.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _593 = vec3(_592.x, _592.y, _336.z);
        highp vec2 _594 = _592.xy;
        _593.z = sqrt(1.0 - clamp(dot(_594, _594), 0.0, 1.0));
        _600 = _593;
    }
    else
    {
        _600 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _649;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _609 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _610 = vec2(_609.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _609.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _612 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _613 = vec2(_612.x ? out_var_TEXCOORD1.xy.x : _610.x, _612.y ? out_var_TEXCOORD1.xy.y : _610.y);
        bvec2 _615 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _625 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_615.x ? out_var_TEXCOORD1.zw.x : _613.x, _615.y ? out_var_TEXCOORD1.zw.y : _613.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _625.w = _625.w * _625.x;
        highp vec2 _637 = (((_625.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _649 = vec3(_600.xy + _637, _600.z * sqrt(1.0 - clamp(dot(_637, _637), 0.0, 1.0)));
    }
    else
    {
        _649 = _600;
    }
    highp vec3 _651 = normalize(_466 * _649);
    bvec3 _656 = bvec3(_389 < (_Globals._FlipNormal - 1.0));
    highp vec3 _657 = -_651;
    highp vec3 _658 = vec3(_656.x ? _657.x : _651.x, _656.y ? _657.y : _651.y, _656.z ? _657.z : _651.z);
    highp float _660 = clamp(dot(_658, _457), 0.0, 1.0);
    highp vec3 _661 = normalize(out_var_TEXCOORD4);
    highp vec2 _665 = ((_658 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _364, _357)).xy * 0.5) + vec2(0.5);
    bool _666 = out_var_TEXCOORD5.w > 0.0;
    bool _671 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _949;
    highp vec4 _950;
    if (_671)
    {
        bvec2 _677 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _678 = vec2(_677.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _677.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _680 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _681 = vec2(_680.x ? out_var_TEXCOORD1.xy.x : _678.x, _680.y ? out_var_TEXCOORD1.xy.y : _678.y);
        bvec2 _683 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _684 = vec2(_683.x ? out_var_TEXCOORD1.zw.x : _681.x, _683.y ? out_var_TEXCOORD1.zw.y : _681.y);
        bvec2 _686 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _687 = vec2(_686.x ? _665.x : _684.x, _686.y ? _665.y : _684.y);
        highp vec4 _726 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _727 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _735;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _734 = _687;
            _734.x = abs(_687.x - 0.5) + 0.5;
            _735 = _734;
        }
        else
        {
            _735 = _687;
        }
        highp vec2 _736 = _726.xy;
        highp vec2 _737 = _726.zw;
        highp vec2 _738 = _735 * _736 + _737;
        highp vec2 _747;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_687.x < 0.5))
        {
            highp vec2 _746 = _738;
            _746.x = 1.0 - _738.x;
            _747 = _746;
        }
        else
        {
            _747 = _738;
        }
        highp vec2 _754;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _666)
        {
            highp vec2 _753 = _747;
            _753.x = 1.0 - _747.x;
            _754 = _753;
        }
        else
        {
            _754 = _747;
        }
        highp vec2 _759;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _666)
        {
            highp vec2 _758 = _754;
            _758.x = -1.0;
            _759 = _758;
        }
        else
        {
            _759 = _754;
        }
        highp vec2 _765;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_666))
        {
            highp vec2 _764 = _759;
            _764.x = -1.0;
            _765 = _764;
        }
        else
        {
            _765 = _759;
        }
        highp float _768 = sin(_727);
        highp float _769 = cos(_727);
        highp vec2 _770 = ((_765 - _737) / _736) - vec2(0.5);
        highp float _771 = _770.x;
        highp float _772 = _770.y;
        highp vec2 _780 = (vec2(_771 * _769 + (-(_772 * _768)), _771 * _768 + (_772 * _769)) + vec2(0.5)) * _736 + _737;
        uint _784 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _788 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _784 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _784);
        highp float _789 = _780.x;
        highp float _790 = _780.y;
        uint _797 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _807 = ((mix(vec2(_789, 1.0 - _790), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_788 % _797), float(_788 / _797))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _807.y = 1.0 - _807.y;
        highp vec4 _812 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _807);
        highp vec4 _828;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _815 = _812.x;
            highp float _816 = _812.y;
            highp float _817 = _812.z;
            highp float _818 = isnan(_816) ? _815 : (isnan(_815) ? _816 : min(_815, _816));
            highp float _819 = isnan(_816) ? _815 : (isnan(_815) ? _816 : max(_815, _816));
            highp float _820 = isnan(_817) ? _819 : (isnan(_819) ? _817 : min(_819, _817));
            highp float _821 = isnan(_820) ? _818 : (isnan(_818) ? _820 : max(_818, _820));
            _828 = vec4(1.0, 1.0, 1.0, clamp((_821 - 0.5) / clamp(fwidth(_821), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _828 = _812;
        }
        highp vec4 _851;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _832 = clamp(_660 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _835 = 0.5 - abs(_789 - 0.5);
            highp float _842 = 0.5 - abs(_790 - 0.5);
            highp vec4 _850 = _828;
            _850.w = _828.w * (clamp(_835 / clamp(fwidth(_835), 9.9999997473787516355514526367188e-05, _832), 0.0, 1.0) * clamp(_842 / clamp(fwidth(_842), 9.9999997473787516355514526367188e-05, _832), 0.0, 1.0));
            _851 = _850;
        }
        else
        {
            _851 = _828;
        }
        highp vec4 _852 = _Globals._Color2nd * _851;
        highp float _853 = _852.w;
        _852.w = mix(_853, _853 * clamp((_450 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _879;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_389 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_389 < 0.0)))
        {
            highp vec4 _878 = _852;
            _878.w = 0.0;
            _879 = _878;
        }
        else
        {
            _879 = _852;
        }
        highp vec4 _918;
        highp vec4 _919;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _890;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _889 = _568;
                _889.w = _879.w;
                _890 = _889;
            }
            else
            {
                _890 = _568;
            }
            highp vec4 _898;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _897 = _890;
                _897.w = _890.w * _879.w;
                _898 = _897;
            }
            else
            {
                _898 = _890;
            }
            highp vec4 _907;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _906 = _898;
                _906.w = clamp(_898.w + _879.w, 0.0, 1.0);
                _907 = _906;
            }
            else
            {
                _907 = _898;
            }
            highp vec4 _916;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _915 = _907;
                _915.w = clamp(_907.w - _879.w, 0.0, 1.0);
                _916 = _915;
            }
            else
            {
                _916 = _907;
            }
            highp vec4 _917 = _879;
            _917.w = 1.0;
            _918 = _917;
            _919 = _916;
        }
        else
        {
            _918 = _879;
            _919 = _568;
        }
        highp vec3 _929 = _919.xyz + _918.xyz;
        highp vec3 _930 = _919.xyz * _918.xyz;
        bvec3 _932 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _933 = vec3(_932.x ? _918.xyz.x : _330.x, _932.y ? _918.xyz.y : _330.y, _932.z ? _918.xyz.z : _330.z);
        bvec3 _935 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _943;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _941 = (-_919.xyz) * _918.xyz + _929;
            bvec3 _2757 = isnan(_941);
            bvec3 _2758 = isnan(_919.xyz);
            highp vec3 _2759 = max(_941, _919.xyz);
            highp vec3 _2760 = vec3(_2757.x ? _919.xyz.x : _2759.x, _2757.y ? _919.xyz.y : _2759.y, _2757.z ? _919.xyz.z : _2759.z);
            _943 = vec3(_2758.x ? _941.x : _2760.x, _2758.y ? _941.y : _2760.y, _2758.z ? _941.z : _2760.z);
        }
        else
        {
            _943 = vec3(_935.x ? _929.x : _933.x, _935.y ? _929.y : _933.y, _935.z ? _929.z : _933.z);
        }
        bvec3 _945 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _947 = mix(_919.xyz, vec3(_945.x ? _930.x : _943.x, _945.y ? _930.y : _943.y, _945.z ? _930.z : _943.z), vec3(_918.w * _Globals._Main2ndEnableLighting));
        _949 = _918;
        _950 = vec4(_947.x, _947.y, _947.z, _919.w);
    }
    else
    {
        _949 = _Globals._Color2nd;
        _950 = _568;
    }
    bool _955 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1233;
    highp vec4 _1234;
    if (_955)
    {
        bvec2 _961 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _962 = vec2(_961.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _961.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _964 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _965 = vec2(_964.x ? out_var_TEXCOORD1.xy.x : _962.x, _964.y ? out_var_TEXCOORD1.xy.y : _962.y);
        bvec2 _967 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _968 = vec2(_967.x ? out_var_TEXCOORD1.zw.x : _965.x, _967.y ? out_var_TEXCOORD1.zw.y : _965.y);
        bvec2 _970 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _971 = vec2(_970.x ? _665.x : _968.x, _970.y ? _665.y : _968.y);
        highp vec4 _1010 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1011 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1019;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1018 = _971;
            _1018.x = abs(_971.x - 0.5) + 0.5;
            _1019 = _1018;
        }
        else
        {
            _1019 = _971;
        }
        highp vec2 _1020 = _1010.xy;
        highp vec2 _1021 = _1010.zw;
        highp vec2 _1022 = _1019 * _1020 + _1021;
        highp vec2 _1031;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_971.x < 0.5))
        {
            highp vec2 _1030 = _1022;
            _1030.x = 1.0 - _1022.x;
            _1031 = _1030;
        }
        else
        {
            _1031 = _1022;
        }
        highp vec2 _1038;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _666)
        {
            highp vec2 _1037 = _1031;
            _1037.x = 1.0 - _1031.x;
            _1038 = _1037;
        }
        else
        {
            _1038 = _1031;
        }
        highp vec2 _1043;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _666)
        {
            highp vec2 _1042 = _1038;
            _1042.x = -1.0;
            _1043 = _1042;
        }
        else
        {
            _1043 = _1038;
        }
        highp vec2 _1049;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_666))
        {
            highp vec2 _1048 = _1043;
            _1048.x = -1.0;
            _1049 = _1048;
        }
        else
        {
            _1049 = _1043;
        }
        highp float _1052 = sin(_1011);
        highp float _1053 = cos(_1011);
        highp vec2 _1054 = ((_1049 - _1021) / _1020) - vec2(0.5);
        highp float _1055 = _1054.x;
        highp float _1056 = _1054.y;
        highp vec2 _1064 = (vec2(_1055 * _1053 + (-(_1056 * _1052)), _1055 * _1052 + (_1056 * _1053)) + vec2(0.5)) * _1020 + _1021;
        uint _1068 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1072 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1068 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1068);
        highp float _1073 = _1064.x;
        highp float _1074 = _1064.y;
        uint _1081 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1091 = ((mix(vec2(_1073, 1.0 - _1074), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1072 % _1081), float(_1072 / _1081))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1091.y = 1.0 - _1091.y;
        highp vec4 _1096 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1091);
        highp vec4 _1112;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1099 = _1096.x;
            highp float _1100 = _1096.y;
            highp float _1101 = _1096.z;
            highp float _1102 = isnan(_1100) ? _1099 : (isnan(_1099) ? _1100 : min(_1099, _1100));
            highp float _1103 = isnan(_1100) ? _1099 : (isnan(_1099) ? _1100 : max(_1099, _1100));
            highp float _1104 = isnan(_1101) ? _1103 : (isnan(_1103) ? _1101 : min(_1103, _1101));
            highp float _1105 = isnan(_1104) ? _1102 : (isnan(_1102) ? _1104 : max(_1102, _1104));
            _1112 = vec4(1.0, 1.0, 1.0, clamp((_1105 - 0.5) / clamp(fwidth(_1105), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1112 = _1096;
        }
        highp vec4 _1135;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1116 = clamp(_660 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1119 = 0.5 - abs(_1073 - 0.5);
            highp float _1126 = 0.5 - abs(_1074 - 0.5);
            highp vec4 _1134 = _1112;
            _1134.w = _1112.w * (clamp(_1119 / clamp(fwidth(_1119), 9.9999997473787516355514526367188e-05, _1116), 0.0, 1.0) * clamp(_1126 / clamp(fwidth(_1126), 9.9999997473787516355514526367188e-05, _1116), 0.0, 1.0));
            _1135 = _1134;
        }
        else
        {
            _1135 = _1112;
        }
        highp vec4 _1136 = _Globals._Color3rd * _1135;
        highp float _1137 = _1136.w;
        _1136.w = mix(_1137, _1137 * clamp((_450 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1163;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_389 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_389 < 0.0)))
        {
            highp vec4 _1162 = _1136;
            _1162.w = 0.0;
            _1163 = _1162;
        }
        else
        {
            _1163 = _1136;
        }
        highp vec4 _1202;
        highp vec4 _1203;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1174;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1173 = _950;
                _1173.w = _1163.w;
                _1174 = _1173;
            }
            else
            {
                _1174 = _950;
            }
            highp vec4 _1182;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1181 = _1174;
                _1181.w = _1174.w * _1163.w;
                _1182 = _1181;
            }
            else
            {
                _1182 = _1174;
            }
            highp vec4 _1191;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1190 = _1182;
                _1190.w = clamp(_1182.w + _1163.w, 0.0, 1.0);
                _1191 = _1190;
            }
            else
            {
                _1191 = _1182;
            }
            highp vec4 _1200;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1199 = _1191;
                _1199.w = clamp(_1191.w - _1163.w, 0.0, 1.0);
                _1200 = _1199;
            }
            else
            {
                _1200 = _1191;
            }
            highp vec4 _1201 = _1163;
            _1201.w = 1.0;
            _1202 = _1201;
            _1203 = _1200;
        }
        else
        {
            _1202 = _1163;
            _1203 = _950;
        }
        highp vec3 _1213 = _1203.xyz + _1202.xyz;
        highp vec3 _1214 = _1203.xyz * _1202.xyz;
        bvec3 _1216 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1217 = vec3(_1216.x ? _1202.xyz.x : _330.x, _1216.y ? _1202.xyz.y : _330.y, _1216.z ? _1202.xyz.z : _330.z);
        bvec3 _1219 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1227;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1225 = (-_1203.xyz) * _1202.xyz + _1213;
            bvec3 _2782 = isnan(_1225);
            bvec3 _2783 = isnan(_1203.xyz);
            highp vec3 _2784 = max(_1225, _1203.xyz);
            highp vec3 _2785 = vec3(_2782.x ? _1203.xyz.x : _2784.x, _2782.y ? _1203.xyz.y : _2784.y, _2782.z ? _1203.xyz.z : _2784.z);
            _1227 = vec3(_2783.x ? _1225.x : _2785.x, _2783.y ? _1225.y : _2785.y, _2783.z ? _1225.z : _2785.z);
        }
        else
        {
            _1227 = vec3(_1219.x ? _1213.x : _1217.x, _1219.y ? _1213.y : _1217.y, _1219.z ? _1213.z : _1217.z);
        }
        bvec3 _1229 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1231 = mix(_1203.xyz, vec3(_1229.x ? _1214.x : _1227.x, _1229.y ? _1214.y : _1227.y, _1229.z ? _1214.z : _1227.z), vec3(_1202.w * _Globals._Main3rdEnableLighting));
        _1233 = _1202;
        _1234 = vec4(_1231.x, _1231.y, _1231.z, _1203.w);
    }
    else
    {
        _1233 = _Globals._Color3rd;
        _1234 = _950;
    }
    highp vec4 _1274;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1245 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1250;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1249 = _1234;
            _1249.w = _1245;
            _1250 = _1249;
        }
        else
        {
            _1250 = _1234;
        }
        highp vec4 _1257;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1256 = _1250;
            _1256.w = _1250.w * _1245;
            _1257 = _1256;
        }
        else
        {
            _1257 = _1250;
        }
        highp vec4 _1265;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1264 = _1257;
            _1264.w = clamp(_1257.w + _1245, 0.0, 1.0);
            _1265 = _1264;
        }
        else
        {
            _1265 = _1257;
        }
        highp vec4 _1273;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1272 = _1265;
            _1272.w = clamp(_1265.w - _1245, 0.0, 1.0);
            _1273 = _1272;
        }
        else
        {
            _1273 = _1265;
        }
        _1274 = _1273;
    }
    else
    {
        _1274 = _1234;
    }
    highp vec4 _1369;
    highp float _1370;
    if ((_380 & 1) != 0)
    {
        highp vec4 _1278 = _1274;
        _1278.w = 1.0;
        highp vec2 _1284 = roundEven(_Globals._DissolveParams.xy);
        highp float _1285 = _1284.x;
        highp vec4 _1358;
        highp float _1359;
        if (_1285 != 0.0)
        {
            highp float _1301;
            highp float _1302;
            if (_1285 == 1.0)
            {
                _1301 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1302 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1301 = 0.0;
                _1302 = 1.0;
            }
            highp float _1333;
            highp float _1334;
            if (_1285 == 2.0)
            {
                highp vec2 _1311 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1322 = (_1284.y == 1.0) ? (vec2(_1311.x * cos(_Globals._DissolvePos.w) + (-(_1311.y * sin(_Globals._DissolvePos.w))), _337) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1333 = 1.0 - clamp(abs(_1322 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1334 = _1302 * float(_1322 > _Globals._DissolveParams.z);
            }
            else
            {
                _1333 = _1301;
                _1334 = _1302;
            }
            highp float _1355;
            highp float _1356;
            if (_1285 == 3.0)
            {
                highp float _1344 = (_1284.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1355 = 1.0 - clamp(abs(_1344 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1356 = _1334 * float(_1344 > _Globals._DissolveParams.z);
            }
            else
            {
                _1355 = _1333;
                _1356 = _1334;
            }
            highp vec4 _1357 = _1278;
            _1357.w = _1356;
            _1358 = _1357;
            _1359 = _1355;
        }
        else
        {
            _1358 = _1278;
            _1359 = 0.0;
        }
        highp vec4 _1365;
        if ((_380 & 2) != 0)
        {
            highp vec4 _1364 = _1358;
            _1364.w = 1.0 - _1358.w;
            _1365 = _1364;
        }
        else
        {
            _1365 = _1358;
        }
        highp vec4 _1368 = _1365;
        _1368.w = _1365.w * _1274.w;
        _1369 = _1368;
        _1370 = _1359;
    }
    else
    {
        _1369 = _1274;
        _1370 = 0.0;
    }
    if ((_1369.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1551;
    highp float _1552;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1403 = clamp(dot(_441, mix(_661, _658, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1406 = clamp(dot(_441, mix(_661, _658, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1409 = clamp(dot(_441, mix(_661, _658, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1413 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1416 = clamp(_440 + distance(_441, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1419 = mix(1.0, _1416, _Globals._ShadowReceive);
        highp float _1420 = _1403 * _1419;
        highp float _1423 = mix(1.0, _1416, _Globals._Shadow2ndReceive);
        highp float _1427 = mix(1.0, _1416, _Globals._Shadow3rdReceive);
        highp float _1438 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1439 = clamp(_1438, 0.0, 1.0);
        highp float _1441 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1454 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1468 = clamp(_1438 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1481 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1496 = (_389 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1497 = clamp((_1403 * _1419 + (-_1439)) / clamp(fwidth(_1420) * _1413 + (_1441 - _1439), 0.0, 1.0), 0.0, 1.0) * _1496;
        highp vec3 _1529 = mix(mix(_1369.xyz * _Globals._ShadowColor.xyz, (_1369.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1406 * _1423 + (-_1454)) / clamp(fwidth(_1406 * _1423) * _1413 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1454), 0.0, 1.0), 0.0, 1.0) * _1496)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1369.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1409 * _1427 + (-_1481)) / clamp(fwidth(_1409 * _1427) * _1413 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1481), 0.0, 1.0), 0.0, 1.0) * _1496)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1535 = _1369.xyz * out_var_TEXCOORD6;
        highp vec3 _1541 = mix(mix(_1529, _1529 * _1369.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1369.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2787 = isnan(_1541);
        bvec3 _2788 = isnan(_1535);
        highp vec3 _2789 = min(_1541, _1535);
        highp vec3 _2790 = vec3(_2787.x ? _1535.x : _2789.x, _2787.y ? _1535.y : _2789.y, _2787.z ? _1535.z : _2789.z);
        highp vec3 _1549 = mix(mix(vec3(_2788.x ? _1541.x : _2790.x, _2788.y ? _1541.y : _2790.y, _2788.z ? _1541.z : _2790.z), _1535, _Globals._ShadowBorderColor.xyz * (clamp((_1403 * _1419 + (-_1468)) / clamp(fwidth(_1420) * _1413 + (_1441 - _1468), 0.0, 1.0), 0.0, 1.0) * _1496)), _1535, vec3(mix(1.0, _1497, _Globals._ShadowStrength)));
        _1551 = vec4(_1549.x, _1549.y, _1549.z, _1369.w);
        _1552 = _1497;
    }
    else
    {
        highp vec3 _1385 = _1369.xyz * out_var_TEXCOORD6;
        _1551 = vec4(_1385.x, _1385.y, _1385.z, _1369.w);
        _1552 = 1.0;
    }
    highp vec3 _1555 = vec3(_Globals._LightMaxLimit);
    bvec3 _2792 = isnan(out_var_TEXCOORD6);
    bvec3 _2793 = isnan(_1555);
    highp vec3 _2794 = min(out_var_TEXCOORD6, _1555);
    highp vec3 _2795 = vec3(_2792.x ? _1555.x : _2794.x, _2792.y ? _1555.y : _2794.y, _2792.z ? _1555.z : _2794.z);
    highp vec3 _1556 = vec3(_2793.x ? out_var_TEXCOORD6.x : _2795.x, _2793.y ? out_var_TEXCOORD6.y : _2795.y, _2793.z ? out_var_TEXCOORD6.z : _2795.z);
    highp float _1557 = clamp(_1552, 0.0, 1.0);
    highp vec3 _1559 = _1369.xyz * _Globals._LightMaxLimit;
    bvec3 _2797 = isnan(_1551.xyz);
    bvec3 _2798 = isnan(_1559);
    highp vec3 _2799 = min(_1551.xyz, _1559);
    highp vec3 _2800 = vec3(_2797.x ? _1559.x : _2799.x, _2797.y ? _1559.y : _2799.y, _2797.z ? _1559.z : _2799.z);
    highp vec3 _1560 = vec3(_2798.x ? _1551.xyz.x : _2800.x, _2798.y ? _1551.xyz.y : _2800.y, _2798.z ? _1551.xyz.z : _2800.z);
    highp vec4 _1594;
    if (_671)
    {
        highp vec3 _1564 = _1560.xyz;
        highp vec3 _1574 = _1564 + _949.xyz;
        highp vec3 _1575 = _1564 * _949.xyz;
        bvec3 _1577 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1578 = vec3(_1577.x ? _949.xyz.x : _330.x, _1577.y ? _949.xyz.y : _330.y, _1577.z ? _949.xyz.z : _330.z);
        bvec3 _1580 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1588;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1586 = (-_1564) * _949.xyz + _1574;
            bvec3 _2802 = isnan(_1586);
            bvec3 _2803 = isnan(_1564);
            highp vec3 _2804 = max(_1586, _1564);
            highp vec3 _2805 = vec3(_2802.x ? _1564.x : _2804.x, _2802.y ? _1564.y : _2804.y, _2802.z ? _1564.z : _2804.z);
            _1588 = vec3(_2803.x ? _1586.x : _2805.x, _2803.y ? _1586.y : _2805.y, _2803.z ? _1586.z : _2805.z);
        }
        else
        {
            _1588 = vec3(_1580.x ? _1574.x : _1578.x, _1580.y ? _1574.y : _1578.y, _1580.z ? _1574.z : _1578.z);
        }
        bvec3 _1590 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1592 = mix(_1564, vec3(_1590.x ? _1575.x : _1588.x, _1590.y ? _1575.y : _1588.y, _1590.z ? _1575.z : _1588.z), vec3((-_949.w) * _Globals._Main2ndEnableLighting + _949.w));
        _1594 = vec4(_1592.x, _1592.y, _1592.z, _1551.w);
    }
    else
    {
        _1594 = vec4(_1560.x, _1560.y, _1560.z, _1551.w);
    }
    highp vec4 _1627;
    if (_955)
    {
        highp vec3 _1607 = _1594.xyz + _1233.xyz;
        highp vec3 _1608 = _1594.xyz * _1233.xyz;
        bvec3 _1610 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1611 = vec3(_1610.x ? _1233.xyz.x : _330.x, _1610.y ? _1233.xyz.y : _330.y, _1610.z ? _1233.xyz.z : _330.z);
        bvec3 _1613 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1621;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1619 = (-_1594.xyz) * _1233.xyz + _1607;
            bvec3 _2807 = isnan(_1619);
            bvec3 _2808 = isnan(_1594.xyz);
            highp vec3 _2809 = max(_1619, _1594.xyz);
            highp vec3 _2810 = vec3(_2807.x ? _1594.xyz.x : _2809.x, _2807.y ? _1594.xyz.y : _2809.y, _2807.z ? _1594.xyz.z : _2809.z);
            _1621 = vec3(_2808.x ? _1619.x : _2810.x, _2808.y ? _1619.y : _2810.y, _2808.z ? _1619.z : _2810.z);
        }
        else
        {
            _1621 = vec3(_1613.x ? _1607.x : _1611.x, _1613.y ? _1607.y : _1611.y, _1613.z ? _1607.z : _1611.z);
        }
        bvec3 _1623 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1625 = mix(_1594.xyz, vec3(_1623.x ? _1608.x : _1621.x, _1623.y ? _1608.y : _1621.y, _1623.z ? _1608.z : _1621.z), vec3((-_1233.w) * _Globals._Main3rdEnableLighting + _1233.w));
        _1627 = vec4(_1625.x, _1625.y, _1625.z, _1594.w);
    }
    else
    {
        _1627 = _1594;
    }
    highp vec4 _1673;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1643 = pow(clamp(1.0 - abs(dot(mix(_661, _658, vec3(_Globals._RimShadeNormalStrength)), _457)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1652 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1671 = mix(_1627.xyz, _1627.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1643 - _1652) / clamp(fwidth(_1643) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1652), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1673 = vec4(_1671.x, _1671.y, _1671.z, _1627.w);
    }
    else
    {
        _1673 = _1627;
    }
    highp vec4 _1746;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1697 = dot(normalize(((-_457) * _Globals._BacklightViewStrength) + _441), mix(_661, _658, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1707;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1707 = _1697 * clamp(_440 + distance(_441, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1707 = _1697;
        }
        highp float _1716 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1744 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1369.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_389 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_457, _441) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1707 - _1716) / clamp(fwidth(_1707) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1716), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1556 + _1673.xyz;
        _1746 = vec4(_1744.x, _1744.y, _1744.z, _1673.w);
    }
    else
    {
        _1746 = _1673;
    }
    highp vec3 _1749 = _1746.xyz * _1746.w;
    highp vec4 _2002;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1760 = dFdx(_658);
        highp vec3 _1761 = abs(_1760);
        highp vec3 _1762 = dFdy(_658);
        highp vec3 _1763 = abs(_1762);
        highp float _1764 = dot(_1761, _1761);
        highp float _1765 = dot(_1763, _1763);
        highp float _1766 = isnan(_1765) ? _1764 : (isnan(_1764) ? _1765 : max(_1764, _1765));
        highp float _1769 = (_1766 / (_1766 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1772 = clamp(1.0 - (isnan(_1769) ? 0.0 : (isnan(0.0) ? _1769 : max(0.0, _1769))), 0.0, 1.0);
        highp float _1773 = isnan(_1772) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1772 : min(_Globals._Smoothness, _1772));
        highp float _1774 = 1.0 - _1773;
        highp float _1775 = _1774 * _1774;
        highp vec3 _1778 = _1749.xyz;
        highp vec3 _1780 = _1778 - (_1778 * _Globals._Metallic);
        highp vec3 _1786 = mix(vec3(_Globals._Reflectance), _1369.xyz, vec3(_Globals._Metallic));
        highp vec4 _1788 = _Globals._ReflectionColor;
        highp vec4 _1797;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1796 = _1788;
            _1796.w = _1788.w * _1746.w;
            _1797 = _1796;
        }
        else
        {
            _1797 = _1788;
        }
        highp vec4 _1898;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1870;
            do
            {
                highp vec3 _1808 = mix(_661, _658, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1810 = normalize(_457 + _441);
                highp float _1812 = clamp(dot(_1808, _1810), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1821 = pow(_1812, 1.0 / _1775);
                    highp float _1828 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1870 = vec3(clamp((_1821 - _1828) / clamp(fwidth(_1821) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1828), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1840 = clamp(dot(_1808, _457), 0.0, 1.0);
                highp float _1842 = clamp(dot(_1808, _441), 0.0, 1.0);
                highp float _1845 = isnan(0.00200000009499490261077880859375) ? _1775 : (isnan(_1775) ? 0.00200000009499490261077880859375 : max(_1775, 0.00200000009499490261077880859375));
                highp float _1846 = 1.0 - _1845;
                highp float _1850 = _1845 * _1845;
                highp float _1853 = (_1812 * _1850 + (-_1812)) * _1812 + 1.0;
                highp float _1861 = 1.0 - clamp(dot(_441, _1810), 0.0, 1.0);
                _1870 = (_1786 + ((((((vec3(1.0) - _1786) * _1861) * _1861) * _1861) * _1861) * _1861)) * (((0.5 / ((_1842 * (_1840 * _1846 + _1845) + (_1840 * (_1842 * _1846 + _1845))) + 9.9999997473787516355514526367188e-06)) * (_1850 / (_1853 * _1853 + 1.0000000116860974230803549289703e-07))) * _1842);
                break;
            } while(false);
            highp vec3 _1871 = _1780.xyz;
            highp vec3 _1873 = _1797.xyz * _1556;
            highp vec3 _1878 = _1797.xyz * _1556 + _1871;
            highp vec3 _1879 = _1871 * _1873;
            bvec3 _1881 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1882 = vec3(_1881.x ? _1873.x : _330.x, _1881.y ? _1873.y : _330.y, _1881.z ? _1873.z : _330.z);
            bvec3 _1884 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1892;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1890 = (-_1871) * _1873 + _1878;
                bvec3 _2832 = isnan(_1890);
                bvec3 _2833 = isnan(_1871);
                highp vec3 _2834 = max(_1890, _1871);
                highp vec3 _2835 = vec3(_2832.x ? _1871.x : _2834.x, _2832.y ? _1871.y : _2834.y, _2832.z ? _1871.z : _2834.z);
                _1892 = vec3(_2833.x ? _1890.x : _2835.x, _2833.y ? _1890.y : _2835.y, _2833.z ? _1890.z : _2835.z);
            }
            else
            {
                _1892 = vec3(_1884.x ? _1878.x : _1882.x, _1884.y ? _1878.y : _1882.y, _1884.z ? _1878.z : _1882.z);
            }
            bvec3 _1894 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1896 = mix(_1871, vec3(_1894.x ? _1879.x : _1892.x, _1894.y ? _1879.y : _1892.y, _1894.z ? _1879.z : _1892.z), _1870 * _1797.w);
            _1898 = vec4(_1896.x, _1896.y, _1896.z, _1746.w);
        }
        else
        {
            _1898 = vec4(_1780.x, _1780.y, _1780.z, _1746.w);
        }
        highp vec4 _2001;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1920 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1927 = reflect(-_457, mix(_661, _658, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1930 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1927, _1774 * ((-4.19999980926513671875) * _1774 + 10.19999980926513671875));
            highp vec3 _1950 = ((_1930.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1930.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1556, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1956 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1927, _1774 * 8.0).xyz * 1.0;
            highp float _1967 = 1.0 - _660;
            highp vec3 _1981 = _1898.xyz + _1797.xyz;
            highp vec3 _1982 = _1898.xyz * _1797.xyz;
            bvec3 _1984 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1985 = vec3(_1984.x ? _1797.xyz.x : _330.x, _1984.y ? _1797.xyz.y : _330.y, _1984.z ? _1797.xyz.z : _330.z);
            bvec3 _1987 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1995;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1993 = (-_1898.xyz) * _1797.xyz + _1981;
                bvec3 _2837 = isnan(_1993);
                bvec3 _2838 = isnan(_1898.xyz);
                highp vec3 _2839 = max(_1993, _1898.xyz);
                highp vec3 _2840 = vec3(_2837.x ? _1898.xyz.x : _2839.x, _2837.y ? _1898.xyz.y : _2839.y, _2837.z ? _1898.xyz.z : _2839.z);
                _1995 = vec3(_2838.x ? _1993.x : _2840.x, _2838.y ? _1993.y : _2840.y, _2838.z ? _1993.z : _2840.z);
            }
            else
            {
                _1995 = vec3(_1987.x ? _1981.x : _1985.x, _1987.y ? _1981.y : _1985.y, _1987.z ? _1981.z : _1985.z);
            }
            bvec3 _1997 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1999 = mix(_1898.xyz, vec3(_1997.x ? _1982.x : _1995.x, _1997.y ? _1982.y : _1995.y, _1997.z ? _1982.z : _1995.z), ((vec3(_1920.x ? _1950.x : _1956.x, _1920.y ? _1950.y : _1956.y, _1920.z ? _1950.z : _1956.z) * (1.0 / (_1775 * _1775 + 1.0))) * mix(_1786, vec3(clamp(_1773 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1967 * _1967) * _1967) * _1967) * _1967))) * _1797.w);
            _2001 = vec4(_1999.x, _1999.y, _1999.z, _1898.w);
        }
        else
        {
            _2001 = _1898;
        }
        _2002 = _2001;
    }
    else
    {
        _2002 = vec4(_1749.x, _1749.y, _1749.z, _1746.w);
    }
    highp vec4 _2165;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2047;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2024 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _501 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2024.w = _2024.w * _2024.x;
            highp vec2 _2035 = ((_2024.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2036 = vec3(_2035.x, _2035.y, _336.z);
            highp vec2 _2037 = _2035.xy;
            _2036.z = sqrt(1.0 - clamp(dot(_2037, _2037), 0.0, 1.0));
            highp vec3 _2044 = normalize(_466 * _2036);
            highp vec3 _2045 = -_2044;
            _2047 = vec3(_656.x ? _2045.x : _2044.x, _656.y ? _2045.y : _2044.y, _656.z ? _2045.z : _2044.z);
        }
        else
        {
            _2047 = mix(_661, _658, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2064 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2065 = vec3(_2064.x ? _457.x : _357.x, _2064.y ? _457.y : _357.y, _2064.z ? _457.z : _357.z);
        bvec3 _2066 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2067 = vec3(_2066.x ? vec3(0.0, 1.0, 0.0).x : _364.x, _2066.y ? vec3(0.0, 1.0, 0.0).y : _364.y, _2066.z ? vec3(0.0, 1.0, 0.0).z : _364.z);
        highp vec3 _2071 = normalize(_2067 - (_2065 * dot(_2065, _2067)));
        highp vec4 _2093 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2047) * mat3(cross(_2065, _2071), _2071, _2065)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2099 = mix(_2093.xyz, _2093.xyz * _1556, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2100 = vec4(_2099.x, _2099.y, _2099.z, _2093.w);
        highp float _2105 = mix(_2093.w, _2093.w * _1557, _Globals._MatCapShadowMask);
        _2100.w = _2105;
        highp vec4 _2115;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2114 = _2100;
            _2114.w = _2105 * _2002.w;
            _2115 = _2114;
        }
        else
        {
            _2115 = _2100;
        }
        highp vec4 _2129 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _501 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2138 = mix(_2115.xyz, _2115.xyz * _1369.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2145 = _2002.xyz + _2138;
        highp vec3 _2146 = _2002.xyz * _2138;
        bvec3 _2148 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2149 = vec3(_2148.x ? _2138.x : _330.x, _2148.y ? _2138.y : _330.y, _2148.z ? _2138.z : _330.z);
        bvec3 _2151 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2159;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2157 = (-_2002.xyz) * _2138 + _2145;
            bvec3 _2842 = isnan(_2157);
            bvec3 _2843 = isnan(_2002.xyz);
            highp vec3 _2844 = max(_2157, _2002.xyz);
            highp vec3 _2845 = vec3(_2842.x ? _2002.xyz.x : _2844.x, _2842.y ? _2002.xyz.y : _2844.y, _2842.z ? _2002.xyz.z : _2844.z);
            _2159 = vec3(_2843.x ? _2157.x : _2845.x, _2843.y ? _2157.y : _2845.y, _2843.z ? _2157.z : _2845.z);
        }
        else
        {
            _2159 = vec3(_2151.x ? _2145.x : _2149.x, _2151.y ? _2145.y : _2149.y, _2151.z ? _2145.z : _2149.z);
        }
        bvec3 _2161 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2163 = mix(_2002.xyz, vec3(_2161.x ? _2146.x : _2159.x, _2161.y ? _2146.y : _2159.y, _2161.z ? _2146.z : _2159.z), _2129.xyz * (_Globals._MatCapBlend * ((_389 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2115.w)));
        _2165 = vec4(_2163.x, _2163.y, _2163.z, _2002.w);
    }
    else
    {
        _2165 = _2002;
    }
    highp vec4 _2327;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2210;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2187 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _501 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2187.w = _2187.w * _2187.x;
            highp vec2 _2198 = ((_2187.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2199 = vec3(_2198.x, _2198.y, _336.z);
            highp vec2 _2200 = _2198.xy;
            _2199.z = sqrt(1.0 - clamp(dot(_2200, _2200), 0.0, 1.0));
            highp vec3 _2207 = normalize(_466 * _2199);
            highp vec3 _2208 = -_2207;
            _2210 = vec3(_656.x ? _2208.x : _2207.x, _656.y ? _2208.y : _2207.y, _656.z ? _2208.z : _2207.z);
        }
        else
        {
            _2210 = mix(_661, _658, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2226 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2227 = vec3(_2226.x ? _457.x : _357.x, _2226.y ? _457.y : _357.y, _2226.z ? _457.z : _357.z);
        bvec3 _2228 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2229 = vec3(_2228.x ? vec3(0.0, 1.0, 0.0).x : _364.x, _2228.y ? vec3(0.0, 1.0, 0.0).y : _364.y, _2228.z ? vec3(0.0, 1.0, 0.0).z : _364.z);
        highp vec3 _2233 = normalize(_2229 - (_2227 * dot(_2227, _2229)));
        highp vec4 _2255 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2210 * mat3(cross(_2227, _2233), _2233, _2227)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2256 = _2255.xyz;
        highp vec3 _2261 = mix(_2256, _2256 * _1556, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2262 = vec4(_2261.x, _2261.y, _2261.z, _2255.w);
        highp float _2263 = _2255.w;
        highp float _2267 = mix(_2263, _2263 * _1557, _Globals._MatCap2ndShadowMask);
        _2262.w = _2267;
        highp vec4 _2277;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2276 = _2262;
            _2276.w = _2267 * _2165.w;
            _2277 = _2276;
        }
        else
        {
            _2277 = _2262;
        }
        highp vec4 _2291 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _501 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2300 = mix(_2277.xyz, _2277.xyz * _1369.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2307 = _2165.xyz + _2300;
        highp vec3 _2308 = _2165.xyz * _2300;
        bvec3 _2310 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2311 = vec3(_2310.x ? _2300.x : _330.x, _2310.y ? _2300.y : _330.y, _2310.z ? _2300.z : _330.z);
        bvec3 _2313 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2321;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2319 = (-_2165.xyz) * _2300 + _2307;
            bvec3 _2847 = isnan(_2319);
            bvec3 _2848 = isnan(_2165.xyz);
            highp vec3 _2849 = max(_2319, _2165.xyz);
            highp vec3 _2850 = vec3(_2847.x ? _2165.xyz.x : _2849.x, _2847.y ? _2165.xyz.y : _2849.y, _2847.z ? _2165.xyz.z : _2849.z);
            _2321 = vec3(_2848.x ? _2319.x : _2850.x, _2848.y ? _2319.y : _2850.y, _2848.z ? _2319.z : _2850.z);
        }
        else
        {
            _2321 = vec3(_2313.x ? _2307.x : _2311.x, _2313.y ? _2307.y : _2311.y, _2313.z ? _2307.z : _2311.z);
        }
        bvec3 _2323 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2325 = mix(_2165.xyz, vec3(_2323.x ? _2308.x : _2321.x, _2323.y ? _2308.y : _2321.y, _2323.z ? _2308.z : _2321.z), _2291.xyz * (_Globals._MatCap2ndBlend * ((_389 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2277.w)));
        _2327 = vec4(_2325.x, _2325.y, _2325.z, _2165.w);
    }
    else
    {
        _2327 = _2165;
    }
    highp vec4 _2483;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2346 = mix(_661, _658, vec3(_Globals._RimNormalStrength));
        highp float _2350 = dot(_441, _2346) * 0.5 + 0.5;
        highp float _2373 = (_389 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2346, _457)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2377 = mix(_2373, _2373 * clamp((_2350 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2378 = _2373 * clamp(((1.0 - _2350) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2388 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2397 = clamp((_2377 - _2388) / clamp(fwidth(_2377) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2388), 0.0, 1.0), 0.0, 1.0);
        highp float _2404 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2414 = clamp((_2378 * _Globals._RimDirStrength + (-_2404)) / clamp(fwidth(_2378 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2404), 0.0, 1.0), 0.0, 1.0);
        highp float _2418 = mix(_2397, _2397 * _1557, _Globals._RimShadowMask);
        highp float _2420 = mix(_2414, _2414 * _1557, _Globals._RimShadowMask);
        highp float _2429;
        highp float _2430;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2429 = _2420 * _2327.w;
            _2430 = _2418 * _2327.w;
        }
        else
        {
            _2429 = _2420;
            _2430 = _2418;
        }
        highp vec3 _2436 = vec3(1.0 - _Globals._RimEnableLighting) + (_1556 * _Globals._RimEnableLighting);
        highp vec3 _2438 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1369.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2439 = _2438 * _2436;
        highp vec3 _2445 = _2438 * _2436 + _2327.xyz;
        highp vec3 _2446 = _2327.xyz * _2439;
        bvec3 _2448 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2449 = vec3(_2448.x ? _2439.x : _330.x, _2448.y ? _2439.y : _330.y, _2448.z ? _2439.z : _330.z);
        bvec3 _2451 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2453 = _Globals._RimBlendMode == 2u;
        highp vec3 _2459;
        if (_2453)
        {
            highp vec3 _2457 = (-_2327.xyz) * _2439 + _2445;
            bvec3 _2852 = isnan(_2457);
            bvec3 _2853 = isnan(_2327.xyz);
            highp vec3 _2854 = max(_2457, _2327.xyz);
            highp vec3 _2855 = vec3(_2852.x ? _2327.xyz.x : _2854.x, _2852.y ? _2327.xyz.y : _2854.y, _2852.z ? _2327.xyz.z : _2854.z);
            _2459 = vec3(_2853.x ? _2457.x : _2855.x, _2853.y ? _2457.y : _2855.y, _2853.z ? _2457.z : _2855.z);
        }
        else
        {
            _2459 = vec3(_2451.x ? _2445.x : _2449.x, _2451.y ? _2445.y : _2449.y, _2451.z ? _2445.z : _2449.z);
        }
        bvec3 _2461 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2464 = mix(_2327.xyz, vec3(_2461.x ? _2446.x : _2459.x, _2461.y ? _2446.y : _2459.y, _2461.z ? _2446.z : _2459.z), vec3(_2430 * _Globals._RimColor.w)).xyz;
        highp vec3 _2466 = _Globals._RimIndirColor.xyz * _2436;
        highp vec3 _2470 = _Globals._RimIndirColor.xyz * _2436 + _2464;
        highp vec3 _2471 = _2464 * _2466;
        highp vec3 _2472 = vec3(_2448.x ? _2466.x : _330.x, _2448.y ? _2466.y : _330.y, _2448.z ? _2466.z : _330.z);
        highp vec3 _2479;
        if (_2453)
        {
            highp vec3 _2477 = (-_2464) * _2466 + _2470;
            bvec3 _2857 = isnan(_2477);
            bvec3 _2858 = isnan(_2464);
            highp vec3 _2859 = max(_2477, _2464);
            highp vec3 _2860 = vec3(_2857.x ? _2464.x : _2859.x, _2857.y ? _2464.y : _2859.y, _2857.z ? _2464.z : _2859.z);
            _2479 = vec3(_2858.x ? _2477.x : _2860.x, _2858.y ? _2477.y : _2860.y, _2858.z ? _2477.z : _2860.z);
        }
        else
        {
            _2479 = vec3(_2451.x ? _2470.x : _2472.x, _2451.y ? _2470.y : _2472.y, _2451.z ? _2470.z : _2472.z);
        }
        highp vec3 _2481 = mix(_2464, vec3(_2461.x ? _2471.x : _2479.x, _2461.y ? _2471.y : _2479.y, _2461.z ? _2471.z : _2479.z), vec3(_2429 * _Globals._RimIndirColor.w));
        _2483 = vec4(_2481.x, _2481.y, _2481.z, _2327.w);
    }
    else
    {
        _2483 = _2327;
    }
    highp vec4 _2550;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2497 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _445, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2511 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2517;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2517 = roundEven(_2511);
        }
        else
        {
            _2517 = _2511;
        }
        highp vec3 _2526 = mix(_2497, _2497 * _1369.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2530 = _2483.xyz + _2526;
        highp vec3 _2531 = _2483.xyz * _2526;
        bvec3 _2533 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2534 = vec3(_2533.x ? _2526.x : _330.x, _2533.y ? _2526.y : _330.y, _2533.z ? _2526.z : _330.z);
        bvec3 _2536 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2544;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2542 = (-_2483.xyz) * _2526 + _2530;
            bvec3 _2862 = isnan(_2542);
            bvec3 _2863 = isnan(_2483.xyz);
            highp vec3 _2864 = max(_2542, _2483.xyz);
            highp vec3 _2865 = vec3(_2862.x ? _2483.xyz.x : _2864.x, _2862.y ? _2483.xyz.y : _2864.y, _2862.z ? _2483.xyz.z : _2864.z);
            _2544 = vec3(_2863.x ? _2542.x : _2865.x, _2863.y ? _2542.y : _2865.y, _2863.z ? _2542.z : _2865.z);
        }
        else
        {
            _2544 = vec3(_2536.x ? _2530.x : _2534.x, _2536.y ? _2530.y : _2534.y, _2536.z ? _2530.z : _2534.z);
        }
        bvec3 _2546 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2548 = mix(_2483.xyz, vec3(_2546.x ? _2531.x : _2544.x, _2546.y ? _2531.y : _2544.y, _2546.z ? _2531.z : _2544.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2517, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2483.w));
        _2550 = vec4(_2548.x, _2548.y, _2548.z, _2483.w);
    }
    else
    {
        _2550 = _2483;
    }
    highp vec4 _2617;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2564 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _445, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2578 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2584;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2584 = roundEven(_2578);
        }
        else
        {
            _2584 = _2578;
        }
        highp vec3 _2593 = mix(_2564, _2564 * _1369.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2597 = _2550.xyz + _2593;
        highp vec3 _2598 = _2550.xyz * _2593;
        bvec3 _2600 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2601 = vec3(_2600.x ? _2593.x : _330.x, _2600.y ? _2593.y : _330.y, _2600.z ? _2593.z : _330.z);
        bvec3 _2603 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2611;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2609 = (-_2550.xyz) * _2593 + _2597;
            bvec3 _2867 = isnan(_2609);
            bvec3 _2868 = isnan(_2550.xyz);
            highp vec3 _2869 = max(_2609, _2550.xyz);
            highp vec3 _2870 = vec3(_2867.x ? _2550.xyz.x : _2869.x, _2867.y ? _2550.xyz.y : _2869.y, _2867.z ? _2550.xyz.z : _2869.z);
            _2611 = vec3(_2868.x ? _2609.x : _2870.x, _2868.y ? _2609.y : _2870.y, _2868.z ? _2609.z : _2870.z);
        }
        else
        {
            _2611 = vec3(_2603.x ? _2597.x : _2601.x, _2603.y ? _2597.y : _2601.y, _2603.z ? _2597.z : _2601.z);
        }
        bvec3 _2613 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2615 = mix(_2550.xyz, vec3(_2613.x ? _2598.x : _2611.x, _2613.y ? _2598.y : _2611.y, _2613.z ? _2598.z : _2611.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2584, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2550.w));
        _2617 = vec4(_2615.x, _2615.y, _2615.z, _2550.w);
    }
    else
    {
        _2617 = _2550;
    }
    bvec3 _2627 = bvec3(_389 < 0.0);
    highp vec3 _2628 = (_2617.xyz + ((_Globals._DissolveColor.xyz * _1370) * _2617.w)).xyz;
    highp vec3 _2636 = mix(_2628, _Globals._BackfaceColor.xyz * _1556, vec3(_Globals._BackfaceColor.w));
    highp float _2657 = (_389 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _450) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2671 = vec3(_2627.x ? _2636.x : _2628.x, _2627.y ? _2636.y : _2628.y, _2627.z ? _2636.z : _2628.z).xyz;
    highp vec3 _2682 = mix(_2671, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2671, vec3(pow(clamp(1.0 - abs(dot(_661, _457)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2657));
    highp vec4 _2683 = vec4(_2682.x, _2682.y, _2682.z, _2617.w);
    highp float _2685 = mix(_2617.w, _2617.w * _Globals._DistanceFadeColor.w, _2657);
    _2683.w = _2685;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2685, _2683, vec4(out_var_TEXCOORD9));
}
