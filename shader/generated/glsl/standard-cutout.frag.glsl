#version 300 es
precision mediump float;
precision highp int;

vec3 _331;
vec3 _337;
float _338;

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
        _441 = (((step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _398), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _398), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _398), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_414, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _398), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _442 = normalize(out_var_TEXCOORD7);
    highp vec3 _446 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _450 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _451 = length(_450);
    highp vec3 _458 = normalize(_450);
    highp mat3 _467 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _468 = _458 * _467;
    highp vec2 _473 = _468.xy / vec2(_468.z + 0.5);
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
        highp vec3 _600 = vec3(_599.x, _599.y, _337.z);
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
        highp vec3 _942 = vec3(_941.x ? _927.xyz.x : _331.x, _941.y ? _927.xyz.y : _331.y, _941.z ? _927.xyz.z : _331.z);
        bvec3 _944 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _952;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _950 = (-_928.xyz) * _927.xyz + _938;
            bvec3 _2742 = isnan(_950);
            bvec3 _2743 = isnan(_928.xyz);
            highp vec3 _2744 = max(_950, _928.xyz);
            highp vec3 _2745 = vec3(_2742.x ? _928.xyz.x : _2744.x, _2742.y ? _928.xyz.y : _2744.y, _2742.z ? _928.xyz.z : _2744.z);
            _952 = vec3(_2743.x ? _950.x : _2745.x, _2743.y ? _950.y : _2745.y, _2743.z ? _950.z : _2745.z);
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
        highp vec3 _1226 = vec3(_1225.x ? _1211.xyz.x : _331.x, _1225.y ? _1211.xyz.y : _331.y, _1225.z ? _1211.xyz.z : _331.z);
        bvec3 _1228 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1236;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1234 = (-_1212.xyz) * _1211.xyz + _1222;
            bvec3 _2767 = isnan(_1234);
            bvec3 _2768 = isnan(_1212.xyz);
            highp vec3 _2769 = max(_1234, _1212.xyz);
            highp vec3 _2770 = vec3(_2767.x ? _1212.xyz.x : _2769.x, _2767.y ? _1212.xyz.y : _2769.y, _2767.z ? _1212.xyz.z : _2769.z);
            _1236 = vec3(_2768.x ? _1234.x : _2770.x, _2768.y ? _1234.y : _2770.y, _2768.z ? _1234.z : _2770.z);
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
    highp vec4 _1400;
    highp float _1401;
    if ((_381 & 1) != 0)
    {
        highp vec4 _1296 = _1292;
        _1296.w = 1.0;
        highp vec2 _1305 = roundEven(_Globals._DissolveParams.xy);
        highp float _1306 = _1305.x;
        highp vec4 _1389;
        highp float _1390;
        if (_1306 != 0.0)
        {
            bool _1310 = _1306 == 1.0;
            highp float _1320;
            if (_1310 && true)
            {
                _1320 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1320 = 1.0;
            }
            highp float _1332;
            highp float _1333;
            if (_1310)
            {
                _1332 = 1.0 - clamp(abs(_1320 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1333 = float(_1320 > _Globals._DissolveParams.z);
            }
            else
            {
                _1332 = 0.0;
                _1333 = _1320;
            }
            highp float _1364;
            highp float _1365;
            if (_1306 == 2.0)
            {
                highp vec2 _1342 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1353 = (_1305.y == 1.0) ? (vec2(_1342.x * cos(_Globals._DissolvePos.w) + (-(_1342.y * sin(_Globals._DissolvePos.w))), _338) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1364 = 1.0 - clamp(abs(_1353 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1365 = _1333 * float(_1353 > _Globals._DissolveParams.z);
            }
            else
            {
                _1364 = _1332;
                _1365 = _1333;
            }
            highp float _1386;
            highp float _1387;
            if (_1306 == 3.0)
            {
                highp float _1375 = (_1305.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1386 = 1.0 - clamp(abs(_1375 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1387 = _1365 * float(_1375 > _Globals._DissolveParams.z);
            }
            else
            {
                _1386 = _1364;
                _1387 = _1365;
            }
            highp vec4 _1388 = _1296;
            _1388.w = _1387;
            _1389 = _1388;
            _1390 = _1386;
        }
        else
        {
            _1389 = _1296;
            _1390 = 0.0;
        }
        highp vec4 _1396;
        if ((_381 & 2) != 0)
        {
            highp vec4 _1395 = _1389;
            _1395.w = 1.0 - _1389.w;
            _1396 = _1395;
        }
        else
        {
            _1396 = _1389;
        }
        highp vec4 _1399 = _1396;
        _1399.w = _1396.w * _1292.w;
        _1400 = _1399;
        _1401 = _1390;
    }
    else
    {
        _1400 = _1292;
        _1401 = 0.0;
    }
    highp float _1406 = fwidth(_1400.w);
    highp float _1410 = clamp(((_1400.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1406 : (isnan(_1406) ? 9.9999997473787516355514526367188e-05 : max(_1406, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1411 = _1400;
    _1411.w = _1410;
    if (_1410 == 0.0)
    {
        discard;
    }
    highp vec4 _1588;
    highp float _1589;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1438 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1441 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1444 = clamp(dot(_442, mix(_670, _665, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1448 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1451 = clamp(_441 + distance(_442, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1454 = mix(1.0, _1451, _Globals._ShadowReceive);
        highp float _1455 = _1438 * _1454;
        highp float _1458 = mix(1.0, _1451, _Globals._Shadow2ndReceive);
        highp float _1462 = mix(1.0, _1451, _Globals._Shadow3rdReceive);
        highp float _1473 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1474 = clamp(_1473, 0.0, 1.0);
        highp float _1476 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1489 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1503 = clamp(_1473 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1516 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1531 = (_390 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1532 = clamp((_1438 * _1454 + (-_1474)) / clamp(fwidth(_1455) * _1448 + (_1476 - _1474), 0.0, 1.0), 0.0, 1.0) * _1531;
        highp vec3 _1564 = mix(mix(_1411.xyz * _Globals._ShadowColor.xyz, (_1411.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1441 * _1458 + (-_1489)) / clamp(fwidth(_1441 * _1458) * _1448 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1489), 0.0, 1.0), 0.0, 1.0) * _1531)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1411.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1444 * _1462 + (-_1516)) / clamp(fwidth(_1444 * _1462) * _1448 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1516), 0.0, 1.0), 0.0, 1.0) * _1531)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1570 = _1411.xyz * out_var_TEXCOORD6;
        highp vec3 _1576 = mix(mix(_1564, _1564 * _1411.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1411.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2777 = isnan(_1576);
        bvec3 _2778 = isnan(_1570);
        highp vec3 _2779 = min(_1576, _1570);
        highp vec3 _2780 = vec3(_2777.x ? _1570.x : _2779.x, _2777.y ? _1570.y : _2779.y, _2777.z ? _1570.z : _2779.z);
        highp vec3 _1584 = mix(mix(vec3(_2778.x ? _1576.x : _2780.x, _2778.y ? _1576.y : _2780.y, _2778.z ? _1576.z : _2780.z), _1570, _Globals._ShadowBorderColor.xyz * (clamp((_1438 * _1454 + (-_1503)) / clamp(fwidth(_1455) * _1448 + (_1476 - _1503), 0.0, 1.0), 0.0, 1.0) * _1531)), _1570, vec3(mix(1.0, _1532, _Globals._ShadowStrength)));
        _1588 = vec4(_1584.x, _1584.y, _1584.z, _1411.w);
        _1589 = _1532;
    }
    else
    {
        highp vec3 _1586 = _1411.xyz * out_var_TEXCOORD6;
        _1588 = vec4(_1586.x, _1586.y, _1586.z, _1411.w);
        _1589 = 1.0;
    }
    highp vec3 _1592 = vec3(_Globals._LightMaxLimit);
    bvec3 _2782 = isnan(out_var_TEXCOORD6);
    bvec3 _2783 = isnan(_1592);
    highp vec3 _2784 = min(out_var_TEXCOORD6, _1592);
    highp vec3 _2785 = vec3(_2782.x ? _1592.x : _2784.x, _2782.y ? _1592.y : _2784.y, _2782.z ? _1592.z : _2784.z);
    highp vec3 _1593 = vec3(_2783.x ? out_var_TEXCOORD6.x : _2785.x, _2783.y ? out_var_TEXCOORD6.y : _2785.y, _2783.z ? out_var_TEXCOORD6.z : _2785.z);
    highp float _1594 = clamp(_1589, 0.0, 1.0);
    highp vec3 _1596 = _1411.xyz * _Globals._LightMaxLimit;
    bvec3 _2787 = isnan(_1588.xyz);
    bvec3 _2788 = isnan(_1596);
    highp vec3 _2789 = min(_1588.xyz, _1596);
    highp vec3 _2790 = vec3(_2787.x ? _1596.x : _2789.x, _2787.y ? _1596.y : _2789.y, _2787.z ? _1596.z : _2789.z);
    highp vec3 _1597 = vec3(_2788.x ? _1588.xyz.x : _2790.x, _2788.y ? _1588.xyz.y : _2790.y, _2788.z ? _1588.xyz.z : _2790.z);
    highp vec4 _1631;
    if (_680)
    {
        highp vec3 _1601 = _1597.xyz;
        highp vec3 _1611 = _1601 + _958.xyz;
        highp vec3 _1612 = _1601 * _958.xyz;
        bvec3 _1614 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1615 = vec3(_1614.x ? _958.xyz.x : _331.x, _1614.y ? _958.xyz.y : _331.y, _1614.z ? _958.xyz.z : _331.z);
        bvec3 _1617 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1625;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1623 = (-_1601) * _958.xyz + _1611;
            bvec3 _2792 = isnan(_1623);
            bvec3 _2793 = isnan(_1601);
            highp vec3 _2794 = max(_1623, _1601);
            highp vec3 _2795 = vec3(_2792.x ? _1601.x : _2794.x, _2792.y ? _1601.y : _2794.y, _2792.z ? _1601.z : _2794.z);
            _1625 = vec3(_2793.x ? _1623.x : _2795.x, _2793.y ? _1623.y : _2795.y, _2793.z ? _1623.z : _2795.z);
        }
        else
        {
            _1625 = vec3(_1617.x ? _1611.x : _1615.x, _1617.y ? _1611.y : _1615.y, _1617.z ? _1611.z : _1615.z);
        }
        bvec3 _1627 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1629 = mix(_1601, vec3(_1627.x ? _1612.x : _1625.x, _1627.y ? _1612.y : _1625.y, _1627.z ? _1612.z : _1625.z), vec3((-_958.w) * _Globals._Main2ndEnableLighting + _958.w));
        _1631 = vec4(_1629.x, _1629.y, _1629.z, _1588.w);
    }
    else
    {
        _1631 = vec4(_1597.x, _1597.y, _1597.z, _1588.w);
    }
    highp vec4 _1664;
    if (_964)
    {
        highp vec3 _1644 = _1631.xyz + _1242.xyz;
        highp vec3 _1645 = _1631.xyz * _1242.xyz;
        bvec3 _1647 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1648 = vec3(_1647.x ? _1242.xyz.x : _331.x, _1647.y ? _1242.xyz.y : _331.y, _1647.z ? _1242.xyz.z : _331.z);
        bvec3 _1650 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1658;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1656 = (-_1631.xyz) * _1242.xyz + _1644;
            bvec3 _2797 = isnan(_1656);
            bvec3 _2798 = isnan(_1631.xyz);
            highp vec3 _2799 = max(_1656, _1631.xyz);
            highp vec3 _2800 = vec3(_2797.x ? _1631.xyz.x : _2799.x, _2797.y ? _1631.xyz.y : _2799.y, _2797.z ? _1631.xyz.z : _2799.z);
            _1658 = vec3(_2798.x ? _1656.x : _2800.x, _2798.y ? _1656.y : _2800.y, _2798.z ? _1656.z : _2800.z);
        }
        else
        {
            _1658 = vec3(_1650.x ? _1644.x : _1648.x, _1650.y ? _1644.y : _1648.y, _1650.z ? _1644.z : _1648.z);
        }
        bvec3 _1660 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1662 = mix(_1631.xyz, vec3(_1660.x ? _1645.x : _1658.x, _1660.y ? _1645.y : _1658.y, _1660.z ? _1645.z : _1658.z), vec3((-_1242.w) * _Globals._Main3rdEnableLighting + _1242.w));
        _1664 = vec4(_1662.x, _1662.y, _1662.z, _1631.w);
    }
    else
    {
        _1664 = _1631;
    }
    highp vec4 _1710;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1680 = pow(clamp(1.0 - abs(dot(mix(_670, _665, vec3(_Globals._RimShadeNormalStrength)), _458)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1689 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1708 = mix(_1664.xyz, _1664.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1680 - _1689) / clamp(fwidth(_1680) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1689), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1710 = vec4(_1708.x, _1708.y, _1708.z, _1664.w);
    }
    else
    {
        _1710 = _1664;
    }
    highp vec4 _1783;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1734 = dot(normalize(((-_458) * _Globals._BacklightViewStrength) + _442), mix(_670, _665, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1744;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1744 = _1734 * clamp(_441 + distance(_442, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1744 = _1734;
        }
        highp float _1753 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1781 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1411.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_390 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_458, _442) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1744 - _1753) / clamp(fwidth(_1744) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1753), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1593 + _1710.xyz;
        _1783 = vec4(_1781.x, _1781.y, _1781.z, _1710.w);
    }
    else
    {
        _1783 = _1710;
    }
    highp vec4 _2026;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1793 = dFdx(_665);
        highp vec3 _1794 = abs(_1793);
        highp vec3 _1795 = dFdy(_665);
        highp vec3 _1796 = abs(_1795);
        highp float _1797 = dot(_1794, _1794);
        highp float _1798 = dot(_1796, _1796);
        highp float _1799 = isnan(_1798) ? _1797 : (isnan(_1797) ? _1798 : max(_1797, _1798));
        highp float _1802 = (_1799 / (_1799 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1805 = clamp(1.0 - (isnan(_1802) ? 0.0 : (isnan(0.0) ? _1802 : max(0.0, _1802))), 0.0, 1.0);
        highp float _1806 = isnan(_1805) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1805 : min(_Globals._Smoothness, _1805));
        highp float _1807 = 1.0 - _1806;
        highp float _1808 = _1807 * _1807;
        highp vec3 _1813 = _1783.xyz - (_1783.xyz * _Globals._Metallic);
        highp vec3 _1819 = mix(vec3(_Globals._Reflectance), _1411.xyz, vec3(_Globals._Metallic));
        highp vec4 _1922;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1894;
            do
            {
                highp vec3 _1832 = mix(_670, _665, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1834 = normalize(_458 + _442);
                highp float _1836 = clamp(dot(_1832, _1834), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1845 = pow(_1836, 1.0 / _1808);
                    highp float _1852 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1894 = vec3(clamp((_1845 - _1852) / clamp(fwidth(_1845) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1852), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1864 = clamp(dot(_1832, _458), 0.0, 1.0);
                highp float _1866 = clamp(dot(_1832, _442), 0.0, 1.0);
                highp float _1869 = isnan(0.00200000009499490261077880859375) ? _1808 : (isnan(_1808) ? 0.00200000009499490261077880859375 : max(_1808, 0.00200000009499490261077880859375));
                highp float _1870 = 1.0 - _1869;
                highp float _1874 = _1869 * _1869;
                highp float _1877 = (_1836 * _1874 + (-_1836)) * _1836 + 1.0;
                highp float _1885 = 1.0 - clamp(dot(_442, _1834), 0.0, 1.0);
                _1894 = (_1819 + ((((((vec3(1.0) - _1819) * _1885) * _1885) * _1885) * _1885) * _1885)) * (((0.5 / ((_1866 * (_1864 * _1870 + _1869) + (_1864 * (_1866 * _1870 + _1869))) + 9.9999997473787516355514526367188e-06)) * (_1874 / (_1877 * _1877 + 1.0000000116860974230803549289703e-07))) * _1866);
                break;
            } while(false);
            highp vec3 _1895 = _1813.xyz;
            highp vec3 _1897 = _Globals._ReflectionColor.xyz * _1593;
            highp vec3 _1902 = _Globals._ReflectionColor.xyz * _1593 + _1895;
            highp vec3 _1903 = _1895 * _1897;
            bvec3 _1905 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1906 = vec3(_1905.x ? _1897.x : _331.x, _1905.y ? _1897.y : _331.y, _1905.z ? _1897.z : _331.z);
            bvec3 _1908 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1916;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1914 = (-_1895) * _1897 + _1902;
                bvec3 _2822 = isnan(_1914);
                bvec3 _2823 = isnan(_1895);
                highp vec3 _2824 = max(_1914, _1895);
                highp vec3 _2825 = vec3(_2822.x ? _1895.x : _2824.x, _2822.y ? _1895.y : _2824.y, _2822.z ? _1895.z : _2824.z);
                _1916 = vec3(_2823.x ? _1914.x : _2825.x, _2823.y ? _1914.y : _2825.y, _2823.z ? _1914.z : _2825.z);
            }
            else
            {
                _1916 = vec3(_1908.x ? _1902.x : _1906.x, _1908.y ? _1902.y : _1906.y, _1908.z ? _1902.z : _1906.z);
            }
            bvec3 _1918 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1920 = mix(_1895, vec3(_1918.x ? _1903.x : _1916.x, _1918.y ? _1903.y : _1916.y, _1918.z ? _1903.z : _1916.z), _1894 * _Globals._ReflectionColor.w);
            _1922 = vec4(_1920.x, _1920.y, _1920.z, _1783.w);
        }
        else
        {
            _1922 = vec4(_1813.x, _1813.y, _1813.z, _1783.w);
        }
        highp vec4 _2025;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1944 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1951 = reflect(-_458, mix(_670, _665, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1954 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1951, _1807 * ((-4.19999980926513671875) * _1807 + 10.19999980926513671875));
            highp vec3 _1974 = ((_1954.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1954.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1593, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1980 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1951, _1807 * 8.0).xyz * 1.0;
            highp float _1991 = 1.0 - _667;
            highp vec3 _2005 = _1922.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2006 = _1922.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2008 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2009 = vec3(_2008.x ? _Globals._ReflectionColor.xyz.x : _331.x, _2008.y ? _Globals._ReflectionColor.xyz.y : _331.y, _2008.z ? _Globals._ReflectionColor.xyz.z : _331.z);
            bvec3 _2011 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2019;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2017 = (-_1922.xyz) * _Globals._ReflectionColor.xyz + _2005;
                bvec3 _2827 = isnan(_2017);
                bvec3 _2828 = isnan(_1922.xyz);
                highp vec3 _2829 = max(_2017, _1922.xyz);
                highp vec3 _2830 = vec3(_2827.x ? _1922.xyz.x : _2829.x, _2827.y ? _1922.xyz.y : _2829.y, _2827.z ? _1922.xyz.z : _2829.z);
                _2019 = vec3(_2828.x ? _2017.x : _2830.x, _2828.y ? _2017.y : _2830.y, _2828.z ? _2017.z : _2830.z);
            }
            else
            {
                _2019 = vec3(_2011.x ? _2005.x : _2009.x, _2011.y ? _2005.y : _2009.y, _2011.z ? _2005.z : _2009.z);
            }
            bvec3 _2021 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2023 = mix(_1922.xyz, vec3(_2021.x ? _2006.x : _2019.x, _2021.y ? _2006.y : _2019.y, _2021.z ? _2006.z : _2019.z), ((vec3(_1944.x ? _1974.x : _1980.x, _1944.y ? _1974.y : _1980.y, _1944.z ? _1974.z : _1980.z) * (1.0 / (_1808 * _1808 + 1.0))) * mix(_1819, vec3(clamp(_1806 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1991 * _1991) * _1991) * _1991) * _1991))) * _Globals._ReflectionColor.w);
            _2025 = vec4(_2023.x, _2023.y, _2023.z, _1922.w);
        }
        else
        {
            _2025 = _1922;
        }
        _2026 = _2025;
    }
    else
    {
        _2026 = _1783;
    }
    highp vec4 _2132;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2052 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2053 = vec3(_2052.x ? _458.x : _358.x, _2052.y ? _458.y : _358.y, _2052.z ? _458.z : _358.z);
        bvec3 _2054 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2055 = vec3(_2054.x ? vec3(0.0, 1.0, 0.0).x : _365.x, _2054.y ? vec3(0.0, 1.0, 0.0).y : _365.y, _2054.z ? vec3(0.0, 1.0, 0.0).z : _365.z);
        highp vec3 _2059 = normalize(_2055 - (_2053 * dot(_2053, _2055)));
        highp vec4 _2081 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_670, _665, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2053, _2059), _2059, _2053)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2082 = _2081.xyz;
        highp float _2088 = _2081.w;
        highp vec3 _2098 = mix(_2082, _2082 * _1593, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2105 = mix(_2098, _2098 * _1411.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2112 = _2026.xyz + _2105;
        highp vec3 _2113 = _2026.xyz * _2105;
        bvec3 _2115 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2116 = vec3(_2115.x ? _2105.x : _331.x, _2115.y ? _2105.y : _331.y, _2115.z ? _2105.z : _331.z);
        bvec3 _2118 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2126;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2124 = (-_2026.xyz) * _2105 + _2112;
            bvec3 _2832 = isnan(_2124);
            bvec3 _2833 = isnan(_2026.xyz);
            highp vec3 _2834 = max(_2124, _2026.xyz);
            highp vec3 _2835 = vec3(_2832.x ? _2026.xyz.x : _2834.x, _2832.y ? _2026.xyz.y : _2834.y, _2832.z ? _2026.xyz.z : _2834.z);
            _2126 = vec3(_2833.x ? _2124.x : _2835.x, _2833.y ? _2124.y : _2835.y, _2833.z ? _2124.z : _2835.z);
        }
        else
        {
            _2126 = vec3(_2118.x ? _2112.x : _2116.x, _2118.y ? _2112.y : _2116.y, _2118.z ? _2112.z : _2116.z);
        }
        bvec3 _2128 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2130 = mix(_2026.xyz, vec3(_2128.x ? _2113.x : _2126.x, _2128.y ? _2113.y : _2126.y, _2128.z ? _2113.z : _2126.z), vec3(1.0) * (_Globals._MatCapBlend * ((_390 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2088, _2088 * _1594, _Globals._MatCapShadowMask))));
        _2132 = vec4(_2130.x, _2130.y, _2130.z, _2026.w);
    }
    else
    {
        _2132 = _2026;
    }
    highp vec4 _2237;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2157 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2158 = vec3(_2157.x ? _458.x : _358.x, _2157.y ? _458.y : _358.y, _2157.z ? _458.z : _358.z);
        bvec3 _2159 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2160 = vec3(_2159.x ? vec3(0.0, 1.0, 0.0).x : _365.x, _2159.y ? vec3(0.0, 1.0, 0.0).y : _365.y, _2159.z ? vec3(0.0, 1.0, 0.0).z : _365.z);
        highp vec3 _2164 = normalize(_2160 - (_2158 * dot(_2158, _2160)));
        highp vec4 _2186 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_670, _665, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2158, _2164), _2164, _2158)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2187 = _2186.xyz;
        highp float _2193 = _2186.w;
        highp vec3 _2203 = mix(_2187, _2187 * _1593, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2210 = mix(_2203, _2203 * _1411.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2217 = _2132.xyz + _2210;
        highp vec3 _2218 = _2132.xyz * _2210;
        bvec3 _2220 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2221 = vec3(_2220.x ? _2210.x : _331.x, _2220.y ? _2210.y : _331.y, _2220.z ? _2210.z : _331.z);
        bvec3 _2223 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2231;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2229 = (-_2132.xyz) * _2210 + _2217;
            bvec3 _2837 = isnan(_2229);
            bvec3 _2838 = isnan(_2132.xyz);
            highp vec3 _2839 = max(_2229, _2132.xyz);
            highp vec3 _2840 = vec3(_2837.x ? _2132.xyz.x : _2839.x, _2837.y ? _2132.xyz.y : _2839.y, _2837.z ? _2132.xyz.z : _2839.z);
            _2231 = vec3(_2838.x ? _2229.x : _2840.x, _2838.y ? _2229.y : _2840.y, _2838.z ? _2229.z : _2840.z);
        }
        else
        {
            _2231 = vec3(_2223.x ? _2217.x : _2221.x, _2223.y ? _2217.y : _2221.y, _2223.z ? _2217.z : _2221.z);
        }
        bvec3 _2233 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2235 = mix(_2132.xyz, vec3(_2233.x ? _2218.x : _2231.x, _2233.y ? _2218.y : _2231.y, _2233.z ? _2218.z : _2231.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_390 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2193, _2193 * _1594, _Globals._MatCap2ndShadowMask))));
        _2237 = vec4(_2235.x, _2235.y, _2235.z, _2132.w);
    }
    else
    {
        _2237 = _2132;
    }
    highp vec4 _2383;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2256 = mix(_670, _665, vec3(_Globals._RimNormalStrength));
        highp float _2260 = dot(_442, _2256) * 0.5 + 0.5;
        highp float _2283 = (_390 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2256, _458)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2287 = mix(_2283, _2283 * clamp((_2260 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2288 = _2283 * clamp(((1.0 - _2260) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2298 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2307 = clamp((_2287 - _2298) / clamp(fwidth(_2287) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2298), 0.0, 1.0), 0.0, 1.0);
        highp float _2314 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2324 = clamp((_2288 * _Globals._RimDirStrength + (-_2314)) / clamp(fwidth(_2288 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2314), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2336 = vec3(1.0 - _Globals._RimEnableLighting) + (_1593 * _Globals._RimEnableLighting);
        highp vec3 _2338 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1411.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2339 = _2338 * _2336;
        highp vec3 _2345 = _2338 * _2336 + _2237.xyz;
        highp vec3 _2346 = _2237.xyz * _2339;
        bvec3 _2348 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2349 = vec3(_2348.x ? _2339.x : _331.x, _2348.y ? _2339.y : _331.y, _2348.z ? _2339.z : _331.z);
        bvec3 _2351 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2353 = _Globals._RimBlendMode == 2u;
        highp vec3 _2359;
        if (_2353)
        {
            highp vec3 _2357 = (-_2237.xyz) * _2339 + _2345;
            bvec3 _2842 = isnan(_2357);
            bvec3 _2843 = isnan(_2237.xyz);
            highp vec3 _2844 = max(_2357, _2237.xyz);
            highp vec3 _2845 = vec3(_2842.x ? _2237.xyz.x : _2844.x, _2842.y ? _2237.xyz.y : _2844.y, _2842.z ? _2237.xyz.z : _2844.z);
            _2359 = vec3(_2843.x ? _2357.x : _2845.x, _2843.y ? _2357.y : _2845.y, _2843.z ? _2357.z : _2845.z);
        }
        else
        {
            _2359 = vec3(_2351.x ? _2345.x : _2349.x, _2351.y ? _2345.y : _2349.y, _2351.z ? _2345.z : _2349.z);
        }
        bvec3 _2361 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2364 = mix(_2237.xyz, vec3(_2361.x ? _2346.x : _2359.x, _2361.y ? _2346.y : _2359.y, _2361.z ? _2346.z : _2359.z), vec3(mix(_2307, _2307 * _1594, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2366 = _Globals._RimIndirColor.xyz * _2336;
        highp vec3 _2370 = _Globals._RimIndirColor.xyz * _2336 + _2364;
        highp vec3 _2371 = _2364 * _2366;
        highp vec3 _2372 = vec3(_2348.x ? _2366.x : _331.x, _2348.y ? _2366.y : _331.y, _2348.z ? _2366.z : _331.z);
        highp vec3 _2379;
        if (_2353)
        {
            highp vec3 _2377 = (-_2364) * _2366 + _2370;
            bvec3 _2847 = isnan(_2377);
            bvec3 _2848 = isnan(_2364);
            highp vec3 _2849 = max(_2377, _2364);
            highp vec3 _2850 = vec3(_2847.x ? _2364.x : _2849.x, _2847.y ? _2364.y : _2849.y, _2847.z ? _2364.z : _2849.z);
            _2379 = vec3(_2848.x ? _2377.x : _2850.x, _2848.y ? _2377.y : _2850.y, _2848.z ? _2377.z : _2850.z);
        }
        else
        {
            _2379 = vec3(_2351.x ? _2370.x : _2372.x, _2351.y ? _2370.y : _2372.y, _2351.z ? _2370.z : _2372.z);
        }
        highp vec3 _2381 = mix(_2364, vec3(_2361.x ? _2371.x : _2379.x, _2361.y ? _2371.y : _2379.y, _2361.z ? _2371.z : _2379.z), vec3(mix(_2324, _2324 * _1594, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2383 = vec4(_2381.x, _2381.y, _2381.z, _2237.w);
    }
    else
    {
        _2383 = _2237;
    }
    highp vec4 _2497;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2394 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2395 = vec2(_2394.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2394.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2397 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2398 = vec2(_2397.x ? out_var_TEXCOORD1.xy.x : _2395.x, _2397.y ? out_var_TEXCOORD1.xy.y : _2395.y);
        bvec2 _2400 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2401 = vec2(_2400.x ? out_var_TEXCOORD1.zw.x : _2398.x, _2400.y ? out_var_TEXCOORD1.zw.y : _2398.y);
        bvec2 _2403 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2420 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2421 = sin(_2420);
        highp float _2422 = cos(_2420);
        highp vec2 _2423 = ((vec2(_2403.x ? _669.x : _2401.x, _2403.y ? _669.y : _2401.y) + (_473 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2424 = _2423.x;
        highp float _2425 = _2423.y;
        highp vec4 _2438 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2424 * _2422 + (-(_2425 * _2421)), _2424 * _2421 + (_2425 * _2422)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2439 = _Globals._EmissionColor * _2438;
        highp vec3 _2440 = _2439.xyz;
        highp vec3 _2446 = mix(_2440, _2440 * _446, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2460 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2466;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2466 = roundEven(_2460);
        }
        else
        {
            _2466 = _2460;
        }
        highp vec3 _2473 = mix(_2446, _2446 * _1411.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2477 = _2383.xyz + _2473;
        highp vec3 _2478 = _2383.xyz * _2473;
        bvec3 _2480 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2481 = vec3(_2480.x ? _2473.x : _331.x, _2480.y ? _2473.y : _331.y, _2480.z ? _2473.z : _331.z);
        bvec3 _2483 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2491;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2489 = (-_2383.xyz) * _2473 + _2477;
            bvec3 _2852 = isnan(_2489);
            bvec3 _2853 = isnan(_2383.xyz);
            highp vec3 _2854 = max(_2489, _2383.xyz);
            highp vec3 _2855 = vec3(_2852.x ? _2383.xyz.x : _2854.x, _2852.y ? _2383.xyz.y : _2854.y, _2852.z ? _2383.xyz.z : _2854.z);
            _2491 = vec3(_2853.x ? _2489.x : _2855.x, _2853.y ? _2489.y : _2855.y, _2853.z ? _2489.z : _2855.z);
        }
        else
        {
            _2491 = vec3(_2483.x ? _2477.x : _2481.x, _2483.y ? _2477.y : _2481.y, _2483.z ? _2477.z : _2481.z);
        }
        bvec3 _2493 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2495 = mix(_2383.xyz, vec3(_2493.x ? _2478.x : _2491.x, _2493.y ? _2478.y : _2491.y, _2493.z ? _2478.z : _2491.z), vec3((_Globals._EmissionBlend * mix(1.0, _2466, _Globals._EmissionBlink.x)) * _2439.w));
        _2497 = vec4(_2495.x, _2495.y, _2495.z, _2383.w);
    }
    else
    {
        _2497 = _2383;
    }
    highp vec4 _2611;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2508 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2509 = vec2(_2508.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2508.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2511 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2512 = vec2(_2511.x ? out_var_TEXCOORD1.xy.x : _2509.x, _2511.y ? out_var_TEXCOORD1.xy.y : _2509.y);
        bvec2 _2514 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2515 = vec2(_2514.x ? out_var_TEXCOORD1.zw.x : _2512.x, _2514.y ? out_var_TEXCOORD1.zw.y : _2512.y);
        bvec2 _2517 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2534 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2535 = sin(_2534);
        highp float _2536 = cos(_2534);
        highp vec2 _2537 = ((vec2(_2517.x ? _669.x : _2515.x, _2517.y ? _669.y : _2515.y) + (_473 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2538 = _2537.x;
        highp float _2539 = _2537.y;
        highp vec4 _2552 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2538 * _2536 + (-(_2539 * _2535)), _2538 * _2535 + (_2539 * _2536)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2553 = _Globals._Emission2ndColor * _2552;
        highp vec3 _2554 = _2553.xyz;
        highp vec3 _2560 = mix(_2554, _2554 * _446, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2574 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2580;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2580 = roundEven(_2574);
        }
        else
        {
            _2580 = _2574;
        }
        highp vec3 _2587 = mix(_2560, _2560 * _1411.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2591 = _2497.xyz + _2587;
        highp vec3 _2592 = _2497.xyz * _2587;
        bvec3 _2594 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2595 = vec3(_2594.x ? _2587.x : _331.x, _2594.y ? _2587.y : _331.y, _2594.z ? _2587.z : _331.z);
        bvec3 _2597 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2605;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2603 = (-_2497.xyz) * _2587 + _2591;
            bvec3 _2857 = isnan(_2603);
            bvec3 _2858 = isnan(_2497.xyz);
            highp vec3 _2859 = max(_2603, _2497.xyz);
            highp vec3 _2860 = vec3(_2857.x ? _2497.xyz.x : _2859.x, _2857.y ? _2497.xyz.y : _2859.y, _2857.z ? _2497.xyz.z : _2859.z);
            _2605 = vec3(_2858.x ? _2603.x : _2860.x, _2858.y ? _2603.y : _2860.y, _2858.z ? _2603.z : _2860.z);
        }
        else
        {
            _2605 = vec3(_2597.x ? _2591.x : _2595.x, _2597.y ? _2591.y : _2595.y, _2597.z ? _2591.z : _2595.z);
        }
        bvec3 _2607 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2609 = mix(_2497.xyz, vec3(_2607.x ? _2592.x : _2605.x, _2607.y ? _2592.y : _2605.y, _2607.z ? _2592.z : _2605.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2580, _Globals._Emission2ndBlink.x)) * _2553.w));
        _2611 = vec4(_2609.x, _2609.y, _2609.z, _2497.w);
    }
    else
    {
        _2611 = _2497;
    }
    bvec3 _2619 = bvec3(_390 < 0.0);
    highp vec3 _2620 = (_2611.xyz + (_Globals._DissolveColor.xyz * _1401)).xyz;
    highp vec3 _2628 = mix(_2620, _Globals._BackfaceColor.xyz * _1593, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2663 = vec3(_2619.x ? _2628.x : _2620.x, _2619.y ? _2628.y : _2620.y, _2619.z ? _2628.z : _2620.z).xyz;
    highp vec3 _2671 = mix(_2663, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2663, vec3(pow(clamp(1.0 - abs(dot(_670, _458)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_390 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _451) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2671.x, _2671.y, _2671.z, _2611.w), vec4(out_var_TEXCOORD9));
}
