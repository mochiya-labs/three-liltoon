#version 300 es
precision mediump float;
precision highp int;

vec3 _285;
vec3 _291;
float _292;
vec4 _293;

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
    int _311 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _320 = float(gl_FrontFacing ? 1 : (-1));
    highp float _371;
    do
    {
        highp vec3 _327 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _328 = _327.xy;
        highp float _334 = _327.z;
        if ((any(lessThan(_328, vec2(0.0))) || any(greaterThan(_328, vec2(1.0)))) || (_334 > 1.0))
        {
            _371 = 1.0;
            break;
        }
        highp float _344 = _334 + _Globals.uShadowBias;
        _371 = (((step(_344, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _328), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_344, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _328), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_344, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _328), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_344, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _328), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _372 = normalize(out_var_TEXCOORD7);
    highp vec3 _376 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _380 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _388 = normalize(_380);
    highp mat3 _397 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _402 = bvec2(_320 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _403 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _416 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _417 = sin(_416);
    highp float _418 = cos(_416);
    highp vec2 _419 = (vec2(_402.x ? _403.x : out_var_TEXCOORD0.xy.x, _402.y ? _403.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _420 = _419.x;
    highp float _421 = _419.y;
    highp vec2 _432 = (vec2(_420 * _418 + (-(_421 * _417)), _420 * _417 + (_421 * _418)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _433 = dFdx(_432);
    highp vec2 _434 = abs(_433);
    highp vec2 _435 = dFdy(_432);
    highp vec2 _436 = abs(_435);
    highp vec4 _440 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _432);
    highp vec3 _447 = pow(abs(_440.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _448 = _447.z;
    highp float _449 = _447.y;
    bvec4 _451 = bvec4(_448 > _449);
    highp vec4 _452 = vec4(_448, _449, -1.0, 0.666666686534881591796875);
    highp vec4 _453 = vec4(_449, _448, 0.0, -0.3333333432674407958984375);
    highp vec4 _454 = vec4(_451.x ? _452.x : _453.x, _451.y ? _452.y : _453.y, _451.z ? _452.z : _453.z, _451.w ? _452.w : _453.w);
    highp float _455 = _454.x;
    highp float _456 = _447.x;
    bvec4 _458 = bvec4(_455 > _456);
    highp vec4 _461 = vec4(_455, _454.yw, _456);
    highp vec4 _463 = vec4(_456, _454.yz, _455);
    highp vec4 _464 = vec4(_458.x ? _461.x : _463.x, _458.y ? _461.y : _463.y, _458.z ? _461.z : _463.z, _458.w ? _461.w : _463.w);
    highp float _469 = _464.x - (isnan(_464.y) ? _464.w : (isnan(_464.w) ? _464.y : min(_464.w, _464.y)));
    highp float _482 = clamp((_469 / (_464.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _485 = clamp(_464.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _499 = vec3((-_485) * _482 + _485) + (clamp(abs((fract(vec3(abs(_464.z + ((_464.w - _464.y) / (6.0 * _469 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_485 * _482));
    highp vec4 _503 = vec4(_499.x, _499.y, _499.z, _440.w) * _Globals._Color;
    highp vec3 _535;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _516 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _432 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _516.w = _516.w * _516.x;
        highp vec2 _527 = ((_516.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _528 = vec3(_527.x, _527.y, _291.z);
        highp vec2 _529 = _527.xy;
        _528.z = sqrt(1.0 - clamp(dot(_529, _529), 0.0, 1.0));
        _535 = _528;
    }
    else
    {
        _535 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _537 = normalize(_397 * _535);
    bvec3 _542 = bvec3(_320 < (_Globals._FlipNormal - 1.0));
    highp vec3 _543 = -_537;
    highp vec3 _544 = vec3(_542.x ? _543.x : _537.x, _542.y ? _543.y : _537.y, _542.z ? _543.z : _537.z);
    highp vec3 _547 = normalize(out_var_TEXCOORD4);
    highp vec4 _587;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _558 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _563;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _562 = _503;
            _562.w = _558;
            _563 = _562;
        }
        else
        {
            _563 = _503;
        }
        highp vec4 _570;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _569 = _563;
            _569.w = _563.w * _558;
            _570 = _569;
        }
        else
        {
            _570 = _563;
        }
        highp vec4 _578;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _577 = _570;
            _577.w = clamp(_570.w + _558, 0.0, 1.0);
            _578 = _577;
        }
        else
        {
            _578 = _570;
        }
        highp vec4 _586;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _585 = _578;
            _585.w = clamp(_578.w - _558, 0.0, 1.0);
            _586 = _585;
        }
        else
        {
            _586 = _578;
        }
        _587 = _586;
    }
    else
    {
        _587 = _503;
    }
    highp vec4 _682;
    highp float _683;
    if ((_311 & 1) != 0)
    {
        highp vec4 _591 = _587;
        _591.w = 1.0;
        highp vec2 _597 = roundEven(_Globals._DissolveParams.xy);
        highp float _598 = _597.x;
        highp vec4 _671;
        highp float _672;
        if (_598 != 0.0)
        {
            highp float _614;
            highp float _615;
            if (_598 == 1.0)
            {
                _614 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _615 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _614 = 0.0;
                _615 = 1.0;
            }
            highp float _646;
            highp float _647;
            if (_598 == 2.0)
            {
                highp vec2 _624 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _635 = (_597.y == 1.0) ? (vec2(_624.x * cos(_Globals._DissolvePos.w) + (-(_624.y * sin(_Globals._DissolvePos.w))), _292) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _646 = 1.0 - clamp(abs(_635 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _647 = _615 * float(_635 > _Globals._DissolveParams.z);
            }
            else
            {
                _646 = _614;
                _647 = _615;
            }
            highp float _668;
            highp float _669;
            if (_598 == 3.0)
            {
                highp float _657 = (_597.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _668 = 1.0 - clamp(abs(_657 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _669 = _647 * float(_657 > _Globals._DissolveParams.z);
            }
            else
            {
                _668 = _646;
                _669 = _647;
            }
            highp vec4 _670 = _591;
            _670.w = _669;
            _671 = _670;
            _672 = _668;
        }
        else
        {
            _671 = _591;
            _672 = 0.0;
        }
        highp vec4 _678;
        if ((_311 & 2) != 0)
        {
            highp vec4 _677 = _671;
            _677.w = 1.0 - _671.w;
            _678 = _677;
        }
        else
        {
            _678 = _671;
        }
        highp vec4 _681 = _678;
        _681.w = _678.w * _587.w;
        _682 = _681;
        _683 = _672;
    }
    else
    {
        _682 = _587;
        _683 = 0.0;
    }
    highp float _688 = fwidth(_682.w);
    highp float _692 = clamp(((_682.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _688 : (isnan(_688) ? 9.9999997473787516355514526367188e-05 : max(_688, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _693 = _682;
    _693.w = _692;
    if (_692 == 0.0)
    {
        discard;
    }
    highp vec4 _919;
    highp float _920;
    if (_Globals._UseShadow != 0u)
    {
        highp float _732 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _735 = clamp(_371 + distance(_372, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _740;
        _740.x = clamp(dot(_372, mix(_547, _544, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _735, _Globals._ShadowReceive);
        _740.y = clamp(dot(_372, mix(_547, _544, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _735, _Globals._Shadow2ndReceive);
        _740.z = clamp(dot(_372, mix(_547, _544, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _735, _Globals._Shadow3rdReceive);
        highp vec2 _761 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2039 = isnan(_434);
        bvec2 _2040 = isnan(_761);
        highp vec2 _2041 = max(_434, _761);
        highp vec2 _2042 = vec2(_2039.x ? _761.x : _2041.x, _2039.y ? _761.y : _2041.y);
        bvec2 _2044 = isnan(_436);
        bvec2 _2045 = isnan(_761);
        highp vec2 _2046 = max(_436, _761);
        highp vec2 _2047 = vec2(_2044.x ? _761.x : _2046.x, _2044.y ? _761.y : _2046.y);
        highp vec4 _765 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _432, vec2(_2040.x ? _434.x : _2042.x, _2040.y ? _434.y : _2042.y), vec2(_2045.x ? _436.x : _2047.x, _2045.y ? _436.y : _2047.y));
        highp vec4 _773;
        _773.x = clamp(_765.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _773.y = clamp(_765.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _773.z = clamp(_765.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _792 = _Globals._ShadowPostAO != 0u;
        bvec3 _793 = bvec3(_792);
        highp vec3 _796 = _740.xyz * _773.xyz;
        highp vec3 _797 = vec3(_793.x ? _740.xyz.x : _796.x, _793.y ? _740.xyz.y : _796.y, _793.z ? _740.xyz.z : _796.z);
        highp float _798 = _797.x;
        highp float _802 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _803 = clamp(_802, 0.0, 1.0);
        highp float _805 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _812 = _797.y;
        highp float _817 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _829 = clamp(_802 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _836 = _797.z;
        highp float _841 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _850 = vec4((_798 - _803) / clamp(fwidth(_798) * _732 + (_805 - _803), 0.0, 1.0), (_812 - _817) / clamp(fwidth(_812) * _732 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _817), 0.0, 1.0), (_836 - _841) / clamp(fwidth(_836) * _732 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _841), 0.0, 1.0), (_798 - _829) / clamp(fwidth(_798) * _732 + (_805 - _829), 0.0, 1.0));
        bvec4 _851 = bvec4(_792);
        highp vec4 _853 = _850 * _773.xyzx;
        highp vec4 _855 = clamp(vec4(_851.x ? _853.x : _850.x, _851.y ? _853.y : _850.y, _851.z ? _853.z : _850.z, _851.w ? _853.w : _850.w), vec4(0.0), vec4(1.0));
        highp float _860 = (_320 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _862 = _855.x * _860;
        highp vec3 _897 = mix(mix(_693.xyz * _Globals._ShadowColor.xyz, (_693.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_855.y * _860)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_693.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_855.z * _860)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _903 = _693.xyz * out_var_TEXCOORD6;
        highp vec3 _909 = mix(mix(_897, _897 * _693.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _693.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2049 = isnan(_909);
        bvec3 _2050 = isnan(_903);
        highp vec3 _2051 = min(_909, _903);
        highp vec3 _2052 = vec3(_2049.x ? _903.x : _2051.x, _2049.y ? _903.y : _2051.y, _2049.z ? _903.z : _2051.z);
        highp vec3 _917 = mix(mix(vec3(_2050.x ? _909.x : _2052.x, _2050.y ? _909.y : _2052.y, _2050.z ? _909.z : _2052.z), _903, _Globals._ShadowBorderColor.xyz * (_855.w * _860)), _903, vec3(mix(1.0, _862, _Globals._ShadowStrength)));
        _919 = vec4(_917.x, _917.y, _917.z, _693.w);
        _920 = _862;
    }
    else
    {
        highp vec3 _704 = _693.xyz * out_var_TEXCOORD6;
        _919 = vec4(_704.x, _704.y, _704.z, _693.w);
        _920 = 1.0;
    }
    highp vec3 _923 = vec3(_Globals._LightMaxLimit);
    bvec3 _2054 = isnan(out_var_TEXCOORD6);
    bvec3 _2055 = isnan(_923);
    highp vec3 _2056 = min(out_var_TEXCOORD6, _923);
    highp vec3 _2057 = vec3(_2054.x ? _923.x : _2056.x, _2054.y ? _923.y : _2056.y, _2054.z ? _923.z : _2056.z);
    highp vec3 _924 = vec3(_2055.x ? out_var_TEXCOORD6.x : _2057.x, _2055.y ? out_var_TEXCOORD6.y : _2057.y, _2055.z ? out_var_TEXCOORD6.z : _2057.z);
    highp float _925 = clamp(_920, 0.0, 1.0);
    highp vec3 _927 = _693.xyz * _Globals._LightMaxLimit;
    bvec3 _2059 = isnan(_919.xyz);
    bvec3 _2060 = isnan(_927);
    highp vec3 _2061 = min(_919.xyz, _927);
    highp vec3 _2062 = vec3(_2059.x ? _927.x : _2061.x, _2059.y ? _927.y : _2061.y, _2059.z ? _927.z : _2061.z);
    highp vec3 _928 = vec3(_2060.x ? _919.xyz.x : _2062.x, _2060.y ? _919.xyz.y : _2062.y, _2060.z ? _919.xyz.z : _2062.z);
    highp vec4 _975;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _945 = pow(clamp(1.0 - abs(dot(mix(_547, _544, vec3(_Globals._RimShadeNormalStrength)), _388)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _954 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _968 = _928.xyz;
        highp vec3 _973 = mix(_968, _968 * _Globals._RimShadeColor.xyz, vec3(clamp((_945 - _954) / clamp(fwidth(_945) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _954), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _975 = vec4(_973.x, _973.y, _973.z, _919.w);
    }
    else
    {
        _975 = vec4(_928.x, _928.y, _928.z, _919.w);
    }
    highp vec4 _1048;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _999 = dot(normalize(((-_388) * _Globals._BacklightViewStrength) + _372), mix(_547, _544, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1009;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1009 = _999 * clamp(_371 + distance(_372, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1009 = _999;
        }
        highp float _1018 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1046 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _693.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_320 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_388, _372) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1009 - _1018) / clamp(fwidth(_1009) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1018), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _924 + _975.xyz;
        _1048 = vec4(_1046.x, _1046.y, _1046.z, _975.w);
    }
    else
    {
        _1048 = _975;
    }
    highp vec4 _1320;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1063 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _432 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1065 = _Globals._Smoothness * _1063.x;
        highp vec3 _1068 = dFdx(_544);
        highp vec3 _1069 = abs(_1068);
        highp vec3 _1070 = dFdy(_544);
        highp vec3 _1071 = abs(_1070);
        highp float _1072 = dot(_1069, _1069);
        highp float _1073 = dot(_1071, _1071);
        highp float _1074 = isnan(_1073) ? _1072 : (isnan(_1072) ? _1073 : max(_1072, _1073));
        highp float _1077 = (_1074 / (_1074 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1080 = clamp(1.0 - (isnan(_1077) ? 0.0 : (isnan(0.0) ? _1077 : max(0.0, _1077))), 0.0, 1.0);
        highp float _1081 = isnan(_1080) ? _1065 : (isnan(_1065) ? _1080 : min(_1065, _1080));
        highp float _1082 = 1.0 - _1081;
        highp float _1083 = _1082 * _1082;
        highp vec4 _1093 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _432 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1095 = _Globals._Metallic * _1093.x;
        highp vec3 _1098 = _1048.xyz - (_1048.xyz * _1095);
        highp vec3 _1104 = mix(vec3(_Globals._Reflectance), _693.xyz, vec3(_1095));
        highp vec4 _1114 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _432 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1115 = _Globals._ReflectionColor * _1114;
        highp vec4 _1216;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1188;
            do
            {
                highp vec3 _1126 = mix(_547, _544, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1128 = normalize(_388 + _372);
                highp float _1130 = clamp(dot(_1126, _1128), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1139 = pow(_1130, 1.0 / _1083);
                    highp float _1146 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1188 = vec3(clamp((_1139 - _1146) / clamp(fwidth(_1139) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1146), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1158 = clamp(dot(_1126, _388), 0.0, 1.0);
                highp float _1160 = clamp(dot(_1126, _372), 0.0, 1.0);
                highp float _1163 = isnan(0.00200000009499490261077880859375) ? _1083 : (isnan(_1083) ? 0.00200000009499490261077880859375 : max(_1083, 0.00200000009499490261077880859375));
                highp float _1164 = 1.0 - _1163;
                highp float _1168 = _1163 * _1163;
                highp float _1171 = (_1130 * _1168 + (-_1130)) * _1130 + 1.0;
                highp float _1179 = 1.0 - clamp(dot(_372, _1128), 0.0, 1.0);
                _1188 = (_1104 + ((((((vec3(1.0) - _1104) * _1179) * _1179) * _1179) * _1179) * _1179)) * (((0.5 / ((_1160 * (_1158 * _1164 + _1163) + (_1158 * (_1160 * _1164 + _1163))) + 9.9999997473787516355514526367188e-06)) * (_1168 / (_1171 * _1171 + 1.0000000116860974230803549289703e-07))) * _1160);
                break;
            } while(false);
            highp vec3 _1189 = _1098.xyz;
            highp vec3 _1190 = _1115.xyz;
            highp vec3 _1191 = _1190 * _924;
            highp vec3 _1196 = _1190 * _924 + _1189;
            highp vec3 _1197 = _1189 * _1191;
            bvec3 _1199 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1200 = vec3(_1199.x ? _1191.x : _285.x, _1199.y ? _1191.y : _285.y, _1199.z ? _1191.z : _285.z);
            bvec3 _1202 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1210;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1208 = (-_1189) * _1191 + _1196;
                bvec3 _2084 = isnan(_1208);
                bvec3 _2085 = isnan(_1189);
                highp vec3 _2086 = max(_1208, _1189);
                highp vec3 _2087 = vec3(_2084.x ? _1189.x : _2086.x, _2084.y ? _1189.y : _2086.y, _2084.z ? _1189.z : _2086.z);
                _1210 = vec3(_2085.x ? _1208.x : _2087.x, _2085.y ? _1208.y : _2087.y, _2085.z ? _1208.z : _2087.z);
            }
            else
            {
                _1210 = vec3(_1202.x ? _1196.x : _1200.x, _1202.y ? _1196.y : _1200.y, _1202.z ? _1196.z : _1200.z);
            }
            bvec3 _1212 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1214 = mix(_1189, vec3(_1212.x ? _1197.x : _1210.x, _1212.y ? _1197.y : _1210.y, _1212.z ? _1197.z : _1210.z), _1188 * _1115.w);
            _1216 = vec4(_1214.x, _1214.y, _1214.z, _1048.w);
        }
        else
        {
            _1216 = vec4(_1098.x, _1098.y, _1098.z, _1048.w);
        }
        highp vec4 _1319;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1238 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1245 = reflect(-_388, mix(_547, _544, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1248 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1245, _1082 * ((-4.19999980926513671875) * _1082 + 10.19999980926513671875));
            highp vec3 _1268 = ((_1248.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1248.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _924, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1274 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1245, _1082 * 8.0).xyz * 1.0;
            highp float _1285 = 1.0 - clamp(dot(_544, _388), 0.0, 1.0);
            highp vec3 _1294 = _1115.xyz;
            highp vec3 _1299 = _1216.xyz + _1294;
            highp vec3 _1300 = _1216.xyz * _1294;
            bvec3 _1302 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1303 = vec3(_1302.x ? _1294.x : _285.x, _1302.y ? _1294.y : _285.y, _1302.z ? _1294.z : _285.z);
            bvec3 _1305 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1313;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1311 = (-_1216.xyz) * _1294 + _1299;
                bvec3 _2089 = isnan(_1311);
                bvec3 _2090 = isnan(_1216.xyz);
                highp vec3 _2091 = max(_1311, _1216.xyz);
                highp vec3 _2092 = vec3(_2089.x ? _1216.xyz.x : _2091.x, _2089.y ? _1216.xyz.y : _2091.y, _2089.z ? _1216.xyz.z : _2091.z);
                _1313 = vec3(_2090.x ? _1311.x : _2092.x, _2090.y ? _1311.y : _2092.y, _2090.z ? _1311.z : _2092.z);
            }
            else
            {
                _1313 = vec3(_1305.x ? _1299.x : _1303.x, _1305.y ? _1299.y : _1303.y, _1305.z ? _1299.z : _1303.z);
            }
            bvec3 _1315 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1317 = mix(_1216.xyz, vec3(_1315.x ? _1300.x : _1313.x, _1315.y ? _1300.y : _1313.y, _1315.z ? _1300.z : _1313.z), ((vec3(_1238.x ? _1268.x : _1274.x, _1238.y ? _1268.y : _1274.y, _1238.z ? _1268.z : _1274.z) * (1.0 / (_1083 * _1083 + 1.0))) * mix(_1104, vec3(clamp(_1081 + (1.0 - ((-_1095) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1285 * _1285) * _1285) * _1285) * _1285))) * _1115.w);
            _1319 = vec4(_1317.x, _1317.y, _1317.z, _1216.w);
        }
        else
        {
            _1319 = _1216;
        }
        _1320 = _1319;
    }
    else
    {
        _1320 = _1048;
    }
    highp vec4 _1485;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1365;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1342 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _432 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1342.w = _1342.w * _1342.x;
            highp vec2 _1353 = ((_1342.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1354 = vec3(_1353.x, _1353.y, _291.z);
            highp vec2 _1355 = _1353.xy;
            _1354.z = sqrt(1.0 - clamp(dot(_1355, _1355), 0.0, 1.0));
            highp vec3 _1362 = normalize(_397 * _1354);
            highp vec3 _1363 = -_1362;
            _1365 = vec3(_542.x ? _1363.x : _1362.x, _542.y ? _1363.y : _1362.y, _542.z ? _1363.z : _1362.z);
        }
        else
        {
            _1365 = mix(_547, _544, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1382 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1389 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1390 = vec3(_1382.x ? _388.x : _1389.x, _1382.y ? _388.y : _1389.y, _1382.z ? _388.z : _1389.z);
        bvec3 _1391 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1398 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1399 = vec3(_1391.x ? vec3(0.0, 1.0, 0.0).x : _1398.x, _1391.y ? vec3(0.0, 1.0, 0.0).y : _1398.y, _1391.z ? vec3(0.0, 1.0, 0.0).z : _1398.z);
        highp vec3 _1403 = normalize(_1399 - (_1390 * dot(_1390, _1399)));
        highp vec4 _1425 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1365) * mat3(cross(_1390, _1403), _1403, _1390)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1449 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _432 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1451 = mix(_1425.xyz, _1425.xyz * _924, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1458 = mix(_1451, _1451 * _693.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1465 = _1320.xyz + _1458;
        highp vec3 _1466 = _1320.xyz * _1458;
        bvec3 _1468 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1469 = vec3(_1468.x ? _1458.x : _285.x, _1468.y ? _1458.y : _285.y, _1468.z ? _1458.z : _285.z);
        bvec3 _1471 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1479;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1477 = (-_1320.xyz) * _1458 + _1465;
            bvec3 _2094 = isnan(_1477);
            bvec3 _2095 = isnan(_1320.xyz);
            highp vec3 _2096 = max(_1477, _1320.xyz);
            highp vec3 _2097 = vec3(_2094.x ? _1320.xyz.x : _2096.x, _2094.y ? _1320.xyz.y : _2096.y, _2094.z ? _1320.xyz.z : _2096.z);
            _1479 = vec3(_2095.x ? _1477.x : _2097.x, _2095.y ? _1477.y : _2097.y, _2095.z ? _1477.z : _2097.z);
        }
        else
        {
            _1479 = vec3(_1471.x ? _1465.x : _1469.x, _1471.y ? _1465.y : _1469.y, _1471.z ? _1465.z : _1469.z);
        }
        bvec3 _1481 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1483 = mix(_1320.xyz, vec3(_1481.x ? _1466.x : _1479.x, _1481.y ? _1466.y : _1479.y, _1481.z ? _1466.z : _1479.z), _1449.xyz * (_Globals._MatCapBlend * ((_320 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1425.w, _1425.w * _925, _Globals._MatCapShadowMask))));
        _1485 = vec4(_1483.x, _1483.y, _1483.z, _1320.w);
    }
    else
    {
        _1485 = _1320;
    }
    highp vec4 _1649;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1530;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1507 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _432 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1507.w = _1507.w * _1507.x;
            highp vec2 _1518 = ((_1507.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1519 = vec3(_1518.x, _1518.y, _291.z);
            highp vec2 _1520 = _1518.xy;
            _1519.z = sqrt(1.0 - clamp(dot(_1520, _1520), 0.0, 1.0));
            highp vec3 _1527 = normalize(_397 * _1519);
            highp vec3 _1528 = -_1527;
            _1530 = vec3(_542.x ? _1528.x : _1527.x, _542.y ? _1528.y : _1527.y, _542.z ? _1528.z : _1527.z);
        }
        else
        {
            _1530 = mix(_547, _544, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1546 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1553 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1554 = vec3(_1546.x ? _388.x : _1553.x, _1546.y ? _388.y : _1553.y, _1546.z ? _388.z : _1553.z);
        bvec3 _1555 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1562 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1563 = vec3(_1555.x ? vec3(0.0, 1.0, 0.0).x : _1562.x, _1555.y ? vec3(0.0, 1.0, 0.0).y : _1562.y, _1555.z ? vec3(0.0, 1.0, 0.0).z : _1562.z);
        highp vec3 _1567 = normalize(_1563 - (_1554 * dot(_1554, _1563)));
        highp vec4 _1589 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1530 * mat3(cross(_1554, _1567), _1567, _1554)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1590 = _1589.xyz;
        highp float _1596 = _1589.w;
        highp vec4 _1613 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _432 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1615 = mix(_1590, _1590 * _924, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1622 = mix(_1615, _1615 * _693.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1629 = _1485.xyz + _1622;
        highp vec3 _1630 = _1485.xyz * _1622;
        bvec3 _1632 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1633 = vec3(_1632.x ? _1622.x : _285.x, _1632.y ? _1622.y : _285.y, _1632.z ? _1622.z : _285.z);
        bvec3 _1635 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1643;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1641 = (-_1485.xyz) * _1622 + _1629;
            bvec3 _2099 = isnan(_1641);
            bvec3 _2100 = isnan(_1485.xyz);
            highp vec3 _2101 = max(_1641, _1485.xyz);
            highp vec3 _2102 = vec3(_2099.x ? _1485.xyz.x : _2101.x, _2099.y ? _1485.xyz.y : _2101.y, _2099.z ? _1485.xyz.z : _2101.z);
            _1643 = vec3(_2100.x ? _1641.x : _2102.x, _2100.y ? _1641.y : _2102.y, _2100.z ? _1641.z : _2102.z);
        }
        else
        {
            _1643 = vec3(_1635.x ? _1629.x : _1633.x, _1635.y ? _1629.y : _1633.y, _1635.z ? _1629.z : _1633.z);
        }
        bvec3 _1645 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1647 = mix(_1485.xyz, vec3(_1645.x ? _1630.x : _1643.x, _1645.y ? _1630.y : _1643.y, _1645.z ? _1630.z : _1643.z), _1613.xyz * (_Globals._MatCap2ndBlend * ((_320 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1596, _1596 * _925, _Globals._MatCap2ndShadowMask))));
        _1649 = vec4(_1647.x, _1647.y, _1647.z, _1485.w);
    }
    else
    {
        _1649 = _1485;
    }
    highp vec4 _1795;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1668 = mix(_547, _544, vec3(_Globals._RimNormalStrength));
        highp float _1672 = dot(_372, _1668) * 0.5 + 0.5;
        highp float _1695 = (_320 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1668, _388)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1699 = mix(_1695, _1695 * clamp((_1672 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1700 = _1695 * clamp(((1.0 - _1672) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1710 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1719 = clamp((_1699 - _1710) / clamp(fwidth(_1699) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1710), 0.0, 1.0), 0.0, 1.0);
        highp float _1726 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1736 = clamp((_1700 * _Globals._RimDirStrength + (-_1726)) / clamp(fwidth(_1700 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1726), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1748 = vec3(1.0 - _Globals._RimEnableLighting) + (_924 * _Globals._RimEnableLighting);
        highp vec3 _1750 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _693.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1751 = _1750 * _1748;
        highp vec3 _1757 = _1750 * _1748 + _1649.xyz;
        highp vec3 _1758 = _1649.xyz * _1751;
        bvec3 _1760 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1761 = vec3(_1760.x ? _1751.x : _285.x, _1760.y ? _1751.y : _285.y, _1760.z ? _1751.z : _285.z);
        bvec3 _1763 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1765 = _Globals._RimBlendMode == 2u;
        highp vec3 _1771;
        if (_1765)
        {
            highp vec3 _1769 = (-_1649.xyz) * _1751 + _1757;
            bvec3 _2104 = isnan(_1769);
            bvec3 _2105 = isnan(_1649.xyz);
            highp vec3 _2106 = max(_1769, _1649.xyz);
            highp vec3 _2107 = vec3(_2104.x ? _1649.xyz.x : _2106.x, _2104.y ? _1649.xyz.y : _2106.y, _2104.z ? _1649.xyz.z : _2106.z);
            _1771 = vec3(_2105.x ? _1769.x : _2107.x, _2105.y ? _1769.y : _2107.y, _2105.z ? _1769.z : _2107.z);
        }
        else
        {
            _1771 = vec3(_1763.x ? _1757.x : _1761.x, _1763.y ? _1757.y : _1761.y, _1763.z ? _1757.z : _1761.z);
        }
        bvec3 _1773 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1776 = mix(_1649.xyz, vec3(_1773.x ? _1758.x : _1771.x, _1773.y ? _1758.y : _1771.y, _1773.z ? _1758.z : _1771.z), vec3(mix(_1719, _1719 * _925, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1778 = _Globals._RimIndirColor.xyz * _1748;
        highp vec3 _1782 = _Globals._RimIndirColor.xyz * _1748 + _1776;
        highp vec3 _1783 = _1776 * _1778;
        highp vec3 _1784 = vec3(_1760.x ? _1778.x : _285.x, _1760.y ? _1778.y : _285.y, _1760.z ? _1778.z : _285.z);
        highp vec3 _1791;
        if (_1765)
        {
            highp vec3 _1789 = (-_1776) * _1778 + _1782;
            bvec3 _2109 = isnan(_1789);
            bvec3 _2110 = isnan(_1776);
            highp vec3 _2111 = max(_1789, _1776);
            highp vec3 _2112 = vec3(_2109.x ? _1776.x : _2111.x, _2109.y ? _1776.y : _2111.y, _2109.z ? _1776.z : _2111.z);
            _1791 = vec3(_2110.x ? _1789.x : _2112.x, _2110.y ? _1789.y : _2112.y, _2110.z ? _1789.z : _2112.z);
        }
        else
        {
            _1791 = vec3(_1763.x ? _1782.x : _1784.x, _1763.y ? _1782.y : _1784.y, _1763.z ? _1782.z : _1784.z);
        }
        highp vec3 _1793 = mix(_1776, vec3(_1773.x ? _1783.x : _1791.x, _1773.y ? _1783.y : _1791.y, _1773.z ? _1783.z : _1791.z), vec3(mix(_1736, _1736 * _925, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1795 = vec4(_1793.x, _1793.y, _1793.z, _1649.w);
    }
    else
    {
        _1795 = _1649;
    }
    highp vec4 _1860;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1809 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _376, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1823 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1829;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1829 = roundEven(_1823);
        }
        else
        {
            _1829 = _1823;
        }
        highp vec3 _1836 = mix(_1809, _1809 * _693.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1840 = _1795.xyz + _1836;
        highp vec3 _1841 = _1795.xyz * _1836;
        bvec3 _1843 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1844 = vec3(_1843.x ? _1836.x : _285.x, _1843.y ? _1836.y : _285.y, _1843.z ? _1836.z : _285.z);
        bvec3 _1846 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1854;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1852 = (-_1795.xyz) * _1836 + _1840;
            bvec3 _2114 = isnan(_1852);
            bvec3 _2115 = isnan(_1795.xyz);
            highp vec3 _2116 = max(_1852, _1795.xyz);
            highp vec3 _2117 = vec3(_2114.x ? _1795.xyz.x : _2116.x, _2114.y ? _1795.xyz.y : _2116.y, _2114.z ? _1795.xyz.z : _2116.z);
            _1854 = vec3(_2115.x ? _1852.x : _2117.x, _2115.y ? _1852.y : _2117.y, _2115.z ? _1852.z : _2117.z);
        }
        else
        {
            _1854 = vec3(_1846.x ? _1840.x : _1844.x, _1846.y ? _1840.y : _1844.y, _1846.z ? _1840.z : _1844.z);
        }
        bvec3 _1856 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1858 = mix(_1795.xyz, vec3(_1856.x ? _1841.x : _1854.x, _1856.y ? _1841.y : _1854.y, _1856.z ? _1841.z : _1854.z), vec3((_Globals._EmissionBlend * mix(1.0, _1829, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1860 = vec4(_1858.x, _1858.y, _1858.z, _1795.w);
    }
    else
    {
        _1860 = _1795;
    }
    highp vec4 _1925;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1874 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _376, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1888 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1894;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1894 = roundEven(_1888);
        }
        else
        {
            _1894 = _1888;
        }
        highp vec3 _1901 = mix(_1874, _1874 * _693.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1905 = _1860.xyz + _1901;
        highp vec3 _1906 = _1860.xyz * _1901;
        bvec3 _1908 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1909 = vec3(_1908.x ? _1901.x : _285.x, _1908.y ? _1901.y : _285.y, _1908.z ? _1901.z : _285.z);
        bvec3 _1911 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1919;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1917 = (-_1860.xyz) * _1901 + _1905;
            bvec3 _2119 = isnan(_1917);
            bvec3 _2120 = isnan(_1860.xyz);
            highp vec3 _2121 = max(_1917, _1860.xyz);
            highp vec3 _2122 = vec3(_2119.x ? _1860.xyz.x : _2121.x, _2119.y ? _1860.xyz.y : _2121.y, _2119.z ? _1860.xyz.z : _2121.z);
            _1919 = vec3(_2120.x ? _1917.x : _2122.x, _2120.y ? _1917.y : _2122.y, _2120.z ? _1917.z : _2122.z);
        }
        else
        {
            _1919 = vec3(_1911.x ? _1905.x : _1909.x, _1911.y ? _1905.y : _1909.y, _1911.z ? _1905.z : _1909.z);
        }
        bvec3 _1921 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1923 = mix(_1860.xyz, vec3(_1921.x ? _1906.x : _1919.x, _1921.y ? _1906.y : _1919.y, _1921.z ? _1906.z : _1919.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1894, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1925 = vec4(_1923.x, _1923.y, _1923.z, _1860.w);
    }
    else
    {
        _1925 = _1860;
    }
    bvec3 _1933 = bvec3(_320 < 0.0);
    highp vec3 _1934 = (_1925.xyz + (_Globals._DissolveColor.xyz * _683)).xyz;
    highp vec3 _1942 = mix(_1934, _Globals._BackfaceColor.xyz * _924, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1977 = vec3(_1933.x ? _1942.x : _1934.x, _1933.y ? _1942.y : _1934.y, _1933.z ? _1942.z : _1934.z).xyz;
    highp vec3 _1985 = mix(_1977, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1977, vec3(pow(clamp(1.0 - abs(dot(_547, _388)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_320 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_380)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1985.x, _1985.y, _1985.z, _1925.w), vec4(out_var_TEXCOORD9));
}
