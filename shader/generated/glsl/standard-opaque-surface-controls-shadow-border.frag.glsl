#version 300 es
precision mediump float;
precision highp int;

vec3 _276;
vec3 _282;
vec4 _283;

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
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
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
    highp float _301 = float(gl_FrontFacing ? 1 : (-1));
    highp float _352;
    do
    {
        highp vec3 _308 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _309 = _308.xy;
        highp float _315 = _308.z;
        if ((any(lessThan(_309, vec2(0.0))) || any(greaterThan(_309, vec2(1.0)))) || (_315 > 1.0))
        {
            _352 = 1.0;
            break;
        }
        highp float _325 = _315 + _Globals.uShadowBias;
        _352 = (((step(_325, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _309), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_325, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _309), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_325, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _309), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_325, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _309), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _353 = normalize(out_var_TEXCOORD7);
    highp vec3 _357 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _361 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _369 = normalize(_361);
    highp mat3 _378 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _383 = bvec2(_301 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _384 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _397 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _398 = sin(_397);
    highp float _399 = cos(_397);
    highp vec2 _400 = (vec2(_383.x ? _384.x : out_var_TEXCOORD0.xy.x, _383.y ? _384.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _401 = _400.x;
    highp float _402 = _400.y;
    highp vec2 _413 = (vec2(_401 * _399 + (-(_402 * _398)), _401 * _398 + (_402 * _399)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _414 = dFdx(_413);
    highp vec2 _415 = abs(_414);
    highp vec2 _416 = dFdy(_413);
    highp vec2 _417 = abs(_416);
    highp vec4 _421 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _413);
    highp vec3 _428 = pow(abs(_421.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _429 = _428.z;
    highp float _430 = _428.y;
    bvec4 _432 = bvec4(_429 > _430);
    highp vec4 _433 = vec4(_429, _430, -1.0, 0.666666686534881591796875);
    highp vec4 _434 = vec4(_430, _429, 0.0, -0.3333333432674407958984375);
    highp vec4 _435 = vec4(_432.x ? _433.x : _434.x, _432.y ? _433.y : _434.y, _432.z ? _433.z : _434.z, _432.w ? _433.w : _434.w);
    highp float _436 = _435.x;
    highp float _437 = _428.x;
    bvec4 _439 = bvec4(_436 > _437);
    highp vec4 _442 = vec4(_436, _435.yw, _437);
    highp vec4 _444 = vec4(_437, _435.yz, _436);
    highp vec4 _445 = vec4(_439.x ? _442.x : _444.x, _439.y ? _442.y : _444.y, _439.z ? _442.z : _444.z, _439.w ? _442.w : _444.w);
    highp float _450 = _445.x - (isnan(_445.y) ? _445.w : (isnan(_445.w) ? _445.y : min(_445.w, _445.y)));
    highp float _463 = clamp((_450 / (_445.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _466 = clamp(_445.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _480 = vec3((-_466) * _463 + _466) + (clamp(abs((fract(vec3(abs(_445.z + ((_445.w - _445.y) / (6.0 * _450 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_466 * _463));
    highp vec4 _484 = vec4(_480.x, _480.y, _480.z, _421.w) * _Globals._Color;
    highp vec3 _516;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _497 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _413 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _497.w = _497.w * _497.x;
        highp vec2 _508 = ((_497.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _509 = vec3(_508.x, _508.y, _282.z);
        highp vec2 _510 = _508.xy;
        _509.z = sqrt(1.0 - clamp(dot(_510, _510), 0.0, 1.0));
        _516 = _509;
    }
    else
    {
        _516 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _518 = normalize(_378 * _516);
    bvec3 _523 = bvec3(_301 < (_Globals._FlipNormal - 1.0));
    highp vec3 _524 = -_518;
    highp vec3 _525 = vec3(_523.x ? _524.x : _518.x, _523.y ? _524.y : _518.y, _523.z ? _524.z : _518.z);
    highp vec3 _528 = normalize(out_var_TEXCOORD4);
    _484.w = 1.0;
    highp vec4 _752;
    highp float _753;
    if (_Globals._UseShadow != 0u)
    {
        highp float _563 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _566 = clamp(_352 + distance(_353, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _571;
        _571.x = clamp(dot(_353, mix(_528, _525, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _566, _Globals._ShadowReceive);
        _571.y = clamp(dot(_353, mix(_528, _525, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _566, _Globals._Shadow2ndReceive);
        _571.z = clamp(dot(_353, mix(_528, _525, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _566, _Globals._Shadow3rdReceive);
        highp vec2 _592 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _1861 = isnan(_415);
        bvec2 _1862 = isnan(_592);
        highp vec2 _1863 = max(_415, _592);
        highp vec2 _1864 = vec2(_1861.x ? _592.x : _1863.x, _1861.y ? _592.y : _1863.y);
        bvec2 _1866 = isnan(_417);
        bvec2 _1867 = isnan(_592);
        highp vec2 _1868 = max(_417, _592);
        highp vec2 _1869 = vec2(_1866.x ? _592.x : _1868.x, _1866.y ? _592.y : _1868.y);
        highp vec4 _596 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _413, vec2(_1862.x ? _415.x : _1864.x, _1862.y ? _415.y : _1864.y), vec2(_1867.x ? _417.x : _1869.x, _1867.y ? _417.y : _1869.y));
        highp vec4 _604;
        _604.x = clamp(_596.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _604.y = clamp(_596.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _604.z = clamp(_596.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _623 = _Globals._ShadowPostAO != 0u;
        bvec3 _624 = bvec3(_623);
        highp vec3 _627 = _571.xyz * _604.xyz;
        highp vec3 _628 = vec3(_624.x ? _571.xyz.x : _627.x, _624.y ? _571.xyz.y : _627.y, _624.z ? _571.xyz.z : _627.z);
        highp float _629 = _628.x;
        highp float _633 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _634 = clamp(_633, 0.0, 1.0);
        highp float _636 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _643 = _628.y;
        highp float _648 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _660 = clamp(_633 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _667 = _628.z;
        highp float _672 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _681 = vec4((_629 - _634) / clamp(fwidth(_629) * _563 + (_636 - _634), 0.0, 1.0), (_643 - _648) / clamp(fwidth(_643) * _563 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _648), 0.0, 1.0), (_667 - _672) / clamp(fwidth(_667) * _563 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _672), 0.0, 1.0), (_629 - _660) / clamp(fwidth(_629) * _563 + (_636 - _660), 0.0, 1.0));
        bvec4 _682 = bvec4(_623);
        highp vec4 _684 = _681 * _604.xyzx;
        highp vec4 _686 = clamp(vec4(_682.x ? _684.x : _681.x, _682.y ? _684.y : _681.y, _682.z ? _684.z : _681.z, _682.w ? _684.w : _681.w), vec4(0.0), vec4(1.0));
        highp float _691 = (_301 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _693 = _686.x * _691;
        highp vec3 _728 = mix(mix(_484.xyz * _Globals._ShadowColor.xyz, (_484.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_686.y * _691)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_484.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_686.z * _691)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _734 = _484.xyz * out_var_TEXCOORD6;
        highp vec3 _740 = mix(mix(_728, _728 * _484.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _484.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _1871 = isnan(_740);
        bvec3 _1872 = isnan(_734);
        highp vec3 _1873 = min(_740, _734);
        highp vec3 _1874 = vec3(_1871.x ? _734.x : _1873.x, _1871.y ? _734.y : _1873.y, _1871.z ? _734.z : _1873.z);
        highp vec3 _748 = mix(mix(vec3(_1872.x ? _740.x : _1874.x, _1872.y ? _740.y : _1874.y, _1872.z ? _740.z : _1874.z), _734, _Globals._ShadowBorderColor.xyz * (_686.w * _691)), _734, vec3(mix(1.0, _693, _Globals._ShadowStrength)));
        _752 = vec4(_748.x, _748.y, _748.z, _484.w);
        _753 = _693;
    }
    else
    {
        highp vec3 _750 = _484.xyz * out_var_TEXCOORD6;
        _752 = vec4(_750.x, _750.y, _750.z, _484.w);
        _753 = 1.0;
    }
    highp vec3 _756 = vec3(_Globals._LightMaxLimit);
    bvec3 _1876 = isnan(out_var_TEXCOORD6);
    bvec3 _1877 = isnan(_756);
    highp vec3 _1878 = min(out_var_TEXCOORD6, _756);
    highp vec3 _1879 = vec3(_1876.x ? _756.x : _1878.x, _1876.y ? _756.y : _1878.y, _1876.z ? _756.z : _1878.z);
    highp vec3 _757 = vec3(_1877.x ? out_var_TEXCOORD6.x : _1879.x, _1877.y ? out_var_TEXCOORD6.y : _1879.y, _1877.z ? out_var_TEXCOORD6.z : _1879.z);
    highp float _758 = clamp(_753, 0.0, 1.0);
    highp vec3 _760 = _484.xyz * _Globals._LightMaxLimit;
    bvec3 _1881 = isnan(_752.xyz);
    bvec3 _1882 = isnan(_760);
    highp vec3 _1883 = min(_752.xyz, _760);
    highp vec3 _1884 = vec3(_1881.x ? _760.x : _1883.x, _1881.y ? _760.y : _1883.y, _1881.z ? _760.z : _1883.z);
    highp vec3 _761 = vec3(_1882.x ? _752.xyz.x : _1884.x, _1882.y ? _752.xyz.y : _1884.y, _1882.z ? _752.xyz.z : _1884.z);
    highp vec4 _808;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _778 = pow(clamp(1.0 - abs(dot(mix(_528, _525, vec3(_Globals._RimShadeNormalStrength)), _369)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _787 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _801 = _761.xyz;
        highp vec3 _806 = mix(_801, _801 * _Globals._RimShadeColor.xyz, vec3(clamp((_778 - _787) / clamp(fwidth(_778) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _787), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _808 = vec4(_806.x, _806.y, _806.z, _752.w);
    }
    else
    {
        _808 = vec4(_761.x, _761.y, _761.z, _752.w);
    }
    highp vec4 _881;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _832 = dot(normalize(((-_369) * _Globals._BacklightViewStrength) + _353), mix(_528, _525, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _842;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _842 = _832 * clamp(_352 + distance(_353, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _842 = _832;
        }
        highp float _851 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _879 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _484.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_301 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_369, _353) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_842 - _851) / clamp(fwidth(_842) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _851), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _757 + _808.xyz;
        _881 = vec4(_879.x, _879.y, _879.z, _808.w);
    }
    else
    {
        _881 = _808;
    }
    highp vec4 _1153;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _896 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _413 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _898 = _Globals._Smoothness * _896.x;
        highp vec3 _901 = dFdx(_525);
        highp vec3 _902 = abs(_901);
        highp vec3 _903 = dFdy(_525);
        highp vec3 _904 = abs(_903);
        highp float _905 = dot(_902, _902);
        highp float _906 = dot(_904, _904);
        highp float _907 = isnan(_906) ? _905 : (isnan(_905) ? _906 : max(_905, _906));
        highp float _910 = (_907 / (_907 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _913 = clamp(1.0 - (isnan(_910) ? 0.0 : (isnan(0.0) ? _910 : max(0.0, _910))), 0.0, 1.0);
        highp float _914 = isnan(_913) ? _898 : (isnan(_898) ? _913 : min(_898, _913));
        highp float _915 = 1.0 - _914;
        highp float _916 = _915 * _915;
        highp vec4 _926 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _413 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _928 = _Globals._Metallic * _926.x;
        highp vec3 _931 = _881.xyz - (_881.xyz * _928);
        highp vec3 _937 = mix(vec3(_Globals._Reflectance), _484.xyz, vec3(_928));
        highp vec4 _947 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _413 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _948 = _Globals._ReflectionColor * _947;
        highp vec4 _1049;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1021;
            do
            {
                highp vec3 _959 = mix(_528, _525, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _961 = normalize(_369 + _353);
                highp float _963 = clamp(dot(_959, _961), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _972 = pow(_963, 1.0 / _916);
                    highp float _979 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1021 = vec3(clamp((_972 - _979) / clamp(fwidth(_972) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _979), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _991 = clamp(dot(_959, _369), 0.0, 1.0);
                highp float _993 = clamp(dot(_959, _353), 0.0, 1.0);
                highp float _996 = isnan(0.00200000009499490261077880859375) ? _916 : (isnan(_916) ? 0.00200000009499490261077880859375 : max(_916, 0.00200000009499490261077880859375));
                highp float _997 = 1.0 - _996;
                highp float _1001 = _996 * _996;
                highp float _1004 = (_963 * _1001 + (-_963)) * _963 + 1.0;
                highp float _1012 = 1.0 - clamp(dot(_353, _961), 0.0, 1.0);
                _1021 = (_937 + ((((((vec3(1.0) - _937) * _1012) * _1012) * _1012) * _1012) * _1012)) * (((0.5 / ((_993 * (_991 * _997 + _996) + (_991 * (_993 * _997 + _996))) + 9.9999997473787516355514526367188e-06)) * (_1001 / (_1004 * _1004 + 1.0000000116860974230803549289703e-07))) * _993);
                break;
            } while(false);
            highp vec3 _1022 = _931.xyz;
            highp vec3 _1023 = _948.xyz;
            highp vec3 _1024 = _1023 * _757;
            highp vec3 _1029 = _1023 * _757 + _1022;
            highp vec3 _1030 = _1022 * _1024;
            bvec3 _1032 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1033 = vec3(_1032.x ? _1024.x : _276.x, _1032.y ? _1024.y : _276.y, _1032.z ? _1024.z : _276.z);
            bvec3 _1035 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1043;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1041 = (-_1022) * _1024 + _1029;
                bvec3 _1906 = isnan(_1041);
                bvec3 _1907 = isnan(_1022);
                highp vec3 _1908 = max(_1041, _1022);
                highp vec3 _1909 = vec3(_1906.x ? _1022.x : _1908.x, _1906.y ? _1022.y : _1908.y, _1906.z ? _1022.z : _1908.z);
                _1043 = vec3(_1907.x ? _1041.x : _1909.x, _1907.y ? _1041.y : _1909.y, _1907.z ? _1041.z : _1909.z);
            }
            else
            {
                _1043 = vec3(_1035.x ? _1029.x : _1033.x, _1035.y ? _1029.y : _1033.y, _1035.z ? _1029.z : _1033.z);
            }
            bvec3 _1045 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1047 = mix(_1022, vec3(_1045.x ? _1030.x : _1043.x, _1045.y ? _1030.y : _1043.y, _1045.z ? _1030.z : _1043.z), _1021 * _948.w);
            _1049 = vec4(_1047.x, _1047.y, _1047.z, _881.w);
        }
        else
        {
            _1049 = vec4(_931.x, _931.y, _931.z, _881.w);
        }
        highp vec4 _1152;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1071 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1078 = reflect(-_369, mix(_528, _525, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1081 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1078, _915 * ((-4.19999980926513671875) * _915 + 10.19999980926513671875));
            highp vec3 _1101 = ((_1081.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1081.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _757, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1107 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1078, _915 * 8.0).xyz * 1.0;
            highp float _1118 = 1.0 - clamp(dot(_525, _369), 0.0, 1.0);
            highp vec3 _1127 = _948.xyz;
            highp vec3 _1132 = _1049.xyz + _1127;
            highp vec3 _1133 = _1049.xyz * _1127;
            bvec3 _1135 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1136 = vec3(_1135.x ? _1127.x : _276.x, _1135.y ? _1127.y : _276.y, _1135.z ? _1127.z : _276.z);
            bvec3 _1138 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1146;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1144 = (-_1049.xyz) * _1127 + _1132;
                bvec3 _1911 = isnan(_1144);
                bvec3 _1912 = isnan(_1049.xyz);
                highp vec3 _1913 = max(_1144, _1049.xyz);
                highp vec3 _1914 = vec3(_1911.x ? _1049.xyz.x : _1913.x, _1911.y ? _1049.xyz.y : _1913.y, _1911.z ? _1049.xyz.z : _1913.z);
                _1146 = vec3(_1912.x ? _1144.x : _1914.x, _1912.y ? _1144.y : _1914.y, _1912.z ? _1144.z : _1914.z);
            }
            else
            {
                _1146 = vec3(_1138.x ? _1132.x : _1136.x, _1138.y ? _1132.y : _1136.y, _1138.z ? _1132.z : _1136.z);
            }
            bvec3 _1148 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1150 = mix(_1049.xyz, vec3(_1148.x ? _1133.x : _1146.x, _1148.y ? _1133.y : _1146.y, _1148.z ? _1133.z : _1146.z), ((vec3(_1071.x ? _1101.x : _1107.x, _1071.y ? _1101.y : _1107.y, _1071.z ? _1101.z : _1107.z) * (1.0 / (_916 * _916 + 1.0))) * mix(_937, vec3(clamp(_914 + (1.0 - ((-_928) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1118 * _1118) * _1118) * _1118) * _1118))) * _948.w);
            _1152 = vec4(_1150.x, _1150.y, _1150.z, _1049.w);
        }
        else
        {
            _1152 = _1049;
        }
        _1153 = _1152;
    }
    else
    {
        _1153 = _881;
    }
    highp vec4 _1318;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1198;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1175 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _413 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1175.w = _1175.w * _1175.x;
            highp vec2 _1186 = ((_1175.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1187 = vec3(_1186.x, _1186.y, _282.z);
            highp vec2 _1188 = _1186.xy;
            _1187.z = sqrt(1.0 - clamp(dot(_1188, _1188), 0.0, 1.0));
            highp vec3 _1195 = normalize(_378 * _1187);
            highp vec3 _1196 = -_1195;
            _1198 = vec3(_523.x ? _1196.x : _1195.x, _523.y ? _1196.y : _1195.y, _523.z ? _1196.z : _1195.z);
        }
        else
        {
            _1198 = mix(_528, _525, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1215 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1222 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1223 = vec3(_1215.x ? _369.x : _1222.x, _1215.y ? _369.y : _1222.y, _1215.z ? _369.z : _1222.z);
        bvec3 _1224 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1231 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1232 = vec3(_1224.x ? vec3(0.0, 1.0, 0.0).x : _1231.x, _1224.y ? vec3(0.0, 1.0, 0.0).y : _1231.y, _1224.z ? vec3(0.0, 1.0, 0.0).z : _1231.z);
        highp vec3 _1236 = normalize(_1232 - (_1223 * dot(_1223, _1232)));
        highp vec4 _1258 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1198) * mat3(cross(_1223, _1236), _1236, _1223)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1282 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _413 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1284 = mix(_1258.xyz, _1258.xyz * _757, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1291 = mix(_1284, _1284 * _484.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1298 = _1153.xyz + _1291;
        highp vec3 _1299 = _1153.xyz * _1291;
        bvec3 _1301 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1302 = vec3(_1301.x ? _1291.x : _276.x, _1301.y ? _1291.y : _276.y, _1301.z ? _1291.z : _276.z);
        bvec3 _1304 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1312;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1310 = (-_1153.xyz) * _1291 + _1298;
            bvec3 _1916 = isnan(_1310);
            bvec3 _1917 = isnan(_1153.xyz);
            highp vec3 _1918 = max(_1310, _1153.xyz);
            highp vec3 _1919 = vec3(_1916.x ? _1153.xyz.x : _1918.x, _1916.y ? _1153.xyz.y : _1918.y, _1916.z ? _1153.xyz.z : _1918.z);
            _1312 = vec3(_1917.x ? _1310.x : _1919.x, _1917.y ? _1310.y : _1919.y, _1917.z ? _1310.z : _1919.z);
        }
        else
        {
            _1312 = vec3(_1304.x ? _1298.x : _1302.x, _1304.y ? _1298.y : _1302.y, _1304.z ? _1298.z : _1302.z);
        }
        bvec3 _1314 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1316 = mix(_1153.xyz, vec3(_1314.x ? _1299.x : _1312.x, _1314.y ? _1299.y : _1312.y, _1314.z ? _1299.z : _1312.z), _1282.xyz * (_Globals._MatCapBlend * ((_301 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1258.w, _1258.w * _758, _Globals._MatCapShadowMask))));
        _1318 = vec4(_1316.x, _1316.y, _1316.z, _1153.w);
    }
    else
    {
        _1318 = _1153;
    }
    highp vec4 _1482;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1363;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1340 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _413 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1340.w = _1340.w * _1340.x;
            highp vec2 _1351 = ((_1340.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1352 = vec3(_1351.x, _1351.y, _282.z);
            highp vec2 _1353 = _1351.xy;
            _1352.z = sqrt(1.0 - clamp(dot(_1353, _1353), 0.0, 1.0));
            highp vec3 _1360 = normalize(_378 * _1352);
            highp vec3 _1361 = -_1360;
            _1363 = vec3(_523.x ? _1361.x : _1360.x, _523.y ? _1361.y : _1360.y, _523.z ? _1361.z : _1360.z);
        }
        else
        {
            _1363 = mix(_528, _525, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1379 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1386 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1387 = vec3(_1379.x ? _369.x : _1386.x, _1379.y ? _369.y : _1386.y, _1379.z ? _369.z : _1386.z);
        bvec3 _1388 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1395 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1396 = vec3(_1388.x ? vec3(0.0, 1.0, 0.0).x : _1395.x, _1388.y ? vec3(0.0, 1.0, 0.0).y : _1395.y, _1388.z ? vec3(0.0, 1.0, 0.0).z : _1395.z);
        highp vec3 _1400 = normalize(_1396 - (_1387 * dot(_1387, _1396)));
        highp vec4 _1422 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1363 * mat3(cross(_1387, _1400), _1400, _1387)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1423 = _1422.xyz;
        highp float _1429 = _1422.w;
        highp vec4 _1446 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _413 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1448 = mix(_1423, _1423 * _757, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1455 = mix(_1448, _1448 * _484.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1462 = _1318.xyz + _1455;
        highp vec3 _1463 = _1318.xyz * _1455;
        bvec3 _1465 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1466 = vec3(_1465.x ? _1455.x : _276.x, _1465.y ? _1455.y : _276.y, _1465.z ? _1455.z : _276.z);
        bvec3 _1468 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1476;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1474 = (-_1318.xyz) * _1455 + _1462;
            bvec3 _1921 = isnan(_1474);
            bvec3 _1922 = isnan(_1318.xyz);
            highp vec3 _1923 = max(_1474, _1318.xyz);
            highp vec3 _1924 = vec3(_1921.x ? _1318.xyz.x : _1923.x, _1921.y ? _1318.xyz.y : _1923.y, _1921.z ? _1318.xyz.z : _1923.z);
            _1476 = vec3(_1922.x ? _1474.x : _1924.x, _1922.y ? _1474.y : _1924.y, _1922.z ? _1474.z : _1924.z);
        }
        else
        {
            _1476 = vec3(_1468.x ? _1462.x : _1466.x, _1468.y ? _1462.y : _1466.y, _1468.z ? _1462.z : _1466.z);
        }
        bvec3 _1478 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1480 = mix(_1318.xyz, vec3(_1478.x ? _1463.x : _1476.x, _1478.y ? _1463.y : _1476.y, _1478.z ? _1463.z : _1476.z), _1446.xyz * (_Globals._MatCap2ndBlend * ((_301 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1429, _1429 * _758, _Globals._MatCap2ndShadowMask))));
        _1482 = vec4(_1480.x, _1480.y, _1480.z, _1318.w);
    }
    else
    {
        _1482 = _1318;
    }
    highp vec4 _1628;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1501 = mix(_528, _525, vec3(_Globals._RimNormalStrength));
        highp float _1505 = dot(_353, _1501) * 0.5 + 0.5;
        highp float _1528 = (_301 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1501, _369)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1532 = mix(_1528, _1528 * clamp((_1505 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1533 = _1528 * clamp(((1.0 - _1505) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1543 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1552 = clamp((_1532 - _1543) / clamp(fwidth(_1532) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1543), 0.0, 1.0), 0.0, 1.0);
        highp float _1559 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1569 = clamp((_1533 * _Globals._RimDirStrength + (-_1559)) / clamp(fwidth(_1533 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1559), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1581 = vec3(1.0 - _Globals._RimEnableLighting) + (_757 * _Globals._RimEnableLighting);
        highp vec3 _1583 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _484.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1584 = _1583 * _1581;
        highp vec3 _1590 = _1583 * _1581 + _1482.xyz;
        highp vec3 _1591 = _1482.xyz * _1584;
        bvec3 _1593 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1594 = vec3(_1593.x ? _1584.x : _276.x, _1593.y ? _1584.y : _276.y, _1593.z ? _1584.z : _276.z);
        bvec3 _1596 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1598 = _Globals._RimBlendMode == 2u;
        highp vec3 _1604;
        if (_1598)
        {
            highp vec3 _1602 = (-_1482.xyz) * _1584 + _1590;
            bvec3 _1926 = isnan(_1602);
            bvec3 _1927 = isnan(_1482.xyz);
            highp vec3 _1928 = max(_1602, _1482.xyz);
            highp vec3 _1929 = vec3(_1926.x ? _1482.xyz.x : _1928.x, _1926.y ? _1482.xyz.y : _1928.y, _1926.z ? _1482.xyz.z : _1928.z);
            _1604 = vec3(_1927.x ? _1602.x : _1929.x, _1927.y ? _1602.y : _1929.y, _1927.z ? _1602.z : _1929.z);
        }
        else
        {
            _1604 = vec3(_1596.x ? _1590.x : _1594.x, _1596.y ? _1590.y : _1594.y, _1596.z ? _1590.z : _1594.z);
        }
        bvec3 _1606 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1609 = mix(_1482.xyz, vec3(_1606.x ? _1591.x : _1604.x, _1606.y ? _1591.y : _1604.y, _1606.z ? _1591.z : _1604.z), vec3(mix(_1552, _1552 * _758, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1611 = _Globals._RimIndirColor.xyz * _1581;
        highp vec3 _1615 = _Globals._RimIndirColor.xyz * _1581 + _1609;
        highp vec3 _1616 = _1609 * _1611;
        highp vec3 _1617 = vec3(_1593.x ? _1611.x : _276.x, _1593.y ? _1611.y : _276.y, _1593.z ? _1611.z : _276.z);
        highp vec3 _1624;
        if (_1598)
        {
            highp vec3 _1622 = (-_1609) * _1611 + _1615;
            bvec3 _1931 = isnan(_1622);
            bvec3 _1932 = isnan(_1609);
            highp vec3 _1933 = max(_1622, _1609);
            highp vec3 _1934 = vec3(_1931.x ? _1609.x : _1933.x, _1931.y ? _1609.y : _1933.y, _1931.z ? _1609.z : _1933.z);
            _1624 = vec3(_1932.x ? _1622.x : _1934.x, _1932.y ? _1622.y : _1934.y, _1932.z ? _1622.z : _1934.z);
        }
        else
        {
            _1624 = vec3(_1596.x ? _1615.x : _1617.x, _1596.y ? _1615.y : _1617.y, _1596.z ? _1615.z : _1617.z);
        }
        highp vec3 _1626 = mix(_1609, vec3(_1606.x ? _1616.x : _1624.x, _1606.y ? _1616.y : _1624.y, _1606.z ? _1616.z : _1624.z), vec3(mix(_1569, _1569 * _758, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1628 = vec4(_1626.x, _1626.y, _1626.z, _1482.w);
    }
    else
    {
        _1628 = _1482;
    }
    highp vec4 _1693;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1642 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _357, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1656 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1662;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1662 = roundEven(_1656);
        }
        else
        {
            _1662 = _1656;
        }
        highp vec3 _1669 = mix(_1642, _1642 * _484.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1673 = _1628.xyz + _1669;
        highp vec3 _1674 = _1628.xyz * _1669;
        bvec3 _1676 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1677 = vec3(_1676.x ? _1669.x : _276.x, _1676.y ? _1669.y : _276.y, _1676.z ? _1669.z : _276.z);
        bvec3 _1679 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1687;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1685 = (-_1628.xyz) * _1669 + _1673;
            bvec3 _1936 = isnan(_1685);
            bvec3 _1937 = isnan(_1628.xyz);
            highp vec3 _1938 = max(_1685, _1628.xyz);
            highp vec3 _1939 = vec3(_1936.x ? _1628.xyz.x : _1938.x, _1936.y ? _1628.xyz.y : _1938.y, _1936.z ? _1628.xyz.z : _1938.z);
            _1687 = vec3(_1937.x ? _1685.x : _1939.x, _1937.y ? _1685.y : _1939.y, _1937.z ? _1685.z : _1939.z);
        }
        else
        {
            _1687 = vec3(_1679.x ? _1673.x : _1677.x, _1679.y ? _1673.y : _1677.y, _1679.z ? _1673.z : _1677.z);
        }
        bvec3 _1689 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1691 = mix(_1628.xyz, vec3(_1689.x ? _1674.x : _1687.x, _1689.y ? _1674.y : _1687.y, _1689.z ? _1674.z : _1687.z), vec3((_Globals._EmissionBlend * mix(1.0, _1662, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1693 = vec4(_1691.x, _1691.y, _1691.z, _1628.w);
    }
    else
    {
        _1693 = _1628;
    }
    highp vec4 _1758;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1707 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _357, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1721 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1727;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1727 = roundEven(_1721);
        }
        else
        {
            _1727 = _1721;
        }
        highp vec3 _1734 = mix(_1707, _1707 * _484.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1738 = _1693.xyz + _1734;
        highp vec3 _1739 = _1693.xyz * _1734;
        bvec3 _1741 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1742 = vec3(_1741.x ? _1734.x : _276.x, _1741.y ? _1734.y : _276.y, _1741.z ? _1734.z : _276.z);
        bvec3 _1744 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1752;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1750 = (-_1693.xyz) * _1734 + _1738;
            bvec3 _1941 = isnan(_1750);
            bvec3 _1942 = isnan(_1693.xyz);
            highp vec3 _1943 = max(_1750, _1693.xyz);
            highp vec3 _1944 = vec3(_1941.x ? _1693.xyz.x : _1943.x, _1941.y ? _1693.xyz.y : _1943.y, _1941.z ? _1693.xyz.z : _1943.z);
            _1752 = vec3(_1942.x ? _1750.x : _1944.x, _1942.y ? _1750.y : _1944.y, _1942.z ? _1750.z : _1944.z);
        }
        else
        {
            _1752 = vec3(_1744.x ? _1738.x : _1742.x, _1744.y ? _1738.y : _1742.y, _1744.z ? _1738.z : _1742.z);
        }
        bvec3 _1754 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1756 = mix(_1693.xyz, vec3(_1754.x ? _1739.x : _1752.x, _1754.y ? _1739.y : _1752.y, _1754.z ? _1739.z : _1752.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1727, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1758 = vec4(_1756.x, _1756.y, _1756.z, _1693.w);
    }
    else
    {
        _1758 = _1693;
    }
    bvec3 _1760 = bvec3(_301 < 0.0);
    highp vec3 _1769 = mix(_1758.xyz, _Globals._BackfaceColor.xyz * _757, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1804 = vec3(_1760.x ? _1769.x : _1758.xyz.x, _1760.y ? _1769.y : _1758.xyz.y, _1760.z ? _1769.z : _1758.xyz.z).xyz;
    highp vec3 _1812 = mix(_1804, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1804, vec3(pow(clamp(1.0 - abs(dot(_528, _369)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_301 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_361)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1812.x, _1812.y, _1812.z, _1758.w), vec4(out_var_TEXCOORD9));
}
