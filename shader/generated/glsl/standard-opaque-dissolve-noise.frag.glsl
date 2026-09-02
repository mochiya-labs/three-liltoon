#version 300 es
precision mediump float;
precision highp int;

vec3 _309;
vec3 _315;

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
    highp vec4 _DissolveNoiseMask_ST;
    highp vec4 _DissolveNoiseMask_ScrollRotate;
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
    highp vec3 _334 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _341 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _358 = float(gl_FrontFacing ? 1 : (-1));
    highp float _409;
    do
    {
        highp vec3 _365 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _366 = _365.xy;
        highp float _372 = _365.z;
        if ((any(lessThan(_366, vec2(0.0))) || any(greaterThan(_366, vec2(1.0)))) || (_372 > 1.0))
        {
            _409 = 1.0;
            break;
        }
        highp float _382 = _372 + _Globals.uShadowBias;
        _409 = (((step(_382, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _366), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_382, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _366), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_382, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _366), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_382, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _366), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _410 = normalize(out_var_TEXCOORD7);
    highp vec3 _414 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _418 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _419 = length(_418);
    highp vec3 _426 = normalize(_418);
    highp mat3 _435 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _436 = _426 * _435;
    bvec2 _446 = bvec2(_358 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _447 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _460 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _461 = sin(_460);
    highp float _462 = cos(_460);
    highp vec2 _463 = (vec2(_446.x ? _447.x : out_var_TEXCOORD0.xy.x, _446.y ? _447.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _464 = _463.x;
    highp float _465 = _463.y;
    highp vec2 _476 = (vec2(_464 * _462 + (-(_465 * _461)), _464 * _461 + (_465 * _462)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _480 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _476);
    highp vec3 _487 = pow(abs(_480.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _488 = _487.z;
    highp float _489 = _487.y;
    bvec4 _491 = bvec4(_488 > _489);
    highp vec4 _492 = vec4(_488, _489, -1.0, 0.666666686534881591796875);
    highp vec4 _493 = vec4(_489, _488, 0.0, -0.3333333432674407958984375);
    highp vec4 _494 = vec4(_491.x ? _492.x : _493.x, _491.y ? _492.y : _493.y, _491.z ? _492.z : _493.z, _491.w ? _492.w : _493.w);
    highp float _495 = _494.x;
    highp float _496 = _487.x;
    bvec4 _498 = bvec4(_495 > _496);
    highp vec4 _501 = vec4(_495, _494.yw, _496);
    highp vec4 _503 = vec4(_496, _494.yz, _495);
    highp vec4 _504 = vec4(_498.x ? _501.x : _503.x, _498.y ? _501.y : _503.y, _498.z ? _501.z : _503.z, _498.w ? _501.w : _503.w);
    highp float _509 = _504.x - (isnan(_504.y) ? _504.w : (isnan(_504.w) ? _504.y : min(_504.w, _504.y)));
    highp float _522 = clamp((_509 / (_504.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _525 = clamp(_504.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _539 = vec3((-_525) * _522 + _525) + (clamp(abs((fract(vec3(abs(_504.z + ((_504.w - _504.y) / (6.0 * _509 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_525 * _522));
    highp vec4 _543 = vec4(_539.x, _539.y, _539.z, _480.w) * _Globals._Color;
    highp vec3 _575;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _556 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _476 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _556.w = _556.w * _556.x;
        highp vec2 _567 = ((_556.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _568 = vec3(_567.x, _567.y, _315.z);
        highp vec2 _569 = _567.xy;
        _568.z = sqrt(1.0 - clamp(dot(_569, _569), 0.0, 1.0));
        _575 = _568;
    }
    else
    {
        _575 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _624;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _584 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _585 = vec2(_584.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _584.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _587 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _588 = vec2(_587.x ? out_var_TEXCOORD1.xy.x : _585.x, _587.y ? out_var_TEXCOORD1.xy.y : _585.y);
        bvec2 _590 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _600 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_590.x ? out_var_TEXCOORD1.zw.x : _588.x, _590.y ? out_var_TEXCOORD1.zw.y : _588.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _600.w = _600.w * _600.x;
        highp vec2 _612 = (((_600.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _624 = vec3(_575.xy + _612, _575.z * sqrt(1.0 - clamp(dot(_612, _612), 0.0, 1.0)));
    }
    else
    {
        _624 = _575;
    }
    highp vec3 _626 = normalize(_435 * _624);
    bvec3 _631 = bvec3(_358 < (_Globals._FlipNormal - 1.0));
    highp vec3 _632 = -_626;
    highp vec3 _633 = vec3(_631.x ? _632.x : _626.x, _631.y ? _632.y : _626.y, _631.z ? _632.z : _626.z);
    highp float _634 = dot(_633, _426);
    highp float _635 = clamp(_634, 0.0, 1.0);
    highp vec2 _637 = vec2(abs(_634));
    highp vec3 _638 = normalize(out_var_TEXCOORD4);
    highp vec2 _642 = ((_633 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _341, _334)).xy * 0.5) + vec2(0.5);
    bool _643 = out_var_TEXCOORD5.w > 0.0;
    bool _648 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _886;
    highp vec4 _887;
    if (_648)
    {
        bvec2 _654 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _655 = vec2(_654.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _654.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _657 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _658 = vec2(_657.x ? out_var_TEXCOORD1.xy.x : _655.x, _657.y ? out_var_TEXCOORD1.xy.y : _655.y);
        bvec2 _660 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _661 = vec2(_660.x ? out_var_TEXCOORD1.zw.x : _658.x, _660.y ? out_var_TEXCOORD1.zw.y : _658.y);
        bvec2 _663 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _664 = vec2(_663.x ? _642.x : _661.x, _663.y ? _642.y : _661.y);
        highp vec4 _703 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _704 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _712;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _711 = _664;
            _711.x = abs(_664.x - 0.5) + 0.5;
            _712 = _711;
        }
        else
        {
            _712 = _664;
        }
        highp vec2 _713 = _703.xy;
        highp vec2 _714 = _703.zw;
        highp vec2 _715 = _712 * _713 + _714;
        highp vec2 _724;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_664.x < 0.5))
        {
            highp vec2 _723 = _715;
            _723.x = 1.0 - _715.x;
            _724 = _723;
        }
        else
        {
            _724 = _715;
        }
        highp vec2 _731;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _643)
        {
            highp vec2 _730 = _724;
            _730.x = 1.0 - _724.x;
            _731 = _730;
        }
        else
        {
            _731 = _724;
        }
        highp vec2 _736;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _643)
        {
            highp vec2 _735 = _731;
            _735.x = -1.0;
            _736 = _735;
        }
        else
        {
            _736 = _731;
        }
        highp vec2 _742;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_643))
        {
            highp vec2 _741 = _736;
            _741.x = -1.0;
            _742 = _741;
        }
        else
        {
            _742 = _736;
        }
        highp float _745 = sin(_704);
        highp float _746 = cos(_704);
        highp vec2 _747 = ((_742 - _714) / _713) - vec2(0.5);
        highp float _748 = _747.x;
        highp float _749 = _747.y;
        highp vec2 _757 = (vec2(_748 * _746 + (-(_749 * _745)), _748 * _745 + (_749 * _746)) + vec2(0.5)) * _713 + _714;
        uint _761 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _765 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _761 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _761);
        highp float _766 = _757.x;
        highp float _767 = _757.y;
        uint _774 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _784 = ((mix(vec2(_766, 1.0 - _767), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_765 % _774), float(_765 / _774))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _784.y = 1.0 - _784.y;
        highp vec4 _789 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _784);
        highp vec4 _805;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _792 = _789.x;
            highp float _793 = _789.y;
            highp float _794 = _789.z;
            highp float _795 = isnan(_793) ? _792 : (isnan(_792) ? _793 : min(_792, _793));
            highp float _796 = isnan(_793) ? _792 : (isnan(_792) ? _793 : max(_792, _793));
            highp float _797 = isnan(_794) ? _796 : (isnan(_796) ? _794 : min(_796, _794));
            highp float _798 = isnan(_797) ? _795 : (isnan(_795) ? _797 : max(_795, _797));
            _805 = vec4(1.0, 1.0, 1.0, clamp((_798 - 0.5) / clamp(fwidth(_798), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _805 = _789;
        }
        highp vec4 _828;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _809 = clamp(_635 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _812 = 0.5 - abs(_766 - 0.5);
            highp float _819 = 0.5 - abs(_767 - 0.5);
            highp vec4 _827 = _805;
            _827.w = _805.w * (clamp(_812 / clamp(fwidth(_812), 9.9999997473787516355514526367188e-05, _809), 0.0, 1.0) * clamp(_819 / clamp(fwidth(_819), 9.9999997473787516355514526367188e-05, _809), 0.0, 1.0));
            _828 = _827;
        }
        else
        {
            _828 = _805;
        }
        highp vec4 _829 = _Globals._Color2nd * _828;
        highp float _830 = _829.w;
        _829.w = mix(_830, _830 * clamp((_419 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _856;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_358 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_358 < 0.0)))
        {
            highp vec4 _855 = _829;
            _855.w = 0.0;
            _856 = _855;
        }
        else
        {
            _856 = _829;
        }
        highp vec3 _857 = _543.xyz;
        highp vec3 _866 = _857 + _856.xyz;
        highp vec3 _867 = _857 * _856.xyz;
        bvec3 _869 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _870 = vec3(_869.x ? _856.xyz.x : _309.x, _869.y ? _856.xyz.y : _309.y, _869.z ? _856.xyz.z : _309.z);
        bvec3 _872 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _880;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _878 = (-_857) * _856.xyz + _866;
            bvec3 _2399 = isnan(_878);
            bvec3 _2400 = isnan(_857);
            highp vec3 _2401 = max(_878, _857);
            highp vec3 _2402 = vec3(_2399.x ? _857.x : _2401.x, _2399.y ? _857.y : _2401.y, _2399.z ? _857.z : _2401.z);
            _880 = vec3(_2400.x ? _878.x : _2402.x, _2400.y ? _878.y : _2402.y, _2400.z ? _878.z : _2402.z);
        }
        else
        {
            _880 = vec3(_872.x ? _866.x : _870.x, _872.y ? _866.y : _870.y, _872.z ? _866.z : _870.z);
        }
        bvec3 _882 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _884 = mix(_857, vec3(_882.x ? _867.x : _880.x, _882.y ? _867.y : _880.y, _882.z ? _867.z : _880.z), vec3(_856.w * _Globals._Main2ndEnableLighting));
        _886 = _856;
        _887 = vec4(_884.x, _884.y, _884.z, _543.w);
    }
    else
    {
        _886 = _Globals._Color2nd;
        _887 = _543;
    }
    bool _892 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1130;
    highp vec4 _1131;
    if (_892)
    {
        bvec2 _898 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _899 = vec2(_898.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _898.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _901 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _902 = vec2(_901.x ? out_var_TEXCOORD1.xy.x : _899.x, _901.y ? out_var_TEXCOORD1.xy.y : _899.y);
        bvec2 _904 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _905 = vec2(_904.x ? out_var_TEXCOORD1.zw.x : _902.x, _904.y ? out_var_TEXCOORD1.zw.y : _902.y);
        bvec2 _907 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _908 = vec2(_907.x ? _642.x : _905.x, _907.y ? _642.y : _905.y);
        highp vec4 _947 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _948 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _956;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _955 = _908;
            _955.x = abs(_908.x - 0.5) + 0.5;
            _956 = _955;
        }
        else
        {
            _956 = _908;
        }
        highp vec2 _957 = _947.xy;
        highp vec2 _958 = _947.zw;
        highp vec2 _959 = _956 * _957 + _958;
        highp vec2 _968;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_908.x < 0.5))
        {
            highp vec2 _967 = _959;
            _967.x = 1.0 - _959.x;
            _968 = _967;
        }
        else
        {
            _968 = _959;
        }
        highp vec2 _975;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _643)
        {
            highp vec2 _974 = _968;
            _974.x = 1.0 - _968.x;
            _975 = _974;
        }
        else
        {
            _975 = _968;
        }
        highp vec2 _980;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _643)
        {
            highp vec2 _979 = _975;
            _979.x = -1.0;
            _980 = _979;
        }
        else
        {
            _980 = _975;
        }
        highp vec2 _986;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_643))
        {
            highp vec2 _985 = _980;
            _985.x = -1.0;
            _986 = _985;
        }
        else
        {
            _986 = _980;
        }
        highp float _989 = sin(_948);
        highp float _990 = cos(_948);
        highp vec2 _991 = ((_986 - _958) / _957) - vec2(0.5);
        highp float _992 = _991.x;
        highp float _993 = _991.y;
        highp vec2 _1001 = (vec2(_992 * _990 + (-(_993 * _989)), _992 * _989 + (_993 * _990)) + vec2(0.5)) * _957 + _958;
        uint _1005 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1009 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1005 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1005);
        highp float _1010 = _1001.x;
        highp float _1011 = _1001.y;
        uint _1018 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1028 = ((mix(vec2(_1010, 1.0 - _1011), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1009 % _1018), float(_1009 / _1018))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1028.y = 1.0 - _1028.y;
        highp vec4 _1033 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1028);
        highp vec4 _1049;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1036 = _1033.x;
            highp float _1037 = _1033.y;
            highp float _1038 = _1033.z;
            highp float _1039 = isnan(_1037) ? _1036 : (isnan(_1036) ? _1037 : min(_1036, _1037));
            highp float _1040 = isnan(_1037) ? _1036 : (isnan(_1036) ? _1037 : max(_1036, _1037));
            highp float _1041 = isnan(_1038) ? _1040 : (isnan(_1040) ? _1038 : min(_1040, _1038));
            highp float _1042 = isnan(_1041) ? _1039 : (isnan(_1039) ? _1041 : max(_1039, _1041));
            _1049 = vec4(1.0, 1.0, 1.0, clamp((_1042 - 0.5) / clamp(fwidth(_1042), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1049 = _1033;
        }
        highp vec4 _1072;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1053 = clamp(_635 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1056 = 0.5 - abs(_1010 - 0.5);
            highp float _1063 = 0.5 - abs(_1011 - 0.5);
            highp vec4 _1071 = _1049;
            _1071.w = _1049.w * (clamp(_1056 / clamp(fwidth(_1056), 9.9999997473787516355514526367188e-05, _1053), 0.0, 1.0) * clamp(_1063 / clamp(fwidth(_1063), 9.9999997473787516355514526367188e-05, _1053), 0.0, 1.0));
            _1072 = _1071;
        }
        else
        {
            _1072 = _1049;
        }
        highp vec4 _1073 = _Globals._Color3rd * _1072;
        highp float _1074 = _1073.w;
        _1073.w = mix(_1074, _1074 * clamp((_419 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1100;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_358 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_358 < 0.0)))
        {
            highp vec4 _1099 = _1073;
            _1099.w = 0.0;
            _1100 = _1099;
        }
        else
        {
            _1100 = _1073;
        }
        highp vec3 _1110 = _887.xyz + _1100.xyz;
        highp vec3 _1111 = _887.xyz * _1100.xyz;
        bvec3 _1113 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1114 = vec3(_1113.x ? _1100.xyz.x : _309.x, _1113.y ? _1100.xyz.y : _309.y, _1113.z ? _1100.xyz.z : _309.z);
        bvec3 _1116 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1124;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1122 = (-_887.xyz) * _1100.xyz + _1110;
            bvec3 _2424 = isnan(_1122);
            bvec3 _2425 = isnan(_887.xyz);
            highp vec3 _2426 = max(_1122, _887.xyz);
            highp vec3 _2427 = vec3(_2424.x ? _887.xyz.x : _2426.x, _2424.y ? _887.xyz.y : _2426.y, _2424.z ? _887.xyz.z : _2426.z);
            _1124 = vec3(_2425.x ? _1122.x : _2427.x, _2425.y ? _1122.y : _2427.y, _2425.z ? _1122.z : _2427.z);
        }
        else
        {
            _1124 = vec3(_1116.x ? _1110.x : _1114.x, _1116.y ? _1110.y : _1114.y, _1116.z ? _1110.z : _1114.z);
        }
        bvec3 _1126 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1128 = mix(_887.xyz, vec3(_1126.x ? _1111.x : _1124.x, _1126.y ? _1111.y : _1124.y, _1126.z ? _1111.z : _1124.z), vec3(_1100.w * _Globals._Main3rdEnableLighting));
        _1130 = _1100;
        _1131 = vec4(_1128.x, _1128.y, _1128.z, _887.w);
    }
    else
    {
        _1130 = _Globals._Color3rd;
        _1131 = _887;
    }
    highp vec4 _1132 = _1131;
    _1132.w = 1.0;
    highp vec4 _1306;
    highp float _1307;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1156 = clamp(dot(_410, mix(_638, _633, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1159 = clamp(dot(_410, mix(_638, _633, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1162 = clamp(dot(_410, mix(_638, _633, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1166 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1169 = clamp(_409 + distance(_410, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1172 = mix(1.0, _1169, _Globals._ShadowReceive);
        highp float _1173 = _1156 * _1172;
        highp float _1176 = mix(1.0, _1169, _Globals._Shadow2ndReceive);
        highp float _1180 = mix(1.0, _1169, _Globals._Shadow3rdReceive);
        highp float _1191 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1192 = clamp(_1191, 0.0, 1.0);
        highp float _1194 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1207 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1221 = clamp(_1191 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1234 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1249 = (_358 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1250 = clamp((_1156 * _1172 + (-_1192)) / clamp(fwidth(_1173) * _1166 + (_1194 - _1192), 0.0, 1.0), 0.0, 1.0) * _1249;
        highp vec3 _1282 = mix(mix(_1132.xyz * _Globals._ShadowColor.xyz, (_1132.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1159 * _1176 + (-_1207)) / clamp(fwidth(_1159 * _1176) * _1166 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1207), 0.0, 1.0), 0.0, 1.0) * _1249)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1132.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1162 * _1180 + (-_1234)) / clamp(fwidth(_1162 * _1180) * _1166 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1234), 0.0, 1.0), 0.0, 1.0) * _1249)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1288 = _1132.xyz * out_var_TEXCOORD6;
        highp vec3 _1294 = mix(mix(_1282, _1282 * _1132.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1132.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2429 = isnan(_1294);
        bvec3 _2430 = isnan(_1288);
        highp vec3 _2431 = min(_1294, _1288);
        highp vec3 _2432 = vec3(_2429.x ? _1288.x : _2431.x, _2429.y ? _1288.y : _2431.y, _2429.z ? _1288.z : _2431.z);
        highp vec3 _1302 = mix(mix(vec3(_2430.x ? _1294.x : _2432.x, _2430.y ? _1294.y : _2432.y, _2430.z ? _1294.z : _2432.z), _1288, _Globals._ShadowBorderColor.xyz * (clamp((_1156 * _1172 + (-_1221)) / clamp(fwidth(_1173) * _1166 + (_1194 - _1221), 0.0, 1.0), 0.0, 1.0) * _1249)), _1288, vec3(mix(1.0, _1250, _Globals._ShadowStrength)));
        _1306 = vec4(_1302.x, _1302.y, _1302.z, _1132.w);
        _1307 = _1250;
    }
    else
    {
        highp vec3 _1304 = _1132.xyz * out_var_TEXCOORD6;
        _1306 = vec4(_1304.x, _1304.y, _1304.z, _1132.w);
        _1307 = 1.0;
    }
    highp vec3 _1310 = vec3(_Globals._LightMaxLimit);
    bvec3 _2434 = isnan(out_var_TEXCOORD6);
    bvec3 _2435 = isnan(_1310);
    highp vec3 _2436 = min(out_var_TEXCOORD6, _1310);
    highp vec3 _2437 = vec3(_2434.x ? _1310.x : _2436.x, _2434.y ? _1310.y : _2436.y, _2434.z ? _1310.z : _2436.z);
    highp vec3 _1311 = vec3(_2435.x ? out_var_TEXCOORD6.x : _2437.x, _2435.y ? out_var_TEXCOORD6.y : _2437.y, _2435.z ? out_var_TEXCOORD6.z : _2437.z);
    highp float _1312 = clamp(_1307, 0.0, 1.0);
    highp vec3 _1314 = _1132.xyz * _Globals._LightMaxLimit;
    bvec3 _2439 = isnan(_1306.xyz);
    bvec3 _2440 = isnan(_1314);
    highp vec3 _2441 = min(_1306.xyz, _1314);
    highp vec3 _2442 = vec3(_2439.x ? _1314.x : _2441.x, _2439.y ? _1314.y : _2441.y, _2439.z ? _1314.z : _2441.z);
    highp vec3 _1315 = vec3(_2440.x ? _1306.xyz.x : _2442.x, _2440.y ? _1306.xyz.y : _2442.y, _2440.z ? _1306.xyz.z : _2442.z);
    highp vec4 _1349;
    if (_648)
    {
        highp vec3 _1319 = _1315.xyz;
        highp vec3 _1329 = _1319 + _886.xyz;
        highp vec3 _1330 = _1319 * _886.xyz;
        bvec3 _1332 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1333 = vec3(_1332.x ? _886.xyz.x : _309.x, _1332.y ? _886.xyz.y : _309.y, _1332.z ? _886.xyz.z : _309.z);
        bvec3 _1335 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1343;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1341 = (-_1319) * _886.xyz + _1329;
            bvec3 _2444 = isnan(_1341);
            bvec3 _2445 = isnan(_1319);
            highp vec3 _2446 = max(_1341, _1319);
            highp vec3 _2447 = vec3(_2444.x ? _1319.x : _2446.x, _2444.y ? _1319.y : _2446.y, _2444.z ? _1319.z : _2446.z);
            _1343 = vec3(_2445.x ? _1341.x : _2447.x, _2445.y ? _1341.y : _2447.y, _2445.z ? _1341.z : _2447.z);
        }
        else
        {
            _1343 = vec3(_1335.x ? _1329.x : _1333.x, _1335.y ? _1329.y : _1333.y, _1335.z ? _1329.z : _1333.z);
        }
        bvec3 _1345 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1347 = mix(_1319, vec3(_1345.x ? _1330.x : _1343.x, _1345.y ? _1330.y : _1343.y, _1345.z ? _1330.z : _1343.z), vec3((-_886.w) * _Globals._Main2ndEnableLighting + _886.w));
        _1349 = vec4(_1347.x, _1347.y, _1347.z, _1306.w);
    }
    else
    {
        _1349 = vec4(_1315.x, _1315.y, _1315.z, _1306.w);
    }
    highp vec4 _1382;
    if (_892)
    {
        highp vec3 _1362 = _1349.xyz + _1130.xyz;
        highp vec3 _1363 = _1349.xyz * _1130.xyz;
        bvec3 _1365 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1366 = vec3(_1365.x ? _1130.xyz.x : _309.x, _1365.y ? _1130.xyz.y : _309.y, _1365.z ? _1130.xyz.z : _309.z);
        bvec3 _1368 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1376;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1374 = (-_1349.xyz) * _1130.xyz + _1362;
            bvec3 _2449 = isnan(_1374);
            bvec3 _2450 = isnan(_1349.xyz);
            highp vec3 _2451 = max(_1374, _1349.xyz);
            highp vec3 _2452 = vec3(_2449.x ? _1349.xyz.x : _2451.x, _2449.y ? _1349.xyz.y : _2451.y, _2449.z ? _1349.xyz.z : _2451.z);
            _1376 = vec3(_2450.x ? _1374.x : _2452.x, _2450.y ? _1374.y : _2452.y, _2450.z ? _1374.z : _2452.z);
        }
        else
        {
            _1376 = vec3(_1368.x ? _1362.x : _1366.x, _1368.y ? _1362.y : _1366.y, _1368.z ? _1362.z : _1366.z);
        }
        bvec3 _1378 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1380 = mix(_1349.xyz, vec3(_1378.x ? _1363.x : _1376.x, _1378.y ? _1363.y : _1376.y, _1378.z ? _1363.z : _1376.z), vec3((-_1130.w) * _Globals._Main3rdEnableLighting + _1130.w));
        _1382 = vec4(_1380.x, _1380.y, _1380.z, _1349.w);
    }
    else
    {
        _1382 = _1349;
    }
    highp vec4 _1428;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1398 = pow(clamp(1.0 - abs(dot(mix(_638, _633, vec3(_Globals._RimShadeNormalStrength)), _426)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1407 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1426 = mix(_1382.xyz, _1382.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1398 - _1407) / clamp(fwidth(_1398) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1407), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1428 = vec4(_1426.x, _1426.y, _1426.z, _1382.w);
    }
    else
    {
        _1428 = _1382;
    }
    highp vec4 _1501;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1452 = dot(normalize(((-_426) * _Globals._BacklightViewStrength) + _410), mix(_638, _633, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1462;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1462 = _1452 * clamp(_409 + distance(_410, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1462 = _1452;
        }
        highp float _1471 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1499 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1132.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_358 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_426, _410) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1462 - _1471) / clamp(fwidth(_1462) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1471), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1311 + _1428.xyz;
        _1501 = vec4(_1499.x, _1499.y, _1499.z, _1428.w);
    }
    else
    {
        _1501 = _1428;
    }
    highp vec4 _1744;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1511 = dFdx(_633);
        highp vec3 _1512 = abs(_1511);
        highp vec3 _1513 = dFdy(_633);
        highp vec3 _1514 = abs(_1513);
        highp float _1515 = dot(_1512, _1512);
        highp float _1516 = dot(_1514, _1514);
        highp float _1517 = isnan(_1516) ? _1515 : (isnan(_1515) ? _1516 : max(_1515, _1516));
        highp float _1520 = (_1517 / (_1517 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1523 = clamp(1.0 - (isnan(_1520) ? 0.0 : (isnan(0.0) ? _1520 : max(0.0, _1520))), 0.0, 1.0);
        highp float _1524 = isnan(_1523) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1523 : min(_Globals._Smoothness, _1523));
        highp float _1525 = 1.0 - _1524;
        highp float _1526 = _1525 * _1525;
        highp vec3 _1531 = _1501.xyz - (_1501.xyz * _Globals._Metallic);
        highp vec3 _1537 = mix(vec3(_Globals._Reflectance), _1132.xyz, vec3(_Globals._Metallic));
        highp vec4 _1640;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1612;
            do
            {
                highp vec3 _1550 = mix(_638, _633, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1552 = normalize(_426 + _410);
                highp float _1554 = clamp(dot(_1550, _1552), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1563 = pow(_1554, 1.0 / _1526);
                    highp float _1570 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1612 = vec3(clamp((_1563 - _1570) / clamp(fwidth(_1563) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1570), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1582 = clamp(dot(_1550, _426), 0.0, 1.0);
                highp float _1584 = clamp(dot(_1550, _410), 0.0, 1.0);
                highp float _1587 = isnan(0.00200000009499490261077880859375) ? _1526 : (isnan(_1526) ? 0.00200000009499490261077880859375 : max(_1526, 0.00200000009499490261077880859375));
                highp float _1588 = 1.0 - _1587;
                highp float _1592 = _1587 * _1587;
                highp float _1595 = (_1554 * _1592 + (-_1554)) * _1554 + 1.0;
                highp float _1603 = 1.0 - clamp(dot(_410, _1552), 0.0, 1.0);
                _1612 = (_1537 + ((((((vec3(1.0) - _1537) * _1603) * _1603) * _1603) * _1603) * _1603)) * (((0.5 / ((_1584 * (_1582 * _1588 + _1587) + (_1582 * (_1584 * _1588 + _1587))) + 9.9999997473787516355514526367188e-06)) * (_1592 / (_1595 * _1595 + 1.0000000116860974230803549289703e-07))) * _1584);
                break;
            } while(false);
            highp vec3 _1613 = _1531.xyz;
            highp vec3 _1615 = _Globals._ReflectionColor.xyz * _1311;
            highp vec3 _1620 = _Globals._ReflectionColor.xyz * _1311 + _1613;
            highp vec3 _1621 = _1613 * _1615;
            bvec3 _1623 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1624 = vec3(_1623.x ? _1615.x : _309.x, _1623.y ? _1615.y : _309.y, _1623.z ? _1615.z : _309.z);
            bvec3 _1626 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1634;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1632 = (-_1613) * _1615 + _1620;
                bvec3 _2474 = isnan(_1632);
                bvec3 _2475 = isnan(_1613);
                highp vec3 _2476 = max(_1632, _1613);
                highp vec3 _2477 = vec3(_2474.x ? _1613.x : _2476.x, _2474.y ? _1613.y : _2476.y, _2474.z ? _1613.z : _2476.z);
                _1634 = vec3(_2475.x ? _1632.x : _2477.x, _2475.y ? _1632.y : _2477.y, _2475.z ? _1632.z : _2477.z);
            }
            else
            {
                _1634 = vec3(_1626.x ? _1620.x : _1624.x, _1626.y ? _1620.y : _1624.y, _1626.z ? _1620.z : _1624.z);
            }
            bvec3 _1636 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1638 = mix(_1613, vec3(_1636.x ? _1621.x : _1634.x, _1636.y ? _1621.y : _1634.y, _1636.z ? _1621.z : _1634.z), _1612 * _Globals._ReflectionColor.w);
            _1640 = vec4(_1638.x, _1638.y, _1638.z, _1501.w);
        }
        else
        {
            _1640 = vec4(_1531.x, _1531.y, _1531.z, _1501.w);
        }
        highp vec4 _1743;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1662 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1669 = reflect(-_426, mix(_638, _633, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1672 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1669, _1525 * ((-4.19999980926513671875) * _1525 + 10.19999980926513671875));
            highp vec3 _1692 = ((_1672.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1672.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1311, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1698 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1669, _1525 * 8.0).xyz * 1.0;
            highp float _1709 = 1.0 - _635;
            highp vec3 _1723 = _1640.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1724 = _1640.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1726 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1727 = vec3(_1726.x ? _Globals._ReflectionColor.xyz.x : _309.x, _1726.y ? _Globals._ReflectionColor.xyz.y : _309.y, _1726.z ? _Globals._ReflectionColor.xyz.z : _309.z);
            bvec3 _1729 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1737;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1735 = (-_1640.xyz) * _Globals._ReflectionColor.xyz + _1723;
                bvec3 _2479 = isnan(_1735);
                bvec3 _2480 = isnan(_1640.xyz);
                highp vec3 _2481 = max(_1735, _1640.xyz);
                highp vec3 _2482 = vec3(_2479.x ? _1640.xyz.x : _2481.x, _2479.y ? _1640.xyz.y : _2481.y, _2479.z ? _1640.xyz.z : _2481.z);
                _1737 = vec3(_2480.x ? _1735.x : _2482.x, _2480.y ? _1735.y : _2482.y, _2480.z ? _1735.z : _2482.z);
            }
            else
            {
                _1737 = vec3(_1729.x ? _1723.x : _1727.x, _1729.y ? _1723.y : _1727.y, _1729.z ? _1723.z : _1727.z);
            }
            bvec3 _1739 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1741 = mix(_1640.xyz, vec3(_1739.x ? _1724.x : _1737.x, _1739.y ? _1724.y : _1737.y, _1739.z ? _1724.z : _1737.z), ((vec3(_1662.x ? _1692.x : _1698.x, _1662.y ? _1692.y : _1698.y, _1662.z ? _1692.z : _1698.z) * (1.0 / (_1526 * _1526 + 1.0))) * mix(_1537, vec3(clamp(_1524 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1709 * _1709) * _1709) * _1709) * _1709))) * _Globals._ReflectionColor.w);
            _1743 = vec4(_1741.x, _1741.y, _1741.z, _1640.w);
        }
        else
        {
            _1743 = _1640;
        }
        _1744 = _1743;
    }
    else
    {
        _1744 = _1501;
    }
    highp vec4 _1850;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _1770 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1771 = vec3(_1770.x ? _426.x : _334.x, _1770.y ? _426.y : _334.y, _1770.z ? _426.z : _334.z);
        bvec3 _1772 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1773 = vec3(_1772.x ? vec3(0.0, 1.0, 0.0).x : _341.x, _1772.y ? vec3(0.0, 1.0, 0.0).y : _341.y, _1772.z ? vec3(0.0, 1.0, 0.0).z : _341.z);
        highp vec3 _1777 = normalize(_1773 - (_1771 * dot(_1771, _1773)));
        highp vec4 _1799 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_638, _633, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_1771, _1777), _1777, _1771)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1800 = _1799.xyz;
        highp float _1806 = _1799.w;
        highp vec3 _1816 = mix(_1800, _1800 * _1311, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1823 = mix(_1816, _1816 * _1132.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1830 = _1744.xyz + _1823;
        highp vec3 _1831 = _1744.xyz * _1823;
        bvec3 _1833 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1834 = vec3(_1833.x ? _1823.x : _309.x, _1833.y ? _1823.y : _309.y, _1833.z ? _1823.z : _309.z);
        bvec3 _1836 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1844;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1842 = (-_1744.xyz) * _1823 + _1830;
            bvec3 _2484 = isnan(_1842);
            bvec3 _2485 = isnan(_1744.xyz);
            highp vec3 _2486 = max(_1842, _1744.xyz);
            highp vec3 _2487 = vec3(_2484.x ? _1744.xyz.x : _2486.x, _2484.y ? _1744.xyz.y : _2486.y, _2484.z ? _1744.xyz.z : _2486.z);
            _1844 = vec3(_2485.x ? _1842.x : _2487.x, _2485.y ? _1842.y : _2487.y, _2485.z ? _1842.z : _2487.z);
        }
        else
        {
            _1844 = vec3(_1836.x ? _1830.x : _1834.x, _1836.y ? _1830.y : _1834.y, _1836.z ? _1830.z : _1834.z);
        }
        bvec3 _1846 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1848 = mix(_1744.xyz, vec3(_1846.x ? _1831.x : _1844.x, _1846.y ? _1831.y : _1844.y, _1846.z ? _1831.z : _1844.z), vec3(1.0) * (_Globals._MatCapBlend * ((_358 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1806, _1806 * _1312, _Globals._MatCapShadowMask))));
        _1850 = vec4(_1848.x, _1848.y, _1848.z, _1744.w);
    }
    else
    {
        _1850 = _1744;
    }
    highp vec4 _1955;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _1875 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1876 = vec3(_1875.x ? _426.x : _334.x, _1875.y ? _426.y : _334.y, _1875.z ? _426.z : _334.z);
        bvec3 _1877 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1878 = vec3(_1877.x ? vec3(0.0, 1.0, 0.0).x : _341.x, _1877.y ? vec3(0.0, 1.0, 0.0).y : _341.y, _1877.z ? vec3(0.0, 1.0, 0.0).z : _341.z);
        highp vec3 _1882 = normalize(_1878 - (_1876 * dot(_1876, _1878)));
        highp vec4 _1904 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_638, _633, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_1876, _1882), _1882, _1876)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1905 = _1904.xyz;
        highp float _1911 = _1904.w;
        highp vec3 _1921 = mix(_1905, _1905 * _1311, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1928 = mix(_1921, _1921 * _1132.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1935 = _1850.xyz + _1928;
        highp vec3 _1936 = _1850.xyz * _1928;
        bvec3 _1938 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1939 = vec3(_1938.x ? _1928.x : _309.x, _1938.y ? _1928.y : _309.y, _1938.z ? _1928.z : _309.z);
        bvec3 _1941 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1949;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1947 = (-_1850.xyz) * _1928 + _1935;
            bvec3 _2489 = isnan(_1947);
            bvec3 _2490 = isnan(_1850.xyz);
            highp vec3 _2491 = max(_1947, _1850.xyz);
            highp vec3 _2492 = vec3(_2489.x ? _1850.xyz.x : _2491.x, _2489.y ? _1850.xyz.y : _2491.y, _2489.z ? _1850.xyz.z : _2491.z);
            _1949 = vec3(_2490.x ? _1947.x : _2492.x, _2490.y ? _1947.y : _2492.y, _2490.z ? _1947.z : _2492.z);
        }
        else
        {
            _1949 = vec3(_1941.x ? _1935.x : _1939.x, _1941.y ? _1935.y : _1939.y, _1941.z ? _1935.z : _1939.z);
        }
        bvec3 _1951 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1953 = mix(_1850.xyz, vec3(_1951.x ? _1936.x : _1949.x, _1951.y ? _1936.y : _1949.y, _1951.z ? _1936.z : _1949.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_358 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1911, _1911 * _1312, _Globals._MatCap2ndShadowMask))));
        _1955 = vec4(_1953.x, _1953.y, _1953.z, _1850.w);
    }
    else
    {
        _1955 = _1850;
    }
    highp vec4 _2101;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1974 = mix(_638, _633, vec3(_Globals._RimNormalStrength));
        highp float _1978 = dot(_410, _1974) * 0.5 + 0.5;
        highp float _2001 = (_358 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1974, _426)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2005 = mix(_2001, _2001 * clamp((_1978 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2006 = _2001 * clamp(((1.0 - _1978) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2016 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2025 = clamp((_2005 - _2016) / clamp(fwidth(_2005) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2016), 0.0, 1.0), 0.0, 1.0);
        highp float _2032 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2042 = clamp((_2006 * _Globals._RimDirStrength + (-_2032)) / clamp(fwidth(_2006 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2032), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2054 = vec3(1.0 - _Globals._RimEnableLighting) + (_1311 * _Globals._RimEnableLighting);
        highp vec3 _2056 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1132.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2057 = _2056 * _2054;
        highp vec3 _2063 = _2056 * _2054 + _1955.xyz;
        highp vec3 _2064 = _1955.xyz * _2057;
        bvec3 _2066 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2067 = vec3(_2066.x ? _2057.x : _309.x, _2066.y ? _2057.y : _309.y, _2066.z ? _2057.z : _309.z);
        bvec3 _2069 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2071 = _Globals._RimBlendMode == 2u;
        highp vec3 _2077;
        if (_2071)
        {
            highp vec3 _2075 = (-_1955.xyz) * _2057 + _2063;
            bvec3 _2494 = isnan(_2075);
            bvec3 _2495 = isnan(_1955.xyz);
            highp vec3 _2496 = max(_2075, _1955.xyz);
            highp vec3 _2497 = vec3(_2494.x ? _1955.xyz.x : _2496.x, _2494.y ? _1955.xyz.y : _2496.y, _2494.z ? _1955.xyz.z : _2496.z);
            _2077 = vec3(_2495.x ? _2075.x : _2497.x, _2495.y ? _2075.y : _2497.y, _2495.z ? _2075.z : _2497.z);
        }
        else
        {
            _2077 = vec3(_2069.x ? _2063.x : _2067.x, _2069.y ? _2063.y : _2067.y, _2069.z ? _2063.z : _2067.z);
        }
        bvec3 _2079 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2082 = mix(_1955.xyz, vec3(_2079.x ? _2064.x : _2077.x, _2079.y ? _2064.y : _2077.y, _2079.z ? _2064.z : _2077.z), vec3(mix(_2025, _2025 * _1312, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2084 = _Globals._RimIndirColor.xyz * _2054;
        highp vec3 _2088 = _Globals._RimIndirColor.xyz * _2054 + _2082;
        highp vec3 _2089 = _2082 * _2084;
        highp vec3 _2090 = vec3(_2066.x ? _2084.x : _309.x, _2066.y ? _2084.y : _309.y, _2066.z ? _2084.z : _309.z);
        highp vec3 _2097;
        if (_2071)
        {
            highp vec3 _2095 = (-_2082) * _2084 + _2088;
            bvec3 _2499 = isnan(_2095);
            bvec3 _2500 = isnan(_2082);
            highp vec3 _2501 = max(_2095, _2082);
            highp vec3 _2502 = vec3(_2499.x ? _2082.x : _2501.x, _2499.y ? _2082.y : _2501.y, _2499.z ? _2082.z : _2501.z);
            _2097 = vec3(_2500.x ? _2095.x : _2502.x, _2500.y ? _2095.y : _2502.y, _2500.z ? _2095.z : _2502.z);
        }
        else
        {
            _2097 = vec3(_2069.x ? _2088.x : _2090.x, _2069.y ? _2088.y : _2090.y, _2069.z ? _2088.z : _2090.z);
        }
        highp vec3 _2099 = mix(_2082, vec3(_2079.x ? _2089.x : _2097.x, _2079.y ? _2089.y : _2097.y, _2079.z ? _2089.z : _2097.z), vec3(mix(_2042, _2042 * _1312, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2101 = vec4(_2099.x, _2099.y, _2099.z, _1955.w);
    }
    else
    {
        _2101 = _1955;
    }
    highp vec4 _2215;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2112 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2113 = vec2(_2112.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2112.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2115 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2116 = vec2(_2115.x ? out_var_TEXCOORD1.xy.x : _2113.x, _2115.y ? out_var_TEXCOORD1.xy.y : _2113.y);
        bvec2 _2118 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2119 = vec2(_2118.x ? out_var_TEXCOORD1.zw.x : _2116.x, _2118.y ? out_var_TEXCOORD1.zw.y : _2116.y);
        bvec2 _2121 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2138 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2139 = sin(_2138);
        highp float _2140 = cos(_2138);
        highp vec2 _2141 = ((vec2(_2121.x ? _637.x : _2119.x, _2121.y ? _637.y : _2119.y) + ((_436.xy / vec2(_436.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2142 = _2141.x;
        highp float _2143 = _2141.y;
        highp vec4 _2156 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2142 * _2140 + (-(_2143 * _2139)), _2142 * _2139 + (_2143 * _2140)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2157 = _Globals._EmissionColor * _2156;
        highp vec3 _2158 = _2157.xyz;
        highp vec3 _2164 = mix(_2158, _2158 * _414, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2178 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2184;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2184 = roundEven(_2178);
        }
        else
        {
            _2184 = _2178;
        }
        highp vec3 _2191 = mix(_2164, _2164 * _1132.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2195 = _2101.xyz + _2191;
        highp vec3 _2196 = _2101.xyz * _2191;
        bvec3 _2198 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2199 = vec3(_2198.x ? _2191.x : _309.x, _2198.y ? _2191.y : _309.y, _2198.z ? _2191.z : _309.z);
        bvec3 _2201 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2209;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2207 = (-_2101.xyz) * _2191 + _2195;
            bvec3 _2504 = isnan(_2207);
            bvec3 _2505 = isnan(_2101.xyz);
            highp vec3 _2506 = max(_2207, _2101.xyz);
            highp vec3 _2507 = vec3(_2504.x ? _2101.xyz.x : _2506.x, _2504.y ? _2101.xyz.y : _2506.y, _2504.z ? _2101.xyz.z : _2506.z);
            _2209 = vec3(_2505.x ? _2207.x : _2507.x, _2505.y ? _2207.y : _2507.y, _2505.z ? _2207.z : _2507.z);
        }
        else
        {
            _2209 = vec3(_2201.x ? _2195.x : _2199.x, _2201.y ? _2195.y : _2199.y, _2201.z ? _2195.z : _2199.z);
        }
        bvec3 _2211 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2213 = mix(_2101.xyz, vec3(_2211.x ? _2196.x : _2209.x, _2211.y ? _2196.y : _2209.y, _2211.z ? _2196.z : _2209.z), vec3((_Globals._EmissionBlend * mix(1.0, _2184, _Globals._EmissionBlink.x)) * _2157.w));
        _2215 = vec4(_2213.x, _2213.y, _2213.z, _2101.w);
    }
    else
    {
        _2215 = _2101;
    }
    highp vec4 _2280;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2229 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _414, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2243 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2249;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2249 = roundEven(_2243);
        }
        else
        {
            _2249 = _2243;
        }
        highp vec3 _2256 = mix(_2229, _2229 * _1132.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2260 = _2215.xyz + _2256;
        highp vec3 _2261 = _2215.xyz * _2256;
        bvec3 _2263 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2264 = vec3(_2263.x ? _2256.x : _309.x, _2263.y ? _2256.y : _309.y, _2263.z ? _2256.z : _309.z);
        bvec3 _2266 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2274;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2272 = (-_2215.xyz) * _2256 + _2260;
            bvec3 _2509 = isnan(_2272);
            bvec3 _2510 = isnan(_2215.xyz);
            highp vec3 _2511 = max(_2272, _2215.xyz);
            highp vec3 _2512 = vec3(_2509.x ? _2215.xyz.x : _2511.x, _2509.y ? _2215.xyz.y : _2511.y, _2509.z ? _2215.xyz.z : _2511.z);
            _2274 = vec3(_2510.x ? _2272.x : _2512.x, _2510.y ? _2272.y : _2512.y, _2510.z ? _2272.z : _2512.z);
        }
        else
        {
            _2274 = vec3(_2266.x ? _2260.x : _2264.x, _2266.y ? _2260.y : _2264.y, _2266.z ? _2260.z : _2264.z);
        }
        bvec3 _2276 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2278 = mix(_2215.xyz, vec3(_2276.x ? _2261.x : _2274.x, _2276.y ? _2261.y : _2274.y, _2276.z ? _2261.z : _2274.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2249, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2280 = vec4(_2278.x, _2278.y, _2278.z, _2215.w);
    }
    else
    {
        _2280 = _2215;
    }
    bvec3 _2282 = bvec3(_358 < 0.0);
    highp vec3 _2291 = mix(_2280.xyz, _Globals._BackfaceColor.xyz * _1311, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2326 = vec3(_2282.x ? _2291.x : _2280.xyz.x, _2282.y ? _2291.y : _2280.xyz.y, _2282.z ? _2291.z : _2280.xyz.z).xyz;
    highp vec3 _2334 = mix(_2326, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2326, vec3(pow(clamp(1.0 - abs(dot(_638, _426)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_358 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _419) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2334.x, _2334.y, _2334.z, _2280.w), vec4(out_var_TEXCOORD9));
}
