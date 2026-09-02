#version 300 es
precision mediump float;
precision highp int;

vec3 _271;
vec3 _277;

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
uniform highp sampler2D SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex;

in highp vec4 out_var_TEXCOORD0;
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
    highp float _295 = float(gl_FrontFacing ? 1 : (-1));
    highp float _346;
    do
    {
        highp vec3 _302 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _303 = _302.xy;
        highp float _309 = _302.z;
        if ((any(lessThan(_303, vec2(0.0))) || any(greaterThan(_303, vec2(1.0)))) || (_309 > 1.0))
        {
            _346 = 1.0;
            break;
        }
        highp float _319 = _309 + _Globals.uShadowBias;
        _346 = (((step(_319, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _303), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_319, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _303), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_319, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _303), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_319, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _303), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _347 = normalize(out_var_TEXCOORD7);
    highp vec3 _351 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _355 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _363 = normalize(_355);
    highp mat3 _372 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _377 = bvec2(_295 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _378 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _391 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _392 = sin(_391);
    highp float _393 = cos(_391);
    highp vec2 _394 = (vec2(_377.x ? _378.x : out_var_TEXCOORD0.xy.x, _377.y ? _378.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _395 = _394.x;
    highp float _396 = _394.y;
    highp vec2 _407 = (vec2(_395 * _393 + (-(_396 * _392)), _395 * _392 + (_396 * _393)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _411 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _407);
    highp vec3 _418 = pow(abs(_411.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _419 = _418.z;
    highp float _420 = _418.y;
    bvec4 _422 = bvec4(_419 > _420);
    highp vec4 _423 = vec4(_419, _420, -1.0, 0.666666686534881591796875);
    highp vec4 _424 = vec4(_420, _419, 0.0, -0.3333333432674407958984375);
    highp vec4 _425 = vec4(_422.x ? _423.x : _424.x, _422.y ? _423.y : _424.y, _422.z ? _423.z : _424.z, _422.w ? _423.w : _424.w);
    highp float _426 = _425.x;
    highp float _427 = _418.x;
    bvec4 _429 = bvec4(_426 > _427);
    highp vec4 _432 = vec4(_426, _425.yw, _427);
    highp vec4 _434 = vec4(_427, _425.yz, _426);
    highp vec4 _435 = vec4(_429.x ? _432.x : _434.x, _429.y ? _432.y : _434.y, _429.z ? _432.z : _434.z, _429.w ? _432.w : _434.w);
    highp float _440 = _435.x - (isnan(_435.y) ? _435.w : (isnan(_435.w) ? _435.y : min(_435.w, _435.y)));
    highp float _453 = clamp((_440 / (_435.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _456 = clamp(_435.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _470 = vec3((-_456) * _453 + _456) + (clamp(abs((fract(vec3(abs(_435.z + ((_435.w - _435.y) / (6.0 * _440 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_456 * _453));
    highp vec4 _474 = vec4(_470.x, _470.y, _470.z, _411.w) * _Globals._Color;
    highp vec3 _506;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _487 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _407 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _487.w = _487.w * _487.x;
        highp vec2 _498 = ((_487.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _499 = vec3(_498.x, _498.y, _277.z);
        highp vec2 _500 = _498.xy;
        _499.z = sqrt(1.0 - clamp(dot(_500, _500), 0.0, 1.0));
        _506 = _499;
    }
    else
    {
        _506 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _508 = normalize(_372 * _506);
    bvec3 _513 = bvec3(_295 < (_Globals._FlipNormal - 1.0));
    highp vec3 _514 = -_508;
    highp vec3 _515 = vec3(_513.x ? _514.x : _508.x, _513.y ? _514.y : _508.y, _513.z ? _514.z : _508.z);
    highp vec3 _518 = normalize(out_var_TEXCOORD4);
    _474.w = 1.0;
    highp vec4 _693;
    highp float _694;
    if (_Globals._UseShadow != 0u)
    {
        highp float _543 = clamp(dot(_347, mix(_518, _515, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _546 = clamp(dot(_347, mix(_518, _515, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _549 = clamp(dot(_347, mix(_518, _515, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _553 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _556 = clamp(_346 + distance(_347, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _559 = mix(1.0, _556, _Globals._ShadowReceive);
        highp float _560 = _543 * _559;
        highp float _563 = mix(1.0, _556, _Globals._Shadow2ndReceive);
        highp float _567 = mix(1.0, _556, _Globals._Shadow3rdReceive);
        highp float _578 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _579 = clamp(_578, 0.0, 1.0);
        highp float _581 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _594 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _608 = clamp(_578 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _621 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _636 = (_295 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _637 = clamp((_543 * _559 + (-_579)) / clamp(fwidth(_560) * _553 + (_581 - _579), 0.0, 1.0), 0.0, 1.0) * _636;
        highp vec3 _669 = mix(mix(_474.xyz * _Globals._ShadowColor.xyz, (_474.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_546 * _563 + (-_594)) / clamp(fwidth(_546 * _563) * _553 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _594), 0.0, 1.0), 0.0, 1.0) * _636)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_474.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_549 * _567 + (-_621)) / clamp(fwidth(_549 * _567) * _553 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _621), 0.0, 1.0), 0.0, 1.0) * _636)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _675 = _474.xyz * out_var_TEXCOORD6;
        highp vec3 _681 = mix(mix(_669, _669 * _474.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _474.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _1804 = isnan(_681);
        bvec3 _1805 = isnan(_675);
        highp vec3 _1806 = min(_681, _675);
        highp vec3 _1807 = vec3(_1804.x ? _675.x : _1806.x, _1804.y ? _675.y : _1806.y, _1804.z ? _675.z : _1806.z);
        highp vec3 _689 = mix(mix(vec3(_1805.x ? _681.x : _1807.x, _1805.y ? _681.y : _1807.y, _1805.z ? _681.z : _1807.z), _675, _Globals._ShadowBorderColor.xyz * (clamp((_543 * _559 + (-_608)) / clamp(fwidth(_560) * _553 + (_581 - _608), 0.0, 1.0), 0.0, 1.0) * _636)), _675, vec3(mix(1.0, _637, _Globals._ShadowStrength)));
        _693 = vec4(_689.x, _689.y, _689.z, _474.w);
        _694 = _637;
    }
    else
    {
        highp vec3 _691 = _474.xyz * out_var_TEXCOORD6;
        _693 = vec4(_691.x, _691.y, _691.z, _474.w);
        _694 = 1.0;
    }
    highp vec3 _697 = vec3(_Globals._LightMaxLimit);
    bvec3 _1809 = isnan(out_var_TEXCOORD6);
    bvec3 _1810 = isnan(_697);
    highp vec3 _1811 = min(out_var_TEXCOORD6, _697);
    highp vec3 _1812 = vec3(_1809.x ? _697.x : _1811.x, _1809.y ? _697.y : _1811.y, _1809.z ? _697.z : _1811.z);
    highp vec3 _698 = vec3(_1810.x ? out_var_TEXCOORD6.x : _1812.x, _1810.y ? out_var_TEXCOORD6.y : _1812.y, _1810.z ? out_var_TEXCOORD6.z : _1812.z);
    highp float _699 = clamp(_694, 0.0, 1.0);
    highp vec3 _701 = _474.xyz * _Globals._LightMaxLimit;
    bvec3 _1814 = isnan(_693.xyz);
    bvec3 _1815 = isnan(_701);
    highp vec3 _1816 = min(_693.xyz, _701);
    highp vec3 _1817 = vec3(_1814.x ? _701.x : _1816.x, _1814.y ? _701.y : _1816.y, _1814.z ? _701.z : _1816.z);
    highp vec3 _702 = vec3(_1815.x ? _693.xyz.x : _1817.x, _1815.y ? _693.xyz.y : _1817.y, _1815.z ? _693.xyz.z : _1817.z);
    highp vec4 _749;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _719 = pow(clamp(1.0 - abs(dot(mix(_518, _515, vec3(_Globals._RimShadeNormalStrength)), _363)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _728 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _742 = _702.xyz;
        highp vec3 _747 = mix(_742, _742 * _Globals._RimShadeColor.xyz, vec3(clamp((_719 - _728) / clamp(fwidth(_719) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _728), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _749 = vec4(_747.x, _747.y, _747.z, _693.w);
    }
    else
    {
        _749 = vec4(_702.x, _702.y, _702.z, _693.w);
    }
    highp vec4 _822;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _773 = dot(normalize(((-_363) * _Globals._BacklightViewStrength) + _347), mix(_518, _515, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _783;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _783 = _773 * clamp(_346 + distance(_347, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _783 = _773;
        }
        highp float _792 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _820 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _474.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_295 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_363, _347) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_783 - _792) / clamp(fwidth(_783) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _792), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _698 + _749.xyz;
        _822 = vec4(_820.x, _820.y, _820.z, _749.w);
    }
    else
    {
        _822 = _749;
    }
    highp vec4 _1094;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _837 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _407 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _839 = _Globals._Smoothness * _837.x;
        highp vec3 _842 = dFdx(_515);
        highp vec3 _843 = abs(_842);
        highp vec3 _844 = dFdy(_515);
        highp vec3 _845 = abs(_844);
        highp float _846 = dot(_843, _843);
        highp float _847 = dot(_845, _845);
        highp float _848 = isnan(_847) ? _846 : (isnan(_846) ? _847 : max(_846, _847));
        highp float _851 = (_848 / (_848 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _854 = clamp(1.0 - (isnan(_851) ? 0.0 : (isnan(0.0) ? _851 : max(0.0, _851))), 0.0, 1.0);
        highp float _855 = isnan(_854) ? _839 : (isnan(_839) ? _854 : min(_839, _854));
        highp float _856 = 1.0 - _855;
        highp float _857 = _856 * _856;
        highp vec4 _867 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _407 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _869 = _Globals._Metallic * _867.x;
        highp vec3 _872 = _822.xyz - (_822.xyz * _869);
        highp vec3 _878 = mix(vec3(_Globals._Reflectance), _474.xyz, vec3(_869));
        highp vec4 _888 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _407 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _889 = _Globals._ReflectionColor * _888;
        highp vec4 _990;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _962;
            do
            {
                highp vec3 _900 = mix(_518, _515, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _902 = normalize(_363 + _347);
                highp float _904 = clamp(dot(_900, _902), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _913 = pow(_904, 1.0 / _857);
                    highp float _920 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _962 = vec3(clamp((_913 - _920) / clamp(fwidth(_913) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _920), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _932 = clamp(dot(_900, _363), 0.0, 1.0);
                highp float _934 = clamp(dot(_900, _347), 0.0, 1.0);
                highp float _937 = isnan(0.00200000009499490261077880859375) ? _857 : (isnan(_857) ? 0.00200000009499490261077880859375 : max(_857, 0.00200000009499490261077880859375));
                highp float _938 = 1.0 - _937;
                highp float _942 = _937 * _937;
                highp float _945 = (_904 * _942 + (-_904)) * _904 + 1.0;
                highp float _953 = 1.0 - clamp(dot(_347, _902), 0.0, 1.0);
                _962 = (_878 + ((((((vec3(1.0) - _878) * _953) * _953) * _953) * _953) * _953)) * (((0.5 / ((_934 * (_932 * _938 + _937) + (_932 * (_934 * _938 + _937))) + 9.9999997473787516355514526367188e-06)) * (_942 / (_945 * _945 + 1.0000000116860974230803549289703e-07))) * _934);
                break;
            } while(false);
            highp vec3 _963 = _872.xyz;
            highp vec3 _964 = _889.xyz;
            highp vec3 _965 = _964 * _698;
            highp vec3 _970 = _964 * _698 + _963;
            highp vec3 _971 = _963 * _965;
            bvec3 _973 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _974 = vec3(_973.x ? _965.x : _271.x, _973.y ? _965.y : _271.y, _973.z ? _965.z : _271.z);
            bvec3 _976 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _984;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _982 = (-_963) * _965 + _970;
                bvec3 _1839 = isnan(_982);
                bvec3 _1840 = isnan(_963);
                highp vec3 _1841 = max(_982, _963);
                highp vec3 _1842 = vec3(_1839.x ? _963.x : _1841.x, _1839.y ? _963.y : _1841.y, _1839.z ? _963.z : _1841.z);
                _984 = vec3(_1840.x ? _982.x : _1842.x, _1840.y ? _982.y : _1842.y, _1840.z ? _982.z : _1842.z);
            }
            else
            {
                _984 = vec3(_976.x ? _970.x : _974.x, _976.y ? _970.y : _974.y, _976.z ? _970.z : _974.z);
            }
            bvec3 _986 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _988 = mix(_963, vec3(_986.x ? _971.x : _984.x, _986.y ? _971.y : _984.y, _986.z ? _971.z : _984.z), _962 * _889.w);
            _990 = vec4(_988.x, _988.y, _988.z, _822.w);
        }
        else
        {
            _990 = vec4(_872.x, _872.y, _872.z, _822.w);
        }
        highp vec4 _1093;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1012 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1019 = reflect(-_363, mix(_518, _515, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1022 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1019, _856 * ((-4.19999980926513671875) * _856 + 10.19999980926513671875));
            highp vec3 _1042 = ((_1022.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1022.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _698, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1048 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1019, _856 * 8.0).xyz * 1.0;
            highp float _1059 = 1.0 - clamp(dot(_515, _363), 0.0, 1.0);
            highp vec3 _1068 = _889.xyz;
            highp vec3 _1073 = _990.xyz + _1068;
            highp vec3 _1074 = _990.xyz * _1068;
            bvec3 _1076 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1077 = vec3(_1076.x ? _1068.x : _271.x, _1076.y ? _1068.y : _271.y, _1076.z ? _1068.z : _271.z);
            bvec3 _1079 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1087;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1085 = (-_990.xyz) * _1068 + _1073;
                bvec3 _1844 = isnan(_1085);
                bvec3 _1845 = isnan(_990.xyz);
                highp vec3 _1846 = max(_1085, _990.xyz);
                highp vec3 _1847 = vec3(_1844.x ? _990.xyz.x : _1846.x, _1844.y ? _990.xyz.y : _1846.y, _1844.z ? _990.xyz.z : _1846.z);
                _1087 = vec3(_1845.x ? _1085.x : _1847.x, _1845.y ? _1085.y : _1847.y, _1845.z ? _1085.z : _1847.z);
            }
            else
            {
                _1087 = vec3(_1079.x ? _1073.x : _1077.x, _1079.y ? _1073.y : _1077.y, _1079.z ? _1073.z : _1077.z);
            }
            bvec3 _1089 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1091 = mix(_990.xyz, vec3(_1089.x ? _1074.x : _1087.x, _1089.y ? _1074.y : _1087.y, _1089.z ? _1074.z : _1087.z), ((vec3(_1012.x ? _1042.x : _1048.x, _1012.y ? _1042.y : _1048.y, _1012.z ? _1042.z : _1048.z) * (1.0 / (_857 * _857 + 1.0))) * mix(_878, vec3(clamp(_855 + (1.0 - ((-_869) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1059 * _1059) * _1059) * _1059) * _1059))) * _889.w);
            _1093 = vec4(_1091.x, _1091.y, _1091.z, _990.w);
        }
        else
        {
            _1093 = _990;
        }
        _1094 = _1093;
    }
    else
    {
        _1094 = _822;
    }
    highp vec4 _1259;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1139;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1116 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _407 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1116.w = _1116.w * _1116.x;
            highp vec2 _1127 = ((_1116.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1128 = vec3(_1127.x, _1127.y, _277.z);
            highp vec2 _1129 = _1127.xy;
            _1128.z = sqrt(1.0 - clamp(dot(_1129, _1129), 0.0, 1.0));
            highp vec3 _1136 = normalize(_372 * _1128);
            highp vec3 _1137 = -_1136;
            _1139 = vec3(_513.x ? _1137.x : _1136.x, _513.y ? _1137.y : _1136.y, _513.z ? _1137.z : _1136.z);
        }
        else
        {
            _1139 = mix(_518, _515, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1156 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1163 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1164 = vec3(_1156.x ? _363.x : _1163.x, _1156.y ? _363.y : _1163.y, _1156.z ? _363.z : _1163.z);
        bvec3 _1165 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1172 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1173 = vec3(_1165.x ? vec3(0.0, 1.0, 0.0).x : _1172.x, _1165.y ? vec3(0.0, 1.0, 0.0).y : _1172.y, _1165.z ? vec3(0.0, 1.0, 0.0).z : _1172.z);
        highp vec3 _1177 = normalize(_1173 - (_1164 * dot(_1164, _1173)));
        highp vec4 _1199 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1139) * mat3(cross(_1164, _1177), _1177, _1164)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1223 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _407 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1225 = mix(_1199.xyz, _1199.xyz * _698, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1232 = mix(_1225, _1225 * _474.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1239 = _1094.xyz + _1232;
        highp vec3 _1240 = _1094.xyz * _1232;
        bvec3 _1242 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1243 = vec3(_1242.x ? _1232.x : _271.x, _1242.y ? _1232.y : _271.y, _1242.z ? _1232.z : _271.z);
        bvec3 _1245 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1253;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1251 = (-_1094.xyz) * _1232 + _1239;
            bvec3 _1849 = isnan(_1251);
            bvec3 _1850 = isnan(_1094.xyz);
            highp vec3 _1851 = max(_1251, _1094.xyz);
            highp vec3 _1852 = vec3(_1849.x ? _1094.xyz.x : _1851.x, _1849.y ? _1094.xyz.y : _1851.y, _1849.z ? _1094.xyz.z : _1851.z);
            _1253 = vec3(_1850.x ? _1251.x : _1852.x, _1850.y ? _1251.y : _1852.y, _1850.z ? _1251.z : _1852.z);
        }
        else
        {
            _1253 = vec3(_1245.x ? _1239.x : _1243.x, _1245.y ? _1239.y : _1243.y, _1245.z ? _1239.z : _1243.z);
        }
        bvec3 _1255 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1257 = mix(_1094.xyz, vec3(_1255.x ? _1240.x : _1253.x, _1255.y ? _1240.y : _1253.y, _1255.z ? _1240.z : _1253.z), _1223.xyz * (_Globals._MatCapBlend * ((_295 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1199.w, _1199.w * _699, _Globals._MatCapShadowMask))));
        _1259 = vec4(_1257.x, _1257.y, _1257.z, _1094.w);
    }
    else
    {
        _1259 = _1094;
    }
    highp vec4 _1423;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1304;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1281 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _407 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1281.w = _1281.w * _1281.x;
            highp vec2 _1292 = ((_1281.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1293 = vec3(_1292.x, _1292.y, _277.z);
            highp vec2 _1294 = _1292.xy;
            _1293.z = sqrt(1.0 - clamp(dot(_1294, _1294), 0.0, 1.0));
            highp vec3 _1301 = normalize(_372 * _1293);
            highp vec3 _1302 = -_1301;
            _1304 = vec3(_513.x ? _1302.x : _1301.x, _513.y ? _1302.y : _1301.y, _513.z ? _1302.z : _1301.z);
        }
        else
        {
            _1304 = mix(_518, _515, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1320 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1327 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1328 = vec3(_1320.x ? _363.x : _1327.x, _1320.y ? _363.y : _1327.y, _1320.z ? _363.z : _1327.z);
        bvec3 _1329 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1336 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1337 = vec3(_1329.x ? vec3(0.0, 1.0, 0.0).x : _1336.x, _1329.y ? vec3(0.0, 1.0, 0.0).y : _1336.y, _1329.z ? vec3(0.0, 1.0, 0.0).z : _1336.z);
        highp vec3 _1341 = normalize(_1337 - (_1328 * dot(_1328, _1337)));
        highp vec4 _1363 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1304 * mat3(cross(_1328, _1341), _1341, _1328)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1364 = _1363.xyz;
        highp float _1370 = _1363.w;
        highp vec4 _1387 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _407 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1389 = mix(_1364, _1364 * _698, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1396 = mix(_1389, _1389 * _474.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1403 = _1259.xyz + _1396;
        highp vec3 _1404 = _1259.xyz * _1396;
        bvec3 _1406 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1407 = vec3(_1406.x ? _1396.x : _271.x, _1406.y ? _1396.y : _271.y, _1406.z ? _1396.z : _271.z);
        bvec3 _1409 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1417;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1415 = (-_1259.xyz) * _1396 + _1403;
            bvec3 _1854 = isnan(_1415);
            bvec3 _1855 = isnan(_1259.xyz);
            highp vec3 _1856 = max(_1415, _1259.xyz);
            highp vec3 _1857 = vec3(_1854.x ? _1259.xyz.x : _1856.x, _1854.y ? _1259.xyz.y : _1856.y, _1854.z ? _1259.xyz.z : _1856.z);
            _1417 = vec3(_1855.x ? _1415.x : _1857.x, _1855.y ? _1415.y : _1857.y, _1855.z ? _1415.z : _1857.z);
        }
        else
        {
            _1417 = vec3(_1409.x ? _1403.x : _1407.x, _1409.y ? _1403.y : _1407.y, _1409.z ? _1403.z : _1407.z);
        }
        bvec3 _1419 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1421 = mix(_1259.xyz, vec3(_1419.x ? _1404.x : _1417.x, _1419.y ? _1404.y : _1417.y, _1419.z ? _1404.z : _1417.z), _1387.xyz * (_Globals._MatCap2ndBlend * ((_295 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1370, _1370 * _699, _Globals._MatCap2ndShadowMask))));
        _1423 = vec4(_1421.x, _1421.y, _1421.z, _1259.w);
    }
    else
    {
        _1423 = _1259;
    }
    highp vec4 _1569;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1442 = mix(_518, _515, vec3(_Globals._RimNormalStrength));
        highp float _1446 = dot(_347, _1442) * 0.5 + 0.5;
        highp float _1469 = (_295 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1442, _363)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1473 = mix(_1469, _1469 * clamp((_1446 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1474 = _1469 * clamp(((1.0 - _1446) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1484 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1493 = clamp((_1473 - _1484) / clamp(fwidth(_1473) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1484), 0.0, 1.0), 0.0, 1.0);
        highp float _1500 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1510 = clamp((_1474 * _Globals._RimDirStrength + (-_1500)) / clamp(fwidth(_1474 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1500), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1522 = vec3(1.0 - _Globals._RimEnableLighting) + (_698 * _Globals._RimEnableLighting);
        highp vec3 _1524 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _474.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1525 = _1524 * _1522;
        highp vec3 _1531 = _1524 * _1522 + _1423.xyz;
        highp vec3 _1532 = _1423.xyz * _1525;
        bvec3 _1534 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1535 = vec3(_1534.x ? _1525.x : _271.x, _1534.y ? _1525.y : _271.y, _1534.z ? _1525.z : _271.z);
        bvec3 _1537 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1539 = _Globals._RimBlendMode == 2u;
        highp vec3 _1545;
        if (_1539)
        {
            highp vec3 _1543 = (-_1423.xyz) * _1525 + _1531;
            bvec3 _1859 = isnan(_1543);
            bvec3 _1860 = isnan(_1423.xyz);
            highp vec3 _1861 = max(_1543, _1423.xyz);
            highp vec3 _1862 = vec3(_1859.x ? _1423.xyz.x : _1861.x, _1859.y ? _1423.xyz.y : _1861.y, _1859.z ? _1423.xyz.z : _1861.z);
            _1545 = vec3(_1860.x ? _1543.x : _1862.x, _1860.y ? _1543.y : _1862.y, _1860.z ? _1543.z : _1862.z);
        }
        else
        {
            _1545 = vec3(_1537.x ? _1531.x : _1535.x, _1537.y ? _1531.y : _1535.y, _1537.z ? _1531.z : _1535.z);
        }
        bvec3 _1547 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1550 = mix(_1423.xyz, vec3(_1547.x ? _1532.x : _1545.x, _1547.y ? _1532.y : _1545.y, _1547.z ? _1532.z : _1545.z), vec3(mix(_1493, _1493 * _699, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1552 = _Globals._RimIndirColor.xyz * _1522;
        highp vec3 _1556 = _Globals._RimIndirColor.xyz * _1522 + _1550;
        highp vec3 _1557 = _1550 * _1552;
        highp vec3 _1558 = vec3(_1534.x ? _1552.x : _271.x, _1534.y ? _1552.y : _271.y, _1534.z ? _1552.z : _271.z);
        highp vec3 _1565;
        if (_1539)
        {
            highp vec3 _1563 = (-_1550) * _1552 + _1556;
            bvec3 _1864 = isnan(_1563);
            bvec3 _1865 = isnan(_1550);
            highp vec3 _1866 = max(_1563, _1550);
            highp vec3 _1867 = vec3(_1864.x ? _1550.x : _1866.x, _1864.y ? _1550.y : _1866.y, _1864.z ? _1550.z : _1866.z);
            _1565 = vec3(_1865.x ? _1563.x : _1867.x, _1865.y ? _1563.y : _1867.y, _1865.z ? _1563.z : _1867.z);
        }
        else
        {
            _1565 = vec3(_1537.x ? _1556.x : _1558.x, _1537.y ? _1556.y : _1558.y, _1537.z ? _1556.z : _1558.z);
        }
        highp vec3 _1567 = mix(_1550, vec3(_1547.x ? _1557.x : _1565.x, _1547.y ? _1557.y : _1565.y, _1547.z ? _1557.z : _1565.z), vec3(mix(_1510, _1510 * _699, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1569 = vec4(_1567.x, _1567.y, _1567.z, _1423.w);
    }
    else
    {
        _1569 = _1423;
    }
    highp vec4 _1634;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1583 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _351, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1597 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1603;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1603 = roundEven(_1597);
        }
        else
        {
            _1603 = _1597;
        }
        highp vec3 _1610 = mix(_1583, _1583 * _474.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1614 = _1569.xyz + _1610;
        highp vec3 _1615 = _1569.xyz * _1610;
        bvec3 _1617 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1618 = vec3(_1617.x ? _1610.x : _271.x, _1617.y ? _1610.y : _271.y, _1617.z ? _1610.z : _271.z);
        bvec3 _1620 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1628;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1626 = (-_1569.xyz) * _1610 + _1614;
            bvec3 _1869 = isnan(_1626);
            bvec3 _1870 = isnan(_1569.xyz);
            highp vec3 _1871 = max(_1626, _1569.xyz);
            highp vec3 _1872 = vec3(_1869.x ? _1569.xyz.x : _1871.x, _1869.y ? _1569.xyz.y : _1871.y, _1869.z ? _1569.xyz.z : _1871.z);
            _1628 = vec3(_1870.x ? _1626.x : _1872.x, _1870.y ? _1626.y : _1872.y, _1870.z ? _1626.z : _1872.z);
        }
        else
        {
            _1628 = vec3(_1620.x ? _1614.x : _1618.x, _1620.y ? _1614.y : _1618.y, _1620.z ? _1614.z : _1618.z);
        }
        bvec3 _1630 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1632 = mix(_1569.xyz, vec3(_1630.x ? _1615.x : _1628.x, _1630.y ? _1615.y : _1628.y, _1630.z ? _1615.z : _1628.z), vec3((_Globals._EmissionBlend * mix(1.0, _1603, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1634 = vec4(_1632.x, _1632.y, _1632.z, _1569.w);
    }
    else
    {
        _1634 = _1569;
    }
    highp vec4 _1699;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1648 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _351, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1662 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1668;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1668 = roundEven(_1662);
        }
        else
        {
            _1668 = _1662;
        }
        highp vec3 _1675 = mix(_1648, _1648 * _474.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1679 = _1634.xyz + _1675;
        highp vec3 _1680 = _1634.xyz * _1675;
        bvec3 _1682 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1683 = vec3(_1682.x ? _1675.x : _271.x, _1682.y ? _1675.y : _271.y, _1682.z ? _1675.z : _271.z);
        bvec3 _1685 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1693;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1691 = (-_1634.xyz) * _1675 + _1679;
            bvec3 _1874 = isnan(_1691);
            bvec3 _1875 = isnan(_1634.xyz);
            highp vec3 _1876 = max(_1691, _1634.xyz);
            highp vec3 _1877 = vec3(_1874.x ? _1634.xyz.x : _1876.x, _1874.y ? _1634.xyz.y : _1876.y, _1874.z ? _1634.xyz.z : _1876.z);
            _1693 = vec3(_1875.x ? _1691.x : _1877.x, _1875.y ? _1691.y : _1877.y, _1875.z ? _1691.z : _1877.z);
        }
        else
        {
            _1693 = vec3(_1685.x ? _1679.x : _1683.x, _1685.y ? _1679.y : _1683.y, _1685.z ? _1679.z : _1683.z);
        }
        bvec3 _1695 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1697 = mix(_1634.xyz, vec3(_1695.x ? _1680.x : _1693.x, _1695.y ? _1680.y : _1693.y, _1695.z ? _1680.z : _1693.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1668, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1699 = vec4(_1697.x, _1697.y, _1697.z, _1634.w);
    }
    else
    {
        _1699 = _1634;
    }
    bvec3 _1701 = bvec3(_295 < 0.0);
    highp vec3 _1710 = mix(_1699.xyz, _Globals._BackfaceColor.xyz * _698, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1745 = vec3(_1701.x ? _1710.x : _1699.xyz.x, _1701.y ? _1710.y : _1699.xyz.y, _1701.z ? _1710.z : _1699.xyz.z).xyz;
    highp vec3 _1753 = mix(_1745, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1745, vec3(pow(clamp(1.0 - abs(dot(_518, _363)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_295 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_355)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1753.x, _1753.y, _1753.z, _1699.w), vec4(out_var_TEXCOORD9));
}
