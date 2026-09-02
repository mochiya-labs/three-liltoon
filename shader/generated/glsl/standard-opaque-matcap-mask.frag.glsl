#version 300 es
precision mediump float;
precision highp int;

vec3 _316;
vec3 _322;

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
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex;

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
    highp vec3 _341 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _348 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _365 = float(gl_FrontFacing ? 1 : (-1));
    highp float _416;
    do
    {
        highp vec3 _372 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _373 = _372.xy;
        highp float _379 = _372.z;
        if ((any(lessThan(_373, vec2(0.0))) || any(greaterThan(_373, vec2(1.0)))) || (_379 > 1.0))
        {
            _416 = 1.0;
            break;
        }
        highp float _389 = _379 + _Globals.uShadowBias;
        _416 = (((step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_389, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _373), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _417 = normalize(out_var_TEXCOORD7);
    highp vec3 _421 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _425 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _426 = length(_425);
    highp vec3 _433 = normalize(_425);
    highp mat3 _442 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _447 = bvec2(_365 < (_Globals._ShiftBackfaceUV - 1.0));
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
        highp vec3 _569 = vec3(_568.x, _568.y, _322.z);
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
    highp vec3 _627 = normalize(_442 * _625);
    bvec3 _632 = bvec3(_365 < (_Globals._FlipNormal - 1.0));
    highp vec3 _633 = -_627;
    highp vec3 _634 = vec3(_632.x ? _633.x : _627.x, _632.y ? _633.y : _627.y, _632.z ? _633.z : _627.z);
    highp float _636 = clamp(dot(_634, _433), 0.0, 1.0);
    highp vec3 _637 = normalize(out_var_TEXCOORD4);
    highp vec2 _641 = ((_634 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _348, _341)).xy * 0.5) + vec2(0.5);
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
        _828.w = mix(_829, _829 * clamp((_426 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _855;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_365 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_365 < 0.0)))
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
        highp vec3 _869 = vec3(_868.x ? _855.xyz.x : _316.x, _868.y ? _855.xyz.y : _316.y, _868.z ? _855.xyz.z : _316.z);
        bvec3 _871 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _879;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _877 = (-_856) * _855.xyz + _865;
            bvec3 _2445 = isnan(_877);
            bvec3 _2446 = isnan(_856);
            highp vec3 _2447 = max(_877, _856);
            highp vec3 _2448 = vec3(_2445.x ? _856.x : _2447.x, _2445.y ? _856.y : _2447.y, _2445.z ? _856.z : _2447.z);
            _879 = vec3(_2446.x ? _877.x : _2448.x, _2446.y ? _877.y : _2448.y, _2446.z ? _877.z : _2448.z);
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
        _1072.w = mix(_1073, _1073 * clamp((_426 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1099;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_365 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_365 < 0.0)))
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
        highp vec3 _1113 = vec3(_1112.x ? _1099.xyz.x : _316.x, _1112.y ? _1099.xyz.y : _316.y, _1112.z ? _1099.xyz.z : _316.z);
        bvec3 _1115 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1123;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1121 = (-_886.xyz) * _1099.xyz + _1109;
            bvec3 _2470 = isnan(_1121);
            bvec3 _2471 = isnan(_886.xyz);
            highp vec3 _2472 = max(_1121, _886.xyz);
            highp vec3 _2473 = vec3(_2470.x ? _886.xyz.x : _2472.x, _2470.y ? _886.xyz.y : _2472.y, _2470.z ? _886.xyz.z : _2472.z);
            _1123 = vec3(_2471.x ? _1121.x : _2473.x, _2471.y ? _1121.y : _2473.y, _2471.z ? _1121.z : _2473.z);
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
    highp vec4 _1305;
    highp float _1306;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1155 = clamp(dot(_417, mix(_637, _634, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1158 = clamp(dot(_417, mix(_637, _634, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1161 = clamp(dot(_417, mix(_637, _634, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1165 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1168 = clamp(_416 + distance(_417, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1171 = mix(1.0, _1168, _Globals._ShadowReceive);
        highp float _1172 = _1155 * _1171;
        highp float _1175 = mix(1.0, _1168, _Globals._Shadow2ndReceive);
        highp float _1179 = mix(1.0, _1168, _Globals._Shadow3rdReceive);
        highp float _1190 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1191 = clamp(_1190, 0.0, 1.0);
        highp float _1193 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1206 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1220 = clamp(_1190 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1233 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1248 = (_365 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1249 = clamp((_1155 * _1171 + (-_1191)) / clamp(fwidth(_1172) * _1165 + (_1193 - _1191), 0.0, 1.0), 0.0, 1.0) * _1248;
        highp vec3 _1281 = mix(mix(_1131.xyz * _Globals._ShadowColor.xyz, (_1131.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1158 * _1175 + (-_1206)) / clamp(fwidth(_1158 * _1175) * _1165 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1206), 0.0, 1.0), 0.0, 1.0) * _1248)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1131.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1161 * _1179 + (-_1233)) / clamp(fwidth(_1161 * _1179) * _1165 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1233), 0.0, 1.0), 0.0, 1.0) * _1248)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1287 = _1131.xyz * out_var_TEXCOORD6;
        highp vec3 _1293 = mix(mix(_1281, _1281 * _1131.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1131.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2475 = isnan(_1293);
        bvec3 _2476 = isnan(_1287);
        highp vec3 _2477 = min(_1293, _1287);
        highp vec3 _2478 = vec3(_2475.x ? _1287.x : _2477.x, _2475.y ? _1287.y : _2477.y, _2475.z ? _1287.z : _2477.z);
        highp vec3 _1301 = mix(mix(vec3(_2476.x ? _1293.x : _2478.x, _2476.y ? _1293.y : _2478.y, _2476.z ? _1293.z : _2478.z), _1287, _Globals._ShadowBorderColor.xyz * (clamp((_1155 * _1171 + (-_1220)) / clamp(fwidth(_1172) * _1165 + (_1193 - _1220), 0.0, 1.0), 0.0, 1.0) * _1248)), _1287, vec3(mix(1.0, _1249, _Globals._ShadowStrength)));
        _1305 = vec4(_1301.x, _1301.y, _1301.z, _1131.w);
        _1306 = _1249;
    }
    else
    {
        highp vec3 _1303 = _1131.xyz * out_var_TEXCOORD6;
        _1305 = vec4(_1303.x, _1303.y, _1303.z, _1131.w);
        _1306 = 1.0;
    }
    highp vec3 _1309 = vec3(_Globals._LightMaxLimit);
    bvec3 _2480 = isnan(out_var_TEXCOORD6);
    bvec3 _2481 = isnan(_1309);
    highp vec3 _2482 = min(out_var_TEXCOORD6, _1309);
    highp vec3 _2483 = vec3(_2480.x ? _1309.x : _2482.x, _2480.y ? _1309.y : _2482.y, _2480.z ? _1309.z : _2482.z);
    highp vec3 _1310 = vec3(_2481.x ? out_var_TEXCOORD6.x : _2483.x, _2481.y ? out_var_TEXCOORD6.y : _2483.y, _2481.z ? out_var_TEXCOORD6.z : _2483.z);
    highp float _1311 = clamp(_1306, 0.0, 1.0);
    highp vec3 _1313 = _1131.xyz * _Globals._LightMaxLimit;
    bvec3 _2485 = isnan(_1305.xyz);
    bvec3 _2486 = isnan(_1313);
    highp vec3 _2487 = min(_1305.xyz, _1313);
    highp vec3 _2488 = vec3(_2485.x ? _1313.x : _2487.x, _2485.y ? _1313.y : _2487.y, _2485.z ? _1313.z : _2487.z);
    highp vec3 _1314 = vec3(_2486.x ? _1305.xyz.x : _2488.x, _2486.y ? _1305.xyz.y : _2488.y, _2486.z ? _1305.xyz.z : _2488.z);
    highp vec4 _1348;
    if (_647)
    {
        highp vec3 _1318 = _1314.xyz;
        highp vec3 _1328 = _1318 + _885.xyz;
        highp vec3 _1329 = _1318 * _885.xyz;
        bvec3 _1331 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1332 = vec3(_1331.x ? _885.xyz.x : _316.x, _1331.y ? _885.xyz.y : _316.y, _1331.z ? _885.xyz.z : _316.z);
        bvec3 _1334 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1342;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1340 = (-_1318) * _885.xyz + _1328;
            bvec3 _2490 = isnan(_1340);
            bvec3 _2491 = isnan(_1318);
            highp vec3 _2492 = max(_1340, _1318);
            highp vec3 _2493 = vec3(_2490.x ? _1318.x : _2492.x, _2490.y ? _1318.y : _2492.y, _2490.z ? _1318.z : _2492.z);
            _1342 = vec3(_2491.x ? _1340.x : _2493.x, _2491.y ? _1340.y : _2493.y, _2491.z ? _1340.z : _2493.z);
        }
        else
        {
            _1342 = vec3(_1334.x ? _1328.x : _1332.x, _1334.y ? _1328.y : _1332.y, _1334.z ? _1328.z : _1332.z);
        }
        bvec3 _1344 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1346 = mix(_1318, vec3(_1344.x ? _1329.x : _1342.x, _1344.y ? _1329.y : _1342.y, _1344.z ? _1329.z : _1342.z), vec3((-_885.w) * _Globals._Main2ndEnableLighting + _885.w));
        _1348 = vec4(_1346.x, _1346.y, _1346.z, _1305.w);
    }
    else
    {
        _1348 = vec4(_1314.x, _1314.y, _1314.z, _1305.w);
    }
    highp vec4 _1381;
    if (_891)
    {
        highp vec3 _1361 = _1348.xyz + _1129.xyz;
        highp vec3 _1362 = _1348.xyz * _1129.xyz;
        bvec3 _1364 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1365 = vec3(_1364.x ? _1129.xyz.x : _316.x, _1364.y ? _1129.xyz.y : _316.y, _1364.z ? _1129.xyz.z : _316.z);
        bvec3 _1367 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1375;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1373 = (-_1348.xyz) * _1129.xyz + _1361;
            bvec3 _2495 = isnan(_1373);
            bvec3 _2496 = isnan(_1348.xyz);
            highp vec3 _2497 = max(_1373, _1348.xyz);
            highp vec3 _2498 = vec3(_2495.x ? _1348.xyz.x : _2497.x, _2495.y ? _1348.xyz.y : _2497.y, _2495.z ? _1348.xyz.z : _2497.z);
            _1375 = vec3(_2496.x ? _1373.x : _2498.x, _2496.y ? _1373.y : _2498.y, _2496.z ? _1373.z : _2498.z);
        }
        else
        {
            _1375 = vec3(_1367.x ? _1361.x : _1365.x, _1367.y ? _1361.y : _1365.y, _1367.z ? _1361.z : _1365.z);
        }
        bvec3 _1377 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1379 = mix(_1348.xyz, vec3(_1377.x ? _1362.x : _1375.x, _1377.y ? _1362.y : _1375.y, _1377.z ? _1362.z : _1375.z), vec3((-_1129.w) * _Globals._Main3rdEnableLighting + _1129.w));
        _1381 = vec4(_1379.x, _1379.y, _1379.z, _1348.w);
    }
    else
    {
        _1381 = _1348;
    }
    highp vec4 _1427;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1397 = pow(clamp(1.0 - abs(dot(mix(_637, _634, vec3(_Globals._RimShadeNormalStrength)), _433)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1406 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1425 = mix(_1381.xyz, _1381.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1397 - _1406) / clamp(fwidth(_1397) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1406), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1427 = vec4(_1425.x, _1425.y, _1425.z, _1381.w);
    }
    else
    {
        _1427 = _1381;
    }
    highp vec4 _1500;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1451 = dot(normalize(((-_433) * _Globals._BacklightViewStrength) + _417), mix(_637, _634, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1461;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1461 = _1451 * clamp(_416 + distance(_417, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1461 = _1451;
        }
        highp float _1470 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1498 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1131.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_365 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_433, _417) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1461 - _1470) / clamp(fwidth(_1461) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1470), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1310 + _1427.xyz;
        _1500 = vec4(_1498.x, _1498.y, _1498.z, _1427.w);
    }
    else
    {
        _1500 = _1427;
    }
    highp vec4 _1743;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1510 = dFdx(_634);
        highp vec3 _1511 = abs(_1510);
        highp vec3 _1512 = dFdy(_634);
        highp vec3 _1513 = abs(_1512);
        highp float _1514 = dot(_1511, _1511);
        highp float _1515 = dot(_1513, _1513);
        highp float _1516 = isnan(_1515) ? _1514 : (isnan(_1514) ? _1515 : max(_1514, _1515));
        highp float _1519 = (_1516 / (_1516 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1522 = clamp(1.0 - (isnan(_1519) ? 0.0 : (isnan(0.0) ? _1519 : max(0.0, _1519))), 0.0, 1.0);
        highp float _1523 = isnan(_1522) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1522 : min(_Globals._Smoothness, _1522));
        highp float _1524 = 1.0 - _1523;
        highp float _1525 = _1524 * _1524;
        highp vec3 _1530 = _1500.xyz - (_1500.xyz * _Globals._Metallic);
        highp vec3 _1536 = mix(vec3(_Globals._Reflectance), _1131.xyz, vec3(_Globals._Metallic));
        highp vec4 _1639;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1611;
            do
            {
                highp vec3 _1549 = mix(_637, _634, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1551 = normalize(_433 + _417);
                highp float _1553 = clamp(dot(_1549, _1551), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1562 = pow(_1553, 1.0 / _1525);
                    highp float _1569 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1611 = vec3(clamp((_1562 - _1569) / clamp(fwidth(_1562) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1569), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1581 = clamp(dot(_1549, _433), 0.0, 1.0);
                highp float _1583 = clamp(dot(_1549, _417), 0.0, 1.0);
                highp float _1586 = isnan(0.00200000009499490261077880859375) ? _1525 : (isnan(_1525) ? 0.00200000009499490261077880859375 : max(_1525, 0.00200000009499490261077880859375));
                highp float _1587 = 1.0 - _1586;
                highp float _1591 = _1586 * _1586;
                highp float _1594 = (_1553 * _1591 + (-_1553)) * _1553 + 1.0;
                highp float _1602 = 1.0 - clamp(dot(_417, _1551), 0.0, 1.0);
                _1611 = (_1536 + ((((((vec3(1.0) - _1536) * _1602) * _1602) * _1602) * _1602) * _1602)) * (((0.5 / ((_1583 * (_1581 * _1587 + _1586) + (_1581 * (_1583 * _1587 + _1586))) + 9.9999997473787516355514526367188e-06)) * (_1591 / (_1594 * _1594 + 1.0000000116860974230803549289703e-07))) * _1583);
                break;
            } while(false);
            highp vec3 _1612 = _1530.xyz;
            highp vec3 _1614 = _Globals._ReflectionColor.xyz * _1310;
            highp vec3 _1619 = _Globals._ReflectionColor.xyz * _1310 + _1612;
            highp vec3 _1620 = _1612 * _1614;
            bvec3 _1622 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1623 = vec3(_1622.x ? _1614.x : _316.x, _1622.y ? _1614.y : _316.y, _1622.z ? _1614.z : _316.z);
            bvec3 _1625 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1633;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1631 = (-_1612) * _1614 + _1619;
                bvec3 _2520 = isnan(_1631);
                bvec3 _2521 = isnan(_1612);
                highp vec3 _2522 = max(_1631, _1612);
                highp vec3 _2523 = vec3(_2520.x ? _1612.x : _2522.x, _2520.y ? _1612.y : _2522.y, _2520.z ? _1612.z : _2522.z);
                _1633 = vec3(_2521.x ? _1631.x : _2523.x, _2521.y ? _1631.y : _2523.y, _2521.z ? _1631.z : _2523.z);
            }
            else
            {
                _1633 = vec3(_1625.x ? _1619.x : _1623.x, _1625.y ? _1619.y : _1623.y, _1625.z ? _1619.z : _1623.z);
            }
            bvec3 _1635 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1637 = mix(_1612, vec3(_1635.x ? _1620.x : _1633.x, _1635.y ? _1620.y : _1633.y, _1635.z ? _1620.z : _1633.z), _1611 * _Globals._ReflectionColor.w);
            _1639 = vec4(_1637.x, _1637.y, _1637.z, _1500.w);
        }
        else
        {
            _1639 = vec4(_1530.x, _1530.y, _1530.z, _1500.w);
        }
        highp vec4 _1742;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1661 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1668 = reflect(-_433, mix(_637, _634, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1671 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1668, _1524 * ((-4.19999980926513671875) * _1524 + 10.19999980926513671875));
            highp vec3 _1691 = ((_1671.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1671.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1310, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1697 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1668, _1524 * 8.0).xyz * 1.0;
            highp float _1708 = 1.0 - _636;
            highp vec3 _1722 = _1639.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1723 = _1639.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1725 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1726 = vec3(_1725.x ? _Globals._ReflectionColor.xyz.x : _316.x, _1725.y ? _Globals._ReflectionColor.xyz.y : _316.y, _1725.z ? _Globals._ReflectionColor.xyz.z : _316.z);
            bvec3 _1728 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1736;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1734 = (-_1639.xyz) * _Globals._ReflectionColor.xyz + _1722;
                bvec3 _2525 = isnan(_1734);
                bvec3 _2526 = isnan(_1639.xyz);
                highp vec3 _2527 = max(_1734, _1639.xyz);
                highp vec3 _2528 = vec3(_2525.x ? _1639.xyz.x : _2527.x, _2525.y ? _1639.xyz.y : _2527.y, _2525.z ? _1639.xyz.z : _2527.z);
                _1736 = vec3(_2526.x ? _1734.x : _2528.x, _2526.y ? _1734.y : _2528.y, _2526.z ? _1734.z : _2528.z);
            }
            else
            {
                _1736 = vec3(_1728.x ? _1722.x : _1726.x, _1728.y ? _1722.y : _1726.y, _1728.z ? _1722.z : _1726.z);
            }
            bvec3 _1738 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1740 = mix(_1639.xyz, vec3(_1738.x ? _1723.x : _1736.x, _1738.y ? _1723.y : _1736.y, _1738.z ? _1723.z : _1736.z), ((vec3(_1661.x ? _1691.x : _1697.x, _1661.y ? _1691.y : _1697.y, _1661.z ? _1691.z : _1697.z) * (1.0 / (_1525 * _1525 + 1.0))) * mix(_1536, vec3(clamp(_1523 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1708 * _1708) * _1708) * _1708) * _1708))) * _Globals._ReflectionColor.w);
            _1742 = vec4(_1740.x, _1740.y, _1740.z, _1639.w);
        }
        else
        {
            _1742 = _1639;
        }
        _1743 = _1742;
    }
    else
    {
        _1743 = _1500;
    }
    highp vec4 _1894;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1788;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1765 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _477 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1765.w = _1765.w * _1765.x;
            highp vec2 _1776 = ((_1765.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1777 = vec3(_1776.x, _1776.y, _322.z);
            highp vec2 _1778 = _1776.xy;
            _1777.z = sqrt(1.0 - clamp(dot(_1778, _1778), 0.0, 1.0));
            highp vec3 _1785 = normalize(_442 * _1777);
            highp vec3 _1786 = -_1785;
            _1788 = vec3(_632.x ? _1786.x : _1785.x, _632.y ? _1786.y : _1785.y, _632.z ? _1786.z : _1785.z);
        }
        else
        {
            _1788 = mix(_637, _634, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1805 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1806 = vec3(_1805.x ? _433.x : _341.x, _1805.y ? _433.y : _341.y, _1805.z ? _433.z : _341.z);
        bvec3 _1807 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1808 = vec3(_1807.x ? vec3(0.0, 1.0, 0.0).x : _348.x, _1807.y ? vec3(0.0, 1.0, 0.0).y : _348.y, _1807.z ? vec3(0.0, 1.0, 0.0).z : _348.z);
        highp vec3 _1812 = normalize(_1808 - (_1806 * dot(_1806, _1808)));
        highp vec4 _1834 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1788) * mat3(cross(_1806, _1812), _1812, _1806)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1858 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _477 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1860 = mix(_1834.xyz, _1834.xyz * _1310, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1867 = mix(_1860, _1860 * _1131.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1874 = _1743.xyz + _1867;
        highp vec3 _1875 = _1743.xyz * _1867;
        bvec3 _1877 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1878 = vec3(_1877.x ? _1867.x : _316.x, _1877.y ? _1867.y : _316.y, _1877.z ? _1867.z : _316.z);
        bvec3 _1880 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1888;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1886 = (-_1743.xyz) * _1867 + _1874;
            bvec3 _2530 = isnan(_1886);
            bvec3 _2531 = isnan(_1743.xyz);
            highp vec3 _2532 = max(_1886, _1743.xyz);
            highp vec3 _2533 = vec3(_2530.x ? _1743.xyz.x : _2532.x, _2530.y ? _1743.xyz.y : _2532.y, _2530.z ? _1743.xyz.z : _2532.z);
            _1888 = vec3(_2531.x ? _1886.x : _2533.x, _2531.y ? _1886.y : _2533.y, _2531.z ? _1886.z : _2533.z);
        }
        else
        {
            _1888 = vec3(_1880.x ? _1874.x : _1878.x, _1880.y ? _1874.y : _1878.y, _1880.z ? _1874.z : _1878.z);
        }
        bvec3 _1890 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1892 = mix(_1743.xyz, vec3(_1890.x ? _1875.x : _1888.x, _1890.y ? _1875.y : _1888.y, _1890.z ? _1875.z : _1888.z), _1858.xyz * (_Globals._MatCapBlend * ((_365 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1834.w, _1834.w * _1311, _Globals._MatCapShadowMask))));
        _1894 = vec4(_1892.x, _1892.y, _1892.z, _1743.w);
    }
    else
    {
        _1894 = _1743;
    }
    highp vec4 _2044;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1939;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1916 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _477 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1916.w = _1916.w * _1916.x;
            highp vec2 _1927 = ((_1916.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1928 = vec3(_1927.x, _1927.y, _322.z);
            highp vec2 _1929 = _1927.xy;
            _1928.z = sqrt(1.0 - clamp(dot(_1929, _1929), 0.0, 1.0));
            highp vec3 _1936 = normalize(_442 * _1928);
            highp vec3 _1937 = -_1936;
            _1939 = vec3(_632.x ? _1937.x : _1936.x, _632.y ? _1937.y : _1936.y, _632.z ? _1937.z : _1936.z);
        }
        else
        {
            _1939 = mix(_637, _634, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1955 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1956 = vec3(_1955.x ? _433.x : _341.x, _1955.y ? _433.y : _341.y, _1955.z ? _433.z : _341.z);
        bvec3 _1957 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1958 = vec3(_1957.x ? vec3(0.0, 1.0, 0.0).x : _348.x, _1957.y ? vec3(0.0, 1.0, 0.0).y : _348.y, _1957.z ? vec3(0.0, 1.0, 0.0).z : _348.z);
        highp vec3 _1962 = normalize(_1958 - (_1956 * dot(_1956, _1958)));
        highp vec4 _1984 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1939 * mat3(cross(_1956, _1962), _1962, _1956)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1985 = _1984.xyz;
        highp float _1991 = _1984.w;
        highp vec4 _2008 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _477 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2010 = mix(_1985, _1985 * _1310, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2017 = mix(_2010, _2010 * _1131.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2024 = _1894.xyz + _2017;
        highp vec3 _2025 = _1894.xyz * _2017;
        bvec3 _2027 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2028 = vec3(_2027.x ? _2017.x : _316.x, _2027.y ? _2017.y : _316.y, _2027.z ? _2017.z : _316.z);
        bvec3 _2030 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2038;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2036 = (-_1894.xyz) * _2017 + _2024;
            bvec3 _2535 = isnan(_2036);
            bvec3 _2536 = isnan(_1894.xyz);
            highp vec3 _2537 = max(_2036, _1894.xyz);
            highp vec3 _2538 = vec3(_2535.x ? _1894.xyz.x : _2537.x, _2535.y ? _1894.xyz.y : _2537.y, _2535.z ? _1894.xyz.z : _2537.z);
            _2038 = vec3(_2536.x ? _2036.x : _2538.x, _2536.y ? _2036.y : _2538.y, _2536.z ? _2036.z : _2538.z);
        }
        else
        {
            _2038 = vec3(_2030.x ? _2024.x : _2028.x, _2030.y ? _2024.y : _2028.y, _2030.z ? _2024.z : _2028.z);
        }
        bvec3 _2040 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2042 = mix(_1894.xyz, vec3(_2040.x ? _2025.x : _2038.x, _2040.y ? _2025.y : _2038.y, _2040.z ? _2025.z : _2038.z), _2008.xyz * (_Globals._MatCap2ndBlend * ((_365 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1991, _1991 * _1311, _Globals._MatCap2ndShadowMask))));
        _2044 = vec4(_2042.x, _2042.y, _2042.z, _1894.w);
    }
    else
    {
        _2044 = _1894;
    }
    highp vec4 _2190;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2063 = mix(_637, _634, vec3(_Globals._RimNormalStrength));
        highp float _2067 = dot(_417, _2063) * 0.5 + 0.5;
        highp float _2090 = (_365 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2063, _433)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2094 = mix(_2090, _2090 * clamp((_2067 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2095 = _2090 * clamp(((1.0 - _2067) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2105 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2114 = clamp((_2094 - _2105) / clamp(fwidth(_2094) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2105), 0.0, 1.0), 0.0, 1.0);
        highp float _2121 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2131 = clamp((_2095 * _Globals._RimDirStrength + (-_2121)) / clamp(fwidth(_2095 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2121), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2143 = vec3(1.0 - _Globals._RimEnableLighting) + (_1310 * _Globals._RimEnableLighting);
        highp vec3 _2145 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1131.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2146 = _2145 * _2143;
        highp vec3 _2152 = _2145 * _2143 + _2044.xyz;
        highp vec3 _2153 = _2044.xyz * _2146;
        bvec3 _2155 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2156 = vec3(_2155.x ? _2146.x : _316.x, _2155.y ? _2146.y : _316.y, _2155.z ? _2146.z : _316.z);
        bvec3 _2158 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2160 = _Globals._RimBlendMode == 2u;
        highp vec3 _2166;
        if (_2160)
        {
            highp vec3 _2164 = (-_2044.xyz) * _2146 + _2152;
            bvec3 _2540 = isnan(_2164);
            bvec3 _2541 = isnan(_2044.xyz);
            highp vec3 _2542 = max(_2164, _2044.xyz);
            highp vec3 _2543 = vec3(_2540.x ? _2044.xyz.x : _2542.x, _2540.y ? _2044.xyz.y : _2542.y, _2540.z ? _2044.xyz.z : _2542.z);
            _2166 = vec3(_2541.x ? _2164.x : _2543.x, _2541.y ? _2164.y : _2543.y, _2541.z ? _2164.z : _2543.z);
        }
        else
        {
            _2166 = vec3(_2158.x ? _2152.x : _2156.x, _2158.y ? _2152.y : _2156.y, _2158.z ? _2152.z : _2156.z);
        }
        bvec3 _2168 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2171 = mix(_2044.xyz, vec3(_2168.x ? _2153.x : _2166.x, _2168.y ? _2153.y : _2166.y, _2168.z ? _2153.z : _2166.z), vec3(mix(_2114, _2114 * _1311, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2173 = _Globals._RimIndirColor.xyz * _2143;
        highp vec3 _2177 = _Globals._RimIndirColor.xyz * _2143 + _2171;
        highp vec3 _2178 = _2171 * _2173;
        highp vec3 _2179 = vec3(_2155.x ? _2173.x : _316.x, _2155.y ? _2173.y : _316.y, _2155.z ? _2173.z : _316.z);
        highp vec3 _2186;
        if (_2160)
        {
            highp vec3 _2184 = (-_2171) * _2173 + _2177;
            bvec3 _2545 = isnan(_2184);
            bvec3 _2546 = isnan(_2171);
            highp vec3 _2547 = max(_2184, _2171);
            highp vec3 _2548 = vec3(_2545.x ? _2171.x : _2547.x, _2545.y ? _2171.y : _2547.y, _2545.z ? _2171.z : _2547.z);
            _2186 = vec3(_2546.x ? _2184.x : _2548.x, _2546.y ? _2184.y : _2548.y, _2546.z ? _2184.z : _2548.z);
        }
        else
        {
            _2186 = vec3(_2158.x ? _2177.x : _2179.x, _2158.y ? _2177.y : _2179.y, _2158.z ? _2177.z : _2179.z);
        }
        highp vec3 _2188 = mix(_2171, vec3(_2168.x ? _2178.x : _2186.x, _2168.y ? _2178.y : _2186.y, _2168.z ? _2178.z : _2186.z), vec3(mix(_2131, _2131 * _1311, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2190 = vec4(_2188.x, _2188.y, _2188.z, _2044.w);
    }
    else
    {
        _2190 = _2044;
    }
    highp vec4 _2255;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2204 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _421, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2218 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2224;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2224 = roundEven(_2218);
        }
        else
        {
            _2224 = _2218;
        }
        highp vec3 _2231 = mix(_2204, _2204 * _1131.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2235 = _2190.xyz + _2231;
        highp vec3 _2236 = _2190.xyz * _2231;
        bvec3 _2238 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2239 = vec3(_2238.x ? _2231.x : _316.x, _2238.y ? _2231.y : _316.y, _2238.z ? _2231.z : _316.z);
        bvec3 _2241 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2249;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2247 = (-_2190.xyz) * _2231 + _2235;
            bvec3 _2550 = isnan(_2247);
            bvec3 _2551 = isnan(_2190.xyz);
            highp vec3 _2552 = max(_2247, _2190.xyz);
            highp vec3 _2553 = vec3(_2550.x ? _2190.xyz.x : _2552.x, _2550.y ? _2190.xyz.y : _2552.y, _2550.z ? _2190.xyz.z : _2552.z);
            _2249 = vec3(_2551.x ? _2247.x : _2553.x, _2551.y ? _2247.y : _2553.y, _2551.z ? _2247.z : _2553.z);
        }
        else
        {
            _2249 = vec3(_2241.x ? _2235.x : _2239.x, _2241.y ? _2235.y : _2239.y, _2241.z ? _2235.z : _2239.z);
        }
        bvec3 _2251 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2253 = mix(_2190.xyz, vec3(_2251.x ? _2236.x : _2249.x, _2251.y ? _2236.y : _2249.y, _2251.z ? _2236.z : _2249.z), vec3((_Globals._EmissionBlend * mix(1.0, _2224, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2255 = vec4(_2253.x, _2253.y, _2253.z, _2190.w);
    }
    else
    {
        _2255 = _2190;
    }
    highp vec4 _2320;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2269 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _421, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2283 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2289;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2289 = roundEven(_2283);
        }
        else
        {
            _2289 = _2283;
        }
        highp vec3 _2296 = mix(_2269, _2269 * _1131.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2300 = _2255.xyz + _2296;
        highp vec3 _2301 = _2255.xyz * _2296;
        bvec3 _2303 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2304 = vec3(_2303.x ? _2296.x : _316.x, _2303.y ? _2296.y : _316.y, _2303.z ? _2296.z : _316.z);
        bvec3 _2306 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2314;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2312 = (-_2255.xyz) * _2296 + _2300;
            bvec3 _2555 = isnan(_2312);
            bvec3 _2556 = isnan(_2255.xyz);
            highp vec3 _2557 = max(_2312, _2255.xyz);
            highp vec3 _2558 = vec3(_2555.x ? _2255.xyz.x : _2557.x, _2555.y ? _2255.xyz.y : _2557.y, _2555.z ? _2255.xyz.z : _2557.z);
            _2314 = vec3(_2556.x ? _2312.x : _2558.x, _2556.y ? _2312.y : _2558.y, _2556.z ? _2312.z : _2558.z);
        }
        else
        {
            _2314 = vec3(_2306.x ? _2300.x : _2304.x, _2306.y ? _2300.y : _2304.y, _2306.z ? _2300.z : _2304.z);
        }
        bvec3 _2316 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2318 = mix(_2255.xyz, vec3(_2316.x ? _2301.x : _2314.x, _2316.y ? _2301.y : _2314.y, _2316.z ? _2301.z : _2314.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2289, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2320 = vec4(_2318.x, _2318.y, _2318.z, _2255.w);
    }
    else
    {
        _2320 = _2255;
    }
    bvec3 _2322 = bvec3(_365 < 0.0);
    highp vec3 _2331 = mix(_2320.xyz, _Globals._BackfaceColor.xyz * _1310, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2366 = vec3(_2322.x ? _2331.x : _2320.xyz.x, _2322.y ? _2331.y : _2320.xyz.y, _2322.z ? _2331.z : _2320.xyz.z).xyz;
    highp vec3 _2374 = mix(_2366, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2366, vec3(pow(clamp(1.0 - abs(dot(_637, _433)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_365 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _426) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2374.x, _2374.y, _2374.z, _2320.w), vec4(out_var_TEXCOORD9));
}
