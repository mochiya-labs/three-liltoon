#version 300 es
precision mediump float;
precision highp int;

vec3 _332;
vec3 _338;

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
    highp vec3 _358 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _365 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _381 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _390 = float(gl_FrontFacing ? 1 : (-1));
    highp float _441;
    do
    {
        highp vec3 _397 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _398 = _397.xy;
        highp float _404 = _397.z;
        if ((any(lessThan(_398, vec2(0.0))) || any(greaterThan(_398, vec2(1.0)))) || (_404 > 1.0))
        {
            _441 = 1.0;
            break;
        }
        highp float _414 = _404 + _Globals.uShadowBias;
        _441 = (((step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _398), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _398), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _398), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _398), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _442 = normalize(out_var_TEXCOORD7);
    highp vec3 _446 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _450 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _451 = length(_450);
    highp vec3 _458 = normalize(_450);
    highp mat3 _467 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _468 = _458 * _467;
    bvec2 _478 = bvec2(_390 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _479 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _492 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _493 = sin(_492);
    highp float _494 = cos(_492);
    highp vec2 _495 = (vec2(_478.x ? _479.x : out_var_TEXCOORD0.xy.x, _478.y ? _479.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _496 = _495.x;
    highp float _497 = _495.y;
    highp vec2 _508 = (vec2(_496 * _494 + (-(_497 * _493)), _496 * _493 + (_497 * _494)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _512 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _508);
    highp vec3 _519 = pow(abs(_512.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _520 = _519.z;
    highp float _521 = _519.y;
    bvec4 _523 = bvec4(_520 > _521);
    highp vec4 _524 = vec4(_520, _521, -1.0, 0.666666686534881591796875);
    highp vec4 _525 = vec4(_521, _520, 0.0, -0.3333333432674407958984375);
    highp vec4 _526 = vec4(_523.x ? _524.x : _525.x, _523.y ? _524.y : _525.y, _523.z ? _524.z : _525.z, _523.w ? _524.w : _525.w);
    highp float _527 = _526.x;
    highp float _528 = _519.x;
    bvec4 _530 = bvec4(_527 > _528);
    highp vec4 _533 = vec4(_527, _526.yw, _528);
    highp vec4 _535 = vec4(_528, _526.yz, _527);
    highp vec4 _536 = vec4(_530.x ? _533.x : _535.x, _530.y ? _533.y : _535.y, _530.z ? _533.z : _535.z, _530.w ? _533.w : _535.w);
    highp float _541 = _536.x - (isnan(_536.y) ? _536.w : (isnan(_536.w) ? _536.y : min(_536.w, _536.y)));
    highp float _554 = clamp((_541 / (_536.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _557 = clamp(_536.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _571 = vec3((-_557) * _554 + _557) + (clamp(abs((fract(vec3(abs(_536.z + ((_536.w - _536.y) / (6.0 * _541 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_557 * _554));
    highp vec4 _575 = vec4(_571.x, _571.y, _571.z, _512.w) * _Globals._Color;
    highp vec3 _607;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _588 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _508 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _588.w = _588.w * _588.x;
        highp vec2 _599 = ((_588.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _600 = vec3(_599.x, _599.y, _338.z);
        highp vec2 _601 = _599.xy;
        _600.z = sqrt(1.0 - clamp(dot(_601, _601), 0.0, 1.0));
        _607 = _600;
    }
    else
    {
        _607 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _656;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _616 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _617 = vec2(_616.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _616.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _619 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _620 = vec2(_619.x ? out_var_TEXCOORD1.xy.x : _617.x, _619.y ? out_var_TEXCOORD1.xy.y : _617.y);
        bvec2 _622 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _632 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_622.x ? out_var_TEXCOORD1.zw.x : _620.x, _622.y ? out_var_TEXCOORD1.zw.y : _620.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _632.w = _632.w * _632.x;
        highp vec2 _644 = (((_632.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _656 = vec3(_607.xy + _644, _607.z * sqrt(1.0 - clamp(dot(_644, _644), 0.0, 1.0)));
    }
    else
    {
        _656 = _607;
    }
    highp vec3 _658 = normalize(_467 * _656);
    bvec3 _663 = bvec3(_390 < (_Globals._FlipNormal - 1.0));
    highp vec3 _664 = -_658;
    highp vec3 _665 = vec3(_663.x ? _664.x : _658.x, _663.y ? _664.y : _658.y, _663.z ? _664.z : _658.z);
    highp float _666 = dot(_665, _458);
    highp float _667 = clamp(_666, 0.0, 1.0);
    highp vec2 _669 = vec2(abs(_666));
    highp vec3 _670 = normalize(out_var_TEXCOORD4);
    highp vec2 _674 = ((_665 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _365, _358)).xy * 0.5) + vec2(0.5);
    bool _675 = out_var_TEXCOORD5.w > 0.0;
    bool _680 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _958;
    highp vec4 _959;
    if (_680)
    {
        bvec2 _686 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _687 = vec2(_686.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _686.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _689 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _690 = vec2(_689.x ? out_var_TEXCOORD1.xy.x : _687.x, _689.y ? out_var_TEXCOORD1.xy.y : _687.y);
        bvec2 _692 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _693 = vec2(_692.x ? out_var_TEXCOORD1.zw.x : _690.x, _692.y ? out_var_TEXCOORD1.zw.y : _690.y);
        bvec2 _695 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _696 = vec2(_695.x ? _674.x : _693.x, _695.y ? _674.y : _693.y);
        highp vec4 _735 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _736 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _744;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _743 = _696;
            _743.x = abs(_696.x - 0.5) + 0.5;
            _744 = _743;
        }
        else
        {
            _744 = _696;
        }
        highp vec2 _745 = _735.xy;
        highp vec2 _746 = _735.zw;
        highp vec2 _747 = _744 * _745 + _746;
        highp vec2 _756;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_696.x < 0.5))
        {
            highp vec2 _755 = _747;
            _755.x = 1.0 - _747.x;
            _756 = _755;
        }
        else
        {
            _756 = _747;
        }
        highp vec2 _763;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _675)
        {
            highp vec2 _762 = _756;
            _762.x = 1.0 - _756.x;
            _763 = _762;
        }
        else
        {
            _763 = _756;
        }
        highp vec2 _768;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _675)
        {
            highp vec2 _767 = _763;
            _767.x = -1.0;
            _768 = _767;
        }
        else
        {
            _768 = _763;
        }
        highp vec2 _774;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_675))
        {
            highp vec2 _773 = _768;
            _773.x = -1.0;
            _774 = _773;
        }
        else
        {
            _774 = _768;
        }
        highp float _777 = sin(_736);
        highp float _778 = cos(_736);
        highp vec2 _779 = ((_774 - _746) / _745) - vec2(0.5);
        highp float _780 = _779.x;
        highp float _781 = _779.y;
        highp vec2 _789 = (vec2(_780 * _778 + (-(_781 * _777)), _780 * _777 + (_781 * _778)) + vec2(0.5)) * _745 + _746;
        uint _793 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _797 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _793 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _793);
        highp float _798 = _789.x;
        highp float _799 = _789.y;
        uint _806 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _816 = ((mix(vec2(_798, 1.0 - _799), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_797 % _806), float(_797 / _806))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _816.y = 1.0 - _816.y;
        highp vec4 _821 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _816);
        highp vec4 _837;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _824 = _821.x;
            highp float _825 = _821.y;
            highp float _826 = _821.z;
            highp float _827 = isnan(_825) ? _824 : (isnan(_824) ? _825 : min(_824, _825));
            highp float _828 = isnan(_825) ? _824 : (isnan(_824) ? _825 : max(_824, _825));
            highp float _829 = isnan(_826) ? _828 : (isnan(_828) ? _826 : min(_828, _826));
            highp float _830 = isnan(_829) ? _827 : (isnan(_827) ? _829 : max(_827, _829));
            _837 = vec4(1.0, 1.0, 1.0, clamp((_830 - 0.5) / clamp(fwidth(_830), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _837 = _821;
        }
        highp vec4 _860;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _841 = clamp(_667 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _844 = 0.5 - abs(_798 - 0.5);
            highp float _851 = 0.5 - abs(_799 - 0.5);
            highp vec4 _859 = _837;
            _859.w = _837.w * (clamp(_844 / clamp(fwidth(_844), 9.9999997473787516355514526367188e-05, _841), 0.0, 1.0) * clamp(_851 / clamp(fwidth(_851), 9.9999997473787516355514526367188e-05, _841), 0.0, 1.0));
            _860 = _859;
        }
        else
        {
            _860 = _837;
        }
        highp vec4 _861 = _Globals._Color2nd * _860;
        highp float _862 = _861.w;
        _861.w = mix(_862, _862 * clamp((_451 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _888;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_390 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_390 < 0.0)))
        {
            highp vec4 _887 = _861;
            _887.w = 0.0;
            _888 = _887;
        }
        else
        {
            _888 = _861;
        }
        highp vec4 _927;
        highp vec4 _928;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _899;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _898 = _575;
                _898.w = _888.w;
                _899 = _898;
            }
            else
            {
                _899 = _575;
            }
            highp vec4 _907;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _906 = _899;
                _906.w = _899.w * _888.w;
                _907 = _906;
            }
            else
            {
                _907 = _899;
            }
            highp vec4 _916;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _915 = _907;
                _915.w = clamp(_907.w + _888.w, 0.0, 1.0);
                _916 = _915;
            }
            else
            {
                _916 = _907;
            }
            highp vec4 _925;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _924 = _916;
                _924.w = clamp(_916.w - _888.w, 0.0, 1.0);
                _925 = _924;
            }
            else
            {
                _925 = _916;
            }
            highp vec4 _926 = _888;
            _926.w = 1.0;
            _927 = _926;
            _928 = _925;
        }
        else
        {
            _927 = _888;
            _928 = _575;
        }
        highp vec3 _938 = _928.xyz + _927.xyz;
        highp vec3 _939 = _928.xyz * _927.xyz;
        bvec3 _941 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _942 = vec3(_941.x ? _927.xyz.x : _332.x, _941.y ? _927.xyz.y : _332.y, _941.z ? _927.xyz.z : _332.z);
        bvec3 _944 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _952;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _950 = (-_928.xyz) * _927.xyz + _938;
            bvec3 _2760 = isnan(_950);
            bvec3 _2761 = isnan(_928.xyz);
            highp vec3 _2762 = max(_950, _928.xyz);
            highp vec3 _2763 = vec3(_2760.x ? _928.xyz.x : _2762.x, _2760.y ? _928.xyz.y : _2762.y, _2760.z ? _928.xyz.z : _2762.z);
            _952 = vec3(_2761.x ? _950.x : _2763.x, _2761.y ? _950.y : _2763.y, _2761.z ? _950.z : _2763.z);
        }
        else
        {
            _952 = vec3(_944.x ? _938.x : _942.x, _944.y ? _938.y : _942.y, _944.z ? _938.z : _942.z);
        }
        bvec3 _954 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _956 = mix(_928.xyz, vec3(_954.x ? _939.x : _952.x, _954.y ? _939.y : _952.y, _954.z ? _939.z : _952.z), vec3(_927.w * _Globals._Main2ndEnableLighting));
        _958 = _927;
        _959 = vec4(_956.x, _956.y, _956.z, _928.w);
    }
    else
    {
        _958 = _Globals._Color2nd;
        _959 = _575;
    }
    bool _964 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1242;
    highp vec4 _1243;
    if (_964)
    {
        bvec2 _970 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _971 = vec2(_970.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _970.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _973 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _974 = vec2(_973.x ? out_var_TEXCOORD1.xy.x : _971.x, _973.y ? out_var_TEXCOORD1.xy.y : _971.y);
        bvec2 _976 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _977 = vec2(_976.x ? out_var_TEXCOORD1.zw.x : _974.x, _976.y ? out_var_TEXCOORD1.zw.y : _974.y);
        bvec2 _979 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _980 = vec2(_979.x ? _674.x : _977.x, _979.y ? _674.y : _977.y);
        highp vec4 _1019 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1020 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1028;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1027 = _980;
            _1027.x = abs(_980.x - 0.5) + 0.5;
            _1028 = _1027;
        }
        else
        {
            _1028 = _980;
        }
        highp vec2 _1029 = _1019.xy;
        highp vec2 _1030 = _1019.zw;
        highp vec2 _1031 = _1028 * _1029 + _1030;
        highp vec2 _1040;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_980.x < 0.5))
        {
            highp vec2 _1039 = _1031;
            _1039.x = 1.0 - _1031.x;
            _1040 = _1039;
        }
        else
        {
            _1040 = _1031;
        }
        highp vec2 _1047;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _675)
        {
            highp vec2 _1046 = _1040;
            _1046.x = 1.0 - _1040.x;
            _1047 = _1046;
        }
        else
        {
            _1047 = _1040;
        }
        highp vec2 _1052;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _675)
        {
            highp vec2 _1051 = _1047;
            _1051.x = -1.0;
            _1052 = _1051;
        }
        else
        {
            _1052 = _1047;
        }
        highp vec2 _1058;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_675))
        {
            highp vec2 _1057 = _1052;
            _1057.x = -1.0;
            _1058 = _1057;
        }
        else
        {
            _1058 = _1052;
        }
        highp float _1061 = sin(_1020);
        highp float _1062 = cos(_1020);
        highp vec2 _1063 = ((_1058 - _1030) / _1029) - vec2(0.5);
        highp float _1064 = _1063.x;
        highp float _1065 = _1063.y;
        highp vec2 _1073 = (vec2(_1064 * _1062 + (-(_1065 * _1061)), _1064 * _1061 + (_1065 * _1062)) + vec2(0.5)) * _1029 + _1030;
        uint _1077 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1081 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1077 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1077);
        highp float _1082 = _1073.x;
        highp float _1083 = _1073.y;
        uint _1090 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1100 = ((mix(vec2(_1082, 1.0 - _1083), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1081 % _1090), float(_1081 / _1090))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1100.y = 1.0 - _1100.y;
        highp vec4 _1105 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1100);
        highp vec4 _1121;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1108 = _1105.x;
            highp float _1109 = _1105.y;
            highp float _1110 = _1105.z;
            highp float _1111 = isnan(_1109) ? _1108 : (isnan(_1108) ? _1109 : min(_1108, _1109));
            highp float _1112 = isnan(_1109) ? _1108 : (isnan(_1108) ? _1109 : max(_1108, _1109));
            highp float _1113 = isnan(_1110) ? _1112 : (isnan(_1112) ? _1110 : min(_1112, _1110));
            highp float _1114 = isnan(_1113) ? _1111 : (isnan(_1111) ? _1113 : max(_1111, _1113));
            _1121 = vec4(1.0, 1.0, 1.0, clamp((_1114 - 0.5) / clamp(fwidth(_1114), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1121 = _1105;
        }
        highp vec4 _1144;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1125 = clamp(_667 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1128 = 0.5 - abs(_1082 - 0.5);
            highp float _1135 = 0.5 - abs(_1083 - 0.5);
            highp vec4 _1143 = _1121;
            _1143.w = _1121.w * (clamp(_1128 / clamp(fwidth(_1128), 9.9999997473787516355514526367188e-05, _1125), 0.0, 1.0) * clamp(_1135 / clamp(fwidth(_1135), 9.9999997473787516355514526367188e-05, _1125), 0.0, 1.0));
            _1144 = _1143;
        }
        else
        {
            _1144 = _1121;
        }
        highp vec4 _1145 = _Globals._Color3rd * _1144;
        highp float _1146 = _1145.w;
        _1145.w = mix(_1146, _1146 * clamp((_451 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1172;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_390 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_390 < 0.0)))
        {
            highp vec4 _1171 = _1145;
            _1171.w = 0.0;
            _1172 = _1171;
        }
        else
        {
            _1172 = _1145;
        }
        highp vec4 _1211;
        highp vec4 _1212;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1183;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1182 = _959;
                _1182.w = _1172.w;
                _1183 = _1182;
            }
            else
            {
                _1183 = _959;
            }
            highp vec4 _1191;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1190 = _1183;
                _1190.w = _1183.w * _1172.w;
                _1191 = _1190;
            }
            else
            {
                _1191 = _1183;
            }
            highp vec4 _1200;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1199 = _1191;
                _1199.w = clamp(_1191.w + _1172.w, 0.0, 1.0);
                _1200 = _1199;
            }
            else
            {
                _1200 = _1191;
            }
            highp vec4 _1209;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1208 = _1200;
                _1208.w = clamp(_1200.w - _1172.w, 0.0, 1.0);
                _1209 = _1208;
            }
            else
            {
                _1209 = _1200;
            }
            highp vec4 _1210 = _1172;
            _1210.w = 1.0;
            _1211 = _1210;
            _1212 = _1209;
        }
        else
        {
            _1211 = _1172;
            _1212 = _959;
        }
        highp vec3 _1222 = _1212.xyz + _1211.xyz;
        highp vec3 _1223 = _1212.xyz * _1211.xyz;
        bvec3 _1225 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1226 = vec3(_1225.x ? _1211.xyz.x : _332.x, _1225.y ? _1211.xyz.y : _332.y, _1225.z ? _1211.xyz.z : _332.z);
        bvec3 _1228 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1236;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1234 = (-_1212.xyz) * _1211.xyz + _1222;
            bvec3 _2785 = isnan(_1234);
            bvec3 _2786 = isnan(_1212.xyz);
            highp vec3 _2787 = max(_1234, _1212.xyz);
            highp vec3 _2788 = vec3(_2785.x ? _1212.xyz.x : _2787.x, _2785.y ? _1212.xyz.y : _2787.y, _2785.z ? _1212.xyz.z : _2787.z);
            _1236 = vec3(_2786.x ? _1234.x : _2788.x, _2786.y ? _1234.y : _2788.y, _2786.z ? _1234.z : _2788.z);
        }
        else
        {
            _1236 = vec3(_1228.x ? _1222.x : _1226.x, _1228.y ? _1222.y : _1226.y, _1228.z ? _1222.z : _1226.z);
        }
        bvec3 _1238 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1240 = mix(_1212.xyz, vec3(_1238.x ? _1223.x : _1236.x, _1238.y ? _1223.y : _1236.y, _1238.z ? _1223.z : _1236.z), vec3(_1211.w * _Globals._Main3rdEnableLighting));
        _1242 = _1211;
        _1243 = vec4(_1240.x, _1240.y, _1240.z, _1212.w);
    }
    else
    {
        _1242 = _Globals._Color3rd;
        _1243 = _959;
    }
    highp vec4 _1292;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1256 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _508 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1263 = clamp(_1256.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1268;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1267 = _1243;
            _1267.w = _1263;
            _1268 = _1267;
        }
        else
        {
            _1268 = _1243;
        }
        highp vec4 _1275;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1274 = _1268;
            _1274.w = _1268.w * _1263;
            _1275 = _1274;
        }
        else
        {
            _1275 = _1268;
        }
        highp vec4 _1283;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1282 = _1275;
            _1282.w = clamp(_1275.w + _1263, 0.0, 1.0);
            _1283 = _1282;
        }
        else
        {
            _1283 = _1275;
        }
        highp vec4 _1291;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1290 = _1283;
            _1290.w = clamp(_1283.w - _1263, 0.0, 1.0);
            _1291 = _1290;
        }
        else
        {
            _1291 = _1283;
        }
        _1292 = _1291;
    }
    else
    {
        _1292 = _1243;
    }
    highp vec4 _1413;
    highp float _1414;
    if ((_381 & 1) != 0)
    {
        highp vec4 _1296 = _1292;
        _1296.w = 1.0;
        highp vec2 _1312 = roundEven(_Globals._DissolveParams.xy);
        highp float _1313 = _1312.x;
        highp vec4 _1402;
        highp float _1403;
        if (_1313 != 0.0)
        {
            bool _1317 = _1313 == 1.0;
            highp float _1327;
            if (_1317 && true)
            {
                _1327 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1327 = 1.0;
            }
            highp vec4 _1336 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1338 = _1336.x - 0.5;
            highp float _1351;
            highp float _1352;
            if (_1317)
            {
                highp float _1341 = _1338 * _Globals._DissolveNoiseStrength + _1327;
                _1351 = 1.0 - clamp(abs(_1341 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1352 = float(_1341 > _Globals._DissolveParams.z);
            }
            else
            {
                _1351 = 0.0;
                _1352 = _1327;
            }
            highp float _1375;
            highp float _1376;
            if (_1313 == 2.0)
            {
                highp float _1364 = (_1312.y == 1.0) ? (_1338 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1338 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1375 = 1.0 - clamp(abs(_1364 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1376 = _1352 * float(_1364 > _Globals._DissolveParams.z);
            }
            else
            {
                _1375 = _1351;
                _1376 = _1352;
            }
            highp float _1399;
            highp float _1400;
            if (_1313 == 3.0)
            {
                highp float _1388 = (_1312.y == 1.0) ? (_1338 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1338 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1399 = 1.0 - clamp(abs(_1388 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1400 = _1376 * float(_1388 > _Globals._DissolveParams.z);
            }
            else
            {
                _1399 = _1375;
                _1400 = _1376;
            }
            highp vec4 _1401 = _1296;
            _1401.w = _1400;
            _1402 = _1401;
            _1403 = _1399;
        }
        else
        {
            _1402 = _1296;
            _1403 = 0.0;
        }
        highp vec4 _1409;
        if ((_381 & 2) != 0)
        {
            highp vec4 _1408 = _1402;
            _1408.w = 1.0 - _1402.w;
            _1409 = _1408;
        }
        else
        {
            _1409 = _1402;
        }
        highp vec4 _1412 = _1409;
        _1412.w = _1409.w * _1292.w;
        _1413 = _1412;
        _1414 = _1403;
    }
    else
    {
        _1413 = _1292;
        _1414 = 0.0;
    }
    if ((_1413.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1595;
    highp float _1596;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1445 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1448 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1451 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1455 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1458 = clamp(_441 + distance(_442, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1461 = mix(1.0, _1458, _Globals._ShadowReceive);
        highp float _1462 = _1445 * _1461;
        highp float _1465 = mix(1.0, _1458, _Globals._Shadow2ndReceive);
        highp float _1469 = mix(1.0, _1458, _Globals._Shadow3rdReceive);
        highp float _1480 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1481 = clamp(_1480, 0.0, 1.0);
        highp float _1483 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1496 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1510 = clamp(_1480 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1523 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1538 = (_390 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1539 = clamp((_1445 * _1461 + (-_1481)) / clamp(fwidth(_1462) * _1455 + (_1483 - _1481), 0.0, 1.0), 0.0, 1.0) * _1538;
        highp vec3 _1571 = mix(mix(_1413.xyz * _Globals._ShadowColor.xyz, (_1413.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1448 * _1465 + (-_1496)) / clamp(fwidth(_1448 * _1465) * _1455 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1496), 0.0, 1.0), 0.0, 1.0) * _1538)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1413.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1451 * _1469 + (-_1523)) / clamp(fwidth(_1451 * _1469) * _1455 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1523), 0.0, 1.0), 0.0, 1.0) * _1538)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1577 = _1413.xyz * out_var_TEXCOORD6;
        highp vec3 _1583 = mix(mix(_1571, _1571 * _1413.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1413.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2790 = isnan(_1583);
        bvec3 _2791 = isnan(_1577);
        highp vec3 _2792 = min(_1583, _1577);
        highp vec3 _2793 = vec3(_2790.x ? _1577.x : _2792.x, _2790.y ? _1577.y : _2792.y, _2790.z ? _1577.z : _2792.z);
        highp vec3 _1591 = mix(mix(vec3(_2791.x ? _1583.x : _2793.x, _2791.y ? _1583.y : _2793.y, _2791.z ? _1583.z : _2793.z), _1577, _Globals._ShadowBorderColor.xyz * (clamp((_1445 * _1461 + (-_1510)) / clamp(fwidth(_1462) * _1455 + (_1483 - _1510), 0.0, 1.0), 0.0, 1.0) * _1538)), _1577, vec3(mix(1.0, _1539, _Globals._ShadowStrength)));
        _1595 = vec4(_1591.x, _1591.y, _1591.z, _1413.w);
        _1596 = _1539;
    }
    else
    {
        highp vec3 _1593 = _1413.xyz * out_var_TEXCOORD6;
        _1595 = vec4(_1593.x, _1593.y, _1593.z, _1413.w);
        _1596 = 1.0;
    }
    highp vec3 _1599 = vec3(_Globals._LightMaxLimit);
    bvec3 _2795 = isnan(out_var_TEXCOORD6);
    bvec3 _2796 = isnan(_1599);
    highp vec3 _2797 = min(out_var_TEXCOORD6, _1599);
    highp vec3 _2798 = vec3(_2795.x ? _1599.x : _2797.x, _2795.y ? _1599.y : _2797.y, _2795.z ? _1599.z : _2797.z);
    highp vec3 _1600 = vec3(_2796.x ? out_var_TEXCOORD6.x : _2798.x, _2796.y ? out_var_TEXCOORD6.y : _2798.y, _2796.z ? out_var_TEXCOORD6.z : _2798.z);
    highp float _1601 = clamp(_1596, 0.0, 1.0);
    highp vec3 _1603 = _1413.xyz * _Globals._LightMaxLimit;
    bvec3 _2800 = isnan(_1595.xyz);
    bvec3 _2801 = isnan(_1603);
    highp vec3 _2802 = min(_1595.xyz, _1603);
    highp vec3 _2803 = vec3(_2800.x ? _1603.x : _2802.x, _2800.y ? _1603.y : _2802.y, _2800.z ? _1603.z : _2802.z);
    highp vec3 _1604 = vec3(_2801.x ? _1595.xyz.x : _2803.x, _2801.y ? _1595.xyz.y : _2803.y, _2801.z ? _1595.xyz.z : _2803.z);
    highp vec4 _1638;
    if (_680)
    {
        highp vec3 _1608 = _1604.xyz;
        highp vec3 _1618 = _1608 + _958.xyz;
        highp vec3 _1619 = _1608 * _958.xyz;
        bvec3 _1621 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1622 = vec3(_1621.x ? _958.xyz.x : _332.x, _1621.y ? _958.xyz.y : _332.y, _1621.z ? _958.xyz.z : _332.z);
        bvec3 _1624 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1632;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1630 = (-_1608) * _958.xyz + _1618;
            bvec3 _2805 = isnan(_1630);
            bvec3 _2806 = isnan(_1608);
            highp vec3 _2807 = max(_1630, _1608);
            highp vec3 _2808 = vec3(_2805.x ? _1608.x : _2807.x, _2805.y ? _1608.y : _2807.y, _2805.z ? _1608.z : _2807.z);
            _1632 = vec3(_2806.x ? _1630.x : _2808.x, _2806.y ? _1630.y : _2808.y, _2806.z ? _1630.z : _2808.z);
        }
        else
        {
            _1632 = vec3(_1624.x ? _1618.x : _1622.x, _1624.y ? _1618.y : _1622.y, _1624.z ? _1618.z : _1622.z);
        }
        bvec3 _1634 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1636 = mix(_1608, vec3(_1634.x ? _1619.x : _1632.x, _1634.y ? _1619.y : _1632.y, _1634.z ? _1619.z : _1632.z), vec3((-_958.w) * _Globals._Main2ndEnableLighting + _958.w));
        _1638 = vec4(_1636.x, _1636.y, _1636.z, _1595.w);
    }
    else
    {
        _1638 = vec4(_1604.x, _1604.y, _1604.z, _1595.w);
    }
    highp vec4 _1671;
    if (_964)
    {
        highp vec3 _1651 = _1638.xyz + _1242.xyz;
        highp vec3 _1652 = _1638.xyz * _1242.xyz;
        bvec3 _1654 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1655 = vec3(_1654.x ? _1242.xyz.x : _332.x, _1654.y ? _1242.xyz.y : _332.y, _1654.z ? _1242.xyz.z : _332.z);
        bvec3 _1657 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1665;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1663 = (-_1638.xyz) * _1242.xyz + _1651;
            bvec3 _2810 = isnan(_1663);
            bvec3 _2811 = isnan(_1638.xyz);
            highp vec3 _2812 = max(_1663, _1638.xyz);
            highp vec3 _2813 = vec3(_2810.x ? _1638.xyz.x : _2812.x, _2810.y ? _1638.xyz.y : _2812.y, _2810.z ? _1638.xyz.z : _2812.z);
            _1665 = vec3(_2811.x ? _1663.x : _2813.x, _2811.y ? _1663.y : _2813.y, _2811.z ? _1663.z : _2813.z);
        }
        else
        {
            _1665 = vec3(_1657.x ? _1651.x : _1655.x, _1657.y ? _1651.y : _1655.y, _1657.z ? _1651.z : _1655.z);
        }
        bvec3 _1667 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1669 = mix(_1638.xyz, vec3(_1667.x ? _1652.x : _1665.x, _1667.y ? _1652.y : _1665.y, _1667.z ? _1652.z : _1665.z), vec3((-_1242.w) * _Globals._Main3rdEnableLighting + _1242.w));
        _1671 = vec4(_1669.x, _1669.y, _1669.z, _1638.w);
    }
    else
    {
        _1671 = _1638;
    }
    highp vec4 _1717;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1687 = pow(clamp(1.0 - abs(dot(mix(_670, _665, vec3(_Globals._RimShadeNormalStrength)), _458)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1696 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1715 = mix(_1671.xyz, _1671.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1687 - _1696) / clamp(fwidth(_1687) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1696), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1717 = vec4(_1715.x, _1715.y, _1715.z, _1671.w);
    }
    else
    {
        _1717 = _1671;
    }
    highp vec4 _1790;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1741 = dot(normalize(((-_458) * _Globals._BacklightViewStrength) + _442), mix(_670, _665, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1751;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1751 = _1741 * clamp(_441 + distance(_442, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1751 = _1741;
        }
        highp float _1760 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1788 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1413.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_390 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_458, _442) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1751 - _1760) / clamp(fwidth(_1751) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1760), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1600 + _1717.xyz;
        _1790 = vec4(_1788.x, _1788.y, _1788.z, _1717.w);
    }
    else
    {
        _1790 = _1717;
    }
    highp vec3 _1793 = _1790.xyz * _1790.w;
    highp vec4 _2046;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1804 = dFdx(_665);
        highp vec3 _1805 = abs(_1804);
        highp vec3 _1806 = dFdy(_665);
        highp vec3 _1807 = abs(_1806);
        highp float _1808 = dot(_1805, _1805);
        highp float _1809 = dot(_1807, _1807);
        highp float _1810 = isnan(_1809) ? _1808 : (isnan(_1808) ? _1809 : max(_1808, _1809));
        highp float _1813 = (_1810 / (_1810 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1816 = clamp(1.0 - (isnan(_1813) ? 0.0 : (isnan(0.0) ? _1813 : max(0.0, _1813))), 0.0, 1.0);
        highp float _1817 = isnan(_1816) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1816 : min(_Globals._Smoothness, _1816));
        highp float _1818 = 1.0 - _1817;
        highp float _1819 = _1818 * _1818;
        highp vec3 _1822 = _1793.xyz;
        highp vec3 _1824 = _1822 - (_1822 * _Globals._Metallic);
        highp vec3 _1830 = mix(vec3(_Globals._Reflectance), _1413.xyz, vec3(_Globals._Metallic));
        highp vec4 _1832 = _Globals._ReflectionColor;
        highp vec4 _1841;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1840 = _1832;
            _1840.w = _1832.w * _1790.w;
            _1841 = _1840;
        }
        else
        {
            _1841 = _1832;
        }
        highp vec4 _1942;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1914;
            do
            {
                highp vec3 _1852 = mix(_670, _665, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1854 = normalize(_458 + _442);
                highp float _1856 = clamp(dot(_1852, _1854), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1865 = pow(_1856, 1.0 / _1819);
                    highp float _1872 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1914 = vec3(clamp((_1865 - _1872) / clamp(fwidth(_1865) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1872), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1884 = clamp(dot(_1852, _458), 0.0, 1.0);
                highp float _1886 = clamp(dot(_1852, _442), 0.0, 1.0);
                highp float _1889 = isnan(0.00200000009499490261077880859375) ? _1819 : (isnan(_1819) ? 0.00200000009499490261077880859375 : max(_1819, 0.00200000009499490261077880859375));
                highp float _1890 = 1.0 - _1889;
                highp float _1894 = _1889 * _1889;
                highp float _1897 = (_1856 * _1894 + (-_1856)) * _1856 + 1.0;
                highp float _1905 = 1.0 - clamp(dot(_442, _1854), 0.0, 1.0);
                _1914 = (_1830 + ((((((vec3(1.0) - _1830) * _1905) * _1905) * _1905) * _1905) * _1905)) * (((0.5 / ((_1886 * (_1884 * _1890 + _1889) + (_1884 * (_1886 * _1890 + _1889))) + 9.9999997473787516355514526367188e-06)) * (_1894 / (_1897 * _1897 + 1.0000000116860974230803549289703e-07))) * _1886);
                break;
            } while(false);
            highp vec3 _1915 = _1824.xyz;
            highp vec3 _1917 = _1841.xyz * _1600;
            highp vec3 _1922 = _1841.xyz * _1600 + _1915;
            highp vec3 _1923 = _1915 * _1917;
            bvec3 _1925 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1926 = vec3(_1925.x ? _1917.x : _332.x, _1925.y ? _1917.y : _332.y, _1925.z ? _1917.z : _332.z);
            bvec3 _1928 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1936;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1934 = (-_1915) * _1917 + _1922;
                bvec3 _2835 = isnan(_1934);
                bvec3 _2836 = isnan(_1915);
                highp vec3 _2837 = max(_1934, _1915);
                highp vec3 _2838 = vec3(_2835.x ? _1915.x : _2837.x, _2835.y ? _1915.y : _2837.y, _2835.z ? _1915.z : _2837.z);
                _1936 = vec3(_2836.x ? _1934.x : _2838.x, _2836.y ? _1934.y : _2838.y, _2836.z ? _1934.z : _2838.z);
            }
            else
            {
                _1936 = vec3(_1928.x ? _1922.x : _1926.x, _1928.y ? _1922.y : _1926.y, _1928.z ? _1922.z : _1926.z);
            }
            bvec3 _1938 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1940 = mix(_1915, vec3(_1938.x ? _1923.x : _1936.x, _1938.y ? _1923.y : _1936.y, _1938.z ? _1923.z : _1936.z), _1914 * _1841.w);
            _1942 = vec4(_1940.x, _1940.y, _1940.z, _1790.w);
        }
        else
        {
            _1942 = vec4(_1824.x, _1824.y, _1824.z, _1790.w);
        }
        highp vec4 _2045;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1964 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1971 = reflect(-_458, mix(_670, _665, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1974 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1971, _1818 * ((-4.19999980926513671875) * _1818 + 10.19999980926513671875));
            highp vec3 _1994 = ((_1974.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1974.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1600, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2000 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1971, _1818 * 8.0).xyz * 1.0;
            highp float _2011 = 1.0 - _667;
            highp vec3 _2025 = _1942.xyz + _1841.xyz;
            highp vec3 _2026 = _1942.xyz * _1841.xyz;
            bvec3 _2028 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2029 = vec3(_2028.x ? _1841.xyz.x : _332.x, _2028.y ? _1841.xyz.y : _332.y, _2028.z ? _1841.xyz.z : _332.z);
            bvec3 _2031 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2039;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2037 = (-_1942.xyz) * _1841.xyz + _2025;
                bvec3 _2840 = isnan(_2037);
                bvec3 _2841 = isnan(_1942.xyz);
                highp vec3 _2842 = max(_2037, _1942.xyz);
                highp vec3 _2843 = vec3(_2840.x ? _1942.xyz.x : _2842.x, _2840.y ? _1942.xyz.y : _2842.y, _2840.z ? _1942.xyz.z : _2842.z);
                _2039 = vec3(_2841.x ? _2037.x : _2843.x, _2841.y ? _2037.y : _2843.y, _2841.z ? _2037.z : _2843.z);
            }
            else
            {
                _2039 = vec3(_2031.x ? _2025.x : _2029.x, _2031.y ? _2025.y : _2029.y, _2031.z ? _2025.z : _2029.z);
            }
            bvec3 _2041 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2043 = mix(_1942.xyz, vec3(_2041.x ? _2026.x : _2039.x, _2041.y ? _2026.y : _2039.y, _2041.z ? _2026.z : _2039.z), ((vec3(_1964.x ? _1994.x : _2000.x, _1964.y ? _1994.y : _2000.y, _1964.z ? _1994.z : _2000.z) * (1.0 / (_1819 * _1819 + 1.0))) * mix(_1830, vec3(clamp(_1817 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2011 * _2011) * _2011) * _2011) * _2011))) * _1841.w);
            _2045 = vec4(_2043.x, _2043.y, _2043.z, _1942.w);
        }
        else
        {
            _2045 = _1942;
        }
        _2046 = _2045;
    }
    else
    {
        _2046 = vec4(_1793.x, _1793.y, _1793.z, _1790.w);
    }
    highp vec4 _2164;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2072 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2073 = vec3(_2072.x ? _458.x : _358.x, _2072.y ? _458.y : _358.y, _2072.z ? _458.z : _358.z);
        bvec3 _2074 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2075 = vec3(_2074.x ? vec3(0.0, 1.0, 0.0).x : _365.x, _2074.y ? vec3(0.0, 1.0, 0.0).y : _365.y, _2074.z ? vec3(0.0, 1.0, 0.0).z : _365.z);
        highp vec3 _2079 = normalize(_2075 - (_2073 * dot(_2073, _2075)));
        highp vec4 _2101 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_670, _665, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2073, _2079), _2079, _2073)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2102 = _2101.xyz;
        highp vec3 _2107 = mix(_2102, _2102 * _1600, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2108 = vec4(_2107.x, _2107.y, _2107.z, _2101.w);
        highp float _2109 = _2101.w;
        highp float _2113 = mix(_2109, _2109 * _1601, _Globals._MatCapShadowMask);
        _2108.w = _2113;
        highp vec4 _2123;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2122 = _2108;
            _2122.w = _2113 * _2046.w;
            _2123 = _2122;
        }
        else
        {
            _2123 = _2108;
        }
        highp vec3 _2137 = mix(_2123.xyz, _2123.xyz * _1413.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2144 = _2046.xyz + _2137;
        highp vec3 _2145 = _2046.xyz * _2137;
        bvec3 _2147 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2148 = vec3(_2147.x ? _2137.x : _332.x, _2147.y ? _2137.y : _332.y, _2147.z ? _2137.z : _332.z);
        bvec3 _2150 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2158;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2156 = (-_2046.xyz) * _2137 + _2144;
            bvec3 _2845 = isnan(_2156);
            bvec3 _2846 = isnan(_2046.xyz);
            highp vec3 _2847 = max(_2156, _2046.xyz);
            highp vec3 _2848 = vec3(_2845.x ? _2046.xyz.x : _2847.x, _2845.y ? _2046.xyz.y : _2847.y, _2845.z ? _2046.xyz.z : _2847.z);
            _2158 = vec3(_2846.x ? _2156.x : _2848.x, _2846.y ? _2156.y : _2848.y, _2846.z ? _2156.z : _2848.z);
        }
        else
        {
            _2158 = vec3(_2150.x ? _2144.x : _2148.x, _2150.y ? _2144.y : _2148.y, _2150.z ? _2144.z : _2148.z);
        }
        bvec3 _2160 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2162 = mix(_2046.xyz, vec3(_2160.x ? _2145.x : _2158.x, _2160.y ? _2145.y : _2158.y, _2160.z ? _2145.z : _2158.z), vec3(1.0) * (_Globals._MatCapBlend * ((_390 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2123.w)));
        _2164 = vec4(_2162.x, _2162.y, _2162.z, _2046.w);
    }
    else
    {
        _2164 = _2046;
    }
    highp vec4 _2281;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2189 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2190 = vec3(_2189.x ? _458.x : _358.x, _2189.y ? _458.y : _358.y, _2189.z ? _458.z : _358.z);
        bvec3 _2191 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2192 = vec3(_2191.x ? vec3(0.0, 1.0, 0.0).x : _365.x, _2191.y ? vec3(0.0, 1.0, 0.0).y : _365.y, _2191.z ? vec3(0.0, 1.0, 0.0).z : _365.z);
        highp vec3 _2196 = normalize(_2192 - (_2190 * dot(_2190, _2192)));
        highp vec4 _2218 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_670, _665, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2190, _2196), _2196, _2190)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2219 = _2218.xyz;
        highp vec3 _2224 = mix(_2219, _2219 * _1600, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2225 = vec4(_2224.x, _2224.y, _2224.z, _2218.w);
        highp float _2226 = _2218.w;
        highp float _2230 = mix(_2226, _2226 * _1601, _Globals._MatCap2ndShadowMask);
        _2225.w = _2230;
        highp vec4 _2240;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2239 = _2225;
            _2239.w = _2230 * _2164.w;
            _2240 = _2239;
        }
        else
        {
            _2240 = _2225;
        }
        highp vec3 _2254 = mix(_2240.xyz, _2240.xyz * _1413.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2261 = _2164.xyz + _2254;
        highp vec3 _2262 = _2164.xyz * _2254;
        bvec3 _2264 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2265 = vec3(_2264.x ? _2254.x : _332.x, _2264.y ? _2254.y : _332.y, _2264.z ? _2254.z : _332.z);
        bvec3 _2267 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2275;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2273 = (-_2164.xyz) * _2254 + _2261;
            bvec3 _2850 = isnan(_2273);
            bvec3 _2851 = isnan(_2164.xyz);
            highp vec3 _2852 = max(_2273, _2164.xyz);
            highp vec3 _2853 = vec3(_2850.x ? _2164.xyz.x : _2852.x, _2850.y ? _2164.xyz.y : _2852.y, _2850.z ? _2164.xyz.z : _2852.z);
            _2275 = vec3(_2851.x ? _2273.x : _2853.x, _2851.y ? _2273.y : _2853.y, _2851.z ? _2273.z : _2853.z);
        }
        else
        {
            _2275 = vec3(_2267.x ? _2261.x : _2265.x, _2267.y ? _2261.y : _2265.y, _2267.z ? _2261.z : _2265.z);
        }
        bvec3 _2277 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2279 = mix(_2164.xyz, vec3(_2277.x ? _2262.x : _2275.x, _2277.y ? _2262.y : _2275.y, _2277.z ? _2262.z : _2275.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_390 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2240.w)));
        _2281 = vec4(_2279.x, _2279.y, _2279.z, _2164.w);
    }
    else
    {
        _2281 = _2164;
    }
    highp vec4 _2437;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2300 = mix(_670, _665, vec3(_Globals._RimNormalStrength));
        highp float _2304 = dot(_442, _2300) * 0.5 + 0.5;
        highp float _2327 = (_390 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2300, _458)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2331 = mix(_2327, _2327 * clamp((_2304 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2332 = _2327 * clamp(((1.0 - _2304) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2342 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2351 = clamp((_2331 - _2342) / clamp(fwidth(_2331) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2342), 0.0, 1.0), 0.0, 1.0);
        highp float _2358 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2368 = clamp((_2332 * _Globals._RimDirStrength + (-_2358)) / clamp(fwidth(_2332 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2358), 0.0, 1.0), 0.0, 1.0);
        highp float _2372 = mix(_2351, _2351 * _1601, _Globals._RimShadowMask);
        highp float _2374 = mix(_2368, _2368 * _1601, _Globals._RimShadowMask);
        highp float _2383;
        highp float _2384;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2383 = _2374 * _2281.w;
            _2384 = _2372 * _2281.w;
        }
        else
        {
            _2383 = _2374;
            _2384 = _2372;
        }
        highp vec3 _2390 = vec3(1.0 - _Globals._RimEnableLighting) + (_1600 * _Globals._RimEnableLighting);
        highp vec3 _2392 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1413.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2393 = _2392 * _2390;
        highp vec3 _2399 = _2392 * _2390 + _2281.xyz;
        highp vec3 _2400 = _2281.xyz * _2393;
        bvec3 _2402 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2403 = vec3(_2402.x ? _2393.x : _332.x, _2402.y ? _2393.y : _332.y, _2402.z ? _2393.z : _332.z);
        bvec3 _2405 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2407 = _Globals._RimBlendMode == 2u;
        highp vec3 _2413;
        if (_2407)
        {
            highp vec3 _2411 = (-_2281.xyz) * _2393 + _2399;
            bvec3 _2855 = isnan(_2411);
            bvec3 _2856 = isnan(_2281.xyz);
            highp vec3 _2857 = max(_2411, _2281.xyz);
            highp vec3 _2858 = vec3(_2855.x ? _2281.xyz.x : _2857.x, _2855.y ? _2281.xyz.y : _2857.y, _2855.z ? _2281.xyz.z : _2857.z);
            _2413 = vec3(_2856.x ? _2411.x : _2858.x, _2856.y ? _2411.y : _2858.y, _2856.z ? _2411.z : _2858.z);
        }
        else
        {
            _2413 = vec3(_2405.x ? _2399.x : _2403.x, _2405.y ? _2399.y : _2403.y, _2405.z ? _2399.z : _2403.z);
        }
        bvec3 _2415 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2418 = mix(_2281.xyz, vec3(_2415.x ? _2400.x : _2413.x, _2415.y ? _2400.y : _2413.y, _2415.z ? _2400.z : _2413.z), vec3(_2384 * _Globals._RimColor.w)).xyz;
        highp vec3 _2420 = _Globals._RimIndirColor.xyz * _2390;
        highp vec3 _2424 = _Globals._RimIndirColor.xyz * _2390 + _2418;
        highp vec3 _2425 = _2418 * _2420;
        highp vec3 _2426 = vec3(_2402.x ? _2420.x : _332.x, _2402.y ? _2420.y : _332.y, _2402.z ? _2420.z : _332.z);
        highp vec3 _2433;
        if (_2407)
        {
            highp vec3 _2431 = (-_2418) * _2420 + _2424;
            bvec3 _2860 = isnan(_2431);
            bvec3 _2861 = isnan(_2418);
            highp vec3 _2862 = max(_2431, _2418);
            highp vec3 _2863 = vec3(_2860.x ? _2418.x : _2862.x, _2860.y ? _2418.y : _2862.y, _2860.z ? _2418.z : _2862.z);
            _2433 = vec3(_2861.x ? _2431.x : _2863.x, _2861.y ? _2431.y : _2863.y, _2861.z ? _2431.z : _2863.z);
        }
        else
        {
            _2433 = vec3(_2405.x ? _2424.x : _2426.x, _2405.y ? _2424.y : _2426.y, _2405.z ? _2424.z : _2426.z);
        }
        highp vec3 _2435 = mix(_2418, vec3(_2415.x ? _2425.x : _2433.x, _2415.y ? _2425.y : _2433.y, _2415.z ? _2425.z : _2433.z), vec3(_2383 * _Globals._RimIndirColor.w));
        _2437 = vec4(_2435.x, _2435.y, _2435.z, _2281.w);
    }
    else
    {
        _2437 = _2281;
    }
    highp vec4 _2553;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2448 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2449 = vec2(_2448.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2448.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2451 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2452 = vec2(_2451.x ? out_var_TEXCOORD1.xy.x : _2449.x, _2451.y ? out_var_TEXCOORD1.xy.y : _2449.y);
        bvec2 _2454 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2455 = vec2(_2454.x ? out_var_TEXCOORD1.zw.x : _2452.x, _2454.y ? out_var_TEXCOORD1.zw.y : _2452.y);
        bvec2 _2457 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2474 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2475 = sin(_2474);
        highp float _2476 = cos(_2474);
        highp vec2 _2477 = ((vec2(_2457.x ? _669.x : _2455.x, _2457.y ? _669.y : _2455.y) + ((_468.xy / vec2(_468.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2478 = _2477.x;
        highp float _2479 = _2477.y;
        highp vec4 _2492 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2478 * _2476 + (-(_2479 * _2475)), _2478 * _2475 + (_2479 * _2476)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2493 = _Globals._EmissionColor * _2492;
        highp vec3 _2494 = _2493.xyz;
        highp vec3 _2500 = mix(_2494, _2494 * _446, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2514 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2520;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2520 = roundEven(_2514);
        }
        else
        {
            _2520 = _2514;
        }
        highp vec3 _2529 = mix(_2500, _2500 * _1413.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2533 = _2437.xyz + _2529;
        highp vec3 _2534 = _2437.xyz * _2529;
        bvec3 _2536 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2537 = vec3(_2536.x ? _2529.x : _332.x, _2536.y ? _2529.y : _332.y, _2536.z ? _2529.z : _332.z);
        bvec3 _2539 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2547;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2545 = (-_2437.xyz) * _2529 + _2533;
            bvec3 _2865 = isnan(_2545);
            bvec3 _2866 = isnan(_2437.xyz);
            highp vec3 _2867 = max(_2545, _2437.xyz);
            highp vec3 _2868 = vec3(_2865.x ? _2437.xyz.x : _2867.x, _2865.y ? _2437.xyz.y : _2867.y, _2865.z ? _2437.xyz.z : _2867.z);
            _2547 = vec3(_2866.x ? _2545.x : _2868.x, _2866.y ? _2545.y : _2868.y, _2866.z ? _2545.z : _2868.z);
        }
        else
        {
            _2547 = vec3(_2539.x ? _2533.x : _2537.x, _2539.y ? _2533.y : _2537.y, _2539.z ? _2533.z : _2537.z);
        }
        bvec3 _2549 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2551 = mix(_2437.xyz, vec3(_2549.x ? _2534.x : _2547.x, _2549.y ? _2534.y : _2547.y, _2549.z ? _2534.z : _2547.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2520, _Globals._EmissionBlink.x)) * _2493.w) * _2437.w));
        _2553 = vec4(_2551.x, _2551.y, _2551.z, _2437.w);
    }
    else
    {
        _2553 = _2437;
    }
    highp vec4 _2620;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2567 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _446, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2581 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2587;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2587 = roundEven(_2581);
        }
        else
        {
            _2587 = _2581;
        }
        highp vec3 _2596 = mix(_2567, _2567 * _1413.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2600 = _2553.xyz + _2596;
        highp vec3 _2601 = _2553.xyz * _2596;
        bvec3 _2603 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2604 = vec3(_2603.x ? _2596.x : _332.x, _2603.y ? _2596.y : _332.y, _2603.z ? _2596.z : _332.z);
        bvec3 _2606 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2614;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2612 = (-_2553.xyz) * _2596 + _2600;
            bvec3 _2870 = isnan(_2612);
            bvec3 _2871 = isnan(_2553.xyz);
            highp vec3 _2872 = max(_2612, _2553.xyz);
            highp vec3 _2873 = vec3(_2870.x ? _2553.xyz.x : _2872.x, _2870.y ? _2553.xyz.y : _2872.y, _2870.z ? _2553.xyz.z : _2872.z);
            _2614 = vec3(_2871.x ? _2612.x : _2873.x, _2871.y ? _2612.y : _2873.y, _2871.z ? _2612.z : _2873.z);
        }
        else
        {
            _2614 = vec3(_2606.x ? _2600.x : _2604.x, _2606.y ? _2600.y : _2604.y, _2606.z ? _2600.z : _2604.z);
        }
        bvec3 _2616 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2618 = mix(_2553.xyz, vec3(_2616.x ? _2601.x : _2614.x, _2616.y ? _2601.y : _2614.y, _2616.z ? _2601.z : _2614.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2587, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2553.w));
        _2620 = vec4(_2618.x, _2618.y, _2618.z, _2553.w);
    }
    else
    {
        _2620 = _2553;
    }
    bvec3 _2630 = bvec3(_390 < 0.0);
    highp vec3 _2631 = (_2620.xyz + ((_Globals._DissolveColor.xyz * _1414) * _2620.w)).xyz;
    highp vec3 _2639 = mix(_2631, _Globals._BackfaceColor.xyz * _1600, vec3(_Globals._BackfaceColor.w));
    highp float _2660 = (_390 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _451) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2674 = vec3(_2630.x ? _2639.x : _2631.x, _2630.y ? _2639.y : _2631.y, _2630.z ? _2639.z : _2631.z).xyz;
    highp vec3 _2685 = mix(_2674, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2674, vec3(pow(clamp(1.0 - abs(dot(_670, _458)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2660));
    highp vec4 _2686 = vec4(_2685.x, _2685.y, _2685.z, _2620.w);
    highp float _2688 = mix(_2620.w, _2620.w * _Globals._DistanceFadeColor.w, _2660);
    _2686.w = _2688;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2688, _2686, vec4(out_var_TEXCOORD9));
}
