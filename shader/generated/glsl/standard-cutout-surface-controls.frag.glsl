#version 300 es
precision mediump float;
precision highp int;

vec3 _279;
vec3 _285;
float _286;

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
    int _304 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _313 = float(gl_FrontFacing ? 1 : (-1));
    highp float _364;
    do
    {
        highp vec3 _320 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _321 = _320.xy;
        highp float _327 = _320.z;
        if ((any(lessThan(_321, vec2(0.0))) || any(greaterThan(_321, vec2(1.0)))) || (_327 > 1.0))
        {
            _364 = 1.0;
            break;
        }
        highp float _337 = _327 + _Globals.uShadowBias;
        _364 = (((step(_337, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _321), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_337, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _321), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_337, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _321), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_337, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _321), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _365 = normalize(out_var_TEXCOORD7);
    highp vec3 _369 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _373 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _381 = normalize(_373);
    highp mat3 _390 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _395 = bvec2(_313 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _396 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _409 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _410 = sin(_409);
    highp float _411 = cos(_409);
    highp vec2 _412 = (vec2(_395.x ? _396.x : out_var_TEXCOORD0.xy.x, _395.y ? _396.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _413 = _412.x;
    highp float _414 = _412.y;
    highp vec2 _425 = (vec2(_413 * _411 + (-(_414 * _410)), _413 * _410 + (_414 * _411)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _429 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _425);
    highp vec3 _436 = pow(abs(_429.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _437 = _436.z;
    highp float _438 = _436.y;
    bvec4 _440 = bvec4(_437 > _438);
    highp vec4 _441 = vec4(_437, _438, -1.0, 0.666666686534881591796875);
    highp vec4 _442 = vec4(_438, _437, 0.0, -0.3333333432674407958984375);
    highp vec4 _443 = vec4(_440.x ? _441.x : _442.x, _440.y ? _441.y : _442.y, _440.z ? _441.z : _442.z, _440.w ? _441.w : _442.w);
    highp float _444 = _443.x;
    highp float _445 = _436.x;
    bvec4 _447 = bvec4(_444 > _445);
    highp vec4 _450 = vec4(_444, _443.yw, _445);
    highp vec4 _452 = vec4(_445, _443.yz, _444);
    highp vec4 _453 = vec4(_447.x ? _450.x : _452.x, _447.y ? _450.y : _452.y, _447.z ? _450.z : _452.z, _447.w ? _450.w : _452.w);
    highp float _458 = _453.x - (isnan(_453.y) ? _453.w : (isnan(_453.w) ? _453.y : min(_453.w, _453.y)));
    highp float _471 = clamp((_458 / (_453.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _474 = clamp(_453.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _488 = vec3((-_474) * _471 + _474) + (clamp(abs((fract(vec3(abs(_453.z + ((_453.w - _453.y) / (6.0 * _458 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_474 * _471));
    highp vec4 _492 = vec4(_488.x, _488.y, _488.z, _429.w) * _Globals._Color;
    highp vec3 _524;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _505 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _425 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _505.w = _505.w * _505.x;
        highp vec2 _516 = ((_505.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _517 = vec3(_516.x, _516.y, _285.z);
        highp vec2 _518 = _516.xy;
        _517.z = sqrt(1.0 - clamp(dot(_518, _518), 0.0, 1.0));
        _524 = _517;
    }
    else
    {
        _524 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _526 = normalize(_390 * _524);
    bvec3 _531 = bvec3(_313 < (_Globals._FlipNormal - 1.0));
    highp vec3 _532 = -_526;
    highp vec3 _533 = vec3(_531.x ? _532.x : _526.x, _531.y ? _532.y : _526.y, _531.z ? _532.z : _526.z);
    highp vec3 _536 = normalize(out_var_TEXCOORD4);
    highp vec4 _576;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _547 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _552;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _551 = _492;
            _551.w = _547;
            _552 = _551;
        }
        else
        {
            _552 = _492;
        }
        highp vec4 _559;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _558 = _552;
            _558.w = _552.w * _547;
            _559 = _558;
        }
        else
        {
            _559 = _552;
        }
        highp vec4 _567;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _566 = _559;
            _566.w = clamp(_559.w + _547, 0.0, 1.0);
            _567 = _566;
        }
        else
        {
            _567 = _559;
        }
        highp vec4 _575;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _574 = _567;
            _574.w = clamp(_567.w - _547, 0.0, 1.0);
            _575 = _574;
        }
        else
        {
            _575 = _567;
        }
        _576 = _575;
    }
    else
    {
        _576 = _492;
    }
    highp vec4 _671;
    highp float _672;
    if ((_304 & 1) != 0)
    {
        highp vec4 _580 = _576;
        _580.w = 1.0;
        highp vec2 _586 = roundEven(_Globals._DissolveParams.xy);
        highp float _587 = _586.x;
        highp vec4 _660;
        highp float _661;
        if (_587 != 0.0)
        {
            highp float _603;
            highp float _604;
            if (_587 == 1.0)
            {
                _603 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _604 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _603 = 0.0;
                _604 = 1.0;
            }
            highp float _635;
            highp float _636;
            if (_587 == 2.0)
            {
                highp vec2 _613 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _624 = (_586.y == 1.0) ? (vec2(_613.x * cos(_Globals._DissolvePos.w) + (-(_613.y * sin(_Globals._DissolvePos.w))), _286) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _635 = 1.0 - clamp(abs(_624 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _636 = _604 * float(_624 > _Globals._DissolveParams.z);
            }
            else
            {
                _635 = _603;
                _636 = _604;
            }
            highp float _657;
            highp float _658;
            if (_587 == 3.0)
            {
                highp float _646 = (_586.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _657 = 1.0 - clamp(abs(_646 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _658 = _636 * float(_646 > _Globals._DissolveParams.z);
            }
            else
            {
                _657 = _635;
                _658 = _636;
            }
            highp vec4 _659 = _580;
            _659.w = _658;
            _660 = _659;
            _661 = _657;
        }
        else
        {
            _660 = _580;
            _661 = 0.0;
        }
        highp vec4 _667;
        if ((_304 & 2) != 0)
        {
            highp vec4 _666 = _660;
            _666.w = 1.0 - _660.w;
            _667 = _666;
        }
        else
        {
            _667 = _660;
        }
        highp vec4 _670 = _667;
        _670.w = _667.w * _576.w;
        _671 = _670;
        _672 = _661;
    }
    else
    {
        _671 = _576;
        _672 = 0.0;
    }
    highp float _677 = fwidth(_671.w);
    highp float _681 = clamp(((_671.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _677 : (isnan(_677) ? 9.9999997473787516355514526367188e-05 : max(_677, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _682 = _671;
    _682.w = _681;
    if (_681 == 0.0)
    {
        discard;
    }
    highp vec4 _859;
    highp float _860;
    if (_Globals._UseShadow != 0u)
    {
        highp float _711 = clamp(dot(_365, mix(_536, _533, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _714 = clamp(dot(_365, mix(_536, _533, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _717 = clamp(dot(_365, mix(_536, _533, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _721 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _724 = clamp(_364 + distance(_365, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _727 = mix(1.0, _724, _Globals._ShadowReceive);
        highp float _728 = _711 * _727;
        highp float _731 = mix(1.0, _724, _Globals._Shadow2ndReceive);
        highp float _735 = mix(1.0, _724, _Globals._Shadow3rdReceive);
        highp float _746 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _747 = clamp(_746, 0.0, 1.0);
        highp float _749 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _762 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _776 = clamp(_746 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _789 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _804 = (_313 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _805 = clamp((_711 * _727 + (-_747)) / clamp(fwidth(_728) * _721 + (_749 - _747), 0.0, 1.0), 0.0, 1.0) * _804;
        highp vec3 _837 = mix(mix(_682.xyz * _Globals._ShadowColor.xyz, (_682.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_714 * _731 + (-_762)) / clamp(fwidth(_714 * _731) * _721 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _762), 0.0, 1.0), 0.0, 1.0) * _804)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_682.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_717 * _735 + (-_789)) / clamp(fwidth(_717 * _735) * _721 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _789), 0.0, 1.0), 0.0, 1.0) * _804)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _843 = _682.xyz * out_var_TEXCOORD6;
        highp vec3 _849 = mix(mix(_837, _837 * _682.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _682.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _1981 = isnan(_849);
        bvec3 _1982 = isnan(_843);
        highp vec3 _1983 = min(_849, _843);
        highp vec3 _1984 = vec3(_1981.x ? _843.x : _1983.x, _1981.y ? _843.y : _1983.y, _1981.z ? _843.z : _1983.z);
        highp vec3 _857 = mix(mix(vec3(_1982.x ? _849.x : _1984.x, _1982.y ? _849.y : _1984.y, _1982.z ? _849.z : _1984.z), _843, _Globals._ShadowBorderColor.xyz * (clamp((_711 * _727 + (-_776)) / clamp(fwidth(_728) * _721 + (_749 - _776), 0.0, 1.0), 0.0, 1.0) * _804)), _843, vec3(mix(1.0, _805, _Globals._ShadowStrength)));
        _859 = vec4(_857.x, _857.y, _857.z, _682.w);
        _860 = _805;
    }
    else
    {
        highp vec3 _693 = _682.xyz * out_var_TEXCOORD6;
        _859 = vec4(_693.x, _693.y, _693.z, _682.w);
        _860 = 1.0;
    }
    highp vec3 _863 = vec3(_Globals._LightMaxLimit);
    bvec3 _1986 = isnan(out_var_TEXCOORD6);
    bvec3 _1987 = isnan(_863);
    highp vec3 _1988 = min(out_var_TEXCOORD6, _863);
    highp vec3 _1989 = vec3(_1986.x ? _863.x : _1988.x, _1986.y ? _863.y : _1988.y, _1986.z ? _863.z : _1988.z);
    highp vec3 _864 = vec3(_1987.x ? out_var_TEXCOORD6.x : _1989.x, _1987.y ? out_var_TEXCOORD6.y : _1989.y, _1987.z ? out_var_TEXCOORD6.z : _1989.z);
    highp float _865 = clamp(_860, 0.0, 1.0);
    highp vec3 _867 = _682.xyz * _Globals._LightMaxLimit;
    bvec3 _1991 = isnan(_859.xyz);
    bvec3 _1992 = isnan(_867);
    highp vec3 _1993 = min(_859.xyz, _867);
    highp vec3 _1994 = vec3(_1991.x ? _867.x : _1993.x, _1991.y ? _867.y : _1993.y, _1991.z ? _867.z : _1993.z);
    highp vec3 _868 = vec3(_1992.x ? _859.xyz.x : _1994.x, _1992.y ? _859.xyz.y : _1994.y, _1992.z ? _859.xyz.z : _1994.z);
    highp vec4 _915;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _885 = pow(clamp(1.0 - abs(dot(mix(_536, _533, vec3(_Globals._RimShadeNormalStrength)), _381)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _894 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _908 = _868.xyz;
        highp vec3 _913 = mix(_908, _908 * _Globals._RimShadeColor.xyz, vec3(clamp((_885 - _894) / clamp(fwidth(_885) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _894), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _915 = vec4(_913.x, _913.y, _913.z, _859.w);
    }
    else
    {
        _915 = vec4(_868.x, _868.y, _868.z, _859.w);
    }
    highp vec4 _988;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _939 = dot(normalize(((-_381) * _Globals._BacklightViewStrength) + _365), mix(_536, _533, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _949;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _949 = _939 * clamp(_364 + distance(_365, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _949 = _939;
        }
        highp float _958 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _986 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _682.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_313 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_381, _365) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_949 - _958) / clamp(fwidth(_949) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _958), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _864 + _915.xyz;
        _988 = vec4(_986.x, _986.y, _986.z, _915.w);
    }
    else
    {
        _988 = _915;
    }
    highp vec4 _1260;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1003 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _425 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1005 = _Globals._Smoothness * _1003.x;
        highp vec3 _1008 = dFdx(_533);
        highp vec3 _1009 = abs(_1008);
        highp vec3 _1010 = dFdy(_533);
        highp vec3 _1011 = abs(_1010);
        highp float _1012 = dot(_1009, _1009);
        highp float _1013 = dot(_1011, _1011);
        highp float _1014 = isnan(_1013) ? _1012 : (isnan(_1012) ? _1013 : max(_1012, _1013));
        highp float _1017 = (_1014 / (_1014 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1020 = clamp(1.0 - (isnan(_1017) ? 0.0 : (isnan(0.0) ? _1017 : max(0.0, _1017))), 0.0, 1.0);
        highp float _1021 = isnan(_1020) ? _1005 : (isnan(_1005) ? _1020 : min(_1005, _1020));
        highp float _1022 = 1.0 - _1021;
        highp float _1023 = _1022 * _1022;
        highp vec4 _1033 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _425 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1035 = _Globals._Metallic * _1033.x;
        highp vec3 _1038 = _988.xyz - (_988.xyz * _1035);
        highp vec3 _1044 = mix(vec3(_Globals._Reflectance), _682.xyz, vec3(_1035));
        highp vec4 _1054 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _425 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1055 = _Globals._ReflectionColor * _1054;
        highp vec4 _1156;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1128;
            do
            {
                highp vec3 _1066 = mix(_536, _533, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1068 = normalize(_381 + _365);
                highp float _1070 = clamp(dot(_1066, _1068), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1079 = pow(_1070, 1.0 / _1023);
                    highp float _1086 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1128 = vec3(clamp((_1079 - _1086) / clamp(fwidth(_1079) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1086), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1098 = clamp(dot(_1066, _381), 0.0, 1.0);
                highp float _1100 = clamp(dot(_1066, _365), 0.0, 1.0);
                highp float _1103 = isnan(0.00200000009499490261077880859375) ? _1023 : (isnan(_1023) ? 0.00200000009499490261077880859375 : max(_1023, 0.00200000009499490261077880859375));
                highp float _1104 = 1.0 - _1103;
                highp float _1108 = _1103 * _1103;
                highp float _1111 = (_1070 * _1108 + (-_1070)) * _1070 + 1.0;
                highp float _1119 = 1.0 - clamp(dot(_365, _1068), 0.0, 1.0);
                _1128 = (_1044 + ((((((vec3(1.0) - _1044) * _1119) * _1119) * _1119) * _1119) * _1119)) * (((0.5 / ((_1100 * (_1098 * _1104 + _1103) + (_1098 * (_1100 * _1104 + _1103))) + 9.9999997473787516355514526367188e-06)) * (_1108 / (_1111 * _1111 + 1.0000000116860974230803549289703e-07))) * _1100);
                break;
            } while(false);
            highp vec3 _1129 = _1038.xyz;
            highp vec3 _1130 = _1055.xyz;
            highp vec3 _1131 = _1130 * _864;
            highp vec3 _1136 = _1130 * _864 + _1129;
            highp vec3 _1137 = _1129 * _1131;
            bvec3 _1139 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1140 = vec3(_1139.x ? _1131.x : _279.x, _1139.y ? _1131.y : _279.y, _1139.z ? _1131.z : _279.z);
            bvec3 _1142 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1150;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1148 = (-_1129) * _1131 + _1136;
                bvec3 _2016 = isnan(_1148);
                bvec3 _2017 = isnan(_1129);
                highp vec3 _2018 = max(_1148, _1129);
                highp vec3 _2019 = vec3(_2016.x ? _1129.x : _2018.x, _2016.y ? _1129.y : _2018.y, _2016.z ? _1129.z : _2018.z);
                _1150 = vec3(_2017.x ? _1148.x : _2019.x, _2017.y ? _1148.y : _2019.y, _2017.z ? _1148.z : _2019.z);
            }
            else
            {
                _1150 = vec3(_1142.x ? _1136.x : _1140.x, _1142.y ? _1136.y : _1140.y, _1142.z ? _1136.z : _1140.z);
            }
            bvec3 _1152 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1154 = mix(_1129, vec3(_1152.x ? _1137.x : _1150.x, _1152.y ? _1137.y : _1150.y, _1152.z ? _1137.z : _1150.z), _1128 * _1055.w);
            _1156 = vec4(_1154.x, _1154.y, _1154.z, _988.w);
        }
        else
        {
            _1156 = vec4(_1038.x, _1038.y, _1038.z, _988.w);
        }
        highp vec4 _1259;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1178 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1185 = reflect(-_381, mix(_536, _533, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1188 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1185, _1022 * ((-4.19999980926513671875) * _1022 + 10.19999980926513671875));
            highp vec3 _1208 = ((_1188.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1188.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _864, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1214 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1185, _1022 * 8.0).xyz * 1.0;
            highp float _1225 = 1.0 - clamp(dot(_533, _381), 0.0, 1.0);
            highp vec3 _1234 = _1055.xyz;
            highp vec3 _1239 = _1156.xyz + _1234;
            highp vec3 _1240 = _1156.xyz * _1234;
            bvec3 _1242 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1243 = vec3(_1242.x ? _1234.x : _279.x, _1242.y ? _1234.y : _279.y, _1242.z ? _1234.z : _279.z);
            bvec3 _1245 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1253;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1251 = (-_1156.xyz) * _1234 + _1239;
                bvec3 _2021 = isnan(_1251);
                bvec3 _2022 = isnan(_1156.xyz);
                highp vec3 _2023 = max(_1251, _1156.xyz);
                highp vec3 _2024 = vec3(_2021.x ? _1156.xyz.x : _2023.x, _2021.y ? _1156.xyz.y : _2023.y, _2021.z ? _1156.xyz.z : _2023.z);
                _1253 = vec3(_2022.x ? _1251.x : _2024.x, _2022.y ? _1251.y : _2024.y, _2022.z ? _1251.z : _2024.z);
            }
            else
            {
                _1253 = vec3(_1245.x ? _1239.x : _1243.x, _1245.y ? _1239.y : _1243.y, _1245.z ? _1239.z : _1243.z);
            }
            bvec3 _1255 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1257 = mix(_1156.xyz, vec3(_1255.x ? _1240.x : _1253.x, _1255.y ? _1240.y : _1253.y, _1255.z ? _1240.z : _1253.z), ((vec3(_1178.x ? _1208.x : _1214.x, _1178.y ? _1208.y : _1214.y, _1178.z ? _1208.z : _1214.z) * (1.0 / (_1023 * _1023 + 1.0))) * mix(_1044, vec3(clamp(_1021 + (1.0 - ((-_1035) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1225 * _1225) * _1225) * _1225) * _1225))) * _1055.w);
            _1259 = vec4(_1257.x, _1257.y, _1257.z, _1156.w);
        }
        else
        {
            _1259 = _1156;
        }
        _1260 = _1259;
    }
    else
    {
        _1260 = _988;
    }
    highp vec4 _1425;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1305;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1282 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _425 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1282.w = _1282.w * _1282.x;
            highp vec2 _1293 = ((_1282.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1294 = vec3(_1293.x, _1293.y, _285.z);
            highp vec2 _1295 = _1293.xy;
            _1294.z = sqrt(1.0 - clamp(dot(_1295, _1295), 0.0, 1.0));
            highp vec3 _1302 = normalize(_390 * _1294);
            highp vec3 _1303 = -_1302;
            _1305 = vec3(_531.x ? _1303.x : _1302.x, _531.y ? _1303.y : _1302.y, _531.z ? _1303.z : _1302.z);
        }
        else
        {
            _1305 = mix(_536, _533, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1322 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1329 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1330 = vec3(_1322.x ? _381.x : _1329.x, _1322.y ? _381.y : _1329.y, _1322.z ? _381.z : _1329.z);
        bvec3 _1331 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1338 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1339 = vec3(_1331.x ? vec3(0.0, 1.0, 0.0).x : _1338.x, _1331.y ? vec3(0.0, 1.0, 0.0).y : _1338.y, _1331.z ? vec3(0.0, 1.0, 0.0).z : _1338.z);
        highp vec3 _1343 = normalize(_1339 - (_1330 * dot(_1330, _1339)));
        highp vec4 _1365 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1305) * mat3(cross(_1330, _1343), _1343, _1330)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1389 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _425 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1391 = mix(_1365.xyz, _1365.xyz * _864, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1398 = mix(_1391, _1391 * _682.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1405 = _1260.xyz + _1398;
        highp vec3 _1406 = _1260.xyz * _1398;
        bvec3 _1408 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1409 = vec3(_1408.x ? _1398.x : _279.x, _1408.y ? _1398.y : _279.y, _1408.z ? _1398.z : _279.z);
        bvec3 _1411 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1419;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1417 = (-_1260.xyz) * _1398 + _1405;
            bvec3 _2026 = isnan(_1417);
            bvec3 _2027 = isnan(_1260.xyz);
            highp vec3 _2028 = max(_1417, _1260.xyz);
            highp vec3 _2029 = vec3(_2026.x ? _1260.xyz.x : _2028.x, _2026.y ? _1260.xyz.y : _2028.y, _2026.z ? _1260.xyz.z : _2028.z);
            _1419 = vec3(_2027.x ? _1417.x : _2029.x, _2027.y ? _1417.y : _2029.y, _2027.z ? _1417.z : _2029.z);
        }
        else
        {
            _1419 = vec3(_1411.x ? _1405.x : _1409.x, _1411.y ? _1405.y : _1409.y, _1411.z ? _1405.z : _1409.z);
        }
        bvec3 _1421 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1423 = mix(_1260.xyz, vec3(_1421.x ? _1406.x : _1419.x, _1421.y ? _1406.y : _1419.y, _1421.z ? _1406.z : _1419.z), _1389.xyz * (_Globals._MatCapBlend * ((_313 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1365.w, _1365.w * _865, _Globals._MatCapShadowMask))));
        _1425 = vec4(_1423.x, _1423.y, _1423.z, _1260.w);
    }
    else
    {
        _1425 = _1260;
    }
    highp vec4 _1589;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1470;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1447 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _425 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1447.w = _1447.w * _1447.x;
            highp vec2 _1458 = ((_1447.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1459 = vec3(_1458.x, _1458.y, _285.z);
            highp vec2 _1460 = _1458.xy;
            _1459.z = sqrt(1.0 - clamp(dot(_1460, _1460), 0.0, 1.0));
            highp vec3 _1467 = normalize(_390 * _1459);
            highp vec3 _1468 = -_1467;
            _1470 = vec3(_531.x ? _1468.x : _1467.x, _531.y ? _1468.y : _1467.y, _531.z ? _1468.z : _1467.z);
        }
        else
        {
            _1470 = mix(_536, _533, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1486 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1493 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1494 = vec3(_1486.x ? _381.x : _1493.x, _1486.y ? _381.y : _1493.y, _1486.z ? _381.z : _1493.z);
        bvec3 _1495 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1502 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1503 = vec3(_1495.x ? vec3(0.0, 1.0, 0.0).x : _1502.x, _1495.y ? vec3(0.0, 1.0, 0.0).y : _1502.y, _1495.z ? vec3(0.0, 1.0, 0.0).z : _1502.z);
        highp vec3 _1507 = normalize(_1503 - (_1494 * dot(_1494, _1503)));
        highp vec4 _1529 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1470 * mat3(cross(_1494, _1507), _1507, _1494)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1530 = _1529.xyz;
        highp float _1536 = _1529.w;
        highp vec4 _1553 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _425 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1555 = mix(_1530, _1530 * _864, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1562 = mix(_1555, _1555 * _682.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1569 = _1425.xyz + _1562;
        highp vec3 _1570 = _1425.xyz * _1562;
        bvec3 _1572 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1573 = vec3(_1572.x ? _1562.x : _279.x, _1572.y ? _1562.y : _279.y, _1572.z ? _1562.z : _279.z);
        bvec3 _1575 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1583;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1581 = (-_1425.xyz) * _1562 + _1569;
            bvec3 _2031 = isnan(_1581);
            bvec3 _2032 = isnan(_1425.xyz);
            highp vec3 _2033 = max(_1581, _1425.xyz);
            highp vec3 _2034 = vec3(_2031.x ? _1425.xyz.x : _2033.x, _2031.y ? _1425.xyz.y : _2033.y, _2031.z ? _1425.xyz.z : _2033.z);
            _1583 = vec3(_2032.x ? _1581.x : _2034.x, _2032.y ? _1581.y : _2034.y, _2032.z ? _1581.z : _2034.z);
        }
        else
        {
            _1583 = vec3(_1575.x ? _1569.x : _1573.x, _1575.y ? _1569.y : _1573.y, _1575.z ? _1569.z : _1573.z);
        }
        bvec3 _1585 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1587 = mix(_1425.xyz, vec3(_1585.x ? _1570.x : _1583.x, _1585.y ? _1570.y : _1583.y, _1585.z ? _1570.z : _1583.z), _1553.xyz * (_Globals._MatCap2ndBlend * ((_313 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1536, _1536 * _865, _Globals._MatCap2ndShadowMask))));
        _1589 = vec4(_1587.x, _1587.y, _1587.z, _1425.w);
    }
    else
    {
        _1589 = _1425;
    }
    highp vec4 _1735;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1608 = mix(_536, _533, vec3(_Globals._RimNormalStrength));
        highp float _1612 = dot(_365, _1608) * 0.5 + 0.5;
        highp float _1635 = (_313 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1608, _381)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1639 = mix(_1635, _1635 * clamp((_1612 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1640 = _1635 * clamp(((1.0 - _1612) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1650 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1659 = clamp((_1639 - _1650) / clamp(fwidth(_1639) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1650), 0.0, 1.0), 0.0, 1.0);
        highp float _1666 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1676 = clamp((_1640 * _Globals._RimDirStrength + (-_1666)) / clamp(fwidth(_1640 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1666), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1688 = vec3(1.0 - _Globals._RimEnableLighting) + (_864 * _Globals._RimEnableLighting);
        highp vec3 _1690 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _682.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1691 = _1690 * _1688;
        highp vec3 _1697 = _1690 * _1688 + _1589.xyz;
        highp vec3 _1698 = _1589.xyz * _1691;
        bvec3 _1700 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1701 = vec3(_1700.x ? _1691.x : _279.x, _1700.y ? _1691.y : _279.y, _1700.z ? _1691.z : _279.z);
        bvec3 _1703 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1705 = _Globals._RimBlendMode == 2u;
        highp vec3 _1711;
        if (_1705)
        {
            highp vec3 _1709 = (-_1589.xyz) * _1691 + _1697;
            bvec3 _2036 = isnan(_1709);
            bvec3 _2037 = isnan(_1589.xyz);
            highp vec3 _2038 = max(_1709, _1589.xyz);
            highp vec3 _2039 = vec3(_2036.x ? _1589.xyz.x : _2038.x, _2036.y ? _1589.xyz.y : _2038.y, _2036.z ? _1589.xyz.z : _2038.z);
            _1711 = vec3(_2037.x ? _1709.x : _2039.x, _2037.y ? _1709.y : _2039.y, _2037.z ? _1709.z : _2039.z);
        }
        else
        {
            _1711 = vec3(_1703.x ? _1697.x : _1701.x, _1703.y ? _1697.y : _1701.y, _1703.z ? _1697.z : _1701.z);
        }
        bvec3 _1713 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1716 = mix(_1589.xyz, vec3(_1713.x ? _1698.x : _1711.x, _1713.y ? _1698.y : _1711.y, _1713.z ? _1698.z : _1711.z), vec3(mix(_1659, _1659 * _865, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1718 = _Globals._RimIndirColor.xyz * _1688;
        highp vec3 _1722 = _Globals._RimIndirColor.xyz * _1688 + _1716;
        highp vec3 _1723 = _1716 * _1718;
        highp vec3 _1724 = vec3(_1700.x ? _1718.x : _279.x, _1700.y ? _1718.y : _279.y, _1700.z ? _1718.z : _279.z);
        highp vec3 _1731;
        if (_1705)
        {
            highp vec3 _1729 = (-_1716) * _1718 + _1722;
            bvec3 _2041 = isnan(_1729);
            bvec3 _2042 = isnan(_1716);
            highp vec3 _2043 = max(_1729, _1716);
            highp vec3 _2044 = vec3(_2041.x ? _1716.x : _2043.x, _2041.y ? _1716.y : _2043.y, _2041.z ? _1716.z : _2043.z);
            _1731 = vec3(_2042.x ? _1729.x : _2044.x, _2042.y ? _1729.y : _2044.y, _2042.z ? _1729.z : _2044.z);
        }
        else
        {
            _1731 = vec3(_1703.x ? _1722.x : _1724.x, _1703.y ? _1722.y : _1724.y, _1703.z ? _1722.z : _1724.z);
        }
        highp vec3 _1733 = mix(_1716, vec3(_1713.x ? _1723.x : _1731.x, _1713.y ? _1723.y : _1731.y, _1713.z ? _1723.z : _1731.z), vec3(mix(_1676, _1676 * _865, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1735 = vec4(_1733.x, _1733.y, _1733.z, _1589.w);
    }
    else
    {
        _1735 = _1589;
    }
    highp vec4 _1800;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1749 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _369, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1763 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1769;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1769 = roundEven(_1763);
        }
        else
        {
            _1769 = _1763;
        }
        highp vec3 _1776 = mix(_1749, _1749 * _682.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1780 = _1735.xyz + _1776;
        highp vec3 _1781 = _1735.xyz * _1776;
        bvec3 _1783 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1784 = vec3(_1783.x ? _1776.x : _279.x, _1783.y ? _1776.y : _279.y, _1783.z ? _1776.z : _279.z);
        bvec3 _1786 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1794;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1792 = (-_1735.xyz) * _1776 + _1780;
            bvec3 _2046 = isnan(_1792);
            bvec3 _2047 = isnan(_1735.xyz);
            highp vec3 _2048 = max(_1792, _1735.xyz);
            highp vec3 _2049 = vec3(_2046.x ? _1735.xyz.x : _2048.x, _2046.y ? _1735.xyz.y : _2048.y, _2046.z ? _1735.xyz.z : _2048.z);
            _1794 = vec3(_2047.x ? _1792.x : _2049.x, _2047.y ? _1792.y : _2049.y, _2047.z ? _1792.z : _2049.z);
        }
        else
        {
            _1794 = vec3(_1786.x ? _1780.x : _1784.x, _1786.y ? _1780.y : _1784.y, _1786.z ? _1780.z : _1784.z);
        }
        bvec3 _1796 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1798 = mix(_1735.xyz, vec3(_1796.x ? _1781.x : _1794.x, _1796.y ? _1781.y : _1794.y, _1796.z ? _1781.z : _1794.z), vec3((_Globals._EmissionBlend * mix(1.0, _1769, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1800 = vec4(_1798.x, _1798.y, _1798.z, _1735.w);
    }
    else
    {
        _1800 = _1735;
    }
    highp vec4 _1865;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1814 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _369, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1828 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1834;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1834 = roundEven(_1828);
        }
        else
        {
            _1834 = _1828;
        }
        highp vec3 _1841 = mix(_1814, _1814 * _682.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1845 = _1800.xyz + _1841;
        highp vec3 _1846 = _1800.xyz * _1841;
        bvec3 _1848 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1849 = vec3(_1848.x ? _1841.x : _279.x, _1848.y ? _1841.y : _279.y, _1848.z ? _1841.z : _279.z);
        bvec3 _1851 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1859;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1857 = (-_1800.xyz) * _1841 + _1845;
            bvec3 _2051 = isnan(_1857);
            bvec3 _2052 = isnan(_1800.xyz);
            highp vec3 _2053 = max(_1857, _1800.xyz);
            highp vec3 _2054 = vec3(_2051.x ? _1800.xyz.x : _2053.x, _2051.y ? _1800.xyz.y : _2053.y, _2051.z ? _1800.xyz.z : _2053.z);
            _1859 = vec3(_2052.x ? _1857.x : _2054.x, _2052.y ? _1857.y : _2054.y, _2052.z ? _1857.z : _2054.z);
        }
        else
        {
            _1859 = vec3(_1851.x ? _1845.x : _1849.x, _1851.y ? _1845.y : _1849.y, _1851.z ? _1845.z : _1849.z);
        }
        bvec3 _1861 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1863 = mix(_1800.xyz, vec3(_1861.x ? _1846.x : _1859.x, _1861.y ? _1846.y : _1859.y, _1861.z ? _1846.z : _1859.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1834, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1865 = vec4(_1863.x, _1863.y, _1863.z, _1800.w);
    }
    else
    {
        _1865 = _1800;
    }
    bvec3 _1873 = bvec3(_313 < 0.0);
    highp vec3 _1874 = (_1865.xyz + (_Globals._DissolveColor.xyz * _672)).xyz;
    highp vec3 _1882 = mix(_1874, _Globals._BackfaceColor.xyz * _864, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1917 = vec3(_1873.x ? _1882.x : _1874.x, _1873.y ? _1882.y : _1874.y, _1873.z ? _1882.z : _1874.z).xyz;
    highp vec3 _1925 = mix(_1917, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1917, vec3(pow(clamp(1.0 - abs(dot(_536, _381)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_313 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_373)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1925.x, _1925.y, _1925.z, _1865.w), vec4(out_var_TEXCOORD9));
}
