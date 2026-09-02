#version 300 es
precision mediump float;
precision highp int;

vec3 _331;
vec3 _337;
float _338;
vec4 _339;

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
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
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
    highp vec3 _359 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _366 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _382 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _391 = float(gl_FrontFacing ? 1 : (-1));
    highp float _442;
    do
    {
        highp vec3 _398 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _399 = _398.xy;
        highp float _405 = _398.z;
        if ((any(lessThan(_399, vec2(0.0))) || any(greaterThan(_399, vec2(1.0)))) || (_405 > 1.0))
        {
            _442 = 1.0;
            break;
        }
        highp float _415 = _405 + _Globals.uShadowBias;
        _442 = (((step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_415, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _399), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _443 = normalize(out_var_TEXCOORD7);
    highp vec3 _447 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _451 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _452 = length(_451);
    highp vec3 _459 = normalize(_451);
    highp mat3 _468 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _473 = bvec2(_391 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _474 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _487 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _488 = sin(_487);
    highp float _489 = cos(_487);
    highp vec2 _490 = (vec2(_473.x ? _474.x : out_var_TEXCOORD0.xy.x, _473.y ? _474.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _491 = _490.x;
    highp float _492 = _490.y;
    highp vec2 _503 = (vec2(_491 * _489 + (-(_492 * _488)), _491 * _488 + (_492 * _489)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _504 = dFdx(_503);
    highp vec2 _505 = abs(_504);
    highp vec2 _506 = dFdy(_503);
    highp vec2 _507 = abs(_506);
    highp vec4 _511 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _503);
    highp vec3 _518 = pow(abs(_511.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _519 = _518.z;
    highp float _520 = _518.y;
    bvec4 _522 = bvec4(_519 > _520);
    highp vec4 _523 = vec4(_519, _520, -1.0, 0.666666686534881591796875);
    highp vec4 _524 = vec4(_520, _519, 0.0, -0.3333333432674407958984375);
    highp vec4 _525 = vec4(_522.x ? _523.x : _524.x, _522.y ? _523.y : _524.y, _522.z ? _523.z : _524.z, _522.w ? _523.w : _524.w);
    highp float _526 = _525.x;
    highp float _527 = _518.x;
    bvec4 _529 = bvec4(_526 > _527);
    highp vec4 _532 = vec4(_526, _525.yw, _527);
    highp vec4 _534 = vec4(_527, _525.yz, _526);
    highp vec4 _535 = vec4(_529.x ? _532.x : _534.x, _529.y ? _532.y : _534.y, _529.z ? _532.z : _534.z, _529.w ? _532.w : _534.w);
    highp float _540 = _535.x - (isnan(_535.y) ? _535.w : (isnan(_535.w) ? _535.y : min(_535.w, _535.y)));
    highp float _553 = clamp((_540 / (_535.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _556 = clamp(_535.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _570 = vec3((-_556) * _553 + _556) + (clamp(abs((fract(vec3(abs(_535.z + ((_535.w - _535.y) / (6.0 * _540 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_556 * _553));
    highp vec4 _574 = vec4(_570.x, _570.y, _570.z, _511.w) * _Globals._Color;
    highp vec3 _606;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _587 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _503 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _587.w = _587.w * _587.x;
        highp vec2 _598 = ((_587.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _599 = vec3(_598.x, _598.y, _337.z);
        highp vec2 _600 = _598.xy;
        _599.z = sqrt(1.0 - clamp(dot(_600, _600), 0.0, 1.0));
        _606 = _599;
    }
    else
    {
        _606 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _655;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _615 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _616 = vec2(_615.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _615.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _618 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _619 = vec2(_618.x ? out_var_TEXCOORD1.xy.x : _616.x, _618.y ? out_var_TEXCOORD1.xy.y : _616.y);
        bvec2 _621 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _631 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_621.x ? out_var_TEXCOORD1.zw.x : _619.x, _621.y ? out_var_TEXCOORD1.zw.y : _619.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _631.w = _631.w * _631.x;
        highp vec2 _643 = (((_631.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _655 = vec3(_606.xy + _643, _606.z * sqrt(1.0 - clamp(dot(_643, _643), 0.0, 1.0)));
    }
    else
    {
        _655 = _606;
    }
    highp vec3 _657 = normalize(_468 * _655);
    bvec3 _662 = bvec3(_391 < (_Globals._FlipNormal - 1.0));
    highp vec3 _663 = -_657;
    highp vec3 _664 = vec3(_662.x ? _663.x : _657.x, _662.y ? _663.y : _657.y, _662.z ? _663.z : _657.z);
    highp float _666 = clamp(dot(_664, _459), 0.0, 1.0);
    highp vec3 _667 = normalize(out_var_TEXCOORD4);
    highp vec2 _671 = ((_664 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _366, _359)).xy * 0.5) + vec2(0.5);
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
            highp float _838 = clamp(_666 - 0.0500000007450580596923828125, 0.0, 1.0);
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
        _858.w = mix(_859, _859 * clamp((_452 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _885;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_391 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_391 < 0.0)))
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
                highp vec4 _895 = _574;
                _895.w = _885.w;
                _896 = _895;
            }
            else
            {
                _896 = _574;
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
            _925 = _574;
        }
        highp vec3 _935 = _925.xyz + _924.xyz;
        highp vec3 _936 = _925.xyz * _924.xyz;
        bvec3 _938 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _939 = vec3(_938.x ? _924.xyz.x : _331.x, _938.y ? _924.xyz.y : _331.y, _938.z ? _924.xyz.z : _331.z);
        bvec3 _941 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _949;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _947 = (-_925.xyz) * _924.xyz + _935;
            bvec3 _2756 = isnan(_947);
            bvec3 _2757 = isnan(_925.xyz);
            highp vec3 _2758 = max(_947, _925.xyz);
            highp vec3 _2759 = vec3(_2756.x ? _925.xyz.x : _2758.x, _2756.y ? _925.xyz.y : _2758.y, _2756.z ? _925.xyz.z : _2758.z);
            _949 = vec3(_2757.x ? _947.x : _2759.x, _2757.y ? _947.y : _2759.y, _2757.z ? _947.z : _2759.z);
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
        _956 = _574;
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
            highp float _1122 = clamp(_666 - 0.0500000007450580596923828125, 0.0, 1.0);
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
        _1142.w = mix(_1143, _1143 * clamp((_452 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1169;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_391 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_391 < 0.0)))
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
        highp vec3 _1223 = vec3(_1222.x ? _1208.xyz.x : _331.x, _1222.y ? _1208.xyz.y : _331.y, _1222.z ? _1208.xyz.z : _331.z);
        bvec3 _1225 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1233;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1231 = (-_1209.xyz) * _1208.xyz + _1219;
            bvec3 _2781 = isnan(_1231);
            bvec3 _2782 = isnan(_1209.xyz);
            highp vec3 _2783 = max(_1231, _1209.xyz);
            highp vec3 _2784 = vec3(_2781.x ? _1209.xyz.x : _2783.x, _2781.y ? _1209.xyz.y : _2783.y, _2781.z ? _1209.xyz.z : _2783.z);
            _1233 = vec3(_2782.x ? _1231.x : _2784.x, _2782.y ? _1231.y : _2784.y, _2782.z ? _1231.z : _2784.z);
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
    highp vec4 _1280;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1251 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1256;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1255 = _1240;
            _1255.w = _1251;
            _1256 = _1255;
        }
        else
        {
            _1256 = _1240;
        }
        highp vec4 _1263;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1262 = _1256;
            _1262.w = _1256.w * _1251;
            _1263 = _1262;
        }
        else
        {
            _1263 = _1256;
        }
        highp vec4 _1271;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1270 = _1263;
            _1270.w = clamp(_1263.w + _1251, 0.0, 1.0);
            _1271 = _1270;
        }
        else
        {
            _1271 = _1263;
        }
        highp vec4 _1279;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1278 = _1271;
            _1278.w = clamp(_1271.w - _1251, 0.0, 1.0);
            _1279 = _1278;
        }
        else
        {
            _1279 = _1271;
        }
        _1280 = _1279;
    }
    else
    {
        _1280 = _1240;
    }
    highp vec4 _1375;
    highp float _1376;
    if ((_382 & 1) != 0)
    {
        highp vec4 _1284 = _1280;
        _1284.w = 1.0;
        highp vec2 _1290 = roundEven(_Globals._DissolveParams.xy);
        highp float _1291 = _1290.x;
        highp vec4 _1364;
        highp float _1365;
        if (_1291 != 0.0)
        {
            highp float _1307;
            highp float _1308;
            if (_1291 == 1.0)
            {
                _1307 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1308 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1307 = 0.0;
                _1308 = 1.0;
            }
            highp float _1339;
            highp float _1340;
            if (_1291 == 2.0)
            {
                highp vec2 _1317 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1328 = (_1290.y == 1.0) ? (vec2(_1317.x * cos(_Globals._DissolvePos.w) + (-(_1317.y * sin(_Globals._DissolvePos.w))), _338) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1339 = 1.0 - clamp(abs(_1328 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1340 = _1308 * float(_1328 > _Globals._DissolveParams.z);
            }
            else
            {
                _1339 = _1307;
                _1340 = _1308;
            }
            highp float _1361;
            highp float _1362;
            if (_1291 == 3.0)
            {
                highp float _1350 = (_1290.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1361 = 1.0 - clamp(abs(_1350 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1362 = _1340 * float(_1350 > _Globals._DissolveParams.z);
            }
            else
            {
                _1361 = _1339;
                _1362 = _1340;
            }
            highp vec4 _1363 = _1284;
            _1363.w = _1362;
            _1364 = _1363;
            _1365 = _1361;
        }
        else
        {
            _1364 = _1284;
            _1365 = 0.0;
        }
        highp vec4 _1371;
        if ((_382 & 2) != 0)
        {
            highp vec4 _1370 = _1364;
            _1370.w = 1.0 - _1364.w;
            _1371 = _1370;
        }
        else
        {
            _1371 = _1364;
        }
        highp vec4 _1374 = _1371;
        _1374.w = _1371.w * _1280.w;
        _1375 = _1374;
        _1376 = _1365;
    }
    else
    {
        _1375 = _1280;
        _1376 = 0.0;
    }
    highp float _1381 = fwidth(_1375.w);
    highp float _1385 = clamp(((_1375.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1381 : (isnan(_1381) ? 9.9999997473787516355514526367188e-05 : max(_1381, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1386 = _1375;
    _1386.w = _1385;
    if (_1385 == 0.0)
    {
        discard;
    }
    highp vec4 _1612;
    highp float _1613;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1425 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1428 = clamp(_442 + distance(_443, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1433;
        _1433.x = clamp(dot(_443, mix(_667, _664, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1428, _Globals._ShadowReceive);
        _1433.y = clamp(dot(_443, mix(_667, _664, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1428, _Globals._Shadow2ndReceive);
        _1433.z = clamp(dot(_443, mix(_667, _664, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1428, _Globals._Shadow3rdReceive);
        highp vec2 _1454 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2791 = isnan(_505);
        bvec2 _2792 = isnan(_1454);
        highp vec2 _2793 = max(_505, _1454);
        highp vec2 _2794 = vec2(_2791.x ? _1454.x : _2793.x, _2791.y ? _1454.y : _2793.y);
        bvec2 _2796 = isnan(_507);
        bvec2 _2797 = isnan(_1454);
        highp vec2 _2798 = max(_507, _1454);
        highp vec2 _2799 = vec2(_2796.x ? _1454.x : _2798.x, _2796.y ? _1454.y : _2798.y);
        highp vec4 _1458 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _503, vec2(_2792.x ? _505.x : _2794.x, _2792.y ? _505.y : _2794.y), vec2(_2797.x ? _507.x : _2799.x, _2797.y ? _507.y : _2799.y));
        highp vec4 _1466;
        _1466.x = clamp(_1458.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1466.y = clamp(_1458.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1466.z = clamp(_1458.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1485 = _Globals._ShadowPostAO != 0u;
        bvec3 _1486 = bvec3(_1485);
        highp vec3 _1489 = _1433.xyz * _1466.xyz;
        highp vec3 _1490 = vec3(_1486.x ? _1433.xyz.x : _1489.x, _1486.y ? _1433.xyz.y : _1489.y, _1486.z ? _1433.xyz.z : _1489.z);
        highp float _1491 = _1490.x;
        highp float _1495 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1496 = clamp(_1495, 0.0, 1.0);
        highp float _1498 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1505 = _1490.y;
        highp float _1510 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1522 = clamp(_1495 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1529 = _1490.z;
        highp float _1534 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1543 = vec4((_1491 - _1496) / clamp(fwidth(_1491) * _1425 + (_1498 - _1496), 0.0, 1.0), (_1505 - _1510) / clamp(fwidth(_1505) * _1425 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1510), 0.0, 1.0), (_1529 - _1534) / clamp(fwidth(_1529) * _1425 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1534), 0.0, 1.0), (_1491 - _1522) / clamp(fwidth(_1491) * _1425 + (_1498 - _1522), 0.0, 1.0));
        bvec4 _1544 = bvec4(_1485);
        highp vec4 _1546 = _1543 * _1466.xyzx;
        highp vec4 _1548 = clamp(vec4(_1544.x ? _1546.x : _1543.x, _1544.y ? _1546.y : _1543.y, _1544.z ? _1546.z : _1543.z, _1544.w ? _1546.w : _1543.w), vec4(0.0), vec4(1.0));
        highp float _1553 = (_391 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1555 = _1548.x * _1553;
        highp vec3 _1590 = mix(mix(_1386.xyz * _Globals._ShadowColor.xyz, (_1386.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1548.y * _1553)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1386.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1548.z * _1553)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1596 = _1386.xyz * out_var_TEXCOORD6;
        highp vec3 _1602 = mix(mix(_1590, _1590 * _1386.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1386.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2801 = isnan(_1602);
        bvec3 _2802 = isnan(_1596);
        highp vec3 _2803 = min(_1602, _1596);
        highp vec3 _2804 = vec3(_2801.x ? _1596.x : _2803.x, _2801.y ? _1596.y : _2803.y, _2801.z ? _1596.z : _2803.z);
        highp vec3 _1610 = mix(mix(vec3(_2802.x ? _1602.x : _2804.x, _2802.y ? _1602.y : _2804.y, _2802.z ? _1602.z : _2804.z), _1596, _Globals._ShadowBorderColor.xyz * (_1548.w * _1553)), _1596, vec3(mix(1.0, _1555, _Globals._ShadowStrength)));
        _1612 = vec4(_1610.x, _1610.y, _1610.z, _1386.w);
        _1613 = _1555;
    }
    else
    {
        highp vec3 _1397 = _1386.xyz * out_var_TEXCOORD6;
        _1612 = vec4(_1397.x, _1397.y, _1397.z, _1386.w);
        _1613 = 1.0;
    }
    highp vec3 _1616 = vec3(_Globals._LightMaxLimit);
    bvec3 _2806 = isnan(out_var_TEXCOORD6);
    bvec3 _2807 = isnan(_1616);
    highp vec3 _2808 = min(out_var_TEXCOORD6, _1616);
    highp vec3 _2809 = vec3(_2806.x ? _1616.x : _2808.x, _2806.y ? _1616.y : _2808.y, _2806.z ? _1616.z : _2808.z);
    highp vec3 _1617 = vec3(_2807.x ? out_var_TEXCOORD6.x : _2809.x, _2807.y ? out_var_TEXCOORD6.y : _2809.y, _2807.z ? out_var_TEXCOORD6.z : _2809.z);
    highp float _1618 = clamp(_1613, 0.0, 1.0);
    highp vec3 _1620 = _1386.xyz * _Globals._LightMaxLimit;
    bvec3 _2811 = isnan(_1612.xyz);
    bvec3 _2812 = isnan(_1620);
    highp vec3 _2813 = min(_1612.xyz, _1620);
    highp vec3 _2814 = vec3(_2811.x ? _1620.x : _2813.x, _2811.y ? _1620.y : _2813.y, _2811.z ? _1620.z : _2813.z);
    highp vec3 _1621 = vec3(_2812.x ? _1612.xyz.x : _2814.x, _2812.y ? _1612.xyz.y : _2814.y, _2812.z ? _1612.xyz.z : _2814.z);
    highp vec4 _1655;
    if (_677)
    {
        highp vec3 _1625 = _1621.xyz;
        highp vec3 _1635 = _1625 + _955.xyz;
        highp vec3 _1636 = _1625 * _955.xyz;
        bvec3 _1638 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1639 = vec3(_1638.x ? _955.xyz.x : _331.x, _1638.y ? _955.xyz.y : _331.y, _1638.z ? _955.xyz.z : _331.z);
        bvec3 _1641 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1649;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1647 = (-_1625) * _955.xyz + _1635;
            bvec3 _2816 = isnan(_1647);
            bvec3 _2817 = isnan(_1625);
            highp vec3 _2818 = max(_1647, _1625);
            highp vec3 _2819 = vec3(_2816.x ? _1625.x : _2818.x, _2816.y ? _1625.y : _2818.y, _2816.z ? _1625.z : _2818.z);
            _1649 = vec3(_2817.x ? _1647.x : _2819.x, _2817.y ? _1647.y : _2819.y, _2817.z ? _1647.z : _2819.z);
        }
        else
        {
            _1649 = vec3(_1641.x ? _1635.x : _1639.x, _1641.y ? _1635.y : _1639.y, _1641.z ? _1635.z : _1639.z);
        }
        bvec3 _1651 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1653 = mix(_1625, vec3(_1651.x ? _1636.x : _1649.x, _1651.y ? _1636.y : _1649.y, _1651.z ? _1636.z : _1649.z), vec3((-_955.w) * _Globals._Main2ndEnableLighting + _955.w));
        _1655 = vec4(_1653.x, _1653.y, _1653.z, _1612.w);
    }
    else
    {
        _1655 = vec4(_1621.x, _1621.y, _1621.z, _1612.w);
    }
    highp vec4 _1688;
    if (_961)
    {
        highp vec3 _1668 = _1655.xyz + _1239.xyz;
        highp vec3 _1669 = _1655.xyz * _1239.xyz;
        bvec3 _1671 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1672 = vec3(_1671.x ? _1239.xyz.x : _331.x, _1671.y ? _1239.xyz.y : _331.y, _1671.z ? _1239.xyz.z : _331.z);
        bvec3 _1674 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1682;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1680 = (-_1655.xyz) * _1239.xyz + _1668;
            bvec3 _2821 = isnan(_1680);
            bvec3 _2822 = isnan(_1655.xyz);
            highp vec3 _2823 = max(_1680, _1655.xyz);
            highp vec3 _2824 = vec3(_2821.x ? _1655.xyz.x : _2823.x, _2821.y ? _1655.xyz.y : _2823.y, _2821.z ? _1655.xyz.z : _2823.z);
            _1682 = vec3(_2822.x ? _1680.x : _2824.x, _2822.y ? _1680.y : _2824.y, _2822.z ? _1680.z : _2824.z);
        }
        else
        {
            _1682 = vec3(_1674.x ? _1668.x : _1672.x, _1674.y ? _1668.y : _1672.y, _1674.z ? _1668.z : _1672.z);
        }
        bvec3 _1684 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1686 = mix(_1655.xyz, vec3(_1684.x ? _1669.x : _1682.x, _1684.y ? _1669.y : _1682.y, _1684.z ? _1669.z : _1682.z), vec3((-_1239.w) * _Globals._Main3rdEnableLighting + _1239.w));
        _1688 = vec4(_1686.x, _1686.y, _1686.z, _1655.w);
    }
    else
    {
        _1688 = _1655;
    }
    highp vec4 _1734;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1704 = pow(clamp(1.0 - abs(dot(mix(_667, _664, vec3(_Globals._RimShadeNormalStrength)), _459)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1713 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1732 = mix(_1688.xyz, _1688.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1704 - _1713) / clamp(fwidth(_1704) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1713), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1734 = vec4(_1732.x, _1732.y, _1732.z, _1688.w);
    }
    else
    {
        _1734 = _1688;
    }
    highp vec4 _1807;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1758 = dot(normalize(((-_459) * _Globals._BacklightViewStrength) + _443), mix(_667, _664, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1768;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1768 = _1758 * clamp(_442 + distance(_443, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1768 = _1758;
        }
        highp float _1777 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1805 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1386.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_391 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_459, _443) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1768 - _1777) / clamp(fwidth(_1768) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1777), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1617 + _1734.xyz;
        _1807 = vec4(_1805.x, _1805.y, _1805.z, _1734.w);
    }
    else
    {
        _1807 = _1734;
    }
    highp vec4 _2050;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1817 = dFdx(_664);
        highp vec3 _1818 = abs(_1817);
        highp vec3 _1819 = dFdy(_664);
        highp vec3 _1820 = abs(_1819);
        highp float _1821 = dot(_1818, _1818);
        highp float _1822 = dot(_1820, _1820);
        highp float _1823 = isnan(_1822) ? _1821 : (isnan(_1821) ? _1822 : max(_1821, _1822));
        highp float _1826 = (_1823 / (_1823 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1829 = clamp(1.0 - (isnan(_1826) ? 0.0 : (isnan(0.0) ? _1826 : max(0.0, _1826))), 0.0, 1.0);
        highp float _1830 = isnan(_1829) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1829 : min(_Globals._Smoothness, _1829));
        highp float _1831 = 1.0 - _1830;
        highp float _1832 = _1831 * _1831;
        highp vec3 _1837 = _1807.xyz - (_1807.xyz * _Globals._Metallic);
        highp vec3 _1843 = mix(vec3(_Globals._Reflectance), _1386.xyz, vec3(_Globals._Metallic));
        highp vec4 _1946;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1918;
            do
            {
                highp vec3 _1856 = mix(_667, _664, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1858 = normalize(_459 + _443);
                highp float _1860 = clamp(dot(_1856, _1858), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1869 = pow(_1860, 1.0 / _1832);
                    highp float _1876 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1918 = vec3(clamp((_1869 - _1876) / clamp(fwidth(_1869) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1876), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1888 = clamp(dot(_1856, _459), 0.0, 1.0);
                highp float _1890 = clamp(dot(_1856, _443), 0.0, 1.0);
                highp float _1893 = isnan(0.00200000009499490261077880859375) ? _1832 : (isnan(_1832) ? 0.00200000009499490261077880859375 : max(_1832, 0.00200000009499490261077880859375));
                highp float _1894 = 1.0 - _1893;
                highp float _1898 = _1893 * _1893;
                highp float _1901 = (_1860 * _1898 + (-_1860)) * _1860 + 1.0;
                highp float _1909 = 1.0 - clamp(dot(_443, _1858), 0.0, 1.0);
                _1918 = (_1843 + ((((((vec3(1.0) - _1843) * _1909) * _1909) * _1909) * _1909) * _1909)) * (((0.5 / ((_1890 * (_1888 * _1894 + _1893) + (_1888 * (_1890 * _1894 + _1893))) + 9.9999997473787516355514526367188e-06)) * (_1898 / (_1901 * _1901 + 1.0000000116860974230803549289703e-07))) * _1890);
                break;
            } while(false);
            highp vec3 _1919 = _1837.xyz;
            highp vec3 _1921 = _Globals._ReflectionColor.xyz * _1617;
            highp vec3 _1926 = _Globals._ReflectionColor.xyz * _1617 + _1919;
            highp vec3 _1927 = _1919 * _1921;
            bvec3 _1929 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1930 = vec3(_1929.x ? _1921.x : _331.x, _1929.y ? _1921.y : _331.y, _1929.z ? _1921.z : _331.z);
            bvec3 _1932 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1940;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1938 = (-_1919) * _1921 + _1926;
                bvec3 _2846 = isnan(_1938);
                bvec3 _2847 = isnan(_1919);
                highp vec3 _2848 = max(_1938, _1919);
                highp vec3 _2849 = vec3(_2846.x ? _1919.x : _2848.x, _2846.y ? _1919.y : _2848.y, _2846.z ? _1919.z : _2848.z);
                _1940 = vec3(_2847.x ? _1938.x : _2849.x, _2847.y ? _1938.y : _2849.y, _2847.z ? _1938.z : _2849.z);
            }
            else
            {
                _1940 = vec3(_1932.x ? _1926.x : _1930.x, _1932.y ? _1926.y : _1930.y, _1932.z ? _1926.z : _1930.z);
            }
            bvec3 _1942 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1944 = mix(_1919, vec3(_1942.x ? _1927.x : _1940.x, _1942.y ? _1927.y : _1940.y, _1942.z ? _1927.z : _1940.z), _1918 * _Globals._ReflectionColor.w);
            _1946 = vec4(_1944.x, _1944.y, _1944.z, _1807.w);
        }
        else
        {
            _1946 = vec4(_1837.x, _1837.y, _1837.z, _1807.w);
        }
        highp vec4 _2049;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1968 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1975 = reflect(-_459, mix(_667, _664, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1978 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1975, _1831 * ((-4.19999980926513671875) * _1831 + 10.19999980926513671875));
            highp vec3 _1998 = ((_1978.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1978.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1617, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2004 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1975, _1831 * 8.0).xyz * 1.0;
            highp float _2015 = 1.0 - _666;
            highp vec3 _2029 = _1946.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2030 = _1946.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2032 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2033 = vec3(_2032.x ? _Globals._ReflectionColor.xyz.x : _331.x, _2032.y ? _Globals._ReflectionColor.xyz.y : _331.y, _2032.z ? _Globals._ReflectionColor.xyz.z : _331.z);
            bvec3 _2035 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2043;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2041 = (-_1946.xyz) * _Globals._ReflectionColor.xyz + _2029;
                bvec3 _2851 = isnan(_2041);
                bvec3 _2852 = isnan(_1946.xyz);
                highp vec3 _2853 = max(_2041, _1946.xyz);
                highp vec3 _2854 = vec3(_2851.x ? _1946.xyz.x : _2853.x, _2851.y ? _1946.xyz.y : _2853.y, _2851.z ? _1946.xyz.z : _2853.z);
                _2043 = vec3(_2852.x ? _2041.x : _2854.x, _2852.y ? _2041.y : _2854.y, _2852.z ? _2041.z : _2854.z);
            }
            else
            {
                _2043 = vec3(_2035.x ? _2029.x : _2033.x, _2035.y ? _2029.y : _2033.y, _2035.z ? _2029.z : _2033.z);
            }
            bvec3 _2045 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2047 = mix(_1946.xyz, vec3(_2045.x ? _2030.x : _2043.x, _2045.y ? _2030.y : _2043.y, _2045.z ? _2030.z : _2043.z), ((vec3(_1968.x ? _1998.x : _2004.x, _1968.y ? _1998.y : _2004.y, _1968.z ? _1998.z : _2004.z) * (1.0 / (_1832 * _1832 + 1.0))) * mix(_1843, vec3(clamp(_1830 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2015 * _2015) * _2015) * _2015) * _2015))) * _Globals._ReflectionColor.w);
            _2049 = vec4(_2047.x, _2047.y, _2047.z, _1946.w);
        }
        else
        {
            _2049 = _1946;
        }
        _2050 = _2049;
    }
    else
    {
        _2050 = _1807;
    }
    highp vec4 _2201;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2095;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2072 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _503 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2072.w = _2072.w * _2072.x;
            highp vec2 _2083 = ((_2072.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2084 = vec3(_2083.x, _2083.y, _337.z);
            highp vec2 _2085 = _2083.xy;
            _2084.z = sqrt(1.0 - clamp(dot(_2085, _2085), 0.0, 1.0));
            highp vec3 _2092 = normalize(_468 * _2084);
            highp vec3 _2093 = -_2092;
            _2095 = vec3(_662.x ? _2093.x : _2092.x, _662.y ? _2093.y : _2092.y, _662.z ? _2093.z : _2092.z);
        }
        else
        {
            _2095 = mix(_667, _664, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2112 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2113 = vec3(_2112.x ? _459.x : _359.x, _2112.y ? _459.y : _359.y, _2112.z ? _459.z : _359.z);
        bvec3 _2114 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2115 = vec3(_2114.x ? vec3(0.0, 1.0, 0.0).x : _366.x, _2114.y ? vec3(0.0, 1.0, 0.0).y : _366.y, _2114.z ? vec3(0.0, 1.0, 0.0).z : _366.z);
        highp vec3 _2119 = normalize(_2115 - (_2113 * dot(_2113, _2115)));
        highp vec4 _2141 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2095) * mat3(cross(_2113, _2119), _2119, _2113)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _2165 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _503 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2167 = mix(_2141.xyz, _2141.xyz * _1617, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2174 = mix(_2167, _2167 * _1386.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2181 = _2050.xyz + _2174;
        highp vec3 _2182 = _2050.xyz * _2174;
        bvec3 _2184 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2185 = vec3(_2184.x ? _2174.x : _331.x, _2184.y ? _2174.y : _331.y, _2184.z ? _2174.z : _331.z);
        bvec3 _2187 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2195;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2193 = (-_2050.xyz) * _2174 + _2181;
            bvec3 _2856 = isnan(_2193);
            bvec3 _2857 = isnan(_2050.xyz);
            highp vec3 _2858 = max(_2193, _2050.xyz);
            highp vec3 _2859 = vec3(_2856.x ? _2050.xyz.x : _2858.x, _2856.y ? _2050.xyz.y : _2858.y, _2856.z ? _2050.xyz.z : _2858.z);
            _2195 = vec3(_2857.x ? _2193.x : _2859.x, _2857.y ? _2193.y : _2859.y, _2857.z ? _2193.z : _2859.z);
        }
        else
        {
            _2195 = vec3(_2187.x ? _2181.x : _2185.x, _2187.y ? _2181.y : _2185.y, _2187.z ? _2181.z : _2185.z);
        }
        bvec3 _2197 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2199 = mix(_2050.xyz, vec3(_2197.x ? _2182.x : _2195.x, _2197.y ? _2182.y : _2195.y, _2197.z ? _2182.z : _2195.z), _2165.xyz * (_Globals._MatCapBlend * ((_391 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2141.w, _2141.w * _1618, _Globals._MatCapShadowMask))));
        _2201 = vec4(_2199.x, _2199.y, _2199.z, _2050.w);
    }
    else
    {
        _2201 = _2050;
    }
    highp vec4 _2351;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2246;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2223 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _503 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2223.w = _2223.w * _2223.x;
            highp vec2 _2234 = ((_2223.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2235 = vec3(_2234.x, _2234.y, _337.z);
            highp vec2 _2236 = _2234.xy;
            _2235.z = sqrt(1.0 - clamp(dot(_2236, _2236), 0.0, 1.0));
            highp vec3 _2243 = normalize(_468 * _2235);
            highp vec3 _2244 = -_2243;
            _2246 = vec3(_662.x ? _2244.x : _2243.x, _662.y ? _2244.y : _2243.y, _662.z ? _2244.z : _2243.z);
        }
        else
        {
            _2246 = mix(_667, _664, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2262 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2263 = vec3(_2262.x ? _459.x : _359.x, _2262.y ? _459.y : _359.y, _2262.z ? _459.z : _359.z);
        bvec3 _2264 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2265 = vec3(_2264.x ? vec3(0.0, 1.0, 0.0).x : _366.x, _2264.y ? vec3(0.0, 1.0, 0.0).y : _366.y, _2264.z ? vec3(0.0, 1.0, 0.0).z : _366.z);
        highp vec3 _2269 = normalize(_2265 - (_2263 * dot(_2263, _2265)));
        highp vec4 _2291 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2246 * mat3(cross(_2263, _2269), _2269, _2263)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2292 = _2291.xyz;
        highp float _2298 = _2291.w;
        highp vec4 _2315 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _503 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2317 = mix(_2292, _2292 * _1617, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2324 = mix(_2317, _2317 * _1386.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2331 = _2201.xyz + _2324;
        highp vec3 _2332 = _2201.xyz * _2324;
        bvec3 _2334 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2335 = vec3(_2334.x ? _2324.x : _331.x, _2334.y ? _2324.y : _331.y, _2334.z ? _2324.z : _331.z);
        bvec3 _2337 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2345;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2343 = (-_2201.xyz) * _2324 + _2331;
            bvec3 _2861 = isnan(_2343);
            bvec3 _2862 = isnan(_2201.xyz);
            highp vec3 _2863 = max(_2343, _2201.xyz);
            highp vec3 _2864 = vec3(_2861.x ? _2201.xyz.x : _2863.x, _2861.y ? _2201.xyz.y : _2863.y, _2861.z ? _2201.xyz.z : _2863.z);
            _2345 = vec3(_2862.x ? _2343.x : _2864.x, _2862.y ? _2343.y : _2864.y, _2862.z ? _2343.z : _2864.z);
        }
        else
        {
            _2345 = vec3(_2337.x ? _2331.x : _2335.x, _2337.y ? _2331.y : _2335.y, _2337.z ? _2331.z : _2335.z);
        }
        bvec3 _2347 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2349 = mix(_2201.xyz, vec3(_2347.x ? _2332.x : _2345.x, _2347.y ? _2332.y : _2345.y, _2347.z ? _2332.z : _2345.z), _2315.xyz * (_Globals._MatCap2ndBlend * ((_391 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2298, _2298 * _1618, _Globals._MatCap2ndShadowMask))));
        _2351 = vec4(_2349.x, _2349.y, _2349.z, _2201.w);
    }
    else
    {
        _2351 = _2201;
    }
    highp vec4 _2497;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2370 = mix(_667, _664, vec3(_Globals._RimNormalStrength));
        highp float _2374 = dot(_443, _2370) * 0.5 + 0.5;
        highp float _2397 = (_391 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2370, _459)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2401 = mix(_2397, _2397 * clamp((_2374 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2402 = _2397 * clamp(((1.0 - _2374) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2412 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2421 = clamp((_2401 - _2412) / clamp(fwidth(_2401) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2412), 0.0, 1.0), 0.0, 1.0);
        highp float _2428 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2438 = clamp((_2402 * _Globals._RimDirStrength + (-_2428)) / clamp(fwidth(_2402 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2428), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2450 = vec3(1.0 - _Globals._RimEnableLighting) + (_1617 * _Globals._RimEnableLighting);
        highp vec3 _2452 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1386.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2453 = _2452 * _2450;
        highp vec3 _2459 = _2452 * _2450 + _2351.xyz;
        highp vec3 _2460 = _2351.xyz * _2453;
        bvec3 _2462 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2463 = vec3(_2462.x ? _2453.x : _331.x, _2462.y ? _2453.y : _331.y, _2462.z ? _2453.z : _331.z);
        bvec3 _2465 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2467 = _Globals._RimBlendMode == 2u;
        highp vec3 _2473;
        if (_2467)
        {
            highp vec3 _2471 = (-_2351.xyz) * _2453 + _2459;
            bvec3 _2866 = isnan(_2471);
            bvec3 _2867 = isnan(_2351.xyz);
            highp vec3 _2868 = max(_2471, _2351.xyz);
            highp vec3 _2869 = vec3(_2866.x ? _2351.xyz.x : _2868.x, _2866.y ? _2351.xyz.y : _2868.y, _2866.z ? _2351.xyz.z : _2868.z);
            _2473 = vec3(_2867.x ? _2471.x : _2869.x, _2867.y ? _2471.y : _2869.y, _2867.z ? _2471.z : _2869.z);
        }
        else
        {
            _2473 = vec3(_2465.x ? _2459.x : _2463.x, _2465.y ? _2459.y : _2463.y, _2465.z ? _2459.z : _2463.z);
        }
        bvec3 _2475 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2478 = mix(_2351.xyz, vec3(_2475.x ? _2460.x : _2473.x, _2475.y ? _2460.y : _2473.y, _2475.z ? _2460.z : _2473.z), vec3(mix(_2421, _2421 * _1618, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2480 = _Globals._RimIndirColor.xyz * _2450;
        highp vec3 _2484 = _Globals._RimIndirColor.xyz * _2450 + _2478;
        highp vec3 _2485 = _2478 * _2480;
        highp vec3 _2486 = vec3(_2462.x ? _2480.x : _331.x, _2462.y ? _2480.y : _331.y, _2462.z ? _2480.z : _331.z);
        highp vec3 _2493;
        if (_2467)
        {
            highp vec3 _2491 = (-_2478) * _2480 + _2484;
            bvec3 _2871 = isnan(_2491);
            bvec3 _2872 = isnan(_2478);
            highp vec3 _2873 = max(_2491, _2478);
            highp vec3 _2874 = vec3(_2871.x ? _2478.x : _2873.x, _2871.y ? _2478.y : _2873.y, _2871.z ? _2478.z : _2873.z);
            _2493 = vec3(_2872.x ? _2491.x : _2874.x, _2872.y ? _2491.y : _2874.y, _2872.z ? _2491.z : _2874.z);
        }
        else
        {
            _2493 = vec3(_2465.x ? _2484.x : _2486.x, _2465.y ? _2484.y : _2486.y, _2465.z ? _2484.z : _2486.z);
        }
        highp vec3 _2495 = mix(_2478, vec3(_2475.x ? _2485.x : _2493.x, _2475.y ? _2485.y : _2493.y, _2475.z ? _2485.z : _2493.z), vec3(mix(_2438, _2438 * _1618, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2497 = vec4(_2495.x, _2495.y, _2495.z, _2351.w);
    }
    else
    {
        _2497 = _2351;
    }
    highp vec4 _2562;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2511 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _447, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2525 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2531;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2531 = roundEven(_2525);
        }
        else
        {
            _2531 = _2525;
        }
        highp vec3 _2538 = mix(_2511, _2511 * _1386.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2542 = _2497.xyz + _2538;
        highp vec3 _2543 = _2497.xyz * _2538;
        bvec3 _2545 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2546 = vec3(_2545.x ? _2538.x : _331.x, _2545.y ? _2538.y : _331.y, _2545.z ? _2538.z : _331.z);
        bvec3 _2548 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2556;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2554 = (-_2497.xyz) * _2538 + _2542;
            bvec3 _2876 = isnan(_2554);
            bvec3 _2877 = isnan(_2497.xyz);
            highp vec3 _2878 = max(_2554, _2497.xyz);
            highp vec3 _2879 = vec3(_2876.x ? _2497.xyz.x : _2878.x, _2876.y ? _2497.xyz.y : _2878.y, _2876.z ? _2497.xyz.z : _2878.z);
            _2556 = vec3(_2877.x ? _2554.x : _2879.x, _2877.y ? _2554.y : _2879.y, _2877.z ? _2554.z : _2879.z);
        }
        else
        {
            _2556 = vec3(_2548.x ? _2542.x : _2546.x, _2548.y ? _2542.y : _2546.y, _2548.z ? _2542.z : _2546.z);
        }
        bvec3 _2558 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2560 = mix(_2497.xyz, vec3(_2558.x ? _2543.x : _2556.x, _2558.y ? _2543.y : _2556.y, _2558.z ? _2543.z : _2556.z), vec3((_Globals._EmissionBlend * mix(1.0, _2531, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2562 = vec4(_2560.x, _2560.y, _2560.z, _2497.w);
    }
    else
    {
        _2562 = _2497;
    }
    highp vec4 _2627;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2576 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _447, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2590 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2596;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2596 = roundEven(_2590);
        }
        else
        {
            _2596 = _2590;
        }
        highp vec3 _2603 = mix(_2576, _2576 * _1386.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2607 = _2562.xyz + _2603;
        highp vec3 _2608 = _2562.xyz * _2603;
        bvec3 _2610 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2611 = vec3(_2610.x ? _2603.x : _331.x, _2610.y ? _2603.y : _331.y, _2610.z ? _2603.z : _331.z);
        bvec3 _2613 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2621;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2619 = (-_2562.xyz) * _2603 + _2607;
            bvec3 _2881 = isnan(_2619);
            bvec3 _2882 = isnan(_2562.xyz);
            highp vec3 _2883 = max(_2619, _2562.xyz);
            highp vec3 _2884 = vec3(_2881.x ? _2562.xyz.x : _2883.x, _2881.y ? _2562.xyz.y : _2883.y, _2881.z ? _2562.xyz.z : _2883.z);
            _2621 = vec3(_2882.x ? _2619.x : _2884.x, _2882.y ? _2619.y : _2884.y, _2882.z ? _2619.z : _2884.z);
        }
        else
        {
            _2621 = vec3(_2613.x ? _2607.x : _2611.x, _2613.y ? _2607.y : _2611.y, _2613.z ? _2607.z : _2611.z);
        }
        bvec3 _2623 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2625 = mix(_2562.xyz, vec3(_2623.x ? _2608.x : _2621.x, _2623.y ? _2608.y : _2621.y, _2623.z ? _2608.z : _2621.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2596, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2627 = vec4(_2625.x, _2625.y, _2625.z, _2562.w);
    }
    else
    {
        _2627 = _2562;
    }
    bvec3 _2635 = bvec3(_391 < 0.0);
    highp vec3 _2636 = (_2627.xyz + (_Globals._DissolveColor.xyz * _1376)).xyz;
    highp vec3 _2644 = mix(_2636, _Globals._BackfaceColor.xyz * _1617, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2679 = vec3(_2635.x ? _2644.x : _2636.x, _2635.y ? _2644.y : _2636.y, _2635.z ? _2644.z : _2636.z).xyz;
    highp vec3 _2687 = mix(_2679, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2679, vec3(pow(clamp(1.0 - abs(dot(_667, _459)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_391 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _452) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2687.x, _2687.y, _2687.z, _2627.w), vec4(out_var_TEXCOORD9));
}
