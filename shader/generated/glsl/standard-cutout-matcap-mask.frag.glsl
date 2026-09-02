#version 300 es
precision mediump float;
precision highp int;

vec3 _325;
vec3 _331;
float _332;

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
    highp vec3 _352 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _359 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _375 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _384 = float(gl_FrontFacing ? 1 : (-1));
    highp float _435;
    do
    {
        highp vec3 _391 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _392 = _391.xy;
        highp float _398 = _391.z;
        if ((any(lessThan(_392, vec2(0.0))) || any(greaterThan(_392, vec2(1.0)))) || (_398 > 1.0))
        {
            _435 = 1.0;
            break;
        }
        highp float _408 = _398 + _Globals.uShadowBias;
        _435 = (((step(_408, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _392), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_408, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _392), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_408, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _392), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_408, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _392), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _436 = normalize(out_var_TEXCOORD7);
    highp vec3 _440 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _444 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _445 = length(_444);
    highp vec3 _452 = normalize(_444);
    highp mat3 _461 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _466 = bvec2(_384 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _467 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _480 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _481 = sin(_480);
    highp float _482 = cos(_480);
    highp vec2 _483 = (vec2(_466.x ? _467.x : out_var_TEXCOORD0.xy.x, _466.y ? _467.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _484 = _483.x;
    highp float _485 = _483.y;
    highp vec2 _496 = (vec2(_484 * _482 + (-(_485 * _481)), _484 * _481 + (_485 * _482)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _500 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _496);
    highp vec3 _507 = pow(abs(_500.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _508 = _507.z;
    highp float _509 = _507.y;
    bvec4 _511 = bvec4(_508 > _509);
    highp vec4 _512 = vec4(_508, _509, -1.0, 0.666666686534881591796875);
    highp vec4 _513 = vec4(_509, _508, 0.0, -0.3333333432674407958984375);
    highp vec4 _514 = vec4(_511.x ? _512.x : _513.x, _511.y ? _512.y : _513.y, _511.z ? _512.z : _513.z, _511.w ? _512.w : _513.w);
    highp float _515 = _514.x;
    highp float _516 = _507.x;
    bvec4 _518 = bvec4(_515 > _516);
    highp vec4 _521 = vec4(_515, _514.yw, _516);
    highp vec4 _523 = vec4(_516, _514.yz, _515);
    highp vec4 _524 = vec4(_518.x ? _521.x : _523.x, _518.y ? _521.y : _523.y, _518.z ? _521.z : _523.z, _518.w ? _521.w : _523.w);
    highp float _529 = _524.x - (isnan(_524.y) ? _524.w : (isnan(_524.w) ? _524.y : min(_524.w, _524.y)));
    highp float _542 = clamp((_529 / (_524.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _545 = clamp(_524.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _559 = vec3((-_545) * _542 + _545) + (clamp(abs((fract(vec3(abs(_524.z + ((_524.w - _524.y) / (6.0 * _529 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_545 * _542));
    highp vec4 _563 = vec4(_559.x, _559.y, _559.z, _500.w) * _Globals._Color;
    highp vec3 _595;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _576 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _496 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _576.w = _576.w * _576.x;
        highp vec2 _587 = ((_576.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _588 = vec3(_587.x, _587.y, _331.z);
        highp vec2 _589 = _587.xy;
        _588.z = sqrt(1.0 - clamp(dot(_589, _589), 0.0, 1.0));
        _595 = _588;
    }
    else
    {
        _595 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _644;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _604 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _605 = vec2(_604.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _604.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _607 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _608 = vec2(_607.x ? out_var_TEXCOORD1.xy.x : _605.x, _607.y ? out_var_TEXCOORD1.xy.y : _605.y);
        bvec2 _610 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _620 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_610.x ? out_var_TEXCOORD1.zw.x : _608.x, _610.y ? out_var_TEXCOORD1.zw.y : _608.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _620.w = _620.w * _620.x;
        highp vec2 _632 = (((_620.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _644 = vec3(_595.xy + _632, _595.z * sqrt(1.0 - clamp(dot(_632, _632), 0.0, 1.0)));
    }
    else
    {
        _644 = _595;
    }
    highp vec3 _646 = normalize(_461 * _644);
    bvec3 _651 = bvec3(_384 < (_Globals._FlipNormal - 1.0));
    highp vec3 _652 = -_646;
    highp vec3 _653 = vec3(_651.x ? _652.x : _646.x, _651.y ? _652.y : _646.y, _651.z ? _652.z : _646.z);
    highp float _655 = clamp(dot(_653, _452), 0.0, 1.0);
    highp vec3 _656 = normalize(out_var_TEXCOORD4);
    highp vec2 _660 = ((_653 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _359, _352)).xy * 0.5) + vec2(0.5);
    bool _661 = out_var_TEXCOORD5.w > 0.0;
    bool _666 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _944;
    highp vec4 _945;
    if (_666)
    {
        bvec2 _672 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _673 = vec2(_672.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _672.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _675 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _676 = vec2(_675.x ? out_var_TEXCOORD1.xy.x : _673.x, _675.y ? out_var_TEXCOORD1.xy.y : _673.y);
        bvec2 _678 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _679 = vec2(_678.x ? out_var_TEXCOORD1.zw.x : _676.x, _678.y ? out_var_TEXCOORD1.zw.y : _676.y);
        bvec2 _681 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _682 = vec2(_681.x ? _660.x : _679.x, _681.y ? _660.y : _679.y);
        highp vec4 _721 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _722 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _730;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _729 = _682;
            _729.x = abs(_682.x - 0.5) + 0.5;
            _730 = _729;
        }
        else
        {
            _730 = _682;
        }
        highp vec2 _731 = _721.xy;
        highp vec2 _732 = _721.zw;
        highp vec2 _733 = _730 * _731 + _732;
        highp vec2 _742;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_682.x < 0.5))
        {
            highp vec2 _741 = _733;
            _741.x = 1.0 - _733.x;
            _742 = _741;
        }
        else
        {
            _742 = _733;
        }
        highp vec2 _749;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _661)
        {
            highp vec2 _748 = _742;
            _748.x = 1.0 - _742.x;
            _749 = _748;
        }
        else
        {
            _749 = _742;
        }
        highp vec2 _754;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _661)
        {
            highp vec2 _753 = _749;
            _753.x = -1.0;
            _754 = _753;
        }
        else
        {
            _754 = _749;
        }
        highp vec2 _760;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_661))
        {
            highp vec2 _759 = _754;
            _759.x = -1.0;
            _760 = _759;
        }
        else
        {
            _760 = _754;
        }
        highp float _763 = sin(_722);
        highp float _764 = cos(_722);
        highp vec2 _765 = ((_760 - _732) / _731) - vec2(0.5);
        highp float _766 = _765.x;
        highp float _767 = _765.y;
        highp vec2 _775 = (vec2(_766 * _764 + (-(_767 * _763)), _766 * _763 + (_767 * _764)) + vec2(0.5)) * _731 + _732;
        uint _779 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _783 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _779 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _779);
        highp float _784 = _775.x;
        highp float _785 = _775.y;
        uint _792 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _802 = ((mix(vec2(_784, 1.0 - _785), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_783 % _792), float(_783 / _792))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _802.y = 1.0 - _802.y;
        highp vec4 _807 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _802);
        highp vec4 _823;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _810 = _807.x;
            highp float _811 = _807.y;
            highp float _812 = _807.z;
            highp float _813 = isnan(_811) ? _810 : (isnan(_810) ? _811 : min(_810, _811));
            highp float _814 = isnan(_811) ? _810 : (isnan(_810) ? _811 : max(_810, _811));
            highp float _815 = isnan(_812) ? _814 : (isnan(_814) ? _812 : min(_814, _812));
            highp float _816 = isnan(_815) ? _813 : (isnan(_813) ? _815 : max(_813, _815));
            _823 = vec4(1.0, 1.0, 1.0, clamp((_816 - 0.5) / clamp(fwidth(_816), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _823 = _807;
        }
        highp vec4 _846;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _827 = clamp(_655 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _830 = 0.5 - abs(_784 - 0.5);
            highp float _837 = 0.5 - abs(_785 - 0.5);
            highp vec4 _845 = _823;
            _845.w = _823.w * (clamp(_830 / clamp(fwidth(_830), 9.9999997473787516355514526367188e-05, _827), 0.0, 1.0) * clamp(_837 / clamp(fwidth(_837), 9.9999997473787516355514526367188e-05, _827), 0.0, 1.0));
            _846 = _845;
        }
        else
        {
            _846 = _823;
        }
        highp vec4 _847 = _Globals._Color2nd * _846;
        highp float _848 = _847.w;
        _847.w = mix(_848, _848 * clamp((_445 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _874;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_384 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_384 < 0.0)))
        {
            highp vec4 _873 = _847;
            _873.w = 0.0;
            _874 = _873;
        }
        else
        {
            _874 = _847;
        }
        highp vec4 _913;
        highp vec4 _914;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _885;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _884 = _563;
                _884.w = _874.w;
                _885 = _884;
            }
            else
            {
                _885 = _563;
            }
            highp vec4 _893;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _892 = _885;
                _892.w = _885.w * _874.w;
                _893 = _892;
            }
            else
            {
                _893 = _885;
            }
            highp vec4 _902;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _901 = _893;
                _901.w = clamp(_893.w + _874.w, 0.0, 1.0);
                _902 = _901;
            }
            else
            {
                _902 = _893;
            }
            highp vec4 _911;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _910 = _902;
                _910.w = clamp(_902.w - _874.w, 0.0, 1.0);
                _911 = _910;
            }
            else
            {
                _911 = _902;
            }
            highp vec4 _912 = _874;
            _912.w = 1.0;
            _913 = _912;
            _914 = _911;
        }
        else
        {
            _913 = _874;
            _914 = _563;
        }
        highp vec3 _924 = _914.xyz + _913.xyz;
        highp vec3 _925 = _914.xyz * _913.xyz;
        bvec3 _927 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _928 = vec3(_927.x ? _913.xyz.x : _325.x, _927.y ? _913.xyz.y : _325.y, _927.z ? _913.xyz.z : _325.z);
        bvec3 _930 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _938;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _936 = (-_914.xyz) * _913.xyz + _924;
            bvec3 _2698 = isnan(_936);
            bvec3 _2699 = isnan(_914.xyz);
            highp vec3 _2700 = max(_936, _914.xyz);
            highp vec3 _2701 = vec3(_2698.x ? _914.xyz.x : _2700.x, _2698.y ? _914.xyz.y : _2700.y, _2698.z ? _914.xyz.z : _2700.z);
            _938 = vec3(_2699.x ? _936.x : _2701.x, _2699.y ? _936.y : _2701.y, _2699.z ? _936.z : _2701.z);
        }
        else
        {
            _938 = vec3(_930.x ? _924.x : _928.x, _930.y ? _924.y : _928.y, _930.z ? _924.z : _928.z);
        }
        bvec3 _940 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _942 = mix(_914.xyz, vec3(_940.x ? _925.x : _938.x, _940.y ? _925.y : _938.y, _940.z ? _925.z : _938.z), vec3(_913.w * _Globals._Main2ndEnableLighting));
        _944 = _913;
        _945 = vec4(_942.x, _942.y, _942.z, _914.w);
    }
    else
    {
        _944 = _Globals._Color2nd;
        _945 = _563;
    }
    bool _950 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1228;
    highp vec4 _1229;
    if (_950)
    {
        bvec2 _956 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _957 = vec2(_956.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _956.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _959 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _960 = vec2(_959.x ? out_var_TEXCOORD1.xy.x : _957.x, _959.y ? out_var_TEXCOORD1.xy.y : _957.y);
        bvec2 _962 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _963 = vec2(_962.x ? out_var_TEXCOORD1.zw.x : _960.x, _962.y ? out_var_TEXCOORD1.zw.y : _960.y);
        bvec2 _965 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _966 = vec2(_965.x ? _660.x : _963.x, _965.y ? _660.y : _963.y);
        highp vec4 _1005 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1006 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1014;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1013 = _966;
            _1013.x = abs(_966.x - 0.5) + 0.5;
            _1014 = _1013;
        }
        else
        {
            _1014 = _966;
        }
        highp vec2 _1015 = _1005.xy;
        highp vec2 _1016 = _1005.zw;
        highp vec2 _1017 = _1014 * _1015 + _1016;
        highp vec2 _1026;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_966.x < 0.5))
        {
            highp vec2 _1025 = _1017;
            _1025.x = 1.0 - _1017.x;
            _1026 = _1025;
        }
        else
        {
            _1026 = _1017;
        }
        highp vec2 _1033;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _661)
        {
            highp vec2 _1032 = _1026;
            _1032.x = 1.0 - _1026.x;
            _1033 = _1032;
        }
        else
        {
            _1033 = _1026;
        }
        highp vec2 _1038;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _661)
        {
            highp vec2 _1037 = _1033;
            _1037.x = -1.0;
            _1038 = _1037;
        }
        else
        {
            _1038 = _1033;
        }
        highp vec2 _1044;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_661))
        {
            highp vec2 _1043 = _1038;
            _1043.x = -1.0;
            _1044 = _1043;
        }
        else
        {
            _1044 = _1038;
        }
        highp float _1047 = sin(_1006);
        highp float _1048 = cos(_1006);
        highp vec2 _1049 = ((_1044 - _1016) / _1015) - vec2(0.5);
        highp float _1050 = _1049.x;
        highp float _1051 = _1049.y;
        highp vec2 _1059 = (vec2(_1050 * _1048 + (-(_1051 * _1047)), _1050 * _1047 + (_1051 * _1048)) + vec2(0.5)) * _1015 + _1016;
        uint _1063 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1067 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1063 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1063);
        highp float _1068 = _1059.x;
        highp float _1069 = _1059.y;
        uint _1076 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1086 = ((mix(vec2(_1068, 1.0 - _1069), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1067 % _1076), float(_1067 / _1076))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1086.y = 1.0 - _1086.y;
        highp vec4 _1091 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1086);
        highp vec4 _1107;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1094 = _1091.x;
            highp float _1095 = _1091.y;
            highp float _1096 = _1091.z;
            highp float _1097 = isnan(_1095) ? _1094 : (isnan(_1094) ? _1095 : min(_1094, _1095));
            highp float _1098 = isnan(_1095) ? _1094 : (isnan(_1094) ? _1095 : max(_1094, _1095));
            highp float _1099 = isnan(_1096) ? _1098 : (isnan(_1098) ? _1096 : min(_1098, _1096));
            highp float _1100 = isnan(_1099) ? _1097 : (isnan(_1097) ? _1099 : max(_1097, _1099));
            _1107 = vec4(1.0, 1.0, 1.0, clamp((_1100 - 0.5) / clamp(fwidth(_1100), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1107 = _1091;
        }
        highp vec4 _1130;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1111 = clamp(_655 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1114 = 0.5 - abs(_1068 - 0.5);
            highp float _1121 = 0.5 - abs(_1069 - 0.5);
            highp vec4 _1129 = _1107;
            _1129.w = _1107.w * (clamp(_1114 / clamp(fwidth(_1114), 9.9999997473787516355514526367188e-05, _1111), 0.0, 1.0) * clamp(_1121 / clamp(fwidth(_1121), 9.9999997473787516355514526367188e-05, _1111), 0.0, 1.0));
            _1130 = _1129;
        }
        else
        {
            _1130 = _1107;
        }
        highp vec4 _1131 = _Globals._Color3rd * _1130;
        highp float _1132 = _1131.w;
        _1131.w = mix(_1132, _1132 * clamp((_445 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1158;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_384 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_384 < 0.0)))
        {
            highp vec4 _1157 = _1131;
            _1157.w = 0.0;
            _1158 = _1157;
        }
        else
        {
            _1158 = _1131;
        }
        highp vec4 _1197;
        highp vec4 _1198;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1169;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1168 = _945;
                _1168.w = _1158.w;
                _1169 = _1168;
            }
            else
            {
                _1169 = _945;
            }
            highp vec4 _1177;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1176 = _1169;
                _1176.w = _1169.w * _1158.w;
                _1177 = _1176;
            }
            else
            {
                _1177 = _1169;
            }
            highp vec4 _1186;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1185 = _1177;
                _1185.w = clamp(_1177.w + _1158.w, 0.0, 1.0);
                _1186 = _1185;
            }
            else
            {
                _1186 = _1177;
            }
            highp vec4 _1195;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1194 = _1186;
                _1194.w = clamp(_1186.w - _1158.w, 0.0, 1.0);
                _1195 = _1194;
            }
            else
            {
                _1195 = _1186;
            }
            highp vec4 _1196 = _1158;
            _1196.w = 1.0;
            _1197 = _1196;
            _1198 = _1195;
        }
        else
        {
            _1197 = _1158;
            _1198 = _945;
        }
        highp vec3 _1208 = _1198.xyz + _1197.xyz;
        highp vec3 _1209 = _1198.xyz * _1197.xyz;
        bvec3 _1211 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1212 = vec3(_1211.x ? _1197.xyz.x : _325.x, _1211.y ? _1197.xyz.y : _325.y, _1211.z ? _1197.xyz.z : _325.z);
        bvec3 _1214 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1222;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1220 = (-_1198.xyz) * _1197.xyz + _1208;
            bvec3 _2723 = isnan(_1220);
            bvec3 _2724 = isnan(_1198.xyz);
            highp vec3 _2725 = max(_1220, _1198.xyz);
            highp vec3 _2726 = vec3(_2723.x ? _1198.xyz.x : _2725.x, _2723.y ? _1198.xyz.y : _2725.y, _2723.z ? _1198.xyz.z : _2725.z);
            _1222 = vec3(_2724.x ? _1220.x : _2726.x, _2724.y ? _1220.y : _2726.y, _2724.z ? _1220.z : _2726.z);
        }
        else
        {
            _1222 = vec3(_1214.x ? _1208.x : _1212.x, _1214.y ? _1208.y : _1212.y, _1214.z ? _1208.z : _1212.z);
        }
        bvec3 _1224 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1226 = mix(_1198.xyz, vec3(_1224.x ? _1209.x : _1222.x, _1224.y ? _1209.y : _1222.y, _1224.z ? _1209.z : _1222.z), vec3(_1197.w * _Globals._Main3rdEnableLighting));
        _1228 = _1197;
        _1229 = vec4(_1226.x, _1226.y, _1226.z, _1198.w);
    }
    else
    {
        _1228 = _Globals._Color3rd;
        _1229 = _945;
    }
    highp vec4 _1269;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1240 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1245;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1244 = _1229;
            _1244.w = _1240;
            _1245 = _1244;
        }
        else
        {
            _1245 = _1229;
        }
        highp vec4 _1252;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1251 = _1245;
            _1251.w = _1245.w * _1240;
            _1252 = _1251;
        }
        else
        {
            _1252 = _1245;
        }
        highp vec4 _1260;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1259 = _1252;
            _1259.w = clamp(_1252.w + _1240, 0.0, 1.0);
            _1260 = _1259;
        }
        else
        {
            _1260 = _1252;
        }
        highp vec4 _1268;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1267 = _1260;
            _1267.w = clamp(_1260.w - _1240, 0.0, 1.0);
            _1268 = _1267;
        }
        else
        {
            _1268 = _1260;
        }
        _1269 = _1268;
    }
    else
    {
        _1269 = _1229;
    }
    highp vec4 _1364;
    highp float _1365;
    if ((_375 & 1) != 0)
    {
        highp vec4 _1273 = _1269;
        _1273.w = 1.0;
        highp vec2 _1279 = roundEven(_Globals._DissolveParams.xy);
        highp float _1280 = _1279.x;
        highp vec4 _1353;
        highp float _1354;
        if (_1280 != 0.0)
        {
            highp float _1296;
            highp float _1297;
            if (_1280 == 1.0)
            {
                _1296 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1297 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1296 = 0.0;
                _1297 = 1.0;
            }
            highp float _1328;
            highp float _1329;
            if (_1280 == 2.0)
            {
                highp vec2 _1306 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1317 = (_1279.y == 1.0) ? (vec2(_1306.x * cos(_Globals._DissolvePos.w) + (-(_1306.y * sin(_Globals._DissolvePos.w))), _332) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1328 = 1.0 - clamp(abs(_1317 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1329 = _1297 * float(_1317 > _Globals._DissolveParams.z);
            }
            else
            {
                _1328 = _1296;
                _1329 = _1297;
            }
            highp float _1350;
            highp float _1351;
            if (_1280 == 3.0)
            {
                highp float _1339 = (_1279.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1350 = 1.0 - clamp(abs(_1339 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1351 = _1329 * float(_1339 > _Globals._DissolveParams.z);
            }
            else
            {
                _1350 = _1328;
                _1351 = _1329;
            }
            highp vec4 _1352 = _1273;
            _1352.w = _1351;
            _1353 = _1352;
            _1354 = _1350;
        }
        else
        {
            _1353 = _1273;
            _1354 = 0.0;
        }
        highp vec4 _1360;
        if ((_375 & 2) != 0)
        {
            highp vec4 _1359 = _1353;
            _1359.w = 1.0 - _1353.w;
            _1360 = _1359;
        }
        else
        {
            _1360 = _1353;
        }
        highp vec4 _1363 = _1360;
        _1363.w = _1360.w * _1269.w;
        _1364 = _1363;
        _1365 = _1354;
    }
    else
    {
        _1364 = _1269;
        _1365 = 0.0;
    }
    highp float _1370 = fwidth(_1364.w);
    highp float _1374 = clamp(((_1364.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1370 : (isnan(_1370) ? 9.9999997473787516355514526367188e-05 : max(_1370, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1375 = _1364;
    _1375.w = _1374;
    if (_1374 == 0.0)
    {
        discard;
    }
    highp vec4 _1552;
    highp float _1553;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1404 = clamp(dot(_436, mix(_656, _653, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1407 = clamp(dot(_436, mix(_656, _653, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1410 = clamp(dot(_436, mix(_656, _653, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1414 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1417 = clamp(_435 + distance(_436, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1420 = mix(1.0, _1417, _Globals._ShadowReceive);
        highp float _1421 = _1404 * _1420;
        highp float _1424 = mix(1.0, _1417, _Globals._Shadow2ndReceive);
        highp float _1428 = mix(1.0, _1417, _Globals._Shadow3rdReceive);
        highp float _1439 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1440 = clamp(_1439, 0.0, 1.0);
        highp float _1442 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1455 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1469 = clamp(_1439 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1482 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1497 = (_384 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1498 = clamp((_1404 * _1420 + (-_1440)) / clamp(fwidth(_1421) * _1414 + (_1442 - _1440), 0.0, 1.0), 0.0, 1.0) * _1497;
        highp vec3 _1530 = mix(mix(_1375.xyz * _Globals._ShadowColor.xyz, (_1375.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1407 * _1424 + (-_1455)) / clamp(fwidth(_1407 * _1424) * _1414 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1455), 0.0, 1.0), 0.0, 1.0) * _1497)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1375.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1410 * _1428 + (-_1482)) / clamp(fwidth(_1410 * _1428) * _1414 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1482), 0.0, 1.0), 0.0, 1.0) * _1497)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1536 = _1375.xyz * out_var_TEXCOORD6;
        highp vec3 _1542 = mix(mix(_1530, _1530 * _1375.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1375.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2733 = isnan(_1542);
        bvec3 _2734 = isnan(_1536);
        highp vec3 _2735 = min(_1542, _1536);
        highp vec3 _2736 = vec3(_2733.x ? _1536.x : _2735.x, _2733.y ? _1536.y : _2735.y, _2733.z ? _1536.z : _2735.z);
        highp vec3 _1550 = mix(mix(vec3(_2734.x ? _1542.x : _2736.x, _2734.y ? _1542.y : _2736.y, _2734.z ? _1542.z : _2736.z), _1536, _Globals._ShadowBorderColor.xyz * (clamp((_1404 * _1420 + (-_1469)) / clamp(fwidth(_1421) * _1414 + (_1442 - _1469), 0.0, 1.0), 0.0, 1.0) * _1497)), _1536, vec3(mix(1.0, _1498, _Globals._ShadowStrength)));
        _1552 = vec4(_1550.x, _1550.y, _1550.z, _1375.w);
        _1553 = _1498;
    }
    else
    {
        highp vec3 _1386 = _1375.xyz * out_var_TEXCOORD6;
        _1552 = vec4(_1386.x, _1386.y, _1386.z, _1375.w);
        _1553 = 1.0;
    }
    highp vec3 _1556 = vec3(_Globals._LightMaxLimit);
    bvec3 _2738 = isnan(out_var_TEXCOORD6);
    bvec3 _2739 = isnan(_1556);
    highp vec3 _2740 = min(out_var_TEXCOORD6, _1556);
    highp vec3 _2741 = vec3(_2738.x ? _1556.x : _2740.x, _2738.y ? _1556.y : _2740.y, _2738.z ? _1556.z : _2740.z);
    highp vec3 _1557 = vec3(_2739.x ? out_var_TEXCOORD6.x : _2741.x, _2739.y ? out_var_TEXCOORD6.y : _2741.y, _2739.z ? out_var_TEXCOORD6.z : _2741.z);
    highp float _1558 = clamp(_1553, 0.0, 1.0);
    highp vec3 _1560 = _1375.xyz * _Globals._LightMaxLimit;
    bvec3 _2743 = isnan(_1552.xyz);
    bvec3 _2744 = isnan(_1560);
    highp vec3 _2745 = min(_1552.xyz, _1560);
    highp vec3 _2746 = vec3(_2743.x ? _1560.x : _2745.x, _2743.y ? _1560.y : _2745.y, _2743.z ? _1560.z : _2745.z);
    highp vec3 _1561 = vec3(_2744.x ? _1552.xyz.x : _2746.x, _2744.y ? _1552.xyz.y : _2746.y, _2744.z ? _1552.xyz.z : _2746.z);
    highp vec4 _1595;
    if (_666)
    {
        highp vec3 _1565 = _1561.xyz;
        highp vec3 _1575 = _1565 + _944.xyz;
        highp vec3 _1576 = _1565 * _944.xyz;
        bvec3 _1578 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1579 = vec3(_1578.x ? _944.xyz.x : _325.x, _1578.y ? _944.xyz.y : _325.y, _1578.z ? _944.xyz.z : _325.z);
        bvec3 _1581 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1589;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1587 = (-_1565) * _944.xyz + _1575;
            bvec3 _2748 = isnan(_1587);
            bvec3 _2749 = isnan(_1565);
            highp vec3 _2750 = max(_1587, _1565);
            highp vec3 _2751 = vec3(_2748.x ? _1565.x : _2750.x, _2748.y ? _1565.y : _2750.y, _2748.z ? _1565.z : _2750.z);
            _1589 = vec3(_2749.x ? _1587.x : _2751.x, _2749.y ? _1587.y : _2751.y, _2749.z ? _1587.z : _2751.z);
        }
        else
        {
            _1589 = vec3(_1581.x ? _1575.x : _1579.x, _1581.y ? _1575.y : _1579.y, _1581.z ? _1575.z : _1579.z);
        }
        bvec3 _1591 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1593 = mix(_1565, vec3(_1591.x ? _1576.x : _1589.x, _1591.y ? _1576.y : _1589.y, _1591.z ? _1576.z : _1589.z), vec3((-_944.w) * _Globals._Main2ndEnableLighting + _944.w));
        _1595 = vec4(_1593.x, _1593.y, _1593.z, _1552.w);
    }
    else
    {
        _1595 = vec4(_1561.x, _1561.y, _1561.z, _1552.w);
    }
    highp vec4 _1628;
    if (_950)
    {
        highp vec3 _1608 = _1595.xyz + _1228.xyz;
        highp vec3 _1609 = _1595.xyz * _1228.xyz;
        bvec3 _1611 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1612 = vec3(_1611.x ? _1228.xyz.x : _325.x, _1611.y ? _1228.xyz.y : _325.y, _1611.z ? _1228.xyz.z : _325.z);
        bvec3 _1614 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1622;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1620 = (-_1595.xyz) * _1228.xyz + _1608;
            bvec3 _2753 = isnan(_1620);
            bvec3 _2754 = isnan(_1595.xyz);
            highp vec3 _2755 = max(_1620, _1595.xyz);
            highp vec3 _2756 = vec3(_2753.x ? _1595.xyz.x : _2755.x, _2753.y ? _1595.xyz.y : _2755.y, _2753.z ? _1595.xyz.z : _2755.z);
            _1622 = vec3(_2754.x ? _1620.x : _2756.x, _2754.y ? _1620.y : _2756.y, _2754.z ? _1620.z : _2756.z);
        }
        else
        {
            _1622 = vec3(_1614.x ? _1608.x : _1612.x, _1614.y ? _1608.y : _1612.y, _1614.z ? _1608.z : _1612.z);
        }
        bvec3 _1624 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1626 = mix(_1595.xyz, vec3(_1624.x ? _1609.x : _1622.x, _1624.y ? _1609.y : _1622.y, _1624.z ? _1609.z : _1622.z), vec3((-_1228.w) * _Globals._Main3rdEnableLighting + _1228.w));
        _1628 = vec4(_1626.x, _1626.y, _1626.z, _1595.w);
    }
    else
    {
        _1628 = _1595;
    }
    highp vec4 _1674;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1644 = pow(clamp(1.0 - abs(dot(mix(_656, _653, vec3(_Globals._RimShadeNormalStrength)), _452)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1653 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1672 = mix(_1628.xyz, _1628.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1644 - _1653) / clamp(fwidth(_1644) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1653), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1674 = vec4(_1672.x, _1672.y, _1672.z, _1628.w);
    }
    else
    {
        _1674 = _1628;
    }
    highp vec4 _1747;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1698 = dot(normalize(((-_452) * _Globals._BacklightViewStrength) + _436), mix(_656, _653, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1708;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1708 = _1698 * clamp(_435 + distance(_436, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1708 = _1698;
        }
        highp float _1717 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1745 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1375.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_384 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_452, _436) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1708 - _1717) / clamp(fwidth(_1708) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1717), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1557 + _1674.xyz;
        _1747 = vec4(_1745.x, _1745.y, _1745.z, _1674.w);
    }
    else
    {
        _1747 = _1674;
    }
    highp vec4 _1990;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1757 = dFdx(_653);
        highp vec3 _1758 = abs(_1757);
        highp vec3 _1759 = dFdy(_653);
        highp vec3 _1760 = abs(_1759);
        highp float _1761 = dot(_1758, _1758);
        highp float _1762 = dot(_1760, _1760);
        highp float _1763 = isnan(_1762) ? _1761 : (isnan(_1761) ? _1762 : max(_1761, _1762));
        highp float _1766 = (_1763 / (_1763 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1769 = clamp(1.0 - (isnan(_1766) ? 0.0 : (isnan(0.0) ? _1766 : max(0.0, _1766))), 0.0, 1.0);
        highp float _1770 = isnan(_1769) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1769 : min(_Globals._Smoothness, _1769));
        highp float _1771 = 1.0 - _1770;
        highp float _1772 = _1771 * _1771;
        highp vec3 _1777 = _1747.xyz - (_1747.xyz * _Globals._Metallic);
        highp vec3 _1783 = mix(vec3(_Globals._Reflectance), _1375.xyz, vec3(_Globals._Metallic));
        highp vec4 _1886;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1858;
            do
            {
                highp vec3 _1796 = mix(_656, _653, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1798 = normalize(_452 + _436);
                highp float _1800 = clamp(dot(_1796, _1798), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1809 = pow(_1800, 1.0 / _1772);
                    highp float _1816 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1858 = vec3(clamp((_1809 - _1816) / clamp(fwidth(_1809) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1816), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1828 = clamp(dot(_1796, _452), 0.0, 1.0);
                highp float _1830 = clamp(dot(_1796, _436), 0.0, 1.0);
                highp float _1833 = isnan(0.00200000009499490261077880859375) ? _1772 : (isnan(_1772) ? 0.00200000009499490261077880859375 : max(_1772, 0.00200000009499490261077880859375));
                highp float _1834 = 1.0 - _1833;
                highp float _1838 = _1833 * _1833;
                highp float _1841 = (_1800 * _1838 + (-_1800)) * _1800 + 1.0;
                highp float _1849 = 1.0 - clamp(dot(_436, _1798), 0.0, 1.0);
                _1858 = (_1783 + ((((((vec3(1.0) - _1783) * _1849) * _1849) * _1849) * _1849) * _1849)) * (((0.5 / ((_1830 * (_1828 * _1834 + _1833) + (_1828 * (_1830 * _1834 + _1833))) + 9.9999997473787516355514526367188e-06)) * (_1838 / (_1841 * _1841 + 1.0000000116860974230803549289703e-07))) * _1830);
                break;
            } while(false);
            highp vec3 _1859 = _1777.xyz;
            highp vec3 _1861 = _Globals._ReflectionColor.xyz * _1557;
            highp vec3 _1866 = _Globals._ReflectionColor.xyz * _1557 + _1859;
            highp vec3 _1867 = _1859 * _1861;
            bvec3 _1869 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1870 = vec3(_1869.x ? _1861.x : _325.x, _1869.y ? _1861.y : _325.y, _1869.z ? _1861.z : _325.z);
            bvec3 _1872 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1880;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1878 = (-_1859) * _1861 + _1866;
                bvec3 _2778 = isnan(_1878);
                bvec3 _2779 = isnan(_1859);
                highp vec3 _2780 = max(_1878, _1859);
                highp vec3 _2781 = vec3(_2778.x ? _1859.x : _2780.x, _2778.y ? _1859.y : _2780.y, _2778.z ? _1859.z : _2780.z);
                _1880 = vec3(_2779.x ? _1878.x : _2781.x, _2779.y ? _1878.y : _2781.y, _2779.z ? _1878.z : _2781.z);
            }
            else
            {
                _1880 = vec3(_1872.x ? _1866.x : _1870.x, _1872.y ? _1866.y : _1870.y, _1872.z ? _1866.z : _1870.z);
            }
            bvec3 _1882 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1884 = mix(_1859, vec3(_1882.x ? _1867.x : _1880.x, _1882.y ? _1867.y : _1880.y, _1882.z ? _1867.z : _1880.z), _1858 * _Globals._ReflectionColor.w);
            _1886 = vec4(_1884.x, _1884.y, _1884.z, _1747.w);
        }
        else
        {
            _1886 = vec4(_1777.x, _1777.y, _1777.z, _1747.w);
        }
        highp vec4 _1989;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1908 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1915 = reflect(-_452, mix(_656, _653, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1918 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1915, _1771 * ((-4.19999980926513671875) * _1771 + 10.19999980926513671875));
            highp vec3 _1938 = ((_1918.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1918.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1557, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1944 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1915, _1771 * 8.0).xyz * 1.0;
            highp float _1955 = 1.0 - _655;
            highp vec3 _1969 = _1886.xyz + _Globals._ReflectionColor.xyz;
            highp vec3 _1970 = _1886.xyz * _Globals._ReflectionColor.xyz;
            bvec3 _1972 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1973 = vec3(_1972.x ? _Globals._ReflectionColor.xyz.x : _325.x, _1972.y ? _Globals._ReflectionColor.xyz.y : _325.y, _1972.z ? _Globals._ReflectionColor.xyz.z : _325.z);
            bvec3 _1975 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1983;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1981 = (-_1886.xyz) * _Globals._ReflectionColor.xyz + _1969;
                bvec3 _2783 = isnan(_1981);
                bvec3 _2784 = isnan(_1886.xyz);
                highp vec3 _2785 = max(_1981, _1886.xyz);
                highp vec3 _2786 = vec3(_2783.x ? _1886.xyz.x : _2785.x, _2783.y ? _1886.xyz.y : _2785.y, _2783.z ? _1886.xyz.z : _2785.z);
                _1983 = vec3(_2784.x ? _1981.x : _2786.x, _2784.y ? _1981.y : _2786.y, _2784.z ? _1981.z : _2786.z);
            }
            else
            {
                _1983 = vec3(_1975.x ? _1969.x : _1973.x, _1975.y ? _1969.y : _1973.y, _1975.z ? _1969.z : _1973.z);
            }
            bvec3 _1985 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1987 = mix(_1886.xyz, vec3(_1985.x ? _1970.x : _1983.x, _1985.y ? _1970.y : _1983.y, _1985.z ? _1970.z : _1983.z), ((vec3(_1908.x ? _1938.x : _1944.x, _1908.y ? _1938.y : _1944.y, _1908.z ? _1938.z : _1944.z) * (1.0 / (_1772 * _1772 + 1.0))) * mix(_1783, vec3(clamp(_1770 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1955 * _1955) * _1955) * _1955) * _1955))) * _Globals._ReflectionColor.w);
            _1989 = vec4(_1987.x, _1987.y, _1987.z, _1886.w);
        }
        else
        {
            _1989 = _1886;
        }
        _1990 = _1989;
    }
    else
    {
        _1990 = _1747;
    }
    highp vec4 _2141;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2035;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2012 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _496 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2012.w = _2012.w * _2012.x;
            highp vec2 _2023 = ((_2012.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2024 = vec3(_2023.x, _2023.y, _331.z);
            highp vec2 _2025 = _2023.xy;
            _2024.z = sqrt(1.0 - clamp(dot(_2025, _2025), 0.0, 1.0));
            highp vec3 _2032 = normalize(_461 * _2024);
            highp vec3 _2033 = -_2032;
            _2035 = vec3(_651.x ? _2033.x : _2032.x, _651.y ? _2033.y : _2032.y, _651.z ? _2033.z : _2032.z);
        }
        else
        {
            _2035 = mix(_656, _653, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2052 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2053 = vec3(_2052.x ? _452.x : _352.x, _2052.y ? _452.y : _352.y, _2052.z ? _452.z : _352.z);
        bvec3 _2054 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2055 = vec3(_2054.x ? vec3(0.0, 1.0, 0.0).x : _359.x, _2054.y ? vec3(0.0, 1.0, 0.0).y : _359.y, _2054.z ? vec3(0.0, 1.0, 0.0).z : _359.z);
        highp vec3 _2059 = normalize(_2055 - (_2053 * dot(_2053, _2055)));
        highp vec4 _2081 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2035) * mat3(cross(_2053, _2059), _2059, _2053)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _2105 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _496 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2107 = mix(_2081.xyz, _2081.xyz * _1557, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _2114 = mix(_2107, _2107 * _1375.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2121 = _1990.xyz + _2114;
        highp vec3 _2122 = _1990.xyz * _2114;
        bvec3 _2124 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2125 = vec3(_2124.x ? _2114.x : _325.x, _2124.y ? _2114.y : _325.y, _2124.z ? _2114.z : _325.z);
        bvec3 _2127 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2135;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2133 = (-_1990.xyz) * _2114 + _2121;
            bvec3 _2788 = isnan(_2133);
            bvec3 _2789 = isnan(_1990.xyz);
            highp vec3 _2790 = max(_2133, _1990.xyz);
            highp vec3 _2791 = vec3(_2788.x ? _1990.xyz.x : _2790.x, _2788.y ? _1990.xyz.y : _2790.y, _2788.z ? _1990.xyz.z : _2790.z);
            _2135 = vec3(_2789.x ? _2133.x : _2791.x, _2789.y ? _2133.y : _2791.y, _2789.z ? _2133.z : _2791.z);
        }
        else
        {
            _2135 = vec3(_2127.x ? _2121.x : _2125.x, _2127.y ? _2121.y : _2125.y, _2127.z ? _2121.z : _2125.z);
        }
        bvec3 _2137 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2139 = mix(_1990.xyz, vec3(_2137.x ? _2122.x : _2135.x, _2137.y ? _2122.y : _2135.y, _2137.z ? _2122.z : _2135.z), _2105.xyz * (_Globals._MatCapBlend * ((_384 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_2081.w, _2081.w * _1558, _Globals._MatCapShadowMask))));
        _2141 = vec4(_2139.x, _2139.y, _2139.z, _1990.w);
    }
    else
    {
        _2141 = _1990;
    }
    highp vec4 _2291;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2186;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2163 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _496 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2163.w = _2163.w * _2163.x;
            highp vec2 _2174 = ((_2163.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2175 = vec3(_2174.x, _2174.y, _331.z);
            highp vec2 _2176 = _2174.xy;
            _2175.z = sqrt(1.0 - clamp(dot(_2176, _2176), 0.0, 1.0));
            highp vec3 _2183 = normalize(_461 * _2175);
            highp vec3 _2184 = -_2183;
            _2186 = vec3(_651.x ? _2184.x : _2183.x, _651.y ? _2184.y : _2183.y, _651.z ? _2184.z : _2183.z);
        }
        else
        {
            _2186 = mix(_656, _653, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2202 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2203 = vec3(_2202.x ? _452.x : _352.x, _2202.y ? _452.y : _352.y, _2202.z ? _452.z : _352.z);
        bvec3 _2204 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2205 = vec3(_2204.x ? vec3(0.0, 1.0, 0.0).x : _359.x, _2204.y ? vec3(0.0, 1.0, 0.0).y : _359.y, _2204.z ? vec3(0.0, 1.0, 0.0).z : _359.z);
        highp vec3 _2209 = normalize(_2205 - (_2203 * dot(_2203, _2205)));
        highp vec4 _2231 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2186 * mat3(cross(_2203, _2209), _2209, _2203)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2232 = _2231.xyz;
        highp float _2238 = _2231.w;
        highp vec4 _2255 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _496 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2257 = mix(_2232, _2232 * _1557, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _2264 = mix(_2257, _2257 * _1375.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2271 = _2141.xyz + _2264;
        highp vec3 _2272 = _2141.xyz * _2264;
        bvec3 _2274 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2275 = vec3(_2274.x ? _2264.x : _325.x, _2274.y ? _2264.y : _325.y, _2274.z ? _2264.z : _325.z);
        bvec3 _2277 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2285;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2283 = (-_2141.xyz) * _2264 + _2271;
            bvec3 _2793 = isnan(_2283);
            bvec3 _2794 = isnan(_2141.xyz);
            highp vec3 _2795 = max(_2283, _2141.xyz);
            highp vec3 _2796 = vec3(_2793.x ? _2141.xyz.x : _2795.x, _2793.y ? _2141.xyz.y : _2795.y, _2793.z ? _2141.xyz.z : _2795.z);
            _2285 = vec3(_2794.x ? _2283.x : _2796.x, _2794.y ? _2283.y : _2796.y, _2794.z ? _2283.z : _2796.z);
        }
        else
        {
            _2285 = vec3(_2277.x ? _2271.x : _2275.x, _2277.y ? _2271.y : _2275.y, _2277.z ? _2271.z : _2275.z);
        }
        bvec3 _2287 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2289 = mix(_2141.xyz, vec3(_2287.x ? _2272.x : _2285.x, _2287.y ? _2272.y : _2285.y, _2287.z ? _2272.z : _2285.z), _2255.xyz * (_Globals._MatCap2ndBlend * ((_384 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_2238, _2238 * _1558, _Globals._MatCap2ndShadowMask))));
        _2291 = vec4(_2289.x, _2289.y, _2289.z, _2141.w);
    }
    else
    {
        _2291 = _2141;
    }
    highp vec4 _2437;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2310 = mix(_656, _653, vec3(_Globals._RimNormalStrength));
        highp float _2314 = dot(_436, _2310) * 0.5 + 0.5;
        highp float _2337 = (_384 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2310, _452)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2341 = mix(_2337, _2337 * clamp((_2314 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2342 = _2337 * clamp(((1.0 - _2314) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2352 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2361 = clamp((_2341 - _2352) / clamp(fwidth(_2341) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2352), 0.0, 1.0), 0.0, 1.0);
        highp float _2368 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2378 = clamp((_2342 * _Globals._RimDirStrength + (-_2368)) / clamp(fwidth(_2342 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2368), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2390 = vec3(1.0 - _Globals._RimEnableLighting) + (_1557 * _Globals._RimEnableLighting);
        highp vec3 _2392 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1375.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2393 = _2392 * _2390;
        highp vec3 _2399 = _2392 * _2390 + _2291.xyz;
        highp vec3 _2400 = _2291.xyz * _2393;
        bvec3 _2402 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2403 = vec3(_2402.x ? _2393.x : _325.x, _2402.y ? _2393.y : _325.y, _2402.z ? _2393.z : _325.z);
        bvec3 _2405 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2407 = _Globals._RimBlendMode == 2u;
        highp vec3 _2413;
        if (_2407)
        {
            highp vec3 _2411 = (-_2291.xyz) * _2393 + _2399;
            bvec3 _2798 = isnan(_2411);
            bvec3 _2799 = isnan(_2291.xyz);
            highp vec3 _2800 = max(_2411, _2291.xyz);
            highp vec3 _2801 = vec3(_2798.x ? _2291.xyz.x : _2800.x, _2798.y ? _2291.xyz.y : _2800.y, _2798.z ? _2291.xyz.z : _2800.z);
            _2413 = vec3(_2799.x ? _2411.x : _2801.x, _2799.y ? _2411.y : _2801.y, _2799.z ? _2411.z : _2801.z);
        }
        else
        {
            _2413 = vec3(_2405.x ? _2399.x : _2403.x, _2405.y ? _2399.y : _2403.y, _2405.z ? _2399.z : _2403.z);
        }
        bvec3 _2415 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2418 = mix(_2291.xyz, vec3(_2415.x ? _2400.x : _2413.x, _2415.y ? _2400.y : _2413.y, _2415.z ? _2400.z : _2413.z), vec3(mix(_2361, _2361 * _1558, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2420 = _Globals._RimIndirColor.xyz * _2390;
        highp vec3 _2424 = _Globals._RimIndirColor.xyz * _2390 + _2418;
        highp vec3 _2425 = _2418 * _2420;
        highp vec3 _2426 = vec3(_2402.x ? _2420.x : _325.x, _2402.y ? _2420.y : _325.y, _2402.z ? _2420.z : _325.z);
        highp vec3 _2433;
        if (_2407)
        {
            highp vec3 _2431 = (-_2418) * _2420 + _2424;
            bvec3 _2803 = isnan(_2431);
            bvec3 _2804 = isnan(_2418);
            highp vec3 _2805 = max(_2431, _2418);
            highp vec3 _2806 = vec3(_2803.x ? _2418.x : _2805.x, _2803.y ? _2418.y : _2805.y, _2803.z ? _2418.z : _2805.z);
            _2433 = vec3(_2804.x ? _2431.x : _2806.x, _2804.y ? _2431.y : _2806.y, _2804.z ? _2431.z : _2806.z);
        }
        else
        {
            _2433 = vec3(_2405.x ? _2424.x : _2426.x, _2405.y ? _2424.y : _2426.y, _2405.z ? _2424.z : _2426.z);
        }
        highp vec3 _2435 = mix(_2418, vec3(_2415.x ? _2425.x : _2433.x, _2415.y ? _2425.y : _2433.y, _2415.z ? _2425.z : _2433.z), vec3(mix(_2378, _2378 * _1558, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2437 = vec4(_2435.x, _2435.y, _2435.z, _2291.w);
    }
    else
    {
        _2437 = _2291;
    }
    highp vec4 _2502;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2451 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _440, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2465 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2471;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2471 = roundEven(_2465);
        }
        else
        {
            _2471 = _2465;
        }
        highp vec3 _2478 = mix(_2451, _2451 * _1375.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2482 = _2437.xyz + _2478;
        highp vec3 _2483 = _2437.xyz * _2478;
        bvec3 _2485 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2486 = vec3(_2485.x ? _2478.x : _325.x, _2485.y ? _2478.y : _325.y, _2485.z ? _2478.z : _325.z);
        bvec3 _2488 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2496;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2494 = (-_2437.xyz) * _2478 + _2482;
            bvec3 _2808 = isnan(_2494);
            bvec3 _2809 = isnan(_2437.xyz);
            highp vec3 _2810 = max(_2494, _2437.xyz);
            highp vec3 _2811 = vec3(_2808.x ? _2437.xyz.x : _2810.x, _2808.y ? _2437.xyz.y : _2810.y, _2808.z ? _2437.xyz.z : _2810.z);
            _2496 = vec3(_2809.x ? _2494.x : _2811.x, _2809.y ? _2494.y : _2811.y, _2809.z ? _2494.z : _2811.z);
        }
        else
        {
            _2496 = vec3(_2488.x ? _2482.x : _2486.x, _2488.y ? _2482.y : _2486.y, _2488.z ? _2482.z : _2486.z);
        }
        bvec3 _2498 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2500 = mix(_2437.xyz, vec3(_2498.x ? _2483.x : _2496.x, _2498.y ? _2483.y : _2496.y, _2498.z ? _2483.z : _2496.z), vec3((_Globals._EmissionBlend * mix(1.0, _2471, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2502 = vec4(_2500.x, _2500.y, _2500.z, _2437.w);
    }
    else
    {
        _2502 = _2437;
    }
    highp vec4 _2567;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2516 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _440, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2530 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2536;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2536 = roundEven(_2530);
        }
        else
        {
            _2536 = _2530;
        }
        highp vec3 _2543 = mix(_2516, _2516 * _1375.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2547 = _2502.xyz + _2543;
        highp vec3 _2548 = _2502.xyz * _2543;
        bvec3 _2550 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2551 = vec3(_2550.x ? _2543.x : _325.x, _2550.y ? _2543.y : _325.y, _2550.z ? _2543.z : _325.z);
        bvec3 _2553 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2561;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2559 = (-_2502.xyz) * _2543 + _2547;
            bvec3 _2813 = isnan(_2559);
            bvec3 _2814 = isnan(_2502.xyz);
            highp vec3 _2815 = max(_2559, _2502.xyz);
            highp vec3 _2816 = vec3(_2813.x ? _2502.xyz.x : _2815.x, _2813.y ? _2502.xyz.y : _2815.y, _2813.z ? _2502.xyz.z : _2815.z);
            _2561 = vec3(_2814.x ? _2559.x : _2816.x, _2814.y ? _2559.y : _2816.y, _2814.z ? _2559.z : _2816.z);
        }
        else
        {
            _2561 = vec3(_2553.x ? _2547.x : _2551.x, _2553.y ? _2547.y : _2551.y, _2553.z ? _2547.z : _2551.z);
        }
        bvec3 _2563 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2565 = mix(_2502.xyz, vec3(_2563.x ? _2548.x : _2561.x, _2563.y ? _2548.y : _2561.y, _2563.z ? _2548.z : _2561.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2536, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2567 = vec4(_2565.x, _2565.y, _2565.z, _2502.w);
    }
    else
    {
        _2567 = _2502;
    }
    bvec3 _2575 = bvec3(_384 < 0.0);
    highp vec3 _2576 = (_2567.xyz + (_Globals._DissolveColor.xyz * _1365)).xyz;
    highp vec3 _2584 = mix(_2576, _Globals._BackfaceColor.xyz * _1557, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2619 = vec3(_2575.x ? _2584.x : _2576.x, _2575.y ? _2584.y : _2576.y, _2575.z ? _2584.z : _2576.z).xyz;
    highp vec3 _2627 = mix(_2619, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2619, vec3(pow(clamp(1.0 - abs(dot(_656, _452)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_384 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _445) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2627.x, _2627.y, _2627.z, _2567.w), vec4(out_var_TEXCOORD9));
}
