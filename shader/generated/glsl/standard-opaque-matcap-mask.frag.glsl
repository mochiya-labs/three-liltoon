#version 300 es
precision mediump float;
precision highp int;

vec3 _315;
vec3 _321;

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
    highp vec3 _340 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _347 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _364 = float(gl_FrontFacing ? 1 : (-1));
    highp float _415;
    do
    {
        highp vec3 _371 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _372 = _371.xy;
        highp float _378 = _371.z;
        if ((any(lessThan(_372, vec2(0.0))) || any(greaterThan(_372, vec2(1.0)))) || (_378 > 1.0))
        {
            _415 = 1.0;
            break;
        }
        highp float _388 = _378 + _Globals.uShadowBias;
        _415 = (((step(_388, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _372), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_388, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _372), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_388, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _372), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_388, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _372), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _416 = normalize(out_var_TEXCOORD7);
    highp vec3 _420 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _424 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _425 = length(_424);
    highp vec3 _432 = normalize(_424);
    highp mat3 _441 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _446 = bvec2(_364 < (_Globals._ShiftBackfaceUV - 1.0));
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
        highp vec3 _568 = vec3(_567.x, _567.y, _321.z);
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
    highp vec3 _626 = normalize(_441 * _624);
    bvec3 _631 = bvec3(_364 < (_Globals._FlipNormal - 1.0));
    highp vec3 _632 = -_626;
    highp vec3 _633 = vec3(_631.x ? _632.x : _626.x, _631.y ? _632.y : _626.y, _631.z ? _632.z : _626.z);
    highp float _635 = clamp(dot(_633, _432), 0.0, 1.0);
    highp vec3 _636 = normalize(out_var_TEXCOORD4);
    highp vec2 _640 = ((_633 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _347, _340)).xy * 0.5) + vec2(0.5);
    bool _641 = out_var_TEXCOORD5.w > 0.0;
    bool _646 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _884;
    highp vec4 _885;
    if (_646)
    {
        bvec2 _652 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _653 = vec2(_652.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _652.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _655 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _656 = vec2(_655.x ? out_var_TEXCOORD1.xy.x : _653.x, _655.y ? out_var_TEXCOORD1.xy.y : _653.y);
        bvec2 _658 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _659 = vec2(_658.x ? out_var_TEXCOORD1.zw.x : _656.x, _658.y ? out_var_TEXCOORD1.zw.y : _656.y);
        bvec2 _661 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _662 = vec2(_661.x ? _640.x : _659.x, _661.y ? _640.y : _659.y);
        highp vec4 _701 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _702 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _710;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _709 = _662;
            _709.x = abs(_662.x - 0.5) + 0.5;
            _710 = _709;
        }
        else
        {
            _710 = _662;
        }
        highp vec2 _711 = _701.xy;
        highp vec2 _712 = _701.zw;
        highp vec2 _713 = _710 * _711 + _712;
        highp vec2 _722;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_662.x < 0.5))
        {
            highp vec2 _721 = _713;
            _721.x = 1.0 - _713.x;
            _722 = _721;
        }
        else
        {
            _722 = _713;
        }
        highp vec2 _729;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _641)
        {
            highp vec2 _728 = _722;
            _728.x = 1.0 - _722.x;
            _729 = _728;
        }
        else
        {
            _729 = _722;
        }
        highp vec2 _734;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _641)
        {
            highp vec2 _733 = _729;
            _733.x = -1.0;
            _734 = _733;
        }
        else
        {
            _734 = _729;
        }
        highp vec2 _740;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_641))
        {
            highp vec2 _739 = _734;
            _739.x = -1.0;
            _740 = _739;
        }
        else
        {
            _740 = _734;
        }
        highp float _743 = sin(_702);
        highp float _744 = cos(_702);
        highp vec2 _745 = ((_740 - _712) / _711) - vec2(0.5);
        highp float _746 = _745.x;
        highp float _747 = _745.y;
        highp vec2 _755 = (vec2(_746 * _744 + (-(_747 * _743)), _746 * _743 + (_747 * _744)) + vec2(0.5)) * _711 + _712;
        uint _759 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _763 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _759 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _759);
        highp float _764 = _755.x;
        highp float _765 = _755.y;
        uint _772 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _782 = ((mix(vec2(_764, 1.0 - _765), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_763 % _772), float(_763 / _772))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _782.y = 1.0 - _782.y;
        highp vec4 _787 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _782);
        highp vec4 _803;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _790 = _787.x;
            highp float _791 = _787.y;
            highp float _792 = _787.z;
            highp float _793 = isnan(_791) ? _790 : (isnan(_790) ? _791 : min(_790, _791));
            highp float _794 = isnan(_791) ? _790 : (isnan(_790) ? _791 : max(_790, _791));
            highp float _795 = isnan(_792) ? _794 : (isnan(_794) ? _792 : min(_794, _792));
            highp float _796 = isnan(_795) ? _793 : (isnan(_793) ? _795 : max(_793, _795));
            _803 = vec4(1.0, 1.0, 1.0, clamp((_796 - 0.5) / clamp(fwidth(_796), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _803 = _787;
        }
        highp vec4 _826;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _807 = clamp(_635 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _810 = 0.5 - abs(_764 - 0.5);
            highp float _817 = 0.5 - abs(_765 - 0.5);
            highp vec4 _825 = _803;
            _825.w = _803.w * (clamp(_810 / clamp(fwidth(_810), 9.9999997473787516355514526367188e-05, _807), 0.0, 1.0) * clamp(_817 / clamp(fwidth(_817), 9.9999997473787516355514526367188e-05, _807), 0.0, 1.0));
            _826 = _825;
        }
        else
        {
            _826 = _803;
        }
        highp vec4 _827 = _Globals._Color2nd * _826;
        highp float _828 = _827.w;
        _827.w = mix(_828, _828 * clamp((_425 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _854;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_364 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_364 < 0.0)))
        {
            highp vec4 _853 = _827;
            _853.w = 0.0;
            _854 = _853;
        }
        else
        {
            _854 = _827;
        }
        highp vec3 _855 = _543.xyz;
        highp vec3 _864 = _855 + _854.xyz;
        highp vec3 _865 = _855 * _854.xyz;
        bvec3 _867 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _868 = vec3(_867.x ? _854.xyz.x : _315.x, _867.y ? _854.xyz.y : _315.y, _867.z ? _854.xyz.z : _315.z);
        bvec3 _870 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _878;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _876 = (-_855) * _854.xyz + _864;
            bvec3 _2444 = isnan(_876);
            bvec3 _2445 = isnan(_855);
            highp vec3 _2446 = max(_876, _855);
            highp vec3 _2447 = vec3(_2444.x ? _855.x : _2446.x, _2444.y ? _855.y : _2446.y, _2444.z ? _855.z : _2446.z);
            _878 = vec3(_2445.x ? _876.x : _2447.x, _2445.y ? _876.y : _2447.y, _2445.z ? _876.z : _2447.z);
        }
        else
        {
            _878 = vec3(_870.x ? _864.x : _868.x, _870.y ? _864.y : _868.y, _870.z ? _864.z : _868.z);
        }
        bvec3 _880 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _882 = mix(_855, vec3(_880.x ? _865.x : _878.x, _880.y ? _865.y : _878.y, _880.z ? _865.z : _878.z), vec3(_854.w * _Globals._Main2ndEnableLighting));
        _884 = _854;
        _885 = vec4(_882.x, _882.y, _882.z, _543.w);
    }
    else
    {
        _884 = _Globals._Color2nd;
        _885 = _543;
    }
    bool _890 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1128;
    highp vec4 _1129;
    if (_890)
    {
        bvec2 _896 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _897 = vec2(_896.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _896.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _899 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _900 = vec2(_899.x ? out_var_TEXCOORD1.xy.x : _897.x, _899.y ? out_var_TEXCOORD1.xy.y : _897.y);
        bvec2 _902 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _903 = vec2(_902.x ? out_var_TEXCOORD1.zw.x : _900.x, _902.y ? out_var_TEXCOORD1.zw.y : _900.y);
        bvec2 _905 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _906 = vec2(_905.x ? _640.x : _903.x, _905.y ? _640.y : _903.y);
        highp vec4 _945 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _946 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _954;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _953 = _906;
            _953.x = abs(_906.x - 0.5) + 0.5;
            _954 = _953;
        }
        else
        {
            _954 = _906;
        }
        highp vec2 _955 = _945.xy;
        highp vec2 _956 = _945.zw;
        highp vec2 _957 = _954 * _955 + _956;
        highp vec2 _966;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_906.x < 0.5))
        {
            highp vec2 _965 = _957;
            _965.x = 1.0 - _957.x;
            _966 = _965;
        }
        else
        {
            _966 = _957;
        }
        highp vec2 _973;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _641)
        {
            highp vec2 _972 = _966;
            _972.x = 1.0 - _966.x;
            _973 = _972;
        }
        else
        {
            _973 = _966;
        }
        highp vec2 _978;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _641)
        {
            highp vec2 _977 = _973;
            _977.x = -1.0;
            _978 = _977;
        }
        else
        {
            _978 = _973;
        }
        highp vec2 _984;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_641))
        {
            highp vec2 _983 = _978;
            _983.x = -1.0;
            _984 = _983;
        }
        else
        {
            _984 = _978;
        }
        highp float _987 = sin(_946);
        highp float _988 = cos(_946);
        highp vec2 _989 = ((_984 - _956) / _955) - vec2(0.5);
        highp float _990 = _989.x;
        highp float _991 = _989.y;
        highp vec2 _999 = (vec2(_990 * _988 + (-(_991 * _987)), _990 * _987 + (_991 * _988)) + vec2(0.5)) * _955 + _956;
        uint _1003 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1007 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1003 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1003);
        highp float _1008 = _999.x;
        highp float _1009 = _999.y;
        uint _1016 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1026 = ((mix(vec2(_1008, 1.0 - _1009), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1007 % _1016), float(_1007 / _1016))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1026.y = 1.0 - _1026.y;
        highp vec4 _1031 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1026);
        highp vec4 _1047;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1034 = _1031.x;
            highp float _1035 = _1031.y;
            highp float _1036 = _1031.z;
            highp float _1037 = isnan(_1035) ? _1034 : (isnan(_1034) ? _1035 : min(_1034, _1035));
            highp float _1038 = isnan(_1035) ? _1034 : (isnan(_1034) ? _1035 : max(_1034, _1035));
            highp float _1039 = isnan(_1036) ? _1038 : (isnan(_1038) ? _1036 : min(_1038, _1036));
            highp float _1040 = isnan(_1039) ? _1037 : (isnan(_1037) ? _1039 : max(_1037, _1039));
            _1047 = vec4(1.0, 1.0, 1.0, clamp((_1040 - 0.5) / clamp(fwidth(_1040), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1047 = _1031;
        }
        highp vec4 _1070;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1051 = clamp(_635 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1054 = 0.5 - abs(_1008 - 0.5);
            highp float _1061 = 0.5 - abs(_1009 - 0.5);
            highp vec4 _1069 = _1047;
            _1069.w = _1047.w * (clamp(_1054 / clamp(fwidth(_1054), 9.9999997473787516355514526367188e-05, _1051), 0.0, 1.0) * clamp(_1061 / clamp(fwidth(_1061), 9.9999997473787516355514526367188e-05, _1051), 0.0, 1.0));
            _1070 = _1069;
        }
        else
        {
            _1070 = _1047;
        }
        highp vec4 _1071 = _Globals._Color3rd * _1070;
        highp float _1072 = _1071.w;
        _1071.w = mix(_1072, _1072 * clamp((_425 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1098;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_364 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_364 < 0.0)))
        {
            highp vec4 _1097 = _1071;
            _1097.w = 0.0;
            _1098 = _1097;
        }
        else
        {
            _1098 = _1071;
        }
        highp vec3 _1108 = _885.xyz + _1098.xyz;
        highp vec3 _1109 = _885.xyz * _1098.xyz;
        bvec3 _1111 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1112 = vec3(_1111.x ? _1098.xyz.x : _315.x, _1111.y ? _1098.xyz.y : _315.y, _1111.z ? _1098.xyz.z : _315.z);
        bvec3 _1114 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1122;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1120 = (-_885.xyz) * _1098.xyz + _1108;
            bvec3 _2469 = isnan(_1120);
            bvec3 _2470 = isnan(_885.xyz);
            highp vec3 _2471 = max(_1120, _885.xyz);
            highp vec3 _2472 = vec3(_2469.x ? _885.xyz.x : _2471.x, _2469.y ? _885.xyz.y : _2471.y, _2469.z ? _885.xyz.z : _2471.z);
            _1122 = vec3(_2470.x ? _1120.x : _2472.x, _2470.y ? _1120.y : _2472.y, _2470.z ? _1120.z : _2472.z);
        }
        else
        {
            _1122 = vec3(_1114.x ? _1108.x : _1112.x, _1114.y ? _1108.y : _1112.y, _1114.z ? _1108.z : _1112.z);
        }
        bvec3 _1124 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1126 = mix(_885.xyz, vec3(_1124.x ? _1109.x : _1122.x, _1124.y ? _1109.y : _1122.y, _1124.z ? _1109.z : _1122.z), vec3(_1098.w * _Globals._Main3rdEnableLighting));
        _1128 = _1098;
        _1129 = vec4(_1126.x, _1126.y, _1126.z, _885.w);
    }
    else
    {
        _1128 = _Globals._Color3rd;
        _1129 = _885;
    }
    highp vec4 _1130 = _1129;
    _1130.w = 1.0;
    highp vec4 _1304;
    highp float _1305;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1154 = clamp(dot(_416, mix(_636, _633, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1157 = clamp(dot(_416, mix(_636, _633, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1160 = clamp(dot(_416, mix(_636, _633, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1164 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1167 = clamp(_415 + distance(_416, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1170 = mix(1.0, _1167, _Globals._ShadowReceive);
        highp float _1171 = _1154 * _1170;
        highp float _1174 = mix(1.0, _1167, _Globals._Shadow2ndReceive);
        highp float _1178 = mix(1.0, _1167, _Globals._Shadow3rdReceive);
        highp float _1189 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1190 = clamp(_1189, 0.0, 1.0);
        highp float _1192 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1205 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1219 = clamp(_1189 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1232 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1247 = (_364 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1248 = clamp((_1154 * _1170 + (-_1190)) / clamp(fwidth(_1171) * _1164 + (_1192 - _1190), 0.0, 1.0), 0.0, 1.0) * _1247;
        highp vec3 _1280 = mix(mix(_1130.xyz * _Globals._ShadowColor.xyz, (_1130.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1157 * _1174 + (-_1205)) / clamp(fwidth(_1157 * _1174) * _1164 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1205), 0.0, 1.0), 0.0, 1.0) * _1247)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1130.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1160 * _1178 + (-_1232)) / clamp(fwidth(_1160 * _1178) * _1164 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1232), 0.0, 1.0), 0.0, 1.0) * _1247)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1286 = _1130.xyz * out_var_TEXCOORD6;
        highp vec3 _1292 = mix(mix(_1280, _1280 * _1130.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1130.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2474 = isnan(_1292);
        bvec3 _2475 = isnan(_1286);
        highp vec3 _2476 = min(_1292, _1286);
        highp vec3 _2477 = vec3(_2474.x ? _1286.x : _2476.x, _2474.y ? _1286.y : _2476.y, _2474.z ? _1286.z : _2476.z);
        highp vec3 _1300 = mix(mix(vec3(_2475.x ? _1292.x : _2477.x, _2475.y ? _1292.y : _2477.y, _2475.z ? _1292.z : _2477.z), _1286, _Globals._ShadowBorderColor.xyz * (clamp((_1154 * _1170 + (-_1219)) / clamp(fwidth(_1171) * _1164 + (_1192 - _1219), 0.0, 1.0), 0.0, 1.0) * _1247)), _1286, vec3(mix(1.0, _1248, _Globals._ShadowStrength)));
        _1304 = vec4(_1300.x, _1300.y, _1300.z, _1130.w);
        _1305 = _1248;
    }
    else
    {
        highp vec3 _1302 = _1130.xyz * out_var_TEXCOORD6;
        _1304 = vec4(_1302.x, _1302.y, _1302.z, _1130.w);
        _1305 = 1.0;
    }
    highp vec3 _1308 = vec3(_Globals._LightMaxLimit);
    bvec3 _2479 = isnan(out_var_TEXCOORD6);
    bvec3 _2480 = isnan(_1308);
    highp vec3 _2481 = min(out_var_TEXCOORD6, _1308);
    highp vec3 _2482 = vec3(_2479.x ? _1308.x : _2481.x, _2479.y ? _1308.y : _2481.y, _2479.z ? _1308.z : _2481.z);
    highp vec3 _1309 = vec3(_2480.x ? out_var_TEXCOORD6.x : _2482.x, _2480.y ? out_var_TEXCOORD6.y : _2482.y, _2480.z ? out_var_TEXCOORD6.z : _2482.z);
    highp float _1310 = clamp(_1305, 0.0, 1.0);
    highp vec3 _1312 = _1130.xyz * _Globals._LightMaxLimit;
    bvec3 _2484 = isnan(_1304.xyz);
    bvec3 _2485 = isnan(_1312);
    highp vec3 _2486 = min(_1304.xyz, _1312);
    highp vec3 _2487 = vec3(_2484.x ? _1312.x : _2486.x, _2484.y ? _1312.y : _2486.y, _2484.z ? _1312.z : _2486.z);
    highp vec3 _1313 = vec3(_2485.x ? _1304.xyz.x : _2487.x, _2485.y ? _1304.xyz.y : _2487.y, _2485.z ? _1304.xyz.z : _2487.z);
    highp vec4 _1347;
    if (_646)
    {
        highp vec3 _1317 = _1313.xyz;
        highp vec3 _1327 = _1317 + _884.xyz;
        highp vec3 _1328 = _1317 * _884.xyz;
        bvec3 _1330 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1331 = vec3(_1330.x ? _884.xyz.x : _315.x, _1330.y ? _884.xyz.y : _315.y, _1330.z ? _884.xyz.z : _315.z);
        bvec3 _1333 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1341;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1339 = (-_1317) * _884.xyz + _1327;
            bvec3 _2489 = isnan(_1339);
            bvec3 _2490 = isnan(_1317);
            highp vec3 _2491 = max(_1339, _1317);
            highp vec3 _2492 = vec3(_2489.x ? _1317.x : _2491.x, _2489.y ? _1317.y : _2491.y, _2489.z ? _1317.z : _2491.z);
            _1341 = vec3(_2490.x ? _1339.x : _2492.x, _2490.y ? _1339.y : _2492.y, _2490.z ? _1339.z : _2492.z);
        }
        else
        {
            _1341 = vec3(_1333.x ? _1327.x : _1331.x, _1333.y ? _1327.y : _1331.y, _1333.z ? _1327.z : _1331.z);
        }
        bvec3 _1343 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1345 = mix(_1317, vec3(_1343.x ? _1328.x : _1341.x, _1343.y ? _1328.y : _1341.y, _1343.z ? _1328.z : _1341.z), vec3((-_884.w) * _Globals._Main2ndEnableLighting + _884.w));
        _1347 = vec4(_1345.x, _1345.y, _1345.z, _1304.w);
    }
    else
    {
        _1347 = vec4(_1313.x, _1313.y, _1313.z, _1304.w);
    }
    highp vec4 _1380;
    if (_890)
    {
        highp vec3 _1360 = _1347.xyz + _1128.xyz;
        highp vec3 _1361 = _1347.xyz * _1128.xyz;
        bvec3 _1363 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1364 = vec3(_1363.x ? _1128.xyz.x : _315.x, _1363.y ? _1128.xyz.y : _315.y, _1363.z ? _1128.xyz.z : _315.z);
        bvec3 _1366 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1374;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1372 = (-_1347.xyz) * _1128.xyz + _1360;
            bvec3 _2494 = isnan(_1372);
            bvec3 _2495 = isnan(_1347.xyz);
            highp vec3 _2496 = max(_1372, _1347.xyz);
            highp vec3 _2497 = vec3(_2494.x ? _1347.xyz.x : _2496.x, _2494.y ? _1347.xyz.y : _2496.y, _2494.z ? _1347.xyz.z : _2496.z);
            _1374 = vec3(_2495.x ? _1372.x : _2497.x, _2495.y ? _1372.y : _2497.y, _2495.z ? _1372.z : _2497.z);
        }
        else
        {
            _1374 = vec3(_1366.x ? _1360.x : _1364.x, _1366.y ? _1360.y : _1364.y, _1366.z ? _1360.z : _1364.z);
        }
        bvec3 _1376 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1378 = mix(_1347.xyz, vec3(_1376.x ? _1361.x : _1374.x, _1376.y ? _1361.y : _1374.y, _1376.z ? _1361.z : _1374.z), vec3((-_1128.w) * _Globals._Main3rdEnableLighting + _1128.w));
        _1380 = vec4(_1378.x, _1378.y, _1378.z, _1347.w);
    }
    else
    {
        _1380 = _1347;
    }
    highp vec4 _1426;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1396 = pow(clamp(1.0 - abs(dot(mix(_636, _633, vec3(_Globals._RimShadeNormalStrength)), _432)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1405 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1424 = mix(_1380.xyz, _1380.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1396 - _1405) / clamp(fwidth(_1396) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1405), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1426 = vec4(_1424.x, _1424.y, _1424.z, _1380.w);
    }
    else
    {
        _1426 = _1380;
    }
    highp vec4 _1499;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1450 = dot(normalize(((-_432) * _Globals._BacklightViewStrength) + _416), mix(_636, _633, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1460;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1460 = _1450 * clamp(_415 + distance(_416, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1460 = _1450;
        }
        highp float _1469 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1497 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1130.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_364 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_432, _416) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1460 - _1469) / clamp(fwidth(_1460) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1469), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1309 + _1426.xyz;
        _1499 = vec4(_1497.x, _1497.y, _1497.z, _1426.w);
    }
    else
    {
        _1499 = _1426;
    }
    highp vec4 _1742;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1509 = dFdx(_633);
        highp vec3 _1510 = abs(_1509);
        highp vec3 _1511 = dFdy(_633);
        highp vec3 _1512 = abs(_1511);
        highp float _1513 = dot(_1510, _1510);
        highp float _1514 = dot(_1512, _1512);
        highp float _1515 = isnan(_1514) ? _1513 : (isnan(_1513) ? _1514 : max(_1513, _1514));
        highp float _1518 = (_1515 / (_1515 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1521 = clamp(1.0 - (isnan(_1518) ? 0.0 : (isnan(0.0) ? _1518 : max(0.0, _1518))), 0.0, 1.0);
        highp float _1522 = isnan(_1521) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1521 : min(_Globals._Smoothness, _1521));
        highp float _1523 = 1.0 - _1522;
        highp float _1524 = _1523 * _1523;
        highp vec3 _1529 = _1499.xyz - (_1499.xyz * _Globals._Metallic);
        highp vec3 _1535 = mix(vec3(_Globals._Reflectance), _1130.xyz, vec3(_Globals._Metallic));
        highp vec4 _1638;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1610;
            do
            {
                highp vec3 _1548 = mix(_636, _633, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1550 = normalize(_432 + _416);
                highp float _1552 = clamp(dot(_1548, _1550), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1561 = pow(_1552, 1.0 / _1524);
                    highp float _1568 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1610 = vec3(clamp((_1561 - _1568) / clamp(fwidth(_1561) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1568), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1580 = clamp(dot(_1548, _432), 0.0, 1.0);
                highp float _1582 = clamp(dot(_1548, _416), 0.0, 1.0);
                highp float _1585 = isnan(0.00200000009499490261077880859375) ? _1524 : (isnan(_1524) ? 0.00200000009499490261077880859375 : max(_1524, 0.00200000009499490261077880859375));
                highp float _1586 = 1.0 - _1585;
                highp float _1590 = _1585 * _1585;
                highp float _1593 = (_1552 * _1590 + (-_1552)) * _1552 + 1.0;
                highp float _1601 = 1.0 - clamp(dot(_416, _1550), 0.0, 1.0);
                _1610 = (_1535 + ((((((vec3(1.0) - _1535) * _1601) * _1601) * _1601) * _1601) * _1601)) * (((0.5 / ((_1582 * (_1580 * _1586 + _1585) + (_1580 * (_1582 * _1586 + _1585))) + 9.9999997473787516355514526367188e-06)) * (_1590 / (_1593 * _1593 + 1.0000000116860974230803549289703e-07))) * _1582);
                break;
            } while(false);
            highp vec3 _1611 = _1529.xyz;
            highp vec3 _1613 = _Globals._ReflectionColor.xyz * _1309;
            highp vec3 _1618 = _Globals._ReflectionColor.xyz * _1309 + _1611;
            highp vec3 _1619 = _1611 * _1613;
            bvec3 _1621 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1622 = vec3(_1621.x ? _1613.x : _315.x, _1621.y ? _1613.y : _315.y, _1621.z ? _1613.z : _315.z);
            bvec3 _1624 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1632;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1630 = (-_1611) * _1613 + _1618;
                bvec3 _2519 = isnan(_1630);
                bvec3 _2520 = isnan(_1611);
                highp vec3 _2521 = max(_1630, _1611);
                highp vec3 _2522 = vec3(_2519.x ? _1611.x : _2521.x, _2519.y ? _1611.y : _2521.y, _2519.z ? _1611.z : _2521.z);
                _1632 = vec3(_2520.x ? _1630.x : _2522.x, _2520.y ? _1630.y : _2522.y, _2520.z ? _1630.z : _2522.z);
            }
            else
            {
                _1632 = vec3(_1624.x ? _1618.x : _1622.x, _1624.y ? _1618.y : _1622.y, _1624.z ? _1618.z : _1622.z);
            }
            bvec3 _1634 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1636 = mix(_1611, vec3(_1634.x ? _1619.x : _1632.x, _1634.y ? _1619.y : _1632.y, _1634.z ? _1619.z : _1632.z), _1610 * _Globals._ReflectionColor.w);
            _1638 = vec4(_1636.x, _1636.y, _1636.z, _1499.w);
        }
        else
        {
            _1638 = vec4(_1529.x, _1529.y, _1529.z, _1499.w);
        }
        highp vec4 _1741;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1660 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1667 = reflect(-_432, mix(_636, _633, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1670 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1667, _1523 * ((-4.19999980926513671875) * _1523 + 10.19999980926513671875));
            highp vec3 _1690 = ((_1670.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1670.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1309, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1696 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1667, _1523 * 8.0).xyz * 1.0;
            highp float _1707 = 1.0 - _635;
            highp vec3 _1721 = _1638.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1722 = _1638.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1724 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1725 = vec3(_1724.x ? _Globals._ReflectionColor.xyz.x : _315.x, _1724.y ? _Globals._ReflectionColor.xyz.y : _315.y, _1724.z ? _Globals._ReflectionColor.xyz.z : _315.z);
            bvec3 _1727 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1735;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1733 = (-_1638.xyz) * _Globals._ReflectionColor.xyz + _1721;
                bvec3 _2524 = isnan(_1733);
                bvec3 _2525 = isnan(_1638.xyz);
                highp vec3 _2526 = max(_1733, _1638.xyz);
                highp vec3 _2527 = vec3(_2524.x ? _1638.xyz.x : _2526.x, _2524.y ? _1638.xyz.y : _2526.y, _2524.z ? _1638.xyz.z : _2526.z);
                _1735 = vec3(_2525.x ? _1733.x : _2527.x, _2525.y ? _1733.y : _2527.y, _2525.z ? _1733.z : _2527.z);
            }
            else
            {
                _1735 = vec3(_1727.x ? _1721.x : _1725.x, _1727.y ? _1721.y : _1725.y, _1727.z ? _1721.z : _1725.z);
            }
            bvec3 _1737 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1739 = mix(_1638.xyz, vec3(_1737.x ? _1722.x : _1735.x, _1737.y ? _1722.y : _1735.y, _1737.z ? _1722.z : _1735.z), ((vec3(_1660.x ? _1690.x : _1696.x, _1660.y ? _1690.y : _1696.y, _1660.z ? _1690.z : _1696.z) * (1.0 / (_1524 * _1524 + 1.0))) * mix(_1535, vec3(clamp(_1522 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1707 * _1707) * _1707) * _1707) * _1707))) * _Globals._ReflectionColor.w);
            _1741 = vec4(_1739.x, _1739.y, _1739.z, _1638.w);
        }
        else
        {
            _1741 = _1638;
        }
        _1742 = _1741;
    }
    else
    {
        _1742 = _1499;
    }
    highp vec4 _1893;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1787;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1764 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _476 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1764.w = _1764.w * _1764.x;
            highp vec2 _1775 = ((_1764.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1776 = vec3(_1775.x, _1775.y, _321.z);
            highp vec2 _1777 = _1775.xy;
            _1776.z = sqrt(1.0 - clamp(dot(_1777, _1777), 0.0, 1.0));
            highp vec3 _1784 = normalize(_441 * _1776);
            highp vec3 _1785 = -_1784;
            _1787 = vec3(_631.x ? _1785.x : _1784.x, _631.y ? _1785.y : _1784.y, _631.z ? _1785.z : _1784.z);
        }
        else
        {
            _1787 = mix(_636, _633, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1804 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1805 = vec3(_1804.x ? _432.x : _340.x, _1804.y ? _432.y : _340.y, _1804.z ? _432.z : _340.z);
        bvec3 _1806 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1807 = vec3(_1806.x ? vec3(0.0, 1.0, 0.0).x : _347.x, _1806.y ? vec3(0.0, 1.0, 0.0).y : _347.y, _1806.z ? vec3(0.0, 1.0, 0.0).z : _347.z);
        highp vec3 _1811 = normalize(_1807 - (_1805 * dot(_1805, _1807)));
        highp vec4 _1833 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1787) * mat3(cross(_1805, _1811), _1811, _1805)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1857 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _476 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1859 = mix(_1833.xyz, _1833.xyz * _1309, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1866 = mix(_1859, _1859 * _1130.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1873 = _1742.xyz + _1866;
        highp vec3 _1874 = _1742.xyz * _1866;
        bvec3 _1876 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1877 = vec3(_1876.x ? _1866.x : _315.x, _1876.y ? _1866.y : _315.y, _1876.z ? _1866.z : _315.z);
        bvec3 _1879 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1887;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1885 = (-_1742.xyz) * _1866 + _1873;
            bvec3 _2529 = isnan(_1885);
            bvec3 _2530 = isnan(_1742.xyz);
            highp vec3 _2531 = max(_1885, _1742.xyz);
            highp vec3 _2532 = vec3(_2529.x ? _1742.xyz.x : _2531.x, _2529.y ? _1742.xyz.y : _2531.y, _2529.z ? _1742.xyz.z : _2531.z);
            _1887 = vec3(_2530.x ? _1885.x : _2532.x, _2530.y ? _1885.y : _2532.y, _2530.z ? _1885.z : _2532.z);
        }
        else
        {
            _1887 = vec3(_1879.x ? _1873.x : _1877.x, _1879.y ? _1873.y : _1877.y, _1879.z ? _1873.z : _1877.z);
        }
        bvec3 _1889 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1891 = mix(_1742.xyz, vec3(_1889.x ? _1874.x : _1887.x, _1889.y ? _1874.y : _1887.y, _1889.z ? _1874.z : _1887.z), _1857.xyz * (_Globals._MatCapBlend * ((_364 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1833.w, _1833.w * _1310, _Globals._MatCapShadowMask))));
        _1893 = vec4(_1891.x, _1891.y, _1891.z, _1742.w);
    }
    else
    {
        _1893 = _1742;
    }
    highp vec4 _2043;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1938;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1915 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _476 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1915.w = _1915.w * _1915.x;
            highp vec2 _1926 = ((_1915.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1927 = vec3(_1926.x, _1926.y, _321.z);
            highp vec2 _1928 = _1926.xy;
            _1927.z = sqrt(1.0 - clamp(dot(_1928, _1928), 0.0, 1.0));
            highp vec3 _1935 = normalize(_441 * _1927);
            highp vec3 _1936 = -_1935;
            _1938 = vec3(_631.x ? _1936.x : _1935.x, _631.y ? _1936.y : _1935.y, _631.z ? _1936.z : _1935.z);
        }
        else
        {
            _1938 = mix(_636, _633, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1954 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1955 = vec3(_1954.x ? _432.x : _340.x, _1954.y ? _432.y : _340.y, _1954.z ? _432.z : _340.z);
        bvec3 _1956 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1957 = vec3(_1956.x ? vec3(0.0, 1.0, 0.0).x : _347.x, _1956.y ? vec3(0.0, 1.0, 0.0).y : _347.y, _1956.z ? vec3(0.0, 1.0, 0.0).z : _347.z);
        highp vec3 _1961 = normalize(_1957 - (_1955 * dot(_1955, _1957)));
        highp vec4 _1983 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1938 * mat3(cross(_1955, _1961), _1961, _1955)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1984 = _1983.xyz;
        highp float _1990 = _1983.w;
        highp vec4 _2007 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _476 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2009 = mix(_1984, _1984 * _1309, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2016 = mix(_2009, _2009 * _1130.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2023 = _1893.xyz + _2016;
        highp vec3 _2024 = _1893.xyz * _2016;
        bvec3 _2026 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2027 = vec3(_2026.x ? _2016.x : _315.x, _2026.y ? _2016.y : _315.y, _2026.z ? _2016.z : _315.z);
        bvec3 _2029 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2037;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2035 = (-_1893.xyz) * _2016 + _2023;
            bvec3 _2534 = isnan(_2035);
            bvec3 _2535 = isnan(_1893.xyz);
            highp vec3 _2536 = max(_2035, _1893.xyz);
            highp vec3 _2537 = vec3(_2534.x ? _1893.xyz.x : _2536.x, _2534.y ? _1893.xyz.y : _2536.y, _2534.z ? _1893.xyz.z : _2536.z);
            _2037 = vec3(_2535.x ? _2035.x : _2537.x, _2535.y ? _2035.y : _2537.y, _2535.z ? _2035.z : _2537.z);
        }
        else
        {
            _2037 = vec3(_2029.x ? _2023.x : _2027.x, _2029.y ? _2023.y : _2027.y, _2029.z ? _2023.z : _2027.z);
        }
        bvec3 _2039 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2041 = mix(_1893.xyz, vec3(_2039.x ? _2024.x : _2037.x, _2039.y ? _2024.y : _2037.y, _2039.z ? _2024.z : _2037.z), _2007.xyz * (_Globals._MatCap2ndBlend * ((_364 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1990, _1990 * _1310, _Globals._MatCap2ndShadowMask))));
        _2043 = vec4(_2041.x, _2041.y, _2041.z, _1893.w);
    }
    else
    {
        _2043 = _1893;
    }
    highp vec4 _2189;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2062 = mix(_636, _633, vec3(_Globals._RimNormalStrength));
        highp float _2066 = dot(_416, _2062) * 0.5 + 0.5;
        highp float _2089 = (_364 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2062, _432)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2093 = mix(_2089, _2089 * clamp((_2066 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2094 = _2089 * clamp(((1.0 - _2066) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2104 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2113 = clamp((_2093 - _2104) / clamp(fwidth(_2093) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2104), 0.0, 1.0), 0.0, 1.0);
        highp float _2120 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2130 = clamp((_2094 * _Globals._RimDirStrength + (-_2120)) / clamp(fwidth(_2094 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2120), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2142 = vec3(1.0 - _Globals._RimEnableLighting) + (_1309 * _Globals._RimEnableLighting);
        highp vec3 _2144 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1130.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2145 = _2144 * _2142;
        highp vec3 _2151 = _2144 * _2142 + _2043.xyz;
        highp vec3 _2152 = _2043.xyz * _2145;
        bvec3 _2154 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2155 = vec3(_2154.x ? _2145.x : _315.x, _2154.y ? _2145.y : _315.y, _2154.z ? _2145.z : _315.z);
        bvec3 _2157 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2159 = _Globals._RimBlendMode == 2u;
        highp vec3 _2165;
        if (_2159)
        {
            highp vec3 _2163 = (-_2043.xyz) * _2145 + _2151;
            bvec3 _2539 = isnan(_2163);
            bvec3 _2540 = isnan(_2043.xyz);
            highp vec3 _2541 = max(_2163, _2043.xyz);
            highp vec3 _2542 = vec3(_2539.x ? _2043.xyz.x : _2541.x, _2539.y ? _2043.xyz.y : _2541.y, _2539.z ? _2043.xyz.z : _2541.z);
            _2165 = vec3(_2540.x ? _2163.x : _2542.x, _2540.y ? _2163.y : _2542.y, _2540.z ? _2163.z : _2542.z);
        }
        else
        {
            _2165 = vec3(_2157.x ? _2151.x : _2155.x, _2157.y ? _2151.y : _2155.y, _2157.z ? _2151.z : _2155.z);
        }
        bvec3 _2167 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2170 = mix(_2043.xyz, vec3(_2167.x ? _2152.x : _2165.x, _2167.y ? _2152.y : _2165.y, _2167.z ? _2152.z : _2165.z), vec3(mix(_2113, _2113 * _1310, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2172 = _Globals._RimIndirColor.xyz * _2142;
        highp vec3 _2176 = _Globals._RimIndirColor.xyz * _2142 + _2170;
        highp vec3 _2177 = _2170 * _2172;
        highp vec3 _2178 = vec3(_2154.x ? _2172.x : _315.x, _2154.y ? _2172.y : _315.y, _2154.z ? _2172.z : _315.z);
        highp vec3 _2185;
        if (_2159)
        {
            highp vec3 _2183 = (-_2170) * _2172 + _2176;
            bvec3 _2544 = isnan(_2183);
            bvec3 _2545 = isnan(_2170);
            highp vec3 _2546 = max(_2183, _2170);
            highp vec3 _2547 = vec3(_2544.x ? _2170.x : _2546.x, _2544.y ? _2170.y : _2546.y, _2544.z ? _2170.z : _2546.z);
            _2185 = vec3(_2545.x ? _2183.x : _2547.x, _2545.y ? _2183.y : _2547.y, _2545.z ? _2183.z : _2547.z);
        }
        else
        {
            _2185 = vec3(_2157.x ? _2176.x : _2178.x, _2157.y ? _2176.y : _2178.y, _2157.z ? _2176.z : _2178.z);
        }
        highp vec3 _2187 = mix(_2170, vec3(_2167.x ? _2177.x : _2185.x, _2167.y ? _2177.y : _2185.y, _2167.z ? _2177.z : _2185.z), vec3(mix(_2130, _2130 * _1310, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2189 = vec4(_2187.x, _2187.y, _2187.z, _2043.w);
    }
    else
    {
        _2189 = _2043;
    }
    highp vec4 _2254;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2203 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _420, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2217 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2223;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2223 = roundEven(_2217);
        }
        else
        {
            _2223 = _2217;
        }
        highp vec3 _2230 = mix(_2203, _2203 * _1130.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2234 = _2189.xyz + _2230;
        highp vec3 _2235 = _2189.xyz * _2230;
        bvec3 _2237 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2238 = vec3(_2237.x ? _2230.x : _315.x, _2237.y ? _2230.y : _315.y, _2237.z ? _2230.z : _315.z);
        bvec3 _2240 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2248;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2246 = (-_2189.xyz) * _2230 + _2234;
            bvec3 _2549 = isnan(_2246);
            bvec3 _2550 = isnan(_2189.xyz);
            highp vec3 _2551 = max(_2246, _2189.xyz);
            highp vec3 _2552 = vec3(_2549.x ? _2189.xyz.x : _2551.x, _2549.y ? _2189.xyz.y : _2551.y, _2549.z ? _2189.xyz.z : _2551.z);
            _2248 = vec3(_2550.x ? _2246.x : _2552.x, _2550.y ? _2246.y : _2552.y, _2550.z ? _2246.z : _2552.z);
        }
        else
        {
            _2248 = vec3(_2240.x ? _2234.x : _2238.x, _2240.y ? _2234.y : _2238.y, _2240.z ? _2234.z : _2238.z);
        }
        bvec3 _2250 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2252 = mix(_2189.xyz, vec3(_2250.x ? _2235.x : _2248.x, _2250.y ? _2235.y : _2248.y, _2250.z ? _2235.z : _2248.z), vec3((_Globals._EmissionBlend * mix(1.0, _2223, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2254 = vec4(_2252.x, _2252.y, _2252.z, _2189.w);
    }
    else
    {
        _2254 = _2189;
    }
    highp vec4 _2319;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2268 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _420, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2282 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2288;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2288 = roundEven(_2282);
        }
        else
        {
            _2288 = _2282;
        }
        highp vec3 _2295 = mix(_2268, _2268 * _1130.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2299 = _2254.xyz + _2295;
        highp vec3 _2300 = _2254.xyz * _2295;
        bvec3 _2302 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2303 = vec3(_2302.x ? _2295.x : _315.x, _2302.y ? _2295.y : _315.y, _2302.z ? _2295.z : _315.z);
        bvec3 _2305 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2313;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2311 = (-_2254.xyz) * _2295 + _2299;
            bvec3 _2554 = isnan(_2311);
            bvec3 _2555 = isnan(_2254.xyz);
            highp vec3 _2556 = max(_2311, _2254.xyz);
            highp vec3 _2557 = vec3(_2554.x ? _2254.xyz.x : _2556.x, _2554.y ? _2254.xyz.y : _2556.y, _2554.z ? _2254.xyz.z : _2556.z);
            _2313 = vec3(_2555.x ? _2311.x : _2557.x, _2555.y ? _2311.y : _2557.y, _2555.z ? _2311.z : _2557.z);
        }
        else
        {
            _2313 = vec3(_2305.x ? _2299.x : _2303.x, _2305.y ? _2299.y : _2303.y, _2305.z ? _2299.z : _2303.z);
        }
        bvec3 _2315 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2317 = mix(_2254.xyz, vec3(_2315.x ? _2300.x : _2313.x, _2315.y ? _2300.y : _2313.y, _2315.z ? _2300.z : _2313.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2288, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2319 = vec4(_2317.x, _2317.y, _2317.z, _2254.w);
    }
    else
    {
        _2319 = _2254;
    }
    bvec3 _2321 = bvec3(_364 < 0.0);
    highp vec3 _2330 = mix(_2319.xyz, _Globals._BackfaceColor.xyz * _1309, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2365 = vec3(_2321.x ? _2330.x : _2319.xyz.x, _2321.y ? _2330.y : _2319.xyz.y, _2321.z ? _2330.z : _2319.xyz.z).xyz;
    highp vec3 _2373 = mix(_2365, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2365, vec3(pow(clamp(1.0 - abs(dot(_636, _432)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_364 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _425) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2373.x, _2373.y, _2373.z, _2319.w), vec4(out_var_TEXCOORD9));
}
