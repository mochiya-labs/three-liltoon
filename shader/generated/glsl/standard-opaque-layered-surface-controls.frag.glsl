#version 300 es
precision mediump float;
precision highp int;

vec3 _294;
vec3 _300;

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
    highp vec3 _319 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _326 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    highp float _343 = float(gl_FrontFacing ? 1 : (-1));
    highp float _394;
    do
    {
        highp vec3 _350 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _351 = _350.xy;
        highp float _357 = _350.z;
        if ((any(lessThan(_351, vec2(0.0))) || any(greaterThan(_351, vec2(1.0)))) || (_357 > 1.0))
        {
            _394 = 1.0;
            break;
        }
        highp float _367 = _357 + _Globals.uShadowBias;
        _394 = (((step(_367, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _351), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_367, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _351), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_367, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _351), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_367, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _351), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _395 = normalize(out_var_TEXCOORD7);
    highp vec3 _399 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _403 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _404 = length(_403);
    highp vec3 _411 = normalize(_403);
    highp mat3 _420 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _425 = bvec2(_343 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _426 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _439 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _440 = sin(_439);
    highp float _441 = cos(_439);
    highp vec2 _442 = (vec2(_425.x ? _426.x : out_var_TEXCOORD0.xy.x, _425.y ? _426.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _443 = _442.x;
    highp float _444 = _442.y;
    highp vec2 _455 = (vec2(_443 * _441 + (-(_444 * _440)), _443 * _440 + (_444 * _441)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _459 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _455);
    highp vec3 _466 = pow(abs(_459.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _467 = _466.z;
    highp float _468 = _466.y;
    bvec4 _470 = bvec4(_467 > _468);
    highp vec4 _471 = vec4(_467, _468, -1.0, 0.666666686534881591796875);
    highp vec4 _472 = vec4(_468, _467, 0.0, -0.3333333432674407958984375);
    highp vec4 _473 = vec4(_470.x ? _471.x : _472.x, _470.y ? _471.y : _472.y, _470.z ? _471.z : _472.z, _470.w ? _471.w : _472.w);
    highp float _474 = _473.x;
    highp float _475 = _466.x;
    bvec4 _477 = bvec4(_474 > _475);
    highp vec4 _480 = vec4(_474, _473.yw, _475);
    highp vec4 _482 = vec4(_475, _473.yz, _474);
    highp vec4 _483 = vec4(_477.x ? _480.x : _482.x, _477.y ? _480.y : _482.y, _477.z ? _480.z : _482.z, _477.w ? _480.w : _482.w);
    highp float _488 = _483.x - (isnan(_483.y) ? _483.w : (isnan(_483.w) ? _483.y : min(_483.w, _483.y)));
    highp float _501 = clamp((_488 / (_483.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _504 = clamp(_483.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _518 = vec3((-_504) * _501 + _504) + (clamp(abs((fract(vec3(abs(_483.z + ((_483.w - _483.y) / (6.0 * _488 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_504 * _501));
    highp vec4 _522 = vec4(_518.x, _518.y, _518.z, _459.w) * _Globals._Color;
    highp vec3 _554;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _535 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _455 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _535.w = _535.w * _535.x;
        highp vec2 _546 = ((_535.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _547 = vec3(_546.x, _546.y, _300.z);
        highp vec2 _548 = _546.xy;
        _547.z = sqrt(1.0 - clamp(dot(_548, _548), 0.0, 1.0));
        _554 = _547;
    }
    else
    {
        _554 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _556 = normalize(_420 * _554);
    bvec3 _561 = bvec3(_343 < (_Globals._FlipNormal - 1.0));
    highp vec3 _562 = -_556;
    highp vec3 _563 = vec3(_561.x ? _562.x : _556.x, _561.y ? _562.y : _556.y, _561.z ? _562.z : _556.z);
    highp float _565 = clamp(dot(_563, _411), 0.0, 1.0);
    highp vec3 _566 = normalize(out_var_TEXCOORD4);
    highp vec2 _570 = ((_563 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _326, _319)).xy * 0.5) + vec2(0.5);
    bool _571 = out_var_TEXCOORD5.w > 0.0;
    bool _576 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _819;
    highp vec4 _820;
    if (_576)
    {
        bvec2 _582 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _583 = vec2(_582.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _582.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _585 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _586 = vec2(_585.x ? out_var_TEXCOORD1.xy.x : _583.x, _585.y ? out_var_TEXCOORD1.xy.y : _583.y);
        bvec2 _588 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _589 = vec2(_588.x ? out_var_TEXCOORD1.zw.x : _586.x, _588.y ? out_var_TEXCOORD1.zw.y : _586.y);
        bvec2 _591 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _592 = vec2(_591.x ? _570.x : _589.x, _591.y ? _570.y : _589.y);
        highp vec4 _631 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _632 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _640;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _639 = _592;
            _639.x = abs(_592.x - 0.5) + 0.5;
            _640 = _639;
        }
        else
        {
            _640 = _592;
        }
        highp vec2 _641 = _631.xy;
        highp vec2 _642 = _631.zw;
        highp vec2 _643 = _640 * _641 + _642;
        highp vec2 _652;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_592.x < 0.5))
        {
            highp vec2 _651 = _643;
            _651.x = 1.0 - _643.x;
            _652 = _651;
        }
        else
        {
            _652 = _643;
        }
        highp vec2 _659;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _571)
        {
            highp vec2 _658 = _652;
            _658.x = 1.0 - _652.x;
            _659 = _658;
        }
        else
        {
            _659 = _652;
        }
        highp vec2 _664;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _571)
        {
            highp vec2 _663 = _659;
            _663.x = -1.0;
            _664 = _663;
        }
        else
        {
            _664 = _659;
        }
        highp vec2 _670;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_571))
        {
            highp vec2 _669 = _664;
            _669.x = -1.0;
            _670 = _669;
        }
        else
        {
            _670 = _664;
        }
        highp float _673 = sin(_632);
        highp float _674 = cos(_632);
        highp vec2 _675 = ((_670 - _642) / _641) - vec2(0.5);
        highp float _676 = _675.x;
        highp float _677 = _675.y;
        highp vec2 _685 = (vec2(_676 * _674 + (-(_677 * _673)), _676 * _673 + (_677 * _674)) + vec2(0.5)) * _641 + _642;
        uint _689 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _693 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _689 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _689);
        highp float _694 = _685.x;
        highp float _695 = _685.y;
        uint _702 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _712 = ((mix(vec2(_694, 1.0 - _695), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_693 % _702), float(_693 / _702))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _712.y = 1.0 - _712.y;
        highp vec4 _717 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _712);
        highp vec4 _733;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _720 = _717.x;
            highp float _721 = _717.y;
            highp float _722 = _717.z;
            highp float _723 = isnan(_721) ? _720 : (isnan(_720) ? _721 : min(_720, _721));
            highp float _724 = isnan(_721) ? _720 : (isnan(_720) ? _721 : max(_720, _721));
            highp float _725 = isnan(_722) ? _724 : (isnan(_724) ? _722 : min(_724, _722));
            highp float _726 = isnan(_725) ? _723 : (isnan(_723) ? _725 : max(_723, _725));
            _733 = vec4(1.0, 1.0, 1.0, clamp((_726 - 0.5) / clamp(fwidth(_726), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _733 = _717;
        }
        highp vec4 _756;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _737 = clamp(_565 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _740 = 0.5 - abs(_694 - 0.5);
            highp float _747 = 0.5 - abs(_695 - 0.5);
            highp vec4 _755 = _733;
            _755.w = _733.w * (clamp(_740 / clamp(fwidth(_740), 9.9999997473787516355514526367188e-05, _737), 0.0, 1.0) * clamp(_747 / clamp(fwidth(_747), 9.9999997473787516355514526367188e-05, _737), 0.0, 1.0));
            _756 = _755;
        }
        else
        {
            _756 = _733;
        }
        highp vec4 _757 = _Globals._Color2nd * _756;
        highp float _763 = _757.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _455).x;
        _757.w = mix(_763, _763 * clamp((_404 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _789;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_343 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_343 < 0.0)))
        {
            highp vec4 _788 = _757;
            _788.w = 0.0;
            _789 = _788;
        }
        else
        {
            _789 = _757;
        }
        highp vec3 _790 = _522.xyz;
        highp vec3 _799 = _790 + _789.xyz;
        highp vec3 _800 = _790 * _789.xyz;
        bvec3 _802 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _803 = vec3(_802.x ? _789.xyz.x : _294.x, _802.y ? _789.xyz.y : _294.y, _802.z ? _789.xyz.z : _294.z);
        bvec3 _805 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _813;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _811 = (-_790) * _789.xyz + _799;
            bvec3 _2131 = isnan(_811);
            bvec3 _2132 = isnan(_790);
            highp vec3 _2133 = max(_811, _790);
            highp vec3 _2134 = vec3(_2131.x ? _790.x : _2133.x, _2131.y ? _790.y : _2133.y, _2131.z ? _790.z : _2133.z);
            _813 = vec3(_2132.x ? _811.x : _2134.x, _2132.y ? _811.y : _2134.y, _2132.z ? _811.z : _2134.z);
        }
        else
        {
            _813 = vec3(_805.x ? _799.x : _803.x, _805.y ? _799.y : _803.y, _805.z ? _799.z : _803.z);
        }
        bvec3 _815 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _817 = mix(_790, vec3(_815.x ? _800.x : _813.x, _815.y ? _800.y : _813.y, _815.z ? _800.z : _813.z), vec3(_789.w * _Globals._Main2ndEnableLighting));
        _819 = _789;
        _820 = vec4(_817.x, _817.y, _817.z, _522.w);
    }
    else
    {
        _819 = _Globals._Color2nd;
        _820 = _522;
    }
    highp vec4 _821 = _820;
    _821.w = 1.0;
    highp vec4 _995;
    highp float _996;
    if (_Globals._UseShadow != 0u)
    {
        highp float _845 = clamp(dot(_395, mix(_566, _563, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _848 = clamp(dot(_395, mix(_566, _563, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _851 = clamp(dot(_395, mix(_566, _563, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _855 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _858 = clamp(_394 + distance(_395, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _861 = mix(1.0, _858, _Globals._ShadowReceive);
        highp float _862 = _845 * _861;
        highp float _865 = mix(1.0, _858, _Globals._Shadow2ndReceive);
        highp float _869 = mix(1.0, _858, _Globals._Shadow3rdReceive);
        highp float _880 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _881 = clamp(_880, 0.0, 1.0);
        highp float _883 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _896 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _910 = clamp(_880 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _923 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _938 = (_343 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _939 = clamp((_845 * _861 + (-_881)) / clamp(fwidth(_862) * _855 + (_883 - _881), 0.0, 1.0), 0.0, 1.0) * _938;
        highp vec3 _971 = mix(mix(_821.xyz * _Globals._ShadowColor.xyz, (_821.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_848 * _865 + (-_896)) / clamp(fwidth(_848 * _865) * _855 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _896), 0.0, 1.0), 0.0, 1.0) * _938)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_821.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_851 * _869 + (-_923)) / clamp(fwidth(_851 * _869) * _855 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _923), 0.0, 1.0), 0.0, 1.0) * _938)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _977 = _821.xyz * out_var_TEXCOORD6;
        highp vec3 _983 = mix(mix(_971, _971 * _821.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _821.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2136 = isnan(_983);
        bvec3 _2137 = isnan(_977);
        highp vec3 _2138 = min(_983, _977);
        highp vec3 _2139 = vec3(_2136.x ? _977.x : _2138.x, _2136.y ? _977.y : _2138.y, _2136.z ? _977.z : _2138.z);
        highp vec3 _991 = mix(mix(vec3(_2137.x ? _983.x : _2139.x, _2137.y ? _983.y : _2139.y, _2137.z ? _983.z : _2139.z), _977, _Globals._ShadowBorderColor.xyz * (clamp((_845 * _861 + (-_910)) / clamp(fwidth(_862) * _855 + (_883 - _910), 0.0, 1.0), 0.0, 1.0) * _938)), _977, vec3(mix(1.0, _939, _Globals._ShadowStrength)));
        _995 = vec4(_991.x, _991.y, _991.z, _821.w);
        _996 = _939;
    }
    else
    {
        highp vec3 _993 = _821.xyz * out_var_TEXCOORD6;
        _995 = vec4(_993.x, _993.y, _993.z, _821.w);
        _996 = 1.0;
    }
    highp vec3 _999 = vec3(_Globals._LightMaxLimit);
    bvec3 _2141 = isnan(out_var_TEXCOORD6);
    bvec3 _2142 = isnan(_999);
    highp vec3 _2143 = min(out_var_TEXCOORD6, _999);
    highp vec3 _2144 = vec3(_2141.x ? _999.x : _2143.x, _2141.y ? _999.y : _2143.y, _2141.z ? _999.z : _2143.z);
    highp vec3 _1000 = vec3(_2142.x ? out_var_TEXCOORD6.x : _2144.x, _2142.y ? out_var_TEXCOORD6.y : _2144.y, _2142.z ? out_var_TEXCOORD6.z : _2144.z);
    highp float _1001 = clamp(_996, 0.0, 1.0);
    highp vec3 _1003 = _821.xyz * _Globals._LightMaxLimit;
    bvec3 _2146 = isnan(_995.xyz);
    bvec3 _2147 = isnan(_1003);
    highp vec3 _2148 = min(_995.xyz, _1003);
    highp vec3 _2149 = vec3(_2146.x ? _1003.x : _2148.x, _2146.y ? _1003.y : _2148.y, _2146.z ? _1003.z : _2148.z);
    highp vec3 _1004 = vec3(_2147.x ? _995.xyz.x : _2149.x, _2147.y ? _995.xyz.y : _2149.y, _2147.z ? _995.xyz.z : _2149.z);
    highp vec4 _1038;
    if (_576)
    {
        highp vec3 _1008 = _1004.xyz;
        highp vec3 _1018 = _1008 + _819.xyz;
        highp vec3 _1019 = _1008 * _819.xyz;
        bvec3 _1021 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1022 = vec3(_1021.x ? _819.xyz.x : _294.x, _1021.y ? _819.xyz.y : _294.y, _1021.z ? _819.xyz.z : _294.z);
        bvec3 _1024 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1032;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1030 = (-_1008) * _819.xyz + _1018;
            bvec3 _2151 = isnan(_1030);
            bvec3 _2152 = isnan(_1008);
            highp vec3 _2153 = max(_1030, _1008);
            highp vec3 _2154 = vec3(_2151.x ? _1008.x : _2153.x, _2151.y ? _1008.y : _2153.y, _2151.z ? _1008.z : _2153.z);
            _1032 = vec3(_2152.x ? _1030.x : _2154.x, _2152.y ? _1030.y : _2154.y, _2152.z ? _1030.z : _2154.z);
        }
        else
        {
            _1032 = vec3(_1024.x ? _1018.x : _1022.x, _1024.y ? _1018.y : _1022.y, _1024.z ? _1018.z : _1022.z);
        }
        bvec3 _1034 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1036 = mix(_1008, vec3(_1034.x ? _1019.x : _1032.x, _1034.y ? _1019.y : _1032.y, _1034.z ? _1019.z : _1032.z), vec3((-_819.w) * _Globals._Main2ndEnableLighting + _819.w));
        _1038 = vec4(_1036.x, _1036.y, _1036.z, _995.w);
    }
    else
    {
        _1038 = vec4(_1004.x, _1004.y, _1004.z, _995.w);
    }
    highp vec4 _1084;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1054 = pow(clamp(1.0 - abs(dot(mix(_566, _563, vec3(_Globals._RimShadeNormalStrength)), _411)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1063 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1082 = mix(_1038.xyz, _1038.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1054 - _1063) / clamp(fwidth(_1054) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1063), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1084 = vec4(_1082.x, _1082.y, _1082.z, _1038.w);
    }
    else
    {
        _1084 = _1038;
    }
    highp vec4 _1157;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1108 = dot(normalize(((-_411) * _Globals._BacklightViewStrength) + _395), mix(_566, _563, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1118;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1118 = _1108 * clamp(_394 + distance(_395, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1118 = _1108;
        }
        highp float _1127 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1155 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _821.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_343 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_411, _395) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1118 - _1127) / clamp(fwidth(_1118) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1127), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1000 + _1084.xyz;
        _1157 = vec4(_1155.x, _1155.y, _1155.z, _1084.w);
    }
    else
    {
        _1157 = _1084;
    }
    highp vec4 _1429;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1172 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _455 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1174 = _Globals._Smoothness * _1172.x;
        highp vec3 _1177 = dFdx(_563);
        highp vec3 _1178 = abs(_1177);
        highp vec3 _1179 = dFdy(_563);
        highp vec3 _1180 = abs(_1179);
        highp float _1181 = dot(_1178, _1178);
        highp float _1182 = dot(_1180, _1180);
        highp float _1183 = isnan(_1182) ? _1181 : (isnan(_1181) ? _1182 : max(_1181, _1182));
        highp float _1186 = (_1183 / (_1183 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1189 = clamp(1.0 - (isnan(_1186) ? 0.0 : (isnan(0.0) ? _1186 : max(0.0, _1186))), 0.0, 1.0);
        highp float _1190 = isnan(_1189) ? _1174 : (isnan(_1174) ? _1189 : min(_1174, _1189));
        highp float _1191 = 1.0 - _1190;
        highp float _1192 = _1191 * _1191;
        highp vec4 _1202 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _455 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1204 = _Globals._Metallic * _1202.x;
        highp vec3 _1207 = _1157.xyz - (_1157.xyz * _1204);
        highp vec3 _1213 = mix(vec3(_Globals._Reflectance), _821.xyz, vec3(_1204));
        highp vec4 _1223 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _455 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1224 = _Globals._ReflectionColor * _1223;
        highp vec4 _1325;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1297;
            do
            {
                highp vec3 _1235 = mix(_566, _563, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1237 = normalize(_411 + _395);
                highp float _1239 = clamp(dot(_1235, _1237), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1248 = pow(_1239, 1.0 / _1192);
                    highp float _1255 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1297 = vec3(clamp((_1248 - _1255) / clamp(fwidth(_1248) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1255), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1267 = clamp(dot(_1235, _411), 0.0, 1.0);
                highp float _1269 = clamp(dot(_1235, _395), 0.0, 1.0);
                highp float _1272 = isnan(0.00200000009499490261077880859375) ? _1192 : (isnan(_1192) ? 0.00200000009499490261077880859375 : max(_1192, 0.00200000009499490261077880859375));
                highp float _1273 = 1.0 - _1272;
                highp float _1277 = _1272 * _1272;
                highp float _1280 = (_1239 * _1277 + (-_1239)) * _1239 + 1.0;
                highp float _1288 = 1.0 - clamp(dot(_395, _1237), 0.0, 1.0);
                _1297 = (_1213 + ((((((vec3(1.0) - _1213) * _1288) * _1288) * _1288) * _1288) * _1288)) * (((0.5 / ((_1269 * (_1267 * _1273 + _1272) + (_1267 * (_1269 * _1273 + _1272))) + 9.9999997473787516355514526367188e-06)) * (_1277 / (_1280 * _1280 + 1.0000000116860974230803549289703e-07))) * _1269);
                break;
            } while(false);
            highp vec3 _1298 = _1207.xyz;
            highp vec3 _1299 = _1224.xyz;
            highp vec3 _1300 = _1299 * _1000;
            highp vec3 _1305 = _1299 * _1000 + _1298;
            highp vec3 _1306 = _1298 * _1300;
            bvec3 _1308 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1309 = vec3(_1308.x ? _1300.x : _294.x, _1308.y ? _1300.y : _294.y, _1308.z ? _1300.z : _294.z);
            bvec3 _1311 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1319;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1317 = (-_1298) * _1300 + _1305;
                bvec3 _2176 = isnan(_1317);
                bvec3 _2177 = isnan(_1298);
                highp vec3 _2178 = max(_1317, _1298);
                highp vec3 _2179 = vec3(_2176.x ? _1298.x : _2178.x, _2176.y ? _1298.y : _2178.y, _2176.z ? _1298.z : _2178.z);
                _1319 = vec3(_2177.x ? _1317.x : _2179.x, _2177.y ? _1317.y : _2179.y, _2177.z ? _1317.z : _2179.z);
            }
            else
            {
                _1319 = vec3(_1311.x ? _1305.x : _1309.x, _1311.y ? _1305.y : _1309.y, _1311.z ? _1305.z : _1309.z);
            }
            bvec3 _1321 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1323 = mix(_1298, vec3(_1321.x ? _1306.x : _1319.x, _1321.y ? _1306.y : _1319.y, _1321.z ? _1306.z : _1319.z), _1297 * _1224.w);
            _1325 = vec4(_1323.x, _1323.y, _1323.z, _1157.w);
        }
        else
        {
            _1325 = vec4(_1207.x, _1207.y, _1207.z, _1157.w);
        }
        highp vec4 _1428;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1347 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1354 = reflect(-_411, mix(_566, _563, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1357 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1354, _1191 * ((-4.19999980926513671875) * _1191 + 10.19999980926513671875));
            highp vec3 _1377 = ((_1357.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1357.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1000, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1383 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1354, _1191 * 8.0).xyz * 1.0;
            highp float _1394 = 1.0 - _565;
            highp vec3 _1403 = _1224.xyz;
            highp vec3 _1408 = _1325.xyz + _1403;
            highp vec3 _1409 = _1325.xyz * _1403;
            bvec3 _1411 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1412 = vec3(_1411.x ? _1403.x : _294.x, _1411.y ? _1403.y : _294.y, _1411.z ? _1403.z : _294.z);
            bvec3 _1414 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1422;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1420 = (-_1325.xyz) * _1403 + _1408;
                bvec3 _2181 = isnan(_1420);
                bvec3 _2182 = isnan(_1325.xyz);
                highp vec3 _2183 = max(_1420, _1325.xyz);
                highp vec3 _2184 = vec3(_2181.x ? _1325.xyz.x : _2183.x, _2181.y ? _1325.xyz.y : _2183.y, _2181.z ? _1325.xyz.z : _2183.z);
                _1422 = vec3(_2182.x ? _1420.x : _2184.x, _2182.y ? _1420.y : _2184.y, _2182.z ? _1420.z : _2184.z);
            }
            else
            {
                _1422 = vec3(_1414.x ? _1408.x : _1412.x, _1414.y ? _1408.y : _1412.y, _1414.z ? _1408.z : _1412.z);
            }
            bvec3 _1424 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1426 = mix(_1325.xyz, vec3(_1424.x ? _1409.x : _1422.x, _1424.y ? _1409.y : _1422.y, _1424.z ? _1409.z : _1422.z), ((vec3(_1347.x ? _1377.x : _1383.x, _1347.y ? _1377.y : _1383.y, _1347.z ? _1377.z : _1383.z) * (1.0 / (_1192 * _1192 + 1.0))) * mix(_1213, vec3(clamp(_1190 + (1.0 - ((-_1204) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1394 * _1394) * _1394) * _1394) * _1394))) * _1224.w);
            _1428 = vec4(_1426.x, _1426.y, _1426.z, _1325.w);
        }
        else
        {
            _1428 = _1325;
        }
        _1429 = _1428;
    }
    else
    {
        _1429 = _1157;
    }
    highp vec4 _1580;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1474;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1451 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _455 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1451.w = _1451.w * _1451.x;
            highp vec2 _1462 = ((_1451.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1463 = vec3(_1462.x, _1462.y, _300.z);
            highp vec2 _1464 = _1462.xy;
            _1463.z = sqrt(1.0 - clamp(dot(_1464, _1464), 0.0, 1.0));
            highp vec3 _1471 = normalize(_420 * _1463);
            highp vec3 _1472 = -_1471;
            _1474 = vec3(_561.x ? _1472.x : _1471.x, _561.y ? _1472.y : _1471.y, _561.z ? _1472.z : _1471.z);
        }
        else
        {
            _1474 = mix(_566, _563, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1491 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1492 = vec3(_1491.x ? _411.x : _319.x, _1491.y ? _411.y : _319.y, _1491.z ? _411.z : _319.z);
        bvec3 _1493 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1494 = vec3(_1493.x ? vec3(0.0, 1.0, 0.0).x : _326.x, _1493.y ? vec3(0.0, 1.0, 0.0).y : _326.y, _1493.z ? vec3(0.0, 1.0, 0.0).z : _326.z);
        highp vec3 _1498 = normalize(_1494 - (_1492 * dot(_1492, _1494)));
        highp vec4 _1520 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1474) * mat3(cross(_1492, _1498), _1498, _1492)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1544 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _455 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1546 = mix(_1520.xyz, _1520.xyz * _1000, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1553 = mix(_1546, _1546 * _821.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1560 = _1429.xyz + _1553;
        highp vec3 _1561 = _1429.xyz * _1553;
        bvec3 _1563 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1564 = vec3(_1563.x ? _1553.x : _294.x, _1563.y ? _1553.y : _294.y, _1563.z ? _1553.z : _294.z);
        bvec3 _1566 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1574;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1572 = (-_1429.xyz) * _1553 + _1560;
            bvec3 _2186 = isnan(_1572);
            bvec3 _2187 = isnan(_1429.xyz);
            highp vec3 _2188 = max(_1572, _1429.xyz);
            highp vec3 _2189 = vec3(_2186.x ? _1429.xyz.x : _2188.x, _2186.y ? _1429.xyz.y : _2188.y, _2186.z ? _1429.xyz.z : _2188.z);
            _1574 = vec3(_2187.x ? _1572.x : _2189.x, _2187.y ? _1572.y : _2189.y, _2187.z ? _1572.z : _2189.z);
        }
        else
        {
            _1574 = vec3(_1566.x ? _1560.x : _1564.x, _1566.y ? _1560.y : _1564.y, _1566.z ? _1560.z : _1564.z);
        }
        bvec3 _1576 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1578 = mix(_1429.xyz, vec3(_1576.x ? _1561.x : _1574.x, _1576.y ? _1561.y : _1574.y, _1576.z ? _1561.z : _1574.z), _1544.xyz * (_Globals._MatCapBlend * ((_343 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1520.w, _1520.w * _1001, _Globals._MatCapShadowMask))));
        _1580 = vec4(_1578.x, _1578.y, _1578.z, _1429.w);
    }
    else
    {
        _1580 = _1429;
    }
    highp vec4 _1730;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1625;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1602 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _455 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1602.w = _1602.w * _1602.x;
            highp vec2 _1613 = ((_1602.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1614 = vec3(_1613.x, _1613.y, _300.z);
            highp vec2 _1615 = _1613.xy;
            _1614.z = sqrt(1.0 - clamp(dot(_1615, _1615), 0.0, 1.0));
            highp vec3 _1622 = normalize(_420 * _1614);
            highp vec3 _1623 = -_1622;
            _1625 = vec3(_561.x ? _1623.x : _1622.x, _561.y ? _1623.y : _1622.y, _561.z ? _1623.z : _1622.z);
        }
        else
        {
            _1625 = mix(_566, _563, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1641 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1642 = vec3(_1641.x ? _411.x : _319.x, _1641.y ? _411.y : _319.y, _1641.z ? _411.z : _319.z);
        bvec3 _1643 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1644 = vec3(_1643.x ? vec3(0.0, 1.0, 0.0).x : _326.x, _1643.y ? vec3(0.0, 1.0, 0.0).y : _326.y, _1643.z ? vec3(0.0, 1.0, 0.0).z : _326.z);
        highp vec3 _1648 = normalize(_1644 - (_1642 * dot(_1642, _1644)));
        highp vec4 _1670 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1625 * mat3(cross(_1642, _1648), _1648, _1642)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1671 = _1670.xyz;
        highp float _1677 = _1670.w;
        highp vec4 _1694 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _455 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1696 = mix(_1671, _1671 * _1000, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1703 = mix(_1696, _1696 * _821.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1710 = _1580.xyz + _1703;
        highp vec3 _1711 = _1580.xyz * _1703;
        bvec3 _1713 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1714 = vec3(_1713.x ? _1703.x : _294.x, _1713.y ? _1703.y : _294.y, _1713.z ? _1703.z : _294.z);
        bvec3 _1716 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1724;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1722 = (-_1580.xyz) * _1703 + _1710;
            bvec3 _2191 = isnan(_1722);
            bvec3 _2192 = isnan(_1580.xyz);
            highp vec3 _2193 = max(_1722, _1580.xyz);
            highp vec3 _2194 = vec3(_2191.x ? _1580.xyz.x : _2193.x, _2191.y ? _1580.xyz.y : _2193.y, _2191.z ? _1580.xyz.z : _2193.z);
            _1724 = vec3(_2192.x ? _1722.x : _2194.x, _2192.y ? _1722.y : _2194.y, _2192.z ? _1722.z : _2194.z);
        }
        else
        {
            _1724 = vec3(_1716.x ? _1710.x : _1714.x, _1716.y ? _1710.y : _1714.y, _1716.z ? _1710.z : _1714.z);
        }
        bvec3 _1726 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1728 = mix(_1580.xyz, vec3(_1726.x ? _1711.x : _1724.x, _1726.y ? _1711.y : _1724.y, _1726.z ? _1711.z : _1724.z), _1694.xyz * (_Globals._MatCap2ndBlend * ((_343 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1677, _1677 * _1001, _Globals._MatCap2ndShadowMask))));
        _1730 = vec4(_1728.x, _1728.y, _1728.z, _1580.w);
    }
    else
    {
        _1730 = _1580;
    }
    highp vec4 _1876;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1749 = mix(_566, _563, vec3(_Globals._RimNormalStrength));
        highp float _1753 = dot(_395, _1749) * 0.5 + 0.5;
        highp float _1776 = (_343 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1749, _411)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1780 = mix(_1776, _1776 * clamp((_1753 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1781 = _1776 * clamp(((1.0 - _1753) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1791 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1800 = clamp((_1780 - _1791) / clamp(fwidth(_1780) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1791), 0.0, 1.0), 0.0, 1.0);
        highp float _1807 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1817 = clamp((_1781 * _Globals._RimDirStrength + (-_1807)) / clamp(fwidth(_1781 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1807), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1829 = vec3(1.0 - _Globals._RimEnableLighting) + (_1000 * _Globals._RimEnableLighting);
        highp vec3 _1831 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _821.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1832 = _1831 * _1829;
        highp vec3 _1838 = _1831 * _1829 + _1730.xyz;
        highp vec3 _1839 = _1730.xyz * _1832;
        bvec3 _1841 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1842 = vec3(_1841.x ? _1832.x : _294.x, _1841.y ? _1832.y : _294.y, _1841.z ? _1832.z : _294.z);
        bvec3 _1844 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1846 = _Globals._RimBlendMode == 2u;
        highp vec3 _1852;
        if (_1846)
        {
            highp vec3 _1850 = (-_1730.xyz) * _1832 + _1838;
            bvec3 _2196 = isnan(_1850);
            bvec3 _2197 = isnan(_1730.xyz);
            highp vec3 _2198 = max(_1850, _1730.xyz);
            highp vec3 _2199 = vec3(_2196.x ? _1730.xyz.x : _2198.x, _2196.y ? _1730.xyz.y : _2198.y, _2196.z ? _1730.xyz.z : _2198.z);
            _1852 = vec3(_2197.x ? _1850.x : _2199.x, _2197.y ? _1850.y : _2199.y, _2197.z ? _1850.z : _2199.z);
        }
        else
        {
            _1852 = vec3(_1844.x ? _1838.x : _1842.x, _1844.y ? _1838.y : _1842.y, _1844.z ? _1838.z : _1842.z);
        }
        bvec3 _1854 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1857 = mix(_1730.xyz, vec3(_1854.x ? _1839.x : _1852.x, _1854.y ? _1839.y : _1852.y, _1854.z ? _1839.z : _1852.z), vec3(mix(_1800, _1800 * _1001, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1859 = _Globals._RimIndirColor.xyz * _1829;
        highp vec3 _1863 = _Globals._RimIndirColor.xyz * _1829 + _1857;
        highp vec3 _1864 = _1857 * _1859;
        highp vec3 _1865 = vec3(_1841.x ? _1859.x : _294.x, _1841.y ? _1859.y : _294.y, _1841.z ? _1859.z : _294.z);
        highp vec3 _1872;
        if (_1846)
        {
            highp vec3 _1870 = (-_1857) * _1859 + _1863;
            bvec3 _2201 = isnan(_1870);
            bvec3 _2202 = isnan(_1857);
            highp vec3 _2203 = max(_1870, _1857);
            highp vec3 _2204 = vec3(_2201.x ? _1857.x : _2203.x, _2201.y ? _1857.y : _2203.y, _2201.z ? _1857.z : _2203.z);
            _1872 = vec3(_2202.x ? _1870.x : _2204.x, _2202.y ? _1870.y : _2204.y, _2202.z ? _1870.z : _2204.z);
        }
        else
        {
            _1872 = vec3(_1844.x ? _1863.x : _1865.x, _1844.y ? _1863.y : _1865.y, _1844.z ? _1863.z : _1865.z);
        }
        highp vec3 _1874 = mix(_1857, vec3(_1854.x ? _1864.x : _1872.x, _1854.y ? _1864.y : _1872.y, _1854.z ? _1864.z : _1872.z), vec3(mix(_1817, _1817 * _1001, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1876 = vec4(_1874.x, _1874.y, _1874.z, _1730.w);
    }
    else
    {
        _1876 = _1730;
    }
    highp vec4 _1941;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1890 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _399, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1904 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1910;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1910 = roundEven(_1904);
        }
        else
        {
            _1910 = _1904;
        }
        highp vec3 _1917 = mix(_1890, _1890 * _821.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1921 = _1876.xyz + _1917;
        highp vec3 _1922 = _1876.xyz * _1917;
        bvec3 _1924 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1925 = vec3(_1924.x ? _1917.x : _294.x, _1924.y ? _1917.y : _294.y, _1924.z ? _1917.z : _294.z);
        bvec3 _1927 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1935;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1933 = (-_1876.xyz) * _1917 + _1921;
            bvec3 _2206 = isnan(_1933);
            bvec3 _2207 = isnan(_1876.xyz);
            highp vec3 _2208 = max(_1933, _1876.xyz);
            highp vec3 _2209 = vec3(_2206.x ? _1876.xyz.x : _2208.x, _2206.y ? _1876.xyz.y : _2208.y, _2206.z ? _1876.xyz.z : _2208.z);
            _1935 = vec3(_2207.x ? _1933.x : _2209.x, _2207.y ? _1933.y : _2209.y, _2207.z ? _1933.z : _2209.z);
        }
        else
        {
            _1935 = vec3(_1927.x ? _1921.x : _1925.x, _1927.y ? _1921.y : _1925.y, _1927.z ? _1921.z : _1925.z);
        }
        bvec3 _1937 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1939 = mix(_1876.xyz, vec3(_1937.x ? _1922.x : _1935.x, _1937.y ? _1922.y : _1935.y, _1937.z ? _1922.z : _1935.z), vec3((_Globals._EmissionBlend * mix(1.0, _1910, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1941 = vec4(_1939.x, _1939.y, _1939.z, _1876.w);
    }
    else
    {
        _1941 = _1876;
    }
    highp vec4 _2006;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1955 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _399, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1969 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1975;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1975 = roundEven(_1969);
        }
        else
        {
            _1975 = _1969;
        }
        highp vec3 _1982 = mix(_1955, _1955 * _821.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1986 = _1941.xyz + _1982;
        highp vec3 _1987 = _1941.xyz * _1982;
        bvec3 _1989 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1990 = vec3(_1989.x ? _1982.x : _294.x, _1989.y ? _1982.y : _294.y, _1989.z ? _1982.z : _294.z);
        bvec3 _1992 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2000;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1998 = (-_1941.xyz) * _1982 + _1986;
            bvec3 _2211 = isnan(_1998);
            bvec3 _2212 = isnan(_1941.xyz);
            highp vec3 _2213 = max(_1998, _1941.xyz);
            highp vec3 _2214 = vec3(_2211.x ? _1941.xyz.x : _2213.x, _2211.y ? _1941.xyz.y : _2213.y, _2211.z ? _1941.xyz.z : _2213.z);
            _2000 = vec3(_2212.x ? _1998.x : _2214.x, _2212.y ? _1998.y : _2214.y, _2212.z ? _1998.z : _2214.z);
        }
        else
        {
            _2000 = vec3(_1992.x ? _1986.x : _1990.x, _1992.y ? _1986.y : _1990.y, _1992.z ? _1986.z : _1990.z);
        }
        bvec3 _2002 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2004 = mix(_1941.xyz, vec3(_2002.x ? _1987.x : _2000.x, _2002.y ? _1987.y : _2000.y, _2002.z ? _1987.z : _2000.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1975, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2006 = vec4(_2004.x, _2004.y, _2004.z, _1941.w);
    }
    else
    {
        _2006 = _1941;
    }
    bvec3 _2008 = bvec3(_343 < 0.0);
    highp vec3 _2017 = mix(_2006.xyz, _Globals._BackfaceColor.xyz * _1000, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2052 = vec3(_2008.x ? _2017.x : _2006.xyz.x, _2008.y ? _2017.y : _2006.xyz.y, _2008.z ? _2017.z : _2006.xyz.z).xyz;
    highp vec3 _2060 = mix(_2052, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2052, vec3(pow(clamp(1.0 - abs(dot(_566, _411)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_343 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _404) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2060.x, _2060.y, _2060.z, _2006.w), vec4(out_var_TEXCOORD9));
}
