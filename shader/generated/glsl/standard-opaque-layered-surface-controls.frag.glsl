#version 300 es
precision mediump float;
precision highp int;

vec3 _295;
vec3 _301;

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
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex;
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
    highp vec3 _320 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _327 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _344 = float(gl_FrontFacing ? 1 : (-1));
    highp float _395;
    do
    {
        highp vec3 _351 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _352 = _351.xy;
        highp float _358 = _351.z;
        if ((any(lessThan(_352, vec2(0.0))) || any(greaterThan(_352, vec2(1.0)))) || (_358 > 1.0))
        {
            _395 = 1.0;
            break;
        }
        highp float _368 = _358 + _Globals.uShadowBias;
        _395 = (((step(_368, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _352), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_368, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _352), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_368, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _352), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_368, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _352), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _396 = normalize(out_var_TEXCOORD7);
    highp vec3 _400 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _404 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _405 = length(_404);
    highp vec3 _412 = normalize(_404);
    highp mat3 _421 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _426 = bvec2(_344 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _427 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _440 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _441 = sin(_440);
    highp float _442 = cos(_440);
    highp vec2 _443 = (vec2(_426.x ? _427.x : out_var_TEXCOORD0.xy.x, _426.y ? _427.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _444 = _443.x;
    highp float _445 = _443.y;
    highp vec2 _456 = (vec2(_444 * _442 + (-(_445 * _441)), _444 * _441 + (_445 * _442)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _460 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _456);
    highp vec3 _467 = pow(abs(_460.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _468 = _467.z;
    highp float _469 = _467.y;
    bvec4 _471 = bvec4(_468 > _469);
    highp vec4 _472 = vec4(_468, _469, -1.0, 0.666666686534881591796875);
    highp vec4 _473 = vec4(_469, _468, 0.0, -0.3333333432674407958984375);
    highp vec4 _474 = vec4(_471.x ? _472.x : _473.x, _471.y ? _472.y : _473.y, _471.z ? _472.z : _473.z, _471.w ? _472.w : _473.w);
    highp float _475 = _474.x;
    highp float _476 = _467.x;
    bvec4 _478 = bvec4(_475 > _476);
    highp vec4 _481 = vec4(_475, _474.yw, _476);
    highp vec4 _483 = vec4(_476, _474.yz, _475);
    highp vec4 _484 = vec4(_478.x ? _481.x : _483.x, _478.y ? _481.y : _483.y, _478.z ? _481.z : _483.z, _478.w ? _481.w : _483.w);
    highp float _489 = _484.x - (isnan(_484.y) ? _484.w : (isnan(_484.w) ? _484.y : min(_484.w, _484.y)));
    highp float _502 = clamp((_489 / (_484.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _505 = clamp(_484.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _519 = vec3((-_505) * _502 + _505) + (clamp(abs((fract(vec3(abs(_484.z + ((_484.w - _484.y) / (6.0 * _489 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_505 * _502));
    highp vec4 _523 = vec4(_519.x, _519.y, _519.z, _460.w) * _Globals._Color;
    highp vec3 _555;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _536 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _456 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _536.w = _536.w * _536.x;
        highp vec2 _547 = ((_536.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _548 = vec3(_547.x, _547.y, _301.z);
        highp vec2 _549 = _547.xy;
        _548.z = sqrt(1.0 - clamp(dot(_549, _549), 0.0, 1.0));
        _555 = _548;
    }
    else
    {
        _555 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _557 = normalize(_421 * _555);
    bvec3 _562 = bvec3(_344 < (_Globals._FlipNormal - 1.0));
    highp vec3 _563 = -_557;
    highp vec3 _564 = vec3(_562.x ? _563.x : _557.x, _562.y ? _563.y : _557.y, _562.z ? _563.z : _557.z);
    highp float _566 = clamp(dot(_564, _412), 0.0, 1.0);
    highp vec3 _567 = normalize(out_var_TEXCOORD4);
    highp vec2 _571 = ((_564 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _327, _320)).xy * 0.5) + vec2(0.5);
    bool _572 = out_var_TEXCOORD5.w > 0.0;
    bool _577 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _820;
    highp vec4 _821;
    if (_577)
    {
        bvec2 _583 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _584 = vec2(_583.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _583.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _586 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _587 = vec2(_586.x ? out_var_TEXCOORD1.xy.x : _584.x, _586.y ? out_var_TEXCOORD1.xy.y : _584.y);
        bvec2 _589 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _590 = vec2(_589.x ? out_var_TEXCOORD1.zw.x : _587.x, _589.y ? out_var_TEXCOORD1.zw.y : _587.y);
        bvec2 _592 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _593 = vec2(_592.x ? _571.x : _590.x, _592.y ? _571.y : _590.y);
        highp vec4 _632 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _633 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _641;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _640 = _593;
            _640.x = abs(_593.x - 0.5) + 0.5;
            _641 = _640;
        }
        else
        {
            _641 = _593;
        }
        highp vec2 _642 = _632.xy;
        highp vec2 _643 = _632.zw;
        highp vec2 _644 = _641 * _642 + _643;
        highp vec2 _653;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_593.x < 0.5))
        {
            highp vec2 _652 = _644;
            _652.x = 1.0 - _644.x;
            _653 = _652;
        }
        else
        {
            _653 = _644;
        }
        highp vec2 _660;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _572)
        {
            highp vec2 _659 = _653;
            _659.x = 1.0 - _653.x;
            _660 = _659;
        }
        else
        {
            _660 = _653;
        }
        highp vec2 _665;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _572)
        {
            highp vec2 _664 = _660;
            _664.x = -1.0;
            _665 = _664;
        }
        else
        {
            _665 = _660;
        }
        highp vec2 _671;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_572))
        {
            highp vec2 _670 = _665;
            _670.x = -1.0;
            _671 = _670;
        }
        else
        {
            _671 = _665;
        }
        highp float _674 = sin(_633);
        highp float _675 = cos(_633);
        highp vec2 _676 = ((_671 - _643) / _642) - vec2(0.5);
        highp float _677 = _676.x;
        highp float _678 = _676.y;
        highp vec2 _686 = (vec2(_677 * _675 + (-(_678 * _674)), _677 * _674 + (_678 * _675)) + vec2(0.5)) * _642 + _643;
        uint _690 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _694 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _690 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _690);
        highp float _695 = _686.x;
        highp float _696 = _686.y;
        uint _703 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _713 = ((mix(vec2(_695, 1.0 - _696), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_694 % _703), float(_694 / _703))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _713.y = 1.0 - _713.y;
        highp vec4 _718 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _713);
        highp vec4 _734;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _721 = _718.x;
            highp float _722 = _718.y;
            highp float _723 = _718.z;
            highp float _724 = isnan(_722) ? _721 : (isnan(_721) ? _722 : min(_721, _722));
            highp float _725 = isnan(_722) ? _721 : (isnan(_721) ? _722 : max(_721, _722));
            highp float _726 = isnan(_723) ? _725 : (isnan(_725) ? _723 : min(_725, _723));
            highp float _727 = isnan(_726) ? _724 : (isnan(_724) ? _726 : max(_724, _726));
            _734 = vec4(1.0, 1.0, 1.0, clamp((_727 - 0.5) / clamp(fwidth(_727), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _734 = _718;
        }
        highp vec4 _757;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _738 = clamp(_566 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _741 = 0.5 - abs(_695 - 0.5);
            highp float _748 = 0.5 - abs(_696 - 0.5);
            highp vec4 _756 = _734;
            _756.w = _734.w * (clamp(_741 / clamp(fwidth(_741), 9.9999997473787516355514526367188e-05, _738), 0.0, 1.0) * clamp(_748 / clamp(fwidth(_748), 9.9999997473787516355514526367188e-05, _738), 0.0, 1.0));
            _757 = _756;
        }
        else
        {
            _757 = _734;
        }
        highp vec4 _758 = _Globals._Color2nd * _757;
        highp float _764 = _758.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _456).x;
        _758.w = mix(_764, _764 * clamp((_405 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _790;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_344 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_344 < 0.0)))
        {
            highp vec4 _789 = _758;
            _789.w = 0.0;
            _790 = _789;
        }
        else
        {
            _790 = _758;
        }
        highp vec3 _791 = _523.xyz;
        highp vec3 _800 = _791 + _790.xyz;
        highp vec3 _801 = _791 * _790.xyz;
        bvec3 _803 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _804 = vec3(_803.x ? _790.xyz.x : _295.x, _803.y ? _790.xyz.y : _295.y, _803.z ? _790.xyz.z : _295.z);
        bvec3 _806 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _814;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _812 = (-_791) * _790.xyz + _800;
            bvec3 _2132 = isnan(_812);
            bvec3 _2133 = isnan(_791);
            highp vec3 _2134 = max(_812, _791);
            highp vec3 _2135 = vec3(_2132.x ? _791.x : _2134.x, _2132.y ? _791.y : _2134.y, _2132.z ? _791.z : _2134.z);
            _814 = vec3(_2133.x ? _812.x : _2135.x, _2133.y ? _812.y : _2135.y, _2133.z ? _812.z : _2135.z);
        }
        else
        {
            _814 = vec3(_806.x ? _800.x : _804.x, _806.y ? _800.y : _804.y, _806.z ? _800.z : _804.z);
        }
        bvec3 _816 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _818 = mix(_791, vec3(_816.x ? _801.x : _814.x, _816.y ? _801.y : _814.y, _816.z ? _801.z : _814.z), vec3(_790.w * _Globals._Main2ndEnableLighting));
        _820 = _790;
        _821 = vec4(_818.x, _818.y, _818.z, _523.w);
    }
    else
    {
        _820 = _Globals._Color2nd;
        _821 = _523;
    }
    highp vec4 _822 = _821;
    _822.w = 1.0;
    highp vec4 _996;
    highp float _997;
    if (_Globals._UseShadow != 0u)
    {
        highp float _846 = clamp(dot(_396, mix(_567, _564, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _849 = clamp(dot(_396, mix(_567, _564, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _852 = clamp(dot(_396, mix(_567, _564, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _856 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _859 = clamp(_395 + distance(_396, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _862 = mix(1.0, _859, _Globals._ShadowReceive);
        highp float _863 = _846 * _862;
        highp float _866 = mix(1.0, _859, _Globals._Shadow2ndReceive);
        highp float _870 = mix(1.0, _859, _Globals._Shadow3rdReceive);
        highp float _881 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _882 = clamp(_881, 0.0, 1.0);
        highp float _884 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _897 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _911 = clamp(_881 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _924 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _939 = (_344 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _940 = clamp((_846 * _862 + (-_882)) / clamp(fwidth(_863) * _856 + (_884 - _882), 0.0, 1.0), 0.0, 1.0) * _939;
        highp vec3 _972 = mix(mix(_822.xyz * _Globals._ShadowColor.xyz, (_822.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_849 * _866 + (-_897)) / clamp(fwidth(_849 * _866) * _856 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _897), 0.0, 1.0), 0.0, 1.0) * _939)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_822.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_852 * _870 + (-_924)) / clamp(fwidth(_852 * _870) * _856 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _924), 0.0, 1.0), 0.0, 1.0) * _939)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _978 = _822.xyz * out_var_TEXCOORD6;
        highp vec3 _984 = mix(mix(_972, _972 * _822.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _822.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2137 = isnan(_984);
        bvec3 _2138 = isnan(_978);
        highp vec3 _2139 = min(_984, _978);
        highp vec3 _2140 = vec3(_2137.x ? _978.x : _2139.x, _2137.y ? _978.y : _2139.y, _2137.z ? _978.z : _2139.z);
        highp vec3 _992 = mix(mix(vec3(_2138.x ? _984.x : _2140.x, _2138.y ? _984.y : _2140.y, _2138.z ? _984.z : _2140.z), _978, _Globals._ShadowBorderColor.xyz * (clamp((_846 * _862 + (-_911)) / clamp(fwidth(_863) * _856 + (_884 - _911), 0.0, 1.0), 0.0, 1.0) * _939)), _978, vec3(mix(1.0, _940, _Globals._ShadowStrength)));
        _996 = vec4(_992.x, _992.y, _992.z, _822.w);
        _997 = _940;
    }
    else
    {
        highp vec3 _994 = _822.xyz * out_var_TEXCOORD6;
        _996 = vec4(_994.x, _994.y, _994.z, _822.w);
        _997 = 1.0;
    }
    highp vec3 _1000 = vec3(_Globals._LightMaxLimit);
    bvec3 _2142 = isnan(out_var_TEXCOORD6);
    bvec3 _2143 = isnan(_1000);
    highp vec3 _2144 = min(out_var_TEXCOORD6, _1000);
    highp vec3 _2145 = vec3(_2142.x ? _1000.x : _2144.x, _2142.y ? _1000.y : _2144.y, _2142.z ? _1000.z : _2144.z);
    highp vec3 _1001 = vec3(_2143.x ? out_var_TEXCOORD6.x : _2145.x, _2143.y ? out_var_TEXCOORD6.y : _2145.y, _2143.z ? out_var_TEXCOORD6.z : _2145.z);
    highp float _1002 = clamp(_997, 0.0, 1.0);
    highp vec3 _1004 = _822.xyz * _Globals._LightMaxLimit;
    bvec3 _2147 = isnan(_996.xyz);
    bvec3 _2148 = isnan(_1004);
    highp vec3 _2149 = min(_996.xyz, _1004);
    highp vec3 _2150 = vec3(_2147.x ? _1004.x : _2149.x, _2147.y ? _1004.y : _2149.y, _2147.z ? _1004.z : _2149.z);
    highp vec3 _1005 = vec3(_2148.x ? _996.xyz.x : _2150.x, _2148.y ? _996.xyz.y : _2150.y, _2148.z ? _996.xyz.z : _2150.z);
    highp vec4 _1039;
    if (_577)
    {
        highp vec3 _1009 = _1005.xyz;
        highp vec3 _1019 = _1009 + _820.xyz;
        highp vec3 _1020 = _1009 * _820.xyz;
        bvec3 _1022 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1023 = vec3(_1022.x ? _820.xyz.x : _295.x, _1022.y ? _820.xyz.y : _295.y, _1022.z ? _820.xyz.z : _295.z);
        bvec3 _1025 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1033;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1031 = (-_1009) * _820.xyz + _1019;
            bvec3 _2152 = isnan(_1031);
            bvec3 _2153 = isnan(_1009);
            highp vec3 _2154 = max(_1031, _1009);
            highp vec3 _2155 = vec3(_2152.x ? _1009.x : _2154.x, _2152.y ? _1009.y : _2154.y, _2152.z ? _1009.z : _2154.z);
            _1033 = vec3(_2153.x ? _1031.x : _2155.x, _2153.y ? _1031.y : _2155.y, _2153.z ? _1031.z : _2155.z);
        }
        else
        {
            _1033 = vec3(_1025.x ? _1019.x : _1023.x, _1025.y ? _1019.y : _1023.y, _1025.z ? _1019.z : _1023.z);
        }
        bvec3 _1035 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1037 = mix(_1009, vec3(_1035.x ? _1020.x : _1033.x, _1035.y ? _1020.y : _1033.y, _1035.z ? _1020.z : _1033.z), vec3((-_820.w) * _Globals._Main2ndEnableLighting + _820.w));
        _1039 = vec4(_1037.x, _1037.y, _1037.z, _996.w);
    }
    else
    {
        _1039 = vec4(_1005.x, _1005.y, _1005.z, _996.w);
    }
    highp vec4 _1085;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1055 = pow(clamp(1.0 - abs(dot(mix(_567, _564, vec3(_Globals._RimShadeNormalStrength)), _412)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1064 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1083 = mix(_1039.xyz, _1039.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1055 - _1064) / clamp(fwidth(_1055) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1064), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1085 = vec4(_1083.x, _1083.y, _1083.z, _1039.w);
    }
    else
    {
        _1085 = _1039;
    }
    highp vec4 _1158;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1109 = dot(normalize(((-_412) * _Globals._BacklightViewStrength) + _396), mix(_567, _564, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1119;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1119 = _1109 * clamp(_395 + distance(_396, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1119 = _1109;
        }
        highp float _1128 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1156 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _822.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_344 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_412, _396) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1119 - _1128) / clamp(fwidth(_1119) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1128), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1001 + _1085.xyz;
        _1158 = vec4(_1156.x, _1156.y, _1156.z, _1085.w);
    }
    else
    {
        _1158 = _1085;
    }
    highp vec4 _1430;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1173 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _456 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1175 = _Globals._Smoothness * _1173.x;
        highp vec3 _1178 = dFdx(_564);
        highp vec3 _1179 = abs(_1178);
        highp vec3 _1180 = dFdy(_564);
        highp vec3 _1181 = abs(_1180);
        highp float _1182 = dot(_1179, _1179);
        highp float _1183 = dot(_1181, _1181);
        highp float _1184 = isnan(_1183) ? _1182 : (isnan(_1182) ? _1183 : max(_1182, _1183));
        highp float _1187 = (_1184 / (_1184 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1190 = clamp(1.0 - (isnan(_1187) ? 0.0 : (isnan(0.0) ? _1187 : max(0.0, _1187))), 0.0, 1.0);
        highp float _1191 = isnan(_1190) ? _1175 : (isnan(_1175) ? _1190 : min(_1175, _1190));
        highp float _1192 = 1.0 - _1191;
        highp float _1193 = _1192 * _1192;
        highp vec4 _1203 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _456 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1205 = _Globals._Metallic * _1203.x;
        highp vec3 _1208 = _1158.xyz - (_1158.xyz * _1205);
        highp vec3 _1214 = mix(vec3(_Globals._Reflectance), _822.xyz, vec3(_1205));
        highp vec4 _1224 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _456 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1225 = _Globals._ReflectionColor * _1224;
        highp vec4 _1326;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1298;
            do
            {
                highp vec3 _1236 = mix(_567, _564, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1238 = normalize(_412 + _396);
                highp float _1240 = clamp(dot(_1236, _1238), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1249 = pow(_1240, 1.0 / _1193);
                    highp float _1256 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1298 = vec3(clamp((_1249 - _1256) / clamp(fwidth(_1249) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1256), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1268 = clamp(dot(_1236, _412), 0.0, 1.0);
                highp float _1270 = clamp(dot(_1236, _396), 0.0, 1.0);
                highp float _1273 = isnan(0.00200000009499490261077880859375) ? _1193 : (isnan(_1193) ? 0.00200000009499490261077880859375 : max(_1193, 0.00200000009499490261077880859375));
                highp float _1274 = 1.0 - _1273;
                highp float _1278 = _1273 * _1273;
                highp float _1281 = (_1240 * _1278 + (-_1240)) * _1240 + 1.0;
                highp float _1289 = 1.0 - clamp(dot(_396, _1238), 0.0, 1.0);
                _1298 = (_1214 + ((((((vec3(1.0) - _1214) * _1289) * _1289) * _1289) * _1289) * _1289)) * (((0.5 / ((_1270 * (_1268 * _1274 + _1273) + (_1268 * (_1270 * _1274 + _1273))) + 9.9999997473787516355514526367188e-06)) * (_1278 / (_1281 * _1281 + 1.0000000116860974230803549289703e-07))) * _1270);
                break;
            } while(false);
            highp vec3 _1299 = _1208.xyz;
            highp vec3 _1300 = _1225.xyz;
            highp vec3 _1301 = _1300 * _1001;
            highp vec3 _1306 = _1300 * _1001 + _1299;
            highp vec3 _1307 = _1299 * _1301;
            bvec3 _1309 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1310 = vec3(_1309.x ? _1301.x : _295.x, _1309.y ? _1301.y : _295.y, _1309.z ? _1301.z : _295.z);
            bvec3 _1312 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1320;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1318 = (-_1299) * _1301 + _1306;
                bvec3 _2177 = isnan(_1318);
                bvec3 _2178 = isnan(_1299);
                highp vec3 _2179 = max(_1318, _1299);
                highp vec3 _2180 = vec3(_2177.x ? _1299.x : _2179.x, _2177.y ? _1299.y : _2179.y, _2177.z ? _1299.z : _2179.z);
                _1320 = vec3(_2178.x ? _1318.x : _2180.x, _2178.y ? _1318.y : _2180.y, _2178.z ? _1318.z : _2180.z);
            }
            else
            {
                _1320 = vec3(_1312.x ? _1306.x : _1310.x, _1312.y ? _1306.y : _1310.y, _1312.z ? _1306.z : _1310.z);
            }
            bvec3 _1322 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1324 = mix(_1299, vec3(_1322.x ? _1307.x : _1320.x, _1322.y ? _1307.y : _1320.y, _1322.z ? _1307.z : _1320.z), _1298 * _1225.w);
            _1326 = vec4(_1324.x, _1324.y, _1324.z, _1158.w);
        }
        else
        {
            _1326 = vec4(_1208.x, _1208.y, _1208.z, _1158.w);
        }
        highp vec4 _1429;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1348 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1355 = reflect(-_412, mix(_567, _564, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1358 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1355, _1192 * ((-4.19999980926513671875) * _1192 + 10.19999980926513671875));
            highp vec3 _1378 = ((_1358.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1358.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1001, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1384 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1355, _1192 * 8.0).xyz * 1.0;
            highp float _1395 = 1.0 - _566;
            highp vec3 _1404 = _1225.xyz;
            highp vec3 _1409 = _1326.xyz + _1404;
            highp vec3 _1410 = _1326.xyz * _1404;
            bvec3 _1412 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1413 = vec3(_1412.x ? _1404.x : _295.x, _1412.y ? _1404.y : _295.y, _1412.z ? _1404.z : _295.z);
            bvec3 _1415 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1423;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1421 = (-_1326.xyz) * _1404 + _1409;
                bvec3 _2182 = isnan(_1421);
                bvec3 _2183 = isnan(_1326.xyz);
                highp vec3 _2184 = max(_1421, _1326.xyz);
                highp vec3 _2185 = vec3(_2182.x ? _1326.xyz.x : _2184.x, _2182.y ? _1326.xyz.y : _2184.y, _2182.z ? _1326.xyz.z : _2184.z);
                _1423 = vec3(_2183.x ? _1421.x : _2185.x, _2183.y ? _1421.y : _2185.y, _2183.z ? _1421.z : _2185.z);
            }
            else
            {
                _1423 = vec3(_1415.x ? _1409.x : _1413.x, _1415.y ? _1409.y : _1413.y, _1415.z ? _1409.z : _1413.z);
            }
            bvec3 _1425 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1427 = mix(_1326.xyz, vec3(_1425.x ? _1410.x : _1423.x, _1425.y ? _1410.y : _1423.y, _1425.z ? _1410.z : _1423.z), ((vec3(_1348.x ? _1378.x : _1384.x, _1348.y ? _1378.y : _1384.y, _1348.z ? _1378.z : _1384.z) * (1.0 / (_1193 * _1193 + 1.0))) * mix(_1214, vec3(clamp(_1191 + (1.0 - ((-_1205) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1395 * _1395) * _1395) * _1395) * _1395))) * _1225.w);
            _1429 = vec4(_1427.x, _1427.y, _1427.z, _1326.w);
        }
        else
        {
            _1429 = _1326;
        }
        _1430 = _1429;
    }
    else
    {
        _1430 = _1158;
    }
    highp vec4 _1581;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1475;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1452 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _456 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1452.w = _1452.w * _1452.x;
            highp vec2 _1463 = ((_1452.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1464 = vec3(_1463.x, _1463.y, _301.z);
            highp vec2 _1465 = _1463.xy;
            _1464.z = sqrt(1.0 - clamp(dot(_1465, _1465), 0.0, 1.0));
            highp vec3 _1472 = normalize(_421 * _1464);
            highp vec3 _1473 = -_1472;
            _1475 = vec3(_562.x ? _1473.x : _1472.x, _562.y ? _1473.y : _1472.y, _562.z ? _1473.z : _1472.z);
        }
        else
        {
            _1475 = mix(_567, _564, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1492 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1493 = vec3(_1492.x ? _412.x : _320.x, _1492.y ? _412.y : _320.y, _1492.z ? _412.z : _320.z);
        bvec3 _1494 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1495 = vec3(_1494.x ? vec3(0.0, 1.0, 0.0).x : _327.x, _1494.y ? vec3(0.0, 1.0, 0.0).y : _327.y, _1494.z ? vec3(0.0, 1.0, 0.0).z : _327.z);
        highp vec3 _1499 = normalize(_1495 - (_1493 * dot(_1493, _1495)));
        highp vec4 _1521 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1475) * mat3(cross(_1493, _1499), _1499, _1493)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1545 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _456 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1547 = mix(_1521.xyz, _1521.xyz * _1001, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1554 = mix(_1547, _1547 * _822.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1561 = _1430.xyz + _1554;
        highp vec3 _1562 = _1430.xyz * _1554;
        bvec3 _1564 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1565 = vec3(_1564.x ? _1554.x : _295.x, _1564.y ? _1554.y : _295.y, _1564.z ? _1554.z : _295.z);
        bvec3 _1567 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1575;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1573 = (-_1430.xyz) * _1554 + _1561;
            bvec3 _2187 = isnan(_1573);
            bvec3 _2188 = isnan(_1430.xyz);
            highp vec3 _2189 = max(_1573, _1430.xyz);
            highp vec3 _2190 = vec3(_2187.x ? _1430.xyz.x : _2189.x, _2187.y ? _1430.xyz.y : _2189.y, _2187.z ? _1430.xyz.z : _2189.z);
            _1575 = vec3(_2188.x ? _1573.x : _2190.x, _2188.y ? _1573.y : _2190.y, _2188.z ? _1573.z : _2190.z);
        }
        else
        {
            _1575 = vec3(_1567.x ? _1561.x : _1565.x, _1567.y ? _1561.y : _1565.y, _1567.z ? _1561.z : _1565.z);
        }
        bvec3 _1577 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1579 = mix(_1430.xyz, vec3(_1577.x ? _1562.x : _1575.x, _1577.y ? _1562.y : _1575.y, _1577.z ? _1562.z : _1575.z), _1545.xyz * (_Globals._MatCapBlend * ((_344 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1521.w, _1521.w * _1002, _Globals._MatCapShadowMask))));
        _1581 = vec4(_1579.x, _1579.y, _1579.z, _1430.w);
    }
    else
    {
        _1581 = _1430;
    }
    highp vec4 _1731;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1626;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1603 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _456 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1603.w = _1603.w * _1603.x;
            highp vec2 _1614 = ((_1603.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1615 = vec3(_1614.x, _1614.y, _301.z);
            highp vec2 _1616 = _1614.xy;
            _1615.z = sqrt(1.0 - clamp(dot(_1616, _1616), 0.0, 1.0));
            highp vec3 _1623 = normalize(_421 * _1615);
            highp vec3 _1624 = -_1623;
            _1626 = vec3(_562.x ? _1624.x : _1623.x, _562.y ? _1624.y : _1623.y, _562.z ? _1624.z : _1623.z);
        }
        else
        {
            _1626 = mix(_567, _564, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1642 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1643 = vec3(_1642.x ? _412.x : _320.x, _1642.y ? _412.y : _320.y, _1642.z ? _412.z : _320.z);
        bvec3 _1644 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1645 = vec3(_1644.x ? vec3(0.0, 1.0, 0.0).x : _327.x, _1644.y ? vec3(0.0, 1.0, 0.0).y : _327.y, _1644.z ? vec3(0.0, 1.0, 0.0).z : _327.z);
        highp vec3 _1649 = normalize(_1645 - (_1643 * dot(_1643, _1645)));
        highp vec4 _1671 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1626 * mat3(cross(_1643, _1649), _1649, _1643)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1672 = _1671.xyz;
        highp float _1678 = _1671.w;
        highp vec4 _1695 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _456 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1697 = mix(_1672, _1672 * _1001, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1704 = mix(_1697, _1697 * _822.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1711 = _1581.xyz + _1704;
        highp vec3 _1712 = _1581.xyz * _1704;
        bvec3 _1714 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1715 = vec3(_1714.x ? _1704.x : _295.x, _1714.y ? _1704.y : _295.y, _1714.z ? _1704.z : _295.z);
        bvec3 _1717 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1725;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1723 = (-_1581.xyz) * _1704 + _1711;
            bvec3 _2192 = isnan(_1723);
            bvec3 _2193 = isnan(_1581.xyz);
            highp vec3 _2194 = max(_1723, _1581.xyz);
            highp vec3 _2195 = vec3(_2192.x ? _1581.xyz.x : _2194.x, _2192.y ? _1581.xyz.y : _2194.y, _2192.z ? _1581.xyz.z : _2194.z);
            _1725 = vec3(_2193.x ? _1723.x : _2195.x, _2193.y ? _1723.y : _2195.y, _2193.z ? _1723.z : _2195.z);
        }
        else
        {
            _1725 = vec3(_1717.x ? _1711.x : _1715.x, _1717.y ? _1711.y : _1715.y, _1717.z ? _1711.z : _1715.z);
        }
        bvec3 _1727 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1729 = mix(_1581.xyz, vec3(_1727.x ? _1712.x : _1725.x, _1727.y ? _1712.y : _1725.y, _1727.z ? _1712.z : _1725.z), _1695.xyz * (_Globals._MatCap2ndBlend * ((_344 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1678, _1678 * _1002, _Globals._MatCap2ndShadowMask))));
        _1731 = vec4(_1729.x, _1729.y, _1729.z, _1581.w);
    }
    else
    {
        _1731 = _1581;
    }
    highp vec4 _1877;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1750 = mix(_567, _564, vec3(_Globals._RimNormalStrength));
        highp float _1754 = dot(_396, _1750) * 0.5 + 0.5;
        highp float _1777 = (_344 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1750, _412)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1781 = mix(_1777, _1777 * clamp((_1754 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1782 = _1777 * clamp(((1.0 - _1754) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1792 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1801 = clamp((_1781 - _1792) / clamp(fwidth(_1781) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1792), 0.0, 1.0), 0.0, 1.0);
        highp float _1808 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1818 = clamp((_1782 * _Globals._RimDirStrength + (-_1808)) / clamp(fwidth(_1782 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1808), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1830 = vec3(1.0 - _Globals._RimEnableLighting) + (_1001 * _Globals._RimEnableLighting);
        highp vec3 _1832 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _822.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1833 = _1832 * _1830;
        highp vec3 _1839 = _1832 * _1830 + _1731.xyz;
        highp vec3 _1840 = _1731.xyz * _1833;
        bvec3 _1842 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1843 = vec3(_1842.x ? _1833.x : _295.x, _1842.y ? _1833.y : _295.y, _1842.z ? _1833.z : _295.z);
        bvec3 _1845 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1847 = _Globals._RimBlendMode == 2u;
        highp vec3 _1853;
        if (_1847)
        {
            highp vec3 _1851 = (-_1731.xyz) * _1833 + _1839;
            bvec3 _2197 = isnan(_1851);
            bvec3 _2198 = isnan(_1731.xyz);
            highp vec3 _2199 = max(_1851, _1731.xyz);
            highp vec3 _2200 = vec3(_2197.x ? _1731.xyz.x : _2199.x, _2197.y ? _1731.xyz.y : _2199.y, _2197.z ? _1731.xyz.z : _2199.z);
            _1853 = vec3(_2198.x ? _1851.x : _2200.x, _2198.y ? _1851.y : _2200.y, _2198.z ? _1851.z : _2200.z);
        }
        else
        {
            _1853 = vec3(_1845.x ? _1839.x : _1843.x, _1845.y ? _1839.y : _1843.y, _1845.z ? _1839.z : _1843.z);
        }
        bvec3 _1855 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1858 = mix(_1731.xyz, vec3(_1855.x ? _1840.x : _1853.x, _1855.y ? _1840.y : _1853.y, _1855.z ? _1840.z : _1853.z), vec3(mix(_1801, _1801 * _1002, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1860 = _Globals._RimIndirColor.xyz * _1830;
        highp vec3 _1864 = _Globals._RimIndirColor.xyz * _1830 + _1858;
        highp vec3 _1865 = _1858 * _1860;
        highp vec3 _1866 = vec3(_1842.x ? _1860.x : _295.x, _1842.y ? _1860.y : _295.y, _1842.z ? _1860.z : _295.z);
        highp vec3 _1873;
        if (_1847)
        {
            highp vec3 _1871 = (-_1858) * _1860 + _1864;
            bvec3 _2202 = isnan(_1871);
            bvec3 _2203 = isnan(_1858);
            highp vec3 _2204 = max(_1871, _1858);
            highp vec3 _2205 = vec3(_2202.x ? _1858.x : _2204.x, _2202.y ? _1858.y : _2204.y, _2202.z ? _1858.z : _2204.z);
            _1873 = vec3(_2203.x ? _1871.x : _2205.x, _2203.y ? _1871.y : _2205.y, _2203.z ? _1871.z : _2205.z);
        }
        else
        {
            _1873 = vec3(_1845.x ? _1864.x : _1866.x, _1845.y ? _1864.y : _1866.y, _1845.z ? _1864.z : _1866.z);
        }
        highp vec3 _1875 = mix(_1858, vec3(_1855.x ? _1865.x : _1873.x, _1855.y ? _1865.y : _1873.y, _1855.z ? _1865.z : _1873.z), vec3(mix(_1818, _1818 * _1002, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1877 = vec4(_1875.x, _1875.y, _1875.z, _1731.w);
    }
    else
    {
        _1877 = _1731;
    }
    highp vec4 _1942;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1891 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _400, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1905 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1911;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1911 = roundEven(_1905);
        }
        else
        {
            _1911 = _1905;
        }
        highp vec3 _1918 = mix(_1891, _1891 * _822.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1922 = _1877.xyz + _1918;
        highp vec3 _1923 = _1877.xyz * _1918;
        bvec3 _1925 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1926 = vec3(_1925.x ? _1918.x : _295.x, _1925.y ? _1918.y : _295.y, _1925.z ? _1918.z : _295.z);
        bvec3 _1928 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1936;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1934 = (-_1877.xyz) * _1918 + _1922;
            bvec3 _2207 = isnan(_1934);
            bvec3 _2208 = isnan(_1877.xyz);
            highp vec3 _2209 = max(_1934, _1877.xyz);
            highp vec3 _2210 = vec3(_2207.x ? _1877.xyz.x : _2209.x, _2207.y ? _1877.xyz.y : _2209.y, _2207.z ? _1877.xyz.z : _2209.z);
            _1936 = vec3(_2208.x ? _1934.x : _2210.x, _2208.y ? _1934.y : _2210.y, _2208.z ? _1934.z : _2210.z);
        }
        else
        {
            _1936 = vec3(_1928.x ? _1922.x : _1926.x, _1928.y ? _1922.y : _1926.y, _1928.z ? _1922.z : _1926.z);
        }
        bvec3 _1938 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1940 = mix(_1877.xyz, vec3(_1938.x ? _1923.x : _1936.x, _1938.y ? _1923.y : _1936.y, _1938.z ? _1923.z : _1936.z), vec3((_Globals._EmissionBlend * mix(1.0, _1911, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1942 = vec4(_1940.x, _1940.y, _1940.z, _1877.w);
    }
    else
    {
        _1942 = _1877;
    }
    highp vec4 _2007;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1956 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _400, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1970 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1976;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1976 = roundEven(_1970);
        }
        else
        {
            _1976 = _1970;
        }
        highp vec3 _1983 = mix(_1956, _1956 * _822.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1987 = _1942.xyz + _1983;
        highp vec3 _1988 = _1942.xyz * _1983;
        bvec3 _1990 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1991 = vec3(_1990.x ? _1983.x : _295.x, _1990.y ? _1983.y : _295.y, _1990.z ? _1983.z : _295.z);
        bvec3 _1993 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2001;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1999 = (-_1942.xyz) * _1983 + _1987;
            bvec3 _2212 = isnan(_1999);
            bvec3 _2213 = isnan(_1942.xyz);
            highp vec3 _2214 = max(_1999, _1942.xyz);
            highp vec3 _2215 = vec3(_2212.x ? _1942.xyz.x : _2214.x, _2212.y ? _1942.xyz.y : _2214.y, _2212.z ? _1942.xyz.z : _2214.z);
            _2001 = vec3(_2213.x ? _1999.x : _2215.x, _2213.y ? _1999.y : _2215.y, _2213.z ? _1999.z : _2215.z);
        }
        else
        {
            _2001 = vec3(_1993.x ? _1987.x : _1991.x, _1993.y ? _1987.y : _1991.y, _1993.z ? _1987.z : _1991.z);
        }
        bvec3 _2003 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2005 = mix(_1942.xyz, vec3(_2003.x ? _1988.x : _2001.x, _2003.y ? _1988.y : _2001.y, _2003.z ? _1988.z : _2001.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1976, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2007 = vec4(_2005.x, _2005.y, _2005.z, _1942.w);
    }
    else
    {
        _2007 = _1942;
    }
    bvec3 _2009 = bvec3(_344 < 0.0);
    highp vec3 _2018 = mix(_2007.xyz, _Globals._BackfaceColor.xyz * _1001, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2053 = vec3(_2009.x ? _2018.x : _2007.xyz.x, _2009.y ? _2018.y : _2007.xyz.y, _2009.z ? _2018.z : _2007.xyz.z).xyz;
    highp vec3 _2061 = mix(_2053, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2053, vec3(pow(clamp(1.0 - abs(dot(_567, _412)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_344 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _405) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2061.x, _2061.y, _2061.z, _2007.w), vec4(out_var_TEXCOORD9));
}
