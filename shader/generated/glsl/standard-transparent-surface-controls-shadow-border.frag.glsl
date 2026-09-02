#version 300 es
precision mediump float;
precision highp int;

vec3 _288;
vec3 _294;
float _295;
vec4 _296;

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
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
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
    int _314 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _323 = float(gl_FrontFacing ? 1 : (-1));
    highp float _374;
    do
    {
        highp vec3 _330 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _331 = _330.xy;
        highp float _337 = _330.z;
        if ((any(lessThan(_331, vec2(0.0))) || any(greaterThan(_331, vec2(1.0)))) || (_337 > 1.0))
        {
            _374 = 1.0;
            break;
        }
        highp float _347 = _337 + _Globals.uShadowBias;
        _374 = (((step(_347, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _331), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_347, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _331), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_347, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _331), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_347, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _331), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _375 = normalize(out_var_TEXCOORD7);
    highp vec3 _379 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _383 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _391 = normalize(_383);
    highp mat3 _400 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _405 = bvec2(_323 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _406 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _419 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _420 = sin(_419);
    highp float _421 = cos(_419);
    highp vec2 _422 = (vec2(_405.x ? _406.x : out_var_TEXCOORD0.xy.x, _405.y ? _406.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _423 = _422.x;
    highp float _424 = _422.y;
    highp vec2 _435 = (vec2(_423 * _421 + (-(_424 * _420)), _423 * _420 + (_424 * _421)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _436 = dFdx(_435);
    highp vec2 _437 = abs(_436);
    highp vec2 _438 = dFdy(_435);
    highp vec2 _439 = abs(_438);
    highp vec4 _443 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _435);
    highp vec3 _450 = pow(abs(_443.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _451 = _450.z;
    highp float _452 = _450.y;
    bvec4 _454 = bvec4(_451 > _452);
    highp vec4 _455 = vec4(_451, _452, -1.0, 0.666666686534881591796875);
    highp vec4 _456 = vec4(_452, _451, 0.0, -0.3333333432674407958984375);
    highp vec4 _457 = vec4(_454.x ? _455.x : _456.x, _454.y ? _455.y : _456.y, _454.z ? _455.z : _456.z, _454.w ? _455.w : _456.w);
    highp float _458 = _457.x;
    highp float _459 = _450.x;
    bvec4 _461 = bvec4(_458 > _459);
    highp vec4 _464 = vec4(_458, _457.yw, _459);
    highp vec4 _466 = vec4(_459, _457.yz, _458);
    highp vec4 _467 = vec4(_461.x ? _464.x : _466.x, _461.y ? _464.y : _466.y, _461.z ? _464.z : _466.z, _461.w ? _464.w : _466.w);
    highp float _472 = _467.x - (isnan(_467.y) ? _467.w : (isnan(_467.w) ? _467.y : min(_467.w, _467.y)));
    highp float _485 = clamp((_472 / (_467.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _488 = clamp(_467.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _502 = vec3((-_488) * _485 + _488) + (clamp(abs((fract(vec3(abs(_467.z + ((_467.w - _467.y) / (6.0 * _472 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_488 * _485));
    highp vec4 _506 = vec4(_502.x, _502.y, _502.z, _443.w) * _Globals._Color;
    highp vec3 _538;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _519 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _435 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _519.w = _519.w * _519.x;
        highp vec2 _530 = ((_519.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _531 = vec3(_530.x, _530.y, _294.z);
        highp vec2 _532 = _530.xy;
        _531.z = sqrt(1.0 - clamp(dot(_532, _532), 0.0, 1.0));
        _538 = _531;
    }
    else
    {
        _538 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _540 = normalize(_400 * _538);
    bvec3 _545 = bvec3(_323 < (_Globals._FlipNormal - 1.0));
    highp vec3 _546 = -_540;
    highp vec3 _547 = vec3(_545.x ? _546.x : _540.x, _545.y ? _546.y : _540.y, _545.z ? _546.z : _540.z);
    highp vec3 _550 = normalize(out_var_TEXCOORD4);
    highp vec4 _590;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _561 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _566;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _565 = _506;
            _565.w = _561;
            _566 = _565;
        }
        else
        {
            _566 = _506;
        }
        highp vec4 _573;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _572 = _566;
            _572.w = _566.w * _561;
            _573 = _572;
        }
        else
        {
            _573 = _566;
        }
        highp vec4 _581;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _580 = _573;
            _580.w = clamp(_573.w + _561, 0.0, 1.0);
            _581 = _580;
        }
        else
        {
            _581 = _573;
        }
        highp vec4 _589;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _588 = _581;
            _588.w = clamp(_581.w - _561, 0.0, 1.0);
            _589 = _588;
        }
        else
        {
            _589 = _581;
        }
        _590 = _589;
    }
    else
    {
        _590 = _506;
    }
    highp vec4 _685;
    highp float _686;
    if ((_314 & 1) != 0)
    {
        highp vec4 _594 = _590;
        _594.w = 1.0;
        highp vec2 _600 = roundEven(_Globals._DissolveParams.xy);
        highp float _601 = _600.x;
        highp vec4 _674;
        highp float _675;
        if (_601 != 0.0)
        {
            highp float _617;
            highp float _618;
            if (_601 == 1.0)
            {
                _617 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _618 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _617 = 0.0;
                _618 = 1.0;
            }
            highp float _649;
            highp float _650;
            if (_601 == 2.0)
            {
                highp vec2 _627 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _638 = (_600.y == 1.0) ? (vec2(_627.x * cos(_Globals._DissolvePos.w) + (-(_627.y * sin(_Globals._DissolvePos.w))), _295) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _649 = 1.0 - clamp(abs(_638 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _650 = _618 * float(_638 > _Globals._DissolveParams.z);
            }
            else
            {
                _649 = _617;
                _650 = _618;
            }
            highp float _671;
            highp float _672;
            if (_601 == 3.0)
            {
                highp float _660 = (_600.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _671 = 1.0 - clamp(abs(_660 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _672 = _650 * float(_660 > _Globals._DissolveParams.z);
            }
            else
            {
                _671 = _649;
                _672 = _650;
            }
            highp vec4 _673 = _594;
            _673.w = _672;
            _674 = _673;
            _675 = _671;
        }
        else
        {
            _674 = _594;
            _675 = 0.0;
        }
        highp vec4 _681;
        if ((_314 & 2) != 0)
        {
            highp vec4 _680 = _674;
            _680.w = 1.0 - _674.w;
            _681 = _680;
        }
        else
        {
            _681 = _674;
        }
        highp vec4 _684 = _681;
        _684.w = _681.w * _590.w;
        _685 = _684;
        _686 = _675;
    }
    else
    {
        _685 = _590;
        _686 = 0.0;
    }
    if ((_685.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _916;
    highp float _917;
    if (_Globals._UseShadow != 0u)
    {
        highp float _729 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _732 = clamp(_374 + distance(_375, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _737;
        _737.x = clamp(dot(_375, mix(_550, _547, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _732, _Globals._ShadowReceive);
        _737.y = clamp(dot(_375, mix(_550, _547, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _732, _Globals._Shadow2ndReceive);
        _737.z = clamp(dot(_375, mix(_550, _547, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _732, _Globals._Shadow3rdReceive);
        highp vec2 _758 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2091 = isnan(_437);
        bvec2 _2092 = isnan(_758);
        highp vec2 _2093 = max(_437, _758);
        highp vec2 _2094 = vec2(_2091.x ? _758.x : _2093.x, _2091.y ? _758.y : _2093.y);
        bvec2 _2096 = isnan(_439);
        bvec2 _2097 = isnan(_758);
        highp vec2 _2098 = max(_439, _758);
        highp vec2 _2099 = vec2(_2096.x ? _758.x : _2098.x, _2096.y ? _758.y : _2098.y);
        highp vec4 _762 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _435, vec2(_2092.x ? _437.x : _2094.x, _2092.y ? _437.y : _2094.y), vec2(_2097.x ? _439.x : _2099.x, _2097.y ? _439.y : _2099.y));
        highp vec4 _770;
        _770.x = clamp(_762.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _770.y = clamp(_762.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _770.z = clamp(_762.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _789 = _Globals._ShadowPostAO != 0u;
        bvec3 _790 = bvec3(_789);
        highp vec3 _793 = _737.xyz * _770.xyz;
        highp vec3 _794 = vec3(_790.x ? _737.xyz.x : _793.x, _790.y ? _737.xyz.y : _793.y, _790.z ? _737.xyz.z : _793.z);
        highp float _795 = _794.x;
        highp float _799 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _800 = clamp(_799, 0.0, 1.0);
        highp float _802 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _809 = _794.y;
        highp float _814 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _826 = clamp(_799 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _833 = _794.z;
        highp float _838 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _847 = vec4((_795 - _800) / clamp(fwidth(_795) * _729 + (_802 - _800), 0.0, 1.0), (_809 - _814) / clamp(fwidth(_809) * _729 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _814), 0.0, 1.0), (_833 - _838) / clamp(fwidth(_833) * _729 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _838), 0.0, 1.0), (_795 - _826) / clamp(fwidth(_795) * _729 + (_802 - _826), 0.0, 1.0));
        bvec4 _848 = bvec4(_789);
        highp vec4 _850 = _847 * _770.xyzx;
        highp vec4 _852 = clamp(vec4(_848.x ? _850.x : _847.x, _848.y ? _850.y : _847.y, _848.z ? _850.z : _847.z, _848.w ? _850.w : _847.w), vec4(0.0), vec4(1.0));
        highp float _857 = (_323 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _859 = _852.x * _857;
        highp vec3 _894 = mix(mix(_685.xyz * _Globals._ShadowColor.xyz, (_685.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_852.y * _857)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_685.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_852.z * _857)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _900 = _685.xyz * out_var_TEXCOORD6;
        highp vec3 _906 = mix(mix(_894, _894 * _685.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _685.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2101 = isnan(_906);
        bvec3 _2102 = isnan(_900);
        highp vec3 _2103 = min(_906, _900);
        highp vec3 _2104 = vec3(_2101.x ? _900.x : _2103.x, _2101.y ? _900.y : _2103.y, _2101.z ? _900.z : _2103.z);
        highp vec3 _914 = mix(mix(vec3(_2102.x ? _906.x : _2104.x, _2102.y ? _906.y : _2104.y, _2102.z ? _906.z : _2104.z), _900, _Globals._ShadowBorderColor.xyz * (_852.w * _857)), _900, vec3(mix(1.0, _859, _Globals._ShadowStrength)));
        _916 = vec4(_914.x, _914.y, _914.z, _685.w);
        _917 = _859;
    }
    else
    {
        highp vec3 _701 = _685.xyz * out_var_TEXCOORD6;
        _916 = vec4(_701.x, _701.y, _701.z, _685.w);
        _917 = 1.0;
    }
    highp vec3 _920 = vec3(_Globals._LightMaxLimit);
    bvec3 _2106 = isnan(out_var_TEXCOORD6);
    bvec3 _2107 = isnan(_920);
    highp vec3 _2108 = min(out_var_TEXCOORD6, _920);
    highp vec3 _2109 = vec3(_2106.x ? _920.x : _2108.x, _2106.y ? _920.y : _2108.y, _2106.z ? _920.z : _2108.z);
    highp vec3 _921 = vec3(_2107.x ? out_var_TEXCOORD6.x : _2109.x, _2107.y ? out_var_TEXCOORD6.y : _2109.y, _2107.z ? out_var_TEXCOORD6.z : _2109.z);
    highp float _922 = clamp(_917, 0.0, 1.0);
    highp vec3 _924 = _685.xyz * _Globals._LightMaxLimit;
    bvec3 _2111 = isnan(_916.xyz);
    bvec3 _2112 = isnan(_924);
    highp vec3 _2113 = min(_916.xyz, _924);
    highp vec3 _2114 = vec3(_2111.x ? _924.x : _2113.x, _2111.y ? _924.y : _2113.y, _2111.z ? _924.z : _2113.z);
    highp vec3 _925 = vec3(_2112.x ? _916.xyz.x : _2114.x, _2112.y ? _916.xyz.y : _2114.y, _2112.z ? _916.xyz.z : _2114.z);
    highp vec4 _972;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _942 = pow(clamp(1.0 - abs(dot(mix(_550, _547, vec3(_Globals._RimShadeNormalStrength)), _391)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _951 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _965 = _925.xyz;
        highp vec3 _970 = mix(_965, _965 * _Globals._RimShadeColor.xyz, vec3(clamp((_942 - _951) / clamp(fwidth(_942) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _951), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _972 = vec4(_970.x, _970.y, _970.z, _916.w);
    }
    else
    {
        _972 = vec4(_925.x, _925.y, _925.z, _916.w);
    }
    highp vec4 _1045;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _996 = dot(normalize(((-_391) * _Globals._BacklightViewStrength) + _375), mix(_550, _547, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1006;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1006 = _996 * clamp(_374 + distance(_375, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1006 = _996;
        }
        highp float _1015 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1043 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _685.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_323 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_391, _375) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1006 - _1015) / clamp(fwidth(_1006) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1015), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _921 + _972.xyz;
        _1045 = vec4(_1043.x, _1043.y, _1043.z, _972.w);
    }
    else
    {
        _1045 = _972;
    }
    highp vec3 _1048 = _1045.xyz * _1045.w;
    highp vec4 _1330;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1064 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _435 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1066 = _Globals._Smoothness * _1064.x;
        highp vec3 _1069 = dFdx(_547);
        highp vec3 _1070 = abs(_1069);
        highp vec3 _1071 = dFdy(_547);
        highp vec3 _1072 = abs(_1071);
        highp float _1073 = dot(_1070, _1070);
        highp float _1074 = dot(_1072, _1072);
        highp float _1075 = isnan(_1074) ? _1073 : (isnan(_1073) ? _1074 : max(_1073, _1074));
        highp float _1078 = (_1075 / (_1075 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1081 = clamp(1.0 - (isnan(_1078) ? 0.0 : (isnan(0.0) ? _1078 : max(0.0, _1078))), 0.0, 1.0);
        highp float _1082 = isnan(_1081) ? _1066 : (isnan(_1066) ? _1081 : min(_1066, _1081));
        highp float _1083 = 1.0 - _1082;
        highp float _1084 = _1083 * _1083;
        highp vec4 _1094 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _435 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1096 = _Globals._Metallic * _1094.x;
        highp vec3 _1097 = _1048.xyz;
        highp vec3 _1099 = _1097 - (_1097 * _1096);
        highp vec3 _1105 = mix(vec3(_Globals._Reflectance), _685.xyz, vec3(_1096));
        highp vec4 _1115 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _435 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1116 = _Globals._ReflectionColor * _1115;
        highp vec4 _1125;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1124 = _1116;
            _1124.w = _1116.w * _1045.w;
            _1125 = _1124;
        }
        else
        {
            _1125 = _1116;
        }
        highp vec4 _1226;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1198;
            do
            {
                highp vec3 _1136 = mix(_550, _547, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1138 = normalize(_391 + _375);
                highp float _1140 = clamp(dot(_1136, _1138), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1149 = pow(_1140, 1.0 / _1084);
                    highp float _1156 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1198 = vec3(clamp((_1149 - _1156) / clamp(fwidth(_1149) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1156), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1168 = clamp(dot(_1136, _391), 0.0, 1.0);
                highp float _1170 = clamp(dot(_1136, _375), 0.0, 1.0);
                highp float _1173 = isnan(0.00200000009499490261077880859375) ? _1084 : (isnan(_1084) ? 0.00200000009499490261077880859375 : max(_1084, 0.00200000009499490261077880859375));
                highp float _1174 = 1.0 - _1173;
                highp float _1178 = _1173 * _1173;
                highp float _1181 = (_1140 * _1178 + (-_1140)) * _1140 + 1.0;
                highp float _1189 = 1.0 - clamp(dot(_375, _1138), 0.0, 1.0);
                _1198 = (_1105 + ((((((vec3(1.0) - _1105) * _1189) * _1189) * _1189) * _1189) * _1189)) * (((0.5 / ((_1170 * (_1168 * _1174 + _1173) + (_1168 * (_1170 * _1174 + _1173))) + 9.9999997473787516355514526367188e-06)) * (_1178 / (_1181 * _1181 + 1.0000000116860974230803549289703e-07))) * _1170);
                break;
            } while(false);
            highp vec3 _1199 = _1099.xyz;
            highp vec3 _1201 = _1125.xyz * _921;
            highp vec3 _1206 = _1125.xyz * _921 + _1199;
            highp vec3 _1207 = _1199 * _1201;
            bvec3 _1209 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1210 = vec3(_1209.x ? _1201.x : _288.x, _1209.y ? _1201.y : _288.y, _1209.z ? _1201.z : _288.z);
            bvec3 _1212 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1220;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1218 = (-_1199) * _1201 + _1206;
                bvec3 _2136 = isnan(_1218);
                bvec3 _2137 = isnan(_1199);
                highp vec3 _2138 = max(_1218, _1199);
                highp vec3 _2139 = vec3(_2136.x ? _1199.x : _2138.x, _2136.y ? _1199.y : _2138.y, _2136.z ? _1199.z : _2138.z);
                _1220 = vec3(_2137.x ? _1218.x : _2139.x, _2137.y ? _1218.y : _2139.y, _2137.z ? _1218.z : _2139.z);
            }
            else
            {
                _1220 = vec3(_1212.x ? _1206.x : _1210.x, _1212.y ? _1206.y : _1210.y, _1212.z ? _1206.z : _1210.z);
            }
            bvec3 _1222 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1224 = mix(_1199, vec3(_1222.x ? _1207.x : _1220.x, _1222.y ? _1207.y : _1220.y, _1222.z ? _1207.z : _1220.z), _1198 * _1125.w);
            _1226 = vec4(_1224.x, _1224.y, _1224.z, _1045.w);
        }
        else
        {
            _1226 = vec4(_1099.x, _1099.y, _1099.z, _1045.w);
        }
        highp vec4 _1329;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1248 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1255 = reflect(-_391, mix(_550, _547, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1258 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1255, _1083 * ((-4.19999980926513671875) * _1083 + 10.19999980926513671875));
            highp vec3 _1278 = ((_1258.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1258.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _921, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1284 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1255, _1083 * 8.0).xyz * 1.0;
            highp float _1295 = 1.0 - clamp(dot(_547, _391), 0.0, 1.0);
            highp vec3 _1309 = _1226.xyz + _1125.xyz;
            highp vec3 _1310 = _1226.xyz * _1125.xyz;
            bvec3 _1312 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1313 = vec3(_1312.x ? _1125.xyz.x : _288.x, _1312.y ? _1125.xyz.y : _288.y, _1312.z ? _1125.xyz.z : _288.z);
            bvec3 _1315 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1323;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1321 = (-_1226.xyz) * _1125.xyz + _1309;
                bvec3 _2141 = isnan(_1321);
                bvec3 _2142 = isnan(_1226.xyz);
                highp vec3 _2143 = max(_1321, _1226.xyz);
                highp vec3 _2144 = vec3(_2141.x ? _1226.xyz.x : _2143.x, _2141.y ? _1226.xyz.y : _2143.y, _2141.z ? _1226.xyz.z : _2143.z);
                _1323 = vec3(_2142.x ? _1321.x : _2144.x, _2142.y ? _1321.y : _2144.y, _2142.z ? _1321.z : _2144.z);
            }
            else
            {
                _1323 = vec3(_1315.x ? _1309.x : _1313.x, _1315.y ? _1309.y : _1313.y, _1315.z ? _1309.z : _1313.z);
            }
            bvec3 _1325 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1327 = mix(_1226.xyz, vec3(_1325.x ? _1310.x : _1323.x, _1325.y ? _1310.y : _1323.y, _1325.z ? _1310.z : _1323.z), ((vec3(_1248.x ? _1278.x : _1284.x, _1248.y ? _1278.y : _1284.y, _1248.z ? _1278.z : _1284.z) * (1.0 / (_1084 * _1084 + 1.0))) * mix(_1105, vec3(clamp(_1082 + (1.0 - ((-_1096) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1295 * _1295) * _1295) * _1295) * _1295))) * _1125.w);
            _1329 = vec4(_1327.x, _1327.y, _1327.z, _1226.w);
        }
        else
        {
            _1329 = _1226;
        }
        _1330 = _1329;
    }
    else
    {
        _1330 = vec4(_1048.x, _1048.y, _1048.z, _1045.w);
    }
    highp vec4 _1507;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1375;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1352 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _435 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1352.w = _1352.w * _1352.x;
            highp vec2 _1363 = ((_1352.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1364 = vec3(_1363.x, _1363.y, _294.z);
            highp vec2 _1365 = _1363.xy;
            _1364.z = sqrt(1.0 - clamp(dot(_1365, _1365), 0.0, 1.0));
            highp vec3 _1372 = normalize(_400 * _1364);
            highp vec3 _1373 = -_1372;
            _1375 = vec3(_545.x ? _1373.x : _1372.x, _545.y ? _1373.y : _1372.y, _545.z ? _1373.z : _1372.z);
        }
        else
        {
            _1375 = mix(_550, _547, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1392 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1399 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1400 = vec3(_1392.x ? _391.x : _1399.x, _1392.y ? _391.y : _1399.y, _1392.z ? _391.z : _1399.z);
        bvec3 _1401 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1408 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1409 = vec3(_1401.x ? vec3(0.0, 1.0, 0.0).x : _1408.x, _1401.y ? vec3(0.0, 1.0, 0.0).y : _1408.y, _1401.z ? vec3(0.0, 1.0, 0.0).z : _1408.z);
        highp vec3 _1413 = normalize(_1409 - (_1400 * dot(_1400, _1409)));
        highp vec4 _1435 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1375) * mat3(cross(_1400, _1413), _1413, _1400)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1441 = mix(_1435.xyz, _1435.xyz * _921, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1442 = vec4(_1441.x, _1441.y, _1441.z, _1435.w);
        highp float _1447 = mix(_1435.w, _1435.w * _922, _Globals._MatCapShadowMask);
        _1442.w = _1447;
        highp vec4 _1457;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1456 = _1442;
            _1456.w = _1447 * _1330.w;
            _1457 = _1456;
        }
        else
        {
            _1457 = _1442;
        }
        highp vec4 _1471 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _435 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1480 = mix(_1457.xyz, _1457.xyz * _685.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1487 = _1330.xyz + _1480;
        highp vec3 _1488 = _1330.xyz * _1480;
        bvec3 _1490 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1491 = vec3(_1490.x ? _1480.x : _288.x, _1490.y ? _1480.y : _288.y, _1490.z ? _1480.z : _288.z);
        bvec3 _1493 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1501;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1499 = (-_1330.xyz) * _1480 + _1487;
            bvec3 _2146 = isnan(_1499);
            bvec3 _2147 = isnan(_1330.xyz);
            highp vec3 _2148 = max(_1499, _1330.xyz);
            highp vec3 _2149 = vec3(_2146.x ? _1330.xyz.x : _2148.x, _2146.y ? _1330.xyz.y : _2148.y, _2146.z ? _1330.xyz.z : _2148.z);
            _1501 = vec3(_2147.x ? _1499.x : _2149.x, _2147.y ? _1499.y : _2149.y, _2147.z ? _1499.z : _2149.z);
        }
        else
        {
            _1501 = vec3(_1493.x ? _1487.x : _1491.x, _1493.y ? _1487.y : _1491.y, _1493.z ? _1487.z : _1491.z);
        }
        bvec3 _1503 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1505 = mix(_1330.xyz, vec3(_1503.x ? _1488.x : _1501.x, _1503.y ? _1488.y : _1501.y, _1503.z ? _1488.z : _1501.z), _1471.xyz * (_Globals._MatCapBlend * ((_323 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1457.w)));
        _1507 = vec4(_1505.x, _1505.y, _1505.z, _1330.w);
    }
    else
    {
        _1507 = _1330;
    }
    highp vec4 _1683;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1552;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1529 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _435 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1529.w = _1529.w * _1529.x;
            highp vec2 _1540 = ((_1529.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1541 = vec3(_1540.x, _1540.y, _294.z);
            highp vec2 _1542 = _1540.xy;
            _1541.z = sqrt(1.0 - clamp(dot(_1542, _1542), 0.0, 1.0));
            highp vec3 _1549 = normalize(_400 * _1541);
            highp vec3 _1550 = -_1549;
            _1552 = vec3(_545.x ? _1550.x : _1549.x, _545.y ? _1550.y : _1549.y, _545.z ? _1550.z : _1549.z);
        }
        else
        {
            _1552 = mix(_550, _547, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1568 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1575 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1576 = vec3(_1568.x ? _391.x : _1575.x, _1568.y ? _391.y : _1575.y, _1568.z ? _391.z : _1575.z);
        bvec3 _1577 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1584 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1585 = vec3(_1577.x ? vec3(0.0, 1.0, 0.0).x : _1584.x, _1577.y ? vec3(0.0, 1.0, 0.0).y : _1584.y, _1577.z ? vec3(0.0, 1.0, 0.0).z : _1584.z);
        highp vec3 _1589 = normalize(_1585 - (_1576 * dot(_1576, _1585)));
        highp vec4 _1611 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1552 * mat3(cross(_1576, _1589), _1589, _1576)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1612 = _1611.xyz;
        highp vec3 _1617 = mix(_1612, _1612 * _921, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1618 = vec4(_1617.x, _1617.y, _1617.z, _1611.w);
        highp float _1619 = _1611.w;
        highp float _1623 = mix(_1619, _1619 * _922, _Globals._MatCap2ndShadowMask);
        _1618.w = _1623;
        highp vec4 _1633;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1632 = _1618;
            _1632.w = _1623 * _1507.w;
            _1633 = _1632;
        }
        else
        {
            _1633 = _1618;
        }
        highp vec4 _1647 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _435 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1656 = mix(_1633.xyz, _1633.xyz * _685.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1663 = _1507.xyz + _1656;
        highp vec3 _1664 = _1507.xyz * _1656;
        bvec3 _1666 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1667 = vec3(_1666.x ? _1656.x : _288.x, _1666.y ? _1656.y : _288.y, _1666.z ? _1656.z : _288.z);
        bvec3 _1669 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1677;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1675 = (-_1507.xyz) * _1656 + _1663;
            bvec3 _2151 = isnan(_1675);
            bvec3 _2152 = isnan(_1507.xyz);
            highp vec3 _2153 = max(_1675, _1507.xyz);
            highp vec3 _2154 = vec3(_2151.x ? _1507.xyz.x : _2153.x, _2151.y ? _1507.xyz.y : _2153.y, _2151.z ? _1507.xyz.z : _2153.z);
            _1677 = vec3(_2152.x ? _1675.x : _2154.x, _2152.y ? _1675.y : _2154.y, _2152.z ? _1675.z : _2154.z);
        }
        else
        {
            _1677 = vec3(_1669.x ? _1663.x : _1667.x, _1669.y ? _1663.y : _1667.y, _1669.z ? _1663.z : _1667.z);
        }
        bvec3 _1679 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1681 = mix(_1507.xyz, vec3(_1679.x ? _1664.x : _1677.x, _1679.y ? _1664.y : _1677.y, _1679.z ? _1664.z : _1677.z), _1647.xyz * (_Globals._MatCap2ndBlend * ((_323 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _1633.w)));
        _1683 = vec4(_1681.x, _1681.y, _1681.z, _1507.w);
    }
    else
    {
        _1683 = _1507;
    }
    highp vec4 _1839;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1702 = mix(_550, _547, vec3(_Globals._RimNormalStrength));
        highp float _1706 = dot(_375, _1702) * 0.5 + 0.5;
        highp float _1729 = (_323 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1702, _391)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1733 = mix(_1729, _1729 * clamp((_1706 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1734 = _1729 * clamp(((1.0 - _1706) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1744 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1753 = clamp((_1733 - _1744) / clamp(fwidth(_1733) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1744), 0.0, 1.0), 0.0, 1.0);
        highp float _1760 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1770 = clamp((_1734 * _Globals._RimDirStrength + (-_1760)) / clamp(fwidth(_1734 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1760), 0.0, 1.0), 0.0, 1.0);
        highp float _1774 = mix(_1753, _1753 * _922, _Globals._RimShadowMask);
        highp float _1776 = mix(_1770, _1770 * _922, _Globals._RimShadowMask);
        highp float _1785;
        highp float _1786;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _1785 = _1776 * _1683.w;
            _1786 = _1774 * _1683.w;
        }
        else
        {
            _1785 = _1776;
            _1786 = _1774;
        }
        highp vec3 _1792 = vec3(1.0 - _Globals._RimEnableLighting) + (_921 * _Globals._RimEnableLighting);
        highp vec3 _1794 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _685.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1795 = _1794 * _1792;
        highp vec3 _1801 = _1794 * _1792 + _1683.xyz;
        highp vec3 _1802 = _1683.xyz * _1795;
        bvec3 _1804 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1805 = vec3(_1804.x ? _1795.x : _288.x, _1804.y ? _1795.y : _288.y, _1804.z ? _1795.z : _288.z);
        bvec3 _1807 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1809 = _Globals._RimBlendMode == 2u;
        highp vec3 _1815;
        if (_1809)
        {
            highp vec3 _1813 = (-_1683.xyz) * _1795 + _1801;
            bvec3 _2156 = isnan(_1813);
            bvec3 _2157 = isnan(_1683.xyz);
            highp vec3 _2158 = max(_1813, _1683.xyz);
            highp vec3 _2159 = vec3(_2156.x ? _1683.xyz.x : _2158.x, _2156.y ? _1683.xyz.y : _2158.y, _2156.z ? _1683.xyz.z : _2158.z);
            _1815 = vec3(_2157.x ? _1813.x : _2159.x, _2157.y ? _1813.y : _2159.y, _2157.z ? _1813.z : _2159.z);
        }
        else
        {
            _1815 = vec3(_1807.x ? _1801.x : _1805.x, _1807.y ? _1801.y : _1805.y, _1807.z ? _1801.z : _1805.z);
        }
        bvec3 _1817 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1820 = mix(_1683.xyz, vec3(_1817.x ? _1802.x : _1815.x, _1817.y ? _1802.y : _1815.y, _1817.z ? _1802.z : _1815.z), vec3(_1786 * _Globals._RimColor.w)).xyz;
        highp vec3 _1822 = _Globals._RimIndirColor.xyz * _1792;
        highp vec3 _1826 = _Globals._RimIndirColor.xyz * _1792 + _1820;
        highp vec3 _1827 = _1820 * _1822;
        highp vec3 _1828 = vec3(_1804.x ? _1822.x : _288.x, _1804.y ? _1822.y : _288.y, _1804.z ? _1822.z : _288.z);
        highp vec3 _1835;
        if (_1809)
        {
            highp vec3 _1833 = (-_1820) * _1822 + _1826;
            bvec3 _2161 = isnan(_1833);
            bvec3 _2162 = isnan(_1820);
            highp vec3 _2163 = max(_1833, _1820);
            highp vec3 _2164 = vec3(_2161.x ? _1820.x : _2163.x, _2161.y ? _1820.y : _2163.y, _2161.z ? _1820.z : _2163.z);
            _1835 = vec3(_2162.x ? _1833.x : _2164.x, _2162.y ? _1833.y : _2164.y, _2162.z ? _1833.z : _2164.z);
        }
        else
        {
            _1835 = vec3(_1807.x ? _1826.x : _1828.x, _1807.y ? _1826.y : _1828.y, _1807.z ? _1826.z : _1828.z);
        }
        highp vec3 _1837 = mix(_1820, vec3(_1817.x ? _1827.x : _1835.x, _1817.y ? _1827.y : _1835.y, _1817.z ? _1827.z : _1835.z), vec3(_1785 * _Globals._RimIndirColor.w));
        _1839 = vec4(_1837.x, _1837.y, _1837.z, _1683.w);
    }
    else
    {
        _1839 = _1683;
    }
    highp vec4 _1906;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1853 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _379, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1867 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1873;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1873 = roundEven(_1867);
        }
        else
        {
            _1873 = _1867;
        }
        highp vec3 _1882 = mix(_1853, _1853 * _685.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1886 = _1839.xyz + _1882;
        highp vec3 _1887 = _1839.xyz * _1882;
        bvec3 _1889 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1890 = vec3(_1889.x ? _1882.x : _288.x, _1889.y ? _1882.y : _288.y, _1889.z ? _1882.z : _288.z);
        bvec3 _1892 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1900;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1898 = (-_1839.xyz) * _1882 + _1886;
            bvec3 _2166 = isnan(_1898);
            bvec3 _2167 = isnan(_1839.xyz);
            highp vec3 _2168 = max(_1898, _1839.xyz);
            highp vec3 _2169 = vec3(_2166.x ? _1839.xyz.x : _2168.x, _2166.y ? _1839.xyz.y : _2168.y, _2166.z ? _1839.xyz.z : _2168.z);
            _1900 = vec3(_2167.x ? _1898.x : _2169.x, _2167.y ? _1898.y : _2169.y, _2167.z ? _1898.z : _2169.z);
        }
        else
        {
            _1900 = vec3(_1892.x ? _1886.x : _1890.x, _1892.y ? _1886.y : _1890.y, _1892.z ? _1886.z : _1890.z);
        }
        bvec3 _1902 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1904 = mix(_1839.xyz, vec3(_1902.x ? _1887.x : _1900.x, _1902.y ? _1887.y : _1900.y, _1902.z ? _1887.z : _1900.z), vec3(((_Globals._EmissionBlend * mix(1.0, _1873, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _1839.w));
        _1906 = vec4(_1904.x, _1904.y, _1904.z, _1839.w);
    }
    else
    {
        _1906 = _1839;
    }
    highp vec4 _1973;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1920 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _379, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1934 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1940;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1940 = roundEven(_1934);
        }
        else
        {
            _1940 = _1934;
        }
        highp vec3 _1949 = mix(_1920, _1920 * _685.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1953 = _1906.xyz + _1949;
        highp vec3 _1954 = _1906.xyz * _1949;
        bvec3 _1956 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1957 = vec3(_1956.x ? _1949.x : _288.x, _1956.y ? _1949.y : _288.y, _1956.z ? _1949.z : _288.z);
        bvec3 _1959 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1967;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1965 = (-_1906.xyz) * _1949 + _1953;
            bvec3 _2171 = isnan(_1965);
            bvec3 _2172 = isnan(_1906.xyz);
            highp vec3 _2173 = max(_1965, _1906.xyz);
            highp vec3 _2174 = vec3(_2171.x ? _1906.xyz.x : _2173.x, _2171.y ? _1906.xyz.y : _2173.y, _2171.z ? _1906.xyz.z : _2173.z);
            _1967 = vec3(_2172.x ? _1965.x : _2174.x, _2172.y ? _1965.y : _2174.y, _2172.z ? _1965.z : _2174.z);
        }
        else
        {
            _1967 = vec3(_1959.x ? _1953.x : _1957.x, _1959.y ? _1953.y : _1957.y, _1959.z ? _1953.z : _1957.z);
        }
        bvec3 _1969 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1971 = mix(_1906.xyz, vec3(_1969.x ? _1954.x : _1967.x, _1969.y ? _1954.y : _1967.y, _1969.z ? _1954.z : _1967.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _1940, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _1906.w));
        _1973 = vec4(_1971.x, _1971.y, _1971.z, _1906.w);
    }
    else
    {
        _1973 = _1906;
    }
    bvec3 _1983 = bvec3(_323 < 0.0);
    highp vec3 _1984 = (_1973.xyz + ((_Globals._DissolveColor.xyz * _686) * _1973.w)).xyz;
    highp vec3 _1992 = mix(_1984, _Globals._BackfaceColor.xyz * _921, vec3(_Globals._BackfaceColor.w));
    highp float _2013 = (_323 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_383)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2027 = vec3(_1983.x ? _1992.x : _1984.x, _1983.y ? _1992.y : _1984.y, _1983.z ? _1992.z : _1984.z).xyz;
    highp vec3 _2038 = mix(_2027, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2027, vec3(pow(clamp(1.0 - abs(dot(_550, _391)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2013));
    highp vec4 _2039 = vec4(_2038.x, _2038.y, _2038.z, _1973.w);
    highp float _2041 = mix(_1973.w, _1973.w * _Globals._DistanceFadeColor.w, _2013);
    _2039.w = _2041;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2041, _2039, vec4(out_var_TEXCOORD9));
}
