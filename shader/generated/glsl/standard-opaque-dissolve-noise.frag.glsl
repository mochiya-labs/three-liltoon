#version 300 es
precision mediump float;
precision highp int;

vec3 _310;
vec3 _316;

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
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;

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
    highp vec3 _335 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _342 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _359 = float(gl_FrontFacing ? 1 : (-1));
    highp float _410;
    do
    {
        highp vec3 _366 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _367 = _366.xy;
        highp float _373 = _366.z;
        if ((any(lessThan(_367, vec2(0.0))) || any(greaterThan(_367, vec2(1.0)))) || (_373 > 1.0))
        {
            _410 = 1.0;
            break;
        }
        highp float _383 = _373 + _Globals.uShadowBias;
        _410 = (((step(_383, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _367), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_383, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _367), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_383, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _367), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_383, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _367), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _411 = normalize(out_var_TEXCOORD7);
    highp vec3 _415 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _419 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _420 = length(_419);
    highp vec3 _427 = normalize(_419);
    highp mat3 _436 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _437 = _427 * _436;
    bvec2 _447 = bvec2(_359 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _448 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _461 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _462 = sin(_461);
    highp float _463 = cos(_461);
    highp vec2 _464 = (vec2(_447.x ? _448.x : out_var_TEXCOORD0.xy.x, _447.y ? _448.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _465 = _464.x;
    highp float _466 = _464.y;
    highp vec2 _477 = (vec2(_465 * _463 + (-(_466 * _462)), _465 * _462 + (_466 * _463)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _481 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _477);
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
        highp vec4 _557 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _477 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _557.w = _557.w * _557.x;
        highp vec2 _568 = ((_557.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _569 = vec3(_568.x, _568.y, _316.z);
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
    highp vec3 _627 = normalize(_436 * _625);
    bvec3 _632 = bvec3(_359 < (_Globals._FlipNormal - 1.0));
    highp vec3 _633 = -_627;
    highp vec3 _634 = vec3(_632.x ? _633.x : _627.x, _632.y ? _633.y : _627.y, _632.z ? _633.z : _627.z);
    highp float _635 = dot(_634, _427);
    highp float _636 = clamp(_635, 0.0, 1.0);
    highp vec2 _638 = vec2(abs(_635));
    highp vec3 _639 = normalize(out_var_TEXCOORD4);
    highp vec2 _643 = ((_634 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _342, _335)).xy * 0.5) + vec2(0.5);
    bool _644 = out_var_TEXCOORD5.w > 0.0;
    bool _649 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _887;
    highp vec4 _888;
    if (_649)
    {
        bvec2 _655 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _656 = vec2(_655.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _655.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _658 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _659 = vec2(_658.x ? out_var_TEXCOORD1.xy.x : _656.x, _658.y ? out_var_TEXCOORD1.xy.y : _656.y);
        bvec2 _661 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _662 = vec2(_661.x ? out_var_TEXCOORD1.zw.x : _659.x, _661.y ? out_var_TEXCOORD1.zw.y : _659.y);
        bvec2 _664 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _665 = vec2(_664.x ? _643.x : _662.x, _664.y ? _643.y : _662.y);
        highp vec4 _704 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _705 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _713;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _712 = _665;
            _712.x = abs(_665.x - 0.5) + 0.5;
            _713 = _712;
        }
        else
        {
            _713 = _665;
        }
        highp vec2 _714 = _704.xy;
        highp vec2 _715 = _704.zw;
        highp vec2 _716 = _713 * _714 + _715;
        highp vec2 _725;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_665.x < 0.5))
        {
            highp vec2 _724 = _716;
            _724.x = 1.0 - _716.x;
            _725 = _724;
        }
        else
        {
            _725 = _716;
        }
        highp vec2 _732;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _644)
        {
            highp vec2 _731 = _725;
            _731.x = 1.0 - _725.x;
            _732 = _731;
        }
        else
        {
            _732 = _725;
        }
        highp vec2 _737;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _644)
        {
            highp vec2 _736 = _732;
            _736.x = -1.0;
            _737 = _736;
        }
        else
        {
            _737 = _732;
        }
        highp vec2 _743;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_644))
        {
            highp vec2 _742 = _737;
            _742.x = -1.0;
            _743 = _742;
        }
        else
        {
            _743 = _737;
        }
        highp float _746 = sin(_705);
        highp float _747 = cos(_705);
        highp vec2 _748 = ((_743 - _715) / _714) - vec2(0.5);
        highp float _749 = _748.x;
        highp float _750 = _748.y;
        highp vec2 _758 = (vec2(_749 * _747 + (-(_750 * _746)), _749 * _746 + (_750 * _747)) + vec2(0.5)) * _714 + _715;
        uint _762 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _766 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _762 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _762);
        highp float _767 = _758.x;
        highp float _768 = _758.y;
        uint _775 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _785 = ((mix(vec2(_767, 1.0 - _768), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_766 % _775), float(_766 / _775))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _785.y = 1.0 - _785.y;
        highp vec4 _790 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _785);
        highp vec4 _806;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _793 = _790.x;
            highp float _794 = _790.y;
            highp float _795 = _790.z;
            highp float _796 = isnan(_794) ? _793 : (isnan(_793) ? _794 : min(_793, _794));
            highp float _797 = isnan(_794) ? _793 : (isnan(_793) ? _794 : max(_793, _794));
            highp float _798 = isnan(_795) ? _797 : (isnan(_797) ? _795 : min(_797, _795));
            highp float _799 = isnan(_798) ? _796 : (isnan(_796) ? _798 : max(_796, _798));
            _806 = vec4(1.0, 1.0, 1.0, clamp((_799 - 0.5) / clamp(fwidth(_799), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _806 = _790;
        }
        highp vec4 _829;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _810 = clamp(_636 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _813 = 0.5 - abs(_767 - 0.5);
            highp float _820 = 0.5 - abs(_768 - 0.5);
            highp vec4 _828 = _806;
            _828.w = _806.w * (clamp(_813 / clamp(fwidth(_813), 9.9999997473787516355514526367188e-05, _810), 0.0, 1.0) * clamp(_820 / clamp(fwidth(_820), 9.9999997473787516355514526367188e-05, _810), 0.0, 1.0));
            _829 = _828;
        }
        else
        {
            _829 = _806;
        }
        highp vec4 _830 = _Globals._Color2nd * _829;
        highp float _831 = _830.w;
        _830.w = mix(_831, _831 * clamp((_420 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _857;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_359 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_359 < 0.0)))
        {
            highp vec4 _856 = _830;
            _856.w = 0.0;
            _857 = _856;
        }
        else
        {
            _857 = _830;
        }
        highp vec3 _858 = _544.xyz;
        highp vec3 _867 = _858 + _857.xyz;
        highp vec3 _868 = _858 * _857.xyz;
        bvec3 _870 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _871 = vec3(_870.x ? _857.xyz.x : _310.x, _870.y ? _857.xyz.y : _310.y, _870.z ? _857.xyz.z : _310.z);
        bvec3 _873 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _881;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _879 = (-_858) * _857.xyz + _867;
            bvec3 _2400 = isnan(_879);
            bvec3 _2401 = isnan(_858);
            highp vec3 _2402 = max(_879, _858);
            highp vec3 _2403 = vec3(_2400.x ? _858.x : _2402.x, _2400.y ? _858.y : _2402.y, _2400.z ? _858.z : _2402.z);
            _881 = vec3(_2401.x ? _879.x : _2403.x, _2401.y ? _879.y : _2403.y, _2401.z ? _879.z : _2403.z);
        }
        else
        {
            _881 = vec3(_873.x ? _867.x : _871.x, _873.y ? _867.y : _871.y, _873.z ? _867.z : _871.z);
        }
        bvec3 _883 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _885 = mix(_858, vec3(_883.x ? _868.x : _881.x, _883.y ? _868.y : _881.y, _883.z ? _868.z : _881.z), vec3(_857.w * _Globals._Main2ndEnableLighting));
        _887 = _857;
        _888 = vec4(_885.x, _885.y, _885.z, _544.w);
    }
    else
    {
        _887 = _Globals._Color2nd;
        _888 = _544;
    }
    bool _893 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1131;
    highp vec4 _1132;
    if (_893)
    {
        bvec2 _899 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _900 = vec2(_899.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _899.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _902 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _903 = vec2(_902.x ? out_var_TEXCOORD1.xy.x : _900.x, _902.y ? out_var_TEXCOORD1.xy.y : _900.y);
        bvec2 _905 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _906 = vec2(_905.x ? out_var_TEXCOORD1.zw.x : _903.x, _905.y ? out_var_TEXCOORD1.zw.y : _903.y);
        bvec2 _908 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _909 = vec2(_908.x ? _643.x : _906.x, _908.y ? _643.y : _906.y);
        highp vec4 _948 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _949 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _957;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _956 = _909;
            _956.x = abs(_909.x - 0.5) + 0.5;
            _957 = _956;
        }
        else
        {
            _957 = _909;
        }
        highp vec2 _958 = _948.xy;
        highp vec2 _959 = _948.zw;
        highp vec2 _960 = _957 * _958 + _959;
        highp vec2 _969;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_909.x < 0.5))
        {
            highp vec2 _968 = _960;
            _968.x = 1.0 - _960.x;
            _969 = _968;
        }
        else
        {
            _969 = _960;
        }
        highp vec2 _976;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _644)
        {
            highp vec2 _975 = _969;
            _975.x = 1.0 - _969.x;
            _976 = _975;
        }
        else
        {
            _976 = _969;
        }
        highp vec2 _981;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _644)
        {
            highp vec2 _980 = _976;
            _980.x = -1.0;
            _981 = _980;
        }
        else
        {
            _981 = _976;
        }
        highp vec2 _987;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_644))
        {
            highp vec2 _986 = _981;
            _986.x = -1.0;
            _987 = _986;
        }
        else
        {
            _987 = _981;
        }
        highp float _990 = sin(_949);
        highp float _991 = cos(_949);
        highp vec2 _992 = ((_987 - _959) / _958) - vec2(0.5);
        highp float _993 = _992.x;
        highp float _994 = _992.y;
        highp vec2 _1002 = (vec2(_993 * _991 + (-(_994 * _990)), _993 * _990 + (_994 * _991)) + vec2(0.5)) * _958 + _959;
        uint _1006 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1010 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1006 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1006);
        highp float _1011 = _1002.x;
        highp float _1012 = _1002.y;
        uint _1019 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1029 = ((mix(vec2(_1011, 1.0 - _1012), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1010 % _1019), float(_1010 / _1019))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1029.y = 1.0 - _1029.y;
        highp vec4 _1034 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1029);
        highp vec4 _1050;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1037 = _1034.x;
            highp float _1038 = _1034.y;
            highp float _1039 = _1034.z;
            highp float _1040 = isnan(_1038) ? _1037 : (isnan(_1037) ? _1038 : min(_1037, _1038));
            highp float _1041 = isnan(_1038) ? _1037 : (isnan(_1037) ? _1038 : max(_1037, _1038));
            highp float _1042 = isnan(_1039) ? _1041 : (isnan(_1041) ? _1039 : min(_1041, _1039));
            highp float _1043 = isnan(_1042) ? _1040 : (isnan(_1040) ? _1042 : max(_1040, _1042));
            _1050 = vec4(1.0, 1.0, 1.0, clamp((_1043 - 0.5) / clamp(fwidth(_1043), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1050 = _1034;
        }
        highp vec4 _1073;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1054 = clamp(_636 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1057 = 0.5 - abs(_1011 - 0.5);
            highp float _1064 = 0.5 - abs(_1012 - 0.5);
            highp vec4 _1072 = _1050;
            _1072.w = _1050.w * (clamp(_1057 / clamp(fwidth(_1057), 9.9999997473787516355514526367188e-05, _1054), 0.0, 1.0) * clamp(_1064 / clamp(fwidth(_1064), 9.9999997473787516355514526367188e-05, _1054), 0.0, 1.0));
            _1073 = _1072;
        }
        else
        {
            _1073 = _1050;
        }
        highp vec4 _1074 = _Globals._Color3rd * _1073;
        highp float _1075 = _1074.w;
        _1074.w = mix(_1075, _1075 * clamp((_420 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1101;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_359 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_359 < 0.0)))
        {
            highp vec4 _1100 = _1074;
            _1100.w = 0.0;
            _1101 = _1100;
        }
        else
        {
            _1101 = _1074;
        }
        highp vec3 _1111 = _888.xyz + _1101.xyz;
        highp vec3 _1112 = _888.xyz * _1101.xyz;
        bvec3 _1114 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1115 = vec3(_1114.x ? _1101.xyz.x : _310.x, _1114.y ? _1101.xyz.y : _310.y, _1114.z ? _1101.xyz.z : _310.z);
        bvec3 _1117 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1125;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1123 = (-_888.xyz) * _1101.xyz + _1111;
            bvec3 _2425 = isnan(_1123);
            bvec3 _2426 = isnan(_888.xyz);
            highp vec3 _2427 = max(_1123, _888.xyz);
            highp vec3 _2428 = vec3(_2425.x ? _888.xyz.x : _2427.x, _2425.y ? _888.xyz.y : _2427.y, _2425.z ? _888.xyz.z : _2427.z);
            _1125 = vec3(_2426.x ? _1123.x : _2428.x, _2426.y ? _1123.y : _2428.y, _2426.z ? _1123.z : _2428.z);
        }
        else
        {
            _1125 = vec3(_1117.x ? _1111.x : _1115.x, _1117.y ? _1111.y : _1115.y, _1117.z ? _1111.z : _1115.z);
        }
        bvec3 _1127 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1129 = mix(_888.xyz, vec3(_1127.x ? _1112.x : _1125.x, _1127.y ? _1112.y : _1125.y, _1127.z ? _1112.z : _1125.z), vec3(_1101.w * _Globals._Main3rdEnableLighting));
        _1131 = _1101;
        _1132 = vec4(_1129.x, _1129.y, _1129.z, _888.w);
    }
    else
    {
        _1131 = _Globals._Color3rd;
        _1132 = _888;
    }
    highp vec4 _1133 = _1132;
    _1133.w = 1.0;
    highp vec4 _1307;
    highp float _1308;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1157 = clamp(dot(_411, mix(_639, _634, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1160 = clamp(dot(_411, mix(_639, _634, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1163 = clamp(dot(_411, mix(_639, _634, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1167 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1170 = clamp(_410 + distance(_411, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1173 = mix(1.0, _1170, _Globals._ShadowReceive);
        highp float _1174 = _1157 * _1173;
        highp float _1177 = mix(1.0, _1170, _Globals._Shadow2ndReceive);
        highp float _1181 = mix(1.0, _1170, _Globals._Shadow3rdReceive);
        highp float _1192 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1193 = clamp(_1192, 0.0, 1.0);
        highp float _1195 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1208 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1222 = clamp(_1192 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1235 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1250 = (_359 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1251 = clamp((_1157 * _1173 + (-_1193)) / clamp(fwidth(_1174) * _1167 + (_1195 - _1193), 0.0, 1.0), 0.0, 1.0) * _1250;
        highp vec3 _1283 = mix(mix(_1133.xyz * _Globals._ShadowColor.xyz, (_1133.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1160 * _1177 + (-_1208)) / clamp(fwidth(_1160 * _1177) * _1167 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1208), 0.0, 1.0), 0.0, 1.0) * _1250)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1133.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1163 * _1181 + (-_1235)) / clamp(fwidth(_1163 * _1181) * _1167 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1235), 0.0, 1.0), 0.0, 1.0) * _1250)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1289 = _1133.xyz * out_var_TEXCOORD6;
        highp vec3 _1295 = mix(mix(_1283, _1283 * _1133.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1133.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2430 = isnan(_1295);
        bvec3 _2431 = isnan(_1289);
        highp vec3 _2432 = min(_1295, _1289);
        highp vec3 _2433 = vec3(_2430.x ? _1289.x : _2432.x, _2430.y ? _1289.y : _2432.y, _2430.z ? _1289.z : _2432.z);
        highp vec3 _1303 = mix(mix(vec3(_2431.x ? _1295.x : _2433.x, _2431.y ? _1295.y : _2433.y, _2431.z ? _1295.z : _2433.z), _1289, _Globals._ShadowBorderColor.xyz * (clamp((_1157 * _1173 + (-_1222)) / clamp(fwidth(_1174) * _1167 + (_1195 - _1222), 0.0, 1.0), 0.0, 1.0) * _1250)), _1289, vec3(mix(1.0, _1251, _Globals._ShadowStrength)));
        _1307 = vec4(_1303.x, _1303.y, _1303.z, _1133.w);
        _1308 = _1251;
    }
    else
    {
        highp vec3 _1305 = _1133.xyz * out_var_TEXCOORD6;
        _1307 = vec4(_1305.x, _1305.y, _1305.z, _1133.w);
        _1308 = 1.0;
    }
    highp vec3 _1311 = vec3(_Globals._LightMaxLimit);
    bvec3 _2435 = isnan(out_var_TEXCOORD6);
    bvec3 _2436 = isnan(_1311);
    highp vec3 _2437 = min(out_var_TEXCOORD6, _1311);
    highp vec3 _2438 = vec3(_2435.x ? _1311.x : _2437.x, _2435.y ? _1311.y : _2437.y, _2435.z ? _1311.z : _2437.z);
    highp vec3 _1312 = vec3(_2436.x ? out_var_TEXCOORD6.x : _2438.x, _2436.y ? out_var_TEXCOORD6.y : _2438.y, _2436.z ? out_var_TEXCOORD6.z : _2438.z);
    highp float _1313 = clamp(_1308, 0.0, 1.0);
    highp vec3 _1315 = _1133.xyz * _Globals._LightMaxLimit;
    bvec3 _2440 = isnan(_1307.xyz);
    bvec3 _2441 = isnan(_1315);
    highp vec3 _2442 = min(_1307.xyz, _1315);
    highp vec3 _2443 = vec3(_2440.x ? _1315.x : _2442.x, _2440.y ? _1315.y : _2442.y, _2440.z ? _1315.z : _2442.z);
    highp vec3 _1316 = vec3(_2441.x ? _1307.xyz.x : _2443.x, _2441.y ? _1307.xyz.y : _2443.y, _2441.z ? _1307.xyz.z : _2443.z);
    highp vec4 _1350;
    if (_649)
    {
        highp vec3 _1320 = _1316.xyz;
        highp vec3 _1330 = _1320 + _887.xyz;
        highp vec3 _1331 = _1320 * _887.xyz;
        bvec3 _1333 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1334 = vec3(_1333.x ? _887.xyz.x : _310.x, _1333.y ? _887.xyz.y : _310.y, _1333.z ? _887.xyz.z : _310.z);
        bvec3 _1336 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1344;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1342 = (-_1320) * _887.xyz + _1330;
            bvec3 _2445 = isnan(_1342);
            bvec3 _2446 = isnan(_1320);
            highp vec3 _2447 = max(_1342, _1320);
            highp vec3 _2448 = vec3(_2445.x ? _1320.x : _2447.x, _2445.y ? _1320.y : _2447.y, _2445.z ? _1320.z : _2447.z);
            _1344 = vec3(_2446.x ? _1342.x : _2448.x, _2446.y ? _1342.y : _2448.y, _2446.z ? _1342.z : _2448.z);
        }
        else
        {
            _1344 = vec3(_1336.x ? _1330.x : _1334.x, _1336.y ? _1330.y : _1334.y, _1336.z ? _1330.z : _1334.z);
        }
        bvec3 _1346 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1348 = mix(_1320, vec3(_1346.x ? _1331.x : _1344.x, _1346.y ? _1331.y : _1344.y, _1346.z ? _1331.z : _1344.z), vec3((-_887.w) * _Globals._Main2ndEnableLighting + _887.w));
        _1350 = vec4(_1348.x, _1348.y, _1348.z, _1307.w);
    }
    else
    {
        _1350 = vec4(_1316.x, _1316.y, _1316.z, _1307.w);
    }
    highp vec4 _1383;
    if (_893)
    {
        highp vec3 _1363 = _1350.xyz + _1131.xyz;
        highp vec3 _1364 = _1350.xyz * _1131.xyz;
        bvec3 _1366 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1367 = vec3(_1366.x ? _1131.xyz.x : _310.x, _1366.y ? _1131.xyz.y : _310.y, _1366.z ? _1131.xyz.z : _310.z);
        bvec3 _1369 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1377;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1375 = (-_1350.xyz) * _1131.xyz + _1363;
            bvec3 _2450 = isnan(_1375);
            bvec3 _2451 = isnan(_1350.xyz);
            highp vec3 _2452 = max(_1375, _1350.xyz);
            highp vec3 _2453 = vec3(_2450.x ? _1350.xyz.x : _2452.x, _2450.y ? _1350.xyz.y : _2452.y, _2450.z ? _1350.xyz.z : _2452.z);
            _1377 = vec3(_2451.x ? _1375.x : _2453.x, _2451.y ? _1375.y : _2453.y, _2451.z ? _1375.z : _2453.z);
        }
        else
        {
            _1377 = vec3(_1369.x ? _1363.x : _1367.x, _1369.y ? _1363.y : _1367.y, _1369.z ? _1363.z : _1367.z);
        }
        bvec3 _1379 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1381 = mix(_1350.xyz, vec3(_1379.x ? _1364.x : _1377.x, _1379.y ? _1364.y : _1377.y, _1379.z ? _1364.z : _1377.z), vec3((-_1131.w) * _Globals._Main3rdEnableLighting + _1131.w));
        _1383 = vec4(_1381.x, _1381.y, _1381.z, _1350.w);
    }
    else
    {
        _1383 = _1350;
    }
    highp vec4 _1429;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1399 = pow(clamp(1.0 - abs(dot(mix(_639, _634, vec3(_Globals._RimShadeNormalStrength)), _427)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1408 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1427 = mix(_1383.xyz, _1383.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1399 - _1408) / clamp(fwidth(_1399) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1408), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1429 = vec4(_1427.x, _1427.y, _1427.z, _1383.w);
    }
    else
    {
        _1429 = _1383;
    }
    highp vec4 _1502;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1453 = dot(normalize(((-_427) * _Globals._BacklightViewStrength) + _411), mix(_639, _634, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1463;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1463 = _1453 * clamp(_410 + distance(_411, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1463 = _1453;
        }
        highp float _1472 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1500 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1133.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_359 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_427, _411) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1463 - _1472) / clamp(fwidth(_1463) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1472), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1312 + _1429.xyz;
        _1502 = vec4(_1500.x, _1500.y, _1500.z, _1429.w);
    }
    else
    {
        _1502 = _1429;
    }
    highp vec4 _1745;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1512 = dFdx(_634);
        highp vec3 _1513 = abs(_1512);
        highp vec3 _1514 = dFdy(_634);
        highp vec3 _1515 = abs(_1514);
        highp float _1516 = dot(_1513, _1513);
        highp float _1517 = dot(_1515, _1515);
        highp float _1518 = isnan(_1517) ? _1516 : (isnan(_1516) ? _1517 : max(_1516, _1517));
        highp float _1521 = (_1518 / (_1518 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1524 = clamp(1.0 - (isnan(_1521) ? 0.0 : (isnan(0.0) ? _1521 : max(0.0, _1521))), 0.0, 1.0);
        highp float _1525 = isnan(_1524) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1524 : min(_Globals._Smoothness, _1524));
        highp float _1526 = 1.0 - _1525;
        highp float _1527 = _1526 * _1526;
        highp vec3 _1532 = _1502.xyz - (_1502.xyz * _Globals._Metallic);
        highp vec3 _1538 = mix(vec3(_Globals._Reflectance), _1133.xyz, vec3(_Globals._Metallic));
        highp vec4 _1641;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1613;
            do
            {
                highp vec3 _1551 = mix(_639, _634, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1553 = normalize(_427 + _411);
                highp float _1555 = clamp(dot(_1551, _1553), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1564 = pow(_1555, 1.0 / _1527);
                    highp float _1571 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1613 = vec3(clamp((_1564 - _1571) / clamp(fwidth(_1564) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1571), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1583 = clamp(dot(_1551, _427), 0.0, 1.0);
                highp float _1585 = clamp(dot(_1551, _411), 0.0, 1.0);
                highp float _1588 = isnan(0.00200000009499490261077880859375) ? _1527 : (isnan(_1527) ? 0.00200000009499490261077880859375 : max(_1527, 0.00200000009499490261077880859375));
                highp float _1589 = 1.0 - _1588;
                highp float _1593 = _1588 * _1588;
                highp float _1596 = (_1555 * _1593 + (-_1555)) * _1555 + 1.0;
                highp float _1604 = 1.0 - clamp(dot(_411, _1553), 0.0, 1.0);
                _1613 = (_1538 + ((((((vec3(1.0) - _1538) * _1604) * _1604) * _1604) * _1604) * _1604)) * (((0.5 / ((_1585 * (_1583 * _1589 + _1588) + (_1583 * (_1585 * _1589 + _1588))) + 9.9999997473787516355514526367188e-06)) * (_1593 / (_1596 * _1596 + 1.0000000116860974230803549289703e-07))) * _1585);
                break;
            } while(false);
            highp vec3 _1614 = _1532.xyz;
            highp vec3 _1616 = _Globals._ReflectionColor.xyz * _1312;
            highp vec3 _1621 = _Globals._ReflectionColor.xyz * _1312 + _1614;
            highp vec3 _1622 = _1614 * _1616;
            bvec3 _1624 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1625 = vec3(_1624.x ? _1616.x : _310.x, _1624.y ? _1616.y : _310.y, _1624.z ? _1616.z : _310.z);
            bvec3 _1627 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1635;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1633 = (-_1614) * _1616 + _1621;
                bvec3 _2475 = isnan(_1633);
                bvec3 _2476 = isnan(_1614);
                highp vec3 _2477 = max(_1633, _1614);
                highp vec3 _2478 = vec3(_2475.x ? _1614.x : _2477.x, _2475.y ? _1614.y : _2477.y, _2475.z ? _1614.z : _2477.z);
                _1635 = vec3(_2476.x ? _1633.x : _2478.x, _2476.y ? _1633.y : _2478.y, _2476.z ? _1633.z : _2478.z);
            }
            else
            {
                _1635 = vec3(_1627.x ? _1621.x : _1625.x, _1627.y ? _1621.y : _1625.y, _1627.z ? _1621.z : _1625.z);
            }
            bvec3 _1637 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1639 = mix(_1614, vec3(_1637.x ? _1622.x : _1635.x, _1637.y ? _1622.y : _1635.y, _1637.z ? _1622.z : _1635.z), _1613 * _Globals._ReflectionColor.w);
            _1641 = vec4(_1639.x, _1639.y, _1639.z, _1502.w);
        }
        else
        {
            _1641 = vec4(_1532.x, _1532.y, _1532.z, _1502.w);
        }
        highp vec4 _1744;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1663 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1670 = reflect(-_427, mix(_639, _634, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1673 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1670, _1526 * ((-4.19999980926513671875) * _1526 + 10.19999980926513671875));
            highp vec3 _1693 = ((_1673.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1673.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1312, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1699 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1670, _1526 * 8.0).xyz * 1.0;
            highp float _1710 = 1.0 - _636;
            highp vec3 _1724 = _1641.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1725 = _1641.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1727 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1728 = vec3(_1727.x ? _Globals._ReflectionColor.xyz.x : _310.x, _1727.y ? _Globals._ReflectionColor.xyz.y : _310.y, _1727.z ? _Globals._ReflectionColor.xyz.z : _310.z);
            bvec3 _1730 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1738;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1736 = (-_1641.xyz) * _Globals._ReflectionColor.xyz + _1724;
                bvec3 _2480 = isnan(_1736);
                bvec3 _2481 = isnan(_1641.xyz);
                highp vec3 _2482 = max(_1736, _1641.xyz);
                highp vec3 _2483 = vec3(_2480.x ? _1641.xyz.x : _2482.x, _2480.y ? _1641.xyz.y : _2482.y, _2480.z ? _1641.xyz.z : _2482.z);
                _1738 = vec3(_2481.x ? _1736.x : _2483.x, _2481.y ? _1736.y : _2483.y, _2481.z ? _1736.z : _2483.z);
            }
            else
            {
                _1738 = vec3(_1730.x ? _1724.x : _1728.x, _1730.y ? _1724.y : _1728.y, _1730.z ? _1724.z : _1728.z);
            }
            bvec3 _1740 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1742 = mix(_1641.xyz, vec3(_1740.x ? _1725.x : _1738.x, _1740.y ? _1725.y : _1738.y, _1740.z ? _1725.z : _1738.z), ((vec3(_1663.x ? _1693.x : _1699.x, _1663.y ? _1693.y : _1699.y, _1663.z ? _1693.z : _1699.z) * (1.0 / (_1527 * _1527 + 1.0))) * mix(_1538, vec3(clamp(_1525 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1710 * _1710) * _1710) * _1710) * _1710))) * _Globals._ReflectionColor.w);
            _1744 = vec4(_1742.x, _1742.y, _1742.z, _1641.w);
        }
        else
        {
            _1744 = _1641;
        }
        _1745 = _1744;
    }
    else
    {
        _1745 = _1502;
    }
    highp vec4 _1851;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _1771 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1772 = vec3(_1771.x ? _427.x : _335.x, _1771.y ? _427.y : _335.y, _1771.z ? _427.z : _335.z);
        bvec3 _1773 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1774 = vec3(_1773.x ? vec3(0.0, 1.0, 0.0).x : _342.x, _1773.y ? vec3(0.0, 1.0, 0.0).y : _342.y, _1773.z ? vec3(0.0, 1.0, 0.0).z : _342.z);
        highp vec3 _1778 = normalize(_1774 - (_1772 * dot(_1772, _1774)));
        highp vec4 _1800 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_639, _634, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_1772, _1778), _1778, _1772)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1801 = _1800.xyz;
        highp float _1807 = _1800.w;
        highp vec3 _1817 = mix(_1801, _1801 * _1312, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1824 = mix(_1817, _1817 * _1133.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1831 = _1745.xyz + _1824;
        highp vec3 _1832 = _1745.xyz * _1824;
        bvec3 _1834 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1835 = vec3(_1834.x ? _1824.x : _310.x, _1834.y ? _1824.y : _310.y, _1834.z ? _1824.z : _310.z);
        bvec3 _1837 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1845;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1843 = (-_1745.xyz) * _1824 + _1831;
            bvec3 _2485 = isnan(_1843);
            bvec3 _2486 = isnan(_1745.xyz);
            highp vec3 _2487 = max(_1843, _1745.xyz);
            highp vec3 _2488 = vec3(_2485.x ? _1745.xyz.x : _2487.x, _2485.y ? _1745.xyz.y : _2487.y, _2485.z ? _1745.xyz.z : _2487.z);
            _1845 = vec3(_2486.x ? _1843.x : _2488.x, _2486.y ? _1843.y : _2488.y, _2486.z ? _1843.z : _2488.z);
        }
        else
        {
            _1845 = vec3(_1837.x ? _1831.x : _1835.x, _1837.y ? _1831.y : _1835.y, _1837.z ? _1831.z : _1835.z);
        }
        bvec3 _1847 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1849 = mix(_1745.xyz, vec3(_1847.x ? _1832.x : _1845.x, _1847.y ? _1832.y : _1845.y, _1847.z ? _1832.z : _1845.z), vec3(1.0) * (_Globals._MatCapBlend * ((_359 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1807, _1807 * _1313, _Globals._MatCapShadowMask))));
        _1851 = vec4(_1849.x, _1849.y, _1849.z, _1745.w);
    }
    else
    {
        _1851 = _1745;
    }
    highp vec4 _1956;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _1876 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1877 = vec3(_1876.x ? _427.x : _335.x, _1876.y ? _427.y : _335.y, _1876.z ? _427.z : _335.z);
        bvec3 _1878 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1879 = vec3(_1878.x ? vec3(0.0, 1.0, 0.0).x : _342.x, _1878.y ? vec3(0.0, 1.0, 0.0).y : _342.y, _1878.z ? vec3(0.0, 1.0, 0.0).z : _342.z);
        highp vec3 _1883 = normalize(_1879 - (_1877 * dot(_1877, _1879)));
        highp vec4 _1905 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_639, _634, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_1877, _1883), _1883, _1877)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1906 = _1905.xyz;
        highp float _1912 = _1905.w;
        highp vec3 _1922 = mix(_1906, _1906 * _1312, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1929 = mix(_1922, _1922 * _1133.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1936 = _1851.xyz + _1929;
        highp vec3 _1937 = _1851.xyz * _1929;
        bvec3 _1939 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1940 = vec3(_1939.x ? _1929.x : _310.x, _1939.y ? _1929.y : _310.y, _1939.z ? _1929.z : _310.z);
        bvec3 _1942 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1950;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1948 = (-_1851.xyz) * _1929 + _1936;
            bvec3 _2490 = isnan(_1948);
            bvec3 _2491 = isnan(_1851.xyz);
            highp vec3 _2492 = max(_1948, _1851.xyz);
            highp vec3 _2493 = vec3(_2490.x ? _1851.xyz.x : _2492.x, _2490.y ? _1851.xyz.y : _2492.y, _2490.z ? _1851.xyz.z : _2492.z);
            _1950 = vec3(_2491.x ? _1948.x : _2493.x, _2491.y ? _1948.y : _2493.y, _2491.z ? _1948.z : _2493.z);
        }
        else
        {
            _1950 = vec3(_1942.x ? _1936.x : _1940.x, _1942.y ? _1936.y : _1940.y, _1942.z ? _1936.z : _1940.z);
        }
        bvec3 _1952 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1954 = mix(_1851.xyz, vec3(_1952.x ? _1937.x : _1950.x, _1952.y ? _1937.y : _1950.y, _1952.z ? _1937.z : _1950.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_359 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1912, _1912 * _1313, _Globals._MatCap2ndShadowMask))));
        _1956 = vec4(_1954.x, _1954.y, _1954.z, _1851.w);
    }
    else
    {
        _1956 = _1851;
    }
    highp vec4 _2102;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1975 = mix(_639, _634, vec3(_Globals._RimNormalStrength));
        highp float _1979 = dot(_411, _1975) * 0.5 + 0.5;
        highp float _2002 = (_359 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1975, _427)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2006 = mix(_2002, _2002 * clamp((_1979 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2007 = _2002 * clamp(((1.0 - _1979) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2017 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2026 = clamp((_2006 - _2017) / clamp(fwidth(_2006) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2017), 0.0, 1.0), 0.0, 1.0);
        highp float _2033 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2043 = clamp((_2007 * _Globals._RimDirStrength + (-_2033)) / clamp(fwidth(_2007 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2033), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2055 = vec3(1.0 - _Globals._RimEnableLighting) + (_1312 * _Globals._RimEnableLighting);
        highp vec3 _2057 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1133.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2058 = _2057 * _2055;
        highp vec3 _2064 = _2057 * _2055 + _1956.xyz;
        highp vec3 _2065 = _1956.xyz * _2058;
        bvec3 _2067 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2068 = vec3(_2067.x ? _2058.x : _310.x, _2067.y ? _2058.y : _310.y, _2067.z ? _2058.z : _310.z);
        bvec3 _2070 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2072 = _Globals._RimBlendMode == 2u;
        highp vec3 _2078;
        if (_2072)
        {
            highp vec3 _2076 = (-_1956.xyz) * _2058 + _2064;
            bvec3 _2495 = isnan(_2076);
            bvec3 _2496 = isnan(_1956.xyz);
            highp vec3 _2497 = max(_2076, _1956.xyz);
            highp vec3 _2498 = vec3(_2495.x ? _1956.xyz.x : _2497.x, _2495.y ? _1956.xyz.y : _2497.y, _2495.z ? _1956.xyz.z : _2497.z);
            _2078 = vec3(_2496.x ? _2076.x : _2498.x, _2496.y ? _2076.y : _2498.y, _2496.z ? _2076.z : _2498.z);
        }
        else
        {
            _2078 = vec3(_2070.x ? _2064.x : _2068.x, _2070.y ? _2064.y : _2068.y, _2070.z ? _2064.z : _2068.z);
        }
        bvec3 _2080 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2083 = mix(_1956.xyz, vec3(_2080.x ? _2065.x : _2078.x, _2080.y ? _2065.y : _2078.y, _2080.z ? _2065.z : _2078.z), vec3(mix(_2026, _2026 * _1313, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2085 = _Globals._RimIndirColor.xyz * _2055;
        highp vec3 _2089 = _Globals._RimIndirColor.xyz * _2055 + _2083;
        highp vec3 _2090 = _2083 * _2085;
        highp vec3 _2091 = vec3(_2067.x ? _2085.x : _310.x, _2067.y ? _2085.y : _310.y, _2067.z ? _2085.z : _310.z);
        highp vec3 _2098;
        if (_2072)
        {
            highp vec3 _2096 = (-_2083) * _2085 + _2089;
            bvec3 _2500 = isnan(_2096);
            bvec3 _2501 = isnan(_2083);
            highp vec3 _2502 = max(_2096, _2083);
            highp vec3 _2503 = vec3(_2500.x ? _2083.x : _2502.x, _2500.y ? _2083.y : _2502.y, _2500.z ? _2083.z : _2502.z);
            _2098 = vec3(_2501.x ? _2096.x : _2503.x, _2501.y ? _2096.y : _2503.y, _2501.z ? _2096.z : _2503.z);
        }
        else
        {
            _2098 = vec3(_2070.x ? _2089.x : _2091.x, _2070.y ? _2089.y : _2091.y, _2070.z ? _2089.z : _2091.z);
        }
        highp vec3 _2100 = mix(_2083, vec3(_2080.x ? _2090.x : _2098.x, _2080.y ? _2090.y : _2098.y, _2080.z ? _2090.z : _2098.z), vec3(mix(_2043, _2043 * _1313, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2102 = vec4(_2100.x, _2100.y, _2100.z, _1956.w);
    }
    else
    {
        _2102 = _1956;
    }
    highp vec4 _2216;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2113 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2114 = vec2(_2113.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2113.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2116 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2117 = vec2(_2116.x ? out_var_TEXCOORD1.xy.x : _2114.x, _2116.y ? out_var_TEXCOORD1.xy.y : _2114.y);
        bvec2 _2119 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2120 = vec2(_2119.x ? out_var_TEXCOORD1.zw.x : _2117.x, _2119.y ? out_var_TEXCOORD1.zw.y : _2117.y);
        bvec2 _2122 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2139 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2140 = sin(_2139);
        highp float _2141 = cos(_2139);
        highp vec2 _2142 = ((vec2(_2122.x ? _638.x : _2120.x, _2122.y ? _638.y : _2120.y) + ((_437.xy / vec2(_437.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2143 = _2142.x;
        highp float _2144 = _2142.y;
        highp vec4 _2157 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2143 * _2141 + (-(_2144 * _2140)), _2143 * _2140 + (_2144 * _2141)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2158 = _Globals._EmissionColor * _2157;
        highp vec3 _2159 = _2158.xyz;
        highp vec3 _2165 = mix(_2159, _2159 * _415, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2179 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2185;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2185 = roundEven(_2179);
        }
        else
        {
            _2185 = _2179;
        }
        highp vec3 _2192 = mix(_2165, _2165 * _1133.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2196 = _2102.xyz + _2192;
        highp vec3 _2197 = _2102.xyz * _2192;
        bvec3 _2199 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2200 = vec3(_2199.x ? _2192.x : _310.x, _2199.y ? _2192.y : _310.y, _2199.z ? _2192.z : _310.z);
        bvec3 _2202 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2210;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2208 = (-_2102.xyz) * _2192 + _2196;
            bvec3 _2505 = isnan(_2208);
            bvec3 _2506 = isnan(_2102.xyz);
            highp vec3 _2507 = max(_2208, _2102.xyz);
            highp vec3 _2508 = vec3(_2505.x ? _2102.xyz.x : _2507.x, _2505.y ? _2102.xyz.y : _2507.y, _2505.z ? _2102.xyz.z : _2507.z);
            _2210 = vec3(_2506.x ? _2208.x : _2508.x, _2506.y ? _2208.y : _2508.y, _2506.z ? _2208.z : _2508.z);
        }
        else
        {
            _2210 = vec3(_2202.x ? _2196.x : _2200.x, _2202.y ? _2196.y : _2200.y, _2202.z ? _2196.z : _2200.z);
        }
        bvec3 _2212 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2214 = mix(_2102.xyz, vec3(_2212.x ? _2197.x : _2210.x, _2212.y ? _2197.y : _2210.y, _2212.z ? _2197.z : _2210.z), vec3((_Globals._EmissionBlend * mix(1.0, _2185, _Globals._EmissionBlink.x)) * _2158.w));
        _2216 = vec4(_2214.x, _2214.y, _2214.z, _2102.w);
    }
    else
    {
        _2216 = _2102;
    }
    highp vec4 _2281;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2230 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _415, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2244 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2250;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2250 = roundEven(_2244);
        }
        else
        {
            _2250 = _2244;
        }
        highp vec3 _2257 = mix(_2230, _2230 * _1133.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2261 = _2216.xyz + _2257;
        highp vec3 _2262 = _2216.xyz * _2257;
        bvec3 _2264 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2265 = vec3(_2264.x ? _2257.x : _310.x, _2264.y ? _2257.y : _310.y, _2264.z ? _2257.z : _310.z);
        bvec3 _2267 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2275;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2273 = (-_2216.xyz) * _2257 + _2261;
            bvec3 _2510 = isnan(_2273);
            bvec3 _2511 = isnan(_2216.xyz);
            highp vec3 _2512 = max(_2273, _2216.xyz);
            highp vec3 _2513 = vec3(_2510.x ? _2216.xyz.x : _2512.x, _2510.y ? _2216.xyz.y : _2512.y, _2510.z ? _2216.xyz.z : _2512.z);
            _2275 = vec3(_2511.x ? _2273.x : _2513.x, _2511.y ? _2273.y : _2513.y, _2511.z ? _2273.z : _2513.z);
        }
        else
        {
            _2275 = vec3(_2267.x ? _2261.x : _2265.x, _2267.y ? _2261.y : _2265.y, _2267.z ? _2261.z : _2265.z);
        }
        bvec3 _2277 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2279 = mix(_2216.xyz, vec3(_2277.x ? _2262.x : _2275.x, _2277.y ? _2262.y : _2275.y, _2277.z ? _2262.z : _2275.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2250, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2281 = vec4(_2279.x, _2279.y, _2279.z, _2216.w);
    }
    else
    {
        _2281 = _2216;
    }
    bvec3 _2283 = bvec3(_359 < 0.0);
    highp vec3 _2292 = mix(_2281.xyz, _Globals._BackfaceColor.xyz * _1312, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2327 = vec3(_2283.x ? _2292.x : _2281.xyz.x, _2283.y ? _2292.y : _2281.xyz.y, _2283.z ? _2292.z : _2281.xyz.z).xyz;
    highp vec3 _2335 = mix(_2327, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2327, vec3(pow(clamp(1.0 - abs(dot(_639, _427)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_359 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _420) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2335.x, _2335.y, _2335.z, _2281.w), vec4(out_var_TEXCOORD9));
}
