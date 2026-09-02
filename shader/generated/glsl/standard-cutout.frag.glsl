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
uniform highp sampler2D SPIRV_Cross_Combined_AlphaMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_DissolveMasksampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;
uniform highp sampler2D SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap;

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
        _440 = (((step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _397), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _397), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _397), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_413, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _397), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _441 = normalize(out_var_TEXCOORD7);
    highp vec3 _445 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _449 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _450 = length(_449);
    highp vec3 _457 = normalize(_449);
    highp mat3 _466 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _467 = _457 * _466;
    highp vec2 _472 = _467.xy / vec2(_467.z + 0.5);
    bvec2 _477 = bvec2(_389 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _478 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _491 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _492 = sin(_491);
    highp float _493 = cos(_491);
    highp vec2 _494 = (vec2(_477.x ? _478.x : out_var_TEXCOORD0.xy.x, _477.y ? _478.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _495 = _494.x;
    highp float _496 = _494.y;
    highp vec2 _507 = (vec2(_495 * _493 + (-(_496 * _492)), _495 * _492 + (_496 * _493)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _511 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _507);
    highp vec3 _518 = pow(abs(_511.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _519 = _518.z;
    highp float _520 = _518.y;
    bvec4 _522 = bvec4(_519 > _520);
    highp vec4 _523 = vec4(_519, _520, -1.0, 0.666666686534881591796875);
    highp vec4 _524 = vec4(_520, _519, 0.0, -0.3333333432674407958984375);
    highp vec4 _525 = vec4(_522.x ? _523.x : _524.x, _522.y ? _523.y : _524.y, _522.z ? _523.z : _524.z, _522.w ? _523.w : _524.w);
    highp float _526 = _525.x;
    highp float _527 = _518.x;
    bvec4 _529 = bvec4(_526 > _527);
    highp vec4 _532 = vec4(_526, _525.yw, _527);
    highp vec4 _534 = vec4(_527, _525.yz, _526);
    highp vec4 _535 = vec4(_529.x ? _532.x : _534.x, _529.y ? _532.y : _534.y, _529.z ? _532.z : _534.z, _529.w ? _532.w : _534.w);
    highp float _540 = _535.x - (isnan(_535.y) ? _535.w : (isnan(_535.w) ? _535.y : min(_535.w, _535.y)));
    highp float _553 = clamp((_540 / (_535.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _556 = clamp(_535.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _570 = vec3((-_556) * _553 + _556) + (clamp(abs((fract(vec3(abs(_535.z + ((_535.w - _535.y) / (6.0 * _540 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_556 * _553));
    highp vec4 _574 = vec4(_570.x, _570.y, _570.z, _511.w) * _Globals._Color;
    highp vec3 _606;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _587 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _507 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _587.w = _587.w * _587.x;
        highp vec2 _598 = ((_587.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _599 = vec3(_598.x, _598.y, _336.z);
        highp vec2 _600 = _598.xy;
        _599.z = sqrt(1.0 - clamp(dot(_600, _600), 0.0, 1.0));
        _606 = _599;
    }
    else
    {
        _606 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _655;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _615 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _616 = vec2(_615.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _615.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _618 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _619 = vec2(_618.x ? out_var_TEXCOORD1.xy.x : _616.x, _618.y ? out_var_TEXCOORD1.xy.y : _616.y);
        bvec2 _621 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _631 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_621.x ? out_var_TEXCOORD1.zw.x : _619.x, _621.y ? out_var_TEXCOORD1.zw.y : _619.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _631.w = _631.w * _631.x;
        highp vec2 _643 = (((_631.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _655 = vec3(_606.xy + _643, _606.z * sqrt(1.0 - clamp(dot(_643, _643), 0.0, 1.0)));
    }
    else
    {
        _655 = _606;
    }
    highp vec3 _657 = normalize(_466 * _655);
    bvec3 _662 = bvec3(_389 < (_Globals._FlipNormal - 1.0));
    highp vec3 _663 = -_657;
    highp vec3 _664 = vec3(_662.x ? _663.x : _657.x, _662.y ? _663.y : _657.y, _662.z ? _663.z : _657.z);
    highp float _665 = dot(_664, _457);
    highp float _666 = clamp(_665, 0.0, 1.0);
    highp vec2 _668 = vec2(abs(_665));
    highp vec3 _669 = normalize(out_var_TEXCOORD4);
    highp vec2 _673 = ((_664 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _364, _357)).xy * 0.5) + vec2(0.5);
    bool _674 = out_var_TEXCOORD5.w > 0.0;
    bool _679 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _957;
    highp vec4 _958;
    if (_679)
    {
        bvec2 _685 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _686 = vec2(_685.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _685.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _688 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _689 = vec2(_688.x ? out_var_TEXCOORD1.xy.x : _686.x, _688.y ? out_var_TEXCOORD1.xy.y : _686.y);
        bvec2 _691 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _692 = vec2(_691.x ? out_var_TEXCOORD1.zw.x : _689.x, _691.y ? out_var_TEXCOORD1.zw.y : _689.y);
        bvec2 _694 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _695 = vec2(_694.x ? _673.x : _692.x, _694.y ? _673.y : _692.y);
        highp vec4 _734 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _735 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _743;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _742 = _695;
            _742.x = abs(_695.x - 0.5) + 0.5;
            _743 = _742;
        }
        else
        {
            _743 = _695;
        }
        highp vec2 _744 = _734.xy;
        highp vec2 _745 = _734.zw;
        highp vec2 _746 = _743 * _744 + _745;
        highp vec2 _755;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_695.x < 0.5))
        {
            highp vec2 _754 = _746;
            _754.x = 1.0 - _746.x;
            _755 = _754;
        }
        else
        {
            _755 = _746;
        }
        highp vec2 _762;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _674)
        {
            highp vec2 _761 = _755;
            _761.x = 1.0 - _755.x;
            _762 = _761;
        }
        else
        {
            _762 = _755;
        }
        highp vec2 _767;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _674)
        {
            highp vec2 _766 = _762;
            _766.x = -1.0;
            _767 = _766;
        }
        else
        {
            _767 = _762;
        }
        highp vec2 _773;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_674))
        {
            highp vec2 _772 = _767;
            _772.x = -1.0;
            _773 = _772;
        }
        else
        {
            _773 = _767;
        }
        highp float _776 = sin(_735);
        highp float _777 = cos(_735);
        highp vec2 _778 = ((_773 - _745) / _744) - vec2(0.5);
        highp float _779 = _778.x;
        highp float _780 = _778.y;
        highp vec2 _788 = (vec2(_779 * _777 + (-(_780 * _776)), _779 * _776 + (_780 * _777)) + vec2(0.5)) * _744 + _745;
        uint _792 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _796 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _792 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _792);
        highp float _797 = _788.x;
        highp float _798 = _788.y;
        uint _805 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _815 = ((mix(vec2(_797, 1.0 - _798), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_796 % _805), float(_796 / _805))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _815.y = 1.0 - _815.y;
        highp vec4 _820 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _815);
        highp vec4 _836;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _823 = _820.x;
            highp float _824 = _820.y;
            highp float _825 = _820.z;
            highp float _826 = isnan(_824) ? _823 : (isnan(_823) ? _824 : min(_823, _824));
            highp float _827 = isnan(_824) ? _823 : (isnan(_823) ? _824 : max(_823, _824));
            highp float _828 = isnan(_825) ? _827 : (isnan(_827) ? _825 : min(_827, _825));
            highp float _829 = isnan(_828) ? _826 : (isnan(_826) ? _828 : max(_826, _828));
            _836 = vec4(1.0, 1.0, 1.0, clamp((_829 - 0.5) / clamp(fwidth(_829), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _836 = _820;
        }
        highp vec4 _859;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _840 = clamp(_666 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _843 = 0.5 - abs(_797 - 0.5);
            highp float _850 = 0.5 - abs(_798 - 0.5);
            highp vec4 _858 = _836;
            _858.w = _836.w * (clamp(_843 / clamp(fwidth(_843), 9.9999997473787516355514526367188e-05, _840), 0.0, 1.0) * clamp(_850 / clamp(fwidth(_850), 9.9999997473787516355514526367188e-05, _840), 0.0, 1.0));
            _859 = _858;
        }
        else
        {
            _859 = _836;
        }
        highp vec4 _860 = _Globals._Color2nd * _859;
        highp float _861 = _860.w;
        _860.w = mix(_861, _861 * clamp((_450 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _887;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_389 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_389 < 0.0)))
        {
            highp vec4 _886 = _860;
            _886.w = 0.0;
            _887 = _886;
        }
        else
        {
            _887 = _860;
        }
        highp vec4 _926;
        highp vec4 _927;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _898;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _897 = _574;
                _897.w = _887.w;
                _898 = _897;
            }
            else
            {
                _898 = _574;
            }
            highp vec4 _906;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _905 = _898;
                _905.w = _898.w * _887.w;
                _906 = _905;
            }
            else
            {
                _906 = _898;
            }
            highp vec4 _915;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _914 = _906;
                _914.w = clamp(_906.w + _887.w, 0.0, 1.0);
                _915 = _914;
            }
            else
            {
                _915 = _906;
            }
            highp vec4 _924;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _923 = _915;
                _923.w = clamp(_915.w - _887.w, 0.0, 1.0);
                _924 = _923;
            }
            else
            {
                _924 = _915;
            }
            highp vec4 _925 = _887;
            _925.w = 1.0;
            _926 = _925;
            _927 = _924;
        }
        else
        {
            _926 = _887;
            _927 = _574;
        }
        highp vec3 _937 = _927.xyz + _926.xyz;
        highp vec3 _938 = _927.xyz * _926.xyz;
        bvec3 _940 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _941 = vec3(_940.x ? _926.xyz.x : _330.x, _940.y ? _926.xyz.y : _330.y, _940.z ? _926.xyz.z : _330.z);
        bvec3 _943 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _951;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _949 = (-_927.xyz) * _926.xyz + _937;
            bvec3 _2741 = isnan(_949);
            bvec3 _2742 = isnan(_927.xyz);
            highp vec3 _2743 = max(_949, _927.xyz);
            highp vec3 _2744 = vec3(_2741.x ? _927.xyz.x : _2743.x, _2741.y ? _927.xyz.y : _2743.y, _2741.z ? _927.xyz.z : _2743.z);
            _951 = vec3(_2742.x ? _949.x : _2744.x, _2742.y ? _949.y : _2744.y, _2742.z ? _949.z : _2744.z);
        }
        else
        {
            _951 = vec3(_943.x ? _937.x : _941.x, _943.y ? _937.y : _941.y, _943.z ? _937.z : _941.z);
        }
        bvec3 _953 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _955 = mix(_927.xyz, vec3(_953.x ? _938.x : _951.x, _953.y ? _938.y : _951.y, _953.z ? _938.z : _951.z), vec3(_926.w * _Globals._Main2ndEnableLighting));
        _957 = _926;
        _958 = vec4(_955.x, _955.y, _955.z, _927.w);
    }
    else
    {
        _957 = _Globals._Color2nd;
        _958 = _574;
    }
    bool _963 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1241;
    highp vec4 _1242;
    if (_963)
    {
        bvec2 _969 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _970 = vec2(_969.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _969.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _972 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _973 = vec2(_972.x ? out_var_TEXCOORD1.xy.x : _970.x, _972.y ? out_var_TEXCOORD1.xy.y : _970.y);
        bvec2 _975 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _976 = vec2(_975.x ? out_var_TEXCOORD1.zw.x : _973.x, _975.y ? out_var_TEXCOORD1.zw.y : _973.y);
        bvec2 _978 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _979 = vec2(_978.x ? _673.x : _976.x, _978.y ? _673.y : _976.y);
        highp vec4 _1018 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1019 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1027;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1026 = _979;
            _1026.x = abs(_979.x - 0.5) + 0.5;
            _1027 = _1026;
        }
        else
        {
            _1027 = _979;
        }
        highp vec2 _1028 = _1018.xy;
        highp vec2 _1029 = _1018.zw;
        highp vec2 _1030 = _1027 * _1028 + _1029;
        highp vec2 _1039;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_979.x < 0.5))
        {
            highp vec2 _1038 = _1030;
            _1038.x = 1.0 - _1030.x;
            _1039 = _1038;
        }
        else
        {
            _1039 = _1030;
        }
        highp vec2 _1046;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _674)
        {
            highp vec2 _1045 = _1039;
            _1045.x = 1.0 - _1039.x;
            _1046 = _1045;
        }
        else
        {
            _1046 = _1039;
        }
        highp vec2 _1051;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _674)
        {
            highp vec2 _1050 = _1046;
            _1050.x = -1.0;
            _1051 = _1050;
        }
        else
        {
            _1051 = _1046;
        }
        highp vec2 _1057;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_674))
        {
            highp vec2 _1056 = _1051;
            _1056.x = -1.0;
            _1057 = _1056;
        }
        else
        {
            _1057 = _1051;
        }
        highp float _1060 = sin(_1019);
        highp float _1061 = cos(_1019);
        highp vec2 _1062 = ((_1057 - _1029) / _1028) - vec2(0.5);
        highp float _1063 = _1062.x;
        highp float _1064 = _1062.y;
        highp vec2 _1072 = (vec2(_1063 * _1061 + (-(_1064 * _1060)), _1063 * _1060 + (_1064 * _1061)) + vec2(0.5)) * _1028 + _1029;
        uint _1076 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1080 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1076 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1076);
        highp float _1081 = _1072.x;
        highp float _1082 = _1072.y;
        uint _1089 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1099 = ((mix(vec2(_1081, 1.0 - _1082), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1080 % _1089), float(_1080 / _1089))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1099.y = 1.0 - _1099.y;
        highp vec4 _1104 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1099);
        highp vec4 _1120;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1107 = _1104.x;
            highp float _1108 = _1104.y;
            highp float _1109 = _1104.z;
            highp float _1110 = isnan(_1108) ? _1107 : (isnan(_1107) ? _1108 : min(_1107, _1108));
            highp float _1111 = isnan(_1108) ? _1107 : (isnan(_1107) ? _1108 : max(_1107, _1108));
            highp float _1112 = isnan(_1109) ? _1111 : (isnan(_1111) ? _1109 : min(_1111, _1109));
            highp float _1113 = isnan(_1112) ? _1110 : (isnan(_1110) ? _1112 : max(_1110, _1112));
            _1120 = vec4(1.0, 1.0, 1.0, clamp((_1113 - 0.5) / clamp(fwidth(_1113), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1120 = _1104;
        }
        highp vec4 _1143;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1124 = clamp(_666 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1127 = 0.5 - abs(_1081 - 0.5);
            highp float _1134 = 0.5 - abs(_1082 - 0.5);
            highp vec4 _1142 = _1120;
            _1142.w = _1120.w * (clamp(_1127 / clamp(fwidth(_1127), 9.9999997473787516355514526367188e-05, _1124), 0.0, 1.0) * clamp(_1134 / clamp(fwidth(_1134), 9.9999997473787516355514526367188e-05, _1124), 0.0, 1.0));
            _1143 = _1142;
        }
        else
        {
            _1143 = _1120;
        }
        highp vec4 _1144 = _Globals._Color3rd * _1143;
        highp float _1145 = _1144.w;
        _1144.w = mix(_1145, _1145 * clamp((_450 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1171;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_389 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_389 < 0.0)))
        {
            highp vec4 _1170 = _1144;
            _1170.w = 0.0;
            _1171 = _1170;
        }
        else
        {
            _1171 = _1144;
        }
        highp vec4 _1210;
        highp vec4 _1211;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1182;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1181 = _958;
                _1181.w = _1171.w;
                _1182 = _1181;
            }
            else
            {
                _1182 = _958;
            }
            highp vec4 _1190;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1189 = _1182;
                _1189.w = _1182.w * _1171.w;
                _1190 = _1189;
            }
            else
            {
                _1190 = _1182;
            }
            highp vec4 _1199;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1198 = _1190;
                _1198.w = clamp(_1190.w + _1171.w, 0.0, 1.0);
                _1199 = _1198;
            }
            else
            {
                _1199 = _1190;
            }
            highp vec4 _1208;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1207 = _1199;
                _1207.w = clamp(_1199.w - _1171.w, 0.0, 1.0);
                _1208 = _1207;
            }
            else
            {
                _1208 = _1199;
            }
            highp vec4 _1209 = _1171;
            _1209.w = 1.0;
            _1210 = _1209;
            _1211 = _1208;
        }
        else
        {
            _1210 = _1171;
            _1211 = _958;
        }
        highp vec3 _1221 = _1211.xyz + _1210.xyz;
        highp vec3 _1222 = _1211.xyz * _1210.xyz;
        bvec3 _1224 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1225 = vec3(_1224.x ? _1210.xyz.x : _330.x, _1224.y ? _1210.xyz.y : _330.y, _1224.z ? _1210.xyz.z : _330.z);
        bvec3 _1227 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1235;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1233 = (-_1211.xyz) * _1210.xyz + _1221;
            bvec3 _2766 = isnan(_1233);
            bvec3 _2767 = isnan(_1211.xyz);
            highp vec3 _2768 = max(_1233, _1211.xyz);
            highp vec3 _2769 = vec3(_2766.x ? _1211.xyz.x : _2768.x, _2766.y ? _1211.xyz.y : _2768.y, _2766.z ? _1211.xyz.z : _2768.z);
            _1235 = vec3(_2767.x ? _1233.x : _2769.x, _2767.y ? _1233.y : _2769.y, _2767.z ? _1233.z : _2769.z);
        }
        else
        {
            _1235 = vec3(_1227.x ? _1221.x : _1225.x, _1227.y ? _1221.y : _1225.y, _1227.z ? _1221.z : _1225.z);
        }
        bvec3 _1237 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1239 = mix(_1211.xyz, vec3(_1237.x ? _1222.x : _1235.x, _1237.y ? _1222.y : _1235.y, _1237.z ? _1222.z : _1235.z), vec3(_1210.w * _Globals._Main3rdEnableLighting));
        _1241 = _1210;
        _1242 = vec4(_1239.x, _1239.y, _1239.z, _1211.w);
    }
    else
    {
        _1241 = _Globals._Color3rd;
        _1242 = _958;
    }
    highp vec4 _1291;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1255 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _507 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1262 = clamp(_1255.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1267;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1266 = _1242;
            _1266.w = _1262;
            _1267 = _1266;
        }
        else
        {
            _1267 = _1242;
        }
        highp vec4 _1274;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1273 = _1267;
            _1273.w = _1267.w * _1262;
            _1274 = _1273;
        }
        else
        {
            _1274 = _1267;
        }
        highp vec4 _1282;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1281 = _1274;
            _1281.w = clamp(_1274.w + _1262, 0.0, 1.0);
            _1282 = _1281;
        }
        else
        {
            _1282 = _1274;
        }
        highp vec4 _1290;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1289 = _1282;
            _1289.w = clamp(_1282.w - _1262, 0.0, 1.0);
            _1290 = _1289;
        }
        else
        {
            _1290 = _1282;
        }
        _1291 = _1290;
    }
    else
    {
        _1291 = _1242;
    }
    highp vec4 _1399;
    highp float _1400;
    if ((_380 & 1) != 0)
    {
        highp vec4 _1295 = _1291;
        _1295.w = 1.0;
        highp vec2 _1304 = roundEven(_Globals._DissolveParams.xy);
        highp float _1305 = _1304.x;
        highp vec4 _1388;
        highp float _1389;
        if (_1305 != 0.0)
        {
            bool _1309 = _1305 == 1.0;
            highp float _1319;
            if (_1309 && true)
            {
                _1319 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1319 = 1.0;
            }
            highp float _1331;
            highp float _1332;
            if (_1309)
            {
                _1331 = 1.0 - clamp(abs(_1319 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1332 = float(_1319 > _Globals._DissolveParams.z);
            }
            else
            {
                _1331 = 0.0;
                _1332 = _1319;
            }
            highp float _1363;
            highp float _1364;
            if (_1305 == 2.0)
            {
                highp vec2 _1341 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1352 = (_1304.y == 1.0) ? (vec2(_1341.x * cos(_Globals._DissolvePos.w) + (-(_1341.y * sin(_Globals._DissolvePos.w))), _337) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1363 = 1.0 - clamp(abs(_1352 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1364 = _1332 * float(_1352 > _Globals._DissolveParams.z);
            }
            else
            {
                _1363 = _1331;
                _1364 = _1332;
            }
            highp float _1385;
            highp float _1386;
            if (_1305 == 3.0)
            {
                highp float _1374 = (_1304.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1385 = 1.0 - clamp(abs(_1374 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1386 = _1364 * float(_1374 > _Globals._DissolveParams.z);
            }
            else
            {
                _1385 = _1363;
                _1386 = _1364;
            }
            highp vec4 _1387 = _1295;
            _1387.w = _1386;
            _1388 = _1387;
            _1389 = _1385;
        }
        else
        {
            _1388 = _1295;
            _1389 = 0.0;
        }
        highp vec4 _1395;
        if ((_380 & 2) != 0)
        {
            highp vec4 _1394 = _1388;
            _1394.w = 1.0 - _1388.w;
            _1395 = _1394;
        }
        else
        {
            _1395 = _1388;
        }
        highp vec4 _1398 = _1395;
        _1398.w = _1395.w * _1291.w;
        _1399 = _1398;
        _1400 = _1389;
    }
    else
    {
        _1399 = _1291;
        _1400 = 0.0;
    }
    highp float _1405 = fwidth(_1399.w);
    highp float _1409 = clamp(((_1399.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1405 : (isnan(_1405) ? 9.9999997473787516355514526367188e-05 : max(_1405, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1410 = _1399;
    _1410.w = _1409;
    if (_1409 == 0.0)
    {
        discard;
    }
    highp vec4 _1587;
    highp float _1588;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1437 = clamp(dot(_441, mix(_669, _664, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1440 = clamp(dot(_441, mix(_669, _664, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1443 = clamp(dot(_441, mix(_669, _664, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1447 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1450 = clamp(_440 + distance(_441, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1453 = mix(1.0, _1450, _Globals._ShadowReceive);
        highp float _1454 = _1437 * _1453;
        highp float _1457 = mix(1.0, _1450, _Globals._Shadow2ndReceive);
        highp float _1461 = mix(1.0, _1450, _Globals._Shadow3rdReceive);
        highp float _1472 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1473 = clamp(_1472, 0.0, 1.0);
        highp float _1475 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1488 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1502 = clamp(_1472 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1515 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1530 = (_389 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1531 = clamp((_1437 * _1453 + (-_1473)) / clamp(fwidth(_1454) * _1447 + (_1475 - _1473), 0.0, 1.0), 0.0, 1.0) * _1530;
        highp vec3 _1563 = mix(mix(_1410.xyz * _Globals._ShadowColor.xyz, (_1410.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1440 * _1457 + (-_1488)) / clamp(fwidth(_1440 * _1457) * _1447 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1488), 0.0, 1.0), 0.0, 1.0) * _1530)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1410.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1443 * _1461 + (-_1515)) / clamp(fwidth(_1443 * _1461) * _1447 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1515), 0.0, 1.0), 0.0, 1.0) * _1530)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1569 = _1410.xyz * out_var_TEXCOORD6;
        highp vec3 _1575 = mix(mix(_1563, _1563 * _1410.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1410.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2776 = isnan(_1575);
        bvec3 _2777 = isnan(_1569);
        highp vec3 _2778 = min(_1575, _1569);
        highp vec3 _2779 = vec3(_2776.x ? _1569.x : _2778.x, _2776.y ? _1569.y : _2778.y, _2776.z ? _1569.z : _2778.z);
        highp vec3 _1583 = mix(mix(vec3(_2777.x ? _1575.x : _2779.x, _2777.y ? _1575.y : _2779.y, _2777.z ? _1575.z : _2779.z), _1569, _Globals._ShadowBorderColor.xyz * (clamp((_1437 * _1453 + (-_1502)) / clamp(fwidth(_1454) * _1447 + (_1475 - _1502), 0.0, 1.0), 0.0, 1.0) * _1530)), _1569, vec3(mix(1.0, _1531, _Globals._ShadowStrength)));
        _1587 = vec4(_1583.x, _1583.y, _1583.z, _1410.w);
        _1588 = _1531;
    }
    else
    {
        highp vec3 _1585 = _1410.xyz * out_var_TEXCOORD6;
        _1587 = vec4(_1585.x, _1585.y, _1585.z, _1410.w);
        _1588 = 1.0;
    }
    highp vec3 _1591 = vec3(_Globals._LightMaxLimit);
    bvec3 _2781 = isnan(out_var_TEXCOORD6);
    bvec3 _2782 = isnan(_1591);
    highp vec3 _2783 = min(out_var_TEXCOORD6, _1591);
    highp vec3 _2784 = vec3(_2781.x ? _1591.x : _2783.x, _2781.y ? _1591.y : _2783.y, _2781.z ? _1591.z : _2783.z);
    highp vec3 _1592 = vec3(_2782.x ? out_var_TEXCOORD6.x : _2784.x, _2782.y ? out_var_TEXCOORD6.y : _2784.y, _2782.z ? out_var_TEXCOORD6.z : _2784.z);
    highp float _1593 = clamp(_1588, 0.0, 1.0);
    highp vec3 _1595 = _1410.xyz * _Globals._LightMaxLimit;
    bvec3 _2786 = isnan(_1587.xyz);
    bvec3 _2787 = isnan(_1595);
    highp vec3 _2788 = min(_1587.xyz, _1595);
    highp vec3 _2789 = vec3(_2786.x ? _1595.x : _2788.x, _2786.y ? _1595.y : _2788.y, _2786.z ? _1595.z : _2788.z);
    highp vec3 _1596 = vec3(_2787.x ? _1587.xyz.x : _2789.x, _2787.y ? _1587.xyz.y : _2789.y, _2787.z ? _1587.xyz.z : _2789.z);
    highp vec4 _1630;
    if (_679)
    {
        highp vec3 _1600 = _1596.xyz;
        highp vec3 _1610 = _1600 + _957.xyz;
        highp vec3 _1611 = _1600 * _957.xyz;
        bvec3 _1613 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1614 = vec3(_1613.x ? _957.xyz.x : _330.x, _1613.y ? _957.xyz.y : _330.y, _1613.z ? _957.xyz.z : _330.z);
        bvec3 _1616 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1624;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1622 = (-_1600) * _957.xyz + _1610;
            bvec3 _2791 = isnan(_1622);
            bvec3 _2792 = isnan(_1600);
            highp vec3 _2793 = max(_1622, _1600);
            highp vec3 _2794 = vec3(_2791.x ? _1600.x : _2793.x, _2791.y ? _1600.y : _2793.y, _2791.z ? _1600.z : _2793.z);
            _1624 = vec3(_2792.x ? _1622.x : _2794.x, _2792.y ? _1622.y : _2794.y, _2792.z ? _1622.z : _2794.z);
        }
        else
        {
            _1624 = vec3(_1616.x ? _1610.x : _1614.x, _1616.y ? _1610.y : _1614.y, _1616.z ? _1610.z : _1614.z);
        }
        bvec3 _1626 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1628 = mix(_1600, vec3(_1626.x ? _1611.x : _1624.x, _1626.y ? _1611.y : _1624.y, _1626.z ? _1611.z : _1624.z), vec3((-_957.w) * _Globals._Main2ndEnableLighting + _957.w));
        _1630 = vec4(_1628.x, _1628.y, _1628.z, _1587.w);
    }
    else
    {
        _1630 = vec4(_1596.x, _1596.y, _1596.z, _1587.w);
    }
    highp vec4 _1663;
    if (_963)
    {
        highp vec3 _1643 = _1630.xyz + _1241.xyz;
        highp vec3 _1644 = _1630.xyz * _1241.xyz;
        bvec3 _1646 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1647 = vec3(_1646.x ? _1241.xyz.x : _330.x, _1646.y ? _1241.xyz.y : _330.y, _1646.z ? _1241.xyz.z : _330.z);
        bvec3 _1649 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1657;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1655 = (-_1630.xyz) * _1241.xyz + _1643;
            bvec3 _2796 = isnan(_1655);
            bvec3 _2797 = isnan(_1630.xyz);
            highp vec3 _2798 = max(_1655, _1630.xyz);
            highp vec3 _2799 = vec3(_2796.x ? _1630.xyz.x : _2798.x, _2796.y ? _1630.xyz.y : _2798.y, _2796.z ? _1630.xyz.z : _2798.z);
            _1657 = vec3(_2797.x ? _1655.x : _2799.x, _2797.y ? _1655.y : _2799.y, _2797.z ? _1655.z : _2799.z);
        }
        else
        {
            _1657 = vec3(_1649.x ? _1643.x : _1647.x, _1649.y ? _1643.y : _1647.y, _1649.z ? _1643.z : _1647.z);
        }
        bvec3 _1659 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1661 = mix(_1630.xyz, vec3(_1659.x ? _1644.x : _1657.x, _1659.y ? _1644.y : _1657.y, _1659.z ? _1644.z : _1657.z), vec3((-_1241.w) * _Globals._Main3rdEnableLighting + _1241.w));
        _1663 = vec4(_1661.x, _1661.y, _1661.z, _1630.w);
    }
    else
    {
        _1663 = _1630;
    }
    highp vec4 _1709;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1679 = pow(clamp(1.0 - abs(dot(mix(_669, _664, vec3(_Globals._RimShadeNormalStrength)), _457)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1688 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1707 = mix(_1663.xyz, _1663.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1679 - _1688) / clamp(fwidth(_1679) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1688), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1709 = vec4(_1707.x, _1707.y, _1707.z, _1663.w);
    }
    else
    {
        _1709 = _1663;
    }
    highp vec4 _1782;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1733 = dot(normalize(((-_457) * _Globals._BacklightViewStrength) + _441), mix(_669, _664, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1743;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1743 = _1733 * clamp(_440 + distance(_441, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1743 = _1733;
        }
        highp float _1752 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1780 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1410.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_389 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_457, _441) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1743 - _1752) / clamp(fwidth(_1743) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1752), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1592 + _1709.xyz;
        _1782 = vec4(_1780.x, _1780.y, _1780.z, _1709.w);
    }
    else
    {
        _1782 = _1709;
    }
    highp vec4 _2025;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1792 = dFdx(_664);
        highp vec3 _1793 = abs(_1792);
        highp vec3 _1794 = dFdy(_664);
        highp vec3 _1795 = abs(_1794);
        highp float _1796 = dot(_1793, _1793);
        highp float _1797 = dot(_1795, _1795);
        highp float _1798 = isnan(_1797) ? _1796 : (isnan(_1796) ? _1797 : max(_1796, _1797));
        highp float _1801 = (_1798 / (_1798 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1804 = clamp(1.0 - (isnan(_1801) ? 0.0 : (isnan(0.0) ? _1801 : max(0.0, _1801))), 0.0, 1.0);
        highp float _1805 = isnan(_1804) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1804 : min(_Globals._Smoothness, _1804));
        highp float _1806 = 1.0 - _1805;
        highp float _1807 = _1806 * _1806;
        highp vec3 _1812 = _1782.xyz - (_1782.xyz * _Globals._Metallic);
        highp vec3 _1818 = mix(vec3(_Globals._Reflectance), _1410.xyz, vec3(_Globals._Metallic));
        highp vec4 _1921;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1893;
            do
            {
                highp vec3 _1831 = mix(_669, _664, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1833 = normalize(_457 + _441);
                highp float _1835 = clamp(dot(_1831, _1833), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1844 = pow(_1835, 1.0 / _1807);
                    highp float _1851 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1893 = vec3(clamp((_1844 - _1851) / clamp(fwidth(_1844) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1851), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1863 = clamp(dot(_1831, _457), 0.0, 1.0);
                highp float _1865 = clamp(dot(_1831, _441), 0.0, 1.0);
                highp float _1868 = isnan(0.00200000009499490261077880859375) ? _1807 : (isnan(_1807) ? 0.00200000009499490261077880859375 : max(_1807, 0.00200000009499490261077880859375));
                highp float _1869 = 1.0 - _1868;
                highp float _1873 = _1868 * _1868;
                highp float _1876 = (_1835 * _1873 + (-_1835)) * _1835 + 1.0;
                highp float _1884 = 1.0 - clamp(dot(_441, _1833), 0.0, 1.0);
                _1893 = (_1818 + ((((((vec3(1.0) - _1818) * _1884) * _1884) * _1884) * _1884) * _1884)) * (((0.5 / ((_1865 * (_1863 * _1869 + _1868) + (_1863 * (_1865 * _1869 + _1868))) + 9.9999997473787516355514526367188e-06)) * (_1873 / (_1876 * _1876 + 1.0000000116860974230803549289703e-07))) * _1865);
                break;
            } while(false);
            highp vec3 _1894 = _1812.xyz;
            highp vec3 _1896 = _Globals._ReflectionColor.xyz * _1592;
            highp vec3 _1901 = _Globals._ReflectionColor.xyz * _1592 + _1894;
            highp vec3 _1902 = _1894 * _1896;
            bvec3 _1904 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1905 = vec3(_1904.x ? _1896.x : _330.x, _1904.y ? _1896.y : _330.y, _1904.z ? _1896.z : _330.z);
            bvec3 _1907 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1915;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1913 = (-_1894) * _1896 + _1901;
                bvec3 _2821 = isnan(_1913);
                bvec3 _2822 = isnan(_1894);
                highp vec3 _2823 = max(_1913, _1894);
                highp vec3 _2824 = vec3(_2821.x ? _1894.x : _2823.x, _2821.y ? _1894.y : _2823.y, _2821.z ? _1894.z : _2823.z);
                _1915 = vec3(_2822.x ? _1913.x : _2824.x, _2822.y ? _1913.y : _2824.y, _2822.z ? _1913.z : _2824.z);
            }
            else
            {
                _1915 = vec3(_1907.x ? _1901.x : _1905.x, _1907.y ? _1901.y : _1905.y, _1907.z ? _1901.z : _1905.z);
            }
            bvec3 _1917 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1919 = mix(_1894, vec3(_1917.x ? _1902.x : _1915.x, _1917.y ? _1902.y : _1915.y, _1917.z ? _1902.z : _1915.z), _1893 * _Globals._ReflectionColor.w);
            _1921 = vec4(_1919.x, _1919.y, _1919.z, _1782.w);
        }
        else
        {
            _1921 = vec4(_1812.x, _1812.y, _1812.z, _1782.w);
        }
        highp vec4 _2024;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1943 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1950 = reflect(-_457, mix(_669, _664, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1953 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1950, _1806 * ((-4.19999980926513671875) * _1806 + 10.19999980926513671875));
            highp vec3 _1973 = ((_1953.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1953.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1592, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1979 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1950, _1806 * 8.0).xyz * 1.0;
            highp float _1990 = 1.0 - _666;
            highp vec3 _2004 = _1921.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2005 = _1921.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2007 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2008 = vec3(_2007.x ? _Globals._ReflectionColor.xyz.x : _330.x, _2007.y ? _Globals._ReflectionColor.xyz.y : _330.y, _2007.z ? _Globals._ReflectionColor.xyz.z : _330.z);
            bvec3 _2010 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2018;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2016 = (-_1921.xyz) * _Globals._ReflectionColor.xyz + _2004;
                bvec3 _2826 = isnan(_2016);
                bvec3 _2827 = isnan(_1921.xyz);
                highp vec3 _2828 = max(_2016, _1921.xyz);
                highp vec3 _2829 = vec3(_2826.x ? _1921.xyz.x : _2828.x, _2826.y ? _1921.xyz.y : _2828.y, _2826.z ? _1921.xyz.z : _2828.z);
                _2018 = vec3(_2827.x ? _2016.x : _2829.x, _2827.y ? _2016.y : _2829.y, _2827.z ? _2016.z : _2829.z);
            }
            else
            {
                _2018 = vec3(_2010.x ? _2004.x : _2008.x, _2010.y ? _2004.y : _2008.y, _2010.z ? _2004.z : _2008.z);
            }
            bvec3 _2020 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2022 = mix(_1921.xyz, vec3(_2020.x ? _2005.x : _2018.x, _2020.y ? _2005.y : _2018.y, _2020.z ? _2005.z : _2018.z), ((vec3(_1943.x ? _1973.x : _1979.x, _1943.y ? _1973.y : _1979.y, _1943.z ? _1973.z : _1979.z) * (1.0 / (_1807 * _1807 + 1.0))) * mix(_1818, vec3(clamp(_1805 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1990 * _1990) * _1990) * _1990) * _1990))) * _Globals._ReflectionColor.w);
            _2024 = vec4(_2022.x, _2022.y, _2022.z, _1921.w);
        }
        else
        {
            _2024 = _1921;
        }
        _2025 = _2024;
    }
    else
    {
        _2025 = _1782;
    }
    highp vec4 _2131;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2051 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2052 = vec3(_2051.x ? _457.x : _357.x, _2051.y ? _457.y : _357.y, _2051.z ? _457.z : _357.z);
        bvec3 _2053 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2054 = vec3(_2053.x ? vec3(0.0, 1.0, 0.0).x : _364.x, _2053.y ? vec3(0.0, 1.0, 0.0).y : _364.y, _2053.z ? vec3(0.0, 1.0, 0.0).z : _364.z);
        highp vec3 _2058 = normalize(_2054 - (_2052 * dot(_2052, _2054)));
        highp vec4 _2080 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_669, _664, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2052, _2058), _2058, _2052)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2081 = _2080.xyz;
        highp float _2087 = _2080.w;
        highp vec3 _2097 = mix(_2081, _2081 * _1592, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2104 = mix(_2097, _2097 * _1410.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2111 = _2025.xyz + _2104;
        highp vec3 _2112 = _2025.xyz * _2104;
        bvec3 _2114 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2115 = vec3(_2114.x ? _2104.x : _330.x, _2114.y ? _2104.y : _330.y, _2114.z ? _2104.z : _330.z);
        bvec3 _2117 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2125;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2123 = (-_2025.xyz) * _2104 + _2111;
            bvec3 _2831 = isnan(_2123);
            bvec3 _2832 = isnan(_2025.xyz);
            highp vec3 _2833 = max(_2123, _2025.xyz);
            highp vec3 _2834 = vec3(_2831.x ? _2025.xyz.x : _2833.x, _2831.y ? _2025.xyz.y : _2833.y, _2831.z ? _2025.xyz.z : _2833.z);
            _2125 = vec3(_2832.x ? _2123.x : _2834.x, _2832.y ? _2123.y : _2834.y, _2832.z ? _2123.z : _2834.z);
        }
        else
        {
            _2125 = vec3(_2117.x ? _2111.x : _2115.x, _2117.y ? _2111.y : _2115.y, _2117.z ? _2111.z : _2115.z);
        }
        bvec3 _2127 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2129 = mix(_2025.xyz, vec3(_2127.x ? _2112.x : _2125.x, _2127.y ? _2112.y : _2125.y, _2127.z ? _2112.z : _2125.z), vec3(1.0) * (_Globals._MatCapBlend * ((_389 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2087, _2087 * _1593, _Globals._MatCapShadowMask))));
        _2131 = vec4(_2129.x, _2129.y, _2129.z, _2025.w);
    }
    else
    {
        _2131 = _2025;
    }
    highp vec4 _2236;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2156 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2157 = vec3(_2156.x ? _457.x : _357.x, _2156.y ? _457.y : _357.y, _2156.z ? _457.z : _357.z);
        bvec3 _2158 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2159 = vec3(_2158.x ? vec3(0.0, 1.0, 0.0).x : _364.x, _2158.y ? vec3(0.0, 1.0, 0.0).y : _364.y, _2158.z ? vec3(0.0, 1.0, 0.0).z : _364.z);
        highp vec3 _2163 = normalize(_2159 - (_2157 * dot(_2157, _2159)));
        highp vec4 _2185 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_669, _664, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2157, _2163), _2163, _2157)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2186 = _2185.xyz;
        highp float _2192 = _2185.w;
        highp vec3 _2202 = mix(_2186, _2186 * _1592, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2209 = mix(_2202, _2202 * _1410.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2216 = _2131.xyz + _2209;
        highp vec3 _2217 = _2131.xyz * _2209;
        bvec3 _2219 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2220 = vec3(_2219.x ? _2209.x : _330.x, _2219.y ? _2209.y : _330.y, _2219.z ? _2209.z : _330.z);
        bvec3 _2222 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2230;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2228 = (-_2131.xyz) * _2209 + _2216;
            bvec3 _2836 = isnan(_2228);
            bvec3 _2837 = isnan(_2131.xyz);
            highp vec3 _2838 = max(_2228, _2131.xyz);
            highp vec3 _2839 = vec3(_2836.x ? _2131.xyz.x : _2838.x, _2836.y ? _2131.xyz.y : _2838.y, _2836.z ? _2131.xyz.z : _2838.z);
            _2230 = vec3(_2837.x ? _2228.x : _2839.x, _2837.y ? _2228.y : _2839.y, _2837.z ? _2228.z : _2839.z);
        }
        else
        {
            _2230 = vec3(_2222.x ? _2216.x : _2220.x, _2222.y ? _2216.y : _2220.y, _2222.z ? _2216.z : _2220.z);
        }
        bvec3 _2232 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2234 = mix(_2131.xyz, vec3(_2232.x ? _2217.x : _2230.x, _2232.y ? _2217.y : _2230.y, _2232.z ? _2217.z : _2230.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_389 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2192, _2192 * _1593, _Globals._MatCap2ndShadowMask))));
        _2236 = vec4(_2234.x, _2234.y, _2234.z, _2131.w);
    }
    else
    {
        _2236 = _2131;
    }
    highp vec4 _2382;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2255 = mix(_669, _664, vec3(_Globals._RimNormalStrength));
        highp float _2259 = dot(_441, _2255) * 0.5 + 0.5;
        highp float _2282 = (_389 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2255, _457)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2286 = mix(_2282, _2282 * clamp((_2259 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2287 = _2282 * clamp(((1.0 - _2259) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2297 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2306 = clamp((_2286 - _2297) / clamp(fwidth(_2286) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2297), 0.0, 1.0), 0.0, 1.0);
        highp float _2313 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2323 = clamp((_2287 * _Globals._RimDirStrength + (-_2313)) / clamp(fwidth(_2287 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2313), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2335 = vec3(1.0 - _Globals._RimEnableLighting) + (_1592 * _Globals._RimEnableLighting);
        highp vec3 _2337 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1410.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2338 = _2337 * _2335;
        highp vec3 _2344 = _2337 * _2335 + _2236.xyz;
        highp vec3 _2345 = _2236.xyz * _2338;
        bvec3 _2347 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2348 = vec3(_2347.x ? _2338.x : _330.x, _2347.y ? _2338.y : _330.y, _2347.z ? _2338.z : _330.z);
        bvec3 _2350 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2352 = _Globals._RimBlendMode == 2u;
        highp vec3 _2358;
        if (_2352)
        {
            highp vec3 _2356 = (-_2236.xyz) * _2338 + _2344;
            bvec3 _2841 = isnan(_2356);
            bvec3 _2842 = isnan(_2236.xyz);
            highp vec3 _2843 = max(_2356, _2236.xyz);
            highp vec3 _2844 = vec3(_2841.x ? _2236.xyz.x : _2843.x, _2841.y ? _2236.xyz.y : _2843.y, _2841.z ? _2236.xyz.z : _2843.z);
            _2358 = vec3(_2842.x ? _2356.x : _2844.x, _2842.y ? _2356.y : _2844.y, _2842.z ? _2356.z : _2844.z);
        }
        else
        {
            _2358 = vec3(_2350.x ? _2344.x : _2348.x, _2350.y ? _2344.y : _2348.y, _2350.z ? _2344.z : _2348.z);
        }
        bvec3 _2360 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2363 = mix(_2236.xyz, vec3(_2360.x ? _2345.x : _2358.x, _2360.y ? _2345.y : _2358.y, _2360.z ? _2345.z : _2358.z), vec3(mix(_2306, _2306 * _1593, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2365 = _Globals._RimIndirColor.xyz * _2335;
        highp vec3 _2369 = _Globals._RimIndirColor.xyz * _2335 + _2363;
        highp vec3 _2370 = _2363 * _2365;
        highp vec3 _2371 = vec3(_2347.x ? _2365.x : _330.x, _2347.y ? _2365.y : _330.y, _2347.z ? _2365.z : _330.z);
        highp vec3 _2378;
        if (_2352)
        {
            highp vec3 _2376 = (-_2363) * _2365 + _2369;
            bvec3 _2846 = isnan(_2376);
            bvec3 _2847 = isnan(_2363);
            highp vec3 _2848 = max(_2376, _2363);
            highp vec3 _2849 = vec3(_2846.x ? _2363.x : _2848.x, _2846.y ? _2363.y : _2848.y, _2846.z ? _2363.z : _2848.z);
            _2378 = vec3(_2847.x ? _2376.x : _2849.x, _2847.y ? _2376.y : _2849.y, _2847.z ? _2376.z : _2849.z);
        }
        else
        {
            _2378 = vec3(_2350.x ? _2369.x : _2371.x, _2350.y ? _2369.y : _2371.y, _2350.z ? _2369.z : _2371.z);
        }
        highp vec3 _2380 = mix(_2363, vec3(_2360.x ? _2370.x : _2378.x, _2360.y ? _2370.y : _2378.y, _2360.z ? _2370.z : _2378.z), vec3(mix(_2323, _2323 * _1593, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2382 = vec4(_2380.x, _2380.y, _2380.z, _2236.w);
    }
    else
    {
        _2382 = _2236;
    }
    highp vec4 _2496;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2393 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2394 = vec2(_2393.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2393.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2396 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2397 = vec2(_2396.x ? out_var_TEXCOORD1.xy.x : _2394.x, _2396.y ? out_var_TEXCOORD1.xy.y : _2394.y);
        bvec2 _2399 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2400 = vec2(_2399.x ? out_var_TEXCOORD1.zw.x : _2397.x, _2399.y ? out_var_TEXCOORD1.zw.y : _2397.y);
        bvec2 _2402 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2419 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2420 = sin(_2419);
        highp float _2421 = cos(_2419);
        highp vec2 _2422 = ((vec2(_2402.x ? _668.x : _2400.x, _2402.y ? _668.y : _2400.y) + (_472 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2423 = _2422.x;
        highp float _2424 = _2422.y;
        highp vec4 _2437 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2423 * _2421 + (-(_2424 * _2420)), _2423 * _2420 + (_2424 * _2421)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2438 = _Globals._EmissionColor * _2437;
        highp vec3 _2439 = _2438.xyz;
        highp vec3 _2445 = mix(_2439, _2439 * _445, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2459 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2465;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2465 = roundEven(_2459);
        }
        else
        {
            _2465 = _2459;
        }
        highp vec3 _2472 = mix(_2445, _2445 * _1410.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2476 = _2382.xyz + _2472;
        highp vec3 _2477 = _2382.xyz * _2472;
        bvec3 _2479 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2480 = vec3(_2479.x ? _2472.x : _330.x, _2479.y ? _2472.y : _330.y, _2479.z ? _2472.z : _330.z);
        bvec3 _2482 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2490;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2488 = (-_2382.xyz) * _2472 + _2476;
            bvec3 _2851 = isnan(_2488);
            bvec3 _2852 = isnan(_2382.xyz);
            highp vec3 _2853 = max(_2488, _2382.xyz);
            highp vec3 _2854 = vec3(_2851.x ? _2382.xyz.x : _2853.x, _2851.y ? _2382.xyz.y : _2853.y, _2851.z ? _2382.xyz.z : _2853.z);
            _2490 = vec3(_2852.x ? _2488.x : _2854.x, _2852.y ? _2488.y : _2854.y, _2852.z ? _2488.z : _2854.z);
        }
        else
        {
            _2490 = vec3(_2482.x ? _2476.x : _2480.x, _2482.y ? _2476.y : _2480.y, _2482.z ? _2476.z : _2480.z);
        }
        bvec3 _2492 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2494 = mix(_2382.xyz, vec3(_2492.x ? _2477.x : _2490.x, _2492.y ? _2477.y : _2490.y, _2492.z ? _2477.z : _2490.z), vec3((_Globals._EmissionBlend * mix(1.0, _2465, _Globals._EmissionBlink.x)) * _2438.w));
        _2496 = vec4(_2494.x, _2494.y, _2494.z, _2382.w);
    }
    else
    {
        _2496 = _2382;
    }
    highp vec4 _2610;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2507 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2508 = vec2(_2507.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2507.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2510 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2511 = vec2(_2510.x ? out_var_TEXCOORD1.xy.x : _2508.x, _2510.y ? out_var_TEXCOORD1.xy.y : _2508.y);
        bvec2 _2513 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2514 = vec2(_2513.x ? out_var_TEXCOORD1.zw.x : _2511.x, _2513.y ? out_var_TEXCOORD1.zw.y : _2511.y);
        bvec2 _2516 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2533 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2534 = sin(_2533);
        highp float _2535 = cos(_2533);
        highp vec2 _2536 = ((vec2(_2516.x ? _668.x : _2514.x, _2516.y ? _668.y : _2514.y) + (_472 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2537 = _2536.x;
        highp float _2538 = _2536.y;
        highp vec4 _2551 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2537 * _2535 + (-(_2538 * _2534)), _2537 * _2534 + (_2538 * _2535)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2552 = _Globals._Emission2ndColor * _2551;
        highp vec3 _2553 = _2552.xyz;
        highp vec3 _2559 = mix(_2553, _2553 * _445, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2573 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2579;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2579 = roundEven(_2573);
        }
        else
        {
            _2579 = _2573;
        }
        highp vec3 _2586 = mix(_2559, _2559 * _1410.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2590 = _2496.xyz + _2586;
        highp vec3 _2591 = _2496.xyz * _2586;
        bvec3 _2593 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2594 = vec3(_2593.x ? _2586.x : _330.x, _2593.y ? _2586.y : _330.y, _2593.z ? _2586.z : _330.z);
        bvec3 _2596 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2604;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2602 = (-_2496.xyz) * _2586 + _2590;
            bvec3 _2856 = isnan(_2602);
            bvec3 _2857 = isnan(_2496.xyz);
            highp vec3 _2858 = max(_2602, _2496.xyz);
            highp vec3 _2859 = vec3(_2856.x ? _2496.xyz.x : _2858.x, _2856.y ? _2496.xyz.y : _2858.y, _2856.z ? _2496.xyz.z : _2858.z);
            _2604 = vec3(_2857.x ? _2602.x : _2859.x, _2857.y ? _2602.y : _2859.y, _2857.z ? _2602.z : _2859.z);
        }
        else
        {
            _2604 = vec3(_2596.x ? _2590.x : _2594.x, _2596.y ? _2590.y : _2594.y, _2596.z ? _2590.z : _2594.z);
        }
        bvec3 _2606 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2608 = mix(_2496.xyz, vec3(_2606.x ? _2591.x : _2604.x, _2606.y ? _2591.y : _2604.y, _2606.z ? _2591.z : _2604.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2579, _Globals._Emission2ndBlink.x)) * _2552.w));
        _2610 = vec4(_2608.x, _2608.y, _2608.z, _2496.w);
    }
    else
    {
        _2610 = _2496;
    }
    bvec3 _2618 = bvec3(_389 < 0.0);
    highp vec3 _2619 = (_2610.xyz + (_Globals._DissolveColor.xyz * _1400)).xyz;
    highp vec3 _2627 = mix(_2619, _Globals._BackfaceColor.xyz * _1592, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2662 = vec3(_2618.x ? _2627.x : _2619.x, _2618.y ? _2627.y : _2619.y, _2618.z ? _2627.z : _2619.z).xyz;
    highp vec3 _2670 = mix(_2662, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2662, vec3(pow(clamp(1.0 - abs(dot(_669, _457)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_389 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _450) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2670.x, _2670.y, _2670.z, _2610.w), vec4(out_var_TEXCOORD9));
}
