#version 300 es
precision mediump float;
precision highp int;

vec3 _326;
vec3 _332;
float _333;

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
    highp mat3 _462 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _467 = bvec2(_385 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _468 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _481 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _482 = sin(_481);
    highp float _483 = cos(_481);
    highp vec2 _484 = (vec2(_467.x ? _468.x : out_var_TEXCOORD0.xy.x, _467.y ? _468.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _485 = _484.x;
    highp float _486 = _484.y;
    highp vec2 _497 = (vec2(_485 * _483 + (-(_486 * _482)), _485 * _482 + (_486 * _483)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _501 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _497);
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
        highp vec4 _577 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _497 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _577.w = _577.w * _577.x;
        highp vec2 _588 = ((_577.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _589 = vec3(_588.x, _588.y, _332.z);
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
    highp vec3 _647 = normalize(_462 * _645);
    bvec3 _652 = bvec3(_385 < (_Globals._FlipNormal - 1.0));
    highp vec3 _653 = -_647;
    highp vec3 _654 = vec3(_652.x ? _653.x : _647.x, _652.y ? _653.y : _647.y, _652.z ? _653.z : _647.z);
    highp float _656 = clamp(dot(_654, _453), 0.0, 1.0);
    highp vec3 _657 = normalize(out_var_TEXCOORD4);
    highp vec2 _661 = ((_654 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _360, _353)).xy * 0.5) + vec2(0.5);
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
        _848.w = mix(_849, _849 * clamp((_446 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _875;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_385 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_385 < 0.0)))
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
        highp vec3 _929 = vec3(_928.x ? _914.xyz.x : _326.x, _928.y ? _914.xyz.y : _326.y, _928.z ? _914.xyz.z : _326.z);
        bvec3 _931 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _939;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _937 = (-_915.xyz) * _914.xyz + _925;
            bvec3 _2699 = isnan(_937);
            bvec3 _2700 = isnan(_915.xyz);
            highp vec3 _2701 = max(_937, _915.xyz);
            highp vec3 _2702 = vec3(_2699.x ? _915.xyz.x : _2701.x, _2699.y ? _915.xyz.y : _2701.y, _2699.z ? _915.xyz.z : _2701.z);
            _939 = vec3(_2700.x ? _937.x : _2702.x, _2700.y ? _937.y : _2702.y, _2700.z ? _937.z : _2702.z);
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
        _1132.w = mix(_1133, _1133 * clamp((_446 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1159;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_385 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_385 < 0.0)))
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
        highp vec3 _1213 = vec3(_1212.x ? _1198.xyz.x : _326.x, _1212.y ? _1198.xyz.y : _326.y, _1212.z ? _1198.xyz.z : _326.z);
        bvec3 _1215 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1223;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1221 = (-_1199.xyz) * _1198.xyz + _1209;
            bvec3 _2724 = isnan(_1221);
            bvec3 _2725 = isnan(_1199.xyz);
            highp vec3 _2726 = max(_1221, _1199.xyz);
            highp vec3 _2727 = vec3(_2724.x ? _1199.xyz.x : _2726.x, _2724.y ? _1199.xyz.y : _2726.y, _2724.z ? _1199.xyz.z : _2726.z);
            _1223 = vec3(_2725.x ? _1221.x : _2727.x, _2725.y ? _1221.y : _2727.y, _2725.z ? _1221.z : _2727.z);
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
    if ((_376 & 1) != 0)
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
                highp float _1318 = (_1280.y == 1.0) ? (vec2(_1307.x * cos(_Globals._DissolvePos.w) + (-(_1307.y * sin(_Globals._DissolvePos.w))), _333) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
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
        if ((_376 & 2) != 0)
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
    highp vec4 _1553;
    highp float _1554;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1405 = clamp(dot(_437, mix(_657, _654, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1408 = clamp(dot(_437, mix(_657, _654, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1411 = clamp(dot(_437, mix(_657, _654, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1415 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1418 = clamp(_436 + distance(_437, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1421 = mix(1.0, _1418, _Globals._ShadowReceive);
        highp float _1422 = _1405 * _1421;
        highp float _1425 = mix(1.0, _1418, _Globals._Shadow2ndReceive);
        highp float _1429 = mix(1.0, _1418, _Globals._Shadow3rdReceive);
        highp float _1440 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1441 = clamp(_1440, 0.0, 1.0);
        highp float _1443 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1456 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1470 = clamp(_1440 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1483 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1498 = (_385 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1499 = clamp((_1405 * _1421 + (-_1441)) / clamp(fwidth(_1422) * _1415 + (_1443 - _1441), 0.0, 1.0), 0.0, 1.0) * _1498;
        highp vec3 _1531 = mix(mix(_1376.xyz * _Globals._ShadowColor.xyz, (_1376.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1408 * _1425 + (-_1456)) / clamp(fwidth(_1408 * _1425) * _1415 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1456), 0.0, 1.0), 0.0, 1.0) * _1498)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1376.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1411 * _1429 + (-_1483)) / clamp(fwidth(_1411 * _1429) * _1415 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1483), 0.0, 1.0), 0.0, 1.0) * _1498)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1537 = _1376.xyz * out_var_TEXCOORD6;
        highp vec3 _1543 = mix(mix(_1531, _1531 * _1376.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1376.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2734 = isnan(_1543);
        bvec3 _2735 = isnan(_1537);
        highp vec3 _2736 = min(_1543, _1537);
        highp vec3 _2737 = vec3(_2734.x ? _1537.x : _2736.x, _2734.y ? _1537.y : _2736.y, _2734.z ? _1537.z : _2736.z);
        highp vec3 _1551 = mix(mix(vec3(_2735.x ? _1543.x : _2737.x, _2735.y ? _1543.y : _2737.y, _2735.z ? _1543.z : _2737.z), _1537, _Globals._ShadowBorderColor.xyz * (clamp((_1405 * _1421 + (-_1470)) / clamp(fwidth(_1422) * _1415 + (_1443 - _1470), 0.0, 1.0), 0.0, 1.0) * _1498)), _1537, vec3(mix(1.0, _1499, _Globals._ShadowStrength)));
        _1553 = vec4(_1551.x, _1551.y, _1551.z, _1376.w);
        _1554 = _1499;
    }
    else
    {
        highp vec3 _1387 = _1376.xyz * out_var_TEXCOORD6;
        _1553 = vec4(_1387.x, _1387.y, _1387.z, _1376.w);
        _1554 = 1.0;
    }
    highp vec3 _1557 = vec3(_Globals._LightMaxLimit);
    bvec3 _2739 = isnan(out_var_TEXCOORD6);
    bvec3 _2740 = isnan(_1557);
    highp vec3 _2741 = min(out_var_TEXCOORD6, _1557);
    highp vec3 _2742 = vec3(_2739.x ? _1557.x : _2741.x, _2739.y ? _1557.y : _2741.y, _2739.z ? _1557.z : _2741.z);
    highp vec3 _1558 = vec3(_2740.x ? out_var_TEXCOORD6.x : _2742.x, _2740.y ? out_var_TEXCOORD6.y : _2742.y, _2740.z ? out_var_TEXCOORD6.z : _2742.z);
    highp float _1559 = clamp(_1554, 0.0, 1.0);
    highp vec3 _1561 = _1376.xyz * _Globals._LightMaxLimit;
    bvec3 _2744 = isnan(_1553.xyz);
    bvec3 _2745 = isnan(_1561);
    highp vec3 _2746 = min(_1553.xyz, _1561);
    highp vec3 _2747 = vec3(_2744.x ? _1561.x : _2746.x, _2744.y ? _1561.y : _2746.y, _2744.z ? _1561.z : _2746.z);
    highp vec3 _1562 = vec3(_2745.x ? _1553.xyz.x : _2747.x, _2745.y ? _1553.xyz.y : _2747.y, _2745.z ? _1553.xyz.z : _2747.z);
    highp vec4 _1596;
    if (_667)
    {
        highp vec3 _1566 = _1562.xyz;
        highp vec3 _1576 = _1566 + _945.xyz;
        highp vec3 _1577 = _1566 * _945.xyz;
        bvec3 _1579 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1580 = vec3(_1579.x ? _945.xyz.x : _326.x, _1579.y ? _945.xyz.y : _326.y, _1579.z ? _945.xyz.z : _326.z);
        bvec3 _1582 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1590;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1588 = (-_1566) * _945.xyz + _1576;
            bvec3 _2749 = isnan(_1588);
            bvec3 _2750 = isnan(_1566);
            highp vec3 _2751 = max(_1588, _1566);
            highp vec3 _2752 = vec3(_2749.x ? _1566.x : _2751.x, _2749.y ? _1566.y : _2751.y, _2749.z ? _1566.z : _2751.z);
            _1590 = vec3(_2750.x ? _1588.x : _2752.x, _2750.y ? _1588.y : _2752.y, _2750.z ? _1588.z : _2752.z);
        }
        else
        {
            _1590 = vec3(_1582.x ? _1576.x : _1580.x, _1582.y ? _1576.y : _1580.y, _1582.z ? _1576.z : _1580.z);
        }
        bvec3 _1592 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1594 = mix(_1566, vec3(_1592.x ? _1577.x : _1590.x, _1592.y ? _1577.y : _1590.y, _1592.z ? _1577.z : _1590.z), vec3((-_945.w) * _Globals._Main2ndEnableLighting + _945.w));
        _1596 = vec4(_1594.x, _1594.y, _1594.z, _1553.w);
    }
    else
    {
        _1596 = vec4(_1562.x, _1562.y, _1562.z, _1553.w);
    }
    highp vec4 _1629;
    if (_951)
    {
        highp vec3 _1609 = _1596.xyz + _1229.xyz;
        highp vec3 _1610 = _1596.xyz * _1229.xyz;
        bvec3 _1612 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1613 = vec3(_1612.x ? _1229.xyz.x : _326.x, _1612.y ? _1229.xyz.y : _326.y, _1612.z ? _1229.xyz.z : _326.z);
        bvec3 _1615 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1623;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1621 = (-_1596.xyz) * _1229.xyz + _1609;
            bvec3 _2754 = isnan(_1621);
            bvec3 _2755 = isnan(_1596.xyz);
            highp vec3 _2756 = max(_1621, _1596.xyz);
            highp vec3 _2757 = vec3(_2754.x ? _1596.xyz.x : _2756.x, _2754.y ? _1596.xyz.y : _2756.y, _2754.z ? _1596.xyz.z : _2756.z);
            _1623 = vec3(_2755.x ? _1621.x : _2757.x, _2755.y ? _1621.y : _2757.y, _2755.z ? _1621.z : _2757.z);
        }
        else
        {
            _1623 = vec3(_1615.x ? _1609.x : _1613.x, _1615.y ? _1609.y : _1613.y, _1615.z ? _1609.z : _1613.z);
        }
        bvec3 _1625 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1627 = mix(_1596.xyz, vec3(_1625.x ? _1610.x : _1623.x, _1625.y ? _1610.y : _1623.y, _1625.z ? _1610.z : _1623.z), vec3((-_1229.w) * _Globals._Main3rdEnableLighting + _1229.w));
        _1629 = vec4(_1627.x, _1627.y, _1627.z, _1596.w);
    }
    else
    {
        _1629 = _1596;
    }
    highp vec4 _1675;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1645 = pow(clamp(1.0 - abs(dot(mix(_657, _654, vec3(_Globals._RimShadeNormalStrength)), _453)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1654 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1673 = mix(_1629.xyz, _1629.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1645 - _1654) / clamp(fwidth(_1645) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1654), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1675 = vec4(_1673.x, _1673.y, _1673.z, _1629.w);
    }
    else
    {
        _1675 = _1629;
    }
    highp vec4 _1748;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1699 = dot(normalize(((-_453) * _Globals._BacklightViewStrength) + _437), mix(_657, _654, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1709;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1709 = _1699 * clamp(_436 + distance(_437, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1709 = _1699;
        }
        highp float _1718 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1746 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1376.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_385 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_453, _437) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1709 - _1718) / clamp(fwidth(_1709) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1718), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1558 + _1675.xyz;
        _1748 = vec4(_1746.x, _1746.y, _1746.z, _1675.w);
    }
    else
    {
        _1748 = _1675;
    }
    highp vec4 _1991;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1758 = dFdx(_654);
        highp vec3 _1759 = abs(_1758);
        highp vec3 _1760 = dFdy(_654);
        highp vec3 _1761 = abs(_1760);
        highp float _1762 = dot(_1759, _1759);
        highp float _1763 = dot(_1761, _1761);
        highp float _1764 = isnan(_1763) ? _1762 : (isnan(_1762) ? _1763 : max(_1762, _1763));
        highp float _1767 = (_1764 / (_1764 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1770 = clamp(1.0 - (isnan(_1767) ? 0.0 : (isnan(0.0) ? _1767 : max(0.0, _1767))), 0.0, 1.0);
        highp float _1771 = isnan(_1770) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1770 : min(_Globals._Smoothness, _1770));
        highp float _1772 = 1.0 - _1771;
        highp float _1773 = _1772 * _1772;
        highp vec3 _1778 = _1748.xyz - (_1748.xyz * _Globals._Metallic);
        highp vec3 _1784 = mix(vec3(_Globals._Reflectance), _1376.xyz, vec3(_Globals._Metallic));
        highp vec4 _1887;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1859;
            do
            {
                highp vec3 _1797 = mix(_657, _654, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1799 = normalize(_453 + _437);
                highp float _1801 = clamp(dot(_1797, _1799), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1810 = pow(_1801, 1.0 / _1773);
                    highp float _1817 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1859 = vec3(clamp((_1810 - _1817) / clamp(fwidth(_1810) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1817), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1829 = clamp(dot(_1797, _453), 0.0, 1.0);
                highp float _1831 = clamp(dot(_1797, _437), 0.0, 1.0);
                highp float _1834 = isnan(0.00200000009499490261077880859375) ? _1773 : (isnan(_1773) ? 0.00200000009499490261077880859375 : max(_1773, 0.00200000009499490261077880859375));
                highp float _1835 = 1.0 - _1834;
                highp float _1839 = _1834 * _1834;
                highp float _1842 = (_1801 * _1839 + (-_1801)) * _1801 + 1.0;
                highp float _1850 = 1.0 - clamp(dot(_437, _1799), 0.0, 1.0);
                _1859 = (_1784 + ((((((vec3(1.0) - _1784) * _1850) * _1850) * _1850) * _1850) * _1850)) * (((0.5 / ((_1831 * (_1829 * _1835 + _1834) + (_1829 * (_1831 * _1835 + _1834))) + 9.9999997473787516355514526367188e-06)) * (_1839 / (_1842 * _1842 + 1.0000000116860974230803549289703e-07))) * _1831);
                break;
            } while(false);
            highp vec3 _1860 = _1778.xyz;
            highp vec3 _1862 = _Globals._ReflectionColor.xyz * _1558;
            highp vec3 _1867 = _Globals._ReflectionColor.xyz * _1558 + _1860;
            highp vec3 _1868 = _1860 * _1862;
            bvec3 _1870 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1871 = vec3(_1870.x ? _1862.x : _326.x, _1870.y ? _1862.y : _326.y, _1870.z ? _1862.z : _326.z);
            bvec3 _1873 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1881;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1879 = (-_1860) * _1862 + _1867;
                bvec3 _2779 = isnan(_1879);
                bvec3 _2780 = isnan(_1860);
                highp vec3 _2781 = max(_1879, _1860);
                highp vec3 _2782 = vec3(_2779.x ? _1860.x : _2781.x, _2779.y ? _1860.y : _2781.y, _2779.z ? _1860.z : _2781.z);
                _1881 = vec3(_2780.x ? _1879.x : _2782.x, _2780.y ? _1879.y : _2782.y, _2780.z ? _1879.z : _2782.z);
            }
            else
            {
                _1881 = vec3(_1873.x ? _1867.x : _1871.x, _1873.y ? _1867.y : _1871.y, _1873.z ? _1867.z : _1871.z);
            }
            bvec3 _1883 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1885 = mix(_1860, vec3(_1883.x ? _1868.x : _1881.x, _1883.y ? _1868.y : _1881.y, _1883.z ? _1868.z : _1881.z), _1859 * _Globals._ReflectionColor.w);
            _1887 = vec4(_1885.x, _1885.y, _1885.z, _1748.w);
        }
        else
        {
            _1887 = vec4(_1778.x, _1778.y, _1778.z, _1748.w);
        }
        highp vec4 _1990;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1909 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1916 = reflect(-_453, mix(_657, _654, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1919 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1916, _1772 * ((-4.19999980926513671875) * _1772 + 10.19999980926513671875));
            highp vec3 _1939 = ((_1919.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1919.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1558, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1945 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1916, _1772 * 8.0).xyz * 1.0;
            highp float _1956 = 1.0 - _656;
            highp vec3 _1970 = _1887.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1971 = _1887.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1973 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1974 = vec3(_1973.x ? _Globals._ReflectionColor.xyz.x : _326.x, _1973.y ? _Globals._ReflectionColor.xyz.y : _326.y, _1973.z ? _Globals._ReflectionColor.xyz.z : _326.z);
            bvec3 _1976 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1984;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1982 = (-_1887.xyz) * _Globals._ReflectionColor.xyz + _1970;
                bvec3 _2784 = isnan(_1982);
                bvec3 _2785 = isnan(_1887.xyz);
                highp vec3 _2786 = max(_1982, _1887.xyz);
                highp vec3 _2787 = vec3(_2784.x ? _1887.xyz.x : _2786.x, _2784.y ? _1887.xyz.y : _2786.y, _2784.z ? _1887.xyz.z : _2786.z);
                _1984 = vec3(_2785.x ? _1982.x : _2787.x, _2785.y ? _1982.y : _2787.y, _2785.z ? _1982.z : _2787.z);
            }
            else
            {
                _1984 = vec3(_1976.x ? _1970.x : _1974.x, _1976.y ? _1970.y : _1974.y, _1976.z ? _1970.z : _1974.z);
            }
            bvec3 _1986 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1988 = mix(_1887.xyz, vec3(_1986.x ? _1971.x : _1984.x, _1986.y ? _1971.y : _1984.y, _1986.z ? _1971.z : _1984.z), ((vec3(_1909.x ? _1939.x : _1945.x, _1909.y ? _1939.y : _1945.y, _1909.z ? _1939.z : _1945.z) * (1.0 / (_1773 * _1773 + 1.0))) * mix(_1784, vec3(clamp(_1771 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1956 * _1956) * _1956) * _1956) * _1956))) * _Globals._ReflectionColor.w);
            _1990 = vec4(_1988.x, _1988.y, _1988.z, _1887.w);
        }
        else
        {
            _1990 = _1887;
        }
        _1991 = _1990;
    }
    else
    {
        _1991 = _1748;
    }
    highp vec4 _2142;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2036;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2013 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _497 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2013.w = _2013.w * _2013.x;
            highp vec2 _2024 = ((_2013.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2025 = vec3(_2024.x, _2024.y, _332.z);
            highp vec2 _2026 = _2024.xy;
            _2025.z = sqrt(1.0 - clamp(dot(_2026, _2026), 0.0, 1.0));
            highp vec3 _2033 = normalize(_462 * _2025);
            highp vec3 _2034 = -_2033;
            _2036 = vec3(_652.x ? _2034.x : _2033.x, _652.y ? _2034.y : _2033.y, _652.z ? _2034.z : _2033.z);
        }
        else
        {
            _2036 = mix(_657, _654, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2053 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2054 = vec3(_2053.x ? _453.x : _353.x, _2053.y ? _453.y : _353.y, _2053.z ? _453.z : _353.z);
        bvec3 _2055 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2056 = vec3(_2055.x ? vec3(0.0, 1.0, 0.0).x : _360.x, _2055.y ? vec3(0.0, 1.0, 0.0).y : _360.y, _2055.z ? vec3(0.0, 1.0, 0.0).z : _360.z);
        highp vec3 _2060 = normalize(_2056 - (_2054 * dot(_2054, _2056)));
        highp vec4 _2082 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2036) * mat3(cross(_2054, _2060), _2060, _2054)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _2106 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _497 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2108 = mix(_2082.xyz, _2082.xyz * _1558, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2115 = mix(_2108, _2108 * _1376.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2122 = _1991.xyz + _2115;
        highp vec3 _2123 = _1991.xyz * _2115;
        bvec3 _2125 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2126 = vec3(_2125.x ? _2115.x : _326.x, _2125.y ? _2115.y : _326.y, _2125.z ? _2115.z : _326.z);
        bvec3 _2128 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2136;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2134 = (-_1991.xyz) * _2115 + _2122;
            bvec3 _2789 = isnan(_2134);
            bvec3 _2790 = isnan(_1991.xyz);
            highp vec3 _2791 = max(_2134, _1991.xyz);
            highp vec3 _2792 = vec3(_2789.x ? _1991.xyz.x : _2791.x, _2789.y ? _1991.xyz.y : _2791.y, _2789.z ? _1991.xyz.z : _2791.z);
            _2136 = vec3(_2790.x ? _2134.x : _2792.x, _2790.y ? _2134.y : _2792.y, _2790.z ? _2134.z : _2792.z);
        }
        else
        {
            _2136 = vec3(_2128.x ? _2122.x : _2126.x, _2128.y ? _2122.y : _2126.y, _2128.z ? _2122.z : _2126.z);
        }
        bvec3 _2138 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2140 = mix(_1991.xyz, vec3(_2138.x ? _2123.x : _2136.x, _2138.y ? _2123.y : _2136.y, _2138.z ? _2123.z : _2136.z), _2106.xyz * (_Globals._MatCapBlend * ((_385 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2082.w, _2082.w * _1559, _Globals._MatCapShadowMask))));
        _2142 = vec4(_2140.x, _2140.y, _2140.z, _1991.w);
    }
    else
    {
        _2142 = _1991;
    }
    highp vec4 _2292;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2187;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2164 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _497 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2164.w = _2164.w * _2164.x;
            highp vec2 _2175 = ((_2164.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2176 = vec3(_2175.x, _2175.y, _332.z);
            highp vec2 _2177 = _2175.xy;
            _2176.z = sqrt(1.0 - clamp(dot(_2177, _2177), 0.0, 1.0));
            highp vec3 _2184 = normalize(_462 * _2176);
            highp vec3 _2185 = -_2184;
            _2187 = vec3(_652.x ? _2185.x : _2184.x, _652.y ? _2185.y : _2184.y, _652.z ? _2185.z : _2184.z);
        }
        else
        {
            _2187 = mix(_657, _654, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2203 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2204 = vec3(_2203.x ? _453.x : _353.x, _2203.y ? _453.y : _353.y, _2203.z ? _453.z : _353.z);
        bvec3 _2205 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2206 = vec3(_2205.x ? vec3(0.0, 1.0, 0.0).x : _360.x, _2205.y ? vec3(0.0, 1.0, 0.0).y : _360.y, _2205.z ? vec3(0.0, 1.0, 0.0).z : _360.z);
        highp vec3 _2210 = normalize(_2206 - (_2204 * dot(_2204, _2206)));
        highp vec4 _2232 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2187 * mat3(cross(_2204, _2210), _2210, _2204)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2233 = _2232.xyz;
        highp float _2239 = _2232.w;
        highp vec4 _2256 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _497 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2258 = mix(_2233, _2233 * _1558, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2265 = mix(_2258, _2258 * _1376.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2272 = _2142.xyz + _2265;
        highp vec3 _2273 = _2142.xyz * _2265;
        bvec3 _2275 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2276 = vec3(_2275.x ? _2265.x : _326.x, _2275.y ? _2265.y : _326.y, _2275.z ? _2265.z : _326.z);
        bvec3 _2278 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2286;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2284 = (-_2142.xyz) * _2265 + _2272;
            bvec3 _2794 = isnan(_2284);
            bvec3 _2795 = isnan(_2142.xyz);
            highp vec3 _2796 = max(_2284, _2142.xyz);
            highp vec3 _2797 = vec3(_2794.x ? _2142.xyz.x : _2796.x, _2794.y ? _2142.xyz.y : _2796.y, _2794.z ? _2142.xyz.z : _2796.z);
            _2286 = vec3(_2795.x ? _2284.x : _2797.x, _2795.y ? _2284.y : _2797.y, _2795.z ? _2284.z : _2797.z);
        }
        else
        {
            _2286 = vec3(_2278.x ? _2272.x : _2276.x, _2278.y ? _2272.y : _2276.y, _2278.z ? _2272.z : _2276.z);
        }
        bvec3 _2288 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2290 = mix(_2142.xyz, vec3(_2288.x ? _2273.x : _2286.x, _2288.y ? _2273.y : _2286.y, _2288.z ? _2273.z : _2286.z), _2256.xyz * (_Globals._MatCap2ndBlend * ((_385 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2239, _2239 * _1559, _Globals._MatCap2ndShadowMask))));
        _2292 = vec4(_2290.x, _2290.y, _2290.z, _2142.w);
    }
    else
    {
        _2292 = _2142;
    }
    highp vec4 _2438;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2311 = mix(_657, _654, vec3(_Globals._RimNormalStrength));
        highp float _2315 = dot(_437, _2311) * 0.5 + 0.5;
        highp float _2338 = (_385 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2311, _453)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2342 = mix(_2338, _2338 * clamp((_2315 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2343 = _2338 * clamp(((1.0 - _2315) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2353 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2362 = clamp((_2342 - _2353) / clamp(fwidth(_2342) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2353), 0.0, 1.0), 0.0, 1.0);
        highp float _2369 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2379 = clamp((_2343 * _Globals._RimDirStrength + (-_2369)) / clamp(fwidth(_2343 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2369), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2391 = vec3(1.0 - _Globals._RimEnableLighting) + (_1558 * _Globals._RimEnableLighting);
        highp vec3 _2393 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1376.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2394 = _2393 * _2391;
        highp vec3 _2400 = _2393 * _2391 + _2292.xyz;
        highp vec3 _2401 = _2292.xyz * _2394;
        bvec3 _2403 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2404 = vec3(_2403.x ? _2394.x : _326.x, _2403.y ? _2394.y : _326.y, _2403.z ? _2394.z : _326.z);
        bvec3 _2406 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2408 = _Globals._RimBlendMode == 2u;
        highp vec3 _2414;
        if (_2408)
        {
            highp vec3 _2412 = (-_2292.xyz) * _2394 + _2400;
            bvec3 _2799 = isnan(_2412);
            bvec3 _2800 = isnan(_2292.xyz);
            highp vec3 _2801 = max(_2412, _2292.xyz);
            highp vec3 _2802 = vec3(_2799.x ? _2292.xyz.x : _2801.x, _2799.y ? _2292.xyz.y : _2801.y, _2799.z ? _2292.xyz.z : _2801.z);
            _2414 = vec3(_2800.x ? _2412.x : _2802.x, _2800.y ? _2412.y : _2802.y, _2800.z ? _2412.z : _2802.z);
        }
        else
        {
            _2414 = vec3(_2406.x ? _2400.x : _2404.x, _2406.y ? _2400.y : _2404.y, _2406.z ? _2400.z : _2404.z);
        }
        bvec3 _2416 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2419 = mix(_2292.xyz, vec3(_2416.x ? _2401.x : _2414.x, _2416.y ? _2401.y : _2414.y, _2416.z ? _2401.z : _2414.z), vec3(mix(_2362, _2362 * _1559, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2421 = _Globals._RimIndirColor.xyz * _2391;
        highp vec3 _2425 = _Globals._RimIndirColor.xyz * _2391 + _2419;
        highp vec3 _2426 = _2419 * _2421;
        highp vec3 _2427 = vec3(_2403.x ? _2421.x : _326.x, _2403.y ? _2421.y : _326.y, _2403.z ? _2421.z : _326.z);
        highp vec3 _2434;
        if (_2408)
        {
            highp vec3 _2432 = (-_2419) * _2421 + _2425;
            bvec3 _2804 = isnan(_2432);
            bvec3 _2805 = isnan(_2419);
            highp vec3 _2806 = max(_2432, _2419);
            highp vec3 _2807 = vec3(_2804.x ? _2419.x : _2806.x, _2804.y ? _2419.y : _2806.y, _2804.z ? _2419.z : _2806.z);
            _2434 = vec3(_2805.x ? _2432.x : _2807.x, _2805.y ? _2432.y : _2807.y, _2805.z ? _2432.z : _2807.z);
        }
        else
        {
            _2434 = vec3(_2406.x ? _2425.x : _2427.x, _2406.y ? _2425.y : _2427.y, _2406.z ? _2425.z : _2427.z);
        }
        highp vec3 _2436 = mix(_2419, vec3(_2416.x ? _2426.x : _2434.x, _2416.y ? _2426.y : _2434.y, _2416.z ? _2426.z : _2434.z), vec3(mix(_2379, _2379 * _1559, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2438 = vec4(_2436.x, _2436.y, _2436.z, _2292.w);
    }
    else
    {
        _2438 = _2292;
    }
    highp vec4 _2503;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2452 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _441, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2466 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2472;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2472 = roundEven(_2466);
        }
        else
        {
            _2472 = _2466;
        }
        highp vec3 _2479 = mix(_2452, _2452 * _1376.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2483 = _2438.xyz + _2479;
        highp vec3 _2484 = _2438.xyz * _2479;
        bvec3 _2486 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2487 = vec3(_2486.x ? _2479.x : _326.x, _2486.y ? _2479.y : _326.y, _2486.z ? _2479.z : _326.z);
        bvec3 _2489 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2497;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2495 = (-_2438.xyz) * _2479 + _2483;
            bvec3 _2809 = isnan(_2495);
            bvec3 _2810 = isnan(_2438.xyz);
            highp vec3 _2811 = max(_2495, _2438.xyz);
            highp vec3 _2812 = vec3(_2809.x ? _2438.xyz.x : _2811.x, _2809.y ? _2438.xyz.y : _2811.y, _2809.z ? _2438.xyz.z : _2811.z);
            _2497 = vec3(_2810.x ? _2495.x : _2812.x, _2810.y ? _2495.y : _2812.y, _2810.z ? _2495.z : _2812.z);
        }
        else
        {
            _2497 = vec3(_2489.x ? _2483.x : _2487.x, _2489.y ? _2483.y : _2487.y, _2489.z ? _2483.z : _2487.z);
        }
        bvec3 _2499 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2501 = mix(_2438.xyz, vec3(_2499.x ? _2484.x : _2497.x, _2499.y ? _2484.y : _2497.y, _2499.z ? _2484.z : _2497.z), vec3((_Globals._EmissionBlend * mix(1.0, _2472, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2503 = vec4(_2501.x, _2501.y, _2501.z, _2438.w);
    }
    else
    {
        _2503 = _2438;
    }
    highp vec4 _2568;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2517 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _441, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2531 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2537;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2537 = roundEven(_2531);
        }
        else
        {
            _2537 = _2531;
        }
        highp vec3 _2544 = mix(_2517, _2517 * _1376.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2548 = _2503.xyz + _2544;
        highp vec3 _2549 = _2503.xyz * _2544;
        bvec3 _2551 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2552 = vec3(_2551.x ? _2544.x : _326.x, _2551.y ? _2544.y : _326.y, _2551.z ? _2544.z : _326.z);
        bvec3 _2554 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2562;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2560 = (-_2503.xyz) * _2544 + _2548;
            bvec3 _2814 = isnan(_2560);
            bvec3 _2815 = isnan(_2503.xyz);
            highp vec3 _2816 = max(_2560, _2503.xyz);
            highp vec3 _2817 = vec3(_2814.x ? _2503.xyz.x : _2816.x, _2814.y ? _2503.xyz.y : _2816.y, _2814.z ? _2503.xyz.z : _2816.z);
            _2562 = vec3(_2815.x ? _2560.x : _2817.x, _2815.y ? _2560.y : _2817.y, _2815.z ? _2560.z : _2817.z);
        }
        else
        {
            _2562 = vec3(_2554.x ? _2548.x : _2552.x, _2554.y ? _2548.y : _2552.y, _2554.z ? _2548.z : _2552.z);
        }
        bvec3 _2564 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2566 = mix(_2503.xyz, vec3(_2564.x ? _2549.x : _2562.x, _2564.y ? _2549.y : _2562.y, _2564.z ? _2549.z : _2562.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2537, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2568 = vec4(_2566.x, _2566.y, _2566.z, _2503.w);
    }
    else
    {
        _2568 = _2503;
    }
    bvec3 _2576 = bvec3(_385 < 0.0);
    highp vec3 _2577 = (_2568.xyz + (_Globals._DissolveColor.xyz * _1366)).xyz;
    highp vec3 _2585 = mix(_2577, _Globals._BackfaceColor.xyz * _1558, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2620 = vec3(_2576.x ? _2585.x : _2577.x, _2576.y ? _2585.y : _2577.y, _2576.z ? _2585.z : _2577.z).xyz;
    highp vec3 _2628 = mix(_2620, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2620, vec3(pow(clamp(1.0 - abs(dot(_657, _453)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_385 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _446) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2628.x, _2628.y, _2628.z, _2568.w), vec4(out_var_TEXCOORD9));
}
