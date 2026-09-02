#version 300 es
precision mediump float;
precision highp int;

vec3 _329;
vec3 _335;
float _336;

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
    highp vec3 _356 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _363 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _379 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _388 = float(gl_FrontFacing ? 1 : (-1));
    highp float _439;
    do
    {
        highp vec3 _395 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _396 = _395.xy;
        highp float _402 = _395.z;
        if ((any(lessThan(_396, vec2(0.0))) || any(greaterThan(_396, vec2(1.0)))) || (_402 > 1.0))
        {
            _439 = 1.0;
            break;
        }
        highp float _412 = _402 + _Globals.uShadowBias;
        _439 = (((step(_412, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _396), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_412, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _396), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_412, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _396), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_412, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _396), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _440 = normalize(out_var_TEXCOORD7);
    highp vec3 _444 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _448 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _449 = length(_448);
    highp vec3 _456 = normalize(_448);
    highp mat3 _465 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _470 = bvec2(_388 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _471 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _484 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _485 = sin(_484);
    highp float _486 = cos(_484);
    highp vec2 _487 = (vec2(_470.x ? _471.x : out_var_TEXCOORD0.xy.x, _470.y ? _471.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _488 = _487.x;
    highp float _489 = _487.y;
    highp vec2 _500 = (vec2(_488 * _486 + (-(_489 * _485)), _488 * _485 + (_489 * _486)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _504 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _500);
    highp vec3 _511 = pow(abs(_504.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _512 = _511.z;
    highp float _513 = _511.y;
    bvec4 _515 = bvec4(_512 > _513);
    highp vec4 _516 = vec4(_512, _513, -1.0, 0.666666686534881591796875);
    highp vec4 _517 = vec4(_513, _512, 0.0, -0.3333333432674407958984375);
    highp vec4 _518 = vec4(_515.x ? _516.x : _517.x, _515.y ? _516.y : _517.y, _515.z ? _516.z : _517.z, _515.w ? _516.w : _517.w);
    highp float _519 = _518.x;
    highp float _520 = _511.x;
    bvec4 _522 = bvec4(_519 > _520);
    highp vec4 _525 = vec4(_519, _518.yw, _520);
    highp vec4 _527 = vec4(_520, _518.yz, _519);
    highp vec4 _528 = vec4(_522.x ? _525.x : _527.x, _522.y ? _525.y : _527.y, _522.z ? _525.z : _527.z, _522.w ? _525.w : _527.w);
    highp float _533 = _528.x - (isnan(_528.y) ? _528.w : (isnan(_528.w) ? _528.y : min(_528.w, _528.y)));
    highp float _546 = clamp((_533 / (_528.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _549 = clamp(_528.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _563 = vec3((-_549) * _546 + _549) + (clamp(abs((fract(vec3(abs(_528.z + ((_528.w - _528.y) / (6.0 * _533 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_549 * _546));
    highp vec4 _567 = vec4(_563.x, _563.y, _563.z, _504.w) * _Globals._Color;
    highp vec3 _599;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _580 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _500 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _580.w = _580.w * _580.x;
        highp vec2 _591 = ((_580.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _592 = vec3(_591.x, _591.y, _335.z);
        highp vec2 _593 = _591.xy;
        _592.z = sqrt(1.0 - clamp(dot(_593, _593), 0.0, 1.0));
        _599 = _592;
    }
    else
    {
        _599 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _648;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _608 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _609 = vec2(_608.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _608.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _611 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _612 = vec2(_611.x ? out_var_TEXCOORD1.xy.x : _609.x, _611.y ? out_var_TEXCOORD1.xy.y : _609.y);
        bvec2 _614 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _624 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_614.x ? out_var_TEXCOORD1.zw.x : _612.x, _614.y ? out_var_TEXCOORD1.zw.y : _612.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _624.w = _624.w * _624.x;
        highp vec2 _636 = (((_624.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _648 = vec3(_599.xy + _636, _599.z * sqrt(1.0 - clamp(dot(_636, _636), 0.0, 1.0)));
    }
    else
    {
        _648 = _599;
    }
    highp vec3 _650 = normalize(_465 * _648);
    bvec3 _655 = bvec3(_388 < (_Globals._FlipNormal - 1.0));
    highp vec3 _656 = -_650;
    highp vec3 _657 = vec3(_655.x ? _656.x : _650.x, _655.y ? _656.y : _650.y, _655.z ? _656.z : _650.z);
    highp float _659 = clamp(dot(_657, _456), 0.0, 1.0);
    highp vec3 _660 = normalize(out_var_TEXCOORD4);
    highp vec2 _664 = ((_657 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _363, _356)).xy * 0.5) + vec2(0.5);
    bool _665 = out_var_TEXCOORD5.w > 0.0;
    bool _670 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _948;
    highp vec4 _949;
    if (_670)
    {
        bvec2 _676 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _677 = vec2(_676.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _676.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _679 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _680 = vec2(_679.x ? out_var_TEXCOORD1.xy.x : _677.x, _679.y ? out_var_TEXCOORD1.xy.y : _677.y);
        bvec2 _682 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _683 = vec2(_682.x ? out_var_TEXCOORD1.zw.x : _680.x, _682.y ? out_var_TEXCOORD1.zw.y : _680.y);
        bvec2 _685 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _686 = vec2(_685.x ? _664.x : _683.x, _685.y ? _664.y : _683.y);
        highp vec4 _725 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _726 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _734;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _733 = _686;
            _733.x = abs(_686.x - 0.5) + 0.5;
            _734 = _733;
        }
        else
        {
            _734 = _686;
        }
        highp vec2 _735 = _725.xy;
        highp vec2 _736 = _725.zw;
        highp vec2 _737 = _734 * _735 + _736;
        highp vec2 _746;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_686.x < 0.5))
        {
            highp vec2 _745 = _737;
            _745.x = 1.0 - _737.x;
            _746 = _745;
        }
        else
        {
            _746 = _737;
        }
        highp vec2 _753;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _665)
        {
            highp vec2 _752 = _746;
            _752.x = 1.0 - _746.x;
            _753 = _752;
        }
        else
        {
            _753 = _746;
        }
        highp vec2 _758;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _665)
        {
            highp vec2 _757 = _753;
            _757.x = -1.0;
            _758 = _757;
        }
        else
        {
            _758 = _753;
        }
        highp vec2 _764;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_665))
        {
            highp vec2 _763 = _758;
            _763.x = -1.0;
            _764 = _763;
        }
        else
        {
            _764 = _758;
        }
        highp float _767 = sin(_726);
        highp float _768 = cos(_726);
        highp vec2 _769 = ((_764 - _736) / _735) - vec2(0.5);
        highp float _770 = _769.x;
        highp float _771 = _769.y;
        highp vec2 _779 = (vec2(_770 * _768 + (-(_771 * _767)), _770 * _767 + (_771 * _768)) + vec2(0.5)) * _735 + _736;
        uint _783 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _787 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _783 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _783);
        highp float _788 = _779.x;
        highp float _789 = _779.y;
        uint _796 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _806 = ((mix(vec2(_788, 1.0 - _789), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_787 % _796), float(_787 / _796))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _806.y = 1.0 - _806.y;
        highp vec4 _811 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _806);
        highp vec4 _827;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _814 = _811.x;
            highp float _815 = _811.y;
            highp float _816 = _811.z;
            highp float _817 = isnan(_815) ? _814 : (isnan(_814) ? _815 : min(_814, _815));
            highp float _818 = isnan(_815) ? _814 : (isnan(_814) ? _815 : max(_814, _815));
            highp float _819 = isnan(_816) ? _818 : (isnan(_818) ? _816 : min(_818, _816));
            highp float _820 = isnan(_819) ? _817 : (isnan(_817) ? _819 : max(_817, _819));
            _827 = vec4(1.0, 1.0, 1.0, clamp((_820 - 0.5) / clamp(fwidth(_820), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _827 = _811;
        }
        highp vec4 _850;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _831 = clamp(_659 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _834 = 0.5 - abs(_788 - 0.5);
            highp float _841 = 0.5 - abs(_789 - 0.5);
            highp vec4 _849 = _827;
            _849.w = _827.w * (clamp(_834 / clamp(fwidth(_834), 9.9999997473787516355514526367188e-05, _831), 0.0, 1.0) * clamp(_841 / clamp(fwidth(_841), 9.9999997473787516355514526367188e-05, _831), 0.0, 1.0));
            _850 = _849;
        }
        else
        {
            _850 = _827;
        }
        highp vec4 _851 = _Globals._Color2nd * _850;
        highp float _852 = _851.w;
        _851.w = mix(_852, _852 * clamp((_449 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _878;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_388 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_388 < 0.0)))
        {
            highp vec4 _877 = _851;
            _877.w = 0.0;
            _878 = _877;
        }
        else
        {
            _878 = _851;
        }
        highp vec4 _917;
        highp vec4 _918;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _889;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _888 = _567;
                _888.w = _878.w;
                _889 = _888;
            }
            else
            {
                _889 = _567;
            }
            highp vec4 _897;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _896 = _889;
                _896.w = _889.w * _878.w;
                _897 = _896;
            }
            else
            {
                _897 = _889;
            }
            highp vec4 _906;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _905 = _897;
                _905.w = clamp(_897.w + _878.w, 0.0, 1.0);
                _906 = _905;
            }
            else
            {
                _906 = _897;
            }
            highp vec4 _915;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _914 = _906;
                _914.w = clamp(_906.w - _878.w, 0.0, 1.0);
                _915 = _914;
            }
            else
            {
                _915 = _906;
            }
            highp vec4 _916 = _878;
            _916.w = 1.0;
            _917 = _916;
            _918 = _915;
        }
        else
        {
            _917 = _878;
            _918 = _567;
        }
        highp vec3 _928 = _918.xyz + _917.xyz;
        highp vec3 _929 = _918.xyz * _917.xyz;
        bvec3 _931 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _932 = vec3(_931.x ? _917.xyz.x : _329.x, _931.y ? _917.xyz.y : _329.y, _931.z ? _917.xyz.z : _329.z);
        bvec3 _934 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _942;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _940 = (-_918.xyz) * _917.xyz + _928;
            bvec3 _2756 = isnan(_940);
            bvec3 _2757 = isnan(_918.xyz);
            highp vec3 _2758 = max(_940, _918.xyz);
            highp vec3 _2759 = vec3(_2756.x ? _918.xyz.x : _2758.x, _2756.y ? _918.xyz.y : _2758.y, _2756.z ? _918.xyz.z : _2758.z);
            _942 = vec3(_2757.x ? _940.x : _2759.x, _2757.y ? _940.y : _2759.y, _2757.z ? _940.z : _2759.z);
        }
        else
        {
            _942 = vec3(_934.x ? _928.x : _932.x, _934.y ? _928.y : _932.y, _934.z ? _928.z : _932.z);
        }
        bvec3 _944 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _946 = mix(_918.xyz, vec3(_944.x ? _929.x : _942.x, _944.y ? _929.y : _942.y, _944.z ? _929.z : _942.z), vec3(_917.w * _Globals._Main2ndEnableLighting));
        _948 = _917;
        _949 = vec4(_946.x, _946.y, _946.z, _918.w);
    }
    else
    {
        _948 = _Globals._Color2nd;
        _949 = _567;
    }
    bool _954 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1232;
    highp vec4 _1233;
    if (_954)
    {
        bvec2 _960 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _961 = vec2(_960.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _960.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _963 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _964 = vec2(_963.x ? out_var_TEXCOORD1.xy.x : _961.x, _963.y ? out_var_TEXCOORD1.xy.y : _961.y);
        bvec2 _966 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _967 = vec2(_966.x ? out_var_TEXCOORD1.zw.x : _964.x, _966.y ? out_var_TEXCOORD1.zw.y : _964.y);
        bvec2 _969 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _970 = vec2(_969.x ? _664.x : _967.x, _969.y ? _664.y : _967.y);
        highp vec4 _1009 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1010 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1018;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1017 = _970;
            _1017.x = abs(_970.x - 0.5) + 0.5;
            _1018 = _1017;
        }
        else
        {
            _1018 = _970;
        }
        highp vec2 _1019 = _1009.xy;
        highp vec2 _1020 = _1009.zw;
        highp vec2 _1021 = _1018 * _1019 + _1020;
        highp vec2 _1030;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_970.x < 0.5))
        {
            highp vec2 _1029 = _1021;
            _1029.x = 1.0 - _1021.x;
            _1030 = _1029;
        }
        else
        {
            _1030 = _1021;
        }
        highp vec2 _1037;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _665)
        {
            highp vec2 _1036 = _1030;
            _1036.x = 1.0 - _1030.x;
            _1037 = _1036;
        }
        else
        {
            _1037 = _1030;
        }
        highp vec2 _1042;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _665)
        {
            highp vec2 _1041 = _1037;
            _1041.x = -1.0;
            _1042 = _1041;
        }
        else
        {
            _1042 = _1037;
        }
        highp vec2 _1048;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_665))
        {
            highp vec2 _1047 = _1042;
            _1047.x = -1.0;
            _1048 = _1047;
        }
        else
        {
            _1048 = _1042;
        }
        highp float _1051 = sin(_1010);
        highp float _1052 = cos(_1010);
        highp vec2 _1053 = ((_1048 - _1020) / _1019) - vec2(0.5);
        highp float _1054 = _1053.x;
        highp float _1055 = _1053.y;
        highp vec2 _1063 = (vec2(_1054 * _1052 + (-(_1055 * _1051)), _1054 * _1051 + (_1055 * _1052)) + vec2(0.5)) * _1019 + _1020;
        uint _1067 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1071 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1067 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1067);
        highp float _1072 = _1063.x;
        highp float _1073 = _1063.y;
        uint _1080 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1090 = ((mix(vec2(_1072, 1.0 - _1073), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1071 % _1080), float(_1071 / _1080))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1090.y = 1.0 - _1090.y;
        highp vec4 _1095 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1090);
        highp vec4 _1111;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1098 = _1095.x;
            highp float _1099 = _1095.y;
            highp float _1100 = _1095.z;
            highp float _1101 = isnan(_1099) ? _1098 : (isnan(_1098) ? _1099 : min(_1098, _1099));
            highp float _1102 = isnan(_1099) ? _1098 : (isnan(_1098) ? _1099 : max(_1098, _1099));
            highp float _1103 = isnan(_1100) ? _1102 : (isnan(_1102) ? _1100 : min(_1102, _1100));
            highp float _1104 = isnan(_1103) ? _1101 : (isnan(_1101) ? _1103 : max(_1101, _1103));
            _1111 = vec4(1.0, 1.0, 1.0, clamp((_1104 - 0.5) / clamp(fwidth(_1104), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1111 = _1095;
        }
        highp vec4 _1134;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1115 = clamp(_659 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1118 = 0.5 - abs(_1072 - 0.5);
            highp float _1125 = 0.5 - abs(_1073 - 0.5);
            highp vec4 _1133 = _1111;
            _1133.w = _1111.w * (clamp(_1118 / clamp(fwidth(_1118), 9.9999997473787516355514526367188e-05, _1115), 0.0, 1.0) * clamp(_1125 / clamp(fwidth(_1125), 9.9999997473787516355514526367188e-05, _1115), 0.0, 1.0));
            _1134 = _1133;
        }
        else
        {
            _1134 = _1111;
        }
        highp vec4 _1135 = _Globals._Color3rd * _1134;
        highp float _1136 = _1135.w;
        _1135.w = mix(_1136, _1136 * clamp((_449 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1162;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_388 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_388 < 0.0)))
        {
            highp vec4 _1161 = _1135;
            _1161.w = 0.0;
            _1162 = _1161;
        }
        else
        {
            _1162 = _1135;
        }
        highp vec4 _1201;
        highp vec4 _1202;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1173;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1172 = _949;
                _1172.w = _1162.w;
                _1173 = _1172;
            }
            else
            {
                _1173 = _949;
            }
            highp vec4 _1181;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1180 = _1173;
                _1180.w = _1173.w * _1162.w;
                _1181 = _1180;
            }
            else
            {
                _1181 = _1173;
            }
            highp vec4 _1190;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1189 = _1181;
                _1189.w = clamp(_1181.w + _1162.w, 0.0, 1.0);
                _1190 = _1189;
            }
            else
            {
                _1190 = _1181;
            }
            highp vec4 _1199;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1198 = _1190;
                _1198.w = clamp(_1190.w - _1162.w, 0.0, 1.0);
                _1199 = _1198;
            }
            else
            {
                _1199 = _1190;
            }
            highp vec4 _1200 = _1162;
            _1200.w = 1.0;
            _1201 = _1200;
            _1202 = _1199;
        }
        else
        {
            _1201 = _1162;
            _1202 = _949;
        }
        highp vec3 _1212 = _1202.xyz + _1201.xyz;
        highp vec3 _1213 = _1202.xyz * _1201.xyz;
        bvec3 _1215 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1216 = vec3(_1215.x ? _1201.xyz.x : _329.x, _1215.y ? _1201.xyz.y : _329.y, _1215.z ? _1201.xyz.z : _329.z);
        bvec3 _1218 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1226;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1224 = (-_1202.xyz) * _1201.xyz + _1212;
            bvec3 _2781 = isnan(_1224);
            bvec3 _2782 = isnan(_1202.xyz);
            highp vec3 _2783 = max(_1224, _1202.xyz);
            highp vec3 _2784 = vec3(_2781.x ? _1202.xyz.x : _2783.x, _2781.y ? _1202.xyz.y : _2783.y, _2781.z ? _1202.xyz.z : _2783.z);
            _1226 = vec3(_2782.x ? _1224.x : _2784.x, _2782.y ? _1224.y : _2784.y, _2782.z ? _1224.z : _2784.z);
        }
        else
        {
            _1226 = vec3(_1218.x ? _1212.x : _1216.x, _1218.y ? _1212.y : _1216.y, _1218.z ? _1212.z : _1216.z);
        }
        bvec3 _1228 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1230 = mix(_1202.xyz, vec3(_1228.x ? _1213.x : _1226.x, _1228.y ? _1213.y : _1226.y, _1228.z ? _1213.z : _1226.z), vec3(_1201.w * _Globals._Main3rdEnableLighting));
        _1232 = _1201;
        _1233 = vec4(_1230.x, _1230.y, _1230.z, _1202.w);
    }
    else
    {
        _1232 = _Globals._Color3rd;
        _1233 = _949;
    }
    highp vec4 _1273;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1244 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1249;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1248 = _1233;
            _1248.w = _1244;
            _1249 = _1248;
        }
        else
        {
            _1249 = _1233;
        }
        highp vec4 _1256;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1255 = _1249;
            _1255.w = _1249.w * _1244;
            _1256 = _1255;
        }
        else
        {
            _1256 = _1249;
        }
        highp vec4 _1264;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1263 = _1256;
            _1263.w = clamp(_1256.w + _1244, 0.0, 1.0);
            _1264 = _1263;
        }
        else
        {
            _1264 = _1256;
        }
        highp vec4 _1272;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1271 = _1264;
            _1271.w = clamp(_1264.w - _1244, 0.0, 1.0);
            _1272 = _1271;
        }
        else
        {
            _1272 = _1264;
        }
        _1273 = _1272;
    }
    else
    {
        _1273 = _1233;
    }
    highp vec4 _1368;
    highp float _1369;
    if ((_379 & 1) != 0)
    {
        highp vec4 _1277 = _1273;
        _1277.w = 1.0;
        highp vec2 _1283 = roundEven(_Globals._DissolveParams.xy);
        highp float _1284 = _1283.x;
        highp vec4 _1357;
        highp float _1358;
        if (_1284 != 0.0)
        {
            highp float _1300;
            highp float _1301;
            if (_1284 == 1.0)
            {
                _1300 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1301 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1300 = 0.0;
                _1301 = 1.0;
            }
            highp float _1332;
            highp float _1333;
            if (_1284 == 2.0)
            {
                highp vec2 _1310 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1321 = (_1283.y == 1.0) ? (vec2(_1310.x * cos(_Globals._DissolvePos.w) + (-(_1310.y * sin(_Globals._DissolvePos.w))), _336) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1332 = 1.0 - clamp(abs(_1321 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1333 = _1301 * float(_1321 > _Globals._DissolveParams.z);
            }
            else
            {
                _1332 = _1300;
                _1333 = _1301;
            }
            highp float _1354;
            highp float _1355;
            if (_1284 == 3.0)
            {
                highp float _1343 = (_1283.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1354 = 1.0 - clamp(abs(_1343 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1355 = _1333 * float(_1343 > _Globals._DissolveParams.z);
            }
            else
            {
                _1354 = _1332;
                _1355 = _1333;
            }
            highp vec4 _1356 = _1277;
            _1356.w = _1355;
            _1357 = _1356;
            _1358 = _1354;
        }
        else
        {
            _1357 = _1277;
            _1358 = 0.0;
        }
        highp vec4 _1364;
        if ((_379 & 2) != 0)
        {
            highp vec4 _1363 = _1357;
            _1363.w = 1.0 - _1357.w;
            _1364 = _1363;
        }
        else
        {
            _1364 = _1357;
        }
        highp vec4 _1367 = _1364;
        _1367.w = _1364.w * _1273.w;
        _1368 = _1367;
        _1369 = _1358;
    }
    else
    {
        _1368 = _1273;
        _1369 = 0.0;
    }
    if ((_1368.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1550;
    highp float _1551;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1402 = clamp(dot(_440, mix(_660, _657, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1405 = clamp(dot(_440, mix(_660, _657, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1408 = clamp(dot(_440, mix(_660, _657, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1412 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1415 = clamp(_439 + distance(_440, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1418 = mix(1.0, _1415, _Globals._ShadowReceive);
        highp float _1419 = _1402 * _1418;
        highp float _1422 = mix(1.0, _1415, _Globals._Shadow2ndReceive);
        highp float _1426 = mix(1.0, _1415, _Globals._Shadow3rdReceive);
        highp float _1437 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1438 = clamp(_1437, 0.0, 1.0);
        highp float _1440 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1453 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1467 = clamp(_1437 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1480 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1495 = (_388 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1496 = clamp((_1402 * _1418 + (-_1438)) / clamp(fwidth(_1419) * _1412 + (_1440 - _1438), 0.0, 1.0), 0.0, 1.0) * _1495;
        highp vec3 _1528 = mix(mix(_1368.xyz * _Globals._ShadowColor.xyz, (_1368.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1405 * _1422 + (-_1453)) / clamp(fwidth(_1405 * _1422) * _1412 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1453), 0.0, 1.0), 0.0, 1.0) * _1495)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1368.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1408 * _1426 + (-_1480)) / clamp(fwidth(_1408 * _1426) * _1412 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1480), 0.0, 1.0), 0.0, 1.0) * _1495)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1534 = _1368.xyz * out_var_TEXCOORD6;
        highp vec3 _1540 = mix(mix(_1528, _1528 * _1368.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1368.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2786 = isnan(_1540);
        bvec3 _2787 = isnan(_1534);
        highp vec3 _2788 = min(_1540, _1534);
        highp vec3 _2789 = vec3(_2786.x ? _1534.x : _2788.x, _2786.y ? _1534.y : _2788.y, _2786.z ? _1534.z : _2788.z);
        highp vec3 _1548 = mix(mix(vec3(_2787.x ? _1540.x : _2789.x, _2787.y ? _1540.y : _2789.y, _2787.z ? _1540.z : _2789.z), _1534, _Globals._ShadowBorderColor.xyz * (clamp((_1402 * _1418 + (-_1467)) / clamp(fwidth(_1419) * _1412 + (_1440 - _1467), 0.0, 1.0), 0.0, 1.0) * _1495)), _1534, vec3(mix(1.0, _1496, _Globals._ShadowStrength)));
        _1550 = vec4(_1548.x, _1548.y, _1548.z, _1368.w);
        _1551 = _1496;
    }
    else
    {
        highp vec3 _1384 = _1368.xyz * out_var_TEXCOORD6;
        _1550 = vec4(_1384.x, _1384.y, _1384.z, _1368.w);
        _1551 = 1.0;
    }
    highp vec3 _1554 = vec3(_Globals._LightMaxLimit);
    bvec3 _2791 = isnan(out_var_TEXCOORD6);
    bvec3 _2792 = isnan(_1554);
    highp vec3 _2793 = min(out_var_TEXCOORD6, _1554);
    highp vec3 _2794 = vec3(_2791.x ? _1554.x : _2793.x, _2791.y ? _1554.y : _2793.y, _2791.z ? _1554.z : _2793.z);
    highp vec3 _1555 = vec3(_2792.x ? out_var_TEXCOORD6.x : _2794.x, _2792.y ? out_var_TEXCOORD6.y : _2794.y, _2792.z ? out_var_TEXCOORD6.z : _2794.z);
    highp float _1556 = clamp(_1551, 0.0, 1.0);
    highp vec3 _1558 = _1368.xyz * _Globals._LightMaxLimit;
    bvec3 _2796 = isnan(_1550.xyz);
    bvec3 _2797 = isnan(_1558);
    highp vec3 _2798 = min(_1550.xyz, _1558);
    highp vec3 _2799 = vec3(_2796.x ? _1558.x : _2798.x, _2796.y ? _1558.y : _2798.y, _2796.z ? _1558.z : _2798.z);
    highp vec3 _1559 = vec3(_2797.x ? _1550.xyz.x : _2799.x, _2797.y ? _1550.xyz.y : _2799.y, _2797.z ? _1550.xyz.z : _2799.z);
    highp vec4 _1593;
    if (_670)
    {
        highp vec3 _1563 = _1559.xyz;
        highp vec3 _1573 = _1563 + _948.xyz;
        highp vec3 _1574 = _1563 * _948.xyz;
        bvec3 _1576 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1577 = vec3(_1576.x ? _948.xyz.x : _329.x, _1576.y ? _948.xyz.y : _329.y, _1576.z ? _948.xyz.z : _329.z);
        bvec3 _1579 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1587;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1585 = (-_1563) * _948.xyz + _1573;
            bvec3 _2801 = isnan(_1585);
            bvec3 _2802 = isnan(_1563);
            highp vec3 _2803 = max(_1585, _1563);
            highp vec3 _2804 = vec3(_2801.x ? _1563.x : _2803.x, _2801.y ? _1563.y : _2803.y, _2801.z ? _1563.z : _2803.z);
            _1587 = vec3(_2802.x ? _1585.x : _2804.x, _2802.y ? _1585.y : _2804.y, _2802.z ? _1585.z : _2804.z);
        }
        else
        {
            _1587 = vec3(_1579.x ? _1573.x : _1577.x, _1579.y ? _1573.y : _1577.y, _1579.z ? _1573.z : _1577.z);
        }
        bvec3 _1589 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1591 = mix(_1563, vec3(_1589.x ? _1574.x : _1587.x, _1589.y ? _1574.y : _1587.y, _1589.z ? _1574.z : _1587.z), vec3((-_948.w) * _Globals._Main2ndEnableLighting + _948.w));
        _1593 = vec4(_1591.x, _1591.y, _1591.z, _1550.w);
    }
    else
    {
        _1593 = vec4(_1559.x, _1559.y, _1559.z, _1550.w);
    }
    highp vec4 _1626;
    if (_954)
    {
        highp vec3 _1606 = _1593.xyz + _1232.xyz;
        highp vec3 _1607 = _1593.xyz * _1232.xyz;
        bvec3 _1609 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1610 = vec3(_1609.x ? _1232.xyz.x : _329.x, _1609.y ? _1232.xyz.y : _329.y, _1609.z ? _1232.xyz.z : _329.z);
        bvec3 _1612 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1620;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1618 = (-_1593.xyz) * _1232.xyz + _1606;
            bvec3 _2806 = isnan(_1618);
            bvec3 _2807 = isnan(_1593.xyz);
            highp vec3 _2808 = max(_1618, _1593.xyz);
            highp vec3 _2809 = vec3(_2806.x ? _1593.xyz.x : _2808.x, _2806.y ? _1593.xyz.y : _2808.y, _2806.z ? _1593.xyz.z : _2808.z);
            _1620 = vec3(_2807.x ? _1618.x : _2809.x, _2807.y ? _1618.y : _2809.y, _2807.z ? _1618.z : _2809.z);
        }
        else
        {
            _1620 = vec3(_1612.x ? _1606.x : _1610.x, _1612.y ? _1606.y : _1610.y, _1612.z ? _1606.z : _1610.z);
        }
        bvec3 _1622 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1624 = mix(_1593.xyz, vec3(_1622.x ? _1607.x : _1620.x, _1622.y ? _1607.y : _1620.y, _1622.z ? _1607.z : _1620.z), vec3((-_1232.w) * _Globals._Main3rdEnableLighting + _1232.w));
        _1626 = vec4(_1624.x, _1624.y, _1624.z, _1593.w);
    }
    else
    {
        _1626 = _1593;
    }
    highp vec4 _1672;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1642 = pow(clamp(1.0 - abs(dot(mix(_660, _657, vec3(_Globals._RimShadeNormalStrength)), _456)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1651 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1670 = mix(_1626.xyz, _1626.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1642 - _1651) / clamp(fwidth(_1642) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1651), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1672 = vec4(_1670.x, _1670.y, _1670.z, _1626.w);
    }
    else
    {
        _1672 = _1626;
    }
    highp vec4 _1745;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1696 = dot(normalize(((-_456) * _Globals._BacklightViewStrength) + _440), mix(_660, _657, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1706;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1706 = _1696 * clamp(_439 + distance(_440, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1706 = _1696;
        }
        highp float _1715 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1743 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1368.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_388 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_456, _440) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1706 - _1715) / clamp(fwidth(_1706) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1715), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1555 + _1672.xyz;
        _1745 = vec4(_1743.x, _1743.y, _1743.z, _1672.w);
    }
    else
    {
        _1745 = _1672;
    }
    highp vec3 _1748 = _1745.xyz * _1745.w;
    highp vec4 _2001;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1759 = dFdx(_657);
        highp vec3 _1760 = abs(_1759);
        highp vec3 _1761 = dFdy(_657);
        highp vec3 _1762 = abs(_1761);
        highp float _1763 = dot(_1760, _1760);
        highp float _1764 = dot(_1762, _1762);
        highp float _1765 = isnan(_1764) ? _1763 : (isnan(_1763) ? _1764 : max(_1763, _1764));
        highp float _1768 = (_1765 / (_1765 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1771 = clamp(1.0 - (isnan(_1768) ? 0.0 : (isnan(0.0) ? _1768 : max(0.0, _1768))), 0.0, 1.0);
        highp float _1772 = isnan(_1771) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1771 : min(_Globals._Smoothness, _1771));
        highp float _1773 = 1.0 - _1772;
        highp float _1774 = _1773 * _1773;
        highp vec3 _1777 = _1748.xyz;
        highp vec3 _1779 = _1777 - (_1777 * _Globals._Metallic);
        highp vec3 _1785 = mix(vec3(_Globals._Reflectance), _1368.xyz, vec3(_Globals._Metallic));
        highp vec4 _1787 = _Globals._ReflectionColor;
        highp vec4 _1796;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1795 = _1787;
            _1795.w = _1787.w * _1745.w;
            _1796 = _1795;
        }
        else
        {
            _1796 = _1787;
        }
        highp vec4 _1897;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1869;
            do
            {
                highp vec3 _1807 = mix(_660, _657, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1809 = normalize(_456 + _440);
                highp float _1811 = clamp(dot(_1807, _1809), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1820 = pow(_1811, 1.0 / _1774);
                    highp float _1827 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1869 = vec3(clamp((_1820 - _1827) / clamp(fwidth(_1820) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1827), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1839 = clamp(dot(_1807, _456), 0.0, 1.0);
                highp float _1841 = clamp(dot(_1807, _440), 0.0, 1.0);
                highp float _1844 = isnan(0.00200000009499490261077880859375) ? _1774 : (isnan(_1774) ? 0.00200000009499490261077880859375 : max(_1774, 0.00200000009499490261077880859375));
                highp float _1845 = 1.0 - _1844;
                highp float _1849 = _1844 * _1844;
                highp float _1852 = (_1811 * _1849 + (-_1811)) * _1811 + 1.0;
                highp float _1860 = 1.0 - clamp(dot(_440, _1809), 0.0, 1.0);
                _1869 = (_1785 + ((((((vec3(1.0) - _1785) * _1860) * _1860) * _1860) * _1860) * _1860)) * (((0.5 / ((_1841 * (_1839 * _1845 + _1844) + (_1839 * (_1841 * _1845 + _1844))) + 9.9999997473787516355514526367188e-06)) * (_1849 / (_1852 * _1852 + 1.0000000116860974230803549289703e-07))) * _1841);
                break;
            } while(false);
            highp vec3 _1870 = _1779.xyz;
            highp vec3 _1872 = _1796.xyz * _1555;
            highp vec3 _1877 = _1796.xyz * _1555 + _1870;
            highp vec3 _1878 = _1870 * _1872;
            bvec3 _1880 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1881 = vec3(_1880.x ? _1872.x : _329.x, _1880.y ? _1872.y : _329.y, _1880.z ? _1872.z : _329.z);
            bvec3 _1883 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1891;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1889 = (-_1870) * _1872 + _1877;
                bvec3 _2831 = isnan(_1889);
                bvec3 _2832 = isnan(_1870);
                highp vec3 _2833 = max(_1889, _1870);
                highp vec3 _2834 = vec3(_2831.x ? _1870.x : _2833.x, _2831.y ? _1870.y : _2833.y, _2831.z ? _1870.z : _2833.z);
                _1891 = vec3(_2832.x ? _1889.x : _2834.x, _2832.y ? _1889.y : _2834.y, _2832.z ? _1889.z : _2834.z);
            }
            else
            {
                _1891 = vec3(_1883.x ? _1877.x : _1881.x, _1883.y ? _1877.y : _1881.y, _1883.z ? _1877.z : _1881.z);
            }
            bvec3 _1893 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1895 = mix(_1870, vec3(_1893.x ? _1878.x : _1891.x, _1893.y ? _1878.y : _1891.y, _1893.z ? _1878.z : _1891.z), _1869 * _1796.w);
            _1897 = vec4(_1895.x, _1895.y, _1895.z, _1745.w);
        }
        else
        {
            _1897 = vec4(_1779.x, _1779.y, _1779.z, _1745.w);
        }
        highp vec4 _2000;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1919 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1926 = reflect(-_456, mix(_660, _657, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1929 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1926, _1773 * ((-4.19999980926513671875) * _1773 + 10.19999980926513671875));
            highp vec3 _1949 = ((_1929.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1929.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1555, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1955 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1926, _1773 * 8.0).xyz * 1.0;
            highp float _1966 = 1.0 - _659;
            highp vec3 _1980 = _1897.xyz + _1796.xyz;
            highp vec3 _1981 = _1897.xyz * _1796.xyz;
            bvec3 _1983 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1984 = vec3(_1983.x ? _1796.xyz.x : _329.x, _1983.y ? _1796.xyz.y : _329.y, _1983.z ? _1796.xyz.z : _329.z);
            bvec3 _1986 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1994;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1992 = (-_1897.xyz) * _1796.xyz + _1980;
                bvec3 _2836 = isnan(_1992);
                bvec3 _2837 = isnan(_1897.xyz);
                highp vec3 _2838 = max(_1992, _1897.xyz);
                highp vec3 _2839 = vec3(_2836.x ? _1897.xyz.x : _2838.x, _2836.y ? _1897.xyz.y : _2838.y, _2836.z ? _1897.xyz.z : _2838.z);
                _1994 = vec3(_2837.x ? _1992.x : _2839.x, _2837.y ? _1992.y : _2839.y, _2837.z ? _1992.z : _2839.z);
            }
            else
            {
                _1994 = vec3(_1986.x ? _1980.x : _1984.x, _1986.y ? _1980.y : _1984.y, _1986.z ? _1980.z : _1984.z);
            }
            bvec3 _1996 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1998 = mix(_1897.xyz, vec3(_1996.x ? _1981.x : _1994.x, _1996.y ? _1981.y : _1994.y, _1996.z ? _1981.z : _1994.z), ((vec3(_1919.x ? _1949.x : _1955.x, _1919.y ? _1949.y : _1955.y, _1919.z ? _1949.z : _1955.z) * (1.0 / (_1774 * _1774 + 1.0))) * mix(_1785, vec3(clamp(_1772 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1966 * _1966) * _1966) * _1966) * _1966))) * _1796.w);
            _2000 = vec4(_1998.x, _1998.y, _1998.z, _1897.w);
        }
        else
        {
            _2000 = _1897;
        }
        _2001 = _2000;
    }
    else
    {
        _2001 = vec4(_1748.x, _1748.y, _1748.z, _1745.w);
    }
    highp vec4 _2164;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2046;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2023 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _500 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2023.w = _2023.w * _2023.x;
            highp vec2 _2034 = ((_2023.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2035 = vec3(_2034.x, _2034.y, _335.z);
            highp vec2 _2036 = _2034.xy;
            _2035.z = sqrt(1.0 - clamp(dot(_2036, _2036), 0.0, 1.0));
            highp vec3 _2043 = normalize(_465 * _2035);
            highp vec3 _2044 = -_2043;
            _2046 = vec3(_655.x ? _2044.x : _2043.x, _655.y ? _2044.y : _2043.y, _655.z ? _2044.z : _2043.z);
        }
        else
        {
            _2046 = mix(_660, _657, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2063 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2064 = vec3(_2063.x ? _456.x : _356.x, _2063.y ? _456.y : _356.y, _2063.z ? _456.z : _356.z);
        bvec3 _2065 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2066 = vec3(_2065.x ? vec3(0.0, 1.0, 0.0).x : _363.x, _2065.y ? vec3(0.0, 1.0, 0.0).y : _363.y, _2065.z ? vec3(0.0, 1.0, 0.0).z : _363.z);
        highp vec3 _2070 = normalize(_2066 - (_2064 * dot(_2064, _2066)));
        highp vec4 _2092 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2046) * mat3(cross(_2064, _2070), _2070, _2064)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2098 = mix(_2092.xyz, _2092.xyz * _1555, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2099 = vec4(_2098.x, _2098.y, _2098.z, _2092.w);
        highp float _2104 = mix(_2092.w, _2092.w * _1556, _Globals._MatCapShadowMask);
        _2099.w = _2104;
        highp vec4 _2114;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2113 = _2099;
            _2113.w = _2104 * _2001.w;
            _2114 = _2113;
        }
        else
        {
            _2114 = _2099;
        }
        highp vec4 _2128 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _500 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2137 = mix(_2114.xyz, _2114.xyz * _1368.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2144 = _2001.xyz + _2137;
        highp vec3 _2145 = _2001.xyz * _2137;
        bvec3 _2147 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2148 = vec3(_2147.x ? _2137.x : _329.x, _2147.y ? _2137.y : _329.y, _2147.z ? _2137.z : _329.z);
        bvec3 _2150 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2158;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2156 = (-_2001.xyz) * _2137 + _2144;
            bvec3 _2841 = isnan(_2156);
            bvec3 _2842 = isnan(_2001.xyz);
            highp vec3 _2843 = max(_2156, _2001.xyz);
            highp vec3 _2844 = vec3(_2841.x ? _2001.xyz.x : _2843.x, _2841.y ? _2001.xyz.y : _2843.y, _2841.z ? _2001.xyz.z : _2843.z);
            _2158 = vec3(_2842.x ? _2156.x : _2844.x, _2842.y ? _2156.y : _2844.y, _2842.z ? _2156.z : _2844.z);
        }
        else
        {
            _2158 = vec3(_2150.x ? _2144.x : _2148.x, _2150.y ? _2144.y : _2148.y, _2150.z ? _2144.z : _2148.z);
        }
        bvec3 _2160 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2162 = mix(_2001.xyz, vec3(_2160.x ? _2145.x : _2158.x, _2160.y ? _2145.y : _2158.y, _2160.z ? _2145.z : _2158.z), _2128.xyz * (_Globals._MatCapBlend * ((_388 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2114.w)));
        _2164 = vec4(_2162.x, _2162.y, _2162.z, _2001.w);
    }
    else
    {
        _2164 = _2001;
    }
    highp vec4 _2326;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2209;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2186 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _500 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2186.w = _2186.w * _2186.x;
            highp vec2 _2197 = ((_2186.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2198 = vec3(_2197.x, _2197.y, _335.z);
            highp vec2 _2199 = _2197.xy;
            _2198.z = sqrt(1.0 - clamp(dot(_2199, _2199), 0.0, 1.0));
            highp vec3 _2206 = normalize(_465 * _2198);
            highp vec3 _2207 = -_2206;
            _2209 = vec3(_655.x ? _2207.x : _2206.x, _655.y ? _2207.y : _2206.y, _655.z ? _2207.z : _2206.z);
        }
        else
        {
            _2209 = mix(_660, _657, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2225 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2226 = vec3(_2225.x ? _456.x : _356.x, _2225.y ? _456.y : _356.y, _2225.z ? _456.z : _356.z);
        bvec3 _2227 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2228 = vec3(_2227.x ? vec3(0.0, 1.0, 0.0).x : _363.x, _2227.y ? vec3(0.0, 1.0, 0.0).y : _363.y, _2227.z ? vec3(0.0, 1.0, 0.0).z : _363.z);
        highp vec3 _2232 = normalize(_2228 - (_2226 * dot(_2226, _2228)));
        highp vec4 _2254 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2209 * mat3(cross(_2226, _2232), _2232, _2226)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2255 = _2254.xyz;
        highp vec3 _2260 = mix(_2255, _2255 * _1555, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2261 = vec4(_2260.x, _2260.y, _2260.z, _2254.w);
        highp float _2262 = _2254.w;
        highp float _2266 = mix(_2262, _2262 * _1556, _Globals._MatCap2ndShadowMask);
        _2261.w = _2266;
        highp vec4 _2276;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2275 = _2261;
            _2275.w = _2266 * _2164.w;
            _2276 = _2275;
        }
        else
        {
            _2276 = _2261;
        }
        highp vec4 _2290 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _500 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2299 = mix(_2276.xyz, _2276.xyz * _1368.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2306 = _2164.xyz + _2299;
        highp vec3 _2307 = _2164.xyz * _2299;
        bvec3 _2309 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2310 = vec3(_2309.x ? _2299.x : _329.x, _2309.y ? _2299.y : _329.y, _2309.z ? _2299.z : _329.z);
        bvec3 _2312 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2320;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2318 = (-_2164.xyz) * _2299 + _2306;
            bvec3 _2846 = isnan(_2318);
            bvec3 _2847 = isnan(_2164.xyz);
            highp vec3 _2848 = max(_2318, _2164.xyz);
            highp vec3 _2849 = vec3(_2846.x ? _2164.xyz.x : _2848.x, _2846.y ? _2164.xyz.y : _2848.y, _2846.z ? _2164.xyz.z : _2848.z);
            _2320 = vec3(_2847.x ? _2318.x : _2849.x, _2847.y ? _2318.y : _2849.y, _2847.z ? _2318.z : _2849.z);
        }
        else
        {
            _2320 = vec3(_2312.x ? _2306.x : _2310.x, _2312.y ? _2306.y : _2310.y, _2312.z ? _2306.z : _2310.z);
        }
        bvec3 _2322 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2324 = mix(_2164.xyz, vec3(_2322.x ? _2307.x : _2320.x, _2322.y ? _2307.y : _2320.y, _2322.z ? _2307.z : _2320.z), _2290.xyz * (_Globals._MatCap2ndBlend * ((_388 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2276.w)));
        _2326 = vec4(_2324.x, _2324.y, _2324.z, _2164.w);
    }
    else
    {
        _2326 = _2164;
    }
    highp vec4 _2482;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2345 = mix(_660, _657, vec3(_Globals._RimNormalStrength));
        highp float _2349 = dot(_440, _2345) * 0.5 + 0.5;
        highp float _2372 = (_388 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2345, _456)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2376 = mix(_2372, _2372 * clamp((_2349 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2377 = _2372 * clamp(((1.0 - _2349) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2387 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2396 = clamp((_2376 - _2387) / clamp(fwidth(_2376) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2387), 0.0, 1.0), 0.0, 1.0);
        highp float _2403 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2413 = clamp((_2377 * _Globals._RimDirStrength + (-_2403)) / clamp(fwidth(_2377 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2403), 0.0, 1.0), 0.0, 1.0);
        highp float _2417 = mix(_2396, _2396 * _1556, _Globals._RimShadowMask);
        highp float _2419 = mix(_2413, _2413 * _1556, _Globals._RimShadowMask);
        highp float _2428;
        highp float _2429;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2428 = _2419 * _2326.w;
            _2429 = _2417 * _2326.w;
        }
        else
        {
            _2428 = _2419;
            _2429 = _2417;
        }
        highp vec3 _2435 = vec3(1.0 - _Globals._RimEnableLighting) + (_1555 * _Globals._RimEnableLighting);
        highp vec3 _2437 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1368.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2438 = _2437 * _2435;
        highp vec3 _2444 = _2437 * _2435 + _2326.xyz;
        highp vec3 _2445 = _2326.xyz * _2438;
        bvec3 _2447 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2448 = vec3(_2447.x ? _2438.x : _329.x, _2447.y ? _2438.y : _329.y, _2447.z ? _2438.z : _329.z);
        bvec3 _2450 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2452 = _Globals._RimBlendMode == 2u;
        highp vec3 _2458;
        if (_2452)
        {
            highp vec3 _2456 = (-_2326.xyz) * _2438 + _2444;
            bvec3 _2851 = isnan(_2456);
            bvec3 _2852 = isnan(_2326.xyz);
            highp vec3 _2853 = max(_2456, _2326.xyz);
            highp vec3 _2854 = vec3(_2851.x ? _2326.xyz.x : _2853.x, _2851.y ? _2326.xyz.y : _2853.y, _2851.z ? _2326.xyz.z : _2853.z);
            _2458 = vec3(_2852.x ? _2456.x : _2854.x, _2852.y ? _2456.y : _2854.y, _2852.z ? _2456.z : _2854.z);
        }
        else
        {
            _2458 = vec3(_2450.x ? _2444.x : _2448.x, _2450.y ? _2444.y : _2448.y, _2450.z ? _2444.z : _2448.z);
        }
        bvec3 _2460 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2463 = mix(_2326.xyz, vec3(_2460.x ? _2445.x : _2458.x, _2460.y ? _2445.y : _2458.y, _2460.z ? _2445.z : _2458.z), vec3(_2429 * _Globals._RimColor.w)).xyz;
        highp vec3 _2465 = _Globals._RimIndirColor.xyz * _2435;
        highp vec3 _2469 = _Globals._RimIndirColor.xyz * _2435 + _2463;
        highp vec3 _2470 = _2463 * _2465;
        highp vec3 _2471 = vec3(_2447.x ? _2465.x : _329.x, _2447.y ? _2465.y : _329.y, _2447.z ? _2465.z : _329.z);
        highp vec3 _2478;
        if (_2452)
        {
            highp vec3 _2476 = (-_2463) * _2465 + _2469;
            bvec3 _2856 = isnan(_2476);
            bvec3 _2857 = isnan(_2463);
            highp vec3 _2858 = max(_2476, _2463);
            highp vec3 _2859 = vec3(_2856.x ? _2463.x : _2858.x, _2856.y ? _2463.y : _2858.y, _2856.z ? _2463.z : _2858.z);
            _2478 = vec3(_2857.x ? _2476.x : _2859.x, _2857.y ? _2476.y : _2859.y, _2857.z ? _2476.z : _2859.z);
        }
        else
        {
            _2478 = vec3(_2450.x ? _2469.x : _2471.x, _2450.y ? _2469.y : _2471.y, _2450.z ? _2469.z : _2471.z);
        }
        highp vec3 _2480 = mix(_2463, vec3(_2460.x ? _2470.x : _2478.x, _2460.y ? _2470.y : _2478.y, _2460.z ? _2470.z : _2478.z), vec3(_2428 * _Globals._RimIndirColor.w));
        _2482 = vec4(_2480.x, _2480.y, _2480.z, _2326.w);
    }
    else
    {
        _2482 = _2326;
    }
    highp vec4 _2549;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2496 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _444, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2510 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2516;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2516 = roundEven(_2510);
        }
        else
        {
            _2516 = _2510;
        }
        highp vec3 _2525 = mix(_2496, _2496 * _1368.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2529 = _2482.xyz + _2525;
        highp vec3 _2530 = _2482.xyz * _2525;
        bvec3 _2532 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2533 = vec3(_2532.x ? _2525.x : _329.x, _2532.y ? _2525.y : _329.y, _2532.z ? _2525.z : _329.z);
        bvec3 _2535 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2543;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2541 = (-_2482.xyz) * _2525 + _2529;
            bvec3 _2861 = isnan(_2541);
            bvec3 _2862 = isnan(_2482.xyz);
            highp vec3 _2863 = max(_2541, _2482.xyz);
            highp vec3 _2864 = vec3(_2861.x ? _2482.xyz.x : _2863.x, _2861.y ? _2482.xyz.y : _2863.y, _2861.z ? _2482.xyz.z : _2863.z);
            _2543 = vec3(_2862.x ? _2541.x : _2864.x, _2862.y ? _2541.y : _2864.y, _2862.z ? _2541.z : _2864.z);
        }
        else
        {
            _2543 = vec3(_2535.x ? _2529.x : _2533.x, _2535.y ? _2529.y : _2533.y, _2535.z ? _2529.z : _2533.z);
        }
        bvec3 _2545 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2547 = mix(_2482.xyz, vec3(_2545.x ? _2530.x : _2543.x, _2545.y ? _2530.y : _2543.y, _2545.z ? _2530.z : _2543.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2516, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2482.w));
        _2549 = vec4(_2547.x, _2547.y, _2547.z, _2482.w);
    }
    else
    {
        _2549 = _2482;
    }
    highp vec4 _2616;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2563 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _444, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2577 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2583;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2583 = roundEven(_2577);
        }
        else
        {
            _2583 = _2577;
        }
        highp vec3 _2592 = mix(_2563, _2563 * _1368.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2596 = _2549.xyz + _2592;
        highp vec3 _2597 = _2549.xyz * _2592;
        bvec3 _2599 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2600 = vec3(_2599.x ? _2592.x : _329.x, _2599.y ? _2592.y : _329.y, _2599.z ? _2592.z : _329.z);
        bvec3 _2602 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2610;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2608 = (-_2549.xyz) * _2592 + _2596;
            bvec3 _2866 = isnan(_2608);
            bvec3 _2867 = isnan(_2549.xyz);
            highp vec3 _2868 = max(_2608, _2549.xyz);
            highp vec3 _2869 = vec3(_2866.x ? _2549.xyz.x : _2868.x, _2866.y ? _2549.xyz.y : _2868.y, _2866.z ? _2549.xyz.z : _2868.z);
            _2610 = vec3(_2867.x ? _2608.x : _2869.x, _2867.y ? _2608.y : _2869.y, _2867.z ? _2608.z : _2869.z);
        }
        else
        {
            _2610 = vec3(_2602.x ? _2596.x : _2600.x, _2602.y ? _2596.y : _2600.y, _2602.z ? _2596.z : _2600.z);
        }
        bvec3 _2612 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2614 = mix(_2549.xyz, vec3(_2612.x ? _2597.x : _2610.x, _2612.y ? _2597.y : _2610.y, _2612.z ? _2597.z : _2610.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2583, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2549.w));
        _2616 = vec4(_2614.x, _2614.y, _2614.z, _2549.w);
    }
    else
    {
        _2616 = _2549;
    }
    bvec3 _2626 = bvec3(_388 < 0.0);
    highp vec3 _2627 = (_2616.xyz + ((_Globals._DissolveColor.xyz * _1369) * _2616.w)).xyz;
    highp vec3 _2635 = mix(_2627, _Globals._BackfaceColor.xyz * _1555, vec3(_Globals._BackfaceColor.w));
    highp float _2656 = (_388 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _449) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2670 = vec3(_2626.x ? _2635.x : _2627.x, _2626.y ? _2635.y : _2627.y, _2626.z ? _2635.z : _2627.z).xyz;
    highp vec3 _2681 = mix(_2670, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2670, vec3(pow(clamp(1.0 - abs(dot(_660, _456)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2656));
    highp vec4 _2682 = vec4(_2681.x, _2681.y, _2681.z, _2616.w);
    highp float _2684 = mix(_2616.w, _2616.w * _Globals._DistanceFadeColor.w, _2656);
    _2682.w = _2684;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2684, _2682, vec4(out_var_TEXCOORD9));
}
