#version 300 es
precision mediump float;
precision highp int;

vec3 _295;
vec3 _300;
float _301;

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
    highp vec3 _321 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _328 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _344 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _353 = float(gl_FrontFacing ? 1 : (-1));
    highp float _404;
    do
    {
        highp vec3 _360 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _361 = _360.xy;
        highp float _367 = _360.z;
        if ((any(lessThan(_361, vec2(0.0))) || any(greaterThan(_361, vec2(1.0)))) || (_367 > 1.0))
        {
            _404 = 1.0;
            break;
        }
        highp float _377 = _367 + _Globals.uShadowBias;
        _404 = (((step(_377, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _361), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_377, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _361), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_377, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _361), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_377, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _361), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _405 = normalize(out_var_TEXCOORD7);
    highp vec3 _409 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _413 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _414 = length(_413);
    highp vec3 _421 = normalize(_413);
    highp mat3 _430 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _435 = bvec2(_353 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _436 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _449 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _450 = sin(_449);
    highp float _451 = cos(_449);
    highp vec2 _452 = (vec2(_435.x ? _436.x : out_var_TEXCOORD0.xy.x, _435.y ? _436.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _453 = _452.x;
    highp float _454 = _452.y;
    highp vec2 _465 = (vec2(_453 * _451 + (-(_454 * _450)), _453 * _450 + (_454 * _451)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _469 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _465);
    highp vec3 _476 = pow(abs(_469.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _477 = _476.z;
    highp float _478 = _476.y;
    bvec4 _480 = bvec4(_477 > _478);
    highp vec4 _481 = vec4(_477, _478, -1.0, 0.666666686534881591796875);
    highp vec4 _482 = vec4(_478, _477, 0.0, -0.3333333432674407958984375);
    highp vec4 _483 = vec4(_480.x ? _481.x : _482.x, _480.y ? _481.y : _482.y, _480.z ? _481.z : _482.z, _480.w ? _481.w : _482.w);
    highp float _484 = _483.x;
    highp float _485 = _476.x;
    bvec4 _487 = bvec4(_484 > _485);
    highp vec4 _490 = vec4(_484, _483.yw, _485);
    highp vec4 _492 = vec4(_485, _483.yz, _484);
    highp vec4 _493 = vec4(_487.x ? _490.x : _492.x, _487.y ? _490.y : _492.y, _487.z ? _490.z : _492.z, _487.w ? _490.w : _492.w);
    highp float _498 = _493.x - (isnan(_493.y) ? _493.w : (isnan(_493.w) ? _493.y : min(_493.w, _493.y)));
    highp float _511 = clamp((_498 / (_493.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _514 = clamp(_493.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _528 = vec3((-_514) * _511 + _514) + (clamp(abs((fract(vec3(abs(_493.z + ((_493.w - _493.y) / (6.0 * _498 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_514 * _511));
    highp vec4 _532 = vec4(_528.x, _528.y, _528.z, _469.w) * _Globals._Color;
    highp vec3 _564;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _545 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _465 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _545.w = _545.w * _545.x;
        highp vec2 _556 = ((_545.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _557 = vec3(_556.x, _556.y, _300.z);
        highp vec2 _558 = _556.xy;
        _557.z = sqrt(1.0 - clamp(dot(_558, _558), 0.0, 1.0));
        _564 = _557;
    }
    else
    {
        _564 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _613;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _573 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _574 = vec2(_573.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _573.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _576 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _577 = vec2(_576.x ? out_var_TEXCOORD1.xy.x : _574.x, _576.y ? out_var_TEXCOORD1.xy.y : _574.y);
        bvec2 _579 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _589 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_579.x ? out_var_TEXCOORD1.zw.x : _577.x, _579.y ? out_var_TEXCOORD1.zw.y : _577.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _589.w = _589.w * _589.x;
        highp vec2 _601 = (((_589.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _613 = vec3(_564.xy + _601, _564.z * sqrt(1.0 - clamp(dot(_601, _601), 0.0, 1.0)));
    }
    else
    {
        _613 = _564;
    }
    highp vec3 _615 = normalize(_430 * _613);
    bvec3 _620 = bvec3(_353 < (_Globals._FlipNormal - 1.0));
    highp vec3 _621 = -_615;
    highp vec3 _622 = vec3(_620.x ? _621.x : _615.x, _620.y ? _621.y : _615.y, _620.z ? _621.z : _615.z);
    highp float _624 = clamp(dot(_622, _421), 0.0, 1.0);
    highp vec3 _625 = normalize(out_var_TEXCOORD4);
    highp vec2 _629 = ((_622 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _328, _321)).xy * 0.5) + vec2(0.5);
    bool _630 = out_var_TEXCOORD5.w > 0.0;
    bool _635 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _918;
    highp vec4 _919;
    if (_635)
    {
        bvec2 _641 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _642 = vec2(_641.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _641.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _644 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _645 = vec2(_644.x ? out_var_TEXCOORD1.xy.x : _642.x, _644.y ? out_var_TEXCOORD1.xy.y : _642.y);
        bvec2 _647 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _648 = vec2(_647.x ? out_var_TEXCOORD1.zw.x : _645.x, _647.y ? out_var_TEXCOORD1.zw.y : _645.y);
        bvec2 _650 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _651 = vec2(_650.x ? _629.x : _648.x, _650.y ? _629.y : _648.y);
        highp vec4 _690 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _691 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _699;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _698 = _651;
            _698.x = abs(_651.x - 0.5) + 0.5;
            _699 = _698;
        }
        else
        {
            _699 = _651;
        }
        highp vec2 _700 = _690.xy;
        highp vec2 _701 = _690.zw;
        highp vec2 _702 = _699 * _700 + _701;
        highp vec2 _711;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_651.x < 0.5))
        {
            highp vec2 _710 = _702;
            _710.x = 1.0 - _702.x;
            _711 = _710;
        }
        else
        {
            _711 = _702;
        }
        highp vec2 _718;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _630)
        {
            highp vec2 _717 = _711;
            _717.x = 1.0 - _711.x;
            _718 = _717;
        }
        else
        {
            _718 = _711;
        }
        highp vec2 _723;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _630)
        {
            highp vec2 _722 = _718;
            _722.x = -1.0;
            _723 = _722;
        }
        else
        {
            _723 = _718;
        }
        highp vec2 _729;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_630))
        {
            highp vec2 _728 = _723;
            _728.x = -1.0;
            _729 = _728;
        }
        else
        {
            _729 = _723;
        }
        highp float _732 = sin(_691);
        highp float _733 = cos(_691);
        highp vec2 _734 = ((_729 - _701) / _700) - vec2(0.5);
        highp float _735 = _734.x;
        highp float _736 = _734.y;
        highp vec2 _744 = (vec2(_735 * _733 + (-(_736 * _732)), _735 * _732 + (_736 * _733)) + vec2(0.5)) * _700 + _701;
        uint _748 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _752 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _748 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _748);
        highp float _753 = _744.x;
        highp float _754 = _744.y;
        uint _761 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _771 = ((mix(vec2(_753, 1.0 - _754), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_752 % _761), float(_752 / _761))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _771.y = 1.0 - _771.y;
        highp vec4 _776 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _771);
        highp vec4 _792;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _779 = _776.x;
            highp float _780 = _776.y;
            highp float _781 = _776.z;
            highp float _782 = isnan(_780) ? _779 : (isnan(_779) ? _780 : min(_779, _780));
            highp float _783 = isnan(_780) ? _779 : (isnan(_779) ? _780 : max(_779, _780));
            highp float _784 = isnan(_781) ? _783 : (isnan(_783) ? _781 : min(_783, _781));
            highp float _785 = isnan(_784) ? _782 : (isnan(_782) ? _784 : max(_782, _784));
            _792 = vec4(1.0, 1.0, 1.0, clamp((_785 - 0.5) / clamp(fwidth(_785), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _792 = _776;
        }
        highp vec4 _815;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _796 = clamp(_624 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _799 = 0.5 - abs(_753 - 0.5);
            highp float _806 = 0.5 - abs(_754 - 0.5);
            highp vec4 _814 = _792;
            _814.w = _792.w * (clamp(_799 / clamp(fwidth(_799), 9.9999997473787516355514526367188e-05, _796), 0.0, 1.0) * clamp(_806 / clamp(fwidth(_806), 9.9999997473787516355514526367188e-05, _796), 0.0, 1.0));
            _815 = _814;
        }
        else
        {
            _815 = _792;
        }
        highp vec4 _816 = _Globals._Color2nd * _815;
        highp float _822 = _816.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _465).x;
        _816.w = mix(_822, _822 * clamp((_414 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _848;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_353 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_353 < 0.0)))
        {
            highp vec4 _847 = _816;
            _847.w = 0.0;
            _848 = _847;
        }
        else
        {
            _848 = _816;
        }
        highp vec4 _887;
        highp vec4 _888;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _859;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _858 = _532;
                _858.w = _848.w;
                _859 = _858;
            }
            else
            {
                _859 = _532;
            }
            highp vec4 _867;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _866 = _859;
                _866.w = _859.w * _848.w;
                _867 = _866;
            }
            else
            {
                _867 = _859;
            }
            highp vec4 _876;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _875 = _867;
                _875.w = clamp(_867.w + _848.w, 0.0, 1.0);
                _876 = _875;
            }
            else
            {
                _876 = _867;
            }
            highp vec4 _885;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _884 = _876;
                _884.w = clamp(_876.w - _848.w, 0.0, 1.0);
                _885 = _884;
            }
            else
            {
                _885 = _876;
            }
            highp vec4 _886 = _848;
            _886.w = 1.0;
            _887 = _886;
            _888 = _885;
        }
        else
        {
            _887 = _848;
            _888 = _532;
        }
        highp vec3 _898 = _888.xyz + _887.xyz;
        highp vec3 _899 = _888.xyz * _887.xyz;
        bvec3 _901 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _902 = vec3(_901.x ? _887.xyz.x : _295.x, _901.y ? _887.xyz.y : _295.y, _901.z ? _887.xyz.z : _295.z);
        bvec3 _904 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _912;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _910 = (-_888.xyz) * _887.xyz + _898;
            bvec3 _2428 = isnan(_910);
            bvec3 _2429 = isnan(_888.xyz);
            highp vec3 _2430 = max(_910, _888.xyz);
            highp vec3 _2431 = vec3(_2428.x ? _888.xyz.x : _2430.x, _2428.y ? _888.xyz.y : _2430.y, _2428.z ? _888.xyz.z : _2430.z);
            _912 = vec3(_2429.x ? _910.x : _2431.x, _2429.y ? _910.y : _2431.y, _2429.z ? _910.z : _2431.z);
        }
        else
        {
            _912 = vec3(_904.x ? _898.x : _902.x, _904.y ? _898.y : _902.y, _904.z ? _898.z : _902.z);
        }
        bvec3 _914 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _916 = mix(_888.xyz, vec3(_914.x ? _899.x : _912.x, _914.y ? _899.y : _912.y, _914.z ? _899.z : _912.z), vec3(_887.w * _Globals._Main2ndEnableLighting));
        _918 = _887;
        _919 = vec4(_916.x, _916.y, _916.z, _888.w);
    }
    else
    {
        _918 = _Globals._Color2nd;
        _919 = _532;
    }
    bool _924 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1207;
    highp vec4 _1208;
    if (_924)
    {
        bvec2 _930 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _931 = vec2(_930.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _930.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _933 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _934 = vec2(_933.x ? out_var_TEXCOORD1.xy.x : _931.x, _933.y ? out_var_TEXCOORD1.xy.y : _931.y);
        bvec2 _936 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _937 = vec2(_936.x ? out_var_TEXCOORD1.zw.x : _934.x, _936.y ? out_var_TEXCOORD1.zw.y : _934.y);
        bvec2 _939 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _940 = vec2(_939.x ? _629.x : _937.x, _939.y ? _629.y : _937.y);
        highp vec4 _979 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _980 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _988;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _987 = _940;
            _987.x = abs(_940.x - 0.5) + 0.5;
            _988 = _987;
        }
        else
        {
            _988 = _940;
        }
        highp vec2 _989 = _979.xy;
        highp vec2 _990 = _979.zw;
        highp vec2 _991 = _988 * _989 + _990;
        highp vec2 _1000;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_940.x < 0.5))
        {
            highp vec2 _999 = _991;
            _999.x = 1.0 - _991.x;
            _1000 = _999;
        }
        else
        {
            _1000 = _991;
        }
        highp vec2 _1007;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _630)
        {
            highp vec2 _1006 = _1000;
            _1006.x = 1.0 - _1000.x;
            _1007 = _1006;
        }
        else
        {
            _1007 = _1000;
        }
        highp vec2 _1012;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _630)
        {
            highp vec2 _1011 = _1007;
            _1011.x = -1.0;
            _1012 = _1011;
        }
        else
        {
            _1012 = _1007;
        }
        highp vec2 _1018;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_630))
        {
            highp vec2 _1017 = _1012;
            _1017.x = -1.0;
            _1018 = _1017;
        }
        else
        {
            _1018 = _1012;
        }
        highp float _1021 = sin(_980);
        highp float _1022 = cos(_980);
        highp vec2 _1023 = ((_1018 - _990) / _989) - vec2(0.5);
        highp float _1024 = _1023.x;
        highp float _1025 = _1023.y;
        highp vec2 _1033 = (vec2(_1024 * _1022 + (-(_1025 * _1021)), _1024 * _1021 + (_1025 * _1022)) + vec2(0.5)) * _989 + _990;
        uint _1037 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1041 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1037 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1037);
        highp float _1042 = _1033.x;
        highp float _1043 = _1033.y;
        uint _1050 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1060 = ((mix(vec2(_1042, 1.0 - _1043), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1041 % _1050), float(_1041 / _1050))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1060.y = 1.0 - _1060.y;
        highp vec4 _1065 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1060);
        highp vec4 _1081;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1068 = _1065.x;
            highp float _1069 = _1065.y;
            highp float _1070 = _1065.z;
            highp float _1071 = isnan(_1069) ? _1068 : (isnan(_1068) ? _1069 : min(_1068, _1069));
            highp float _1072 = isnan(_1069) ? _1068 : (isnan(_1068) ? _1069 : max(_1068, _1069));
            highp float _1073 = isnan(_1070) ? _1072 : (isnan(_1072) ? _1070 : min(_1072, _1070));
            highp float _1074 = isnan(_1073) ? _1071 : (isnan(_1071) ? _1073 : max(_1071, _1073));
            _1081 = vec4(1.0, 1.0, 1.0, clamp((_1074 - 0.5) / clamp(fwidth(_1074), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1081 = _1065;
        }
        highp vec4 _1104;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1085 = clamp(_624 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1088 = 0.5 - abs(_1042 - 0.5);
            highp float _1095 = 0.5 - abs(_1043 - 0.5);
            highp vec4 _1103 = _1081;
            _1103.w = _1081.w * (clamp(_1088 / clamp(fwidth(_1088), 9.9999997473787516355514526367188e-05, _1085), 0.0, 1.0) * clamp(_1095 / clamp(fwidth(_1095), 9.9999997473787516355514526367188e-05, _1085), 0.0, 1.0));
            _1104 = _1103;
        }
        else
        {
            _1104 = _1081;
        }
        highp vec4 _1105 = _Globals._Color3rd * _1104;
        highp float _1111 = _1105.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _465).x;
        _1105.w = mix(_1111, _1111 * clamp((_414 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1137;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_353 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_353 < 0.0)))
        {
            highp vec4 _1136 = _1105;
            _1136.w = 0.0;
            _1137 = _1136;
        }
        else
        {
            _1137 = _1105;
        }
        highp vec4 _1176;
        highp vec4 _1177;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1148;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1147 = _919;
                _1147.w = _1137.w;
                _1148 = _1147;
            }
            else
            {
                _1148 = _919;
            }
            highp vec4 _1156;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1155 = _1148;
                _1155.w = _1148.w * _1137.w;
                _1156 = _1155;
            }
            else
            {
                _1156 = _1148;
            }
            highp vec4 _1165;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1164 = _1156;
                _1164.w = clamp(_1156.w + _1137.w, 0.0, 1.0);
                _1165 = _1164;
            }
            else
            {
                _1165 = _1156;
            }
            highp vec4 _1174;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1173 = _1165;
                _1173.w = clamp(_1165.w - _1137.w, 0.0, 1.0);
                _1174 = _1173;
            }
            else
            {
                _1174 = _1165;
            }
            highp vec4 _1175 = _1137;
            _1175.w = 1.0;
            _1176 = _1175;
            _1177 = _1174;
        }
        else
        {
            _1176 = _1137;
            _1177 = _919;
        }
        highp vec3 _1187 = _1177.xyz + _1176.xyz;
        highp vec3 _1188 = _1177.xyz * _1176.xyz;
        bvec3 _1190 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1191 = vec3(_1190.x ? _1176.xyz.x : _295.x, _1190.y ? _1176.xyz.y : _295.y, _1190.z ? _1176.xyz.z : _295.z);
        bvec3 _1193 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1201;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1199 = (-_1177.xyz) * _1176.xyz + _1187;
            bvec3 _2453 = isnan(_1199);
            bvec3 _2454 = isnan(_1177.xyz);
            highp vec3 _2455 = max(_1199, _1177.xyz);
            highp vec3 _2456 = vec3(_2453.x ? _1177.xyz.x : _2455.x, _2453.y ? _1177.xyz.y : _2455.y, _2453.z ? _1177.xyz.z : _2455.z);
            _1201 = vec3(_2454.x ? _1199.x : _2456.x, _2454.y ? _1199.y : _2456.y, _2454.z ? _1199.z : _2456.z);
        }
        else
        {
            _1201 = vec3(_1193.x ? _1187.x : _1191.x, _1193.y ? _1187.y : _1191.y, _1193.z ? _1187.z : _1191.z);
        }
        bvec3 _1203 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1205 = mix(_1177.xyz, vec3(_1203.x ? _1188.x : _1201.x, _1203.y ? _1188.y : _1201.y, _1203.z ? _1188.z : _1201.z), vec3(_1176.w * _Globals._Main3rdEnableLighting));
        _1207 = _1176;
        _1208 = vec4(_1205.x, _1205.y, _1205.z, _1177.w);
    }
    else
    {
        _1207 = _Globals._Color3rd;
        _1208 = _919;
    }
    highp vec4 _1248;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1219 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1224;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1223 = _1208;
            _1223.w = _1219;
            _1224 = _1223;
        }
        else
        {
            _1224 = _1208;
        }
        highp vec4 _1231;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1230 = _1224;
            _1230.w = _1224.w * _1219;
            _1231 = _1230;
        }
        else
        {
            _1231 = _1224;
        }
        highp vec4 _1239;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1238 = _1231;
            _1238.w = clamp(_1231.w + _1219, 0.0, 1.0);
            _1239 = _1238;
        }
        else
        {
            _1239 = _1231;
        }
        highp vec4 _1247;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1246 = _1239;
            _1246.w = clamp(_1239.w - _1219, 0.0, 1.0);
            _1247 = _1246;
        }
        else
        {
            _1247 = _1239;
        }
        _1248 = _1247;
    }
    else
    {
        _1248 = _1208;
    }
    highp vec4 _1343;
    highp float _1344;
    if ((_344 & 1) != 0)
    {
        highp vec4 _1252 = _1248;
        _1252.w = 1.0;
        highp vec2 _1258 = roundEven(_Globals._DissolveParams.xy);
        highp float _1259 = _1258.x;
        highp vec4 _1332;
        highp float _1333;
        if (_1259 != 0.0)
        {
            highp float _1275;
            highp float _1276;
            if (_1259 == 1.0)
            {
                _1275 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1276 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1275 = 0.0;
                _1276 = 1.0;
            }
            highp float _1307;
            highp float _1308;
            if (_1259 == 2.0)
            {
                highp vec2 _1285 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1296 = (_1258.y == 1.0) ? (vec2(_1285.x * cos(_Globals._DissolvePos.w) + (-(_1285.y * sin(_Globals._DissolvePos.w))), _301) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1307 = 1.0 - clamp(abs(_1296 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1308 = _1276 * float(_1296 > _Globals._DissolveParams.z);
            }
            else
            {
                _1307 = _1275;
                _1308 = _1276;
            }
            highp float _1329;
            highp float _1330;
            if (_1259 == 3.0)
            {
                highp float _1318 = (_1258.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1329 = 1.0 - clamp(abs(_1318 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1330 = _1308 * float(_1318 > _Globals._DissolveParams.z);
            }
            else
            {
                _1329 = _1307;
                _1330 = _1308;
            }
            highp vec4 _1331 = _1252;
            _1331.w = _1330;
            _1332 = _1331;
            _1333 = _1329;
        }
        else
        {
            _1332 = _1252;
            _1333 = 0.0;
        }
        highp vec4 _1339;
        if ((_344 & 2) != 0)
        {
            highp vec4 _1338 = _1332;
            _1338.w = 1.0 - _1332.w;
            _1339 = _1338;
        }
        else
        {
            _1339 = _1332;
        }
        highp vec4 _1342 = _1339;
        _1342.w = _1339.w * _1248.w;
        _1343 = _1342;
        _1344 = _1333;
    }
    else
    {
        _1343 = _1248;
        _1344 = 0.0;
    }
    highp float _1349 = fwidth(_1343.w);
    highp float _1353 = clamp(((_1343.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1349 : (isnan(_1349) ? 9.9999997473787516355514526367188e-05 : max(_1349, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1354 = _1343;
    _1354.w = _1353;
    if (_1353 == 0.0)
    {
        discard;
    }
    highp vec4 _1531;
    highp float _1532;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1383 = clamp(dot(_405, mix(_625, _622, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1386 = clamp(dot(_405, mix(_625, _622, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1389 = clamp(dot(_405, mix(_625, _622, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1393 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1396 = clamp(_404 + distance(_405, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1399 = mix(1.0, _1396, _Globals._ShadowReceive);
        highp float _1400 = _1383 * _1399;
        highp float _1403 = mix(1.0, _1396, _Globals._Shadow2ndReceive);
        highp float _1407 = mix(1.0, _1396, _Globals._Shadow3rdReceive);
        highp float _1418 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1419 = clamp(_1418, 0.0, 1.0);
        highp float _1421 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1434 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1448 = clamp(_1418 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1461 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1476 = (_353 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1477 = clamp((_1383 * _1399 + (-_1419)) / clamp(fwidth(_1400) * _1393 + (_1421 - _1419), 0.0, 1.0), 0.0, 1.0) * _1476;
        highp vec3 _1509 = mix(mix(_1354.xyz * _Globals._ShadowColor.xyz, (_1354.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1386 * _1403 + (-_1434)) / clamp(fwidth(_1386 * _1403) * _1393 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1434), 0.0, 1.0), 0.0, 1.0) * _1476)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1354.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1389 * _1407 + (-_1461)) / clamp(fwidth(_1389 * _1407) * _1393 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1461), 0.0, 1.0), 0.0, 1.0) * _1476)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1515 = _1354.xyz * out_var_TEXCOORD6;
        highp vec3 _1521 = mix(mix(_1509, _1509 * _1354.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1354.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2463 = isnan(_1521);
        bvec3 _2464 = isnan(_1515);
        highp vec3 _2465 = min(_1521, _1515);
        highp vec3 _2466 = vec3(_2463.x ? _1515.x : _2465.x, _2463.y ? _1515.y : _2465.y, _2463.z ? _1515.z : _2465.z);
        highp vec3 _1529 = mix(mix(vec3(_2464.x ? _1521.x : _2466.x, _2464.y ? _1521.y : _2466.y, _2464.z ? _1521.z : _2466.z), _1515, _Globals._ShadowBorderColor.xyz * (clamp((_1383 * _1399 + (-_1448)) / clamp(fwidth(_1400) * _1393 + (_1421 - _1448), 0.0, 1.0), 0.0, 1.0) * _1476)), _1515, vec3(mix(1.0, _1477, _Globals._ShadowStrength)));
        _1531 = vec4(_1529.x, _1529.y, _1529.z, _1354.w);
        _1532 = _1477;
    }
    else
    {
        highp vec3 _1365 = _1354.xyz * out_var_TEXCOORD6;
        _1531 = vec4(_1365.x, _1365.y, _1365.z, _1354.w);
        _1532 = 1.0;
    }
    highp vec3 _1535 = vec3(_Globals._LightMaxLimit);
    bvec3 _2468 = isnan(out_var_TEXCOORD6);
    bvec3 _2469 = isnan(_1535);
    highp vec3 _2470 = min(out_var_TEXCOORD6, _1535);
    highp vec3 _2471 = vec3(_2468.x ? _1535.x : _2470.x, _2468.y ? _1535.y : _2470.y, _2468.z ? _1535.z : _2470.z);
    highp vec3 _1536 = vec3(_2469.x ? out_var_TEXCOORD6.x : _2471.x, _2469.y ? out_var_TEXCOORD6.y : _2471.y, _2469.z ? out_var_TEXCOORD6.z : _2471.z);
    highp float _1537 = clamp(_1532, 0.0, 1.0);
    highp vec3 _1539 = _1354.xyz * _Globals._LightMaxLimit;
    bvec3 _2473 = isnan(_1531.xyz);
    bvec3 _2474 = isnan(_1539);
    highp vec3 _2475 = min(_1531.xyz, _1539);
    highp vec3 _2476 = vec3(_2473.x ? _1539.x : _2475.x, _2473.y ? _1539.y : _2475.y, _2473.z ? _1539.z : _2475.z);
    highp vec3 _1540 = vec3(_2474.x ? _1531.xyz.x : _2476.x, _2474.y ? _1531.xyz.y : _2476.y, _2474.z ? _1531.xyz.z : _2476.z);
    highp vec4 _1574;
    if (_635)
    {
        highp vec3 _1544 = _1540.xyz;
        highp vec3 _1554 = _1544 + _918.xyz;
        highp vec3 _1555 = _1544 * _918.xyz;
        bvec3 _1557 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1558 = vec3(_1557.x ? _918.xyz.x : _295.x, _1557.y ? _918.xyz.y : _295.y, _1557.z ? _918.xyz.z : _295.z);
        bvec3 _1560 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1568;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1566 = (-_1544) * _918.xyz + _1554;
            bvec3 _2478 = isnan(_1566);
            bvec3 _2479 = isnan(_1544);
            highp vec3 _2480 = max(_1566, _1544);
            highp vec3 _2481 = vec3(_2478.x ? _1544.x : _2480.x, _2478.y ? _1544.y : _2480.y, _2478.z ? _1544.z : _2480.z);
            _1568 = vec3(_2479.x ? _1566.x : _2481.x, _2479.y ? _1566.y : _2481.y, _2479.z ? _1566.z : _2481.z);
        }
        else
        {
            _1568 = vec3(_1560.x ? _1554.x : _1558.x, _1560.y ? _1554.y : _1558.y, _1560.z ? _1554.z : _1558.z);
        }
        bvec3 _1570 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1572 = mix(_1544, vec3(_1570.x ? _1555.x : _1568.x, _1570.y ? _1555.y : _1568.y, _1570.z ? _1555.z : _1568.z), vec3((-_918.w) * _Globals._Main2ndEnableLighting + _918.w));
        _1574 = vec4(_1572.x, _1572.y, _1572.z, _1531.w);
    }
    else
    {
        _1574 = vec4(_1540.x, _1540.y, _1540.z, _1531.w);
    }
    highp vec4 _1607;
    if (_924)
    {
        highp vec3 _1587 = _1574.xyz + _1207.xyz;
        highp vec3 _1588 = _1574.xyz * _1207.xyz;
        bvec3 _1590 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1591 = vec3(_1590.x ? _1207.xyz.x : _295.x, _1590.y ? _1207.xyz.y : _295.y, _1590.z ? _1207.xyz.z : _295.z);
        bvec3 _1593 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1601;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1599 = (-_1574.xyz) * _1207.xyz + _1587;
            bvec3 _2483 = isnan(_1599);
            bvec3 _2484 = isnan(_1574.xyz);
            highp vec3 _2485 = max(_1599, _1574.xyz);
            highp vec3 _2486 = vec3(_2483.x ? _1574.xyz.x : _2485.x, _2483.y ? _1574.xyz.y : _2485.y, _2483.z ? _1574.xyz.z : _2485.z);
            _1601 = vec3(_2484.x ? _1599.x : _2486.x, _2484.y ? _1599.y : _2486.y, _2484.z ? _1599.z : _2486.z);
        }
        else
        {
            _1601 = vec3(_1593.x ? _1587.x : _1591.x, _1593.y ? _1587.y : _1591.y, _1593.z ? _1587.z : _1591.z);
        }
        bvec3 _1603 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1605 = mix(_1574.xyz, vec3(_1603.x ? _1588.x : _1601.x, _1603.y ? _1588.y : _1601.y, _1603.z ? _1588.z : _1601.z), vec3((-_1207.w) * _Globals._Main3rdEnableLighting + _1207.w));
        _1607 = vec4(_1605.x, _1605.y, _1605.z, _1574.w);
    }
    else
    {
        _1607 = _1574;
    }
    highp vec4 _1653;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1623 = pow(clamp(1.0 - abs(dot(mix(_625, _622, vec3(_Globals._RimShadeNormalStrength)), _421)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1632 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1651 = mix(_1607.xyz, _1607.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1623 - _1632) / clamp(fwidth(_1623) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1632), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1653 = vec4(_1651.x, _1651.y, _1651.z, _1607.w);
    }
    else
    {
        _1653 = _1607;
    }
    highp vec4 _1726;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1677 = dot(normalize(((-_421) * _Globals._BacklightViewStrength) + _405), mix(_625, _622, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1687;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1687 = _1677 * clamp(_404 + distance(_405, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1687 = _1677;
        }
        highp float _1696 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1724 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1354.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_353 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_421, _405) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1687 - _1696) / clamp(fwidth(_1687) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1696), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1536 + _1653.xyz;
        _1726 = vec4(_1724.x, _1724.y, _1724.z, _1653.w);
    }
    else
    {
        _1726 = _1653;
    }
    highp vec4 _1877;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1771;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1748 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _465 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1748.w = _1748.w * _1748.x;
            highp vec2 _1759 = ((_1748.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1760 = vec3(_1759.x, _1759.y, _300.z);
            highp vec2 _1761 = _1759.xy;
            _1760.z = sqrt(1.0 - clamp(dot(_1761, _1761), 0.0, 1.0));
            highp vec3 _1768 = normalize(_430 * _1760);
            highp vec3 _1769 = -_1768;
            _1771 = vec3(_620.x ? _1769.x : _1768.x, _620.y ? _1769.y : _1768.y, _620.z ? _1769.z : _1768.z);
        }
        else
        {
            _1771 = mix(_625, _622, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1788 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1789 = vec3(_1788.x ? _421.x : _321.x, _1788.y ? _421.y : _321.y, _1788.z ? _421.z : _321.z);
        bvec3 _1790 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1791 = vec3(_1790.x ? vec3(0.0, 1.0, 0.0).x : _328.x, _1790.y ? vec3(0.0, 1.0, 0.0).y : _328.y, _1790.z ? vec3(0.0, 1.0, 0.0).z : _328.z);
        highp vec3 _1795 = normalize(_1791 - (_1789 * dot(_1789, _1791)));
        highp vec4 _1817 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1771) * mat3(cross(_1789, _1795), _1795, _1789)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1841 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _465 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1843 = mix(_1817.xyz, _1817.xyz * _1536, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1850 = mix(_1843, _1843 * _1354.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1857 = _1726.xyz + _1850;
        highp vec3 _1858 = _1726.xyz * _1850;
        bvec3 _1860 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1861 = vec3(_1860.x ? _1850.x : _295.x, _1860.y ? _1850.y : _295.y, _1860.z ? _1850.z : _295.z);
        bvec3 _1863 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1871;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1869 = (-_1726.xyz) * _1850 + _1857;
            bvec3 _2488 = isnan(_1869);
            bvec3 _2489 = isnan(_1726.xyz);
            highp vec3 _2490 = max(_1869, _1726.xyz);
            highp vec3 _2491 = vec3(_2488.x ? _1726.xyz.x : _2490.x, _2488.y ? _1726.xyz.y : _2490.y, _2488.z ? _1726.xyz.z : _2490.z);
            _1871 = vec3(_2489.x ? _1869.x : _2491.x, _2489.y ? _1869.y : _2491.y, _2489.z ? _1869.z : _2491.z);
        }
        else
        {
            _1871 = vec3(_1863.x ? _1857.x : _1861.x, _1863.y ? _1857.y : _1861.y, _1863.z ? _1857.z : _1861.z);
        }
        bvec3 _1873 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1875 = mix(_1726.xyz, vec3(_1873.x ? _1858.x : _1871.x, _1873.y ? _1858.y : _1871.y, _1873.z ? _1858.z : _1871.z), _1841.xyz * (_Globals._MatCapBlend * ((_353 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1817.w, _1817.w * _1537, _Globals._MatCapShadowMask))));
        _1877 = vec4(_1875.x, _1875.y, _1875.z, _1726.w);
    }
    else
    {
        _1877 = _1726;
    }
    highp vec4 _2027;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1922;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1899 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _465 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1899.w = _1899.w * _1899.x;
            highp vec2 _1910 = ((_1899.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1911 = vec3(_1910.x, _1910.y, _300.z);
            highp vec2 _1912 = _1910.xy;
            _1911.z = sqrt(1.0 - clamp(dot(_1912, _1912), 0.0, 1.0));
            highp vec3 _1919 = normalize(_430 * _1911);
            highp vec3 _1920 = -_1919;
            _1922 = vec3(_620.x ? _1920.x : _1919.x, _620.y ? _1920.y : _1919.y, _620.z ? _1920.z : _1919.z);
        }
        else
        {
            _1922 = mix(_625, _622, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1938 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1939 = vec3(_1938.x ? _421.x : _321.x, _1938.y ? _421.y : _321.y, _1938.z ? _421.z : _321.z);
        bvec3 _1940 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1941 = vec3(_1940.x ? vec3(0.0, 1.0, 0.0).x : _328.x, _1940.y ? vec3(0.0, 1.0, 0.0).y : _328.y, _1940.z ? vec3(0.0, 1.0, 0.0).z : _328.z);
        highp vec3 _1945 = normalize(_1941 - (_1939 * dot(_1939, _1941)));
        highp vec4 _1967 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1922 * mat3(cross(_1939, _1945), _1945, _1939)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1968 = _1967.xyz;
        highp float _1974 = _1967.w;
        highp vec4 _1991 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _465 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1993 = mix(_1968, _1968 * _1536, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2000 = mix(_1993, _1993 * _1354.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2007 = _1877.xyz + _2000;
        highp vec3 _2008 = _1877.xyz * _2000;
        bvec3 _2010 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2011 = vec3(_2010.x ? _2000.x : _295.x, _2010.y ? _2000.y : _295.y, _2010.z ? _2000.z : _295.z);
        bvec3 _2013 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2021;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2019 = (-_1877.xyz) * _2000 + _2007;
            bvec3 _2493 = isnan(_2019);
            bvec3 _2494 = isnan(_1877.xyz);
            highp vec3 _2495 = max(_2019, _1877.xyz);
            highp vec3 _2496 = vec3(_2493.x ? _1877.xyz.x : _2495.x, _2493.y ? _1877.xyz.y : _2495.y, _2493.z ? _1877.xyz.z : _2495.z);
            _2021 = vec3(_2494.x ? _2019.x : _2496.x, _2494.y ? _2019.y : _2496.y, _2494.z ? _2019.z : _2496.z);
        }
        else
        {
            _2021 = vec3(_2013.x ? _2007.x : _2011.x, _2013.y ? _2007.y : _2011.y, _2013.z ? _2007.z : _2011.z);
        }
        bvec3 _2023 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2025 = mix(_1877.xyz, vec3(_2023.x ? _2008.x : _2021.x, _2023.y ? _2008.y : _2021.y, _2023.z ? _2008.z : _2021.z), _1991.xyz * (_Globals._MatCap2ndBlend * ((_353 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1974, _1974 * _1537, _Globals._MatCap2ndShadowMask))));
        _2027 = vec4(_2025.x, _2025.y, _2025.z, _1877.w);
    }
    else
    {
        _2027 = _1877;
    }
    highp vec4 _2173;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2046 = mix(_625, _622, vec3(_Globals._RimNormalStrength));
        highp float _2050 = dot(_405, _2046) * 0.5 + 0.5;
        highp float _2073 = (_353 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2046, _421)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2077 = mix(_2073, _2073 * clamp((_2050 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2078 = _2073 * clamp(((1.0 - _2050) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2088 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2097 = clamp((_2077 - _2088) / clamp(fwidth(_2077) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2088), 0.0, 1.0), 0.0, 1.0);
        highp float _2104 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2114 = clamp((_2078 * _Globals._RimDirStrength + (-_2104)) / clamp(fwidth(_2078 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2104), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2126 = vec3(1.0 - _Globals._RimEnableLighting) + (_1536 * _Globals._RimEnableLighting);
        highp vec3 _2128 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1354.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2129 = _2128 * _2126;
        highp vec3 _2135 = _2128 * _2126 + _2027.xyz;
        highp vec3 _2136 = _2027.xyz * _2129;
        bvec3 _2138 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2139 = vec3(_2138.x ? _2129.x : _295.x, _2138.y ? _2129.y : _295.y, _2138.z ? _2129.z : _295.z);
        bvec3 _2141 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2143 = _Globals._RimBlendMode == 2u;
        highp vec3 _2149;
        if (_2143)
        {
            highp vec3 _2147 = (-_2027.xyz) * _2129 + _2135;
            bvec3 _2498 = isnan(_2147);
            bvec3 _2499 = isnan(_2027.xyz);
            highp vec3 _2500 = max(_2147, _2027.xyz);
            highp vec3 _2501 = vec3(_2498.x ? _2027.xyz.x : _2500.x, _2498.y ? _2027.xyz.y : _2500.y, _2498.z ? _2027.xyz.z : _2500.z);
            _2149 = vec3(_2499.x ? _2147.x : _2501.x, _2499.y ? _2147.y : _2501.y, _2499.z ? _2147.z : _2501.z);
        }
        else
        {
            _2149 = vec3(_2141.x ? _2135.x : _2139.x, _2141.y ? _2135.y : _2139.y, _2141.z ? _2135.z : _2139.z);
        }
        bvec3 _2151 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2154 = mix(_2027.xyz, vec3(_2151.x ? _2136.x : _2149.x, _2151.y ? _2136.y : _2149.y, _2151.z ? _2136.z : _2149.z), vec3(mix(_2097, _2097 * _1537, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2156 = _Globals._RimIndirColor.xyz * _2126;
        highp vec3 _2160 = _Globals._RimIndirColor.xyz * _2126 + _2154;
        highp vec3 _2161 = _2154 * _2156;
        highp vec3 _2162 = vec3(_2138.x ? _2156.x : _295.x, _2138.y ? _2156.y : _295.y, _2138.z ? _2156.z : _295.z);
        highp vec3 _2169;
        if (_2143)
        {
            highp vec3 _2167 = (-_2154) * _2156 + _2160;
            bvec3 _2503 = isnan(_2167);
            bvec3 _2504 = isnan(_2154);
            highp vec3 _2505 = max(_2167, _2154);
            highp vec3 _2506 = vec3(_2503.x ? _2154.x : _2505.x, _2503.y ? _2154.y : _2505.y, _2503.z ? _2154.z : _2505.z);
            _2169 = vec3(_2504.x ? _2167.x : _2506.x, _2504.y ? _2167.y : _2506.y, _2504.z ? _2167.z : _2506.z);
        }
        else
        {
            _2169 = vec3(_2141.x ? _2160.x : _2162.x, _2141.y ? _2160.y : _2162.y, _2141.z ? _2160.z : _2162.z);
        }
        highp vec3 _2171 = mix(_2154, vec3(_2151.x ? _2161.x : _2169.x, _2151.y ? _2161.y : _2169.y, _2151.z ? _2161.z : _2169.z), vec3(mix(_2114, _2114 * _1537, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2173 = vec4(_2171.x, _2171.y, _2171.z, _2027.w);
    }
    else
    {
        _2173 = _2027;
    }
    highp vec4 _2238;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2187 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _409, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2201 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2207;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2207 = roundEven(_2201);
        }
        else
        {
            _2207 = _2201;
        }
        highp vec3 _2214 = mix(_2187, _2187 * _1354.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2218 = _2173.xyz + _2214;
        highp vec3 _2219 = _2173.xyz * _2214;
        bvec3 _2221 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2222 = vec3(_2221.x ? _2214.x : _295.x, _2221.y ? _2214.y : _295.y, _2221.z ? _2214.z : _295.z);
        bvec3 _2224 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2232;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2230 = (-_2173.xyz) * _2214 + _2218;
            bvec3 _2508 = isnan(_2230);
            bvec3 _2509 = isnan(_2173.xyz);
            highp vec3 _2510 = max(_2230, _2173.xyz);
            highp vec3 _2511 = vec3(_2508.x ? _2173.xyz.x : _2510.x, _2508.y ? _2173.xyz.y : _2510.y, _2508.z ? _2173.xyz.z : _2510.z);
            _2232 = vec3(_2509.x ? _2230.x : _2511.x, _2509.y ? _2230.y : _2511.y, _2509.z ? _2230.z : _2511.z);
        }
        else
        {
            _2232 = vec3(_2224.x ? _2218.x : _2222.x, _2224.y ? _2218.y : _2222.y, _2224.z ? _2218.z : _2222.z);
        }
        bvec3 _2234 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2236 = mix(_2173.xyz, vec3(_2234.x ? _2219.x : _2232.x, _2234.y ? _2219.y : _2232.y, _2234.z ? _2219.z : _2232.z), vec3((_Globals._EmissionBlend * mix(1.0, _2207, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2238 = vec4(_2236.x, _2236.y, _2236.z, _2173.w);
    }
    else
    {
        _2238 = _2173;
    }
    highp vec4 _2303;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2252 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _409, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2266 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2272;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2272 = roundEven(_2266);
        }
        else
        {
            _2272 = _2266;
        }
        highp vec3 _2279 = mix(_2252, _2252 * _1354.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2283 = _2238.xyz + _2279;
        highp vec3 _2284 = _2238.xyz * _2279;
        bvec3 _2286 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2287 = vec3(_2286.x ? _2279.x : _295.x, _2286.y ? _2279.y : _295.y, _2286.z ? _2279.z : _295.z);
        bvec3 _2289 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2297;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2295 = (-_2238.xyz) * _2279 + _2283;
            bvec3 _2513 = isnan(_2295);
            bvec3 _2514 = isnan(_2238.xyz);
            highp vec3 _2515 = max(_2295, _2238.xyz);
            highp vec3 _2516 = vec3(_2513.x ? _2238.xyz.x : _2515.x, _2513.y ? _2238.xyz.y : _2515.y, _2513.z ? _2238.xyz.z : _2515.z);
            _2297 = vec3(_2514.x ? _2295.x : _2516.x, _2514.y ? _2295.y : _2516.y, _2514.z ? _2295.z : _2516.z);
        }
        else
        {
            _2297 = vec3(_2289.x ? _2283.x : _2287.x, _2289.y ? _2283.y : _2287.y, _2289.z ? _2283.z : _2287.z);
        }
        bvec3 _2299 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2301 = mix(_2238.xyz, vec3(_2299.x ? _2284.x : _2297.x, _2299.y ? _2284.y : _2297.y, _2299.z ? _2284.z : _2297.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2272, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2303 = vec4(_2301.x, _2301.y, _2301.z, _2238.w);
    }
    else
    {
        _2303 = _2238;
    }
    bvec3 _2311 = bvec3(_353 < 0.0);
    highp vec3 _2312 = (_2303.xyz + (_Globals._DissolveColor.xyz * _1344)).xyz;
    highp vec3 _2320 = mix(_2312, _Globals._BackfaceColor.xyz * _1536, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2355 = vec3(_2311.x ? _2320.x : _2312.x, _2311.y ? _2320.y : _2312.y, _2311.z ? _2320.z : _2312.z).xyz;
    highp vec3 _2363 = mix(_2355, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2355, vec3(pow(clamp(1.0 - abs(dot(_625, _421)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_353 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _414) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2363.x, _2363.y, _2363.z, _2303.w), vec4(out_var_TEXCOORD9));
}
