#version 300 es
precision mediump float;
precision highp int;

vec3 _285;
vec3 _290;

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
    highp vec3 _309 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _316 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _333 = float(gl_FrontFacing ? 1 : (-1));
    highp float _384;
    do
    {
        highp vec3 _340 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _341 = _340.xy;
        highp float _347 = _340.z;
        if ((any(lessThan(_341, vec2(0.0))) || any(greaterThan(_341, vec2(1.0)))) || (_347 > 1.0))
        {
            _384 = 1.0;
            break;
        }
        highp float _357 = _347 + _Globals.uShadowBias;
        _384 = (((step(_357, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _341), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_357, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _341), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_357, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _341), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_357, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _341), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _385 = normalize(out_var_TEXCOORD7);
    highp vec3 _389 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _393 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _394 = length(_393);
    highp vec3 _401 = normalize(_393);
    highp mat3 _410 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _415 = bvec2(_333 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _416 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _429 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _430 = sin(_429);
    highp float _431 = cos(_429);
    highp vec2 _432 = (vec2(_415.x ? _416.x : out_var_TEXCOORD0.xy.x, _415.y ? _416.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _433 = _432.x;
    highp float _434 = _432.y;
    highp vec2 _445 = (vec2(_433 * _431 + (-(_434 * _430)), _433 * _430 + (_434 * _431)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _449 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _445);
    highp vec3 _456 = pow(abs(_449.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _457 = _456.z;
    highp float _458 = _456.y;
    bvec4 _460 = bvec4(_457 > _458);
    highp vec4 _461 = vec4(_457, _458, -1.0, 0.666666686534881591796875);
    highp vec4 _462 = vec4(_458, _457, 0.0, -0.3333333432674407958984375);
    highp vec4 _463 = vec4(_460.x ? _461.x : _462.x, _460.y ? _461.y : _462.y, _460.z ? _461.z : _462.z, _460.w ? _461.w : _462.w);
    highp float _464 = _463.x;
    highp float _465 = _456.x;
    bvec4 _467 = bvec4(_464 > _465);
    highp vec4 _470 = vec4(_464, _463.yw, _465);
    highp vec4 _472 = vec4(_465, _463.yz, _464);
    highp vec4 _473 = vec4(_467.x ? _470.x : _472.x, _467.y ? _470.y : _472.y, _467.z ? _470.z : _472.z, _467.w ? _470.w : _472.w);
    highp float _478 = _473.x - (isnan(_473.y) ? _473.w : (isnan(_473.w) ? _473.y : min(_473.w, _473.y)));
    highp float _491 = clamp((_478 / (_473.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _494 = clamp(_473.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _508 = vec3((-_494) * _491 + _494) + (clamp(abs((fract(vec3(abs(_473.z + ((_473.w - _473.y) / (6.0 * _478 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_494 * _491));
    highp vec4 _512 = vec4(_508.x, _508.y, _508.z, _449.w) * _Globals._Color;
    highp vec3 _544;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _525 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _445 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _525.w = _525.w * _525.x;
        highp vec2 _536 = ((_525.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _537 = vec3(_536.x, _536.y, _290.z);
        highp vec2 _538 = _536.xy;
        _537.z = sqrt(1.0 - clamp(dot(_538, _538), 0.0, 1.0));
        _544 = _537;
    }
    else
    {
        _544 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _593;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _553 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _554 = vec2(_553.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _553.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _556 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _557 = vec2(_556.x ? out_var_TEXCOORD1.xy.x : _554.x, _556.y ? out_var_TEXCOORD1.xy.y : _554.y);
        bvec2 _559 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _569 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_559.x ? out_var_TEXCOORD1.zw.x : _557.x, _559.y ? out_var_TEXCOORD1.zw.y : _557.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _569.w = _569.w * _569.x;
        highp vec2 _581 = (((_569.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _593 = vec3(_544.xy + _581, _544.z * sqrt(1.0 - clamp(dot(_581, _581), 0.0, 1.0)));
    }
    else
    {
        _593 = _544;
    }
    highp vec3 _595 = normalize(_410 * _593);
    bvec3 _600 = bvec3(_333 < (_Globals._FlipNormal - 1.0));
    highp vec3 _601 = -_595;
    highp vec3 _602 = vec3(_600.x ? _601.x : _595.x, _600.y ? _601.y : _595.y, _600.z ? _601.z : _595.z);
    highp float _604 = clamp(dot(_602, _401), 0.0, 1.0);
    highp vec3 _605 = normalize(out_var_TEXCOORD4);
    highp vec2 _609 = ((_602 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _316, _309)).xy * 0.5) + vec2(0.5);
    bool _610 = out_var_TEXCOORD5.w > 0.0;
    bool _615 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _858;
    highp vec4 _859;
    if (_615)
    {
        bvec2 _621 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _622 = vec2(_621.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _621.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _624 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _625 = vec2(_624.x ? out_var_TEXCOORD1.xy.x : _622.x, _624.y ? out_var_TEXCOORD1.xy.y : _622.y);
        bvec2 _627 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _628 = vec2(_627.x ? out_var_TEXCOORD1.zw.x : _625.x, _627.y ? out_var_TEXCOORD1.zw.y : _625.y);
        bvec2 _630 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _631 = vec2(_630.x ? _609.x : _628.x, _630.y ? _609.y : _628.y);
        highp vec4 _670 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _671 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _679;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _678 = _631;
            _678.x = abs(_631.x - 0.5) + 0.5;
            _679 = _678;
        }
        else
        {
            _679 = _631;
        }
        highp vec2 _680 = _670.xy;
        highp vec2 _681 = _670.zw;
        highp vec2 _682 = _679 * _680 + _681;
        highp vec2 _691;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_631.x < 0.5))
        {
            highp vec2 _690 = _682;
            _690.x = 1.0 - _682.x;
            _691 = _690;
        }
        else
        {
            _691 = _682;
        }
        highp vec2 _698;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _610)
        {
            highp vec2 _697 = _691;
            _697.x = 1.0 - _691.x;
            _698 = _697;
        }
        else
        {
            _698 = _691;
        }
        highp vec2 _703;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _610)
        {
            highp vec2 _702 = _698;
            _702.x = -1.0;
            _703 = _702;
        }
        else
        {
            _703 = _698;
        }
        highp vec2 _709;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_610))
        {
            highp vec2 _708 = _703;
            _708.x = -1.0;
            _709 = _708;
        }
        else
        {
            _709 = _703;
        }
        highp float _712 = sin(_671);
        highp float _713 = cos(_671);
        highp vec2 _714 = ((_709 - _681) / _680) - vec2(0.5);
        highp float _715 = _714.x;
        highp float _716 = _714.y;
        highp vec2 _724 = (vec2(_715 * _713 + (-(_716 * _712)), _715 * _712 + (_716 * _713)) + vec2(0.5)) * _680 + _681;
        uint _728 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _732 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _728 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _728);
        highp float _733 = _724.x;
        highp float _734 = _724.y;
        uint _741 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _751 = ((mix(vec2(_733, 1.0 - _734), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_732 % _741), float(_732 / _741))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _751.y = 1.0 - _751.y;
        highp vec4 _756 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _751);
        highp vec4 _772;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _759 = _756.x;
            highp float _760 = _756.y;
            highp float _761 = _756.z;
            highp float _762 = isnan(_760) ? _759 : (isnan(_759) ? _760 : min(_759, _760));
            highp float _763 = isnan(_760) ? _759 : (isnan(_759) ? _760 : max(_759, _760));
            highp float _764 = isnan(_761) ? _763 : (isnan(_763) ? _761 : min(_763, _761));
            highp float _765 = isnan(_764) ? _762 : (isnan(_762) ? _764 : max(_762, _764));
            _772 = vec4(1.0, 1.0, 1.0, clamp((_765 - 0.5) / clamp(fwidth(_765), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _772 = _756;
        }
        highp vec4 _795;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _776 = clamp(_604 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _779 = 0.5 - abs(_733 - 0.5);
            highp float _786 = 0.5 - abs(_734 - 0.5);
            highp vec4 _794 = _772;
            _794.w = _772.w * (clamp(_779 / clamp(fwidth(_779), 9.9999997473787516355514526367188e-05, _776), 0.0, 1.0) * clamp(_786 / clamp(fwidth(_786), 9.9999997473787516355514526367188e-05, _776), 0.0, 1.0));
            _795 = _794;
        }
        else
        {
            _795 = _772;
        }
        highp vec4 _796 = _Globals._Color2nd * _795;
        highp float _802 = _796.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _445).x;
        _796.w = mix(_802, _802 * clamp((_394 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _828;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_333 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_333 < 0.0)))
        {
            highp vec4 _827 = _796;
            _827.w = 0.0;
            _828 = _827;
        }
        else
        {
            _828 = _796;
        }
        highp vec3 _829 = _512.xyz;
        highp vec3 _838 = _829 + _828.xyz;
        highp vec3 _839 = _829 * _828.xyz;
        bvec3 _841 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _842 = vec3(_841.x ? _828.xyz.x : _285.x, _841.y ? _828.xyz.y : _285.y, _841.z ? _828.xyz.z : _285.z);
        bvec3 _844 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _852;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _850 = (-_829) * _828.xyz + _838;
            bvec3 _2174 = isnan(_850);
            bvec3 _2175 = isnan(_829);
            highp vec3 _2176 = max(_850, _829);
            highp vec3 _2177 = vec3(_2174.x ? _829.x : _2176.x, _2174.y ? _829.y : _2176.y, _2174.z ? _829.z : _2176.z);
            _852 = vec3(_2175.x ? _850.x : _2177.x, _2175.y ? _850.y : _2177.y, _2175.z ? _850.z : _2177.z);
        }
        else
        {
            _852 = vec3(_844.x ? _838.x : _842.x, _844.y ? _838.y : _842.y, _844.z ? _838.z : _842.z);
        }
        bvec3 _854 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _856 = mix(_829, vec3(_854.x ? _839.x : _852.x, _854.y ? _839.y : _852.y, _854.z ? _839.z : _852.z), vec3(_828.w * _Globals._Main2ndEnableLighting));
        _858 = _828;
        _859 = vec4(_856.x, _856.y, _856.z, _512.w);
    }
    else
    {
        _858 = _Globals._Color2nd;
        _859 = _512;
    }
    bool _864 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1107;
    highp vec4 _1108;
    if (_864)
    {
        bvec2 _870 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _871 = vec2(_870.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _870.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _873 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _874 = vec2(_873.x ? out_var_TEXCOORD1.xy.x : _871.x, _873.y ? out_var_TEXCOORD1.xy.y : _871.y);
        bvec2 _876 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _877 = vec2(_876.x ? out_var_TEXCOORD1.zw.x : _874.x, _876.y ? out_var_TEXCOORD1.zw.y : _874.y);
        bvec2 _879 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _880 = vec2(_879.x ? _609.x : _877.x, _879.y ? _609.y : _877.y);
        highp vec4 _919 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _920 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _928;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _927 = _880;
            _927.x = abs(_880.x - 0.5) + 0.5;
            _928 = _927;
        }
        else
        {
            _928 = _880;
        }
        highp vec2 _929 = _919.xy;
        highp vec2 _930 = _919.zw;
        highp vec2 _931 = _928 * _929 + _930;
        highp vec2 _940;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_880.x < 0.5))
        {
            highp vec2 _939 = _931;
            _939.x = 1.0 - _931.x;
            _940 = _939;
        }
        else
        {
            _940 = _931;
        }
        highp vec2 _947;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _610)
        {
            highp vec2 _946 = _940;
            _946.x = 1.0 - _940.x;
            _947 = _946;
        }
        else
        {
            _947 = _940;
        }
        highp vec2 _952;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _610)
        {
            highp vec2 _951 = _947;
            _951.x = -1.0;
            _952 = _951;
        }
        else
        {
            _952 = _947;
        }
        highp vec2 _958;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_610))
        {
            highp vec2 _957 = _952;
            _957.x = -1.0;
            _958 = _957;
        }
        else
        {
            _958 = _952;
        }
        highp float _961 = sin(_920);
        highp float _962 = cos(_920);
        highp vec2 _963 = ((_958 - _930) / _929) - vec2(0.5);
        highp float _964 = _963.x;
        highp float _965 = _963.y;
        highp vec2 _973 = (vec2(_964 * _962 + (-(_965 * _961)), _964 * _961 + (_965 * _962)) + vec2(0.5)) * _929 + _930;
        uint _977 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _981 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _977 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _977);
        highp float _982 = _973.x;
        highp float _983 = _973.y;
        uint _990 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1000 = ((mix(vec2(_982, 1.0 - _983), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_981 % _990), float(_981 / _990))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1000.y = 1.0 - _1000.y;
        highp vec4 _1005 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1000);
        highp vec4 _1021;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1008 = _1005.x;
            highp float _1009 = _1005.y;
            highp float _1010 = _1005.z;
            highp float _1011 = isnan(_1009) ? _1008 : (isnan(_1008) ? _1009 : min(_1008, _1009));
            highp float _1012 = isnan(_1009) ? _1008 : (isnan(_1008) ? _1009 : max(_1008, _1009));
            highp float _1013 = isnan(_1010) ? _1012 : (isnan(_1012) ? _1010 : min(_1012, _1010));
            highp float _1014 = isnan(_1013) ? _1011 : (isnan(_1011) ? _1013 : max(_1011, _1013));
            _1021 = vec4(1.0, 1.0, 1.0, clamp((_1014 - 0.5) / clamp(fwidth(_1014), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1021 = _1005;
        }
        highp vec4 _1044;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1025 = clamp(_604 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1028 = 0.5 - abs(_982 - 0.5);
            highp float _1035 = 0.5 - abs(_983 - 0.5);
            highp vec4 _1043 = _1021;
            _1043.w = _1021.w * (clamp(_1028 / clamp(fwidth(_1028), 9.9999997473787516355514526367188e-05, _1025), 0.0, 1.0) * clamp(_1035 / clamp(fwidth(_1035), 9.9999997473787516355514526367188e-05, _1025), 0.0, 1.0));
            _1044 = _1043;
        }
        else
        {
            _1044 = _1021;
        }
        highp vec4 _1045 = _Globals._Color3rd * _1044;
        highp float _1051 = _1045.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _445).x;
        _1045.w = mix(_1051, _1051 * clamp((_394 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1077;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_333 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_333 < 0.0)))
        {
            highp vec4 _1076 = _1045;
            _1076.w = 0.0;
            _1077 = _1076;
        }
        else
        {
            _1077 = _1045;
        }
        highp vec3 _1087 = _859.xyz + _1077.xyz;
        highp vec3 _1088 = _859.xyz * _1077.xyz;
        bvec3 _1090 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1091 = vec3(_1090.x ? _1077.xyz.x : _285.x, _1090.y ? _1077.xyz.y : _285.y, _1090.z ? _1077.xyz.z : _285.z);
        bvec3 _1093 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1101;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1099 = (-_859.xyz) * _1077.xyz + _1087;
            bvec3 _2199 = isnan(_1099);
            bvec3 _2200 = isnan(_859.xyz);
            highp vec3 _2201 = max(_1099, _859.xyz);
            highp vec3 _2202 = vec3(_2199.x ? _859.xyz.x : _2201.x, _2199.y ? _859.xyz.y : _2201.y, _2199.z ? _859.xyz.z : _2201.z);
            _1101 = vec3(_2200.x ? _1099.x : _2202.x, _2200.y ? _1099.y : _2202.y, _2200.z ? _1099.z : _2202.z);
        }
        else
        {
            _1101 = vec3(_1093.x ? _1087.x : _1091.x, _1093.y ? _1087.y : _1091.y, _1093.z ? _1087.z : _1091.z);
        }
        bvec3 _1103 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1105 = mix(_859.xyz, vec3(_1103.x ? _1088.x : _1101.x, _1103.y ? _1088.y : _1101.y, _1103.z ? _1088.z : _1101.z), vec3(_1077.w * _Globals._Main3rdEnableLighting));
        _1107 = _1077;
        _1108 = vec4(_1105.x, _1105.y, _1105.z, _859.w);
    }
    else
    {
        _1107 = _Globals._Color3rd;
        _1108 = _859;
    }
    highp vec4 _1109 = _1108;
    _1109.w = 1.0;
    highp vec4 _1283;
    highp float _1284;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1133 = clamp(dot(_385, mix(_605, _602, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1136 = clamp(dot(_385, mix(_605, _602, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1139 = clamp(dot(_385, mix(_605, _602, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1143 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1146 = clamp(_384 + distance(_385, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1149 = mix(1.0, _1146, _Globals._ShadowReceive);
        highp float _1150 = _1133 * _1149;
        highp float _1153 = mix(1.0, _1146, _Globals._Shadow2ndReceive);
        highp float _1157 = mix(1.0, _1146, _Globals._Shadow3rdReceive);
        highp float _1168 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1169 = clamp(_1168, 0.0, 1.0);
        highp float _1171 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1184 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1198 = clamp(_1168 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1211 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1226 = (_333 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1227 = clamp((_1133 * _1149 + (-_1169)) / clamp(fwidth(_1150) * _1143 + (_1171 - _1169), 0.0, 1.0), 0.0, 1.0) * _1226;
        highp vec3 _1259 = mix(mix(_1109.xyz * _Globals._ShadowColor.xyz, (_1109.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1136 * _1153 + (-_1184)) / clamp(fwidth(_1136 * _1153) * _1143 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1184), 0.0, 1.0), 0.0, 1.0) * _1226)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1109.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1139 * _1157 + (-_1211)) / clamp(fwidth(_1139 * _1157) * _1143 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1211), 0.0, 1.0), 0.0, 1.0) * _1226)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1265 = _1109.xyz * out_var_TEXCOORD6;
        highp vec3 _1271 = mix(mix(_1259, _1259 * _1109.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1109.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2204 = isnan(_1271);
        bvec3 _2205 = isnan(_1265);
        highp vec3 _2206 = min(_1271, _1265);
        highp vec3 _2207 = vec3(_2204.x ? _1265.x : _2206.x, _2204.y ? _1265.y : _2206.y, _2204.z ? _1265.z : _2206.z);
        highp vec3 _1279 = mix(mix(vec3(_2205.x ? _1271.x : _2207.x, _2205.y ? _1271.y : _2207.y, _2205.z ? _1271.z : _2207.z), _1265, _Globals._ShadowBorderColor.xyz * (clamp((_1133 * _1149 + (-_1198)) / clamp(fwidth(_1150) * _1143 + (_1171 - _1198), 0.0, 1.0), 0.0, 1.0) * _1226)), _1265, vec3(mix(1.0, _1227, _Globals._ShadowStrength)));
        _1283 = vec4(_1279.x, _1279.y, _1279.z, _1109.w);
        _1284 = _1227;
    }
    else
    {
        highp vec3 _1281 = _1109.xyz * out_var_TEXCOORD6;
        _1283 = vec4(_1281.x, _1281.y, _1281.z, _1109.w);
        _1284 = 1.0;
    }
    highp vec3 _1287 = vec3(_Globals._LightMaxLimit);
    bvec3 _2209 = isnan(out_var_TEXCOORD6);
    bvec3 _2210 = isnan(_1287);
    highp vec3 _2211 = min(out_var_TEXCOORD6, _1287);
    highp vec3 _2212 = vec3(_2209.x ? _1287.x : _2211.x, _2209.y ? _1287.y : _2211.y, _2209.z ? _1287.z : _2211.z);
    highp vec3 _1288 = vec3(_2210.x ? out_var_TEXCOORD6.x : _2212.x, _2210.y ? out_var_TEXCOORD6.y : _2212.y, _2210.z ? out_var_TEXCOORD6.z : _2212.z);
    highp float _1289 = clamp(_1284, 0.0, 1.0);
    highp vec3 _1291 = _1109.xyz * _Globals._LightMaxLimit;
    bvec3 _2214 = isnan(_1283.xyz);
    bvec3 _2215 = isnan(_1291);
    highp vec3 _2216 = min(_1283.xyz, _1291);
    highp vec3 _2217 = vec3(_2214.x ? _1291.x : _2216.x, _2214.y ? _1291.y : _2216.y, _2214.z ? _1291.z : _2216.z);
    highp vec3 _1292 = vec3(_2215.x ? _1283.xyz.x : _2217.x, _2215.y ? _1283.xyz.y : _2217.y, _2215.z ? _1283.xyz.z : _2217.z);
    highp vec4 _1326;
    if (_615)
    {
        highp vec3 _1296 = _1292.xyz;
        highp vec3 _1306 = _1296 + _858.xyz;
        highp vec3 _1307 = _1296 * _858.xyz;
        bvec3 _1309 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1310 = vec3(_1309.x ? _858.xyz.x : _285.x, _1309.y ? _858.xyz.y : _285.y, _1309.z ? _858.xyz.z : _285.z);
        bvec3 _1312 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1320;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1318 = (-_1296) * _858.xyz + _1306;
            bvec3 _2219 = isnan(_1318);
            bvec3 _2220 = isnan(_1296);
            highp vec3 _2221 = max(_1318, _1296);
            highp vec3 _2222 = vec3(_2219.x ? _1296.x : _2221.x, _2219.y ? _1296.y : _2221.y, _2219.z ? _1296.z : _2221.z);
            _1320 = vec3(_2220.x ? _1318.x : _2222.x, _2220.y ? _1318.y : _2222.y, _2220.z ? _1318.z : _2222.z);
        }
        else
        {
            _1320 = vec3(_1312.x ? _1306.x : _1310.x, _1312.y ? _1306.y : _1310.y, _1312.z ? _1306.z : _1310.z);
        }
        bvec3 _1322 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1324 = mix(_1296, vec3(_1322.x ? _1307.x : _1320.x, _1322.y ? _1307.y : _1320.y, _1322.z ? _1307.z : _1320.z), vec3((-_858.w) * _Globals._Main2ndEnableLighting + _858.w));
        _1326 = vec4(_1324.x, _1324.y, _1324.z, _1283.w);
    }
    else
    {
        _1326 = vec4(_1292.x, _1292.y, _1292.z, _1283.w);
    }
    highp vec4 _1359;
    if (_864)
    {
        highp vec3 _1339 = _1326.xyz + _1107.xyz;
        highp vec3 _1340 = _1326.xyz * _1107.xyz;
        bvec3 _1342 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1343 = vec3(_1342.x ? _1107.xyz.x : _285.x, _1342.y ? _1107.xyz.y : _285.y, _1342.z ? _1107.xyz.z : _285.z);
        bvec3 _1345 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1353;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1351 = (-_1326.xyz) * _1107.xyz + _1339;
            bvec3 _2224 = isnan(_1351);
            bvec3 _2225 = isnan(_1326.xyz);
            highp vec3 _2226 = max(_1351, _1326.xyz);
            highp vec3 _2227 = vec3(_2224.x ? _1326.xyz.x : _2226.x, _2224.y ? _1326.xyz.y : _2226.y, _2224.z ? _1326.xyz.z : _2226.z);
            _1353 = vec3(_2225.x ? _1351.x : _2227.x, _2225.y ? _1351.y : _2227.y, _2225.z ? _1351.z : _2227.z);
        }
        else
        {
            _1353 = vec3(_1345.x ? _1339.x : _1343.x, _1345.y ? _1339.y : _1343.y, _1345.z ? _1339.z : _1343.z);
        }
        bvec3 _1355 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1357 = mix(_1326.xyz, vec3(_1355.x ? _1340.x : _1353.x, _1355.y ? _1340.y : _1353.y, _1355.z ? _1340.z : _1353.z), vec3((-_1107.w) * _Globals._Main3rdEnableLighting + _1107.w));
        _1359 = vec4(_1357.x, _1357.y, _1357.z, _1326.w);
    }
    else
    {
        _1359 = _1326;
    }
    highp vec4 _1405;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1375 = pow(clamp(1.0 - abs(dot(mix(_605, _602, vec3(_Globals._RimShadeNormalStrength)), _401)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1384 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1403 = mix(_1359.xyz, _1359.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1375 - _1384) / clamp(fwidth(_1375) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1384), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1405 = vec4(_1403.x, _1403.y, _1403.z, _1359.w);
    }
    else
    {
        _1405 = _1359;
    }
    highp vec4 _1478;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1429 = dot(normalize(((-_401) * _Globals._BacklightViewStrength) + _385), mix(_605, _602, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1439;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1439 = _1429 * clamp(_384 + distance(_385, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1439 = _1429;
        }
        highp float _1448 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1476 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1109.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_333 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_401, _385) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1439 - _1448) / clamp(fwidth(_1439) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1448), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1288 + _1405.xyz;
        _1478 = vec4(_1476.x, _1476.y, _1476.z, _1405.w);
    }
    else
    {
        _1478 = _1405;
    }
    highp vec4 _1629;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1523;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1500 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _445 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1500.w = _1500.w * _1500.x;
            highp vec2 _1511 = ((_1500.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1512 = vec3(_1511.x, _1511.y, _290.z);
            highp vec2 _1513 = _1511.xy;
            _1512.z = sqrt(1.0 - clamp(dot(_1513, _1513), 0.0, 1.0));
            highp vec3 _1520 = normalize(_410 * _1512);
            highp vec3 _1521 = -_1520;
            _1523 = vec3(_600.x ? _1521.x : _1520.x, _600.y ? _1521.y : _1520.y, _600.z ? _1521.z : _1520.z);
        }
        else
        {
            _1523 = mix(_605, _602, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1540 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1541 = vec3(_1540.x ? _401.x : _309.x, _1540.y ? _401.y : _309.y, _1540.z ? _401.z : _309.z);
        bvec3 _1542 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1543 = vec3(_1542.x ? vec3(0.0, 1.0, 0.0).x : _316.x, _1542.y ? vec3(0.0, 1.0, 0.0).y : _316.y, _1542.z ? vec3(0.0, 1.0, 0.0).z : _316.z);
        highp vec3 _1547 = normalize(_1543 - (_1541 * dot(_1541, _1543)));
        highp vec4 _1569 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1523) * mat3(cross(_1541, _1547), _1547, _1541)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1593 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _445 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1595 = mix(_1569.xyz, _1569.xyz * _1288, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1602 = mix(_1595, _1595 * _1109.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1609 = _1478.xyz + _1602;
        highp vec3 _1610 = _1478.xyz * _1602;
        bvec3 _1612 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1613 = vec3(_1612.x ? _1602.x : _285.x, _1612.y ? _1602.y : _285.y, _1612.z ? _1602.z : _285.z);
        bvec3 _1615 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1623;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1621 = (-_1478.xyz) * _1602 + _1609;
            bvec3 _2229 = isnan(_1621);
            bvec3 _2230 = isnan(_1478.xyz);
            highp vec3 _2231 = max(_1621, _1478.xyz);
            highp vec3 _2232 = vec3(_2229.x ? _1478.xyz.x : _2231.x, _2229.y ? _1478.xyz.y : _2231.y, _2229.z ? _1478.xyz.z : _2231.z);
            _1623 = vec3(_2230.x ? _1621.x : _2232.x, _2230.y ? _1621.y : _2232.y, _2230.z ? _1621.z : _2232.z);
        }
        else
        {
            _1623 = vec3(_1615.x ? _1609.x : _1613.x, _1615.y ? _1609.y : _1613.y, _1615.z ? _1609.z : _1613.z);
        }
        bvec3 _1625 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1627 = mix(_1478.xyz, vec3(_1625.x ? _1610.x : _1623.x, _1625.y ? _1610.y : _1623.y, _1625.z ? _1610.z : _1623.z), _1593.xyz * (_Globals._MatCapBlend * ((_333 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1569.w, _1569.w * _1289, _Globals._MatCapShadowMask))));
        _1629 = vec4(_1627.x, _1627.y, _1627.z, _1478.w);
    }
    else
    {
        _1629 = _1478;
    }
    highp vec4 _1779;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1674;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1651 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _445 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1651.w = _1651.w * _1651.x;
            highp vec2 _1662 = ((_1651.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1663 = vec3(_1662.x, _1662.y, _290.z);
            highp vec2 _1664 = _1662.xy;
            _1663.z = sqrt(1.0 - clamp(dot(_1664, _1664), 0.0, 1.0));
            highp vec3 _1671 = normalize(_410 * _1663);
            highp vec3 _1672 = -_1671;
            _1674 = vec3(_600.x ? _1672.x : _1671.x, _600.y ? _1672.y : _1671.y, _600.z ? _1672.z : _1671.z);
        }
        else
        {
            _1674 = mix(_605, _602, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1690 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1691 = vec3(_1690.x ? _401.x : _309.x, _1690.y ? _401.y : _309.y, _1690.z ? _401.z : _309.z);
        bvec3 _1692 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1693 = vec3(_1692.x ? vec3(0.0, 1.0, 0.0).x : _316.x, _1692.y ? vec3(0.0, 1.0, 0.0).y : _316.y, _1692.z ? vec3(0.0, 1.0, 0.0).z : _316.z);
        highp vec3 _1697 = normalize(_1693 - (_1691 * dot(_1691, _1693)));
        highp vec4 _1719 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1674 * mat3(cross(_1691, _1697), _1697, _1691)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1720 = _1719.xyz;
        highp float _1726 = _1719.w;
        highp vec4 _1743 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _445 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1745 = mix(_1720, _1720 * _1288, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1752 = mix(_1745, _1745 * _1109.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1759 = _1629.xyz + _1752;
        highp vec3 _1760 = _1629.xyz * _1752;
        bvec3 _1762 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1763 = vec3(_1762.x ? _1752.x : _285.x, _1762.y ? _1752.y : _285.y, _1762.z ? _1752.z : _285.z);
        bvec3 _1765 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1773;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1771 = (-_1629.xyz) * _1752 + _1759;
            bvec3 _2234 = isnan(_1771);
            bvec3 _2235 = isnan(_1629.xyz);
            highp vec3 _2236 = max(_1771, _1629.xyz);
            highp vec3 _2237 = vec3(_2234.x ? _1629.xyz.x : _2236.x, _2234.y ? _1629.xyz.y : _2236.y, _2234.z ? _1629.xyz.z : _2236.z);
            _1773 = vec3(_2235.x ? _1771.x : _2237.x, _2235.y ? _1771.y : _2237.y, _2235.z ? _1771.z : _2237.z);
        }
        else
        {
            _1773 = vec3(_1765.x ? _1759.x : _1763.x, _1765.y ? _1759.y : _1763.y, _1765.z ? _1759.z : _1763.z);
        }
        bvec3 _1775 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1777 = mix(_1629.xyz, vec3(_1775.x ? _1760.x : _1773.x, _1775.y ? _1760.y : _1773.y, _1775.z ? _1760.z : _1773.z), _1743.xyz * (_Globals._MatCap2ndBlend * ((_333 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1726, _1726 * _1289, _Globals._MatCap2ndShadowMask))));
        _1779 = vec4(_1777.x, _1777.y, _1777.z, _1629.w);
    }
    else
    {
        _1779 = _1629;
    }
    highp vec4 _1925;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1798 = mix(_605, _602, vec3(_Globals._RimNormalStrength));
        highp float _1802 = dot(_385, _1798) * 0.5 + 0.5;
        highp float _1825 = (_333 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1798, _401)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1829 = mix(_1825, _1825 * clamp((_1802 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1830 = _1825 * clamp(((1.0 - _1802) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1840 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1849 = clamp((_1829 - _1840) / clamp(fwidth(_1829) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1840), 0.0, 1.0), 0.0, 1.0);
        highp float _1856 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1866 = clamp((_1830 * _Globals._RimDirStrength + (-_1856)) / clamp(fwidth(_1830 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1856), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1878 = vec3(1.0 - _Globals._RimEnableLighting) + (_1288 * _Globals._RimEnableLighting);
        highp vec3 _1880 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1109.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1881 = _1880 * _1878;
        highp vec3 _1887 = _1880 * _1878 + _1779.xyz;
        highp vec3 _1888 = _1779.xyz * _1881;
        bvec3 _1890 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1891 = vec3(_1890.x ? _1881.x : _285.x, _1890.y ? _1881.y : _285.y, _1890.z ? _1881.z : _285.z);
        bvec3 _1893 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1895 = _Globals._RimBlendMode == 2u;
        highp vec3 _1901;
        if (_1895)
        {
            highp vec3 _1899 = (-_1779.xyz) * _1881 + _1887;
            bvec3 _2239 = isnan(_1899);
            bvec3 _2240 = isnan(_1779.xyz);
            highp vec3 _2241 = max(_1899, _1779.xyz);
            highp vec3 _2242 = vec3(_2239.x ? _1779.xyz.x : _2241.x, _2239.y ? _1779.xyz.y : _2241.y, _2239.z ? _1779.xyz.z : _2241.z);
            _1901 = vec3(_2240.x ? _1899.x : _2242.x, _2240.y ? _1899.y : _2242.y, _2240.z ? _1899.z : _2242.z);
        }
        else
        {
            _1901 = vec3(_1893.x ? _1887.x : _1891.x, _1893.y ? _1887.y : _1891.y, _1893.z ? _1887.z : _1891.z);
        }
        bvec3 _1903 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1906 = mix(_1779.xyz, vec3(_1903.x ? _1888.x : _1901.x, _1903.y ? _1888.y : _1901.y, _1903.z ? _1888.z : _1901.z), vec3(mix(_1849, _1849 * _1289, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1908 = _Globals._RimIndirColor.xyz * _1878;
        highp vec3 _1912 = _Globals._RimIndirColor.xyz * _1878 + _1906;
        highp vec3 _1913 = _1906 * _1908;
        highp vec3 _1914 = vec3(_1890.x ? _1908.x : _285.x, _1890.y ? _1908.y : _285.y, _1890.z ? _1908.z : _285.z);
        highp vec3 _1921;
        if (_1895)
        {
            highp vec3 _1919 = (-_1906) * _1908 + _1912;
            bvec3 _2244 = isnan(_1919);
            bvec3 _2245 = isnan(_1906);
            highp vec3 _2246 = max(_1919, _1906);
            highp vec3 _2247 = vec3(_2244.x ? _1906.x : _2246.x, _2244.y ? _1906.y : _2246.y, _2244.z ? _1906.z : _2246.z);
            _1921 = vec3(_2245.x ? _1919.x : _2247.x, _2245.y ? _1919.y : _2247.y, _2245.z ? _1919.z : _2247.z);
        }
        else
        {
            _1921 = vec3(_1893.x ? _1912.x : _1914.x, _1893.y ? _1912.y : _1914.y, _1893.z ? _1912.z : _1914.z);
        }
        highp vec3 _1923 = mix(_1906, vec3(_1903.x ? _1913.x : _1921.x, _1903.y ? _1913.y : _1921.y, _1903.z ? _1913.z : _1921.z), vec3(mix(_1866, _1866 * _1289, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1925 = vec4(_1923.x, _1923.y, _1923.z, _1779.w);
    }
    else
    {
        _1925 = _1779;
    }
    highp vec4 _1990;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1939 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _389, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1953 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1959;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1959 = roundEven(_1953);
        }
        else
        {
            _1959 = _1953;
        }
        highp vec3 _1966 = mix(_1939, _1939 * _1109.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1970 = _1925.xyz + _1966;
        highp vec3 _1971 = _1925.xyz * _1966;
        bvec3 _1973 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1974 = vec3(_1973.x ? _1966.x : _285.x, _1973.y ? _1966.y : _285.y, _1973.z ? _1966.z : _285.z);
        bvec3 _1976 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1984;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1982 = (-_1925.xyz) * _1966 + _1970;
            bvec3 _2249 = isnan(_1982);
            bvec3 _2250 = isnan(_1925.xyz);
            highp vec3 _2251 = max(_1982, _1925.xyz);
            highp vec3 _2252 = vec3(_2249.x ? _1925.xyz.x : _2251.x, _2249.y ? _1925.xyz.y : _2251.y, _2249.z ? _1925.xyz.z : _2251.z);
            _1984 = vec3(_2250.x ? _1982.x : _2252.x, _2250.y ? _1982.y : _2252.y, _2250.z ? _1982.z : _2252.z);
        }
        else
        {
            _1984 = vec3(_1976.x ? _1970.x : _1974.x, _1976.y ? _1970.y : _1974.y, _1976.z ? _1970.z : _1974.z);
        }
        bvec3 _1986 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1988 = mix(_1925.xyz, vec3(_1986.x ? _1971.x : _1984.x, _1986.y ? _1971.y : _1984.y, _1986.z ? _1971.z : _1984.z), vec3((_Globals._EmissionBlend * mix(1.0, _1959, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1990 = vec4(_1988.x, _1988.y, _1988.z, _1925.w);
    }
    else
    {
        _1990 = _1925;
    }
    highp vec4 _2055;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2004 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _389, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2018 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2024;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2024 = roundEven(_2018);
        }
        else
        {
            _2024 = _2018;
        }
        highp vec3 _2031 = mix(_2004, _2004 * _1109.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2035 = _1990.xyz + _2031;
        highp vec3 _2036 = _1990.xyz * _2031;
        bvec3 _2038 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2039 = vec3(_2038.x ? _2031.x : _285.x, _2038.y ? _2031.y : _285.y, _2038.z ? _2031.z : _285.z);
        bvec3 _2041 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2049;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2047 = (-_1990.xyz) * _2031 + _2035;
            bvec3 _2254 = isnan(_2047);
            bvec3 _2255 = isnan(_1990.xyz);
            highp vec3 _2256 = max(_2047, _1990.xyz);
            highp vec3 _2257 = vec3(_2254.x ? _1990.xyz.x : _2256.x, _2254.y ? _1990.xyz.y : _2256.y, _2254.z ? _1990.xyz.z : _2256.z);
            _2049 = vec3(_2255.x ? _2047.x : _2257.x, _2255.y ? _2047.y : _2257.y, _2255.z ? _2047.z : _2257.z);
        }
        else
        {
            _2049 = vec3(_2041.x ? _2035.x : _2039.x, _2041.y ? _2035.y : _2039.y, _2041.z ? _2035.z : _2039.z);
        }
        bvec3 _2051 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2053 = mix(_1990.xyz, vec3(_2051.x ? _2036.x : _2049.x, _2051.y ? _2036.y : _2049.y, _2051.z ? _2036.z : _2049.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2024, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2055 = vec4(_2053.x, _2053.y, _2053.z, _1990.w);
    }
    else
    {
        _2055 = _1990;
    }
    bvec3 _2057 = bvec3(_333 < 0.0);
    highp vec3 _2066 = mix(_2055.xyz, _Globals._BackfaceColor.xyz * _1288, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2101 = vec3(_2057.x ? _2066.x : _2055.xyz.x, _2057.y ? _2066.y : _2055.xyz.y, _2057.z ? _2066.z : _2055.xyz.z).xyz;
    highp vec3 _2109 = mix(_2101, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2101, vec3(pow(clamp(1.0 - abs(dot(_605, _401)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_333 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _394) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2109.x, _2109.y, _2109.z, _2055.w), vec4(out_var_TEXCOORD9));
}
