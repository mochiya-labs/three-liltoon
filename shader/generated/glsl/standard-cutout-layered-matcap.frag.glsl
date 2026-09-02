#version 300 es
precision mediump float;
precision highp int;

vec3 _294;
vec3 _299;
float _300;

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
    highp vec3 _320 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _327 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _343 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _352 = float(gl_FrontFacing ? 1 : (-1));
    highp float _403;
    do
    {
        highp vec3 _359 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _360 = _359.xy;
        highp float _366 = _359.z;
        if ((any(lessThan(_360, vec2(0.0))) || any(greaterThan(_360, vec2(1.0)))) || (_366 > 1.0))
        {
            _403 = 1.0;
            break;
        }
        highp float _376 = _366 + _Globals.uShadowBias;
        _403 = (((step(_376, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _360), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_376, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _360), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_376, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _360), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_376, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _360), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _404 = normalize(out_var_TEXCOORD7);
    highp vec3 _408 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _412 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _413 = length(_412);
    highp vec3 _420 = normalize(_412);
    highp mat3 _429 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _434 = bvec2(_352 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _435 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _448 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _449 = sin(_448);
    highp float _450 = cos(_448);
    highp vec2 _451 = (vec2(_434.x ? _435.x : out_var_TEXCOORD0.xy.x, _434.y ? _435.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _452 = _451.x;
    highp float _453 = _451.y;
    highp vec2 _464 = (vec2(_452 * _450 + (-(_453 * _449)), _452 * _449 + (_453 * _450)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _468 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _464);
    highp vec3 _475 = pow(abs(_468.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _476 = _475.z;
    highp float _477 = _475.y;
    bvec4 _479 = bvec4(_476 > _477);
    highp vec4 _480 = vec4(_476, _477, -1.0, 0.666666686534881591796875);
    highp vec4 _481 = vec4(_477, _476, 0.0, -0.3333333432674407958984375);
    highp vec4 _482 = vec4(_479.x ? _480.x : _481.x, _479.y ? _480.y : _481.y, _479.z ? _480.z : _481.z, _479.w ? _480.w : _481.w);
    highp float _483 = _482.x;
    highp float _484 = _475.x;
    bvec4 _486 = bvec4(_483 > _484);
    highp vec4 _489 = vec4(_483, _482.yw, _484);
    highp vec4 _491 = vec4(_484, _482.yz, _483);
    highp vec4 _492 = vec4(_486.x ? _489.x : _491.x, _486.y ? _489.y : _491.y, _486.z ? _489.z : _491.z, _486.w ? _489.w : _491.w);
    highp float _497 = _492.x - (isnan(_492.y) ? _492.w : (isnan(_492.w) ? _492.y : min(_492.w, _492.y)));
    highp float _510 = clamp((_497 / (_492.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _513 = clamp(_492.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _527 = vec3((-_513) * _510 + _513) + (clamp(abs((fract(vec3(abs(_492.z + ((_492.w - _492.y) / (6.0 * _497 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_513 * _510));
    highp vec4 _531 = vec4(_527.x, _527.y, _527.z, _468.w) * _Globals._Color;
    highp vec3 _563;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _544 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _464 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _544.w = _544.w * _544.x;
        highp vec2 _555 = ((_544.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _556 = vec3(_555.x, _555.y, _299.z);
        highp vec2 _557 = _555.xy;
        _556.z = sqrt(1.0 - clamp(dot(_557, _557), 0.0, 1.0));
        _563 = _556;
    }
    else
    {
        _563 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _612;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _572 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _573 = vec2(_572.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _572.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _575 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _576 = vec2(_575.x ? out_var_TEXCOORD1.xy.x : _573.x, _575.y ? out_var_TEXCOORD1.xy.y : _573.y);
        bvec2 _578 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _588 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_578.x ? out_var_TEXCOORD1.zw.x : _576.x, _578.y ? out_var_TEXCOORD1.zw.y : _576.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _588.w = _588.w * _588.x;
        highp vec2 _600 = (((_588.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _612 = vec3(_563.xy + _600, _563.z * sqrt(1.0 - clamp(dot(_600, _600), 0.0, 1.0)));
    }
    else
    {
        _612 = _563;
    }
    highp vec3 _614 = normalize(_429 * _612);
    bvec3 _619 = bvec3(_352 < (_Globals._FlipNormal - 1.0));
    highp vec3 _620 = -_614;
    highp vec3 _621 = vec3(_619.x ? _620.x : _614.x, _619.y ? _620.y : _614.y, _619.z ? _620.z : _614.z);
    highp float _623 = clamp(dot(_621, _420), 0.0, 1.0);
    highp vec3 _624 = normalize(out_var_TEXCOORD4);
    highp vec2 _628 = ((_621 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _327, _320)).xy * 0.5) + vec2(0.5);
    bool _629 = out_var_TEXCOORD5.w > 0.0;
    bool _634 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _917;
    highp vec4 _918;
    if (_634)
    {
        bvec2 _640 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _641 = vec2(_640.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _640.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _643 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _644 = vec2(_643.x ? out_var_TEXCOORD1.xy.x : _641.x, _643.y ? out_var_TEXCOORD1.xy.y : _641.y);
        bvec2 _646 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _647 = vec2(_646.x ? out_var_TEXCOORD1.zw.x : _644.x, _646.y ? out_var_TEXCOORD1.zw.y : _644.y);
        bvec2 _649 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _650 = vec2(_649.x ? _628.x : _647.x, _649.y ? _628.y : _647.y);
        highp vec4 _689 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _690 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _698;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _697 = _650;
            _697.x = abs(_650.x - 0.5) + 0.5;
            _698 = _697;
        }
        else
        {
            _698 = _650;
        }
        highp vec2 _699 = _689.xy;
        highp vec2 _700 = _689.zw;
        highp vec2 _701 = _698 * _699 + _700;
        highp vec2 _710;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_650.x < 0.5))
        {
            highp vec2 _709 = _701;
            _709.x = 1.0 - _701.x;
            _710 = _709;
        }
        else
        {
            _710 = _701;
        }
        highp vec2 _717;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _629)
        {
            highp vec2 _716 = _710;
            _716.x = 1.0 - _710.x;
            _717 = _716;
        }
        else
        {
            _717 = _710;
        }
        highp vec2 _722;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _629)
        {
            highp vec2 _721 = _717;
            _721.x = -1.0;
            _722 = _721;
        }
        else
        {
            _722 = _717;
        }
        highp vec2 _728;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_629))
        {
            highp vec2 _727 = _722;
            _727.x = -1.0;
            _728 = _727;
        }
        else
        {
            _728 = _722;
        }
        highp float _731 = sin(_690);
        highp float _732 = cos(_690);
        highp vec2 _733 = ((_728 - _700) / _699) - vec2(0.5);
        highp float _734 = _733.x;
        highp float _735 = _733.y;
        highp vec2 _743 = (vec2(_734 * _732 + (-(_735 * _731)), _734 * _731 + (_735 * _732)) + vec2(0.5)) * _699 + _700;
        uint _747 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _751 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _747 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _747);
        highp float _752 = _743.x;
        highp float _753 = _743.y;
        uint _760 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _770 = ((mix(vec2(_752, 1.0 - _753), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_751 % _760), float(_751 / _760))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _770.y = 1.0 - _770.y;
        highp vec4 _775 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _770);
        highp vec4 _791;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _778 = _775.x;
            highp float _779 = _775.y;
            highp float _780 = _775.z;
            highp float _781 = isnan(_779) ? _778 : (isnan(_778) ? _779 : min(_778, _779));
            highp float _782 = isnan(_779) ? _778 : (isnan(_778) ? _779 : max(_778, _779));
            highp float _783 = isnan(_780) ? _782 : (isnan(_782) ? _780 : min(_782, _780));
            highp float _784 = isnan(_783) ? _781 : (isnan(_781) ? _783 : max(_781, _783));
            _791 = vec4(1.0, 1.0, 1.0, clamp((_784 - 0.5) / clamp(fwidth(_784), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _791 = _775;
        }
        highp vec4 _814;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _795 = clamp(_623 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _798 = 0.5 - abs(_752 - 0.5);
            highp float _805 = 0.5 - abs(_753 - 0.5);
            highp vec4 _813 = _791;
            _813.w = _791.w * (clamp(_798 / clamp(fwidth(_798), 9.9999997473787516355514526367188e-05, _795), 0.0, 1.0) * clamp(_805 / clamp(fwidth(_805), 9.9999997473787516355514526367188e-05, _795), 0.0, 1.0));
            _814 = _813;
        }
        else
        {
            _814 = _791;
        }
        highp vec4 _815 = _Globals._Color2nd * _814;
        highp float _821 = _815.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _464).x;
        _815.w = mix(_821, _821 * clamp((_413 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _847;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_352 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_352 < 0.0)))
        {
            highp vec4 _846 = _815;
            _846.w = 0.0;
            _847 = _846;
        }
        else
        {
            _847 = _815;
        }
        highp vec4 _886;
        highp vec4 _887;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _858;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _857 = _531;
                _857.w = _847.w;
                _858 = _857;
            }
            else
            {
                _858 = _531;
            }
            highp vec4 _866;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _865 = _858;
                _865.w = _858.w * _847.w;
                _866 = _865;
            }
            else
            {
                _866 = _858;
            }
            highp vec4 _875;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _874 = _866;
                _874.w = clamp(_866.w + _847.w, 0.0, 1.0);
                _875 = _874;
            }
            else
            {
                _875 = _866;
            }
            highp vec4 _884;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _883 = _875;
                _883.w = clamp(_875.w - _847.w, 0.0, 1.0);
                _884 = _883;
            }
            else
            {
                _884 = _875;
            }
            highp vec4 _885 = _847;
            _885.w = 1.0;
            _886 = _885;
            _887 = _884;
        }
        else
        {
            _886 = _847;
            _887 = _531;
        }
        highp vec3 _897 = _887.xyz + _886.xyz;
        highp vec3 _898 = _887.xyz * _886.xyz;
        bvec3 _900 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _901 = vec3(_900.x ? _886.xyz.x : _294.x, _900.y ? _886.xyz.y : _294.y, _900.z ? _886.xyz.z : _294.z);
        bvec3 _903 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _911;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _909 = (-_887.xyz) * _886.xyz + _897;
            bvec3 _2427 = isnan(_909);
            bvec3 _2428 = isnan(_887.xyz);
            highp vec3 _2429 = max(_909, _887.xyz);
            highp vec3 _2430 = vec3(_2427.x ? _887.xyz.x : _2429.x, _2427.y ? _887.xyz.y : _2429.y, _2427.z ? _887.xyz.z : _2429.z);
            _911 = vec3(_2428.x ? _909.x : _2430.x, _2428.y ? _909.y : _2430.y, _2428.z ? _909.z : _2430.z);
        }
        else
        {
            _911 = vec3(_903.x ? _897.x : _901.x, _903.y ? _897.y : _901.y, _903.z ? _897.z : _901.z);
        }
        bvec3 _913 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _915 = mix(_887.xyz, vec3(_913.x ? _898.x : _911.x, _913.y ? _898.y : _911.y, _913.z ? _898.z : _911.z), vec3(_886.w * _Globals._Main2ndEnableLighting));
        _917 = _886;
        _918 = vec4(_915.x, _915.y, _915.z, _887.w);
    }
    else
    {
        _917 = _Globals._Color2nd;
        _918 = _531;
    }
    bool _923 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1206;
    highp vec4 _1207;
    if (_923)
    {
        bvec2 _929 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _930 = vec2(_929.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _929.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _932 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _933 = vec2(_932.x ? out_var_TEXCOORD1.xy.x : _930.x, _932.y ? out_var_TEXCOORD1.xy.y : _930.y);
        bvec2 _935 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _936 = vec2(_935.x ? out_var_TEXCOORD1.zw.x : _933.x, _935.y ? out_var_TEXCOORD1.zw.y : _933.y);
        bvec2 _938 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _939 = vec2(_938.x ? _628.x : _936.x, _938.y ? _628.y : _936.y);
        highp vec4 _978 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _979 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _987;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _986 = _939;
            _986.x = abs(_939.x - 0.5) + 0.5;
            _987 = _986;
        }
        else
        {
            _987 = _939;
        }
        highp vec2 _988 = _978.xy;
        highp vec2 _989 = _978.zw;
        highp vec2 _990 = _987 * _988 + _989;
        highp vec2 _999;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_939.x < 0.5))
        {
            highp vec2 _998 = _990;
            _998.x = 1.0 - _990.x;
            _999 = _998;
        }
        else
        {
            _999 = _990;
        }
        highp vec2 _1006;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _629)
        {
            highp vec2 _1005 = _999;
            _1005.x = 1.0 - _999.x;
            _1006 = _1005;
        }
        else
        {
            _1006 = _999;
        }
        highp vec2 _1011;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _629)
        {
            highp vec2 _1010 = _1006;
            _1010.x = -1.0;
            _1011 = _1010;
        }
        else
        {
            _1011 = _1006;
        }
        highp vec2 _1017;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_629))
        {
            highp vec2 _1016 = _1011;
            _1016.x = -1.0;
            _1017 = _1016;
        }
        else
        {
            _1017 = _1011;
        }
        highp float _1020 = sin(_979);
        highp float _1021 = cos(_979);
        highp vec2 _1022 = ((_1017 - _989) / _988) - vec2(0.5);
        highp float _1023 = _1022.x;
        highp float _1024 = _1022.y;
        highp vec2 _1032 = (vec2(_1023 * _1021 + (-(_1024 * _1020)), _1023 * _1020 + (_1024 * _1021)) + vec2(0.5)) * _988 + _989;
        uint _1036 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1040 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1036 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1036);
        highp float _1041 = _1032.x;
        highp float _1042 = _1032.y;
        uint _1049 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1059 = ((mix(vec2(_1041, 1.0 - _1042), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1040 % _1049), float(_1040 / _1049))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1059.y = 1.0 - _1059.y;
        highp vec4 _1064 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1059);
        highp vec4 _1080;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1067 = _1064.x;
            highp float _1068 = _1064.y;
            highp float _1069 = _1064.z;
            highp float _1070 = isnan(_1068) ? _1067 : (isnan(_1067) ? _1068 : min(_1067, _1068));
            highp float _1071 = isnan(_1068) ? _1067 : (isnan(_1067) ? _1068 : max(_1067, _1068));
            highp float _1072 = isnan(_1069) ? _1071 : (isnan(_1071) ? _1069 : min(_1071, _1069));
            highp float _1073 = isnan(_1072) ? _1070 : (isnan(_1070) ? _1072 : max(_1070, _1072));
            _1080 = vec4(1.0, 1.0, 1.0, clamp((_1073 - 0.5) / clamp(fwidth(_1073), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1080 = _1064;
        }
        highp vec4 _1103;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1084 = clamp(_623 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1087 = 0.5 - abs(_1041 - 0.5);
            highp float _1094 = 0.5 - abs(_1042 - 0.5);
            highp vec4 _1102 = _1080;
            _1102.w = _1080.w * (clamp(_1087 / clamp(fwidth(_1087), 9.9999997473787516355514526367188e-05, _1084), 0.0, 1.0) * clamp(_1094 / clamp(fwidth(_1094), 9.9999997473787516355514526367188e-05, _1084), 0.0, 1.0));
            _1103 = _1102;
        }
        else
        {
            _1103 = _1080;
        }
        highp vec4 _1104 = _Globals._Color3rd * _1103;
        highp float _1110 = _1104.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _464).x;
        _1104.w = mix(_1110, _1110 * clamp((_413 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1136;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_352 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_352 < 0.0)))
        {
            highp vec4 _1135 = _1104;
            _1135.w = 0.0;
            _1136 = _1135;
        }
        else
        {
            _1136 = _1104;
        }
        highp vec4 _1175;
        highp vec4 _1176;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1147;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1146 = _918;
                _1146.w = _1136.w;
                _1147 = _1146;
            }
            else
            {
                _1147 = _918;
            }
            highp vec4 _1155;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1154 = _1147;
                _1154.w = _1147.w * _1136.w;
                _1155 = _1154;
            }
            else
            {
                _1155 = _1147;
            }
            highp vec4 _1164;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1163 = _1155;
                _1163.w = clamp(_1155.w + _1136.w, 0.0, 1.0);
                _1164 = _1163;
            }
            else
            {
                _1164 = _1155;
            }
            highp vec4 _1173;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1172 = _1164;
                _1172.w = clamp(_1164.w - _1136.w, 0.0, 1.0);
                _1173 = _1172;
            }
            else
            {
                _1173 = _1164;
            }
            highp vec4 _1174 = _1136;
            _1174.w = 1.0;
            _1175 = _1174;
            _1176 = _1173;
        }
        else
        {
            _1175 = _1136;
            _1176 = _918;
        }
        highp vec3 _1186 = _1176.xyz + _1175.xyz;
        highp vec3 _1187 = _1176.xyz * _1175.xyz;
        bvec3 _1189 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1190 = vec3(_1189.x ? _1175.xyz.x : _294.x, _1189.y ? _1175.xyz.y : _294.y, _1189.z ? _1175.xyz.z : _294.z);
        bvec3 _1192 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1200;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1198 = (-_1176.xyz) * _1175.xyz + _1186;
            bvec3 _2452 = isnan(_1198);
            bvec3 _2453 = isnan(_1176.xyz);
            highp vec3 _2454 = max(_1198, _1176.xyz);
            highp vec3 _2455 = vec3(_2452.x ? _1176.xyz.x : _2454.x, _2452.y ? _1176.xyz.y : _2454.y, _2452.z ? _1176.xyz.z : _2454.z);
            _1200 = vec3(_2453.x ? _1198.x : _2455.x, _2453.y ? _1198.y : _2455.y, _2453.z ? _1198.z : _2455.z);
        }
        else
        {
            _1200 = vec3(_1192.x ? _1186.x : _1190.x, _1192.y ? _1186.y : _1190.y, _1192.z ? _1186.z : _1190.z);
        }
        bvec3 _1202 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1204 = mix(_1176.xyz, vec3(_1202.x ? _1187.x : _1200.x, _1202.y ? _1187.y : _1200.y, _1202.z ? _1187.z : _1200.z), vec3(_1175.w * _Globals._Main3rdEnableLighting));
        _1206 = _1175;
        _1207 = vec4(_1204.x, _1204.y, _1204.z, _1176.w);
    }
    else
    {
        _1206 = _Globals._Color3rd;
        _1207 = _918;
    }
    highp vec4 _1247;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1218 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1223;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1222 = _1207;
            _1222.w = _1218;
            _1223 = _1222;
        }
        else
        {
            _1223 = _1207;
        }
        highp vec4 _1230;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1229 = _1223;
            _1229.w = _1223.w * _1218;
            _1230 = _1229;
        }
        else
        {
            _1230 = _1223;
        }
        highp vec4 _1238;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1237 = _1230;
            _1237.w = clamp(_1230.w + _1218, 0.0, 1.0);
            _1238 = _1237;
        }
        else
        {
            _1238 = _1230;
        }
        highp vec4 _1246;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1245 = _1238;
            _1245.w = clamp(_1238.w - _1218, 0.0, 1.0);
            _1246 = _1245;
        }
        else
        {
            _1246 = _1238;
        }
        _1247 = _1246;
    }
    else
    {
        _1247 = _1207;
    }
    highp vec4 _1342;
    highp float _1343;
    if ((_343 & 1) != 0)
    {
        highp vec4 _1251 = _1247;
        _1251.w = 1.0;
        highp vec2 _1257 = roundEven(_Globals._DissolveParams.xy);
        highp float _1258 = _1257.x;
        highp vec4 _1331;
        highp float _1332;
        if (_1258 != 0.0)
        {
            highp float _1274;
            highp float _1275;
            if (_1258 == 1.0)
            {
                _1274 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1275 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1274 = 0.0;
                _1275 = 1.0;
            }
            highp float _1306;
            highp float _1307;
            if (_1258 == 2.0)
            {
                highp vec2 _1284 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1295 = (_1257.y == 1.0) ? (vec2(_1284.x * cos(_Globals._DissolvePos.w) + (-(_1284.y * sin(_Globals._DissolvePos.w))), _300) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1306 = 1.0 - clamp(abs(_1295 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1307 = _1275 * float(_1295 > _Globals._DissolveParams.z);
            }
            else
            {
                _1306 = _1274;
                _1307 = _1275;
            }
            highp float _1328;
            highp float _1329;
            if (_1258 == 3.0)
            {
                highp float _1317 = (_1257.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1328 = 1.0 - clamp(abs(_1317 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1329 = _1307 * float(_1317 > _Globals._DissolveParams.z);
            }
            else
            {
                _1328 = _1306;
                _1329 = _1307;
            }
            highp vec4 _1330 = _1251;
            _1330.w = _1329;
            _1331 = _1330;
            _1332 = _1328;
        }
        else
        {
            _1331 = _1251;
            _1332 = 0.0;
        }
        highp vec4 _1338;
        if ((_343 & 2) != 0)
        {
            highp vec4 _1337 = _1331;
            _1337.w = 1.0 - _1331.w;
            _1338 = _1337;
        }
        else
        {
            _1338 = _1331;
        }
        highp vec4 _1341 = _1338;
        _1341.w = _1338.w * _1247.w;
        _1342 = _1341;
        _1343 = _1332;
    }
    else
    {
        _1342 = _1247;
        _1343 = 0.0;
    }
    highp float _1348 = fwidth(_1342.w);
    highp float _1352 = clamp(((_1342.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1348 : (isnan(_1348) ? 9.9999997473787516355514526367188e-05 : max(_1348, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1353 = _1342;
    _1353.w = _1352;
    if (_1352 == 0.0)
    {
        discard;
    }
    highp vec4 _1530;
    highp float _1531;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1382 = clamp(dot(_404, mix(_624, _621, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1385 = clamp(dot(_404, mix(_624, _621, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1388 = clamp(dot(_404, mix(_624, _621, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1392 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1395 = clamp(_403 + distance(_404, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1398 = mix(1.0, _1395, _Globals._ShadowReceive);
        highp float _1399 = _1382 * _1398;
        highp float _1402 = mix(1.0, _1395, _Globals._Shadow2ndReceive);
        highp float _1406 = mix(1.0, _1395, _Globals._Shadow3rdReceive);
        highp float _1417 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1418 = clamp(_1417, 0.0, 1.0);
        highp float _1420 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1433 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1447 = clamp(_1417 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1460 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1475 = (_352 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1476 = clamp((_1382 * _1398 + (-_1418)) / clamp(fwidth(_1399) * _1392 + (_1420 - _1418), 0.0, 1.0), 0.0, 1.0) * _1475;
        highp vec3 _1508 = mix(mix(_1353.xyz * _Globals._ShadowColor.xyz, (_1353.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1385 * _1402 + (-_1433)) / clamp(fwidth(_1385 * _1402) * _1392 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1433), 0.0, 1.0), 0.0, 1.0) * _1475)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1353.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1388 * _1406 + (-_1460)) / clamp(fwidth(_1388 * _1406) * _1392 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1460), 0.0, 1.0), 0.0, 1.0) * _1475)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1514 = _1353.xyz * out_var_TEXCOORD6;
        highp vec3 _1520 = mix(mix(_1508, _1508 * _1353.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1353.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2462 = isnan(_1520);
        bvec3 _2463 = isnan(_1514);
        highp vec3 _2464 = min(_1520, _1514);
        highp vec3 _2465 = vec3(_2462.x ? _1514.x : _2464.x, _2462.y ? _1514.y : _2464.y, _2462.z ? _1514.z : _2464.z);
        highp vec3 _1528 = mix(mix(vec3(_2463.x ? _1520.x : _2465.x, _2463.y ? _1520.y : _2465.y, _2463.z ? _1520.z : _2465.z), _1514, _Globals._ShadowBorderColor.xyz * (clamp((_1382 * _1398 + (-_1447)) / clamp(fwidth(_1399) * _1392 + (_1420 - _1447), 0.0, 1.0), 0.0, 1.0) * _1475)), _1514, vec3(mix(1.0, _1476, _Globals._ShadowStrength)));
        _1530 = vec4(_1528.x, _1528.y, _1528.z, _1353.w);
        _1531 = _1476;
    }
    else
    {
        highp vec3 _1364 = _1353.xyz * out_var_TEXCOORD6;
        _1530 = vec4(_1364.x, _1364.y, _1364.z, _1353.w);
        _1531 = 1.0;
    }
    highp vec3 _1534 = vec3(_Globals._LightMaxLimit);
    bvec3 _2467 = isnan(out_var_TEXCOORD6);
    bvec3 _2468 = isnan(_1534);
    highp vec3 _2469 = min(out_var_TEXCOORD6, _1534);
    highp vec3 _2470 = vec3(_2467.x ? _1534.x : _2469.x, _2467.y ? _1534.y : _2469.y, _2467.z ? _1534.z : _2469.z);
    highp vec3 _1535 = vec3(_2468.x ? out_var_TEXCOORD6.x : _2470.x, _2468.y ? out_var_TEXCOORD6.y : _2470.y, _2468.z ? out_var_TEXCOORD6.z : _2470.z);
    highp float _1536 = clamp(_1531, 0.0, 1.0);
    highp vec3 _1538 = _1353.xyz * _Globals._LightMaxLimit;
    bvec3 _2472 = isnan(_1530.xyz);
    bvec3 _2473 = isnan(_1538);
    highp vec3 _2474 = min(_1530.xyz, _1538);
    highp vec3 _2475 = vec3(_2472.x ? _1538.x : _2474.x, _2472.y ? _1538.y : _2474.y, _2472.z ? _1538.z : _2474.z);
    highp vec3 _1539 = vec3(_2473.x ? _1530.xyz.x : _2475.x, _2473.y ? _1530.xyz.y : _2475.y, _2473.z ? _1530.xyz.z : _2475.z);
    highp vec4 _1573;
    if (_634)
    {
        highp vec3 _1543 = _1539.xyz;
        highp vec3 _1553 = _1543 + _917.xyz;
        highp vec3 _1554 = _1543 * _917.xyz;
        bvec3 _1556 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1557 = vec3(_1556.x ? _917.xyz.x : _294.x, _1556.y ? _917.xyz.y : _294.y, _1556.z ? _917.xyz.z : _294.z);
        bvec3 _1559 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1567;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1565 = (-_1543) * _917.xyz + _1553;
            bvec3 _2477 = isnan(_1565);
            bvec3 _2478 = isnan(_1543);
            highp vec3 _2479 = max(_1565, _1543);
            highp vec3 _2480 = vec3(_2477.x ? _1543.x : _2479.x, _2477.y ? _1543.y : _2479.y, _2477.z ? _1543.z : _2479.z);
            _1567 = vec3(_2478.x ? _1565.x : _2480.x, _2478.y ? _1565.y : _2480.y, _2478.z ? _1565.z : _2480.z);
        }
        else
        {
            _1567 = vec3(_1559.x ? _1553.x : _1557.x, _1559.y ? _1553.y : _1557.y, _1559.z ? _1553.z : _1557.z);
        }
        bvec3 _1569 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1571 = mix(_1543, vec3(_1569.x ? _1554.x : _1567.x, _1569.y ? _1554.y : _1567.y, _1569.z ? _1554.z : _1567.z), vec3((-_917.w) * _Globals._Main2ndEnableLighting + _917.w));
        _1573 = vec4(_1571.x, _1571.y, _1571.z, _1530.w);
    }
    else
    {
        _1573 = vec4(_1539.x, _1539.y, _1539.z, _1530.w);
    }
    highp vec4 _1606;
    if (_923)
    {
        highp vec3 _1586 = _1573.xyz + _1206.xyz;
        highp vec3 _1587 = _1573.xyz * _1206.xyz;
        bvec3 _1589 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1590 = vec3(_1589.x ? _1206.xyz.x : _294.x, _1589.y ? _1206.xyz.y : _294.y, _1589.z ? _1206.xyz.z : _294.z);
        bvec3 _1592 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1600;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1598 = (-_1573.xyz) * _1206.xyz + _1586;
            bvec3 _2482 = isnan(_1598);
            bvec3 _2483 = isnan(_1573.xyz);
            highp vec3 _2484 = max(_1598, _1573.xyz);
            highp vec3 _2485 = vec3(_2482.x ? _1573.xyz.x : _2484.x, _2482.y ? _1573.xyz.y : _2484.y, _2482.z ? _1573.xyz.z : _2484.z);
            _1600 = vec3(_2483.x ? _1598.x : _2485.x, _2483.y ? _1598.y : _2485.y, _2483.z ? _1598.z : _2485.z);
        }
        else
        {
            _1600 = vec3(_1592.x ? _1586.x : _1590.x, _1592.y ? _1586.y : _1590.y, _1592.z ? _1586.z : _1590.z);
        }
        bvec3 _1602 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1604 = mix(_1573.xyz, vec3(_1602.x ? _1587.x : _1600.x, _1602.y ? _1587.y : _1600.y, _1602.z ? _1587.z : _1600.z), vec3((-_1206.w) * _Globals._Main3rdEnableLighting + _1206.w));
        _1606 = vec4(_1604.x, _1604.y, _1604.z, _1573.w);
    }
    else
    {
        _1606 = _1573;
    }
    highp vec4 _1652;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1622 = pow(clamp(1.0 - abs(dot(mix(_624, _621, vec3(_Globals._RimShadeNormalStrength)), _420)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1631 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1650 = mix(_1606.xyz, _1606.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1622 - _1631) / clamp(fwidth(_1622) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1631), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1652 = vec4(_1650.x, _1650.y, _1650.z, _1606.w);
    }
    else
    {
        _1652 = _1606;
    }
    highp vec4 _1725;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1676 = dot(normalize(((-_420) * _Globals._BacklightViewStrength) + _404), mix(_624, _621, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1686;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1686 = _1676 * clamp(_403 + distance(_404, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1686 = _1676;
        }
        highp float _1695 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1723 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1353.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_352 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_420, _404) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1686 - _1695) / clamp(fwidth(_1686) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1695), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1535 + _1652.xyz;
        _1725 = vec4(_1723.x, _1723.y, _1723.z, _1652.w);
    }
    else
    {
        _1725 = _1652;
    }
    highp vec4 _1876;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1770;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1747 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _464 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1747.w = _1747.w * _1747.x;
            highp vec2 _1758 = ((_1747.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1759 = vec3(_1758.x, _1758.y, _299.z);
            highp vec2 _1760 = _1758.xy;
            _1759.z = sqrt(1.0 - clamp(dot(_1760, _1760), 0.0, 1.0));
            highp vec3 _1767 = normalize(_429 * _1759);
            highp vec3 _1768 = -_1767;
            _1770 = vec3(_619.x ? _1768.x : _1767.x, _619.y ? _1768.y : _1767.y, _619.z ? _1768.z : _1767.z);
        }
        else
        {
            _1770 = mix(_624, _621, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1787 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1788 = vec3(_1787.x ? _420.x : _320.x, _1787.y ? _420.y : _320.y, _1787.z ? _420.z : _320.z);
        bvec3 _1789 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1790 = vec3(_1789.x ? vec3(0.0, 1.0, 0.0).x : _327.x, _1789.y ? vec3(0.0, 1.0, 0.0).y : _327.y, _1789.z ? vec3(0.0, 1.0, 0.0).z : _327.z);
        highp vec3 _1794 = normalize(_1790 - (_1788 * dot(_1788, _1790)));
        highp vec4 _1816 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1770) * mat3(cross(_1788, _1794), _1794, _1788)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1840 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _464 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1842 = mix(_1816.xyz, _1816.xyz * _1535, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1849 = mix(_1842, _1842 * _1353.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1856 = _1725.xyz + _1849;
        highp vec3 _1857 = _1725.xyz * _1849;
        bvec3 _1859 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1860 = vec3(_1859.x ? _1849.x : _294.x, _1859.y ? _1849.y : _294.y, _1859.z ? _1849.z : _294.z);
        bvec3 _1862 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1870;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1868 = (-_1725.xyz) * _1849 + _1856;
            bvec3 _2487 = isnan(_1868);
            bvec3 _2488 = isnan(_1725.xyz);
            highp vec3 _2489 = max(_1868, _1725.xyz);
            highp vec3 _2490 = vec3(_2487.x ? _1725.xyz.x : _2489.x, _2487.y ? _1725.xyz.y : _2489.y, _2487.z ? _1725.xyz.z : _2489.z);
            _1870 = vec3(_2488.x ? _1868.x : _2490.x, _2488.y ? _1868.y : _2490.y, _2488.z ? _1868.z : _2490.z);
        }
        else
        {
            _1870 = vec3(_1862.x ? _1856.x : _1860.x, _1862.y ? _1856.y : _1860.y, _1862.z ? _1856.z : _1860.z);
        }
        bvec3 _1872 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1874 = mix(_1725.xyz, vec3(_1872.x ? _1857.x : _1870.x, _1872.y ? _1857.y : _1870.y, _1872.z ? _1857.z : _1870.z), _1840.xyz * (_Globals._MatCapBlend * ((_352 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1816.w, _1816.w * _1536, _Globals._MatCapShadowMask))));
        _1876 = vec4(_1874.x, _1874.y, _1874.z, _1725.w);
    }
    else
    {
        _1876 = _1725;
    }
    highp vec4 _2026;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1921;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1898 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _464 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1898.w = _1898.w * _1898.x;
            highp vec2 _1909 = ((_1898.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1910 = vec3(_1909.x, _1909.y, _299.z);
            highp vec2 _1911 = _1909.xy;
            _1910.z = sqrt(1.0 - clamp(dot(_1911, _1911), 0.0, 1.0));
            highp vec3 _1918 = normalize(_429 * _1910);
            highp vec3 _1919 = -_1918;
            _1921 = vec3(_619.x ? _1919.x : _1918.x, _619.y ? _1919.y : _1918.y, _619.z ? _1919.z : _1918.z);
        }
        else
        {
            _1921 = mix(_624, _621, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1937 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1938 = vec3(_1937.x ? _420.x : _320.x, _1937.y ? _420.y : _320.y, _1937.z ? _420.z : _320.z);
        bvec3 _1939 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1940 = vec3(_1939.x ? vec3(0.0, 1.0, 0.0).x : _327.x, _1939.y ? vec3(0.0, 1.0, 0.0).y : _327.y, _1939.z ? vec3(0.0, 1.0, 0.0).z : _327.z);
        highp vec3 _1944 = normalize(_1940 - (_1938 * dot(_1938, _1940)));
        highp vec4 _1966 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1921 * mat3(cross(_1938, _1944), _1944, _1938)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1967 = _1966.xyz;
        highp float _1973 = _1966.w;
        highp vec4 _1990 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _464 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1992 = mix(_1967, _1967 * _1535, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1999 = mix(_1992, _1992 * _1353.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2006 = _1876.xyz + _1999;
        highp vec3 _2007 = _1876.xyz * _1999;
        bvec3 _2009 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2010 = vec3(_2009.x ? _1999.x : _294.x, _2009.y ? _1999.y : _294.y, _2009.z ? _1999.z : _294.z);
        bvec3 _2012 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2020;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2018 = (-_1876.xyz) * _1999 + _2006;
            bvec3 _2492 = isnan(_2018);
            bvec3 _2493 = isnan(_1876.xyz);
            highp vec3 _2494 = max(_2018, _1876.xyz);
            highp vec3 _2495 = vec3(_2492.x ? _1876.xyz.x : _2494.x, _2492.y ? _1876.xyz.y : _2494.y, _2492.z ? _1876.xyz.z : _2494.z);
            _2020 = vec3(_2493.x ? _2018.x : _2495.x, _2493.y ? _2018.y : _2495.y, _2493.z ? _2018.z : _2495.z);
        }
        else
        {
            _2020 = vec3(_2012.x ? _2006.x : _2010.x, _2012.y ? _2006.y : _2010.y, _2012.z ? _2006.z : _2010.z);
        }
        bvec3 _2022 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2024 = mix(_1876.xyz, vec3(_2022.x ? _2007.x : _2020.x, _2022.y ? _2007.y : _2020.y, _2022.z ? _2007.z : _2020.z), _1990.xyz * (_Globals._MatCap2ndBlend * ((_352 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1973, _1973 * _1536, _Globals._MatCap2ndShadowMask))));
        _2026 = vec4(_2024.x, _2024.y, _2024.z, _1876.w);
    }
    else
    {
        _2026 = _1876;
    }
    highp vec4 _2172;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2045 = mix(_624, _621, vec3(_Globals._RimNormalStrength));
        highp float _2049 = dot(_404, _2045) * 0.5 + 0.5;
        highp float _2072 = (_352 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2045, _420)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2076 = mix(_2072, _2072 * clamp((_2049 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2077 = _2072 * clamp(((1.0 - _2049) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2087 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2096 = clamp((_2076 - _2087) / clamp(fwidth(_2076) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2087), 0.0, 1.0), 0.0, 1.0);
        highp float _2103 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2113 = clamp((_2077 * _Globals._RimDirStrength + (-_2103)) / clamp(fwidth(_2077 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2103), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2125 = vec3(1.0 - _Globals._RimEnableLighting) + (_1535 * _Globals._RimEnableLighting);
        highp vec3 _2127 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1353.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2128 = _2127 * _2125;
        highp vec3 _2134 = _2127 * _2125 + _2026.xyz;
        highp vec3 _2135 = _2026.xyz * _2128;
        bvec3 _2137 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2138 = vec3(_2137.x ? _2128.x : _294.x, _2137.y ? _2128.y : _294.y, _2137.z ? _2128.z : _294.z);
        bvec3 _2140 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2142 = _Globals._RimBlendMode == 2u;
        highp vec3 _2148;
        if (_2142)
        {
            highp vec3 _2146 = (-_2026.xyz) * _2128 + _2134;
            bvec3 _2497 = isnan(_2146);
            bvec3 _2498 = isnan(_2026.xyz);
            highp vec3 _2499 = max(_2146, _2026.xyz);
            highp vec3 _2500 = vec3(_2497.x ? _2026.xyz.x : _2499.x, _2497.y ? _2026.xyz.y : _2499.y, _2497.z ? _2026.xyz.z : _2499.z);
            _2148 = vec3(_2498.x ? _2146.x : _2500.x, _2498.y ? _2146.y : _2500.y, _2498.z ? _2146.z : _2500.z);
        }
        else
        {
            _2148 = vec3(_2140.x ? _2134.x : _2138.x, _2140.y ? _2134.y : _2138.y, _2140.z ? _2134.z : _2138.z);
        }
        bvec3 _2150 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2153 = mix(_2026.xyz, vec3(_2150.x ? _2135.x : _2148.x, _2150.y ? _2135.y : _2148.y, _2150.z ? _2135.z : _2148.z), vec3(mix(_2096, _2096 * _1536, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2155 = _Globals._RimIndirColor.xyz * _2125;
        highp vec3 _2159 = _Globals._RimIndirColor.xyz * _2125 + _2153;
        highp vec3 _2160 = _2153 * _2155;
        highp vec3 _2161 = vec3(_2137.x ? _2155.x : _294.x, _2137.y ? _2155.y : _294.y, _2137.z ? _2155.z : _294.z);
        highp vec3 _2168;
        if (_2142)
        {
            highp vec3 _2166 = (-_2153) * _2155 + _2159;
            bvec3 _2502 = isnan(_2166);
            bvec3 _2503 = isnan(_2153);
            highp vec3 _2504 = max(_2166, _2153);
            highp vec3 _2505 = vec3(_2502.x ? _2153.x : _2504.x, _2502.y ? _2153.y : _2504.y, _2502.z ? _2153.z : _2504.z);
            _2168 = vec3(_2503.x ? _2166.x : _2505.x, _2503.y ? _2166.y : _2505.y, _2503.z ? _2166.z : _2505.z);
        }
        else
        {
            _2168 = vec3(_2140.x ? _2159.x : _2161.x, _2140.y ? _2159.y : _2161.y, _2140.z ? _2159.z : _2161.z);
        }
        highp vec3 _2170 = mix(_2153, vec3(_2150.x ? _2160.x : _2168.x, _2150.y ? _2160.y : _2168.y, _2150.z ? _2160.z : _2168.z), vec3(mix(_2113, _2113 * _1536, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2172 = vec4(_2170.x, _2170.y, _2170.z, _2026.w);
    }
    else
    {
        _2172 = _2026;
    }
    highp vec4 _2237;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2186 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _408, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2200 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2206;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2206 = roundEven(_2200);
        }
        else
        {
            _2206 = _2200;
        }
        highp vec3 _2213 = mix(_2186, _2186 * _1353.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2217 = _2172.xyz + _2213;
        highp vec3 _2218 = _2172.xyz * _2213;
        bvec3 _2220 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2221 = vec3(_2220.x ? _2213.x : _294.x, _2220.y ? _2213.y : _294.y, _2220.z ? _2213.z : _294.z);
        bvec3 _2223 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2231;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2229 = (-_2172.xyz) * _2213 + _2217;
            bvec3 _2507 = isnan(_2229);
            bvec3 _2508 = isnan(_2172.xyz);
            highp vec3 _2509 = max(_2229, _2172.xyz);
            highp vec3 _2510 = vec3(_2507.x ? _2172.xyz.x : _2509.x, _2507.y ? _2172.xyz.y : _2509.y, _2507.z ? _2172.xyz.z : _2509.z);
            _2231 = vec3(_2508.x ? _2229.x : _2510.x, _2508.y ? _2229.y : _2510.y, _2508.z ? _2229.z : _2510.z);
        }
        else
        {
            _2231 = vec3(_2223.x ? _2217.x : _2221.x, _2223.y ? _2217.y : _2221.y, _2223.z ? _2217.z : _2221.z);
        }
        bvec3 _2233 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2235 = mix(_2172.xyz, vec3(_2233.x ? _2218.x : _2231.x, _2233.y ? _2218.y : _2231.y, _2233.z ? _2218.z : _2231.z), vec3((_Globals._EmissionBlend * mix(1.0, _2206, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2237 = vec4(_2235.x, _2235.y, _2235.z, _2172.w);
    }
    else
    {
        _2237 = _2172;
    }
    highp vec4 _2302;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2251 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _408, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2265 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2271;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2271 = roundEven(_2265);
        }
        else
        {
            _2271 = _2265;
        }
        highp vec3 _2278 = mix(_2251, _2251 * _1353.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2282 = _2237.xyz + _2278;
        highp vec3 _2283 = _2237.xyz * _2278;
        bvec3 _2285 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2286 = vec3(_2285.x ? _2278.x : _294.x, _2285.y ? _2278.y : _294.y, _2285.z ? _2278.z : _294.z);
        bvec3 _2288 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2296;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2294 = (-_2237.xyz) * _2278 + _2282;
            bvec3 _2512 = isnan(_2294);
            bvec3 _2513 = isnan(_2237.xyz);
            highp vec3 _2514 = max(_2294, _2237.xyz);
            highp vec3 _2515 = vec3(_2512.x ? _2237.xyz.x : _2514.x, _2512.y ? _2237.xyz.y : _2514.y, _2512.z ? _2237.xyz.z : _2514.z);
            _2296 = vec3(_2513.x ? _2294.x : _2515.x, _2513.y ? _2294.y : _2515.y, _2513.z ? _2294.z : _2515.z);
        }
        else
        {
            _2296 = vec3(_2288.x ? _2282.x : _2286.x, _2288.y ? _2282.y : _2286.y, _2288.z ? _2282.z : _2286.z);
        }
        bvec3 _2298 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2300 = mix(_2237.xyz, vec3(_2298.x ? _2283.x : _2296.x, _2298.y ? _2283.y : _2296.y, _2298.z ? _2283.z : _2296.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2271, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2302 = vec4(_2300.x, _2300.y, _2300.z, _2237.w);
    }
    else
    {
        _2302 = _2237;
    }
    bvec3 _2310 = bvec3(_352 < 0.0);
    highp vec3 _2311 = (_2302.xyz + (_Globals._DissolveColor.xyz * _1343)).xyz;
    highp vec3 _2319 = mix(_2311, _Globals._BackfaceColor.xyz * _1535, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2354 = vec3(_2310.x ? _2319.x : _2311.x, _2310.y ? _2319.y : _2311.y, _2310.z ? _2319.z : _2311.z).xyz;
    highp vec3 _2362 = mix(_2354, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2354, vec3(pow(clamp(1.0 - abs(dot(_624, _420)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_352 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _413) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2362.x, _2362.y, _2362.z, _2302.w), vec4(out_var_TEXCOORD9));
}
