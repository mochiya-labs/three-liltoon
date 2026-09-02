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
    highp vec3 _442 = _432 * _441;
    highp vec2 _447 = _442.xy / vec2(_442.z + 0.5);
    bvec2 _452 = bvec2(_364 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _453 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _466 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _467 = sin(_466);
    highp float _468 = cos(_466);
    highp vec2 _469 = (vec2(_452.x ? _453.x : out_var_TEXCOORD0.xy.x, _452.y ? _453.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _470 = _469.x;
    highp float _471 = _469.y;
    highp vec2 _482 = (vec2(_470 * _468 + (-(_471 * _467)), _470 * _467 + (_471 * _468)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _486 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _482);
    highp vec3 _493 = pow(abs(_486.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _494 = _493.z;
    highp float _495 = _493.y;
    bvec4 _497 = bvec4(_494 > _495);
    highp vec4 _498 = vec4(_494, _495, -1.0, 0.666666686534881591796875);
    highp vec4 _499 = vec4(_495, _494, 0.0, -0.3333333432674407958984375);
    highp vec4 _500 = vec4(_497.x ? _498.x : _499.x, _497.y ? _498.y : _499.y, _497.z ? _498.z : _499.z, _497.w ? _498.w : _499.w);
    highp float _501 = _500.x;
    highp float _502 = _493.x;
    bvec4 _504 = bvec4(_501 > _502);
    highp vec4 _507 = vec4(_501, _500.yw, _502);
    highp vec4 _509 = vec4(_502, _500.yz, _501);
    highp vec4 _510 = vec4(_504.x ? _507.x : _509.x, _504.y ? _507.y : _509.y, _504.z ? _507.z : _509.z, _504.w ? _507.w : _509.w);
    highp float _515 = _510.x - (isnan(_510.y) ? _510.w : (isnan(_510.w) ? _510.y : min(_510.w, _510.y)));
    highp float _528 = clamp((_515 / (_510.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _531 = clamp(_510.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _545 = vec3((-_531) * _528 + _531) + (clamp(abs((fract(vec3(abs(_510.z + ((_510.w - _510.y) / (6.0 * _515 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_531 * _528));
    highp vec4 _549 = vec4(_545.x, _545.y, _545.z, _486.w) * _Globals._Color;
    highp vec3 _581;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _562 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _482 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _562.w = _562.w * _562.x;
        highp vec2 _573 = ((_562.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _574 = vec3(_573.x, _573.y, _321.z);
        highp vec2 _575 = _573.xy;
        _574.z = sqrt(1.0 - clamp(dot(_575, _575), 0.0, 1.0));
        _581 = _574;
    }
    else
    {
        _581 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _630;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _590 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _591 = vec2(_590.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _590.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _593 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _594 = vec2(_593.x ? out_var_TEXCOORD1.xy.x : _591.x, _593.y ? out_var_TEXCOORD1.xy.y : _591.y);
        bvec2 _596 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _606 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_596.x ? out_var_TEXCOORD1.zw.x : _594.x, _596.y ? out_var_TEXCOORD1.zw.y : _594.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _606.w = _606.w * _606.x;
        highp vec2 _618 = (((_606.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _630 = vec3(_581.xy + _618, _581.z * sqrt(1.0 - clamp(dot(_618, _618), 0.0, 1.0)));
    }
    else
    {
        _630 = _581;
    }
    highp vec3 _632 = normalize(_441 * _630);
    bvec3 _637 = bvec3(_364 < (_Globals._FlipNormal - 1.0));
    highp vec3 _638 = -_632;
    highp vec3 _639 = vec3(_637.x ? _638.x : _632.x, _637.y ? _638.y : _632.y, _637.z ? _638.z : _632.z);
    highp float _640 = dot(_639, _432);
    highp float _641 = clamp(_640, 0.0, 1.0);
    highp vec2 _643 = vec2(abs(_640));
    highp vec3 _644 = normalize(out_var_TEXCOORD4);
    highp vec2 _648 = ((_639 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _347, _340)).xy * 0.5) + vec2(0.5);
    bool _649 = out_var_TEXCOORD5.w > 0.0;
    bool _654 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _892;
    highp vec4 _893;
    if (_654)
    {
        bvec2 _660 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _661 = vec2(_660.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _660.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _663 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _664 = vec2(_663.x ? out_var_TEXCOORD1.xy.x : _661.x, _663.y ? out_var_TEXCOORD1.xy.y : _661.y);
        bvec2 _666 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _667 = vec2(_666.x ? out_var_TEXCOORD1.zw.x : _664.x, _666.y ? out_var_TEXCOORD1.zw.y : _664.y);
        bvec2 _669 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _670 = vec2(_669.x ? _648.x : _667.x, _669.y ? _648.y : _667.y);
        highp vec4 _709 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _710 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _718;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _717 = _670;
            _717.x = abs(_670.x - 0.5) + 0.5;
            _718 = _717;
        }
        else
        {
            _718 = _670;
        }
        highp vec2 _719 = _709.xy;
        highp vec2 _720 = _709.zw;
        highp vec2 _721 = _718 * _719 + _720;
        highp vec2 _730;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_670.x < 0.5))
        {
            highp vec2 _729 = _721;
            _729.x = 1.0 - _721.x;
            _730 = _729;
        }
        else
        {
            _730 = _721;
        }
        highp vec2 _737;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _649)
        {
            highp vec2 _736 = _730;
            _736.x = 1.0 - _730.x;
            _737 = _736;
        }
        else
        {
            _737 = _730;
        }
        highp vec2 _742;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _649)
        {
            highp vec2 _741 = _737;
            _741.x = -1.0;
            _742 = _741;
        }
        else
        {
            _742 = _737;
        }
        highp vec2 _748;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_649))
        {
            highp vec2 _747 = _742;
            _747.x = -1.0;
            _748 = _747;
        }
        else
        {
            _748 = _742;
        }
        highp float _751 = sin(_710);
        highp float _752 = cos(_710);
        highp vec2 _753 = ((_748 - _720) / _719) - vec2(0.5);
        highp float _754 = _753.x;
        highp float _755 = _753.y;
        highp vec2 _763 = (vec2(_754 * _752 + (-(_755 * _751)), _754 * _751 + (_755 * _752)) + vec2(0.5)) * _719 + _720;
        uint _767 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _771 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _767 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _767);
        highp float _772 = _763.x;
        highp float _773 = _763.y;
        uint _780 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _790 = ((mix(vec2(_772, 1.0 - _773), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_771 % _780), float(_771 / _780))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _790.y = 1.0 - _790.y;
        highp vec4 _795 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _790);
        highp vec4 _811;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _798 = _795.x;
            highp float _799 = _795.y;
            highp float _800 = _795.z;
            highp float _801 = isnan(_799) ? _798 : (isnan(_798) ? _799 : min(_798, _799));
            highp float _802 = isnan(_799) ? _798 : (isnan(_798) ? _799 : max(_798, _799));
            highp float _803 = isnan(_800) ? _802 : (isnan(_802) ? _800 : min(_802, _800));
            highp float _804 = isnan(_803) ? _801 : (isnan(_801) ? _803 : max(_801, _803));
            _811 = vec4(1.0, 1.0, 1.0, clamp((_804 - 0.5) / clamp(fwidth(_804), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _811 = _795;
        }
        highp vec4 _834;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _815 = clamp(_641 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _818 = 0.5 - abs(_772 - 0.5);
            highp float _825 = 0.5 - abs(_773 - 0.5);
            highp vec4 _833 = _811;
            _833.w = _811.w * (clamp(_818 / clamp(fwidth(_818), 9.9999997473787516355514526367188e-05, _815), 0.0, 1.0) * clamp(_825 / clamp(fwidth(_825), 9.9999997473787516355514526367188e-05, _815), 0.0, 1.0));
            _834 = _833;
        }
        else
        {
            _834 = _811;
        }
        highp vec4 _835 = _Globals._Color2nd * _834;
        highp float _836 = _835.w;
        _835.w = mix(_836, _836 * clamp((_425 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _862;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_364 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_364 < 0.0)))
        {
            highp vec4 _861 = _835;
            _861.w = 0.0;
            _862 = _861;
        }
        else
        {
            _862 = _835;
        }
        highp vec3 _863 = _549.xyz;
        highp vec3 _872 = _863 + _862.xyz;
        highp vec3 _873 = _863 * _862.xyz;
        bvec3 _875 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _876 = vec3(_875.x ? _862.xyz.x : _315.x, _875.y ? _862.xyz.y : _315.y, _875.z ? _862.xyz.z : _315.z);
        bvec3 _878 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _886;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _884 = (-_863) * _862.xyz + _872;
            bvec3 _2456 = isnan(_884);
            bvec3 _2457 = isnan(_863);
            highp vec3 _2458 = max(_884, _863);
            highp vec3 _2459 = vec3(_2456.x ? _863.x : _2458.x, _2456.y ? _863.y : _2458.y, _2456.z ? _863.z : _2458.z);
            _886 = vec3(_2457.x ? _884.x : _2459.x, _2457.y ? _884.y : _2459.y, _2457.z ? _884.z : _2459.z);
        }
        else
        {
            _886 = vec3(_878.x ? _872.x : _876.x, _878.y ? _872.y : _876.y, _878.z ? _872.z : _876.z);
        }
        bvec3 _888 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _890 = mix(_863, vec3(_888.x ? _873.x : _886.x, _888.y ? _873.y : _886.y, _888.z ? _873.z : _886.z), vec3(_862.w * _Globals._Main2ndEnableLighting));
        _892 = _862;
        _893 = vec4(_890.x, _890.y, _890.z, _549.w);
    }
    else
    {
        _892 = _Globals._Color2nd;
        _893 = _549;
    }
    bool _898 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1136;
    highp vec4 _1137;
    if (_898)
    {
        bvec2 _904 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _905 = vec2(_904.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _904.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _907 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _908 = vec2(_907.x ? out_var_TEXCOORD1.xy.x : _905.x, _907.y ? out_var_TEXCOORD1.xy.y : _905.y);
        bvec2 _910 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _911 = vec2(_910.x ? out_var_TEXCOORD1.zw.x : _908.x, _910.y ? out_var_TEXCOORD1.zw.y : _908.y);
        bvec2 _913 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _914 = vec2(_913.x ? _648.x : _911.x, _913.y ? _648.y : _911.y);
        highp vec4 _953 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _954 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _962;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _961 = _914;
            _961.x = abs(_914.x - 0.5) + 0.5;
            _962 = _961;
        }
        else
        {
            _962 = _914;
        }
        highp vec2 _963 = _953.xy;
        highp vec2 _964 = _953.zw;
        highp vec2 _965 = _962 * _963 + _964;
        highp vec2 _974;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_914.x < 0.5))
        {
            highp vec2 _973 = _965;
            _973.x = 1.0 - _965.x;
            _974 = _973;
        }
        else
        {
            _974 = _965;
        }
        highp vec2 _981;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _649)
        {
            highp vec2 _980 = _974;
            _980.x = 1.0 - _974.x;
            _981 = _980;
        }
        else
        {
            _981 = _974;
        }
        highp vec2 _986;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _649)
        {
            highp vec2 _985 = _981;
            _985.x = -1.0;
            _986 = _985;
        }
        else
        {
            _986 = _981;
        }
        highp vec2 _992;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_649))
        {
            highp vec2 _991 = _986;
            _991.x = -1.0;
            _992 = _991;
        }
        else
        {
            _992 = _986;
        }
        highp float _995 = sin(_954);
        highp float _996 = cos(_954);
        highp vec2 _997 = ((_992 - _964) / _963) - vec2(0.5);
        highp float _998 = _997.x;
        highp float _999 = _997.y;
        highp vec2 _1007 = (vec2(_998 * _996 + (-(_999 * _995)), _998 * _995 + (_999 * _996)) + vec2(0.5)) * _963 + _964;
        uint _1011 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1015 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1011 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1011);
        highp float _1016 = _1007.x;
        highp float _1017 = _1007.y;
        uint _1024 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1034 = ((mix(vec2(_1016, 1.0 - _1017), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1015 % _1024), float(_1015 / _1024))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1034.y = 1.0 - _1034.y;
        highp vec4 _1039 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1034);
        highp vec4 _1055;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1042 = _1039.x;
            highp float _1043 = _1039.y;
            highp float _1044 = _1039.z;
            highp float _1045 = isnan(_1043) ? _1042 : (isnan(_1042) ? _1043 : min(_1042, _1043));
            highp float _1046 = isnan(_1043) ? _1042 : (isnan(_1042) ? _1043 : max(_1042, _1043));
            highp float _1047 = isnan(_1044) ? _1046 : (isnan(_1046) ? _1044 : min(_1046, _1044));
            highp float _1048 = isnan(_1047) ? _1045 : (isnan(_1045) ? _1047 : max(_1045, _1047));
            _1055 = vec4(1.0, 1.0, 1.0, clamp((_1048 - 0.5) / clamp(fwidth(_1048), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1055 = _1039;
        }
        highp vec4 _1078;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1059 = clamp(_641 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1062 = 0.5 - abs(_1016 - 0.5);
            highp float _1069 = 0.5 - abs(_1017 - 0.5);
            highp vec4 _1077 = _1055;
            _1077.w = _1055.w * (clamp(_1062 / clamp(fwidth(_1062), 9.9999997473787516355514526367188e-05, _1059), 0.0, 1.0) * clamp(_1069 / clamp(fwidth(_1069), 9.9999997473787516355514526367188e-05, _1059), 0.0, 1.0));
            _1078 = _1077;
        }
        else
        {
            _1078 = _1055;
        }
        highp vec4 _1079 = _Globals._Color3rd * _1078;
        highp float _1080 = _1079.w;
        _1079.w = mix(_1080, _1080 * clamp((_425 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1106;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_364 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_364 < 0.0)))
        {
            highp vec4 _1105 = _1079;
            _1105.w = 0.0;
            _1106 = _1105;
        }
        else
        {
            _1106 = _1079;
        }
        highp vec3 _1116 = _893.xyz + _1106.xyz;
        highp vec3 _1117 = _893.xyz * _1106.xyz;
        bvec3 _1119 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1120 = vec3(_1119.x ? _1106.xyz.x : _315.x, _1119.y ? _1106.xyz.y : _315.y, _1119.z ? _1106.xyz.z : _315.z);
        bvec3 _1122 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1130;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1128 = (-_893.xyz) * _1106.xyz + _1116;
            bvec3 _2481 = isnan(_1128);
            bvec3 _2482 = isnan(_893.xyz);
            highp vec3 _2483 = max(_1128, _893.xyz);
            highp vec3 _2484 = vec3(_2481.x ? _893.xyz.x : _2483.x, _2481.y ? _893.xyz.y : _2483.y, _2481.z ? _893.xyz.z : _2483.z);
            _1130 = vec3(_2482.x ? _1128.x : _2484.x, _2482.y ? _1128.y : _2484.y, _2482.z ? _1128.z : _2484.z);
        }
        else
        {
            _1130 = vec3(_1122.x ? _1116.x : _1120.x, _1122.y ? _1116.y : _1120.y, _1122.z ? _1116.z : _1120.z);
        }
        bvec3 _1132 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1134 = mix(_893.xyz, vec3(_1132.x ? _1117.x : _1130.x, _1132.y ? _1117.y : _1130.y, _1132.z ? _1117.z : _1130.z), vec3(_1106.w * _Globals._Main3rdEnableLighting));
        _1136 = _1106;
        _1137 = vec4(_1134.x, _1134.y, _1134.z, _893.w);
    }
    else
    {
        _1136 = _Globals._Color3rd;
        _1137 = _893;
    }
    highp vec4 _1138 = _1137;
    _1138.w = 1.0;
    highp vec4 _1312;
    highp float _1313;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1162 = clamp(dot(_416, mix(_644, _639, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1165 = clamp(dot(_416, mix(_644, _639, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1168 = clamp(dot(_416, mix(_644, _639, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1172 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1175 = clamp(_415 + distance(_416, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1178 = mix(1.0, _1175, _Globals._ShadowReceive);
        highp float _1179 = _1162 * _1178;
        highp float _1182 = mix(1.0, _1175, _Globals._Shadow2ndReceive);
        highp float _1186 = mix(1.0, _1175, _Globals._Shadow3rdReceive);
        highp float _1197 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1198 = clamp(_1197, 0.0, 1.0);
        highp float _1200 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1213 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1227 = clamp(_1197 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1240 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1255 = (_364 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1256 = clamp((_1162 * _1178 + (-_1198)) / clamp(fwidth(_1179) * _1172 + (_1200 - _1198), 0.0, 1.0), 0.0, 1.0) * _1255;
        highp vec3 _1288 = mix(mix(_1138.xyz * _Globals._ShadowColor.xyz, (_1138.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1165 * _1182 + (-_1213)) / clamp(fwidth(_1165 * _1182) * _1172 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1213), 0.0, 1.0), 0.0, 1.0) * _1255)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1138.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1168 * _1186 + (-_1240)) / clamp(fwidth(_1168 * _1186) * _1172 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1240), 0.0, 1.0), 0.0, 1.0) * _1255)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1294 = _1138.xyz * out_var_TEXCOORD6;
        highp vec3 _1300 = mix(mix(_1288, _1288 * _1138.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1138.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2486 = isnan(_1300);
        bvec3 _2487 = isnan(_1294);
        highp vec3 _2488 = min(_1300, _1294);
        highp vec3 _2489 = vec3(_2486.x ? _1294.x : _2488.x, _2486.y ? _1294.y : _2488.y, _2486.z ? _1294.z : _2488.z);
        highp vec3 _1308 = mix(mix(vec3(_2487.x ? _1300.x : _2489.x, _2487.y ? _1300.y : _2489.y, _2487.z ? _1300.z : _2489.z), _1294, _Globals._ShadowBorderColor.xyz * (clamp((_1162 * _1178 + (-_1227)) / clamp(fwidth(_1179) * _1172 + (_1200 - _1227), 0.0, 1.0), 0.0, 1.0) * _1255)), _1294, vec3(mix(1.0, _1256, _Globals._ShadowStrength)));
        _1312 = vec4(_1308.x, _1308.y, _1308.z, _1138.w);
        _1313 = _1256;
    }
    else
    {
        highp vec3 _1310 = _1138.xyz * out_var_TEXCOORD6;
        _1312 = vec4(_1310.x, _1310.y, _1310.z, _1138.w);
        _1313 = 1.0;
    }
    highp vec3 _1316 = vec3(_Globals._LightMaxLimit);
    bvec3 _2491 = isnan(out_var_TEXCOORD6);
    bvec3 _2492 = isnan(_1316);
    highp vec3 _2493 = min(out_var_TEXCOORD6, _1316);
    highp vec3 _2494 = vec3(_2491.x ? _1316.x : _2493.x, _2491.y ? _1316.y : _2493.y, _2491.z ? _1316.z : _2493.z);
    highp vec3 _1317 = vec3(_2492.x ? out_var_TEXCOORD6.x : _2494.x, _2492.y ? out_var_TEXCOORD6.y : _2494.y, _2492.z ? out_var_TEXCOORD6.z : _2494.z);
    highp float _1318 = clamp(_1313, 0.0, 1.0);
    highp vec3 _1320 = _1138.xyz * _Globals._LightMaxLimit;
    bvec3 _2496 = isnan(_1312.xyz);
    bvec3 _2497 = isnan(_1320);
    highp vec3 _2498 = min(_1312.xyz, _1320);
    highp vec3 _2499 = vec3(_2496.x ? _1320.x : _2498.x, _2496.y ? _1320.y : _2498.y, _2496.z ? _1320.z : _2498.z);
    highp vec3 _1321 = vec3(_2497.x ? _1312.xyz.x : _2499.x, _2497.y ? _1312.xyz.y : _2499.y, _2497.z ? _1312.xyz.z : _2499.z);
    highp vec4 _1355;
    if (_654)
    {
        highp vec3 _1325 = _1321.xyz;
        highp vec3 _1335 = _1325 + _892.xyz;
        highp vec3 _1336 = _1325 * _892.xyz;
        bvec3 _1338 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1339 = vec3(_1338.x ? _892.xyz.x : _315.x, _1338.y ? _892.xyz.y : _315.y, _1338.z ? _892.xyz.z : _315.z);
        bvec3 _1341 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1349;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1347 = (-_1325) * _892.xyz + _1335;
            bvec3 _2501 = isnan(_1347);
            bvec3 _2502 = isnan(_1325);
            highp vec3 _2503 = max(_1347, _1325);
            highp vec3 _2504 = vec3(_2501.x ? _1325.x : _2503.x, _2501.y ? _1325.y : _2503.y, _2501.z ? _1325.z : _2503.z);
            _1349 = vec3(_2502.x ? _1347.x : _2504.x, _2502.y ? _1347.y : _2504.y, _2502.z ? _1347.z : _2504.z);
        }
        else
        {
            _1349 = vec3(_1341.x ? _1335.x : _1339.x, _1341.y ? _1335.y : _1339.y, _1341.z ? _1335.z : _1339.z);
        }
        bvec3 _1351 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1353 = mix(_1325, vec3(_1351.x ? _1336.x : _1349.x, _1351.y ? _1336.y : _1349.y, _1351.z ? _1336.z : _1349.z), vec3((-_892.w) * _Globals._Main2ndEnableLighting + _892.w));
        _1355 = vec4(_1353.x, _1353.y, _1353.z, _1312.w);
    }
    else
    {
        _1355 = vec4(_1321.x, _1321.y, _1321.z, _1312.w);
    }
    highp vec4 _1388;
    if (_898)
    {
        highp vec3 _1368 = _1355.xyz + _1136.xyz;
        highp vec3 _1369 = _1355.xyz * _1136.xyz;
        bvec3 _1371 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1372 = vec3(_1371.x ? _1136.xyz.x : _315.x, _1371.y ? _1136.xyz.y : _315.y, _1371.z ? _1136.xyz.z : _315.z);
        bvec3 _1374 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1382;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1380 = (-_1355.xyz) * _1136.xyz + _1368;
            bvec3 _2506 = isnan(_1380);
            bvec3 _2507 = isnan(_1355.xyz);
            highp vec3 _2508 = max(_1380, _1355.xyz);
            highp vec3 _2509 = vec3(_2506.x ? _1355.xyz.x : _2508.x, _2506.y ? _1355.xyz.y : _2508.y, _2506.z ? _1355.xyz.z : _2508.z);
            _1382 = vec3(_2507.x ? _1380.x : _2509.x, _2507.y ? _1380.y : _2509.y, _2507.z ? _1380.z : _2509.z);
        }
        else
        {
            _1382 = vec3(_1374.x ? _1368.x : _1372.x, _1374.y ? _1368.y : _1372.y, _1374.z ? _1368.z : _1372.z);
        }
        bvec3 _1384 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1386 = mix(_1355.xyz, vec3(_1384.x ? _1369.x : _1382.x, _1384.y ? _1369.y : _1382.y, _1384.z ? _1369.z : _1382.z), vec3((-_1136.w) * _Globals._Main3rdEnableLighting + _1136.w));
        _1388 = vec4(_1386.x, _1386.y, _1386.z, _1355.w);
    }
    else
    {
        _1388 = _1355;
    }
    highp vec4 _1434;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1404 = pow(clamp(1.0 - abs(dot(mix(_644, _639, vec3(_Globals._RimShadeNormalStrength)), _432)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1413 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1432 = mix(_1388.xyz, _1388.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1404 - _1413) / clamp(fwidth(_1404) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1413), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1434 = vec4(_1432.x, _1432.y, _1432.z, _1388.w);
    }
    else
    {
        _1434 = _1388;
    }
    highp vec4 _1507;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1458 = dot(normalize(((-_432) * _Globals._BacklightViewStrength) + _416), mix(_644, _639, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1468;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1468 = _1458 * clamp(_415 + distance(_416, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1468 = _1458;
        }
        highp float _1477 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1505 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1138.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_364 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_432, _416) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1468 - _1477) / clamp(fwidth(_1468) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1477), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1317 + _1434.xyz;
        _1507 = vec4(_1505.x, _1505.y, _1505.z, _1434.w);
    }
    else
    {
        _1507 = _1434;
    }
    highp vec4 _1750;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1517 = dFdx(_639);
        highp vec3 _1518 = abs(_1517);
        highp vec3 _1519 = dFdy(_639);
        highp vec3 _1520 = abs(_1519);
        highp float _1521 = dot(_1518, _1518);
        highp float _1522 = dot(_1520, _1520);
        highp float _1523 = isnan(_1522) ? _1521 : (isnan(_1521) ? _1522 : max(_1521, _1522));
        highp float _1526 = (_1523 / (_1523 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1529 = clamp(1.0 - (isnan(_1526) ? 0.0 : (isnan(0.0) ? _1526 : max(0.0, _1526))), 0.0, 1.0);
        highp float _1530 = isnan(_1529) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1529 : min(_Globals._Smoothness, _1529));
        highp float _1531 = 1.0 - _1530;
        highp float _1532 = _1531 * _1531;
        highp vec3 _1537 = _1507.xyz - (_1507.xyz * _Globals._Metallic);
        highp vec3 _1543 = mix(vec3(_Globals._Reflectance), _1138.xyz, vec3(_Globals._Metallic));
        highp vec4 _1646;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1618;
            do
            {
                highp vec3 _1556 = mix(_644, _639, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1558 = normalize(_432 + _416);
                highp float _1560 = clamp(dot(_1556, _1558), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1569 = pow(_1560, 1.0 / _1532);
                    highp float _1576 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1618 = vec3(clamp((_1569 - _1576) / clamp(fwidth(_1569) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1576), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1588 = clamp(dot(_1556, _432), 0.0, 1.0);
                highp float _1590 = clamp(dot(_1556, _416), 0.0, 1.0);
                highp float _1593 = isnan(0.00200000009499490261077880859375) ? _1532 : (isnan(_1532) ? 0.00200000009499490261077880859375 : max(_1532, 0.00200000009499490261077880859375));
                highp float _1594 = 1.0 - _1593;
                highp float _1598 = _1593 * _1593;
                highp float _1601 = (_1560 * _1598 + (-_1560)) * _1560 + 1.0;
                highp float _1609 = 1.0 - clamp(dot(_416, _1558), 0.0, 1.0);
                _1618 = (_1543 + ((((((vec3(1.0) - _1543) * _1609) * _1609) * _1609) * _1609) * _1609)) * (((0.5 / ((_1590 * (_1588 * _1594 + _1593) + (_1588 * (_1590 * _1594 + _1593))) + 9.9999997473787516355514526367188e-06)) * (_1598 / (_1601 * _1601 + 1.0000000116860974230803549289703e-07))) * _1590);
                break;
            } while(false);
            highp vec3 _1619 = _1537.xyz;
            highp vec3 _1621 = _Globals._ReflectionColor.xyz * _1317;
            highp vec3 _1626 = _Globals._ReflectionColor.xyz * _1317 + _1619;
            highp vec3 _1627 = _1619 * _1621;
            bvec3 _1629 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1630 = vec3(_1629.x ? _1621.x : _315.x, _1629.y ? _1621.y : _315.y, _1629.z ? _1621.z : _315.z);
            bvec3 _1632 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1640;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1638 = (-_1619) * _1621 + _1626;
                bvec3 _2531 = isnan(_1638);
                bvec3 _2532 = isnan(_1619);
                highp vec3 _2533 = max(_1638, _1619);
                highp vec3 _2534 = vec3(_2531.x ? _1619.x : _2533.x, _2531.y ? _1619.y : _2533.y, _2531.z ? _1619.z : _2533.z);
                _1640 = vec3(_2532.x ? _1638.x : _2534.x, _2532.y ? _1638.y : _2534.y, _2532.z ? _1638.z : _2534.z);
            }
            else
            {
                _1640 = vec3(_1632.x ? _1626.x : _1630.x, _1632.y ? _1626.y : _1630.y, _1632.z ? _1626.z : _1630.z);
            }
            bvec3 _1642 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1644 = mix(_1619, vec3(_1642.x ? _1627.x : _1640.x, _1642.y ? _1627.y : _1640.y, _1642.z ? _1627.z : _1640.z), _1618 * _Globals._ReflectionColor.w);
            _1646 = vec4(_1644.x, _1644.y, _1644.z, _1507.w);
        }
        else
        {
            _1646 = vec4(_1537.x, _1537.y, _1537.z, _1507.w);
        }
        highp vec4 _1749;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1668 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1675 = reflect(-_432, mix(_644, _639, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1678 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1675, _1531 * ((-4.19999980926513671875) * _1531 + 10.19999980926513671875));
            highp vec3 _1698 = ((_1678.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1678.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1317, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1704 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1675, _1531 * 8.0).xyz * 1.0;
            highp float _1715 = 1.0 - _641;
            highp vec3 _1729 = _1646.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1730 = _1646.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1732 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1733 = vec3(_1732.x ? _Globals._ReflectionColor.xyz.x : _315.x, _1732.y ? _Globals._ReflectionColor.xyz.y : _315.y, _1732.z ? _Globals._ReflectionColor.xyz.z : _315.z);
            bvec3 _1735 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1743;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1741 = (-_1646.xyz) * _Globals._ReflectionColor.xyz + _1729;
                bvec3 _2536 = isnan(_1741);
                bvec3 _2537 = isnan(_1646.xyz);
                highp vec3 _2538 = max(_1741, _1646.xyz);
                highp vec3 _2539 = vec3(_2536.x ? _1646.xyz.x : _2538.x, _2536.y ? _1646.xyz.y : _2538.y, _2536.z ? _1646.xyz.z : _2538.z);
                _1743 = vec3(_2537.x ? _1741.x : _2539.x, _2537.y ? _1741.y : _2539.y, _2537.z ? _1741.z : _2539.z);
            }
            else
            {
                _1743 = vec3(_1735.x ? _1729.x : _1733.x, _1735.y ? _1729.y : _1733.y, _1735.z ? _1729.z : _1733.z);
            }
            bvec3 _1745 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1747 = mix(_1646.xyz, vec3(_1745.x ? _1730.x : _1743.x, _1745.y ? _1730.y : _1743.y, _1745.z ? _1730.z : _1743.z), ((vec3(_1668.x ? _1698.x : _1704.x, _1668.y ? _1698.y : _1704.y, _1668.z ? _1698.z : _1704.z) * (1.0 / (_1532 * _1532 + 1.0))) * mix(_1543, vec3(clamp(_1530 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1715 * _1715) * _1715) * _1715) * _1715))) * _Globals._ReflectionColor.w);
            _1749 = vec4(_1747.x, _1747.y, _1747.z, _1646.w);
        }
        else
        {
            _1749 = _1646;
        }
        _1750 = _1749;
    }
    else
    {
        _1750 = _1507;
    }
    highp vec4 _1856;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _1776 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1777 = vec3(_1776.x ? _432.x : _340.x, _1776.y ? _432.y : _340.y, _1776.z ? _432.z : _340.z);
        bvec3 _1778 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1779 = vec3(_1778.x ? vec3(0.0, 1.0, 0.0).x : _347.x, _1778.y ? vec3(0.0, 1.0, 0.0).y : _347.y, _1778.z ? vec3(0.0, 1.0, 0.0).z : _347.z);
        highp vec3 _1783 = normalize(_1779 - (_1777 * dot(_1777, _1779)));
        highp vec4 _1805 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_644, _639, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_1777, _1783), _1783, _1777)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1806 = _1805.xyz;
        highp float _1812 = _1805.w;
        highp vec3 _1822 = mix(_1806, _1806 * _1317, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1829 = mix(_1822, _1822 * _1138.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1836 = _1750.xyz + _1829;
        highp vec3 _1837 = _1750.xyz * _1829;
        bvec3 _1839 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1840 = vec3(_1839.x ? _1829.x : _315.x, _1839.y ? _1829.y : _315.y, _1839.z ? _1829.z : _315.z);
        bvec3 _1842 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1850;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1848 = (-_1750.xyz) * _1829 + _1836;
            bvec3 _2541 = isnan(_1848);
            bvec3 _2542 = isnan(_1750.xyz);
            highp vec3 _2543 = max(_1848, _1750.xyz);
            highp vec3 _2544 = vec3(_2541.x ? _1750.xyz.x : _2543.x, _2541.y ? _1750.xyz.y : _2543.y, _2541.z ? _1750.xyz.z : _2543.z);
            _1850 = vec3(_2542.x ? _1848.x : _2544.x, _2542.y ? _1848.y : _2544.y, _2542.z ? _1848.z : _2544.z);
        }
        else
        {
            _1850 = vec3(_1842.x ? _1836.x : _1840.x, _1842.y ? _1836.y : _1840.y, _1842.z ? _1836.z : _1840.z);
        }
        bvec3 _1852 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1854 = mix(_1750.xyz, vec3(_1852.x ? _1837.x : _1850.x, _1852.y ? _1837.y : _1850.y, _1852.z ? _1837.z : _1850.z), vec3(1.0) * (_Globals._MatCapBlend * ((_364 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1812, _1812 * _1318, _Globals._MatCapShadowMask))));
        _1856 = vec4(_1854.x, _1854.y, _1854.z, _1750.w);
    }
    else
    {
        _1856 = _1750;
    }
    highp vec4 _1961;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _1881 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1882 = vec3(_1881.x ? _432.x : _340.x, _1881.y ? _432.y : _340.y, _1881.z ? _432.z : _340.z);
        bvec3 _1883 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1884 = vec3(_1883.x ? vec3(0.0, 1.0, 0.0).x : _347.x, _1883.y ? vec3(0.0, 1.0, 0.0).y : _347.y, _1883.z ? vec3(0.0, 1.0, 0.0).z : _347.z);
        highp vec3 _1888 = normalize(_1884 - (_1882 * dot(_1882, _1884)));
        highp vec4 _1910 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_644, _639, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_1882, _1888), _1888, _1882)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1911 = _1910.xyz;
        highp float _1917 = _1910.w;
        highp vec3 _1927 = mix(_1911, _1911 * _1317, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1934 = mix(_1927, _1927 * _1138.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1941 = _1856.xyz + _1934;
        highp vec3 _1942 = _1856.xyz * _1934;
        bvec3 _1944 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1945 = vec3(_1944.x ? _1934.x : _315.x, _1944.y ? _1934.y : _315.y, _1944.z ? _1934.z : _315.z);
        bvec3 _1947 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1955;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1953 = (-_1856.xyz) * _1934 + _1941;
            bvec3 _2546 = isnan(_1953);
            bvec3 _2547 = isnan(_1856.xyz);
            highp vec3 _2548 = max(_1953, _1856.xyz);
            highp vec3 _2549 = vec3(_2546.x ? _1856.xyz.x : _2548.x, _2546.y ? _1856.xyz.y : _2548.y, _2546.z ? _1856.xyz.z : _2548.z);
            _1955 = vec3(_2547.x ? _1953.x : _2549.x, _2547.y ? _1953.y : _2549.y, _2547.z ? _1953.z : _2549.z);
        }
        else
        {
            _1955 = vec3(_1947.x ? _1941.x : _1945.x, _1947.y ? _1941.y : _1945.y, _1947.z ? _1941.z : _1945.z);
        }
        bvec3 _1957 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1959 = mix(_1856.xyz, vec3(_1957.x ? _1942.x : _1955.x, _1957.y ? _1942.y : _1955.y, _1957.z ? _1942.z : _1955.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_364 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1917, _1917 * _1318, _Globals._MatCap2ndShadowMask))));
        _1961 = vec4(_1959.x, _1959.y, _1959.z, _1856.w);
    }
    else
    {
        _1961 = _1856;
    }
    highp vec4 _2107;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1980 = mix(_644, _639, vec3(_Globals._RimNormalStrength));
        highp float _1984 = dot(_416, _1980) * 0.5 + 0.5;
        highp float _2007 = (_364 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1980, _432)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2011 = mix(_2007, _2007 * clamp((_1984 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2012 = _2007 * clamp(((1.0 - _1984) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2022 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2031 = clamp((_2011 - _2022) / clamp(fwidth(_2011) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2022), 0.0, 1.0), 0.0, 1.0);
        highp float _2038 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2048 = clamp((_2012 * _Globals._RimDirStrength + (-_2038)) / clamp(fwidth(_2012 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2038), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2060 = vec3(1.0 - _Globals._RimEnableLighting) + (_1317 * _Globals._RimEnableLighting);
        highp vec3 _2062 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1138.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2063 = _2062 * _2060;
        highp vec3 _2069 = _2062 * _2060 + _1961.xyz;
        highp vec3 _2070 = _1961.xyz * _2063;
        bvec3 _2072 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2073 = vec3(_2072.x ? _2063.x : _315.x, _2072.y ? _2063.y : _315.y, _2072.z ? _2063.z : _315.z);
        bvec3 _2075 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2077 = _Globals._RimBlendMode == 2u;
        highp vec3 _2083;
        if (_2077)
        {
            highp vec3 _2081 = (-_1961.xyz) * _2063 + _2069;
            bvec3 _2551 = isnan(_2081);
            bvec3 _2552 = isnan(_1961.xyz);
            highp vec3 _2553 = max(_2081, _1961.xyz);
            highp vec3 _2554 = vec3(_2551.x ? _1961.xyz.x : _2553.x, _2551.y ? _1961.xyz.y : _2553.y, _2551.z ? _1961.xyz.z : _2553.z);
            _2083 = vec3(_2552.x ? _2081.x : _2554.x, _2552.y ? _2081.y : _2554.y, _2552.z ? _2081.z : _2554.z);
        }
        else
        {
            _2083 = vec3(_2075.x ? _2069.x : _2073.x, _2075.y ? _2069.y : _2073.y, _2075.z ? _2069.z : _2073.z);
        }
        bvec3 _2085 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2088 = mix(_1961.xyz, vec3(_2085.x ? _2070.x : _2083.x, _2085.y ? _2070.y : _2083.y, _2085.z ? _2070.z : _2083.z), vec3(mix(_2031, _2031 * _1318, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2090 = _Globals._RimIndirColor.xyz * _2060;
        highp vec3 _2094 = _Globals._RimIndirColor.xyz * _2060 + _2088;
        highp vec3 _2095 = _2088 * _2090;
        highp vec3 _2096 = vec3(_2072.x ? _2090.x : _315.x, _2072.y ? _2090.y : _315.y, _2072.z ? _2090.z : _315.z);
        highp vec3 _2103;
        if (_2077)
        {
            highp vec3 _2101 = (-_2088) * _2090 + _2094;
            bvec3 _2556 = isnan(_2101);
            bvec3 _2557 = isnan(_2088);
            highp vec3 _2558 = max(_2101, _2088);
            highp vec3 _2559 = vec3(_2556.x ? _2088.x : _2558.x, _2556.y ? _2088.y : _2558.y, _2556.z ? _2088.z : _2558.z);
            _2103 = vec3(_2557.x ? _2101.x : _2559.x, _2557.y ? _2101.y : _2559.y, _2557.z ? _2101.z : _2559.z);
        }
        else
        {
            _2103 = vec3(_2075.x ? _2094.x : _2096.x, _2075.y ? _2094.y : _2096.y, _2075.z ? _2094.z : _2096.z);
        }
        highp vec3 _2105 = mix(_2088, vec3(_2085.x ? _2095.x : _2103.x, _2085.y ? _2095.y : _2103.y, _2085.z ? _2095.z : _2103.z), vec3(mix(_2048, _2048 * _1318, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2107 = vec4(_2105.x, _2105.y, _2105.z, _1961.w);
    }
    else
    {
        _2107 = _1961;
    }
    highp vec4 _2221;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2118 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2119 = vec2(_2118.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2118.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2121 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2122 = vec2(_2121.x ? out_var_TEXCOORD1.xy.x : _2119.x, _2121.y ? out_var_TEXCOORD1.xy.y : _2119.y);
        bvec2 _2124 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2125 = vec2(_2124.x ? out_var_TEXCOORD1.zw.x : _2122.x, _2124.y ? out_var_TEXCOORD1.zw.y : _2122.y);
        bvec2 _2127 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2144 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2145 = sin(_2144);
        highp float _2146 = cos(_2144);
        highp vec2 _2147 = ((vec2(_2127.x ? _643.x : _2125.x, _2127.y ? _643.y : _2125.y) + (_447 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2148 = _2147.x;
        highp float _2149 = _2147.y;
        highp vec4 _2162 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2148 * _2146 + (-(_2149 * _2145)), _2148 * _2145 + (_2149 * _2146)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2163 = _Globals._EmissionColor * _2162;
        highp vec3 _2164 = _2163.xyz;
        highp vec3 _2170 = mix(_2164, _2164 * _420, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2184 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2190;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2190 = roundEven(_2184);
        }
        else
        {
            _2190 = _2184;
        }
        highp vec3 _2197 = mix(_2170, _2170 * _1138.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2201 = _2107.xyz + _2197;
        highp vec3 _2202 = _2107.xyz * _2197;
        bvec3 _2204 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2205 = vec3(_2204.x ? _2197.x : _315.x, _2204.y ? _2197.y : _315.y, _2204.z ? _2197.z : _315.z);
        bvec3 _2207 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2215;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2213 = (-_2107.xyz) * _2197 + _2201;
            bvec3 _2561 = isnan(_2213);
            bvec3 _2562 = isnan(_2107.xyz);
            highp vec3 _2563 = max(_2213, _2107.xyz);
            highp vec3 _2564 = vec3(_2561.x ? _2107.xyz.x : _2563.x, _2561.y ? _2107.xyz.y : _2563.y, _2561.z ? _2107.xyz.z : _2563.z);
            _2215 = vec3(_2562.x ? _2213.x : _2564.x, _2562.y ? _2213.y : _2564.y, _2562.z ? _2213.z : _2564.z);
        }
        else
        {
            _2215 = vec3(_2207.x ? _2201.x : _2205.x, _2207.y ? _2201.y : _2205.y, _2207.z ? _2201.z : _2205.z);
        }
        bvec3 _2217 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2219 = mix(_2107.xyz, vec3(_2217.x ? _2202.x : _2215.x, _2217.y ? _2202.y : _2215.y, _2217.z ? _2202.z : _2215.z), vec3((_Globals._EmissionBlend * mix(1.0, _2190, _Globals._EmissionBlink.x)) * _2163.w));
        _2221 = vec4(_2219.x, _2219.y, _2219.z, _2107.w);
    }
    else
    {
        _2221 = _2107;
    }
    highp vec4 _2335;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2232 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2233 = vec2(_2232.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2232.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2235 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2236 = vec2(_2235.x ? out_var_TEXCOORD1.xy.x : _2233.x, _2235.y ? out_var_TEXCOORD1.xy.y : _2233.y);
        bvec2 _2238 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2239 = vec2(_2238.x ? out_var_TEXCOORD1.zw.x : _2236.x, _2238.y ? out_var_TEXCOORD1.zw.y : _2236.y);
        bvec2 _2241 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2258 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2259 = sin(_2258);
        highp float _2260 = cos(_2258);
        highp vec2 _2261 = ((vec2(_2241.x ? _643.x : _2239.x, _2241.y ? _643.y : _2239.y) + (_447 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2262 = _2261.x;
        highp float _2263 = _2261.y;
        highp vec4 _2276 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2262 * _2260 + (-(_2263 * _2259)), _2262 * _2259 + (_2263 * _2260)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2277 = _Globals._Emission2ndColor * _2276;
        highp vec3 _2278 = _2277.xyz;
        highp vec3 _2284 = mix(_2278, _2278 * _420, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2298 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2304;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2304 = roundEven(_2298);
        }
        else
        {
            _2304 = _2298;
        }
        highp vec3 _2311 = mix(_2284, _2284 * _1138.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2315 = _2221.xyz + _2311;
        highp vec3 _2316 = _2221.xyz * _2311;
        bvec3 _2318 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2319 = vec3(_2318.x ? _2311.x : _315.x, _2318.y ? _2311.y : _315.y, _2318.z ? _2311.z : _315.z);
        bvec3 _2321 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2329;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2327 = (-_2221.xyz) * _2311 + _2315;
            bvec3 _2566 = isnan(_2327);
            bvec3 _2567 = isnan(_2221.xyz);
            highp vec3 _2568 = max(_2327, _2221.xyz);
            highp vec3 _2569 = vec3(_2566.x ? _2221.xyz.x : _2568.x, _2566.y ? _2221.xyz.y : _2568.y, _2566.z ? _2221.xyz.z : _2568.z);
            _2329 = vec3(_2567.x ? _2327.x : _2569.x, _2567.y ? _2327.y : _2569.y, _2567.z ? _2327.z : _2569.z);
        }
        else
        {
            _2329 = vec3(_2321.x ? _2315.x : _2319.x, _2321.y ? _2315.y : _2319.y, _2321.z ? _2315.z : _2319.z);
        }
        bvec3 _2331 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2333 = mix(_2221.xyz, vec3(_2331.x ? _2316.x : _2329.x, _2331.y ? _2316.y : _2329.y, _2331.z ? _2316.z : _2329.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2304, _Globals._Emission2ndBlink.x)) * _2277.w));
        _2335 = vec4(_2333.x, _2333.y, _2333.z, _2221.w);
    }
    else
    {
        _2335 = _2221;
    }
    bvec3 _2337 = bvec3(_364 < 0.0);
    highp vec3 _2346 = mix(_2335.xyz, _Globals._BackfaceColor.xyz * _1317, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2381 = vec3(_2337.x ? _2346.x : _2335.xyz.x, _2337.y ? _2346.y : _2335.xyz.y, _2337.z ? _2346.z : _2335.xyz.z).xyz;
    highp vec3 _2389 = mix(_2381, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2381, vec3(pow(clamp(1.0 - abs(dot(_644, _432)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_364 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _425) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2389.x, _2389.y, _2389.z, _2335.w), vec4(out_var_TEXCOORD9));
}
