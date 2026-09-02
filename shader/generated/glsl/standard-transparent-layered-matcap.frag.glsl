#version 300 es
precision mediump float;
precision highp int;

vec3 _298;
vec3 _303;
float _304;

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
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex;
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
    highp vec3 _324 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _331 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _347 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _356 = float(gl_FrontFacing ? 1 : (-1));
    highp float _407;
    do
    {
        highp vec3 _363 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _364 = _363.xy;
        highp float _370 = _363.z;
        if ((any(lessThan(_364, vec2(0.0))) || any(greaterThan(_364, vec2(1.0)))) || (_370 > 1.0))
        {
            _407 = 1.0;
            break;
        }
        highp float _380 = _370 + _Globals.uShadowBias;
        _407 = (((step(_380, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _364), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_380, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _364), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_380, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _364), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_380, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _364), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _408 = normalize(out_var_TEXCOORD7);
    highp vec3 _412 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _416 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _417 = length(_416);
    highp vec3 _424 = normalize(_416);
    highp mat3 _433 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _438 = bvec2(_356 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _439 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _452 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _453 = sin(_452);
    highp float _454 = cos(_452);
    highp vec2 _455 = (vec2(_438.x ? _439.x : out_var_TEXCOORD0.xy.x, _438.y ? _439.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _456 = _455.x;
    highp float _457 = _455.y;
    highp vec2 _468 = (vec2(_456 * _454 + (-(_457 * _453)), _456 * _453 + (_457 * _454)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _472 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _468);
    highp vec3 _479 = pow(abs(_472.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _480 = _479.z;
    highp float _481 = _479.y;
    bvec4 _483 = bvec4(_480 > _481);
    highp vec4 _484 = vec4(_480, _481, -1.0, 0.666666686534881591796875);
    highp vec4 _485 = vec4(_481, _480, 0.0, -0.3333333432674407958984375);
    highp vec4 _486 = vec4(_483.x ? _484.x : _485.x, _483.y ? _484.y : _485.y, _483.z ? _484.z : _485.z, _483.w ? _484.w : _485.w);
    highp float _487 = _486.x;
    highp float _488 = _479.x;
    bvec4 _490 = bvec4(_487 > _488);
    highp vec4 _493 = vec4(_487, _486.yw, _488);
    highp vec4 _495 = vec4(_488, _486.yz, _487);
    highp vec4 _496 = vec4(_490.x ? _493.x : _495.x, _490.y ? _493.y : _495.y, _490.z ? _493.z : _495.z, _490.w ? _493.w : _495.w);
    highp float _501 = _496.x - (isnan(_496.y) ? _496.w : (isnan(_496.w) ? _496.y : min(_496.w, _496.y)));
    highp float _514 = clamp((_501 / (_496.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _517 = clamp(_496.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _531 = vec3((-_517) * _514 + _517) + (clamp(abs((fract(vec3(abs(_496.z + ((_496.w - _496.y) / (6.0 * _501 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_517 * _514));
    highp vec4 _535 = vec4(_531.x, _531.y, _531.z, _472.w) * _Globals._Color;
    highp vec3 _567;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _548 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _468 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _548.w = _548.w * _548.x;
        highp vec2 _559 = ((_548.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _560 = vec3(_559.x, _559.y, _303.z);
        highp vec2 _561 = _559.xy;
        _560.z = sqrt(1.0 - clamp(dot(_561, _561), 0.0, 1.0));
        _567 = _560;
    }
    else
    {
        _567 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _616;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _576 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _577 = vec2(_576.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _576.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _579 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _580 = vec2(_579.x ? out_var_TEXCOORD1.xy.x : _577.x, _579.y ? out_var_TEXCOORD1.xy.y : _577.y);
        bvec2 _582 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _592 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_582.x ? out_var_TEXCOORD1.zw.x : _580.x, _582.y ? out_var_TEXCOORD1.zw.y : _580.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _592.w = _592.w * _592.x;
        highp vec2 _604 = (((_592.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _616 = vec3(_567.xy + _604, _567.z * sqrt(1.0 - clamp(dot(_604, _604), 0.0, 1.0)));
    }
    else
    {
        _616 = _567;
    }
    highp vec3 _618 = normalize(_433 * _616);
    bvec3 _623 = bvec3(_356 < (_Globals._FlipNormal - 1.0));
    highp vec3 _624 = -_618;
    highp vec3 _625 = vec3(_623.x ? _624.x : _618.x, _623.y ? _624.y : _618.y, _623.z ? _624.z : _618.z);
    highp float _627 = clamp(dot(_625, _424), 0.0, 1.0);
    highp vec3 _628 = normalize(out_var_TEXCOORD4);
    highp vec2 _632 = ((_625 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _331, _324)).xy * 0.5) + vec2(0.5);
    bool _633 = out_var_TEXCOORD5.w > 0.0;
    bool _638 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _921;
    highp vec4 _922;
    if (_638)
    {
        bvec2 _644 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _645 = vec2(_644.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _644.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _647 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _648 = vec2(_647.x ? out_var_TEXCOORD1.xy.x : _645.x, _647.y ? out_var_TEXCOORD1.xy.y : _645.y);
        bvec2 _650 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _651 = vec2(_650.x ? out_var_TEXCOORD1.zw.x : _648.x, _650.y ? out_var_TEXCOORD1.zw.y : _648.y);
        bvec2 _653 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _654 = vec2(_653.x ? _632.x : _651.x, _653.y ? _632.y : _651.y);
        highp vec4 _693 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _694 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _702;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _701 = _654;
            _701.x = abs(_654.x - 0.5) + 0.5;
            _702 = _701;
        }
        else
        {
            _702 = _654;
        }
        highp vec2 _703 = _693.xy;
        highp vec2 _704 = _693.zw;
        highp vec2 _705 = _702 * _703 + _704;
        highp vec2 _714;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_654.x < 0.5))
        {
            highp vec2 _713 = _705;
            _713.x = 1.0 - _705.x;
            _714 = _713;
        }
        else
        {
            _714 = _705;
        }
        highp vec2 _721;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _633)
        {
            highp vec2 _720 = _714;
            _720.x = 1.0 - _714.x;
            _721 = _720;
        }
        else
        {
            _721 = _714;
        }
        highp vec2 _726;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _633)
        {
            highp vec2 _725 = _721;
            _725.x = -1.0;
            _726 = _725;
        }
        else
        {
            _726 = _721;
        }
        highp vec2 _732;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_633))
        {
            highp vec2 _731 = _726;
            _731.x = -1.0;
            _732 = _731;
        }
        else
        {
            _732 = _726;
        }
        highp float _735 = sin(_694);
        highp float _736 = cos(_694);
        highp vec2 _737 = ((_732 - _704) / _703) - vec2(0.5);
        highp float _738 = _737.x;
        highp float _739 = _737.y;
        highp vec2 _747 = (vec2(_738 * _736 + (-(_739 * _735)), _738 * _735 + (_739 * _736)) + vec2(0.5)) * _703 + _704;
        uint _751 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _755 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _751 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _751);
        highp float _756 = _747.x;
        highp float _757 = _747.y;
        uint _764 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _774 = ((mix(vec2(_756, 1.0 - _757), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_755 % _764), float(_755 / _764))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _774.y = 1.0 - _774.y;
        highp vec4 _779 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _774);
        highp vec4 _795;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _782 = _779.x;
            highp float _783 = _779.y;
            highp float _784 = _779.z;
            highp float _785 = isnan(_783) ? _782 : (isnan(_782) ? _783 : min(_782, _783));
            highp float _786 = isnan(_783) ? _782 : (isnan(_782) ? _783 : max(_782, _783));
            highp float _787 = isnan(_784) ? _786 : (isnan(_786) ? _784 : min(_786, _784));
            highp float _788 = isnan(_787) ? _785 : (isnan(_785) ? _787 : max(_785, _787));
            _795 = vec4(1.0, 1.0, 1.0, clamp((_788 - 0.5) / clamp(fwidth(_788), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _795 = _779;
        }
        highp vec4 _818;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _799 = clamp(_627 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _802 = 0.5 - abs(_756 - 0.5);
            highp float _809 = 0.5 - abs(_757 - 0.5);
            highp vec4 _817 = _795;
            _817.w = _795.w * (clamp(_802 / clamp(fwidth(_802), 9.9999997473787516355514526367188e-05, _799), 0.0, 1.0) * clamp(_809 / clamp(fwidth(_809), 9.9999997473787516355514526367188e-05, _799), 0.0, 1.0));
            _818 = _817;
        }
        else
        {
            _818 = _795;
        }
        highp vec4 _819 = _Globals._Color2nd * _818;
        highp float _825 = _819.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _468).x;
        _819.w = mix(_825, _825 * clamp((_417 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _851;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_356 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_356 < 0.0)))
        {
            highp vec4 _850 = _819;
            _850.w = 0.0;
            _851 = _850;
        }
        else
        {
            _851 = _819;
        }
        highp vec4 _890;
        highp vec4 _891;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _862;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _861 = _535;
                _861.w = _851.w;
                _862 = _861;
            }
            else
            {
                _862 = _535;
            }
            highp vec4 _870;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _869 = _862;
                _869.w = _862.w * _851.w;
                _870 = _869;
            }
            else
            {
                _870 = _862;
            }
            highp vec4 _879;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _878 = _870;
                _878.w = clamp(_870.w + _851.w, 0.0, 1.0);
                _879 = _878;
            }
            else
            {
                _879 = _870;
            }
            highp vec4 _888;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _887 = _879;
                _887.w = clamp(_879.w - _851.w, 0.0, 1.0);
                _888 = _887;
            }
            else
            {
                _888 = _879;
            }
            highp vec4 _889 = _851;
            _889.w = 1.0;
            _890 = _889;
            _891 = _888;
        }
        else
        {
            _890 = _851;
            _891 = _535;
        }
        highp vec3 _901 = _891.xyz + _890.xyz;
        highp vec3 _902 = _891.xyz * _890.xyz;
        bvec3 _904 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _905 = vec3(_904.x ? _890.xyz.x : _298.x, _904.y ? _890.xyz.y : _298.y, _904.z ? _890.xyz.z : _298.z);
        bvec3 _907 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _915;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _913 = (-_891.xyz) * _890.xyz + _901;
            bvec3 _2475 = isnan(_913);
            bvec3 _2476 = isnan(_891.xyz);
            highp vec3 _2477 = max(_913, _891.xyz);
            highp vec3 _2478 = vec3(_2475.x ? _891.xyz.x : _2477.x, _2475.y ? _891.xyz.y : _2477.y, _2475.z ? _891.xyz.z : _2477.z);
            _915 = vec3(_2476.x ? _913.x : _2478.x, _2476.y ? _913.y : _2478.y, _2476.z ? _913.z : _2478.z);
        }
        else
        {
            _915 = vec3(_907.x ? _901.x : _905.x, _907.y ? _901.y : _905.y, _907.z ? _901.z : _905.z);
        }
        bvec3 _917 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _919 = mix(_891.xyz, vec3(_917.x ? _902.x : _915.x, _917.y ? _902.y : _915.y, _917.z ? _902.z : _915.z), vec3(_890.w * _Globals._Main2ndEnableLighting));
        _921 = _890;
        _922 = vec4(_919.x, _919.y, _919.z, _891.w);
    }
    else
    {
        _921 = _Globals._Color2nd;
        _922 = _535;
    }
    bool _927 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1210;
    highp vec4 _1211;
    if (_927)
    {
        bvec2 _933 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _934 = vec2(_933.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _933.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _936 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _937 = vec2(_936.x ? out_var_TEXCOORD1.xy.x : _934.x, _936.y ? out_var_TEXCOORD1.xy.y : _934.y);
        bvec2 _939 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _940 = vec2(_939.x ? out_var_TEXCOORD1.zw.x : _937.x, _939.y ? out_var_TEXCOORD1.zw.y : _937.y);
        bvec2 _942 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _943 = vec2(_942.x ? _632.x : _940.x, _942.y ? _632.y : _940.y);
        highp vec4 _982 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _983 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _991;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _990 = _943;
            _990.x = abs(_943.x - 0.5) + 0.5;
            _991 = _990;
        }
        else
        {
            _991 = _943;
        }
        highp vec2 _992 = _982.xy;
        highp vec2 _993 = _982.zw;
        highp vec2 _994 = _991 * _992 + _993;
        highp vec2 _1003;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_943.x < 0.5))
        {
            highp vec2 _1002 = _994;
            _1002.x = 1.0 - _994.x;
            _1003 = _1002;
        }
        else
        {
            _1003 = _994;
        }
        highp vec2 _1010;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _633)
        {
            highp vec2 _1009 = _1003;
            _1009.x = 1.0 - _1003.x;
            _1010 = _1009;
        }
        else
        {
            _1010 = _1003;
        }
        highp vec2 _1015;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _633)
        {
            highp vec2 _1014 = _1010;
            _1014.x = -1.0;
            _1015 = _1014;
        }
        else
        {
            _1015 = _1010;
        }
        highp vec2 _1021;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_633))
        {
            highp vec2 _1020 = _1015;
            _1020.x = -1.0;
            _1021 = _1020;
        }
        else
        {
            _1021 = _1015;
        }
        highp float _1024 = sin(_983);
        highp float _1025 = cos(_983);
        highp vec2 _1026 = ((_1021 - _993) / _992) - vec2(0.5);
        highp float _1027 = _1026.x;
        highp float _1028 = _1026.y;
        highp vec2 _1036 = (vec2(_1027 * _1025 + (-(_1028 * _1024)), _1027 * _1024 + (_1028 * _1025)) + vec2(0.5)) * _992 + _993;
        uint _1040 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1044 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1040 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1040);
        highp float _1045 = _1036.x;
        highp float _1046 = _1036.y;
        uint _1053 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1063 = ((mix(vec2(_1045, 1.0 - _1046), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1044 % _1053), float(_1044 / _1053))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1063.y = 1.0 - _1063.y;
        highp vec4 _1068 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1063);
        highp vec4 _1084;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1071 = _1068.x;
            highp float _1072 = _1068.y;
            highp float _1073 = _1068.z;
            highp float _1074 = isnan(_1072) ? _1071 : (isnan(_1071) ? _1072 : min(_1071, _1072));
            highp float _1075 = isnan(_1072) ? _1071 : (isnan(_1071) ? _1072 : max(_1071, _1072));
            highp float _1076 = isnan(_1073) ? _1075 : (isnan(_1075) ? _1073 : min(_1075, _1073));
            highp float _1077 = isnan(_1076) ? _1074 : (isnan(_1074) ? _1076 : max(_1074, _1076));
            _1084 = vec4(1.0, 1.0, 1.0, clamp((_1077 - 0.5) / clamp(fwidth(_1077), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1084 = _1068;
        }
        highp vec4 _1107;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1088 = clamp(_627 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1091 = 0.5 - abs(_1045 - 0.5);
            highp float _1098 = 0.5 - abs(_1046 - 0.5);
            highp vec4 _1106 = _1084;
            _1106.w = _1084.w * (clamp(_1091 / clamp(fwidth(_1091), 9.9999997473787516355514526367188e-05, _1088), 0.0, 1.0) * clamp(_1098 / clamp(fwidth(_1098), 9.9999997473787516355514526367188e-05, _1088), 0.0, 1.0));
            _1107 = _1106;
        }
        else
        {
            _1107 = _1084;
        }
        highp vec4 _1108 = _Globals._Color3rd * _1107;
        highp float _1114 = _1108.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _468).x;
        _1108.w = mix(_1114, _1114 * clamp((_417 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1140;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_356 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_356 < 0.0)))
        {
            highp vec4 _1139 = _1108;
            _1139.w = 0.0;
            _1140 = _1139;
        }
        else
        {
            _1140 = _1108;
        }
        highp vec4 _1179;
        highp vec4 _1180;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1151;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1150 = _922;
                _1150.w = _1140.w;
                _1151 = _1150;
            }
            else
            {
                _1151 = _922;
            }
            highp vec4 _1159;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1158 = _1151;
                _1158.w = _1151.w * _1140.w;
                _1159 = _1158;
            }
            else
            {
                _1159 = _1151;
            }
            highp vec4 _1168;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1167 = _1159;
                _1167.w = clamp(_1159.w + _1140.w, 0.0, 1.0);
                _1168 = _1167;
            }
            else
            {
                _1168 = _1159;
            }
            highp vec4 _1177;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1176 = _1168;
                _1176.w = clamp(_1168.w - _1140.w, 0.0, 1.0);
                _1177 = _1176;
            }
            else
            {
                _1177 = _1168;
            }
            highp vec4 _1178 = _1140;
            _1178.w = 1.0;
            _1179 = _1178;
            _1180 = _1177;
        }
        else
        {
            _1179 = _1140;
            _1180 = _922;
        }
        highp vec3 _1190 = _1180.xyz + _1179.xyz;
        highp vec3 _1191 = _1180.xyz * _1179.xyz;
        bvec3 _1193 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1194 = vec3(_1193.x ? _1179.xyz.x : _298.x, _1193.y ? _1179.xyz.y : _298.y, _1193.z ? _1179.xyz.z : _298.z);
        bvec3 _1196 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1204;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1202 = (-_1180.xyz) * _1179.xyz + _1190;
            bvec3 _2500 = isnan(_1202);
            bvec3 _2501 = isnan(_1180.xyz);
            highp vec3 _2502 = max(_1202, _1180.xyz);
            highp vec3 _2503 = vec3(_2500.x ? _1180.xyz.x : _2502.x, _2500.y ? _1180.xyz.y : _2502.y, _2500.z ? _1180.xyz.z : _2502.z);
            _1204 = vec3(_2501.x ? _1202.x : _2503.x, _2501.y ? _1202.y : _2503.y, _2501.z ? _1202.z : _2503.z);
        }
        else
        {
            _1204 = vec3(_1196.x ? _1190.x : _1194.x, _1196.y ? _1190.y : _1194.y, _1196.z ? _1190.z : _1194.z);
        }
        bvec3 _1206 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1208 = mix(_1180.xyz, vec3(_1206.x ? _1191.x : _1204.x, _1206.y ? _1191.y : _1204.y, _1206.z ? _1191.z : _1204.z), vec3(_1179.w * _Globals._Main3rdEnableLighting));
        _1210 = _1179;
        _1211 = vec4(_1208.x, _1208.y, _1208.z, _1180.w);
    }
    else
    {
        _1210 = _Globals._Color3rd;
        _1211 = _922;
    }
    highp vec4 _1251;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1222 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1227;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1226 = _1211;
            _1226.w = _1222;
            _1227 = _1226;
        }
        else
        {
            _1227 = _1211;
        }
        highp vec4 _1234;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1233 = _1227;
            _1233.w = _1227.w * _1222;
            _1234 = _1233;
        }
        else
        {
            _1234 = _1227;
        }
        highp vec4 _1242;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1241 = _1234;
            _1241.w = clamp(_1234.w + _1222, 0.0, 1.0);
            _1242 = _1241;
        }
        else
        {
            _1242 = _1234;
        }
        highp vec4 _1250;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1249 = _1242;
            _1249.w = clamp(_1242.w - _1222, 0.0, 1.0);
            _1250 = _1249;
        }
        else
        {
            _1250 = _1242;
        }
        _1251 = _1250;
    }
    else
    {
        _1251 = _1211;
    }
    highp vec4 _1346;
    highp float _1347;
    if ((_347 & 1) != 0)
    {
        highp vec4 _1255 = _1251;
        _1255.w = 1.0;
        highp vec2 _1261 = roundEven(_Globals._DissolveParams.xy);
        highp float _1262 = _1261.x;
        highp vec4 _1335;
        highp float _1336;
        if (_1262 != 0.0)
        {
            highp float _1278;
            highp float _1279;
            if (_1262 == 1.0)
            {
                _1278 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1279 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1278 = 0.0;
                _1279 = 1.0;
            }
            highp float _1310;
            highp float _1311;
            if (_1262 == 2.0)
            {
                highp vec2 _1288 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1299 = (_1261.y == 1.0) ? (vec2(_1288.x * cos(_Globals._DissolvePos.w) + (-(_1288.y * sin(_Globals._DissolvePos.w))), _304) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1310 = 1.0 - clamp(abs(_1299 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1311 = _1279 * float(_1299 > _Globals._DissolveParams.z);
            }
            else
            {
                _1310 = _1278;
                _1311 = _1279;
            }
            highp float _1332;
            highp float _1333;
            if (_1262 == 3.0)
            {
                highp float _1321 = (_1261.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1332 = 1.0 - clamp(abs(_1321 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1333 = _1311 * float(_1321 > _Globals._DissolveParams.z);
            }
            else
            {
                _1332 = _1310;
                _1333 = _1311;
            }
            highp vec4 _1334 = _1255;
            _1334.w = _1333;
            _1335 = _1334;
            _1336 = _1332;
        }
        else
        {
            _1335 = _1255;
            _1336 = 0.0;
        }
        highp vec4 _1342;
        if ((_347 & 2) != 0)
        {
            highp vec4 _1341 = _1335;
            _1341.w = 1.0 - _1335.w;
            _1342 = _1341;
        }
        else
        {
            _1342 = _1335;
        }
        highp vec4 _1345 = _1342;
        _1345.w = _1342.w * _1251.w;
        _1346 = _1345;
        _1347 = _1336;
    }
    else
    {
        _1346 = _1251;
        _1347 = 0.0;
    }
    if ((_1346.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1528;
    highp float _1529;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1380 = clamp(dot(_408, mix(_628, _625, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1383 = clamp(dot(_408, mix(_628, _625, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1386 = clamp(dot(_408, mix(_628, _625, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1390 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1393 = clamp(_407 + distance(_408, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1396 = mix(1.0, _1393, _Globals._ShadowReceive);
        highp float _1397 = _1380 * _1396;
        highp float _1400 = mix(1.0, _1393, _Globals._Shadow2ndReceive);
        highp float _1404 = mix(1.0, _1393, _Globals._Shadow3rdReceive);
        highp float _1415 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1416 = clamp(_1415, 0.0, 1.0);
        highp float _1418 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1431 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1445 = clamp(_1415 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1458 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1473 = (_356 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1474 = clamp((_1380 * _1396 + (-_1416)) / clamp(fwidth(_1397) * _1390 + (_1418 - _1416), 0.0, 1.0), 0.0, 1.0) * _1473;
        highp vec3 _1506 = mix(mix(_1346.xyz * _Globals._ShadowColor.xyz, (_1346.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1383 * _1400 + (-_1431)) / clamp(fwidth(_1383 * _1400) * _1390 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1431), 0.0, 1.0), 0.0, 1.0) * _1473)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1346.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1386 * _1404 + (-_1458)) / clamp(fwidth(_1386 * _1404) * _1390 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1458), 0.0, 1.0), 0.0, 1.0) * _1473)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1512 = _1346.xyz * out_var_TEXCOORD6;
        highp vec3 _1518 = mix(mix(_1506, _1506 * _1346.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1346.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2505 = isnan(_1518);
        bvec3 _2506 = isnan(_1512);
        highp vec3 _2507 = min(_1518, _1512);
        highp vec3 _2508 = vec3(_2505.x ? _1512.x : _2507.x, _2505.y ? _1512.y : _2507.y, _2505.z ? _1512.z : _2507.z);
        highp vec3 _1526 = mix(mix(vec3(_2506.x ? _1518.x : _2508.x, _2506.y ? _1518.y : _2508.y, _2506.z ? _1518.z : _2508.z), _1512, _Globals._ShadowBorderColor.xyz * (clamp((_1380 * _1396 + (-_1445)) / clamp(fwidth(_1397) * _1390 + (_1418 - _1445), 0.0, 1.0), 0.0, 1.0) * _1473)), _1512, vec3(mix(1.0, _1474, _Globals._ShadowStrength)));
        _1528 = vec4(_1526.x, _1526.y, _1526.z, _1346.w);
        _1529 = _1474;
    }
    else
    {
        highp vec3 _1362 = _1346.xyz * out_var_TEXCOORD6;
        _1528 = vec4(_1362.x, _1362.y, _1362.z, _1346.w);
        _1529 = 1.0;
    }
    highp vec3 _1532 = vec3(_Globals._LightMaxLimit);
    bvec3 _2510 = isnan(out_var_TEXCOORD6);
    bvec3 _2511 = isnan(_1532);
    highp vec3 _2512 = min(out_var_TEXCOORD6, _1532);
    highp vec3 _2513 = vec3(_2510.x ? _1532.x : _2512.x, _2510.y ? _1532.y : _2512.y, _2510.z ? _1532.z : _2512.z);
    highp vec3 _1533 = vec3(_2511.x ? out_var_TEXCOORD6.x : _2513.x, _2511.y ? out_var_TEXCOORD6.y : _2513.y, _2511.z ? out_var_TEXCOORD6.z : _2513.z);
    highp float _1534 = clamp(_1529, 0.0, 1.0);
    highp vec3 _1536 = _1346.xyz * _Globals._LightMaxLimit;
    bvec3 _2515 = isnan(_1528.xyz);
    bvec3 _2516 = isnan(_1536);
    highp vec3 _2517 = min(_1528.xyz, _1536);
    highp vec3 _2518 = vec3(_2515.x ? _1536.x : _2517.x, _2515.y ? _1536.y : _2517.y, _2515.z ? _1536.z : _2517.z);
    highp vec3 _1537 = vec3(_2516.x ? _1528.xyz.x : _2518.x, _2516.y ? _1528.xyz.y : _2518.y, _2516.z ? _1528.xyz.z : _2518.z);
    highp vec4 _1571;
    if (_638)
    {
        highp vec3 _1541 = _1537.xyz;
        highp vec3 _1551 = _1541 + _921.xyz;
        highp vec3 _1552 = _1541 * _921.xyz;
        bvec3 _1554 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1555 = vec3(_1554.x ? _921.xyz.x : _298.x, _1554.y ? _921.xyz.y : _298.y, _1554.z ? _921.xyz.z : _298.z);
        bvec3 _1557 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1565;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1563 = (-_1541) * _921.xyz + _1551;
            bvec3 _2520 = isnan(_1563);
            bvec3 _2521 = isnan(_1541);
            highp vec3 _2522 = max(_1563, _1541);
            highp vec3 _2523 = vec3(_2520.x ? _1541.x : _2522.x, _2520.y ? _1541.y : _2522.y, _2520.z ? _1541.z : _2522.z);
            _1565 = vec3(_2521.x ? _1563.x : _2523.x, _2521.y ? _1563.y : _2523.y, _2521.z ? _1563.z : _2523.z);
        }
        else
        {
            _1565 = vec3(_1557.x ? _1551.x : _1555.x, _1557.y ? _1551.y : _1555.y, _1557.z ? _1551.z : _1555.z);
        }
        bvec3 _1567 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1569 = mix(_1541, vec3(_1567.x ? _1552.x : _1565.x, _1567.y ? _1552.y : _1565.y, _1567.z ? _1552.z : _1565.z), vec3((-_921.w) * _Globals._Main2ndEnableLighting + _921.w));
        _1571 = vec4(_1569.x, _1569.y, _1569.z, _1528.w);
    }
    else
    {
        _1571 = vec4(_1537.x, _1537.y, _1537.z, _1528.w);
    }
    highp vec4 _1604;
    if (_927)
    {
        highp vec3 _1584 = _1571.xyz + _1210.xyz;
        highp vec3 _1585 = _1571.xyz * _1210.xyz;
        bvec3 _1587 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1588 = vec3(_1587.x ? _1210.xyz.x : _298.x, _1587.y ? _1210.xyz.y : _298.y, _1587.z ? _1210.xyz.z : _298.z);
        bvec3 _1590 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1598;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1596 = (-_1571.xyz) * _1210.xyz + _1584;
            bvec3 _2525 = isnan(_1596);
            bvec3 _2526 = isnan(_1571.xyz);
            highp vec3 _2527 = max(_1596, _1571.xyz);
            highp vec3 _2528 = vec3(_2525.x ? _1571.xyz.x : _2527.x, _2525.y ? _1571.xyz.y : _2527.y, _2525.z ? _1571.xyz.z : _2527.z);
            _1598 = vec3(_2526.x ? _1596.x : _2528.x, _2526.y ? _1596.y : _2528.y, _2526.z ? _1596.z : _2528.z);
        }
        else
        {
            _1598 = vec3(_1590.x ? _1584.x : _1588.x, _1590.y ? _1584.y : _1588.y, _1590.z ? _1584.z : _1588.z);
        }
        bvec3 _1600 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1602 = mix(_1571.xyz, vec3(_1600.x ? _1585.x : _1598.x, _1600.y ? _1585.y : _1598.y, _1600.z ? _1585.z : _1598.z), vec3((-_1210.w) * _Globals._Main3rdEnableLighting + _1210.w));
        _1604 = vec4(_1602.x, _1602.y, _1602.z, _1571.w);
    }
    else
    {
        _1604 = _1571;
    }
    highp vec4 _1650;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1620 = pow(clamp(1.0 - abs(dot(mix(_628, _625, vec3(_Globals._RimShadeNormalStrength)), _424)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1629 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1648 = mix(_1604.xyz, _1604.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1620 - _1629) / clamp(fwidth(_1620) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1629), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1650 = vec4(_1648.x, _1648.y, _1648.z, _1604.w);
    }
    else
    {
        _1650 = _1604;
    }
    highp vec4 _1723;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1674 = dot(normalize(((-_424) * _Globals._BacklightViewStrength) + _408), mix(_628, _625, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1684;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1684 = _1674 * clamp(_407 + distance(_408, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1684 = _1674;
        }
        highp float _1693 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1721 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1346.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_356 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_424, _408) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1684 - _1693) / clamp(fwidth(_1684) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1693), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1533 + _1650.xyz;
        _1723 = vec4(_1721.x, _1721.y, _1721.z, _1650.w);
    }
    else
    {
        _1723 = _1650;
    }
    highp vec3 _1726 = _1723.xyz * _1723.w;
    highp vec4 _1889;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1772;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1749 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _468 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1749.w = _1749.w * _1749.x;
            highp vec2 _1760 = ((_1749.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1761 = vec3(_1760.x, _1760.y, _303.z);
            highp vec2 _1762 = _1760.xy;
            _1761.z = sqrt(1.0 - clamp(dot(_1762, _1762), 0.0, 1.0));
            highp vec3 _1769 = normalize(_433 * _1761);
            highp vec3 _1770 = -_1769;
            _1772 = vec3(_623.x ? _1770.x : _1769.x, _623.y ? _1770.y : _1769.y, _623.z ? _1770.z : _1769.z);
        }
        else
        {
            _1772 = mix(_628, _625, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1789 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1790 = vec3(_1789.x ? _424.x : _324.x, _1789.y ? _424.y : _324.y, _1789.z ? _424.z : _324.z);
        bvec3 _1791 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1792 = vec3(_1791.x ? vec3(0.0, 1.0, 0.0).x : _331.x, _1791.y ? vec3(0.0, 1.0, 0.0).y : _331.y, _1791.z ? vec3(0.0, 1.0, 0.0).z : _331.z);
        highp vec3 _1796 = normalize(_1792 - (_1790 * dot(_1790, _1792)));
        highp vec4 _1818 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1772) * mat3(cross(_1790, _1796), _1796, _1790)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1824 = mix(_1818.xyz, _1818.xyz * _1533, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1825 = vec4(_1824.x, _1824.y, _1824.z, _1818.w);
        highp float _1830 = mix(_1818.w, _1818.w * _1534, _Globals._MatCapShadowMask);
        _1825.w = _1830;
        highp vec4 _1839;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1838 = _1825;
            _1838.w = _1830 * _1723.w;
            _1839 = _1838;
        }
        else
        {
            _1839 = _1825;
        }
        highp vec4 _1853 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _468 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1861 = _1726.xyz;
        highp vec3 _1862 = mix(_1839.xyz, _1839.xyz * _1346.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1869 = _1861 + _1862;
        highp vec3 _1870 = _1861 * _1862;
        bvec3 _1872 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1873 = vec3(_1872.x ? _1862.x : _298.x, _1872.y ? _1862.y : _298.y, _1872.z ? _1862.z : _298.z);
        bvec3 _1875 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1883;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1881 = (-_1861) * _1862 + _1869;
            bvec3 _2530 = isnan(_1881);
            bvec3 _2531 = isnan(_1861);
            highp vec3 _2532 = max(_1881, _1861);
            highp vec3 _2533 = vec3(_2530.x ? _1861.x : _2532.x, _2530.y ? _1861.y : _2532.y, _2530.z ? _1861.z : _2532.z);
            _1883 = vec3(_2531.x ? _1881.x : _2533.x, _2531.y ? _1881.y : _2533.y, _2531.z ? _1881.z : _2533.z);
        }
        else
        {
            _1883 = vec3(_1875.x ? _1869.x : _1873.x, _1875.y ? _1869.y : _1873.y, _1875.z ? _1869.z : _1873.z);
        }
        bvec3 _1885 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1887 = mix(_1861, vec3(_1885.x ? _1870.x : _1883.x, _1885.y ? _1870.y : _1883.y, _1885.z ? _1870.z : _1883.z), _1853.xyz * (_Globals._MatCapBlend * ((_356 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1839.w)));
        _1889 = vec4(_1887.x, _1887.y, _1887.z, _1723.w);
    }
    else
    {
        _1889 = vec4(_1726.x, _1726.y, _1726.z, _1723.w);
    }
    highp vec4 _2051;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1934;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1911 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _468 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1911.w = _1911.w * _1911.x;
            highp vec2 _1922 = ((_1911.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1923 = vec3(_1922.x, _1922.y, _303.z);
            highp vec2 _1924 = _1922.xy;
            _1923.z = sqrt(1.0 - clamp(dot(_1924, _1924), 0.0, 1.0));
            highp vec3 _1931 = normalize(_433 * _1923);
            highp vec3 _1932 = -_1931;
            _1934 = vec3(_623.x ? _1932.x : _1931.x, _623.y ? _1932.y : _1931.y, _623.z ? _1932.z : _1931.z);
        }
        else
        {
            _1934 = mix(_628, _625, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1950 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1951 = vec3(_1950.x ? _424.x : _324.x, _1950.y ? _424.y : _324.y, _1950.z ? _424.z : _324.z);
        bvec3 _1952 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1953 = vec3(_1952.x ? vec3(0.0, 1.0, 0.0).x : _331.x, _1952.y ? vec3(0.0, 1.0, 0.0).y : _331.y, _1952.z ? vec3(0.0, 1.0, 0.0).z : _331.z);
        highp vec3 _1957 = normalize(_1953 - (_1951 * dot(_1951, _1953)));
        highp vec4 _1979 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1934 * mat3(cross(_1951, _1957), _1957, _1951)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1980 = _1979.xyz;
        highp vec3 _1985 = mix(_1980, _1980 * _1533, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1986 = vec4(_1985.x, _1985.y, _1985.z, _1979.w);
        highp float _1987 = _1979.w;
        highp float _1991 = mix(_1987, _1987 * _1534, _Globals._MatCap2ndShadowMask);
        _1986.w = _1991;
        highp vec4 _2001;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2000 = _1986;
            _2000.w = _1991 * _1889.w;
            _2001 = _2000;
        }
        else
        {
            _2001 = _1986;
        }
        highp vec4 _2015 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _468 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2024 = mix(_2001.xyz, _2001.xyz * _1346.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2031 = _1889.xyz + _2024;
        highp vec3 _2032 = _1889.xyz * _2024;
        bvec3 _2034 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2035 = vec3(_2034.x ? _2024.x : _298.x, _2034.y ? _2024.y : _298.y, _2034.z ? _2024.z : _298.z);
        bvec3 _2037 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2045;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2043 = (-_1889.xyz) * _2024 + _2031;
            bvec3 _2535 = isnan(_2043);
            bvec3 _2536 = isnan(_1889.xyz);
            highp vec3 _2537 = max(_2043, _1889.xyz);
            highp vec3 _2538 = vec3(_2535.x ? _1889.xyz.x : _2537.x, _2535.y ? _1889.xyz.y : _2537.y, _2535.z ? _1889.xyz.z : _2537.z);
            _2045 = vec3(_2536.x ? _2043.x : _2538.x, _2536.y ? _2043.y : _2538.y, _2536.z ? _2043.z : _2538.z);
        }
        else
        {
            _2045 = vec3(_2037.x ? _2031.x : _2035.x, _2037.y ? _2031.y : _2035.y, _2037.z ? _2031.z : _2035.z);
        }
        bvec3 _2047 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2049 = mix(_1889.xyz, vec3(_2047.x ? _2032.x : _2045.x, _2047.y ? _2032.y : _2045.y, _2047.z ? _2032.z : _2045.z), _2015.xyz * (_Globals._MatCap2ndBlend * ((_356 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2001.w)));
        _2051 = vec4(_2049.x, _2049.y, _2049.z, _1889.w);
    }
    else
    {
        _2051 = _1889;
    }
    highp vec4 _2207;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2070 = mix(_628, _625, vec3(_Globals._RimNormalStrength));
        highp float _2074 = dot(_408, _2070) * 0.5 + 0.5;
        highp float _2097 = (_356 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2070, _424)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2101 = mix(_2097, _2097 * clamp((_2074 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2102 = _2097 * clamp(((1.0 - _2074) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2112 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2121 = clamp((_2101 - _2112) / clamp(fwidth(_2101) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2112), 0.0, 1.0), 0.0, 1.0);
        highp float _2128 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2138 = clamp((_2102 * _Globals._RimDirStrength + (-_2128)) / clamp(fwidth(_2102 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2128), 0.0, 1.0), 0.0, 1.0);
        highp float _2142 = mix(_2121, _2121 * _1534, _Globals._RimShadowMask);
        highp float _2144 = mix(_2138, _2138 * _1534, _Globals._RimShadowMask);
        highp float _2153;
        highp float _2154;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2153 = _2144 * _2051.w;
            _2154 = _2142 * _2051.w;
        }
        else
        {
            _2153 = _2144;
            _2154 = _2142;
        }
        highp vec3 _2160 = vec3(1.0 - _Globals._RimEnableLighting) + (_1533 * _Globals._RimEnableLighting);
        highp vec3 _2162 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1346.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2163 = _2162 * _2160;
        highp vec3 _2169 = _2162 * _2160 + _2051.xyz;
        highp vec3 _2170 = _2051.xyz * _2163;
        bvec3 _2172 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2173 = vec3(_2172.x ? _2163.x : _298.x, _2172.y ? _2163.y : _298.y, _2172.z ? _2163.z : _298.z);
        bvec3 _2175 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2177 = _Globals._RimBlendMode == 2u;
        highp vec3 _2183;
        if (_2177)
        {
            highp vec3 _2181 = (-_2051.xyz) * _2163 + _2169;
            bvec3 _2540 = isnan(_2181);
            bvec3 _2541 = isnan(_2051.xyz);
            highp vec3 _2542 = max(_2181, _2051.xyz);
            highp vec3 _2543 = vec3(_2540.x ? _2051.xyz.x : _2542.x, _2540.y ? _2051.xyz.y : _2542.y, _2540.z ? _2051.xyz.z : _2542.z);
            _2183 = vec3(_2541.x ? _2181.x : _2543.x, _2541.y ? _2181.y : _2543.y, _2541.z ? _2181.z : _2543.z);
        }
        else
        {
            _2183 = vec3(_2175.x ? _2169.x : _2173.x, _2175.y ? _2169.y : _2173.y, _2175.z ? _2169.z : _2173.z);
        }
        bvec3 _2185 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2188 = mix(_2051.xyz, vec3(_2185.x ? _2170.x : _2183.x, _2185.y ? _2170.y : _2183.y, _2185.z ? _2170.z : _2183.z), vec3(_2154 * _Globals._RimColor.w)).xyz;
        highp vec3 _2190 = _Globals._RimIndirColor.xyz * _2160;
        highp vec3 _2194 = _Globals._RimIndirColor.xyz * _2160 + _2188;
        highp vec3 _2195 = _2188 * _2190;
        highp vec3 _2196 = vec3(_2172.x ? _2190.x : _298.x, _2172.y ? _2190.y : _298.y, _2172.z ? _2190.z : _298.z);
        highp vec3 _2203;
        if (_2177)
        {
            highp vec3 _2201 = (-_2188) * _2190 + _2194;
            bvec3 _2545 = isnan(_2201);
            bvec3 _2546 = isnan(_2188);
            highp vec3 _2547 = max(_2201, _2188);
            highp vec3 _2548 = vec3(_2545.x ? _2188.x : _2547.x, _2545.y ? _2188.y : _2547.y, _2545.z ? _2188.z : _2547.z);
            _2203 = vec3(_2546.x ? _2201.x : _2548.x, _2546.y ? _2201.y : _2548.y, _2546.z ? _2201.z : _2548.z);
        }
        else
        {
            _2203 = vec3(_2175.x ? _2194.x : _2196.x, _2175.y ? _2194.y : _2196.y, _2175.z ? _2194.z : _2196.z);
        }
        highp vec3 _2205 = mix(_2188, vec3(_2185.x ? _2195.x : _2203.x, _2185.y ? _2195.y : _2203.y, _2185.z ? _2195.z : _2203.z), vec3(_2153 * _Globals._RimIndirColor.w));
        _2207 = vec4(_2205.x, _2205.y, _2205.z, _2051.w);
    }
    else
    {
        _2207 = _2051;
    }
    highp vec4 _2274;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2221 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _412, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2235 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2241;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2241 = roundEven(_2235);
        }
        else
        {
            _2241 = _2235;
        }
        highp vec3 _2250 = mix(_2221, _2221 * _1346.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2254 = _2207.xyz + _2250;
        highp vec3 _2255 = _2207.xyz * _2250;
        bvec3 _2257 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2258 = vec3(_2257.x ? _2250.x : _298.x, _2257.y ? _2250.y : _298.y, _2257.z ? _2250.z : _298.z);
        bvec3 _2260 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2268;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2266 = (-_2207.xyz) * _2250 + _2254;
            bvec3 _2550 = isnan(_2266);
            bvec3 _2551 = isnan(_2207.xyz);
            highp vec3 _2552 = max(_2266, _2207.xyz);
            highp vec3 _2553 = vec3(_2550.x ? _2207.xyz.x : _2552.x, _2550.y ? _2207.xyz.y : _2552.y, _2550.z ? _2207.xyz.z : _2552.z);
            _2268 = vec3(_2551.x ? _2266.x : _2553.x, _2551.y ? _2266.y : _2553.y, _2551.z ? _2266.z : _2553.z);
        }
        else
        {
            _2268 = vec3(_2260.x ? _2254.x : _2258.x, _2260.y ? _2254.y : _2258.y, _2260.z ? _2254.z : _2258.z);
        }
        bvec3 _2270 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2272 = mix(_2207.xyz, vec3(_2270.x ? _2255.x : _2268.x, _2270.y ? _2255.y : _2268.y, _2270.z ? _2255.z : _2268.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2241, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2207.w));
        _2274 = vec4(_2272.x, _2272.y, _2272.z, _2207.w);
    }
    else
    {
        _2274 = _2207;
    }
    highp vec4 _2341;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2288 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _412, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2302 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2308;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2308 = roundEven(_2302);
        }
        else
        {
            _2308 = _2302;
        }
        highp vec3 _2317 = mix(_2288, _2288 * _1346.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2321 = _2274.xyz + _2317;
        highp vec3 _2322 = _2274.xyz * _2317;
        bvec3 _2324 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2325 = vec3(_2324.x ? _2317.x : _298.x, _2324.y ? _2317.y : _298.y, _2324.z ? _2317.z : _298.z);
        bvec3 _2327 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2335;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2333 = (-_2274.xyz) * _2317 + _2321;
            bvec3 _2555 = isnan(_2333);
            bvec3 _2556 = isnan(_2274.xyz);
            highp vec3 _2557 = max(_2333, _2274.xyz);
            highp vec3 _2558 = vec3(_2555.x ? _2274.xyz.x : _2557.x, _2555.y ? _2274.xyz.y : _2557.y, _2555.z ? _2274.xyz.z : _2557.z);
            _2335 = vec3(_2556.x ? _2333.x : _2558.x, _2556.y ? _2333.y : _2558.y, _2556.z ? _2333.z : _2558.z);
        }
        else
        {
            _2335 = vec3(_2327.x ? _2321.x : _2325.x, _2327.y ? _2321.y : _2325.y, _2327.z ? _2321.z : _2325.z);
        }
        bvec3 _2337 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2339 = mix(_2274.xyz, vec3(_2337.x ? _2322.x : _2335.x, _2337.y ? _2322.y : _2335.y, _2337.z ? _2322.z : _2335.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2308, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2274.w));
        _2341 = vec4(_2339.x, _2339.y, _2339.z, _2274.w);
    }
    else
    {
        _2341 = _2274;
    }
    bvec3 _2351 = bvec3(_356 < 0.0);
    highp vec3 _2352 = (_2341.xyz + ((_Globals._DissolveColor.xyz * _1347) * _2341.w)).xyz;
    highp vec3 _2360 = mix(_2352, _Globals._BackfaceColor.xyz * _1533, vec3(_Globals._BackfaceColor.w));
    highp float _2381 = (_356 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _417) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2395 = vec3(_2351.x ? _2360.x : _2352.x, _2351.y ? _2360.y : _2352.y, _2351.z ? _2360.z : _2352.z).xyz;
    highp vec3 _2406 = mix(_2395, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2395, vec3(pow(clamp(1.0 - abs(dot(_628, _424)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2381));
    highp vec4 _2407 = vec4(_2406.x, _2406.y, _2406.z, _2341.w);
    highp float _2409 = mix(_2341.w, _2341.w * _Globals._DistanceFadeColor.w, _2381);
    _2407.w = _2409;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2409, _2407, vec4(out_var_TEXCOORD9));
}
