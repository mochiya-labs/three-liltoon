#version 300 es
precision mediump float;
precision highp int;

vec3 _304;
vec3 _310;
float _311;

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
    highp vec3 _331 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _338 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _354 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _363 = float(gl_FrontFacing ? 1 : (-1));
    highp float _414;
    do
    {
        highp vec3 _370 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _371 = _370.xy;
        highp float _377 = _370.z;
        if ((any(lessThan(_371, vec2(0.0))) || any(greaterThan(_371, vec2(1.0)))) || (_377 > 1.0))
        {
            _414 = 1.0;
            break;
        }
        highp float _387 = _377 + _Globals.uShadowBias;
        _414 = (((step(_387, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _371), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_387, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _371), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_387, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _371), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_387, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _371), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _415 = normalize(out_var_TEXCOORD7);
    highp vec3 _419 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _423 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _424 = length(_423);
    highp vec3 _431 = normalize(_423);
    highp mat3 _440 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _445 = bvec2(_363 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _446 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _459 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _460 = sin(_459);
    highp float _461 = cos(_459);
    highp vec2 _462 = (vec2(_445.x ? _446.x : out_var_TEXCOORD0.xy.x, _445.y ? _446.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _463 = _462.x;
    highp float _464 = _462.y;
    highp vec2 _475 = (vec2(_463 * _461 + (-(_464 * _460)), _463 * _460 + (_464 * _461)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _479 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _475);
    highp vec3 _486 = pow(abs(_479.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _487 = _486.z;
    highp float _488 = _486.y;
    bvec4 _490 = bvec4(_487 > _488);
    highp vec4 _491 = vec4(_487, _488, -1.0, 0.666666686534881591796875);
    highp vec4 _492 = vec4(_488, _487, 0.0, -0.3333333432674407958984375);
    highp vec4 _493 = vec4(_490.x ? _491.x : _492.x, _490.y ? _491.y : _492.y, _490.z ? _491.z : _492.z, _490.w ? _491.w : _492.w);
    highp float _494 = _493.x;
    highp float _495 = _486.x;
    bvec4 _497 = bvec4(_494 > _495);
    highp vec4 _500 = vec4(_494, _493.yw, _495);
    highp vec4 _502 = vec4(_495, _493.yz, _494);
    highp vec4 _503 = vec4(_497.x ? _500.x : _502.x, _497.y ? _500.y : _502.y, _497.z ? _500.z : _502.z, _497.w ? _500.w : _502.w);
    highp float _508 = _503.x - (isnan(_503.y) ? _503.w : (isnan(_503.w) ? _503.y : min(_503.w, _503.y)));
    highp float _521 = clamp((_508 / (_503.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _524 = clamp(_503.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _538 = vec3((-_524) * _521 + _524) + (clamp(abs((fract(vec3(abs(_503.z + ((_503.w - _503.y) / (6.0 * _508 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_524 * _521));
    highp vec4 _542 = vec4(_538.x, _538.y, _538.z, _479.w) * _Globals._Color;
    highp vec3 _574;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _555 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _475 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _555.w = _555.w * _555.x;
        highp vec2 _566 = ((_555.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _567 = vec3(_566.x, _566.y, _310.z);
        highp vec2 _568 = _566.xy;
        _567.z = sqrt(1.0 - clamp(dot(_568, _568), 0.0, 1.0));
        _574 = _567;
    }
    else
    {
        _574 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _576 = normalize(_440 * _574);
    bvec3 _581 = bvec3(_363 < (_Globals._FlipNormal - 1.0));
    highp vec3 _582 = -_576;
    highp vec3 _583 = vec3(_581.x ? _582.x : _576.x, _581.y ? _582.y : _576.y, _581.z ? _582.z : _576.z);
    highp float _585 = clamp(dot(_583, _431), 0.0, 1.0);
    highp vec3 _586 = normalize(out_var_TEXCOORD4);
    highp vec2 _590 = ((_583 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _338, _331)).xy * 0.5) + vec2(0.5);
    bool _591 = out_var_TEXCOORD5.w > 0.0;
    bool _596 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _879;
    highp vec4 _880;
    if (_596)
    {
        bvec2 _602 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _603 = vec2(_602.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _602.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _605 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _606 = vec2(_605.x ? out_var_TEXCOORD1.xy.x : _603.x, _605.y ? out_var_TEXCOORD1.xy.y : _603.y);
        bvec2 _608 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _609 = vec2(_608.x ? out_var_TEXCOORD1.zw.x : _606.x, _608.y ? out_var_TEXCOORD1.zw.y : _606.y);
        bvec2 _611 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _612 = vec2(_611.x ? _590.x : _609.x, _611.y ? _590.y : _609.y);
        highp vec4 _651 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _652 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _660;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _659 = _612;
            _659.x = abs(_612.x - 0.5) + 0.5;
            _660 = _659;
        }
        else
        {
            _660 = _612;
        }
        highp vec2 _661 = _651.xy;
        highp vec2 _662 = _651.zw;
        highp vec2 _663 = _660 * _661 + _662;
        highp vec2 _672;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_612.x < 0.5))
        {
            highp vec2 _671 = _663;
            _671.x = 1.0 - _663.x;
            _672 = _671;
        }
        else
        {
            _672 = _663;
        }
        highp vec2 _679;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _591)
        {
            highp vec2 _678 = _672;
            _678.x = 1.0 - _672.x;
            _679 = _678;
        }
        else
        {
            _679 = _672;
        }
        highp vec2 _684;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _591)
        {
            highp vec2 _683 = _679;
            _683.x = -1.0;
            _684 = _683;
        }
        else
        {
            _684 = _679;
        }
        highp vec2 _690;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_591))
        {
            highp vec2 _689 = _684;
            _689.x = -1.0;
            _690 = _689;
        }
        else
        {
            _690 = _684;
        }
        highp float _693 = sin(_652);
        highp float _694 = cos(_652);
        highp vec2 _695 = ((_690 - _662) / _661) - vec2(0.5);
        highp float _696 = _695.x;
        highp float _697 = _695.y;
        highp vec2 _705 = (vec2(_696 * _694 + (-(_697 * _693)), _696 * _693 + (_697 * _694)) + vec2(0.5)) * _661 + _662;
        uint _709 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _713 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _709 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _709);
        highp float _714 = _705.x;
        highp float _715 = _705.y;
        uint _722 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _732 = ((mix(vec2(_714, 1.0 - _715), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_713 % _722), float(_713 / _722))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _732.y = 1.0 - _732.y;
        highp vec4 _737 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _732);
        highp vec4 _753;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _740 = _737.x;
            highp float _741 = _737.y;
            highp float _742 = _737.z;
            highp float _743 = isnan(_741) ? _740 : (isnan(_740) ? _741 : min(_740, _741));
            highp float _744 = isnan(_741) ? _740 : (isnan(_740) ? _741 : max(_740, _741));
            highp float _745 = isnan(_742) ? _744 : (isnan(_744) ? _742 : min(_744, _742));
            highp float _746 = isnan(_745) ? _743 : (isnan(_743) ? _745 : max(_743, _745));
            _753 = vec4(1.0, 1.0, 1.0, clamp((_746 - 0.5) / clamp(fwidth(_746), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _753 = _737;
        }
        highp vec4 _776;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _757 = clamp(_585 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _760 = 0.5 - abs(_714 - 0.5);
            highp float _767 = 0.5 - abs(_715 - 0.5);
            highp vec4 _775 = _753;
            _775.w = _753.w * (clamp(_760 / clamp(fwidth(_760), 9.9999997473787516355514526367188e-05, _757), 0.0, 1.0) * clamp(_767 / clamp(fwidth(_767), 9.9999997473787516355514526367188e-05, _757), 0.0, 1.0));
            _776 = _775;
        }
        else
        {
            _776 = _753;
        }
        highp vec4 _777 = _Globals._Color2nd * _776;
        highp float _783 = _777.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _475).x;
        _777.w = mix(_783, _783 * clamp((_424 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _809;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_363 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_363 < 0.0)))
        {
            highp vec4 _808 = _777;
            _808.w = 0.0;
            _809 = _808;
        }
        else
        {
            _809 = _777;
        }
        highp vec4 _848;
        highp vec4 _849;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _820;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _819 = _542;
                _819.w = _809.w;
                _820 = _819;
            }
            else
            {
                _820 = _542;
            }
            highp vec4 _828;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _827 = _820;
                _827.w = _820.w * _809.w;
                _828 = _827;
            }
            else
            {
                _828 = _820;
            }
            highp vec4 _837;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _836 = _828;
                _836.w = clamp(_828.w + _809.w, 0.0, 1.0);
                _837 = _836;
            }
            else
            {
                _837 = _828;
            }
            highp vec4 _846;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _845 = _837;
                _845.w = clamp(_837.w - _809.w, 0.0, 1.0);
                _846 = _845;
            }
            else
            {
                _846 = _837;
            }
            highp vec4 _847 = _809;
            _847.w = 1.0;
            _848 = _847;
            _849 = _846;
        }
        else
        {
            _848 = _809;
            _849 = _542;
        }
        highp vec3 _859 = _849.xyz + _848.xyz;
        highp vec3 _860 = _849.xyz * _848.xyz;
        bvec3 _862 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _863 = vec3(_862.x ? _848.xyz.x : _304.x, _862.y ? _848.xyz.y : _304.y, _862.z ? _848.xyz.z : _304.z);
        bvec3 _865 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _873;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _871 = (-_849.xyz) * _848.xyz + _859;
            bvec3 _2345 = isnan(_871);
            bvec3 _2346 = isnan(_849.xyz);
            highp vec3 _2347 = max(_871, _849.xyz);
            highp vec3 _2348 = vec3(_2345.x ? _849.xyz.x : _2347.x, _2345.y ? _849.xyz.y : _2347.y, _2345.z ? _849.xyz.z : _2347.z);
            _873 = vec3(_2346.x ? _871.x : _2348.x, _2346.y ? _871.y : _2348.y, _2346.z ? _871.z : _2348.z);
        }
        else
        {
            _873 = vec3(_865.x ? _859.x : _863.x, _865.y ? _859.y : _863.y, _865.z ? _859.z : _863.z);
        }
        bvec3 _875 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _877 = mix(_849.xyz, vec3(_875.x ? _860.x : _873.x, _875.y ? _860.y : _873.y, _875.z ? _860.z : _873.z), vec3(_848.w * _Globals._Main2ndEnableLighting));
        _879 = _848;
        _880 = vec4(_877.x, _877.y, _877.z, _849.w);
    }
    else
    {
        _879 = _Globals._Color2nd;
        _880 = _542;
    }
    highp vec4 _920;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _891 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _896;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _895 = _880;
            _895.w = _891;
            _896 = _895;
        }
        else
        {
            _896 = _880;
        }
        highp vec4 _903;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _902 = _896;
            _902.w = _896.w * _891;
            _903 = _902;
        }
        else
        {
            _903 = _896;
        }
        highp vec4 _911;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _910 = _903;
            _910.w = clamp(_903.w + _891, 0.0, 1.0);
            _911 = _910;
        }
        else
        {
            _911 = _903;
        }
        highp vec4 _919;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _918 = _911;
            _918.w = clamp(_911.w - _891, 0.0, 1.0);
            _919 = _918;
        }
        else
        {
            _919 = _911;
        }
        _920 = _919;
    }
    else
    {
        _920 = _880;
    }
    highp vec4 _1015;
    highp float _1016;
    if ((_354 & 1) != 0)
    {
        highp vec4 _924 = _920;
        _924.w = 1.0;
        highp vec2 _930 = roundEven(_Globals._DissolveParams.xy);
        highp float _931 = _930.x;
        highp vec4 _1004;
        highp float _1005;
        if (_931 != 0.0)
        {
            highp float _947;
            highp float _948;
            if (_931 == 1.0)
            {
                _947 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _948 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _947 = 0.0;
                _948 = 1.0;
            }
            highp float _979;
            highp float _980;
            if (_931 == 2.0)
            {
                highp vec2 _957 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _968 = (_930.y == 1.0) ? (vec2(_957.x * cos(_Globals._DissolvePos.w) + (-(_957.y * sin(_Globals._DissolvePos.w))), _311) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _979 = 1.0 - clamp(abs(_968 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _980 = _948 * float(_968 > _Globals._DissolveParams.z);
            }
            else
            {
                _979 = _947;
                _980 = _948;
            }
            highp float _1001;
            highp float _1002;
            if (_931 == 3.0)
            {
                highp float _990 = (_930.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1001 = 1.0 - clamp(abs(_990 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1002 = _980 * float(_990 > _Globals._DissolveParams.z);
            }
            else
            {
                _1001 = _979;
                _1002 = _980;
            }
            highp vec4 _1003 = _924;
            _1003.w = _1002;
            _1004 = _1003;
            _1005 = _1001;
        }
        else
        {
            _1004 = _924;
            _1005 = 0.0;
        }
        highp vec4 _1011;
        if ((_354 & 2) != 0)
        {
            highp vec4 _1010 = _1004;
            _1010.w = 1.0 - _1004.w;
            _1011 = _1010;
        }
        else
        {
            _1011 = _1004;
        }
        highp vec4 _1014 = _1011;
        _1014.w = _1011.w * _920.w;
        _1015 = _1014;
        _1016 = _1005;
    }
    else
    {
        _1015 = _920;
        _1016 = 0.0;
    }
    highp float _1021 = fwidth(_1015.w);
    highp float _1025 = clamp(((_1015.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1021 : (isnan(_1021) ? 9.9999997473787516355514526367188e-05 : max(_1021, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1026 = _1015;
    _1026.w = _1025;
    if (_1025 == 0.0)
    {
        discard;
    }
    highp vec4 _1203;
    highp float _1204;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1055 = clamp(dot(_415, mix(_586, _583, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1058 = clamp(dot(_415, mix(_586, _583, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1061 = clamp(dot(_415, mix(_586, _583, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1065 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1068 = clamp(_414 + distance(_415, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1071 = mix(1.0, _1068, _Globals._ShadowReceive);
        highp float _1072 = _1055 * _1071;
        highp float _1075 = mix(1.0, _1068, _Globals._Shadow2ndReceive);
        highp float _1079 = mix(1.0, _1068, _Globals._Shadow3rdReceive);
        highp float _1090 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1091 = clamp(_1090, 0.0, 1.0);
        highp float _1093 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1106 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1120 = clamp(_1090 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1133 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1148 = (_363 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1149 = clamp((_1055 * _1071 + (-_1091)) / clamp(fwidth(_1072) * _1065 + (_1093 - _1091), 0.0, 1.0), 0.0, 1.0) * _1148;
        highp vec3 _1181 = mix(mix(_1026.xyz * _Globals._ShadowColor.xyz, (_1026.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1058 * _1075 + (-_1106)) / clamp(fwidth(_1058 * _1075) * _1065 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1106), 0.0, 1.0), 0.0, 1.0) * _1148)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1026.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1061 * _1079 + (-_1133)) / clamp(fwidth(_1061 * _1079) * _1065 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1133), 0.0, 1.0), 0.0, 1.0) * _1148)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1187 = _1026.xyz * out_var_TEXCOORD6;
        highp vec3 _1193 = mix(mix(_1181, _1181 * _1026.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1026.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2355 = isnan(_1193);
        bvec3 _2356 = isnan(_1187);
        highp vec3 _2357 = min(_1193, _1187);
        highp vec3 _2358 = vec3(_2355.x ? _1187.x : _2357.x, _2355.y ? _1187.y : _2357.y, _2355.z ? _1187.z : _2357.z);
        highp vec3 _1201 = mix(mix(vec3(_2356.x ? _1193.x : _2358.x, _2356.y ? _1193.y : _2358.y, _2356.z ? _1193.z : _2358.z), _1187, _Globals._ShadowBorderColor.xyz * (clamp((_1055 * _1071 + (-_1120)) / clamp(fwidth(_1072) * _1065 + (_1093 - _1120), 0.0, 1.0), 0.0, 1.0) * _1148)), _1187, vec3(mix(1.0, _1149, _Globals._ShadowStrength)));
        _1203 = vec4(_1201.x, _1201.y, _1201.z, _1026.w);
        _1204 = _1149;
    }
    else
    {
        highp vec3 _1037 = _1026.xyz * out_var_TEXCOORD6;
        _1203 = vec4(_1037.x, _1037.y, _1037.z, _1026.w);
        _1204 = 1.0;
    }
    highp vec3 _1207 = vec3(_Globals._LightMaxLimit);
    bvec3 _2360 = isnan(out_var_TEXCOORD6);
    bvec3 _2361 = isnan(_1207);
    highp vec3 _2362 = min(out_var_TEXCOORD6, _1207);
    highp vec3 _2363 = vec3(_2360.x ? _1207.x : _2362.x, _2360.y ? _1207.y : _2362.y, _2360.z ? _1207.z : _2362.z);
    highp vec3 _1208 = vec3(_2361.x ? out_var_TEXCOORD6.x : _2363.x, _2361.y ? out_var_TEXCOORD6.y : _2363.y, _2361.z ? out_var_TEXCOORD6.z : _2363.z);
    highp float _1209 = clamp(_1204, 0.0, 1.0);
    highp vec3 _1211 = _1026.xyz * _Globals._LightMaxLimit;
    bvec3 _2365 = isnan(_1203.xyz);
    bvec3 _2366 = isnan(_1211);
    highp vec3 _2367 = min(_1203.xyz, _1211);
    highp vec3 _2368 = vec3(_2365.x ? _1211.x : _2367.x, _2365.y ? _1211.y : _2367.y, _2365.z ? _1211.z : _2367.z);
    highp vec3 _1212 = vec3(_2366.x ? _1203.xyz.x : _2368.x, _2366.y ? _1203.xyz.y : _2368.y, _2366.z ? _1203.xyz.z : _2368.z);
    highp vec4 _1246;
    if (_596)
    {
        highp vec3 _1216 = _1212.xyz;
        highp vec3 _1226 = _1216 + _879.xyz;
        highp vec3 _1227 = _1216 * _879.xyz;
        bvec3 _1229 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1230 = vec3(_1229.x ? _879.xyz.x : _304.x, _1229.y ? _879.xyz.y : _304.y, _1229.z ? _879.xyz.z : _304.z);
        bvec3 _1232 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1240;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1238 = (-_1216) * _879.xyz + _1226;
            bvec3 _2370 = isnan(_1238);
            bvec3 _2371 = isnan(_1216);
            highp vec3 _2372 = max(_1238, _1216);
            highp vec3 _2373 = vec3(_2370.x ? _1216.x : _2372.x, _2370.y ? _1216.y : _2372.y, _2370.z ? _1216.z : _2372.z);
            _1240 = vec3(_2371.x ? _1238.x : _2373.x, _2371.y ? _1238.y : _2373.y, _2371.z ? _1238.z : _2373.z);
        }
        else
        {
            _1240 = vec3(_1232.x ? _1226.x : _1230.x, _1232.y ? _1226.y : _1230.y, _1232.z ? _1226.z : _1230.z);
        }
        bvec3 _1242 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1244 = mix(_1216, vec3(_1242.x ? _1227.x : _1240.x, _1242.y ? _1227.y : _1240.y, _1242.z ? _1227.z : _1240.z), vec3((-_879.w) * _Globals._Main2ndEnableLighting + _879.w));
        _1246 = vec4(_1244.x, _1244.y, _1244.z, _1203.w);
    }
    else
    {
        _1246 = vec4(_1212.x, _1212.y, _1212.z, _1203.w);
    }
    highp vec4 _1292;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1262 = pow(clamp(1.0 - abs(dot(mix(_586, _583, vec3(_Globals._RimShadeNormalStrength)), _431)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1271 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1290 = mix(_1246.xyz, _1246.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1262 - _1271) / clamp(fwidth(_1262) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1271), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1292 = vec4(_1290.x, _1290.y, _1290.z, _1246.w);
    }
    else
    {
        _1292 = _1246;
    }
    highp vec4 _1365;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1316 = dot(normalize(((-_431) * _Globals._BacklightViewStrength) + _415), mix(_586, _583, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1326;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1326 = _1316 * clamp(_414 + distance(_415, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1326 = _1316;
        }
        highp float _1335 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1363 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1026.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_363 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_431, _415) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1326 - _1335) / clamp(fwidth(_1326) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1335), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1208 + _1292.xyz;
        _1365 = vec4(_1363.x, _1363.y, _1363.z, _1292.w);
    }
    else
    {
        _1365 = _1292;
    }
    highp vec4 _1637;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1380 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _475 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1382 = _Globals._Smoothness * _1380.x;
        highp vec3 _1385 = dFdx(_583);
        highp vec3 _1386 = abs(_1385);
        highp vec3 _1387 = dFdy(_583);
        highp vec3 _1388 = abs(_1387);
        highp float _1389 = dot(_1386, _1386);
        highp float _1390 = dot(_1388, _1388);
        highp float _1391 = isnan(_1390) ? _1389 : (isnan(_1389) ? _1390 : max(_1389, _1390));
        highp float _1394 = (_1391 / (_1391 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1397 = clamp(1.0 - (isnan(_1394) ? 0.0 : (isnan(0.0) ? _1394 : max(0.0, _1394))), 0.0, 1.0);
        highp float _1398 = isnan(_1397) ? _1382 : (isnan(_1382) ? _1397 : min(_1382, _1397));
        highp float _1399 = 1.0 - _1398;
        highp float _1400 = _1399 * _1399;
        highp vec4 _1410 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _475 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1412 = _Globals._Metallic * _1410.x;
        highp vec3 _1415 = _1365.xyz - (_1365.xyz * _1412);
        highp vec3 _1421 = mix(vec3(_Globals._Reflectance), _1026.xyz, vec3(_1412));
        highp vec4 _1431 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _475 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1432 = _Globals._ReflectionColor * _1431;
        highp vec4 _1533;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1505;
            do
            {
                highp vec3 _1443 = mix(_586, _583, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1445 = normalize(_431 + _415);
                highp float _1447 = clamp(dot(_1443, _1445), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1456 = pow(_1447, 1.0 / _1400);
                    highp float _1463 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1505 = vec3(clamp((_1456 - _1463) / clamp(fwidth(_1456) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1463), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1475 = clamp(dot(_1443, _431), 0.0, 1.0);
                highp float _1477 = clamp(dot(_1443, _415), 0.0, 1.0);
                highp float _1480 = isnan(0.00200000009499490261077880859375) ? _1400 : (isnan(_1400) ? 0.00200000009499490261077880859375 : max(_1400, 0.00200000009499490261077880859375));
                highp float _1481 = 1.0 - _1480;
                highp float _1485 = _1480 * _1480;
                highp float _1488 = (_1447 * _1485 + (-_1447)) * _1447 + 1.0;
                highp float _1496 = 1.0 - clamp(dot(_415, _1445), 0.0, 1.0);
                _1505 = (_1421 + ((((((vec3(1.0) - _1421) * _1496) * _1496) * _1496) * _1496) * _1496)) * (((0.5 / ((_1477 * (_1475 * _1481 + _1480) + (_1475 * (_1477 * _1481 + _1480))) + 9.9999997473787516355514526367188e-06)) * (_1485 / (_1488 * _1488 + 1.0000000116860974230803549289703e-07))) * _1477);
                break;
            } while(false);
            highp vec3 _1506 = _1415.xyz;
            highp vec3 _1507 = _1432.xyz;
            highp vec3 _1508 = _1507 * _1208;
            highp vec3 _1513 = _1507 * _1208 + _1506;
            highp vec3 _1514 = _1506 * _1508;
            bvec3 _1516 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1517 = vec3(_1516.x ? _1508.x : _304.x, _1516.y ? _1508.y : _304.y, _1516.z ? _1508.z : _304.z);
            bvec3 _1519 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1527;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1525 = (-_1506) * _1508 + _1513;
                bvec3 _2395 = isnan(_1525);
                bvec3 _2396 = isnan(_1506);
                highp vec3 _2397 = max(_1525, _1506);
                highp vec3 _2398 = vec3(_2395.x ? _1506.x : _2397.x, _2395.y ? _1506.y : _2397.y, _2395.z ? _1506.z : _2397.z);
                _1527 = vec3(_2396.x ? _1525.x : _2398.x, _2396.y ? _1525.y : _2398.y, _2396.z ? _1525.z : _2398.z);
            }
            else
            {
                _1527 = vec3(_1519.x ? _1513.x : _1517.x, _1519.y ? _1513.y : _1517.y, _1519.z ? _1513.z : _1517.z);
            }
            bvec3 _1529 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1531 = mix(_1506, vec3(_1529.x ? _1514.x : _1527.x, _1529.y ? _1514.y : _1527.y, _1529.z ? _1514.z : _1527.z), _1505 * _1432.w);
            _1533 = vec4(_1531.x, _1531.y, _1531.z, _1365.w);
        }
        else
        {
            _1533 = vec4(_1415.x, _1415.y, _1415.z, _1365.w);
        }
        highp vec4 _1636;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1555 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1562 = reflect(-_431, mix(_586, _583, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1565 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1562, _1399 * ((-4.19999980926513671875) * _1399 + 10.19999980926513671875));
            highp vec3 _1585 = ((_1565.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1565.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1208, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1591 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1562, _1399 * 8.0).xyz * 1.0;
            highp float _1602 = 1.0 - _585;
            highp vec3 _1611 = _1432.xyz;
            highp vec3 _1616 = _1533.xyz + _1611;
            highp vec3 _1617 = _1533.xyz * _1611;
            bvec3 _1619 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1620 = vec3(_1619.x ? _1611.x : _304.x, _1619.y ? _1611.y : _304.y, _1619.z ? _1611.z : _304.z);
            bvec3 _1622 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1630;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1628 = (-_1533.xyz) * _1611 + _1616;
                bvec3 _2400 = isnan(_1628);
                bvec3 _2401 = isnan(_1533.xyz);
                highp vec3 _2402 = max(_1628, _1533.xyz);
                highp vec3 _2403 = vec3(_2400.x ? _1533.xyz.x : _2402.x, _2400.y ? _1533.xyz.y : _2402.y, _2400.z ? _1533.xyz.z : _2402.z);
                _1630 = vec3(_2401.x ? _1628.x : _2403.x, _2401.y ? _1628.y : _2403.y, _2401.z ? _1628.z : _2403.z);
            }
            else
            {
                _1630 = vec3(_1622.x ? _1616.x : _1620.x, _1622.y ? _1616.y : _1620.y, _1622.z ? _1616.z : _1620.z);
            }
            bvec3 _1632 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1634 = mix(_1533.xyz, vec3(_1632.x ? _1617.x : _1630.x, _1632.y ? _1617.y : _1630.y, _1632.z ? _1617.z : _1630.z), ((vec3(_1555.x ? _1585.x : _1591.x, _1555.y ? _1585.y : _1591.y, _1555.z ? _1585.z : _1591.z) * (1.0 / (_1400 * _1400 + 1.0))) * mix(_1421, vec3(clamp(_1398 + (1.0 - ((-_1412) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1602 * _1602) * _1602) * _1602) * _1602))) * _1432.w);
            _1636 = vec4(_1634.x, _1634.y, _1634.z, _1533.w);
        }
        else
        {
            _1636 = _1533;
        }
        _1637 = _1636;
    }
    else
    {
        _1637 = _1365;
    }
    highp vec4 _1788;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1682;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1659 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _475 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1659.w = _1659.w * _1659.x;
            highp vec2 _1670 = ((_1659.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1671 = vec3(_1670.x, _1670.y, _310.z);
            highp vec2 _1672 = _1670.xy;
            _1671.z = sqrt(1.0 - clamp(dot(_1672, _1672), 0.0, 1.0));
            highp vec3 _1679 = normalize(_440 * _1671);
            highp vec3 _1680 = -_1679;
            _1682 = vec3(_581.x ? _1680.x : _1679.x, _581.y ? _1680.y : _1679.y, _581.z ? _1680.z : _1679.z);
        }
        else
        {
            _1682 = mix(_586, _583, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1699 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1700 = vec3(_1699.x ? _431.x : _331.x, _1699.y ? _431.y : _331.y, _1699.z ? _431.z : _331.z);
        bvec3 _1701 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1702 = vec3(_1701.x ? vec3(0.0, 1.0, 0.0).x : _338.x, _1701.y ? vec3(0.0, 1.0, 0.0).y : _338.y, _1701.z ? vec3(0.0, 1.0, 0.0).z : _338.z);
        highp vec3 _1706 = normalize(_1702 - (_1700 * dot(_1700, _1702)));
        highp vec4 _1728 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1682) * mat3(cross(_1700, _1706), _1706, _1700)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1752 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _475 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1754 = mix(_1728.xyz, _1728.xyz * _1208, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1761 = mix(_1754, _1754 * _1026.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1768 = _1637.xyz + _1761;
        highp vec3 _1769 = _1637.xyz * _1761;
        bvec3 _1771 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1772 = vec3(_1771.x ? _1761.x : _304.x, _1771.y ? _1761.y : _304.y, _1771.z ? _1761.z : _304.z);
        bvec3 _1774 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1782;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1780 = (-_1637.xyz) * _1761 + _1768;
            bvec3 _2405 = isnan(_1780);
            bvec3 _2406 = isnan(_1637.xyz);
            highp vec3 _2407 = max(_1780, _1637.xyz);
            highp vec3 _2408 = vec3(_2405.x ? _1637.xyz.x : _2407.x, _2405.y ? _1637.xyz.y : _2407.y, _2405.z ? _1637.xyz.z : _2407.z);
            _1782 = vec3(_2406.x ? _1780.x : _2408.x, _2406.y ? _1780.y : _2408.y, _2406.z ? _1780.z : _2408.z);
        }
        else
        {
            _1782 = vec3(_1774.x ? _1768.x : _1772.x, _1774.y ? _1768.y : _1772.y, _1774.z ? _1768.z : _1772.z);
        }
        bvec3 _1784 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1786 = mix(_1637.xyz, vec3(_1784.x ? _1769.x : _1782.x, _1784.y ? _1769.y : _1782.y, _1784.z ? _1769.z : _1782.z), _1752.xyz * (_Globals._MatCapBlend * ((_363 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1728.w, _1728.w * _1209, _Globals._MatCapShadowMask))));
        _1788 = vec4(_1786.x, _1786.y, _1786.z, _1637.w);
    }
    else
    {
        _1788 = _1637;
    }
    highp vec4 _1938;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1833;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1810 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _475 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1810.w = _1810.w * _1810.x;
            highp vec2 _1821 = ((_1810.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1822 = vec3(_1821.x, _1821.y, _310.z);
            highp vec2 _1823 = _1821.xy;
            _1822.z = sqrt(1.0 - clamp(dot(_1823, _1823), 0.0, 1.0));
            highp vec3 _1830 = normalize(_440 * _1822);
            highp vec3 _1831 = -_1830;
            _1833 = vec3(_581.x ? _1831.x : _1830.x, _581.y ? _1831.y : _1830.y, _581.z ? _1831.z : _1830.z);
        }
        else
        {
            _1833 = mix(_586, _583, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1849 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1850 = vec3(_1849.x ? _431.x : _331.x, _1849.y ? _431.y : _331.y, _1849.z ? _431.z : _331.z);
        bvec3 _1851 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1852 = vec3(_1851.x ? vec3(0.0, 1.0, 0.0).x : _338.x, _1851.y ? vec3(0.0, 1.0, 0.0).y : _338.y, _1851.z ? vec3(0.0, 1.0, 0.0).z : _338.z);
        highp vec3 _1856 = normalize(_1852 - (_1850 * dot(_1850, _1852)));
        highp vec4 _1878 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1833 * mat3(cross(_1850, _1856), _1856, _1850)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1879 = _1878.xyz;
        highp float _1885 = _1878.w;
        highp vec4 _1902 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _475 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1904 = mix(_1879, _1879 * _1208, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1911 = mix(_1904, _1904 * _1026.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1918 = _1788.xyz + _1911;
        highp vec3 _1919 = _1788.xyz * _1911;
        bvec3 _1921 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1922 = vec3(_1921.x ? _1911.x : _304.x, _1921.y ? _1911.y : _304.y, _1921.z ? _1911.z : _304.z);
        bvec3 _1924 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1932;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1930 = (-_1788.xyz) * _1911 + _1918;
            bvec3 _2410 = isnan(_1930);
            bvec3 _2411 = isnan(_1788.xyz);
            highp vec3 _2412 = max(_1930, _1788.xyz);
            highp vec3 _2413 = vec3(_2410.x ? _1788.xyz.x : _2412.x, _2410.y ? _1788.xyz.y : _2412.y, _2410.z ? _1788.xyz.z : _2412.z);
            _1932 = vec3(_2411.x ? _1930.x : _2413.x, _2411.y ? _1930.y : _2413.y, _2411.z ? _1930.z : _2413.z);
        }
        else
        {
            _1932 = vec3(_1924.x ? _1918.x : _1922.x, _1924.y ? _1918.y : _1922.y, _1924.z ? _1918.z : _1922.z);
        }
        bvec3 _1934 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1936 = mix(_1788.xyz, vec3(_1934.x ? _1919.x : _1932.x, _1934.y ? _1919.y : _1932.y, _1934.z ? _1919.z : _1932.z), _1902.xyz * (_Globals._MatCap2ndBlend * ((_363 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1885, _1885 * _1209, _Globals._MatCap2ndShadowMask))));
        _1938 = vec4(_1936.x, _1936.y, _1936.z, _1788.w);
    }
    else
    {
        _1938 = _1788;
    }
    highp vec4 _2084;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1957 = mix(_586, _583, vec3(_Globals._RimNormalStrength));
        highp float _1961 = dot(_415, _1957) * 0.5 + 0.5;
        highp float _1984 = (_363 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1957, _431)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1988 = mix(_1984, _1984 * clamp((_1961 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1989 = _1984 * clamp(((1.0 - _1961) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1999 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2008 = clamp((_1988 - _1999) / clamp(fwidth(_1988) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1999), 0.0, 1.0), 0.0, 1.0);
        highp float _2015 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2025 = clamp((_1989 * _Globals._RimDirStrength + (-_2015)) / clamp(fwidth(_1989 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2015), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2037 = vec3(1.0 - _Globals._RimEnableLighting) + (_1208 * _Globals._RimEnableLighting);
        highp vec3 _2039 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1026.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2040 = _2039 * _2037;
        highp vec3 _2046 = _2039 * _2037 + _1938.xyz;
        highp vec3 _2047 = _1938.xyz * _2040;
        bvec3 _2049 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2050 = vec3(_2049.x ? _2040.x : _304.x, _2049.y ? _2040.y : _304.y, _2049.z ? _2040.z : _304.z);
        bvec3 _2052 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2054 = _Globals._RimBlendMode == 2u;
        highp vec3 _2060;
        if (_2054)
        {
            highp vec3 _2058 = (-_1938.xyz) * _2040 + _2046;
            bvec3 _2415 = isnan(_2058);
            bvec3 _2416 = isnan(_1938.xyz);
            highp vec3 _2417 = max(_2058, _1938.xyz);
            highp vec3 _2418 = vec3(_2415.x ? _1938.xyz.x : _2417.x, _2415.y ? _1938.xyz.y : _2417.y, _2415.z ? _1938.xyz.z : _2417.z);
            _2060 = vec3(_2416.x ? _2058.x : _2418.x, _2416.y ? _2058.y : _2418.y, _2416.z ? _2058.z : _2418.z);
        }
        else
        {
            _2060 = vec3(_2052.x ? _2046.x : _2050.x, _2052.y ? _2046.y : _2050.y, _2052.z ? _2046.z : _2050.z);
        }
        bvec3 _2062 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2065 = mix(_1938.xyz, vec3(_2062.x ? _2047.x : _2060.x, _2062.y ? _2047.y : _2060.y, _2062.z ? _2047.z : _2060.z), vec3(mix(_2008, _2008 * _1209, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2067 = _Globals._RimIndirColor.xyz * _2037;
        highp vec3 _2071 = _Globals._RimIndirColor.xyz * _2037 + _2065;
        highp vec3 _2072 = _2065 * _2067;
        highp vec3 _2073 = vec3(_2049.x ? _2067.x : _304.x, _2049.y ? _2067.y : _304.y, _2049.z ? _2067.z : _304.z);
        highp vec3 _2080;
        if (_2054)
        {
            highp vec3 _2078 = (-_2065) * _2067 + _2071;
            bvec3 _2420 = isnan(_2078);
            bvec3 _2421 = isnan(_2065);
            highp vec3 _2422 = max(_2078, _2065);
            highp vec3 _2423 = vec3(_2420.x ? _2065.x : _2422.x, _2420.y ? _2065.y : _2422.y, _2420.z ? _2065.z : _2422.z);
            _2080 = vec3(_2421.x ? _2078.x : _2423.x, _2421.y ? _2078.y : _2423.y, _2421.z ? _2078.z : _2423.z);
        }
        else
        {
            _2080 = vec3(_2052.x ? _2071.x : _2073.x, _2052.y ? _2071.y : _2073.y, _2052.z ? _2071.z : _2073.z);
        }
        highp vec3 _2082 = mix(_2065, vec3(_2062.x ? _2072.x : _2080.x, _2062.y ? _2072.y : _2080.y, _2062.z ? _2072.z : _2080.z), vec3(mix(_2025, _2025 * _1209, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2084 = vec4(_2082.x, _2082.y, _2082.z, _1938.w);
    }
    else
    {
        _2084 = _1938;
    }
    highp vec4 _2149;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2098 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _419, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2112 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2118;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2118 = roundEven(_2112);
        }
        else
        {
            _2118 = _2112;
        }
        highp vec3 _2125 = mix(_2098, _2098 * _1026.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2129 = _2084.xyz + _2125;
        highp vec3 _2130 = _2084.xyz * _2125;
        bvec3 _2132 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2133 = vec3(_2132.x ? _2125.x : _304.x, _2132.y ? _2125.y : _304.y, _2132.z ? _2125.z : _304.z);
        bvec3 _2135 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2143;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2141 = (-_2084.xyz) * _2125 + _2129;
            bvec3 _2425 = isnan(_2141);
            bvec3 _2426 = isnan(_2084.xyz);
            highp vec3 _2427 = max(_2141, _2084.xyz);
            highp vec3 _2428 = vec3(_2425.x ? _2084.xyz.x : _2427.x, _2425.y ? _2084.xyz.y : _2427.y, _2425.z ? _2084.xyz.z : _2427.z);
            _2143 = vec3(_2426.x ? _2141.x : _2428.x, _2426.y ? _2141.y : _2428.y, _2426.z ? _2141.z : _2428.z);
        }
        else
        {
            _2143 = vec3(_2135.x ? _2129.x : _2133.x, _2135.y ? _2129.y : _2133.y, _2135.z ? _2129.z : _2133.z);
        }
        bvec3 _2145 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2147 = mix(_2084.xyz, vec3(_2145.x ? _2130.x : _2143.x, _2145.y ? _2130.y : _2143.y, _2145.z ? _2130.z : _2143.z), vec3((_Globals._EmissionBlend * mix(1.0, _2118, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2149 = vec4(_2147.x, _2147.y, _2147.z, _2084.w);
    }
    else
    {
        _2149 = _2084;
    }
    highp vec4 _2214;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2163 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _419, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2177 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2183;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2183 = roundEven(_2177);
        }
        else
        {
            _2183 = _2177;
        }
        highp vec3 _2190 = mix(_2163, _2163 * _1026.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2194 = _2149.xyz + _2190;
        highp vec3 _2195 = _2149.xyz * _2190;
        bvec3 _2197 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2198 = vec3(_2197.x ? _2190.x : _304.x, _2197.y ? _2190.y : _304.y, _2197.z ? _2190.z : _304.z);
        bvec3 _2200 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2208;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2206 = (-_2149.xyz) * _2190 + _2194;
            bvec3 _2430 = isnan(_2206);
            bvec3 _2431 = isnan(_2149.xyz);
            highp vec3 _2432 = max(_2206, _2149.xyz);
            highp vec3 _2433 = vec3(_2430.x ? _2149.xyz.x : _2432.x, _2430.y ? _2149.xyz.y : _2432.y, _2430.z ? _2149.xyz.z : _2432.z);
            _2208 = vec3(_2431.x ? _2206.x : _2433.x, _2431.y ? _2206.y : _2433.y, _2431.z ? _2206.z : _2433.z);
        }
        else
        {
            _2208 = vec3(_2200.x ? _2194.x : _2198.x, _2200.y ? _2194.y : _2198.y, _2200.z ? _2194.z : _2198.z);
        }
        bvec3 _2210 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2212 = mix(_2149.xyz, vec3(_2210.x ? _2195.x : _2208.x, _2210.y ? _2195.y : _2208.y, _2210.z ? _2195.z : _2208.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2183, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2214 = vec4(_2212.x, _2212.y, _2212.z, _2149.w);
    }
    else
    {
        _2214 = _2149;
    }
    bvec3 _2222 = bvec3(_363 < 0.0);
    highp vec3 _2223 = (_2214.xyz + (_Globals._DissolveColor.xyz * _1016)).xyz;
    highp vec3 _2231 = mix(_2223, _Globals._BackfaceColor.xyz * _1208, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2266 = vec3(_2222.x ? _2231.x : _2223.x, _2222.y ? _2231.y : _2223.y, _2222.z ? _2231.z : _2223.z).xyz;
    highp vec3 _2274 = mix(_2266, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2266, vec3(pow(clamp(1.0 - abs(dot(_586, _431)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_363 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _424) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2274.x, _2274.y, _2274.z, _2214.w), vec4(out_var_TEXCOORD9));
}
