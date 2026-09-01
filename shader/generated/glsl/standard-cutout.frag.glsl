#version 300 es
precision mediump float;
precision highp int;

vec3 _334;
vec3 _340;

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
uniform highp sampler2D SPIRV_Cross_Combined_AlphaMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_DissolveMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0SPIRV_Cross_DummySampler;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;
uniform highp sampler2D SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap;

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
    highp vec3 _360 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _367 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _383 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _392 = float(gl_FrontFacing ? 1 : (-1));
    highp float _443;
    do
    {
        highp vec3 _399 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _400 = _399.xy;
        highp float _406 = _399.z;
        if ((any(lessThan(_400, vec2(0.0))) || any(greaterThan(_400, vec2(1.0)))) || (_406 > 1.0))
        {
            _443 = 1.0;
            break;
        }
        highp float _416 = _406 - _Globals.uShadowBias;
        _443 = (((step(_416, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _400), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_416, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _400), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_416, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _400), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_416, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _400), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _444 = normalize(out_var_TEXCOORD7);
    highp vec3 _448 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _452 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _453 = length(_452);
    highp vec3 _460 = normalize(_452);
    highp mat3 _469 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _470 = _460 * _469;
    highp vec2 _475 = _470.xy / vec2(_470.z + 0.5);
    bvec2 _480 = bvec2(_392 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _481 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _494 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _495 = sin(_494);
    highp float _496 = cos(_494);
    highp vec2 _497 = (vec2(_480.x ? _481.x : out_var_TEXCOORD0.xy.x, _480.y ? _481.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _498 = _497.x;
    highp float _499 = _497.y;
    highp vec2 _510 = (vec2(_498 * _496 + (-(_499 * _495)), _498 * _495 + (_499 * _496)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _514 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _510);
    highp vec3 _521 = pow(abs(_514.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _522 = _521.z;
    highp float _523 = _521.y;
    bvec4 _525 = bvec4(_522 > _523);
    highp vec4 _526 = vec4(_522, _523, -1.0, 0.666666686534881591796875);
    highp vec4 _527 = vec4(_523, _522, 0.0, -0.3333333432674407958984375);
    highp vec4 _528 = vec4(_525.x ? _526.x : _527.x, _525.y ? _526.y : _527.y, _525.z ? _526.z : _527.z, _525.w ? _526.w : _527.w);
    highp float _529 = _528.x;
    highp float _530 = _521.x;
    bvec4 _532 = bvec4(_529 > _530);
    highp vec4 _535 = vec4(_529, _528.yw, _530);
    highp vec4 _537 = vec4(_530, _528.yz, _529);
    highp vec4 _538 = vec4(_532.x ? _535.x : _537.x, _532.y ? _535.y : _537.y, _532.z ? _535.z : _537.z, _532.w ? _535.w : _537.w);
    highp float _543 = _538.x - (isnan(_538.y) ? _538.w : (isnan(_538.w) ? _538.y : min(_538.w, _538.y)));
    highp float _556 = clamp((_543 / (_538.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _559 = clamp(_538.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _573 = vec3((-_559) * _556 + _559) + (clamp(abs((fract(vec3(abs(_538.z + ((_538.w - _538.y) / (6.0 * _543 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_559 * _556));
    highp vec4 _577 = vec4(_573.x, _573.y, _573.z, _514.w) * _Globals._Color;
    highp vec3 _609;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _590 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _510 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _590.w = _590.w * _590.x;
        highp vec2 _601 = ((_590.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _602 = vec3(_601.x, _601.y, _340.z);
        highp vec2 _603 = _601.xy;
        _602.z = sqrt(1.0 - clamp(dot(_603, _603), 0.0, 1.0));
        _609 = _602;
    }
    else
    {
        _609 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _658;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _618 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _619 = vec2(_618.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _618.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _621 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _622 = vec2(_621.x ? out_var_TEXCOORD1.xy.x : _619.x, _621.y ? out_var_TEXCOORD1.xy.y : _619.y);
        bvec2 _624 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _634 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_624.x ? out_var_TEXCOORD1.zw.x : _622.x, _624.y ? out_var_TEXCOORD1.zw.y : _622.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _634.w = _634.w * _634.x;
        highp vec2 _646 = (((_634.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _658 = vec3(_609.xy + _646, _609.z * sqrt(1.0 - clamp(dot(_646, _646), 0.0, 1.0)));
    }
    else
    {
        _658 = _609;
    }
    highp vec3 _660 = normalize(_469 * _658);
    bvec3 _665 = bvec3(_392 < (_Globals._FlipNormal - 1.0));
    highp vec3 _666 = -_660;
    highp vec3 _667 = vec3(_665.x ? _666.x : _660.x, _665.y ? _666.y : _660.y, _665.z ? _666.z : _660.z);
    highp float _668 = dot(_667, _460);
    highp float _669 = clamp(_668, 0.0, 1.0);
    highp vec2 _671 = vec2(abs(_668));
    highp vec3 _672 = normalize(out_var_TEXCOORD4);
    highp vec2 _676 = ((_667 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _367, _360)).xy * 0.5) + vec2(0.5);
    bool _677 = out_var_TEXCOORD5.w > 0.0;
    bool _682 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _960;
    highp vec4 _961;
    if (_682)
    {
        bvec2 _688 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _689 = vec2(_688.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _688.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _691 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _692 = vec2(_691.x ? out_var_TEXCOORD1.xy.x : _689.x, _691.y ? out_var_TEXCOORD1.xy.y : _689.y);
        bvec2 _694 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _695 = vec2(_694.x ? out_var_TEXCOORD1.zw.x : _692.x, _694.y ? out_var_TEXCOORD1.zw.y : _692.y);
        bvec2 _697 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _698 = vec2(_697.x ? _676.x : _695.x, _697.y ? _676.y : _695.y);
        highp vec4 _737 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _738 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _746;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _745 = _698;
            _745.x = abs(_698.x - 0.5) + 0.5;
            _746 = _745;
        }
        else
        {
            _746 = _698;
        }
        highp vec2 _747 = _737.xy;
        highp vec2 _748 = _737.zw;
        highp vec2 _749 = _746 * _747 + _748;
        highp vec2 _758;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_698.x < 0.5))
        {
            highp vec2 _757 = _749;
            _757.x = 1.0 - _749.x;
            _758 = _757;
        }
        else
        {
            _758 = _749;
        }
        highp vec2 _765;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _677)
        {
            highp vec2 _764 = _758;
            _764.x = 1.0 - _758.x;
            _765 = _764;
        }
        else
        {
            _765 = _758;
        }
        highp vec2 _770;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _677)
        {
            highp vec2 _769 = _765;
            _769.x = -1.0;
            _770 = _769;
        }
        else
        {
            _770 = _765;
        }
        highp vec2 _776;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_677))
        {
            highp vec2 _775 = _770;
            _775.x = -1.0;
            _776 = _775;
        }
        else
        {
            _776 = _770;
        }
        highp float _779 = sin(_738);
        highp float _780 = cos(_738);
        highp vec2 _781 = ((_776 - _748) / _747) - vec2(0.5);
        highp float _782 = _781.x;
        highp float _783 = _781.y;
        highp vec2 _791 = (vec2(_782 * _780 + (-(_783 * _779)), _782 * _779 + (_783 * _780)) + vec2(0.5)) * _747 + _748;
        uint _795 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _799 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _795 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _795);
        highp float _800 = _791.x;
        highp float _801 = _791.y;
        uint _808 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _818 = ((mix(vec2(_800, 1.0 - _801), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_799 % _808), float(_799 / _808))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _818.y = 1.0 - _818.y;
        highp vec4 _823 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _818);
        highp vec4 _839;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _826 = _823.x;
            highp float _827 = _823.y;
            highp float _828 = _823.z;
            highp float _829 = isnan(_827) ? _826 : (isnan(_826) ? _827 : min(_826, _827));
            highp float _830 = isnan(_827) ? _826 : (isnan(_826) ? _827 : max(_826, _827));
            highp float _831 = isnan(_828) ? _830 : (isnan(_830) ? _828 : min(_830, _828));
            highp float _832 = isnan(_831) ? _829 : (isnan(_829) ? _831 : max(_829, _831));
            _839 = vec4(1.0, 1.0, 1.0, clamp((_832 - 0.5) / clamp(fwidth(_832), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _839 = _823;
        }
        highp vec4 _862;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _843 = clamp(_669 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _846 = 0.5 - abs(_800 - 0.5);
            highp float _853 = 0.5 - abs(_801 - 0.5);
            highp vec4 _861 = _839;
            _861.w = _839.w * (clamp(_846 / clamp(fwidth(_846), 9.9999997473787516355514526367188e-05, _843), 0.0, 1.0) * clamp(_853 / clamp(fwidth(_853), 9.9999997473787516355514526367188e-05, _843), 0.0, 1.0));
            _862 = _861;
        }
        else
        {
            _862 = _839;
        }
        highp vec4 _863 = _Globals._Color2nd * _862;
        highp float _864 = _863.w;
        _863.w = mix(_864, _864 * clamp((_453 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _890;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_392 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_392 < 0.0)))
        {
            highp vec4 _889 = _863;
            _889.w = 0.0;
            _890 = _889;
        }
        else
        {
            _890 = _863;
        }
        highp vec4 _929;
        highp vec4 _930;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _901;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _900 = _577;
                _900.w = _890.w;
                _901 = _900;
            }
            else
            {
                _901 = _577;
            }
            highp vec4 _909;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _908 = _901;
                _908.w = _901.w * _890.w;
                _909 = _908;
            }
            else
            {
                _909 = _901;
            }
            highp vec4 _918;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _917 = _909;
                _917.w = clamp(_909.w + _890.w, 0.0, 1.0);
                _918 = _917;
            }
            else
            {
                _918 = _909;
            }
            highp vec4 _927;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _926 = _918;
                _926.w = clamp(_918.w - _890.w, 0.0, 1.0);
                _927 = _926;
            }
            else
            {
                _927 = _918;
            }
            highp vec4 _928 = _890;
            _928.w = 1.0;
            _929 = _928;
            _930 = _927;
        }
        else
        {
            _929 = _890;
            _930 = _577;
        }
        highp vec3 _940 = _930.xyz + _929.xyz;
        highp vec3 _941 = _930.xyz * _929.xyz;
        bvec3 _943 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _944 = vec3(_943.x ? _929.xyz.x : _334.x, _943.y ? _929.xyz.y : _334.y, _943.z ? _929.xyz.z : _334.z);
        bvec3 _946 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _954;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _952 = (-_930.xyz) * _929.xyz + _940;
            bvec3 _2759 = isnan(_952);
            bvec3 _2760 = isnan(_930.xyz);
            highp vec3 _2761 = max(_952, _930.xyz);
            highp vec3 _2762 = vec3(_2759.x ? _930.xyz.x : _2761.x, _2759.y ? _930.xyz.y : _2761.y, _2759.z ? _930.xyz.z : _2761.z);
            _954 = vec3(_2760.x ? _952.x : _2762.x, _2760.y ? _952.y : _2762.y, _2760.z ? _952.z : _2762.z);
        }
        else
        {
            _954 = vec3(_946.x ? _940.x : _944.x, _946.y ? _940.y : _944.y, _946.z ? _940.z : _944.z);
        }
        bvec3 _956 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _958 = mix(_930.xyz, vec3(_956.x ? _941.x : _954.x, _956.y ? _941.y : _954.y, _956.z ? _941.z : _954.z), vec3(_929.w * _Globals._Main2ndEnableLighting));
        _960 = _929;
        _961 = vec4(_958.x, _958.y, _958.z, _930.w);
    }
    else
    {
        _960 = _Globals._Color2nd;
        _961 = _577;
    }
    bool _966 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1244;
    highp vec4 _1245;
    if (_966)
    {
        bvec2 _972 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _973 = vec2(_972.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _972.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _975 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _976 = vec2(_975.x ? out_var_TEXCOORD1.xy.x : _973.x, _975.y ? out_var_TEXCOORD1.xy.y : _973.y);
        bvec2 _978 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _979 = vec2(_978.x ? out_var_TEXCOORD1.zw.x : _976.x, _978.y ? out_var_TEXCOORD1.zw.y : _976.y);
        bvec2 _981 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _982 = vec2(_981.x ? _676.x : _979.x, _981.y ? _676.y : _979.y);
        highp vec4 _1021 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1022 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1030;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1029 = _982;
            _1029.x = abs(_982.x - 0.5) + 0.5;
            _1030 = _1029;
        }
        else
        {
            _1030 = _982;
        }
        highp vec2 _1031 = _1021.xy;
        highp vec2 _1032 = _1021.zw;
        highp vec2 _1033 = _1030 * _1031 + _1032;
        highp vec2 _1042;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_982.x < 0.5))
        {
            highp vec2 _1041 = _1033;
            _1041.x = 1.0 - _1033.x;
            _1042 = _1041;
        }
        else
        {
            _1042 = _1033;
        }
        highp vec2 _1049;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _677)
        {
            highp vec2 _1048 = _1042;
            _1048.x = 1.0 - _1042.x;
            _1049 = _1048;
        }
        else
        {
            _1049 = _1042;
        }
        highp vec2 _1054;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _677)
        {
            highp vec2 _1053 = _1049;
            _1053.x = -1.0;
            _1054 = _1053;
        }
        else
        {
            _1054 = _1049;
        }
        highp vec2 _1060;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_677))
        {
            highp vec2 _1059 = _1054;
            _1059.x = -1.0;
            _1060 = _1059;
        }
        else
        {
            _1060 = _1054;
        }
        highp float _1063 = sin(_1022);
        highp float _1064 = cos(_1022);
        highp vec2 _1065 = ((_1060 - _1032) / _1031) - vec2(0.5);
        highp float _1066 = _1065.x;
        highp float _1067 = _1065.y;
        highp vec2 _1075 = (vec2(_1066 * _1064 + (-(_1067 * _1063)), _1066 * _1063 + (_1067 * _1064)) + vec2(0.5)) * _1031 + _1032;
        uint _1079 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1083 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1079 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1079);
        highp float _1084 = _1075.x;
        highp float _1085 = _1075.y;
        uint _1092 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1102 = ((mix(vec2(_1084, 1.0 - _1085), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1083 % _1092), float(_1083 / _1092))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1102.y = 1.0 - _1102.y;
        highp vec4 _1107 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1102);
        highp vec4 _1123;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1110 = _1107.x;
            highp float _1111 = _1107.y;
            highp float _1112 = _1107.z;
            highp float _1113 = isnan(_1111) ? _1110 : (isnan(_1110) ? _1111 : min(_1110, _1111));
            highp float _1114 = isnan(_1111) ? _1110 : (isnan(_1110) ? _1111 : max(_1110, _1111));
            highp float _1115 = isnan(_1112) ? _1114 : (isnan(_1114) ? _1112 : min(_1114, _1112));
            highp float _1116 = isnan(_1115) ? _1113 : (isnan(_1113) ? _1115 : max(_1113, _1115));
            _1123 = vec4(1.0, 1.0, 1.0, clamp((_1116 - 0.5) / clamp(fwidth(_1116), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1123 = _1107;
        }
        highp vec4 _1146;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1127 = clamp(_669 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1130 = 0.5 - abs(_1084 - 0.5);
            highp float _1137 = 0.5 - abs(_1085 - 0.5);
            highp vec4 _1145 = _1123;
            _1145.w = _1123.w * (clamp(_1130 / clamp(fwidth(_1130), 9.9999997473787516355514526367188e-05, _1127), 0.0, 1.0) * clamp(_1137 / clamp(fwidth(_1137), 9.9999997473787516355514526367188e-05, _1127), 0.0, 1.0));
            _1146 = _1145;
        }
        else
        {
            _1146 = _1123;
        }
        highp vec4 _1147 = _Globals._Color3rd * _1146;
        highp float _1148 = _1147.w;
        _1147.w = mix(_1148, _1148 * clamp((_453 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1174;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_392 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_392 < 0.0)))
        {
            highp vec4 _1173 = _1147;
            _1173.w = 0.0;
            _1174 = _1173;
        }
        else
        {
            _1174 = _1147;
        }
        highp vec4 _1213;
        highp vec4 _1214;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1185;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1184 = _961;
                _1184.w = _1174.w;
                _1185 = _1184;
            }
            else
            {
                _1185 = _961;
            }
            highp vec4 _1193;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1192 = _1185;
                _1192.w = _1185.w * _1174.w;
                _1193 = _1192;
            }
            else
            {
                _1193 = _1185;
            }
            highp vec4 _1202;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1201 = _1193;
                _1201.w = clamp(_1193.w + _1174.w, 0.0, 1.0);
                _1202 = _1201;
            }
            else
            {
                _1202 = _1193;
            }
            highp vec4 _1211;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1210 = _1202;
                _1210.w = clamp(_1202.w - _1174.w, 0.0, 1.0);
                _1211 = _1210;
            }
            else
            {
                _1211 = _1202;
            }
            highp vec4 _1212 = _1174;
            _1212.w = 1.0;
            _1213 = _1212;
            _1214 = _1211;
        }
        else
        {
            _1213 = _1174;
            _1214 = _961;
        }
        highp vec3 _1224 = _1214.xyz + _1213.xyz;
        highp vec3 _1225 = _1214.xyz * _1213.xyz;
        bvec3 _1227 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1228 = vec3(_1227.x ? _1213.xyz.x : _334.x, _1227.y ? _1213.xyz.y : _334.y, _1227.z ? _1213.xyz.z : _334.z);
        bvec3 _1230 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1238;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1236 = (-_1214.xyz) * _1213.xyz + _1224;
            bvec3 _2784 = isnan(_1236);
            bvec3 _2785 = isnan(_1214.xyz);
            highp vec3 _2786 = max(_1236, _1214.xyz);
            highp vec3 _2787 = vec3(_2784.x ? _1214.xyz.x : _2786.x, _2784.y ? _1214.xyz.y : _2786.y, _2784.z ? _1214.xyz.z : _2786.z);
            _1238 = vec3(_2785.x ? _1236.x : _2787.x, _2785.y ? _1236.y : _2787.y, _2785.z ? _1236.z : _2787.z);
        }
        else
        {
            _1238 = vec3(_1230.x ? _1224.x : _1228.x, _1230.y ? _1224.y : _1228.y, _1230.z ? _1224.z : _1228.z);
        }
        bvec3 _1240 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1242 = mix(_1214.xyz, vec3(_1240.x ? _1225.x : _1238.x, _1240.y ? _1225.y : _1238.y, _1240.z ? _1225.z : _1238.z), vec3(_1213.w * _Globals._Main3rdEnableLighting));
        _1244 = _1213;
        _1245 = vec4(_1242.x, _1242.y, _1242.z, _1214.w);
    }
    else
    {
        _1244 = _Globals._Color3rd;
        _1245 = _961;
    }
    highp vec4 _1294;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1258 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _510 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1265 = clamp(_1258.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1270;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1269 = _1245;
            _1269.w = _1265;
            _1270 = _1269;
        }
        else
        {
            _1270 = _1245;
        }
        highp vec4 _1277;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1276 = _1270;
            _1276.w = _1270.w * _1265;
            _1277 = _1276;
        }
        else
        {
            _1277 = _1270;
        }
        highp vec4 _1285;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1284 = _1277;
            _1284.w = clamp(_1277.w + _1265, 0.0, 1.0);
            _1285 = _1284;
        }
        else
        {
            _1285 = _1277;
        }
        highp vec4 _1293;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1292 = _1285;
            _1292.w = clamp(_1285.w - _1265, 0.0, 1.0);
            _1293 = _1292;
        }
        else
        {
            _1293 = _1285;
        }
        _1294 = _1293;
    }
    else
    {
        _1294 = _1245;
    }
    highp vec4 _1415;
    highp float _1416;
    if ((_383 & 1) != 0)
    {
        highp vec4 _1298 = _1294;
        _1298.w = 1.0;
        highp vec2 _1314 = roundEven(_Globals._DissolveParams.xy);
        highp float _1315 = _1314.x;
        highp vec4 _1404;
        highp float _1405;
        if (_1315 != 0.0)
        {
            bool _1319 = _1315 == 1.0;
            highp float _1329;
            if (_1319 && true)
            {
                _1329 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1329 = 1.0;
            }
            highp vec4 _1338 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1340 = _1338.x - 0.5;
            highp float _1353;
            highp float _1354;
            if (_1319)
            {
                highp float _1343 = _1340 * _Globals._DissolveNoiseStrength + _1329;
                _1353 = 1.0 - clamp(abs(_1343 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1354 = float(_1343 > _Globals._DissolveParams.z);
            }
            else
            {
                _1353 = 0.0;
                _1354 = _1329;
            }
            highp float _1377;
            highp float _1378;
            if (_1315 == 2.0)
            {
                highp float _1366 = (_1314.y == 1.0) ? (_1340 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1340 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1377 = 1.0 - clamp(abs(_1366 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1378 = _1354 * float(_1366 > _Globals._DissolveParams.z);
            }
            else
            {
                _1377 = _1353;
                _1378 = _1354;
            }
            highp float _1401;
            highp float _1402;
            if (_1315 == 3.0)
            {
                highp float _1390 = (_1314.y == 1.0) ? (_1340 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1340 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1401 = 1.0 - clamp(abs(_1390 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1402 = _1378 * float(_1390 > _Globals._DissolveParams.z);
            }
            else
            {
                _1401 = _1377;
                _1402 = _1378;
            }
            highp vec4 _1403 = _1298;
            _1403.w = _1402;
            _1404 = _1403;
            _1405 = _1401;
        }
        else
        {
            _1404 = _1298;
            _1405 = 0.0;
        }
        highp vec4 _1411;
        if ((_383 & 2) != 0)
        {
            highp vec4 _1410 = _1404;
            _1410.w = 1.0 - _1404.w;
            _1411 = _1410;
        }
        else
        {
            _1411 = _1404;
        }
        highp vec4 _1414 = _1411;
        _1414.w = _1411.w * _1294.w;
        _1415 = _1414;
        _1416 = _1405;
    }
    else
    {
        _1415 = _1294;
        _1416 = 0.0;
    }
    highp float _1421 = fwidth(_1415.w);
    highp float _1425 = clamp(((_1415.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1421 : (isnan(_1421) ? 9.9999997473787516355514526367188e-05 : max(_1421, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1426 = _1415;
    _1426.w = _1425;
    if (_1425 == 0.0)
    {
        discard;
    }
    highp vec4 _1603;
    highp float _1604;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1453 = clamp(dot(_444, mix(_672, _667, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1456 = clamp(dot(_444, mix(_672, _667, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1459 = clamp(dot(_444, mix(_672, _667, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1463 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1466 = clamp(_443 + distance(_444, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1469 = mix(1.0, _1466, _Globals._ShadowReceive);
        highp float _1470 = _1453 * _1469;
        highp float _1473 = mix(1.0, _1466, _Globals._Shadow2ndReceive);
        highp float _1477 = mix(1.0, _1466, _Globals._Shadow3rdReceive);
        highp float _1488 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1489 = clamp(_1488, 0.0, 1.0);
        highp float _1491 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1504 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1518 = clamp(_1488 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1531 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1546 = (_392 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1547 = clamp((_1453 * _1469 + (-_1489)) / clamp(fwidth(_1470) * _1463 + (_1491 - _1489), 0.0, 1.0), 0.0, 1.0) * _1546;
        highp vec3 _1579 = mix(mix(_1426.xyz * _Globals._ShadowColor.xyz, (_1426.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1456 * _1473 + (-_1504)) / clamp(fwidth(_1456 * _1473) * _1463 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1504), 0.0, 1.0), 0.0, 1.0) * _1546)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1426.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1459 * _1477 + (-_1531)) / clamp(fwidth(_1459 * _1477) * _1463 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1531), 0.0, 1.0), 0.0, 1.0) * _1546)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1585 = _1426.xyz * out_var_TEXCOORD6;
        highp vec3 _1591 = mix(mix(_1579, _1579 * _1426.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1426.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2794 = isnan(_1591);
        bvec3 _2795 = isnan(_1585);
        highp vec3 _2796 = min(_1591, _1585);
        highp vec3 _2797 = vec3(_2794.x ? _1585.x : _2796.x, _2794.y ? _1585.y : _2796.y, _2794.z ? _1585.z : _2796.z);
        highp vec3 _1599 = mix(mix(vec3(_2795.x ? _1591.x : _2797.x, _2795.y ? _1591.y : _2797.y, _2795.z ? _1591.z : _2797.z), _1585, _Globals._ShadowBorderColor.xyz * (clamp((_1453 * _1469 + (-_1518)) / clamp(fwidth(_1470) * _1463 + (_1491 - _1518), 0.0, 1.0), 0.0, 1.0) * _1546)), _1585, vec3(mix(1.0, _1547, _Globals._ShadowStrength)));
        _1603 = vec4(_1599.x, _1599.y, _1599.z, _1426.w);
        _1604 = _1547;
    }
    else
    {
        highp vec3 _1601 = _1426.xyz * out_var_TEXCOORD6;
        _1603 = vec4(_1601.x, _1601.y, _1601.z, _1426.w);
        _1604 = 1.0;
    }
    highp vec3 _1607 = vec3(_Globals._LightMaxLimit);
    bvec3 _2799 = isnan(out_var_TEXCOORD6);
    bvec3 _2800 = isnan(_1607);
    highp vec3 _2801 = min(out_var_TEXCOORD6, _1607);
    highp vec3 _2802 = vec3(_2799.x ? _1607.x : _2801.x, _2799.y ? _1607.y : _2801.y, _2799.z ? _1607.z : _2801.z);
    highp vec3 _1608 = vec3(_2800.x ? out_var_TEXCOORD6.x : _2802.x, _2800.y ? out_var_TEXCOORD6.y : _2802.y, _2800.z ? out_var_TEXCOORD6.z : _2802.z);
    highp float _1609 = clamp(_1604, 0.0, 1.0);
    highp vec3 _1611 = _1426.xyz * _Globals._LightMaxLimit;
    bvec3 _2804 = isnan(_1603.xyz);
    bvec3 _2805 = isnan(_1611);
    highp vec3 _2806 = min(_1603.xyz, _1611);
    highp vec3 _2807 = vec3(_2804.x ? _1611.x : _2806.x, _2804.y ? _1611.y : _2806.y, _2804.z ? _1611.z : _2806.z);
    highp vec3 _1612 = vec3(_2805.x ? _1603.xyz.x : _2807.x, _2805.y ? _1603.xyz.y : _2807.y, _2805.z ? _1603.xyz.z : _2807.z);
    highp vec4 _1646;
    if (_682)
    {
        highp vec3 _1616 = _1612.xyz;
        highp vec3 _1626 = _1616 + _960.xyz;
        highp vec3 _1627 = _1616 * _960.xyz;
        bvec3 _1629 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1630 = vec3(_1629.x ? _960.xyz.x : _334.x, _1629.y ? _960.xyz.y : _334.y, _1629.z ? _960.xyz.z : _334.z);
        bvec3 _1632 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1640;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1638 = (-_1616) * _960.xyz + _1626;
            bvec3 _2809 = isnan(_1638);
            bvec3 _2810 = isnan(_1616);
            highp vec3 _2811 = max(_1638, _1616);
            highp vec3 _2812 = vec3(_2809.x ? _1616.x : _2811.x, _2809.y ? _1616.y : _2811.y, _2809.z ? _1616.z : _2811.z);
            _1640 = vec3(_2810.x ? _1638.x : _2812.x, _2810.y ? _1638.y : _2812.y, _2810.z ? _1638.z : _2812.z);
        }
        else
        {
            _1640 = vec3(_1632.x ? _1626.x : _1630.x, _1632.y ? _1626.y : _1630.y, _1632.z ? _1626.z : _1630.z);
        }
        bvec3 _1642 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1644 = mix(_1616, vec3(_1642.x ? _1627.x : _1640.x, _1642.y ? _1627.y : _1640.y, _1642.z ? _1627.z : _1640.z), vec3((-_960.w) * _Globals._Main2ndEnableLighting + _960.w));
        _1646 = vec4(_1644.x, _1644.y, _1644.z, _1603.w);
    }
    else
    {
        _1646 = vec4(_1612.x, _1612.y, _1612.z, _1603.w);
    }
    highp vec4 _1679;
    if (_966)
    {
        highp vec3 _1659 = _1646.xyz + _1244.xyz;
        highp vec3 _1660 = _1646.xyz * _1244.xyz;
        bvec3 _1662 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1663 = vec3(_1662.x ? _1244.xyz.x : _334.x, _1662.y ? _1244.xyz.y : _334.y, _1662.z ? _1244.xyz.z : _334.z);
        bvec3 _1665 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1673;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1671 = (-_1646.xyz) * _1244.xyz + _1659;
            bvec3 _2814 = isnan(_1671);
            bvec3 _2815 = isnan(_1646.xyz);
            highp vec3 _2816 = max(_1671, _1646.xyz);
            highp vec3 _2817 = vec3(_2814.x ? _1646.xyz.x : _2816.x, _2814.y ? _1646.xyz.y : _2816.y, _2814.z ? _1646.xyz.z : _2816.z);
            _1673 = vec3(_2815.x ? _1671.x : _2817.x, _2815.y ? _1671.y : _2817.y, _2815.z ? _1671.z : _2817.z);
        }
        else
        {
            _1673 = vec3(_1665.x ? _1659.x : _1663.x, _1665.y ? _1659.y : _1663.y, _1665.z ? _1659.z : _1663.z);
        }
        bvec3 _1675 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1677 = mix(_1646.xyz, vec3(_1675.x ? _1660.x : _1673.x, _1675.y ? _1660.y : _1673.y, _1675.z ? _1660.z : _1673.z), vec3((-_1244.w) * _Globals._Main3rdEnableLighting + _1244.w));
        _1679 = vec4(_1677.x, _1677.y, _1677.z, _1646.w);
    }
    else
    {
        _1679 = _1646;
    }
    highp vec4 _1725;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1695 = pow(clamp(1.0 - abs(dot(mix(_672, _667, vec3(_Globals._RimShadeNormalStrength)), _460)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1704 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1723 = mix(_1679.xyz, _1679.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1695 - _1704) / clamp(fwidth(_1695) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1704), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1725 = vec4(_1723.x, _1723.y, _1723.z, _1679.w);
    }
    else
    {
        _1725 = _1679;
    }
    highp vec4 _1798;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1749 = dot(normalize(((-_460) * _Globals._BacklightViewStrength) + _444), mix(_672, _667, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1759;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1759 = _1749 * clamp(_443 + distance(_444, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1759 = _1749;
        }
        highp float _1768 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1796 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1426.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_392 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_460, _444) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1759 - _1768) / clamp(fwidth(_1759) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1768), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1608 + _1725.xyz;
        _1798 = vec4(_1796.x, _1796.y, _1796.z, _1725.w);
    }
    else
    {
        _1798 = _1725;
    }
    highp vec4 _2041;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1808 = dFdx(_667);
        highp vec3 _1809 = abs(_1808);
        highp vec3 _1810 = dFdy(_667);
        highp vec3 _1811 = abs(_1810);
        highp float _1812 = dot(_1809, _1809);
        highp float _1813 = dot(_1811, _1811);
        highp float _1814 = isnan(_1813) ? _1812 : (isnan(_1812) ? _1813 : max(_1812, _1813));
        highp float _1817 = (_1814 / (_1814 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1820 = clamp(1.0 - (isnan(_1817) ? 0.0 : (isnan(0.0) ? _1817 : max(0.0, _1817))), 0.0, 1.0);
        highp float _1821 = isnan(_1820) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1820 : min(_Globals._Smoothness, _1820));
        highp float _1822 = 1.0 - _1821;
        highp float _1823 = _1822 * _1822;
        highp vec3 _1828 = _1798.xyz - (_1798.xyz * _Globals._Metallic);
        highp vec3 _1834 = mix(vec3(_Globals._Reflectance), _1426.xyz, vec3(_Globals._Metallic));
        highp vec4 _1937;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1909;
            do
            {
                highp vec3 _1847 = mix(_672, _667, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1849 = normalize(_460 + _444);
                highp float _1851 = clamp(dot(_1847, _1849), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1860 = pow(_1851, 1.0 / _1823);
                    highp float _1867 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1909 = vec3(clamp((_1860 - _1867) / clamp(fwidth(_1860) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1867), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1879 = clamp(dot(_1847, _460), 0.0, 1.0);
                highp float _1881 = clamp(dot(_1847, _444), 0.0, 1.0);
                highp float _1884 = isnan(0.00200000009499490261077880859375) ? _1823 : (isnan(_1823) ? 0.00200000009499490261077880859375 : max(_1823, 0.00200000009499490261077880859375));
                highp float _1885 = 1.0 - _1884;
                highp float _1889 = _1884 * _1884;
                highp float _1892 = (_1851 * _1889 + (-_1851)) * _1851 + 1.0;
                highp float _1900 = 1.0 - clamp(dot(_444, _1849), 0.0, 1.0);
                _1909 = (_1834 + ((((((vec3(1.0) - _1834) * _1900) * _1900) * _1900) * _1900) * _1900)) * (((0.5 / ((_1881 * (_1879 * _1885 + _1884) + (_1879 * (_1881 * _1885 + _1884))) + 9.9999997473787516355514526367188e-06)) * (_1889 / (_1892 * _1892 + 1.0000000116860974230803549289703e-07))) * _1881);
                break;
            } while(false);
            highp vec3 _1910 = _1828.xyz;
            highp vec3 _1912 = _Globals._ReflectionColor.xyz * _1608;
            highp vec3 _1917 = _Globals._ReflectionColor.xyz * _1608 + _1910;
            highp vec3 _1918 = _1910 * _1912;
            bvec3 _1920 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1921 = vec3(_1920.x ? _1912.x : _334.x, _1920.y ? _1912.y : _334.y, _1920.z ? _1912.z : _334.z);
            bvec3 _1923 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1931;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1929 = (-_1910) * _1912 + _1917;
                bvec3 _2839 = isnan(_1929);
                bvec3 _2840 = isnan(_1910);
                highp vec3 _2841 = max(_1929, _1910);
                highp vec3 _2842 = vec3(_2839.x ? _1910.x : _2841.x, _2839.y ? _1910.y : _2841.y, _2839.z ? _1910.z : _2841.z);
                _1931 = vec3(_2840.x ? _1929.x : _2842.x, _2840.y ? _1929.y : _2842.y, _2840.z ? _1929.z : _2842.z);
            }
            else
            {
                _1931 = vec3(_1923.x ? _1917.x : _1921.x, _1923.y ? _1917.y : _1921.y, _1923.z ? _1917.z : _1921.z);
            }
            bvec3 _1933 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1935 = mix(_1910, vec3(_1933.x ? _1918.x : _1931.x, _1933.y ? _1918.y : _1931.y, _1933.z ? _1918.z : _1931.z), _1909 * _Globals._ReflectionColor.w);
            _1937 = vec4(_1935.x, _1935.y, _1935.z, _1798.w);
        }
        else
        {
            _1937 = vec4(_1828.x, _1828.y, _1828.z, _1798.w);
        }
        highp vec4 _2040;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1959 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0SPIRV_Cross_DummySampler, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1966 = reflect(-_460, mix(_672, _667, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1969 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1966, _1822 * ((-4.19999980926513671875) * _1822 + 10.19999980926513671875));
            highp vec3 _1989 = ((_1969.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1969.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1608, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1995 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1966, _1822 * 8.0).xyz * 1.0;
            highp float _2006 = 1.0 - _669;
            highp vec3 _2020 = _1937.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2021 = _1937.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2023 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2024 = vec3(_2023.x ? _Globals._ReflectionColor.xyz.x : _334.x, _2023.y ? _Globals._ReflectionColor.xyz.y : _334.y, _2023.z ? _Globals._ReflectionColor.xyz.z : _334.z);
            bvec3 _2026 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2034;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2032 = (-_1937.xyz) * _Globals._ReflectionColor.xyz + _2020;
                bvec3 _2844 = isnan(_2032);
                bvec3 _2845 = isnan(_1937.xyz);
                highp vec3 _2846 = max(_2032, _1937.xyz);
                highp vec3 _2847 = vec3(_2844.x ? _1937.xyz.x : _2846.x, _2844.y ? _1937.xyz.y : _2846.y, _2844.z ? _1937.xyz.z : _2846.z);
                _2034 = vec3(_2845.x ? _2032.x : _2847.x, _2845.y ? _2032.y : _2847.y, _2845.z ? _2032.z : _2847.z);
            }
            else
            {
                _2034 = vec3(_2026.x ? _2020.x : _2024.x, _2026.y ? _2020.y : _2024.y, _2026.z ? _2020.z : _2024.z);
            }
            bvec3 _2036 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2038 = mix(_1937.xyz, vec3(_2036.x ? _2021.x : _2034.x, _2036.y ? _2021.y : _2034.y, _2036.z ? _2021.z : _2034.z), ((vec3(_1959.x ? _1989.x : _1995.x, _1959.y ? _1989.y : _1995.y, _1959.z ? _1989.z : _1995.z) * (1.0 / (_1823 * _1823 + 1.0))) * mix(_1834, vec3(clamp(_1821 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2006 * _2006) * _2006) * _2006) * _2006))) * _Globals._ReflectionColor.w);
            _2040 = vec4(_2038.x, _2038.y, _2038.z, _1937.w);
        }
        else
        {
            _2040 = _1937;
        }
        _2041 = _2040;
    }
    else
    {
        _2041 = _1798;
    }
    highp vec4 _2147;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2067 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2068 = vec3(_2067.x ? _460.x : _360.x, _2067.y ? _460.y : _360.y, _2067.z ? _460.z : _360.z);
        bvec3 _2069 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2070 = vec3(_2069.x ? vec3(0.0, 1.0, 0.0).x : _367.x, _2069.y ? vec3(0.0, 1.0, 0.0).y : _367.y, _2069.z ? vec3(0.0, 1.0, 0.0).z : _367.z);
        highp vec3 _2074 = normalize(_2070 - (_2068 * dot(_2068, _2070)));
        highp vec4 _2096 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_672, _667, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2068, _2074), _2074, _2068)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2097 = _2096.xyz;
        highp float _2103 = _2096.w;
        highp vec3 _2113 = mix(_2097, _2097 * _1608, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2120 = mix(_2113, _2113 * _1426.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2127 = _2041.xyz + _2120;
        highp vec3 _2128 = _2041.xyz * _2120;
        bvec3 _2130 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2131 = vec3(_2130.x ? _2120.x : _334.x, _2130.y ? _2120.y : _334.y, _2130.z ? _2120.z : _334.z);
        bvec3 _2133 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2141;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2139 = (-_2041.xyz) * _2120 + _2127;
            bvec3 _2849 = isnan(_2139);
            bvec3 _2850 = isnan(_2041.xyz);
            highp vec3 _2851 = max(_2139, _2041.xyz);
            highp vec3 _2852 = vec3(_2849.x ? _2041.xyz.x : _2851.x, _2849.y ? _2041.xyz.y : _2851.y, _2849.z ? _2041.xyz.z : _2851.z);
            _2141 = vec3(_2850.x ? _2139.x : _2852.x, _2850.y ? _2139.y : _2852.y, _2850.z ? _2139.z : _2852.z);
        }
        else
        {
            _2141 = vec3(_2133.x ? _2127.x : _2131.x, _2133.y ? _2127.y : _2131.y, _2133.z ? _2127.z : _2131.z);
        }
        bvec3 _2143 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2145 = mix(_2041.xyz, vec3(_2143.x ? _2128.x : _2141.x, _2143.y ? _2128.y : _2141.y, _2143.z ? _2128.z : _2141.z), vec3(1.0) * (_Globals._MatCapBlend * ((_392 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2103, _2103 * _1609, _Globals._MatCapShadowMask))));
        _2147 = vec4(_2145.x, _2145.y, _2145.z, _2041.w);
    }
    else
    {
        _2147 = _2041;
    }
    highp vec4 _2252;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2172 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2173 = vec3(_2172.x ? _460.x : _360.x, _2172.y ? _460.y : _360.y, _2172.z ? _460.z : _360.z);
        bvec3 _2174 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2175 = vec3(_2174.x ? vec3(0.0, 1.0, 0.0).x : _367.x, _2174.y ? vec3(0.0, 1.0, 0.0).y : _367.y, _2174.z ? vec3(0.0, 1.0, 0.0).z : _367.z);
        highp vec3 _2179 = normalize(_2175 - (_2173 * dot(_2173, _2175)));
        highp vec4 _2201 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_672, _667, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2173, _2179), _2179, _2173)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2202 = _2201.xyz;
        highp float _2208 = _2201.w;
        highp vec3 _2218 = mix(_2202, _2202 * _1608, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2225 = mix(_2218, _2218 * _1426.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2232 = _2147.xyz + _2225;
        highp vec3 _2233 = _2147.xyz * _2225;
        bvec3 _2235 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2236 = vec3(_2235.x ? _2225.x : _334.x, _2235.y ? _2225.y : _334.y, _2235.z ? _2225.z : _334.z);
        bvec3 _2238 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2246;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2244 = (-_2147.xyz) * _2225 + _2232;
            bvec3 _2854 = isnan(_2244);
            bvec3 _2855 = isnan(_2147.xyz);
            highp vec3 _2856 = max(_2244, _2147.xyz);
            highp vec3 _2857 = vec3(_2854.x ? _2147.xyz.x : _2856.x, _2854.y ? _2147.xyz.y : _2856.y, _2854.z ? _2147.xyz.z : _2856.z);
            _2246 = vec3(_2855.x ? _2244.x : _2857.x, _2855.y ? _2244.y : _2857.y, _2855.z ? _2244.z : _2857.z);
        }
        else
        {
            _2246 = vec3(_2238.x ? _2232.x : _2236.x, _2238.y ? _2232.y : _2236.y, _2238.z ? _2232.z : _2236.z);
        }
        bvec3 _2248 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2250 = mix(_2147.xyz, vec3(_2248.x ? _2233.x : _2246.x, _2248.y ? _2233.y : _2246.y, _2248.z ? _2233.z : _2246.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_392 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2208, _2208 * _1609, _Globals._MatCap2ndShadowMask))));
        _2252 = vec4(_2250.x, _2250.y, _2250.z, _2147.w);
    }
    else
    {
        _2252 = _2147;
    }
    highp vec4 _2398;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2271 = mix(_672, _667, vec3(_Globals._RimNormalStrength));
        highp float _2275 = dot(_444, _2271) * 0.5 + 0.5;
        highp float _2298 = (_392 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2271, _460)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2302 = mix(_2298, _2298 * clamp((_2275 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2303 = _2298 * clamp(((1.0 - _2275) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2313 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2322 = clamp((_2302 - _2313) / clamp(fwidth(_2302) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2313), 0.0, 1.0), 0.0, 1.0);
        highp float _2329 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2339 = clamp((_2303 * _Globals._RimDirStrength + (-_2329)) / clamp(fwidth(_2303 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2329), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2351 = vec3(1.0 - _Globals._RimEnableLighting) + (_1608 * _Globals._RimEnableLighting);
        highp vec3 _2353 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1426.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2354 = _2353 * _2351;
        highp vec3 _2360 = _2353 * _2351 + _2252.xyz;
        highp vec3 _2361 = _2252.xyz * _2354;
        bvec3 _2363 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2364 = vec3(_2363.x ? _2354.x : _334.x, _2363.y ? _2354.y : _334.y, _2363.z ? _2354.z : _334.z);
        bvec3 _2366 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2368 = _Globals._RimBlendMode == 2u;
        highp vec3 _2374;
        if (_2368)
        {
            highp vec3 _2372 = (-_2252.xyz) * _2354 + _2360;
            bvec3 _2859 = isnan(_2372);
            bvec3 _2860 = isnan(_2252.xyz);
            highp vec3 _2861 = max(_2372, _2252.xyz);
            highp vec3 _2862 = vec3(_2859.x ? _2252.xyz.x : _2861.x, _2859.y ? _2252.xyz.y : _2861.y, _2859.z ? _2252.xyz.z : _2861.z);
            _2374 = vec3(_2860.x ? _2372.x : _2862.x, _2860.y ? _2372.y : _2862.y, _2860.z ? _2372.z : _2862.z);
        }
        else
        {
            _2374 = vec3(_2366.x ? _2360.x : _2364.x, _2366.y ? _2360.y : _2364.y, _2366.z ? _2360.z : _2364.z);
        }
        bvec3 _2376 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2379 = mix(_2252.xyz, vec3(_2376.x ? _2361.x : _2374.x, _2376.y ? _2361.y : _2374.y, _2376.z ? _2361.z : _2374.z), vec3(mix(_2322, _2322 * _1609, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2381 = _Globals._RimIndirColor.xyz * _2351;
        highp vec3 _2385 = _Globals._RimIndirColor.xyz * _2351 + _2379;
        highp vec3 _2386 = _2379 * _2381;
        highp vec3 _2387 = vec3(_2363.x ? _2381.x : _334.x, _2363.y ? _2381.y : _334.y, _2363.z ? _2381.z : _334.z);
        highp vec3 _2394;
        if (_2368)
        {
            highp vec3 _2392 = (-_2379) * _2381 + _2385;
            bvec3 _2864 = isnan(_2392);
            bvec3 _2865 = isnan(_2379);
            highp vec3 _2866 = max(_2392, _2379);
            highp vec3 _2867 = vec3(_2864.x ? _2379.x : _2866.x, _2864.y ? _2379.y : _2866.y, _2864.z ? _2379.z : _2866.z);
            _2394 = vec3(_2865.x ? _2392.x : _2867.x, _2865.y ? _2392.y : _2867.y, _2865.z ? _2392.z : _2867.z);
        }
        else
        {
            _2394 = vec3(_2366.x ? _2385.x : _2387.x, _2366.y ? _2385.y : _2387.y, _2366.z ? _2385.z : _2387.z);
        }
        highp vec3 _2396 = mix(_2379, vec3(_2376.x ? _2386.x : _2394.x, _2376.y ? _2386.y : _2394.y, _2376.z ? _2386.z : _2394.z), vec3(mix(_2339, _2339 * _1609, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2398 = vec4(_2396.x, _2396.y, _2396.z, _2252.w);
    }
    else
    {
        _2398 = _2252;
    }
    highp vec4 _2512;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2409 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2410 = vec2(_2409.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2409.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2412 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2413 = vec2(_2412.x ? out_var_TEXCOORD1.xy.x : _2410.x, _2412.y ? out_var_TEXCOORD1.xy.y : _2410.y);
        bvec2 _2415 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2416 = vec2(_2415.x ? out_var_TEXCOORD1.zw.x : _2413.x, _2415.y ? out_var_TEXCOORD1.zw.y : _2413.y);
        bvec2 _2418 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2435 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2436 = sin(_2435);
        highp float _2437 = cos(_2435);
        highp vec2 _2438 = ((vec2(_2418.x ? _671.x : _2416.x, _2418.y ? _671.y : _2416.y) + (_475 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2439 = _2438.x;
        highp float _2440 = _2438.y;
        highp vec4 _2453 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2439 * _2437 + (-(_2440 * _2436)), _2439 * _2436 + (_2440 * _2437)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2454 = _Globals._EmissionColor * _2453;
        highp vec3 _2455 = _2454.xyz;
        highp vec3 _2461 = mix(_2455, _2455 * _448, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2475 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2481;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2481 = roundEven(_2475);
        }
        else
        {
            _2481 = _2475;
        }
        highp vec3 _2488 = mix(_2461, _2461 * _1426.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2492 = _2398.xyz + _2488;
        highp vec3 _2493 = _2398.xyz * _2488;
        bvec3 _2495 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2496 = vec3(_2495.x ? _2488.x : _334.x, _2495.y ? _2488.y : _334.y, _2495.z ? _2488.z : _334.z);
        bvec3 _2498 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2506;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2504 = (-_2398.xyz) * _2488 + _2492;
            bvec3 _2869 = isnan(_2504);
            bvec3 _2870 = isnan(_2398.xyz);
            highp vec3 _2871 = max(_2504, _2398.xyz);
            highp vec3 _2872 = vec3(_2869.x ? _2398.xyz.x : _2871.x, _2869.y ? _2398.xyz.y : _2871.y, _2869.z ? _2398.xyz.z : _2871.z);
            _2506 = vec3(_2870.x ? _2504.x : _2872.x, _2870.y ? _2504.y : _2872.y, _2870.z ? _2504.z : _2872.z);
        }
        else
        {
            _2506 = vec3(_2498.x ? _2492.x : _2496.x, _2498.y ? _2492.y : _2496.y, _2498.z ? _2492.z : _2496.z);
        }
        bvec3 _2508 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2510 = mix(_2398.xyz, vec3(_2508.x ? _2493.x : _2506.x, _2508.y ? _2493.y : _2506.y, _2508.z ? _2493.z : _2506.z), vec3((_Globals._EmissionBlend * mix(1.0, _2481, _Globals._EmissionBlink.x)) * _2454.w));
        _2512 = vec4(_2510.x, _2510.y, _2510.z, _2398.w);
    }
    else
    {
        _2512 = _2398;
    }
    highp vec4 _2626;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2523 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2524 = vec2(_2523.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2523.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2526 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2527 = vec2(_2526.x ? out_var_TEXCOORD1.xy.x : _2524.x, _2526.y ? out_var_TEXCOORD1.xy.y : _2524.y);
        bvec2 _2529 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2530 = vec2(_2529.x ? out_var_TEXCOORD1.zw.x : _2527.x, _2529.y ? out_var_TEXCOORD1.zw.y : _2527.y);
        bvec2 _2532 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2549 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2550 = sin(_2549);
        highp float _2551 = cos(_2549);
        highp vec2 _2552 = ((vec2(_2532.x ? _671.x : _2530.x, _2532.y ? _671.y : _2530.y) + (_475 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2553 = _2552.x;
        highp float _2554 = _2552.y;
        highp vec4 _2567 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2553 * _2551 + (-(_2554 * _2550)), _2553 * _2550 + (_2554 * _2551)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2568 = _Globals._Emission2ndColor * _2567;
        highp vec3 _2569 = _2568.xyz;
        highp vec3 _2575 = mix(_2569, _2569 * _448, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2589 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2595;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2595 = roundEven(_2589);
        }
        else
        {
            _2595 = _2589;
        }
        highp vec3 _2602 = mix(_2575, _2575 * _1426.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2606 = _2512.xyz + _2602;
        highp vec3 _2607 = _2512.xyz * _2602;
        bvec3 _2609 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2610 = vec3(_2609.x ? _2602.x : _334.x, _2609.y ? _2602.y : _334.y, _2609.z ? _2602.z : _334.z);
        bvec3 _2612 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2620;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2618 = (-_2512.xyz) * _2602 + _2606;
            bvec3 _2874 = isnan(_2618);
            bvec3 _2875 = isnan(_2512.xyz);
            highp vec3 _2876 = max(_2618, _2512.xyz);
            highp vec3 _2877 = vec3(_2874.x ? _2512.xyz.x : _2876.x, _2874.y ? _2512.xyz.y : _2876.y, _2874.z ? _2512.xyz.z : _2876.z);
            _2620 = vec3(_2875.x ? _2618.x : _2877.x, _2875.y ? _2618.y : _2877.y, _2875.z ? _2618.z : _2877.z);
        }
        else
        {
            _2620 = vec3(_2612.x ? _2606.x : _2610.x, _2612.y ? _2606.y : _2610.y, _2612.z ? _2606.z : _2610.z);
        }
        bvec3 _2622 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2624 = mix(_2512.xyz, vec3(_2622.x ? _2607.x : _2620.x, _2622.y ? _2607.y : _2620.y, _2622.z ? _2607.z : _2620.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2595, _Globals._Emission2ndBlink.x)) * _2568.w));
        _2626 = vec4(_2624.x, _2624.y, _2624.z, _2512.w);
    }
    else
    {
        _2626 = _2512;
    }
    bvec3 _2634 = bvec3(_392 < 0.0);
    highp vec3 _2635 = (_2626.xyz + (_Globals._DissolveColor.xyz * _1416)).xyz;
    highp vec3 _2643 = mix(_2635, _Globals._BackfaceColor.xyz * _1608, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2678 = vec3(_2634.x ? _2643.x : _2635.x, _2634.y ? _2643.y : _2635.y, _2634.z ? _2643.z : _2635.z).xyz;
    highp vec3 _2686 = mix(_2678, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2678, vec3(pow(clamp(1.0 - abs(dot(_672, _460)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_392 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _453) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2686.x, _2686.y, _2686.z, _2626.w), vec4(out_var_TEXCOORD9));
}
