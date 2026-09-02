#version 300 es
precision mediump float;
precision highp int;

vec3 _307;
vec3 _313;
float _314;

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
    highp vec3 _334 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _341 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _357 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _366 = float(gl_FrontFacing ? 1 : (-1));
    highp float _417;
    do
    {
        highp vec3 _373 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _374 = _373.xy;
        highp float _380 = _373.z;
        if ((any(lessThan(_374, vec2(0.0))) || any(greaterThan(_374, vec2(1.0)))) || (_380 > 1.0))
        {
            _417 = 1.0;
            break;
        }
        highp float _390 = _380 + _Globals.uShadowBias;
        _417 = (((step(_390, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _374), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_390, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _374), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_390, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _374), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_390, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _374), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _418 = normalize(out_var_TEXCOORD7);
    highp vec3 _422 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _426 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _427 = length(_426);
    highp vec3 _434 = normalize(_426);
    highp mat3 _443 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _448 = bvec2(_366 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _449 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _462 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _463 = sin(_462);
    highp float _464 = cos(_462);
    highp vec2 _465 = (vec2(_448.x ? _449.x : out_var_TEXCOORD0.xy.x, _448.y ? _449.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _466 = _465.x;
    highp float _467 = _465.y;
    highp vec2 _478 = (vec2(_466 * _464 + (-(_467 * _463)), _466 * _463 + (_467 * _464)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _482 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _478);
    highp vec3 _489 = pow(abs(_482.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _490 = _489.z;
    highp float _491 = _489.y;
    bvec4 _493 = bvec4(_490 > _491);
    highp vec4 _494 = vec4(_490, _491, -1.0, 0.666666686534881591796875);
    highp vec4 _495 = vec4(_491, _490, 0.0, -0.3333333432674407958984375);
    highp vec4 _496 = vec4(_493.x ? _494.x : _495.x, _493.y ? _494.y : _495.y, _493.z ? _494.z : _495.z, _493.w ? _494.w : _495.w);
    highp float _497 = _496.x;
    highp float _498 = _489.x;
    bvec4 _500 = bvec4(_497 > _498);
    highp vec4 _503 = vec4(_497, _496.yw, _498);
    highp vec4 _505 = vec4(_498, _496.yz, _497);
    highp vec4 _506 = vec4(_500.x ? _503.x : _505.x, _500.y ? _503.y : _505.y, _500.z ? _503.z : _505.z, _500.w ? _503.w : _505.w);
    highp float _511 = _506.x - (isnan(_506.y) ? _506.w : (isnan(_506.w) ? _506.y : min(_506.w, _506.y)));
    highp float _524 = clamp((_511 / (_506.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _527 = clamp(_506.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _541 = vec3((-_527) * _524 + _527) + (clamp(abs((fract(vec3(abs(_506.z + ((_506.w - _506.y) / (6.0 * _511 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_527 * _524));
    highp vec4 _545 = vec4(_541.x, _541.y, _541.z, _482.w) * _Globals._Color;
    highp vec3 _577;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _558 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _478 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _558.w = _558.w * _558.x;
        highp vec2 _569 = ((_558.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _570 = vec3(_569.x, _569.y, _313.z);
        highp vec2 _571 = _569.xy;
        _570.z = sqrt(1.0 - clamp(dot(_571, _571), 0.0, 1.0));
        _577 = _570;
    }
    else
    {
        _577 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _579 = normalize(_443 * _577);
    bvec3 _584 = bvec3(_366 < (_Globals._FlipNormal - 1.0));
    highp vec3 _585 = -_579;
    highp vec3 _586 = vec3(_584.x ? _585.x : _579.x, _584.y ? _585.y : _579.y, _584.z ? _585.z : _579.z);
    highp float _588 = clamp(dot(_586, _434), 0.0, 1.0);
    highp vec3 _589 = normalize(out_var_TEXCOORD4);
    highp vec2 _593 = ((_586 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _341, _334)).xy * 0.5) + vec2(0.5);
    bool _594 = out_var_TEXCOORD5.w > 0.0;
    bool _599 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _882;
    highp vec4 _883;
    if (_599)
    {
        bvec2 _605 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _606 = vec2(_605.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _605.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _608 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _609 = vec2(_608.x ? out_var_TEXCOORD1.xy.x : _606.x, _608.y ? out_var_TEXCOORD1.xy.y : _606.y);
        bvec2 _611 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _612 = vec2(_611.x ? out_var_TEXCOORD1.zw.x : _609.x, _611.y ? out_var_TEXCOORD1.zw.y : _609.y);
        bvec2 _614 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _615 = vec2(_614.x ? _593.x : _612.x, _614.y ? _593.y : _612.y);
        highp vec4 _654 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _655 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _663;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _662 = _615;
            _662.x = abs(_615.x - 0.5) + 0.5;
            _663 = _662;
        }
        else
        {
            _663 = _615;
        }
        highp vec2 _664 = _654.xy;
        highp vec2 _665 = _654.zw;
        highp vec2 _666 = _663 * _664 + _665;
        highp vec2 _675;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_615.x < 0.5))
        {
            highp vec2 _674 = _666;
            _674.x = 1.0 - _666.x;
            _675 = _674;
        }
        else
        {
            _675 = _666;
        }
        highp vec2 _682;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _594)
        {
            highp vec2 _681 = _675;
            _681.x = 1.0 - _675.x;
            _682 = _681;
        }
        else
        {
            _682 = _675;
        }
        highp vec2 _687;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _594)
        {
            highp vec2 _686 = _682;
            _686.x = -1.0;
            _687 = _686;
        }
        else
        {
            _687 = _682;
        }
        highp vec2 _693;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_594))
        {
            highp vec2 _692 = _687;
            _692.x = -1.0;
            _693 = _692;
        }
        else
        {
            _693 = _687;
        }
        highp float _696 = sin(_655);
        highp float _697 = cos(_655);
        highp vec2 _698 = ((_693 - _665) / _664) - vec2(0.5);
        highp float _699 = _698.x;
        highp float _700 = _698.y;
        highp vec2 _708 = (vec2(_699 * _697 + (-(_700 * _696)), _699 * _696 + (_700 * _697)) + vec2(0.5)) * _664 + _665;
        uint _712 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _716 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _712 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _712);
        highp float _717 = _708.x;
        highp float _718 = _708.y;
        uint _725 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _735 = ((mix(vec2(_717, 1.0 - _718), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_716 % _725), float(_716 / _725))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _735.y = 1.0 - _735.y;
        highp vec4 _740 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _735);
        highp vec4 _756;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _743 = _740.x;
            highp float _744 = _740.y;
            highp float _745 = _740.z;
            highp float _746 = isnan(_744) ? _743 : (isnan(_743) ? _744 : min(_743, _744));
            highp float _747 = isnan(_744) ? _743 : (isnan(_743) ? _744 : max(_743, _744));
            highp float _748 = isnan(_745) ? _747 : (isnan(_747) ? _745 : min(_747, _745));
            highp float _749 = isnan(_748) ? _746 : (isnan(_746) ? _748 : max(_746, _748));
            _756 = vec4(1.0, 1.0, 1.0, clamp((_749 - 0.5) / clamp(fwidth(_749), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _756 = _740;
        }
        highp vec4 _779;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _760 = clamp(_588 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _763 = 0.5 - abs(_717 - 0.5);
            highp float _770 = 0.5 - abs(_718 - 0.5);
            highp vec4 _778 = _756;
            _778.w = _756.w * (clamp(_763 / clamp(fwidth(_763), 9.9999997473787516355514526367188e-05, _760), 0.0, 1.0) * clamp(_770 / clamp(fwidth(_770), 9.9999997473787516355514526367188e-05, _760), 0.0, 1.0));
            _779 = _778;
        }
        else
        {
            _779 = _756;
        }
        highp vec4 _780 = _Globals._Color2nd * _779;
        highp float _786 = _780.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _478).x;
        _780.w = mix(_786, _786 * clamp((_427 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _812;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_366 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_366 < 0.0)))
        {
            highp vec4 _811 = _780;
            _811.w = 0.0;
            _812 = _811;
        }
        else
        {
            _812 = _780;
        }
        highp vec4 _851;
        highp vec4 _852;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _823;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _822 = _545;
                _822.w = _812.w;
                _823 = _822;
            }
            else
            {
                _823 = _545;
            }
            highp vec4 _831;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _830 = _823;
                _830.w = _823.w * _812.w;
                _831 = _830;
            }
            else
            {
                _831 = _823;
            }
            highp vec4 _840;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _839 = _831;
                _839.w = clamp(_831.w + _812.w, 0.0, 1.0);
                _840 = _839;
            }
            else
            {
                _840 = _831;
            }
            highp vec4 _849;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _848 = _840;
                _848.w = clamp(_840.w - _812.w, 0.0, 1.0);
                _849 = _848;
            }
            else
            {
                _849 = _840;
            }
            highp vec4 _850 = _812;
            _850.w = 1.0;
            _851 = _850;
            _852 = _849;
        }
        else
        {
            _851 = _812;
            _852 = _545;
        }
        highp vec3 _862 = _852.xyz + _851.xyz;
        highp vec3 _863 = _852.xyz * _851.xyz;
        bvec3 _865 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _866 = vec3(_865.x ? _851.xyz.x : _307.x, _865.y ? _851.xyz.y : _307.y, _865.z ? _851.xyz.z : _307.z);
        bvec3 _868 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _876;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _874 = (-_852.xyz) * _851.xyz + _862;
            bvec3 _2402 = isnan(_874);
            bvec3 _2403 = isnan(_852.xyz);
            highp vec3 _2404 = max(_874, _852.xyz);
            highp vec3 _2405 = vec3(_2402.x ? _852.xyz.x : _2404.x, _2402.y ? _852.xyz.y : _2404.y, _2402.z ? _852.xyz.z : _2404.z);
            _876 = vec3(_2403.x ? _874.x : _2405.x, _2403.y ? _874.y : _2405.y, _2403.z ? _874.z : _2405.z);
        }
        else
        {
            _876 = vec3(_868.x ? _862.x : _866.x, _868.y ? _862.y : _866.y, _868.z ? _862.z : _866.z);
        }
        bvec3 _878 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _880 = mix(_852.xyz, vec3(_878.x ? _863.x : _876.x, _878.y ? _863.y : _876.y, _878.z ? _863.z : _876.z), vec3(_851.w * _Globals._Main2ndEnableLighting));
        _882 = _851;
        _883 = vec4(_880.x, _880.y, _880.z, _852.w);
    }
    else
    {
        _882 = _Globals._Color2nd;
        _883 = _545;
    }
    highp vec4 _923;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _894 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _899;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _898 = _883;
            _898.w = _894;
            _899 = _898;
        }
        else
        {
            _899 = _883;
        }
        highp vec4 _906;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _905 = _899;
            _905.w = _899.w * _894;
            _906 = _905;
        }
        else
        {
            _906 = _899;
        }
        highp vec4 _914;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _913 = _906;
            _913.w = clamp(_906.w + _894, 0.0, 1.0);
            _914 = _913;
        }
        else
        {
            _914 = _906;
        }
        highp vec4 _922;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _921 = _914;
            _921.w = clamp(_914.w - _894, 0.0, 1.0);
            _922 = _921;
        }
        else
        {
            _922 = _914;
        }
        _923 = _922;
    }
    else
    {
        _923 = _883;
    }
    highp vec4 _1018;
    highp float _1019;
    if ((_357 & 1) != 0)
    {
        highp vec4 _927 = _923;
        _927.w = 1.0;
        highp vec2 _933 = roundEven(_Globals._DissolveParams.xy);
        highp float _934 = _933.x;
        highp vec4 _1007;
        highp float _1008;
        if (_934 != 0.0)
        {
            highp float _950;
            highp float _951;
            if (_934 == 1.0)
            {
                _950 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _951 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _950 = 0.0;
                _951 = 1.0;
            }
            highp float _982;
            highp float _983;
            if (_934 == 2.0)
            {
                highp vec2 _960 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _971 = (_933.y == 1.0) ? (vec2(_960.x * cos(_Globals._DissolvePos.w) + (-(_960.y * sin(_Globals._DissolvePos.w))), _314) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _982 = 1.0 - clamp(abs(_971 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _983 = _951 * float(_971 > _Globals._DissolveParams.z);
            }
            else
            {
                _982 = _950;
                _983 = _951;
            }
            highp float _1004;
            highp float _1005;
            if (_934 == 3.0)
            {
                highp float _993 = (_933.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1004 = 1.0 - clamp(abs(_993 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1005 = _983 * float(_993 > _Globals._DissolveParams.z);
            }
            else
            {
                _1004 = _982;
                _1005 = _983;
            }
            highp vec4 _1006 = _927;
            _1006.w = _1005;
            _1007 = _1006;
            _1008 = _1004;
        }
        else
        {
            _1007 = _927;
            _1008 = 0.0;
        }
        highp vec4 _1014;
        if ((_357 & 2) != 0)
        {
            highp vec4 _1013 = _1007;
            _1013.w = 1.0 - _1007.w;
            _1014 = _1013;
        }
        else
        {
            _1014 = _1007;
        }
        highp vec4 _1017 = _1014;
        _1017.w = _1014.w * _923.w;
        _1018 = _1017;
        _1019 = _1008;
    }
    else
    {
        _1018 = _923;
        _1019 = 0.0;
    }
    if ((_1018.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1200;
    highp float _1201;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1052 = clamp(dot(_418, mix(_589, _586, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1055 = clamp(dot(_418, mix(_589, _586, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1058 = clamp(dot(_418, mix(_589, _586, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1062 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1065 = clamp(_417 + distance(_418, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1068 = mix(1.0, _1065, _Globals._ShadowReceive);
        highp float _1069 = _1052 * _1068;
        highp float _1072 = mix(1.0, _1065, _Globals._Shadow2ndReceive);
        highp float _1076 = mix(1.0, _1065, _Globals._Shadow3rdReceive);
        highp float _1087 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1088 = clamp(_1087, 0.0, 1.0);
        highp float _1090 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1103 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1117 = clamp(_1087 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1130 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1145 = (_366 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1146 = clamp((_1052 * _1068 + (-_1088)) / clamp(fwidth(_1069) * _1062 + (_1090 - _1088), 0.0, 1.0), 0.0, 1.0) * _1145;
        highp vec3 _1178 = mix(mix(_1018.xyz * _Globals._ShadowColor.xyz, (_1018.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1055 * _1072 + (-_1103)) / clamp(fwidth(_1055 * _1072) * _1062 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1103), 0.0, 1.0), 0.0, 1.0) * _1145)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1018.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1058 * _1076 + (-_1130)) / clamp(fwidth(_1058 * _1076) * _1062 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1130), 0.0, 1.0), 0.0, 1.0) * _1145)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1184 = _1018.xyz * out_var_TEXCOORD6;
        highp vec3 _1190 = mix(mix(_1178, _1178 * _1018.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1018.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2407 = isnan(_1190);
        bvec3 _2408 = isnan(_1184);
        highp vec3 _2409 = min(_1190, _1184);
        highp vec3 _2410 = vec3(_2407.x ? _1184.x : _2409.x, _2407.y ? _1184.y : _2409.y, _2407.z ? _1184.z : _2409.z);
        highp vec3 _1198 = mix(mix(vec3(_2408.x ? _1190.x : _2410.x, _2408.y ? _1190.y : _2410.y, _2408.z ? _1190.z : _2410.z), _1184, _Globals._ShadowBorderColor.xyz * (clamp((_1052 * _1068 + (-_1117)) / clamp(fwidth(_1069) * _1062 + (_1090 - _1117), 0.0, 1.0), 0.0, 1.0) * _1145)), _1184, vec3(mix(1.0, _1146, _Globals._ShadowStrength)));
        _1200 = vec4(_1198.x, _1198.y, _1198.z, _1018.w);
        _1201 = _1146;
    }
    else
    {
        highp vec3 _1034 = _1018.xyz * out_var_TEXCOORD6;
        _1200 = vec4(_1034.x, _1034.y, _1034.z, _1018.w);
        _1201 = 1.0;
    }
    highp vec3 _1204 = vec3(_Globals._LightMaxLimit);
    bvec3 _2412 = isnan(out_var_TEXCOORD6);
    bvec3 _2413 = isnan(_1204);
    highp vec3 _2414 = min(out_var_TEXCOORD6, _1204);
    highp vec3 _2415 = vec3(_2412.x ? _1204.x : _2414.x, _2412.y ? _1204.y : _2414.y, _2412.z ? _1204.z : _2414.z);
    highp vec3 _1205 = vec3(_2413.x ? out_var_TEXCOORD6.x : _2415.x, _2413.y ? out_var_TEXCOORD6.y : _2415.y, _2413.z ? out_var_TEXCOORD6.z : _2415.z);
    highp float _1206 = clamp(_1201, 0.0, 1.0);
    highp vec3 _1208 = _1018.xyz * _Globals._LightMaxLimit;
    bvec3 _2417 = isnan(_1200.xyz);
    bvec3 _2418 = isnan(_1208);
    highp vec3 _2419 = min(_1200.xyz, _1208);
    highp vec3 _2420 = vec3(_2417.x ? _1208.x : _2419.x, _2417.y ? _1208.y : _2419.y, _2417.z ? _1208.z : _2419.z);
    highp vec3 _1209 = vec3(_2418.x ? _1200.xyz.x : _2420.x, _2418.y ? _1200.xyz.y : _2420.y, _2418.z ? _1200.xyz.z : _2420.z);
    highp vec4 _1243;
    if (_599)
    {
        highp vec3 _1213 = _1209.xyz;
        highp vec3 _1223 = _1213 + _882.xyz;
        highp vec3 _1224 = _1213 * _882.xyz;
        bvec3 _1226 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1227 = vec3(_1226.x ? _882.xyz.x : _307.x, _1226.y ? _882.xyz.y : _307.y, _1226.z ? _882.xyz.z : _307.z);
        bvec3 _1229 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1237;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1235 = (-_1213) * _882.xyz + _1223;
            bvec3 _2422 = isnan(_1235);
            bvec3 _2423 = isnan(_1213);
            highp vec3 _2424 = max(_1235, _1213);
            highp vec3 _2425 = vec3(_2422.x ? _1213.x : _2424.x, _2422.y ? _1213.y : _2424.y, _2422.z ? _1213.z : _2424.z);
            _1237 = vec3(_2423.x ? _1235.x : _2425.x, _2423.y ? _1235.y : _2425.y, _2423.z ? _1235.z : _2425.z);
        }
        else
        {
            _1237 = vec3(_1229.x ? _1223.x : _1227.x, _1229.y ? _1223.y : _1227.y, _1229.z ? _1223.z : _1227.z);
        }
        bvec3 _1239 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1241 = mix(_1213, vec3(_1239.x ? _1224.x : _1237.x, _1239.y ? _1224.y : _1237.y, _1239.z ? _1224.z : _1237.z), vec3((-_882.w) * _Globals._Main2ndEnableLighting + _882.w));
        _1243 = vec4(_1241.x, _1241.y, _1241.z, _1200.w);
    }
    else
    {
        _1243 = vec4(_1209.x, _1209.y, _1209.z, _1200.w);
    }
    highp vec4 _1289;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1259 = pow(clamp(1.0 - abs(dot(mix(_589, _586, vec3(_Globals._RimShadeNormalStrength)), _434)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1268 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1287 = mix(_1243.xyz, _1243.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1259 - _1268) / clamp(fwidth(_1259) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1268), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1289 = vec4(_1287.x, _1287.y, _1287.z, _1243.w);
    }
    else
    {
        _1289 = _1243;
    }
    highp vec4 _1362;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1313 = dot(normalize(((-_434) * _Globals._BacklightViewStrength) + _418), mix(_589, _586, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1323;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1323 = _1313 * clamp(_417 + distance(_418, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1323 = _1313;
        }
        highp float _1332 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1360 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1018.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_366 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_434, _418) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1323 - _1332) / clamp(fwidth(_1323) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1332), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1205 + _1289.xyz;
        _1362 = vec4(_1360.x, _1360.y, _1360.z, _1289.w);
    }
    else
    {
        _1362 = _1289;
    }
    highp vec3 _1365 = _1362.xyz * _1362.w;
    highp vec4 _1647;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1381 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _478 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1383 = _Globals._Smoothness * _1381.x;
        highp vec3 _1386 = dFdx(_586);
        highp vec3 _1387 = abs(_1386);
        highp vec3 _1388 = dFdy(_586);
        highp vec3 _1389 = abs(_1388);
        highp float _1390 = dot(_1387, _1387);
        highp float _1391 = dot(_1389, _1389);
        highp float _1392 = isnan(_1391) ? _1390 : (isnan(_1390) ? _1391 : max(_1390, _1391));
        highp float _1395 = (_1392 / (_1392 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1398 = clamp(1.0 - (isnan(_1395) ? 0.0 : (isnan(0.0) ? _1395 : max(0.0, _1395))), 0.0, 1.0);
        highp float _1399 = isnan(_1398) ? _1383 : (isnan(_1383) ? _1398 : min(_1383, _1398));
        highp float _1400 = 1.0 - _1399;
        highp float _1401 = _1400 * _1400;
        highp vec4 _1411 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _478 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1413 = _Globals._Metallic * _1411.x;
        highp vec3 _1414 = _1365.xyz;
        highp vec3 _1416 = _1414 - (_1414 * _1413);
        highp vec3 _1422 = mix(vec3(_Globals._Reflectance), _1018.xyz, vec3(_1413));
        highp vec4 _1432 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _478 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1433 = _Globals._ReflectionColor * _1432;
        highp vec4 _1442;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1441 = _1433;
            _1441.w = _1433.w * _1362.w;
            _1442 = _1441;
        }
        else
        {
            _1442 = _1433;
        }
        highp vec4 _1543;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1515;
            do
            {
                highp vec3 _1453 = mix(_589, _586, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1455 = normalize(_434 + _418);
                highp float _1457 = clamp(dot(_1453, _1455), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1466 = pow(_1457, 1.0 / _1401);
                    highp float _1473 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1515 = vec3(clamp((_1466 - _1473) / clamp(fwidth(_1466) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1473), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1485 = clamp(dot(_1453, _434), 0.0, 1.0);
                highp float _1487 = clamp(dot(_1453, _418), 0.0, 1.0);
                highp float _1490 = isnan(0.00200000009499490261077880859375) ? _1401 : (isnan(_1401) ? 0.00200000009499490261077880859375 : max(_1401, 0.00200000009499490261077880859375));
                highp float _1491 = 1.0 - _1490;
                highp float _1495 = _1490 * _1490;
                highp float _1498 = (_1457 * _1495 + (-_1457)) * _1457 + 1.0;
                highp float _1506 = 1.0 - clamp(dot(_418, _1455), 0.0, 1.0);
                _1515 = (_1422 + ((((((vec3(1.0) - _1422) * _1506) * _1506) * _1506) * _1506) * _1506)) * (((0.5 / ((_1487 * (_1485 * _1491 + _1490) + (_1485 * (_1487 * _1491 + _1490))) + 9.9999997473787516355514526367188e-06)) * (_1495 / (_1498 * _1498 + 1.0000000116860974230803549289703e-07))) * _1487);
                break;
            } while(false);
            highp vec3 _1516 = _1416.xyz;
            highp vec3 _1518 = _1442.xyz * _1205;
            highp vec3 _1523 = _1442.xyz * _1205 + _1516;
            highp vec3 _1524 = _1516 * _1518;
            bvec3 _1526 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1527 = vec3(_1526.x ? _1518.x : _307.x, _1526.y ? _1518.y : _307.y, _1526.z ? _1518.z : _307.z);
            bvec3 _1529 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1537;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1535 = (-_1516) * _1518 + _1523;
                bvec3 _2447 = isnan(_1535);
                bvec3 _2448 = isnan(_1516);
                highp vec3 _2449 = max(_1535, _1516);
                highp vec3 _2450 = vec3(_2447.x ? _1516.x : _2449.x, _2447.y ? _1516.y : _2449.y, _2447.z ? _1516.z : _2449.z);
                _1537 = vec3(_2448.x ? _1535.x : _2450.x, _2448.y ? _1535.y : _2450.y, _2448.z ? _1535.z : _2450.z);
            }
            else
            {
                _1537 = vec3(_1529.x ? _1523.x : _1527.x, _1529.y ? _1523.y : _1527.y, _1529.z ? _1523.z : _1527.z);
            }
            bvec3 _1539 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1541 = mix(_1516, vec3(_1539.x ? _1524.x : _1537.x, _1539.y ? _1524.y : _1537.y, _1539.z ? _1524.z : _1537.z), _1515 * _1442.w);
            _1543 = vec4(_1541.x, _1541.y, _1541.z, _1362.w);
        }
        else
        {
            _1543 = vec4(_1416.x, _1416.y, _1416.z, _1362.w);
        }
        highp vec4 _1646;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1565 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1572 = reflect(-_434, mix(_589, _586, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1575 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1572, _1400 * ((-4.19999980926513671875) * _1400 + 10.19999980926513671875));
            highp vec3 _1595 = ((_1575.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1575.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1205, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1601 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1572, _1400 * 8.0).xyz * 1.0;
            highp float _1612 = 1.0 - _588;
            highp vec3 _1626 = _1543.xyz + _1442.xyz;
            highp vec3 _1627 = _1543.xyz * _1442.xyz;
            bvec3 _1629 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1630 = vec3(_1629.x ? _1442.xyz.x : _307.x, _1629.y ? _1442.xyz.y : _307.y, _1629.z ? _1442.xyz.z : _307.z);
            bvec3 _1632 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1640;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1638 = (-_1543.xyz) * _1442.xyz + _1626;
                bvec3 _2452 = isnan(_1638);
                bvec3 _2453 = isnan(_1543.xyz);
                highp vec3 _2454 = max(_1638, _1543.xyz);
                highp vec3 _2455 = vec3(_2452.x ? _1543.xyz.x : _2454.x, _2452.y ? _1543.xyz.y : _2454.y, _2452.z ? _1543.xyz.z : _2454.z);
                _1640 = vec3(_2453.x ? _1638.x : _2455.x, _2453.y ? _1638.y : _2455.y, _2453.z ? _1638.z : _2455.z);
            }
            else
            {
                _1640 = vec3(_1632.x ? _1626.x : _1630.x, _1632.y ? _1626.y : _1630.y, _1632.z ? _1626.z : _1630.z);
            }
            bvec3 _1642 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1644 = mix(_1543.xyz, vec3(_1642.x ? _1627.x : _1640.x, _1642.y ? _1627.y : _1640.y, _1642.z ? _1627.z : _1640.z), ((vec3(_1565.x ? _1595.x : _1601.x, _1565.y ? _1595.y : _1601.y, _1565.z ? _1595.z : _1601.z) * (1.0 / (_1401 * _1401 + 1.0))) * mix(_1422, vec3(clamp(_1399 + (1.0 - ((-_1413) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1612 * _1612) * _1612) * _1612) * _1612))) * _1442.w);
            _1646 = vec4(_1644.x, _1644.y, _1644.z, _1543.w);
        }
        else
        {
            _1646 = _1543;
        }
        _1647 = _1646;
    }
    else
    {
        _1647 = vec4(_1365.x, _1365.y, _1365.z, _1362.w);
    }
    highp vec4 _1810;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1692;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1669 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _478 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1669.w = _1669.w * _1669.x;
            highp vec2 _1680 = ((_1669.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1681 = vec3(_1680.x, _1680.y, _313.z);
            highp vec2 _1682 = _1680.xy;
            _1681.z = sqrt(1.0 - clamp(dot(_1682, _1682), 0.0, 1.0));
            highp vec3 _1689 = normalize(_443 * _1681);
            highp vec3 _1690 = -_1689;
            _1692 = vec3(_584.x ? _1690.x : _1689.x, _584.y ? _1690.y : _1689.y, _584.z ? _1690.z : _1689.z);
        }
        else
        {
            _1692 = mix(_589, _586, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1709 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1710 = vec3(_1709.x ? _434.x : _334.x, _1709.y ? _434.y : _334.y, _1709.z ? _434.z : _334.z);
        bvec3 _1711 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1712 = vec3(_1711.x ? vec3(0.0, 1.0, 0.0).x : _341.x, _1711.y ? vec3(0.0, 1.0, 0.0).y : _341.y, _1711.z ? vec3(0.0, 1.0, 0.0).z : _341.z);
        highp vec3 _1716 = normalize(_1712 - (_1710 * dot(_1710, _1712)));
        highp vec4 _1738 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1692) * mat3(cross(_1710, _1716), _1716, _1710)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1744 = mix(_1738.xyz, _1738.xyz * _1205, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1745 = vec4(_1744.x, _1744.y, _1744.z, _1738.w);
        highp float _1750 = mix(_1738.w, _1738.w * _1206, _Globals._MatCapShadowMask);
        _1745.w = _1750;
        highp vec4 _1760;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1759 = _1745;
            _1759.w = _1750 * _1647.w;
            _1760 = _1759;
        }
        else
        {
            _1760 = _1745;
        }
        highp vec4 _1774 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _478 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1783 = mix(_1760.xyz, _1760.xyz * _1018.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1790 = _1647.xyz + _1783;
        highp vec3 _1791 = _1647.xyz * _1783;
        bvec3 _1793 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1794 = vec3(_1793.x ? _1783.x : _307.x, _1793.y ? _1783.y : _307.y, _1793.z ? _1783.z : _307.z);
        bvec3 _1796 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1804;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1802 = (-_1647.xyz) * _1783 + _1790;
            bvec3 _2457 = isnan(_1802);
            bvec3 _2458 = isnan(_1647.xyz);
            highp vec3 _2459 = max(_1802, _1647.xyz);
            highp vec3 _2460 = vec3(_2457.x ? _1647.xyz.x : _2459.x, _2457.y ? _1647.xyz.y : _2459.y, _2457.z ? _1647.xyz.z : _2459.z);
            _1804 = vec3(_2458.x ? _1802.x : _2460.x, _2458.y ? _1802.y : _2460.y, _2458.z ? _1802.z : _2460.z);
        }
        else
        {
            _1804 = vec3(_1796.x ? _1790.x : _1794.x, _1796.y ? _1790.y : _1794.y, _1796.z ? _1790.z : _1794.z);
        }
        bvec3 _1806 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1808 = mix(_1647.xyz, vec3(_1806.x ? _1791.x : _1804.x, _1806.y ? _1791.y : _1804.y, _1806.z ? _1791.z : _1804.z), _1774.xyz * (_Globals._MatCapBlend * ((_366 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1760.w)));
        _1810 = vec4(_1808.x, _1808.y, _1808.z, _1647.w);
    }
    else
    {
        _1810 = _1647;
    }
    highp vec4 _1972;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1855;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1832 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _478 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1832.w = _1832.w * _1832.x;
            highp vec2 _1843 = ((_1832.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1844 = vec3(_1843.x, _1843.y, _313.z);
            highp vec2 _1845 = _1843.xy;
            _1844.z = sqrt(1.0 - clamp(dot(_1845, _1845), 0.0, 1.0));
            highp vec3 _1852 = normalize(_443 * _1844);
            highp vec3 _1853 = -_1852;
            _1855 = vec3(_584.x ? _1853.x : _1852.x, _584.y ? _1853.y : _1852.y, _584.z ? _1853.z : _1852.z);
        }
        else
        {
            _1855 = mix(_589, _586, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1871 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1872 = vec3(_1871.x ? _434.x : _334.x, _1871.y ? _434.y : _334.y, _1871.z ? _434.z : _334.z);
        bvec3 _1873 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1874 = vec3(_1873.x ? vec3(0.0, 1.0, 0.0).x : _341.x, _1873.y ? vec3(0.0, 1.0, 0.0).y : _341.y, _1873.z ? vec3(0.0, 1.0, 0.0).z : _341.z);
        highp vec3 _1878 = normalize(_1874 - (_1872 * dot(_1872, _1874)));
        highp vec4 _1900 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1855 * mat3(cross(_1872, _1878), _1878, _1872)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1901 = _1900.xyz;
        highp vec3 _1906 = mix(_1901, _1901 * _1205, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1907 = vec4(_1906.x, _1906.y, _1906.z, _1900.w);
        highp float _1908 = _1900.w;
        highp float _1912 = mix(_1908, _1908 * _1206, _Globals._MatCap2ndShadowMask);
        _1907.w = _1912;
        highp vec4 _1922;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1921 = _1907;
            _1921.w = _1912 * _1810.w;
            _1922 = _1921;
        }
        else
        {
            _1922 = _1907;
        }
        highp vec4 _1936 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _478 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1945 = mix(_1922.xyz, _1922.xyz * _1018.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1952 = _1810.xyz + _1945;
        highp vec3 _1953 = _1810.xyz * _1945;
        bvec3 _1955 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1956 = vec3(_1955.x ? _1945.x : _307.x, _1955.y ? _1945.y : _307.y, _1955.z ? _1945.z : _307.z);
        bvec3 _1958 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1966;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1964 = (-_1810.xyz) * _1945 + _1952;
            bvec3 _2462 = isnan(_1964);
            bvec3 _2463 = isnan(_1810.xyz);
            highp vec3 _2464 = max(_1964, _1810.xyz);
            highp vec3 _2465 = vec3(_2462.x ? _1810.xyz.x : _2464.x, _2462.y ? _1810.xyz.y : _2464.y, _2462.z ? _1810.xyz.z : _2464.z);
            _1966 = vec3(_2463.x ? _1964.x : _2465.x, _2463.y ? _1964.y : _2465.y, _2463.z ? _1964.z : _2465.z);
        }
        else
        {
            _1966 = vec3(_1958.x ? _1952.x : _1956.x, _1958.y ? _1952.y : _1956.y, _1958.z ? _1952.z : _1956.z);
        }
        bvec3 _1968 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1970 = mix(_1810.xyz, vec3(_1968.x ? _1953.x : _1966.x, _1968.y ? _1953.y : _1966.y, _1968.z ? _1953.z : _1966.z), _1936.xyz * (_Globals._MatCap2ndBlend * ((_366 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _1922.w)));
        _1972 = vec4(_1970.x, _1970.y, _1970.z, _1810.w);
    }
    else
    {
        _1972 = _1810;
    }
    highp vec4 _2128;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1991 = mix(_589, _586, vec3(_Globals._RimNormalStrength));
        highp float _1995 = dot(_418, _1991) * 0.5 + 0.5;
        highp float _2018 = (_366 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1991, _434)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2022 = mix(_2018, _2018 * clamp((_1995 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2023 = _2018 * clamp(((1.0 - _1995) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2033 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2042 = clamp((_2022 - _2033) / clamp(fwidth(_2022) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2033), 0.0, 1.0), 0.0, 1.0);
        highp float _2049 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2059 = clamp((_2023 * _Globals._RimDirStrength + (-_2049)) / clamp(fwidth(_2023 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2049), 0.0, 1.0), 0.0, 1.0);
        highp float _2063 = mix(_2042, _2042 * _1206, _Globals._RimShadowMask);
        highp float _2065 = mix(_2059, _2059 * _1206, _Globals._RimShadowMask);
        highp float _2074;
        highp float _2075;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2074 = _2065 * _1972.w;
            _2075 = _2063 * _1972.w;
        }
        else
        {
            _2074 = _2065;
            _2075 = _2063;
        }
        highp vec3 _2081 = vec3(1.0 - _Globals._RimEnableLighting) + (_1205 * _Globals._RimEnableLighting);
        highp vec3 _2083 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1018.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2084 = _2083 * _2081;
        highp vec3 _2090 = _2083 * _2081 + _1972.xyz;
        highp vec3 _2091 = _1972.xyz * _2084;
        bvec3 _2093 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2094 = vec3(_2093.x ? _2084.x : _307.x, _2093.y ? _2084.y : _307.y, _2093.z ? _2084.z : _307.z);
        bvec3 _2096 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2098 = _Globals._RimBlendMode == 2u;
        highp vec3 _2104;
        if (_2098)
        {
            highp vec3 _2102 = (-_1972.xyz) * _2084 + _2090;
            bvec3 _2467 = isnan(_2102);
            bvec3 _2468 = isnan(_1972.xyz);
            highp vec3 _2469 = max(_2102, _1972.xyz);
            highp vec3 _2470 = vec3(_2467.x ? _1972.xyz.x : _2469.x, _2467.y ? _1972.xyz.y : _2469.y, _2467.z ? _1972.xyz.z : _2469.z);
            _2104 = vec3(_2468.x ? _2102.x : _2470.x, _2468.y ? _2102.y : _2470.y, _2468.z ? _2102.z : _2470.z);
        }
        else
        {
            _2104 = vec3(_2096.x ? _2090.x : _2094.x, _2096.y ? _2090.y : _2094.y, _2096.z ? _2090.z : _2094.z);
        }
        bvec3 _2106 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2109 = mix(_1972.xyz, vec3(_2106.x ? _2091.x : _2104.x, _2106.y ? _2091.y : _2104.y, _2106.z ? _2091.z : _2104.z), vec3(_2075 * _Globals._RimColor.w)).xyz;
        highp vec3 _2111 = _Globals._RimIndirColor.xyz * _2081;
        highp vec3 _2115 = _Globals._RimIndirColor.xyz * _2081 + _2109;
        highp vec3 _2116 = _2109 * _2111;
        highp vec3 _2117 = vec3(_2093.x ? _2111.x : _307.x, _2093.y ? _2111.y : _307.y, _2093.z ? _2111.z : _307.z);
        highp vec3 _2124;
        if (_2098)
        {
            highp vec3 _2122 = (-_2109) * _2111 + _2115;
            bvec3 _2472 = isnan(_2122);
            bvec3 _2473 = isnan(_2109);
            highp vec3 _2474 = max(_2122, _2109);
            highp vec3 _2475 = vec3(_2472.x ? _2109.x : _2474.x, _2472.y ? _2109.y : _2474.y, _2472.z ? _2109.z : _2474.z);
            _2124 = vec3(_2473.x ? _2122.x : _2475.x, _2473.y ? _2122.y : _2475.y, _2473.z ? _2122.z : _2475.z);
        }
        else
        {
            _2124 = vec3(_2096.x ? _2115.x : _2117.x, _2096.y ? _2115.y : _2117.y, _2096.z ? _2115.z : _2117.z);
        }
        highp vec3 _2126 = mix(_2109, vec3(_2106.x ? _2116.x : _2124.x, _2106.y ? _2116.y : _2124.y, _2106.z ? _2116.z : _2124.z), vec3(_2074 * _Globals._RimIndirColor.w));
        _2128 = vec4(_2126.x, _2126.y, _2126.z, _1972.w);
    }
    else
    {
        _2128 = _1972;
    }
    highp vec4 _2195;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2142 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _422, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2156 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2162;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2162 = roundEven(_2156);
        }
        else
        {
            _2162 = _2156;
        }
        highp vec3 _2171 = mix(_2142, _2142 * _1018.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2175 = _2128.xyz + _2171;
        highp vec3 _2176 = _2128.xyz * _2171;
        bvec3 _2178 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2179 = vec3(_2178.x ? _2171.x : _307.x, _2178.y ? _2171.y : _307.y, _2178.z ? _2171.z : _307.z);
        bvec3 _2181 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2189;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2187 = (-_2128.xyz) * _2171 + _2175;
            bvec3 _2477 = isnan(_2187);
            bvec3 _2478 = isnan(_2128.xyz);
            highp vec3 _2479 = max(_2187, _2128.xyz);
            highp vec3 _2480 = vec3(_2477.x ? _2128.xyz.x : _2479.x, _2477.y ? _2128.xyz.y : _2479.y, _2477.z ? _2128.xyz.z : _2479.z);
            _2189 = vec3(_2478.x ? _2187.x : _2480.x, _2478.y ? _2187.y : _2480.y, _2478.z ? _2187.z : _2480.z);
        }
        else
        {
            _2189 = vec3(_2181.x ? _2175.x : _2179.x, _2181.y ? _2175.y : _2179.y, _2181.z ? _2175.z : _2179.z);
        }
        bvec3 _2191 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2193 = mix(_2128.xyz, vec3(_2191.x ? _2176.x : _2189.x, _2191.y ? _2176.y : _2189.y, _2191.z ? _2176.z : _2189.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2162, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2128.w));
        _2195 = vec4(_2193.x, _2193.y, _2193.z, _2128.w);
    }
    else
    {
        _2195 = _2128;
    }
    highp vec4 _2262;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2209 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _422, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2223 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2229;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2229 = roundEven(_2223);
        }
        else
        {
            _2229 = _2223;
        }
        highp vec3 _2238 = mix(_2209, _2209 * _1018.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2242 = _2195.xyz + _2238;
        highp vec3 _2243 = _2195.xyz * _2238;
        bvec3 _2245 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2246 = vec3(_2245.x ? _2238.x : _307.x, _2245.y ? _2238.y : _307.y, _2245.z ? _2238.z : _307.z);
        bvec3 _2248 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2256;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2254 = (-_2195.xyz) * _2238 + _2242;
            bvec3 _2482 = isnan(_2254);
            bvec3 _2483 = isnan(_2195.xyz);
            highp vec3 _2484 = max(_2254, _2195.xyz);
            highp vec3 _2485 = vec3(_2482.x ? _2195.xyz.x : _2484.x, _2482.y ? _2195.xyz.y : _2484.y, _2482.z ? _2195.xyz.z : _2484.z);
            _2256 = vec3(_2483.x ? _2254.x : _2485.x, _2483.y ? _2254.y : _2485.y, _2483.z ? _2254.z : _2485.z);
        }
        else
        {
            _2256 = vec3(_2248.x ? _2242.x : _2246.x, _2248.y ? _2242.y : _2246.y, _2248.z ? _2242.z : _2246.z);
        }
        bvec3 _2258 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2260 = mix(_2195.xyz, vec3(_2258.x ? _2243.x : _2256.x, _2258.y ? _2243.y : _2256.y, _2258.z ? _2243.z : _2256.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2229, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2195.w));
        _2262 = vec4(_2260.x, _2260.y, _2260.z, _2195.w);
    }
    else
    {
        _2262 = _2195;
    }
    bvec3 _2272 = bvec3(_366 < 0.0);
    highp vec3 _2273 = (_2262.xyz + ((_Globals._DissolveColor.xyz * _1019) * _2262.w)).xyz;
    highp vec3 _2281 = mix(_2273, _Globals._BackfaceColor.xyz * _1205, vec3(_Globals._BackfaceColor.w));
    highp float _2302 = (_366 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _427) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2316 = vec3(_2272.x ? _2281.x : _2273.x, _2272.y ? _2281.y : _2273.y, _2272.z ? _2281.z : _2273.z).xyz;
    highp vec3 _2327 = mix(_2316, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2316, vec3(pow(clamp(1.0 - abs(dot(_589, _434)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2302));
    highp vec4 _2328 = vec4(_2327.x, _2327.y, _2327.z, _2262.w);
    highp float _2330 = mix(_2262.w, _2262.w * _Globals._DistanceFadeColor.w, _2302);
    _2328.w = _2330;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2330, _2328, vec4(out_var_TEXCOORD9));
}
