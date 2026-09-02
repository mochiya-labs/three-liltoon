#version 300 es
precision mediump float;
precision highp int;

vec3 _334;
vec3 _340;
float _341;

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
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
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
    highp vec3 _361 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _368 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _384 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _393 = float(gl_FrontFacing ? 1 : (-1));
    highp float _444;
    do
    {
        highp vec3 _400 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _401 = _400.xy;
        highp float _407 = _400.z;
        if ((any(lessThan(_401, vec2(0.0))) || any(greaterThan(_401, vec2(1.0)))) || (_407 > 1.0))
        {
            _444 = 1.0;
            break;
        }
        highp float _417 = _407 + _Globals.uShadowBias;
        _444 = (((step(_417, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _401), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_417, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _401), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_417, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _401), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_417, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _401), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _445 = normalize(out_var_TEXCOORD7);
    highp vec3 _449 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _453 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _454 = length(_453);
    highp vec3 _461 = normalize(_453);
    highp mat3 _470 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    highp vec3 _471 = _461 * _470;
    highp vec2 _476 = _471.xy / vec2(_471.z + 0.5);
    bvec2 _481 = bvec2(_393 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _482 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _495 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _496 = sin(_495);
    highp float _497 = cos(_495);
    highp vec2 _498 = (vec2(_481.x ? _482.x : out_var_TEXCOORD0.xy.x, _481.y ? _482.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _499 = _498.x;
    highp float _500 = _498.y;
    highp vec2 _511 = (vec2(_499 * _497 + (-(_500 * _496)), _499 * _496 + (_500 * _497)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _515 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _511);
    highp vec3 _522 = pow(abs(_515.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _523 = _522.z;
    highp float _524 = _522.y;
    bvec4 _526 = bvec4(_523 > _524);
    highp vec4 _527 = vec4(_523, _524, -1.0, 0.666666686534881591796875);
    highp vec4 _528 = vec4(_524, _523, 0.0, -0.3333333432674407958984375);
    highp vec4 _529 = vec4(_526.x ? _527.x : _528.x, _526.y ? _527.y : _528.y, _526.z ? _527.z : _528.z, _526.w ? _527.w : _528.w);
    highp float _530 = _529.x;
    highp float _531 = _522.x;
    bvec4 _533 = bvec4(_530 > _531);
    highp vec4 _536 = vec4(_530, _529.yw, _531);
    highp vec4 _538 = vec4(_531, _529.yz, _530);
    highp vec4 _539 = vec4(_533.x ? _536.x : _538.x, _533.y ? _536.y : _538.y, _533.z ? _536.z : _538.z, _533.w ? _536.w : _538.w);
    highp float _544 = _539.x - (isnan(_539.y) ? _539.w : (isnan(_539.w) ? _539.y : min(_539.w, _539.y)));
    highp float _557 = clamp((_544 / (_539.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _560 = clamp(_539.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _574 = vec3((-_560) * _557 + _560) + (clamp(abs((fract(vec3(abs(_539.z + ((_539.w - _539.y) / (6.0 * _544 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_560 * _557));
    highp vec4 _578 = vec4(_574.x, _574.y, _574.z, _515.w) * _Globals._Color;
    highp vec3 _610;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _591 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _511 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _591.w = _591.w * _591.x;
        highp vec2 _602 = ((_591.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _603 = vec3(_602.x, _602.y, _340.z);
        highp vec2 _604 = _602.xy;
        _603.z = sqrt(1.0 - clamp(dot(_604, _604), 0.0, 1.0));
        _610 = _603;
    }
    else
    {
        _610 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _659;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _619 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _620 = vec2(_619.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _619.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _622 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _623 = vec2(_622.x ? out_var_TEXCOORD1.xy.x : _620.x, _622.y ? out_var_TEXCOORD1.xy.y : _620.y);
        bvec2 _625 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _635 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_625.x ? out_var_TEXCOORD1.zw.x : _623.x, _625.y ? out_var_TEXCOORD1.zw.y : _623.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _635.w = _635.w * _635.x;
        highp vec2 _647 = (((_635.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _659 = vec3(_610.xy + _647, _610.z * sqrt(1.0 - clamp(dot(_647, _647), 0.0, 1.0)));
    }
    else
    {
        _659 = _610;
    }
    highp vec3 _661 = normalize(_470 * _659);
    bvec3 _666 = bvec3(_393 < (_Globals._FlipNormal - 1.0));
    highp vec3 _667 = -_661;
    highp vec3 _668 = vec3(_666.x ? _667.x : _661.x, _666.y ? _667.y : _661.y, _666.z ? _667.z : _661.z);
    highp float _669 = dot(_668, _461);
    highp float _670 = clamp(_669, 0.0, 1.0);
    highp vec2 _672 = vec2(abs(_669));
    highp vec3 _673 = normalize(out_var_TEXCOORD4);
    highp vec2 _677 = ((_668 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _368, _361)).xy * 0.5) + vec2(0.5);
    bool _678 = out_var_TEXCOORD5.w > 0.0;
    bool _683 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _961;
    highp vec4 _962;
    if (_683)
    {
        bvec2 _689 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _690 = vec2(_689.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _689.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _692 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _693 = vec2(_692.x ? out_var_TEXCOORD1.xy.x : _690.x, _692.y ? out_var_TEXCOORD1.xy.y : _690.y);
        bvec2 _695 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _696 = vec2(_695.x ? out_var_TEXCOORD1.zw.x : _693.x, _695.y ? out_var_TEXCOORD1.zw.y : _693.y);
        bvec2 _698 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _699 = vec2(_698.x ? _677.x : _696.x, _698.y ? _677.y : _696.y);
        highp vec4 _738 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _739 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _747;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _746 = _699;
            _746.x = abs(_699.x - 0.5) + 0.5;
            _747 = _746;
        }
        else
        {
            _747 = _699;
        }
        highp vec2 _748 = _738.xy;
        highp vec2 _749 = _738.zw;
        highp vec2 _750 = _747 * _748 + _749;
        highp vec2 _759;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_699.x < 0.5))
        {
            highp vec2 _758 = _750;
            _758.x = 1.0 - _750.x;
            _759 = _758;
        }
        else
        {
            _759 = _750;
        }
        highp vec2 _766;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _678)
        {
            highp vec2 _765 = _759;
            _765.x = 1.0 - _759.x;
            _766 = _765;
        }
        else
        {
            _766 = _759;
        }
        highp vec2 _771;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _678)
        {
            highp vec2 _770 = _766;
            _770.x = -1.0;
            _771 = _770;
        }
        else
        {
            _771 = _766;
        }
        highp vec2 _777;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_678))
        {
            highp vec2 _776 = _771;
            _776.x = -1.0;
            _777 = _776;
        }
        else
        {
            _777 = _771;
        }
        highp float _780 = sin(_739);
        highp float _781 = cos(_739);
        highp vec2 _782 = ((_777 - _749) / _748) - vec2(0.5);
        highp float _783 = _782.x;
        highp float _784 = _782.y;
        highp vec2 _792 = (vec2(_783 * _781 + (-(_784 * _780)), _783 * _780 + (_784 * _781)) + vec2(0.5)) * _748 + _749;
        uint _796 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _800 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _796 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _796);
        highp float _801 = _792.x;
        highp float _802 = _792.y;
        uint _809 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _819 = ((mix(vec2(_801, 1.0 - _802), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_800 % _809), float(_800 / _809))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _819.y = 1.0 - _819.y;
        highp vec4 _824 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _819);
        highp vec4 _840;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _827 = _824.x;
            highp float _828 = _824.y;
            highp float _829 = _824.z;
            highp float _830 = isnan(_828) ? _827 : (isnan(_827) ? _828 : min(_827, _828));
            highp float _831 = isnan(_828) ? _827 : (isnan(_827) ? _828 : max(_827, _828));
            highp float _832 = isnan(_829) ? _831 : (isnan(_831) ? _829 : min(_831, _829));
            highp float _833 = isnan(_832) ? _830 : (isnan(_830) ? _832 : max(_830, _832));
            _840 = vec4(1.0, 1.0, 1.0, clamp((_833 - 0.5) / clamp(fwidth(_833), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _840 = _824;
        }
        highp vec4 _863;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _844 = clamp(_670 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _847 = 0.5 - abs(_801 - 0.5);
            highp float _854 = 0.5 - abs(_802 - 0.5);
            highp vec4 _862 = _840;
            _862.w = _840.w * (clamp(_847 / clamp(fwidth(_847), 9.9999997473787516355514526367188e-05, _844), 0.0, 1.0) * clamp(_854 / clamp(fwidth(_854), 9.9999997473787516355514526367188e-05, _844), 0.0, 1.0));
            _863 = _862;
        }
        else
        {
            _863 = _840;
        }
        highp vec4 _864 = _Globals._Color2nd * _863;
        highp float _865 = _864.w;
        _864.w = mix(_865, _865 * clamp((_454 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _891;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_393 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_393 < 0.0)))
        {
            highp vec4 _890 = _864;
            _890.w = 0.0;
            _891 = _890;
        }
        else
        {
            _891 = _864;
        }
        highp vec4 _930;
        highp vec4 _931;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _902;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _901 = _578;
                _901.w = _891.w;
                _902 = _901;
            }
            else
            {
                _902 = _578;
            }
            highp vec4 _910;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _909 = _902;
                _909.w = _902.w * _891.w;
                _910 = _909;
            }
            else
            {
                _910 = _902;
            }
            highp vec4 _919;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _918 = _910;
                _918.w = clamp(_910.w + _891.w, 0.0, 1.0);
                _919 = _918;
            }
            else
            {
                _919 = _910;
            }
            highp vec4 _928;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _927 = _919;
                _927.w = clamp(_919.w - _891.w, 0.0, 1.0);
                _928 = _927;
            }
            else
            {
                _928 = _919;
            }
            highp vec4 _929 = _891;
            _929.w = 1.0;
            _930 = _929;
            _931 = _928;
        }
        else
        {
            _930 = _891;
            _931 = _578;
        }
        highp vec3 _941 = _931.xyz + _930.xyz;
        highp vec3 _942 = _931.xyz * _930.xyz;
        bvec3 _944 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _945 = vec3(_944.x ? _930.xyz.x : _334.x, _944.y ? _930.xyz.y : _334.y, _944.z ? _930.xyz.z : _334.z);
        bvec3 _947 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _955;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _953 = (-_931.xyz) * _930.xyz + _941;
            bvec3 _2799 = isnan(_953);
            bvec3 _2800 = isnan(_931.xyz);
            highp vec3 _2801 = max(_953, _931.xyz);
            highp vec3 _2802 = vec3(_2799.x ? _931.xyz.x : _2801.x, _2799.y ? _931.xyz.y : _2801.y, _2799.z ? _931.xyz.z : _2801.z);
            _955 = vec3(_2800.x ? _953.x : _2802.x, _2800.y ? _953.y : _2802.y, _2800.z ? _953.z : _2802.z);
        }
        else
        {
            _955 = vec3(_947.x ? _941.x : _945.x, _947.y ? _941.y : _945.y, _947.z ? _941.z : _945.z);
        }
        bvec3 _957 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _959 = mix(_931.xyz, vec3(_957.x ? _942.x : _955.x, _957.y ? _942.y : _955.y, _957.z ? _942.z : _955.z), vec3(_930.w * _Globals._Main2ndEnableLighting));
        _961 = _930;
        _962 = vec4(_959.x, _959.y, _959.z, _931.w);
    }
    else
    {
        _961 = _Globals._Color2nd;
        _962 = _578;
    }
    bool _967 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1245;
    highp vec4 _1246;
    if (_967)
    {
        bvec2 _973 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _974 = vec2(_973.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _973.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _976 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _977 = vec2(_976.x ? out_var_TEXCOORD1.xy.x : _974.x, _976.y ? out_var_TEXCOORD1.xy.y : _974.y);
        bvec2 _979 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _980 = vec2(_979.x ? out_var_TEXCOORD1.zw.x : _977.x, _979.y ? out_var_TEXCOORD1.zw.y : _977.y);
        bvec2 _982 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _983 = vec2(_982.x ? _677.x : _980.x, _982.y ? _677.y : _980.y);
        highp vec4 _1022 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1023 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1031;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1030 = _983;
            _1030.x = abs(_983.x - 0.5) + 0.5;
            _1031 = _1030;
        }
        else
        {
            _1031 = _983;
        }
        highp vec2 _1032 = _1022.xy;
        highp vec2 _1033 = _1022.zw;
        highp vec2 _1034 = _1031 * _1032 + _1033;
        highp vec2 _1043;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_983.x < 0.5))
        {
            highp vec2 _1042 = _1034;
            _1042.x = 1.0 - _1034.x;
            _1043 = _1042;
        }
        else
        {
            _1043 = _1034;
        }
        highp vec2 _1050;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _678)
        {
            highp vec2 _1049 = _1043;
            _1049.x = 1.0 - _1043.x;
            _1050 = _1049;
        }
        else
        {
            _1050 = _1043;
        }
        highp vec2 _1055;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _678)
        {
            highp vec2 _1054 = _1050;
            _1054.x = -1.0;
            _1055 = _1054;
        }
        else
        {
            _1055 = _1050;
        }
        highp vec2 _1061;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_678))
        {
            highp vec2 _1060 = _1055;
            _1060.x = -1.0;
            _1061 = _1060;
        }
        else
        {
            _1061 = _1055;
        }
        highp float _1064 = sin(_1023);
        highp float _1065 = cos(_1023);
        highp vec2 _1066 = ((_1061 - _1033) / _1032) - vec2(0.5);
        highp float _1067 = _1066.x;
        highp float _1068 = _1066.y;
        highp vec2 _1076 = (vec2(_1067 * _1065 + (-(_1068 * _1064)), _1067 * _1064 + (_1068 * _1065)) + vec2(0.5)) * _1032 + _1033;
        uint _1080 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1084 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1080 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1080);
        highp float _1085 = _1076.x;
        highp float _1086 = _1076.y;
        uint _1093 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1103 = ((mix(vec2(_1085, 1.0 - _1086), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1084 % _1093), float(_1084 / _1093))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1103.y = 1.0 - _1103.y;
        highp vec4 _1108 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1103);
        highp vec4 _1124;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1111 = _1108.x;
            highp float _1112 = _1108.y;
            highp float _1113 = _1108.z;
            highp float _1114 = isnan(_1112) ? _1111 : (isnan(_1111) ? _1112 : min(_1111, _1112));
            highp float _1115 = isnan(_1112) ? _1111 : (isnan(_1111) ? _1112 : max(_1111, _1112));
            highp float _1116 = isnan(_1113) ? _1115 : (isnan(_1115) ? _1113 : min(_1115, _1113));
            highp float _1117 = isnan(_1116) ? _1114 : (isnan(_1114) ? _1116 : max(_1114, _1116));
            _1124 = vec4(1.0, 1.0, 1.0, clamp((_1117 - 0.5) / clamp(fwidth(_1117), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1124 = _1108;
        }
        highp vec4 _1147;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1128 = clamp(_670 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1131 = 0.5 - abs(_1085 - 0.5);
            highp float _1138 = 0.5 - abs(_1086 - 0.5);
            highp vec4 _1146 = _1124;
            _1146.w = _1124.w * (clamp(_1131 / clamp(fwidth(_1131), 9.9999997473787516355514526367188e-05, _1128), 0.0, 1.0) * clamp(_1138 / clamp(fwidth(_1138), 9.9999997473787516355514526367188e-05, _1128), 0.0, 1.0));
            _1147 = _1146;
        }
        else
        {
            _1147 = _1124;
        }
        highp vec4 _1148 = _Globals._Color3rd * _1147;
        highp float _1149 = _1148.w;
        _1148.w = mix(_1149, _1149 * clamp((_454 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1175;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_393 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_393 < 0.0)))
        {
            highp vec4 _1174 = _1148;
            _1174.w = 0.0;
            _1175 = _1174;
        }
        else
        {
            _1175 = _1148;
        }
        highp vec4 _1214;
        highp vec4 _1215;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1186;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1185 = _962;
                _1185.w = _1175.w;
                _1186 = _1185;
            }
            else
            {
                _1186 = _962;
            }
            highp vec4 _1194;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1193 = _1186;
                _1193.w = _1186.w * _1175.w;
                _1194 = _1193;
            }
            else
            {
                _1194 = _1186;
            }
            highp vec4 _1203;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1202 = _1194;
                _1202.w = clamp(_1194.w + _1175.w, 0.0, 1.0);
                _1203 = _1202;
            }
            else
            {
                _1203 = _1194;
            }
            highp vec4 _1212;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1211 = _1203;
                _1211.w = clamp(_1203.w - _1175.w, 0.0, 1.0);
                _1212 = _1211;
            }
            else
            {
                _1212 = _1203;
            }
            highp vec4 _1213 = _1175;
            _1213.w = 1.0;
            _1214 = _1213;
            _1215 = _1212;
        }
        else
        {
            _1214 = _1175;
            _1215 = _962;
        }
        highp vec3 _1225 = _1215.xyz + _1214.xyz;
        highp vec3 _1226 = _1215.xyz * _1214.xyz;
        bvec3 _1228 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1229 = vec3(_1228.x ? _1214.xyz.x : _334.x, _1228.y ? _1214.xyz.y : _334.y, _1228.z ? _1214.xyz.z : _334.z);
        bvec3 _1231 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1239;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1237 = (-_1215.xyz) * _1214.xyz + _1225;
            bvec3 _2824 = isnan(_1237);
            bvec3 _2825 = isnan(_1215.xyz);
            highp vec3 _2826 = max(_1237, _1215.xyz);
            highp vec3 _2827 = vec3(_2824.x ? _1215.xyz.x : _2826.x, _2824.y ? _1215.xyz.y : _2826.y, _2824.z ? _1215.xyz.z : _2826.z);
            _1239 = vec3(_2825.x ? _1237.x : _2827.x, _2825.y ? _1237.y : _2827.y, _2825.z ? _1237.z : _2827.z);
        }
        else
        {
            _1239 = vec3(_1231.x ? _1225.x : _1229.x, _1231.y ? _1225.y : _1229.y, _1231.z ? _1225.z : _1229.z);
        }
        bvec3 _1241 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1243 = mix(_1215.xyz, vec3(_1241.x ? _1226.x : _1239.x, _1241.y ? _1226.y : _1239.y, _1241.z ? _1226.z : _1239.z), vec3(_1214.w * _Globals._Main3rdEnableLighting));
        _1245 = _1214;
        _1246 = vec4(_1243.x, _1243.y, _1243.z, _1215.w);
    }
    else
    {
        _1245 = _Globals._Color3rd;
        _1246 = _962;
    }
    highp vec4 _1295;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp vec4 _1259 = texture(SPIRV_Cross_Combined_AlphaMasksampler_MainTex, _511 * _Globals._AlphaMask_ST.xy + _Globals._AlphaMask_ST.zw);
        highp float _1266 = clamp(_1259.x * _Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1271;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1270 = _1246;
            _1270.w = _1266;
            _1271 = _1270;
        }
        else
        {
            _1271 = _1246;
        }
        highp vec4 _1278;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1277 = _1271;
            _1277.w = _1271.w * _1266;
            _1278 = _1277;
        }
        else
        {
            _1278 = _1271;
        }
        highp vec4 _1286;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1285 = _1278;
            _1285.w = clamp(_1278.w + _1266, 0.0, 1.0);
            _1286 = _1285;
        }
        else
        {
            _1286 = _1278;
        }
        highp vec4 _1294;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1293 = _1286;
            _1293.w = clamp(_1286.w - _1266, 0.0, 1.0);
            _1294 = _1293;
        }
        else
        {
            _1294 = _1286;
        }
        _1295 = _1294;
    }
    else
    {
        _1295 = _1246;
    }
    highp vec4 _1403;
    highp float _1404;
    if ((_384 & 1) != 0)
    {
        highp vec4 _1299 = _1295;
        _1299.w = 1.0;
        highp vec2 _1308 = roundEven(_Globals._DissolveParams.xy);
        highp float _1309 = _1308.x;
        highp vec4 _1392;
        highp float _1393;
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
            highp float _1335;
            highp float _1336;
            if (_1313)
            {
                _1335 = 1.0 - clamp(abs(_1323 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1336 = float(_1323 > _Globals._DissolveParams.z);
            }
            else
            {
                _1335 = 0.0;
                _1336 = _1323;
            }
            highp float _1367;
            highp float _1368;
            if (_1309 == 2.0)
            {
                highp vec2 _1345 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1356 = (_1308.y == 1.0) ? (vec2(_1345.x * cos(_Globals._DissolvePos.w) + (-(_1345.y * sin(_Globals._DissolvePos.w))), _341) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1367 = 1.0 - clamp(abs(_1356 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1368 = _1336 * float(_1356 > _Globals._DissolveParams.z);
            }
            else
            {
                _1367 = _1335;
                _1368 = _1336;
            }
            highp float _1389;
            highp float _1390;
            if (_1309 == 3.0)
            {
                highp float _1378 = (_1308.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1389 = 1.0 - clamp(abs(_1378 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1390 = _1368 * float(_1378 > _Globals._DissolveParams.z);
            }
            else
            {
                _1389 = _1367;
                _1390 = _1368;
            }
            highp vec4 _1391 = _1299;
            _1391.w = _1390;
            _1392 = _1391;
            _1393 = _1389;
        }
        else
        {
            _1392 = _1299;
            _1393 = 0.0;
        }
        highp vec4 _1399;
        if ((_384 & 2) != 0)
        {
            highp vec4 _1398 = _1392;
            _1398.w = 1.0 - _1392.w;
            _1399 = _1398;
        }
        else
        {
            _1399 = _1392;
        }
        highp vec4 _1402 = _1399;
        _1402.w = _1399.w * _1295.w;
        _1403 = _1402;
        _1404 = _1393;
    }
    else
    {
        _1403 = _1295;
        _1404 = 0.0;
    }
    if ((_1403.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1585;
    highp float _1586;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1435 = clamp(dot(_445, mix(_673, _668, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1438 = clamp(dot(_445, mix(_673, _668, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1441 = clamp(dot(_445, mix(_673, _668, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1445 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1448 = clamp(_444 + distance(_445, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1451 = mix(1.0, _1448, _Globals._ShadowReceive);
        highp float _1452 = _1435 * _1451;
        highp float _1455 = mix(1.0, _1448, _Globals._Shadow2ndReceive);
        highp float _1459 = mix(1.0, _1448, _Globals._Shadow3rdReceive);
        highp float _1470 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1471 = clamp(_1470, 0.0, 1.0);
        highp float _1473 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1486 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1500 = clamp(_1470 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1513 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1528 = (_393 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1529 = clamp((_1435 * _1451 + (-_1471)) / clamp(fwidth(_1452) * _1445 + (_1473 - _1471), 0.0, 1.0), 0.0, 1.0) * _1528;
        highp vec3 _1561 = mix(mix(_1403.xyz * _Globals._ShadowColor.xyz, (_1403.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1438 * _1455 + (-_1486)) / clamp(fwidth(_1438 * _1455) * _1445 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1486), 0.0, 1.0), 0.0, 1.0) * _1528)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1403.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1441 * _1459 + (-_1513)) / clamp(fwidth(_1441 * _1459) * _1445 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1513), 0.0, 1.0), 0.0, 1.0) * _1528)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1567 = _1403.xyz * out_var_TEXCOORD6;
        highp vec3 _1573 = mix(mix(_1561, _1561 * _1403.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1403.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2829 = isnan(_1573);
        bvec3 _2830 = isnan(_1567);
        highp vec3 _2831 = min(_1573, _1567);
        highp vec3 _2832 = vec3(_2829.x ? _1567.x : _2831.x, _2829.y ? _1567.y : _2831.y, _2829.z ? _1567.z : _2831.z);
        highp vec3 _1581 = mix(mix(vec3(_2830.x ? _1573.x : _2832.x, _2830.y ? _1573.y : _2832.y, _2830.z ? _1573.z : _2832.z), _1567, _Globals._ShadowBorderColor.xyz * (clamp((_1435 * _1451 + (-_1500)) / clamp(fwidth(_1452) * _1445 + (_1473 - _1500), 0.0, 1.0), 0.0, 1.0) * _1528)), _1567, vec3(mix(1.0, _1529, _Globals._ShadowStrength)));
        _1585 = vec4(_1581.x, _1581.y, _1581.z, _1403.w);
        _1586 = _1529;
    }
    else
    {
        highp vec3 _1583 = _1403.xyz * out_var_TEXCOORD6;
        _1585 = vec4(_1583.x, _1583.y, _1583.z, _1403.w);
        _1586 = 1.0;
    }
    highp vec3 _1589 = vec3(_Globals._LightMaxLimit);
    bvec3 _2834 = isnan(out_var_TEXCOORD6);
    bvec3 _2835 = isnan(_1589);
    highp vec3 _2836 = min(out_var_TEXCOORD6, _1589);
    highp vec3 _2837 = vec3(_2834.x ? _1589.x : _2836.x, _2834.y ? _1589.y : _2836.y, _2834.z ? _1589.z : _2836.z);
    highp vec3 _1590 = vec3(_2835.x ? out_var_TEXCOORD6.x : _2837.x, _2835.y ? out_var_TEXCOORD6.y : _2837.y, _2835.z ? out_var_TEXCOORD6.z : _2837.z);
    highp float _1591 = clamp(_1586, 0.0, 1.0);
    highp vec3 _1593 = _1403.xyz * _Globals._LightMaxLimit;
    bvec3 _2839 = isnan(_1585.xyz);
    bvec3 _2840 = isnan(_1593);
    highp vec3 _2841 = min(_1585.xyz, _1593);
    highp vec3 _2842 = vec3(_2839.x ? _1593.x : _2841.x, _2839.y ? _1593.y : _2841.y, _2839.z ? _1593.z : _2841.z);
    highp vec3 _1594 = vec3(_2840.x ? _1585.xyz.x : _2842.x, _2840.y ? _1585.xyz.y : _2842.y, _2840.z ? _1585.xyz.z : _2842.z);
    highp vec4 _1628;
    if (_683)
    {
        highp vec3 _1598 = _1594.xyz;
        highp vec3 _1608 = _1598 + _961.xyz;
        highp vec3 _1609 = _1598 * _961.xyz;
        bvec3 _1611 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1612 = vec3(_1611.x ? _961.xyz.x : _334.x, _1611.y ? _961.xyz.y : _334.y, _1611.z ? _961.xyz.z : _334.z);
        bvec3 _1614 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1622;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1620 = (-_1598) * _961.xyz + _1608;
            bvec3 _2844 = isnan(_1620);
            bvec3 _2845 = isnan(_1598);
            highp vec3 _2846 = max(_1620, _1598);
            highp vec3 _2847 = vec3(_2844.x ? _1598.x : _2846.x, _2844.y ? _1598.y : _2846.y, _2844.z ? _1598.z : _2846.z);
            _1622 = vec3(_2845.x ? _1620.x : _2847.x, _2845.y ? _1620.y : _2847.y, _2845.z ? _1620.z : _2847.z);
        }
        else
        {
            _1622 = vec3(_1614.x ? _1608.x : _1612.x, _1614.y ? _1608.y : _1612.y, _1614.z ? _1608.z : _1612.z);
        }
        bvec3 _1624 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1626 = mix(_1598, vec3(_1624.x ? _1609.x : _1622.x, _1624.y ? _1609.y : _1622.y, _1624.z ? _1609.z : _1622.z), vec3((-_961.w) * _Globals._Main2ndEnableLighting + _961.w));
        _1628 = vec4(_1626.x, _1626.y, _1626.z, _1585.w);
    }
    else
    {
        _1628 = vec4(_1594.x, _1594.y, _1594.z, _1585.w);
    }
    highp vec4 _1661;
    if (_967)
    {
        highp vec3 _1641 = _1628.xyz + _1245.xyz;
        highp vec3 _1642 = _1628.xyz * _1245.xyz;
        bvec3 _1644 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1645 = vec3(_1644.x ? _1245.xyz.x : _334.x, _1644.y ? _1245.xyz.y : _334.y, _1644.z ? _1245.xyz.z : _334.z);
        bvec3 _1647 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1655;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1653 = (-_1628.xyz) * _1245.xyz + _1641;
            bvec3 _2849 = isnan(_1653);
            bvec3 _2850 = isnan(_1628.xyz);
            highp vec3 _2851 = max(_1653, _1628.xyz);
            highp vec3 _2852 = vec3(_2849.x ? _1628.xyz.x : _2851.x, _2849.y ? _1628.xyz.y : _2851.y, _2849.z ? _1628.xyz.z : _2851.z);
            _1655 = vec3(_2850.x ? _1653.x : _2852.x, _2850.y ? _1653.y : _2852.y, _2850.z ? _1653.z : _2852.z);
        }
        else
        {
            _1655 = vec3(_1647.x ? _1641.x : _1645.x, _1647.y ? _1641.y : _1645.y, _1647.z ? _1641.z : _1645.z);
        }
        bvec3 _1657 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1659 = mix(_1628.xyz, vec3(_1657.x ? _1642.x : _1655.x, _1657.y ? _1642.y : _1655.y, _1657.z ? _1642.z : _1655.z), vec3((-_1245.w) * _Globals._Main3rdEnableLighting + _1245.w));
        _1661 = vec4(_1659.x, _1659.y, _1659.z, _1628.w);
    }
    else
    {
        _1661 = _1628;
    }
    highp vec4 _1707;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1677 = pow(clamp(1.0 - abs(dot(mix(_673, _668, vec3(_Globals._RimShadeNormalStrength)), _461)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1686 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1705 = mix(_1661.xyz, _1661.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1677 - _1686) / clamp(fwidth(_1677) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1686), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1707 = vec4(_1705.x, _1705.y, _1705.z, _1661.w);
    }
    else
    {
        _1707 = _1661;
    }
    highp vec4 _1780;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1731 = dot(normalize(((-_461) * _Globals._BacklightViewStrength) + _445), mix(_673, _668, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1741;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1741 = _1731 * clamp(_444 + distance(_445, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1741 = _1731;
        }
        highp float _1750 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1778 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1403.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_393 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_461, _445) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1741 - _1750) / clamp(fwidth(_1741) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1750), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1590 + _1707.xyz;
        _1780 = vec4(_1778.x, _1778.y, _1778.z, _1707.w);
    }
    else
    {
        _1780 = _1707;
    }
    highp vec3 _1783 = _1780.xyz * _1780.w;
    highp vec4 _2036;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1794 = dFdx(_668);
        highp vec3 _1795 = abs(_1794);
        highp vec3 _1796 = dFdy(_668);
        highp vec3 _1797 = abs(_1796);
        highp float _1798 = dot(_1795, _1795);
        highp float _1799 = dot(_1797, _1797);
        highp float _1800 = isnan(_1799) ? _1798 : (isnan(_1798) ? _1799 : max(_1798, _1799));
        highp float _1803 = (_1800 / (_1800 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1806 = clamp(1.0 - (isnan(_1803) ? 0.0 : (isnan(0.0) ? _1803 : max(0.0, _1803))), 0.0, 1.0);
        highp float _1807 = isnan(_1806) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1806 : min(_Globals._Smoothness, _1806));
        highp float _1808 = 1.0 - _1807;
        highp float _1809 = _1808 * _1808;
        highp vec3 _1812 = _1783.xyz;
        highp vec3 _1814 = _1812 - (_1812 * _Globals._Metallic);
        highp vec3 _1820 = mix(vec3(_Globals._Reflectance), _1403.xyz, vec3(_Globals._Metallic));
        highp vec4 _1822 = _Globals._ReflectionColor;
        highp vec4 _1831;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1830 = _1822;
            _1830.w = _1822.w * _1780.w;
            _1831 = _1830;
        }
        else
        {
            _1831 = _1822;
        }
        highp vec4 _1932;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1904;
            do
            {
                highp vec3 _1842 = mix(_673, _668, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1844 = normalize(_461 + _445);
                highp float _1846 = clamp(dot(_1842, _1844), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1855 = pow(_1846, 1.0 / _1809);
                    highp float _1862 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1904 = vec3(clamp((_1855 - _1862) / clamp(fwidth(_1855) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1862), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1874 = clamp(dot(_1842, _461), 0.0, 1.0);
                highp float _1876 = clamp(dot(_1842, _445), 0.0, 1.0);
                highp float _1879 = isnan(0.00200000009499490261077880859375) ? _1809 : (isnan(_1809) ? 0.00200000009499490261077880859375 : max(_1809, 0.00200000009499490261077880859375));
                highp float _1880 = 1.0 - _1879;
                highp float _1884 = _1879 * _1879;
                highp float _1887 = (_1846 * _1884 + (-_1846)) * _1846 + 1.0;
                highp float _1895 = 1.0 - clamp(dot(_445, _1844), 0.0, 1.0);
                _1904 = (_1820 + ((((((vec3(1.0) - _1820) * _1895) * _1895) * _1895) * _1895) * _1895)) * (((0.5 / ((_1876 * (_1874 * _1880 + _1879) + (_1874 * (_1876 * _1880 + _1879))) + 9.9999997473787516355514526367188e-06)) * (_1884 / (_1887 * _1887 + 1.0000000116860974230803549289703e-07))) * _1876);
                break;
            } while(false);
            highp vec3 _1905 = _1814.xyz;
            highp vec3 _1907 = _1831.xyz * _1590;
            highp vec3 _1912 = _1831.xyz * _1590 + _1905;
            highp vec3 _1913 = _1905 * _1907;
            bvec3 _1915 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1916 = vec3(_1915.x ? _1907.x : _334.x, _1915.y ? _1907.y : _334.y, _1915.z ? _1907.z : _334.z);
            bvec3 _1918 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1926;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1924 = (-_1905) * _1907 + _1912;
                bvec3 _2874 = isnan(_1924);
                bvec3 _2875 = isnan(_1905);
                highp vec3 _2876 = max(_1924, _1905);
                highp vec3 _2877 = vec3(_2874.x ? _1905.x : _2876.x, _2874.y ? _1905.y : _2876.y, _2874.z ? _1905.z : _2876.z);
                _1926 = vec3(_2875.x ? _1924.x : _2877.x, _2875.y ? _1924.y : _2877.y, _2875.z ? _1924.z : _2877.z);
            }
            else
            {
                _1926 = vec3(_1918.x ? _1912.x : _1916.x, _1918.y ? _1912.y : _1916.y, _1918.z ? _1912.z : _1916.z);
            }
            bvec3 _1928 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1930 = mix(_1905, vec3(_1928.x ? _1913.x : _1926.x, _1928.y ? _1913.y : _1926.y, _1928.z ? _1913.z : _1926.z), _1904 * _1831.w);
            _1932 = vec4(_1930.x, _1930.y, _1930.z, _1780.w);
        }
        else
        {
            _1932 = vec4(_1814.x, _1814.y, _1814.z, _1780.w);
        }
        highp vec4 _2035;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1954 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1961 = reflect(-_461, mix(_673, _668, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1964 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1961, _1808 * ((-4.19999980926513671875) * _1808 + 10.19999980926513671875));
            highp vec3 _1984 = ((_1964.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1964.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1590, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1990 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1961, _1808 * 8.0).xyz * 1.0;
            highp float _2001 = 1.0 - _670;
            highp vec3 _2015 = _1932.xyz + _1831.xyz;
            highp vec3 _2016 = _1932.xyz * _1831.xyz;
            bvec3 _2018 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2019 = vec3(_2018.x ? _1831.xyz.x : _334.x, _2018.y ? _1831.xyz.y : _334.y, _2018.z ? _1831.xyz.z : _334.z);
            bvec3 _2021 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2029;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2027 = (-_1932.xyz) * _1831.xyz + _2015;
                bvec3 _2879 = isnan(_2027);
                bvec3 _2880 = isnan(_1932.xyz);
                highp vec3 _2881 = max(_2027, _1932.xyz);
                highp vec3 _2882 = vec3(_2879.x ? _1932.xyz.x : _2881.x, _2879.y ? _1932.xyz.y : _2881.y, _2879.z ? _1932.xyz.z : _2881.z);
                _2029 = vec3(_2880.x ? _2027.x : _2882.x, _2880.y ? _2027.y : _2882.y, _2880.z ? _2027.z : _2882.z);
            }
            else
            {
                _2029 = vec3(_2021.x ? _2015.x : _2019.x, _2021.y ? _2015.y : _2019.y, _2021.z ? _2015.z : _2019.z);
            }
            bvec3 _2031 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2033 = mix(_1932.xyz, vec3(_2031.x ? _2016.x : _2029.x, _2031.y ? _2016.y : _2029.y, _2031.z ? _2016.z : _2029.z), ((vec3(_1954.x ? _1984.x : _1990.x, _1954.y ? _1984.y : _1990.y, _1954.z ? _1984.z : _1990.z) * (1.0 / (_1809 * _1809 + 1.0))) * mix(_1820, vec3(clamp(_1807 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2001 * _2001) * _2001) * _2001) * _2001))) * _1831.w);
            _2035 = vec4(_2033.x, _2033.y, _2033.z, _1932.w);
        }
        else
        {
            _2035 = _1932;
        }
        _2036 = _2035;
    }
    else
    {
        _2036 = vec4(_1783.x, _1783.y, _1783.z, _1780.w);
    }
    highp vec4 _2154;
    if (_Globals._UseMatCap != 0u)
    {
        bvec3 _2062 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2063 = vec3(_2062.x ? _461.x : _361.x, _2062.y ? _461.y : _361.y, _2062.z ? _461.z : _361.z);
        bvec3 _2064 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2065 = vec3(_2064.x ? vec3(0.0, 1.0, 0.0).x : _368.x, _2064.y ? vec3(0.0, 1.0, 0.0).y : _368.y, _2064.z ? vec3(0.0, 1.0, 0.0).z : _368.z);
        highp vec3 _2069 = normalize(_2065 - (_2063 * dot(_2063, _2065)));
        highp vec4 _2091 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(mix(_673, _668, vec3(_Globals._MatCapNormalStrength))) * mat3(cross(_2063, _2069), _2069, _2063)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2092 = _2091.xyz;
        highp vec3 _2097 = mix(_2092, _2092 * _1590, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2098 = vec4(_2097.x, _2097.y, _2097.z, _2091.w);
        highp float _2099 = _2091.w;
        highp float _2103 = mix(_2099, _2099 * _1591, _Globals._MatCapShadowMask);
        _2098.w = _2103;
        highp vec4 _2113;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2112 = _2098;
            _2112.w = _2103 * _2036.w;
            _2113 = _2112;
        }
        else
        {
            _2113 = _2098;
        }
        highp vec3 _2127 = mix(_2113.xyz, _2113.xyz * _1403.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2134 = _2036.xyz + _2127;
        highp vec3 _2135 = _2036.xyz * _2127;
        bvec3 _2137 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2138 = vec3(_2137.x ? _2127.x : _334.x, _2137.y ? _2127.y : _334.y, _2137.z ? _2127.z : _334.z);
        bvec3 _2140 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2148;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2146 = (-_2036.xyz) * _2127 + _2134;
            bvec3 _2884 = isnan(_2146);
            bvec3 _2885 = isnan(_2036.xyz);
            highp vec3 _2886 = max(_2146, _2036.xyz);
            highp vec3 _2887 = vec3(_2884.x ? _2036.xyz.x : _2886.x, _2884.y ? _2036.xyz.y : _2886.y, _2884.z ? _2036.xyz.z : _2886.z);
            _2148 = vec3(_2885.x ? _2146.x : _2887.x, _2885.y ? _2146.y : _2887.y, _2885.z ? _2146.z : _2887.z);
        }
        else
        {
            _2148 = vec3(_2140.x ? _2134.x : _2138.x, _2140.y ? _2134.y : _2138.y, _2140.z ? _2134.z : _2138.z);
        }
        bvec3 _2150 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2152 = mix(_2036.xyz, vec3(_2150.x ? _2135.x : _2148.x, _2150.y ? _2135.y : _2148.y, _2150.z ? _2135.z : _2148.z), vec3(1.0) * (_Globals._MatCapBlend * ((_393 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2113.w)));
        _2154 = vec4(_2152.x, _2152.y, _2152.z, _2036.w);
    }
    else
    {
        _2154 = _2036;
    }
    highp vec4 _2271;
    if (_Globals._UseMatCap2nd != 0u)
    {
        bvec3 _2179 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2180 = vec3(_2179.x ? _461.x : _361.x, _2179.y ? _461.y : _361.y, _2179.z ? _461.z : _361.z);
        bvec3 _2181 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2182 = vec3(_2181.x ? vec3(0.0, 1.0, 0.0).x : _368.x, _2181.y ? vec3(0.0, 1.0, 0.0).y : _368.y, _2181.z ? vec3(0.0, 1.0, 0.0).z : _368.z);
        highp vec3 _2186 = normalize(_2182 - (_2180 * dot(_2180, _2182)));
        highp vec4 _2208 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((mix(_673, _668, vec3(_Globals._MatCap2ndNormalStrength)) * mat3(cross(_2180, _2186), _2186, _2180)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2209 = _2208.xyz;
        highp vec3 _2214 = mix(_2209, _2209 * _1590, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2215 = vec4(_2214.x, _2214.y, _2214.z, _2208.w);
        highp float _2216 = _2208.w;
        highp float _2220 = mix(_2216, _2216 * _1591, _Globals._MatCap2ndShadowMask);
        _2215.w = _2220;
        highp vec4 _2230;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2229 = _2215;
            _2229.w = _2220 * _2154.w;
            _2230 = _2229;
        }
        else
        {
            _2230 = _2215;
        }
        highp vec3 _2244 = mix(_2230.xyz, _2230.xyz * _1403.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2251 = _2154.xyz + _2244;
        highp vec3 _2252 = _2154.xyz * _2244;
        bvec3 _2254 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2255 = vec3(_2254.x ? _2244.x : _334.x, _2254.y ? _2244.y : _334.y, _2254.z ? _2244.z : _334.z);
        bvec3 _2257 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2265;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2263 = (-_2154.xyz) * _2244 + _2251;
            bvec3 _2889 = isnan(_2263);
            bvec3 _2890 = isnan(_2154.xyz);
            highp vec3 _2891 = max(_2263, _2154.xyz);
            highp vec3 _2892 = vec3(_2889.x ? _2154.xyz.x : _2891.x, _2889.y ? _2154.xyz.y : _2891.y, _2889.z ? _2154.xyz.z : _2891.z);
            _2265 = vec3(_2890.x ? _2263.x : _2892.x, _2890.y ? _2263.y : _2892.y, _2890.z ? _2263.z : _2892.z);
        }
        else
        {
            _2265 = vec3(_2257.x ? _2251.x : _2255.x, _2257.y ? _2251.y : _2255.y, _2257.z ? _2251.z : _2255.z);
        }
        bvec3 _2267 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2269 = mix(_2154.xyz, vec3(_2267.x ? _2252.x : _2265.x, _2267.y ? _2252.y : _2265.y, _2267.z ? _2252.z : _2265.z), vec3(1.0) * (_Globals._MatCap2ndBlend * ((_393 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2230.w)));
        _2271 = vec4(_2269.x, _2269.y, _2269.z, _2154.w);
    }
    else
    {
        _2271 = _2154;
    }
    highp vec4 _2427;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2290 = mix(_673, _668, vec3(_Globals._RimNormalStrength));
        highp float _2294 = dot(_445, _2290) * 0.5 + 0.5;
        highp float _2317 = (_393 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2290, _461)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2321 = mix(_2317, _2317 * clamp((_2294 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2322 = _2317 * clamp(((1.0 - _2294) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2332 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2341 = clamp((_2321 - _2332) / clamp(fwidth(_2321) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2332), 0.0, 1.0), 0.0, 1.0);
        highp float _2348 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2358 = clamp((_2322 * _Globals._RimDirStrength + (-_2348)) / clamp(fwidth(_2322 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2348), 0.0, 1.0), 0.0, 1.0);
        highp float _2362 = mix(_2341, _2341 * _1591, _Globals._RimShadowMask);
        highp float _2364 = mix(_2358, _2358 * _1591, _Globals._RimShadowMask);
        highp float _2373;
        highp float _2374;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2373 = _2364 * _2271.w;
            _2374 = _2362 * _2271.w;
        }
        else
        {
            _2373 = _2364;
            _2374 = _2362;
        }
        highp vec3 _2380 = vec3(1.0 - _Globals._RimEnableLighting) + (_1590 * _Globals._RimEnableLighting);
        highp vec3 _2382 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1403.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2383 = _2382 * _2380;
        highp vec3 _2389 = _2382 * _2380 + _2271.xyz;
        highp vec3 _2390 = _2271.xyz * _2383;
        bvec3 _2392 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2393 = vec3(_2392.x ? _2383.x : _334.x, _2392.y ? _2383.y : _334.y, _2392.z ? _2383.z : _334.z);
        bvec3 _2395 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2397 = _Globals._RimBlendMode == 2u;
        highp vec3 _2403;
        if (_2397)
        {
            highp vec3 _2401 = (-_2271.xyz) * _2383 + _2389;
            bvec3 _2894 = isnan(_2401);
            bvec3 _2895 = isnan(_2271.xyz);
            highp vec3 _2896 = max(_2401, _2271.xyz);
            highp vec3 _2897 = vec3(_2894.x ? _2271.xyz.x : _2896.x, _2894.y ? _2271.xyz.y : _2896.y, _2894.z ? _2271.xyz.z : _2896.z);
            _2403 = vec3(_2895.x ? _2401.x : _2897.x, _2895.y ? _2401.y : _2897.y, _2895.z ? _2401.z : _2897.z);
        }
        else
        {
            _2403 = vec3(_2395.x ? _2389.x : _2393.x, _2395.y ? _2389.y : _2393.y, _2395.z ? _2389.z : _2393.z);
        }
        bvec3 _2405 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2408 = mix(_2271.xyz, vec3(_2405.x ? _2390.x : _2403.x, _2405.y ? _2390.y : _2403.y, _2405.z ? _2390.z : _2403.z), vec3(_2374 * _Globals._RimColor.w)).xyz;
        highp vec3 _2410 = _Globals._RimIndirColor.xyz * _2380;
        highp vec3 _2414 = _Globals._RimIndirColor.xyz * _2380 + _2408;
        highp vec3 _2415 = _2408 * _2410;
        highp vec3 _2416 = vec3(_2392.x ? _2410.x : _334.x, _2392.y ? _2410.y : _334.y, _2392.z ? _2410.z : _334.z);
        highp vec3 _2423;
        if (_2397)
        {
            highp vec3 _2421 = (-_2408) * _2410 + _2414;
            bvec3 _2899 = isnan(_2421);
            bvec3 _2900 = isnan(_2408);
            highp vec3 _2901 = max(_2421, _2408);
            highp vec3 _2902 = vec3(_2899.x ? _2408.x : _2901.x, _2899.y ? _2408.y : _2901.y, _2899.z ? _2408.z : _2901.z);
            _2423 = vec3(_2900.x ? _2421.x : _2902.x, _2900.y ? _2421.y : _2902.y, _2900.z ? _2421.z : _2902.z);
        }
        else
        {
            _2423 = vec3(_2395.x ? _2414.x : _2416.x, _2395.y ? _2414.y : _2416.y, _2395.z ? _2414.z : _2416.z);
        }
        highp vec3 _2425 = mix(_2408, vec3(_2405.x ? _2415.x : _2423.x, _2405.y ? _2415.y : _2423.y, _2405.z ? _2415.z : _2423.z), vec3(_2373 * _Globals._RimIndirColor.w));
        _2427 = vec4(_2425.x, _2425.y, _2425.z, _2271.w);
    }
    else
    {
        _2427 = _2271;
    }
    highp vec4 _2543;
    if (_Globals._UseEmission != 0u)
    {
        bvec2 _2438 = bvec2(_Globals._EmissionMap_UVMode == 1u);
        highp vec2 _2439 = vec2(_2438.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2438.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2441 = bvec2(_Globals._EmissionMap_UVMode == 2u);
        highp vec2 _2442 = vec2(_2441.x ? out_var_TEXCOORD1.xy.x : _2439.x, _2441.y ? out_var_TEXCOORD1.xy.y : _2439.y);
        bvec2 _2444 = bvec2(_Globals._EmissionMap_UVMode == 3u);
        highp vec2 _2445 = vec2(_2444.x ? out_var_TEXCOORD1.zw.x : _2442.x, _2444.y ? out_var_TEXCOORD1.zw.y : _2442.y);
        bvec2 _2447 = bvec2(_Globals._EmissionMap_UVMode == 4u);
        highp float _2464 = _Globals._EmissionMap_ScrollRotate.w * _Globals.uTime.y + _Globals._EmissionMap_ScrollRotate.z;
        highp float _2465 = sin(_2464);
        highp float _2466 = cos(_2464);
        highp vec2 _2467 = ((vec2(_2447.x ? _672.x : _2445.x, _2447.y ? _672.y : _2445.y) + (_476 * _Globals._EmissionParallaxDepth)) * _Globals._EmissionMap_ST.xy + _Globals._EmissionMap_ST.zw) - vec2(0.5);
        highp float _2468 = _2467.x;
        highp float _2469 = _2467.y;
        highp vec4 _2482 = texture(SPIRV_Cross_Combined_EmissionMapsampler_EmissionMap, (vec2(_2468 * _2466 + (-(_2469 * _2465)), _2468 * _2465 + (_2469 * _2466)) + vec2(0.5)) + fract(_Globals._EmissionMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2483 = _Globals._EmissionColor * _2482;
        highp vec3 _2484 = _2483.xyz;
        highp vec3 _2490 = mix(_2484, _2484 * _449, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2504 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2510;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2510 = roundEven(_2504);
        }
        else
        {
            _2510 = _2504;
        }
        highp vec3 _2519 = mix(_2490, _2490 * _1403.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2523 = _2427.xyz + _2519;
        highp vec3 _2524 = _2427.xyz * _2519;
        bvec3 _2526 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2527 = vec3(_2526.x ? _2519.x : _334.x, _2526.y ? _2519.y : _334.y, _2526.z ? _2519.z : _334.z);
        bvec3 _2529 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2537;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2535 = (-_2427.xyz) * _2519 + _2523;
            bvec3 _2904 = isnan(_2535);
            bvec3 _2905 = isnan(_2427.xyz);
            highp vec3 _2906 = max(_2535, _2427.xyz);
            highp vec3 _2907 = vec3(_2904.x ? _2427.xyz.x : _2906.x, _2904.y ? _2427.xyz.y : _2906.y, _2904.z ? _2427.xyz.z : _2906.z);
            _2537 = vec3(_2905.x ? _2535.x : _2907.x, _2905.y ? _2535.y : _2907.y, _2905.z ? _2535.z : _2907.z);
        }
        else
        {
            _2537 = vec3(_2529.x ? _2523.x : _2527.x, _2529.y ? _2523.y : _2527.y, _2529.z ? _2523.z : _2527.z);
        }
        bvec3 _2539 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2541 = mix(_2427.xyz, vec3(_2539.x ? _2524.x : _2537.x, _2539.y ? _2524.y : _2537.y, _2539.z ? _2524.z : _2537.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2510, _Globals._EmissionBlink.x)) * _2483.w) * _2427.w));
        _2543 = vec4(_2541.x, _2541.y, _2541.z, _2427.w);
    }
    else
    {
        _2543 = _2427;
    }
    highp vec4 _2659;
    if (_Globals._UseEmission2nd != 0u)
    {
        bvec2 _2554 = bvec2(_Globals._Emission2ndMap_UVMode == 1u);
        highp vec2 _2555 = vec2(_2554.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _2554.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _2557 = bvec2(_Globals._Emission2ndMap_UVMode == 2u);
        highp vec2 _2558 = vec2(_2557.x ? out_var_TEXCOORD1.xy.x : _2555.x, _2557.y ? out_var_TEXCOORD1.xy.y : _2555.y);
        bvec2 _2560 = bvec2(_Globals._Emission2ndMap_UVMode == 3u);
        highp vec2 _2561 = vec2(_2560.x ? out_var_TEXCOORD1.zw.x : _2558.x, _2560.y ? out_var_TEXCOORD1.zw.y : _2558.y);
        bvec2 _2563 = bvec2(_Globals._Emission2ndMap_UVMode == 4u);
        highp float _2580 = _Globals._Emission2ndMap_ScrollRotate.w * _Globals.uTime.y + _Globals._Emission2ndMap_ScrollRotate.z;
        highp float _2581 = sin(_2580);
        highp float _2582 = cos(_2580);
        highp vec2 _2583 = ((vec2(_2563.x ? _672.x : _2561.x, _2563.y ? _672.y : _2561.y) + (_476 * _Globals._Emission2ndParallaxDepth)) * _Globals._Emission2ndMap_ST.xy + _Globals._Emission2ndMap_ST.zw) - vec2(0.5);
        highp float _2584 = _2583.x;
        highp float _2585 = _2583.y;
        highp vec4 _2598 = texture(SPIRV_Cross_Combined_Emission2ndMapsampler_Emission2ndMap, (vec2(_2584 * _2582 + (-(_2585 * _2581)), _2584 * _2581 + (_2585 * _2582)) + vec2(0.5)) + fract(_Globals._Emission2ndMap_ScrollRotate.xy * _Globals.uTime.y));
        highp vec4 _2599 = _Globals._Emission2ndColor * _2598;
        highp vec3 _2600 = _2599.xyz;
        highp vec3 _2606 = mix(_2600, _2600 * _449, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2620 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2626;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2626 = roundEven(_2620);
        }
        else
        {
            _2626 = _2620;
        }
        highp vec3 _2635 = mix(_2606, _2606 * _1403.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2639 = _2543.xyz + _2635;
        highp vec3 _2640 = _2543.xyz * _2635;
        bvec3 _2642 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2643 = vec3(_2642.x ? _2635.x : _334.x, _2642.y ? _2635.y : _334.y, _2642.z ? _2635.z : _334.z);
        bvec3 _2645 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2653;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2651 = (-_2543.xyz) * _2635 + _2639;
            bvec3 _2909 = isnan(_2651);
            bvec3 _2910 = isnan(_2543.xyz);
            highp vec3 _2911 = max(_2651, _2543.xyz);
            highp vec3 _2912 = vec3(_2909.x ? _2543.xyz.x : _2911.x, _2909.y ? _2543.xyz.y : _2911.y, _2909.z ? _2543.xyz.z : _2911.z);
            _2653 = vec3(_2910.x ? _2651.x : _2912.x, _2910.y ? _2651.y : _2912.y, _2910.z ? _2651.z : _2912.z);
        }
        else
        {
            _2653 = vec3(_2645.x ? _2639.x : _2643.x, _2645.y ? _2639.y : _2643.y, _2645.z ? _2639.z : _2643.z);
        }
        bvec3 _2655 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2657 = mix(_2543.xyz, vec3(_2655.x ? _2640.x : _2653.x, _2655.y ? _2640.y : _2653.y, _2655.z ? _2640.z : _2653.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2626, _Globals._Emission2ndBlink.x)) * _2599.w) * _2543.w));
        _2659 = vec4(_2657.x, _2657.y, _2657.z, _2543.w);
    }
    else
    {
        _2659 = _2543;
    }
    bvec3 _2669 = bvec3(_393 < 0.0);
    highp vec3 _2670 = (_2659.xyz + ((_Globals._DissolveColor.xyz * _1404) * _2659.w)).xyz;
    highp vec3 _2678 = mix(_2670, _Globals._BackfaceColor.xyz * _1590, vec3(_Globals._BackfaceColor.w));
    highp float _2699 = (_393 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _454) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2713 = vec3(_2669.x ? _2678.x : _2670.x, _2669.y ? _2678.y : _2670.y, _2669.z ? _2678.z : _2670.z).xyz;
    highp vec3 _2724 = mix(_2713, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2713, vec3(pow(clamp(1.0 - abs(dot(_673, _461)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2699));
    highp vec4 _2725 = vec4(_2724.x, _2724.y, _2724.z, _2659.w);
    highp float _2727 = mix(_2659.w, _2659.w * _Globals._DistanceFadeColor.w, _2699);
    _2725.w = _2727;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2727, _2725, vec4(out_var_TEXCOORD9));
}
