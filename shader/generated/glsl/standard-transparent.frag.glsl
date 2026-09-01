#version 300 es
precision mediump float;
precision highp int;

vec3 _338;
vec3 _344;

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
    highp vec4 _DissolveNoiseMask_ST;
    highp vec4 _DissolveNoiseMask_ScrollRotate;
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
    highp vec3 _364 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _371 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _387 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _396 = float(gl_FrontFacing ? 1 : (-1));
    highp float _447;
    do
    {
        highp vec3 _403 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _404 = _403.xy;
        highp float _410 = _403.z;
        if ((any(lessThan(_404, vec2(0.0))) || any(greaterThan(_404, vec2(1.0)))) || (_410 > 1.0))
        {
            _447 = 1.0;
            break;
        }
        highp float _420 = _410 - _Globals.uShadowBias;
        _447 = (((step(_420, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _404), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_420, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _404), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_420, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _404), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_420, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _404), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _448 = normalize(out_var_TEXCOORD7);
    highp vec3 _452 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _456 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _457 = length(_456);
    highp vec3 _464 = normalize(_456);
    highp mat3 _473 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _474 = _464 * _473;
    highp vec2 _479 = _474.xy / vec2(_474.z + 0.5);
    bvec2 _484 = bvec2(_396 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _485 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _498 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _499 = sin(_498);
    highp float _500 = cos(_498);
    highp vec2 _501 = (vec2(_484.x ? _485.x : out_var_TEXCOORD0.xy.x, _484.y ? _485.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _502 = _501.x;
    highp float _503 = _501.y;
    highp vec2 _514 = (vec2(_502 * _500 + (-(_503 * _499)), _502 * _499 + (_503 * _500)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _518 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _514);
    highp vec3 _525 = pow(abs(_518.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _526 = _525.z;
    highp float _527 = _525.y;
    bvec4 _529 = bvec4(_526 > _527);
    highp vec4 _530 = vec4(_526, _527, -1.0, 0.666666686534881591796875);
    highp vec4 _531 = vec4(_527, _526, 0.0, -0.3333333432674407958984375);
    highp vec4 _532 = vec4(_529.x ? _530.x : _531.x, _529.y ? _530.y : _531.y, _529.z ? _530.z : _531.z, _529.w ? _530.w : _531.w);
    highp float _533 = _532.x;
    highp float _534 = _525.x;
    bvec4 _536 = bvec4(_533 > _534);
    highp vec4 _539 = vec4(_533, _532.yw, _534);
    highp vec4 _541 = vec4(_534, _532.yz, _533);
    highp vec4 _542 = vec4(_536.x ? _539.x : _541.x, _536.y ? _539.y : _541.y, _536.z ? _539.z : _541.z, _536.w ? _539.w : _541.w);
    highp float _547 = _542.x - (isnan(_542.y) ? _542.w : (isnan(_542.w) ? _542.y : min(_542.w, _542.y)));
    highp float _560 = clamp((_547 / (_542.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _563 = clamp(_542.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _577 = vec3((-_563) * _560 + _563) + (clamp(abs((fract(vec3(abs(_542.z + ((_542.w - _542.y) / (6.0 * _547 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_563 * _560));
    highp vec4 _581 = vec4(_577.x, _577.y, _577.z, _518.w) * _Globals._Color;
    highp vec3 _613;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _594 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _514 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _594.w = _594.w * _594.x;
        highp vec2 _605 = ((_594.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _606 = vec3(_605.x, _605.y, _344.z);
        highp vec2 _607 = _605.xy;
        _606.z = sqrt(1.0 - clamp(dot(_607, _607), 0.0, 1.0));
        _613 = _606;
    }
    else
    {
        _613 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _662;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _622 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _623 = vec2(_622.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _622.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _625 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _626 = vec2(_625.x ? out_var_TEXCOORD1.xy.x : _623.x, _625.y ? out_var_TEXCOORD1.xy.y : _623.y);
        bvec2 _628 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _638 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_628.x ? out_var_TEXCOORD1.zw.x : _626.x, _628.y ? out_var_TEXCOORD1.zw.y : _626.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _638.w = _638.w * _638.x;
        highp vec2 _650 = (((_638.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _662 = vec3(_613.xy + _650, _613.z * sqrt(1.0 - clamp(dot(_650, _650), 0.0, 1.0)));
    }
    else
    {
        _662 = _613;
    }
    highp vec3 _664 = normalize(_473 * _662);
    bvec3 _669 = bvec3(_396 < (_Globals._FlipNormal - 1.0));
    highp vec3 _670 = -_664;
    highp vec3 _671 = vec3(_669.x ? _670.x : _664.x, _669.y ? _670.y : _664.y, _669.z ? _670.z : _664.z);
    highp float _672 = dot(_671, _464);
    highp float _673 = clamp(_672, 0.0, 1.0);
    highp vec2 _675 = vec2(abs(_672));
    highp vec3 _676 = normalize(out_var_TEXCOORD4);
    highp vec2 _680 = ((_671 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _371, _364)).xy * 0.5) + vec2(0.5);
    bool _681 = out_var_TEXCOORD5.w > 0.0;
    bool _686 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _964;
    highp vec4 _965;
    if (_686)
    {
        bvec2 _692 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _693 = vec2(_692.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _692.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _695 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _696 = vec2(_695.x ? out_var_TEXCOORD1.xy.x : _693.x, _695.y ? out_var_TEXCOORD1.xy.y : _693.y);
        bvec2 _698 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _699 = vec2(_698.x ? out_var_TEXCOORD1.zw.x : _696.x, _698.y ? out_var_TEXCOORD1.zw.y : _696.y);
        bvec2 _701 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _702 = vec2(_701.x ? _680.x : _699.x, _701.y ? _680.y : _699.y);
        highp vec4 _741 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _742 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _750;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _749 = _702;
            _749.x = abs(_702.x - 0.5) + 0.5;
            _750 = _749;
        }
        else
        {
            _750 = _702;
        }
        highp vec2 _751 = _741.xy;
        highp vec2 _752 = _741.zw;
        highp vec2 _753 = _750 * _751 + _752;
        highp vec2 _762;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_702.x < 0.5))
        {
            highp vec2 _761 = _753;
            _761.x = 1.0 - _753.x;
            _762 = _761;
        }
        else
        {
            _762 = _753;
        }
        highp vec2 _769;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _681)
        {
            highp vec2 _768 = _762;
            _768.x = 1.0 - _762.x;
            _769 = _768;
        }
        else
        {
            _769 = _762;
        }
        highp vec2 _774;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _681)
        {
            highp vec2 _773 = _769;
            _773.x = -1.0;
            _774 = _773;
        }
        else
        {
            _774 = _769;
        }
        highp vec2 _780;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_681))
        {
            highp vec2 _779 = _774;
            _779.x = -1.0;
            _780 = _779;
        }
        else
        {
            _780 = _774;
        }
        highp float _783 = sin(_742);
        highp float _784 = cos(_742);
        highp vec2 _785 = ((_780 - _752) / _751) - vec2(0.5);
        highp float _786 = _785.x;
        highp float _787 = _785.y;
        highp vec2 _795 = (vec2(_786 * _784 + (-(_787 * _783)), _786 * _783 + (_787 * _784)) + vec2(0.5)) * _751 + _752;
        uint _799 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _803 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _799 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _799);
        highp float _804 = _795.x;
        highp float _805 = _795.y;
        uint _812 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _822 = ((mix(vec2(_804, 1.0 - _805), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_803 % _812), float(_803 / _812))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _822.y = 1.0 - _822.y;
        highp vec4 _827 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _822);
        highp vec4 _843;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _830 = _827.x;
            highp float _831 = _827.y;
            highp float _832 = _827.z;
            highp float _833 = isnan(_831) ? _830 : (isnan(_830) ? _831 : min(_830, _831));
            highp float _834 = isnan(_831) ? _830 : (isnan(_830) ? _831 : max(_830, _831));
            highp float _835 = isnan(_832) ? _834 : (isnan(_834) ? _832 : min(_834, _832));
            highp float _836 = isnan(_835) ? _833 : (isnan(_833) ? _835 : max(_833, _835));
            _843 = vec4(1.0, 1.0, 1.0, clamp((_836 - 0.5) / clamp(fwidth(_836), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _843 = _827;
        }
        highp vec4 _866;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _847 = clamp(_673 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _850 = 0.5 - abs(_804 - 0.5);
            highp float _857 = 0.5 - abs(_805 - 0.5);
            highp vec4 _865 = _843;
            _865.w = _843.w * (clamp(_850 / clamp(fwidth(_850), 9.9999997473787516355514526367188e-05, _847), 0.0, 1.0) * clamp(_857 / clamp(fwidth(_857), 9.9999997473787516355514526367188e-05, _847), 0.0, 1.0));
            _866 = _865;
        }
        else
        {
            _866 = _843;
        }
        highp vec4 _867 = _Globals._Color2nd * _866;
        highp float _868 = _867.w;
        _867.w = mix(_868, _868 * clamp((_457 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _894;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_396 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_396 < 0.0)))
        {
            highp vec4 _893 = _867;
            _893.w = 0.0;
            _894 = _893;
        }
        else
        {
            _894 = _867;
        }
        highp vec4 _933;
        highp vec4 _934;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _905;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _904 = _581;
                _904.w = _894.w;
                _905 = _904;
            }
            else
            {
                _905 = _581;
            }
            highp vec4 _913;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _912 = _905;
                _912.w = _905.w * _894.w;
                _913 = _912;
            }
            else
            {
                _913 = _905;
            }
            highp vec4 _922;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _921 = _913;
                _921.w = clamp(_913.w + _894.w, 0.0, 1.0);
                _922 = _921;
            }
            else
            {
                _922 = _913;
            }
            highp vec4 _931;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _930 = _922;
                _930.w = clamp(_922.w - _894.w, 0.0, 1.0);
                _931 = _930;
            }
            else
            {
                _931 = _922;
            }
            highp vec4 _932 = _894;
            _932.w = 1.0;
            _933 = _932;
            _934 = _931;
        }
        else
        {
            _933 = _894;
            _934 = _581;
        }
        highp vec3 _944 = _934.xyz + _933.xyz;
        highp vec3 _945 = _934.xyz * _933.xyz;
        bvec3 _947 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _948 = vec3(_947.x ? _933.xyz.x : _338.x, _947.y ? _933.xyz.y : _338.y, _947.z ? _933.xyz.z : _338.z);
        bvec3 _950 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _958;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _956 = (-_934.xyz) * _933.xyz + _944;
            bvec3 _2817 = isnan(_956);
            bvec3 _2818 = isnan(_934.xyz);
            highp vec3 _2819 = max(_956, _934.xyz);
            highp vec3 _2820 = vec3(_2817.x ? _934.xyz.x : _2819.x, _2817.y ? _934.xyz.y : _2819.y, _2817.z ? _934.xyz.z : _2819.z);
            _958 = vec3(_2818.x ? _956.x : _2820.x, _2818.y ? _956.y : _2820.y, _2818.z ? _956.z : _2820.z);
        }
        else
        {
            _958 = vec3(_950.x ? _944.x : _948.x, _950.y ? _944.y : _948.y, _950.z ? _944.z : _948.z);
        }
        bvec3 _960 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _962 = mix(_934.xyz, vec3(_960.x ? _945.x : _958.x, _960.y ? _945.y : _958.y, _960.z ? _945.z : _958.z), vec3(_933.w * _Globals._Main2ndEnableLighting));
        _964 = _933;
        _965 = vec4(_962.x, _962.y, _962.z, _934.w);
    }
    else
    {
        _964 = _Globals._Color2nd;
        _965 = _581;
    }
    bool _970 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1248;
    highp vec4 _1249;
    if (_970)
    {
        bvec2 _976 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _977 = vec2(_976.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _976.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _979 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _980 = vec2(_979.x ? out_var_TEXCOORD1.xy.x : _977.x, _979.y ? out_var_TEXCOORD1.xy.y : _977.y);
        bvec2 _982 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _983 = vec2(_982.x ? out_var_TEXCOORD1.zw.x : _980.x, _982.y ? out_var_TEXCOORD1.zw.y : _980.y);
        bvec2 _985 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _986 = vec2(_985.x ? _680.x : _983.x, _985.y ? _680.y : _983.y);
        highp vec4 _1025 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1026 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1034;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1033 = _986;
            _1033.x = abs(_986.x - 0.5) + 0.5;
            _1034 = _1033;
        }
        else
        {
            _1034 = _986;
        }
        highp vec2 _1035 = _1025.xy;
        highp vec2 _1036 = _1025.zw;
        highp vec2 _1037 = _1034 * _1035 + _1036;
        highp vec2 _1046;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_986.x < 0.5))
        {
            highp vec2 _1045 = _1037;
            _1045.x = 1.0 - _1037.x;
            _1046 = _1045;
        }
        else
        {
            _1046 = _1037;
        }
        highp vec2 _1053;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _681)
        {
            highp vec2 _1052 = _1046;
            _1052.x = 1.0 - _1046.x;
            _1053 = _1052;
        }
        else
        {
            _1053 = _1046;
        }
        highp vec2 _1058;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _681)
        {
            highp vec2 _1057 = _1053;
            _1057.x = -1.0;
            _1058 = _1057;
        }
        else
        {
            _1058 = _1053;
        }
        highp vec2 _1064;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_681))
        {
            highp vec2 _1063 = _1058;
            _1063.x = -1.0;
            _1064 = _1063;
        }
        else
        {
            _1064 = _1058;
        }
        highp float _1067 = sin(_1026);
        highp float _1068 = cos(_1026);
        highp vec2 _1069 = ((_1064 - _1036) / _1035) - vec2(0.5);
        highp float _1070 = _1069.x;
        highp float _1071 = _1069.y;
        highp vec2 _1079 = (vec2(_1070 * _1068 + (-(_1071 * _1067)), _1070 * _1067 + (_1071 * _1068)) + vec2(0.5)) * _1035 + _1036;
        uint _1083 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1087 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1083 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1083);
        highp float _1088 = _1079.x;
        highp float _1089 = _1079.y;
        uint _1096 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1106 = ((mix(vec2(_1088, 1.0 - _1089), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1087 % _1096), float(_1087 / _1096))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1106.y = 1.0 - _1106.y;
        highp vec4 _1111 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1106);
        highp vec4 _1127;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1114 = _1111.x;
            highp float _1115 = _1111.y;
            highp float _1116 = _1111.z;
            highp float _1117 = isnan(_1115) ? _1114 : (isnan(_1114) ? _1115 : min(_1114, _1115));
            highp float _1118 = isnan(_1115) ? _1114 : (isnan(_1114) ? _1115 : max(_1114, _1115));
            highp float _1119 = isnan(_1116) ? _1118 : (isnan(_1118) ? _1116 : min(_1118, _1116));
            highp float _1120 = isnan(_1119) ? _1117 : (isnan(_1117) ? _1119 : max(_1117, _1119));
            _1127 = vec4(1.0, 1.0, 1.0, clamp((_1120 - 0.5) / clamp(fwidth(_1120), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1127 = _1111;
        }
        highp vec4 _1150;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1131 = clamp(_673 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1134 = 0.5 - abs(_1088 - 0.5);
            highp float _1141 = 0.5 - abs(_1089 - 0.5);
            highp vec4 _1149 = _1127;
            _1149.w = _1127.w * (clamp(_1134 / clamp(fwidth(_1134), 9.9999997473787516355514526367188e-05, _1131), 0.0, 1.0) * clamp(_1141 / clamp(fwidth(_1141), 9.9999997473787516355514526367188e-05, _1131), 0.0, 1.0));
            _1150 = _1149;
        }
        else
        {
            _1150 = _1127;
        }
        highp vec4 _1151 = _Globals._Color3rd * _1150;
        highp float _1152 = _1151.w;
        _1151.w = mix(_1152, _1152 * clamp((_457 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1178;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_396 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_396 < 0.0)))
        {
            highp vec4 _1177 = _1151;
            _1177.w = 0.0;
            _1178 = _1177;
        }
        else
        {
            _1178 = _1151;
        }
        highp vec4 _1217;
        highp vec4 _1218;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1189;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1188 = _965;
                _1188.w = _1178.w;
                _1189 = _1188;
            }
            else
            {
                _1189 = _965;
            }
            highp vec4 _1197;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1196 = _1189;
                _1196.w = _1189.w * _1178.w;
                _1197 = _1196;
            }
            else
            {
                _1197 = _1189;
            }
            highp vec4 _1206;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1205 = _1197;
                _1205.w = clamp(_1197.w + _1178.w, 0.0, 1.0);
                _1206 = _1205;
            }
            else
            {
                _1206 = _1197;
            }
            highp vec4 _1215;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1214 = _1206;
                _1214.w = clamp(_1206.w - _1178.w, 0.0, 1.0);
                _1215 = _1214;
            }
            else
            {
                _1215 = _1206;
            }
            highp vec4 _1216 = _1178;
            _1216.w = 1.0;
            _1217 = _1216;
            _1218 = _1215;
        }
        else
        {
            _1217 = _1178;
            _1218 = _965;
        }
        highp vec3 _1228 = _1218.xyz + _1217.xyz;
        highp vec3 _1229 = _1218.xyz * _1217.xyz;
        bvec3 _1231 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1232 = vec3(_1231.x ? _1217.xyz.x : _338.x, _1231.y ? _1217.xyz.y : _338.y, _1231.z ? _1217.xyz.z : _338.z);
        bvec3 _1234 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1242;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1240 = (-_1218.xyz) * _1217.xyz + _1228;
            bvec3 _2842 = isnan(_1240);
            bvec3 _2843 = isnan(_1218.xyz);
            highp vec3 _2844 = max(_1240, _1218.xyz);
            highp vec3 _2845 = vec3(_2842.x ? _1218.xyz.x : _2844.x, _2842.y ? _1218.xyz.y : _2844.y, _2842.z ? _1218.xyz.z : _2844.z);
            _1242 = vec3(_2843.x ? _1240.x : _2845.x, _2843.y ? _1240.y : _2845.y, _2843.z ? _1240.z : _2845.z);
        }
        else
        {
            _1242 = vec3(_1234.x ? _1228.x : _1232.x, _1234.y ? _1228.y : _1232.y, _1234.z ? _1228.z : _1232.z);
        }
        bvec3 _1244 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1246 = mix(_1218.xyz, vec3(_1244.x ? _1229.x : _1242.x, _1244.y ? _1229.y : _1242.y, _1244.z ? _1229.z : _1242.z), vec3(_1217.w * _Globals._Main3rdEnableLighting));
        _1248 = _1217;
        _1249 = vec4(_1246.x, _1246.y, _1246.z, _1218.w);
    }
    else
    {
        _1248 = _Globals._Color3rd;
        _1249 = _965;
    }
    highp vec4 _1298;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1262 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _514 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1269 = clamp(_1262.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1274;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1273 = _1249;
            _1273.w = _1269;
            _1274 = _1273;
        }
        else
        {
            _1274 = _1249;
        }
        highp vec4 _1281;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1280 = _1274;
            _1280.w = _1274.w * _1269;
            _1281 = _1280;
        }
        else
        {
            _1281 = _1274;
        }
        highp vec4 _1289;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1288 = _1281;
            _1288.w = clamp(_1281.w + _1269, 0.0, 1.0);
            _1289 = _1288;
        }
        else
        {
            _1289 = _1281;
        }
        highp vec4 _1297;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1296 = _1289;
            _1296.w = clamp(_1289.w - _1269, 0.0, 1.0);
            _1297 = _1296;
        }
        else
        {
            _1297 = _1289;
        }
        _1298 = _1297;
    }
    else
    {
        _1298 = _1249;
    }
    highp vec4 _1419;
    highp float _1420;
    if ((_387 & 1) != 0)
    {
        highp vec4 _1302 = _1298;
        _1302.w = 1.0;
        highp vec2 _1318 = roundEven(_Globals._DissolveParams.xy);
        highp float _1319 = _1318.x;
        highp vec4 _1408;
        highp float _1409;
        if (_1319 != 0.0)
        {
            bool _1323 = _1319 == 1.0;
            highp float _1333;
            if (_1323 && true)
            {
                _1333 = texture(SPIRV_Cross_Combined_DissolveMasksampler_MainTex, out_var_TEXCOORD0.xy * _Globals._DissolveMask_ST.xy + _Globals._DissolveMask_ST.zw).x;
            }
            else
            {
                _1333 = 1.0;
            }
            highp vec4 _1342 = texture(SPIRV_Cross_Combined_DissolveNoiseMasksampler_MainTex, (out_var_TEXCOORD0.xy * _Globals._DissolveNoiseMask_ST.xy + _Globals._DissolveNoiseMask_ST.zw) + fract(_Globals._DissolveNoiseMask_ScrollRotate.xy * _Globals.uTime.y));
            highp float _1344 = _1342.x - 0.5;
            highp float _1357;
            highp float _1358;
            if (_1323)
            {
                highp float _1347 = _1344 * _Globals._DissolveNoiseStrength + _1333;
                _1357 = 1.0 - clamp(abs(_1347 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1358 = float(_1347 > _Globals._DissolveParams.z);
            }
            else
            {
                _1357 = 0.0;
                _1358 = _1333;
            }
            highp float _1381;
            highp float _1382;
            if (_1319 == 2.0)
            {
                highp float _1370 = (_1318.y == 1.0) ? (_1344 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD0.xy, normalize(_Globals._DissolvePos.xy))) : (_1344 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy));
                _1381 = 1.0 - clamp(abs(_1370 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1382 = _1358 * float(_1370 > _Globals._DissolveParams.z);
            }
            else
            {
                _1381 = _1357;
                _1382 = _1358;
            }
            highp float _1405;
            highp float _1406;
            if (_1319 == 3.0)
            {
                highp float _1394 = (_1318.y == 1.0) ? (_1344 * _Globals._DissolveNoiseStrength + dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz))) : (_1344 * _Globals._DissolveNoiseStrength + distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz));
                _1405 = 1.0 - clamp(abs(_1394 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1406 = _1382 * float(_1394 > _Globals._DissolveParams.z);
            }
            else
            {
                _1405 = _1381;
                _1406 = _1382;
            }
            highp vec4 _1407 = _1302;
            _1407.w = _1406;
            _1408 = _1407;
            _1409 = _1405;
        }
        else
        {
            _1408 = _1302;
            _1409 = 0.0;
        }
        highp vec4 _1415;
        if ((_387 & 2) != 0)
        {
            highp vec4 _1414 = _1408;
            _1414.w = 1.0 - _1408.w;
            _1415 = _1414;
        }
        else
        {
            _1415 = _1408;
        }
        highp vec4 _1418 = _1415;
        _1418.w = _1415.w * _1298.w;
        _1419 = _1418;
        _1420 = _1409;
    }
    else
    {
        _1419 = _1298;
        _1420 = 0.0;
    }
    if ((_1419.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1601;
    highp float _1602;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1451 = clamp(dot(_448, mix(_676, _671, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1454 = clamp(dot(_448, mix(_676, _671, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1457 = clamp(dot(_448, mix(_676, _671, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1461 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1464 = clamp(_447 + distance(_448, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1467 = mix(1.0, _1464, _Globals._ShadowReceive);
        highp float _1468 = _1451 * _1467;
        highp float _1471 = mix(1.0, _1464, _Globals._Shadow2ndReceive);
        highp float _1475 = mix(1.0, _1464, _Globals._Shadow3rdReceive);
        highp float _1486 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1487 = clamp(_1486, 0.0, 1.0);
        highp float _1489 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1502 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1516 = clamp(_1486 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1529 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1544 = (_396 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1545 = clamp((_1451 * _1467 + (-_1487)) / clamp(fwidth(_1468) * _1461 + (_1489 - _1487), 0.0, 1.0), 0.0, 1.0) * _1544;
        highp vec3 _1577 = mix(mix(_1419.xyz * _Globals._ShadowColor.xyz, (_1419.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1454 * _1471 + (-_1502)) / clamp(fwidth(_1454 * _1471) * _1461 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1502), 0.0, 1.0), 0.0, 1.0) * _1544)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1419.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1457 * _1475 + (-_1529)) / clamp(fwidth(_1457 * _1475) * _1461 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1529), 0.0, 1.0), 0.0, 1.0) * _1544)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1583 = _1419.xyz * out_var_TEXCOORD6;
        highp vec3 _1589 = mix(mix(_1577, _1577 * _1419.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1419.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2847 = isnan(_1589);
        bvec3 _2848 = isnan(_1583);
        highp vec3 _2849 = min(_1589, _1583);
        highp vec3 _2850 = vec3(_2847.x ? _1583.x : _2849.x, _2847.y ? _1583.y : _2849.y, _2847.z ? _1583.z : _2849.z);
        highp vec3 _1597 = mix(mix(vec3(_2848.x ? _1589.x : _2850.x, _2848.y ? _1589.y : _2850.y, _2848.z ? _1589.z : _2850.z), _1583, _Globals._ShadowBorderColor.xyz * (clamp((_1451 * _1467 + (-_1516)) / clamp(fwidth(_1468) * _1461 + (_1489 - _1516), 0.0, 1.0), 0.0, 1.0) * _1544)), _1583, vec3(mix(1.0, _1545, _Globals._ShadowStrength)));
        _1601 = vec4(_1597.x, _1597.y, _1597.z, _1419.w);
        _1602 = _1545;
    }
    else
    {
        highp vec3 _1599 = _1419.xyz * out_var_TEXCOORD6;
        _1601 = vec4(_1599.x, _1599.y, _1599.z, _1419.w);
        _1602 = 1.0;
    }
    highp vec3 _1605 = vec3(_Globals._LightMaxLimit);
    bvec3 _2852 = isnan(out_var_TEXCOORD6);
    bvec3 _2853 = isnan(_1605);
    highp vec3 _2854 = min(out_var_TEXCOORD6, _1605);
    highp vec3 _2855 = vec3(_2852.x ? _1605.x : _2854.x, _2852.y ? _1605.y : _2854.y, _2852.z ? _1605.z : _2854.z);
    highp vec3 _1606 = vec3(_2853.x ? out_var_TEXCOORD6.x : _2855.x, _2853.y ? out_var_TEXCOORD6.y : _2855.y, _2853.z ? out_var_TEXCOORD6.z : _2855.z);
    highp float _1607 = clamp(_1602, 0.0, 1.0);
    highp vec3 _1609 = _1419.xyz * _Globals._LightMaxLimit;
    bvec3 _2857 = isnan(_1601.xyz);
    bvec3 _2858 = isnan(_1609);
    highp vec3 _2859 = min(_1601.xyz, _1609);
    highp vec3 _2860 = vec3(_2857.x ? _1609.x : _2859.x, _2857.y ? _1609.y : _2859.y, _2857.z ? _1609.z : _2859.z);
    highp vec3 _1610 = vec3(_2858.x ? _1601.xyz.x : _2860.x, _2858.y ? _1601.xyz.y : _2860.y, _2858.z ? _1601.xyz.z : _2860.z);
    highp vec4 _1644;
    if (_686)
    {
        highp vec3 _1614 = _1610.xyz;
        highp vec3 _1624 = _1614 + _964.xyz;
        highp vec3 _1625 = _1614 * _964.xyz;
        bvec3 _1627 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1628 = vec3(_1627.x ? _964.xyz.x : _338.x, _1627.y ? _964.xyz.y : _338.y, _1627.z ? _964.xyz.z : _338.z);
        bvec3 _1630 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1638;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1636 = (-_1614) * _964.xyz + _1624;
            bvec3 _2862 = isnan(_1636);
            bvec3 _2863 = isnan(_1614);
            highp vec3 _2864 = max(_1636, _1614);
            highp vec3 _2865 = vec3(_2862.x ? _1614.x : _2864.x, _2862.y ? _1614.y : _2864.y, _2862.z ? _1614.z : _2864.z);
            _1638 = vec3(_2863.x ? _1636.x : _2865.x, _2863.y ? _1636.y : _2865.y, _2863.z ? _1636.z : _2865.z);
        }
        else
        {
            _1638 = vec3(_1630.x ? _1624.x : _1628.x, _1630.y ? _1624.y : _1628.y, _1630.z ? _1624.z : _1628.z);
        }
        bvec3 _1640 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1642 = mix(_1614, vec3(_1640.x ? _1625.x : _1638.x, _1640.y ? _1625.y : _1638.y, _1640.z ? _1625.z : _1638.z), vec3((-_964.w) * _Globals._Main2ndEnableLighting + _964.w));
        _1644 = vec4(_1642.x, _1642.y, _1642.z, _1601.w);
    }
    else
    {
        _1644 = vec4(_1610.x, _1610.y, _1610.z, _1601.w);
    }
    highp vec4 _1677;
    if (_970)
    {
        highp vec3 _1657 = _1644.xyz + _1248.xyz;
        highp vec3 _1658 = _1644.xyz * _1248.xyz;
        bvec3 _1660 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1661 = vec3(_1660.x ? _1248.xyz.x : _338.x, _1660.y ? _1248.xyz.y : _338.y, _1660.z ? _1248.xyz.z : _338.z);
        bvec3 _1663 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1671;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1669 = (-_1644.xyz) * _1248.xyz + _1657;
            bvec3 _2867 = isnan(_1669);
            bvec3 _2868 = isnan(_1644.xyz);
            highp vec3 _2869 = max(_1669, _1644.xyz);
            highp vec3 _2870 = vec3(_2867.x ? _1644.xyz.x : _2869.x, _2867.y ? _1644.xyz.y : _2869.y, _2867.z ? _1644.xyz.z : _2869.z);
            _1671 = vec3(_2868.x ? _1669.x : _2870.x, _2868.y ? _1669.y : _2870.y, _2868.z ? _1669.z : _2870.z);
        }
        else
        {
            _1671 = vec3(_1663.x ? _1657.x : _1661.x, _1663.y ? _1657.y : _1661.y, _1663.z ? _1657.z : _1661.z);
        }
        bvec3 _1673 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1675 = mix(_1644.xyz, vec3(_1673.x ? _1658.x : _1671.x, _1673.y ? _1658.y : _1671.y, _1673.z ? _1658.z : _1671.z), vec3((-_1248.w) * _Globals._Main3rdEnableLighting + _1248.w));
        _1677 = vec4(_1675.x, _1675.y, _1675.z, _1644.w);
    }
    else
    {
        _1677 = _1644;
    }
    highp vec4 _1723;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1693 = pow(clamp(1.0 - abs(dot(mix(_676, _671, vec3(_Globals._RimShadeNormalStrength)), _464)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1702 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1721 = mix(_1677.xyz, _1677.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1693 - _1702) / clamp(fwidth(_1693) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1702), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1723 = vec4(_1721.x, _1721.y, _1721.z, _1677.w);
    }
    else
    {
        _1723 = _1677;
    }
    highp vec4 _1796;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1747 = dot(normalize(((-_464) * _Globals._BacklightViewStrength) + _448), mix(_676, _671, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1757;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1757 = _1747 * clamp(_447 + distance(_448, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1757 = _1747;
        }
        highp float _1766 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1794 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1419.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_396 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_464, _448) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1757 - _1766) / clamp(fwidth(_1757) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1766), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1606 + _1723.xyz;
        _1796 = vec4(_1794.x, _1794.y, _1794.z, _1723.w);
    }
    else
    {
        _1796 = _1723;
    }
    highp vec3 _1799 = _1796.xyz * _1796.w;
    highp vec4 _2052;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1810 = dFdx(_671);
        highp vec3 _1811 = abs(_1810);
        highp vec3 _1812 = dFdy(_671);
        highp vec3 _1813 = abs(_1812);
        highp float _1814 = dot(_1811, _1811);
        highp float _1815 = dot(_1813, _1813);
        highp float _1816 = isnan(_1815) ? _1814 : (isnan(_1814) ? _1815 : max(_1814, _1815));
        highp float _1819 = (_1816 / (_1816 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1822 = clamp(1.0 - (isnan(_1819) ? 0.0 : (isnan(0.0) ? _1819 : max(0.0, _1819))), 0.0, 1.0);
        highp float _1823 = isnan(_1822) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1822 : min(_Globals._Smoothness, _1822));
        highp float _1824 = 1.0 - _1823;
        highp float _1825 = _1824 * _1824;
        highp vec3 _1828 = _1799.xyz;
        highp vec3 _1830 = _1828 - (_1828 * _Globals._Metallic);
        highp vec3 _1836 = mix(vec3(_Globals._Reflectance), _1419.xyz, vec3(_Globals._Metallic));
        highp vec4 _1838 = _Globals._ReflectionColor;
        highp vec4 _1847;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1846 = _1838;
            _1846.w = _1838.w * _1796.w;
            _1847 = _1846;
        }
        else
        {
            _1847 = _1838;
        }
        highp vec4 _1948;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1920;
            do
            {
                highp vec3 _1858 = mix(_676, _671, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1860 = normalize(_464 + _448);
                highp float _1862 = clamp(dot(_1858, _1860), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1871 = pow(_1862, 1.0 / _1825);
                    highp float _1878 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1920 = vec3(clamp((_1871 - _1878) / clamp(fwidth(_1871) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1878), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1890 = clamp(dot(_1858, _464), 0.0, 1.0);
                highp float _1892 = clamp(dot(_1858, _448), 0.0, 1.0);
                highp float _1895 = isnan(0.00200000009499490261077880859375) ? _1825 : (isnan(_1825) ? 0.00200000009499490261077880859375 : max(_1825, 0.00200000009499490261077880859375));
                highp float _1896 = 1.0 - _1895;
                highp float _1900 = _1895 * _1895;
                highp float _1903 = (_1862 * _1900 + (-_1862)) * _1862 + 1.0;
                highp float _1911 = 1.0 - clamp(dot(_448, _1860), 0.0, 1.0);
                _1920 = (_1836 + ((((((vec3(1.0) - _1836) * _1911) * _1911) * _1911) * _1911) * _1911)) * (((0.5 / ((_1892 * (_1890 * _1896 + _1895) + (_1890 * (_1892 * _1896 + _1895))) + 9.9999997473787516355514526367188e-06)) * (_1900 / (_1903 * _1903 + 1.0000000116860974230803549289703e-07))) * _1892);
                break;
            } while(false);
            highp vec3 _1921 = _1830.xyz;
            highp vec3 _1923 = _1847.xyz * _1606;
            highp vec3 _1928 = _1847.xyz * _1606 + _1921;
            highp vec3 _1929 = _1921 * _1923;
            bvec3 _1931 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1932 = vec3(_1931.x ? _1923.x : _338.x, _1931.y ? _1923.y : _338.y, _1931.z ? _1923.z : _338.z);
            bvec3 _1934 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1942;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1940 = (-_1921) * _1923 + _1928;
                bvec3 _2892 = isnan(_1940);
                bvec3 _2893 = isnan(_1921);
                highp vec3 _2894 = max(_1940, _1921);
                highp vec3 _2895 = vec3(_2892.x ? _1921.x : _2894.x, _2892.y ? _1921.y : _2894.y, _2892.z ? _1921.z : _2894.z);
                _1942 = vec3(_2893.x ? _1940.x : _2895.x, _2893.y ? _1940.y : _2895.y, _2893.z ? _1940.z : _2895.z);
            }
            else
            {
                _1942 = vec3(_1934.x ? _1928.x : _1932.x, _1934.y ? _1928.y : _1932.y, _1934.z ? _1928.z : _1932.z);
            }
            bvec3 _1944 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1946 = mix(_1921, vec3(_1944.x ? _1929.x : _1942.x, _1944.y ? _1929.y : _1942.y, _1944.z ? _1929.z : _1942.z), _1920 * _1847.w);
            _1948 = vec4(_1946.x, _1946.y, _1946.z, _1796.w);
        }
        else
        {
            _1948 = vec4(_1830.x, _1830.y, _1830.z, _1796.w);
        }
        highp vec4 _2051;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1970 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0SPIRV_Cross_DummySampler, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1977 = reflect(-_464, mix(_676, _671, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1980 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1977, _1824 * ((-4.19999980926513671875) * _1824 + 10.19999980926513671875));
            highp vec3 _2000 = ((_1980.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1980.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1606, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2006 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1977, _1824 * 8.0).xyz * 1.0;
            highp float _2017 = 1.0 - _673;
            highp vec3 _2031 = _1948.xyz + _1847.xyz;
            highp vec3 _2032 = _1948.xyz * _1847.xyz;
            bvec3 _2034 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2035 = vec3(_2034.x ? _1847.xyz.x : _338.x, _2034.y ? _1847.xyz.y : _338.y, _2034.z ? _1847.xyz.z : _338.z);
            bvec3 _2037 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2045;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2043 = (-_1948.xyz) * _1847.xyz + _2031;
                bvec3 _2897 = isnan(_2043);
                bvec3 _2898 = isnan(_1948.xyz);
                highp vec3 _2899 = max(_2043, _1948.xyz);
                highp vec3 _2900 = vec3(_2897.x ? _1948.xyz.x : _2899.x, _2897.y ? _1948.xyz.y : _2899.y, _2897.z ? _1948.xyz.z : _2899.z);
                _2045 = vec3(_2898.x ? _2043.x : _2900.x, _2898.y ? _2043.y : _2900.y, _2898.z ? _2043.z : _2900.z);
            }
            else
            {
                _2045 = vec3(_2037.x ? _2031.x : _2035.x, _2037.y ? _2031.y : _2035.y, _2037.z ? _2031.z : _2035.z);
            }
            bvec3 _2047 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2049 = mix(_1948.xyz, vec3(_2047.x ? _2032.x : _2045.x, _2047.y ? _2032.y : _2045.y, _2047.z ? _2032.z : _2045.z), ((vec3(_1970.x ? _2000.x : _2006.x, _1970.y ? _2000.y : _2006.y, _1970.z ? _2000.z : _2006.z) * (1.0 / (_1825 * _1825 + 1.0))) * mix(_1836, vec3(clamp(_1823 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2017 * _2017) * _2017) * _2017) * _2017))) * _1847.w);
            _2051 = vec4(_2049.x, _2049.y, _2049.z, _1948.w);
        }
        else
        {
            _2051 = _1948;
        }
        _2052 = _2051;
    }
    else
    {
        _2052 = vec4(_1799.x, _1799.y, _1799.z, _1796.w);
    }
    highp vec4 _2170;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2078 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2079 = vec3(_2078.x ? _464.x : _364.x, _2078.y ? _464.y : _364.y, _2078.z ? _464.z : _364.z);
        bvec3 _2080 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2081 = vec3(_2080.x ? vec3(0.0, 1.0, 0.0).x : _371.x, _2080.y ? vec3(0.0, 1.0, 0.0).y : _371.y, _2080.z ? vec3(0.0, 1.0, 0.0).z : _371.z);
        highp vec3 _2085 = normalize(_2081 - (_2079 * dot(_2079, _2081)));
        highp vec4 _2107 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_676, _671, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2079, _2085), _2085, _2079)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2108 = _2107.xyz;
        highp vec3 _2113 = mix(_2108, _2108 * _1606, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2114 = vec4(_2113.x, _2113.y, _2113.z, _2107.w);
        highp float _2115 = _2107.w;
        highp float _2119 = mix(_2115, _2115 * _1607, _Globals._MatCapShadowMask);
        _2114.w = _2119;
        highp vec4 _2129;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2128 = _2114;
            _2128.w = _2119 * _2052.w;
            _2129 = _2128;
        }
        else
        {
            _2129 = _2114;
        }
        highp vec3 _2143 = mix(_2129.xyz, _2129.xyz * _1419.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2150 = _2052.xyz + _2143;
        highp vec3 _2151 = _2052.xyz * _2143;
        bvec3 _2153 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2154 = vec3(_2153.x ? _2143.x : _338.x, _2153.y ? _2143.y : _338.y, _2153.z ? _2143.z : _338.z);
        bvec3 _2156 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2164;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2162 = (-_2052.xyz) * _2143 + _2150;
            bvec3 _2902 = isnan(_2162);
            bvec3 _2903 = isnan(_2052.xyz);
            highp vec3 _2904 = max(_2162, _2052.xyz);
            highp vec3 _2905 = vec3(_2902.x ? _2052.xyz.x : _2904.x, _2902.y ? _2052.xyz.y : _2904.y, _2902.z ? _2052.xyz.z : _2904.z);
            _2164 = vec3(_2903.x ? _2162.x : _2905.x, _2903.y ? _2162.y : _2905.y, _2903.z ? _2162.z : _2905.z);
        }
        else
        {
            _2164 = vec3(_2156.x ? _2150.x : _2154.x, _2156.y ? _2150.y : _2154.y, _2156.z ? _2150.z : _2154.z);
        }
        bvec3 _2166 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2168 = mix(_2052.xyz, vec3(_2166.x ? _2151.x : _2164.x, _2166.y ? _2151.y : _2164.y, _2166.z ? _2151.z : _2164.z), vec3(1.0) * (_Globals._MatCapBlend * ((_396 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2129.w)));
        _2170 = vec4(_2168.x, _2168.y, _2168.z, _2052.w);
    }
    else
    {
        _2170 = _2052;
    }
    highp vec4 _2287;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2195 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2196 = vec3(_2195.x ? _464.x : _364.x, _2195.y ? _464.y : _364.y, _2195.z ? _464.z : _364.z);
        bvec3 _2197 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2198 = vec3(_2197.x ? vec3(0.0, 1.0, 0.0).x : _371.x, _2197.y ? vec3(0.0, 1.0, 0.0).y : _371.y, _2197.z ? vec3(0.0, 1.0, 0.0).z : _371.z);
        highp vec3 _2202 = normalize(_2198 - (_2196 * dot(_2196, _2198)));
        highp vec4 _2224 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_676, _671, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2196, _2202), _2202, _2196)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2225 = _2224.xyz;
        highp vec3 _2230 = mix(_2225, _2225 * _1606, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2231 = vec4(_2230.x, _2230.y, _2230.z, _2224.w);
        highp float _2232 = _2224.w;
        highp float _2236 = mix(_2232, _2232 * _1607, _Globals._MatCap2ndShadowMask);
        _2231.w = _2236;
        highp vec4 _2246;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2245 = _2231;
            _2245.w = _2236 * _2170.w;
            _2246 = _2245;
        }
        else
        {
            _2246 = _2231;
        }
        highp vec3 _2260 = mix(_2246.xyz, _2246.xyz * _1419.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2267 = _2170.xyz + _2260;
        highp vec3 _2268 = _2170.xyz * _2260;
        bvec3 _2270 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2271 = vec3(_2270.x ? _2260.x : _338.x, _2270.y ? _2260.y : _338.y, _2270.z ? _2260.z : _338.z);
        bvec3 _2273 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2281;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2279 = (-_2170.xyz) * _2260 + _2267;
            bvec3 _2907 = isnan(_2279);
            bvec3 _2908 = isnan(_2170.xyz);
            highp vec3 _2909 = max(_2279, _2170.xyz);
            highp vec3 _2910 = vec3(_2907.x ? _2170.xyz.x : _2909.x, _2907.y ? _2170.xyz.y : _2909.y, _2907.z ? _2170.xyz.z : _2909.z);
            _2281 = vec3(_2908.x ? _2279.x : _2910.x, _2908.y ? _2279.y : _2910.y, _2908.z ? _2279.z : _2910.z);
        }
        else
        {
            _2281 = vec3(_2273.x ? _2267.x : _2271.x, _2273.y ? _2267.y : _2271.y, _2273.z ? _2267.z : _2271.z);
        }
        bvec3 _2283 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2285 = mix(_2170.xyz, vec3(_2283.x ? _2268.x : _2281.x, _2283.y ? _2268.y : _2281.y, _2283.z ? _2268.z : _2281.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_396 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2246.w)));
        _2287 = vec4(_2285.x, _2285.y, _2285.z, _2170.w);
    }
    else
    {
        _2287 = _2170;
    }
    highp vec4 _2443;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2306 = mix(_676, _671, vec3(_Globals._RimNormalStrength));
        highp float _2310 = dot(_448, _2306) * 0.5 + 0.5;
        highp float _2333 = (_396 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2306, _464)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2337 = mix(_2333, _2333 * clamp((_2310 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2338 = _2333 * clamp(((1.0 - _2310) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2348 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2357 = clamp((_2337 - _2348) / clamp(fwidth(_2337) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2348), 0.0, 1.0), 0.0, 1.0);
        highp float _2364 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2374 = clamp((_2338 * _Globals._RimDirStrength + (-_2364)) / clamp(fwidth(_2338 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2364), 0.0, 1.0), 0.0, 1.0);
        highp float _2378 = mix(_2357, _2357 * _1607, _Globals._RimShadowMask);
        highp float _2380 = mix(_2374, _2374 * _1607, _Globals._RimShadowMask);
        highp float _2389;
        highp float _2390;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2389 = _2380 * _2287.w;
            _2390 = _2378 * _2287.w;
        }
        else
        {
            _2389 = _2380;
            _2390 = _2378;
        }
        highp vec3 _2396 = vec3(1.0 - _Globals._RimEnableLighting) + (_1606 * _Globals._RimEnableLighting);
        highp vec3 _2398 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1419.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2399 = _2398 * _2396;
        highp vec3 _2405 = _2398 * _2396 + _2287.xyz;
        highp vec3 _2406 = _2287.xyz * _2399;
        bvec3 _2408 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2409 = vec3(_2408.x ? _2399.x : _338.x, _2408.y ? _2399.y : _338.y, _2408.z ? _2399.z : _338.z);
        bvec3 _2411 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2413 = _Globals._RimBlendMode == 2u;
        highp vec3 _2419;
        if (_2413)
        {
            highp vec3 _2417 = (-_2287.xyz) * _2399 + _2405;
            bvec3 _2912 = isnan(_2417);
            bvec3 _2913 = isnan(_2287.xyz);
            highp vec3 _2914 = max(_2417, _2287.xyz);
            highp vec3 _2915 = vec3(_2912.x ? _2287.xyz.x : _2914.x, _2912.y ? _2287.xyz.y : _2914.y, _2912.z ? _2287.xyz.z : _2914.z);
            _2419 = vec3(_2913.x ? _2417.x : _2915.x, _2913.y ? _2417.y : _2915.y, _2913.z ? _2417.z : _2915.z);
        }
        else
        {
            _2419 = vec3(_2411.x ? _2405.x : _2409.x, _2411.y ? _2405.y : _2409.y, _2411.z ? _2405.z : _2409.z);
        }
        bvec3 _2421 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2424 = mix(_2287.xyz, vec3(_2421.x ? _2406.x : _2419.x, _2421.y ? _2406.y : _2419.y, _2421.z ? _2406.z : _2419.z), vec3(_2390 * _Globals._RimColor.w)).xyz;
        highp vec3 _2426 = _Globals._RimIndirColor.xyz * _2396;
        highp vec3 _2430 = _Globals._RimIndirColor.xyz * _2396 + _2424;
        highp vec3 _2431 = _2424 * _2426;
        highp vec3 _2432 = vec3(_2408.x ? _2426.x : _338.x, _2408.y ? _2426.y : _338.y, _2408.z ? _2426.z : _338.z);
        highp vec3 _2439;
        if (_2413)
        {
            highp vec3 _2437 = (-_2424) * _2426 + _2430;
            bvec3 _2917 = isnan(_2437);
            bvec3 _2918 = isnan(_2424);
            highp vec3 _2919 = max(_2437, _2424);
            highp vec3 _2920 = vec3(_2917.x ? _2424.x : _2919.x, _2917.y ? _2424.y : _2919.y, _2917.z ? _2424.z : _2919.z);
            _2439 = vec3(_2918.x ? _2437.x : _2920.x, _2918.y ? _2437.y : _2920.y, _2918.z ? _2437.z : _2920.z);
        }
        else
        {
            _2439 = vec3(_2411.x ? _2430.x : _2432.x, _2411.y ? _2430.y : _2432.y, _2411.z ? _2430.z : _2432.z);
        }
        highp vec3 _2441 = mix(_2424, vec3(_2421.x ? _2431.x : _2439.x, _2421.y ? _2431.y : _2439.y, _2421.z ? _2431.z : _2439.z), vec3(_2389 * _Globals._RimIndirColor.w));
        _2443 = vec4(_2441.x, _2441.y, _2441.z, _2287.w);
    }
    else
    {
        _2443 = _2287;
    }
    highp vec4 _2559;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2454 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2455 = vec2(_2454.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2454.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2457 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2458 = vec2(_2457.x ? out_var_TEXCOORD1.xy.x : _2455.x, _2457.y ? out_var_TEXCOORD1.xy.y : _2455.y);
        bvec2 _2460 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2461 = vec2(_2460.x ? out_var_TEXCOORD1.zw.x : _2458.x, _2460.y ? out_var_TEXCOORD1.zw.y : _2458.y);
        bvec2 _2463 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2480 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2481 = sin(_2480);
        highp float _2482 = cos(_2480);
        highp vec2 _2483 = ((vec2(_2463.x ? _675.x : _2461.x, _2463.y ? _675.y : _2461.y) + (_479 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2484 = _2483.x;
        highp float _2485 = _2483.y;
        highp vec4 _2498 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2484 * _2482 + (-(_2485 * _2481)), _2484 * _2481 + (_2485 * _2482)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2499 = _Globals._EmissionColor * _2498;
        highp vec3 _2500 = _2499.xyz;
        highp vec3 _2506 = mix(_2500, _2500 * _452, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2520 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2526;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2526 = roundEven(_2520);
        }
        else
        {
            _2526 = _2520;
        }
        highp vec3 _2535 = mix(_2506, _2506 * _1419.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2539 = _2443.xyz + _2535;
        highp vec3 _2540 = _2443.xyz * _2535;
        bvec3 _2542 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2543 = vec3(_2542.x ? _2535.x : _338.x, _2542.y ? _2535.y : _338.y, _2542.z ? _2535.z : _338.z);
        bvec3 _2545 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2553;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2551 = (-_2443.xyz) * _2535 + _2539;
            bvec3 _2922 = isnan(_2551);
            bvec3 _2923 = isnan(_2443.xyz);
            highp vec3 _2924 = max(_2551, _2443.xyz);
            highp vec3 _2925 = vec3(_2922.x ? _2443.xyz.x : _2924.x, _2922.y ? _2443.xyz.y : _2924.y, _2922.z ? _2443.xyz.z : _2924.z);
            _2553 = vec3(_2923.x ? _2551.x : _2925.x, _2923.y ? _2551.y : _2925.y, _2923.z ? _2551.z : _2925.z);
        }
        else
        {
            _2553 = vec3(_2545.x ? _2539.x : _2543.x, _2545.y ? _2539.y : _2543.y, _2545.z ? _2539.z : _2543.z);
        }
        bvec3 _2555 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2557 = mix(_2443.xyz, vec3(_2555.x ? _2540.x : _2553.x, _2555.y ? _2540.y : _2553.y, _2555.z ? _2540.z : _2553.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2526, _Globals._EmissionBlink.x)) * _2499.w) * _2443.w));
        _2559 = vec4(_2557.x, _2557.y, _2557.z, _2443.w);
    }
    else
    {
        _2559 = _2443;
    }
    highp vec4 _2675;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2570 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2571 = vec2(_2570.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2570.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2573 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2574 = vec2(_2573.x ? out_var_TEXCOORD1.xy.x : _2571.x, _2573.y ? out_var_TEXCOORD1.xy.y : _2571.y);
        bvec2 _2576 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2577 = vec2(_2576.x ? out_var_TEXCOORD1.zw.x : _2574.x, _2576.y ? out_var_TEXCOORD1.zw.y : _2574.y);
        bvec2 _2579 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2596 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2597 = sin(_2596);
        highp float _2598 = cos(_2596);
        highp vec2 _2599 = ((vec2(_2579.x ? _675.x : _2577.x, _2579.y ? _675.y : _2577.y) + (_479 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2600 = _2599.x;
        highp float _2601 = _2599.y;
        highp vec4 _2614 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2600 * _2598 + (-(_2601 * _2597)), _2600 * _2597 + (_2601 * _2598)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2615 = _Globals._Emission2ndColor * _2614;
        highp vec3 _2616 = _2615.xyz;
        highp vec3 _2622 = mix(_2616, _2616 * _452, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2636 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2642;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2642 = roundEven(_2636);
        }
        else
        {
            _2642 = _2636;
        }
        highp vec3 _2651 = mix(_2622, _2622 * _1419.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2655 = _2559.xyz + _2651;
        highp vec3 _2656 = _2559.xyz * _2651;
        bvec3 _2658 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2659 = vec3(_2658.x ? _2651.x : _338.x, _2658.y ? _2651.y : _338.y, _2658.z ? _2651.z : _338.z);
        bvec3 _2661 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2669;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2667 = (-_2559.xyz) * _2651 + _2655;
            bvec3 _2927 = isnan(_2667);
            bvec3 _2928 = isnan(_2559.xyz);
            highp vec3 _2929 = max(_2667, _2559.xyz);
            highp vec3 _2930 = vec3(_2927.x ? _2559.xyz.x : _2929.x, _2927.y ? _2559.xyz.y : _2929.y, _2927.z ? _2559.xyz.z : _2929.z);
            _2669 = vec3(_2928.x ? _2667.x : _2930.x, _2928.y ? _2667.y : _2930.y, _2928.z ? _2667.z : _2930.z);
        }
        else
        {
            _2669 = vec3(_2661.x ? _2655.x : _2659.x, _2661.y ? _2655.y : _2659.y, _2661.z ? _2655.z : _2659.z);
        }
        bvec3 _2671 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2673 = mix(_2559.xyz, vec3(_2671.x ? _2656.x : _2669.x, _2671.y ? _2656.y : _2669.y, _2671.z ? _2656.z : _2669.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2642, _Globals._Emission2ndBlink.x)) * _2615.w) * _2559.w));
        _2675 = vec4(_2673.x, _2673.y, _2673.z, _2559.w);
    }
    else
    {
        _2675 = _2559;
    }
    bvec3 _2685 = bvec3(_396 < 0.0);
    highp vec3 _2686 = (_2675.xyz + ((_Globals._DissolveColor.xyz * _1420) * _2675.w)).xyz;
    highp vec3 _2694 = mix(_2686, _Globals._BackfaceColor.xyz * _1606, vec3(_Globals._BackfaceColor.w));
    highp float _2715 = (_396 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _457) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2729 = vec3(_2685.x ? _2694.x : _2686.x, _2685.y ? _2694.y : _2686.y, _2685.z ? _2694.z : _2686.z).xyz;
    highp vec3 _2740 = mix(_2729, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2729, vec3(pow(clamp(1.0 - abs(dot(_676, _464)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2715));
    highp vec4 _2741 = vec4(_2740.x, _2740.y, _2740.z, _2675.w);
    highp float _2743 = mix(_2675.w, _2675.w * _Globals._DistanceFadeColor.w, _2715);
    _2741.w = _2743;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2743, _2741, vec4(out_var_TEXCOORD9));
}
