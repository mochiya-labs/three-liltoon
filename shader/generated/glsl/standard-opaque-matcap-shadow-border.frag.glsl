#version 300 es
precision mediump float;
precision highp int;

vec3 _321;
vec3 _327;
vec4 _328;

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
    highp vec3 _347 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _354 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _371 = float(gl_FrontFacing ? 1 : (-1));
    highp float _422;
    do
    {
        highp vec3 _378 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _379 = _378.xy;
        highp float _385 = _378.z;
        if ((any(lessThan(_379, vec2(0.0))) || any(greaterThan(_379, vec2(1.0)))) || (_385 > 1.0))
        {
            _422 = 1.0;
            break;
        }
        highp float _395 = _385 + _Globals.uShadowBias;
        _422 = (((step(_395, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _379), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_395, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _379), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_395, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _379), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_395, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _379), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _423 = normalize(out_var_TEXCOORD7);
    highp vec3 _427 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _431 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _432 = length(_431);
    highp vec3 _439 = normalize(_431);
    highp mat3 _448 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _453 = bvec2(_371 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _454 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _467 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _468 = sin(_467);
    highp float _469 = cos(_467);
    highp vec2 _470 = (vec2(_453.x ? _454.x : out_var_TEXCOORD0.xy.x, _453.y ? _454.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _471 = _470.x;
    highp float _472 = _470.y;
    highp vec2 _483 = (vec2(_471 * _469 + (-(_472 * _468)), _471 * _468 + (_472 * _469)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _484 = dFdx(_483);
    highp vec2 _485 = abs(_484);
    highp vec2 _486 = dFdy(_483);
    highp vec2 _487 = abs(_486);
    highp vec4 _491 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _483);
    highp vec3 _498 = pow(abs(_491.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _499 = _498.z;
    highp float _500 = _498.y;
    bvec4 _502 = bvec4(_499 > _500);
    highp vec4 _503 = vec4(_499, _500, -1.0, 0.666666686534881591796875);
    highp vec4 _504 = vec4(_500, _499, 0.0, -0.3333333432674407958984375);
    highp vec4 _505 = vec4(_502.x ? _503.x : _504.x, _502.y ? _503.y : _504.y, _502.z ? _503.z : _504.z, _502.w ? _503.w : _504.w);
    highp float _506 = _505.x;
    highp float _507 = _498.x;
    bvec4 _509 = bvec4(_506 > _507);
    highp vec4 _512 = vec4(_506, _505.yw, _507);
    highp vec4 _514 = vec4(_507, _505.yz, _506);
    highp vec4 _515 = vec4(_509.x ? _512.x : _514.x, _509.y ? _512.y : _514.y, _509.z ? _512.z : _514.z, _509.w ? _512.w : _514.w);
    highp float _520 = _515.x - (isnan(_515.y) ? _515.w : (isnan(_515.w) ? _515.y : min(_515.w, _515.y)));
    highp float _533 = clamp((_520 / (_515.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _536 = clamp(_515.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _550 = vec3((-_536) * _533 + _536) + (clamp(abs((fract(vec3(abs(_515.z + ((_515.w - _515.y) / (6.0 * _520 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_536 * _533));
    highp vec4 _554 = vec4(_550.x, _550.y, _550.z, _491.w) * _Globals._Color;
    highp vec3 _586;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _567 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _483 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _567.w = _567.w * _567.x;
        highp vec2 _578 = ((_567.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _579 = vec3(_578.x, _578.y, _327.z);
        highp vec2 _580 = _578.xy;
        _579.z = sqrt(1.0 - clamp(dot(_580, _580), 0.0, 1.0));
        _586 = _579;
    }
    else
    {
        _586 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _635;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _595 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _596 = vec2(_595.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _595.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _598 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _599 = vec2(_598.x ? out_var_TEXCOORD1.xy.x : _596.x, _598.y ? out_var_TEXCOORD1.xy.y : _596.y);
        bvec2 _601 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _611 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_601.x ? out_var_TEXCOORD1.zw.x : _599.x, _601.y ? out_var_TEXCOORD1.zw.y : _599.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _611.w = _611.w * _611.x;
        highp vec2 _623 = (((_611.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _635 = vec3(_586.xy + _623, _586.z * sqrt(1.0 - clamp(dot(_623, _623), 0.0, 1.0)));
    }
    else
    {
        _635 = _586;
    }
    highp vec3 _637 = normalize(_448 * _635);
    bvec3 _642 = bvec3(_371 < (_Globals._FlipNormal - 1.0));
    highp vec3 _643 = -_637;
    highp vec3 _644 = vec3(_642.x ? _643.x : _637.x, _642.y ? _643.y : _637.y, _642.z ? _643.z : _637.z);
    highp float _646 = clamp(dot(_644, _439), 0.0, 1.0);
    highp vec3 _647 = normalize(out_var_TEXCOORD4);
    highp vec2 _651 = ((_644 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _354, _347)).xy * 0.5) + vec2(0.5);
    bool _652 = out_var_TEXCOORD5.w > 0.0;
    bool _657 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _895;
    highp vec4 _896;
    if (_657)
    {
        bvec2 _663 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _664 = vec2(_663.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _663.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _666 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _667 = vec2(_666.x ? out_var_TEXCOORD1.xy.x : _664.x, _666.y ? out_var_TEXCOORD1.xy.y : _664.y);
        bvec2 _669 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _670 = vec2(_669.x ? out_var_TEXCOORD1.zw.x : _667.x, _669.y ? out_var_TEXCOORD1.zw.y : _667.y);
        bvec2 _672 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _673 = vec2(_672.x ? _651.x : _670.x, _672.y ? _651.y : _670.y);
        highp vec4 _712 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _713 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _721;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _720 = _673;
            _720.x = abs(_673.x - 0.5) + 0.5;
            _721 = _720;
        }
        else
        {
            _721 = _673;
        }
        highp vec2 _722 = _712.xy;
        highp vec2 _723 = _712.zw;
        highp vec2 _724 = _721 * _722 + _723;
        highp vec2 _733;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_673.x < 0.5))
        {
            highp vec2 _732 = _724;
            _732.x = 1.0 - _724.x;
            _733 = _732;
        }
        else
        {
            _733 = _724;
        }
        highp vec2 _740;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _652)
        {
            highp vec2 _739 = _733;
            _739.x = 1.0 - _733.x;
            _740 = _739;
        }
        else
        {
            _740 = _733;
        }
        highp vec2 _745;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _652)
        {
            highp vec2 _744 = _740;
            _744.x = -1.0;
            _745 = _744;
        }
        else
        {
            _745 = _740;
        }
        highp vec2 _751;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_652))
        {
            highp vec2 _750 = _745;
            _750.x = -1.0;
            _751 = _750;
        }
        else
        {
            _751 = _745;
        }
        highp float _754 = sin(_713);
        highp float _755 = cos(_713);
        highp vec2 _756 = ((_751 - _723) / _722) - vec2(0.5);
        highp float _757 = _756.x;
        highp float _758 = _756.y;
        highp vec2 _766 = (vec2(_757 * _755 + (-(_758 * _754)), _757 * _754 + (_758 * _755)) + vec2(0.5)) * _722 + _723;
        uint _770 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _774 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _770 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _770);
        highp float _775 = _766.x;
        highp float _776 = _766.y;
        uint _783 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _793 = ((mix(vec2(_775, 1.0 - _776), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_774 % _783), float(_774 / _783))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _793.y = 1.0 - _793.y;
        highp vec4 _798 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _793);
        highp vec4 _814;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _801 = _798.x;
            highp float _802 = _798.y;
            highp float _803 = _798.z;
            highp float _804 = isnan(_802) ? _801 : (isnan(_801) ? _802 : min(_801, _802));
            highp float _805 = isnan(_802) ? _801 : (isnan(_801) ? _802 : max(_801, _802));
            highp float _806 = isnan(_803) ? _805 : (isnan(_805) ? _803 : min(_805, _803));
            highp float _807 = isnan(_806) ? _804 : (isnan(_804) ? _806 : max(_804, _806));
            _814 = vec4(1.0, 1.0, 1.0, clamp((_807 - 0.5) / clamp(fwidth(_807), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _814 = _798;
        }
        highp vec4 _837;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _818 = clamp(_646 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _821 = 0.5 - abs(_775 - 0.5);
            highp float _828 = 0.5 - abs(_776 - 0.5);
            highp vec4 _836 = _814;
            _836.w = _814.w * (clamp(_821 / clamp(fwidth(_821), 9.9999997473787516355514526367188e-05, _818), 0.0, 1.0) * clamp(_828 / clamp(fwidth(_828), 9.9999997473787516355514526367188e-05, _818), 0.0, 1.0));
            _837 = _836;
        }
        else
        {
            _837 = _814;
        }
        highp vec4 _838 = _Globals._Color2nd * _837;
        highp float _839 = _838.w;
        _838.w = mix(_839, _839 * clamp((_432 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _865;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_371 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_371 < 0.0)))
        {
            highp vec4 _864 = _838;
            _864.w = 0.0;
            _865 = _864;
        }
        else
        {
            _865 = _838;
        }
        highp vec3 _866 = _554.xyz;
        highp vec3 _875 = _866 + _865.xyz;
        highp vec3 _876 = _866 * _865.xyz;
        bvec3 _878 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _879 = vec3(_878.x ? _865.xyz.x : _321.x, _878.y ? _865.xyz.y : _321.y, _878.z ? _865.xyz.z : _321.z);
        bvec3 _881 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _889;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _887 = (-_866) * _865.xyz + _875;
            bvec3 _2502 = isnan(_887);
            bvec3 _2503 = isnan(_866);
            highp vec3 _2504 = max(_887, _866);
            highp vec3 _2505 = vec3(_2502.x ? _866.x : _2504.x, _2502.y ? _866.y : _2504.y, _2502.z ? _866.z : _2504.z);
            _889 = vec3(_2503.x ? _887.x : _2505.x, _2503.y ? _887.y : _2505.y, _2503.z ? _887.z : _2505.z);
        }
        else
        {
            _889 = vec3(_881.x ? _875.x : _879.x, _881.y ? _875.y : _879.y, _881.z ? _875.z : _879.z);
        }
        bvec3 _891 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _893 = mix(_866, vec3(_891.x ? _876.x : _889.x, _891.y ? _876.y : _889.y, _891.z ? _876.z : _889.z), vec3(_865.w * _Globals._Main2ndEnableLighting));
        _895 = _865;
        _896 = vec4(_893.x, _893.y, _893.z, _554.w);
    }
    else
    {
        _895 = _Globals._Color2nd;
        _896 = _554;
    }
    bool _901 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1139;
    highp vec4 _1140;
    if (_901)
    {
        bvec2 _907 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _908 = vec2(_907.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _907.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _910 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _911 = vec2(_910.x ? out_var_TEXCOORD1.xy.x : _908.x, _910.y ? out_var_TEXCOORD1.xy.y : _908.y);
        bvec2 _913 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _914 = vec2(_913.x ? out_var_TEXCOORD1.zw.x : _911.x, _913.y ? out_var_TEXCOORD1.zw.y : _911.y);
        bvec2 _916 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _917 = vec2(_916.x ? _651.x : _914.x, _916.y ? _651.y : _914.y);
        highp vec4 _956 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _957 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _965;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _964 = _917;
            _964.x = abs(_917.x - 0.5) + 0.5;
            _965 = _964;
        }
        else
        {
            _965 = _917;
        }
        highp vec2 _966 = _956.xy;
        highp vec2 _967 = _956.zw;
        highp vec2 _968 = _965 * _966 + _967;
        highp vec2 _977;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_917.x < 0.5))
        {
            highp vec2 _976 = _968;
            _976.x = 1.0 - _968.x;
            _977 = _976;
        }
        else
        {
            _977 = _968;
        }
        highp vec2 _984;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _652)
        {
            highp vec2 _983 = _977;
            _983.x = 1.0 - _977.x;
            _984 = _983;
        }
        else
        {
            _984 = _977;
        }
        highp vec2 _989;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _652)
        {
            highp vec2 _988 = _984;
            _988.x = -1.0;
            _989 = _988;
        }
        else
        {
            _989 = _984;
        }
        highp vec2 _995;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_652))
        {
            highp vec2 _994 = _989;
            _994.x = -1.0;
            _995 = _994;
        }
        else
        {
            _995 = _989;
        }
        highp float _998 = sin(_957);
        highp float _999 = cos(_957);
        highp vec2 _1000 = ((_995 - _967) / _966) - vec2(0.5);
        highp float _1001 = _1000.x;
        highp float _1002 = _1000.y;
        highp vec2 _1010 = (vec2(_1001 * _999 + (-(_1002 * _998)), _1001 * _998 + (_1002 * _999)) + vec2(0.5)) * _966 + _967;
        uint _1014 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1018 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1014 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1014);
        highp float _1019 = _1010.x;
        highp float _1020 = _1010.y;
        uint _1027 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1037 = ((mix(vec2(_1019, 1.0 - _1020), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1018 % _1027), float(_1018 / _1027))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1037.y = 1.0 - _1037.y;
        highp vec4 _1042 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1037);
        highp vec4 _1058;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1045 = _1042.x;
            highp float _1046 = _1042.y;
            highp float _1047 = _1042.z;
            highp float _1048 = isnan(_1046) ? _1045 : (isnan(_1045) ? _1046 : min(_1045, _1046));
            highp float _1049 = isnan(_1046) ? _1045 : (isnan(_1045) ? _1046 : max(_1045, _1046));
            highp float _1050 = isnan(_1047) ? _1049 : (isnan(_1049) ? _1047 : min(_1049, _1047));
            highp float _1051 = isnan(_1050) ? _1048 : (isnan(_1048) ? _1050 : max(_1048, _1050));
            _1058 = vec4(1.0, 1.0, 1.0, clamp((_1051 - 0.5) / clamp(fwidth(_1051), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1058 = _1042;
        }
        highp vec4 _1081;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1062 = clamp(_646 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1065 = 0.5 - abs(_1019 - 0.5);
            highp float _1072 = 0.5 - abs(_1020 - 0.5);
            highp vec4 _1080 = _1058;
            _1080.w = _1058.w * (clamp(_1065 / clamp(fwidth(_1065), 9.9999997473787516355514526367188e-05, _1062), 0.0, 1.0) * clamp(_1072 / clamp(fwidth(_1072), 9.9999997473787516355514526367188e-05, _1062), 0.0, 1.0));
            _1081 = _1080;
        }
        else
        {
            _1081 = _1058;
        }
        highp vec4 _1082 = _Globals._Color3rd * _1081;
        highp float _1083 = _1082.w;
        _1082.w = mix(_1083, _1083 * clamp((_432 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1109;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_371 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_371 < 0.0)))
        {
            highp vec4 _1108 = _1082;
            _1108.w = 0.0;
            _1109 = _1108;
        }
        else
        {
            _1109 = _1082;
        }
        highp vec3 _1119 = _896.xyz + _1109.xyz;
        highp vec3 _1120 = _896.xyz * _1109.xyz;
        bvec3 _1122 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1123 = vec3(_1122.x ? _1109.xyz.x : _321.x, _1122.y ? _1109.xyz.y : _321.y, _1122.z ? _1109.xyz.z : _321.z);
        bvec3 _1125 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1133;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1131 = (-_896.xyz) * _1109.xyz + _1119;
            bvec3 _2527 = isnan(_1131);
            bvec3 _2528 = isnan(_896.xyz);
            highp vec3 _2529 = max(_1131, _896.xyz);
            highp vec3 _2530 = vec3(_2527.x ? _896.xyz.x : _2529.x, _2527.y ? _896.xyz.y : _2529.y, _2527.z ? _896.xyz.z : _2529.z);
            _1133 = vec3(_2528.x ? _1131.x : _2530.x, _2528.y ? _1131.y : _2530.y, _2528.z ? _1131.z : _2530.z);
        }
        else
        {
            _1133 = vec3(_1125.x ? _1119.x : _1123.x, _1125.y ? _1119.y : _1123.y, _1125.z ? _1119.z : _1123.z);
        }
        bvec3 _1135 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1137 = mix(_896.xyz, vec3(_1135.x ? _1120.x : _1133.x, _1135.y ? _1120.y : _1133.y, _1135.z ? _1120.z : _1133.z), vec3(_1109.w * _Globals._Main3rdEnableLighting));
        _1139 = _1109;
        _1140 = vec4(_1137.x, _1137.y, _1137.z, _896.w);
    }
    else
    {
        _1139 = _Globals._Color3rd;
        _1140 = _896;
    }
    highp vec4 _1141 = _1140;
    _1141.w = 1.0;
    highp vec4 _1364;
    highp float _1365;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1175 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1178 = clamp(_422 + distance(_423, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1183;
        _1183.x = clamp(dot(_423, mix(_647, _644, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1178, _Globals._ShadowReceive);
        _1183.y = clamp(dot(_423, mix(_647, _644, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1178, _Globals._Shadow2ndReceive);
        _1183.z = clamp(dot(_423, mix(_647, _644, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1178, _Globals._Shadow3rdReceive);
        highp vec2 _1204 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2532 = isnan(_485);
        bvec2 _2533 = isnan(_1204);
        highp vec2 _2534 = max(_485, _1204);
        highp vec2 _2535 = vec2(_2532.x ? _1204.x : _2534.x, _2532.y ? _1204.y : _2534.y);
        bvec2 _2537 = isnan(_487);
        bvec2 _2538 = isnan(_1204);
        highp vec2 _2539 = max(_487, _1204);
        highp vec2 _2540 = vec2(_2537.x ? _1204.x : _2539.x, _2537.y ? _1204.y : _2539.y);
        highp vec4 _1208 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _483, vec2(_2533.x ? _485.x : _2535.x, _2533.y ? _485.y : _2535.y), vec2(_2538.x ? _487.x : _2540.x, _2538.y ? _487.y : _2540.y));
        highp vec4 _1216;
        _1216.x = clamp(_1208.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1216.y = clamp(_1208.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1216.z = clamp(_1208.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1235 = _Globals._ShadowPostAO != 0u;
        bvec3 _1236 = bvec3(_1235);
        highp vec3 _1239 = _1183.xyz * _1216.xyz;
        highp vec3 _1240 = vec3(_1236.x ? _1183.xyz.x : _1239.x, _1236.y ? _1183.xyz.y : _1239.y, _1236.z ? _1183.xyz.z : _1239.z);
        highp float _1241 = _1240.x;
        highp float _1245 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1246 = clamp(_1245, 0.0, 1.0);
        highp float _1248 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1255 = _1240.y;
        highp float _1260 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1272 = clamp(_1245 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1279 = _1240.z;
        highp float _1284 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1293 = vec4((_1241 - _1246) / clamp(fwidth(_1241) * _1175 + (_1248 - _1246), 0.0, 1.0), (_1255 - _1260) / clamp(fwidth(_1255) * _1175 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1260), 0.0, 1.0), (_1279 - _1284) / clamp(fwidth(_1279) * _1175 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1284), 0.0, 1.0), (_1241 - _1272) / clamp(fwidth(_1241) * _1175 + (_1248 - _1272), 0.0, 1.0));
        bvec4 _1294 = bvec4(_1235);
        highp vec4 _1296 = _1293 * _1216.xyzx;
        highp vec4 _1298 = clamp(vec4(_1294.x ? _1296.x : _1293.x, _1294.y ? _1296.y : _1293.y, _1294.z ? _1296.z : _1293.z, _1294.w ? _1296.w : _1293.w), vec4(0.0), vec4(1.0));
        highp float _1303 = (_371 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1305 = _1298.x * _1303;
        highp vec3 _1340 = mix(mix(_1141.xyz * _Globals._ShadowColor.xyz, (_1141.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1298.y * _1303)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1141.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1298.z * _1303)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1346 = _1141.xyz * out_var_TEXCOORD6;
        highp vec3 _1352 = mix(mix(_1340, _1340 * _1141.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1141.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2542 = isnan(_1352);
        bvec3 _2543 = isnan(_1346);
        highp vec3 _2544 = min(_1352, _1346);
        highp vec3 _2545 = vec3(_2542.x ? _1346.x : _2544.x, _2542.y ? _1346.y : _2544.y, _2542.z ? _1346.z : _2544.z);
        highp vec3 _1360 = mix(mix(vec3(_2543.x ? _1352.x : _2545.x, _2543.y ? _1352.y : _2545.y, _2543.z ? _1352.z : _2545.z), _1346, _Globals._ShadowBorderColor.xyz * (_1298.w * _1303)), _1346, vec3(mix(1.0, _1305, _Globals._ShadowStrength)));
        _1364 = vec4(_1360.x, _1360.y, _1360.z, _1141.w);
        _1365 = _1305;
    }
    else
    {
        highp vec3 _1362 = _1141.xyz * out_var_TEXCOORD6;
        _1364 = vec4(_1362.x, _1362.y, _1362.z, _1141.w);
        _1365 = 1.0;
    }
    highp vec3 _1368 = vec3(_Globals._LightMaxLimit);
    bvec3 _2547 = isnan(out_var_TEXCOORD6);
    bvec3 _2548 = isnan(_1368);
    highp vec3 _2549 = min(out_var_TEXCOORD6, _1368);
    highp vec3 _2550 = vec3(_2547.x ? _1368.x : _2549.x, _2547.y ? _1368.y : _2549.y, _2547.z ? _1368.z : _2549.z);
    highp vec3 _1369 = vec3(_2548.x ? out_var_TEXCOORD6.x : _2550.x, _2548.y ? out_var_TEXCOORD6.y : _2550.y, _2548.z ? out_var_TEXCOORD6.z : _2550.z);
    highp float _1370 = clamp(_1365, 0.0, 1.0);
    highp vec3 _1372 = _1141.xyz * _Globals._LightMaxLimit;
    bvec3 _2552 = isnan(_1364.xyz);
    bvec3 _2553 = isnan(_1372);
    highp vec3 _2554 = min(_1364.xyz, _1372);
    highp vec3 _2555 = vec3(_2552.x ? _1372.x : _2554.x, _2552.y ? _1372.y : _2554.y, _2552.z ? _1372.z : _2554.z);
    highp vec3 _1373 = vec3(_2553.x ? _1364.xyz.x : _2555.x, _2553.y ? _1364.xyz.y : _2555.y, _2553.z ? _1364.xyz.z : _2555.z);
    highp vec4 _1407;
    if (_657)
    {
        highp vec3 _1377 = _1373.xyz;
        highp vec3 _1387 = _1377 + _895.xyz;
        highp vec3 _1388 = _1377 * _895.xyz;
        bvec3 _1390 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1391 = vec3(_1390.x ? _895.xyz.x : _321.x, _1390.y ? _895.xyz.y : _321.y, _1390.z ? _895.xyz.z : _321.z);
        bvec3 _1393 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1401;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1399 = (-_1377) * _895.xyz + _1387;
            bvec3 _2557 = isnan(_1399);
            bvec3 _2558 = isnan(_1377);
            highp vec3 _2559 = max(_1399, _1377);
            highp vec3 _2560 = vec3(_2557.x ? _1377.x : _2559.x, _2557.y ? _1377.y : _2559.y, _2557.z ? _1377.z : _2559.z);
            _1401 = vec3(_2558.x ? _1399.x : _2560.x, _2558.y ? _1399.y : _2560.y, _2558.z ? _1399.z : _2560.z);
        }
        else
        {
            _1401 = vec3(_1393.x ? _1387.x : _1391.x, _1393.y ? _1387.y : _1391.y, _1393.z ? _1387.z : _1391.z);
        }
        bvec3 _1403 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1405 = mix(_1377, vec3(_1403.x ? _1388.x : _1401.x, _1403.y ? _1388.y : _1401.y, _1403.z ? _1388.z : _1401.z), vec3((-_895.w) * _Globals._Main2ndEnableLighting + _895.w));
        _1407 = vec4(_1405.x, _1405.y, _1405.z, _1364.w);
    }
    else
    {
        _1407 = vec4(_1373.x, _1373.y, _1373.z, _1364.w);
    }
    highp vec4 _1440;
    if (_901)
    {
        highp vec3 _1420 = _1407.xyz + _1139.xyz;
        highp vec3 _1421 = _1407.xyz * _1139.xyz;
        bvec3 _1423 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1424 = vec3(_1423.x ? _1139.xyz.x : _321.x, _1423.y ? _1139.xyz.y : _321.y, _1423.z ? _1139.xyz.z : _321.z);
        bvec3 _1426 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1434;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1432 = (-_1407.xyz) * _1139.xyz + _1420;
            bvec3 _2562 = isnan(_1432);
            bvec3 _2563 = isnan(_1407.xyz);
            highp vec3 _2564 = max(_1432, _1407.xyz);
            highp vec3 _2565 = vec3(_2562.x ? _1407.xyz.x : _2564.x, _2562.y ? _1407.xyz.y : _2564.y, _2562.z ? _1407.xyz.z : _2564.z);
            _1434 = vec3(_2563.x ? _1432.x : _2565.x, _2563.y ? _1432.y : _2565.y, _2563.z ? _1432.z : _2565.z);
        }
        else
        {
            _1434 = vec3(_1426.x ? _1420.x : _1424.x, _1426.y ? _1420.y : _1424.y, _1426.z ? _1420.z : _1424.z);
        }
        bvec3 _1436 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1438 = mix(_1407.xyz, vec3(_1436.x ? _1421.x : _1434.x, _1436.y ? _1421.y : _1434.y, _1436.z ? _1421.z : _1434.z), vec3((-_1139.w) * _Globals._Main3rdEnableLighting + _1139.w));
        _1440 = vec4(_1438.x, _1438.y, _1438.z, _1407.w);
    }
    else
    {
        _1440 = _1407;
    }
    highp vec4 _1486;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1456 = pow(clamp(1.0 - abs(dot(mix(_647, _644, vec3(_Globals._RimShadeNormalStrength)), _439)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1465 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1484 = mix(_1440.xyz, _1440.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1456 - _1465) / clamp(fwidth(_1456) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1465), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1486 = vec4(_1484.x, _1484.y, _1484.z, _1440.w);
    }
    else
    {
        _1486 = _1440;
    }
    highp vec4 _1559;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1510 = dot(normalize(((-_439) * _Globals._BacklightViewStrength) + _423), mix(_647, _644, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1520;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1520 = _1510 * clamp(_422 + distance(_423, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1520 = _1510;
        }
        highp float _1529 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1557 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1141.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_371 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_439, _423) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1520 - _1529) / clamp(fwidth(_1520) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1529), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1369 + _1486.xyz;
        _1559 = vec4(_1557.x, _1557.y, _1557.z, _1486.w);
    }
    else
    {
        _1559 = _1486;
    }
    highp vec4 _1802;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1569 = dFdx(_644);
        highp vec3 _1570 = abs(_1569);
        highp vec3 _1571 = dFdy(_644);
        highp vec3 _1572 = abs(_1571);
        highp float _1573 = dot(_1570, _1570);
        highp float _1574 = dot(_1572, _1572);
        highp float _1575 = isnan(_1574) ? _1573 : (isnan(_1573) ? _1574 : max(_1573, _1574));
        highp float _1578 = (_1575 / (_1575 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1581 = clamp(1.0 - (isnan(_1578) ? 0.0 : (isnan(0.0) ? _1578 : max(0.0, _1578))), 0.0, 1.0);
        highp float _1582 = isnan(_1581) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1581 : min(_Globals._Smoothness, _1581));
        highp float _1583 = 1.0 - _1582;
        highp float _1584 = _1583 * _1583;
        highp vec3 _1589 = _1559.xyz - (_1559.xyz * _Globals._Metallic);
        highp vec3 _1595 = mix(vec3(_Globals._Reflectance), _1141.xyz, vec3(_Globals._Metallic));
        highp vec4 _1698;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1670;
            do
            {
                highp vec3 _1608 = mix(_647, _644, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1610 = normalize(_439 + _423);
                highp float _1612 = clamp(dot(_1608, _1610), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1621 = pow(_1612, 1.0 / _1584);
                    highp float _1628 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1670 = vec3(clamp((_1621 - _1628) / clamp(fwidth(_1621) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1628), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1640 = clamp(dot(_1608, _439), 0.0, 1.0);
                highp float _1642 = clamp(dot(_1608, _423), 0.0, 1.0);
                highp float _1645 = isnan(0.00200000009499490261077880859375) ? _1584 : (isnan(_1584) ? 0.00200000009499490261077880859375 : max(_1584, 0.00200000009499490261077880859375));
                highp float _1646 = 1.0 - _1645;
                highp float _1650 = _1645 * _1645;
                highp float _1653 = (_1612 * _1650 + (-_1612)) * _1612 + 1.0;
                highp float _1661 = 1.0 - clamp(dot(_423, _1610), 0.0, 1.0);
                _1670 = (_1595 + ((((((vec3(1.0) - _1595) * _1661) * _1661) * _1661) * _1661) * _1661)) * (((0.5 / ((_1642 * (_1640 * _1646 + _1645) + (_1640 * (_1642 * _1646 + _1645))) + 9.9999997473787516355514526367188e-06)) * (_1650 / (_1653 * _1653 + 1.0000000116860974230803549289703e-07))) * _1642);
                break;
            } while(false);
            highp vec3 _1671 = _1589.xyz;
            highp vec3 _1673 = _Globals._ReflectionColor.xyz * _1369;
            highp vec3 _1678 = _Globals._ReflectionColor.xyz * _1369 + _1671;
            highp vec3 _1679 = _1671 * _1673;
            bvec3 _1681 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1682 = vec3(_1681.x ? _1673.x : _321.x, _1681.y ? _1673.y : _321.y, _1681.z ? _1673.z : _321.z);
            bvec3 _1684 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1692;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1690 = (-_1671) * _1673 + _1678;
                bvec3 _2587 = isnan(_1690);
                bvec3 _2588 = isnan(_1671);
                highp vec3 _2589 = max(_1690, _1671);
                highp vec3 _2590 = vec3(_2587.x ? _1671.x : _2589.x, _2587.y ? _1671.y : _2589.y, _2587.z ? _1671.z : _2589.z);
                _1692 = vec3(_2588.x ? _1690.x : _2590.x, _2588.y ? _1690.y : _2590.y, _2588.z ? _1690.z : _2590.z);
            }
            else
            {
                _1692 = vec3(_1684.x ? _1678.x : _1682.x, _1684.y ? _1678.y : _1682.y, _1684.z ? _1678.z : _1682.z);
            }
            bvec3 _1694 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1696 = mix(_1671, vec3(_1694.x ? _1679.x : _1692.x, _1694.y ? _1679.y : _1692.y, _1694.z ? _1679.z : _1692.z), _1670 * _Globals._ReflectionColor.w);
            _1698 = vec4(_1696.x, _1696.y, _1696.z, _1559.w);
        }
        else
        {
            _1698 = vec4(_1589.x, _1589.y, _1589.z, _1559.w);
        }
        highp vec4 _1801;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1720 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1727 = reflect(-_439, mix(_647, _644, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1730 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1727, _1583 * ((-4.19999980926513671875) * _1583 + 10.19999980926513671875));
            highp vec3 _1750 = ((_1730.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1730.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1369, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1756 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1727, _1583 * 8.0).xyz * 1.0;
            highp float _1767 = 1.0 - _646;
            highp vec3 _1781 = _1698.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1782 = _1698.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1784 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1785 = vec3(_1784.x ? _Globals._ReflectionColor.xyz.x : _321.x, _1784.y ? _Globals._ReflectionColor.xyz.y : _321.y, _1784.z ? _Globals._ReflectionColor.xyz.z : _321.z);
            bvec3 _1787 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1795;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1793 = (-_1698.xyz) * _Globals._ReflectionColor.xyz + _1781;
                bvec3 _2592 = isnan(_1793);
                bvec3 _2593 = isnan(_1698.xyz);
                highp vec3 _2594 = max(_1793, _1698.xyz);
                highp vec3 _2595 = vec3(_2592.x ? _1698.xyz.x : _2594.x, _2592.y ? _1698.xyz.y : _2594.y, _2592.z ? _1698.xyz.z : _2594.z);
                _1795 = vec3(_2593.x ? _1793.x : _2595.x, _2593.y ? _1793.y : _2595.y, _2593.z ? _1793.z : _2595.z);
            }
            else
            {
                _1795 = vec3(_1787.x ? _1781.x : _1785.x, _1787.y ? _1781.y : _1785.y, _1787.z ? _1781.z : _1785.z);
            }
            bvec3 _1797 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1799 = mix(_1698.xyz, vec3(_1797.x ? _1782.x : _1795.x, _1797.y ? _1782.y : _1795.y, _1797.z ? _1782.z : _1795.z), ((vec3(_1720.x ? _1750.x : _1756.x, _1720.y ? _1750.y : _1756.y, _1720.z ? _1750.z : _1756.z) * (1.0 / (_1584 * _1584 + 1.0))) * mix(_1595, vec3(clamp(_1582 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1767 * _1767) * _1767) * _1767) * _1767))) * _Globals._ReflectionColor.w);
            _1801 = vec4(_1799.x, _1799.y, _1799.z, _1698.w);
        }
        else
        {
            _1801 = _1698;
        }
        _1802 = _1801;
    }
    else
    {
        _1802 = _1559;
    }
    highp vec4 _1953;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1847;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1824 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _483 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1824.w = _1824.w * _1824.x;
            highp vec2 _1835 = ((_1824.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1836 = vec3(_1835.x, _1835.y, _327.z);
            highp vec2 _1837 = _1835.xy;
            _1836.z = sqrt(1.0 - clamp(dot(_1837, _1837), 0.0, 1.0));
            highp vec3 _1844 = normalize(_448 * _1836);
            highp vec3 _1845 = -_1844;
            _1847 = vec3(_642.x ? _1845.x : _1844.x, _642.y ? _1845.y : _1844.y, _642.z ? _1845.z : _1844.z);
        }
        else
        {
            _1847 = mix(_647, _644, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1864 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1865 = vec3(_1864.x ? _439.x : _347.x, _1864.y ? _439.y : _347.y, _1864.z ? _439.z : _347.z);
        bvec3 _1866 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1867 = vec3(_1866.x ? vec3(0.0, 1.0, 0.0).x : _354.x, _1866.y ? vec3(0.0, 1.0, 0.0).y : _354.y, _1866.z ? vec3(0.0, 1.0, 0.0).z : _354.z);
        highp vec3 _1871 = normalize(_1867 - (_1865 * dot(_1865, _1867)));
        highp vec4 _1893 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1847) * mat3(cross(_1865, _1871), _1871, _1865)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1917 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _483 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1919 = mix(_1893.xyz, _1893.xyz * _1369, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1926 = mix(_1919, _1919 * _1141.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1933 = _1802.xyz + _1926;
        highp vec3 _1934 = _1802.xyz * _1926;
        bvec3 _1936 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1937 = vec3(_1936.x ? _1926.x : _321.x, _1936.y ? _1926.y : _321.y, _1936.z ? _1926.z : _321.z);
        bvec3 _1939 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1947;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1945 = (-_1802.xyz) * _1926 + _1933;
            bvec3 _2597 = isnan(_1945);
            bvec3 _2598 = isnan(_1802.xyz);
            highp vec3 _2599 = max(_1945, _1802.xyz);
            highp vec3 _2600 = vec3(_2597.x ? _1802.xyz.x : _2599.x, _2597.y ? _1802.xyz.y : _2599.y, _2597.z ? _1802.xyz.z : _2599.z);
            _1947 = vec3(_2598.x ? _1945.x : _2600.x, _2598.y ? _1945.y : _2600.y, _2598.z ? _1945.z : _2600.z);
        }
        else
        {
            _1947 = vec3(_1939.x ? _1933.x : _1937.x, _1939.y ? _1933.y : _1937.y, _1939.z ? _1933.z : _1937.z);
        }
        bvec3 _1949 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1951 = mix(_1802.xyz, vec3(_1949.x ? _1934.x : _1947.x, _1949.y ? _1934.y : _1947.y, _1949.z ? _1934.z : _1947.z), _1917.xyz * (_Globals._MatCapBlend * ((_371 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1893.w, _1893.w * _1370, _Globals._MatCapShadowMask))));
        _1953 = vec4(_1951.x, _1951.y, _1951.z, _1802.w);
    }
    else
    {
        _1953 = _1802;
    }
    highp vec4 _2103;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1998;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1975 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _483 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1975.w = _1975.w * _1975.x;
            highp vec2 _1986 = ((_1975.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1987 = vec3(_1986.x, _1986.y, _327.z);
            highp vec2 _1988 = _1986.xy;
            _1987.z = sqrt(1.0 - clamp(dot(_1988, _1988), 0.0, 1.0));
            highp vec3 _1995 = normalize(_448 * _1987);
            highp vec3 _1996 = -_1995;
            _1998 = vec3(_642.x ? _1996.x : _1995.x, _642.y ? _1996.y : _1995.y, _642.z ? _1996.z : _1995.z);
        }
        else
        {
            _1998 = mix(_647, _644, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2014 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2015 = vec3(_2014.x ? _439.x : _347.x, _2014.y ? _439.y : _347.y, _2014.z ? _439.z : _347.z);
        bvec3 _2016 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2017 = vec3(_2016.x ? vec3(0.0, 1.0, 0.0).x : _354.x, _2016.y ? vec3(0.0, 1.0, 0.0).y : _354.y, _2016.z ? vec3(0.0, 1.0, 0.0).z : _354.z);
        highp vec3 _2021 = normalize(_2017 - (_2015 * dot(_2015, _2017)));
        highp vec4 _2043 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1998 * mat3(cross(_2015, _2021), _2021, _2015)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2044 = _2043.xyz;
        highp float _2050 = _2043.w;
        highp vec4 _2067 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _483 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2069 = mix(_2044, _2044 * _1369, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2076 = mix(_2069, _2069 * _1141.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2083 = _1953.xyz + _2076;
        highp vec3 _2084 = _1953.xyz * _2076;
        bvec3 _2086 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2087 = vec3(_2086.x ? _2076.x : _321.x, _2086.y ? _2076.y : _321.y, _2086.z ? _2076.z : _321.z);
        bvec3 _2089 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2097;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2095 = (-_1953.xyz) * _2076 + _2083;
            bvec3 _2602 = isnan(_2095);
            bvec3 _2603 = isnan(_1953.xyz);
            highp vec3 _2604 = max(_2095, _1953.xyz);
            highp vec3 _2605 = vec3(_2602.x ? _1953.xyz.x : _2604.x, _2602.y ? _1953.xyz.y : _2604.y, _2602.z ? _1953.xyz.z : _2604.z);
            _2097 = vec3(_2603.x ? _2095.x : _2605.x, _2603.y ? _2095.y : _2605.y, _2603.z ? _2095.z : _2605.z);
        }
        else
        {
            _2097 = vec3(_2089.x ? _2083.x : _2087.x, _2089.y ? _2083.y : _2087.y, _2089.z ? _2083.z : _2087.z);
        }
        bvec3 _2099 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2101 = mix(_1953.xyz, vec3(_2099.x ? _2084.x : _2097.x, _2099.y ? _2084.y : _2097.y, _2099.z ? _2084.z : _2097.z), _2067.xyz * (_Globals._MatCap2ndBlend * ((_371 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2050, _2050 * _1370, _Globals._MatCap2ndShadowMask))));
        _2103 = vec4(_2101.x, _2101.y, _2101.z, _1953.w);
    }
    else
    {
        _2103 = _1953;
    }
    highp vec4 _2249;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2122 = mix(_647, _644, vec3(_Globals._RimNormalStrength));
        highp float _2126 = dot(_423, _2122) * 0.5 + 0.5;
        highp float _2149 = (_371 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2122, _439)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2153 = mix(_2149, _2149 * clamp((_2126 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2154 = _2149 * clamp(((1.0 - _2126) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2164 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2173 = clamp((_2153 - _2164) / clamp(fwidth(_2153) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2164), 0.0, 1.0), 0.0, 1.0);
        highp float _2180 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2190 = clamp((_2154 * _Globals._RimDirStrength + (-_2180)) / clamp(fwidth(_2154 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2180), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2202 = vec3(1.0 - _Globals._RimEnableLighting) + (_1369 * _Globals._RimEnableLighting);
        highp vec3 _2204 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1141.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2205 = _2204 * _2202;
        highp vec3 _2211 = _2204 * _2202 + _2103.xyz;
        highp vec3 _2212 = _2103.xyz * _2205;
        bvec3 _2214 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2215 = vec3(_2214.x ? _2205.x : _321.x, _2214.y ? _2205.y : _321.y, _2214.z ? _2205.z : _321.z);
        bvec3 _2217 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2219 = _Globals._RimBlendMode == 2u;
        highp vec3 _2225;
        if (_2219)
        {
            highp vec3 _2223 = (-_2103.xyz) * _2205 + _2211;
            bvec3 _2607 = isnan(_2223);
            bvec3 _2608 = isnan(_2103.xyz);
            highp vec3 _2609 = max(_2223, _2103.xyz);
            highp vec3 _2610 = vec3(_2607.x ? _2103.xyz.x : _2609.x, _2607.y ? _2103.xyz.y : _2609.y, _2607.z ? _2103.xyz.z : _2609.z);
            _2225 = vec3(_2608.x ? _2223.x : _2610.x, _2608.y ? _2223.y : _2610.y, _2608.z ? _2223.z : _2610.z);
        }
        else
        {
            _2225 = vec3(_2217.x ? _2211.x : _2215.x, _2217.y ? _2211.y : _2215.y, _2217.z ? _2211.z : _2215.z);
        }
        bvec3 _2227 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2230 = mix(_2103.xyz, vec3(_2227.x ? _2212.x : _2225.x, _2227.y ? _2212.y : _2225.y, _2227.z ? _2212.z : _2225.z), vec3(mix(_2173, _2173 * _1370, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2232 = _Globals._RimIndirColor.xyz * _2202;
        highp vec3 _2236 = _Globals._RimIndirColor.xyz * _2202 + _2230;
        highp vec3 _2237 = _2230 * _2232;
        highp vec3 _2238 = vec3(_2214.x ? _2232.x : _321.x, _2214.y ? _2232.y : _321.y, _2214.z ? _2232.z : _321.z);
        highp vec3 _2245;
        if (_2219)
        {
            highp vec3 _2243 = (-_2230) * _2232 + _2236;
            bvec3 _2612 = isnan(_2243);
            bvec3 _2613 = isnan(_2230);
            highp vec3 _2614 = max(_2243, _2230);
            highp vec3 _2615 = vec3(_2612.x ? _2230.x : _2614.x, _2612.y ? _2230.y : _2614.y, _2612.z ? _2230.z : _2614.z);
            _2245 = vec3(_2613.x ? _2243.x : _2615.x, _2613.y ? _2243.y : _2615.y, _2613.z ? _2243.z : _2615.z);
        }
        else
        {
            _2245 = vec3(_2217.x ? _2236.x : _2238.x, _2217.y ? _2236.y : _2238.y, _2217.z ? _2236.z : _2238.z);
        }
        highp vec3 _2247 = mix(_2230, vec3(_2227.x ? _2237.x : _2245.x, _2227.y ? _2237.y : _2245.y, _2227.z ? _2237.z : _2245.z), vec3(mix(_2190, _2190 * _1370, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2249 = vec4(_2247.x, _2247.y, _2247.z, _2103.w);
    }
    else
    {
        _2249 = _2103;
    }
    highp vec4 _2314;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2263 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _427, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2277 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2283;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2283 = roundEven(_2277);
        }
        else
        {
            _2283 = _2277;
        }
        highp vec3 _2290 = mix(_2263, _2263 * _1141.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2294 = _2249.xyz + _2290;
        highp vec3 _2295 = _2249.xyz * _2290;
        bvec3 _2297 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2298 = vec3(_2297.x ? _2290.x : _321.x, _2297.y ? _2290.y : _321.y, _2297.z ? _2290.z : _321.z);
        bvec3 _2300 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2308;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2306 = (-_2249.xyz) * _2290 + _2294;
            bvec3 _2617 = isnan(_2306);
            bvec3 _2618 = isnan(_2249.xyz);
            highp vec3 _2619 = max(_2306, _2249.xyz);
            highp vec3 _2620 = vec3(_2617.x ? _2249.xyz.x : _2619.x, _2617.y ? _2249.xyz.y : _2619.y, _2617.z ? _2249.xyz.z : _2619.z);
            _2308 = vec3(_2618.x ? _2306.x : _2620.x, _2618.y ? _2306.y : _2620.y, _2618.z ? _2306.z : _2620.z);
        }
        else
        {
            _2308 = vec3(_2300.x ? _2294.x : _2298.x, _2300.y ? _2294.y : _2298.y, _2300.z ? _2294.z : _2298.z);
        }
        bvec3 _2310 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2312 = mix(_2249.xyz, vec3(_2310.x ? _2295.x : _2308.x, _2310.y ? _2295.y : _2308.y, _2310.z ? _2295.z : _2308.z), vec3((_Globals._EmissionBlend * mix(1.0, _2283, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2314 = vec4(_2312.x, _2312.y, _2312.z, _2249.w);
    }
    else
    {
        _2314 = _2249;
    }
    highp vec4 _2379;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2328 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _427, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2342 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2348;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2348 = roundEven(_2342);
        }
        else
        {
            _2348 = _2342;
        }
        highp vec3 _2355 = mix(_2328, _2328 * _1141.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2359 = _2314.xyz + _2355;
        highp vec3 _2360 = _2314.xyz * _2355;
        bvec3 _2362 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2363 = vec3(_2362.x ? _2355.x : _321.x, _2362.y ? _2355.y : _321.y, _2362.z ? _2355.z : _321.z);
        bvec3 _2365 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2373;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2371 = (-_2314.xyz) * _2355 + _2359;
            bvec3 _2622 = isnan(_2371);
            bvec3 _2623 = isnan(_2314.xyz);
            highp vec3 _2624 = max(_2371, _2314.xyz);
            highp vec3 _2625 = vec3(_2622.x ? _2314.xyz.x : _2624.x, _2622.y ? _2314.xyz.y : _2624.y, _2622.z ? _2314.xyz.z : _2624.z);
            _2373 = vec3(_2623.x ? _2371.x : _2625.x, _2623.y ? _2371.y : _2625.y, _2623.z ? _2371.z : _2625.z);
        }
        else
        {
            _2373 = vec3(_2365.x ? _2359.x : _2363.x, _2365.y ? _2359.y : _2363.y, _2365.z ? _2359.z : _2363.z);
        }
        bvec3 _2375 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2377 = mix(_2314.xyz, vec3(_2375.x ? _2360.x : _2373.x, _2375.y ? _2360.y : _2373.y, _2375.z ? _2360.z : _2373.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2348, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2379 = vec4(_2377.x, _2377.y, _2377.z, _2314.w);
    }
    else
    {
        _2379 = _2314;
    }
    bvec3 _2381 = bvec3(_371 < 0.0);
    highp vec3 _2390 = mix(_2379.xyz, _Globals._BackfaceColor.xyz * _1369, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2425 = vec3(_2381.x ? _2390.x : _2379.xyz.x, _2381.y ? _2390.y : _2379.xyz.y, _2381.z ? _2390.z : _2379.xyz.z).xyz;
    highp vec3 _2433 = mix(_2425, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2425, vec3(pow(clamp(1.0 - abs(dot(_647, _439)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_371 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _432) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2433.x, _2433.y, _2433.z, _2379.w), vec4(out_var_TEXCOORD9));
}
