#version 300 es
precision mediump float;
precision highp int;

vec3 _282;
vec3 _288;
float _289;

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
uniform highp sampler2D SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex;
uniform highp samplerCube SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0;
uniform highp samplerCube SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex;

in highp vec4 out_var_TEXCOORD0;
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
    int _307 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _316 = float(gl_FrontFacing ? 1 : (-1));
    highp float _367;
    do
    {
        highp vec3 _323 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _324 = _323.xy;
        highp float _330 = _323.z;
        if ((any(lessThan(_324, vec2(0.0))) || any(greaterThan(_324, vec2(1.0)))) || (_330 > 1.0))
        {
            _367 = 1.0;
            break;
        }
        highp float _340 = _330 + _Globals.uShadowBias;
        _367 = (((step(_340, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _324), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_340, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _324), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_340, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _324), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_340, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _324), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _368 = normalize(out_var_TEXCOORD7);
    highp vec3 _372 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _376 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _384 = normalize(_376);
    highp mat3 _393 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _398 = bvec2(_316 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _399 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _412 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _413 = sin(_412);
    highp float _414 = cos(_412);
    highp vec2 _415 = (vec2(_398.x ? _399.x : out_var_TEXCOORD0.xy.x, _398.y ? _399.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _416 = _415.x;
    highp float _417 = _415.y;
    highp vec2 _428 = (vec2(_416 * _414 + (-(_417 * _413)), _416 * _413 + (_417 * _414)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _432 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _428);
    highp vec3 _439 = pow(abs(_432.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _440 = _439.z;
    highp float _441 = _439.y;
    bvec4 _443 = bvec4(_440 > _441);
    highp vec4 _444 = vec4(_440, _441, -1.0, 0.666666686534881591796875);
    highp vec4 _445 = vec4(_441, _440, 0.0, -0.3333333432674407958984375);
    highp vec4 _446 = vec4(_443.x ? _444.x : _445.x, _443.y ? _444.y : _445.y, _443.z ? _444.z : _445.z, _443.w ? _444.w : _445.w);
    highp float _447 = _446.x;
    highp float _448 = _439.x;
    bvec4 _450 = bvec4(_447 > _448);
    highp vec4 _453 = vec4(_447, _446.yw, _448);
    highp vec4 _455 = vec4(_448, _446.yz, _447);
    highp vec4 _456 = vec4(_450.x ? _453.x : _455.x, _450.y ? _453.y : _455.y, _450.z ? _453.z : _455.z, _450.w ? _453.w : _455.w);
    highp float _461 = _456.x - (isnan(_456.y) ? _456.w : (isnan(_456.w) ? _456.y : min(_456.w, _456.y)));
    highp float _474 = clamp((_461 / (_456.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _477 = clamp(_456.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _491 = vec3((-_477) * _474 + _477) + (clamp(abs((fract(vec3(abs(_456.z + ((_456.w - _456.y) / (6.0 * _461 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_477 * _474));
    highp vec4 _495 = vec4(_491.x, _491.y, _491.z, _432.w) * _Globals._Color;
    highp vec3 _527;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _508 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _428 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _508.w = _508.w * _508.x;
        highp vec2 _519 = ((_508.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _520 = vec3(_519.x, _519.y, _288.z);
        highp vec2 _521 = _519.xy;
        _520.z = sqrt(1.0 - clamp(dot(_521, _521), 0.0, 1.0));
        _527 = _520;
    }
    else
    {
        _527 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _529 = normalize(_393 * _527);
    bvec3 _534 = bvec3(_316 < (_Globals._FlipNormal - 1.0));
    highp vec3 _535 = -_529;
    highp vec3 _536 = vec3(_534.x ? _535.x : _529.x, _534.y ? _535.y : _529.y, _534.z ? _535.z : _529.z);
    highp vec3 _539 = normalize(out_var_TEXCOORD4);
    highp vec4 _579;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _550 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _555;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _554 = _495;
            _554.w = _550;
            _555 = _554;
        }
        else
        {
            _555 = _495;
        }
        highp vec4 _562;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _561 = _555;
            _561.w = _555.w * _550;
            _562 = _561;
        }
        else
        {
            _562 = _555;
        }
        highp vec4 _570;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _569 = _562;
            _569.w = clamp(_562.w + _550, 0.0, 1.0);
            _570 = _569;
        }
        else
        {
            _570 = _562;
        }
        highp vec4 _578;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _577 = _570;
            _577.w = clamp(_570.w - _550, 0.0, 1.0);
            _578 = _577;
        }
        else
        {
            _578 = _570;
        }
        _579 = _578;
    }
    else
    {
        _579 = _495;
    }
    highp vec4 _674;
    highp float _675;
    if ((_307 & 1) != 0)
    {
        highp vec4 _583 = _579;
        _583.w = 1.0;
        highp vec2 _589 = roundEven(_Globals._DissolveParams.xy);
        highp float _590 = _589.x;
        highp vec4 _663;
        highp float _664;
        if (_590 != 0.0)
        {
            highp float _606;
            highp float _607;
            if (_590 == 1.0)
            {
                _606 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _607 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _606 = 0.0;
                _607 = 1.0;
            }
            highp float _638;
            highp float _639;
            if (_590 == 2.0)
            {
                highp vec2 _616 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _627 = (_589.y == 1.0) ? (vec2(_616.x * cos(_Globals._DissolvePos.w) + (-(_616.y * sin(_Globals._DissolvePos.w))), _289) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _638 = 1.0 - clamp(abs(_627 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _639 = _607 * float(_627 > _Globals._DissolveParams.z);
            }
            else
            {
                _638 = _606;
                _639 = _607;
            }
            highp float _660;
            highp float _661;
            if (_590 == 3.0)
            {
                highp float _649 = (_589.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _660 = 1.0 - clamp(abs(_649 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _661 = _639 * float(_649 > _Globals._DissolveParams.z);
            }
            else
            {
                _660 = _638;
                _661 = _639;
            }
            highp vec4 _662 = _583;
            _662.w = _661;
            _663 = _662;
            _664 = _660;
        }
        else
        {
            _663 = _583;
            _664 = 0.0;
        }
        highp vec4 _670;
        if ((_307 & 2) != 0)
        {
            highp vec4 _669 = _663;
            _669.w = 1.0 - _663.w;
            _670 = _669;
        }
        else
        {
            _670 = _663;
        }
        highp vec4 _673 = _670;
        _673.w = _670.w * _579.w;
        _674 = _673;
        _675 = _664;
    }
    else
    {
        _674 = _579;
        _675 = 0.0;
    }
    if ((_674.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _856;
    highp float _857;
    if (_Globals._UseShadow != 0u)
    {
        highp float _708 = clamp(dot(_368, mix(_539, _536, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _711 = clamp(dot(_368, mix(_539, _536, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _714 = clamp(dot(_368, mix(_539, _536, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _718 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _721 = clamp(_367 + distance(_368, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _724 = mix(1.0, _721, _Globals._ShadowReceive);
        highp float _725 = _708 * _724;
        highp float _728 = mix(1.0, _721, _Globals._Shadow2ndReceive);
        highp float _732 = mix(1.0, _721, _Globals._Shadow3rdReceive);
        highp float _743 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _744 = clamp(_743, 0.0, 1.0);
        highp float _746 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _759 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _773 = clamp(_743 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _786 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _801 = (_316 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _802 = clamp((_708 * _724 + (-_744)) / clamp(fwidth(_725) * _718 + (_746 - _744), 0.0, 1.0), 0.0, 1.0) * _801;
        highp vec3 _834 = mix(mix(_674.xyz * _Globals._ShadowColor.xyz, (_674.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_711 * _728 + (-_759)) / clamp(fwidth(_711 * _728) * _718 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _759), 0.0, 1.0), 0.0, 1.0) * _801)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_674.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_714 * _732 + (-_786)) / clamp(fwidth(_714 * _732) * _718 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _786), 0.0, 1.0), 0.0, 1.0) * _801)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _840 = _674.xyz * out_var_TEXCOORD6;
        highp vec3 _846 = mix(mix(_834, _834 * _674.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _674.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2033 = isnan(_846);
        bvec3 _2034 = isnan(_840);
        highp vec3 _2035 = min(_846, _840);
        highp vec3 _2036 = vec3(_2033.x ? _840.x : _2035.x, _2033.y ? _840.y : _2035.y, _2033.z ? _840.z : _2035.z);
        highp vec3 _854 = mix(mix(vec3(_2034.x ? _846.x : _2036.x, _2034.y ? _846.y : _2036.y, _2034.z ? _846.z : _2036.z), _840, _Globals._ShadowBorderColor.xyz * (clamp((_708 * _724 + (-_773)) / clamp(fwidth(_725) * _718 + (_746 - _773), 0.0, 1.0), 0.0, 1.0) * _801)), _840, vec3(mix(1.0, _802, _Globals._ShadowStrength)));
        _856 = vec4(_854.x, _854.y, _854.z, _674.w);
        _857 = _802;
    }
    else
    {
        highp vec3 _690 = _674.xyz * out_var_TEXCOORD6;
        _856 = vec4(_690.x, _690.y, _690.z, _674.w);
        _857 = 1.0;
    }
    highp vec3 _860 = vec3(_Globals._LightMaxLimit);
    bvec3 _2038 = isnan(out_var_TEXCOORD6);
    bvec3 _2039 = isnan(_860);
    highp vec3 _2040 = min(out_var_TEXCOORD6, _860);
    highp vec3 _2041 = vec3(_2038.x ? _860.x : _2040.x, _2038.y ? _860.y : _2040.y, _2038.z ? _860.z : _2040.z);
    highp vec3 _861 = vec3(_2039.x ? out_var_TEXCOORD6.x : _2041.x, _2039.y ? out_var_TEXCOORD6.y : _2041.y, _2039.z ? out_var_TEXCOORD6.z : _2041.z);
    highp float _862 = clamp(_857, 0.0, 1.0);
    highp vec3 _864 = _674.xyz * _Globals._LightMaxLimit;
    bvec3 _2043 = isnan(_856.xyz);
    bvec3 _2044 = isnan(_864);
    highp vec3 _2045 = min(_856.xyz, _864);
    highp vec3 _2046 = vec3(_2043.x ? _864.x : _2045.x, _2043.y ? _864.y : _2045.y, _2043.z ? _864.z : _2045.z);
    highp vec3 _865 = vec3(_2044.x ? _856.xyz.x : _2046.x, _2044.y ? _856.xyz.y : _2046.y, _2044.z ? _856.xyz.z : _2046.z);
    highp vec4 _912;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _882 = pow(clamp(1.0 - abs(dot(mix(_539, _536, vec3(_Globals._RimShadeNormalStrength)), _384)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _891 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _905 = _865.xyz;
        highp vec3 _910 = mix(_905, _905 * _Globals._RimShadeColor.xyz, vec3(clamp((_882 - _891) / clamp(fwidth(_882) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _891), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _912 = vec4(_910.x, _910.y, _910.z, _856.w);
    }
    else
    {
        _912 = vec4(_865.x, _865.y, _865.z, _856.w);
    }
    highp vec4 _985;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _936 = dot(normalize(((-_384) * _Globals._BacklightViewStrength) + _368), mix(_539, _536, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _946;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _946 = _936 * clamp(_367 + distance(_368, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _946 = _936;
        }
        highp float _955 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _983 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _674.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_316 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_384, _368) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_946 - _955) / clamp(fwidth(_946) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _955), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _861 + _912.xyz;
        _985 = vec4(_983.x, _983.y, _983.z, _912.w);
    }
    else
    {
        _985 = _912;
    }
    highp vec3 _988 = _985.xyz * _985.w;
    highp vec4 _1270;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1004 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _428 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1006 = _Globals._Smoothness * _1004.x;
        highp vec3 _1009 = dFdx(_536);
        highp vec3 _1010 = abs(_1009);
        highp vec3 _1011 = dFdy(_536);
        highp vec3 _1012 = abs(_1011);
        highp float _1013 = dot(_1010, _1010);
        highp float _1014 = dot(_1012, _1012);
        highp float _1015 = isnan(_1014) ? _1013 : (isnan(_1013) ? _1014 : max(_1013, _1014));
        highp float _1018 = (_1015 / (_1015 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1021 = clamp(1.0 - (isnan(_1018) ? 0.0 : (isnan(0.0) ? _1018 : max(0.0, _1018))), 0.0, 1.0);
        highp float _1022 = isnan(_1021) ? _1006 : (isnan(_1006) ? _1021 : min(_1006, _1021));
        highp float _1023 = 1.0 - _1022;
        highp float _1024 = _1023 * _1023;
        highp vec4 _1034 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _428 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1036 = _Globals._Metallic * _1034.x;
        highp vec3 _1037 = _988.xyz;
        highp vec3 _1039 = _1037 - (_1037 * _1036);
        highp vec3 _1045 = mix(vec3(_Globals._Reflectance), _674.xyz, vec3(_1036));
        highp vec4 _1055 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _428 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1056 = _Globals._ReflectionColor * _1055;
        highp vec4 _1065;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1064 = _1056;
            _1064.w = _1056.w * _985.w;
            _1065 = _1064;
        }
        else
        {
            _1065 = _1056;
        }
        highp vec4 _1166;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1138;
            do
            {
                highp vec3 _1076 = mix(_539, _536, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1078 = normalize(_384 + _368);
                highp float _1080 = clamp(dot(_1076, _1078), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1089 = pow(_1080, 1.0 / _1024);
                    highp float _1096 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1138 = vec3(clamp((_1089 - _1096) / clamp(fwidth(_1089) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1096), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1108 = clamp(dot(_1076, _384), 0.0, 1.0);
                highp float _1110 = clamp(dot(_1076, _368), 0.0, 1.0);
                highp float _1113 = isnan(0.00200000009499490261077880859375) ? _1024 : (isnan(_1024) ? 0.00200000009499490261077880859375 : max(_1024, 0.00200000009499490261077880859375));
                highp float _1114 = 1.0 - _1113;
                highp float _1118 = _1113 * _1113;
                highp float _1121 = (_1080 * _1118 + (-_1080)) * _1080 + 1.0;
                highp float _1129 = 1.0 - clamp(dot(_368, _1078), 0.0, 1.0);
                _1138 = (_1045 + ((((((vec3(1.0) - _1045) * _1129) * _1129) * _1129) * _1129) * _1129)) * (((0.5 / ((_1110 * (_1108 * _1114 + _1113) + (_1108 * (_1110 * _1114 + _1113))) + 9.9999997473787516355514526367188e-06)) * (_1118 / (_1121 * _1121 + 1.0000000116860974230803549289703e-07))) * _1110);
                break;
            } while(false);
            highp vec3 _1139 = _1039.xyz;
            highp vec3 _1141 = _1065.xyz * _861;
            highp vec3 _1146 = _1065.xyz * _861 + _1139;
            highp vec3 _1147 = _1139 * _1141;
            bvec3 _1149 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1150 = vec3(_1149.x ? _1141.x : _282.x, _1149.y ? _1141.y : _282.y, _1149.z ? _1141.z : _282.z);
            bvec3 _1152 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1160;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1158 = (-_1139) * _1141 + _1146;
                bvec3 _2068 = isnan(_1158);
                bvec3 _2069 = isnan(_1139);
                highp vec3 _2070 = max(_1158, _1139);
                highp vec3 _2071 = vec3(_2068.x ? _1139.x : _2070.x, _2068.y ? _1139.y : _2070.y, _2068.z ? _1139.z : _2070.z);
                _1160 = vec3(_2069.x ? _1158.x : _2071.x, _2069.y ? _1158.y : _2071.y, _2069.z ? _1158.z : _2071.z);
            }
            else
            {
                _1160 = vec3(_1152.x ? _1146.x : _1150.x, _1152.y ? _1146.y : _1150.y, _1152.z ? _1146.z : _1150.z);
            }
            bvec3 _1162 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1164 = mix(_1139, vec3(_1162.x ? _1147.x : _1160.x, _1162.y ? _1147.y : _1160.y, _1162.z ? _1147.z : _1160.z), _1138 * _1065.w);
            _1166 = vec4(_1164.x, _1164.y, _1164.z, _985.w);
        }
        else
        {
            _1166 = vec4(_1039.x, _1039.y, _1039.z, _985.w);
        }
        highp vec4 _1269;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1188 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1195 = reflect(-_384, mix(_539, _536, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1198 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1195, _1023 * ((-4.19999980926513671875) * _1023 + 10.19999980926513671875));
            highp vec3 _1218 = ((_1198.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1198.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _861, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1224 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1195, _1023 * 8.0).xyz * 1.0;
            highp float _1235 = 1.0 - clamp(dot(_536, _384), 0.0, 1.0);
            highp vec3 _1249 = _1166.xyz + _1065.xyz;
            highp vec3 _1250 = _1166.xyz * _1065.xyz;
            bvec3 _1252 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1253 = vec3(_1252.x ? _1065.xyz.x : _282.x, _1252.y ? _1065.xyz.y : _282.y, _1252.z ? _1065.xyz.z : _282.z);
            bvec3 _1255 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1263;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1261 = (-_1166.xyz) * _1065.xyz + _1249;
                bvec3 _2073 = isnan(_1261);
                bvec3 _2074 = isnan(_1166.xyz);
                highp vec3 _2075 = max(_1261, _1166.xyz);
                highp vec3 _2076 = vec3(_2073.x ? _1166.xyz.x : _2075.x, _2073.y ? _1166.xyz.y : _2075.y, _2073.z ? _1166.xyz.z : _2075.z);
                _1263 = vec3(_2074.x ? _1261.x : _2076.x, _2074.y ? _1261.y : _2076.y, _2074.z ? _1261.z : _2076.z);
            }
            else
            {
                _1263 = vec3(_1255.x ? _1249.x : _1253.x, _1255.y ? _1249.y : _1253.y, _1255.z ? _1249.z : _1253.z);
            }
            bvec3 _1265 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1267 = mix(_1166.xyz, vec3(_1265.x ? _1250.x : _1263.x, _1265.y ? _1250.y : _1263.y, _1265.z ? _1250.z : _1263.z), ((vec3(_1188.x ? _1218.x : _1224.x, _1188.y ? _1218.y : _1224.y, _1188.z ? _1218.z : _1224.z) * (1.0 / (_1024 * _1024 + 1.0))) * mix(_1045, vec3(clamp(_1022 + (1.0 - ((-_1036) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1235 * _1235) * _1235) * _1235) * _1235))) * _1065.w);
            _1269 = vec4(_1267.x, _1267.y, _1267.z, _1166.w);
        }
        else
        {
            _1269 = _1166;
        }
        _1270 = _1269;
    }
    else
    {
        _1270 = vec4(_988.x, _988.y, _988.z, _985.w);
    }
    highp vec4 _1447;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1315;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1292 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _428 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1292.w = _1292.w * _1292.x;
            highp vec2 _1303 = ((_1292.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1304 = vec3(_1303.x, _1303.y, _288.z);
            highp vec2 _1305 = _1303.xy;
            _1304.z = sqrt(1.0 - clamp(dot(_1305, _1305), 0.0, 1.0));
            highp vec3 _1312 = normalize(_393 * _1304);
            highp vec3 _1313 = -_1312;
            _1315 = vec3(_534.x ? _1313.x : _1312.x, _534.y ? _1313.y : _1312.y, _534.z ? _1313.z : _1312.z);
        }
        else
        {
            _1315 = mix(_539, _536, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1332 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1339 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1340 = vec3(_1332.x ? _384.x : _1339.x, _1332.y ? _384.y : _1339.y, _1332.z ? _384.z : _1339.z);
        bvec3 _1341 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1348 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1349 = vec3(_1341.x ? vec3(0.0, 1.0, 0.0).x : _1348.x, _1341.y ? vec3(0.0, 1.0, 0.0).y : _1348.y, _1341.z ? vec3(0.0, 1.0, 0.0).z : _1348.z);
        highp vec3 _1353 = normalize(_1349 - (_1340 * dot(_1340, _1349)));
        highp vec4 _1375 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1315) * mat3(cross(_1340, _1353), _1353, _1340)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1381 = mix(_1375.xyz, _1375.xyz * _861, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1382 = vec4(_1381.x, _1381.y, _1381.z, _1375.w);
        highp float _1387 = mix(_1375.w, _1375.w * _862, _Globals._MatCapShadowMask);
        _1382.w = _1387;
        highp vec4 _1397;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1396 = _1382;
            _1396.w = _1387 * _1270.w;
            _1397 = _1396;
        }
        else
        {
            _1397 = _1382;
        }
        highp vec4 _1411 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _428 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1420 = mix(_1397.xyz, _1397.xyz * _674.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1427 = _1270.xyz + _1420;
        highp vec3 _1428 = _1270.xyz * _1420;
        bvec3 _1430 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1431 = vec3(_1430.x ? _1420.x : _282.x, _1430.y ? _1420.y : _282.y, _1430.z ? _1420.z : _282.z);
        bvec3 _1433 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1441;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1439 = (-_1270.xyz) * _1420 + _1427;
            bvec3 _2078 = isnan(_1439);
            bvec3 _2079 = isnan(_1270.xyz);
            highp vec3 _2080 = max(_1439, _1270.xyz);
            highp vec3 _2081 = vec3(_2078.x ? _1270.xyz.x : _2080.x, _2078.y ? _1270.xyz.y : _2080.y, _2078.z ? _1270.xyz.z : _2080.z);
            _1441 = vec3(_2079.x ? _1439.x : _2081.x, _2079.y ? _1439.y : _2081.y, _2079.z ? _1439.z : _2081.z);
        }
        else
        {
            _1441 = vec3(_1433.x ? _1427.x : _1431.x, _1433.y ? _1427.y : _1431.y, _1433.z ? _1427.z : _1431.z);
        }
        bvec3 _1443 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1445 = mix(_1270.xyz, vec3(_1443.x ? _1428.x : _1441.x, _1443.y ? _1428.y : _1441.y, _1443.z ? _1428.z : _1441.z), _1411.xyz * (_Globals._MatCapBlend * ((_316 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1397.w)));
        _1447 = vec4(_1445.x, _1445.y, _1445.z, _1270.w);
    }
    else
    {
        _1447 = _1270;
    }
    highp vec4 _1623;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1492;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1469 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _428 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1469.w = _1469.w * _1469.x;
            highp vec2 _1480 = ((_1469.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1481 = vec3(_1480.x, _1480.y, _288.z);
            highp vec2 _1482 = _1480.xy;
            _1481.z = sqrt(1.0 - clamp(dot(_1482, _1482), 0.0, 1.0));
            highp vec3 _1489 = normalize(_393 * _1481);
            highp vec3 _1490 = -_1489;
            _1492 = vec3(_534.x ? _1490.x : _1489.x, _534.y ? _1490.y : _1489.y, _534.z ? _1490.z : _1489.z);
        }
        else
        {
            _1492 = mix(_539, _536, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1508 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1515 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1516 = vec3(_1508.x ? _384.x : _1515.x, _1508.y ? _384.y : _1515.y, _1508.z ? _384.z : _1515.z);
        bvec3 _1517 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1524 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1525 = vec3(_1517.x ? vec3(0.0, 1.0, 0.0).x : _1524.x, _1517.y ? vec3(0.0, 1.0, 0.0).y : _1524.y, _1517.z ? vec3(0.0, 1.0, 0.0).z : _1524.z);
        highp vec3 _1529 = normalize(_1525 - (_1516 * dot(_1516, _1525)));
        highp vec4 _1551 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1492 * mat3(cross(_1516, _1529), _1529, _1516)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1552 = _1551.xyz;
        highp vec3 _1557 = mix(_1552, _1552 * _861, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1558 = vec4(_1557.x, _1557.y, _1557.z, _1551.w);
        highp float _1559 = _1551.w;
        highp float _1563 = mix(_1559, _1559 * _862, _Globals._MatCap2ndShadowMask);
        _1558.w = _1563;
        highp vec4 _1573;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1572 = _1558;
            _1572.w = _1563 * _1447.w;
            _1573 = _1572;
        }
        else
        {
            _1573 = _1558;
        }
        highp vec4 _1587 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _428 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1596 = mix(_1573.xyz, _1573.xyz * _674.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1603 = _1447.xyz + _1596;
        highp vec3 _1604 = _1447.xyz * _1596;
        bvec3 _1606 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1607 = vec3(_1606.x ? _1596.x : _282.x, _1606.y ? _1596.y : _282.y, _1606.z ? _1596.z : _282.z);
        bvec3 _1609 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1617;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1615 = (-_1447.xyz) * _1596 + _1603;
            bvec3 _2083 = isnan(_1615);
            bvec3 _2084 = isnan(_1447.xyz);
            highp vec3 _2085 = max(_1615, _1447.xyz);
            highp vec3 _2086 = vec3(_2083.x ? _1447.xyz.x : _2085.x, _2083.y ? _1447.xyz.y : _2085.y, _2083.z ? _1447.xyz.z : _2085.z);
            _1617 = vec3(_2084.x ? _1615.x : _2086.x, _2084.y ? _1615.y : _2086.y, _2084.z ? _1615.z : _2086.z);
        }
        else
        {
            _1617 = vec3(_1609.x ? _1603.x : _1607.x, _1609.y ? _1603.y : _1607.y, _1609.z ? _1603.z : _1607.z);
        }
        bvec3 _1619 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1621 = mix(_1447.xyz, vec3(_1619.x ? _1604.x : _1617.x, _1619.y ? _1604.y : _1617.y, _1619.z ? _1604.z : _1617.z), _1587.xyz * (_Globals._MatCap2ndBlend * ((_316 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _1573.w)));
        _1623 = vec4(_1621.x, _1621.y, _1621.z, _1447.w);
    }
    else
    {
        _1623 = _1447;
    }
    highp vec4 _1779;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1642 = mix(_539, _536, vec3(_Globals._RimNormalStrength));
        highp float _1646 = dot(_368, _1642) * 0.5 + 0.5;
        highp float _1669 = (_316 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1642, _384)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1673 = mix(_1669, _1669 * clamp((_1646 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1674 = _1669 * clamp(((1.0 - _1646) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1684 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1693 = clamp((_1673 - _1684) / clamp(fwidth(_1673) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1684), 0.0, 1.0), 0.0, 1.0);
        highp float _1700 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1710 = clamp((_1674 * _Globals._RimDirStrength + (-_1700)) / clamp(fwidth(_1674 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1700), 0.0, 1.0), 0.0, 1.0);
        highp float _1714 = mix(_1693, _1693 * _862, _Globals._RimShadowMask);
        highp float _1716 = mix(_1710, _1710 * _862, _Globals._RimShadowMask);
        highp float _1725;
        highp float _1726;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _1725 = _1716 * _1623.w;
            _1726 = _1714 * _1623.w;
        }
        else
        {
            _1725 = _1716;
            _1726 = _1714;
        }
        highp vec3 _1732 = vec3(1.0 - _Globals._RimEnableLighting) + (_861 * _Globals._RimEnableLighting);
        highp vec3 _1734 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _674.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1735 = _1734 * _1732;
        highp vec3 _1741 = _1734 * _1732 + _1623.xyz;
        highp vec3 _1742 = _1623.xyz * _1735;
        bvec3 _1744 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1745 = vec3(_1744.x ? _1735.x : _282.x, _1744.y ? _1735.y : _282.y, _1744.z ? _1735.z : _282.z);
        bvec3 _1747 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1749 = _Globals._RimBlendMode == 2u;
        highp vec3 _1755;
        if (_1749)
        {
            highp vec3 _1753 = (-_1623.xyz) * _1735 + _1741;
            bvec3 _2088 = isnan(_1753);
            bvec3 _2089 = isnan(_1623.xyz);
            highp vec3 _2090 = max(_1753, _1623.xyz);
            highp vec3 _2091 = vec3(_2088.x ? _1623.xyz.x : _2090.x, _2088.y ? _1623.xyz.y : _2090.y, _2088.z ? _1623.xyz.z : _2090.z);
            _1755 = vec3(_2089.x ? _1753.x : _2091.x, _2089.y ? _1753.y : _2091.y, _2089.z ? _1753.z : _2091.z);
        }
        else
        {
            _1755 = vec3(_1747.x ? _1741.x : _1745.x, _1747.y ? _1741.y : _1745.y, _1747.z ? _1741.z : _1745.z);
        }
        bvec3 _1757 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1760 = mix(_1623.xyz, vec3(_1757.x ? _1742.x : _1755.x, _1757.y ? _1742.y : _1755.y, _1757.z ? _1742.z : _1755.z), vec3(_1726 * _Globals._RimColor.w)).xyz;
        highp vec3 _1762 = _Globals._RimIndirColor.xyz * _1732;
        highp vec3 _1766 = _Globals._RimIndirColor.xyz * _1732 + _1760;
        highp vec3 _1767 = _1760 * _1762;
        highp vec3 _1768 = vec3(_1744.x ? _1762.x : _282.x, _1744.y ? _1762.y : _282.y, _1744.z ? _1762.z : _282.z);
        highp vec3 _1775;
        if (_1749)
        {
            highp vec3 _1773 = (-_1760) * _1762 + _1766;
            bvec3 _2093 = isnan(_1773);
            bvec3 _2094 = isnan(_1760);
            highp vec3 _2095 = max(_1773, _1760);
            highp vec3 _2096 = vec3(_2093.x ? _1760.x : _2095.x, _2093.y ? _1760.y : _2095.y, _2093.z ? _1760.z : _2095.z);
            _1775 = vec3(_2094.x ? _1773.x : _2096.x, _2094.y ? _1773.y : _2096.y, _2094.z ? _1773.z : _2096.z);
        }
        else
        {
            _1775 = vec3(_1747.x ? _1766.x : _1768.x, _1747.y ? _1766.y : _1768.y, _1747.z ? _1766.z : _1768.z);
        }
        highp vec3 _1777 = mix(_1760, vec3(_1757.x ? _1767.x : _1775.x, _1757.y ? _1767.y : _1775.y, _1757.z ? _1767.z : _1775.z), vec3(_1725 * _Globals._RimIndirColor.w));
        _1779 = vec4(_1777.x, _1777.y, _1777.z, _1623.w);
    }
    else
    {
        _1779 = _1623;
    }
    highp vec4 _1846;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1793 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _372, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1807 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1813;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1813 = roundEven(_1807);
        }
        else
        {
            _1813 = _1807;
        }
        highp vec3 _1822 = mix(_1793, _1793 * _674.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1826 = _1779.xyz + _1822;
        highp vec3 _1827 = _1779.xyz * _1822;
        bvec3 _1829 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1830 = vec3(_1829.x ? _1822.x : _282.x, _1829.y ? _1822.y : _282.y, _1829.z ? _1822.z : _282.z);
        bvec3 _1832 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1840;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1838 = (-_1779.xyz) * _1822 + _1826;
            bvec3 _2098 = isnan(_1838);
            bvec3 _2099 = isnan(_1779.xyz);
            highp vec3 _2100 = max(_1838, _1779.xyz);
            highp vec3 _2101 = vec3(_2098.x ? _1779.xyz.x : _2100.x, _2098.y ? _1779.xyz.y : _2100.y, _2098.z ? _1779.xyz.z : _2100.z);
            _1840 = vec3(_2099.x ? _1838.x : _2101.x, _2099.y ? _1838.y : _2101.y, _2099.z ? _1838.z : _2101.z);
        }
        else
        {
            _1840 = vec3(_1832.x ? _1826.x : _1830.x, _1832.y ? _1826.y : _1830.y, _1832.z ? _1826.z : _1830.z);
        }
        bvec3 _1842 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1844 = mix(_1779.xyz, vec3(_1842.x ? _1827.x : _1840.x, _1842.y ? _1827.y : _1840.y, _1842.z ? _1827.z : _1840.z), vec3(((_Globals._EmissionBlend * mix(1.0, _1813, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _1779.w));
        _1846 = vec4(_1844.x, _1844.y, _1844.z, _1779.w);
    }
    else
    {
        _1846 = _1779;
    }
    highp vec4 _1913;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1860 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _372, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1874 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1880;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1880 = roundEven(_1874);
        }
        else
        {
            _1880 = _1874;
        }
        highp vec3 _1889 = mix(_1860, _1860 * _674.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1893 = _1846.xyz + _1889;
        highp vec3 _1894 = _1846.xyz * _1889;
        bvec3 _1896 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1897 = vec3(_1896.x ? _1889.x : _282.x, _1896.y ? _1889.y : _282.y, _1896.z ? _1889.z : _282.z);
        bvec3 _1899 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1907;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1905 = (-_1846.xyz) * _1889 + _1893;
            bvec3 _2103 = isnan(_1905);
            bvec3 _2104 = isnan(_1846.xyz);
            highp vec3 _2105 = max(_1905, _1846.xyz);
            highp vec3 _2106 = vec3(_2103.x ? _1846.xyz.x : _2105.x, _2103.y ? _1846.xyz.y : _2105.y, _2103.z ? _1846.xyz.z : _2105.z);
            _1907 = vec3(_2104.x ? _1905.x : _2106.x, _2104.y ? _1905.y : _2106.y, _2104.z ? _1905.z : _2106.z);
        }
        else
        {
            _1907 = vec3(_1899.x ? _1893.x : _1897.x, _1899.y ? _1893.y : _1897.y, _1899.z ? _1893.z : _1897.z);
        }
        bvec3 _1909 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1911 = mix(_1846.xyz, vec3(_1909.x ? _1894.x : _1907.x, _1909.y ? _1894.y : _1907.y, _1909.z ? _1894.z : _1907.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _1880, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _1846.w));
        _1913 = vec4(_1911.x, _1911.y, _1911.z, _1846.w);
    }
    else
    {
        _1913 = _1846;
    }
    bvec3 _1923 = bvec3(_316 < 0.0);
    highp vec3 _1924 = (_1913.xyz + ((_Globals._DissolveColor.xyz * _675) * _1913.w)).xyz;
    highp vec3 _1932 = mix(_1924, _Globals._BackfaceColor.xyz * _861, vec3(_Globals._BackfaceColor.w));
    highp float _1953 = (_316 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_376)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _1967 = vec3(_1923.x ? _1932.x : _1924.x, _1923.y ? _1932.y : _1924.y, _1923.z ? _1932.z : _1924.z).xyz;
    highp vec3 _1978 = mix(_1967, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1967, vec3(pow(clamp(1.0 - abs(dot(_539, _384)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_1953));
    highp vec4 _1979 = vec4(_1978.x, _1978.y, _1978.z, _1913.w);
    highp float _1981 = mix(_1913.w, _1913.w * _Globals._DistanceFadeColor.w, _1953);
    _1979.w = _1981;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _1981, _1979, vec4(out_var_TEXCOORD9));
}
