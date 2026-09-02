#version 300 es
precision mediump float;
precision highp int;

vec3 _308;
vec3 _314;
float _315;

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
    highp vec3 _335 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _342 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _358 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _367 = float(gl_FrontFacing ? 1 : (-1));
    highp float _418;
    do
    {
        highp vec3 _374 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _375 = _374.xy;
        highp float _381 = _374.z;
        if ((any(lessThan(_375, vec2(0.0))) || any(greaterThan(_375, vec2(1.0)))) || (_381 > 1.0))
        {
            _418 = 1.0;
            break;
        }
        highp float _391 = _381 + _Globals.uShadowBias;
        _418 = (((step(_391, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _375), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_391, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _375), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_391, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _375), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_391, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _375), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _419 = normalize(out_var_TEXCOORD7);
    highp vec3 _423 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _427 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _428 = length(_427);
    highp vec3 _435 = normalize(_427);
    highp mat3 _444 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _449 = bvec2(_367 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _450 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _463 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _464 = sin(_463);
    highp float _465 = cos(_463);
    highp vec2 _466 = (vec2(_449.x ? _450.x : out_var_TEXCOORD0.xy.x, _449.y ? _450.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _467 = _466.x;
    highp float _468 = _466.y;
    highp vec2 _479 = (vec2(_467 * _465 + (-(_468 * _464)), _467 * _464 + (_468 * _465)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _483 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _479);
    highp vec3 _490 = pow(abs(_483.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _491 = _490.z;
    highp float _492 = _490.y;
    bvec4 _494 = bvec4(_491 > _492);
    highp vec4 _495 = vec4(_491, _492, -1.0, 0.666666686534881591796875);
    highp vec4 _496 = vec4(_492, _491, 0.0, -0.3333333432674407958984375);
    highp vec4 _497 = vec4(_494.x ? _495.x : _496.x, _494.y ? _495.y : _496.y, _494.z ? _495.z : _496.z, _494.w ? _495.w : _496.w);
    highp float _498 = _497.x;
    highp float _499 = _490.x;
    bvec4 _501 = bvec4(_498 > _499);
    highp vec4 _504 = vec4(_498, _497.yw, _499);
    highp vec4 _506 = vec4(_499, _497.yz, _498);
    highp vec4 _507 = vec4(_501.x ? _504.x : _506.x, _501.y ? _504.y : _506.y, _501.z ? _504.z : _506.z, _501.w ? _504.w : _506.w);
    highp float _512 = _507.x - (isnan(_507.y) ? _507.w : (isnan(_507.w) ? _507.y : min(_507.w, _507.y)));
    highp float _525 = clamp((_512 / (_507.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _528 = clamp(_507.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _542 = vec3((-_528) * _525 + _528) + (clamp(abs((fract(vec3(abs(_507.z + ((_507.w - _507.y) / (6.0 * _512 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_528 * _525));
    highp vec4 _546 = vec4(_542.x, _542.y, _542.z, _483.w) * _Globals._Color;
    highp vec3 _578;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _559 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _479 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _559.w = _559.w * _559.x;
        highp vec2 _570 = ((_559.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _571 = vec3(_570.x, _570.y, _314.z);
        highp vec2 _572 = _570.xy;
        _571.z = sqrt(1.0 - clamp(dot(_572, _572), 0.0, 1.0));
        _578 = _571;
    }
    else
    {
        _578 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _580 = normalize(_444 * _578);
    bvec3 _585 = bvec3(_367 < (_Globals._FlipNormal - 1.0));
    highp vec3 _586 = -_580;
    highp vec3 _587 = vec3(_585.x ? _586.x : _580.x, _585.y ? _586.y : _580.y, _585.z ? _586.z : _580.z);
    highp float _589 = clamp(dot(_587, _435), 0.0, 1.0);
    highp vec3 _590 = normalize(out_var_TEXCOORD4);
    highp vec2 _594 = ((_587 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _342, _335)).xy * 0.5) + vec2(0.5);
    bool _595 = out_var_TEXCOORD5.w > 0.0;
    bool _600 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _883;
    highp vec4 _884;
    if (_600)
    {
        bvec2 _606 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _607 = vec2(_606.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _606.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _609 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _610 = vec2(_609.x ? out_var_TEXCOORD1.xy.x : _607.x, _609.y ? out_var_TEXCOORD1.xy.y : _607.y);
        bvec2 _612 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _613 = vec2(_612.x ? out_var_TEXCOORD1.zw.x : _610.x, _612.y ? out_var_TEXCOORD1.zw.y : _610.y);
        bvec2 _615 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _616 = vec2(_615.x ? _594.x : _613.x, _615.y ? _594.y : _613.y);
        highp vec4 _655 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _656 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _664;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _663 = _616;
            _663.x = abs(_616.x - 0.5) + 0.5;
            _664 = _663;
        }
        else
        {
            _664 = _616;
        }
        highp vec2 _665 = _655.xy;
        highp vec2 _666 = _655.zw;
        highp vec2 _667 = _664 * _665 + _666;
        highp vec2 _676;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_616.x < 0.5))
        {
            highp vec2 _675 = _667;
            _675.x = 1.0 - _667.x;
            _676 = _675;
        }
        else
        {
            _676 = _667;
        }
        highp vec2 _683;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _595)
        {
            highp vec2 _682 = _676;
            _682.x = 1.0 - _676.x;
            _683 = _682;
        }
        else
        {
            _683 = _676;
        }
        highp vec2 _688;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _595)
        {
            highp vec2 _687 = _683;
            _687.x = -1.0;
            _688 = _687;
        }
        else
        {
            _688 = _683;
        }
        highp vec2 _694;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_595))
        {
            highp vec2 _693 = _688;
            _693.x = -1.0;
            _694 = _693;
        }
        else
        {
            _694 = _688;
        }
        highp float _697 = sin(_656);
        highp float _698 = cos(_656);
        highp vec2 _699 = ((_694 - _666) / _665) - vec2(0.5);
        highp float _700 = _699.x;
        highp float _701 = _699.y;
        highp vec2 _709 = (vec2(_700 * _698 + (-(_701 * _697)), _700 * _697 + (_701 * _698)) + vec2(0.5)) * _665 + _666;
        uint _713 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _717 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _713 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _713);
        highp float _718 = _709.x;
        highp float _719 = _709.y;
        uint _726 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _736 = ((mix(vec2(_718, 1.0 - _719), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_717 % _726), float(_717 / _726))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _736.y = 1.0 - _736.y;
        highp vec4 _741 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _736);
        highp vec4 _757;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _744 = _741.x;
            highp float _745 = _741.y;
            highp float _746 = _741.z;
            highp float _747 = isnan(_745) ? _744 : (isnan(_744) ? _745 : min(_744, _745));
            highp float _748 = isnan(_745) ? _744 : (isnan(_744) ? _745 : max(_744, _745));
            highp float _749 = isnan(_746) ? _748 : (isnan(_748) ? _746 : min(_748, _746));
            highp float _750 = isnan(_749) ? _747 : (isnan(_747) ? _749 : max(_747, _749));
            _757 = vec4(1.0, 1.0, 1.0, clamp((_750 - 0.5) / clamp(fwidth(_750), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _757 = _741;
        }
        highp vec4 _780;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _761 = clamp(_589 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _764 = 0.5 - abs(_718 - 0.5);
            highp float _771 = 0.5 - abs(_719 - 0.5);
            highp vec4 _779 = _757;
            _779.w = _757.w * (clamp(_764 / clamp(fwidth(_764), 9.9999997473787516355514526367188e-05, _761), 0.0, 1.0) * clamp(_771 / clamp(fwidth(_771), 9.9999997473787516355514526367188e-05, _761), 0.0, 1.0));
            _780 = _779;
        }
        else
        {
            _780 = _757;
        }
        highp vec4 _781 = _Globals._Color2nd * _780;
        highp float _787 = _781.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _479).x;
        _781.w = mix(_787, _787 * clamp((_428 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _813;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_367 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_367 < 0.0)))
        {
            highp vec4 _812 = _781;
            _812.w = 0.0;
            _813 = _812;
        }
        else
        {
            _813 = _781;
        }
        highp vec4 _852;
        highp vec4 _853;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _824;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _823 = _546;
                _823.w = _813.w;
                _824 = _823;
            }
            else
            {
                _824 = _546;
            }
            highp vec4 _832;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _831 = _824;
                _831.w = _824.w * _813.w;
                _832 = _831;
            }
            else
            {
                _832 = _824;
            }
            highp vec4 _841;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _840 = _832;
                _840.w = clamp(_832.w + _813.w, 0.0, 1.0);
                _841 = _840;
            }
            else
            {
                _841 = _832;
            }
            highp vec4 _850;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _849 = _841;
                _849.w = clamp(_841.w - _813.w, 0.0, 1.0);
                _850 = _849;
            }
            else
            {
                _850 = _841;
            }
            highp vec4 _851 = _813;
            _851.w = 1.0;
            _852 = _851;
            _853 = _850;
        }
        else
        {
            _852 = _813;
            _853 = _546;
        }
        highp vec3 _863 = _853.xyz + _852.xyz;
        highp vec3 _864 = _853.xyz * _852.xyz;
        bvec3 _866 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _867 = vec3(_866.x ? _852.xyz.x : _308.x, _866.y ? _852.xyz.y : _308.y, _866.z ? _852.xyz.z : _308.z);
        bvec3 _869 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _877;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _875 = (-_853.xyz) * _852.xyz + _863;
            bvec3 _2403 = isnan(_875);
            bvec3 _2404 = isnan(_853.xyz);
            highp vec3 _2405 = max(_875, _853.xyz);
            highp vec3 _2406 = vec3(_2403.x ? _853.xyz.x : _2405.x, _2403.y ? _853.xyz.y : _2405.y, _2403.z ? _853.xyz.z : _2405.z);
            _877 = vec3(_2404.x ? _875.x : _2406.x, _2404.y ? _875.y : _2406.y, _2404.z ? _875.z : _2406.z);
        }
        else
        {
            _877 = vec3(_869.x ? _863.x : _867.x, _869.y ? _863.y : _867.y, _869.z ? _863.z : _867.z);
        }
        bvec3 _879 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _881 = mix(_853.xyz, vec3(_879.x ? _864.x : _877.x, _879.y ? _864.y : _877.y, _879.z ? _864.z : _877.z), vec3(_852.w * _Globals._Main2ndEnableLighting));
        _883 = _852;
        _884 = vec4(_881.x, _881.y, _881.z, _853.w);
    }
    else
    {
        _883 = _Globals._Color2nd;
        _884 = _546;
    }
    highp vec4 _924;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _895 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _900;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _899 = _884;
            _899.w = _895;
            _900 = _899;
        }
        else
        {
            _900 = _884;
        }
        highp vec4 _907;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _906 = _900;
            _906.w = _900.w * _895;
            _907 = _906;
        }
        else
        {
            _907 = _900;
        }
        highp vec4 _915;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _914 = _907;
            _914.w = clamp(_907.w + _895, 0.0, 1.0);
            _915 = _914;
        }
        else
        {
            _915 = _907;
        }
        highp vec4 _923;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _922 = _915;
            _922.w = clamp(_915.w - _895, 0.0, 1.0);
            _923 = _922;
        }
        else
        {
            _923 = _915;
        }
        _924 = _923;
    }
    else
    {
        _924 = _884;
    }
    highp vec4 _1019;
    highp float _1020;
    if ((_358 & 1) != 0)
    {
        highp vec4 _928 = _924;
        _928.w = 1.0;
        highp vec2 _934 = roundEven(_Globals._DissolveParams.xy);
        highp float _935 = _934.x;
        highp vec4 _1008;
        highp float _1009;
        if (_935 != 0.0)
        {
            highp float _951;
            highp float _952;
            if (_935 == 1.0)
            {
                _951 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _952 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _951 = 0.0;
                _952 = 1.0;
            }
            highp float _983;
            highp float _984;
            if (_935 == 2.0)
            {
                highp vec2 _961 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _972 = (_934.y == 1.0) ? (vec2(_961.x * cos(_Globals._DissolvePos.w) + (-(_961.y * sin(_Globals._DissolvePos.w))), _315) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _983 = 1.0 - clamp(abs(_972 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _984 = _952 * float(_972 > _Globals._DissolveParams.z);
            }
            else
            {
                _983 = _951;
                _984 = _952;
            }
            highp float _1005;
            highp float _1006;
            if (_935 == 3.0)
            {
                highp float _994 = (_934.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1005 = 1.0 - clamp(abs(_994 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1006 = _984 * float(_994 > _Globals._DissolveParams.z);
            }
            else
            {
                _1005 = _983;
                _1006 = _984;
            }
            highp vec4 _1007 = _928;
            _1007.w = _1006;
            _1008 = _1007;
            _1009 = _1005;
        }
        else
        {
            _1008 = _928;
            _1009 = 0.0;
        }
        highp vec4 _1015;
        if ((_358 & 2) != 0)
        {
            highp vec4 _1014 = _1008;
            _1014.w = 1.0 - _1008.w;
            _1015 = _1014;
        }
        else
        {
            _1015 = _1008;
        }
        highp vec4 _1018 = _1015;
        _1018.w = _1015.w * _924.w;
        _1019 = _1018;
        _1020 = _1009;
    }
    else
    {
        _1019 = _924;
        _1020 = 0.0;
    }
    if ((_1019.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1201;
    highp float _1202;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1053 = clamp(dot(_419, mix(_590, _587, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1056 = clamp(dot(_419, mix(_590, _587, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1059 = clamp(dot(_419, mix(_590, _587, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1063 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1066 = clamp(_418 + distance(_419, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1069 = mix(1.0, _1066, _Globals._ShadowReceive);
        highp float _1070 = _1053 * _1069;
        highp float _1073 = mix(1.0, _1066, _Globals._Shadow2ndReceive);
        highp float _1077 = mix(1.0, _1066, _Globals._Shadow3rdReceive);
        highp float _1088 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1089 = clamp(_1088, 0.0, 1.0);
        highp float _1091 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1104 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1118 = clamp(_1088 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1131 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1146 = (_367 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1147 = clamp((_1053 * _1069 + (-_1089)) / clamp(fwidth(_1070) * _1063 + (_1091 - _1089), 0.0, 1.0), 0.0, 1.0) * _1146;
        highp vec3 _1179 = mix(mix(_1019.xyz * _Globals._ShadowColor.xyz, (_1019.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1056 * _1073 + (-_1104)) / clamp(fwidth(_1056 * _1073) * _1063 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1104), 0.0, 1.0), 0.0, 1.0) * _1146)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1019.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1059 * _1077 + (-_1131)) / clamp(fwidth(_1059 * _1077) * _1063 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1131), 0.0, 1.0), 0.0, 1.0) * _1146)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1185 = _1019.xyz * out_var_TEXCOORD6;
        highp vec3 _1191 = mix(mix(_1179, _1179 * _1019.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1019.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2408 = isnan(_1191);
        bvec3 _2409 = isnan(_1185);
        highp vec3 _2410 = min(_1191, _1185);
        highp vec3 _2411 = vec3(_2408.x ? _1185.x : _2410.x, _2408.y ? _1185.y : _2410.y, _2408.z ? _1185.z : _2410.z);
        highp vec3 _1199 = mix(mix(vec3(_2409.x ? _1191.x : _2411.x, _2409.y ? _1191.y : _2411.y, _2409.z ? _1191.z : _2411.z), _1185, _Globals._ShadowBorderColor.xyz * (clamp((_1053 * _1069 + (-_1118)) / clamp(fwidth(_1070) * _1063 + (_1091 - _1118), 0.0, 1.0), 0.0, 1.0) * _1146)), _1185, vec3(mix(1.0, _1147, _Globals._ShadowStrength)));
        _1201 = vec4(_1199.x, _1199.y, _1199.z, _1019.w);
        _1202 = _1147;
    }
    else
    {
        highp vec3 _1035 = _1019.xyz * out_var_TEXCOORD6;
        _1201 = vec4(_1035.x, _1035.y, _1035.z, _1019.w);
        _1202 = 1.0;
    }
    highp vec3 _1205 = vec3(_Globals._LightMaxLimit);
    bvec3 _2413 = isnan(out_var_TEXCOORD6);
    bvec3 _2414 = isnan(_1205);
    highp vec3 _2415 = min(out_var_TEXCOORD6, _1205);
    highp vec3 _2416 = vec3(_2413.x ? _1205.x : _2415.x, _2413.y ? _1205.y : _2415.y, _2413.z ? _1205.z : _2415.z);
    highp vec3 _1206 = vec3(_2414.x ? out_var_TEXCOORD6.x : _2416.x, _2414.y ? out_var_TEXCOORD6.y : _2416.y, _2414.z ? out_var_TEXCOORD6.z : _2416.z);
    highp float _1207 = clamp(_1202, 0.0, 1.0);
    highp vec3 _1209 = _1019.xyz * _Globals._LightMaxLimit;
    bvec3 _2418 = isnan(_1201.xyz);
    bvec3 _2419 = isnan(_1209);
    highp vec3 _2420 = min(_1201.xyz, _1209);
    highp vec3 _2421 = vec3(_2418.x ? _1209.x : _2420.x, _2418.y ? _1209.y : _2420.y, _2418.z ? _1209.z : _2420.z);
    highp vec3 _1210 = vec3(_2419.x ? _1201.xyz.x : _2421.x, _2419.y ? _1201.xyz.y : _2421.y, _2419.z ? _1201.xyz.z : _2421.z);
    highp vec4 _1244;
    if (_600)
    {
        highp vec3 _1214 = _1210.xyz;
        highp vec3 _1224 = _1214 + _883.xyz;
        highp vec3 _1225 = _1214 * _883.xyz;
        bvec3 _1227 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1228 = vec3(_1227.x ? _883.xyz.x : _308.x, _1227.y ? _883.xyz.y : _308.y, _1227.z ? _883.xyz.z : _308.z);
        bvec3 _1230 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1238;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1236 = (-_1214) * _883.xyz + _1224;
            bvec3 _2423 = isnan(_1236);
            bvec3 _2424 = isnan(_1214);
            highp vec3 _2425 = max(_1236, _1214);
            highp vec3 _2426 = vec3(_2423.x ? _1214.x : _2425.x, _2423.y ? _1214.y : _2425.y, _2423.z ? _1214.z : _2425.z);
            _1238 = vec3(_2424.x ? _1236.x : _2426.x, _2424.y ? _1236.y : _2426.y, _2424.z ? _1236.z : _2426.z);
        }
        else
        {
            _1238 = vec3(_1230.x ? _1224.x : _1228.x, _1230.y ? _1224.y : _1228.y, _1230.z ? _1224.z : _1228.z);
        }
        bvec3 _1240 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1242 = mix(_1214, vec3(_1240.x ? _1225.x : _1238.x, _1240.y ? _1225.y : _1238.y, _1240.z ? _1225.z : _1238.z), vec3((-_883.w) * _Globals._Main2ndEnableLighting + _883.w));
        _1244 = vec4(_1242.x, _1242.y, _1242.z, _1201.w);
    }
    else
    {
        _1244 = vec4(_1210.x, _1210.y, _1210.z, _1201.w);
    }
    highp vec4 _1290;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1260 = pow(clamp(1.0 - abs(dot(mix(_590, _587, vec3(_Globals._RimShadeNormalStrength)), _435)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1269 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1288 = mix(_1244.xyz, _1244.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1260 - _1269) / clamp(fwidth(_1260) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1269), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1290 = vec4(_1288.x, _1288.y, _1288.z, _1244.w);
    }
    else
    {
        _1290 = _1244;
    }
    highp vec4 _1363;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1314 = dot(normalize(((-_435) * _Globals._BacklightViewStrength) + _419), mix(_590, _587, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1324;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1324 = _1314 * clamp(_418 + distance(_419, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1324 = _1314;
        }
        highp float _1333 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1361 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1019.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_367 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_435, _419) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1324 - _1333) / clamp(fwidth(_1324) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1333), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1206 + _1290.xyz;
        _1363 = vec4(_1361.x, _1361.y, _1361.z, _1290.w);
    }
    else
    {
        _1363 = _1290;
    }
    highp vec3 _1366 = _1363.xyz * _1363.w;
    highp vec4 _1648;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1382 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _479 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1384 = _Globals._Smoothness * _1382.x;
        highp vec3 _1387 = dFdx(_587);
        highp vec3 _1388 = abs(_1387);
        highp vec3 _1389 = dFdy(_587);
        highp vec3 _1390 = abs(_1389);
        highp float _1391 = dot(_1388, _1388);
        highp float _1392 = dot(_1390, _1390);
        highp float _1393 = isnan(_1392) ? _1391 : (isnan(_1391) ? _1392 : max(_1391, _1392));
        highp float _1396 = (_1393 / (_1393 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1399 = clamp(1.0 - (isnan(_1396) ? 0.0 : (isnan(0.0) ? _1396 : max(0.0, _1396))), 0.0, 1.0);
        highp float _1400 = isnan(_1399) ? _1384 : (isnan(_1384) ? _1399 : min(_1384, _1399));
        highp float _1401 = 1.0 - _1400;
        highp float _1402 = _1401 * _1401;
        highp vec4 _1412 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _479 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1414 = _Globals._Metallic * _1412.x;
        highp vec3 _1415 = _1366.xyz;
        highp vec3 _1417 = _1415 - (_1415 * _1414);
        highp vec3 _1423 = mix(vec3(_Globals._Reflectance), _1019.xyz, vec3(_1414));
        highp vec4 _1433 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _479 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1434 = _Globals._ReflectionColor * _1433;
        highp vec4 _1443;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1442 = _1434;
            _1442.w = _1434.w * _1363.w;
            _1443 = _1442;
        }
        else
        {
            _1443 = _1434;
        }
        highp vec4 _1544;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1516;
            do
            {
                highp vec3 _1454 = mix(_590, _587, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1456 = normalize(_435 + _419);
                highp float _1458 = clamp(dot(_1454, _1456), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1467 = pow(_1458, 1.0 / _1402);
                    highp float _1474 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1516 = vec3(clamp((_1467 - _1474) / clamp(fwidth(_1467) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1474), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1486 = clamp(dot(_1454, _435), 0.0, 1.0);
                highp float _1488 = clamp(dot(_1454, _419), 0.0, 1.0);
                highp float _1491 = isnan(0.00200000009499490261077880859375) ? _1402 : (isnan(_1402) ? 0.00200000009499490261077880859375 : max(_1402, 0.00200000009499490261077880859375));
                highp float _1492 = 1.0 - _1491;
                highp float _1496 = _1491 * _1491;
                highp float _1499 = (_1458 * _1496 + (-_1458)) * _1458 + 1.0;
                highp float _1507 = 1.0 - clamp(dot(_419, _1456), 0.0, 1.0);
                _1516 = (_1423 + ((((((vec3(1.0) - _1423) * _1507) * _1507) * _1507) * _1507) * _1507)) * (((0.5 / ((_1488 * (_1486 * _1492 + _1491) + (_1486 * (_1488 * _1492 + _1491))) + 9.9999997473787516355514526367188e-06)) * (_1496 / (_1499 * _1499 + 1.0000000116860974230803549289703e-07))) * _1488);
                break;
            } while(false);
            highp vec3 _1517 = _1417.xyz;
            highp vec3 _1519 = _1443.xyz * _1206;
            highp vec3 _1524 = _1443.xyz * _1206 + _1517;
            highp vec3 _1525 = _1517 * _1519;
            bvec3 _1527 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1528 = vec3(_1527.x ? _1519.x : _308.x, _1527.y ? _1519.y : _308.y, _1527.z ? _1519.z : _308.z);
            bvec3 _1530 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1538;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1536 = (-_1517) * _1519 + _1524;
                bvec3 _2448 = isnan(_1536);
                bvec3 _2449 = isnan(_1517);
                highp vec3 _2450 = max(_1536, _1517);
                highp vec3 _2451 = vec3(_2448.x ? _1517.x : _2450.x, _2448.y ? _1517.y : _2450.y, _2448.z ? _1517.z : _2450.z);
                _1538 = vec3(_2449.x ? _1536.x : _2451.x, _2449.y ? _1536.y : _2451.y, _2449.z ? _1536.z : _2451.z);
            }
            else
            {
                _1538 = vec3(_1530.x ? _1524.x : _1528.x, _1530.y ? _1524.y : _1528.y, _1530.z ? _1524.z : _1528.z);
            }
            bvec3 _1540 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1542 = mix(_1517, vec3(_1540.x ? _1525.x : _1538.x, _1540.y ? _1525.y : _1538.y, _1540.z ? _1525.z : _1538.z), _1516 * _1443.w);
            _1544 = vec4(_1542.x, _1542.y, _1542.z, _1363.w);
        }
        else
        {
            _1544 = vec4(_1417.x, _1417.y, _1417.z, _1363.w);
        }
        highp vec4 _1647;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1566 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1573 = reflect(-_435, mix(_590, _587, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1576 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1573, _1401 * ((-4.19999980926513671875) * _1401 + 10.19999980926513671875));
            highp vec3 _1596 = ((_1576.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1576.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1206, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1602 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1573, _1401 * 8.0).xyz * 1.0;
            highp float _1613 = 1.0 - _589;
            highp vec3 _1627 = _1544.xyz + _1443.xyz;
            highp vec3 _1628 = _1544.xyz * _1443.xyz;
            bvec3 _1630 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1631 = vec3(_1630.x ? _1443.xyz.x : _308.x, _1630.y ? _1443.xyz.y : _308.y, _1630.z ? _1443.xyz.z : _308.z);
            bvec3 _1633 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1641;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1639 = (-_1544.xyz) * _1443.xyz + _1627;
                bvec3 _2453 = isnan(_1639);
                bvec3 _2454 = isnan(_1544.xyz);
                highp vec3 _2455 = max(_1639, _1544.xyz);
                highp vec3 _2456 = vec3(_2453.x ? _1544.xyz.x : _2455.x, _2453.y ? _1544.xyz.y : _2455.y, _2453.z ? _1544.xyz.z : _2455.z);
                _1641 = vec3(_2454.x ? _1639.x : _2456.x, _2454.y ? _1639.y : _2456.y, _2454.z ? _1639.z : _2456.z);
            }
            else
            {
                _1641 = vec3(_1633.x ? _1627.x : _1631.x, _1633.y ? _1627.y : _1631.y, _1633.z ? _1627.z : _1631.z);
            }
            bvec3 _1643 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1645 = mix(_1544.xyz, vec3(_1643.x ? _1628.x : _1641.x, _1643.y ? _1628.y : _1641.y, _1643.z ? _1628.z : _1641.z), ((vec3(_1566.x ? _1596.x : _1602.x, _1566.y ? _1596.y : _1602.y, _1566.z ? _1596.z : _1602.z) * (1.0 / (_1402 * _1402 + 1.0))) * mix(_1423, vec3(clamp(_1400 + (1.0 - ((-_1414) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1613 * _1613) * _1613) * _1613) * _1613))) * _1443.w);
            _1647 = vec4(_1645.x, _1645.y, _1645.z, _1544.w);
        }
        else
        {
            _1647 = _1544;
        }
        _1648 = _1647;
    }
    else
    {
        _1648 = vec4(_1366.x, _1366.y, _1366.z, _1363.w);
    }
    highp vec4 _1811;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1693;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1670 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _479 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1670.w = _1670.w * _1670.x;
            highp vec2 _1681 = ((_1670.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1682 = vec3(_1681.x, _1681.y, _314.z);
            highp vec2 _1683 = _1681.xy;
            _1682.z = sqrt(1.0 - clamp(dot(_1683, _1683), 0.0, 1.0));
            highp vec3 _1690 = normalize(_444 * _1682);
            highp vec3 _1691 = -_1690;
            _1693 = vec3(_585.x ? _1691.x : _1690.x, _585.y ? _1691.y : _1690.y, _585.z ? _1691.z : _1690.z);
        }
        else
        {
            _1693 = mix(_590, _587, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1710 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1711 = vec3(_1710.x ? _435.x : _335.x, _1710.y ? _435.y : _335.y, _1710.z ? _435.z : _335.z);
        bvec3 _1712 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1713 = vec3(_1712.x ? vec3(0.0, 1.0, 0.0).x : _342.x, _1712.y ? vec3(0.0, 1.0, 0.0).y : _342.y, _1712.z ? vec3(0.0, 1.0, 0.0).z : _342.z);
        highp vec3 _1717 = normalize(_1713 - (_1711 * dot(_1711, _1713)));
        highp vec4 _1739 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1693) * mat3(cross(_1711, _1717), _1717, _1711)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1745 = mix(_1739.xyz, _1739.xyz * _1206, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1746 = vec4(_1745.x, _1745.y, _1745.z, _1739.w);
        highp float _1751 = mix(_1739.w, _1739.w * _1207, _Globals._MatCapShadowMask);
        _1746.w = _1751;
        highp vec4 _1761;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1760 = _1746;
            _1760.w = _1751 * _1648.w;
            _1761 = _1760;
        }
        else
        {
            _1761 = _1746;
        }
        highp vec4 _1775 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _479 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1784 = mix(_1761.xyz, _1761.xyz * _1019.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1791 = _1648.xyz + _1784;
        highp vec3 _1792 = _1648.xyz * _1784;
        bvec3 _1794 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1795 = vec3(_1794.x ? _1784.x : _308.x, _1794.y ? _1784.y : _308.y, _1794.z ? _1784.z : _308.z);
        bvec3 _1797 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1805;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1803 = (-_1648.xyz) * _1784 + _1791;
            bvec3 _2458 = isnan(_1803);
            bvec3 _2459 = isnan(_1648.xyz);
            highp vec3 _2460 = max(_1803, _1648.xyz);
            highp vec3 _2461 = vec3(_2458.x ? _1648.xyz.x : _2460.x, _2458.y ? _1648.xyz.y : _2460.y, _2458.z ? _1648.xyz.z : _2460.z);
            _1805 = vec3(_2459.x ? _1803.x : _2461.x, _2459.y ? _1803.y : _2461.y, _2459.z ? _1803.z : _2461.z);
        }
        else
        {
            _1805 = vec3(_1797.x ? _1791.x : _1795.x, _1797.y ? _1791.y : _1795.y, _1797.z ? _1791.z : _1795.z);
        }
        bvec3 _1807 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1809 = mix(_1648.xyz, vec3(_1807.x ? _1792.x : _1805.x, _1807.y ? _1792.y : _1805.y, _1807.z ? _1792.z : _1805.z), _1775.xyz * (_Globals._MatCapBlend * ((_367 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1761.w)));
        _1811 = vec4(_1809.x, _1809.y, _1809.z, _1648.w);
    }
    else
    {
        _1811 = _1648;
    }
    highp vec4 _1973;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1856;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1833 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _479 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1833.w = _1833.w * _1833.x;
            highp vec2 _1844 = ((_1833.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1845 = vec3(_1844.x, _1844.y, _314.z);
            highp vec2 _1846 = _1844.xy;
            _1845.z = sqrt(1.0 - clamp(dot(_1846, _1846), 0.0, 1.0));
            highp vec3 _1853 = normalize(_444 * _1845);
            highp vec3 _1854 = -_1853;
            _1856 = vec3(_585.x ? _1854.x : _1853.x, _585.y ? _1854.y : _1853.y, _585.z ? _1854.z : _1853.z);
        }
        else
        {
            _1856 = mix(_590, _587, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1872 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1873 = vec3(_1872.x ? _435.x : _335.x, _1872.y ? _435.y : _335.y, _1872.z ? _435.z : _335.z);
        bvec3 _1874 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1875 = vec3(_1874.x ? vec3(0.0, 1.0, 0.0).x : _342.x, _1874.y ? vec3(0.0, 1.0, 0.0).y : _342.y, _1874.z ? vec3(0.0, 1.0, 0.0).z : _342.z);
        highp vec3 _1879 = normalize(_1875 - (_1873 * dot(_1873, _1875)));
        highp vec4 _1901 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1856 * mat3(cross(_1873, _1879), _1879, _1873)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1902 = _1901.xyz;
        highp vec3 _1907 = mix(_1902, _1902 * _1206, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1908 = vec4(_1907.x, _1907.y, _1907.z, _1901.w);
        highp float _1909 = _1901.w;
        highp float _1913 = mix(_1909, _1909 * _1207, _Globals._MatCap2ndShadowMask);
        _1908.w = _1913;
        highp vec4 _1923;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1922 = _1908;
            _1922.w = _1913 * _1811.w;
            _1923 = _1922;
        }
        else
        {
            _1923 = _1908;
        }
        highp vec4 _1937 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _479 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1946 = mix(_1923.xyz, _1923.xyz * _1019.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1953 = _1811.xyz + _1946;
        highp vec3 _1954 = _1811.xyz * _1946;
        bvec3 _1956 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1957 = vec3(_1956.x ? _1946.x : _308.x, _1956.y ? _1946.y : _308.y, _1956.z ? _1946.z : _308.z);
        bvec3 _1959 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1967;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1965 = (-_1811.xyz) * _1946 + _1953;
            bvec3 _2463 = isnan(_1965);
            bvec3 _2464 = isnan(_1811.xyz);
            highp vec3 _2465 = max(_1965, _1811.xyz);
            highp vec3 _2466 = vec3(_2463.x ? _1811.xyz.x : _2465.x, _2463.y ? _1811.xyz.y : _2465.y, _2463.z ? _1811.xyz.z : _2465.z);
            _1967 = vec3(_2464.x ? _1965.x : _2466.x, _2464.y ? _1965.y : _2466.y, _2464.z ? _1965.z : _2466.z);
        }
        else
        {
            _1967 = vec3(_1959.x ? _1953.x : _1957.x, _1959.y ? _1953.y : _1957.y, _1959.z ? _1953.z : _1957.z);
        }
        bvec3 _1969 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1971 = mix(_1811.xyz, vec3(_1969.x ? _1954.x : _1967.x, _1969.y ? _1954.y : _1967.y, _1969.z ? _1954.z : _1967.z), _1937.xyz * (_Globals._MatCap2ndBlend * ((_367 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _1923.w)));
        _1973 = vec4(_1971.x, _1971.y, _1971.z, _1811.w);
    }
    else
    {
        _1973 = _1811;
    }
    highp vec4 _2129;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1992 = mix(_590, _587, vec3(_Globals._RimNormalStrength));
        highp float _1996 = dot(_419, _1992) * 0.5 + 0.5;
        highp float _2019 = (_367 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1992, _435)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2023 = mix(_2019, _2019 * clamp((_1996 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2024 = _2019 * clamp(((1.0 - _1996) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2034 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2043 = clamp((_2023 - _2034) / clamp(fwidth(_2023) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2034), 0.0, 1.0), 0.0, 1.0);
        highp float _2050 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2060 = clamp((_2024 * _Globals._RimDirStrength + (-_2050)) / clamp(fwidth(_2024 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2050), 0.0, 1.0), 0.0, 1.0);
        highp float _2064 = mix(_2043, _2043 * _1207, _Globals._RimShadowMask);
        highp float _2066 = mix(_2060, _2060 * _1207, _Globals._RimShadowMask);
        highp float _2075;
        highp float _2076;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2075 = _2066 * _1973.w;
            _2076 = _2064 * _1973.w;
        }
        else
        {
            _2075 = _2066;
            _2076 = _2064;
        }
        highp vec3 _2082 = vec3(1.0 - _Globals._RimEnableLighting) + (_1206 * _Globals._RimEnableLighting);
        highp vec3 _2084 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1019.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2085 = _2084 * _2082;
        highp vec3 _2091 = _2084 * _2082 + _1973.xyz;
        highp vec3 _2092 = _1973.xyz * _2085;
        bvec3 _2094 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2095 = vec3(_2094.x ? _2085.x : _308.x, _2094.y ? _2085.y : _308.y, _2094.z ? _2085.z : _308.z);
        bvec3 _2097 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2099 = _Globals._RimBlendMode == 2u;
        highp vec3 _2105;
        if (_2099)
        {
            highp vec3 _2103 = (-_1973.xyz) * _2085 + _2091;
            bvec3 _2468 = isnan(_2103);
            bvec3 _2469 = isnan(_1973.xyz);
            highp vec3 _2470 = max(_2103, _1973.xyz);
            highp vec3 _2471 = vec3(_2468.x ? _1973.xyz.x : _2470.x, _2468.y ? _1973.xyz.y : _2470.y, _2468.z ? _1973.xyz.z : _2470.z);
            _2105 = vec3(_2469.x ? _2103.x : _2471.x, _2469.y ? _2103.y : _2471.y, _2469.z ? _2103.z : _2471.z);
        }
        else
        {
            _2105 = vec3(_2097.x ? _2091.x : _2095.x, _2097.y ? _2091.y : _2095.y, _2097.z ? _2091.z : _2095.z);
        }
        bvec3 _2107 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2110 = mix(_1973.xyz, vec3(_2107.x ? _2092.x : _2105.x, _2107.y ? _2092.y : _2105.y, _2107.z ? _2092.z : _2105.z), vec3(_2076 * _Globals._RimColor.w)).xyz;
        highp vec3 _2112 = _Globals._RimIndirColor.xyz * _2082;
        highp vec3 _2116 = _Globals._RimIndirColor.xyz * _2082 + _2110;
        highp vec3 _2117 = _2110 * _2112;
        highp vec3 _2118 = vec3(_2094.x ? _2112.x : _308.x, _2094.y ? _2112.y : _308.y, _2094.z ? _2112.z : _308.z);
        highp vec3 _2125;
        if (_2099)
        {
            highp vec3 _2123 = (-_2110) * _2112 + _2116;
            bvec3 _2473 = isnan(_2123);
            bvec3 _2474 = isnan(_2110);
            highp vec3 _2475 = max(_2123, _2110);
            highp vec3 _2476 = vec3(_2473.x ? _2110.x : _2475.x, _2473.y ? _2110.y : _2475.y, _2473.z ? _2110.z : _2475.z);
            _2125 = vec3(_2474.x ? _2123.x : _2476.x, _2474.y ? _2123.y : _2476.y, _2474.z ? _2123.z : _2476.z);
        }
        else
        {
            _2125 = vec3(_2097.x ? _2116.x : _2118.x, _2097.y ? _2116.y : _2118.y, _2097.z ? _2116.z : _2118.z);
        }
        highp vec3 _2127 = mix(_2110, vec3(_2107.x ? _2117.x : _2125.x, _2107.y ? _2117.y : _2125.y, _2107.z ? _2117.z : _2125.z), vec3(_2075 * _Globals._RimIndirColor.w));
        _2129 = vec4(_2127.x, _2127.y, _2127.z, _1973.w);
    }
    else
    {
        _2129 = _1973;
    }
    highp vec4 _2196;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2143 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _423, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2157 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2163;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2163 = roundEven(_2157);
        }
        else
        {
            _2163 = _2157;
        }
        highp vec3 _2172 = mix(_2143, _2143 * _1019.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2176 = _2129.xyz + _2172;
        highp vec3 _2177 = _2129.xyz * _2172;
        bvec3 _2179 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2180 = vec3(_2179.x ? _2172.x : _308.x, _2179.y ? _2172.y : _308.y, _2179.z ? _2172.z : _308.z);
        bvec3 _2182 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2190;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2188 = (-_2129.xyz) * _2172 + _2176;
            bvec3 _2478 = isnan(_2188);
            bvec3 _2479 = isnan(_2129.xyz);
            highp vec3 _2480 = max(_2188, _2129.xyz);
            highp vec3 _2481 = vec3(_2478.x ? _2129.xyz.x : _2480.x, _2478.y ? _2129.xyz.y : _2480.y, _2478.z ? _2129.xyz.z : _2480.z);
            _2190 = vec3(_2479.x ? _2188.x : _2481.x, _2479.y ? _2188.y : _2481.y, _2479.z ? _2188.z : _2481.z);
        }
        else
        {
            _2190 = vec3(_2182.x ? _2176.x : _2180.x, _2182.y ? _2176.y : _2180.y, _2182.z ? _2176.z : _2180.z);
        }
        bvec3 _2192 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2194 = mix(_2129.xyz, vec3(_2192.x ? _2177.x : _2190.x, _2192.y ? _2177.y : _2190.y, _2192.z ? _2177.z : _2190.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2163, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2129.w));
        _2196 = vec4(_2194.x, _2194.y, _2194.z, _2129.w);
    }
    else
    {
        _2196 = _2129;
    }
    highp vec4 _2263;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2210 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _423, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2224 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2230;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2230 = roundEven(_2224);
        }
        else
        {
            _2230 = _2224;
        }
        highp vec3 _2239 = mix(_2210, _2210 * _1019.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2243 = _2196.xyz + _2239;
        highp vec3 _2244 = _2196.xyz * _2239;
        bvec3 _2246 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2247 = vec3(_2246.x ? _2239.x : _308.x, _2246.y ? _2239.y : _308.y, _2246.z ? _2239.z : _308.z);
        bvec3 _2249 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2257;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2255 = (-_2196.xyz) * _2239 + _2243;
            bvec3 _2483 = isnan(_2255);
            bvec3 _2484 = isnan(_2196.xyz);
            highp vec3 _2485 = max(_2255, _2196.xyz);
            highp vec3 _2486 = vec3(_2483.x ? _2196.xyz.x : _2485.x, _2483.y ? _2196.xyz.y : _2485.y, _2483.z ? _2196.xyz.z : _2485.z);
            _2257 = vec3(_2484.x ? _2255.x : _2486.x, _2484.y ? _2255.y : _2486.y, _2484.z ? _2255.z : _2486.z);
        }
        else
        {
            _2257 = vec3(_2249.x ? _2243.x : _2247.x, _2249.y ? _2243.y : _2247.y, _2249.z ? _2243.z : _2247.z);
        }
        bvec3 _2259 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2261 = mix(_2196.xyz, vec3(_2259.x ? _2244.x : _2257.x, _2259.y ? _2244.y : _2257.y, _2259.z ? _2244.z : _2257.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2230, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2196.w));
        _2263 = vec4(_2261.x, _2261.y, _2261.z, _2196.w);
    }
    else
    {
        _2263 = _2196;
    }
    bvec3 _2273 = bvec3(_367 < 0.0);
    highp vec3 _2274 = (_2263.xyz + ((_Globals._DissolveColor.xyz * _1020) * _2263.w)).xyz;
    highp vec3 _2282 = mix(_2274, _Globals._BackfaceColor.xyz * _1206, vec3(_Globals._BackfaceColor.w));
    highp float _2303 = (_367 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _428) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2317 = vec3(_2273.x ? _2282.x : _2274.x, _2273.y ? _2282.y : _2274.y, _2273.z ? _2282.z : _2274.z).xyz;
    highp vec3 _2328 = mix(_2317, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2317, vec3(pow(clamp(1.0 - abs(dot(_590, _435)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2303));
    highp vec4 _2329 = vec4(_2328.x, _2328.y, _2328.z, _2263.w);
    highp float _2331 = mix(_2263.w, _2263.w * _Globals._DistanceFadeColor.w, _2303);
    _2329.w = _2331;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2331, _2329, vec4(out_var_TEXCOORD9));
}
