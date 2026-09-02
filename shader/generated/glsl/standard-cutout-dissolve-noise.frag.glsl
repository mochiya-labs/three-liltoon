#version 300 es
precision mediump float;
precision highp int;

vec3 _328;
vec3 _334;

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
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap;

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
    highp vec3 _354 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _361 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _377 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _386 = float(gl_FrontFacing ? 1 : (-1));
    highp float _437;
    do
    {
        highp vec3 _393 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _394 = _393.xy;
        highp float _400 = _393.z;
        if ((any(lessThan(_394, vec2(0.0))) || any(greaterThan(_394, vec2(1.0)))) || (_400 > 1.0))
        {
            _437 = 1.0;
            break;
        }
        highp float _410 = _400 + _Globals.uShadowBias;
        _437 = (((step(_410, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _394), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_410, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _394), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_410, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _394), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_410, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _394), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _438 = normalize(out_var_TEXCOORD7);
    highp vec3 _442 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _446 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _447 = length(_446);
    highp vec3 _454 = normalize(_446);
    highp mat3 _463 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _464 = _454 * _463;
    bvec2 _474 = bvec2(_386 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _475 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _488 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _489 = sin(_488);
    highp float _490 = cos(_488);
    highp vec2 _491 = (vec2(_474.x ? _475.x : out_var_TEXCOORD0.xy.x, _474.y ? _475.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _492 = _491.x;
    highp float _493 = _491.y;
    highp vec2 _504 = (vec2(_492 * _490 + (-(_493 * _489)), _492 * _489 + (_493 * _490)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _508 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _504);
    highp vec3 _515 = pow(abs(_508.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _516 = _515.z;
    highp float _517 = _515.y;
    bvec4 _519 = bvec4(_516 > _517);
    highp vec4 _520 = vec4(_516, _517, -1.0, 0.666666686534881591796875);
    highp vec4 _521 = vec4(_517, _516, 0.0, -0.3333333432674407958984375);
    highp vec4 _522 = vec4(_519.x ? _520.x : _521.x, _519.y ? _520.y : _521.y, _519.z ? _520.z : _521.z, _519.w ? _520.w : _521.w);
    highp float _523 = _522.x;
    highp float _524 = _515.x;
    bvec4 _526 = bvec4(_523 > _524);
    highp vec4 _529 = vec4(_523, _522.yw, _524);
    highp vec4 _531 = vec4(_524, _522.yz, _523);
    highp vec4 _532 = vec4(_526.x ? _529.x : _531.x, _526.y ? _529.y : _531.y, _526.z ? _529.z : _531.z, _526.w ? _529.w : _531.w);
    highp float _537 = _532.x - (isnan(_532.y) ? _532.w : (isnan(_532.w) ? _532.y : min(_532.w, _532.y)));
    highp float _550 = clamp((_537 / (_532.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _553 = clamp(_532.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _567 = vec3((-_553) * _550 + _553) + (clamp(abs((fract(vec3(abs(_532.z + ((_532.w - _532.y) / (6.0 * _537 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_553 * _550));
    highp vec4 _571 = vec4(_567.x, _567.y, _567.z, _508.w) * _Globals._Color;
    highp vec3 _603;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _584 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _504 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _584.w = _584.w * _584.x;
        highp vec2 _595 = ((_584.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _596 = vec3(_595.x, _595.y, _334.z);
        highp vec2 _597 = _595.xy;
        _596.z = sqrt(1.0 - clamp(dot(_597, _597), 0.0, 1.0));
        _603 = _596;
    }
    else
    {
        _603 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _652;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _612 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _613 = vec2(_612.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _612.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _615 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _616 = vec2(_615.x ? out_var_TEXCOORD1.xy.x : _613.x, _615.y ? out_var_TEXCOORD1.xy.y : _613.y);
        bvec2 _618 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _628 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_618.x ? out_var_TEXCOORD1.zw.x : _616.x, _618.y ? out_var_TEXCOORD1.zw.y : _616.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _628.w = _628.w * _628.x;
        highp vec2 _640 = (((_628.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _652 = vec3(_603.xy + _640, _603.z * sqrt(1.0 - clamp(dot(_640, _640), 0.0, 1.0)));
    }
    else
    {
        _652 = _603;
    }
    highp vec3 _654 = normalize(_463 * _652);
    bvec3 _659 = bvec3(_386 < (_Globals._FlipNormal - 1.0));
    highp vec3 _660 = -_654;
    highp vec3 _661 = vec3(_659.x ? _660.x : _654.x, _659.y ? _660.y : _654.y, _659.z ? _660.z : _654.z);
    highp float _662 = dot(_661, _454);
    highp float _663 = clamp(_662, 0.0, 1.0);
    highp vec2 _665 = vec2(abs(_662));
    highp vec3 _666 = normalize(out_var_TEXCOORD4);
    highp vec2 _670 = ((_661 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _361, _354)).xy * 0.5) + vec2(0.5);
    bool _671 = out_var_TEXCOORD5.w > 0.0;
    bool _676 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _954;
    highp vec4 _955;
    if (_676)
    {
        bvec2 _682 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _683 = vec2(_682.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _682.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _685 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _686 = vec2(_685.x ? out_var_TEXCOORD1.xy.x : _683.x, _685.y ? out_var_TEXCOORD1.xy.y : _683.y);
        bvec2 _688 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _689 = vec2(_688.x ? out_var_TEXCOORD1.zw.x : _686.x, _688.y ? out_var_TEXCOORD1.zw.y : _686.y);
        bvec2 _691 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _692 = vec2(_691.x ? _670.x : _689.x, _691.y ? _670.y : _689.y);
        highp vec4 _731 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _732 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _740;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _739 = _692;
            _739.x = abs(_692.x - 0.5) + 0.5;
            _740 = _739;
        }
        else
        {
            _740 = _692;
        }
        highp vec2 _741 = _731.xy;
        highp vec2 _742 = _731.zw;
        highp vec2 _743 = _740 * _741 + _742;
        highp vec2 _752;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_692.x < 0.5))
        {
            highp vec2 _751 = _743;
            _751.x = 1.0 - _743.x;
            _752 = _751;
        }
        else
        {
            _752 = _743;
        }
        highp vec2 _759;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _671)
        {
            highp vec2 _758 = _752;
            _758.x = 1.0 - _752.x;
            _759 = _758;
        }
        else
        {
            _759 = _752;
        }
        highp vec2 _764;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _671)
        {
            highp vec2 _763 = _759;
            _763.x = -1.0;
            _764 = _763;
        }
        else
        {
            _764 = _759;
        }
        highp vec2 _770;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_671))
        {
            highp vec2 _769 = _764;
            _769.x = -1.0;
            _770 = _769;
        }
        else
        {
            _770 = _764;
        }
        highp float _773 = sin(_732);
        highp float _774 = cos(_732);
        highp vec2 _775 = ((_770 - _742) / _741) - vec2(0.5);
        highp float _776 = _775.x;
        highp float _777 = _775.y;
        highp vec2 _785 = (vec2(_776 * _774 + (-(_777 * _773)), _776 * _773 + (_777 * _774)) + vec2(0.5)) * _741 + _742;
        uint _789 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _793 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _789 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _789);
        highp float _794 = _785.x;
        highp float _795 = _785.y;
        uint _802 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _812 = ((mix(vec2(_794, 1.0 - _795), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_793 % _802), float(_793 / _802))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _812.y = 1.0 - _812.y;
        highp vec4 _817 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _812);
        highp vec4 _833;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _820 = _817.x;
            highp float _821 = _817.y;
            highp float _822 = _817.z;
            highp float _823 = isnan(_821) ? _820 : (isnan(_820) ? _821 : min(_820, _821));
            highp float _824 = isnan(_821) ? _820 : (isnan(_820) ? _821 : max(_820, _821));
            highp float _825 = isnan(_822) ? _824 : (isnan(_824) ? _822 : min(_824, _822));
            highp float _826 = isnan(_825) ? _823 : (isnan(_823) ? _825 : max(_823, _825));
            _833 = vec4(1.0, 1.0, 1.0, clamp((_826 - 0.5) / clamp(fwidth(_826), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _833 = _817;
        }
        highp vec4 _856;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _837 = clamp(_663 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _840 = 0.5 - abs(_794 - 0.5);
            highp float _847 = 0.5 - abs(_795 - 0.5);
            highp vec4 _855 = _833;
            _855.w = _833.w * (clamp(_840 / clamp(fwidth(_840), 9.9999997473787516355514526367188e-05, _837), 0.0, 1.0) * clamp(_847 / clamp(fwidth(_847), 9.9999997473787516355514526367188e-05, _837), 0.0, 1.0));
            _856 = _855;
        }
        else
        {
            _856 = _833;
        }
        highp vec4 _857 = _Globals._Color2nd * _856;
        highp float _858 = _857.w;
        _857.w = mix(_858, _858 * clamp((_447 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _884;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_386 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_386 < 0.0)))
        {
            highp vec4 _883 = _857;
            _883.w = 0.0;
            _884 = _883;
        }
        else
        {
            _884 = _857;
        }
        highp vec4 _923;
        highp vec4 _924;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _895;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _894 = _571;
                _894.w = _884.w;
                _895 = _894;
            }
            else
            {
                _895 = _571;
            }
            highp vec4 _903;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _902 = _895;
                _902.w = _895.w * _884.w;
                _903 = _902;
            }
            else
            {
                _903 = _895;
            }
            highp vec4 _912;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _911 = _903;
                _911.w = clamp(_903.w + _884.w, 0.0, 1.0);
                _912 = _911;
            }
            else
            {
                _912 = _903;
            }
            highp vec4 _921;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _920 = _912;
                _920.w = clamp(_912.w - _884.w, 0.0, 1.0);
                _921 = _920;
            }
            else
            {
                _921 = _912;
            }
            highp vec4 _922 = _884;
            _922.w = 1.0;
            _923 = _922;
            _924 = _921;
        }
        else
        {
            _923 = _884;
            _924 = _571;
        }
        highp vec3 _934 = _924.xyz + _923.xyz;
        highp vec3 _935 = _924.xyz * _923.xyz;
        bvec3 _937 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _938 = vec3(_937.x ? _923.xyz.x : _328.x, _937.y ? _923.xyz.y : _328.y, _937.z ? _923.xyz.z : _328.z);
        bvec3 _940 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _948;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _946 = (-_924.xyz) * _923.xyz + _934;
            bvec3 _2702 = isnan(_946);
            bvec3 _2703 = isnan(_924.xyz);
            highp vec3 _2704 = max(_946, _924.xyz);
            highp vec3 _2705 = vec3(_2702.x ? _924.xyz.x : _2704.x, _2702.y ? _924.xyz.y : _2704.y, _2702.z ? _924.xyz.z : _2704.z);
            _948 = vec3(_2703.x ? _946.x : _2705.x, _2703.y ? _946.y : _2705.y, _2703.z ? _946.z : _2705.z);
        }
        else
        {
            _948 = vec3(_940.x ? _934.x : _938.x, _940.y ? _934.y : _938.y, _940.z ? _934.z : _938.z);
        }
        bvec3 _950 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _952 = mix(_924.xyz, vec3(_950.x ? _935.x : _948.x, _950.y ? _935.y : _948.y, _950.z ? _935.z : _948.z), vec3(_923.w * _Globals._Main2ndEnableLighting));
        _954 = _923;
        _955 = vec4(_952.x, _952.y, _952.z, _924.w);
    }
    else
    {
        _954 = _Globals._Color2nd;
        _955 = _571;
    }
    bool _960 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1238;
    highp vec4 _1239;
    if (_960)
    {
        bvec2 _966 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _967 = vec2(_966.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _966.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _969 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _970 = vec2(_969.x ? out_var_TEXCOORD1.xy.x : _967.x, _969.y ? out_var_TEXCOORD1.xy.y : _967.y);
        bvec2 _972 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _973 = vec2(_972.x ? out_var_TEXCOORD1.zw.x : _970.x, _972.y ? out_var_TEXCOORD1.zw.y : _970.y);
        bvec2 _975 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _976 = vec2(_975.x ? _670.x : _973.x, _975.y ? _670.y : _973.y);
        highp vec4 _1015 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1016 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1024;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1023 = _976;
            _1023.x = abs(_976.x - 0.5) + 0.5;
            _1024 = _1023;
        }
        else
        {
            _1024 = _976;
        }
        highp vec2 _1025 = _1015.xy;
        highp vec2 _1026 = _1015.zw;
        highp vec2 _1027 = _1024 * _1025 + _1026;
        highp vec2 _1036;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_976.x < 0.5))
        {
            highp vec2 _1035 = _1027;
            _1035.x = 1.0 - _1027.x;
            _1036 = _1035;
        }
        else
        {
            _1036 = _1027;
        }
        highp vec2 _1043;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _671)
        {
            highp vec2 _1042 = _1036;
            _1042.x = 1.0 - _1036.x;
            _1043 = _1042;
        }
        else
        {
            _1043 = _1036;
        }
        highp vec2 _1048;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _671)
        {
            highp vec2 _1047 = _1043;
            _1047.x = -1.0;
            _1048 = _1047;
        }
        else
        {
            _1048 = _1043;
        }
        highp vec2 _1054;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_671))
        {
            highp vec2 _1053 = _1048;
            _1053.x = -1.0;
            _1054 = _1053;
        }
        else
        {
            _1054 = _1048;
        }
        highp float _1057 = sin(_1016);
        highp float _1058 = cos(_1016);
        highp vec2 _1059 = ((_1054 - _1026) / _1025) - vec2(0.5);
        highp float _1060 = _1059.x;
        highp float _1061 = _1059.y;
        highp vec2 _1069 = (vec2(_1060 * _1058 + (-(_1061 * _1057)), _1060 * _1057 + (_1061 * _1058)) + vec2(0.5)) * _1025 + _1026;
        uint _1073 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1077 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1073 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1073);
        highp float _1078 = _1069.x;
        highp float _1079 = _1069.y;
        uint _1086 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1096 = ((mix(vec2(_1078, 1.0 - _1079), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1077 % _1086), float(_1077 / _1086))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1096.y = 1.0 - _1096.y;
        highp vec4 _1101 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1096);
        highp vec4 _1117;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1104 = _1101.x;
            highp float _1105 = _1101.y;
            highp float _1106 = _1101.z;
            highp float _1107 = isnan(_1105) ? _1104 : (isnan(_1104) ? _1105 : min(_1104, _1105));
            highp float _1108 = isnan(_1105) ? _1104 : (isnan(_1104) ? _1105 : max(_1104, _1105));
            highp float _1109 = isnan(_1106) ? _1108 : (isnan(_1108) ? _1106 : min(_1108, _1106));
            highp float _1110 = isnan(_1109) ? _1107 : (isnan(_1107) ? _1109 : max(_1107, _1109));
            _1117 = vec4(1.0, 1.0, 1.0, clamp((_1110 - 0.5) / clamp(fwidth(_1110), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1117 = _1101;
        }
        highp vec4 _1140;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1121 = clamp(_663 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1124 = 0.5 - abs(_1078 - 0.5);
            highp float _1131 = 0.5 - abs(_1079 - 0.5);
            highp vec4 _1139 = _1117;
            _1139.w = _1117.w * (clamp(_1124 / clamp(fwidth(_1124), 9.9999997473787516355514526367188e-05, _1121), 0.0, 1.0) * clamp(_1131 / clamp(fwidth(_1131), 9.9999997473787516355514526367188e-05, _1121), 0.0, 1.0));
            _1140 = _1139;
        }
        else
        {
            _1140 = _1117;
        }
        highp vec4 _1141 = _Globals._Color3rd * _1140;
        highp float _1142 = _1141.w;
        _1141.w = mix(_1142, _1142 * clamp((_447 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1168;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_386 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_386 < 0.0)))
        {
            highp vec4 _1167 = _1141;
            _1167.w = 0.0;
            _1168 = _1167;
        }
        else
        {
            _1168 = _1141;
        }
        highp vec4 _1207;
        highp vec4 _1208;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1179;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1178 = _955;
                _1178.w = _1168.w;
                _1179 = _1178;
            }
            else
            {
                _1179 = _955;
            }
            highp vec4 _1187;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1186 = _1179;
                _1186.w = _1179.w * _1168.w;
                _1187 = _1186;
            }
            else
            {
                _1187 = _1179;
            }
            highp vec4 _1196;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1195 = _1187;
                _1195.w = clamp(_1187.w + _1168.w, 0.0, 1.0);
                _1196 = _1195;
            }
            else
            {
                _1196 = _1187;
            }
            highp vec4 _1205;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1204 = _1196;
                _1204.w = clamp(_1196.w - _1168.w, 0.0, 1.0);
                _1205 = _1204;
            }
            else
            {
                _1205 = _1196;
            }
            highp vec4 _1206 = _1168;
            _1206.w = 1.0;
            _1207 = _1206;
            _1208 = _1205;
        }
        else
        {
            _1207 = _1168;
            _1208 = _955;
        }
        highp vec3 _1218 = _1208.xyz + _1207.xyz;
        highp vec3 _1219 = _1208.xyz * _1207.xyz;
        bvec3 _1221 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1222 = vec3(_1221.x ? _1207.xyz.x : _328.x, _1221.y ? _1207.xyz.y : _328.y, _1221.z ? _1207.xyz.z : _328.z);
        bvec3 _1224 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1232;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1230 = (-_1208.xyz) * _1207.xyz + _1218;
            bvec3 _2727 = isnan(_1230);
            bvec3 _2728 = isnan(_1208.xyz);
            highp vec3 _2729 = max(_1230, _1208.xyz);
            highp vec3 _2730 = vec3(_2727.x ? _1208.xyz.x : _2729.x, _2727.y ? _1208.xyz.y : _2729.y, _2727.z ? _1208.xyz.z : _2729.z);
            _1232 = vec3(_2728.x ? _1230.x : _2730.x, _2728.y ? _1230.y : _2730.y, _2728.z ? _1230.z : _2730.z);
        }
        else
        {
            _1232 = vec3(_1224.x ? _1218.x : _1222.x, _1224.y ? _1218.y : _1222.y, _1224.z ? _1218.z : _1222.z);
        }
        bvec3 _1234 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1236 = mix(_1208.xyz, vec3(_1234.x ? _1219.x : _1232.x, _1234.y ? _1219.y : _1232.y, _1234.z ? _1219.z : _1232.z), vec3(_1207.w * _Globals._Main3rdEnableLighting));
        _1238 = _1207;
        _1239 = vec4(_1236.x, _1236.y, _1236.z, _1208.w);
    }
    else
    {
        _1238 = _Globals._Color3rd;
        _1239 = _955;
    }
    highp vec4 _1288;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1252 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _504 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1259 = clamp(_1252.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1264;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1263 = _1239;
            _1263.w = _1259;
            _1264 = _1263;
        }
        else
        {
            _1264 = _1239;
        }
        highp vec4 _1271;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1270 = _1264;
            _1270.w = _1264.w * _1259;
            _1271 = _1270;
        }
        else
        {
            _1271 = _1264;
        }
        highp vec4 _1279;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1278 = _1271;
            _1278.w = clamp(_1271.w + _1259, 0.0, 1.0);
            _1279 = _1278;
        }
        else
        {
            _1279 = _1271;
        }
        highp vec4 _1287;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1286 = _1279;
            _1286.w = clamp(_1279.w - _1259, 0.0, 1.0);
            _1287 = _1286;
        }
        else
        {
            _1287 = _1279;
        }
        _1288 = _1287;
    }
    else
    {
        _1288 = _1239;
    }
    highp vec4 _1409;
    highp float _1410;
    if ((_377 & 1) != 0)
    {
        highp vec4 _1292 = _1288;
        _1292.w = 1.0;
        highp vec2 _1308 = roundEven(_Globals._DissolveParams.xy);
        highp float _1309 = _1308.x;
        highp vec4 _1398;
        highp float _1399;
        if (_1309 != 0.0)
        {
            bool _1313 = _1309 == 1.0;
            highp float _1323;
            if (_1313 && true)
            {
                _1323 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1323 = 1.0;
            }
            highp vec4 _1332 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1334 = _1332.x - 0.5;
            highp float _1347;
            highp float _1348;
            if (_1313)
            {
                highp float _1337 = _1334 * _Globals._DissolveNoiseStrength + _1323;
                _1347 = 1.0 - clamp(abs(_1337 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1348 = float(_1337 > _Globals._DissolveParams.z);
            }
            else
            {
                _1347 = 0.0;
                _1348 = _1323;
            }
            highp float _1371;
            highp float _1372;
            if (_1309 == 2.0)
            {
                highp float _1360 = (_1308.y == 1.0) ? (_1334 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1334 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1371 = 1.0 - clamp(abs(_1360 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1372 = _1348 * float(_1360 > _Globals._DissolveParams.z);
            }
            else
            {
                _1371 = _1347;
                _1372 = _1348;
            }
            highp float _1395;
            highp float _1396;
            if (_1309 == 3.0)
            {
                highp float _1384 = (_1308.y == 1.0) ? (_1334 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1334 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1395 = 1.0 - clamp(abs(_1384 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1396 = _1372 * float(_1384 > _Globals._DissolveParams.z);
            }
            else
            {
                _1395 = _1371;
                _1396 = _1372;
            }
            highp vec4 _1397 = _1292;
            _1397.w = _1396;
            _1398 = _1397;
            _1399 = _1395;
        }
        else
        {
            _1398 = _1292;
            _1399 = 0.0;
        }
        highp vec4 _1405;
        if ((_377 & 2) != 0)
        {
            highp vec4 _1404 = _1398;
            _1404.w = 1.0 - _1398.w;
            _1405 = _1404;
        }
        else
        {
            _1405 = _1398;
        }
        highp vec4 _1408 = _1405;
        _1408.w = _1405.w * _1288.w;
        _1409 = _1408;
        _1410 = _1399;
    }
    else
    {
        _1409 = _1288;
        _1410 = 0.0;
    }
    highp float _1415 = fwidth(_1409.w);
    highp float _1419 = clamp(((_1409.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1415 : (isnan(_1415) ? 9.9999997473787516355514526367188e-05 : max(_1415, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1420 = _1409;
    _1420.w = _1419;
    if (_1419 == 0.0)
    {
        discard;
    }
    highp vec4 _1597;
    highp float _1598;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1447 = clamp(dot(_438, mix(_666, _661, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1450 = clamp(dot(_438, mix(_666, _661, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1453 = clamp(dot(_438, mix(_666, _661, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1457 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1460 = clamp(_437 + distance(_438, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1463 = mix(1.0, _1460, _Globals._ShadowReceive);
        highp float _1464 = _1447 * _1463;
        highp float _1467 = mix(1.0, _1460, _Globals._Shadow2ndReceive);
        highp float _1471 = mix(1.0, _1460, _Globals._Shadow3rdReceive);
        highp float _1482 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1483 = clamp(_1482, 0.0, 1.0);
        highp float _1485 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1498 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1512 = clamp(_1482 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1525 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1540 = (_386 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1541 = clamp((_1447 * _1463 + (-_1483)) / clamp(fwidth(_1464) * _1457 + (_1485 - _1483), 0.0, 1.0), 0.0, 1.0) * _1540;
        highp vec3 _1573 = mix(mix(_1420.xyz * _Globals._ShadowColor.xyz, (_1420.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1450 * _1467 + (-_1498)) / clamp(fwidth(_1450 * _1467) * _1457 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1498), 0.0, 1.0), 0.0, 1.0) * _1540)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1420.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1453 * _1471 + (-_1525)) / clamp(fwidth(_1453 * _1471) * _1457 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1525), 0.0, 1.0), 0.0, 1.0) * _1540)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1579 = _1420.xyz * out_var_TEXCOORD6;
        highp vec3 _1585 = mix(mix(_1573, _1573 * _1420.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1420.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2737 = isnan(_1585);
        bvec3 _2738 = isnan(_1579);
        highp vec3 _2739 = min(_1585, _1579);
        highp vec3 _2740 = vec3(_2737.x ? _1579.x : _2739.x, _2737.y ? _1579.y : _2739.y, _2737.z ? _1579.z : _2739.z);
        highp vec3 _1593 = mix(mix(vec3(_2738.x ? _1585.x : _2740.x, _2738.y ? _1585.y : _2740.y, _2738.z ? _1585.z : _2740.z), _1579, _Globals._ShadowBorderColor.xyz * (clamp((_1447 * _1463 + (-_1512)) / clamp(fwidth(_1464) * _1457 + (_1485 - _1512), 0.0, 1.0), 0.0, 1.0) * _1540)), _1579, vec3(mix(1.0, _1541, _Globals._ShadowStrength)));
        _1597 = vec4(_1593.x, _1593.y, _1593.z, _1420.w);
        _1598 = _1541;
    }
    else
    {
        highp vec3 _1595 = _1420.xyz * out_var_TEXCOORD6;
        _1597 = vec4(_1595.x, _1595.y, _1595.z, _1420.w);
        _1598 = 1.0;
    }
    highp vec3 _1601 = vec3(_Globals._LightMaxLimit);
    bvec3 _2742 = isnan(out_var_TEXCOORD6);
    bvec3 _2743 = isnan(_1601);
    highp vec3 _2744 = min(out_var_TEXCOORD6, _1601);
    highp vec3 _2745 = vec3(_2742.x ? _1601.x : _2744.x, _2742.y ? _1601.y : _2744.y, _2742.z ? _1601.z : _2744.z);
    highp vec3 _1602 = vec3(_2743.x ? out_var_TEXCOORD6.x : _2745.x, _2743.y ? out_var_TEXCOORD6.y : _2745.y, _2743.z ? out_var_TEXCOORD6.z : _2745.z);
    highp float _1603 = clamp(_1598, 0.0, 1.0);
    highp vec3 _1605 = _1420.xyz * _Globals._LightMaxLimit;
    bvec3 _2747 = isnan(_1597.xyz);
    bvec3 _2748 = isnan(_1605);
    highp vec3 _2749 = min(_1597.xyz, _1605);
    highp vec3 _2750 = vec3(_2747.x ? _1605.x : _2749.x, _2747.y ? _1605.y : _2749.y, _2747.z ? _1605.z : _2749.z);
    highp vec3 _1606 = vec3(_2748.x ? _1597.xyz.x : _2750.x, _2748.y ? _1597.xyz.y : _2750.y, _2748.z ? _1597.xyz.z : _2750.z);
    highp vec4 _1640;
    if (_676)
    {
        highp vec3 _1610 = _1606.xyz;
        highp vec3 _1620 = _1610 + _954.xyz;
        highp vec3 _1621 = _1610 * _954.xyz;
        bvec3 _1623 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1624 = vec3(_1623.x ? _954.xyz.x : _328.x, _1623.y ? _954.xyz.y : _328.y, _1623.z ? _954.xyz.z : _328.z);
        bvec3 _1626 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1634;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1632 = (-_1610) * _954.xyz + _1620;
            bvec3 _2752 = isnan(_1632);
            bvec3 _2753 = isnan(_1610);
            highp vec3 _2754 = max(_1632, _1610);
            highp vec3 _2755 = vec3(_2752.x ? _1610.x : _2754.x, _2752.y ? _1610.y : _2754.y, _2752.z ? _1610.z : _2754.z);
            _1634 = vec3(_2753.x ? _1632.x : _2755.x, _2753.y ? _1632.y : _2755.y, _2753.z ? _1632.z : _2755.z);
        }
        else
        {
            _1634 = vec3(_1626.x ? _1620.x : _1624.x, _1626.y ? _1620.y : _1624.y, _1626.z ? _1620.z : _1624.z);
        }
        bvec3 _1636 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1638 = mix(_1610, vec3(_1636.x ? _1621.x : _1634.x, _1636.y ? _1621.y : _1634.y, _1636.z ? _1621.z : _1634.z), vec3((-_954.w) * _Globals._Main2ndEnableLighting + _954.w));
        _1640 = vec4(_1638.x, _1638.y, _1638.z, _1597.w);
    }
    else
    {
        _1640 = vec4(_1606.x, _1606.y, _1606.z, _1597.w);
    }
    highp vec4 _1673;
    if (_960)
    {
        highp vec3 _1653 = _1640.xyz + _1238.xyz;
        highp vec3 _1654 = _1640.xyz * _1238.xyz;
        bvec3 _1656 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1657 = vec3(_1656.x ? _1238.xyz.x : _328.x, _1656.y ? _1238.xyz.y : _328.y, _1656.z ? _1238.xyz.z : _328.z);
        bvec3 _1659 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1667;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1665 = (-_1640.xyz) * _1238.xyz + _1653;
            bvec3 _2757 = isnan(_1665);
            bvec3 _2758 = isnan(_1640.xyz);
            highp vec3 _2759 = max(_1665, _1640.xyz);
            highp vec3 _2760 = vec3(_2757.x ? _1640.xyz.x : _2759.x, _2757.y ? _1640.xyz.y : _2759.y, _2757.z ? _1640.xyz.z : _2759.z);
            _1667 = vec3(_2758.x ? _1665.x : _2760.x, _2758.y ? _1665.y : _2760.y, _2758.z ? _1665.z : _2760.z);
        }
        else
        {
            _1667 = vec3(_1659.x ? _1653.x : _1657.x, _1659.y ? _1653.y : _1657.y, _1659.z ? _1653.z : _1657.z);
        }
        bvec3 _1669 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1671 = mix(_1640.xyz, vec3(_1669.x ? _1654.x : _1667.x, _1669.y ? _1654.y : _1667.y, _1669.z ? _1654.z : _1667.z), vec3((-_1238.w) * _Globals._Main3rdEnableLighting + _1238.w));
        _1673 = vec4(_1671.x, _1671.y, _1671.z, _1640.w);
    }
    else
    {
        _1673 = _1640;
    }
    highp vec4 _1719;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1689 = pow(clamp(1.0 - abs(dot(mix(_666, _661, vec3(_Globals._RimShadeNormalStrength)), _454)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1698 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1717 = mix(_1673.xyz, _1673.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1689 - _1698) / clamp(fwidth(_1689) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1698), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1719 = vec4(_1717.x, _1717.y, _1717.z, _1673.w);
    }
    else
    {
        _1719 = _1673;
    }
    highp vec4 _1792;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1743 = dot(normalize(((-_454) * _Globals._BacklightViewStrength) + _438), mix(_666, _661, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1753;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1753 = _1743 * clamp(_437 + distance(_438, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1753 = _1743;
        }
        highp float _1762 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1790 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1420.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_386 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_454, _438) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1753 - _1762) / clamp(fwidth(_1753) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1762), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1602 + _1719.xyz;
        _1792 = vec4(_1790.x, _1790.y, _1790.z, _1719.w);
    }
    else
    {
        _1792 = _1719;
    }
    highp vec4 _2035;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1802 = dFdx(_661);
        highp vec3 _1803 = abs(_1802);
        highp vec3 _1804 = dFdy(_661);
        highp vec3 _1805 = abs(_1804);
        highp float _1806 = dot(_1803, _1803);
        highp float _1807 = dot(_1805, _1805);
        highp float _1808 = isnan(_1807) ? _1806 : (isnan(_1806) ? _1807 : max(_1806, _1807));
        highp float _1811 = (_1808 / (_1808 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1814 = clamp(1.0 - (isnan(_1811) ? 0.0 : (isnan(0.0) ? _1811 : max(0.0, _1811))), 0.0, 1.0);
        highp float _1815 = isnan(_1814) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1814 : min(_Globals._Smoothness, _1814));
        highp float _1816 = 1.0 - _1815;
        highp float _1817 = _1816 * _1816;
        highp vec3 _1822 = _1792.xyz - (_1792.xyz * _Globals._Metallic);
        highp vec3 _1828 = mix(vec3(_Globals._Reflectance), _1420.xyz, vec3(_Globals._Metallic));
        highp vec4 _1931;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1903;
            do
            {
                highp vec3 _1841 = mix(_666, _661, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1843 = normalize(_454 + _438);
                highp float _1845 = clamp(dot(_1841, _1843), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1854 = pow(_1845, 1.0 / _1817);
                    highp float _1861 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1903 = vec3(clamp((_1854 - _1861) / clamp(fwidth(_1854) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1861), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1873 = clamp(dot(_1841, _454), 0.0, 1.0);
                highp float _1875 = clamp(dot(_1841, _438), 0.0, 1.0);
                highp float _1878 = isnan(0.00200000009499490261077880859375) ? _1817 : (isnan(_1817) ? 0.00200000009499490261077880859375 : max(_1817, 0.00200000009499490261077880859375));
                highp float _1879 = 1.0 - _1878;
                highp float _1883 = _1878 * _1878;
                highp float _1886 = (_1845 * _1883 + (-_1845)) * _1845 + 1.0;
                highp float _1894 = 1.0 - clamp(dot(_438, _1843), 0.0, 1.0);
                _1903 = (_1828 + ((((((vec3(1.0) - _1828) * _1894) * _1894) * _1894) * _1894) * _1894)) * (((0.5 / ((_1875 * (_1873 * _1879 + _1878) + (_1873 * (_1875 * _1879 + _1878))) + 9.9999997473787516355514526367188e-06)) * (_1883 / (_1886 * _1886 + 1.0000000116860974230803549289703e-07))) * _1875);
                break;
            } while(false);
            highp vec3 _1904 = _1822.xyz;
            highp vec3 _1906 = _Globals._ReflectionColor.xyz * _1602;
            highp vec3 _1911 = _Globals._ReflectionColor.xyz * _1602 + _1904;
            highp vec3 _1912 = _1904 * _1906;
            bvec3 _1914 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1915 = vec3(_1914.x ? _1906.x : _328.x, _1914.y ? _1906.y : _328.y, _1914.z ? _1906.z : _328.z);
            bvec3 _1917 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1925;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1923 = (-_1904) * _1906 + _1911;
                bvec3 _2782 = isnan(_1923);
                bvec3 _2783 = isnan(_1904);
                highp vec3 _2784 = max(_1923, _1904);
                highp vec3 _2785 = vec3(_2782.x ? _1904.x : _2784.x, _2782.y ? _1904.y : _2784.y, _2782.z ? _1904.z : _2784.z);
                _1925 = vec3(_2783.x ? _1923.x : _2785.x, _2783.y ? _1923.y : _2785.y, _2783.z ? _1923.z : _2785.z);
            }
            else
            {
                _1925 = vec3(_1917.x ? _1911.x : _1915.x, _1917.y ? _1911.y : _1915.y, _1917.z ? _1911.z : _1915.z);
            }
            bvec3 _1927 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1929 = mix(_1904, vec3(_1927.x ? _1912.x : _1925.x, _1927.y ? _1912.y : _1925.y, _1927.z ? _1912.z : _1925.z), _1903 * _Globals._ReflectionColor.w);
            _1931 = vec4(_1929.x, _1929.y, _1929.z, _1792.w);
        }
        else
        {
            _1931 = vec4(_1822.x, _1822.y, _1822.z, _1792.w);
        }
        highp vec4 _2034;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1953 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1960 = reflect(-_454, mix(_666, _661, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1963 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1960, _1816 * ((-4.19999980926513671875) * _1816 + 10.19999980926513671875));
            highp vec3 _1983 = ((_1963.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1963.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1602, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1989 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1960, _1816 * 8.0).xyz * 1.0;
            highp float _2000 = 1.0 - _663;
            highp vec3 _2014 = _1931.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _2015 = _1931.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _2017 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2018 = vec3(_2017.x ? _Globals._ReflectionColor.xyz.x : _328.x, _2017.y ? _Globals._ReflectionColor.xyz.y : _328.y, _2017.z ? _Globals._ReflectionColor.xyz.z : _328.z);
            bvec3 _2020 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2028;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2026 = (-_1931.xyz) * _Globals._ReflectionColor.xyz + _2014;
                bvec3 _2787 = isnan(_2026);
                bvec3 _2788 = isnan(_1931.xyz);
                highp vec3 _2789 = max(_2026, _1931.xyz);
                highp vec3 _2790 = vec3(_2787.x ? _1931.xyz.x : _2789.x, _2787.y ? _1931.xyz.y : _2789.y, _2787.z ? _1931.xyz.z : _2789.z);
                _2028 = vec3(_2788.x ? _2026.x : _2790.x, _2788.y ? _2026.y : _2790.y, _2788.z ? _2026.z : _2790.z);
            }
            else
            {
                _2028 = vec3(_2020.x ? _2014.x : _2018.x, _2020.y ? _2014.y : _2018.y, _2020.z ? _2014.z : _2018.z);
            }
            bvec3 _2030 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2032 = mix(_1931.xyz, vec3(_2030.x ? _2015.x : _2028.x, _2030.y ? _2015.y : _2028.y, _2030.z ? _2015.z : _2028.z), ((vec3(_1953.x ? _1983.x : _1989.x, _1953.y ? _1983.y : _1989.y, _1953.z ? _1983.z : _1989.z) * (1.0 / (_1817 * _1817 + 1.0))) * mix(_1828, vec3(clamp(_1815 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2000 * _2000) * _2000) * _2000) * _2000))) * _Globals._ReflectionColor.w);
            _2034 = vec4(_2032.x, _2032.y, _2032.z, _1931.w);
        }
        else
        {
            _2034 = _1931;
        }
        _2035 = _2034;
    }
    else
    {
        _2035 = _1792;
    }
    highp vec4 _2141;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2061 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2062 = vec3(_2061.x ? _454.x : _354.x, _2061.y ? _454.y : _354.y, _2061.z ? _454.z : _354.z);
        bvec3 _2063 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2064 = vec3(_2063.x ? vec3(0.0, 1.0, 0.0).x : _361.x, _2063.y ? vec3(0.0, 1.0, 0.0).y : _361.y, _2063.z ? vec3(0.0, 1.0, 0.0).z : _361.z);
        highp vec3 _2068 = normalize(_2064 - (_2062 * dot(_2062, _2064)));
        highp vec4 _2090 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_666, _661, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2062, _2068), _2068, _2062)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2091 = _2090.xyz;
        highp float _2097 = _2090.w;
        highp vec3 _2107 = mix(_2091, _2091 * _1602, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2114 = mix(_2107, _2107 * _1420.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2121 = _2035.xyz + _2114;
        highp vec3 _2122 = _2035.xyz * _2114;
        bvec3 _2124 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2125 = vec3(_2124.x ? _2114.x : _328.x, _2124.y ? _2114.y : _328.y, _2124.z ? _2114.z : _328.z);
        bvec3 _2127 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2135;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2133 = (-_2035.xyz) * _2114 + _2121;
            bvec3 _2792 = isnan(_2133);
            bvec3 _2793 = isnan(_2035.xyz);
            highp vec3 _2794 = max(_2133, _2035.xyz);
            highp vec3 _2795 = vec3(_2792.x ? _2035.xyz.x : _2794.x, _2792.y ? _2035.xyz.y : _2794.y, _2792.z ? _2035.xyz.z : _2794.z);
            _2135 = vec3(_2793.x ? _2133.x : _2795.x, _2793.y ? _2133.y : _2795.y, _2793.z ? _2133.z : _2795.z);
        }
        else
        {
            _2135 = vec3(_2127.x ? _2121.x : _2125.x, _2127.y ? _2121.y : _2125.y, _2127.z ? _2121.z : _2125.z);
        }
        bvec3 _2137 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2139 = mix(_2035.xyz, vec3(_2137.x ? _2122.x : _2135.x, _2137.y ? _2122.y : _2135.y, _2137.z ? _2122.z : _2135.z), vec3(1.0) * (_Globals._MatCapBlend * ((_386 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2097, _2097 * _1603, _Globals._MatCapShadowMask))));
        _2141 = vec4(_2139.x, _2139.y, _2139.z, _2035.w);
    }
    else
    {
        _2141 = _2035;
    }
    highp vec4 _2246;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2166 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2167 = vec3(_2166.x ? _454.x : _354.x, _2166.y ? _454.y : _354.y, _2166.z ? _454.z : _354.z);
        bvec3 _2168 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2169 = vec3(_2168.x ? vec3(0.0, 1.0, 0.0).x : _361.x, _2168.y ? vec3(0.0, 1.0, 0.0).y : _361.y, _2168.z ? vec3(0.0, 1.0, 0.0).z : _361.z);
        highp vec3 _2173 = normalize(_2169 - (_2167 * dot(_2167, _2169)));
        highp vec4 _2195 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_666, _661, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2167, _2173), _2173, _2167)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2196 = _2195.xyz;
        highp float _2202 = _2195.w;
        highp vec3 _2212 = mix(_2196, _2196 * _1602, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2219 = mix(_2212, _2212 * _1420.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2226 = _2141.xyz + _2219;
        highp vec3 _2227 = _2141.xyz * _2219;
        bvec3 _2229 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2230 = vec3(_2229.x ? _2219.x : _328.x, _2229.y ? _2219.y : _328.y, _2229.z ? _2219.z : _328.z);
        bvec3 _2232 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2240;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2238 = (-_2141.xyz) * _2219 + _2226;
            bvec3 _2797 = isnan(_2238);
            bvec3 _2798 = isnan(_2141.xyz);
            highp vec3 _2799 = max(_2238, _2141.xyz);
            highp vec3 _2800 = vec3(_2797.x ? _2141.xyz.x : _2799.x, _2797.y ? _2141.xyz.y : _2799.y, _2797.z ? _2141.xyz.z : _2799.z);
            _2240 = vec3(_2798.x ? _2238.x : _2800.x, _2798.y ? _2238.y : _2800.y, _2798.z ? _2238.z : _2800.z);
        }
        else
        {
            _2240 = vec3(_2232.x ? _2226.x : _2230.x, _2232.y ? _2226.y : _2230.y, _2232.z ? _2226.z : _2230.z);
        }
        bvec3 _2242 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2244 = mix(_2141.xyz, vec3(_2242.x ? _2227.x : _2240.x, _2242.y ? _2227.y : _2240.y, _2242.z ? _2227.z : _2240.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_386 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2202, _2202 * _1603, _Globals._MatCap2ndShadowMask))));
        _2246 = vec4(_2244.x, _2244.y, _2244.z, _2141.w);
    }
    else
    {
        _2246 = _2141;
    }
    highp vec4 _2392;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2265 = mix(_666, _661, vec3(_Globals._RimNormalStrength));
        highp float _2269 = dot(_438, _2265) * 0.5 + 0.5;
        highp float _2292 = (_386 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2265, _454)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2296 = mix(_2292, _2292 * clamp((_2269 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2297 = _2292 * clamp(((1.0 - _2269) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2307 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2316 = clamp((_2296 - _2307) / clamp(fwidth(_2296) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2307), 0.0, 1.0), 0.0, 1.0);
        highp float _2323 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2333 = clamp((_2297 * _Globals._RimDirStrength + (-_2323)) / clamp(fwidth(_2297 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2323), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2345 = vec3(1.0 - _Globals._RimEnableLighting) + (_1602 * _Globals._RimEnableLighting);
        highp vec3 _2347 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1420.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2348 = _2347 * _2345;
        highp vec3 _2354 = _2347 * _2345 + _2246.xyz;
        highp vec3 _2355 = _2246.xyz * _2348;
        bvec3 _2357 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2358 = vec3(_2357.x ? _2348.x : _328.x, _2357.y ? _2348.y : _328.y, _2357.z ? _2348.z : _328.z);
        bvec3 _2360 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2362 = _Globals._RimBlendMode == 2u;
        highp vec3 _2368;
        if (_2362)
        {
            highp vec3 _2366 = (-_2246.xyz) * _2348 + _2354;
            bvec3 _2802 = isnan(_2366);
            bvec3 _2803 = isnan(_2246.xyz);
            highp vec3 _2804 = max(_2366, _2246.xyz);
            highp vec3 _2805 = vec3(_2802.x ? _2246.xyz.x : _2804.x, _2802.y ? _2246.xyz.y : _2804.y, _2802.z ? _2246.xyz.z : _2804.z);
            _2368 = vec3(_2803.x ? _2366.x : _2805.x, _2803.y ? _2366.y : _2805.y, _2803.z ? _2366.z : _2805.z);
        }
        else
        {
            _2368 = vec3(_2360.x ? _2354.x : _2358.x, _2360.y ? _2354.y : _2358.y, _2360.z ? _2354.z : _2358.z);
        }
        bvec3 _2370 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2373 = mix(_2246.xyz, vec3(_2370.x ? _2355.x : _2368.x, _2370.y ? _2355.y : _2368.y, _2370.z ? _2355.z : _2368.z), vec3(mix(_2316, _2316 * _1603, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2375 = _Globals._RimIndirColor.xyz * _2345;
        highp vec3 _2379 = _Globals._RimIndirColor.xyz * _2345 + _2373;
        highp vec3 _2380 = _2373 * _2375;
        highp vec3 _2381 = vec3(_2357.x ? _2375.x : _328.x, _2357.y ? _2375.y : _328.y, _2357.z ? _2375.z : _328.z);
        highp vec3 _2388;
        if (_2362)
        {
            highp vec3 _2386 = (-_2373) * _2375 + _2379;
            bvec3 _2807 = isnan(_2386);
            bvec3 _2808 = isnan(_2373);
            highp vec3 _2809 = max(_2386, _2373);
            highp vec3 _2810 = vec3(_2807.x ? _2373.x : _2809.x, _2807.y ? _2373.y : _2809.y, _2807.z ? _2373.z : _2809.z);
            _2388 = vec3(_2808.x ? _2386.x : _2810.x, _2808.y ? _2386.y : _2810.y, _2808.z ? _2386.z : _2810.z);
        }
        else
        {
            _2388 = vec3(_2360.x ? _2379.x : _2381.x, _2360.y ? _2379.y : _2381.y, _2360.z ? _2379.z : _2381.z);
        }
        highp vec3 _2390 = mix(_2373, vec3(_2370.x ? _2380.x : _2388.x, _2370.y ? _2380.y : _2388.y, _2370.z ? _2380.z : _2388.z), vec3(mix(_2333, _2333 * _1603, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2392 = vec4(_2390.x, _2390.y, _2390.z, _2246.w);
    }
    else
    {
        _2392 = _2246;
    }
    highp vec4 _2506;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2403 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2404 = vec2(_2403.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2403.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2406 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2407 = vec2(_2406.x ? out_var_TEXCOORD1.xy.x : _2404.x, _2406.y ? out_var_TEXCOORD1.xy.y : _2404.y);
        bvec2 _2409 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2410 = vec2(_2409.x ? out_var_TEXCOORD1.zw.x : _2407.x, _2409.y ? out_var_TEXCOORD1.zw.y : _2407.y);
        bvec2 _2412 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2429 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2430 = sin(_2429);
        highp float _2431 = cos(_2429);
        highp vec2 _2432 = ((vec2(_2412.x ? _665.x : _2410.x, _2412.y ? _665.y : _2410.y) + ((_464.xy / vec2(_464.z + 0.5)) * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2433 = _2432.x;
        highp float _2434 = _2432.y;
        highp vec4 _2447 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2433 * _2431 + (-(_2434 * _2430)), _2433 * _2430 + (_2434 * _2431)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2448 = _Globals._EmissionColor * _2447;
        highp vec3 _2449 = _2448.xyz;
        highp vec3 _2455 = mix(_2449, _2449 * _442, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2469 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2475;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2475 = roundEven(_2469);
        }
        else
        {
            _2475 = _2469;
        }
        highp vec3 _2482 = mix(_2455, _2455 * _1420.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2486 = _2392.xyz + _2482;
        highp vec3 _2487 = _2392.xyz * _2482;
        bvec3 _2489 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2490 = vec3(_2489.x ? _2482.x : _328.x, _2489.y ? _2482.y : _328.y, _2489.z ? _2482.z : _328.z);
        bvec3 _2492 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2500;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2498 = (-_2392.xyz) * _2482 + _2486;
            bvec3 _2812 = isnan(_2498);
            bvec3 _2813 = isnan(_2392.xyz);
            highp vec3 _2814 = max(_2498, _2392.xyz);
            highp vec3 _2815 = vec3(_2812.x ? _2392.xyz.x : _2814.x, _2812.y ? _2392.xyz.y : _2814.y, _2812.z ? _2392.xyz.z : _2814.z);
            _2500 = vec3(_2813.x ? _2498.x : _2815.x, _2813.y ? _2498.y : _2815.y, _2813.z ? _2498.z : _2815.z);
        }
        else
        {
            _2500 = vec3(_2492.x ? _2486.x : _2490.x, _2492.y ? _2486.y : _2490.y, _2492.z ? _2486.z : _2490.z);
        }
        bvec3 _2502 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2504 = mix(_2392.xyz, vec3(_2502.x ? _2487.x : _2500.x, _2502.y ? _2487.y : _2500.y, _2502.z ? _2487.z : _2500.z), vec3((_Globals._EmissionBlend * mix(1.0, _2475, _Globals._EmissionBlink.x)) * _2448.w));
        _2506 = vec4(_2504.x, _2504.y, _2504.z, _2392.w);
    }
    else
    {
        _2506 = _2392;
    }
    highp vec4 _2571;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2520 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _442, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2534 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2540;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2540 = roundEven(_2534);
        }
        else
        {
            _2540 = _2534;
        }
        highp vec3 _2547 = mix(_2520, _2520 * _1420.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2551 = _2506.xyz + _2547;
        highp vec3 _2552 = _2506.xyz * _2547;
        bvec3 _2554 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2555 = vec3(_2554.x ? _2547.x : _328.x, _2554.y ? _2547.y : _328.y, _2554.z ? _2547.z : _328.z);
        bvec3 _2557 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2565;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2563 = (-_2506.xyz) * _2547 + _2551;
            bvec3 _2817 = isnan(_2563);
            bvec3 _2818 = isnan(_2506.xyz);
            highp vec3 _2819 = max(_2563, _2506.xyz);
            highp vec3 _2820 = vec3(_2817.x ? _2506.xyz.x : _2819.x, _2817.y ? _2506.xyz.y : _2819.y, _2817.z ? _2506.xyz.z : _2819.z);
            _2565 = vec3(_2818.x ? _2563.x : _2820.x, _2818.y ? _2563.y : _2820.y, _2818.z ? _2563.z : _2820.z);
        }
        else
        {
            _2565 = vec3(_2557.x ? _2551.x : _2555.x, _2557.y ? _2551.y : _2555.y, _2557.z ? _2551.z : _2555.z);
        }
        bvec3 _2567 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2569 = mix(_2506.xyz, vec3(_2567.x ? _2552.x : _2565.x, _2567.y ? _2552.y : _2565.y, _2567.z ? _2552.z : _2565.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2540, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2571 = vec4(_2569.x, _2569.y, _2569.z, _2506.w);
    }
    else
    {
        _2571 = _2506;
    }
    bvec3 _2579 = bvec3(_386 < 0.0);
    highp vec3 _2580 = (_2571.xyz + (_Globals._DissolveColor.xyz * _1410)).xyz;
    highp vec3 _2588 = mix(_2580, _Globals._BackfaceColor.xyz * _1602, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2623 = vec3(_2579.x ? _2588.x : _2580.x, _2579.y ? _2588.y : _2580.y, _2579.z ? _2588.z : _2580.z).xyz;
    highp vec3 _2631 = mix(_2623, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2623, vec3(pow(clamp(1.0 - abs(dot(_666, _454)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_386 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _447) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2631.x, _2631.y, _2631.z, _2571.w), vec4(out_var_TEXCOORD9));
}
