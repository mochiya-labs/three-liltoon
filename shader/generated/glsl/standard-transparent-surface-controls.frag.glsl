#version 300 es
precision mediump float;
precision highp int;

vec3 _283;
vec3 _289;
float _290;

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
    int _308 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _317 = float(gl_FrontFacing ? 1 : (-1));
    highp float _368;
    do
    {
        highp vec3 _324 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _325 = _324.xy;
        highp float _331 = _324.z;
        if ((any(lessThan(_325, vec2(0.0))) || any(greaterThan(_325, vec2(1.0)))) || (_331 > 1.0))
        {
            _368 = 1.0;
            break;
        }
        highp float _341 = _331 + _Globals.uShadowBias;
        _368 = (((step(_341, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _325), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_341, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _325), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_341, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _325), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_341, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _325), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _369 = normalize(out_var_TEXCOORD7);
    highp vec3 _373 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _377 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _385 = normalize(_377);
    highp mat3 _394 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _399 = bvec2(_317 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _400 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _413 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _414 = sin(_413);
    highp float _415 = cos(_413);
    highp vec2 _416 = (vec2(_399.x ? _400.x : out_var_TEXCOORD0.xy.x, _399.y ? _400.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _417 = _416.x;
    highp float _418 = _416.y;
    highp vec2 _429 = (vec2(_417 * _415 + (-(_418 * _414)), _417 * _414 + (_418 * _415)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _433 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _429);
    highp vec3 _440 = pow(abs(_433.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _441 = _440.z;
    highp float _442 = _440.y;
    bvec4 _444 = bvec4(_441 > _442);
    highp vec4 _445 = vec4(_441, _442, -1.0, 0.666666686534881591796875);
    highp vec4 _446 = vec4(_442, _441, 0.0, -0.3333333432674407958984375);
    highp vec4 _447 = vec4(_444.x ? _445.x : _446.x, _444.y ? _445.y : _446.y, _444.z ? _445.z : _446.z, _444.w ? _445.w : _446.w);
    highp float _448 = _447.x;
    highp float _449 = _440.x;
    bvec4 _451 = bvec4(_448 > _449);
    highp vec4 _454 = vec4(_448, _447.yw, _449);
    highp vec4 _456 = vec4(_449, _447.yz, _448);
    highp vec4 _457 = vec4(_451.x ? _454.x : _456.x, _451.y ? _454.y : _456.y, _451.z ? _454.z : _456.z, _451.w ? _454.w : _456.w);
    highp float _462 = _457.x - (isnan(_457.y) ? _457.w : (isnan(_457.w) ? _457.y : min(_457.w, _457.y)));
    highp float _475 = clamp((_462 / (_457.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _478 = clamp(_457.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _492 = vec3((-_478) * _475 + _478) + (clamp(abs((fract(vec3(abs(_457.z + ((_457.w - _457.y) / (6.0 * _462 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_478 * _475));
    highp vec4 _496 = vec4(_492.x, _492.y, _492.z, _433.w) * _Globals._Color;
    highp vec3 _528;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _509 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _429 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _509.w = _509.w * _509.x;
        highp vec2 _520 = ((_509.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _521 = vec3(_520.x, _520.y, _289.z);
        highp vec2 _522 = _520.xy;
        _521.z = sqrt(1.0 - clamp(dot(_522, _522), 0.0, 1.0));
        _528 = _521;
    }
    else
    {
        _528 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _530 = normalize(_394 * _528);
    bvec3 _535 = bvec3(_317 < (_Globals._FlipNormal - 1.0));
    highp vec3 _536 = -_530;
    highp vec3 _537 = vec3(_535.x ? _536.x : _530.x, _535.y ? _536.y : _530.y, _535.z ? _536.z : _530.z);
    highp vec3 _540 = normalize(out_var_TEXCOORD4);
    highp vec4 _580;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _551 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _556;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _555 = _496;
            _555.w = _551;
            _556 = _555;
        }
        else
        {
            _556 = _496;
        }
        highp vec4 _563;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _562 = _556;
            _562.w = _556.w * _551;
            _563 = _562;
        }
        else
        {
            _563 = _556;
        }
        highp vec4 _571;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _570 = _563;
            _570.w = clamp(_563.w + _551, 0.0, 1.0);
            _571 = _570;
        }
        else
        {
            _571 = _563;
        }
        highp vec4 _579;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _578 = _571;
            _578.w = clamp(_571.w - _551, 0.0, 1.0);
            _579 = _578;
        }
        else
        {
            _579 = _571;
        }
        _580 = _579;
    }
    else
    {
        _580 = _496;
    }
    highp vec4 _675;
    highp float _676;
    if ((_308 & 1) != 0)
    {
        highp vec4 _584 = _580;
        _584.w = 1.0;
        highp vec2 _590 = roundEven(_Globals._DissolveParams.xy);
        highp float _591 = _590.x;
        highp vec4 _664;
        highp float _665;
        if (_591 != 0.0)
        {
            highp float _607;
            highp float _608;
            if (_591 == 1.0)
            {
                _607 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _608 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _607 = 0.0;
                _608 = 1.0;
            }
            highp float _639;
            highp float _640;
            if (_591 == 2.0)
            {
                highp vec2 _617 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _628 = (_590.y == 1.0) ? (vec2(_617.x * cos(_Globals._DissolvePos.w) + (-(_617.y * sin(_Globals._DissolvePos.w))), _290) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _639 = 1.0 - clamp(abs(_628 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _640 = _608 * float(_628 > _Globals._DissolveParams.z);
            }
            else
            {
                _639 = _607;
                _640 = _608;
            }
            highp float _661;
            highp float _662;
            if (_591 == 3.0)
            {
                highp float _650 = (_590.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _661 = 1.0 - clamp(abs(_650 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _662 = _640 * float(_650 > _Globals._DissolveParams.z);
            }
            else
            {
                _661 = _639;
                _662 = _640;
            }
            highp vec4 _663 = _584;
            _663.w = _662;
            _664 = _663;
            _665 = _661;
        }
        else
        {
            _664 = _584;
            _665 = 0.0;
        }
        highp vec4 _671;
        if ((_308 & 2) != 0)
        {
            highp vec4 _670 = _664;
            _670.w = 1.0 - _664.w;
            _671 = _670;
        }
        else
        {
            _671 = _664;
        }
        highp vec4 _674 = _671;
        _674.w = _671.w * _580.w;
        _675 = _674;
        _676 = _665;
    }
    else
    {
        _675 = _580;
        _676 = 0.0;
    }
    if ((_675.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _857;
    highp float _858;
    if (_Globals._UseShadow != 0u)
    {
        highp float _709 = clamp(dot(_369, mix(_540, _537, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _712 = clamp(dot(_369, mix(_540, _537, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _715 = clamp(dot(_369, mix(_540, _537, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _719 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _722 = clamp(_368 + distance(_369, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _725 = mix(1.0, _722, _Globals._ShadowReceive);
        highp float _726 = _709 * _725;
        highp float _729 = mix(1.0, _722, _Globals._Shadow2ndReceive);
        highp float _733 = mix(1.0, _722, _Globals._Shadow3rdReceive);
        highp float _744 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _745 = clamp(_744, 0.0, 1.0);
        highp float _747 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _760 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _774 = clamp(_744 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _787 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _802 = (_317 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _803 = clamp((_709 * _725 + (-_745)) / clamp(fwidth(_726) * _719 + (_747 - _745), 0.0, 1.0), 0.0, 1.0) * _802;
        highp vec3 _835 = mix(mix(_675.xyz * _Globals._ShadowColor.xyz, (_675.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_712 * _729 + (-_760)) / clamp(fwidth(_712 * _729) * _719 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _760), 0.0, 1.0), 0.0, 1.0) * _802)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_675.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_715 * _733 + (-_787)) / clamp(fwidth(_715 * _733) * _719 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _787), 0.0, 1.0), 0.0, 1.0) * _802)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _841 = _675.xyz * out_var_TEXCOORD6;
        highp vec3 _847 = mix(mix(_835, _835 * _675.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _675.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2034 = isnan(_847);
        bvec3 _2035 = isnan(_841);
        highp vec3 _2036 = min(_847, _841);
        highp vec3 _2037 = vec3(_2034.x ? _841.x : _2036.x, _2034.y ? _841.y : _2036.y, _2034.z ? _841.z : _2036.z);
        highp vec3 _855 = mix(mix(vec3(_2035.x ? _847.x : _2037.x, _2035.y ? _847.y : _2037.y, _2035.z ? _847.z : _2037.z), _841, _Globals._ShadowBorderColor.xyz * (clamp((_709 * _725 + (-_774)) / clamp(fwidth(_726) * _719 + (_747 - _774), 0.0, 1.0), 0.0, 1.0) * _802)), _841, vec3(mix(1.0, _803, _Globals._ShadowStrength)));
        _857 = vec4(_855.x, _855.y, _855.z, _675.w);
        _858 = _803;
    }
    else
    {
        highp vec3 _691 = _675.xyz * out_var_TEXCOORD6;
        _857 = vec4(_691.x, _691.y, _691.z, _675.w);
        _858 = 1.0;
    }
    highp vec3 _861 = vec3(_Globals._LightMaxLimit);
    bvec3 _2039 = isnan(out_var_TEXCOORD6);
    bvec3 _2040 = isnan(_861);
    highp vec3 _2041 = min(out_var_TEXCOORD6, _861);
    highp vec3 _2042 = vec3(_2039.x ? _861.x : _2041.x, _2039.y ? _861.y : _2041.y, _2039.z ? _861.z : _2041.z);
    highp vec3 _862 = vec3(_2040.x ? out_var_TEXCOORD6.x : _2042.x, _2040.y ? out_var_TEXCOORD6.y : _2042.y, _2040.z ? out_var_TEXCOORD6.z : _2042.z);
    highp float _863 = clamp(_858, 0.0, 1.0);
    highp vec3 _865 = _675.xyz * _Globals._LightMaxLimit;
    bvec3 _2044 = isnan(_857.xyz);
    bvec3 _2045 = isnan(_865);
    highp vec3 _2046 = min(_857.xyz, _865);
    highp vec3 _2047 = vec3(_2044.x ? _865.x : _2046.x, _2044.y ? _865.y : _2046.y, _2044.z ? _865.z : _2046.z);
    highp vec3 _866 = vec3(_2045.x ? _857.xyz.x : _2047.x, _2045.y ? _857.xyz.y : _2047.y, _2045.z ? _857.xyz.z : _2047.z);
    highp vec4 _913;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _883 = pow(clamp(1.0 - abs(dot(mix(_540, _537, vec3(_Globals._RimShadeNormalStrength)), _385)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _892 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _906 = _866.xyz;
        highp vec3 _911 = mix(_906, _906 * _Globals._RimShadeColor.xyz, vec3(clamp((_883 - _892) / clamp(fwidth(_883) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _892), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _913 = vec4(_911.x, _911.y, _911.z, _857.w);
    }
    else
    {
        _913 = vec4(_866.x, _866.y, _866.z, _857.w);
    }
    highp vec4 _986;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _937 = dot(normalize(((-_385) * _Globals._BacklightViewStrength) + _369), mix(_540, _537, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _947;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _947 = _937 * clamp(_368 + distance(_369, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _947 = _937;
        }
        highp float _956 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _984 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _675.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_317 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_385, _369) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_947 - _956) / clamp(fwidth(_947) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _956), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _862 + _913.xyz;
        _986 = vec4(_984.x, _984.y, _984.z, _913.w);
    }
    else
    {
        _986 = _913;
    }
    highp vec3 _989 = _986.xyz * _986.w;
    highp vec4 _1271;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1005 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _429 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1007 = _Globals._Smoothness * _1005.x;
        highp vec3 _1010 = dFdx(_537);
        highp vec3 _1011 = abs(_1010);
        highp vec3 _1012 = dFdy(_537);
        highp vec3 _1013 = abs(_1012);
        highp float _1014 = dot(_1011, _1011);
        highp float _1015 = dot(_1013, _1013);
        highp float _1016 = isnan(_1015) ? _1014 : (isnan(_1014) ? _1015 : max(_1014, _1015));
        highp float _1019 = (_1016 / (_1016 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1022 = clamp(1.0 - (isnan(_1019) ? 0.0 : (isnan(0.0) ? _1019 : max(0.0, _1019))), 0.0, 1.0);
        highp float _1023 = isnan(_1022) ? _1007 : (isnan(_1007) ? _1022 : min(_1007, _1022));
        highp float _1024 = 1.0 - _1023;
        highp float _1025 = _1024 * _1024;
        highp vec4 _1035 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _429 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1037 = _Globals._Metallic * _1035.x;
        highp vec3 _1038 = _989.xyz;
        highp vec3 _1040 = _1038 - (_1038 * _1037);
        highp vec3 _1046 = mix(vec3(_Globals._Reflectance), _675.xyz, vec3(_1037));
        highp vec4 _1056 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _429 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1057 = _Globals._ReflectionColor * _1056;
        highp vec4 _1066;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1065 = _1057;
            _1065.w = _1057.w * _986.w;
            _1066 = _1065;
        }
        else
        {
            _1066 = _1057;
        }
        highp vec4 _1167;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1139;
            do
            {
                highp vec3 _1077 = mix(_540, _537, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1079 = normalize(_385 + _369);
                highp float _1081 = clamp(dot(_1077, _1079), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1090 = pow(_1081, 1.0 / _1025);
                    highp float _1097 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1139 = vec3(clamp((_1090 - _1097) / clamp(fwidth(_1090) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1097), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1109 = clamp(dot(_1077, _385), 0.0, 1.0);
                highp float _1111 = clamp(dot(_1077, _369), 0.0, 1.0);
                highp float _1114 = isnan(0.00200000009499490261077880859375) ? _1025 : (isnan(_1025) ? 0.00200000009499490261077880859375 : max(_1025, 0.00200000009499490261077880859375));
                highp float _1115 = 1.0 - _1114;
                highp float _1119 = _1114 * _1114;
                highp float _1122 = (_1081 * _1119 + (-_1081)) * _1081 + 1.0;
                highp float _1130 = 1.0 - clamp(dot(_369, _1079), 0.0, 1.0);
                _1139 = (_1046 + ((((((vec3(1.0) - _1046) * _1130) * _1130) * _1130) * _1130) * _1130)) * (((0.5 / ((_1111 * (_1109 * _1115 + _1114) + (_1109 * (_1111 * _1115 + _1114))) + 9.9999997473787516355514526367188e-06)) * (_1119 / (_1122 * _1122 + 1.0000000116860974230803549289703e-07))) * _1111);
                break;
            } while(false);
            highp vec3 _1140 = _1040.xyz;
            highp vec3 _1142 = _1066.xyz * _862;
            highp vec3 _1147 = _1066.xyz * _862 + _1140;
            highp vec3 _1148 = _1140 * _1142;
            bvec3 _1150 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1151 = vec3(_1150.x ? _1142.x : _283.x, _1150.y ? _1142.y : _283.y, _1150.z ? _1142.z : _283.z);
            bvec3 _1153 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1161;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1159 = (-_1140) * _1142 + _1147;
                bvec3 _2069 = isnan(_1159);
                bvec3 _2070 = isnan(_1140);
                highp vec3 _2071 = max(_1159, _1140);
                highp vec3 _2072 = vec3(_2069.x ? _1140.x : _2071.x, _2069.y ? _1140.y : _2071.y, _2069.z ? _1140.z : _2071.z);
                _1161 = vec3(_2070.x ? _1159.x : _2072.x, _2070.y ? _1159.y : _2072.y, _2070.z ? _1159.z : _2072.z);
            }
            else
            {
                _1161 = vec3(_1153.x ? _1147.x : _1151.x, _1153.y ? _1147.y : _1151.y, _1153.z ? _1147.z : _1151.z);
            }
            bvec3 _1163 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1165 = mix(_1140, vec3(_1163.x ? _1148.x : _1161.x, _1163.y ? _1148.y : _1161.y, _1163.z ? _1148.z : _1161.z), _1139 * _1066.w);
            _1167 = vec4(_1165.x, _1165.y, _1165.z, _986.w);
        }
        else
        {
            _1167 = vec4(_1040.x, _1040.y, _1040.z, _986.w);
        }
        highp vec4 _1270;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1189 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1196 = reflect(-_385, mix(_540, _537, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1199 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1196, _1024 * ((-4.19999980926513671875) * _1024 + 10.19999980926513671875));
            highp vec3 _1219 = ((_1199.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1199.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _862, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1225 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1196, _1024 * 8.0).xyz * 1.0;
            highp float _1236 = 1.0 - clamp(dot(_537, _385), 0.0, 1.0);
            highp vec3 _1250 = _1167.xyz + _1066.xyz;
            highp vec3 _1251 = _1167.xyz * _1066.xyz;
            bvec3 _1253 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1254 = vec3(_1253.x ? _1066.xyz.x : _283.x, _1253.y ? _1066.xyz.y : _283.y, _1253.z ? _1066.xyz.z : _283.z);
            bvec3 _1256 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1264;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1262 = (-_1167.xyz) * _1066.xyz + _1250;
                bvec3 _2074 = isnan(_1262);
                bvec3 _2075 = isnan(_1167.xyz);
                highp vec3 _2076 = max(_1262, _1167.xyz);
                highp vec3 _2077 = vec3(_2074.x ? _1167.xyz.x : _2076.x, _2074.y ? _1167.xyz.y : _2076.y, _2074.z ? _1167.xyz.z : _2076.z);
                _1264 = vec3(_2075.x ? _1262.x : _2077.x, _2075.y ? _1262.y : _2077.y, _2075.z ? _1262.z : _2077.z);
            }
            else
            {
                _1264 = vec3(_1256.x ? _1250.x : _1254.x, _1256.y ? _1250.y : _1254.y, _1256.z ? _1250.z : _1254.z);
            }
            bvec3 _1266 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1268 = mix(_1167.xyz, vec3(_1266.x ? _1251.x : _1264.x, _1266.y ? _1251.y : _1264.y, _1266.z ? _1251.z : _1264.z), ((vec3(_1189.x ? _1219.x : _1225.x, _1189.y ? _1219.y : _1225.y, _1189.z ? _1219.z : _1225.z) * (1.0 / (_1025 * _1025 + 1.0))) * mix(_1046, vec3(clamp(_1023 + (1.0 - ((-_1037) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1236 * _1236) * _1236) * _1236) * _1236))) * _1066.w);
            _1270 = vec4(_1268.x, _1268.y, _1268.z, _1167.w);
        }
        else
        {
            _1270 = _1167;
        }
        _1271 = _1270;
    }
    else
    {
        _1271 = vec4(_989.x, _989.y, _989.z, _986.w);
    }
    highp vec4 _1448;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1316;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1293 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _429 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1293.w = _1293.w * _1293.x;
            highp vec2 _1304 = ((_1293.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1305 = vec3(_1304.x, _1304.y, _289.z);
            highp vec2 _1306 = _1304.xy;
            _1305.z = sqrt(1.0 - clamp(dot(_1306, _1306), 0.0, 1.0));
            highp vec3 _1313 = normalize(_394 * _1305);
            highp vec3 _1314 = -_1313;
            _1316 = vec3(_535.x ? _1314.x : _1313.x, _535.y ? _1314.y : _1313.y, _535.z ? _1314.z : _1313.z);
        }
        else
        {
            _1316 = mix(_540, _537, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1333 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1340 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1341 = vec3(_1333.x ? _385.x : _1340.x, _1333.y ? _385.y : _1340.y, _1333.z ? _385.z : _1340.z);
        bvec3 _1342 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1349 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1350 = vec3(_1342.x ? vec3(0.0, 1.0, 0.0).x : _1349.x, _1342.y ? vec3(0.0, 1.0, 0.0).y : _1349.y, _1342.z ? vec3(0.0, 1.0, 0.0).z : _1349.z);
        highp vec3 _1354 = normalize(_1350 - (_1341 * dot(_1341, _1350)));
        highp vec4 _1376 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1316) * mat3(cross(_1341, _1354), _1354, _1341)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1382 = mix(_1376.xyz, _1376.xyz * _862, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1383 = vec4(_1382.x, _1382.y, _1382.z, _1376.w);
        highp float _1388 = mix(_1376.w, _1376.w * _863, _Globals._MatCapShadowMask);
        _1383.w = _1388;
        highp vec4 _1398;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1397 = _1383;
            _1397.w = _1388 * _1271.w;
            _1398 = _1397;
        }
        else
        {
            _1398 = _1383;
        }
        highp vec4 _1412 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _429 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1421 = mix(_1398.xyz, _1398.xyz * _675.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1428 = _1271.xyz + _1421;
        highp vec3 _1429 = _1271.xyz * _1421;
        bvec3 _1431 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1432 = vec3(_1431.x ? _1421.x : _283.x, _1431.y ? _1421.y : _283.y, _1431.z ? _1421.z : _283.z);
        bvec3 _1434 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1442;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1440 = (-_1271.xyz) * _1421 + _1428;
            bvec3 _2079 = isnan(_1440);
            bvec3 _2080 = isnan(_1271.xyz);
            highp vec3 _2081 = max(_1440, _1271.xyz);
            highp vec3 _2082 = vec3(_2079.x ? _1271.xyz.x : _2081.x, _2079.y ? _1271.xyz.y : _2081.y, _2079.z ? _1271.xyz.z : _2081.z);
            _1442 = vec3(_2080.x ? _1440.x : _2082.x, _2080.y ? _1440.y : _2082.y, _2080.z ? _1440.z : _2082.z);
        }
        else
        {
            _1442 = vec3(_1434.x ? _1428.x : _1432.x, _1434.y ? _1428.y : _1432.y, _1434.z ? _1428.z : _1432.z);
        }
        bvec3 _1444 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1446 = mix(_1271.xyz, vec3(_1444.x ? _1429.x : _1442.x, _1444.y ? _1429.y : _1442.y, _1444.z ? _1429.z : _1442.z), _1412.xyz * (_Globals._MatCapBlend * ((_317 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1398.w)));
        _1448 = vec4(_1446.x, _1446.y, _1446.z, _1271.w);
    }
    else
    {
        _1448 = _1271;
    }
    highp vec4 _1624;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1493;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1470 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _429 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1470.w = _1470.w * _1470.x;
            highp vec2 _1481 = ((_1470.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1482 = vec3(_1481.x, _1481.y, _289.z);
            highp vec2 _1483 = _1481.xy;
            _1482.z = sqrt(1.0 - clamp(dot(_1483, _1483), 0.0, 1.0));
            highp vec3 _1490 = normalize(_394 * _1482);
            highp vec3 _1491 = -_1490;
            _1493 = vec3(_535.x ? _1491.x : _1490.x, _535.y ? _1491.y : _1490.y, _535.z ? _1491.z : _1490.z);
        }
        else
        {
            _1493 = mix(_540, _537, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1509 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1516 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1517 = vec3(_1509.x ? _385.x : _1516.x, _1509.y ? _385.y : _1516.y, _1509.z ? _385.z : _1516.z);
        bvec3 _1518 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1525 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1526 = vec3(_1518.x ? vec3(0.0, 1.0, 0.0).x : _1525.x, _1518.y ? vec3(0.0, 1.0, 0.0).y : _1525.y, _1518.z ? vec3(0.0, 1.0, 0.0).z : _1525.z);
        highp vec3 _1530 = normalize(_1526 - (_1517 * dot(_1517, _1526)));
        highp vec4 _1552 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1493 * mat3(cross(_1517, _1530), _1530, _1517)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1553 = _1552.xyz;
        highp vec3 _1558 = mix(_1553, _1553 * _862, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1559 = vec4(_1558.x, _1558.y, _1558.z, _1552.w);
        highp float _1560 = _1552.w;
        highp float _1564 = mix(_1560, _1560 * _863, _Globals._MatCap2ndShadowMask);
        _1559.w = _1564;
        highp vec4 _1574;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1573 = _1559;
            _1573.w = _1564 * _1448.w;
            _1574 = _1573;
        }
        else
        {
            _1574 = _1559;
        }
        highp vec4 _1588 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _429 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1597 = mix(_1574.xyz, _1574.xyz * _675.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1604 = _1448.xyz + _1597;
        highp vec3 _1605 = _1448.xyz * _1597;
        bvec3 _1607 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1608 = vec3(_1607.x ? _1597.x : _283.x, _1607.y ? _1597.y : _283.y, _1607.z ? _1597.z : _283.z);
        bvec3 _1610 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1618;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1616 = (-_1448.xyz) * _1597 + _1604;
            bvec3 _2084 = isnan(_1616);
            bvec3 _2085 = isnan(_1448.xyz);
            highp vec3 _2086 = max(_1616, _1448.xyz);
            highp vec3 _2087 = vec3(_2084.x ? _1448.xyz.x : _2086.x, _2084.y ? _1448.xyz.y : _2086.y, _2084.z ? _1448.xyz.z : _2086.z);
            _1618 = vec3(_2085.x ? _1616.x : _2087.x, _2085.y ? _1616.y : _2087.y, _2085.z ? _1616.z : _2087.z);
        }
        else
        {
            _1618 = vec3(_1610.x ? _1604.x : _1608.x, _1610.y ? _1604.y : _1608.y, _1610.z ? _1604.z : _1608.z);
        }
        bvec3 _1620 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1622 = mix(_1448.xyz, vec3(_1620.x ? _1605.x : _1618.x, _1620.y ? _1605.y : _1618.y, _1620.z ? _1605.z : _1618.z), _1588.xyz * (_Globals._MatCap2ndBlend * ((_317 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _1574.w)));
        _1624 = vec4(_1622.x, _1622.y, _1622.z, _1448.w);
    }
    else
    {
        _1624 = _1448;
    }
    highp vec4 _1780;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1643 = mix(_540, _537, vec3(_Globals._RimNormalStrength));
        highp float _1647 = dot(_369, _1643) * 0.5 + 0.5;
        highp float _1670 = (_317 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1643, _385)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1674 = mix(_1670, _1670 * clamp((_1647 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1675 = _1670 * clamp(((1.0 - _1647) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1685 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1694 = clamp((_1674 - _1685) / clamp(fwidth(_1674) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1685), 0.0, 1.0), 0.0, 1.0);
        highp float _1701 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1711 = clamp((_1675 * _Globals._RimDirStrength + (-_1701)) / clamp(fwidth(_1675 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1701), 0.0, 1.0), 0.0, 1.0);
        highp float _1715 = mix(_1694, _1694 * _863, _Globals._RimShadowMask);
        highp float _1717 = mix(_1711, _1711 * _863, _Globals._RimShadowMask);
        highp float _1726;
        highp float _1727;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _1726 = _1717 * _1624.w;
            _1727 = _1715 * _1624.w;
        }
        else
        {
            _1726 = _1717;
            _1727 = _1715;
        }
        highp vec3 _1733 = vec3(1.0 - _Globals._RimEnableLighting) + (_862 * _Globals._RimEnableLighting);
        highp vec3 _1735 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _675.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1736 = _1735 * _1733;
        highp vec3 _1742 = _1735 * _1733 + _1624.xyz;
        highp vec3 _1743 = _1624.xyz * _1736;
        bvec3 _1745 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1746 = vec3(_1745.x ? _1736.x : _283.x, _1745.y ? _1736.y : _283.y, _1745.z ? _1736.z : _283.z);
        bvec3 _1748 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1750 = _Globals._RimBlendMode == 2u;
        highp vec3 _1756;
        if (_1750)
        {
            highp vec3 _1754 = (-_1624.xyz) * _1736 + _1742;
            bvec3 _2089 = isnan(_1754);
            bvec3 _2090 = isnan(_1624.xyz);
            highp vec3 _2091 = max(_1754, _1624.xyz);
            highp vec3 _2092 = vec3(_2089.x ? _1624.xyz.x : _2091.x, _2089.y ? _1624.xyz.y : _2091.y, _2089.z ? _1624.xyz.z : _2091.z);
            _1756 = vec3(_2090.x ? _1754.x : _2092.x, _2090.y ? _1754.y : _2092.y, _2090.z ? _1754.z : _2092.z);
        }
        else
        {
            _1756 = vec3(_1748.x ? _1742.x : _1746.x, _1748.y ? _1742.y : _1746.y, _1748.z ? _1742.z : _1746.z);
        }
        bvec3 _1758 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1761 = mix(_1624.xyz, vec3(_1758.x ? _1743.x : _1756.x, _1758.y ? _1743.y : _1756.y, _1758.z ? _1743.z : _1756.z), vec3(_1727 * _Globals._RimColor.w)).xyz;
        highp vec3 _1763 = _Globals._RimIndirColor.xyz * _1733;
        highp vec3 _1767 = _Globals._RimIndirColor.xyz * _1733 + _1761;
        highp vec3 _1768 = _1761 * _1763;
        highp vec3 _1769 = vec3(_1745.x ? _1763.x : _283.x, _1745.y ? _1763.y : _283.y, _1745.z ? _1763.z : _283.z);
        highp vec3 _1776;
        if (_1750)
        {
            highp vec3 _1774 = (-_1761) * _1763 + _1767;
            bvec3 _2094 = isnan(_1774);
            bvec3 _2095 = isnan(_1761);
            highp vec3 _2096 = max(_1774, _1761);
            highp vec3 _2097 = vec3(_2094.x ? _1761.x : _2096.x, _2094.y ? _1761.y : _2096.y, _2094.z ? _1761.z : _2096.z);
            _1776 = vec3(_2095.x ? _1774.x : _2097.x, _2095.y ? _1774.y : _2097.y, _2095.z ? _1774.z : _2097.z);
        }
        else
        {
            _1776 = vec3(_1748.x ? _1767.x : _1769.x, _1748.y ? _1767.y : _1769.y, _1748.z ? _1767.z : _1769.z);
        }
        highp vec3 _1778 = mix(_1761, vec3(_1758.x ? _1768.x : _1776.x, _1758.y ? _1768.y : _1776.y, _1758.z ? _1768.z : _1776.z), vec3(_1726 * _Globals._RimIndirColor.w));
        _1780 = vec4(_1778.x, _1778.y, _1778.z, _1624.w);
    }
    else
    {
        _1780 = _1624;
    }
    highp vec4 _1847;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1794 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _373, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1808 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1814;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1814 = roundEven(_1808);
        }
        else
        {
            _1814 = _1808;
        }
        highp vec3 _1823 = mix(_1794, _1794 * _675.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1827 = _1780.xyz + _1823;
        highp vec3 _1828 = _1780.xyz * _1823;
        bvec3 _1830 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1831 = vec3(_1830.x ? _1823.x : _283.x, _1830.y ? _1823.y : _283.y, _1830.z ? _1823.z : _283.z);
        bvec3 _1833 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1841;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1839 = (-_1780.xyz) * _1823 + _1827;
            bvec3 _2099 = isnan(_1839);
            bvec3 _2100 = isnan(_1780.xyz);
            highp vec3 _2101 = max(_1839, _1780.xyz);
            highp vec3 _2102 = vec3(_2099.x ? _1780.xyz.x : _2101.x, _2099.y ? _1780.xyz.y : _2101.y, _2099.z ? _1780.xyz.z : _2101.z);
            _1841 = vec3(_2100.x ? _1839.x : _2102.x, _2100.y ? _1839.y : _2102.y, _2100.z ? _1839.z : _2102.z);
        }
        else
        {
            _1841 = vec3(_1833.x ? _1827.x : _1831.x, _1833.y ? _1827.y : _1831.y, _1833.z ? _1827.z : _1831.z);
        }
        bvec3 _1843 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1845 = mix(_1780.xyz, vec3(_1843.x ? _1828.x : _1841.x, _1843.y ? _1828.y : _1841.y, _1843.z ? _1828.z : _1841.z), vec3(((_Globals._EmissionBlend * mix(1.0, _1814, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _1780.w));
        _1847 = vec4(_1845.x, _1845.y, _1845.z, _1780.w);
    }
    else
    {
        _1847 = _1780;
    }
    highp vec4 _1914;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1861 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _373, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1875 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1881;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1881 = roundEven(_1875);
        }
        else
        {
            _1881 = _1875;
        }
        highp vec3 _1890 = mix(_1861, _1861 * _675.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1894 = _1847.xyz + _1890;
        highp vec3 _1895 = _1847.xyz * _1890;
        bvec3 _1897 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1898 = vec3(_1897.x ? _1890.x : _283.x, _1897.y ? _1890.y : _283.y, _1897.z ? _1890.z : _283.z);
        bvec3 _1900 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1908;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1906 = (-_1847.xyz) * _1890 + _1894;
            bvec3 _2104 = isnan(_1906);
            bvec3 _2105 = isnan(_1847.xyz);
            highp vec3 _2106 = max(_1906, _1847.xyz);
            highp vec3 _2107 = vec3(_2104.x ? _1847.xyz.x : _2106.x, _2104.y ? _1847.xyz.y : _2106.y, _2104.z ? _1847.xyz.z : _2106.z);
            _1908 = vec3(_2105.x ? _1906.x : _2107.x, _2105.y ? _1906.y : _2107.y, _2105.z ? _1906.z : _2107.z);
        }
        else
        {
            _1908 = vec3(_1900.x ? _1894.x : _1898.x, _1900.y ? _1894.y : _1898.y, _1900.z ? _1894.z : _1898.z);
        }
        bvec3 _1910 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1912 = mix(_1847.xyz, vec3(_1910.x ? _1895.x : _1908.x, _1910.y ? _1895.y : _1908.y, _1910.z ? _1895.z : _1908.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _1881, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _1847.w));
        _1914 = vec4(_1912.x, _1912.y, _1912.z, _1847.w);
    }
    else
    {
        _1914 = _1847;
    }
    bvec3 _1924 = bvec3(_317 < 0.0);
    highp vec3 _1925 = (_1914.xyz + ((_Globals._DissolveColor.xyz * _676) * _1914.w)).xyz;
    highp vec3 _1933 = mix(_1925, _Globals._BackfaceColor.xyz * _862, vec3(_Globals._BackfaceColor.w));
    highp float _1954 = (_317 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_377)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _1968 = vec3(_1924.x ? _1933.x : _1925.x, _1924.y ? _1933.y : _1925.y, _1924.z ? _1933.z : _1925.z).xyz;
    highp vec3 _1979 = mix(_1968, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1968, vec3(pow(clamp(1.0 - abs(dot(_540, _385)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_1954));
    highp vec4 _1980 = vec4(_1979.x, _1979.y, _1979.z, _1914.w);
    highp float _1982 = mix(_1914.w, _1914.w * _Globals._DistanceFadeColor.w, _1954);
    _1980.w = _1982;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _1982, _1980, vec4(out_var_TEXCOORD9));
}
