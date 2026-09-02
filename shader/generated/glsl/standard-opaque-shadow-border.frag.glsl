#version 300 es
precision mediump float;
precision highp int;

vec3 _311;
vec3 _317;
vec4 _318;

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
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;

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
    highp vec3 _337 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _344 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _361 = float(gl_FrontFacing ? 1 : (-1));
    highp float _412;
    do
    {
        highp vec3 _368 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _369 = _368.xy;
        highp float _375 = _368.z;
        if ((any(lessThan(_369, vec2(0.0))) || any(greaterThan(_369, vec2(1.0)))) || (_375 > 1.0))
        {
            _412 = 1.0;
            break;
        }
        highp float _385 = _375 + _Globals.uShadowBias;
        _412 = (((step(_385, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _369), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_385, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _369), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_385, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _369), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_385, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _369), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _413 = normalize(out_var_TEXCOORD7);
    highp vec3 _417 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _421 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _422 = length(_421);
    highp vec3 _429 = normalize(_421);
    bvec2 _443 = bvec2(_361 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _444 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _457 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _458 = sin(_457);
    highp float _459 = cos(_457);
    highp vec2 _460 = (vec2(_443.x ? _444.x : out_var_TEXCOORD0.xy.x, _443.y ? _444.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _461 = _460.x;
    highp float _462 = _460.y;
    highp vec2 _473 = (vec2(_461 * _459 + (-(_462 * _458)), _461 * _458 + (_462 * _459)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _474 = dFdx(_473);
    highp vec2 _475 = abs(_474);
    highp vec2 _476 = dFdy(_473);
    highp vec2 _477 = abs(_476);
    highp vec4 _481 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _473);
    highp vec3 _488 = pow(abs(_481.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _489 = _488.z;
    highp float _490 = _488.y;
    bvec4 _492 = bvec4(_489 > _490);
    highp vec4 _493 = vec4(_489, _490, -1.0, 0.666666686534881591796875);
    highp vec4 _494 = vec4(_490, _489, 0.0, -0.3333333432674407958984375);
    highp vec4 _495 = vec4(_492.x ? _493.x : _494.x, _492.y ? _493.y : _494.y, _492.z ? _493.z : _494.z, _492.w ? _493.w : _494.w);
    highp float _496 = _495.x;
    highp float _497 = _488.x;
    bvec4 _499 = bvec4(_496 > _497);
    highp vec4 _502 = vec4(_496, _495.yw, _497);
    highp vec4 _504 = vec4(_497, _495.yz, _496);
    highp vec4 _505 = vec4(_499.x ? _502.x : _504.x, _499.y ? _502.y : _504.y, _499.z ? _502.z : _504.z, _499.w ? _502.w : _504.w);
    highp float _510 = _505.x - (isnan(_505.y) ? _505.w : (isnan(_505.w) ? _505.y : min(_505.w, _505.y)));
    highp float _523 = clamp((_510 / (_505.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _526 = clamp(_505.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _540 = vec3((-_526) * _523 + _526) + (clamp(abs((fract(vec3(abs(_505.z + ((_505.w - _505.y) / (6.0 * _510 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_526 * _523));
    highp vec4 _544 = vec4(_540.x, _540.y, _540.z, _481.w) * _Globals._Color;
    highp vec3 _576;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _557 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _473 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _557.w = _557.w * _557.x;
        highp vec2 _568 = ((_557.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _569 = vec3(_568.x, _568.y, _317.z);
        highp vec2 _570 = _568.xy;
        _569.z = sqrt(1.0 - clamp(dot(_570, _570), 0.0, 1.0));
        _576 = _569;
    }
    else
    {
        _576 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _625;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _585 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _586 = vec2(_585.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _585.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _588 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _589 = vec2(_588.x ? out_var_TEXCOORD1.xy.x : _586.x, _588.y ? out_var_TEXCOORD1.xy.y : _586.y);
        bvec2 _591 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _601 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_591.x ? out_var_TEXCOORD1.zw.x : _589.x, _591.y ? out_var_TEXCOORD1.zw.y : _589.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _601.w = _601.w * _601.x;
        highp vec2 _613 = (((_601.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _625 = vec3(_576.xy + _613, _576.z * sqrt(1.0 - clamp(dot(_613, _613), 0.0, 1.0)));
    }
    else
    {
        _625 = _576;
    }
    highp vec3 _627 = normalize(mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4) * _625);
    bvec3 _632 = bvec3(_361 < (_Globals._FlipNormal - 1.0));
    highp vec3 _633 = -_627;
    highp vec3 _634 = vec3(_632.x ? _633.x : _627.x, _632.y ? _633.y : _627.y, _632.z ? _633.z : _627.z);
    highp float _636 = clamp(dot(_634, _429), 0.0, 1.0);
    highp vec3 _637 = normalize(out_var_TEXCOORD4);
    highp vec2 _641 = ((_634 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _344, _337)).xy * 0.5) + vec2(0.5);
    bool _642 = out_var_TEXCOORD5.w > 0.0;
    bool _647 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _885;
    highp vec4 _886;
    if (_647)
    {
        bvec2 _653 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _654 = vec2(_653.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _653.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _656 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _657 = vec2(_656.x ? out_var_TEXCOORD1.xy.x : _654.x, _656.y ? out_var_TEXCOORD1.xy.y : _654.y);
        bvec2 _659 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _660 = vec2(_659.x ? out_var_TEXCOORD1.zw.x : _657.x, _659.y ? out_var_TEXCOORD1.zw.y : _657.y);
        bvec2 _662 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _663 = vec2(_662.x ? _641.x : _660.x, _662.y ? _641.y : _660.y);
        highp vec4 _702 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _703 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _711;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _710 = _663;
            _710.x = abs(_663.x - 0.5) + 0.5;
            _711 = _710;
        }
        else
        {
            _711 = _663;
        }
        highp vec2 _712 = _702.xy;
        highp vec2 _713 = _702.zw;
        highp vec2 _714 = _711 * _712 + _713;
        highp vec2 _723;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_663.x < 0.5))
        {
            highp vec2 _722 = _714;
            _722.x = 1.0 - _714.x;
            _723 = _722;
        }
        else
        {
            _723 = _714;
        }
        highp vec2 _730;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _642)
        {
            highp vec2 _729 = _723;
            _729.x = 1.0 - _723.x;
            _730 = _729;
        }
        else
        {
            _730 = _723;
        }
        highp vec2 _735;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _642)
        {
            highp vec2 _734 = _730;
            _734.x = -1.0;
            _735 = _734;
        }
        else
        {
            _735 = _730;
        }
        highp vec2 _741;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_642))
        {
            highp vec2 _740 = _735;
            _740.x = -1.0;
            _741 = _740;
        }
        else
        {
            _741 = _735;
        }
        highp float _744 = sin(_703);
        highp float _745 = cos(_703);
        highp vec2 _746 = ((_741 - _713) / _712) - vec2(0.5);
        highp float _747 = _746.x;
        highp float _748 = _746.y;
        highp vec2 _756 = (vec2(_747 * _745 + (-(_748 * _744)), _747 * _744 + (_748 * _745)) + vec2(0.5)) * _712 + _713;
        uint _760 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _764 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _760 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _760);
        highp float _765 = _756.x;
        highp float _766 = _756.y;
        uint _773 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _783 = ((mix(vec2(_765, 1.0 - _766), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_764 % _773), float(_764 / _773))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _783.y = 1.0 - _783.y;
        highp vec4 _788 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _783);
        highp vec4 _804;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _791 = _788.x;
            highp float _792 = _788.y;
            highp float _793 = _788.z;
            highp float _794 = isnan(_792) ? _791 : (isnan(_791) ? _792 : min(_791, _792));
            highp float _795 = isnan(_792) ? _791 : (isnan(_791) ? _792 : max(_791, _792));
            highp float _796 = isnan(_793) ? _795 : (isnan(_795) ? _793 : min(_795, _793));
            highp float _797 = isnan(_796) ? _794 : (isnan(_794) ? _796 : max(_794, _796));
            _804 = vec4(1.0, 1.0, 1.0, clamp((_797 - 0.5) / clamp(fwidth(_797), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _804 = _788;
        }
        highp vec4 _827;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _808 = clamp(_636 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _811 = 0.5 - abs(_765 - 0.5);
            highp float _818 = 0.5 - abs(_766 - 0.5);
            highp vec4 _826 = _804;
            _826.w = _804.w * (clamp(_811 / clamp(fwidth(_811), 9.9999997473787516355514526367188e-05, _808), 0.0, 1.0) * clamp(_818 / clamp(fwidth(_818), 9.9999997473787516355514526367188e-05, _808), 0.0, 1.0));
            _827 = _826;
        }
        else
        {
            _827 = _804;
        }
        highp vec4 _828 = _Globals._Color2nd * _827;
        highp float _829 = _828.w;
        _828.w = mix(_829, _829 * clamp((_422 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _855;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_361 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_361 < 0.0)))
        {
            highp vec4 _854 = _828;
            _854.w = 0.0;
            _855 = _854;
        }
        else
        {
            _855 = _828;
        }
        highp vec3 _856 = _544.xyz;
        highp vec3 _865 = _856 + _855.xyz;
        highp vec3 _866 = _856 * _855.xyz;
        bvec3 _868 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _869 = vec3(_868.x ? _855.xyz.x : _311.x, _868.y ? _855.xyz.y : _311.y, _868.z ? _855.xyz.z : _311.z);
        bvec3 _871 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _879;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _877 = (-_856) * _855.xyz + _865;
            bvec3 _2398 = isnan(_877);
            bvec3 _2399 = isnan(_856);
            highp vec3 _2400 = max(_877, _856);
            highp vec3 _2401 = vec3(_2398.x ? _856.x : _2400.x, _2398.y ? _856.y : _2400.y, _2398.z ? _856.z : _2400.z);
            _879 = vec3(_2399.x ? _877.x : _2401.x, _2399.y ? _877.y : _2401.y, _2399.z ? _877.z : _2401.z);
        }
        else
        {
            _879 = vec3(_871.x ? _865.x : _869.x, _871.y ? _865.y : _869.y, _871.z ? _865.z : _869.z);
        }
        bvec3 _881 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _883 = mix(_856, vec3(_881.x ? _866.x : _879.x, _881.y ? _866.y : _879.y, _881.z ? _866.z : _879.z), vec3(_855.w * _Globals._Main2ndEnableLighting));
        _885 = _855;
        _886 = vec4(_883.x, _883.y, _883.z, _544.w);
    }
    else
    {
        _885 = _Globals._Color2nd;
        _886 = _544;
    }
    bool _891 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1129;
    highp vec4 _1130;
    if (_891)
    {
        bvec2 _897 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _898 = vec2(_897.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _897.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _900 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _901 = vec2(_900.x ? out_var_TEXCOORD1.xy.x : _898.x, _900.y ? out_var_TEXCOORD1.xy.y : _898.y);
        bvec2 _903 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _904 = vec2(_903.x ? out_var_TEXCOORD1.zw.x : _901.x, _903.y ? out_var_TEXCOORD1.zw.y : _901.y);
        bvec2 _906 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _907 = vec2(_906.x ? _641.x : _904.x, _906.y ? _641.y : _904.y);
        highp vec4 _946 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _947 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _955;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _954 = _907;
            _954.x = abs(_907.x - 0.5) + 0.5;
            _955 = _954;
        }
        else
        {
            _955 = _907;
        }
        highp vec2 _956 = _946.xy;
        highp vec2 _957 = _946.zw;
        highp vec2 _958 = _955 * _956 + _957;
        highp vec2 _967;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_907.x < 0.5))
        {
            highp vec2 _966 = _958;
            _966.x = 1.0 - _958.x;
            _967 = _966;
        }
        else
        {
            _967 = _958;
        }
        highp vec2 _974;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _642)
        {
            highp vec2 _973 = _967;
            _973.x = 1.0 - _967.x;
            _974 = _973;
        }
        else
        {
            _974 = _967;
        }
        highp vec2 _979;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _642)
        {
            highp vec2 _978 = _974;
            _978.x = -1.0;
            _979 = _978;
        }
        else
        {
            _979 = _974;
        }
        highp vec2 _985;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_642))
        {
            highp vec2 _984 = _979;
            _984.x = -1.0;
            _985 = _984;
        }
        else
        {
            _985 = _979;
        }
        highp float _988 = sin(_947);
        highp float _989 = cos(_947);
        highp vec2 _990 = ((_985 - _957) / _956) - vec2(0.5);
        highp float _991 = _990.x;
        highp float _992 = _990.y;
        highp vec2 _1000 = (vec2(_991 * _989 + (-(_992 * _988)), _991 * _988 + (_992 * _989)) + vec2(0.5)) * _956 + _957;
        uint _1004 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1008 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1004 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1004);
        highp float _1009 = _1000.x;
        highp float _1010 = _1000.y;
        uint _1017 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1027 = ((mix(vec2(_1009, 1.0 - _1010), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1008 % _1017), float(_1008 / _1017))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1027.y = 1.0 - _1027.y;
        highp vec4 _1032 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1027);
        highp vec4 _1048;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1035 = _1032.x;
            highp float _1036 = _1032.y;
            highp float _1037 = _1032.z;
            highp float _1038 = isnan(_1036) ? _1035 : (isnan(_1035) ? _1036 : min(_1035, _1036));
            highp float _1039 = isnan(_1036) ? _1035 : (isnan(_1035) ? _1036 : max(_1035, _1036));
            highp float _1040 = isnan(_1037) ? _1039 : (isnan(_1039) ? _1037 : min(_1039, _1037));
            highp float _1041 = isnan(_1040) ? _1038 : (isnan(_1038) ? _1040 : max(_1038, _1040));
            _1048 = vec4(1.0, 1.0, 1.0, clamp((_1041 - 0.5) / clamp(fwidth(_1041), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1048 = _1032;
        }
        highp vec4 _1071;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1052 = clamp(_636 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1055 = 0.5 - abs(_1009 - 0.5);
            highp float _1062 = 0.5 - abs(_1010 - 0.5);
            highp vec4 _1070 = _1048;
            _1070.w = _1048.w * (clamp(_1055 / clamp(fwidth(_1055), 9.9999997473787516355514526367188e-05, _1052), 0.0, 1.0) * clamp(_1062 / clamp(fwidth(_1062), 9.9999997473787516355514526367188e-05, _1052), 0.0, 1.0));
            _1071 = _1070;
        }
        else
        {
            _1071 = _1048;
        }
        highp vec4 _1072 = _Globals._Color3rd * _1071;
        highp float _1073 = _1072.w;
        _1072.w = mix(_1073, _1073 * clamp((_422 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1099;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_361 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_361 < 0.0)))
        {
            highp vec4 _1098 = _1072;
            _1098.w = 0.0;
            _1099 = _1098;
        }
        else
        {
            _1099 = _1072;
        }
        highp vec3 _1109 = _886.xyz + _1099.xyz;
        highp vec3 _1110 = _886.xyz * _1099.xyz;
        bvec3 _1112 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1113 = vec3(_1112.x ? _1099.xyz.x : _311.x, _1112.y ? _1099.xyz.y : _311.y, _1112.z ? _1099.xyz.z : _311.z);
        bvec3 _1115 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1123;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1121 = (-_886.xyz) * _1099.xyz + _1109;
            bvec3 _2423 = isnan(_1121);
            bvec3 _2424 = isnan(_886.xyz);
            highp vec3 _2425 = max(_1121, _886.xyz);
            highp vec3 _2426 = vec3(_2423.x ? _886.xyz.x : _2425.x, _2423.y ? _886.xyz.y : _2425.y, _2423.z ? _886.xyz.z : _2425.z);
            _1123 = vec3(_2424.x ? _1121.x : _2426.x, _2424.y ? _1121.y : _2426.y, _2424.z ? _1121.z : _2426.z);
        }
        else
        {
            _1123 = vec3(_1115.x ? _1109.x : _1113.x, _1115.y ? _1109.y : _1113.y, _1115.z ? _1109.z : _1113.z);
        }
        bvec3 _1125 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1127 = mix(_886.xyz, vec3(_1125.x ? _1110.x : _1123.x, _1125.y ? _1110.y : _1123.y, _1125.z ? _1110.z : _1123.z), vec3(_1099.w * _Globals._Main3rdEnableLighting));
        _1129 = _1099;
        _1130 = vec4(_1127.x, _1127.y, _1127.z, _886.w);
    }
    else
    {
        _1129 = _Globals._Color3rd;
        _1130 = _886;
    }
    highp vec4 _1131 = _1130;
    _1131.w = 1.0;
    highp vec4 _1354;
    highp float _1355;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1165 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1168 = clamp(_412 + distance(_413, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1173;
        _1173.x = clamp(dot(_413, mix(_637, _634, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1168, _Globals._ShadowReceive);
        _1173.y = clamp(dot(_413, mix(_637, _634, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1168, _Globals._Shadow2ndReceive);
        _1173.z = clamp(dot(_413, mix(_637, _634, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1168, _Globals._Shadow3rdReceive);
        highp vec2 _1194 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2428 = isnan(_475);
        bvec2 _2429 = isnan(_1194);
        highp vec2 _2430 = max(_475, _1194);
        highp vec2 _2431 = vec2(_2428.x ? _1194.x : _2430.x, _2428.y ? _1194.y : _2430.y);
        bvec2 _2433 = isnan(_477);
        bvec2 _2434 = isnan(_1194);
        highp vec2 _2435 = max(_477, _1194);
        highp vec2 _2436 = vec2(_2433.x ? _1194.x : _2435.x, _2433.y ? _1194.y : _2435.y);
        highp vec4 _1198 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _473, vec2(_2429.x ? _475.x : _2431.x, _2429.y ? _475.y : _2431.y), vec2(_2434.x ? _477.x : _2436.x, _2434.y ? _477.y : _2436.y));
        highp vec4 _1206;
        _1206.x = clamp(_1198.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1206.y = clamp(_1198.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1206.z = clamp(_1198.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1225 = _Globals._ShadowPostAO != 0u;
        bvec3 _1226 = bvec3(_1225);
        highp vec3 _1229 = _1173.xyz * _1206.xyz;
        highp vec3 _1230 = vec3(_1226.x ? _1173.xyz.x : _1229.x, _1226.y ? _1173.xyz.y : _1229.y, _1226.z ? _1173.xyz.z : _1229.z);
        highp float _1231 = _1230.x;
        highp float _1235 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1236 = clamp(_1235, 0.0, 1.0);
        highp float _1238 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1245 = _1230.y;
        highp float _1250 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1262 = clamp(_1235 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1269 = _1230.z;
        highp float _1274 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1283 = vec4((_1231 - _1236) / clamp(fwidth(_1231) * _1165 + (_1238 - _1236), 0.0, 1.0), (_1245 - _1250) / clamp(fwidth(_1245) * _1165 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1250), 0.0, 1.0), (_1269 - _1274) / clamp(fwidth(_1269) * _1165 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1274), 0.0, 1.0), (_1231 - _1262) / clamp(fwidth(_1231) * _1165 + (_1238 - _1262), 0.0, 1.0));
        bvec4 _1284 = bvec4(_1225);
        highp vec4 _1286 = _1283 * _1206.xyzx;
        highp vec4 _1288 = clamp(vec4(_1284.x ? _1286.x : _1283.x, _1284.y ? _1286.y : _1283.y, _1284.z ? _1286.z : _1283.z, _1284.w ? _1286.w : _1283.w), vec4(0.0), vec4(1.0));
        highp float _1293 = (_361 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1295 = _1288.x * _1293;
        highp vec3 _1330 = mix(mix(_1131.xyz * _Globals._ShadowColor.xyz, (_1131.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1288.y * _1293)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1131.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1288.z * _1293)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1336 = _1131.xyz * out_var_TEXCOORD6;
        highp vec3 _1342 = mix(mix(_1330, _1330 * _1131.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1131.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2438 = isnan(_1342);
        bvec3 _2439 = isnan(_1336);
        highp vec3 _2440 = min(_1342, _1336);
        highp vec3 _2441 = vec3(_2438.x ? _1336.x : _2440.x, _2438.y ? _1336.y : _2440.y, _2438.z ? _1336.z : _2440.z);
        highp vec3 _1350 = mix(mix(vec3(_2439.x ? _1342.x : _2441.x, _2439.y ? _1342.y : _2441.y, _2439.z ? _1342.z : _2441.z), _1336, _Globals._ShadowBorderColor.xyz * (_1288.w * _1293)), _1336, vec3(mix(1.0, _1295, _Globals._ShadowStrength)));
        _1354 = vec4(_1350.x, _1350.y, _1350.z, _1131.w);
        _1355 = _1295;
    }
    else
    {
        highp vec3 _1352 = _1131.xyz * out_var_TEXCOORD6;
        _1354 = vec4(_1352.x, _1352.y, _1352.z, _1131.w);
        _1355 = 1.0;
    }
    highp vec3 _1358 = vec3(_Globals._LightMaxLimit);
    bvec3 _2443 = isnan(out_var_TEXCOORD6);
    bvec3 _2444 = isnan(_1358);
    highp vec3 _2445 = min(out_var_TEXCOORD6, _1358);
    highp vec3 _2446 = vec3(_2443.x ? _1358.x : _2445.x, _2443.y ? _1358.y : _2445.y, _2443.z ? _1358.z : _2445.z);
    highp vec3 _1359 = vec3(_2444.x ? out_var_TEXCOORD6.x : _2446.x, _2444.y ? out_var_TEXCOORD6.y : _2446.y, _2444.z ? out_var_TEXCOORD6.z : _2446.z);
    highp float _1360 = clamp(_1355, 0.0, 1.0);
    highp vec3 _1362 = _1131.xyz * _Globals._LightMaxLimit;
    bvec3 _2448 = isnan(_1354.xyz);
    bvec3 _2449 = isnan(_1362);
    highp vec3 _2450 = min(_1354.xyz, _1362);
    highp vec3 _2451 = vec3(_2448.x ? _1362.x : _2450.x, _2448.y ? _1362.y : _2450.y, _2448.z ? _1362.z : _2450.z);
    highp vec3 _1363 = vec3(_2449.x ? _1354.xyz.x : _2451.x, _2449.y ? _1354.xyz.y : _2451.y, _2449.z ? _1354.xyz.z : _2451.z);
    highp vec4 _1397;
    if (_647)
    {
        highp vec3 _1367 = _1363.xyz;
        highp vec3 _1377 = _1367 + _885.xyz;
        highp vec3 _1378 = _1367 * _885.xyz;
        bvec3 _1380 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1381 = vec3(_1380.x ? _885.xyz.x : _311.x, _1380.y ? _885.xyz.y : _311.y, _1380.z ? _885.xyz.z : _311.z);
        bvec3 _1383 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1391;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1389 = (-_1367) * _885.xyz + _1377;
            bvec3 _2453 = isnan(_1389);
            bvec3 _2454 = isnan(_1367);
            highp vec3 _2455 = max(_1389, _1367);
            highp vec3 _2456 = vec3(_2453.x ? _1367.x : _2455.x, _2453.y ? _1367.y : _2455.y, _2453.z ? _1367.z : _2455.z);
            _1391 = vec3(_2454.x ? _1389.x : _2456.x, _2454.y ? _1389.y : _2456.y, _2454.z ? _1389.z : _2456.z);
        }
        else
        {
            _1391 = vec3(_1383.x ? _1377.x : _1381.x, _1383.y ? _1377.y : _1381.y, _1383.z ? _1377.z : _1381.z);
        }
        bvec3 _1393 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1395 = mix(_1367, vec3(_1393.x ? _1378.x : _1391.x, _1393.y ? _1378.y : _1391.y, _1393.z ? _1378.z : _1391.z), vec3((-_885.w) * _Globals._Main2ndEnableLighting + _885.w));
        _1397 = vec4(_1395.x, _1395.y, _1395.z, _1354.w);
    }
    else
    {
        _1397 = vec4(_1363.x, _1363.y, _1363.z, _1354.w);
    }
    highp vec4 _1430;
    if (_891)
    {
        highp vec3 _1410 = _1397.xyz + _1129.xyz;
        highp vec3 _1411 = _1397.xyz * _1129.xyz;
        bvec3 _1413 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1414 = vec3(_1413.x ? _1129.xyz.x : _311.x, _1413.y ? _1129.xyz.y : _311.y, _1413.z ? _1129.xyz.z : _311.z);
        bvec3 _1416 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1424;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1422 = (-_1397.xyz) * _1129.xyz + _1410;
            bvec3 _2458 = isnan(_1422);
            bvec3 _2459 = isnan(_1397.xyz);
            highp vec3 _2460 = max(_1422, _1397.xyz);
            highp vec3 _2461 = vec3(_2458.x ? _1397.xyz.x : _2460.x, _2458.y ? _1397.xyz.y : _2460.y, _2458.z ? _1397.xyz.z : _2460.z);
            _1424 = vec3(_2459.x ? _1422.x : _2461.x, _2459.y ? _1422.y : _2461.y, _2459.z ? _1422.z : _2461.z);
        }
        else
        {
            _1424 = vec3(_1416.x ? _1410.x : _1414.x, _1416.y ? _1410.y : _1414.y, _1416.z ? _1410.z : _1414.z);
        }
        bvec3 _1426 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1428 = mix(_1397.xyz, vec3(_1426.x ? _1411.x : _1424.x, _1426.y ? _1411.y : _1424.y, _1426.z ? _1411.z : _1424.z), vec3((-_1129.w) * _Globals._Main3rdEnableLighting + _1129.w));
        _1430 = vec4(_1428.x, _1428.y, _1428.z, _1397.w);
    }
    else
    {
        _1430 = _1397;
    }
    highp vec4 _1476;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1446 = pow(clamp(1.0 - abs(dot(mix(_637, _634, vec3(_Globals._RimShadeNormalStrength)), _429)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1455 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1474 = mix(_1430.xyz, _1430.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1446 - _1455) / clamp(fwidth(_1446) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1455), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1476 = vec4(_1474.x, _1474.y, _1474.z, _1430.w);
    }
    else
    {
        _1476 = _1430;
    }
    highp vec4 _1549;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1500 = dot(normalize(((-_429) * _Globals._BacklightViewStrength) + _413), mix(_637, _634, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1510;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1510 = _1500 * clamp(_412 + distance(_413, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1510 = _1500;
        }
        highp float _1519 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1547 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1131.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_361 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_429, _413) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1510 - _1519) / clamp(fwidth(_1510) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1519), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1359 + _1476.xyz;
        _1549 = vec4(_1547.x, _1547.y, _1547.z, _1476.w);
    }
    else
    {
        _1549 = _1476;
    }
    highp vec4 _1792;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1559 = dFdx(_634);
        highp vec3 _1560 = abs(_1559);
        highp vec3 _1561 = dFdy(_634);
        highp vec3 _1562 = abs(_1561);
        highp float _1563 = dot(_1560, _1560);
        highp float _1564 = dot(_1562, _1562);
        highp float _1565 = isnan(_1564) ? _1563 : (isnan(_1563) ? _1564 : max(_1563, _1564));
        highp float _1568 = (_1565 / (_1565 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1571 = clamp(1.0 - (isnan(_1568) ? 0.0 : (isnan(0.0) ? _1568 : max(0.0, _1568))), 0.0, 1.0);
        highp float _1572 = isnan(_1571) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1571 : min(_Globals._Smoothness, _1571));
        highp float _1573 = 1.0 - _1572;
        highp float _1574 = _1573 * _1573;
        highp vec3 _1579 = _1549.xyz - (_1549.xyz * _Globals._Metallic);
        highp vec3 _1585 = mix(vec3(_Globals._Reflectance), _1131.xyz, vec3(_Globals._Metallic));
        highp vec4 _1688;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1660;
            do
            {
                highp vec3 _1598 = mix(_637, _634, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1600 = normalize(_429 + _413);
                highp float _1602 = clamp(dot(_1598, _1600), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1611 = pow(_1602, 1.0 / _1574);
                    highp float _1618 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1660 = vec3(clamp((_1611 - _1618) / clamp(fwidth(_1611) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1618), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1630 = clamp(dot(_1598, _429), 0.0, 1.0);
                highp float _1632 = clamp(dot(_1598, _413), 0.0, 1.0);
                highp float _1635 = isnan(0.00200000009499490261077880859375) ? _1574 : (isnan(_1574) ? 0.00200000009499490261077880859375 : max(_1574, 0.00200000009499490261077880859375));
                highp float _1636 = 1.0 - _1635;
                highp float _1640 = _1635 * _1635;
                highp float _1643 = (_1602 * _1640 + (-_1602)) * _1602 + 1.0;
                highp float _1651 = 1.0 - clamp(dot(_413, _1600), 0.0, 1.0);
                _1660 = (_1585 + ((((((vec3(1.0) - _1585) * _1651) * _1651) * _1651) * _1651) * _1651)) * (((0.5 / ((_1632 * (_1630 * _1636 + _1635) + (_1630 * (_1632 * _1636 + _1635))) + 9.9999997473787516355514526367188e-06)) * (_1640 / (_1643 * _1643 + 1.0000000116860974230803549289703e-07))) * _1632);
                break;
            } while(false);
            highp vec3 _1661 = _1579.xyz;
            highp vec3 _1663 = _Globals._ReflectionColor.xyz * _1359;
            highp vec3 _1668 = _Globals._ReflectionColor.xyz * _1359 + _1661;
            highp vec3 _1669 = _1661 * _1663;
            bvec3 _1671 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1672 = vec3(_1671.x ? _1663.x : _311.x, _1671.y ? _1663.y : _311.y, _1671.z ? _1663.z : _311.z);
            bvec3 _1674 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1682;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1680 = (-_1661) * _1663 + _1668;
                bvec3 _2483 = isnan(_1680);
                bvec3 _2484 = isnan(_1661);
                highp vec3 _2485 = max(_1680, _1661);
                highp vec3 _2486 = vec3(_2483.x ? _1661.x : _2485.x, _2483.y ? _1661.y : _2485.y, _2483.z ? _1661.z : _2485.z);
                _1682 = vec3(_2484.x ? _1680.x : _2486.x, _2484.y ? _1680.y : _2486.y, _2484.z ? _1680.z : _2486.z);
            }
            else
            {
                _1682 = vec3(_1674.x ? _1668.x : _1672.x, _1674.y ? _1668.y : _1672.y, _1674.z ? _1668.z : _1672.z);
            }
            bvec3 _1684 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1686 = mix(_1661, vec3(_1684.x ? _1669.x : _1682.x, _1684.y ? _1669.y : _1682.y, _1684.z ? _1669.z : _1682.z), _1660 * _Globals._ReflectionColor.w);
            _1688 = vec4(_1686.x, _1686.y, _1686.z, _1549.w);
        }
        else
        {
            _1688 = vec4(_1579.x, _1579.y, _1579.z, _1549.w);
        }
        highp vec4 _1791;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1710 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1717 = reflect(-_429, mix(_637, _634, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1720 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1717, _1573 * ((-4.19999980926513671875) * _1573 + 10.19999980926513671875));
            highp vec3 _1740 = ((_1720.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1720.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1359, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1746 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1717, _1573 * 8.0).xyz * 1.0;
            highp float _1757 = 1.0 - _636;
            highp vec3 _1771 = _1688.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1772 = _1688.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1774 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1775 = vec3(_1774.x ? _Globals._ReflectionColor.xyz.x : _311.x, _1774.y ? _Globals._ReflectionColor.xyz.y : _311.y, _1774.z ? _Globals._ReflectionColor.xyz.z : _311.z);
            bvec3 _1777 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1785;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1783 = (-_1688.xyz) * _Globals._ReflectionColor.xyz + _1771;
                bvec3 _2488 = isnan(_1783);
                bvec3 _2489 = isnan(_1688.xyz);
                highp vec3 _2490 = max(_1783, _1688.xyz);
                highp vec3 _2491 = vec3(_2488.x ? _1688.xyz.x : _2490.x, _2488.y ? _1688.xyz.y : _2490.y, _2488.z ? _1688.xyz.z : _2490.z);
                _1785 = vec3(_2489.x ? _1783.x : _2491.x, _2489.y ? _1783.y : _2491.y, _2489.z ? _1783.z : _2491.z);
            }
            else
            {
                _1785 = vec3(_1777.x ? _1771.x : _1775.x, _1777.y ? _1771.y : _1775.y, _1777.z ? _1771.z : _1775.z);
            }
            bvec3 _1787 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1789 = mix(_1688.xyz, vec3(_1787.x ? _1772.x : _1785.x, _1787.y ? _1772.y : _1785.y, _1787.z ? _1772.z : _1785.z), ((vec3(_1710.x ? _1740.x : _1746.x, _1710.y ? _1740.y : _1746.y, _1710.z ? _1740.z : _1746.z) * (1.0 / (_1574 * _1574 + 1.0))) * mix(_1585, vec3(clamp(_1572 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1757 * _1757) * _1757) * _1757) * _1757))) * _Globals._ReflectionColor.w);
            _1791 = vec4(_1789.x, _1789.y, _1789.z, _1688.w);
        }
        else
        {
            _1791 = _1688;
        }
        _1792 = _1791;
    }
    else
    {
        _1792 = _1549;
    }
    highp vec4 _1898;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _1818 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1819 = vec3(_1818.x ? _429.x : _337.x, _1818.y ? _429.y : _337.y, _1818.z ? _429.z : _337.z);
        bvec3 _1820 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1821 = vec3(_1820.x ? vec3(0.0, 1.0, 0.0).x : _344.x, _1820.y ? vec3(0.0, 1.0, 0.0).y : _344.y, _1820.z ? vec3(0.0, 1.0, 0.0).z : _344.z);
        highp vec3 _1825 = normalize(_1821 - (_1819 * dot(_1819, _1821)));
        highp vec4 _1847 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_637, _634, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_1819, _1825), _1825, _1819)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1848 = _1847.xyz;
        highp float _1854 = _1847.w;
        highp vec3 _1864 = mix(_1848, _1848 * _1359, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1871 = mix(_1864, _1864 * _1131.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1878 = _1792.xyz + _1871;
        highp vec3 _1879 = _1792.xyz * _1871;
        bvec3 _1881 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1882 = vec3(_1881.x ? _1871.x : _311.x, _1881.y ? _1871.y : _311.y, _1881.z ? _1871.z : _311.z);
        bvec3 _1884 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1892;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1890 = (-_1792.xyz) * _1871 + _1878;
            bvec3 _2493 = isnan(_1890);
            bvec3 _2494 = isnan(_1792.xyz);
            highp vec3 _2495 = max(_1890, _1792.xyz);
            highp vec3 _2496 = vec3(_2493.x ? _1792.xyz.x : _2495.x, _2493.y ? _1792.xyz.y : _2495.y, _2493.z ? _1792.xyz.z : _2495.z);
            _1892 = vec3(_2494.x ? _1890.x : _2496.x, _2494.y ? _1890.y : _2496.y, _2494.z ? _1890.z : _2496.z);
        }
        else
        {
            _1892 = vec3(_1884.x ? _1878.x : _1882.x, _1884.y ? _1878.y : _1882.y, _1884.z ? _1878.z : _1882.z);
        }
        bvec3 _1894 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1896 = mix(_1792.xyz, vec3(_1894.x ? _1879.x : _1892.x, _1894.y ? _1879.y : _1892.y, _1894.z ? _1879.z : _1892.z), vec3(1.0) * (_Globals._MatCapBlend * ((_361 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1854, _1854 * _1360, _Globals._MatCapShadowMask))));
        _1898 = vec4(_1896.x, _1896.y, _1896.z, _1792.w);
    }
    else
    {
        _1898 = _1792;
    }
    highp vec4 _2003;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _1923 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1924 = vec3(_1923.x ? _429.x : _337.x, _1923.y ? _429.y : _337.y, _1923.z ? _429.z : _337.z);
        bvec3 _1925 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1926 = vec3(_1925.x ? vec3(0.0, 1.0, 0.0).x : _344.x, _1925.y ? vec3(0.0, 1.0, 0.0).y : _344.y, _1925.z ? vec3(0.0, 1.0, 0.0).z : _344.z);
        highp vec3 _1930 = normalize(_1926 - (_1924 * dot(_1924, _1926)));
        highp vec4 _1952 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_637, _634, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_1924, _1930), _1930, _1924)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1953 = _1952.xyz;
        highp float _1959 = _1952.w;
        highp vec3 _1969 = mix(_1953, _1953 * _1359, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1976 = mix(_1969, _1969 * _1131.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1983 = _1898.xyz + _1976;
        highp vec3 _1984 = _1898.xyz * _1976;
        bvec3 _1986 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1987 = vec3(_1986.x ? _1976.x : _311.x, _1986.y ? _1976.y : _311.y, _1986.z ? _1976.z : _311.z);
        bvec3 _1989 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1997;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1995 = (-_1898.xyz) * _1976 + _1983;
            bvec3 _2498 = isnan(_1995);
            bvec3 _2499 = isnan(_1898.xyz);
            highp vec3 _2500 = max(_1995, _1898.xyz);
            highp vec3 _2501 = vec3(_2498.x ? _1898.xyz.x : _2500.x, _2498.y ? _1898.xyz.y : _2500.y, _2498.z ? _1898.xyz.z : _2500.z);
            _1997 = vec3(_2499.x ? _1995.x : _2501.x, _2499.y ? _1995.y : _2501.y, _2499.z ? _1995.z : _2501.z);
        }
        else
        {
            _1997 = vec3(_1989.x ? _1983.x : _1987.x, _1989.y ? _1983.y : _1987.y, _1989.z ? _1983.z : _1987.z);
        }
        bvec3 _1999 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2001 = mix(_1898.xyz, vec3(_1999.x ? _1984.x : _1997.x, _1999.y ? _1984.y : _1997.y, _1999.z ? _1984.z : _1997.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_361 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1959, _1959 * _1360, _Globals._MatCap2ndShadowMask))));
        _2003 = vec4(_2001.x, _2001.y, _2001.z, _1898.w);
    }
    else
    {
        _2003 = _1898;
    }
    highp vec4 _2149;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2022 = mix(_637, _634, vec3(_Globals._RimNormalStrength));
        highp float _2026 = dot(_413, _2022) * 0.5 + 0.5;
        highp float _2049 = (_361 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2022, _429)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2053 = mix(_2049, _2049 * clamp((_2026 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2054 = _2049 * clamp(((1.0 - _2026) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2064 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2073 = clamp((_2053 - _2064) / clamp(fwidth(_2053) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2064), 0.0, 1.0), 0.0, 1.0);
        highp float _2080 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2090 = clamp((_2054 * _Globals._RimDirStrength + (-_2080)) / clamp(fwidth(_2054 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2080), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2102 = vec3(1.0 - _Globals._RimEnableLighting) + (_1359 * _Globals._RimEnableLighting);
        highp vec3 _2104 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1131.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2105 = _2104 * _2102;
        highp vec3 _2111 = _2104 * _2102 + _2003.xyz;
        highp vec3 _2112 = _2003.xyz * _2105;
        bvec3 _2114 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2115 = vec3(_2114.x ? _2105.x : _311.x, _2114.y ? _2105.y : _311.y, _2114.z ? _2105.z : _311.z);
        bvec3 _2117 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2119 = _Globals._RimBlendMode == 2u;
        highp vec3 _2125;
        if (_2119)
        {
            highp vec3 _2123 = (-_2003.xyz) * _2105 + _2111;
            bvec3 _2503 = isnan(_2123);
            bvec3 _2504 = isnan(_2003.xyz);
            highp vec3 _2505 = max(_2123, _2003.xyz);
            highp vec3 _2506 = vec3(_2503.x ? _2003.xyz.x : _2505.x, _2503.y ? _2003.xyz.y : _2505.y, _2503.z ? _2003.xyz.z : _2505.z);
            _2125 = vec3(_2504.x ? _2123.x : _2506.x, _2504.y ? _2123.y : _2506.y, _2504.z ? _2123.z : _2506.z);
        }
        else
        {
            _2125 = vec3(_2117.x ? _2111.x : _2115.x, _2117.y ? _2111.y : _2115.y, _2117.z ? _2111.z : _2115.z);
        }
        bvec3 _2127 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2130 = mix(_2003.xyz, vec3(_2127.x ? _2112.x : _2125.x, _2127.y ? _2112.y : _2125.y, _2127.z ? _2112.z : _2125.z), vec3(mix(_2073, _2073 * _1360, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2132 = _Globals._RimIndirColor.xyz * _2102;
        highp vec3 _2136 = _Globals._RimIndirColor.xyz * _2102 + _2130;
        highp vec3 _2137 = _2130 * _2132;
        highp vec3 _2138 = vec3(_2114.x ? _2132.x : _311.x, _2114.y ? _2132.y : _311.y, _2114.z ? _2132.z : _311.z);
        highp vec3 _2145;
        if (_2119)
        {
            highp vec3 _2143 = (-_2130) * _2132 + _2136;
            bvec3 _2508 = isnan(_2143);
            bvec3 _2509 = isnan(_2130);
            highp vec3 _2510 = max(_2143, _2130);
            highp vec3 _2511 = vec3(_2508.x ? _2130.x : _2510.x, _2508.y ? _2130.y : _2510.y, _2508.z ? _2130.z : _2510.z);
            _2145 = vec3(_2509.x ? _2143.x : _2511.x, _2509.y ? _2143.y : _2511.y, _2509.z ? _2143.z : _2511.z);
        }
        else
        {
            _2145 = vec3(_2117.x ? _2136.x : _2138.x, _2117.y ? _2136.y : _2138.y, _2117.z ? _2136.z : _2138.z);
        }
        highp vec3 _2147 = mix(_2130, vec3(_2127.x ? _2137.x : _2145.x, _2127.y ? _2137.y : _2145.y, _2127.z ? _2137.z : _2145.z), vec3(mix(_2090, _2090 * _1360, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2149 = vec4(_2147.x, _2147.y, _2147.z, _2003.w);
    }
    else
    {
        _2149 = _2003;
    }
    highp vec4 _2214;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2163 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _417, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2177 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2183;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2183 = roundEven(_2177);
        }
        else
        {
            _2183 = _2177;
        }
        highp vec3 _2190 = mix(_2163, _2163 * _1131.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2194 = _2149.xyz + _2190;
        highp vec3 _2195 = _2149.xyz * _2190;
        bvec3 _2197 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2198 = vec3(_2197.x ? _2190.x : _311.x, _2197.y ? _2190.y : _311.y, _2197.z ? _2190.z : _311.z);
        bvec3 _2200 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2208;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2206 = (-_2149.xyz) * _2190 + _2194;
            bvec3 _2513 = isnan(_2206);
            bvec3 _2514 = isnan(_2149.xyz);
            highp vec3 _2515 = max(_2206, _2149.xyz);
            highp vec3 _2516 = vec3(_2513.x ? _2149.xyz.x : _2515.x, _2513.y ? _2149.xyz.y : _2515.y, _2513.z ? _2149.xyz.z : _2515.z);
            _2208 = vec3(_2514.x ? _2206.x : _2516.x, _2514.y ? _2206.y : _2516.y, _2514.z ? _2206.z : _2516.z);
        }
        else
        {
            _2208 = vec3(_2200.x ? _2194.x : _2198.x, _2200.y ? _2194.y : _2198.y, _2200.z ? _2194.z : _2198.z);
        }
        bvec3 _2210 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2212 = mix(_2149.xyz, vec3(_2210.x ? _2195.x : _2208.x, _2210.y ? _2195.y : _2208.y, _2210.z ? _2195.z : _2208.z), vec3((_Globals._EmissionBlend * mix(1.0, _2183, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2214 = vec4(_2212.x, _2212.y, _2212.z, _2149.w);
    }
    else
    {
        _2214 = _2149;
    }
    highp vec4 _2279;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2228 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _417, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2242 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2248;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2248 = roundEven(_2242);
        }
        else
        {
            _2248 = _2242;
        }
        highp vec3 _2255 = mix(_2228, _2228 * _1131.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2259 = _2214.xyz + _2255;
        highp vec3 _2260 = _2214.xyz * _2255;
        bvec3 _2262 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2263 = vec3(_2262.x ? _2255.x : _311.x, _2262.y ? _2255.y : _311.y, _2262.z ? _2255.z : _311.z);
        bvec3 _2265 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2273;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2271 = (-_2214.xyz) * _2255 + _2259;
            bvec3 _2518 = isnan(_2271);
            bvec3 _2519 = isnan(_2214.xyz);
            highp vec3 _2520 = max(_2271, _2214.xyz);
            highp vec3 _2521 = vec3(_2518.x ? _2214.xyz.x : _2520.x, _2518.y ? _2214.xyz.y : _2520.y, _2518.z ? _2214.xyz.z : _2520.z);
            _2273 = vec3(_2519.x ? _2271.x : _2521.x, _2519.y ? _2271.y : _2521.y, _2519.z ? _2271.z : _2521.z);
        }
        else
        {
            _2273 = vec3(_2265.x ? _2259.x : _2263.x, _2265.y ? _2259.y : _2263.y, _2265.z ? _2259.z : _2263.z);
        }
        bvec3 _2275 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2277 = mix(_2214.xyz, vec3(_2275.x ? _2260.x : _2273.x, _2275.y ? _2260.y : _2273.y, _2275.z ? _2260.z : _2273.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2248, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2279 = vec4(_2277.x, _2277.y, _2277.z, _2214.w);
    }
    else
    {
        _2279 = _2214;
    }
    bvec3 _2281 = bvec3(_361 < 0.0);
    highp vec3 _2290 = mix(_2279.xyz, _Globals._BackfaceColor.xyz * _1359, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2325 = vec3(_2281.x ? _2290.x : _2279.xyz.x, _2281.y ? _2290.y : _2279.xyz.y, _2281.z ? _2290.z : _2279.xyz.z).xyz;
    highp vec3 _2333 = mix(_2325, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2325, vec3(pow(clamp(1.0 - abs(dot(_637, _429)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_361 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _422) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2333.x, _2333.y, _2333.z, _2279.w), vec4(out_var_TEXCOORD9));
}
