#version 300 es
precision mediump float;
precision highp int;

vec3 _325;
vec3 _331;
float _332;
vec4 _333;

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
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;

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
    highp vec3 _353 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _360 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _376 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _385 = float(gl_FrontFacing ? 1 : (-1));
    highp float _436;
    do
    {
        highp vec3 _392 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _393 = _392.xy;
        highp float _399 = _392.z;
        if ((any(lessThan(_393, vec2(0.0))) || any(greaterThan(_393, vec2(1.0)))) || (_399 > 1.0))
        {
            _436 = 1.0;
            break;
        }
        highp float _409 = _399 + _Globals.uShadowBias;
        _436 = (((step(_409, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _393), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_409, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _393), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_409, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _393), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_409, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _393), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _437 = normalize(out_var_TEXCOORD7);
    highp vec3 _441 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _445 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _446 = length(_445);
    highp vec3 _453 = normalize(_445);
    bvec2 _467 = bvec2(_385 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _468 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _481 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _482 = sin(_481);
    highp float _483 = cos(_481);
    highp vec2 _484 = (vec2(_467.x ? _468.x : out_var_TEXCOORD0.xy.x, _467.y ? _468.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _485 = _484.x;
    highp float _486 = _484.y;
    highp vec2 _497 = (vec2(_485 * _483 + (-(_486 * _482)), _485 * _482 + (_486 * _483)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _498 = dFdx(_497);
    highp vec2 _499 = abs(_498);
    highp vec2 _500 = dFdy(_497);
    highp vec2 _501 = abs(_500);
    highp vec4 _505 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _497);
    highp vec3 _512 = pow(abs(_505.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _513 = _512.z;
    highp float _514 = _512.y;
    bvec4 _516 = bvec4(_513 > _514);
    highp vec4 _517 = vec4(_513, _514, -1.0, 0.666666686534881591796875);
    highp vec4 _518 = vec4(_514, _513, 0.0, -0.3333333432674407958984375);
    highp vec4 _519 = vec4(_516.x ? _517.x : _518.x, _516.y ? _517.y : _518.y, _516.z ? _517.z : _518.z, _516.w ? _517.w : _518.w);
    highp float _520 = _519.x;
    highp float _521 = _512.x;
    bvec4 _523 = bvec4(_520 > _521);
    highp vec4 _526 = vec4(_520, _519.yw, _521);
    highp vec4 _528 = vec4(_521, _519.yz, _520);
    highp vec4 _529 = vec4(_523.x ? _526.x : _528.x, _523.y ? _526.y : _528.y, _523.z ? _526.z : _528.z, _523.w ? _526.w : _528.w);
    highp float _534 = _529.x - (isnan(_529.y) ? _529.w : (isnan(_529.w) ? _529.y : min(_529.w, _529.y)));
    highp float _547 = clamp((_534 / (_529.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _550 = clamp(_529.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _564 = vec3((-_550) * _547 + _550) + (clamp(abs((fract(vec3(abs(_529.z + ((_529.w - _529.y) / (6.0 * _534 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_550 * _547));
    highp vec4 _568 = vec4(_564.x, _564.y, _564.z, _505.w) * _Globals._Color;
    highp vec3 _600;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _581 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _497 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _581.w = _581.w * _581.x;
        highp vec2 _592 = ((_581.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _593 = vec3(_592.x, _592.y, _331.z);
        highp vec2 _594 = _592.xy;
        _593.z = sqrt(1.0 - clamp(dot(_594, _594), 0.0, 1.0));
        _600 = _593;
    }
    else
    {
        _600 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _649;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _609 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _610 = vec2(_609.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _609.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _612 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _613 = vec2(_612.x ? out_var_TEXCOORD1.xy.x : _610.x, _612.y ? out_var_TEXCOORD1.xy.y : _610.y);
        bvec2 _615 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _625 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_615.x ? out_var_TEXCOORD1.zw.x : _613.x, _615.y ? out_var_TEXCOORD1.zw.y : _613.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _625.w = _625.w * _625.x;
        highp vec2 _637 = (((_625.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _649 = vec3(_600.xy + _637, _600.z * sqrt(1.0 - clamp(dot(_637, _637), 0.0, 1.0)));
    }
    else
    {
        _649 = _600;
    }
    highp vec3 _651 = normalize(mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4) * _649);
    bvec3 _656 = bvec3(_385 < (_Globals._FlipNormal - 1.0));
    highp vec3 _657 = -_651;
    highp vec3 _658 = vec3(_656.x ? _657.x : _651.x, _656.y ? _657.y : _651.y, _656.z ? _657.z : _651.z);
    highp float _660 = clamp(dot(_658, _453), 0.0, 1.0);
    highp vec3 _661 = normalize(out_var_TEXCOORD4);
    highp vec2 _665 = ((_658 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _360, _353)).xy * 0.5) + vec2(0.5);
    bool _666 = out_var_TEXCOORD5.w > 0.0;
    bool _671 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _949;
    highp vec4 _950;
    if (_671)
    {
        bvec2 _677 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _678 = vec2(_677.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _677.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _680 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _681 = vec2(_680.x ? out_var_TEXCOORD1.xy.x : _678.x, _680.y ? out_var_TEXCOORD1.xy.y : _678.y);
        bvec2 _683 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _684 = vec2(_683.x ? out_var_TEXCOORD1.zw.x : _681.x, _683.y ? out_var_TEXCOORD1.zw.y : _681.y);
        bvec2 _686 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _687 = vec2(_686.x ? _665.x : _684.x, _686.y ? _665.y : _684.y);
        highp vec4 _726 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _727 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _735;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _734 = _687;
            _734.x = abs(_687.x - 0.5) + 0.5;
            _735 = _734;
        }
        else
        {
            _735 = _687;
        }
        highp vec2 _736 = _726.xy;
        highp vec2 _737 = _726.zw;
        highp vec2 _738 = _735 * _736 + _737;
        highp vec2 _747;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_687.x < 0.5))
        {
            highp vec2 _746 = _738;
            _746.x = 1.0 - _738.x;
            _747 = _746;
        }
        else
        {
            _747 = _738;
        }
        highp vec2 _754;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _666)
        {
            highp vec2 _753 = _747;
            _753.x = 1.0 - _747.x;
            _754 = _753;
        }
        else
        {
            _754 = _747;
        }
        highp vec2 _759;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _666)
        {
            highp vec2 _758 = _754;
            _758.x = -1.0;
            _759 = _758;
        }
        else
        {
            _759 = _754;
        }
        highp vec2 _765;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_666))
        {
            highp vec2 _764 = _759;
            _764.x = -1.0;
            _765 = _764;
        }
        else
        {
            _765 = _759;
        }
        highp float _768 = sin(_727);
        highp float _769 = cos(_727);
        highp vec2 _770 = ((_765 - _737) / _736) - vec2(0.5);
        highp float _771 = _770.x;
        highp float _772 = _770.y;
        highp vec2 _780 = (vec2(_771 * _769 + (-(_772 * _768)), _771 * _768 + (_772 * _769)) + vec2(0.5)) * _736 + _737;
        uint _784 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _788 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _784 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _784);
        highp float _789 = _780.x;
        highp float _790 = _780.y;
        uint _797 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _807 = ((mix(vec2(_789, 1.0 - _790), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_788 % _797), float(_788 / _797))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _807.y = 1.0 - _807.y;
        highp vec4 _812 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _807);
        highp vec4 _828;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _815 = _812.x;
            highp float _816 = _812.y;
            highp float _817 = _812.z;
            highp float _818 = isnan(_816) ? _815 : (isnan(_815) ? _816 : min(_815, _816));
            highp float _819 = isnan(_816) ? _815 : (isnan(_815) ? _816 : max(_815, _816));
            highp float _820 = isnan(_817) ? _819 : (isnan(_819) ? _817 : min(_819, _817));
            highp float _821 = isnan(_820) ? _818 : (isnan(_818) ? _820 : max(_818, _820));
            _828 = vec4(1.0, 1.0, 1.0, clamp((_821 - 0.5) / clamp(fwidth(_821), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _828 = _812;
        }
        highp vec4 _851;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _832 = clamp(_660 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _835 = 0.5 - abs(_789 - 0.5);
            highp float _842 = 0.5 - abs(_790 - 0.5);
            highp vec4 _850 = _828;
            _850.w = _828.w * (clamp(_835 / clamp(fwidth(_835), 9.9999997473787516355514526367188e-05, _832), 0.0, 1.0) * clamp(_842 / clamp(fwidth(_842), 9.9999997473787516355514526367188e-05, _832), 0.0, 1.0));
            _851 = _850;
        }
        else
        {
            _851 = _828;
        }
        highp vec4 _852 = _Globals._Color2nd * _851;
        highp float _853 = _852.w;
        _852.w = mix(_853, _853 * clamp((_446 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _879;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_385 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_385 < 0.0)))
        {
            highp vec4 _878 = _852;
            _878.w = 0.0;
            _879 = _878;
        }
        else
        {
            _879 = _852;
        }
        highp vec4 _918;
        highp vec4 _919;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _890;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _889 = _568;
                _889.w = _879.w;
                _890 = _889;
            }
            else
            {
                _890 = _568;
            }
            highp vec4 _898;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _897 = _890;
                _897.w = _890.w * _879.w;
                _898 = _897;
            }
            else
            {
                _898 = _890;
            }
            highp vec4 _907;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _906 = _898;
                _906.w = clamp(_898.w + _879.w, 0.0, 1.0);
                _907 = _906;
            }
            else
            {
                _907 = _898;
            }
            highp vec4 _916;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _915 = _907;
                _915.w = clamp(_907.w - _879.w, 0.0, 1.0);
                _916 = _915;
            }
            else
            {
                _916 = _907;
            }
            highp vec4 _917 = _879;
            _917.w = 1.0;
            _918 = _917;
            _919 = _916;
        }
        else
        {
            _918 = _879;
            _919 = _568;
        }
        highp vec3 _929 = _919.xyz + _918.xyz;
        highp vec3 _930 = _919.xyz * _918.xyz;
        bvec3 _932 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _933 = vec3(_932.x ? _918.xyz.x : _325.x, _932.y ? _918.xyz.y : _325.y, _932.z ? _918.xyz.z : _325.z);
        bvec3 _935 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _943;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _941 = (-_919.xyz) * _918.xyz + _929;
            bvec3 _2710 = isnan(_941);
            bvec3 _2711 = isnan(_919.xyz);
            highp vec3 _2712 = max(_941, _919.xyz);
            highp vec3 _2713 = vec3(_2710.x ? _919.xyz.x : _2712.x, _2710.y ? _919.xyz.y : _2712.y, _2710.z ? _919.xyz.z : _2712.z);
            _943 = vec3(_2711.x ? _941.x : _2713.x, _2711.y ? _941.y : _2713.y, _2711.z ? _941.z : _2713.z);
        }
        else
        {
            _943 = vec3(_935.x ? _929.x : _933.x, _935.y ? _929.y : _933.y, _935.z ? _929.z : _933.z);
        }
        bvec3 _945 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _947 = mix(_919.xyz, vec3(_945.x ? _930.x : _943.x, _945.y ? _930.y : _943.y, _945.z ? _930.z : _943.z), vec3(_918.w * _Globals._Main2ndEnableLighting));
        _949 = _918;
        _950 = vec4(_947.x, _947.y, _947.z, _919.w);
    }
    else
    {
        _949 = _Globals._Color2nd;
        _950 = _568;
    }
    bool _955 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1233;
    highp vec4 _1234;
    if (_955)
    {
        bvec2 _961 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _962 = vec2(_961.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _961.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _964 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _965 = vec2(_964.x ? out_var_TEXCOORD1.xy.x : _962.x, _964.y ? out_var_TEXCOORD1.xy.y : _962.y);
        bvec2 _967 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _968 = vec2(_967.x ? out_var_TEXCOORD1.zw.x : _965.x, _967.y ? out_var_TEXCOORD1.zw.y : _965.y);
        bvec2 _970 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _971 = vec2(_970.x ? _665.x : _968.x, _970.y ? _665.y : _968.y);
        highp vec4 _1010 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1011 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1019;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1018 = _971;
            _1018.x = abs(_971.x - 0.5) + 0.5;
            _1019 = _1018;
        }
        else
        {
            _1019 = _971;
        }
        highp vec2 _1020 = _1010.xy;
        highp vec2 _1021 = _1010.zw;
        highp vec2 _1022 = _1019 * _1020 + _1021;
        highp vec2 _1031;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_971.x < 0.5))
        {
            highp vec2 _1030 = _1022;
            _1030.x = 1.0 - _1022.x;
            _1031 = _1030;
        }
        else
        {
            _1031 = _1022;
        }
        highp vec2 _1038;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _666)
        {
            highp vec2 _1037 = _1031;
            _1037.x = 1.0 - _1031.x;
            _1038 = _1037;
        }
        else
        {
            _1038 = _1031;
        }
        highp vec2 _1043;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _666)
        {
            highp vec2 _1042 = _1038;
            _1042.x = -1.0;
            _1043 = _1042;
        }
        else
        {
            _1043 = _1038;
        }
        highp vec2 _1049;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_666))
        {
            highp vec2 _1048 = _1043;
            _1048.x = -1.0;
            _1049 = _1048;
        }
        else
        {
            _1049 = _1043;
        }
        highp float _1052 = sin(_1011);
        highp float _1053 = cos(_1011);
        highp vec2 _1054 = ((_1049 - _1021) / _1020) - vec2(0.5);
        highp float _1055 = _1054.x;
        highp float _1056 = _1054.y;
        highp vec2 _1064 = (vec2(_1055 * _1053 + (-(_1056 * _1052)), _1055 * _1052 + (_1056 * _1053)) + vec2(0.5)) * _1020 + _1021;
        uint _1068 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1072 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1068 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1068);
        highp float _1073 = _1064.x;
        highp float _1074 = _1064.y;
        uint _1081 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1091 = ((mix(vec2(_1073, 1.0 - _1074), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1072 % _1081), float(_1072 / _1081))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1091.y = 1.0 - _1091.y;
        highp vec4 _1096 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1091);
        highp vec4 _1112;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1099 = _1096.x;
            highp float _1100 = _1096.y;
            highp float _1101 = _1096.z;
            highp float _1102 = isnan(_1100) ? _1099 : (isnan(_1099) ? _1100 : min(_1099, _1100));
            highp float _1103 = isnan(_1100) ? _1099 : (isnan(_1099) ? _1100 : max(_1099, _1100));
            highp float _1104 = isnan(_1101) ? _1103 : (isnan(_1103) ? _1101 : min(_1103, _1101));
            highp float _1105 = isnan(_1104) ? _1102 : (isnan(_1102) ? _1104 : max(_1102, _1104));
            _1112 = vec4(1.0, 1.0, 1.0, clamp((_1105 - 0.5) / clamp(fwidth(_1105), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1112 = _1096;
        }
        highp vec4 _1135;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1116 = clamp(_660 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1119 = 0.5 - abs(_1073 - 0.5);
            highp float _1126 = 0.5 - abs(_1074 - 0.5);
            highp vec4 _1134 = _1112;
            _1134.w = _1112.w * (clamp(_1119 / clamp(fwidth(_1119), 9.9999997473787516355514526367188e-05, _1116), 0.0, 1.0) * clamp(_1126 / clamp(fwidth(_1126), 9.9999997473787516355514526367188e-05, _1116), 0.0, 1.0));
            _1135 = _1134;
        }
        else
        {
            _1135 = _1112;
        }
        highp vec4 _1136 = _Globals._Color3rd * _1135;
        highp float _1137 = _1136.w;
        _1136.w = mix(_1137, _1137 * clamp((_446 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1163;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_385 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_385 < 0.0)))
        {
            highp vec4 _1162 = _1136;
            _1162.w = 0.0;
            _1163 = _1162;
        }
        else
        {
            _1163 = _1136;
        }
        highp vec4 _1202;
        highp vec4 _1203;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1174;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1173 = _950;
                _1173.w = _1163.w;
                _1174 = _1173;
            }
            else
            {
                _1174 = _950;
            }
            highp vec4 _1182;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1181 = _1174;
                _1181.w = _1174.w * _1163.w;
                _1182 = _1181;
            }
            else
            {
                _1182 = _1174;
            }
            highp vec4 _1191;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1190 = _1182;
                _1190.w = clamp(_1182.w + _1163.w, 0.0, 1.0);
                _1191 = _1190;
            }
            else
            {
                _1191 = _1182;
            }
            highp vec4 _1200;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1199 = _1191;
                _1199.w = clamp(_1191.w - _1163.w, 0.0, 1.0);
                _1200 = _1199;
            }
            else
            {
                _1200 = _1191;
            }
            highp vec4 _1201 = _1163;
            _1201.w = 1.0;
            _1202 = _1201;
            _1203 = _1200;
        }
        else
        {
            _1202 = _1163;
            _1203 = _950;
        }
        highp vec3 _1213 = _1203.xyz + _1202.xyz;
        highp vec3 _1214 = _1203.xyz * _1202.xyz;
        bvec3 _1216 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1217 = vec3(_1216.x ? _1202.xyz.x : _325.x, _1216.y ? _1202.xyz.y : _325.y, _1216.z ? _1202.xyz.z : _325.z);
        bvec3 _1219 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1227;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1225 = (-_1203.xyz) * _1202.xyz + _1213;
            bvec3 _2735 = isnan(_1225);
            bvec3 _2736 = isnan(_1203.xyz);
            highp vec3 _2737 = max(_1225, _1203.xyz);
            highp vec3 _2738 = vec3(_2735.x ? _1203.xyz.x : _2737.x, _2735.y ? _1203.xyz.y : _2737.y, _2735.z ? _1203.xyz.z : _2737.z);
            _1227 = vec3(_2736.x ? _1225.x : _2738.x, _2736.y ? _1225.y : _2738.y, _2736.z ? _1225.z : _2738.z);
        }
        else
        {
            _1227 = vec3(_1219.x ? _1213.x : _1217.x, _1219.y ? _1213.y : _1217.y, _1219.z ? _1213.z : _1217.z);
        }
        bvec3 _1229 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1231 = mix(_1203.xyz, vec3(_1229.x ? _1214.x : _1227.x, _1229.y ? _1214.y : _1227.y, _1229.z ? _1214.z : _1227.z), vec3(_1202.w * _Globals._Main3rdEnableLighting));
        _1233 = _1202;
        _1234 = vec4(_1231.x, _1231.y, _1231.z, _1203.w);
    }
    else
    {
        _1233 = _Globals._Color3rd;
        _1234 = _950;
    }
    highp vec4 _1274;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1245 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1250;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1249 = _1234;
            _1249.w = _1245;
            _1250 = _1249;
        }
        else
        {
            _1250 = _1234;
        }
        highp vec4 _1257;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1256 = _1250;
            _1256.w = _1250.w * _1245;
            _1257 = _1256;
        }
        else
        {
            _1257 = _1250;
        }
        highp vec4 _1265;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1264 = _1257;
            _1264.w = clamp(_1257.w + _1245, 0.0, 1.0);
            _1265 = _1264;
        }
        else
        {
            _1265 = _1257;
        }
        highp vec4 _1273;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1272 = _1265;
            _1272.w = clamp(_1265.w - _1245, 0.0, 1.0);
            _1273 = _1272;
        }
        else
        {
            _1273 = _1265;
        }
        _1274 = _1273;
    }
    else
    {
        _1274 = _1234;
    }
    highp vec4 _1369;
    highp float _1370;
    if ((_376 & 1) != 0)
    {
        highp vec4 _1278 = _1274;
        _1278.w = 1.0;
        highp vec2 _1284 = roundEven(_Globals._DissolveParams.xy);
        highp float _1285 = _1284.x;
        highp vec4 _1358;
        highp float _1359;
        if (_1285 != 0.0)
        {
            highp float _1301;
            highp float _1302;
            if (_1285 == 1.0)
            {
                _1301 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1302 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1301 = 0.0;
                _1302 = 1.0;
            }
            highp float _1333;
            highp float _1334;
            if (_1285 == 2.0)
            {
                highp vec2 _1311 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1322 = (_1284.y == 1.0) ? (vec2(_1311.x * cos(_Globals._DissolvePos.w) + (-(_1311.y * sin(_Globals._DissolvePos.w))), _332) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1333 = 1.0 - clamp(abs(_1322 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1334 = _1302 * float(_1322 > _Globals._DissolveParams.z);
            }
            else
            {
                _1333 = _1301;
                _1334 = _1302;
            }
            highp float _1355;
            highp float _1356;
            if (_1285 == 3.0)
            {
                highp float _1344 = (_1284.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1355 = 1.0 - clamp(abs(_1344 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1356 = _1334 * float(_1344 > _Globals._DissolveParams.z);
            }
            else
            {
                _1355 = _1333;
                _1356 = _1334;
            }
            highp vec4 _1357 = _1278;
            _1357.w = _1356;
            _1358 = _1357;
            _1359 = _1355;
        }
        else
        {
            _1358 = _1278;
            _1359 = 0.0;
        }
        highp vec4 _1365;
        if ((_376 & 2) != 0)
        {
            highp vec4 _1364 = _1358;
            _1364.w = 1.0 - _1358.w;
            _1365 = _1364;
        }
        else
        {
            _1365 = _1358;
        }
        highp vec4 _1368 = _1365;
        _1368.w = _1365.w * _1274.w;
        _1369 = _1368;
        _1370 = _1359;
    }
    else
    {
        _1369 = _1274;
        _1370 = 0.0;
    }
    if ((_1369.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1600;
    highp float _1601;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1413 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1416 = clamp(_436 + distance(_437, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1421;
        _1421.x = clamp(dot(_437, mix(_661, _658, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1416, _Globals._ShadowReceive);
        _1421.y = clamp(dot(_437, mix(_661, _658, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1416, _Globals._Shadow2ndReceive);
        _1421.z = clamp(dot(_437, mix(_661, _658, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1416, _Globals._Shadow3rdReceive);
        highp vec2 _1442 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2740 = isnan(_499);
        bvec2 _2741 = isnan(_1442);
        highp vec2 _2742 = max(_499, _1442);
        highp vec2 _2743 = vec2(_2740.x ? _1442.x : _2742.x, _2740.y ? _1442.y : _2742.y);
        bvec2 _2745 = isnan(_501);
        bvec2 _2746 = isnan(_1442);
        highp vec2 _2747 = max(_501, _1442);
        highp vec2 _2748 = vec2(_2745.x ? _1442.x : _2747.x, _2745.y ? _1442.y : _2747.y);
        highp vec4 _1446 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _497, vec2(_2741.x ? _499.x : _2743.x, _2741.y ? _499.y : _2743.y), vec2(_2746.x ? _501.x : _2748.x, _2746.y ? _501.y : _2748.y));
        highp vec4 _1454;
        _1454.x = clamp(_1446.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1454.y = clamp(_1446.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1454.z = clamp(_1446.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1473 = _Globals._ShadowPostAO != 0u;
        bvec3 _1474 = bvec3(_1473);
        highp vec3 _1477 = _1421.xyz * _1454.xyz;
        highp vec3 _1478 = vec3(_1474.x ? _1421.xyz.x : _1477.x, _1474.y ? _1421.xyz.y : _1477.y, _1474.z ? _1421.xyz.z : _1477.z);
        highp float _1479 = _1478.x;
        highp float _1483 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1484 = clamp(_1483, 0.0, 1.0);
        highp float _1486 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1493 = _1478.y;
        highp float _1498 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1510 = clamp(_1483 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1517 = _1478.z;
        highp float _1522 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1531 = vec4((_1479 - _1484) / clamp(fwidth(_1479) * _1413 + (_1486 - _1484), 0.0, 1.0), (_1493 - _1498) / clamp(fwidth(_1493) * _1413 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1498), 0.0, 1.0), (_1517 - _1522) / clamp(fwidth(_1517) * _1413 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1522), 0.0, 1.0), (_1479 - _1510) / clamp(fwidth(_1479) * _1413 + (_1486 - _1510), 0.0, 1.0));
        bvec4 _1532 = bvec4(_1473);
        highp vec4 _1534 = _1531 * _1454.xyzx;
        highp vec4 _1536 = clamp(vec4(_1532.x ? _1534.x : _1531.x, _1532.y ? _1534.y : _1531.y, _1532.z ? _1534.z : _1531.z, _1532.w ? _1534.w : _1531.w), vec4(0.0), vec4(1.0));
        highp float _1541 = (_385 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1543 = _1536.x * _1541;
        highp vec3 _1578 = mix(mix(_1369.xyz * _Globals._ShadowColor.xyz, (_1369.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1536.y * _1541)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1369.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1536.z * _1541)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1584 = _1369.xyz * out_var_TEXCOORD6;
        highp vec3 _1590 = mix(mix(_1578, _1578 * _1369.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1369.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2750 = isnan(_1590);
        bvec3 _2751 = isnan(_1584);
        highp vec3 _2752 = min(_1590, _1584);
        highp vec3 _2753 = vec3(_2750.x ? _1584.x : _2752.x, _2750.y ? _1584.y : _2752.y, _2750.z ? _1584.z : _2752.z);
        highp vec3 _1598 = mix(mix(vec3(_2751.x ? _1590.x : _2753.x, _2751.y ? _1590.y : _2753.y, _2751.z ? _1590.z : _2753.z), _1584, _Globals._ShadowBorderColor.xyz * (_1536.w * _1541)), _1584, vec3(mix(1.0, _1543, _Globals._ShadowStrength)));
        _1600 = vec4(_1598.x, _1598.y, _1598.z, _1369.w);
        _1601 = _1543;
    }
    else
    {
        highp vec3 _1385 = _1369.xyz * out_var_TEXCOORD6;
        _1600 = vec4(_1385.x, _1385.y, _1385.z, _1369.w);
        _1601 = 1.0;
    }
    highp vec3 _1604 = vec3(_Globals._LightMaxLimit);
    bvec3 _2755 = isnan(out_var_TEXCOORD6);
    bvec3 _2756 = isnan(_1604);
    highp vec3 _2757 = min(out_var_TEXCOORD6, _1604);
    highp vec3 _2758 = vec3(_2755.x ? _1604.x : _2757.x, _2755.y ? _1604.y : _2757.y, _2755.z ? _1604.z : _2757.z);
    highp vec3 _1605 = vec3(_2756.x ? out_var_TEXCOORD6.x : _2758.x, _2756.y ? out_var_TEXCOORD6.y : _2758.y, _2756.z ? out_var_TEXCOORD6.z : _2758.z);
    highp float _1606 = clamp(_1601, 0.0, 1.0);
    highp vec3 _1608 = _1369.xyz * _Globals._LightMaxLimit;
    bvec3 _2760 = isnan(_1600.xyz);
    bvec3 _2761 = isnan(_1608);
    highp vec3 _2762 = min(_1600.xyz, _1608);
    highp vec3 _2763 = vec3(_2760.x ? _1608.x : _2762.x, _2760.y ? _1608.y : _2762.y, _2760.z ? _1608.z : _2762.z);
    highp vec3 _1609 = vec3(_2761.x ? _1600.xyz.x : _2763.x, _2761.y ? _1600.xyz.y : _2763.y, _2761.z ? _1600.xyz.z : _2763.z);
    highp vec4 _1643;
    if (_671)
    {
        highp vec3 _1613 = _1609.xyz;
        highp vec3 _1623 = _1613 + _949.xyz;
        highp vec3 _1624 = _1613 * _949.xyz;
        bvec3 _1626 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1627 = vec3(_1626.x ? _949.xyz.x : _325.x, _1626.y ? _949.xyz.y : _325.y, _1626.z ? _949.xyz.z : _325.z);
        bvec3 _1629 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1637;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1635 = (-_1613) * _949.xyz + _1623;
            bvec3 _2765 = isnan(_1635);
            bvec3 _2766 = isnan(_1613);
            highp vec3 _2767 = max(_1635, _1613);
            highp vec3 _2768 = vec3(_2765.x ? _1613.x : _2767.x, _2765.y ? _1613.y : _2767.y, _2765.z ? _1613.z : _2767.z);
            _1637 = vec3(_2766.x ? _1635.x : _2768.x, _2766.y ? _1635.y : _2768.y, _2766.z ? _1635.z : _2768.z);
        }
        else
        {
            _1637 = vec3(_1629.x ? _1623.x : _1627.x, _1629.y ? _1623.y : _1627.y, _1629.z ? _1623.z : _1627.z);
        }
        bvec3 _1639 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1641 = mix(_1613, vec3(_1639.x ? _1624.x : _1637.x, _1639.y ? _1624.y : _1637.y, _1639.z ? _1624.z : _1637.z), vec3((-_949.w) * _Globals._Main2ndEnableLighting + _949.w));
        _1643 = vec4(_1641.x, _1641.y, _1641.z, _1600.w);
    }
    else
    {
        _1643 = vec4(_1609.x, _1609.y, _1609.z, _1600.w);
    }
    highp vec4 _1676;
    if (_955)
    {
        highp vec3 _1656 = _1643.xyz + _1233.xyz;
        highp vec3 _1657 = _1643.xyz * _1233.xyz;
        bvec3 _1659 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1660 = vec3(_1659.x ? _1233.xyz.x : _325.x, _1659.y ? _1233.xyz.y : _325.y, _1659.z ? _1233.xyz.z : _325.z);
        bvec3 _1662 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1670;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1668 = (-_1643.xyz) * _1233.xyz + _1656;
            bvec3 _2770 = isnan(_1668);
            bvec3 _2771 = isnan(_1643.xyz);
            highp vec3 _2772 = max(_1668, _1643.xyz);
            highp vec3 _2773 = vec3(_2770.x ? _1643.xyz.x : _2772.x, _2770.y ? _1643.xyz.y : _2772.y, _2770.z ? _1643.xyz.z : _2772.z);
            _1670 = vec3(_2771.x ? _1668.x : _2773.x, _2771.y ? _1668.y : _2773.y, _2771.z ? _1668.z : _2773.z);
        }
        else
        {
            _1670 = vec3(_1662.x ? _1656.x : _1660.x, _1662.y ? _1656.y : _1660.y, _1662.z ? _1656.z : _1660.z);
        }
        bvec3 _1672 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1674 = mix(_1643.xyz, vec3(_1672.x ? _1657.x : _1670.x, _1672.y ? _1657.y : _1670.y, _1672.z ? _1657.z : _1670.z), vec3((-_1233.w) * _Globals._Main3rdEnableLighting + _1233.w));
        _1676 = vec4(_1674.x, _1674.y, _1674.z, _1643.w);
    }
    else
    {
        _1676 = _1643;
    }
    highp vec4 _1722;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1692 = pow(clamp(1.0 - abs(dot(mix(_661, _658, vec3(_Globals._RimShadeNormalStrength)), _453)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1701 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1720 = mix(_1676.xyz, _1676.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1692 - _1701) / clamp(fwidth(_1692) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1701), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1722 = vec4(_1720.x, _1720.y, _1720.z, _1676.w);
    }
    else
    {
        _1722 = _1676;
    }
    highp vec4 _1795;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1746 = dot(normalize(((-_453) * _Globals._BacklightViewStrength) + _437), mix(_661, _658, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1756;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1756 = _1746 * clamp(_436 + distance(_437, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1756 = _1746;
        }
        highp float _1765 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1793 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1369.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_385 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_453, _437) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1756 - _1765) / clamp(fwidth(_1756) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1765), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1605 + _1722.xyz;
        _1795 = vec4(_1793.x, _1793.y, _1793.z, _1722.w);
    }
    else
    {
        _1795 = _1722;
    }
    highp vec3 _1798 = _1795.xyz * _1795.w;
    highp vec4 _2051;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1809 = dFdx(_658);
        highp vec3 _1810 = abs(_1809);
        highp vec3 _1811 = dFdy(_658);
        highp vec3 _1812 = abs(_1811);
        highp float _1813 = dot(_1810, _1810);
        highp float _1814 = dot(_1812, _1812);
        highp float _1815 = isnan(_1814) ? _1813 : (isnan(_1813) ? _1814 : max(_1813, _1814));
        highp float _1818 = (_1815 / (_1815 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1821 = clamp(1.0 - (isnan(_1818) ? 0.0 : (isnan(0.0) ? _1818 : max(0.0, _1818))), 0.0, 1.0);
        highp float _1822 = isnan(_1821) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1821 : min(_Globals._Smoothness, _1821));
        highp float _1823 = 1.0 - _1822;
        highp float _1824 = _1823 * _1823;
        highp vec3 _1827 = _1798.xyz;
        highp vec3 _1829 = _1827 - (_1827 * _Globals._Metallic);
        highp vec3 _1835 = mix(vec3(_Globals._Reflectance), _1369.xyz, vec3(_Globals._Metallic));
        highp vec4 _1837 = _Globals._ReflectionColor;
        highp vec4 _1846;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1845 = _1837;
            _1845.w = _1837.w * _1795.w;
            _1846 = _1845;
        }
        else
        {
            _1846 = _1837;
        }
        highp vec4 _1947;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1919;
            do
            {
                highp vec3 _1857 = mix(_661, _658, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1859 = normalize(_453 + _437);
                highp float _1861 = clamp(dot(_1857, _1859), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1870 = pow(_1861, 1.0 / _1824);
                    highp float _1877 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1919 = vec3(clamp((_1870 - _1877) / clamp(fwidth(_1870) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1877), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1889 = clamp(dot(_1857, _453), 0.0, 1.0);
                highp float _1891 = clamp(dot(_1857, _437), 0.0, 1.0);
                highp float _1894 = isnan(0.00200000009499490261077880859375) ? _1824 : (isnan(_1824) ? 0.00200000009499490261077880859375 : max(_1824, 0.00200000009499490261077880859375));
                highp float _1895 = 1.0 - _1894;
                highp float _1899 = _1894 * _1894;
                highp float _1902 = (_1861 * _1899 + (-_1861)) * _1861 + 1.0;
                highp float _1910 = 1.0 - clamp(dot(_437, _1859), 0.0, 1.0);
                _1919 = (_1835 + ((((((vec3(1.0) - _1835) * _1910) * _1910) * _1910) * _1910) * _1910)) * (((0.5 / ((_1891 * (_1889 * _1895 + _1894) + (_1889 * (_1891 * _1895 + _1894))) + 9.9999997473787516355514526367188e-06)) * (_1899 / (_1902 * _1902 + 1.0000000116860974230803549289703e-07))) * _1891);
                break;
            } while(false);
            highp vec3 _1920 = _1829.xyz;
            highp vec3 _1922 = _1846.xyz * _1605;
            highp vec3 _1927 = _1846.xyz * _1605 + _1920;
            highp vec3 _1928 = _1920 * _1922;
            bvec3 _1930 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1931 = vec3(_1930.x ? _1922.x : _325.x, _1930.y ? _1922.y : _325.y, _1930.z ? _1922.z : _325.z);
            bvec3 _1933 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1941;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1939 = (-_1920) * _1922 + _1927;
                bvec3 _2795 = isnan(_1939);
                bvec3 _2796 = isnan(_1920);
                highp vec3 _2797 = max(_1939, _1920);
                highp vec3 _2798 = vec3(_2795.x ? _1920.x : _2797.x, _2795.y ? _1920.y : _2797.y, _2795.z ? _1920.z : _2797.z);
                _1941 = vec3(_2796.x ? _1939.x : _2798.x, _2796.y ? _1939.y : _2798.y, _2796.z ? _1939.z : _2798.z);
            }
            else
            {
                _1941 = vec3(_1933.x ? _1927.x : _1931.x, _1933.y ? _1927.y : _1931.y, _1933.z ? _1927.z : _1931.z);
            }
            bvec3 _1943 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1945 = mix(_1920, vec3(_1943.x ? _1928.x : _1941.x, _1943.y ? _1928.y : _1941.y, _1943.z ? _1928.z : _1941.z), _1919 * _1846.w);
            _1947 = vec4(_1945.x, _1945.y, _1945.z, _1795.w);
        }
        else
        {
            _1947 = vec4(_1829.x, _1829.y, _1829.z, _1795.w);
        }
        highp vec4 _2050;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1969 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1976 = reflect(-_453, mix(_661, _658, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1979 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1976, _1823 * ((-4.19999980926513671875) * _1823 + 10.19999980926513671875));
            highp vec3 _1999 = ((_1979.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1979.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1605, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2005 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1976, _1823 * 8.0).xyz * 1.0;
            highp float _2016 = 1.0 - _660;
            highp vec3 _2030 = _1947.xyz + _1846.xyz;
            highp vec3 _2031 = _1947.xyz * _1846.xyz;
            bvec3 _2033 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2034 = vec3(_2033.x ? _1846.xyz.x : _325.x, _2033.y ? _1846.xyz.y : _325.y, _2033.z ? _1846.xyz.z : _325.z);
            bvec3 _2036 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2044;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2042 = (-_1947.xyz) * _1846.xyz + _2030;
                bvec3 _2800 = isnan(_2042);
                bvec3 _2801 = isnan(_1947.xyz);
                highp vec3 _2802 = max(_2042, _1947.xyz);
                highp vec3 _2803 = vec3(_2800.x ? _1947.xyz.x : _2802.x, _2800.y ? _1947.xyz.y : _2802.y, _2800.z ? _1947.xyz.z : _2802.z);
                _2044 = vec3(_2801.x ? _2042.x : _2803.x, _2801.y ? _2042.y : _2803.y, _2801.z ? _2042.z : _2803.z);
            }
            else
            {
                _2044 = vec3(_2036.x ? _2030.x : _2034.x, _2036.y ? _2030.y : _2034.y, _2036.z ? _2030.z : _2034.z);
            }
            bvec3 _2046 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2048 = mix(_1947.xyz, vec3(_2046.x ? _2031.x : _2044.x, _2046.y ? _2031.y : _2044.y, _2046.z ? _2031.z : _2044.z), ((vec3(_1969.x ? _1999.x : _2005.x, _1969.y ? _1999.y : _2005.y, _1969.z ? _1999.z : _2005.z) * (1.0 / (_1824 * _1824 + 1.0))) * mix(_1835, vec3(clamp(_1822 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2016 * _2016) * _2016) * _2016) * _2016))) * _1846.w);
            _2050 = vec4(_2048.x, _2048.y, _2048.z, _1947.w);
        }
        else
        {
            _2050 = _1947;
        }
        _2051 = _2050;
    }
    else
    {
        _2051 = vec4(_1798.x, _1798.y, _1798.z, _1795.w);
    }
    highp vec4 _2169;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2077 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2078 = vec3(_2077.x ? _453.x : _353.x, _2077.y ? _453.y : _353.y, _2077.z ? _453.z : _353.z);
        bvec3 _2079 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2080 = vec3(_2079.x ? vec3(0.0, 1.0, 0.0).x : _360.x, _2079.y ? vec3(0.0, 1.0, 0.0).y : _360.y, _2079.z ? vec3(0.0, 1.0, 0.0).z : _360.z);
        highp vec3 _2084 = normalize(_2080 - (_2078 * dot(_2078, _2080)));
        highp vec4 _2106 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_661, _658, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2078, _2084), _2084, _2078)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2107 = _2106.xyz;
        highp vec3 _2112 = mix(_2107, _2107 * _1605, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2113 = vec4(_2112.x, _2112.y, _2112.z, _2106.w);
        highp float _2114 = _2106.w;
        highp float _2118 = mix(_2114, _2114 * _1606, _Globals._MatCapShadowMask);
        _2113.w = _2118;
        highp vec4 _2128;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2127 = _2113;
            _2127.w = _2118 * _2051.w;
            _2128 = _2127;
        }
        else
        {
            _2128 = _2113;
        }
        highp vec3 _2142 = mix(_2128.xyz, _2128.xyz * _1369.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2149 = _2051.xyz + _2142;
        highp vec3 _2150 = _2051.xyz * _2142;
        bvec3 _2152 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2153 = vec3(_2152.x ? _2142.x : _325.x, _2152.y ? _2142.y : _325.y, _2152.z ? _2142.z : _325.z);
        bvec3 _2155 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2163;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2161 = (-_2051.xyz) * _2142 + _2149;
            bvec3 _2805 = isnan(_2161);
            bvec3 _2806 = isnan(_2051.xyz);
            highp vec3 _2807 = max(_2161, _2051.xyz);
            highp vec3 _2808 = vec3(_2805.x ? _2051.xyz.x : _2807.x, _2805.y ? _2051.xyz.y : _2807.y, _2805.z ? _2051.xyz.z : _2807.z);
            _2163 = vec3(_2806.x ? _2161.x : _2808.x, _2806.y ? _2161.y : _2808.y, _2806.z ? _2161.z : _2808.z);
        }
        else
        {
            _2163 = vec3(_2155.x ? _2149.x : _2153.x, _2155.y ? _2149.y : _2153.y, _2155.z ? _2149.z : _2153.z);
        }
        bvec3 _2165 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2167 = mix(_2051.xyz, vec3(_2165.x ? _2150.x : _2163.x, _2165.y ? _2150.y : _2163.y, _2165.z ? _2150.z : _2163.z), vec3(1.0) * (_Globals._MatCapBlend * ((_385 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2128.w)));
        _2169 = vec4(_2167.x, _2167.y, _2167.z, _2051.w);
    }
    else
    {
        _2169 = _2051;
    }
    highp vec4 _2286;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2194 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2195 = vec3(_2194.x ? _453.x : _353.x, _2194.y ? _453.y : _353.y, _2194.z ? _453.z : _353.z);
        bvec3 _2196 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2197 = vec3(_2196.x ? vec3(0.0, 1.0, 0.0).x : _360.x, _2196.y ? vec3(0.0, 1.0, 0.0).y : _360.y, _2196.z ? vec3(0.0, 1.0, 0.0).z : _360.z);
        highp vec3 _2201 = normalize(_2197 - (_2195 * dot(_2195, _2197)));
        highp vec4 _2223 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_661, _658, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2195, _2201), _2201, _2195)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2224 = _2223.xyz;
        highp vec3 _2229 = mix(_2224, _2224 * _1605, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2230 = vec4(_2229.x, _2229.y, _2229.z, _2223.w);
        highp float _2231 = _2223.w;
        highp float _2235 = mix(_2231, _2231 * _1606, _Globals._MatCap2ndShadowMask);
        _2230.w = _2235;
        highp vec4 _2245;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2244 = _2230;
            _2244.w = _2235 * _2169.w;
            _2245 = _2244;
        }
        else
        {
            _2245 = _2230;
        }
        highp vec3 _2259 = mix(_2245.xyz, _2245.xyz * _1369.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2266 = _2169.xyz + _2259;
        highp vec3 _2267 = _2169.xyz * _2259;
        bvec3 _2269 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2270 = vec3(_2269.x ? _2259.x : _325.x, _2269.y ? _2259.y : _325.y, _2269.z ? _2259.z : _325.z);
        bvec3 _2272 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2280;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2278 = (-_2169.xyz) * _2259 + _2266;
            bvec3 _2810 = isnan(_2278);
            bvec3 _2811 = isnan(_2169.xyz);
            highp vec3 _2812 = max(_2278, _2169.xyz);
            highp vec3 _2813 = vec3(_2810.x ? _2169.xyz.x : _2812.x, _2810.y ? _2169.xyz.y : _2812.y, _2810.z ? _2169.xyz.z : _2812.z);
            _2280 = vec3(_2811.x ? _2278.x : _2813.x, _2811.y ? _2278.y : _2813.y, _2811.z ? _2278.z : _2813.z);
        }
        else
        {
            _2280 = vec3(_2272.x ? _2266.x : _2270.x, _2272.y ? _2266.y : _2270.y, _2272.z ? _2266.z : _2270.z);
        }
        bvec3 _2282 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2284 = mix(_2169.xyz, vec3(_2282.x ? _2267.x : _2280.x, _2282.y ? _2267.y : _2280.y, _2282.z ? _2267.z : _2280.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_385 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2245.w)));
        _2286 = vec4(_2284.x, _2284.y, _2284.z, _2169.w);
    }
    else
    {
        _2286 = _2169;
    }
    highp vec4 _2442;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2305 = mix(_661, _658, vec3(_Globals._RimNormalStrength));
        highp float _2309 = dot(_437, _2305) * 0.5 + 0.5;
        highp float _2332 = (_385 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2305, _453)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2336 = mix(_2332, _2332 * clamp((_2309 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2337 = _2332 * clamp(((1.0 - _2309) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2347 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2356 = clamp((_2336 - _2347) / clamp(fwidth(_2336) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2347), 0.0, 1.0), 0.0, 1.0);
        highp float _2363 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2373 = clamp((_2337 * _Globals._RimDirStrength + (-_2363)) / clamp(fwidth(_2337 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2363), 0.0, 1.0), 0.0, 1.0);
        highp float _2377 = mix(_2356, _2356 * _1606, _Globals._RimShadowMask);
        highp float _2379 = mix(_2373, _2373 * _1606, _Globals._RimShadowMask);
        highp float _2388;
        highp float _2389;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2388 = _2379 * _2286.w;
            _2389 = _2377 * _2286.w;
        }
        else
        {
            _2388 = _2379;
            _2389 = _2377;
        }
        highp vec3 _2395 = vec3(1.0 - _Globals._RimEnableLighting) + (_1605 * _Globals._RimEnableLighting);
        highp vec3 _2397 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1369.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2398 = _2397 * _2395;
        highp vec3 _2404 = _2397 * _2395 + _2286.xyz;
        highp vec3 _2405 = _2286.xyz * _2398;
        bvec3 _2407 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2408 = vec3(_2407.x ? _2398.x : _325.x, _2407.y ? _2398.y : _325.y, _2407.z ? _2398.z : _325.z);
        bvec3 _2410 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2412 = _Globals._RimBlendMode == 2u;
        highp vec3 _2418;
        if (_2412)
        {
            highp vec3 _2416 = (-_2286.xyz) * _2398 + _2404;
            bvec3 _2815 = isnan(_2416);
            bvec3 _2816 = isnan(_2286.xyz);
            highp vec3 _2817 = max(_2416, _2286.xyz);
            highp vec3 _2818 = vec3(_2815.x ? _2286.xyz.x : _2817.x, _2815.y ? _2286.xyz.y : _2817.y, _2815.z ? _2286.xyz.z : _2817.z);
            _2418 = vec3(_2816.x ? _2416.x : _2818.x, _2816.y ? _2416.y : _2818.y, _2816.z ? _2416.z : _2818.z);
        }
        else
        {
            _2418 = vec3(_2410.x ? _2404.x : _2408.x, _2410.y ? _2404.y : _2408.y, _2410.z ? _2404.z : _2408.z);
        }
        bvec3 _2420 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2423 = mix(_2286.xyz, vec3(_2420.x ? _2405.x : _2418.x, _2420.y ? _2405.y : _2418.y, _2420.z ? _2405.z : _2418.z), vec3(_2389 * _Globals._RimColor.w)).xyz;
        highp vec3 _2425 = _Globals._RimIndirColor.xyz * _2395;
        highp vec3 _2429 = _Globals._RimIndirColor.xyz * _2395 + _2423;
        highp vec3 _2430 = _2423 * _2425;
        highp vec3 _2431 = vec3(_2407.x ? _2425.x : _325.x, _2407.y ? _2425.y : _325.y, _2407.z ? _2425.z : _325.z);
        highp vec3 _2438;
        if (_2412)
        {
            highp vec3 _2436 = (-_2423) * _2425 + _2429;
            bvec3 _2820 = isnan(_2436);
            bvec3 _2821 = isnan(_2423);
            highp vec3 _2822 = max(_2436, _2423);
            highp vec3 _2823 = vec3(_2820.x ? _2423.x : _2822.x, _2820.y ? _2423.y : _2822.y, _2820.z ? _2423.z : _2822.z);
            _2438 = vec3(_2821.x ? _2436.x : _2823.x, _2821.y ? _2436.y : _2823.y, _2821.z ? _2436.z : _2823.z);
        }
        else
        {
            _2438 = vec3(_2410.x ? _2429.x : _2431.x, _2410.y ? _2429.y : _2431.y, _2410.z ? _2429.z : _2431.z);
        }
        highp vec3 _2440 = mix(_2423, vec3(_2420.x ? _2430.x : _2438.x, _2420.y ? _2430.y : _2438.y, _2420.z ? _2430.z : _2438.z), vec3(_2388 * _Globals._RimIndirColor.w));
        _2442 = vec4(_2440.x, _2440.y, _2440.z, _2286.w);
    }
    else
    {
        _2442 = _2286;
    }
    highp vec4 _2509;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2456 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _441, vec3(_Globals._EmissionFluorescence)).xyz;
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
        highp vec3 _2485 = mix(_2456, _2456 * _1369.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2489 = _2442.xyz + _2485;
        highp vec3 _2490 = _2442.xyz * _2485;
        bvec3 _2492 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2493 = vec3(_2492.x ? _2485.x : _325.x, _2492.y ? _2485.y : _325.y, _2492.z ? _2485.z : _325.z);
        bvec3 _2495 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2503;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2501 = (-_2442.xyz) * _2485 + _2489;
            bvec3 _2825 = isnan(_2501);
            bvec3 _2826 = isnan(_2442.xyz);
            highp vec3 _2827 = max(_2501, _2442.xyz);
            highp vec3 _2828 = vec3(_2825.x ? _2442.xyz.x : _2827.x, _2825.y ? _2442.xyz.y : _2827.y, _2825.z ? _2442.xyz.z : _2827.z);
            _2503 = vec3(_2826.x ? _2501.x : _2828.x, _2826.y ? _2501.y : _2828.y, _2826.z ? _2501.z : _2828.z);
        }
        else
        {
            _2503 = vec3(_2495.x ? _2489.x : _2493.x, _2495.y ? _2489.y : _2493.y, _2495.z ? _2489.z : _2493.z);
        }
        bvec3 _2505 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2507 = mix(_2442.xyz, vec3(_2505.x ? _2490.x : _2503.x, _2505.y ? _2490.y : _2503.y, _2505.z ? _2490.z : _2503.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2476, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2442.w));
        _2509 = vec4(_2507.x, _2507.y, _2507.z, _2442.w);
    }
    else
    {
        _2509 = _2442;
    }
    highp vec4 _2576;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2523 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _441, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2537 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2543;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2543 = roundEven(_2537);
        }
        else
        {
            _2543 = _2537;
        }
        highp vec3 _2552 = mix(_2523, _2523 * _1369.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2556 = _2509.xyz + _2552;
        highp vec3 _2557 = _2509.xyz * _2552;
        bvec3 _2559 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2560 = vec3(_2559.x ? _2552.x : _325.x, _2559.y ? _2552.y : _325.y, _2559.z ? _2552.z : _325.z);
        bvec3 _2562 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2570;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2568 = (-_2509.xyz) * _2552 + _2556;
            bvec3 _2830 = isnan(_2568);
            bvec3 _2831 = isnan(_2509.xyz);
            highp vec3 _2832 = max(_2568, _2509.xyz);
            highp vec3 _2833 = vec3(_2830.x ? _2509.xyz.x : _2832.x, _2830.y ? _2509.xyz.y : _2832.y, _2830.z ? _2509.xyz.z : _2832.z);
            _2570 = vec3(_2831.x ? _2568.x : _2833.x, _2831.y ? _2568.y : _2833.y, _2831.z ? _2568.z : _2833.z);
        }
        else
        {
            _2570 = vec3(_2562.x ? _2556.x : _2560.x, _2562.y ? _2556.y : _2560.y, _2562.z ? _2556.z : _2560.z);
        }
        bvec3 _2572 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2574 = mix(_2509.xyz, vec3(_2572.x ? _2557.x : _2570.x, _2572.y ? _2557.y : _2570.y, _2572.z ? _2557.z : _2570.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2543, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2509.w));
        _2576 = vec4(_2574.x, _2574.y, _2574.z, _2509.w);
    }
    else
    {
        _2576 = _2509;
    }
    bvec3 _2586 = bvec3(_385 < 0.0);
    highp vec3 _2587 = (_2576.xyz + ((_Globals._DissolveColor.xyz * _1370) * _2576.w)).xyz;
    highp vec3 _2595 = mix(_2587, _Globals._BackfaceColor.xyz * _1605, vec3(_Globals._BackfaceColor.w));
    highp float _2616 = (_385 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _446) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2630 = vec3(_2586.x ? _2595.x : _2587.x, _2586.y ? _2595.y : _2587.y, _2586.z ? _2595.z : _2587.z).xyz;
    highp vec3 _2641 = mix(_2630, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2630, vec3(pow(clamp(1.0 - abs(dot(_661, _453)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2616));
    highp vec4 _2642 = vec4(_2641.x, _2641.y, _2641.z, _2576.w);
    highp float _2644 = mix(_2576.w, _2576.w * _Globals._DistanceFadeColor.w, _2616);
    _2642.w = _2644;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2644, _2642, vec4(out_var_TEXCOORD9));
}
