#version 300 es
precision mediump float;
precision highp int;

vec3 _284;
vec3 _289;

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
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
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
    highp vec3 _308 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _315 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _332 = float(gl_FrontFacing ? 1 : (-1));
    highp float _383;
    do
    {
        highp vec3 _339 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _340 = _339.xy;
        highp float _346 = _339.z;
        if ((any(lessThan(_340, vec2(0.0))) || any(greaterThan(_340, vec2(1.0)))) || (_346 > 1.0))
        {
            _383 = 1.0;
            break;
        }
        highp float _356 = _346 + _Globals.uShadowBias;
        _383 = (((step(_356, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _340), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_356, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _340), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_356, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _340), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_356, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _340), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _384 = normalize(out_var_TEXCOORD7);
    highp vec3 _388 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _392 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _393 = length(_392);
    highp vec3 _400 = normalize(_392);
    highp mat3 _409 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _414 = bvec2(_332 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _415 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _428 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _429 = sin(_428);
    highp float _430 = cos(_428);
    highp vec2 _431 = (vec2(_414.x ? _415.x : out_var_TEXCOORD0.xy.x, _414.y ? _415.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _432 = _431.x;
    highp float _433 = _431.y;
    highp vec2 _444 = (vec2(_432 * _430 + (-(_433 * _429)), _432 * _429 + (_433 * _430)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _448 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _444);
    highp vec3 _455 = pow(abs(_448.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _456 = _455.z;
    highp float _457 = _455.y;
    bvec4 _459 = bvec4(_456 > _457);
    highp vec4 _460 = vec4(_456, _457, -1.0, 0.666666686534881591796875);
    highp vec4 _461 = vec4(_457, _456, 0.0, -0.3333333432674407958984375);
    highp vec4 _462 = vec4(_459.x ? _460.x : _461.x, _459.y ? _460.y : _461.y, _459.z ? _460.z : _461.z, _459.w ? _460.w : _461.w);
    highp float _463 = _462.x;
    highp float _464 = _455.x;
    bvec4 _466 = bvec4(_463 > _464);
    highp vec4 _469 = vec4(_463, _462.yw, _464);
    highp vec4 _471 = vec4(_464, _462.yz, _463);
    highp vec4 _472 = vec4(_466.x ? _469.x : _471.x, _466.y ? _469.y : _471.y, _466.z ? _469.z : _471.z, _466.w ? _469.w : _471.w);
    highp float _477 = _472.x - (isnan(_472.y) ? _472.w : (isnan(_472.w) ? _472.y : min(_472.w, _472.y)));
    highp float _490 = clamp((_477 / (_472.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _493 = clamp(_472.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _507 = vec3((-_493) * _490 + _493) + (clamp(abs((fract(vec3(abs(_472.z + ((_472.w - _472.y) / (6.0 * _477 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_493 * _490));
    highp vec4 _511 = vec4(_507.x, _507.y, _507.z, _448.w) * _Globals._Color;
    highp vec3 _543;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _524 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _444 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _524.w = _524.w * _524.x;
        highp vec2 _535 = ((_524.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _536 = vec3(_535.x, _535.y, _289.z);
        highp vec2 _537 = _535.xy;
        _536.z = sqrt(1.0 - clamp(dot(_537, _537), 0.0, 1.0));
        _543 = _536;
    }
    else
    {
        _543 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _592;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _552 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _553 = vec2(_552.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _552.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _555 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _556 = vec2(_555.x ? out_var_TEXCOORD1.xy.x : _553.x, _555.y ? out_var_TEXCOORD1.xy.y : _553.y);
        bvec2 _558 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _568 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_558.x ? out_var_TEXCOORD1.zw.x : _556.x, _558.y ? out_var_TEXCOORD1.zw.y : _556.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _568.w = _568.w * _568.x;
        highp vec2 _580 = (((_568.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _592 = vec3(_543.xy + _580, _543.z * sqrt(1.0 - clamp(dot(_580, _580), 0.0, 1.0)));
    }
    else
    {
        _592 = _543;
    }
    highp vec3 _594 = normalize(_409 * _592);
    bvec3 _599 = bvec3(_332 < (_Globals._FlipNormal - 1.0));
    highp vec3 _600 = -_594;
    highp vec3 _601 = vec3(_599.x ? _600.x : _594.x, _599.y ? _600.y : _594.y, _599.z ? _600.z : _594.z);
    highp float _603 = clamp(dot(_601, _400), 0.0, 1.0);
    highp vec3 _604 = normalize(out_var_TEXCOORD4);
    highp vec2 _608 = ((_601 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _315, _308)).xy * 0.5) + vec2(0.5);
    bool _609 = out_var_TEXCOORD5.w > 0.0;
    bool _614 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _857;
    highp vec4 _858;
    if (_614)
    {
        bvec2 _620 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _621 = vec2(_620.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _620.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _623 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _624 = vec2(_623.x ? out_var_TEXCOORD1.xy.x : _621.x, _623.y ? out_var_TEXCOORD1.xy.y : _621.y);
        bvec2 _626 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _627 = vec2(_626.x ? out_var_TEXCOORD1.zw.x : _624.x, _626.y ? out_var_TEXCOORD1.zw.y : _624.y);
        bvec2 _629 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _630 = vec2(_629.x ? _608.x : _627.x, _629.y ? _608.y : _627.y);
        highp vec4 _669 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _670 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _678;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _677 = _630;
            _677.x = abs(_630.x - 0.5) + 0.5;
            _678 = _677;
        }
        else
        {
            _678 = _630;
        }
        highp vec2 _679 = _669.xy;
        highp vec2 _680 = _669.zw;
        highp vec2 _681 = _678 * _679 + _680;
        highp vec2 _690;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_630.x < 0.5))
        {
            highp vec2 _689 = _681;
            _689.x = 1.0 - _681.x;
            _690 = _689;
        }
        else
        {
            _690 = _681;
        }
        highp vec2 _697;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _609)
        {
            highp vec2 _696 = _690;
            _696.x = 1.0 - _690.x;
            _697 = _696;
        }
        else
        {
            _697 = _690;
        }
        highp vec2 _702;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _609)
        {
            highp vec2 _701 = _697;
            _701.x = -1.0;
            _702 = _701;
        }
        else
        {
            _702 = _697;
        }
        highp vec2 _708;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_609))
        {
            highp vec2 _707 = _702;
            _707.x = -1.0;
            _708 = _707;
        }
        else
        {
            _708 = _702;
        }
        highp float _711 = sin(_670);
        highp float _712 = cos(_670);
        highp vec2 _713 = ((_708 - _680) / _679) - vec2(0.5);
        highp float _714 = _713.x;
        highp float _715 = _713.y;
        highp vec2 _723 = (vec2(_714 * _712 + (-(_715 * _711)), _714 * _711 + (_715 * _712)) + vec2(0.5)) * _679 + _680;
        uint _727 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _731 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _727 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _727);
        highp float _732 = _723.x;
        highp float _733 = _723.y;
        uint _740 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _750 = ((mix(vec2(_732, 1.0 - _733), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_731 % _740), float(_731 / _740))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _750.y = 1.0 - _750.y;
        highp vec4 _755 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _750);
        highp vec4 _771;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _758 = _755.x;
            highp float _759 = _755.y;
            highp float _760 = _755.z;
            highp float _761 = isnan(_759) ? _758 : (isnan(_758) ? _759 : min(_758, _759));
            highp float _762 = isnan(_759) ? _758 : (isnan(_758) ? _759 : max(_758, _759));
            highp float _763 = isnan(_760) ? _762 : (isnan(_762) ? _760 : min(_762, _760));
            highp float _764 = isnan(_763) ? _761 : (isnan(_761) ? _763 : max(_761, _763));
            _771 = vec4(1.0, 1.0, 1.0, clamp((_764 - 0.5) / clamp(fwidth(_764), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _771 = _755;
        }
        highp vec4 _794;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _775 = clamp(_603 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _778 = 0.5 - abs(_732 - 0.5);
            highp float _785 = 0.5 - abs(_733 - 0.5);
            highp vec4 _793 = _771;
            _793.w = _771.w * (clamp(_778 / clamp(fwidth(_778), 9.9999997473787516355514526367188e-05, _775), 0.0, 1.0) * clamp(_785 / clamp(fwidth(_785), 9.9999997473787516355514526367188e-05, _775), 0.0, 1.0));
            _794 = _793;
        }
        else
        {
            _794 = _771;
        }
        highp vec4 _795 = _Globals._Color2nd * _794;
        highp float _801 = _795.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _444).x;
        _795.w = mix(_801, _801 * clamp((_393 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _827;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_332 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_332 < 0.0)))
        {
            highp vec4 _826 = _795;
            _826.w = 0.0;
            _827 = _826;
        }
        else
        {
            _827 = _795;
        }
        highp vec3 _828 = _511.xyz;
        highp vec3 _837 = _828 + _827.xyz;
        highp vec3 _838 = _828 * _827.xyz;
        bvec3 _840 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _841 = vec3(_840.x ? _827.xyz.x : _284.x, _840.y ? _827.xyz.y : _284.y, _840.z ? _827.xyz.z : _284.z);
        bvec3 _843 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _851;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _849 = (-_828) * _827.xyz + _837;
            bvec3 _2173 = isnan(_849);
            bvec3 _2174 = isnan(_828);
            highp vec3 _2175 = max(_849, _828);
            highp vec3 _2176 = vec3(_2173.x ? _828.x : _2175.x, _2173.y ? _828.y : _2175.y, _2173.z ? _828.z : _2175.z);
            _851 = vec3(_2174.x ? _849.x : _2176.x, _2174.y ? _849.y : _2176.y, _2174.z ? _849.z : _2176.z);
        }
        else
        {
            _851 = vec3(_843.x ? _837.x : _841.x, _843.y ? _837.y : _841.y, _843.z ? _837.z : _841.z);
        }
        bvec3 _853 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _855 = mix(_828, vec3(_853.x ? _838.x : _851.x, _853.y ? _838.y : _851.y, _853.z ? _838.z : _851.z), vec3(_827.w * _Globals._Main2ndEnableLighting));
        _857 = _827;
        _858 = vec4(_855.x, _855.y, _855.z, _511.w);
    }
    else
    {
        _857 = _Globals._Color2nd;
        _858 = _511;
    }
    bool _863 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1106;
    highp vec4 _1107;
    if (_863)
    {
        bvec2 _869 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _870 = vec2(_869.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _869.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _872 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _873 = vec2(_872.x ? out_var_TEXCOORD1.xy.x : _870.x, _872.y ? out_var_TEXCOORD1.xy.y : _870.y);
        bvec2 _875 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _876 = vec2(_875.x ? out_var_TEXCOORD1.zw.x : _873.x, _875.y ? out_var_TEXCOORD1.zw.y : _873.y);
        bvec2 _878 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _879 = vec2(_878.x ? _608.x : _876.x, _878.y ? _608.y : _876.y);
        highp vec4 _918 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _919 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _927;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _926 = _879;
            _926.x = abs(_879.x - 0.5) + 0.5;
            _927 = _926;
        }
        else
        {
            _927 = _879;
        }
        highp vec2 _928 = _918.xy;
        highp vec2 _929 = _918.zw;
        highp vec2 _930 = _927 * _928 + _929;
        highp vec2 _939;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_879.x < 0.5))
        {
            highp vec2 _938 = _930;
            _938.x = 1.0 - _930.x;
            _939 = _938;
        }
        else
        {
            _939 = _930;
        }
        highp vec2 _946;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _609)
        {
            highp vec2 _945 = _939;
            _945.x = 1.0 - _939.x;
            _946 = _945;
        }
        else
        {
            _946 = _939;
        }
        highp vec2 _951;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _609)
        {
            highp vec2 _950 = _946;
            _950.x = -1.0;
            _951 = _950;
        }
        else
        {
            _951 = _946;
        }
        highp vec2 _957;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_609))
        {
            highp vec2 _956 = _951;
            _956.x = -1.0;
            _957 = _956;
        }
        else
        {
            _957 = _951;
        }
        highp float _960 = sin(_919);
        highp float _961 = cos(_919);
        highp vec2 _962 = ((_957 - _929) / _928) - vec2(0.5);
        highp float _963 = _962.x;
        highp float _964 = _962.y;
        highp vec2 _972 = (vec2(_963 * _961 + (-(_964 * _960)), _963 * _960 + (_964 * _961)) + vec2(0.5)) * _928 + _929;
        uint _976 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _980 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _976 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _976);
        highp float _981 = _972.x;
        highp float _982 = _972.y;
        uint _989 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _999 = ((mix(vec2(_981, 1.0 - _982), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_980 % _989), float(_980 / _989))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _999.y = 1.0 - _999.y;
        highp vec4 _1004 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _999);
        highp vec4 _1020;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1007 = _1004.x;
            highp float _1008 = _1004.y;
            highp float _1009 = _1004.z;
            highp float _1010 = isnan(_1008) ? _1007 : (isnan(_1007) ? _1008 : min(_1007, _1008));
            highp float _1011 = isnan(_1008) ? _1007 : (isnan(_1007) ? _1008 : max(_1007, _1008));
            highp float _1012 = isnan(_1009) ? _1011 : (isnan(_1011) ? _1009 : min(_1011, _1009));
            highp float _1013 = isnan(_1012) ? _1010 : (isnan(_1010) ? _1012 : max(_1010, _1012));
            _1020 = vec4(1.0, 1.0, 1.0, clamp((_1013 - 0.5) / clamp(fwidth(_1013), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1020 = _1004;
        }
        highp vec4 _1043;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1024 = clamp(_603 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1027 = 0.5 - abs(_981 - 0.5);
            highp float _1034 = 0.5 - abs(_982 - 0.5);
            highp vec4 _1042 = _1020;
            _1042.w = _1020.w * (clamp(_1027 / clamp(fwidth(_1027), 9.9999997473787516355514526367188e-05, _1024), 0.0, 1.0) * clamp(_1034 / clamp(fwidth(_1034), 9.9999997473787516355514526367188e-05, _1024), 0.0, 1.0));
            _1043 = _1042;
        }
        else
        {
            _1043 = _1020;
        }
        highp vec4 _1044 = _Globals._Color3rd * _1043;
        highp float _1050 = _1044.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _444).x;
        _1044.w = mix(_1050, _1050 * clamp((_393 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1076;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_332 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_332 < 0.0)))
        {
            highp vec4 _1075 = _1044;
            _1075.w = 0.0;
            _1076 = _1075;
        }
        else
        {
            _1076 = _1044;
        }
        highp vec3 _1086 = _858.xyz + _1076.xyz;
        highp vec3 _1087 = _858.xyz * _1076.xyz;
        bvec3 _1089 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1090 = vec3(_1089.x ? _1076.xyz.x : _284.x, _1089.y ? _1076.xyz.y : _284.y, _1089.z ? _1076.xyz.z : _284.z);
        bvec3 _1092 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1100;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1098 = (-_858.xyz) * _1076.xyz + _1086;
            bvec3 _2198 = isnan(_1098);
            bvec3 _2199 = isnan(_858.xyz);
            highp vec3 _2200 = max(_1098, _858.xyz);
            highp vec3 _2201 = vec3(_2198.x ? _858.xyz.x : _2200.x, _2198.y ? _858.xyz.y : _2200.y, _2198.z ? _858.xyz.z : _2200.z);
            _1100 = vec3(_2199.x ? _1098.x : _2201.x, _2199.y ? _1098.y : _2201.y, _2199.z ? _1098.z : _2201.z);
        }
        else
        {
            _1100 = vec3(_1092.x ? _1086.x : _1090.x, _1092.y ? _1086.y : _1090.y, _1092.z ? _1086.z : _1090.z);
        }
        bvec3 _1102 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1104 = mix(_858.xyz, vec3(_1102.x ? _1087.x : _1100.x, _1102.y ? _1087.y : _1100.y, _1102.z ? _1087.z : _1100.z), vec3(_1076.w * _Globals._Main3rdEnableLighting));
        _1106 = _1076;
        _1107 = vec4(_1104.x, _1104.y, _1104.z, _858.w);
    }
    else
    {
        _1106 = _Globals._Color3rd;
        _1107 = _858;
    }
    highp vec4 _1108 = _1107;
    _1108.w = 1.0;
    highp vec4 _1282;
    highp float _1283;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1132 = clamp(dot(_384, mix(_604, _601, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1135 = clamp(dot(_384, mix(_604, _601, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1138 = clamp(dot(_384, mix(_604, _601, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1142 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1145 = clamp(_383 + distance(_384, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1148 = mix(1.0, _1145, _Globals._ShadowReceive);
        highp float _1149 = _1132 * _1148;
        highp float _1152 = mix(1.0, _1145, _Globals._Shadow2ndReceive);
        highp float _1156 = mix(1.0, _1145, _Globals._Shadow3rdReceive);
        highp float _1167 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1168 = clamp(_1167, 0.0, 1.0);
        highp float _1170 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1183 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1197 = clamp(_1167 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1210 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1225 = (_332 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1226 = clamp((_1132 * _1148 + (-_1168)) / clamp(fwidth(_1149) * _1142 + (_1170 - _1168), 0.0, 1.0), 0.0, 1.0) * _1225;
        highp vec3 _1258 = mix(mix(_1108.xyz * _Globals._ShadowColor.xyz, (_1108.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1135 * _1152 + (-_1183)) / clamp(fwidth(_1135 * _1152) * _1142 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1183), 0.0, 1.0), 0.0, 1.0) * _1225)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1108.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1138 * _1156 + (-_1210)) / clamp(fwidth(_1138 * _1156) * _1142 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1210), 0.0, 1.0), 0.0, 1.0) * _1225)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1264 = _1108.xyz * out_var_TEXCOORD6;
        highp vec3 _1270 = mix(mix(_1258, _1258 * _1108.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1108.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2203 = isnan(_1270);
        bvec3 _2204 = isnan(_1264);
        highp vec3 _2205 = min(_1270, _1264);
        highp vec3 _2206 = vec3(_2203.x ? _1264.x : _2205.x, _2203.y ? _1264.y : _2205.y, _2203.z ? _1264.z : _2205.z);
        highp vec3 _1278 = mix(mix(vec3(_2204.x ? _1270.x : _2206.x, _2204.y ? _1270.y : _2206.y, _2204.z ? _1270.z : _2206.z), _1264, _Globals._ShadowBorderColor.xyz * (clamp((_1132 * _1148 + (-_1197)) / clamp(fwidth(_1149) * _1142 + (_1170 - _1197), 0.0, 1.0), 0.0, 1.0) * _1225)), _1264, vec3(mix(1.0, _1226, _Globals._ShadowStrength)));
        _1282 = vec4(_1278.x, _1278.y, _1278.z, _1108.w);
        _1283 = _1226;
    }
    else
    {
        highp vec3 _1280 = _1108.xyz * out_var_TEXCOORD6;
        _1282 = vec4(_1280.x, _1280.y, _1280.z, _1108.w);
        _1283 = 1.0;
    }
    highp vec3 _1286 = vec3(_Globals._LightMaxLimit);
    bvec3 _2208 = isnan(out_var_TEXCOORD6);
    bvec3 _2209 = isnan(_1286);
    highp vec3 _2210 = min(out_var_TEXCOORD6, _1286);
    highp vec3 _2211 = vec3(_2208.x ? _1286.x : _2210.x, _2208.y ? _1286.y : _2210.y, _2208.z ? _1286.z : _2210.z);
    highp vec3 _1287 = vec3(_2209.x ? out_var_TEXCOORD6.x : _2211.x, _2209.y ? out_var_TEXCOORD6.y : _2211.y, _2209.z ? out_var_TEXCOORD6.z : _2211.z);
    highp float _1288 = clamp(_1283, 0.0, 1.0);
    highp vec3 _1290 = _1108.xyz * _Globals._LightMaxLimit;
    bvec3 _2213 = isnan(_1282.xyz);
    bvec3 _2214 = isnan(_1290);
    highp vec3 _2215 = min(_1282.xyz, _1290);
    highp vec3 _2216 = vec3(_2213.x ? _1290.x : _2215.x, _2213.y ? _1290.y : _2215.y, _2213.z ? _1290.z : _2215.z);
    highp vec3 _1291 = vec3(_2214.x ? _1282.xyz.x : _2216.x, _2214.y ? _1282.xyz.y : _2216.y, _2214.z ? _1282.xyz.z : _2216.z);
    highp vec4 _1325;
    if (_614)
    {
        highp vec3 _1295 = _1291.xyz;
        highp vec3 _1305 = _1295 + _857.xyz;
        highp vec3 _1306 = _1295 * _857.xyz;
        bvec3 _1308 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1309 = vec3(_1308.x ? _857.xyz.x : _284.x, _1308.y ? _857.xyz.y : _284.y, _1308.z ? _857.xyz.z : _284.z);
        bvec3 _1311 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1319;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1317 = (-_1295) * _857.xyz + _1305;
            bvec3 _2218 = isnan(_1317);
            bvec3 _2219 = isnan(_1295);
            highp vec3 _2220 = max(_1317, _1295);
            highp vec3 _2221 = vec3(_2218.x ? _1295.x : _2220.x, _2218.y ? _1295.y : _2220.y, _2218.z ? _1295.z : _2220.z);
            _1319 = vec3(_2219.x ? _1317.x : _2221.x, _2219.y ? _1317.y : _2221.y, _2219.z ? _1317.z : _2221.z);
        }
        else
        {
            _1319 = vec3(_1311.x ? _1305.x : _1309.x, _1311.y ? _1305.y : _1309.y, _1311.z ? _1305.z : _1309.z);
        }
        bvec3 _1321 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1323 = mix(_1295, vec3(_1321.x ? _1306.x : _1319.x, _1321.y ? _1306.y : _1319.y, _1321.z ? _1306.z : _1319.z), vec3((-_857.w) * _Globals._Main2ndEnableLighting + _857.w));
        _1325 = vec4(_1323.x, _1323.y, _1323.z, _1282.w);
    }
    else
    {
        _1325 = vec4(_1291.x, _1291.y, _1291.z, _1282.w);
    }
    highp vec4 _1358;
    if (_863)
    {
        highp vec3 _1338 = _1325.xyz + _1106.xyz;
        highp vec3 _1339 = _1325.xyz * _1106.xyz;
        bvec3 _1341 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1342 = vec3(_1341.x ? _1106.xyz.x : _284.x, _1341.y ? _1106.xyz.y : _284.y, _1341.z ? _1106.xyz.z : _284.z);
        bvec3 _1344 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1352;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1350 = (-_1325.xyz) * _1106.xyz + _1338;
            bvec3 _2223 = isnan(_1350);
            bvec3 _2224 = isnan(_1325.xyz);
            highp vec3 _2225 = max(_1350, _1325.xyz);
            highp vec3 _2226 = vec3(_2223.x ? _1325.xyz.x : _2225.x, _2223.y ? _1325.xyz.y : _2225.y, _2223.z ? _1325.xyz.z : _2225.z);
            _1352 = vec3(_2224.x ? _1350.x : _2226.x, _2224.y ? _1350.y : _2226.y, _2224.z ? _1350.z : _2226.z);
        }
        else
        {
            _1352 = vec3(_1344.x ? _1338.x : _1342.x, _1344.y ? _1338.y : _1342.y, _1344.z ? _1338.z : _1342.z);
        }
        bvec3 _1354 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1356 = mix(_1325.xyz, vec3(_1354.x ? _1339.x : _1352.x, _1354.y ? _1339.y : _1352.y, _1354.z ? _1339.z : _1352.z), vec3((-_1106.w) * _Globals._Main3rdEnableLighting + _1106.w));
        _1358 = vec4(_1356.x, _1356.y, _1356.z, _1325.w);
    }
    else
    {
        _1358 = _1325;
    }
    highp vec4 _1404;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1374 = pow(clamp(1.0 - abs(dot(mix(_604, _601, vec3(_Globals._RimShadeNormalStrength)), _400)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1383 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1402 = mix(_1358.xyz, _1358.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1374 - _1383) / clamp(fwidth(_1374) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1383), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1404 = vec4(_1402.x, _1402.y, _1402.z, _1358.w);
    }
    else
    {
        _1404 = _1358;
    }
    highp vec4 _1477;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1428 = dot(normalize(((-_400) * _Globals._BacklightViewStrength) + _384), mix(_604, _601, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1438;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1438 = _1428 * clamp(_383 + distance(_384, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1438 = _1428;
        }
        highp float _1447 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1475 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1108.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_332 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_400, _384) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1438 - _1447) / clamp(fwidth(_1438) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1447), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1287 + _1404.xyz;
        _1477 = vec4(_1475.x, _1475.y, _1475.z, _1404.w);
    }
    else
    {
        _1477 = _1404;
    }
    highp vec4 _1628;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1522;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1499 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _444 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1499.w = _1499.w * _1499.x;
            highp vec2 _1510 = ((_1499.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1511 = vec3(_1510.x, _1510.y, _289.z);
            highp vec2 _1512 = _1510.xy;
            _1511.z = sqrt(1.0 - clamp(dot(_1512, _1512), 0.0, 1.0));
            highp vec3 _1519 = normalize(_409 * _1511);
            highp vec3 _1520 = -_1519;
            _1522 = vec3(_599.x ? _1520.x : _1519.x, _599.y ? _1520.y : _1519.y, _599.z ? _1520.z : _1519.z);
        }
        else
        {
            _1522 = mix(_604, _601, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1539 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1540 = vec3(_1539.x ? _400.x : _308.x, _1539.y ? _400.y : _308.y, _1539.z ? _400.z : _308.z);
        bvec3 _1541 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1542 = vec3(_1541.x ? vec3(0.0, 1.0, 0.0).x : _315.x, _1541.y ? vec3(0.0, 1.0, 0.0).y : _315.y, _1541.z ? vec3(0.0, 1.0, 0.0).z : _315.z);
        highp vec3 _1546 = normalize(_1542 - (_1540 * dot(_1540, _1542)));
        highp vec4 _1568 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1522) * mat3(cross(_1540, _1546), _1546, _1540)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1592 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _444 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1594 = mix(_1568.xyz, _1568.xyz * _1287, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1601 = mix(_1594, _1594 * _1108.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1608 = _1477.xyz + _1601;
        highp vec3 _1609 = _1477.xyz * _1601;
        bvec3 _1611 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1612 = vec3(_1611.x ? _1601.x : _284.x, _1611.y ? _1601.y : _284.y, _1611.z ? _1601.z : _284.z);
        bvec3 _1614 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1622;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1620 = (-_1477.xyz) * _1601 + _1608;
            bvec3 _2228 = isnan(_1620);
            bvec3 _2229 = isnan(_1477.xyz);
            highp vec3 _2230 = max(_1620, _1477.xyz);
            highp vec3 _2231 = vec3(_2228.x ? _1477.xyz.x : _2230.x, _2228.y ? _1477.xyz.y : _2230.y, _2228.z ? _1477.xyz.z : _2230.z);
            _1622 = vec3(_2229.x ? _1620.x : _2231.x, _2229.y ? _1620.y : _2231.y, _2229.z ? _1620.z : _2231.z);
        }
        else
        {
            _1622 = vec3(_1614.x ? _1608.x : _1612.x, _1614.y ? _1608.y : _1612.y, _1614.z ? _1608.z : _1612.z);
        }
        bvec3 _1624 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1626 = mix(_1477.xyz, vec3(_1624.x ? _1609.x : _1622.x, _1624.y ? _1609.y : _1622.y, _1624.z ? _1609.z : _1622.z), _1592.xyz * (_Globals._MatCapBlend * ((_332 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1568.w, _1568.w * _1288, _Globals._MatCapShadowMask))));
        _1628 = vec4(_1626.x, _1626.y, _1626.z, _1477.w);
    }
    else
    {
        _1628 = _1477;
    }
    highp vec4 _1778;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1673;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1650 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _444 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1650.w = _1650.w * _1650.x;
            highp vec2 _1661 = ((_1650.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1662 = vec3(_1661.x, _1661.y, _289.z);
            highp vec2 _1663 = _1661.xy;
            _1662.z = sqrt(1.0 - clamp(dot(_1663, _1663), 0.0, 1.0));
            highp vec3 _1670 = normalize(_409 * _1662);
            highp vec3 _1671 = -_1670;
            _1673 = vec3(_599.x ? _1671.x : _1670.x, _599.y ? _1671.y : _1670.y, _599.z ? _1671.z : _1670.z);
        }
        else
        {
            _1673 = mix(_604, _601, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1689 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1690 = vec3(_1689.x ? _400.x : _308.x, _1689.y ? _400.y : _308.y, _1689.z ? _400.z : _308.z);
        bvec3 _1691 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1692 = vec3(_1691.x ? vec3(0.0, 1.0, 0.0).x : _315.x, _1691.y ? vec3(0.0, 1.0, 0.0).y : _315.y, _1691.z ? vec3(0.0, 1.0, 0.0).z : _315.z);
        highp vec3 _1696 = normalize(_1692 - (_1690 * dot(_1690, _1692)));
        highp vec4 _1718 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1673 * mat3(cross(_1690, _1696), _1696, _1690)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1719 = _1718.xyz;
        highp float _1725 = _1718.w;
        highp vec4 _1742 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _444 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1744 = mix(_1719, _1719 * _1287, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1751 = mix(_1744, _1744 * _1108.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1758 = _1628.xyz + _1751;
        highp vec3 _1759 = _1628.xyz * _1751;
        bvec3 _1761 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1762 = vec3(_1761.x ? _1751.x : _284.x, _1761.y ? _1751.y : _284.y, _1761.z ? _1751.z : _284.z);
        bvec3 _1764 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1772;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1770 = (-_1628.xyz) * _1751 + _1758;
            bvec3 _2233 = isnan(_1770);
            bvec3 _2234 = isnan(_1628.xyz);
            highp vec3 _2235 = max(_1770, _1628.xyz);
            highp vec3 _2236 = vec3(_2233.x ? _1628.xyz.x : _2235.x, _2233.y ? _1628.xyz.y : _2235.y, _2233.z ? _1628.xyz.z : _2235.z);
            _1772 = vec3(_2234.x ? _1770.x : _2236.x, _2234.y ? _1770.y : _2236.y, _2234.z ? _1770.z : _2236.z);
        }
        else
        {
            _1772 = vec3(_1764.x ? _1758.x : _1762.x, _1764.y ? _1758.y : _1762.y, _1764.z ? _1758.z : _1762.z);
        }
        bvec3 _1774 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1776 = mix(_1628.xyz, vec3(_1774.x ? _1759.x : _1772.x, _1774.y ? _1759.y : _1772.y, _1774.z ? _1759.z : _1772.z), _1742.xyz * (_Globals._MatCap2ndBlend * ((_332 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1725, _1725 * _1288, _Globals._MatCap2ndShadowMask))));
        _1778 = vec4(_1776.x, _1776.y, _1776.z, _1628.w);
    }
    else
    {
        _1778 = _1628;
    }
    highp vec4 _1924;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1797 = mix(_604, _601, vec3(_Globals._RimNormalStrength));
        highp float _1801 = dot(_384, _1797) * 0.5 + 0.5;
        highp float _1824 = (_332 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1797, _400)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1828 = mix(_1824, _1824 * clamp((_1801 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1829 = _1824 * clamp(((1.0 - _1801) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1839 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1848 = clamp((_1828 - _1839) / clamp(fwidth(_1828) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1839), 0.0, 1.0), 0.0, 1.0);
        highp float _1855 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1865 = clamp((_1829 * _Globals._RimDirStrength + (-_1855)) / clamp(fwidth(_1829 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1855), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1877 = vec3(1.0 - _Globals._RimEnableLighting) + (_1287 * _Globals._RimEnableLighting);
        highp vec3 _1879 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1108.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1880 = _1879 * _1877;
        highp vec3 _1886 = _1879 * _1877 + _1778.xyz;
        highp vec3 _1887 = _1778.xyz * _1880;
        bvec3 _1889 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1890 = vec3(_1889.x ? _1880.x : _284.x, _1889.y ? _1880.y : _284.y, _1889.z ? _1880.z : _284.z);
        bvec3 _1892 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1894 = _Globals._RimBlendMode == 2u;
        highp vec3 _1900;
        if (_1894)
        {
            highp vec3 _1898 = (-_1778.xyz) * _1880 + _1886;
            bvec3 _2238 = isnan(_1898);
            bvec3 _2239 = isnan(_1778.xyz);
            highp vec3 _2240 = max(_1898, _1778.xyz);
            highp vec3 _2241 = vec3(_2238.x ? _1778.xyz.x : _2240.x, _2238.y ? _1778.xyz.y : _2240.y, _2238.z ? _1778.xyz.z : _2240.z);
            _1900 = vec3(_2239.x ? _1898.x : _2241.x, _2239.y ? _1898.y : _2241.y, _2239.z ? _1898.z : _2241.z);
        }
        else
        {
            _1900 = vec3(_1892.x ? _1886.x : _1890.x, _1892.y ? _1886.y : _1890.y, _1892.z ? _1886.z : _1890.z);
        }
        bvec3 _1902 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1905 = mix(_1778.xyz, vec3(_1902.x ? _1887.x : _1900.x, _1902.y ? _1887.y : _1900.y, _1902.z ? _1887.z : _1900.z), vec3(mix(_1848, _1848 * _1288, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1907 = _Globals._RimIndirColor.xyz * _1877;
        highp vec3 _1911 = _Globals._RimIndirColor.xyz * _1877 + _1905;
        highp vec3 _1912 = _1905 * _1907;
        highp vec3 _1913 = vec3(_1889.x ? _1907.x : _284.x, _1889.y ? _1907.y : _284.y, _1889.z ? _1907.z : _284.z);
        highp vec3 _1920;
        if (_1894)
        {
            highp vec3 _1918 = (-_1905) * _1907 + _1911;
            bvec3 _2243 = isnan(_1918);
            bvec3 _2244 = isnan(_1905);
            highp vec3 _2245 = max(_1918, _1905);
            highp vec3 _2246 = vec3(_2243.x ? _1905.x : _2245.x, _2243.y ? _1905.y : _2245.y, _2243.z ? _1905.z : _2245.z);
            _1920 = vec3(_2244.x ? _1918.x : _2246.x, _2244.y ? _1918.y : _2246.y, _2244.z ? _1918.z : _2246.z);
        }
        else
        {
            _1920 = vec3(_1892.x ? _1911.x : _1913.x, _1892.y ? _1911.y : _1913.y, _1892.z ? _1911.z : _1913.z);
        }
        highp vec3 _1922 = mix(_1905, vec3(_1902.x ? _1912.x : _1920.x, _1902.y ? _1912.y : _1920.y, _1902.z ? _1912.z : _1920.z), vec3(mix(_1865, _1865 * _1288, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1924 = vec4(_1922.x, _1922.y, _1922.z, _1778.w);
    }
    else
    {
        _1924 = _1778;
    }
    highp vec4 _1989;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1938 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _388, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1952 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1958;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1958 = roundEven(_1952);
        }
        else
        {
            _1958 = _1952;
        }
        highp vec3 _1965 = mix(_1938, _1938 * _1108.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1969 = _1924.xyz + _1965;
        highp vec3 _1970 = _1924.xyz * _1965;
        bvec3 _1972 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1973 = vec3(_1972.x ? _1965.x : _284.x, _1972.y ? _1965.y : _284.y, _1972.z ? _1965.z : _284.z);
        bvec3 _1975 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1983;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1981 = (-_1924.xyz) * _1965 + _1969;
            bvec3 _2248 = isnan(_1981);
            bvec3 _2249 = isnan(_1924.xyz);
            highp vec3 _2250 = max(_1981, _1924.xyz);
            highp vec3 _2251 = vec3(_2248.x ? _1924.xyz.x : _2250.x, _2248.y ? _1924.xyz.y : _2250.y, _2248.z ? _1924.xyz.z : _2250.z);
            _1983 = vec3(_2249.x ? _1981.x : _2251.x, _2249.y ? _1981.y : _2251.y, _2249.z ? _1981.z : _2251.z);
        }
        else
        {
            _1983 = vec3(_1975.x ? _1969.x : _1973.x, _1975.y ? _1969.y : _1973.y, _1975.z ? _1969.z : _1973.z);
        }
        bvec3 _1985 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1987 = mix(_1924.xyz, vec3(_1985.x ? _1970.x : _1983.x, _1985.y ? _1970.y : _1983.y, _1985.z ? _1970.z : _1983.z), vec3((_Globals._EmissionBlend * mix(1.0, _1958, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1989 = vec4(_1987.x, _1987.y, _1987.z, _1924.w);
    }
    else
    {
        _1989 = _1924;
    }
    highp vec4 _2054;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2003 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _388, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2017 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2023;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2023 = roundEven(_2017);
        }
        else
        {
            _2023 = _2017;
        }
        highp vec3 _2030 = mix(_2003, _2003 * _1108.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2034 = _1989.xyz + _2030;
        highp vec3 _2035 = _1989.xyz * _2030;
        bvec3 _2037 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2038 = vec3(_2037.x ? _2030.x : _284.x, _2037.y ? _2030.y : _284.y, _2037.z ? _2030.z : _284.z);
        bvec3 _2040 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2048;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2046 = (-_1989.xyz) * _2030 + _2034;
            bvec3 _2253 = isnan(_2046);
            bvec3 _2254 = isnan(_1989.xyz);
            highp vec3 _2255 = max(_2046, _1989.xyz);
            highp vec3 _2256 = vec3(_2253.x ? _1989.xyz.x : _2255.x, _2253.y ? _1989.xyz.y : _2255.y, _2253.z ? _1989.xyz.z : _2255.z);
            _2048 = vec3(_2254.x ? _2046.x : _2256.x, _2254.y ? _2046.y : _2256.y, _2254.z ? _2046.z : _2256.z);
        }
        else
        {
            _2048 = vec3(_2040.x ? _2034.x : _2038.x, _2040.y ? _2034.y : _2038.y, _2040.z ? _2034.z : _2038.z);
        }
        bvec3 _2050 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2052 = mix(_1989.xyz, vec3(_2050.x ? _2035.x : _2048.x, _2050.y ? _2035.y : _2048.y, _2050.z ? _2035.z : _2048.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2023, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2054 = vec4(_2052.x, _2052.y, _2052.z, _1989.w);
    }
    else
    {
        _2054 = _1989;
    }
    bvec3 _2056 = bvec3(_332 < 0.0);
    highp vec3 _2065 = mix(_2054.xyz, _Globals._BackfaceColor.xyz * _1287, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2100 = vec3(_2056.x ? _2065.x : _2054.xyz.x, _2056.y ? _2065.y : _2054.xyz.y, _2056.z ? _2065.z : _2054.xyz.z).xyz;
    highp vec3 _2108 = mix(_2100, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2100, vec3(pow(clamp(1.0 - abs(dot(_604, _400)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_332 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _393) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2108.x, _2108.y, _2108.z, _2054.w), vec4(out_var_TEXCOORD9));
}
