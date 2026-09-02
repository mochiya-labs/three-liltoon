#version 300 es
precision mediump float;
precision highp int;

vec3 _335;
vec3 _341;
float _342;

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
    highp vec3 _362 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _369 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _385 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _394 = float(gl_FrontFacing ? 1 : (-1));
    highp float _445;
    do
    {
        highp vec3 _401 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _402 = _401.xy;
        highp float _408 = _401.z;
        if ((any(lessThan(_402, vec2(0.0))) || any(greaterThan(_402, vec2(1.0)))) || (_408 > 1.0))
        {
            _445 = 1.0;
            break;
        }
        highp float _418 = _408 + _Globals.uShadowBias;
        _445 = (((step(_418, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _402), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_418, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _402), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_418, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _402), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_418, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _402), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _446 = normalize(out_var_TEXCOORD7);
    highp vec3 _450 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _454 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _455 = length(_454);
    highp vec3 _462 = normalize(_454);
    highp mat3 _471 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _472 = _462 * _471;
    highp vec2 _477 = _472.xy / vec2(_472.z + 0.5);
    bvec2 _482 = bvec2(_394 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _483 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _496 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _497 = sin(_496);
    highp float _498 = cos(_496);
    highp vec2 _499 = (vec2(_482.x ? _483.x : out_var_TEXCOORD0.xy.x, _482.y ? _483.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _500 = _499.x;
    highp float _501 = _499.y;
    highp vec2 _512 = (vec2(_500 * _498 + (-(_501 * _497)), _500 * _497 + (_501 * _498)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _516 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _512);
    highp vec3 _523 = pow(abs(_516.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _524 = _523.z;
    highp float _525 = _523.y;
    bvec4 _527 = bvec4(_524 > _525);
    highp vec4 _528 = vec4(_524, _525, -1.0, 0.666666686534881591796875);
    highp vec4 _529 = vec4(_525, _524, 0.0, -0.3333333432674407958984375);
    highp vec4 _530 = vec4(_527.x ? _528.x : _529.x, _527.y ? _528.y : _529.y, _527.z ? _528.z : _529.z, _527.w ? _528.w : _529.w);
    highp float _531 = _530.x;
    highp float _532 = _523.x;
    bvec4 _534 = bvec4(_531 > _532);
    highp vec4 _537 = vec4(_531, _530.yw, _532);
    highp vec4 _539 = vec4(_532, _530.yz, _531);
    highp vec4 _540 = vec4(_534.x ? _537.x : _539.x, _534.y ? _537.y : _539.y, _534.z ? _537.z : _539.z, _534.w ? _537.w : _539.w);
    highp float _545 = _540.x - (isnan(_540.y) ? _540.w : (isnan(_540.w) ? _540.y : min(_540.w, _540.y)));
    highp float _558 = clamp((_545 / (_540.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _561 = clamp(_540.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _575 = vec3((-_561) * _558 + _561) + (clamp(abs((fract(vec3(abs(_540.z + ((_540.w - _540.y) / (6.0 * _545 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_561 * _558));
    highp vec4 _579 = vec4(_575.x, _575.y, _575.z, _516.w) * _Globals._Color;
    highp vec3 _611;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _592 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _512 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _592.w = _592.w * _592.x;
        highp vec2 _603 = ((_592.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _604 = vec3(_603.x, _603.y, _341.z);
        highp vec2 _605 = _603.xy;
        _604.z = sqrt(1.0 - clamp(dot(_605, _605), 0.0, 1.0));
        _611 = _604;
    }
    else
    {
        _611 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _660;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _620 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _621 = vec2(_620.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _620.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _623 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _624 = vec2(_623.x ? out_var_TEXCOORD1.xy.x : _621.x, _623.y ? out_var_TEXCOORD1.xy.y : _621.y);
        bvec2 _626 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _636 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_626.x ? out_var_TEXCOORD1.zw.x : _624.x, _626.y ? out_var_TEXCOORD1.zw.y : _624.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _636.w = _636.w * _636.x;
        highp vec2 _648 = (((_636.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _660 = vec3(_611.xy + _648, _611.z * sqrt(1.0 - clamp(dot(_648, _648), 0.0, 1.0)));
    }
    else
    {
        _660 = _611;
    }
    highp vec3 _662 = normalize(_471 * _660);
    bvec3 _667 = bvec3(_394 < (_Globals._FlipNormal - 1.0));
    highp vec3 _668 = -_662;
    highp vec3 _669 = vec3(_667.x ? _668.x : _662.x, _667.y ? _668.y : _662.y, _667.z ? _668.z : _662.z);
    highp float _670 = dot(_669, _462);
    highp float _671 = clamp(_670, 0.0, 1.0);
    highp vec2 _673 = vec2(abs(_670));
    highp vec3 _674 = normalize(out_var_TEXCOORD4);
    highp vec2 _678 = ((_669 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _369, _362)).xy * 0.5) + vec2(0.5);
    bool _679 = out_var_TEXCOORD5.w > 0.0;
    bool _684 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _962;
    highp vec4 _963;
    if (_684)
    {
        bvec2 _690 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _691 = vec2(_690.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _690.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _693 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _694 = vec2(_693.x ? out_var_TEXCOORD1.xy.x : _691.x, _693.y ? out_var_TEXCOORD1.xy.y : _691.y);
        bvec2 _696 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _697 = vec2(_696.x ? out_var_TEXCOORD1.zw.x : _694.x, _696.y ? out_var_TEXCOORD1.zw.y : _694.y);
        bvec2 _699 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _700 = vec2(_699.x ? _678.x : _697.x, _699.y ? _678.y : _697.y);
        highp vec4 _739 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _740 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _748;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _747 = _700;
            _747.x = abs(_700.x - 0.5) + 0.5;
            _748 = _747;
        }
        else
        {
            _748 = _700;
        }
        highp vec2 _749 = _739.xy;
        highp vec2 _750 = _739.zw;
        highp vec2 _751 = _748 * _749 + _750;
        highp vec2 _760;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_700.x < 0.5))
        {
            highp vec2 _759 = _751;
            _759.x = 1.0 - _751.x;
            _760 = _759;
        }
        else
        {
            _760 = _751;
        }
        highp vec2 _767;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _679)
        {
            highp vec2 _766 = _760;
            _766.x = 1.0 - _760.x;
            _767 = _766;
        }
        else
        {
            _767 = _760;
        }
        highp vec2 _772;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _679)
        {
            highp vec2 _771 = _767;
            _771.x = -1.0;
            _772 = _771;
        }
        else
        {
            _772 = _767;
        }
        highp vec2 _778;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_679))
        {
            highp vec2 _777 = _772;
            _777.x = -1.0;
            _778 = _777;
        }
        else
        {
            _778 = _772;
        }
        highp float _781 = sin(_740);
        highp float _782 = cos(_740);
        highp vec2 _783 = ((_778 - _750) / _749) - vec2(0.5);
        highp float _784 = _783.x;
        highp float _785 = _783.y;
        highp vec2 _793 = (vec2(_784 * _782 + (-(_785 * _781)), _784 * _781 + (_785 * _782)) + vec2(0.5)) * _749 + _750;
        uint _797 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _801 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _797 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _797);
        highp float _802 = _793.x;
        highp float _803 = _793.y;
        uint _810 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _820 = ((mix(vec2(_802, 1.0 - _803), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_801 % _810), float(_801 / _810))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _820.y = 1.0 - _820.y;
        highp vec4 _825 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _820);
        highp vec4 _841;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _828 = _825.x;
            highp float _829 = _825.y;
            highp float _830 = _825.z;
            highp float _831 = isnan(_829) ? _828 : (isnan(_828) ? _829 : min(_828, _829));
            highp float _832 = isnan(_829) ? _828 : (isnan(_828) ? _829 : max(_828, _829));
            highp float _833 = isnan(_830) ? _832 : (isnan(_832) ? _830 : min(_832, _830));
            highp float _834 = isnan(_833) ? _831 : (isnan(_831) ? _833 : max(_831, _833));
            _841 = vec4(1.0, 1.0, 1.0, clamp((_834 - 0.5) / clamp(fwidth(_834), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _841 = _825;
        }
        highp vec4 _864;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _845 = clamp(_671 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _848 = 0.5 - abs(_802 - 0.5);
            highp float _855 = 0.5 - abs(_803 - 0.5);
            highp vec4 _863 = _841;
            _863.w = _841.w * (clamp(_848 / clamp(fwidth(_848), 9.9999997473787516355514526367188e-05, _845), 0.0, 1.0) * clamp(_855 / clamp(fwidth(_855), 9.9999997473787516355514526367188e-05, _845), 0.0, 1.0));
            _864 = _863;
        }
        else
        {
            _864 = _841;
        }
        highp vec4 _865 = _Globals._Color2nd * _864;
        highp float _866 = _865.w;
        _865.w = mix(_866, _866 * clamp((_455 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _892;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_394 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_394 < 0.0)))
        {
            highp vec4 _891 = _865;
            _891.w = 0.0;
            _892 = _891;
        }
        else
        {
            _892 = _865;
        }
        highp vec4 _931;
        highp vec4 _932;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _903;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _902 = _579;
                _902.w = _892.w;
                _903 = _902;
            }
            else
            {
                _903 = _579;
            }
            highp vec4 _911;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _910 = _903;
                _910.w = _903.w * _892.w;
                _911 = _910;
            }
            else
            {
                _911 = _903;
            }
            highp vec4 _920;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _919 = _911;
                _919.w = clamp(_911.w + _892.w, 0.0, 1.0);
                _920 = _919;
            }
            else
            {
                _920 = _911;
            }
            highp vec4 _929;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _928 = _920;
                _928.w = clamp(_920.w - _892.w, 0.0, 1.0);
                _929 = _928;
            }
            else
            {
                _929 = _920;
            }
            highp vec4 _930 = _892;
            _930.w = 1.0;
            _931 = _930;
            _932 = _929;
        }
        else
        {
            _931 = _892;
            _932 = _579;
        }
        highp vec3 _942 = _932.xyz + _931.xyz;
        highp vec3 _943 = _932.xyz * _931.xyz;
        bvec3 _945 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _946 = vec3(_945.x ? _931.xyz.x : _335.x, _945.y ? _931.xyz.y : _335.y, _945.z ? _931.xyz.z : _335.z);
        bvec3 _948 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _956;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _954 = (-_932.xyz) * _931.xyz + _942;
            bvec3 _2800 = isnan(_954);
            bvec3 _2801 = isnan(_932.xyz);
            highp vec3 _2802 = max(_954, _932.xyz);
            highp vec3 _2803 = vec3(_2800.x ? _932.xyz.x : _2802.x, _2800.y ? _932.xyz.y : _2802.y, _2800.z ? _932.xyz.z : _2802.z);
            _956 = vec3(_2801.x ? _954.x : _2803.x, _2801.y ? _954.y : _2803.y, _2801.z ? _954.z : _2803.z);
        }
        else
        {
            _956 = vec3(_948.x ? _942.x : _946.x, _948.y ? _942.y : _946.y, _948.z ? _942.z : _946.z);
        }
        bvec3 _958 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _960 = mix(_932.xyz, vec3(_958.x ? _943.x : _956.x, _958.y ? _943.y : _956.y, _958.z ? _943.z : _956.z), vec3(_931.w * _Globals._Main2ndEnableLighting));
        _962 = _931;
        _963 = vec4(_960.x, _960.y, _960.z, _932.w);
    }
    else
    {
        _962 = _Globals._Color2nd;
        _963 = _579;
    }
    bool _968 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1246;
    highp vec4 _1247;
    if (_968)
    {
        bvec2 _974 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _975 = vec2(_974.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _974.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _977 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _978 = vec2(_977.x ? out_var_TEXCOORD1.xy.x : _975.x, _977.y ? out_var_TEXCOORD1.xy.y : _975.y);
        bvec2 _980 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _981 = vec2(_980.x ? out_var_TEXCOORD1.zw.x : _978.x, _980.y ? out_var_TEXCOORD1.zw.y : _978.y);
        bvec2 _983 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _984 = vec2(_983.x ? _678.x : _981.x, _983.y ? _678.y : _981.y);
        highp vec4 _1023 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1024 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1032;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1031 = _984;
            _1031.x = abs(_984.x - 0.5) + 0.5;
            _1032 = _1031;
        }
        else
        {
            _1032 = _984;
        }
        highp vec2 _1033 = _1023.xy;
        highp vec2 _1034 = _1023.zw;
        highp vec2 _1035 = _1032 * _1033 + _1034;
        highp vec2 _1044;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_984.x < 0.5))
        {
            highp vec2 _1043 = _1035;
            _1043.x = 1.0 - _1035.x;
            _1044 = _1043;
        }
        else
        {
            _1044 = _1035;
        }
        highp vec2 _1051;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _679)
        {
            highp vec2 _1050 = _1044;
            _1050.x = 1.0 - _1044.x;
            _1051 = _1050;
        }
        else
        {
            _1051 = _1044;
        }
        highp vec2 _1056;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _679)
        {
            highp vec2 _1055 = _1051;
            _1055.x = -1.0;
            _1056 = _1055;
        }
        else
        {
            _1056 = _1051;
        }
        highp vec2 _1062;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_679))
        {
            highp vec2 _1061 = _1056;
            _1061.x = -1.0;
            _1062 = _1061;
        }
        else
        {
            _1062 = _1056;
        }
        highp float _1065 = sin(_1024);
        highp float _1066 = cos(_1024);
        highp vec2 _1067 = ((_1062 - _1034) / _1033) - vec2(0.5);
        highp float _1068 = _1067.x;
        highp float _1069 = _1067.y;
        highp vec2 _1077 = (vec2(_1068 * _1066 + (-(_1069 * _1065)), _1068 * _1065 + (_1069 * _1066)) + vec2(0.5)) * _1033 + _1034;
        uint _1081 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1085 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1081 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1081);
        highp float _1086 = _1077.x;
        highp float _1087 = _1077.y;
        uint _1094 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1104 = ((mix(vec2(_1086, 1.0 - _1087), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1085 % _1094), float(_1085 / _1094))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1104.y = 1.0 - _1104.y;
        highp vec4 _1109 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1104);
        highp vec4 _1125;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1112 = _1109.x;
            highp float _1113 = _1109.y;
            highp float _1114 = _1109.z;
            highp float _1115 = isnan(_1113) ? _1112 : (isnan(_1112) ? _1113 : min(_1112, _1113));
            highp float _1116 = isnan(_1113) ? _1112 : (isnan(_1112) ? _1113 : max(_1112, _1113));
            highp float _1117 = isnan(_1114) ? _1116 : (isnan(_1116) ? _1114 : min(_1116, _1114));
            highp float _1118 = isnan(_1117) ? _1115 : (isnan(_1115) ? _1117 : max(_1115, _1117));
            _1125 = vec4(1.0, 1.0, 1.0, clamp((_1118 - 0.5) / clamp(fwidth(_1118), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1125 = _1109;
        }
        highp vec4 _1148;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1129 = clamp(_671 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1132 = 0.5 - abs(_1086 - 0.5);
            highp float _1139 = 0.5 - abs(_1087 - 0.5);
            highp vec4 _1147 = _1125;
            _1147.w = _1125.w * (clamp(_1132 / clamp(fwidth(_1132), 9.9999997473787516355514526367188e-05, _1129), 0.0, 1.0) * clamp(_1139 / clamp(fwidth(_1139), 9.9999997473787516355514526367188e-05, _1129), 0.0, 1.0));
            _1148 = _1147;
        }
        else
        {
            _1148 = _1125;
        }
        highp vec4 _1149 = _Globals._Color3rd * _1148;
        highp float _1150 = _1149.w;
        _1149.w = mix(_1150, _1150 * clamp((_455 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1176;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_394 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_394 < 0.0)))
        {
            highp vec4 _1175 = _1149;
            _1175.w = 0.0;
            _1176 = _1175;
        }
        else
        {
            _1176 = _1149;
        }
        highp vec4 _1215;
        highp vec4 _1216;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1187;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1186 = _963;
                _1186.w = _1176.w;
                _1187 = _1186;
            }
            else
            {
                _1187 = _963;
            }
            highp vec4 _1195;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1194 = _1187;
                _1194.w = _1187.w * _1176.w;
                _1195 = _1194;
            }
            else
            {
                _1195 = _1187;
            }
            highp vec4 _1204;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1203 = _1195;
                _1203.w = clamp(_1195.w + _1176.w, 0.0, 1.0);
                _1204 = _1203;
            }
            else
            {
                _1204 = _1195;
            }
            highp vec4 _1213;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1212 = _1204;
                _1212.w = clamp(_1204.w - _1176.w, 0.0, 1.0);
                _1213 = _1212;
            }
            else
            {
                _1213 = _1204;
            }
            highp vec4 _1214 = _1176;
            _1214.w = 1.0;
            _1215 = _1214;
            _1216 = _1213;
        }
        else
        {
            _1215 = _1176;
            _1216 = _963;
        }
        highp vec3 _1226 = _1216.xyz + _1215.xyz;
        highp vec3 _1227 = _1216.xyz * _1215.xyz;
        bvec3 _1229 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1230 = vec3(_1229.x ? _1215.xyz.x : _335.x, _1229.y ? _1215.xyz.y : _335.y, _1229.z ? _1215.xyz.z : _335.z);
        bvec3 _1232 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1240;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1238 = (-_1216.xyz) * _1215.xyz + _1226;
            bvec3 _2825 = isnan(_1238);
            bvec3 _2826 = isnan(_1216.xyz);
            highp vec3 _2827 = max(_1238, _1216.xyz);
            highp vec3 _2828 = vec3(_2825.x ? _1216.xyz.x : _2827.x, _2825.y ? _1216.xyz.y : _2827.y, _2825.z ? _1216.xyz.z : _2827.z);
            _1240 = vec3(_2826.x ? _1238.x : _2828.x, _2826.y ? _1238.y : _2828.y, _2826.z ? _1238.z : _2828.z);
        }
        else
        {
            _1240 = vec3(_1232.x ? _1226.x : _1230.x, _1232.y ? _1226.y : _1230.y, _1232.z ? _1226.z : _1230.z);
        }
        bvec3 _1242 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1244 = mix(_1216.xyz, vec3(_1242.x ? _1227.x : _1240.x, _1242.y ? _1227.y : _1240.y, _1242.z ? _1227.z : _1240.z), vec3(_1215.w * _Globals._Main3rdEnableLighting));
        _1246 = _1215;
        _1247 = vec4(_1244.x, _1244.y, _1244.z, _1216.w);
    }
    else
    {
        _1246 = _Globals._Color3rd;
        _1247 = _963;
    }
    highp vec4 _1296;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1260 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _512 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1267 = clamp(_1260.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1272;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1271 = _1247;
            _1271.w = _1267;
            _1272 = _1271;
        }
        else
        {
            _1272 = _1247;
        }
        highp vec4 _1279;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1278 = _1272;
            _1278.w = _1272.w * _1267;
            _1279 = _1278;
        }
        else
        {
            _1279 = _1272;
        }
        highp vec4 _1287;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1286 = _1279;
            _1286.w = clamp(_1279.w + _1267, 0.0, 1.0);
            _1287 = _1286;
        }
        else
        {
            _1287 = _1279;
        }
        highp vec4 _1295;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1294 = _1287;
            _1294.w = clamp(_1287.w - _1267, 0.0, 1.0);
            _1295 = _1294;
        }
        else
        {
            _1295 = _1287;
        }
        _1296 = _1295;
    }
    else
    {
        _1296 = _1247;
    }
    highp vec4 _1404;
    highp float _1405;
    if ((_385 & 1) != 0)
    {
        highp vec4 _1300 = _1296;
        _1300.w = 1.0;
        highp vec2 _1309 = roundEven(_Globals._DissolveParams.xy);
        highp float _1310 = _1309.x;
        highp vec4 _1393;
        highp float _1394;
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
            highp float _1336;
            highp float _1337;
            if (_1314)
            {
                _1336 = 1.0 - clamp(abs(_1324 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1337 = float(_1324 > _Globals._DissolveParams.z);
            }
            else
            {
                _1336 = 0.0;
                _1337 = _1324;
            }
            highp float _1368;
            highp float _1369;
            if (_1310 == 2.0)
            {
                highp vec2 _1346 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1357 = (_1309.y == 1.0) ? (vec2(_1346.x * cos(_Globals._DissolvePos.w) + (-(_1346.y * sin(_Globals._DissolvePos.w))), _342) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1368 = 1.0 - clamp(abs(_1357 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1369 = _1337 * float(_1357 > _Globals._DissolveParams.z);
            }
            else
            {
                _1368 = _1336;
                _1369 = _1337;
            }
            highp float _1390;
            highp float _1391;
            if (_1310 == 3.0)
            {
                highp float _1379 = (_1309.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1390 = 1.0 - clamp(abs(_1379 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1391 = _1369 * float(_1379 > _Globals._DissolveParams.z);
            }
            else
            {
                _1390 = _1368;
                _1391 = _1369;
            }
            highp vec4 _1392 = _1300;
            _1392.w = _1391;
            _1393 = _1392;
            _1394 = _1390;
        }
        else
        {
            _1393 = _1300;
            _1394 = 0.0;
        }
        highp vec4 _1400;
        if ((_385 & 2) != 0)
        {
            highp vec4 _1399 = _1393;
            _1399.w = 1.0 - _1393.w;
            _1400 = _1399;
        }
        else
        {
            _1400 = _1393;
        }
        highp vec4 _1403 = _1400;
        _1403.w = _1400.w * _1296.w;
        _1404 = _1403;
        _1405 = _1394;
    }
    else
    {
        _1404 = _1296;
        _1405 = 0.0;
    }
    if ((_1404.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1586;
    highp float _1587;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1436 = clamp(dot(_446, mix(_674, _669, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1439 = clamp(dot(_446, mix(_674, _669, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1442 = clamp(dot(_446, mix(_674, _669, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1446 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1449 = clamp(_445 + distance(_446, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1452 = mix(1.0, _1449, _Globals._ShadowReceive);
        highp float _1453 = _1436 * _1452;
        highp float _1456 = mix(1.0, _1449, _Globals._Shadow2ndReceive);
        highp float _1460 = mix(1.0, _1449, _Globals._Shadow3rdReceive);
        highp float _1471 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1472 = clamp(_1471, 0.0, 1.0);
        highp float _1474 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1487 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1501 = clamp(_1471 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1514 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1529 = (_394 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1530 = clamp((_1436 * _1452 + (-_1472)) / clamp(fwidth(_1453) * _1446 + (_1474 - _1472), 0.0, 1.0), 0.0, 1.0) * _1529;
        highp vec3 _1562 = mix(mix(_1404.xyz * _Globals._ShadowColor.xyz, (_1404.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1439 * _1456 + (-_1487)) / clamp(fwidth(_1439 * _1456) * _1446 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1487), 0.0, 1.0), 0.0, 1.0) * _1529)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1404.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1442 * _1460 + (-_1514)) / clamp(fwidth(_1442 * _1460) * _1446 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1514), 0.0, 1.0), 0.0, 1.0) * _1529)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1568 = _1404.xyz * out_var_TEXCOORD6;
        highp vec3 _1574 = mix(mix(_1562, _1562 * _1404.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1404.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2830 = isnan(_1574);
        bvec3 _2831 = isnan(_1568);
        highp vec3 _2832 = min(_1574, _1568);
        highp vec3 _2833 = vec3(_2830.x ? _1568.x : _2832.x, _2830.y ? _1568.y : _2832.y, _2830.z ? _1568.z : _2832.z);
        highp vec3 _1582 = mix(mix(vec3(_2831.x ? _1574.x : _2833.x, _2831.y ? _1574.y : _2833.y, _2831.z ? _1574.z : _2833.z), _1568, _Globals._ShadowBorderColor.xyz * (clamp((_1436 * _1452 + (-_1501)) / clamp(fwidth(_1453) * _1446 + (_1474 - _1501), 0.0, 1.0), 0.0, 1.0) * _1529)), _1568, vec3(mix(1.0, _1530, _Globals._ShadowStrength)));
        _1586 = vec4(_1582.x, _1582.y, _1582.z, _1404.w);
        _1587 = _1530;
    }
    else
    {
        highp vec3 _1584 = _1404.xyz * out_var_TEXCOORD6;
        _1586 = vec4(_1584.x, _1584.y, _1584.z, _1404.w);
        _1587 = 1.0;
    }
    highp vec3 _1590 = vec3(_Globals._LightMaxLimit);
    bvec3 _2835 = isnan(out_var_TEXCOORD6);
    bvec3 _2836 = isnan(_1590);
    highp vec3 _2837 = min(out_var_TEXCOORD6, _1590);
    highp vec3 _2838 = vec3(_2835.x ? _1590.x : _2837.x, _2835.y ? _1590.y : _2837.y, _2835.z ? _1590.z : _2837.z);
    highp vec3 _1591 = vec3(_2836.x ? out_var_TEXCOORD6.x : _2838.x, _2836.y ? out_var_TEXCOORD6.y : _2838.y, _2836.z ? out_var_TEXCOORD6.z : _2838.z);
    highp float _1592 = clamp(_1587, 0.0, 1.0);
    highp vec3 _1594 = _1404.xyz * _Globals._LightMaxLimit;
    bvec3 _2840 = isnan(_1586.xyz);
    bvec3 _2841 = isnan(_1594);
    highp vec3 _2842 = min(_1586.xyz, _1594);
    highp vec3 _2843 = vec3(_2840.x ? _1594.x : _2842.x, _2840.y ? _1594.y : _2842.y, _2840.z ? _1594.z : _2842.z);
    highp vec3 _1595 = vec3(_2841.x ? _1586.xyz.x : _2843.x, _2841.y ? _1586.xyz.y : _2843.y, _2841.z ? _1586.xyz.z : _2843.z);
    highp vec4 _1629;
    if (_684)
    {
        highp vec3 _1599 = _1595.xyz;
        highp vec3 _1609 = _1599 + _962.xyz;
        highp vec3 _1610 = _1599 * _962.xyz;
        bvec3 _1612 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1613 = vec3(_1612.x ? _962.xyz.x : _335.x, _1612.y ? _962.xyz.y : _335.y, _1612.z ? _962.xyz.z : _335.z);
        bvec3 _1615 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1623;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1621 = (-_1599) * _962.xyz + _1609;
            bvec3 _2845 = isnan(_1621);
            bvec3 _2846 = isnan(_1599);
            highp vec3 _2847 = max(_1621, _1599);
            highp vec3 _2848 = vec3(_2845.x ? _1599.x : _2847.x, _2845.y ? _1599.y : _2847.y, _2845.z ? _1599.z : _2847.z);
            _1623 = vec3(_2846.x ? _1621.x : _2848.x, _2846.y ? _1621.y : _2848.y, _2846.z ? _1621.z : _2848.z);
        }
        else
        {
            _1623 = vec3(_1615.x ? _1609.x : _1613.x, _1615.y ? _1609.y : _1613.y, _1615.z ? _1609.z : _1613.z);
        }
        bvec3 _1625 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1627 = mix(_1599, vec3(_1625.x ? _1610.x : _1623.x, _1625.y ? _1610.y : _1623.y, _1625.z ? _1610.z : _1623.z), vec3((-_962.w) * _Globals._Main2ndEnableLighting + _962.w));
        _1629 = vec4(_1627.x, _1627.y, _1627.z, _1586.w);
    }
    else
    {
        _1629 = vec4(_1595.x, _1595.y, _1595.z, _1586.w);
    }
    highp vec4 _1662;
    if (_968)
    {
        highp vec3 _1642 = _1629.xyz + _1246.xyz;
        highp vec3 _1643 = _1629.xyz * _1246.xyz;
        bvec3 _1645 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1646 = vec3(_1645.x ? _1246.xyz.x : _335.x, _1645.y ? _1246.xyz.y : _335.y, _1645.z ? _1246.xyz.z : _335.z);
        bvec3 _1648 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1656;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1654 = (-_1629.xyz) * _1246.xyz + _1642;
            bvec3 _2850 = isnan(_1654);
            bvec3 _2851 = isnan(_1629.xyz);
            highp vec3 _2852 = max(_1654, _1629.xyz);
            highp vec3 _2853 = vec3(_2850.x ? _1629.xyz.x : _2852.x, _2850.y ? _1629.xyz.y : _2852.y, _2850.z ? _1629.xyz.z : _2852.z);
            _1656 = vec3(_2851.x ? _1654.x : _2853.x, _2851.y ? _1654.y : _2853.y, _2851.z ? _1654.z : _2853.z);
        }
        else
        {
            _1656 = vec3(_1648.x ? _1642.x : _1646.x, _1648.y ? _1642.y : _1646.y, _1648.z ? _1642.z : _1646.z);
        }
        bvec3 _1658 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1660 = mix(_1629.xyz, vec3(_1658.x ? _1643.x : _1656.x, _1658.y ? _1643.y : _1656.y, _1658.z ? _1643.z : _1656.z), vec3((-_1246.w) * _Globals._Main3rdEnableLighting + _1246.w));
        _1662 = vec4(_1660.x, _1660.y, _1660.z, _1629.w);
    }
    else
    {
        _1662 = _1629;
    }
    highp vec4 _1708;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1678 = pow(clamp(1.0 - abs(dot(mix(_674, _669, vec3(_Globals._RimShadeNormalStrength)), _462)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1687 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1706 = mix(_1662.xyz, _1662.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1678 - _1687) / clamp(fwidth(_1678) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1687), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1708 = vec4(_1706.x, _1706.y, _1706.z, _1662.w);
    }
    else
    {
        _1708 = _1662;
    }
    highp vec4 _1781;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1732 = dot(normalize(((-_462) * _Globals._BacklightViewStrength) + _446), mix(_674, _669, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1742;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1742 = _1732 * clamp(_445 + distance(_446, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1742 = _1732;
        }
        highp float _1751 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1779 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1404.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_394 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_462, _446) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1742 - _1751) / clamp(fwidth(_1742) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1751), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1591 + _1708.xyz;
        _1781 = vec4(_1779.x, _1779.y, _1779.z, _1708.w);
    }
    else
    {
        _1781 = _1708;
    }
    highp vec3 _1784 = _1781.xyz * _1781.w;
    highp vec4 _2037;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1795 = dFdx(_669);
        highp vec3 _1796 = abs(_1795);
        highp vec3 _1797 = dFdy(_669);
        highp vec3 _1798 = abs(_1797);
        highp float _1799 = dot(_1796, _1796);
        highp float _1800 = dot(_1798, _1798);
        highp float _1801 = isnan(_1800) ? _1799 : (isnan(_1799) ? _1800 : max(_1799, _1800));
        highp float _1804 = (_1801 / (_1801 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1807 = clamp(1.0 - (isnan(_1804) ? 0.0 : (isnan(0.0) ? _1804 : max(0.0, _1804))), 0.0, 1.0);
        highp float _1808 = isnan(_1807) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1807 : min(_Globals._Smoothness, _1807));
        highp float _1809 = 1.0 - _1808;
        highp float _1810 = _1809 * _1809;
        highp vec3 _1813 = _1784.xyz;
        highp vec3 _1815 = _1813 - (_1813 * _Globals._Metallic);
        highp vec3 _1821 = mix(vec3(_Globals._Reflectance), _1404.xyz, vec3(_Globals._Metallic));
        highp vec4 _1823 = _Globals._ReflectionColor;
        highp vec4 _1832;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1831 = _1823;
            _1831.w = _1823.w * _1781.w;
            _1832 = _1831;
        }
        else
        {
            _1832 = _1823;
        }
        highp vec4 _1933;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1905;
            do
            {
                highp vec3 _1843 = mix(_674, _669, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1845 = normalize(_462 + _446);
                highp float _1847 = clamp(dot(_1843, _1845), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1856 = pow(_1847, 1.0 / _1810);
                    highp float _1863 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1905 = vec3(clamp((_1856 - _1863) / clamp(fwidth(_1856) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1863), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1875 = clamp(dot(_1843, _462), 0.0, 1.0);
                highp float _1877 = clamp(dot(_1843, _446), 0.0, 1.0);
                highp float _1880 = isnan(0.00200000009499490261077880859375) ? _1810 : (isnan(_1810) ? 0.00200000009499490261077880859375 : max(_1810, 0.00200000009499490261077880859375));
                highp float _1881 = 1.0 - _1880;
                highp float _1885 = _1880 * _1880;
                highp float _1888 = (_1847 * _1885 + (-_1847)) * _1847 + 1.0;
                highp float _1896 = 1.0 - clamp(dot(_446, _1845), 0.0, 1.0);
                _1905 = (_1821 + ((((((vec3(1.0) - _1821) * _1896) * _1896) * _1896) * _1896) * _1896)) * (((0.5 / ((_1877 * (_1875 * _1881 + _1880) + (_1875 * (_1877 * _1881 + _1880))) + 9.9999997473787516355514526367188e-06)) * (_1885 / (_1888 * _1888 + 1.0000000116860974230803549289703e-07))) * _1877);
                break;
            } while(false);
            highp vec3 _1906 = _1815.xyz;
            highp vec3 _1908 = _1832.xyz * _1591;
            highp vec3 _1913 = _1832.xyz * _1591 + _1906;
            highp vec3 _1914 = _1906 * _1908;
            bvec3 _1916 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1917 = vec3(_1916.x ? _1908.x : _335.x, _1916.y ? _1908.y : _335.y, _1916.z ? _1908.z : _335.z);
            bvec3 _1919 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1927;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1925 = (-_1906) * _1908 + _1913;
                bvec3 _2875 = isnan(_1925);
                bvec3 _2876 = isnan(_1906);
                highp vec3 _2877 = max(_1925, _1906);
                highp vec3 _2878 = vec3(_2875.x ? _1906.x : _2877.x, _2875.y ? _1906.y : _2877.y, _2875.z ? _1906.z : _2877.z);
                _1927 = vec3(_2876.x ? _1925.x : _2878.x, _2876.y ? _1925.y : _2878.y, _2876.z ? _1925.z : _2878.z);
            }
            else
            {
                _1927 = vec3(_1919.x ? _1913.x : _1917.x, _1919.y ? _1913.y : _1917.y, _1919.z ? _1913.z : _1917.z);
            }
            bvec3 _1929 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1931 = mix(_1906, vec3(_1929.x ? _1914.x : _1927.x, _1929.y ? _1914.y : _1927.y, _1929.z ? _1914.z : _1927.z), _1905 * _1832.w);
            _1933 = vec4(_1931.x, _1931.y, _1931.z, _1781.w);
        }
        else
        {
            _1933 = vec4(_1815.x, _1815.y, _1815.z, _1781.w);
        }
        highp vec4 _2036;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1955 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1962 = reflect(-_462, mix(_674, _669, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1965 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1962, _1809 * ((-4.19999980926513671875) * _1809 + 10.19999980926513671875));
            highp vec3 _1985 = ((_1965.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1965.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1591, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1991 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1962, _1809 * 8.0).xyz * 1.0;
            highp float _2002 = 1.0 - _671;
            highp vec3 _2016 = _1933.xyz + _1832.xyz;
            highp vec3 _2017 = _1933.xyz * _1832.xyz;
            bvec3 _2019 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2020 = vec3(_2019.x ? _1832.xyz.x : _335.x, _2019.y ? _1832.xyz.y : _335.y, _2019.z ? _1832.xyz.z : _335.z);
            bvec3 _2022 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2030;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2028 = (-_1933.xyz) * _1832.xyz + _2016;
                bvec3 _2880 = isnan(_2028);
                bvec3 _2881 = isnan(_1933.xyz);
                highp vec3 _2882 = max(_2028, _1933.xyz);
                highp vec3 _2883 = vec3(_2880.x ? _1933.xyz.x : _2882.x, _2880.y ? _1933.xyz.y : _2882.y, _2880.z ? _1933.xyz.z : _2882.z);
                _2030 = vec3(_2881.x ? _2028.x : _2883.x, _2881.y ? _2028.y : _2883.y, _2881.z ? _2028.z : _2883.z);
            }
            else
            {
                _2030 = vec3(_2022.x ? _2016.x : _2020.x, _2022.y ? _2016.y : _2020.y, _2022.z ? _2016.z : _2020.z);
            }
            bvec3 _2032 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2034 = mix(_1933.xyz, vec3(_2032.x ? _2017.x : _2030.x, _2032.y ? _2017.y : _2030.y, _2032.z ? _2017.z : _2030.z), ((vec3(_1955.x ? _1985.x : _1991.x, _1955.y ? _1985.y : _1991.y, _1955.z ? _1985.z : _1991.z) * (1.0 / (_1810 * _1810 + 1.0))) * mix(_1821, vec3(clamp(_1808 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2002 * _2002) * _2002) * _2002) * _2002))) * _1832.w);
            _2036 = vec4(_2034.x, _2034.y, _2034.z, _1933.w);
        }
        else
        {
            _2036 = _1933;
        }
        _2037 = _2036;
    }
    else
    {
        _2037 = vec4(_1784.x, _1784.y, _1784.z, _1781.w);
    }
    highp vec4 _2155;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2063 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2064 = vec3(_2063.x ? _462.x : _362.x, _2063.y ? _462.y : _362.y, _2063.z ? _462.z : _362.z);
        bvec3 _2065 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2066 = vec3(_2065.x ? vec3(0.0, 1.0, 0.0).x : _369.x, _2065.y ? vec3(0.0, 1.0, 0.0).y : _369.y, _2065.z ? vec3(0.0, 1.0, 0.0).z : _369.z);
        highp vec3 _2070 = normalize(_2066 - (_2064 * dot(_2064, _2066)));
        highp vec4 _2092 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_674, _669, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2064, _2070), _2070, _2064)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2093 = _2092.xyz;
        highp vec3 _2098 = mix(_2093, _2093 * _1591, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2099 = vec4(_2098.x, _2098.y, _2098.z, _2092.w);
        highp float _2100 = _2092.w;
        highp float _2104 = mix(_2100, _2100 * _1592, _Globals._MatCapShadowMask);
        _2099.w = _2104;
        highp vec4 _2114;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2113 = _2099;
            _2113.w = _2104 * _2037.w;
            _2114 = _2113;
        }
        else
        {
            _2114 = _2099;
        }
        highp vec3 _2128 = mix(_2114.xyz, _2114.xyz * _1404.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2135 = _2037.xyz + _2128;
        highp vec3 _2136 = _2037.xyz * _2128;
        bvec3 _2138 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2139 = vec3(_2138.x ? _2128.x : _335.x, _2138.y ? _2128.y : _335.y, _2138.z ? _2128.z : _335.z);
        bvec3 _2141 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2149;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2147 = (-_2037.xyz) * _2128 + _2135;
            bvec3 _2885 = isnan(_2147);
            bvec3 _2886 = isnan(_2037.xyz);
            highp vec3 _2887 = max(_2147, _2037.xyz);
            highp vec3 _2888 = vec3(_2885.x ? _2037.xyz.x : _2887.x, _2885.y ? _2037.xyz.y : _2887.y, _2885.z ? _2037.xyz.z : _2887.z);
            _2149 = vec3(_2886.x ? _2147.x : _2888.x, _2886.y ? _2147.y : _2888.y, _2886.z ? _2147.z : _2888.z);
        }
        else
        {
            _2149 = vec3(_2141.x ? _2135.x : _2139.x, _2141.y ? _2135.y : _2139.y, _2141.z ? _2135.z : _2139.z);
        }
        bvec3 _2151 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2153 = mix(_2037.xyz, vec3(_2151.x ? _2136.x : _2149.x, _2151.y ? _2136.y : _2149.y, _2151.z ? _2136.z : _2149.z), vec3(1.0) * (_Globals._MatCapBlend * ((_394 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2114.w)));
        _2155 = vec4(_2153.x, _2153.y, _2153.z, _2037.w);
    }
    else
    {
        _2155 = _2037;
    }
    highp vec4 _2272;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2180 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2181 = vec3(_2180.x ? _462.x : _362.x, _2180.y ? _462.y : _362.y, _2180.z ? _462.z : _362.z);
        bvec3 _2182 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2183 = vec3(_2182.x ? vec3(0.0, 1.0, 0.0).x : _369.x, _2182.y ? vec3(0.0, 1.0, 0.0).y : _369.y, _2182.z ? vec3(0.0, 1.0, 0.0).z : _369.z);
        highp vec3 _2187 = normalize(_2183 - (_2181 * dot(_2181, _2183)));
        highp vec4 _2209 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_674, _669, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2181, _2187), _2187, _2181)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2210 = _2209.xyz;
        highp vec3 _2215 = mix(_2210, _2210 * _1591, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2216 = vec4(_2215.x, _2215.y, _2215.z, _2209.w);
        highp float _2217 = _2209.w;
        highp float _2221 = mix(_2217, _2217 * _1592, _Globals._MatCap2ndShadowMask);
        _2216.w = _2221;
        highp vec4 _2231;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2230 = _2216;
            _2230.w = _2221 * _2155.w;
            _2231 = _2230;
        }
        else
        {
            _2231 = _2216;
        }
        highp vec3 _2245 = mix(_2231.xyz, _2231.xyz * _1404.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2252 = _2155.xyz + _2245;
        highp vec3 _2253 = _2155.xyz * _2245;
        bvec3 _2255 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2256 = vec3(_2255.x ? _2245.x : _335.x, _2255.y ? _2245.y : _335.y, _2255.z ? _2245.z : _335.z);
        bvec3 _2258 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2266;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2264 = (-_2155.xyz) * _2245 + _2252;
            bvec3 _2890 = isnan(_2264);
            bvec3 _2891 = isnan(_2155.xyz);
            highp vec3 _2892 = max(_2264, _2155.xyz);
            highp vec3 _2893 = vec3(_2890.x ? _2155.xyz.x : _2892.x, _2890.y ? _2155.xyz.y : _2892.y, _2890.z ? _2155.xyz.z : _2892.z);
            _2266 = vec3(_2891.x ? _2264.x : _2893.x, _2891.y ? _2264.y : _2893.y, _2891.z ? _2264.z : _2893.z);
        }
        else
        {
            _2266 = vec3(_2258.x ? _2252.x : _2256.x, _2258.y ? _2252.y : _2256.y, _2258.z ? _2252.z : _2256.z);
        }
        bvec3 _2268 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2270 = mix(_2155.xyz, vec3(_2268.x ? _2253.x : _2266.x, _2268.y ? _2253.y : _2266.y, _2268.z ? _2253.z : _2266.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_394 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2231.w)));
        _2272 = vec4(_2270.x, _2270.y, _2270.z, _2155.w);
    }
    else
    {
        _2272 = _2155;
    }
    highp vec4 _2428;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2291 = mix(_674, _669, vec3(_Globals._RimNormalStrength));
        highp float _2295 = dot(_446, _2291) * 0.5 + 0.5;
        highp float _2318 = (_394 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2291, _462)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2322 = mix(_2318, _2318 * clamp((_2295 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2323 = _2318 * clamp(((1.0 - _2295) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2333 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2342 = clamp((_2322 - _2333) / clamp(fwidth(_2322) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2333), 0.0, 1.0), 0.0, 1.0);
        highp float _2349 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2359 = clamp((_2323 * _Globals._RimDirStrength + (-_2349)) / clamp(fwidth(_2323 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2349), 0.0, 1.0), 0.0, 1.0);
        highp float _2363 = mix(_2342, _2342 * _1592, _Globals._RimShadowMask);
        highp float _2365 = mix(_2359, _2359 * _1592, _Globals._RimShadowMask);
        highp float _2374;
        highp float _2375;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2374 = _2365 * _2272.w;
            _2375 = _2363 * _2272.w;
        }
        else
        {
            _2374 = _2365;
            _2375 = _2363;
        }
        highp vec3 _2381 = vec3(1.0 - _Globals._RimEnableLighting) + (_1591 * _Globals._RimEnableLighting);
        highp vec3 _2383 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1404.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2384 = _2383 * _2381;
        highp vec3 _2390 = _2383 * _2381 + _2272.xyz;
        highp vec3 _2391 = _2272.xyz * _2384;
        bvec3 _2393 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2394 = vec3(_2393.x ? _2384.x : _335.x, _2393.y ? _2384.y : _335.y, _2393.z ? _2384.z : _335.z);
        bvec3 _2396 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2398 = _Globals._RimBlendMode == 2u;
        highp vec3 _2404;
        if (_2398)
        {
            highp vec3 _2402 = (-_2272.xyz) * _2384 + _2390;
            bvec3 _2895 = isnan(_2402);
            bvec3 _2896 = isnan(_2272.xyz);
            highp vec3 _2897 = max(_2402, _2272.xyz);
            highp vec3 _2898 = vec3(_2895.x ? _2272.xyz.x : _2897.x, _2895.y ? _2272.xyz.y : _2897.y, _2895.z ? _2272.xyz.z : _2897.z);
            _2404 = vec3(_2896.x ? _2402.x : _2898.x, _2896.y ? _2402.y : _2898.y, _2896.z ? _2402.z : _2898.z);
        }
        else
        {
            _2404 = vec3(_2396.x ? _2390.x : _2394.x, _2396.y ? _2390.y : _2394.y, _2396.z ? _2390.z : _2394.z);
        }
        bvec3 _2406 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2409 = mix(_2272.xyz, vec3(_2406.x ? _2391.x : _2404.x, _2406.y ? _2391.y : _2404.y, _2406.z ? _2391.z : _2404.z), vec3(_2375 * _Globals._RimColor.w)).xyz;
        highp vec3 _2411 = _Globals._RimIndirColor.xyz * _2381;
        highp vec3 _2415 = _Globals._RimIndirColor.xyz * _2381 + _2409;
        highp vec3 _2416 = _2409 * _2411;
        highp vec3 _2417 = vec3(_2393.x ? _2411.x : _335.x, _2393.y ? _2411.y : _335.y, _2393.z ? _2411.z : _335.z);
        highp vec3 _2424;
        if (_2398)
        {
            highp vec3 _2422 = (-_2409) * _2411 + _2415;
            bvec3 _2900 = isnan(_2422);
            bvec3 _2901 = isnan(_2409);
            highp vec3 _2902 = max(_2422, _2409);
            highp vec3 _2903 = vec3(_2900.x ? _2409.x : _2902.x, _2900.y ? _2409.y : _2902.y, _2900.z ? _2409.z : _2902.z);
            _2424 = vec3(_2901.x ? _2422.x : _2903.x, _2901.y ? _2422.y : _2903.y, _2901.z ? _2422.z : _2903.z);
        }
        else
        {
            _2424 = vec3(_2396.x ? _2415.x : _2417.x, _2396.y ? _2415.y : _2417.y, _2396.z ? _2415.z : _2417.z);
        }
        highp vec3 _2426 = mix(_2409, vec3(_2406.x ? _2416.x : _2424.x, _2406.y ? _2416.y : _2424.y, _2406.z ? _2416.z : _2424.z), vec3(_2374 * _Globals._RimIndirColor.w));
        _2428 = vec4(_2426.x, _2426.y, _2426.z, _2272.w);
    }
    else
    {
        _2428 = _2272;
    }
    highp vec4 _2544;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2439 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2440 = vec2(_2439.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2439.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2442 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2443 = vec2(_2442.x ? out_var_TEXCOORD1.xy.x : _2440.x, _2442.y ? out_var_TEXCOORD1.xy.y : _2440.y);
        bvec2 _2445 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2446 = vec2(_2445.x ? out_var_TEXCOORD1.zw.x : _2443.x, _2445.y ? out_var_TEXCOORD1.zw.y : _2443.y);
        bvec2 _2448 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2465 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2466 = sin(_2465);
        highp float _2467 = cos(_2465);
        highp vec2 _2468 = ((vec2(_2448.x ? _673.x : _2446.x, _2448.y ? _673.y : _2446.y) + (_477 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2469 = _2468.x;
        highp float _2470 = _2468.y;
        highp vec4 _2483 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2469 * _2467 + (-(_2470 * _2466)), _2469 * _2466 + (_2470 * _2467)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2484 = _Globals._EmissionColor * _2483;
        highp vec3 _2485 = _2484.xyz;
        highp vec3 _2491 = mix(_2485, _2485 * _450, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2505 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2511;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2511 = roundEven(_2505);
        }
        else
        {
            _2511 = _2505;
        }
        highp vec3 _2520 = mix(_2491, _2491 * _1404.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2524 = _2428.xyz + _2520;
        highp vec3 _2525 = _2428.xyz * _2520;
        bvec3 _2527 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2528 = vec3(_2527.x ? _2520.x : _335.x, _2527.y ? _2520.y : _335.y, _2527.z ? _2520.z : _335.z);
        bvec3 _2530 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2538;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2536 = (-_2428.xyz) * _2520 + _2524;
            bvec3 _2905 = isnan(_2536);
            bvec3 _2906 = isnan(_2428.xyz);
            highp vec3 _2907 = max(_2536, _2428.xyz);
            highp vec3 _2908 = vec3(_2905.x ? _2428.xyz.x : _2907.x, _2905.y ? _2428.xyz.y : _2907.y, _2905.z ? _2428.xyz.z : _2907.z);
            _2538 = vec3(_2906.x ? _2536.x : _2908.x, _2906.y ? _2536.y : _2908.y, _2906.z ? _2536.z : _2908.z);
        }
        else
        {
            _2538 = vec3(_2530.x ? _2524.x : _2528.x, _2530.y ? _2524.y : _2528.y, _2530.z ? _2524.z : _2528.z);
        }
        bvec3 _2540 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2542 = mix(_2428.xyz, vec3(_2540.x ? _2525.x : _2538.x, _2540.y ? _2525.y : _2538.y, _2540.z ? _2525.z : _2538.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2511, _Globals._EmissionBlink.x)) * _2484.w) * _2428.w));
        _2544 = vec4(_2542.x, _2542.y, _2542.z, _2428.w);
    }
    else
    {
        _2544 = _2428;
    }
    highp vec4 _2660;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2555 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2556 = vec2(_2555.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2555.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2558 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2559 = vec2(_2558.x ? out_var_TEXCOORD1.xy.x : _2556.x, _2558.y ? out_var_TEXCOORD1.xy.y : _2556.y);
        bvec2 _2561 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2562 = vec2(_2561.x ? out_var_TEXCOORD1.zw.x : _2559.x, _2561.y ? out_var_TEXCOORD1.zw.y : _2559.y);
        bvec2 _2564 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2581 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2582 = sin(_2581);
        highp float _2583 = cos(_2581);
        highp vec2 _2584 = ((vec2(_2564.x ? _673.x : _2562.x, _2564.y ? _673.y : _2562.y) + (_477 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2585 = _2584.x;
        highp float _2586 = _2584.y;
        highp vec4 _2599 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2585 * _2583 + (-(_2586 * _2582)), _2585 * _2582 + (_2586 * _2583)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2600 = _Globals._Emission2ndColor * _2599;
        highp vec3 _2601 = _2600.xyz;
        highp vec3 _2607 = mix(_2601, _2601 * _450, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2621 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2627;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2627 = roundEven(_2621);
        }
        else
        {
            _2627 = _2621;
        }
        highp vec3 _2636 = mix(_2607, _2607 * _1404.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2640 = _2544.xyz + _2636;
        highp vec3 _2641 = _2544.xyz * _2636;
        bvec3 _2643 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2644 = vec3(_2643.x ? _2636.x : _335.x, _2643.y ? _2636.y : _335.y, _2643.z ? _2636.z : _335.z);
        bvec3 _2646 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2654;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2652 = (-_2544.xyz) * _2636 + _2640;
            bvec3 _2910 = isnan(_2652);
            bvec3 _2911 = isnan(_2544.xyz);
            highp vec3 _2912 = max(_2652, _2544.xyz);
            highp vec3 _2913 = vec3(_2910.x ? _2544.xyz.x : _2912.x, _2910.y ? _2544.xyz.y : _2912.y, _2910.z ? _2544.xyz.z : _2912.z);
            _2654 = vec3(_2911.x ? _2652.x : _2913.x, _2911.y ? _2652.y : _2913.y, _2911.z ? _2652.z : _2913.z);
        }
        else
        {
            _2654 = vec3(_2646.x ? _2640.x : _2644.x, _2646.y ? _2640.y : _2644.y, _2646.z ? _2640.z : _2644.z);
        }
        bvec3 _2656 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2658 = mix(_2544.xyz, vec3(_2656.x ? _2641.x : _2654.x, _2656.y ? _2641.y : _2654.y, _2656.z ? _2641.z : _2654.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2627, _Globals._Emission2ndBlink.x)) * _2600.w) * _2544.w));
        _2660 = vec4(_2658.x, _2658.y, _2658.z, _2544.w);
    }
    else
    {
        _2660 = _2544;
    }
    bvec3 _2670 = bvec3(_394 < 0.0);
    highp vec3 _2671 = (_2660.xyz + ((_Globals._DissolveColor.xyz * _1405) * _2660.w)).xyz;
    highp vec3 _2679 = mix(_2671, _Globals._BackfaceColor.xyz * _1591, vec3(_Globals._BackfaceColor.w));
    highp float _2700 = (_394 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _455) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2714 = vec3(_2670.x ? _2679.x : _2671.x, _2670.y ? _2679.y : _2671.y, _2670.z ? _2679.z : _2671.z).xyz;
    highp vec3 _2725 = mix(_2714, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2714, vec3(pow(clamp(1.0 - abs(dot(_674, _462)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2700));
    highp vec4 _2726 = vec4(_2725.x, _2725.y, _2725.z, _2660.w);
    highp float _2728 = mix(_2660.w, _2660.w * _Globals._DistanceFadeColor.w, _2700);
    _2726.w = _2728;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2728, _2726, vec4(out_var_TEXCOORD9));
}
