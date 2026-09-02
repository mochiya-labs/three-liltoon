#version 300 es
precision mediump float;
precision highp int;

vec3 _329;
vec3 _335;

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
    highp vec3 _355 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _362 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _378 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _387 = float(gl_FrontFacing ? 1 : (-1));
    highp float _438;
    do
    {
        highp vec3 _394 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _395 = _394.xy;
        highp float _401 = _394.z;
        if ((any(lessThan(_395, vec2(0.0))) || any(greaterThan(_395, vec2(1.0)))) || (_401 > 1.0))
        {
            _438 = 1.0;
            break;
        }
        highp float _411 = _401 + _Globals.uShadowBias;
        _438 = (((step(_411, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _395), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_411, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _395), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_411, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _395), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_411, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _395), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _439 = normalize(out_var_TEXCOORD7);
    highp vec3 _443 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _447 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _448 = length(_447);
    highp vec3 _455 = normalize(_447);
    highp mat3 _464 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _465 = _455 * _464;
    bvec2 _475 = bvec2(_387 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _476 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _489 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _490 = sin(_489);
    highp float _491 = cos(_489);
    highp vec2 _492 = (vec2(_475.x ? _476.x : out_var_TEXCOORD0.xy.x, _475.y ? _476.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _493 = _492.x;
    highp float _494 = _492.y;
    highp vec2 _505 = (vec2(_493 * _491 + (-(_494 * _490)), _493 * _490 + (_494 * _491)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _509 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _505);
    highp vec3 _516 = pow(abs(_509.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _517 = _516.z;
    highp float _518 = _516.y;
    bvec4 _520 = bvec4(_517 > _518);
    highp vec4 _521 = vec4(_517, _518, -1.0, 0.666666686534881591796875);
    highp vec4 _522 = vec4(_518, _517, 0.0, -0.3333333432674407958984375);
    highp vec4 _523 = vec4(_520.x ? _521.x : _522.x, _520.y ? _521.y : _522.y, _520.z ? _521.z : _522.z, _520.w ? _521.w : _522.w);
    highp float _524 = _523.x;
    highp float _525 = _516.x;
    bvec4 _527 = bvec4(_524 > _525);
    highp vec4 _530 = vec4(_524, _523.yw, _525);
    highp vec4 _532 = vec4(_525, _523.yz, _524);
    highp vec4 _533 = vec4(_527.x ? _530.x : _532.x, _527.y ? _530.y : _532.y, _527.z ? _530.z : _532.z, _527.w ? _530.w : _532.w);
    highp float _538 = _533.x - (isnan(_533.y) ? _533.w : (isnan(_533.w) ? _533.y : min(_533.w, _533.y)));
    highp float _551 = clamp((_538 / (_533.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _554 = clamp(_533.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _568 = vec3((-_554) * _551 + _554) + (clamp(abs((fract(vec3(abs(_533.z + ((_533.w - _533.y) / (6.0 * _538 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_554 * _551));
    highp vec4 _572 = vec4(_568.x, _568.y, _568.z, _509.w) * _Globals._Color;
    highp vec3 _604;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _585 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _505 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _585.w = _585.w * _585.x;
        highp vec2 _596 = ((_585.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _597 = vec3(_596.x, _596.y, _335.z);
        highp vec2 _598 = _596.xy;
        _597.z = sqrt(1.0 - clamp(dot(_598, _598), 0.0, 1.0));
        _604 = _597;
    }
    else
    {
        _604 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _653;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _613 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _614 = vec2(_613.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _613.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _616 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _617 = vec2(_616.x ? out_var_TEXCOORD1.xy.x : _614.x, _616.y ? out_var_TEXCOORD1.xy.y : _614.y);
        bvec2 _619 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _629 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_619.x ? out_var_TEXCOORD1.zw.x : _617.x, _619.y ? out_var_TEXCOORD1.zw.y : _617.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _629.w = _629.w * _629.x;
        highp vec2 _641 = (((_629.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _653 = vec3(_604.xy + _641, _604.z * sqrt(1.0 - clamp(dot(_641, _641), 0.0, 1.0)));
    }
    else
    {
        _653 = _604;
    }
    highp vec3 _655 = normalize(_464 * _653);
    bvec3 _660 = bvec3(_387 < (_Globals._FlipNormal - 1.0));
    highp vec3 _661 = -_655;
    highp vec3 _662 = vec3(_660.x ? _661.x : _655.x, _660.y ? _661.y : _655.y, _660.z ? _661.z : _655.z);
    highp float _663 = dot(_662, _455);
    highp float _664 = clamp(_663, 0.0, 1.0);
    highp vec2 _666 = vec2(abs(_663));
    highp vec3 _667 = normalize(out_var_TEXCOORD4);
    highp vec2 _671 = ((_662 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _362, _355)).xy * 0.5) + vec2(0.5);
    bool _672 = out_var_TEXCOORD5.w > 0.0;
    bool _677 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _955;
    highp vec4 _956;
    if (_677)
    {
        bvec2 _683 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _684 = vec2(_683.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _683.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _686 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _687 = vec2(_686.x ? out_var_TEXCOORD1.xy.x : _684.x, _686.y ? out_var_TEXCOORD1.xy.y : _684.y);
        bvec2 _689 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _690 = vec2(_689.x ? out_var_TEXCOORD1.zw.x : _687.x, _689.y ? out_var_TEXCOORD1.zw.y : _687.y);
        bvec2 _692 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _693 = vec2(_692.x ? _671.x : _690.x, _692.y ? _671.y : _690.y);
        highp vec4 _732 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _733 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _741;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _740 = _693;
            _740.x = abs(_693.x - 0.5) + 0.5;
            _741 = _740;
        }
        else
        {
            _741 = _693;
        }
        highp vec2 _742 = _732.xy;
        highp vec2 _743 = _732.zw;
        highp vec2 _744 = _741 * _742 + _743;
        highp vec2 _753;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_693.x < 0.5))
        {
            highp vec2 _752 = _744;
            _752.x = 1.0 - _744.x;
            _753 = _752;
        }
        else
        {
            _753 = _744;
        }
        highp vec2 _760;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _672)
        {
            highp vec2 _759 = _753;
            _759.x = 1.0 - _753.x;
            _760 = _759;
        }
        else
        {
            _760 = _753;
        }
        highp vec2 _765;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _672)
        {
            highp vec2 _764 = _760;
            _764.x = -1.0;
            _765 = _764;
        }
        else
        {
            _765 = _760;
        }
        highp vec2 _771;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_672))
        {
            highp vec2 _770 = _765;
            _770.x = -1.0;
            _771 = _770;
        }
        else
        {
            _771 = _765;
        }
        highp float _774 = sin(_733);
        highp float _775 = cos(_733);
        highp vec2 _776 = ((_771 - _743) / _742) - vec2(0.5);
        highp float _777 = _776.x;
        highp float _778 = _776.y;
        highp vec2 _786 = (vec2(_777 * _775 + (-(_778 * _774)), _777 * _774 + (_778 * _775)) + vec2(0.5)) * _742 + _743;
        uint _790 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _794 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _790 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _790);
        highp float _795 = _786.x;
        highp float _796 = _786.y;
        uint _803 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _813 = ((mix(vec2(_795, 1.0 - _796), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_794 % _803), float(_794 / _803))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _813.y = 1.0 - _813.y;
        highp vec4 _818 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _813);
        highp vec4 _834;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _821 = _818.x;
            highp float _822 = _818.y;
            highp float _823 = _818.z;
            highp float _824 = isnan(_822) ? _821 : (isnan(_821) ? _822 : min(_821, _822));
            highp float _825 = isnan(_822) ? _821 : (isnan(_821) ? _822 : max(_821, _822));
            highp float _826 = isnan(_823) ? _825 : (isnan(_825) ? _823 : min(_825, _823));
            highp float _827 = isnan(_826) ? _824 : (isnan(_824) ? _826 : max(_824, _826));
            _834 = vec4(1.0, 1.0, 1.0, clamp((_827 - 0.5) / clamp(fwidth(_827), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _834 = _818;
        }
        highp vec4 _857;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _838 = clamp(_664 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _841 = 0.5 - abs(_795 - 0.5);
            highp float _848 = 0.5 - abs(_796 - 0.5);
            highp vec4 _856 = _834;
            _856.w = _834.w * (clamp(_841 / clamp(fwidth(_841), 9.9999997473787516355514526367188e-05, _838), 0.0, 1.0) * clamp(_848 / clamp(fwidth(_848), 9.9999997473787516355514526367188e-05, _838), 0.0, 1.0));
            _857 = _856;
        }
        else
        {
            _857 = _834;
        }
        highp vec4 _858 = _Globals._Color2nd * _857;
        highp float _859 = _858.w;
        _858.w = mix(_859, _859 * clamp((_448 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _885;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_387 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_387 < 0.0)))
        {
            highp vec4 _884 = _858;
            _884.w = 0.0;
            _885 = _884;
        }
        else
        {
            _885 = _858;
        }
        highp vec4 _924;
        highp vec4 _925;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _896;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _895 = _572;
                _895.w = _885.w;
                _896 = _895;
            }
            else
            {
                _896 = _572;
            }
            highp vec4 _904;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _903 = _896;
                _903.w = _896.w * _885.w;
                _904 = _903;
            }
            else
            {
                _904 = _896;
            }
            highp vec4 _913;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _912 = _904;
                _912.w = clamp(_904.w + _885.w, 0.0, 1.0);
                _913 = _912;
            }
            else
            {
                _913 = _904;
            }
            highp vec4 _922;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _921 = _913;
                _921.w = clamp(_913.w - _885.w, 0.0, 1.0);
                _922 = _921;
            }
            else
            {
                _922 = _913;
            }
            highp vec4 _923 = _885;
            _923.w = 1.0;
            _924 = _923;
            _925 = _922;
        }
        else
        {
            _924 = _885;
            _925 = _572;
        }
        highp vec3 _935 = _925.xyz + _924.xyz;
        highp vec3 _936 = _925.xyz * _924.xyz;
        bvec3 _938 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _939 = vec3(_938.x ? _924.xyz.x : _329.x, _938.y ? _924.xyz.y : _329.y, _938.z ? _924.xyz.z : _329.z);
        bvec3 _941 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _949;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _947 = (-_925.xyz) * _924.xyz + _935;
            bvec3 _2703 = isnan(_947);
            bvec3 _2704 = isnan(_925.xyz);
            highp vec3 _2705 = max(_947, _925.xyz);
            highp vec3 _2706 = vec3(_2703.x ? _925.xyz.x : _2705.x, _2703.y ? _925.xyz.y : _2705.y, _2703.z ? _925.xyz.z : _2705.z);
            _949 = vec3(_2704.x ? _947.x : _2706.x, _2704.y ? _947.y : _2706.y, _2704.z ? _947.z : _2706.z);
        }
        else
        {
            _949 = vec3(_941.x ? _935.x : _939.x, _941.y ? _935.y : _939.y, _941.z ? _935.z : _939.z);
        }
        bvec3 _951 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _953 = mix(_925.xyz, vec3(_951.x ? _936.x : _949.x, _951.y ? _936.y : _949.y, _951.z ? _936.z : _949.z), vec3(_924.w * _Globals._Main2ndEnableLighting));
        _955 = _924;
        _956 = vec4(_953.x, _953.y, _953.z, _925.w);
    }
    else
    {
        _955 = _Globals._Color2nd;
        _956 = _572;
    }
    bool _961 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1239;
    highp vec4 _1240;
    if (_961)
    {
        bvec2 _967 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _968 = vec2(_967.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _967.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _970 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _971 = vec2(_970.x ? out_var_TEXCOORD1.xy.x : _968.x, _970.y ? out_var_TEXCOORD1.xy.y : _968.y);
        bvec2 _973 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _974 = vec2(_973.x ? out_var_TEXCOORD1.zw.x : _971.x, _973.y ? out_var_TEXCOORD1.zw.y : _971.y);
        bvec2 _976 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _977 = vec2(_976.x ? _671.x : _974.x, _976.y ? _671.y : _974.y);
        highp vec4 _1016 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1017 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1025;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1024 = _977;
            _1024.x = abs(_977.x - 0.5) + 0.5;
            _1025 = _1024;
        }
        else
        {
            _1025 = _977;
        }
        highp vec2 _1026 = _1016.xy;
        highp vec2 _1027 = _1016.zw;
        highp vec2 _1028 = _1025 * _1026 + _1027;
        highp vec2 _1037;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_977.x < 0.5))
        {
            highp vec2 _1036 = _1028;
            _1036.x = 1.0 - _1028.x;
            _1037 = _1036;
        }
        else
        {
            _1037 = _1028;
        }
        highp vec2 _1044;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _672)
        {
            highp vec2 _1043 = _1037;
            _1043.x = 1.0 - _1037.x;
            _1044 = _1043;
        }
        else
        {
            _1044 = _1037;
        }
        highp vec2 _1049;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _672)
        {
            highp vec2 _1048 = _1044;
            _1048.x = -1.0;
            _1049 = _1048;
        }
        else
        {
            _1049 = _1044;
        }
        highp vec2 _1055;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_672))
        {
            highp vec2 _1054 = _1049;
            _1054.x = -1.0;
            _1055 = _1054;
        }
        else
        {
            _1055 = _1049;
        }
        highp float _1058 = sin(_1017);
        highp float _1059 = cos(_1017);
        highp vec2 _1060 = ((_1055 - _1027) / _1026) - vec2(0.5);
        highp float _1061 = _1060.x;
        highp float _1062 = _1060.y;
        highp vec2 _1070 = (vec2(_1061 * _1059 + (-(_1062 * _1058)), _1061 * _1058 + (_1062 * _1059)) + vec2(0.5)) * _1026 + _1027;
        uint _1074 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1078 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1074 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1074);
        highp float _1079 = _1070.x;
        highp float _1080 = _1070.y;
        uint _1087 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1097 = ((mix(vec2(_1079, 1.0 - _1080), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1078 % _1087), float(_1078 / _1087))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1097.y = 1.0 - _1097.y;
        highp vec4 _1102 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1097);
        highp vec4 _1118;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1105 = _1102.x;
            highp float _1106 = _1102.y;
            highp float _1107 = _1102.z;
            highp float _1108 = isnan(_1106) ? _1105 : (isnan(_1105) ? _1106 : min(_1105, _1106));
            highp float _1109 = isnan(_1106) ? _1105 : (isnan(_1105) ? _1106 : max(_1105, _1106));
            highp float _1110 = isnan(_1107) ? _1109 : (isnan(_1109) ? _1107 : min(_1109, _1107));
            highp float _1111 = isnan(_1110) ? _1108 : (isnan(_1108) ? _1110 : max(_1108, _1110));
            _1118 = vec4(1.0, 1.0, 1.0, clamp((_1111 - 0.5) / clamp(fwidth(_1111), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1118 = _1102;
        }
        highp vec4 _1141;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1122 = clamp(_664 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1125 = 0.5 - abs(_1079 - 0.5);
            highp float _1132 = 0.5 - abs(_1080 - 0.5);
            highp vec4 _1140 = _1118;
            _1140.w = _1118.w * (clamp(_1125 / clamp(fwidth(_1125), 9.9999997473787516355514526367188e-05, _1122), 0.0, 1.0) * clamp(_1132 / clamp(fwidth(_1132), 9.9999997473787516355514526367188e-05, _1122), 0.0, 1.0));
            _1141 = _1140;
        }
        else
        {
            _1141 = _1118;
        }
        highp vec4 _1142 = _Globals._Color3rd * _1141;
        highp float _1143 = _1142.w;
        _1142.w = mix(_1143, _1143 * clamp((_448 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1169;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_387 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_387 < 0.0)))
        {
            highp vec4 _1168 = _1142;
            _1168.w = 0.0;
            _1169 = _1168;
        }
        else
        {
            _1169 = _1142;
        }
        highp vec4 _1208;
        highp vec4 _1209;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1180;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1179 = _956;
                _1179.w = _1169.w;
                _1180 = _1179;
            }
            else
            {
                _1180 = _956;
            }
            highp vec4 _1188;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1187 = _1180;
                _1187.w = _1180.w * _1169.w;
                _1188 = _1187;
            }
            else
            {
                _1188 = _1180;
            }
            highp vec4 _1197;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1196 = _1188;
                _1196.w = clamp(_1188.w + _1169.w, 0.0, 1.0);
                _1197 = _1196;
            }
            else
            {
                _1197 = _1188;
            }
            highp vec4 _1206;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1205 = _1197;
                _1205.w = clamp(_1197.w - _1169.w, 0.0, 1.0);
                _1206 = _1205;
            }
            else
            {
                _1206 = _1197;
            }
            highp vec4 _1207 = _1169;
            _1207.w = 1.0;
            _1208 = _1207;
            _1209 = _1206;
        }
        else
        {
            _1208 = _1169;
            _1209 = _956;
        }
        highp vec3 _1219 = _1209.xyz + _1208.xyz;
        highp vec3 _1220 = _1209.xyz * _1208.xyz;
        bvec3 _1222 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1223 = vec3(_1222.x ? _1208.xyz.x : _329.x, _1222.y ? _1208.xyz.y : _329.y, _1222.z ? _1208.xyz.z : _329.z);
        bvec3 _1225 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1233;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1231 = (-_1209.xyz) * _1208.xyz + _1219;
            bvec3 _2728 = isnan(_1231);
            bvec3 _2729 = isnan(_1209.xyz);
            highp vec3 _2730 = max(_1231, _1209.xyz);
            highp vec3 _2731 = vec3(_2728.x ? _1209.xyz.x : _2730.x, _2728.y ? _1209.xyz.y : _2730.y, _2728.z ? _1209.xyz.z : _2730.z);
            _1233 = vec3(_2729.x ? _1231.x : _2731.x, _2729.y ? _1231.y : _2731.y, _2729.z ? _1231.z : _2731.z);
        }
        else
        {
            _1233 = vec3(_1225.x ? _1219.x : _1223.x, _1225.y ? _1219.y : _1223.y, _1225.z ? _1219.z : _1223.z);
        }
        bvec3 _1235 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1237 = mix(_1209.xyz, vec3(_1235.x ? _1220.x : _1233.x, _1235.y ? _1220.y : _1233.y, _1235.z ? _1220.z : _1233.z), vec3(_1208.w * _Globals._Main3rdEnableLighting));
        _1239 = _1208;
        _1240 = vec4(_1237.x, _1237.y, _1237.z, _1209.w);
    }
    else
    {
        _1239 = _Globals._Color3rd;
        _1240 = _956;
    }
    highp vec4 _1289;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1253 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _505 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1260 = clamp(_1253.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1265;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1264 = _1240;
            _1264.w = _1260;
            _1265 = _1264;
        }
        else
        {
            _1265 = _1240;
        }
        highp vec4 _1272;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1271 = _1265;
            _1271.w = _1265.w * _1260;
            _1272 = _1271;
        }
        else
        {
            _1272 = _1265;
        }
        highp vec4 _1280;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1279 = _1272;
            _1279.w = clamp(_1272.w + _1260, 0.0, 1.0);
            _1280 = _1279;
        }
        else
        {
            _1280 = _1272;
        }
        highp vec4 _1288;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1287 = _1280;
            _1287.w = clamp(_1280.w - _1260, 0.0, 1.0);
            _1288 = _1287;
        }
        else
        {
            _1288 = _1280;
        }
        _1289 = _1288;
    }
    else
    {
        _1289 = _1240;
    }
    highp vec4 _1410;
    highp float _1411;
    if ((_378 & 1) != 0)
    {
        highp vec4 _1293 = _1289;
        _1293.w = 1.0;
        highp vec2 _1309 = roundEven(_Globals._DissolveParams.xy);
        highp float _1310 = _1309.x;
        highp vec4 _1399;
        highp float _1400;
        if (_1310 != 0.0)
        {
            bool _1314 = _1310 == 1.0;
            highp float _1324;
            if (_1314 && true)
            {
                _1324 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1324 = 1.0;
            }
            highp vec4 _1333 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1335 = _1333.x - 0.5;
            highp float _1348;
            highp float _1349;
            if (_1314)
            {
                highp float _1338 = _1335 * _Globals._DissolveNoiseStrength + _1324;
                _1348 = 1.0 - clamp(abs(_1338 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1349 = float(_1338 > _Globals._DissolveParams.z);
            }
            else
            {
                _1348 = 0.0;
                _1349 = _1324;
            }
            highp float _1372;
            highp float _1373;
            if (_1310 == 2.0)
            {
                highp float _1361 = (_1309.y == 1.0) ? (_1335 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1335 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1372 = 1.0 - clamp(abs(_1361 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1373 = _1349 * float(_1361 > _Globals._DissolveParams.z);
            }
            else
            {
                _1372 = _1348;
                _1373 = _1349;
            }
            highp float _1396;
            highp float _1397;
            if (_1310 == 3.0)
            {
                highp float _1385 = (_1309.y == 1.0) ? (_1335 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1335 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1396 = 1.0 - clamp(abs(_1385 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1397 = _1373 * float(_1385 > _Globals._DissolveParams.z);
            }
            else
            {
                _1396 = _1372;
                _1397 = _1373;
            }
            highp vec4 _1398 = _1293;
            _1398.w = _1397;
            _1399 = _1398;
            _1400 = _1396;
        }
        else
        {
            _1399 = _1293;
            _1400 = 0.0;
        }
        highp vec4 _1406;
        if ((_378 & 2) != 0)
        {
            highp vec4 _1405 = _1399;
            _1405.w = 1.0 - _1399.w;
            _1406 = _1405;
        }
        else
        {
            _1406 = _1399;
        }
        highp vec4 _1409 = _1406;
        _1409.w = _1406.w * _1289.w;
        _1410 = _1409;
        _1411 = _1400;
    }
    else
    {
        _1410 = _1289;
        _1411 = 0.0;
    }
    highp float _1416 = fwidth(_1410.w);
    highp float _1420 = clamp(((_1410.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1416 : (isnan(_1416) ? 9.9999997473787516355514526367188e-05 : max(_1416, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1421 = _1410;
    _1421.w = _1420;
    if (_1420 == 0.0)
    {
        discard;
    }
    highp vec4 _1598;
    highp float _1599;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1448 = clamp(dot(_439, mix(_667, _662, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1451 = clamp(dot(_439, mix(_667, _662, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1454 = clamp(dot(_439, mix(_667, _662, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1458 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1461 = clamp(_438 + distance(_439, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1464 = mix(1.0, _1461, _Globals._ShadowReceive);
        highp float _1465 = _1448 * _1464;
        highp float _1468 = mix(1.0, _1461, _Globals._Shadow2ndReceive);
        highp float _1472 = mix(1.0, _1461, _Globals._Shadow3rdReceive);
        highp float _1483 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1484 = clamp(_1483, 0.0, 1.0);
        highp float _1486 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1499 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1513 = clamp(_1483 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1526 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1541 = (_387 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1542 = clamp((_1448 * _1464 + (-_1484)) / clamp(fwidth(_1465) * _1458 + (_1486 - _1484), 0.0, 1.0), 0.0, 1.0) * _1541;
        highp vec3 _1574 = mix(mix(_1421.xyz * _Globals._ShadowColor.xyz, (_1421.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1451 * _1468 + (-_1499)) / clamp(fwidth(_1451 * _1468) * _1458 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1499), 0.0, 1.0), 0.0, 1.0) * _1541)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1421.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1454 * _1472 + (-_1526)) / clamp(fwidth(_1454 * _1472) * _1458 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1526), 0.0, 1.0), 0.0, 1.0) * _1541)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1580 = _1421.xyz * out_var_TEXCOORD6;
        highp vec3 _1586 = mix(mix(_1574, _1574 * _1421.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1421.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2738 = isnan(_1586);
        bvec3 _2739 = isnan(_1580);
        highp vec3 _2740 = min(_1586, _1580);
        highp vec3 _2741 = vec3(_2738.x ? _1580.x : _2740.x, _2738.y ? _1580.y : _2740.y, _2738.z ? _1580.z : _2740.z);
        highp vec3 _1594 = mix(mix(vec3(_2739.x ? _1586.x : _2741.x, _2739.y ? _1586.y : _2741.y, _2739.z ? _1586.z : _2741.z), _1580, _Globals._ShadowBorderColor.xyz * (clamp((_1448 * _1464 + (-_1513)) / clamp(fwidth(_1465) * _1458 + (_1486 - _1513), 0.0, 1.0), 0.0, 1.0) * _1541)), _1580, vec3(mix(1.0, _1542, _Globals._ShadowStrength)));
        _1598 = vec4(_1594.x, _1594.y, _1594.z, _1421.w);
        _1599 = _1542;
    }
    else
    {
        highp vec3 _1596 = _1421.xyz * out_var_TEXCOORD6;
        _1598 = vec4(_1596.x, _1596.y, _1596.z, _1421.w);
        _1599 = 1.0;
    }
    highp vec3 _1602 = vec3(_Globals._LightMaxLimit);
    bvec3 _2743 = isnan(out_var_TEXCOORD6);
    bvec3 _2744 = isnan(_1602);
    highp vec3 _2745 = min(out_var_TEXCOORD6, _1602);
    highp vec3 _2746 = vec3(_2743.x ? _1602.x : _2745.x, _2743.y ? _1602.y : _2745.y, _2743.z ? _1602.z : _2745.z);
    highp vec3 _1603 = vec3(_2744.x ? out_var_TEXCOORD6.x : _2746.x, _2744.y ? out_var_TEXCOORD6.y : _2746.y, _2744.z ? out_var_TEXCOORD6.z : _2746.z);
    highp float _1604 = clamp(_1599, 0.0, 1.0);
    highp vec3 _1606 = _1421.xyz * _Globals._LightMaxLimit;
    bvec3 _2748 = isnan(_1598.xyz);
    bvec3 _2749 = isnan(_1606);
    highp vec3 _2750 = min(_1598.xyz, _1606);
    highp vec3 _2751 = vec3(_2748.x ? _1606.x : _2750.x, _2748.y ? _1606.y : _2750.y, _2748.z ? _1606.z : _2750.z);
    highp vec3 _1607 = vec3(_2749.x ? _1598.xyz.x : _2751.x, _2749.y ? _1598.xyz.y : _2751.y, _2749.z ? _1598.xyz.z : _2751.z);
    highp vec4 _1641;
    if (_677)
    {
        highp vec3 _1611 = _1607.xyz;
        highp vec3 _1621 = _1611 + _955.xyz;
        highp vec3 _1622 = _1611 * _955.xyz;
        bvec3 _1624 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1625 = vec3(_1624.x ? _955.xyz.x : _329.x, _1624.y ? _955.xyz.y : _329.y, _1624.z ? _955.xyz.z : _329.z);
        bvec3 _1627 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1635;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1633 = (-_1611) * _955.xyz + _1621;
            bvec3 _2753 = isnan(_1633);
            bvec3 _2754 = isnan(_1611);
            highp vec3 _2755 = max(_1633, _1611);
            highp vec3 _2756 = vec3(_2753.x ? _1611.x : _2755.x, _2753.y ? _1611.y : _2755.y, _2753.z ? _1611.z : _2755.z);
            _1635 = vec3(_2754.x ? _1633.x : _2756.x, _2754.y ? _1633.y : _2756.y, _2754.z ? _1633.z : _2756.z);
        }
        else
        {
            _1635 = vec3(_1627.x ? _1621.x : _1625.x, _1627.y ? _1621.y : _1625.y, _1627.z ? _1621.z : _1625.z);
        }
        bvec3 _1637 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1639 = mix(_1611, vec3(_1637.x ? _1622.x : _1635.x, _1637.y ? _1622.y : _1635.y, _1637.z ? _1622.z : _1635.z), vec3((-_955.w) * _Globals._Main2ndEnableLighting + _955.w));
        _1641 = vec4(_1639.x, _1639.y, _1639.z, _1598.w);
    }
    else
    {
        _1641 = vec4(_1607.x, _1607.y, _1607.z, _1598.w);
    }
    highp vec4 _1674;
    if (_961)
    {
        highp vec3 _1654 = _1641.xyz + _1239.xyz;
        highp vec3 _1655 = _1641.xyz * _1239.xyz;
        bvec3 _1657 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1658 = vec3(_1657.x ? _1239.xyz.x : _329.x, _1657.y ? _1239.xyz.y : _329.y, _1657.z ? _1239.xyz.z : _329.z);
        bvec3 _1660 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1668;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1666 = (-_1641.xyz) * _1239.xyz + _1654;
            bvec3 _2758 = isnan(_1666);
            bvec3 _2759 = isnan(_1641.xyz);
            highp vec3 _2760 = max(_1666, _1641.xyz);
            highp vec3 _2761 = vec3(_2758.x ? _1641.xyz.x : _2760.x, _2758.y ? _1641.xyz.y : _2760.y, _2758.z ? _1641.xyz.z : _2760.z);
            _1668 = vec3(_2759.x ? _1666.x : _2761.x, _2759.y ? _1666.y : _2761.y, _2759.z ? _1666.z : _2761.z);
        }
        else
        {
            _1668 = vec3(_1660.x ? _1654.x : _1658.x, _1660.y ? _1654.y : _1658.y, _1660.z ? _1654.z : _1658.z);
        }
        bvec3 _1670 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1672 = mix(_1641.xyz, vec3(_1670.x ? _1655.x : _1668.x, _1670.y ? _1655.y : _1668.y, _1670.z ? _1655.z : _1668.z), vec3((-_1239.w) * _Globals._Main3rdEnableLighting + _1239.w));
        _1674 = vec4(_1672.x, _1672.y, _1672.z, _1641.w);
    }
    else
    {
        _1674 = _1641;
    }
    highp vec4 _1720;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1690 = pow(clamp(1.0 - abs(dot(mix(_667, _662, vec3(_Globals._RimShadeNormalStrength)), _455)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1699 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1718 = mix(_1674.xyz, _1674.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1690 - _1699) / clamp(fwidth(_1690) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1699), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1720 = vec4(_1718.x, _1718.y, _1718.z, _1674.w);
    }
    else
    {
        _1720 = _1674;
    }
    highp vec4 _1793;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1744 = dot(normalize(((-_455) * _Globals._BacklightViewStrength) + _439), mix(_667, _662, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1754;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1754 = _1744 * clamp(_438 + distance(_439, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1754 = _1744;
        }
        highp float _1763 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1791 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1421.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_387 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_455, _439) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1754 - _1763) / clamp(fwidth(_1754) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1763), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1603 + _1720.xyz;
        _1793 = vec4(_1791.x, _1791.y, _1791.z, _1720.w);
    }
    else
    {
        _1793 = _1720;
    }
    highp vec4 _2036;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1803 = dFdx(_662);
        highp vec3 _1804 = abs(_1803);
        highp vec3 _1805 = dFdy(_662);
        highp vec3 _1806 = abs(_1805);
        highp float _1807 = dot(_1804, _1804);
        highp float _1808 = dot(_1806, _1806);
        highp float _1809 = isnan(_1808) ? _1807 : (isnan(_1807) ? _1808 : max(_1807, _1808));
        highp float _1812 = (_1809 / (_1809 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1815 = clamp(1.0 - (isnan(_1812) ? 0.0 : (isnan(0.0) ? _1812 : max(0.0, _1812))), 0.0, 1.0);
        highp float _1816 = isnan(_1815) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1815 : min(_Globals._Smoothness, _1815));
        highp float _1817 = 1.0 - _1816;
        highp float _1818 = _1817 * _1817;
        highp vec3 _1823 = _1793.xyz - (_1793.xyz * _Globals._Metallic);
        highp vec3 _1829 = mix(vec3(_Globals._Reflectance), _1421.xyz, vec3(_Globals._Metallic));
        highp vec4 _1932;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1904;
            do
            {
                highp vec3 _1842 = mix(_667, _662, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1844 = normalize(_455 + _439);
                highp float _1846 = clamp(dot(_1842, _1844), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1855 = pow(_1846, 1.0 / _1818);
                    highp float _1862 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1904 = vec3(clamp((_1855 - _1862) / clamp(fwidth(_1855) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1862), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1874 = clamp(dot(_1842, _455), 0.0, 1.0);
                highp float _1876 = clamp(dot(_1842, _439), 0.0, 1.0);
                highp float _1879 = isnan(0.00200000009499490261077880859375) ? _1818 : (isnan(_1818) ? 0.00200000009499490261077880859375 : max(_1818, 0.00200000009499490261077880859375));
                highp float _1880 = 1.0 - _1879;
                highp float _1884 = _1879 * _1879;
                highp float _1887 = (_1846 * _1884 + (-_1846)) * _1846 + 1.0;
                highp float _1895 = 1.0 - clamp(dot(_439, _1844), 0.0, 1.0);
                _1904 = (_1829 + ((((((vec3(1.0) - _1829) * _1895) * _1895) * _1895) * _1895) * _1895)) * (((0.5 / ((_1876 * (_1874 * _1880 + _1879) + (_1874 * (_1876 * _1880 + _1879))) + 9.9999997473787516355514526367188e-06)) * (_1884 / (_1887 * _1887 + 1.0000000116860974230803549289703e-07))) * _1876);
                break;
            } while(false);
            highp vec3 _1905 = _1823.xyz;
            highp vec3 _1907 = _Globals._ReflectionColor.xyz * _1603;
            highp vec3 _1912 = _Globals._ReflectionColor.xyz * _1603 + _1905;
            highp vec3 _1913 = _1905 * _1907;
            bvec3 _1915 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1916 = vec3(_1915.x ? _1907.x : _329.x, _1915.y ? _1907.y : _329.y, _1915.z ? _1907.z : _329.z);
            bvec3 _1918 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1926;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1924 = (-_1905) * _1907 + _1912;
                bvec3 _2783 = isnan(_1924);
                bvec3 _2784 = isnan(_1905);
                highp vec3 _2785 = max(_1924, _1905);
                highp vec3 _2786 = vec3(_2783.x ? _1905.x : _2785.x, _2783.y ? _1905.y : _2785.y, _2783.z ? _1905.z : _2785.z);
                _1926 = vec3(_2784.x ? _1924.x : _2786.x, _2784.y ? _1924.y : _2786.y, _2784.z ? _1924.z : _2786.z);
            }
            else
            {
                _1926 = vec3(_1918.x ? _1912.x : _1916.x, _1918.y ? _1912.y : _1916.y, _1918.z ? _1912.z : _1916.z);
            }
            bvec3 _1928 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1930 = mix(_1905, vec3(_1928.x ? _1913.x : _1926.x, _1928.y ? _1913.y : _1926.y, _1928.z ? _1913.z : _1926.z), _1904 * _Globals._ReflectionColor.w);
            _1932 = vec4(_1930.x, _1930.y, _1930.z, _1793.w);
        }
        else
        {
            _1932 = vec4(_1823.x, _1823.y, _1823.z, _1793.w);
        }
        highp vec4 _2035;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1954 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1961 = reflect(-_455, mix(_667, _662, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1964 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1961, _1817 * ((-4.19999980926513671875) * _1817 + 10.19999980926513671875));
            highp vec3 _1984 = ((_1964.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1964.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1603, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1990 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1961, _1817 * 8.0).xyz * 1.0;
            highp float _2001 = 1.0 - _664;
            highp vec3 _2015 = _1932.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2016 = _1932.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2018 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2019 = vec3(_2018.x ? _Globals._ReflectionColor.xyz.x : _329.x, _2018.y ? _Globals._ReflectionColor.xyz.y : _329.y, _2018.z ? _Globals._ReflectionColor.xyz.z : _329.z);
            bvec3 _2021 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2029;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2027 = (-_1932.xyz) * _Globals._ReflectionColor.xyz + _2015;
                bvec3 _2788 = isnan(_2027);
                bvec3 _2789 = isnan(_1932.xyz);
                highp vec3 _2790 = max(_2027, _1932.xyz);
                highp vec3 _2791 = vec3(_2788.x ? _1932.xyz.x : _2790.x, _2788.y ? _1932.xyz.y : _2790.y, _2788.z ? _1932.xyz.z : _2790.z);
                _2029 = vec3(_2789.x ? _2027.x : _2791.x, _2789.y ? _2027.y : _2791.y, _2789.z ? _2027.z : _2791.z);
            }
            else
            {
                _2029 = vec3(_2021.x ? _2015.x : _2019.x, _2021.y ? _2015.y : _2019.y, _2021.z ? _2015.z : _2019.z);
            }
            bvec3 _2031 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2033 = mix(_1932.xyz, vec3(_2031.x ? _2016.x : _2029.x, _2031.y ? _2016.y : _2029.y, _2031.z ? _2016.z : _2029.z), ((vec3(_1954.x ? _1984.x : _1990.x, _1954.y ? _1984.y : _1990.y, _1954.z ? _1984.z : _1990.z) * (1.0 / (_1818 * _1818 + 1.0))) * mix(_1829, vec3(clamp(_1816 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2001 * _2001) * _2001) * _2001) * _2001))) * _Globals._ReflectionColor.w);
            _2035 = vec4(_2033.x, _2033.y, _2033.z, _1932.w);
        }
        else
        {
            _2035 = _1932;
        }
        _2036 = _2035;
    }
    else
    {
        _2036 = _1793;
    }
    highp vec4 _2142;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2062 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2063 = vec3(_2062.x ? _455.x : _355.x, _2062.y ? _455.y : _355.y, _2062.z ? _455.z : _355.z);
        bvec3 _2064 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2065 = vec3(_2064.x ? vec3(0.0, 1.0, 0.0).x : _362.x, _2064.y ? vec3(0.0, 1.0, 0.0).y : _362.y, _2064.z ? vec3(0.0, 1.0, 0.0).z : _362.z);
        highp vec3 _2069 = normalize(_2065 - (_2063 * dot(_2063, _2065)));
        highp vec4 _2091 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_667, _662, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2063, _2069), _2069, _2063)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2092 = _2091.xyz;
        highp float _2098 = _2091.w;
        highp vec3 _2108 = mix(_2092, _2092 * _1603, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2115 = mix(_2108, _2108 * _1421.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2122 = _2036.xyz + _2115;
        highp vec3 _2123 = _2036.xyz * _2115;
        bvec3 _2125 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2126 = vec3(_2125.x ? _2115.x : _329.x, _2125.y ? _2115.y : _329.y, _2125.z ? _2115.z : _329.z);
        bvec3 _2128 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2136;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2134 = (-_2036.xyz) * _2115 + _2122;
            bvec3 _2793 = isnan(_2134);
            bvec3 _2794 = isnan(_2036.xyz);
            highp vec3 _2795 = max(_2134, _2036.xyz);
            highp vec3 _2796 = vec3(_2793.x ? _2036.xyz.x : _2795.x, _2793.y ? _2036.xyz.y : _2795.y, _2793.z ? _2036.xyz.z : _2795.z);
            _2136 = vec3(_2794.x ? _2134.x : _2796.x, _2794.y ? _2134.y : _2796.y, _2794.z ? _2134.z : _2796.z);
        }
        else
        {
            _2136 = vec3(_2128.x ? _2122.x : _2126.x, _2128.y ? _2122.y : _2126.y, _2128.z ? _2122.z : _2126.z);
        }
        bvec3 _2138 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2140 = mix(_2036.xyz, vec3(_2138.x ? _2123.x : _2136.x, _2138.y ? _2123.y : _2136.y, _2138.z ? _2123.z : _2136.z), vec3(1.0) * (_Globals._MatCapBlend * ((_387 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2098, _2098 * _1604, _Globals._MatCapShadowMask))));
        _2142 = vec4(_2140.x, _2140.y, _2140.z, _2036.w);
    }
    else
    {
        _2142 = _2036;
    }
    highp vec4 _2247;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2167 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2168 = vec3(_2167.x ? _455.x : _355.x, _2167.y ? _455.y : _355.y, _2167.z ? _455.z : _355.z);
        bvec3 _2169 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2170 = vec3(_2169.x ? vec3(0.0, 1.0, 0.0).x : _362.x, _2169.y ? vec3(0.0, 1.0, 0.0).y : _362.y, _2169.z ? vec3(0.0, 1.0, 0.0).z : _362.z);
        highp vec3 _2174 = normalize(_2170 - (_2168 * dot(_2168, _2170)));
        highp vec4 _2196 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_667, _662, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2168, _2174), _2174, _2168)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2197 = _2196.xyz;
        highp float _2203 = _2196.w;
        highp vec3 _2213 = mix(_2197, _2197 * _1603, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2220 = mix(_2213, _2213 * _1421.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2227 = _2142.xyz + _2220;
        highp vec3 _2228 = _2142.xyz * _2220;
        bvec3 _2230 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2231 = vec3(_2230.x ? _2220.x : _329.x, _2230.y ? _2220.y : _329.y, _2230.z ? _2220.z : _329.z);
        bvec3 _2233 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2241;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2239 = (-_2142.xyz) * _2220 + _2227;
            bvec3 _2798 = isnan(_2239);
            bvec3 _2799 = isnan(_2142.xyz);
            highp vec3 _2800 = max(_2239, _2142.xyz);
            highp vec3 _2801 = vec3(_2798.x ? _2142.xyz.x : _2800.x, _2798.y ? _2142.xyz.y : _2800.y, _2798.z ? _2142.xyz.z : _2800.z);
            _2241 = vec3(_2799.x ? _2239.x : _2801.x, _2799.y ? _2239.y : _2801.y, _2799.z ? _2239.z : _2801.z);
        }
        else
        {
            _2241 = vec3(_2233.x ? _2227.x : _2231.x, _2233.y ? _2227.y : _2231.y, _2233.z ? _2227.z : _2231.z);
        }
        bvec3 _2243 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2245 = mix(_2142.xyz, vec3(_2243.x ? _2228.x : _2241.x, _2243.y ? _2228.y : _2241.y, _2243.z ? _2228.z : _2241.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_387 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2203, _2203 * _1604, _Globals._MatCap2ndShadowMask))));
        _2247 = vec4(_2245.x, _2245.y, _2245.z, _2142.w);
    }
    else
    {
        _2247 = _2142;
    }
    highp vec4 _2393;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2266 = mix(_667, _662, vec3(_Globals._RimNormalStrength));
        highp float _2270 = dot(_439, _2266) * 0.5 + 0.5;
        highp float _2293 = (_387 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2266, _455)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2297 = mix(_2293, _2293 * clamp((_2270 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2298 = _2293 * clamp(((1.0 - _2270) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2308 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2317 = clamp((_2297 - _2308) / clamp(fwidth(_2297) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2308), 0.0, 1.0), 0.0, 1.0);
        highp float _2324 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2334 = clamp((_2298 * _Globals._RimDirStrength + (-_2324)) / clamp(fwidth(_2298 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2324), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2346 = vec3(1.0 - _Globals._RimEnableLighting) + (_1603 * _Globals._RimEnableLighting);
        highp vec3 _2348 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1421.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2349 = _2348 * _2346;
        highp vec3 _2355 = _2348 * _2346 + _2247.xyz;
        highp vec3 _2356 = _2247.xyz * _2349;
        bvec3 _2358 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2359 = vec3(_2358.x ? _2349.x : _329.x, _2358.y ? _2349.y : _329.y, _2358.z ? _2349.z : _329.z);
        bvec3 _2361 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2363 = _Globals._RimBlendMode == 2u;
        highp vec3 _2369;
        if (_2363)
        {
            highp vec3 _2367 = (-_2247.xyz) * _2349 + _2355;
            bvec3 _2803 = isnan(_2367);
            bvec3 _2804 = isnan(_2247.xyz);
            highp vec3 _2805 = max(_2367, _2247.xyz);
            highp vec3 _2806 = vec3(_2803.x ? _2247.xyz.x : _2805.x, _2803.y ? _2247.xyz.y : _2805.y, _2803.z ? _2247.xyz.z : _2805.z);
            _2369 = vec3(_2804.x ? _2367.x : _2806.x, _2804.y ? _2367.y : _2806.y, _2804.z ? _2367.z : _2806.z);
        }
        else
        {
            _2369 = vec3(_2361.x ? _2355.x : _2359.x, _2361.y ? _2355.y : _2359.y, _2361.z ? _2355.z : _2359.z);
        }
        bvec3 _2371 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2374 = mix(_2247.xyz, vec3(_2371.x ? _2356.x : _2369.x, _2371.y ? _2356.y : _2369.y, _2371.z ? _2356.z : _2369.z), vec3(mix(_2317, _2317 * _1604, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2376 = _Globals._RimIndirColor.xyz * _2346;
        highp vec3 _2380 = _Globals._RimIndirColor.xyz * _2346 + _2374;
        highp vec3 _2381 = _2374 * _2376;
        highp vec3 _2382 = vec3(_2358.x ? _2376.x : _329.x, _2358.y ? _2376.y : _329.y, _2358.z ? _2376.z : _329.z);
        highp vec3 _2389;
        if (_2363)
        {
            highp vec3 _2387 = (-_2374) * _2376 + _2380;
            bvec3 _2808 = isnan(_2387);
            bvec3 _2809 = isnan(_2374);
            highp vec3 _2810 = max(_2387, _2374);
            highp vec3 _2811 = vec3(_2808.x ? _2374.x : _2810.x, _2808.y ? _2374.y : _2810.y, _2808.z ? _2374.z : _2810.z);
            _2389 = vec3(_2809.x ? _2387.x : _2811.x, _2809.y ? _2387.y : _2811.y, _2809.z ? _2387.z : _2811.z);
        }
        else
        {
            _2389 = vec3(_2361.x ? _2380.x : _2382.x, _2361.y ? _2380.y : _2382.y, _2361.z ? _2380.z : _2382.z);
        }
        highp vec3 _2391 = mix(_2374, vec3(_2371.x ? _2381.x : _2389.x, _2371.y ? _2381.y : _2389.y, _2371.z ? _2381.z : _2389.z), vec3(mix(_2334, _2334 * _1604, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2393 = vec4(_2391.x, _2391.y, _2391.z, _2247.w);
    }
    else
    {
        _2393 = _2247;
    }
    highp vec4 _2507;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2404 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2405 = vec2(_2404.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2404.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2407 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2408 = vec2(_2407.x ? out_var_TEXCOORD1.xy.x : _2405.x, _2407.y ? out_var_TEXCOORD1.xy.y : _2405.y);
        bvec2 _2410 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2411 = vec2(_2410.x ? out_var_TEXCOORD1.zw.x : _2408.x, _2410.y ? out_var_TEXCOORD1.zw.y : _2408.y);
        bvec2 _2413 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2430 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2431 = sin(_2430);
        highp float _2432 = cos(_2430);
        highp vec2 _2433 = ((vec2(_2413.x ? _666.x : _2411.x, _2413.y ? _666.y : _2411.y) + ((_465.xy / vec2(_465.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2434 = _2433.x;
        highp float _2435 = _2433.y;
        highp vec4 _2448 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2434 * _2432 + (-(_2435 * _2431)), _2434 * _2431 + (_2435 * _2432)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2449 = _Globals._EmissionColor * _2448;
        highp vec3 _2450 = _2449.xyz;
        highp vec3 _2456 = mix(_2450, _2450 * _443, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2470 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2476;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2476 = roundEven(_2470);
        }
        else
        {
            _2476 = _2470;
        }
        highp vec3 _2483 = mix(_2456, _2456 * _1421.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2487 = _2393.xyz + _2483;
        highp vec3 _2488 = _2393.xyz * _2483;
        bvec3 _2490 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2491 = vec3(_2490.x ? _2483.x : _329.x, _2490.y ? _2483.y : _329.y, _2490.z ? _2483.z : _329.z);
        bvec3 _2493 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2501;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2499 = (-_2393.xyz) * _2483 + _2487;
            bvec3 _2813 = isnan(_2499);
            bvec3 _2814 = isnan(_2393.xyz);
            highp vec3 _2815 = max(_2499, _2393.xyz);
            highp vec3 _2816 = vec3(_2813.x ? _2393.xyz.x : _2815.x, _2813.y ? _2393.xyz.y : _2815.y, _2813.z ? _2393.xyz.z : _2815.z);
            _2501 = vec3(_2814.x ? _2499.x : _2816.x, _2814.y ? _2499.y : _2816.y, _2814.z ? _2499.z : _2816.z);
        }
        else
        {
            _2501 = vec3(_2493.x ? _2487.x : _2491.x, _2493.y ? _2487.y : _2491.y, _2493.z ? _2487.z : _2491.z);
        }
        bvec3 _2503 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2505 = mix(_2393.xyz, vec3(_2503.x ? _2488.x : _2501.x, _2503.y ? _2488.y : _2501.y, _2503.z ? _2488.z : _2501.z), vec3((_Globals._EmissionBlend * mix(1.0, _2476, _Globals._EmissionBlink.x)) * _2449.w));
        _2507 = vec4(_2505.x, _2505.y, _2505.z, _2393.w);
    }
    else
    {
        _2507 = _2393;
    }
    highp vec4 _2572;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2521 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _443, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2535 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2541;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2541 = roundEven(_2535);
        }
        else
        {
            _2541 = _2535;
        }
        highp vec3 _2548 = mix(_2521, _2521 * _1421.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2552 = _2507.xyz + _2548;
        highp vec3 _2553 = _2507.xyz * _2548;
        bvec3 _2555 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2556 = vec3(_2555.x ? _2548.x : _329.x, _2555.y ? _2548.y : _329.y, _2555.z ? _2548.z : _329.z);
        bvec3 _2558 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2566;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2564 = (-_2507.xyz) * _2548 + _2552;
            bvec3 _2818 = isnan(_2564);
            bvec3 _2819 = isnan(_2507.xyz);
            highp vec3 _2820 = max(_2564, _2507.xyz);
            highp vec3 _2821 = vec3(_2818.x ? _2507.xyz.x : _2820.x, _2818.y ? _2507.xyz.y : _2820.y, _2818.z ? _2507.xyz.z : _2820.z);
            _2566 = vec3(_2819.x ? _2564.x : _2821.x, _2819.y ? _2564.y : _2821.y, _2819.z ? _2564.z : _2821.z);
        }
        else
        {
            _2566 = vec3(_2558.x ? _2552.x : _2556.x, _2558.y ? _2552.y : _2556.y, _2558.z ? _2552.z : _2556.z);
        }
        bvec3 _2568 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2570 = mix(_2507.xyz, vec3(_2568.x ? _2553.x : _2566.x, _2568.y ? _2553.y : _2566.y, _2568.z ? _2553.z : _2566.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2541, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2572 = vec4(_2570.x, _2570.y, _2570.z, _2507.w);
    }
    else
    {
        _2572 = _2507;
    }
    bvec3 _2580 = bvec3(_387 < 0.0);
    highp vec3 _2581 = (_2572.xyz + (_Globals._DissolveColor.xyz * _1411)).xyz;
    highp vec3 _2589 = mix(_2581, _Globals._BackfaceColor.xyz * _1603, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2624 = vec3(_2580.x ? _2589.x : _2581.x, _2580.y ? _2589.y : _2581.y, _2580.z ? _2589.z : _2581.z).xyz;
    highp vec3 _2632 = mix(_2624, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2624, vec3(pow(clamp(1.0 - abs(dot(_667, _455)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_387 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _448) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2632.x, _2632.y, _2632.z, _2572.w), vec4(out_var_TEXCOORD9));
}
