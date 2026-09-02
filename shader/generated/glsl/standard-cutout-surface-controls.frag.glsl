#version 300 es
precision mediump float;
precision highp int;

vec3 _280;
vec3 _286;
float _287;

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
    int _305 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _314 = float(gl_FrontFacing ? 1 : (-1));
    highp float _365;
    do
    {
        highp vec3 _321 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _322 = _321.xy;
        highp float _328 = _321.z;
        if ((any(lessThan(_322, vec2(0.0))) || any(greaterThan(_322, vec2(1.0)))) || (_328 > 1.0))
        {
            _365 = 1.0;
            break;
        }
        highp float _338 = _328 + _Globals.uShadowBias;
        _365 = (((step(_338, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _322), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_338, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _322), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_338, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _322), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_338, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _322), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _366 = normalize(out_var_TEXCOORD7);
    highp vec3 _370 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _374 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _382 = normalize(_374);
    highp mat3 _391 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _396 = bvec2(_314 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _397 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _410 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _411 = sin(_410);
    highp float _412 = cos(_410);
    highp vec2 _413 = (vec2(_396.x ? _397.x : out_var_TEXCOORD0.xy.x, _396.y ? _397.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _414 = _413.x;
    highp float _415 = _413.y;
    highp vec2 _426 = (vec2(_414 * _412 + (-(_415 * _411)), _414 * _411 + (_415 * _412)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _430 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _426);
    highp vec3 _437 = pow(abs(_430.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _438 = _437.z;
    highp float _439 = _437.y;
    bvec4 _441 = bvec4(_438 > _439);
    highp vec4 _442 = vec4(_438, _439, -1.0, 0.666666686534881591796875);
    highp vec4 _443 = vec4(_439, _438, 0.0, -0.3333333432674407958984375);
    highp vec4 _444 = vec4(_441.x ? _442.x : _443.x, _441.y ? _442.y : _443.y, _441.z ? _442.z : _443.z, _441.w ? _442.w : _443.w);
    highp float _445 = _444.x;
    highp float _446 = _437.x;
    bvec4 _448 = bvec4(_445 > _446);
    highp vec4 _451 = vec4(_445, _444.yw, _446);
    highp vec4 _453 = vec4(_446, _444.yz, _445);
    highp vec4 _454 = vec4(_448.x ? _451.x : _453.x, _448.y ? _451.y : _453.y, _448.z ? _451.z : _453.z, _448.w ? _451.w : _453.w);
    highp float _459 = _454.x - (isnan(_454.y) ? _454.w : (isnan(_454.w) ? _454.y : min(_454.w, _454.y)));
    highp float _472 = clamp((_459 / (_454.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _475 = clamp(_454.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _489 = vec3((-_475) * _472 + _475) + (clamp(abs((fract(vec3(abs(_454.z + ((_454.w - _454.y) / (6.0 * _459 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_475 * _472));
    highp vec4 _493 = vec4(_489.x, _489.y, _489.z, _430.w) * _Globals._Color;
    highp vec3 _525;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _506 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _426 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _506.w = _506.w * _506.x;
        highp vec2 _517 = ((_506.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _518 = vec3(_517.x, _517.y, _286.z);
        highp vec2 _519 = _517.xy;
        _518.z = sqrt(1.0 - clamp(dot(_519, _519), 0.0, 1.0));
        _525 = _518;
    }
    else
    {
        _525 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _527 = normalize(_391 * _525);
    bvec3 _532 = bvec3(_314 < (_Globals._FlipNormal - 1.0));
    highp vec3 _533 = -_527;
    highp vec3 _534 = vec3(_532.x ? _533.x : _527.x, _532.y ? _533.y : _527.y, _532.z ? _533.z : _527.z);
    highp vec3 _537 = normalize(out_var_TEXCOORD4);
    highp vec4 _577;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _548 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _553;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _552 = _493;
            _552.w = _548;
            _553 = _552;
        }
        else
        {
            _553 = _493;
        }
        highp vec4 _560;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _559 = _553;
            _559.w = _553.w * _548;
            _560 = _559;
        }
        else
        {
            _560 = _553;
        }
        highp vec4 _568;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _567 = _560;
            _567.w = clamp(_560.w + _548, 0.0, 1.0);
            _568 = _567;
        }
        else
        {
            _568 = _560;
        }
        highp vec4 _576;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _575 = _568;
            _575.w = clamp(_568.w - _548, 0.0, 1.0);
            _576 = _575;
        }
        else
        {
            _576 = _568;
        }
        _577 = _576;
    }
    else
    {
        _577 = _493;
    }
    highp vec4 _672;
    highp float _673;
    if ((_305 & 1) != 0)
    {
        highp vec4 _581 = _577;
        _581.w = 1.0;
        highp vec2 _587 = roundEven(_Globals._DissolveParams.xy);
        highp float _588 = _587.x;
        highp vec4 _661;
        highp float _662;
        if (_588 != 0.0)
        {
            highp float _604;
            highp float _605;
            if (_588 == 1.0)
            {
                _604 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _605 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _604 = 0.0;
                _605 = 1.0;
            }
            highp float _636;
            highp float _637;
            if (_588 == 2.0)
            {
                highp vec2 _614 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _625 = (_587.y == 1.0) ? (vec2(_614.x * cos(_Globals._DissolvePos.w) + (-(_614.y * sin(_Globals._DissolvePos.w))), _287) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _636 = 1.0 - clamp(abs(_625 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _637 = _605 * float(_625 > _Globals._DissolveParams.z);
            }
            else
            {
                _636 = _604;
                _637 = _605;
            }
            highp float _658;
            highp float _659;
            if (_588 == 3.0)
            {
                highp float _647 = (_587.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _658 = 1.0 - clamp(abs(_647 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _659 = _637 * float(_647 > _Globals._DissolveParams.z);
            }
            else
            {
                _658 = _636;
                _659 = _637;
            }
            highp vec4 _660 = _581;
            _660.w = _659;
            _661 = _660;
            _662 = _658;
        }
        else
        {
            _661 = _581;
            _662 = 0.0;
        }
        highp vec4 _668;
        if ((_305 & 2) != 0)
        {
            highp vec4 _667 = _661;
            _667.w = 1.0 - _661.w;
            _668 = _667;
        }
        else
        {
            _668 = _661;
        }
        highp vec4 _671 = _668;
        _671.w = _668.w * _577.w;
        _672 = _671;
        _673 = _662;
    }
    else
    {
        _672 = _577;
        _673 = 0.0;
    }
    highp float _678 = fwidth(_672.w);
    highp float _682 = clamp(((_672.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _678 : (isnan(_678) ? 9.9999997473787516355514526367188e-05 : max(_678, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _683 = _672;
    _683.w = _682;
    if (_682 == 0.0)
    {
        discard;
    }
    highp vec4 _860;
    highp float _861;
    if (_Globals._UseShadow != 0u)
    {
        highp float _712 = clamp(dot(_366, mix(_537, _534, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _715 = clamp(dot(_366, mix(_537, _534, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _718 = clamp(dot(_366, mix(_537, _534, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _722 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _725 = clamp(_365 + distance(_366, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _728 = mix(1.0, _725, _Globals._ShadowReceive);
        highp float _729 = _712 * _728;
        highp float _732 = mix(1.0, _725, _Globals._Shadow2ndReceive);
        highp float _736 = mix(1.0, _725, _Globals._Shadow3rdReceive);
        highp float _747 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _748 = clamp(_747, 0.0, 1.0);
        highp float _750 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _763 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _777 = clamp(_747 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _790 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _805 = (_314 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _806 = clamp((_712 * _728 + (-_748)) / clamp(fwidth(_729) * _722 + (_750 - _748), 0.0, 1.0), 0.0, 1.0) * _805;
        highp vec3 _838 = mix(mix(_683.xyz * _Globals._ShadowColor.xyz, (_683.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_715 * _732 + (-_763)) / clamp(fwidth(_715 * _732) * _722 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _763), 0.0, 1.0), 0.0, 1.0) * _805)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_683.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_718 * _736 + (-_790)) / clamp(fwidth(_718 * _736) * _722 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _790), 0.0, 1.0), 0.0, 1.0) * _805)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _844 = _683.xyz * out_var_TEXCOORD6;
        highp vec3 _850 = mix(mix(_838, _838 * _683.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _683.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _1982 = isnan(_850);
        bvec3 _1983 = isnan(_844);
        highp vec3 _1984 = min(_850, _844);
        highp vec3 _1985 = vec3(_1982.x ? _844.x : _1984.x, _1982.y ? _844.y : _1984.y, _1982.z ? _844.z : _1984.z);
        highp vec3 _858 = mix(mix(vec3(_1983.x ? _850.x : _1985.x, _1983.y ? _850.y : _1985.y, _1983.z ? _850.z : _1985.z), _844, _Globals._ShadowBorderColor.xyz * (clamp((_712 * _728 + (-_777)) / clamp(fwidth(_729) * _722 + (_750 - _777), 0.0, 1.0), 0.0, 1.0) * _805)), _844, vec3(mix(1.0, _806, _Globals._ShadowStrength)));
        _860 = vec4(_858.x, _858.y, _858.z, _683.w);
        _861 = _806;
    }
    else
    {
        highp vec3 _694 = _683.xyz * out_var_TEXCOORD6;
        _860 = vec4(_694.x, _694.y, _694.z, _683.w);
        _861 = 1.0;
    }
    highp vec3 _864 = vec3(_Globals._LightMaxLimit);
    bvec3 _1987 = isnan(out_var_TEXCOORD6);
    bvec3 _1988 = isnan(_864);
    highp vec3 _1989 = min(out_var_TEXCOORD6, _864);
    highp vec3 _1990 = vec3(_1987.x ? _864.x : _1989.x, _1987.y ? _864.y : _1989.y, _1987.z ? _864.z : _1989.z);
    highp vec3 _865 = vec3(_1988.x ? out_var_TEXCOORD6.x : _1990.x, _1988.y ? out_var_TEXCOORD6.y : _1990.y, _1988.z ? out_var_TEXCOORD6.z : _1990.z);
    highp float _866 = clamp(_861, 0.0, 1.0);
    highp vec3 _868 = _683.xyz * _Globals._LightMaxLimit;
    bvec3 _1992 = isnan(_860.xyz);
    bvec3 _1993 = isnan(_868);
    highp vec3 _1994 = min(_860.xyz, _868);
    highp vec3 _1995 = vec3(_1992.x ? _868.x : _1994.x, _1992.y ? _868.y : _1994.y, _1992.z ? _868.z : _1994.z);
    highp vec3 _869 = vec3(_1993.x ? _860.xyz.x : _1995.x, _1993.y ? _860.xyz.y : _1995.y, _1993.z ? _860.xyz.z : _1995.z);
    highp vec4 _916;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _886 = pow(clamp(1.0 - abs(dot(mix(_537, _534, vec3(_Globals._RimShadeNormalStrength)), _382)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _895 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _909 = _869.xyz;
        highp vec3 _914 = mix(_909, _909 * _Globals._RimShadeColor.xyz, vec3(clamp((_886 - _895) / clamp(fwidth(_886) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _895), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _916 = vec4(_914.x, _914.y, _914.z, _860.w);
    }
    else
    {
        _916 = vec4(_869.x, _869.y, _869.z, _860.w);
    }
    highp vec4 _989;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _940 = dot(normalize(((-_382) * _Globals._BacklightViewStrength) + _366), mix(_537, _534, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _950;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _950 = _940 * clamp(_365 + distance(_366, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _950 = _940;
        }
        highp float _959 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _987 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _683.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_314 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_382, _366) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_950 - _959) / clamp(fwidth(_950) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _959), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _865 + _916.xyz;
        _989 = vec4(_987.x, _987.y, _987.z, _916.w);
    }
    else
    {
        _989 = _916;
    }
    highp vec4 _1261;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1004 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _426 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1006 = _Globals._Smoothness * _1004.x;
        highp vec3 _1009 = dFdx(_534);
        highp vec3 _1010 = abs(_1009);
        highp vec3 _1011 = dFdy(_534);
        highp vec3 _1012 = abs(_1011);
        highp float _1013 = dot(_1010, _1010);
        highp float _1014 = dot(_1012, _1012);
        highp float _1015 = isnan(_1014) ? _1013 : (isnan(_1013) ? _1014 : max(_1013, _1014));
        highp float _1018 = (_1015 / (_1015 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1021 = clamp(1.0 - (isnan(_1018) ? 0.0 : (isnan(0.0) ? _1018 : max(0.0, _1018))), 0.0, 1.0);
        highp float _1022 = isnan(_1021) ? _1006 : (isnan(_1006) ? _1021 : min(_1006, _1021));
        highp float _1023 = 1.0 - _1022;
        highp float _1024 = _1023 * _1023;
        highp vec4 _1034 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _426 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1036 = _Globals._Metallic * _1034.x;
        highp vec3 _1039 = _989.xyz - (_989.xyz * _1036);
        highp vec3 _1045 = mix(vec3(_Globals._Reflectance), _683.xyz, vec3(_1036));
        highp vec4 _1055 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _426 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1056 = _Globals._ReflectionColor * _1055;
        highp vec4 _1157;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1129;
            do
            {
                highp vec3 _1067 = mix(_537, _534, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1069 = normalize(_382 + _366);
                highp float _1071 = clamp(dot(_1067, _1069), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1080 = pow(_1071, 1.0 / _1024);
                    highp float _1087 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1129 = vec3(clamp((_1080 - _1087) / clamp(fwidth(_1080) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1087), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1099 = clamp(dot(_1067, _382), 0.0, 1.0);
                highp float _1101 = clamp(dot(_1067, _366), 0.0, 1.0);
                highp float _1104 = isnan(0.00200000009499490261077880859375) ? _1024 : (isnan(_1024) ? 0.00200000009499490261077880859375 : max(_1024, 0.00200000009499490261077880859375));
                highp float _1105 = 1.0 - _1104;
                highp float _1109 = _1104 * _1104;
                highp float _1112 = (_1071 * _1109 + (-_1071)) * _1071 + 1.0;
                highp float _1120 = 1.0 - clamp(dot(_366, _1069), 0.0, 1.0);
                _1129 = (_1045 + ((((((vec3(1.0) - _1045) * _1120) * _1120) * _1120) * _1120) * _1120)) * (((0.5 / ((_1101 * (_1099 * _1105 + _1104) + (_1099 * (_1101 * _1105 + _1104))) + 9.9999997473787516355514526367188e-06)) * (_1109 / (_1112 * _1112 + 1.0000000116860974230803549289703e-07))) * _1101);
                break;
            } while(false);
            highp vec3 _1130 = _1039.xyz;
            highp vec3 _1131 = _1056.xyz;
            highp vec3 _1132 = _1131 * _865;
            highp vec3 _1137 = _1131 * _865 + _1130;
            highp vec3 _1138 = _1130 * _1132;
            bvec3 _1140 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1141 = vec3(_1140.x ? _1132.x : _280.x, _1140.y ? _1132.y : _280.y, _1140.z ? _1132.z : _280.z);
            bvec3 _1143 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1151;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1149 = (-_1130) * _1132 + _1137;
                bvec3 _2017 = isnan(_1149);
                bvec3 _2018 = isnan(_1130);
                highp vec3 _2019 = max(_1149, _1130);
                highp vec3 _2020 = vec3(_2017.x ? _1130.x : _2019.x, _2017.y ? _1130.y : _2019.y, _2017.z ? _1130.z : _2019.z);
                _1151 = vec3(_2018.x ? _1149.x : _2020.x, _2018.y ? _1149.y : _2020.y, _2018.z ? _1149.z : _2020.z);
            }
            else
            {
                _1151 = vec3(_1143.x ? _1137.x : _1141.x, _1143.y ? _1137.y : _1141.y, _1143.z ? _1137.z : _1141.z);
            }
            bvec3 _1153 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1155 = mix(_1130, vec3(_1153.x ? _1138.x : _1151.x, _1153.y ? _1138.y : _1151.y, _1153.z ? _1138.z : _1151.z), _1129 * _1056.w);
            _1157 = vec4(_1155.x, _1155.y, _1155.z, _989.w);
        }
        else
        {
            _1157 = vec4(_1039.x, _1039.y, _1039.z, _989.w);
        }
        highp vec4 _1260;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1179 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1186 = reflect(-_382, mix(_537, _534, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1189 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1186, _1023 * ((-4.19999980926513671875) * _1023 + 10.19999980926513671875));
            highp vec3 _1209 = ((_1189.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1189.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _865, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1215 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1186, _1023 * 8.0).xyz * 1.0;
            highp float _1226 = 1.0 - clamp(dot(_534, _382), 0.0, 1.0);
            highp vec3 _1235 = _1056.xyz;
            highp vec3 _1240 = _1157.xyz + _1235;
            highp vec3 _1241 = _1157.xyz * _1235;
            bvec3 _1243 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1244 = vec3(_1243.x ? _1235.x : _280.x, _1243.y ? _1235.y : _280.y, _1243.z ? _1235.z : _280.z);
            bvec3 _1246 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1254;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1252 = (-_1157.xyz) * _1235 + _1240;
                bvec3 _2022 = isnan(_1252);
                bvec3 _2023 = isnan(_1157.xyz);
                highp vec3 _2024 = max(_1252, _1157.xyz);
                highp vec3 _2025 = vec3(_2022.x ? _1157.xyz.x : _2024.x, _2022.y ? _1157.xyz.y : _2024.y, _2022.z ? _1157.xyz.z : _2024.z);
                _1254 = vec3(_2023.x ? _1252.x : _2025.x, _2023.y ? _1252.y : _2025.y, _2023.z ? _1252.z : _2025.z);
            }
            else
            {
                _1254 = vec3(_1246.x ? _1240.x : _1244.x, _1246.y ? _1240.y : _1244.y, _1246.z ? _1240.z : _1244.z);
            }
            bvec3 _1256 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1258 = mix(_1157.xyz, vec3(_1256.x ? _1241.x : _1254.x, _1256.y ? _1241.y : _1254.y, _1256.z ? _1241.z : _1254.z), ((vec3(_1179.x ? _1209.x : _1215.x, _1179.y ? _1209.y : _1215.y, _1179.z ? _1209.z : _1215.z) * (1.0 / (_1024 * _1024 + 1.0))) * mix(_1045, vec3(clamp(_1022 + (1.0 - ((-_1036) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1226 * _1226) * _1226) * _1226) * _1226))) * _1056.w);
            _1260 = vec4(_1258.x, _1258.y, _1258.z, _1157.w);
        }
        else
        {
            _1260 = _1157;
        }
        _1261 = _1260;
    }
    else
    {
        _1261 = _989;
    }
    highp vec4 _1426;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1306;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1283 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _426 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1283.w = _1283.w * _1283.x;
            highp vec2 _1294 = ((_1283.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1295 = vec3(_1294.x, _1294.y, _286.z);
            highp vec2 _1296 = _1294.xy;
            _1295.z = sqrt(1.0 - clamp(dot(_1296, _1296), 0.0, 1.0));
            highp vec3 _1303 = normalize(_391 * _1295);
            highp vec3 _1304 = -_1303;
            _1306 = vec3(_532.x ? _1304.x : _1303.x, _532.y ? _1304.y : _1303.y, _532.z ? _1304.z : _1303.z);
        }
        else
        {
            _1306 = mix(_537, _534, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1323 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1330 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1331 = vec3(_1323.x ? _382.x : _1330.x, _1323.y ? _382.y : _1330.y, _1323.z ? _382.z : _1330.z);
        bvec3 _1332 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1339 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1340 = vec3(_1332.x ? vec3(0.0, 1.0, 0.0).x : _1339.x, _1332.y ? vec3(0.0, 1.0, 0.0).y : _1339.y, _1332.z ? vec3(0.0, 1.0, 0.0).z : _1339.z);
        highp vec3 _1344 = normalize(_1340 - (_1331 * dot(_1331, _1340)));
        highp vec4 _1366 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1306) * mat3(cross(_1331, _1344), _1344, _1331)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1390 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _426 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1392 = mix(_1366.xyz, _1366.xyz * _865, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1399 = mix(_1392, _1392 * _683.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1406 = _1261.xyz + _1399;
        highp vec3 _1407 = _1261.xyz * _1399;
        bvec3 _1409 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1410 = vec3(_1409.x ? _1399.x : _280.x, _1409.y ? _1399.y : _280.y, _1409.z ? _1399.z : _280.z);
        bvec3 _1412 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1420;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1418 = (-_1261.xyz) * _1399 + _1406;
            bvec3 _2027 = isnan(_1418);
            bvec3 _2028 = isnan(_1261.xyz);
            highp vec3 _2029 = max(_1418, _1261.xyz);
            highp vec3 _2030 = vec3(_2027.x ? _1261.xyz.x : _2029.x, _2027.y ? _1261.xyz.y : _2029.y, _2027.z ? _1261.xyz.z : _2029.z);
            _1420 = vec3(_2028.x ? _1418.x : _2030.x, _2028.y ? _1418.y : _2030.y, _2028.z ? _1418.z : _2030.z);
        }
        else
        {
            _1420 = vec3(_1412.x ? _1406.x : _1410.x, _1412.y ? _1406.y : _1410.y, _1412.z ? _1406.z : _1410.z);
        }
        bvec3 _1422 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1424 = mix(_1261.xyz, vec3(_1422.x ? _1407.x : _1420.x, _1422.y ? _1407.y : _1420.y, _1422.z ? _1407.z : _1420.z), _1390.xyz * (_Globals._MatCapBlend * ((_314 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1366.w, _1366.w * _866, _Globals._MatCapShadowMask))));
        _1426 = vec4(_1424.x, _1424.y, _1424.z, _1261.w);
    }
    else
    {
        _1426 = _1261;
    }
    highp vec4 _1590;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1471;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1448 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _426 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1448.w = _1448.w * _1448.x;
            highp vec2 _1459 = ((_1448.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1460 = vec3(_1459.x, _1459.y, _286.z);
            highp vec2 _1461 = _1459.xy;
            _1460.z = sqrt(1.0 - clamp(dot(_1461, _1461), 0.0, 1.0));
            highp vec3 _1468 = normalize(_391 * _1460);
            highp vec3 _1469 = -_1468;
            _1471 = vec3(_532.x ? _1469.x : _1468.x, _532.y ? _1469.y : _1468.y, _532.z ? _1469.z : _1468.z);
        }
        else
        {
            _1471 = mix(_537, _534, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1487 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1494 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1495 = vec3(_1487.x ? _382.x : _1494.x, _1487.y ? _382.y : _1494.y, _1487.z ? _382.z : _1494.z);
        bvec3 _1496 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1503 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1504 = vec3(_1496.x ? vec3(0.0, 1.0, 0.0).x : _1503.x, _1496.y ? vec3(0.0, 1.0, 0.0).y : _1503.y, _1496.z ? vec3(0.0, 1.0, 0.0).z : _1503.z);
        highp vec3 _1508 = normalize(_1504 - (_1495 * dot(_1495, _1504)));
        highp vec4 _1530 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1471 * mat3(cross(_1495, _1508), _1508, _1495)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1531 = _1530.xyz;
        highp float _1537 = _1530.w;
        highp vec4 _1554 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _426 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1556 = mix(_1531, _1531 * _865, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1563 = mix(_1556, _1556 * _683.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1570 = _1426.xyz + _1563;
        highp vec3 _1571 = _1426.xyz * _1563;
        bvec3 _1573 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1574 = vec3(_1573.x ? _1563.x : _280.x, _1573.y ? _1563.y : _280.y, _1573.z ? _1563.z : _280.z);
        bvec3 _1576 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1584;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1582 = (-_1426.xyz) * _1563 + _1570;
            bvec3 _2032 = isnan(_1582);
            bvec3 _2033 = isnan(_1426.xyz);
            highp vec3 _2034 = max(_1582, _1426.xyz);
            highp vec3 _2035 = vec3(_2032.x ? _1426.xyz.x : _2034.x, _2032.y ? _1426.xyz.y : _2034.y, _2032.z ? _1426.xyz.z : _2034.z);
            _1584 = vec3(_2033.x ? _1582.x : _2035.x, _2033.y ? _1582.y : _2035.y, _2033.z ? _1582.z : _2035.z);
        }
        else
        {
            _1584 = vec3(_1576.x ? _1570.x : _1574.x, _1576.y ? _1570.y : _1574.y, _1576.z ? _1570.z : _1574.z);
        }
        bvec3 _1586 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1588 = mix(_1426.xyz, vec3(_1586.x ? _1571.x : _1584.x, _1586.y ? _1571.y : _1584.y, _1586.z ? _1571.z : _1584.z), _1554.xyz * (_Globals._MatCap2ndBlend * ((_314 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1537, _1537 * _866, _Globals._MatCap2ndShadowMask))));
        _1590 = vec4(_1588.x, _1588.y, _1588.z, _1426.w);
    }
    else
    {
        _1590 = _1426;
    }
    highp vec4 _1736;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1609 = mix(_537, _534, vec3(_Globals._RimNormalStrength));
        highp float _1613 = dot(_366, _1609) * 0.5 + 0.5;
        highp float _1636 = (_314 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1609, _382)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1640 = mix(_1636, _1636 * clamp((_1613 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1641 = _1636 * clamp(((1.0 - _1613) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1651 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1660 = clamp((_1640 - _1651) / clamp(fwidth(_1640) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1651), 0.0, 1.0), 0.0, 1.0);
        highp float _1667 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1677 = clamp((_1641 * _Globals._RimDirStrength + (-_1667)) / clamp(fwidth(_1641 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1667), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1689 = vec3(1.0 - _Globals._RimEnableLighting) + (_865 * _Globals._RimEnableLighting);
        highp vec3 _1691 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _683.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1692 = _1691 * _1689;
        highp vec3 _1698 = _1691 * _1689 + _1590.xyz;
        highp vec3 _1699 = _1590.xyz * _1692;
        bvec3 _1701 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1702 = vec3(_1701.x ? _1692.x : _280.x, _1701.y ? _1692.y : _280.y, _1701.z ? _1692.z : _280.z);
        bvec3 _1704 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1706 = _Globals._RimBlendMode == 2u;
        highp vec3 _1712;
        if (_1706)
        {
            highp vec3 _1710 = (-_1590.xyz) * _1692 + _1698;
            bvec3 _2037 = isnan(_1710);
            bvec3 _2038 = isnan(_1590.xyz);
            highp vec3 _2039 = max(_1710, _1590.xyz);
            highp vec3 _2040 = vec3(_2037.x ? _1590.xyz.x : _2039.x, _2037.y ? _1590.xyz.y : _2039.y, _2037.z ? _1590.xyz.z : _2039.z);
            _1712 = vec3(_2038.x ? _1710.x : _2040.x, _2038.y ? _1710.y : _2040.y, _2038.z ? _1710.z : _2040.z);
        }
        else
        {
            _1712 = vec3(_1704.x ? _1698.x : _1702.x, _1704.y ? _1698.y : _1702.y, _1704.z ? _1698.z : _1702.z);
        }
        bvec3 _1714 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1717 = mix(_1590.xyz, vec3(_1714.x ? _1699.x : _1712.x, _1714.y ? _1699.y : _1712.y, _1714.z ? _1699.z : _1712.z), vec3(mix(_1660, _1660 * _866, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1719 = _Globals._RimIndirColor.xyz * _1689;
        highp vec3 _1723 = _Globals._RimIndirColor.xyz * _1689 + _1717;
        highp vec3 _1724 = _1717 * _1719;
        highp vec3 _1725 = vec3(_1701.x ? _1719.x : _280.x, _1701.y ? _1719.y : _280.y, _1701.z ? _1719.z : _280.z);
        highp vec3 _1732;
        if (_1706)
        {
            highp vec3 _1730 = (-_1717) * _1719 + _1723;
            bvec3 _2042 = isnan(_1730);
            bvec3 _2043 = isnan(_1717);
            highp vec3 _2044 = max(_1730, _1717);
            highp vec3 _2045 = vec3(_2042.x ? _1717.x : _2044.x, _2042.y ? _1717.y : _2044.y, _2042.z ? _1717.z : _2044.z);
            _1732 = vec3(_2043.x ? _1730.x : _2045.x, _2043.y ? _1730.y : _2045.y, _2043.z ? _1730.z : _2045.z);
        }
        else
        {
            _1732 = vec3(_1704.x ? _1723.x : _1725.x, _1704.y ? _1723.y : _1725.y, _1704.z ? _1723.z : _1725.z);
        }
        highp vec3 _1734 = mix(_1717, vec3(_1714.x ? _1724.x : _1732.x, _1714.y ? _1724.y : _1732.y, _1714.z ? _1724.z : _1732.z), vec3(mix(_1677, _1677 * _866, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1736 = vec4(_1734.x, _1734.y, _1734.z, _1590.w);
    }
    else
    {
        _1736 = _1590;
    }
    highp vec4 _1801;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1750 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _370, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1764 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1770;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1770 = roundEven(_1764);
        }
        else
        {
            _1770 = _1764;
        }
        highp vec3 _1777 = mix(_1750, _1750 * _683.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1781 = _1736.xyz + _1777;
        highp vec3 _1782 = _1736.xyz * _1777;
        bvec3 _1784 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1785 = vec3(_1784.x ? _1777.x : _280.x, _1784.y ? _1777.y : _280.y, _1784.z ? _1777.z : _280.z);
        bvec3 _1787 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1795;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1793 = (-_1736.xyz) * _1777 + _1781;
            bvec3 _2047 = isnan(_1793);
            bvec3 _2048 = isnan(_1736.xyz);
            highp vec3 _2049 = max(_1793, _1736.xyz);
            highp vec3 _2050 = vec3(_2047.x ? _1736.xyz.x : _2049.x, _2047.y ? _1736.xyz.y : _2049.y, _2047.z ? _1736.xyz.z : _2049.z);
            _1795 = vec3(_2048.x ? _1793.x : _2050.x, _2048.y ? _1793.y : _2050.y, _2048.z ? _1793.z : _2050.z);
        }
        else
        {
            _1795 = vec3(_1787.x ? _1781.x : _1785.x, _1787.y ? _1781.y : _1785.y, _1787.z ? _1781.z : _1785.z);
        }
        bvec3 _1797 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1799 = mix(_1736.xyz, vec3(_1797.x ? _1782.x : _1795.x, _1797.y ? _1782.y : _1795.y, _1797.z ? _1782.z : _1795.z), vec3((_Globals._EmissionBlend * mix(1.0, _1770, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1801 = vec4(_1799.x, _1799.y, _1799.z, _1736.w);
    }
    else
    {
        _1801 = _1736;
    }
    highp vec4 _1866;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1815 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _370, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1829 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1835;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1835 = roundEven(_1829);
        }
        else
        {
            _1835 = _1829;
        }
        highp vec3 _1842 = mix(_1815, _1815 * _683.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1846 = _1801.xyz + _1842;
        highp vec3 _1847 = _1801.xyz * _1842;
        bvec3 _1849 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1850 = vec3(_1849.x ? _1842.x : _280.x, _1849.y ? _1842.y : _280.y, _1849.z ? _1842.z : _280.z);
        bvec3 _1852 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1860;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1858 = (-_1801.xyz) * _1842 + _1846;
            bvec3 _2052 = isnan(_1858);
            bvec3 _2053 = isnan(_1801.xyz);
            highp vec3 _2054 = max(_1858, _1801.xyz);
            highp vec3 _2055 = vec3(_2052.x ? _1801.xyz.x : _2054.x, _2052.y ? _1801.xyz.y : _2054.y, _2052.z ? _1801.xyz.z : _2054.z);
            _1860 = vec3(_2053.x ? _1858.x : _2055.x, _2053.y ? _1858.y : _2055.y, _2053.z ? _1858.z : _2055.z);
        }
        else
        {
            _1860 = vec3(_1852.x ? _1846.x : _1850.x, _1852.y ? _1846.y : _1850.y, _1852.z ? _1846.z : _1850.z);
        }
        bvec3 _1862 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1864 = mix(_1801.xyz, vec3(_1862.x ? _1847.x : _1860.x, _1862.y ? _1847.y : _1860.y, _1862.z ? _1847.z : _1860.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1835, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1866 = vec4(_1864.x, _1864.y, _1864.z, _1801.w);
    }
    else
    {
        _1866 = _1801;
    }
    bvec3 _1874 = bvec3(_314 < 0.0);
    highp vec3 _1875 = (_1866.xyz + (_Globals._DissolveColor.xyz * _673)).xyz;
    highp vec3 _1883 = mix(_1875, _Globals._BackfaceColor.xyz * _865, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1918 = vec3(_1874.x ? _1883.x : _1875.x, _1874.y ? _1883.y : _1875.y, _1874.z ? _1883.z : _1875.z).xyz;
    highp vec3 _1926 = mix(_1918, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1918, vec3(pow(clamp(1.0 - abs(dot(_537, _382)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_314 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_374)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1926.x, _1926.y, _1926.z, _1866.w), vec4(out_var_TEXCOORD9));
}
