#version 300 es
precision mediump float;
precision highp int;

vec3 _321;
vec3 _327;
float _328;
vec4 _329;

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
    highp vec3 _349 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _356 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _372 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _381 = float(gl_FrontFacing ? 1 : (-1));
    highp float _432;
    do
    {
        highp vec3 _388 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _389 = _388.xy;
        highp float _395 = _388.z;
        if ((any(lessThan(_389, vec2(0.0))) || any(greaterThan(_389, vec2(1.0)))) || (_395 > 1.0))
        {
            _432 = 1.0;
            break;
        }
        highp float _405 = _395 + _Globals.uShadowBias;
        _432 = (((step(_405, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _389), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_405, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _389), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_405, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _389), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_405, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _389), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _433 = normalize(out_var_TEXCOORD7);
    highp vec3 _437 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _441 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _442 = length(_441);
    highp vec3 _449 = normalize(_441);
    bvec2 _463 = bvec2(_381 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _464 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _477 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _478 = sin(_477);
    highp float _479 = cos(_477);
    highp vec2 _480 = (vec2(_463.x ? _464.x : out_var_TEXCOORD0.xy.x, _463.y ? _464.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _481 = _480.x;
    highp float _482 = _480.y;
    highp vec2 _493 = (vec2(_481 * _479 + (-(_482 * _478)), _481 * _478 + (_482 * _479)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _494 = dFdx(_493);
    highp vec2 _495 = abs(_494);
    highp vec2 _496 = dFdy(_493);
    highp vec2 _497 = abs(_496);
    highp vec4 _501 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _493);
    highp vec3 _508 = pow(abs(_501.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _509 = _508.z;
    highp float _510 = _508.y;
    bvec4 _512 = bvec4(_509 > _510);
    highp vec4 _513 = vec4(_509, _510, -1.0, 0.666666686534881591796875);
    highp vec4 _514 = vec4(_510, _509, 0.0, -0.3333333432674407958984375);
    highp vec4 _515 = vec4(_512.x ? _513.x : _514.x, _512.y ? _513.y : _514.y, _512.z ? _513.z : _514.z, _512.w ? _513.w : _514.w);
    highp float _516 = _515.x;
    highp float _517 = _508.x;
    bvec4 _519 = bvec4(_516 > _517);
    highp vec4 _522 = vec4(_516, _515.yw, _517);
    highp vec4 _524 = vec4(_517, _515.yz, _516);
    highp vec4 _525 = vec4(_519.x ? _522.x : _524.x, _519.y ? _522.y : _524.y, _519.z ? _522.z : _524.z, _519.w ? _522.w : _524.w);
    highp float _530 = _525.x - (isnan(_525.y) ? _525.w : (isnan(_525.w) ? _525.y : min(_525.w, _525.y)));
    highp float _543 = clamp((_530 / (_525.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _546 = clamp(_525.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _560 = vec3((-_546) * _543 + _546) + (clamp(abs((fract(vec3(abs(_525.z + ((_525.w - _525.y) / (6.0 * _530 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_546 * _543));
    highp vec4 _564 = vec4(_560.x, _560.y, _560.z, _501.w) * _Globals._Color;
    highp vec3 _596;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _577 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _493 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _577.w = _577.w * _577.x;
        highp vec2 _588 = ((_577.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _589 = vec3(_588.x, _588.y, _327.z);
        highp vec2 _590 = _588.xy;
        _589.z = sqrt(1.0 - clamp(dot(_590, _590), 0.0, 1.0));
        _596 = _589;
    }
    else
    {
        _596 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _645;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _605 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _606 = vec2(_605.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _605.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _608 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _609 = vec2(_608.x ? out_var_TEXCOORD1.xy.x : _606.x, _608.y ? out_var_TEXCOORD1.xy.y : _606.y);
        bvec2 _611 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _621 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_611.x ? out_var_TEXCOORD1.zw.x : _609.x, _611.y ? out_var_TEXCOORD1.zw.y : _609.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _621.w = _621.w * _621.x;
        highp vec2 _633 = (((_621.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _645 = vec3(_596.xy + _633, _596.z * sqrt(1.0 - clamp(dot(_633, _633), 0.0, 1.0)));
    }
    else
    {
        _645 = _596;
    }
    highp vec3 _647 = normalize(mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4) * _645);
    bvec3 _652 = bvec3(_381 < (_Globals._FlipNormal - 1.0));
    highp vec3 _653 = -_647;
    highp vec3 _654 = vec3(_652.x ? _653.x : _647.x, _652.y ? _653.y : _647.y, _652.z ? _653.z : _647.z);
    highp float _656 = clamp(dot(_654, _449), 0.0, 1.0);
    highp vec3 _657 = normalize(out_var_TEXCOORD4);
    highp vec2 _661 = ((_654 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _356, _349)).xy * 0.5) + vec2(0.5);
    bool _662 = out_var_TEXCOORD5.w > 0.0;
    bool _667 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _945;
    highp vec4 _946;
    if (_667)
    {
        bvec2 _673 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _674 = vec2(_673.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _673.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _676 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _677 = vec2(_676.x ? out_var_TEXCOORD1.xy.x : _674.x, _676.y ? out_var_TEXCOORD1.xy.y : _674.y);
        bvec2 _679 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _680 = vec2(_679.x ? out_var_TEXCOORD1.zw.x : _677.x, _679.y ? out_var_TEXCOORD1.zw.y : _677.y);
        bvec2 _682 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _683 = vec2(_682.x ? _661.x : _680.x, _682.y ? _661.y : _680.y);
        highp vec4 _722 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _723 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _731;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _730 = _683;
            _730.x = abs(_683.x - 0.5) + 0.5;
            _731 = _730;
        }
        else
        {
            _731 = _683;
        }
        highp vec2 _732 = _722.xy;
        highp vec2 _733 = _722.zw;
        highp vec2 _734 = _731 * _732 + _733;
        highp vec2 _743;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_683.x < 0.5))
        {
            highp vec2 _742 = _734;
            _742.x = 1.0 - _734.x;
            _743 = _742;
        }
        else
        {
            _743 = _734;
        }
        highp vec2 _750;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _662)
        {
            highp vec2 _749 = _743;
            _749.x = 1.0 - _743.x;
            _750 = _749;
        }
        else
        {
            _750 = _743;
        }
        highp vec2 _755;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _662)
        {
            highp vec2 _754 = _750;
            _754.x = -1.0;
            _755 = _754;
        }
        else
        {
            _755 = _750;
        }
        highp vec2 _761;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_662))
        {
            highp vec2 _760 = _755;
            _760.x = -1.0;
            _761 = _760;
        }
        else
        {
            _761 = _755;
        }
        highp float _764 = sin(_723);
        highp float _765 = cos(_723);
        highp vec2 _766 = ((_761 - _733) / _732) - vec2(0.5);
        highp float _767 = _766.x;
        highp float _768 = _766.y;
        highp vec2 _776 = (vec2(_767 * _765 + (-(_768 * _764)), _767 * _764 + (_768 * _765)) + vec2(0.5)) * _732 + _733;
        uint _780 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _784 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _780 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _780);
        highp float _785 = _776.x;
        highp float _786 = _776.y;
        uint _793 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _803 = ((mix(vec2(_785, 1.0 - _786), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_784 % _793), float(_784 / _793))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _803.y = 1.0 - _803.y;
        highp vec4 _808 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _803);
        highp vec4 _824;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _811 = _808.x;
            highp float _812 = _808.y;
            highp float _813 = _808.z;
            highp float _814 = isnan(_812) ? _811 : (isnan(_811) ? _812 : min(_811, _812));
            highp float _815 = isnan(_812) ? _811 : (isnan(_811) ? _812 : max(_811, _812));
            highp float _816 = isnan(_813) ? _815 : (isnan(_815) ? _813 : min(_815, _813));
            highp float _817 = isnan(_816) ? _814 : (isnan(_814) ? _816 : max(_814, _816));
            _824 = vec4(1.0, 1.0, 1.0, clamp((_817 - 0.5) / clamp(fwidth(_817), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _824 = _808;
        }
        highp vec4 _847;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _828 = clamp(_656 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _831 = 0.5 - abs(_785 - 0.5);
            highp float _838 = 0.5 - abs(_786 - 0.5);
            highp vec4 _846 = _824;
            _846.w = _824.w * (clamp(_831 / clamp(fwidth(_831), 9.9999997473787516355514526367188e-05, _828), 0.0, 1.0) * clamp(_838 / clamp(fwidth(_838), 9.9999997473787516355514526367188e-05, _828), 0.0, 1.0));
            _847 = _846;
        }
        else
        {
            _847 = _824;
        }
        highp vec4 _848 = _Globals._Color2nd * _847;
        highp float _849 = _848.w;
        _848.w = mix(_849, _849 * clamp((_442 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _875;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_381 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_381 < 0.0)))
        {
            highp vec4 _874 = _848;
            _874.w = 0.0;
            _875 = _874;
        }
        else
        {
            _875 = _848;
        }
        highp vec4 _914;
        highp vec4 _915;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _886;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _885 = _564;
                _885.w = _875.w;
                _886 = _885;
            }
            else
            {
                _886 = _564;
            }
            highp vec4 _894;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _893 = _886;
                _893.w = _886.w * _875.w;
                _894 = _893;
            }
            else
            {
                _894 = _886;
            }
            highp vec4 _903;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _902 = _894;
                _902.w = clamp(_894.w + _875.w, 0.0, 1.0);
                _903 = _902;
            }
            else
            {
                _903 = _894;
            }
            highp vec4 _912;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _911 = _903;
                _911.w = clamp(_903.w - _875.w, 0.0, 1.0);
                _912 = _911;
            }
            else
            {
                _912 = _903;
            }
            highp vec4 _913 = _875;
            _913.w = 1.0;
            _914 = _913;
            _915 = _912;
        }
        else
        {
            _914 = _875;
            _915 = _564;
        }
        highp vec3 _925 = _915.xyz + _914.xyz;
        highp vec3 _926 = _915.xyz * _914.xyz;
        bvec3 _928 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _929 = vec3(_928.x ? _914.xyz.x : _321.x, _928.y ? _914.xyz.y : _321.y, _928.z ? _914.xyz.z : _321.z);
        bvec3 _931 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _939;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _937 = (-_915.xyz) * _914.xyz + _925;
            bvec3 _2652 = isnan(_937);
            bvec3 _2653 = isnan(_915.xyz);
            highp vec3 _2654 = max(_937, _915.xyz);
            highp vec3 _2655 = vec3(_2652.x ? _915.xyz.x : _2654.x, _2652.y ? _915.xyz.y : _2654.y, _2652.z ? _915.xyz.z : _2654.z);
            _939 = vec3(_2653.x ? _937.x : _2655.x, _2653.y ? _937.y : _2655.y, _2653.z ? _937.z : _2655.z);
        }
        else
        {
            _939 = vec3(_931.x ? _925.x : _929.x, _931.y ? _925.y : _929.y, _931.z ? _925.z : _929.z);
        }
        bvec3 _941 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _943 = mix(_915.xyz, vec3(_941.x ? _926.x : _939.x, _941.y ? _926.y : _939.y, _941.z ? _926.z : _939.z), vec3(_914.w * _Globals._Main2ndEnableLighting));
        _945 = _914;
        _946 = vec4(_943.x, _943.y, _943.z, _915.w);
    }
    else
    {
        _945 = _Globals._Color2nd;
        _946 = _564;
    }
    bool _951 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1229;
    highp vec4 _1230;
    if (_951)
    {
        bvec2 _957 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _958 = vec2(_957.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _957.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _960 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _961 = vec2(_960.x ? out_var_TEXCOORD1.xy.x : _958.x, _960.y ? out_var_TEXCOORD1.xy.y : _958.y);
        bvec2 _963 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _964 = vec2(_963.x ? out_var_TEXCOORD1.zw.x : _961.x, _963.y ? out_var_TEXCOORD1.zw.y : _961.y);
        bvec2 _966 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _967 = vec2(_966.x ? _661.x : _964.x, _966.y ? _661.y : _964.y);
        highp vec4 _1006 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1007 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1015;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1014 = _967;
            _1014.x = abs(_967.x - 0.5) + 0.5;
            _1015 = _1014;
        }
        else
        {
            _1015 = _967;
        }
        highp vec2 _1016 = _1006.xy;
        highp vec2 _1017 = _1006.zw;
        highp vec2 _1018 = _1015 * _1016 + _1017;
        highp vec2 _1027;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_967.x < 0.5))
        {
            highp vec2 _1026 = _1018;
            _1026.x = 1.0 - _1018.x;
            _1027 = _1026;
        }
        else
        {
            _1027 = _1018;
        }
        highp vec2 _1034;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _662)
        {
            highp vec2 _1033 = _1027;
            _1033.x = 1.0 - _1027.x;
            _1034 = _1033;
        }
        else
        {
            _1034 = _1027;
        }
        highp vec2 _1039;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _662)
        {
            highp vec2 _1038 = _1034;
            _1038.x = -1.0;
            _1039 = _1038;
        }
        else
        {
            _1039 = _1034;
        }
        highp vec2 _1045;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_662))
        {
            highp vec2 _1044 = _1039;
            _1044.x = -1.0;
            _1045 = _1044;
        }
        else
        {
            _1045 = _1039;
        }
        highp float _1048 = sin(_1007);
        highp float _1049 = cos(_1007);
        highp vec2 _1050 = ((_1045 - _1017) / _1016) - vec2(0.5);
        highp float _1051 = _1050.x;
        highp float _1052 = _1050.y;
        highp vec2 _1060 = (vec2(_1051 * _1049 + (-(_1052 * _1048)), _1051 * _1048 + (_1052 * _1049)) + vec2(0.5)) * _1016 + _1017;
        uint _1064 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1068 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1064 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1064);
        highp float _1069 = _1060.x;
        highp float _1070 = _1060.y;
        uint _1077 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1087 = ((mix(vec2(_1069, 1.0 - _1070), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1068 % _1077), float(_1068 / _1077))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1087.y = 1.0 - _1087.y;
        highp vec4 _1092 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1087);
        highp vec4 _1108;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1095 = _1092.x;
            highp float _1096 = _1092.y;
            highp float _1097 = _1092.z;
            highp float _1098 = isnan(_1096) ? _1095 : (isnan(_1095) ? _1096 : min(_1095, _1096));
            highp float _1099 = isnan(_1096) ? _1095 : (isnan(_1095) ? _1096 : max(_1095, _1096));
            highp float _1100 = isnan(_1097) ? _1099 : (isnan(_1099) ? _1097 : min(_1099, _1097));
            highp float _1101 = isnan(_1100) ? _1098 : (isnan(_1098) ? _1100 : max(_1098, _1100));
            _1108 = vec4(1.0, 1.0, 1.0, clamp((_1101 - 0.5) / clamp(fwidth(_1101), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1108 = _1092;
        }
        highp vec4 _1131;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1112 = clamp(_656 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1115 = 0.5 - abs(_1069 - 0.5);
            highp float _1122 = 0.5 - abs(_1070 - 0.5);
            highp vec4 _1130 = _1108;
            _1130.w = _1108.w * (clamp(_1115 / clamp(fwidth(_1115), 9.9999997473787516355514526367188e-05, _1112), 0.0, 1.0) * clamp(_1122 / clamp(fwidth(_1122), 9.9999997473787516355514526367188e-05, _1112), 0.0, 1.0));
            _1131 = _1130;
        }
        else
        {
            _1131 = _1108;
        }
        highp vec4 _1132 = _Globals._Color3rd * _1131;
        highp float _1133 = _1132.w;
        _1132.w = mix(_1133, _1133 * clamp((_442 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1159;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_381 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_381 < 0.0)))
        {
            highp vec4 _1158 = _1132;
            _1158.w = 0.0;
            _1159 = _1158;
        }
        else
        {
            _1159 = _1132;
        }
        highp vec4 _1198;
        highp vec4 _1199;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1170;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1169 = _946;
                _1169.w = _1159.w;
                _1170 = _1169;
            }
            else
            {
                _1170 = _946;
            }
            highp vec4 _1178;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1177 = _1170;
                _1177.w = _1170.w * _1159.w;
                _1178 = _1177;
            }
            else
            {
                _1178 = _1170;
            }
            highp vec4 _1187;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1186 = _1178;
                _1186.w = clamp(_1178.w + _1159.w, 0.0, 1.0);
                _1187 = _1186;
            }
            else
            {
                _1187 = _1178;
            }
            highp vec4 _1196;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1195 = _1187;
                _1195.w = clamp(_1187.w - _1159.w, 0.0, 1.0);
                _1196 = _1195;
            }
            else
            {
                _1196 = _1187;
            }
            highp vec4 _1197 = _1159;
            _1197.w = 1.0;
            _1198 = _1197;
            _1199 = _1196;
        }
        else
        {
            _1198 = _1159;
            _1199 = _946;
        }
        highp vec3 _1209 = _1199.xyz + _1198.xyz;
        highp vec3 _1210 = _1199.xyz * _1198.xyz;
        bvec3 _1212 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1213 = vec3(_1212.x ? _1198.xyz.x : _321.x, _1212.y ? _1198.xyz.y : _321.y, _1212.z ? _1198.xyz.z : _321.z);
        bvec3 _1215 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1223;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1221 = (-_1199.xyz) * _1198.xyz + _1209;
            bvec3 _2677 = isnan(_1221);
            bvec3 _2678 = isnan(_1199.xyz);
            highp vec3 _2679 = max(_1221, _1199.xyz);
            highp vec3 _2680 = vec3(_2677.x ? _1199.xyz.x : _2679.x, _2677.y ? _1199.xyz.y : _2679.y, _2677.z ? _1199.xyz.z : _2679.z);
            _1223 = vec3(_2678.x ? _1221.x : _2680.x, _2678.y ? _1221.y : _2680.y, _2678.z ? _1221.z : _2680.z);
        }
        else
        {
            _1223 = vec3(_1215.x ? _1209.x : _1213.x, _1215.y ? _1209.y : _1213.y, _1215.z ? _1209.z : _1213.z);
        }
        bvec3 _1225 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1227 = mix(_1199.xyz, vec3(_1225.x ? _1210.x : _1223.x, _1225.y ? _1210.y : _1223.y, _1225.z ? _1210.z : _1223.z), vec3(_1198.w * _Globals._Main3rdEnableLighting));
        _1229 = _1198;
        _1230 = vec4(_1227.x, _1227.y, _1227.z, _1199.w);
    }
    else
    {
        _1229 = _Globals._Color3rd;
        _1230 = _946;
    }
    highp vec4 _1270;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1241 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1246;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1245 = _1230;
            _1245.w = _1241;
            _1246 = _1245;
        }
        else
        {
            _1246 = _1230;
        }
        highp vec4 _1253;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1252 = _1246;
            _1252.w = _1246.w * _1241;
            _1253 = _1252;
        }
        else
        {
            _1253 = _1246;
        }
        highp vec4 _1261;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1260 = _1253;
            _1260.w = clamp(_1253.w + _1241, 0.0, 1.0);
            _1261 = _1260;
        }
        else
        {
            _1261 = _1253;
        }
        highp vec4 _1269;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1268 = _1261;
            _1268.w = clamp(_1261.w - _1241, 0.0, 1.0);
            _1269 = _1268;
        }
        else
        {
            _1269 = _1261;
        }
        _1270 = _1269;
    }
    else
    {
        _1270 = _1230;
    }
    highp vec4 _1365;
    highp float _1366;
    if ((_372 & 1) != 0)
    {
        highp vec4 _1274 = _1270;
        _1274.w = 1.0;
        highp vec2 _1280 = roundEven(_Globals._DissolveParams.xy);
        highp float _1281 = _1280.x;
        highp vec4 _1354;
        highp float _1355;
        if (_1281 != 0.0)
        {
            highp float _1297;
            highp float _1298;
            if (_1281 == 1.0)
            {
                _1297 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1298 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1297 = 0.0;
                _1298 = 1.0;
            }
            highp float _1329;
            highp float _1330;
            if (_1281 == 2.0)
            {
                highp vec2 _1307 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1318 = (_1280.y == 1.0) ? (vec2(_1307.x * cos(_Globals._DissolvePos.w) + (-(_1307.y * sin(_Globals._DissolvePos.w))), _328) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1329 = 1.0 - clamp(abs(_1318 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1330 = _1298 * float(_1318 > _Globals._DissolveParams.z);
            }
            else
            {
                _1329 = _1297;
                _1330 = _1298;
            }
            highp float _1351;
            highp float _1352;
            if (_1281 == 3.0)
            {
                highp float _1340 = (_1280.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1351 = 1.0 - clamp(abs(_1340 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1352 = _1330 * float(_1340 > _Globals._DissolveParams.z);
            }
            else
            {
                _1351 = _1329;
                _1352 = _1330;
            }
            highp vec4 _1353 = _1274;
            _1353.w = _1352;
            _1354 = _1353;
            _1355 = _1351;
        }
        else
        {
            _1354 = _1274;
            _1355 = 0.0;
        }
        highp vec4 _1361;
        if ((_372 & 2) != 0)
        {
            highp vec4 _1360 = _1354;
            _1360.w = 1.0 - _1354.w;
            _1361 = _1360;
        }
        else
        {
            _1361 = _1354;
        }
        highp vec4 _1364 = _1361;
        _1364.w = _1361.w * _1270.w;
        _1365 = _1364;
        _1366 = _1355;
    }
    else
    {
        _1365 = _1270;
        _1366 = 0.0;
    }
    highp float _1371 = fwidth(_1365.w);
    highp float _1375 = clamp(((_1365.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1371 : (isnan(_1371) ? 9.9999997473787516355514526367188e-05 : max(_1371, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1376 = _1365;
    _1376.w = _1375;
    if (_1375 == 0.0)
    {
        discard;
    }
    highp vec4 _1602;
    highp float _1603;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1415 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1418 = clamp(_432 + distance(_433, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1423;
        _1423.x = clamp(dot(_433, mix(_657, _654, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1418, _Globals._ShadowReceive);
        _1423.y = clamp(dot(_433, mix(_657, _654, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1418, _Globals._Shadow2ndReceive);
        _1423.z = clamp(dot(_433, mix(_657, _654, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1418, _Globals._Shadow3rdReceive);
        highp vec2 _1444 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2687 = isnan(_495);
        bvec2 _2688 = isnan(_1444);
        highp vec2 _2689 = max(_495, _1444);
        highp vec2 _2690 = vec2(_2687.x ? _1444.x : _2689.x, _2687.y ? _1444.y : _2689.y);
        bvec2 _2692 = isnan(_497);
        bvec2 _2693 = isnan(_1444);
        highp vec2 _2694 = max(_497, _1444);
        highp vec2 _2695 = vec2(_2692.x ? _1444.x : _2694.x, _2692.y ? _1444.y : _2694.y);
        highp vec4 _1448 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _493, vec2(_2688.x ? _495.x : _2690.x, _2688.y ? _495.y : _2690.y), vec2(_2693.x ? _497.x : _2695.x, _2693.y ? _497.y : _2695.y));
        highp vec4 _1456;
        _1456.x = clamp(_1448.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1456.y = clamp(_1448.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1456.z = clamp(_1448.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1475 = _Globals._ShadowPostAO != 0u;
        bvec3 _1476 = bvec3(_1475);
        highp vec3 _1479 = _1423.xyz * _1456.xyz;
        highp vec3 _1480 = vec3(_1476.x ? _1423.xyz.x : _1479.x, _1476.y ? _1423.xyz.y : _1479.y, _1476.z ? _1423.xyz.z : _1479.z);
        highp float _1481 = _1480.x;
        highp float _1485 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1486 = clamp(_1485, 0.0, 1.0);
        highp float _1488 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1495 = _1480.y;
        highp float _1500 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1512 = clamp(_1485 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1519 = _1480.z;
        highp float _1524 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1533 = vec4((_1481 - _1486) / clamp(fwidth(_1481) * _1415 + (_1488 - _1486), 0.0, 1.0), (_1495 - _1500) / clamp(fwidth(_1495) * _1415 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1500), 0.0, 1.0), (_1519 - _1524) / clamp(fwidth(_1519) * _1415 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1524), 0.0, 1.0), (_1481 - _1512) / clamp(fwidth(_1481) * _1415 + (_1488 - _1512), 0.0, 1.0));
        bvec4 _1534 = bvec4(_1475);
        highp vec4 _1536 = _1533 * _1456.xyzx;
        highp vec4 _1538 = clamp(vec4(_1534.x ? _1536.x : _1533.x, _1534.y ? _1536.y : _1533.y, _1534.z ? _1536.z : _1533.z, _1534.w ? _1536.w : _1533.w), vec4(0.0), vec4(1.0));
        highp float _1543 = (_381 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1545 = _1538.x * _1543;
        highp vec3 _1580 = mix(mix(_1376.xyz * _Globals._ShadowColor.xyz, (_1376.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1538.y * _1543)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1376.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1538.z * _1543)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1586 = _1376.xyz * out_var_TEXCOORD6;
        highp vec3 _1592 = mix(mix(_1580, _1580 * _1376.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1376.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2697 = isnan(_1592);
        bvec3 _2698 = isnan(_1586);
        highp vec3 _2699 = min(_1592, _1586);
        highp vec3 _2700 = vec3(_2697.x ? _1586.x : _2699.x, _2697.y ? _1586.y : _2699.y, _2697.z ? _1586.z : _2699.z);
        highp vec3 _1600 = mix(mix(vec3(_2698.x ? _1592.x : _2700.x, _2698.y ? _1592.y : _2700.y, _2698.z ? _1592.z : _2700.z), _1586, _Globals._ShadowBorderColor.xyz * (_1538.w * _1543)), _1586, vec3(mix(1.0, _1545, _Globals._ShadowStrength)));
        _1602 = vec4(_1600.x, _1600.y, _1600.z, _1376.w);
        _1603 = _1545;
    }
    else
    {
        highp vec3 _1387 = _1376.xyz * out_var_TEXCOORD6;
        _1602 = vec4(_1387.x, _1387.y, _1387.z, _1376.w);
        _1603 = 1.0;
    }
    highp vec3 _1606 = vec3(_Globals._LightMaxLimit);
    bvec3 _2702 = isnan(out_var_TEXCOORD6);
    bvec3 _2703 = isnan(_1606);
    highp vec3 _2704 = min(out_var_TEXCOORD6, _1606);
    highp vec3 _2705 = vec3(_2702.x ? _1606.x : _2704.x, _2702.y ? _1606.y : _2704.y, _2702.z ? _1606.z : _2704.z);
    highp vec3 _1607 = vec3(_2703.x ? out_var_TEXCOORD6.x : _2705.x, _2703.y ? out_var_TEXCOORD6.y : _2705.y, _2703.z ? out_var_TEXCOORD6.z : _2705.z);
    highp float _1608 = clamp(_1603, 0.0, 1.0);
    highp vec3 _1610 = _1376.xyz * _Globals._LightMaxLimit;
    bvec3 _2707 = isnan(_1602.xyz);
    bvec3 _2708 = isnan(_1610);
    highp vec3 _2709 = min(_1602.xyz, _1610);
    highp vec3 _2710 = vec3(_2707.x ? _1610.x : _2709.x, _2707.y ? _1610.y : _2709.y, _2707.z ? _1610.z : _2709.z);
    highp vec3 _1611 = vec3(_2708.x ? _1602.xyz.x : _2710.x, _2708.y ? _1602.xyz.y : _2710.y, _2708.z ? _1602.xyz.z : _2710.z);
    highp vec4 _1645;
    if (_667)
    {
        highp vec3 _1615 = _1611.xyz;
        highp vec3 _1625 = _1615 + _945.xyz;
        highp vec3 _1626 = _1615 * _945.xyz;
        bvec3 _1628 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1629 = vec3(_1628.x ? _945.xyz.x : _321.x, _1628.y ? _945.xyz.y : _321.y, _1628.z ? _945.xyz.z : _321.z);
        bvec3 _1631 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1639;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1637 = (-_1615) * _945.xyz + _1625;
            bvec3 _2712 = isnan(_1637);
            bvec3 _2713 = isnan(_1615);
            highp vec3 _2714 = max(_1637, _1615);
            highp vec3 _2715 = vec3(_2712.x ? _1615.x : _2714.x, _2712.y ? _1615.y : _2714.y, _2712.z ? _1615.z : _2714.z);
            _1639 = vec3(_2713.x ? _1637.x : _2715.x, _2713.y ? _1637.y : _2715.y, _2713.z ? _1637.z : _2715.z);
        }
        else
        {
            _1639 = vec3(_1631.x ? _1625.x : _1629.x, _1631.y ? _1625.y : _1629.y, _1631.z ? _1625.z : _1629.z);
        }
        bvec3 _1641 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1643 = mix(_1615, vec3(_1641.x ? _1626.x : _1639.x, _1641.y ? _1626.y : _1639.y, _1641.z ? _1626.z : _1639.z), vec3((-_945.w) * _Globals._Main2ndEnableLighting + _945.w));
        _1645 = vec4(_1643.x, _1643.y, _1643.z, _1602.w);
    }
    else
    {
        _1645 = vec4(_1611.x, _1611.y, _1611.z, _1602.w);
    }
    highp vec4 _1678;
    if (_951)
    {
        highp vec3 _1658 = _1645.xyz + _1229.xyz;
        highp vec3 _1659 = _1645.xyz * _1229.xyz;
        bvec3 _1661 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1662 = vec3(_1661.x ? _1229.xyz.x : _321.x, _1661.y ? _1229.xyz.y : _321.y, _1661.z ? _1229.xyz.z : _321.z);
        bvec3 _1664 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1672;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1670 = (-_1645.xyz) * _1229.xyz + _1658;
            bvec3 _2717 = isnan(_1670);
            bvec3 _2718 = isnan(_1645.xyz);
            highp vec3 _2719 = max(_1670, _1645.xyz);
            highp vec3 _2720 = vec3(_2717.x ? _1645.xyz.x : _2719.x, _2717.y ? _1645.xyz.y : _2719.y, _2717.z ? _1645.xyz.z : _2719.z);
            _1672 = vec3(_2718.x ? _1670.x : _2720.x, _2718.y ? _1670.y : _2720.y, _2718.z ? _1670.z : _2720.z);
        }
        else
        {
            _1672 = vec3(_1664.x ? _1658.x : _1662.x, _1664.y ? _1658.y : _1662.y, _1664.z ? _1658.z : _1662.z);
        }
        bvec3 _1674 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1676 = mix(_1645.xyz, vec3(_1674.x ? _1659.x : _1672.x, _1674.y ? _1659.y : _1672.y, _1674.z ? _1659.z : _1672.z), vec3((-_1229.w) * _Globals._Main3rdEnableLighting + _1229.w));
        _1678 = vec4(_1676.x, _1676.y, _1676.z, _1645.w);
    }
    else
    {
        _1678 = _1645;
    }
    highp vec4 _1724;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1694 = pow(clamp(1.0 - abs(dot(mix(_657, _654, vec3(_Globals._RimShadeNormalStrength)), _449)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1703 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1722 = mix(_1678.xyz, _1678.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1694 - _1703) / clamp(fwidth(_1694) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1703), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1724 = vec4(_1722.x, _1722.y, _1722.z, _1678.w);
    }
    else
    {
        _1724 = _1678;
    }
    highp vec4 _1797;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1748 = dot(normalize(((-_449) * _Globals._BacklightViewStrength) + _433), mix(_657, _654, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1758;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1758 = _1748 * clamp(_432 + distance(_433, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1758 = _1748;
        }
        highp float _1767 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1795 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1376.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_381 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_449, _433) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1758 - _1767) / clamp(fwidth(_1758) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1767), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1607 + _1724.xyz;
        _1797 = vec4(_1795.x, _1795.y, _1795.z, _1724.w);
    }
    else
    {
        _1797 = _1724;
    }
    highp vec4 _2040;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1807 = dFdx(_654);
        highp vec3 _1808 = abs(_1807);
        highp vec3 _1809 = dFdy(_654);
        highp vec3 _1810 = abs(_1809);
        highp float _1811 = dot(_1808, _1808);
        highp float _1812 = dot(_1810, _1810);
        highp float _1813 = isnan(_1812) ? _1811 : (isnan(_1811) ? _1812 : max(_1811, _1812));
        highp float _1816 = (_1813 / (_1813 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1819 = clamp(1.0 - (isnan(_1816) ? 0.0 : (isnan(0.0) ? _1816 : max(0.0, _1816))), 0.0, 1.0);
        highp float _1820 = isnan(_1819) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1819 : min(_Globals._Smoothness, _1819));
        highp float _1821 = 1.0 - _1820;
        highp float _1822 = _1821 * _1821;
        highp vec3 _1827 = _1797.xyz - (_1797.xyz * _Globals._Metallic);
        highp vec3 _1833 = mix(vec3(_Globals._Reflectance), _1376.xyz, vec3(_Globals._Metallic));
        highp vec4 _1936;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1908;
            do
            {
                highp vec3 _1846 = mix(_657, _654, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1848 = normalize(_449 + _433);
                highp float _1850 = clamp(dot(_1846, _1848), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1859 = pow(_1850, 1.0 / _1822);
                    highp float _1866 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1908 = vec3(clamp((_1859 - _1866) / clamp(fwidth(_1859) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1866), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1878 = clamp(dot(_1846, _449), 0.0, 1.0);
                highp float _1880 = clamp(dot(_1846, _433), 0.0, 1.0);
                highp float _1883 = isnan(0.00200000009499490261077880859375) ? _1822 : (isnan(_1822) ? 0.00200000009499490261077880859375 : max(_1822, 0.00200000009499490261077880859375));
                highp float _1884 = 1.0 - _1883;
                highp float _1888 = _1883 * _1883;
                highp float _1891 = (_1850 * _1888 + (-_1850)) * _1850 + 1.0;
                highp float _1899 = 1.0 - clamp(dot(_433, _1848), 0.0, 1.0);
                _1908 = (_1833 + ((((((vec3(1.0) - _1833) * _1899) * _1899) * _1899) * _1899) * _1899)) * (((0.5 / ((_1880 * (_1878 * _1884 + _1883) + (_1878 * (_1880 * _1884 + _1883))) + 9.9999997473787516355514526367188e-06)) * (_1888 / (_1891 * _1891 + 1.0000000116860974230803549289703e-07))) * _1880);
                break;
            } while(false);
            highp vec3 _1909 = _1827.xyz;
            highp vec3 _1911 = _Globals._ReflectionColor.xyz * _1607;
            highp vec3 _1916 = _Globals._ReflectionColor.xyz * _1607 + _1909;
            highp vec3 _1917 = _1909 * _1911;
            bvec3 _1919 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1920 = vec3(_1919.x ? _1911.x : _321.x, _1919.y ? _1911.y : _321.y, _1919.z ? _1911.z : _321.z);
            bvec3 _1922 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1930;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1928 = (-_1909) * _1911 + _1916;
                bvec3 _2742 = isnan(_1928);
                bvec3 _2743 = isnan(_1909);
                highp vec3 _2744 = max(_1928, _1909);
                highp vec3 _2745 = vec3(_2742.x ? _1909.x : _2744.x, _2742.y ? _1909.y : _2744.y, _2742.z ? _1909.z : _2744.z);
                _1930 = vec3(_2743.x ? _1928.x : _2745.x, _2743.y ? _1928.y : _2745.y, _2743.z ? _1928.z : _2745.z);
            }
            else
            {
                _1930 = vec3(_1922.x ? _1916.x : _1920.x, _1922.y ? _1916.y : _1920.y, _1922.z ? _1916.z : _1920.z);
            }
            bvec3 _1932 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1934 = mix(_1909, vec3(_1932.x ? _1917.x : _1930.x, _1932.y ? _1917.y : _1930.y, _1932.z ? _1917.z : _1930.z), _1908 * _Globals._ReflectionColor.w);
            _1936 = vec4(_1934.x, _1934.y, _1934.z, _1797.w);
        }
        else
        {
            _1936 = vec4(_1827.x, _1827.y, _1827.z, _1797.w);
        }
        highp vec4 _2039;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1958 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1965 = reflect(-_449, mix(_657, _654, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1968 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1965, _1821 * ((-4.19999980926513671875) * _1821 + 10.19999980926513671875));
            highp vec3 _1988 = ((_1968.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1968.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1607, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1994 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1965, _1821 * 8.0).xyz * 1.0;
            highp float _2005 = 1.0 - _656;
            highp vec3 _2019 = _1936.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2020 = _1936.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2022 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2023 = vec3(_2022.x ? _Globals._ReflectionColor.xyz.x : _321.x, _2022.y ? _Globals._ReflectionColor.xyz.y : _321.y, _2022.z ? _Globals._ReflectionColor.xyz.z : _321.z);
            bvec3 _2025 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2033;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2031 = (-_1936.xyz) * _Globals._ReflectionColor.xyz + _2019;
                bvec3 _2747 = isnan(_2031);
                bvec3 _2748 = isnan(_1936.xyz);
                highp vec3 _2749 = max(_2031, _1936.xyz);
                highp vec3 _2750 = vec3(_2747.x ? _1936.xyz.x : _2749.x, _2747.y ? _1936.xyz.y : _2749.y, _2747.z ? _1936.xyz.z : _2749.z);
                _2033 = vec3(_2748.x ? _2031.x : _2750.x, _2748.y ? _2031.y : _2750.y, _2748.z ? _2031.z : _2750.z);
            }
            else
            {
                _2033 = vec3(_2025.x ? _2019.x : _2023.x, _2025.y ? _2019.y : _2023.y, _2025.z ? _2019.z : _2023.z);
            }
            bvec3 _2035 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2037 = mix(_1936.xyz, vec3(_2035.x ? _2020.x : _2033.x, _2035.y ? _2020.y : _2033.y, _2035.z ? _2020.z : _2033.z), ((vec3(_1958.x ? _1988.x : _1994.x, _1958.y ? _1988.y : _1994.y, _1958.z ? _1988.z : _1994.z) * (1.0 / (_1822 * _1822 + 1.0))) * mix(_1833, vec3(clamp(_1820 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2005 * _2005) * _2005) * _2005) * _2005))) * _Globals._ReflectionColor.w);
            _2039 = vec4(_2037.x, _2037.y, _2037.z, _1936.w);
        }
        else
        {
            _2039 = _1936;
        }
        _2040 = _2039;
    }
    else
    {
        _2040 = _1797;
    }
    highp vec4 _2146;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2066 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2067 = vec3(_2066.x ? _449.x : _349.x, _2066.y ? _449.y : _349.y, _2066.z ? _449.z : _349.z);
        bvec3 _2068 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2069 = vec3(_2068.x ? vec3(0.0, 1.0, 0.0).x : _356.x, _2068.y ? vec3(0.0, 1.0, 0.0).y : _356.y, _2068.z ? vec3(0.0, 1.0, 0.0).z : _356.z);
        highp vec3 _2073 = normalize(_2069 - (_2067 * dot(_2067, _2069)));
        highp vec4 _2095 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_657, _654, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2067, _2073), _2073, _2067)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2096 = _2095.xyz;
        highp float _2102 = _2095.w;
        highp vec3 _2112 = mix(_2096, _2096 * _1607, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2119 = mix(_2112, _2112 * _1376.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2126 = _2040.xyz + _2119;
        highp vec3 _2127 = _2040.xyz * _2119;
        bvec3 _2129 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2130 = vec3(_2129.x ? _2119.x : _321.x, _2129.y ? _2119.y : _321.y, _2129.z ? _2119.z : _321.z);
        bvec3 _2132 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2140;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2138 = (-_2040.xyz) * _2119 + _2126;
            bvec3 _2752 = isnan(_2138);
            bvec3 _2753 = isnan(_2040.xyz);
            highp vec3 _2754 = max(_2138, _2040.xyz);
            highp vec3 _2755 = vec3(_2752.x ? _2040.xyz.x : _2754.x, _2752.y ? _2040.xyz.y : _2754.y, _2752.z ? _2040.xyz.z : _2754.z);
            _2140 = vec3(_2753.x ? _2138.x : _2755.x, _2753.y ? _2138.y : _2755.y, _2753.z ? _2138.z : _2755.z);
        }
        else
        {
            _2140 = vec3(_2132.x ? _2126.x : _2130.x, _2132.y ? _2126.y : _2130.y, _2132.z ? _2126.z : _2130.z);
        }
        bvec3 _2142 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2144 = mix(_2040.xyz, vec3(_2142.x ? _2127.x : _2140.x, _2142.y ? _2127.y : _2140.y, _2142.z ? _2127.z : _2140.z), vec3(1.0) * (_Globals._MatCapBlend * ((_381 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2102, _2102 * _1608, _Globals._MatCapShadowMask))));
        _2146 = vec4(_2144.x, _2144.y, _2144.z, _2040.w);
    }
    else
    {
        _2146 = _2040;
    }
    highp vec4 _2251;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2171 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2172 = vec3(_2171.x ? _449.x : _349.x, _2171.y ? _449.y : _349.y, _2171.z ? _449.z : _349.z);
        bvec3 _2173 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2174 = vec3(_2173.x ? vec3(0.0, 1.0, 0.0).x : _356.x, _2173.y ? vec3(0.0, 1.0, 0.0).y : _356.y, _2173.z ? vec3(0.0, 1.0, 0.0).z : _356.z);
        highp vec3 _2178 = normalize(_2174 - (_2172 * dot(_2172, _2174)));
        highp vec4 _2200 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_657, _654, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2172, _2178), _2178, _2172)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2201 = _2200.xyz;
        highp float _2207 = _2200.w;
        highp vec3 _2217 = mix(_2201, _2201 * _1607, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2224 = mix(_2217, _2217 * _1376.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2231 = _2146.xyz + _2224;
        highp vec3 _2232 = _2146.xyz * _2224;
        bvec3 _2234 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2235 = vec3(_2234.x ? _2224.x : _321.x, _2234.y ? _2224.y : _321.y, _2234.z ? _2224.z : _321.z);
        bvec3 _2237 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2245;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2243 = (-_2146.xyz) * _2224 + _2231;
            bvec3 _2757 = isnan(_2243);
            bvec3 _2758 = isnan(_2146.xyz);
            highp vec3 _2759 = max(_2243, _2146.xyz);
            highp vec3 _2760 = vec3(_2757.x ? _2146.xyz.x : _2759.x, _2757.y ? _2146.xyz.y : _2759.y, _2757.z ? _2146.xyz.z : _2759.z);
            _2245 = vec3(_2758.x ? _2243.x : _2760.x, _2758.y ? _2243.y : _2760.y, _2758.z ? _2243.z : _2760.z);
        }
        else
        {
            _2245 = vec3(_2237.x ? _2231.x : _2235.x, _2237.y ? _2231.y : _2235.y, _2237.z ? _2231.z : _2235.z);
        }
        bvec3 _2247 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2249 = mix(_2146.xyz, vec3(_2247.x ? _2232.x : _2245.x, _2247.y ? _2232.y : _2245.y, _2247.z ? _2232.z : _2245.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_381 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2207, _2207 * _1608, _Globals._MatCap2ndShadowMask))));
        _2251 = vec4(_2249.x, _2249.y, _2249.z, _2146.w);
    }
    else
    {
        _2251 = _2146;
    }
    highp vec4 _2397;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2270 = mix(_657, _654, vec3(_Globals._RimNormalStrength));
        highp float _2274 = dot(_433, _2270) * 0.5 + 0.5;
        highp float _2297 = (_381 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2270, _449)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2301 = mix(_2297, _2297 * clamp((_2274 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2302 = _2297 * clamp(((1.0 - _2274) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2312 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2321 = clamp((_2301 - _2312) / clamp(fwidth(_2301) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2312), 0.0, 1.0), 0.0, 1.0);
        highp float _2328 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2338 = clamp((_2302 * _Globals._RimDirStrength + (-_2328)) / clamp(fwidth(_2302 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2328), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2350 = vec3(1.0 - _Globals._RimEnableLighting) + (_1607 * _Globals._RimEnableLighting);
        highp vec3 _2352 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1376.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2353 = _2352 * _2350;
        highp vec3 _2359 = _2352 * _2350 + _2251.xyz;
        highp vec3 _2360 = _2251.xyz * _2353;
        bvec3 _2362 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2363 = vec3(_2362.x ? _2353.x : _321.x, _2362.y ? _2353.y : _321.y, _2362.z ? _2353.z : _321.z);
        bvec3 _2365 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2367 = _Globals._RimBlendMode == 2u;
        highp vec3 _2373;
        if (_2367)
        {
            highp vec3 _2371 = (-_2251.xyz) * _2353 + _2359;
            bvec3 _2762 = isnan(_2371);
            bvec3 _2763 = isnan(_2251.xyz);
            highp vec3 _2764 = max(_2371, _2251.xyz);
            highp vec3 _2765 = vec3(_2762.x ? _2251.xyz.x : _2764.x, _2762.y ? _2251.xyz.y : _2764.y, _2762.z ? _2251.xyz.z : _2764.z);
            _2373 = vec3(_2763.x ? _2371.x : _2765.x, _2763.y ? _2371.y : _2765.y, _2763.z ? _2371.z : _2765.z);
        }
        else
        {
            _2373 = vec3(_2365.x ? _2359.x : _2363.x, _2365.y ? _2359.y : _2363.y, _2365.z ? _2359.z : _2363.z);
        }
        bvec3 _2375 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2378 = mix(_2251.xyz, vec3(_2375.x ? _2360.x : _2373.x, _2375.y ? _2360.y : _2373.y, _2375.z ? _2360.z : _2373.z), vec3(mix(_2321, _2321 * _1608, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2380 = _Globals._RimIndirColor.xyz * _2350;
        highp vec3 _2384 = _Globals._RimIndirColor.xyz * _2350 + _2378;
        highp vec3 _2385 = _2378 * _2380;
        highp vec3 _2386 = vec3(_2362.x ? _2380.x : _321.x, _2362.y ? _2380.y : _321.y, _2362.z ? _2380.z : _321.z);
        highp vec3 _2393;
        if (_2367)
        {
            highp vec3 _2391 = (-_2378) * _2380 + _2384;
            bvec3 _2767 = isnan(_2391);
            bvec3 _2768 = isnan(_2378);
            highp vec3 _2769 = max(_2391, _2378);
            highp vec3 _2770 = vec3(_2767.x ? _2378.x : _2769.x, _2767.y ? _2378.y : _2769.y, _2767.z ? _2378.z : _2769.z);
            _2393 = vec3(_2768.x ? _2391.x : _2770.x, _2768.y ? _2391.y : _2770.y, _2768.z ? _2391.z : _2770.z);
        }
        else
        {
            _2393 = vec3(_2365.x ? _2384.x : _2386.x, _2365.y ? _2384.y : _2386.y, _2365.z ? _2384.z : _2386.z);
        }
        highp vec3 _2395 = mix(_2378, vec3(_2375.x ? _2385.x : _2393.x, _2375.y ? _2385.y : _2393.y, _2375.z ? _2385.z : _2393.z), vec3(mix(_2338, _2338 * _1608, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2397 = vec4(_2395.x, _2395.y, _2395.z, _2251.w);
    }
    else
    {
        _2397 = _2251;
    }
    highp vec4 _2462;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2411 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _437, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2425 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2431;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2431 = roundEven(_2425);
        }
        else
        {
            _2431 = _2425;
        }
        highp vec3 _2438 = mix(_2411, _2411 * _1376.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2442 = _2397.xyz + _2438;
        highp vec3 _2443 = _2397.xyz * _2438;
        bvec3 _2445 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2446 = vec3(_2445.x ? _2438.x : _321.x, _2445.y ? _2438.y : _321.y, _2445.z ? _2438.z : _321.z);
        bvec3 _2448 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2456;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2454 = (-_2397.xyz) * _2438 + _2442;
            bvec3 _2772 = isnan(_2454);
            bvec3 _2773 = isnan(_2397.xyz);
            highp vec3 _2774 = max(_2454, _2397.xyz);
            highp vec3 _2775 = vec3(_2772.x ? _2397.xyz.x : _2774.x, _2772.y ? _2397.xyz.y : _2774.y, _2772.z ? _2397.xyz.z : _2774.z);
            _2456 = vec3(_2773.x ? _2454.x : _2775.x, _2773.y ? _2454.y : _2775.y, _2773.z ? _2454.z : _2775.z);
        }
        else
        {
            _2456 = vec3(_2448.x ? _2442.x : _2446.x, _2448.y ? _2442.y : _2446.y, _2448.z ? _2442.z : _2446.z);
        }
        bvec3 _2458 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2460 = mix(_2397.xyz, vec3(_2458.x ? _2443.x : _2456.x, _2458.y ? _2443.y : _2456.y, _2458.z ? _2443.z : _2456.z), vec3((_Globals._EmissionBlend * mix(1.0, _2431, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2462 = vec4(_2460.x, _2460.y, _2460.z, _2397.w);
    }
    else
    {
        _2462 = _2397;
    }
    highp vec4 _2527;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2476 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _437, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2490 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2496;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2496 = roundEven(_2490);
        }
        else
        {
            _2496 = _2490;
        }
        highp vec3 _2503 = mix(_2476, _2476 * _1376.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2507 = _2462.xyz + _2503;
        highp vec3 _2508 = _2462.xyz * _2503;
        bvec3 _2510 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2511 = vec3(_2510.x ? _2503.x : _321.x, _2510.y ? _2503.y : _321.y, _2510.z ? _2503.z : _321.z);
        bvec3 _2513 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2521;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2519 = (-_2462.xyz) * _2503 + _2507;
            bvec3 _2777 = isnan(_2519);
            bvec3 _2778 = isnan(_2462.xyz);
            highp vec3 _2779 = max(_2519, _2462.xyz);
            highp vec3 _2780 = vec3(_2777.x ? _2462.xyz.x : _2779.x, _2777.y ? _2462.xyz.y : _2779.y, _2777.z ? _2462.xyz.z : _2779.z);
            _2521 = vec3(_2778.x ? _2519.x : _2780.x, _2778.y ? _2519.y : _2780.y, _2778.z ? _2519.z : _2780.z);
        }
        else
        {
            _2521 = vec3(_2513.x ? _2507.x : _2511.x, _2513.y ? _2507.y : _2511.y, _2513.z ? _2507.z : _2511.z);
        }
        bvec3 _2523 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2525 = mix(_2462.xyz, vec3(_2523.x ? _2508.x : _2521.x, _2523.y ? _2508.y : _2521.y, _2523.z ? _2508.z : _2521.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2496, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2527 = vec4(_2525.x, _2525.y, _2525.z, _2462.w);
    }
    else
    {
        _2527 = _2462;
    }
    bvec3 _2535 = bvec3(_381 < 0.0);
    highp vec3 _2536 = (_2527.xyz + (_Globals._DissolveColor.xyz * _1366)).xyz;
    highp vec3 _2544 = mix(_2536, _Globals._BackfaceColor.xyz * _1607, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2579 = vec3(_2535.x ? _2544.x : _2536.x, _2535.y ? _2544.y : _2536.y, _2535.z ? _2544.z : _2536.z).xyz;
    highp vec3 _2587 = mix(_2579, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2579, vec3(pow(clamp(1.0 - abs(dot(_657, _449)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_381 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _442) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2587.x, _2587.y, _2587.z, _2527.w), vec4(out_var_TEXCOORD9));
}
