#version 300 es
precision mediump float;
precision highp int;

vec3 _270;
vec3 _276;

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
    highp float _294 = float(gl_FrontFacing ? 1 : (-1));
    highp float _345;
    do
    {
        highp vec3 _301 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _302 = _301.xy;
        highp float _308 = _301.z;
        if ((any(lessThan(_302, vec2(0.0))) || any(greaterThan(_302, vec2(1.0)))) || (_308 > 1.0))
        {
            _345 = 1.0;
            break;
        }
        highp float _318 = _308 + _Globals.uShadowBias;
        _345 = (((step(_318, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _302), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_318, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _302), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_318, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _302), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_318, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _302), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _346 = normalize(out_var_TEXCOORD7);
    highp vec3 _350 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _354 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp vec3 _362 = normalize(_354);
    highp mat3 _371 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _376 = bvec2(_294 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _377 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _390 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _391 = sin(_390);
    highp float _392 = cos(_390);
    highp vec2 _393 = (vec2(_376.x ? _377.x : out_var_TEXCOORD0.xy.x, _376.y ? _377.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _394 = _393.x;
    highp float _395 = _393.y;
    highp vec2 _406 = (vec2(_394 * _392 + (-(_395 * _391)), _394 * _391 + (_395 * _392)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _410 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _406);
    highp vec3 _417 = pow(abs(_410.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _418 = _417.z;
    highp float _419 = _417.y;
    bvec4 _421 = bvec4(_418 > _419);
    highp vec4 _422 = vec4(_418, _419, -1.0, 0.666666686534881591796875);
    highp vec4 _423 = vec4(_419, _418, 0.0, -0.3333333432674407958984375);
    highp vec4 _424 = vec4(_421.x ? _422.x : _423.x, _421.y ? _422.y : _423.y, _421.z ? _422.z : _423.z, _421.w ? _422.w : _423.w);
    highp float _425 = _424.x;
    highp float _426 = _417.x;
    bvec4 _428 = bvec4(_425 > _426);
    highp vec4 _431 = vec4(_425, _424.yw, _426);
    highp vec4 _433 = vec4(_426, _424.yz, _425);
    highp vec4 _434 = vec4(_428.x ? _431.x : _433.x, _428.y ? _431.y : _433.y, _428.z ? _431.z : _433.z, _428.w ? _431.w : _433.w);
    highp float _439 = _434.x - (isnan(_434.y) ? _434.w : (isnan(_434.w) ? _434.y : min(_434.w, _434.y)));
    highp float _452 = clamp((_439 / (_434.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _455 = clamp(_434.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _469 = vec3((-_455) * _452 + _455) + (clamp(abs((fract(vec3(abs(_434.z + ((_434.w - _434.y) / (6.0 * _439 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_455 * _452));
    highp vec4 _473 = vec4(_469.x, _469.y, _469.z, _410.w) * _Globals._Color;
    highp vec3 _505;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _486 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _406 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _486.w = _486.w * _486.x;
        highp vec2 _497 = ((_486.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _498 = vec3(_497.x, _497.y, _276.z);
        highp vec2 _499 = _497.xy;
        _498.z = sqrt(1.0 - clamp(dot(_499, _499), 0.0, 1.0));
        _505 = _498;
    }
    else
    {
        _505 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _507 = normalize(_371 * _505);
    bvec3 _512 = bvec3(_294 < (_Globals._FlipNormal - 1.0));
    highp vec3 _513 = -_507;
    highp vec3 _514 = vec3(_512.x ? _513.x : _507.x, _512.y ? _513.y : _507.y, _512.z ? _513.z : _507.z);
    highp vec3 _517 = normalize(out_var_TEXCOORD4);
    _473.w = 1.0;
    highp vec4 _692;
    highp float _693;
    if (_Globals._UseShadow != 0u)
    {
        highp float _542 = clamp(dot(_346, mix(_517, _514, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _545 = clamp(dot(_346, mix(_517, _514, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _548 = clamp(dot(_346, mix(_517, _514, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _552 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _555 = clamp(_345 + distance(_346, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _558 = mix(1.0, _555, _Globals._ShadowReceive);
        highp float _559 = _542 * _558;
        highp float _562 = mix(1.0, _555, _Globals._Shadow2ndReceive);
        highp float _566 = mix(1.0, _555, _Globals._Shadow3rdReceive);
        highp float _577 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _578 = clamp(_577, 0.0, 1.0);
        highp float _580 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _593 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _607 = clamp(_577 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _620 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _635 = (_294 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _636 = clamp((_542 * _558 + (-_578)) / clamp(fwidth(_559) * _552 + (_580 - _578), 0.0, 1.0), 0.0, 1.0) * _635;
        highp vec3 _668 = mix(mix(_473.xyz * _Globals._ShadowColor.xyz, (_473.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_545 * _562 + (-_593)) / clamp(fwidth(_545 * _562) * _552 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _593), 0.0, 1.0), 0.0, 1.0) * _635)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_473.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_548 * _566 + (-_620)) / clamp(fwidth(_548 * _566) * _552 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _620), 0.0, 1.0), 0.0, 1.0) * _635)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _674 = _473.xyz * out_var_TEXCOORD6;
        highp vec3 _680 = mix(mix(_668, _668 * _473.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _473.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _1803 = isnan(_680);
        bvec3 _1804 = isnan(_674);
        highp vec3 _1805 = min(_680, _674);
        highp vec3 _1806 = vec3(_1803.x ? _674.x : _1805.x, _1803.y ? _674.y : _1805.y, _1803.z ? _674.z : _1805.z);
        highp vec3 _688 = mix(mix(vec3(_1804.x ? _680.x : _1806.x, _1804.y ? _680.y : _1806.y, _1804.z ? _680.z : _1806.z), _674, _Globals._ShadowBorderColor.xyz * (clamp((_542 * _558 + (-_607)) / clamp(fwidth(_559) * _552 + (_580 - _607), 0.0, 1.0), 0.0, 1.0) * _635)), _674, vec3(mix(1.0, _636, _Globals._ShadowStrength)));
        _692 = vec4(_688.x, _688.y, _688.z, _473.w);
        _693 = _636;
    }
    else
    {
        highp vec3 _690 = _473.xyz * out_var_TEXCOORD6;
        _692 = vec4(_690.x, _690.y, _690.z, _473.w);
        _693 = 1.0;
    }
    highp vec3 _696 = vec3(_Globals._LightMaxLimit);
    bvec3 _1808 = isnan(out_var_TEXCOORD6);
    bvec3 _1809 = isnan(_696);
    highp vec3 _1810 = min(out_var_TEXCOORD6, _696);
    highp vec3 _1811 = vec3(_1808.x ? _696.x : _1810.x, _1808.y ? _696.y : _1810.y, _1808.z ? _696.z : _1810.z);
    highp vec3 _697 = vec3(_1809.x ? out_var_TEXCOORD6.x : _1811.x, _1809.y ? out_var_TEXCOORD6.y : _1811.y, _1809.z ? out_var_TEXCOORD6.z : _1811.z);
    highp float _698 = clamp(_693, 0.0, 1.0);
    highp vec3 _700 = _473.xyz * _Globals._LightMaxLimit;
    bvec3 _1813 = isnan(_692.xyz);
    bvec3 _1814 = isnan(_700);
    highp vec3 _1815 = min(_692.xyz, _700);
    highp vec3 _1816 = vec3(_1813.x ? _700.x : _1815.x, _1813.y ? _700.y : _1815.y, _1813.z ? _700.z : _1815.z);
    highp vec3 _701 = vec3(_1814.x ? _692.xyz.x : _1816.x, _1814.y ? _692.xyz.y : _1816.y, _1814.z ? _692.xyz.z : _1816.z);
    highp vec4 _748;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _718 = pow(clamp(1.0 - abs(dot(mix(_517, _514, vec3(_Globals._RimShadeNormalStrength)), _362)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _727 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _741 = _701.xyz;
        highp vec3 _746 = mix(_741, _741 * _Globals._RimShadeColor.xyz, vec3(clamp((_718 - _727) / clamp(fwidth(_718) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _727), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _748 = vec4(_746.x, _746.y, _746.z, _692.w);
    }
    else
    {
        _748 = vec4(_701.x, _701.y, _701.z, _692.w);
    }
    highp vec4 _821;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _772 = dot(normalize(((-_362) * _Globals._BacklightViewStrength) + _346), mix(_517, _514, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _782;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _782 = _772 * clamp(_345 + distance(_346, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _782 = _772;
        }
        highp float _791 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _819 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _473.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_294 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_362, _346) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_782 - _791) / clamp(fwidth(_782) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _791), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _697 + _748.xyz;
        _821 = vec4(_819.x, _819.y, _819.z, _748.w);
    }
    else
    {
        _821 = _748;
    }
    highp vec4 _1093;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _836 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _406 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _838 = _Globals._Smoothness * _836.x;
        highp vec3 _841 = dFdx(_514);
        highp vec3 _842 = abs(_841);
        highp vec3 _843 = dFdy(_514);
        highp vec3 _844 = abs(_843);
        highp float _845 = dot(_842, _842);
        highp float _846 = dot(_844, _844);
        highp float _847 = isnan(_846) ? _845 : (isnan(_845) ? _846 : max(_845, _846));
        highp float _850 = (_847 / (_847 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _853 = clamp(1.0 - (isnan(_850) ? 0.0 : (isnan(0.0) ? _850 : max(0.0, _850))), 0.0, 1.0);
        highp float _854 = isnan(_853) ? _838 : (isnan(_838) ? _853 : min(_838, _853));
        highp float _855 = 1.0 - _854;
        highp float _856 = _855 * _855;
        highp vec4 _866 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _406 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _868 = _Globals._Metallic * _866.x;
        highp vec3 _871 = _821.xyz - (_821.xyz * _868);
        highp vec3 _877 = mix(vec3(_Globals._Reflectance), _473.xyz, vec3(_868));
        highp vec4 _887 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _406 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _888 = _Globals._ReflectionColor * _887;
        highp vec4 _989;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _961;
            do
            {
                highp vec3 _899 = mix(_517, _514, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _901 = normalize(_362 + _346);
                highp float _903 = clamp(dot(_899, _901), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _912 = pow(_903, 1.0 / _856);
                    highp float _919 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _961 = vec3(clamp((_912 - _919) / clamp(fwidth(_912) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _919), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _931 = clamp(dot(_899, _362), 0.0, 1.0);
                highp float _933 = clamp(dot(_899, _346), 0.0, 1.0);
                highp float _936 = isnan(0.00200000009499490261077880859375) ? _856 : (isnan(_856) ? 0.00200000009499490261077880859375 : max(_856, 0.00200000009499490261077880859375));
                highp float _937 = 1.0 - _936;
                highp float _941 = _936 * _936;
                highp float _944 = (_903 * _941 + (-_903)) * _903 + 1.0;
                highp float _952 = 1.0 - clamp(dot(_346, _901), 0.0, 1.0);
                _961 = (_877 + ((((((vec3(1.0) - _877) * _952) * _952) * _952) * _952) * _952)) * (((0.5 / ((_933 * (_931 * _937 + _936) + (_931 * (_933 * _937 + _936))) + 9.9999997473787516355514526367188e-06)) * (_941 / (_944 * _944 + 1.0000000116860974230803549289703e-07))) * _933);
                break;
            } while(false);
            highp vec3 _962 = _871.xyz;
            highp vec3 _963 = _888.xyz;
            highp vec3 _964 = _963 * _697;
            highp vec3 _969 = _963 * _697 + _962;
            highp vec3 _970 = _962 * _964;
            bvec3 _972 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _973 = vec3(_972.x ? _964.x : _270.x, _972.y ? _964.y : _270.y, _972.z ? _964.z : _270.z);
            bvec3 _975 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _983;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _981 = (-_962) * _964 + _969;
                bvec3 _1838 = isnan(_981);
                bvec3 _1839 = isnan(_962);
                highp vec3 _1840 = max(_981, _962);
                highp vec3 _1841 = vec3(_1838.x ? _962.x : _1840.x, _1838.y ? _962.y : _1840.y, _1838.z ? _962.z : _1840.z);
                _983 = vec3(_1839.x ? _981.x : _1841.x, _1839.y ? _981.y : _1841.y, _1839.z ? _981.z : _1841.z);
            }
            else
            {
                _983 = vec3(_975.x ? _969.x : _973.x, _975.y ? _969.y : _973.y, _975.z ? _969.z : _973.z);
            }
            bvec3 _985 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _987 = mix(_962, vec3(_985.x ? _970.x : _983.x, _985.y ? _970.y : _983.y, _985.z ? _970.z : _983.z), _961 * _888.w);
            _989 = vec4(_987.x, _987.y, _987.z, _821.w);
        }
        else
        {
            _989 = vec4(_871.x, _871.y, _871.z, _821.w);
        }
        highp vec4 _1092;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1011 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1018 = reflect(-_362, mix(_517, _514, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1021 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1018, _855 * ((-4.19999980926513671875) * _855 + 10.19999980926513671875));
            highp vec3 _1041 = ((_1021.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1021.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _697, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1047 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1018, _855 * 8.0).xyz * 1.0;
            highp float _1058 = 1.0 - clamp(dot(_514, _362), 0.0, 1.0);
            highp vec3 _1067 = _888.xyz;
            highp vec3 _1072 = _989.xyz + _1067;
            highp vec3 _1073 = _989.xyz * _1067;
            bvec3 _1075 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1076 = vec3(_1075.x ? _1067.x : _270.x, _1075.y ? _1067.y : _270.y, _1075.z ? _1067.z : _270.z);
            bvec3 _1078 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1086;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1084 = (-_989.xyz) * _1067 + _1072;
                bvec3 _1843 = isnan(_1084);
                bvec3 _1844 = isnan(_989.xyz);
                highp vec3 _1845 = max(_1084, _989.xyz);
                highp vec3 _1846 = vec3(_1843.x ? _989.xyz.x : _1845.x, _1843.y ? _989.xyz.y : _1845.y, _1843.z ? _989.xyz.z : _1845.z);
                _1086 = vec3(_1844.x ? _1084.x : _1846.x, _1844.y ? _1084.y : _1846.y, _1844.z ? _1084.z : _1846.z);
            }
            else
            {
                _1086 = vec3(_1078.x ? _1072.x : _1076.x, _1078.y ? _1072.y : _1076.y, _1078.z ? _1072.z : _1076.z);
            }
            bvec3 _1088 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1090 = mix(_989.xyz, vec3(_1088.x ? _1073.x : _1086.x, _1088.y ? _1073.y : _1086.y, _1088.z ? _1073.z : _1086.z), ((vec3(_1011.x ? _1041.x : _1047.x, _1011.y ? _1041.y : _1047.y, _1011.z ? _1041.z : _1047.z) * (1.0 / (_856 * _856 + 1.0))) * mix(_877, vec3(clamp(_854 + (1.0 - ((-_868) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1058 * _1058) * _1058) * _1058) * _1058))) * _888.w);
            _1092 = vec4(_1090.x, _1090.y, _1090.z, _989.w);
        }
        else
        {
            _1092 = _989;
        }
        _1093 = _1092;
    }
    else
    {
        _1093 = _821;
    }
    highp vec4 _1258;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1138;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1115 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _406 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1115.w = _1115.w * _1115.x;
            highp vec2 _1126 = ((_1115.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1127 = vec3(_1126.x, _1126.y, _276.z);
            highp vec2 _1128 = _1126.xy;
            _1127.z = sqrt(1.0 - clamp(dot(_1128, _1128), 0.0, 1.0));
            highp vec3 _1135 = normalize(_371 * _1127);
            highp vec3 _1136 = -_1135;
            _1138 = vec3(_512.x ? _1136.x : _1135.x, _512.y ? _1136.y : _1135.y, _512.z ? _1136.z : _1135.z);
        }
        else
        {
            _1138 = mix(_517, _514, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1155 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1162 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1163 = vec3(_1155.x ? _362.x : _1162.x, _1155.y ? _362.y : _1162.y, _1155.z ? _362.z : _1162.z);
        bvec3 _1164 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1171 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1172 = vec3(_1164.x ? vec3(0.0, 1.0, 0.0).x : _1171.x, _1164.y ? vec3(0.0, 1.0, 0.0).y : _1171.y, _1164.z ? vec3(0.0, 1.0, 0.0).z : _1171.z);
        highp vec3 _1176 = normalize(_1172 - (_1163 * dot(_1163, _1172)));
        highp vec4 _1198 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1138) * mat3(cross(_1163, _1176), _1176, _1163)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1222 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _406 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1224 = mix(_1198.xyz, _1198.xyz * _697, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1231 = mix(_1224, _1224 * _473.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1238 = _1093.xyz + _1231;
        highp vec3 _1239 = _1093.xyz * _1231;
        bvec3 _1241 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1242 = vec3(_1241.x ? _1231.x : _270.x, _1241.y ? _1231.y : _270.y, _1241.z ? _1231.z : _270.z);
        bvec3 _1244 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1252;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1250 = (-_1093.xyz) * _1231 + _1238;
            bvec3 _1848 = isnan(_1250);
            bvec3 _1849 = isnan(_1093.xyz);
            highp vec3 _1850 = max(_1250, _1093.xyz);
            highp vec3 _1851 = vec3(_1848.x ? _1093.xyz.x : _1850.x, _1848.y ? _1093.xyz.y : _1850.y, _1848.z ? _1093.xyz.z : _1850.z);
            _1252 = vec3(_1849.x ? _1250.x : _1851.x, _1849.y ? _1250.y : _1851.y, _1849.z ? _1250.z : _1851.z);
        }
        else
        {
            _1252 = vec3(_1244.x ? _1238.x : _1242.x, _1244.y ? _1238.y : _1242.y, _1244.z ? _1238.z : _1242.z);
        }
        bvec3 _1254 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1256 = mix(_1093.xyz, vec3(_1254.x ? _1239.x : _1252.x, _1254.y ? _1239.y : _1252.y, _1254.z ? _1239.z : _1252.z), _1222.xyz * (_Globals._MatCapBlend * ((_294 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1198.w, _1198.w * _698, _Globals._MatCapShadowMask))));
        _1258 = vec4(_1256.x, _1256.y, _1256.z, _1093.w);
    }
    else
    {
        _1258 = _1093;
    }
    highp vec4 _1422;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1303;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1280 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _406 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1280.w = _1280.w * _1280.x;
            highp vec2 _1291 = ((_1280.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1292 = vec3(_1291.x, _1291.y, _276.z);
            highp vec2 _1293 = _1291.xy;
            _1292.z = sqrt(1.0 - clamp(dot(_1293, _1293), 0.0, 1.0));
            highp vec3 _1300 = normalize(_371 * _1292);
            highp vec3 _1301 = -_1300;
            _1303 = vec3(_512.x ? _1301.x : _1300.x, _512.y ? _1301.y : _1300.y, _512.z ? _1301.z : _1300.z);
        }
        else
        {
            _1303 = mix(_517, _514, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1319 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1326 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
        highp vec3 _1327 = vec3(_1319.x ? _362.x : _1326.x, _1319.y ? _362.y : _1326.y, _1319.z ? _362.z : _1326.z);
        bvec3 _1328 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1335 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
        highp vec3 _1336 = vec3(_1328.x ? vec3(0.0, 1.0, 0.0).x : _1335.x, _1328.y ? vec3(0.0, 1.0, 0.0).y : _1335.y, _1328.z ? vec3(0.0, 1.0, 0.0).z : _1335.z);
        highp vec3 _1340 = normalize(_1336 - (_1327 * dot(_1327, _1336)));
        highp vec4 _1362 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1303 * mat3(cross(_1327, _1340), _1340, _1327)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1363 = _1362.xyz;
        highp float _1369 = _1362.w;
        highp vec4 _1386 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _406 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1388 = mix(_1363, _1363 * _697, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1395 = mix(_1388, _1388 * _473.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1402 = _1258.xyz + _1395;
        highp vec3 _1403 = _1258.xyz * _1395;
        bvec3 _1405 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1406 = vec3(_1405.x ? _1395.x : _270.x, _1405.y ? _1395.y : _270.y, _1405.z ? _1395.z : _270.z);
        bvec3 _1408 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1416;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1414 = (-_1258.xyz) * _1395 + _1402;
            bvec3 _1853 = isnan(_1414);
            bvec3 _1854 = isnan(_1258.xyz);
            highp vec3 _1855 = max(_1414, _1258.xyz);
            highp vec3 _1856 = vec3(_1853.x ? _1258.xyz.x : _1855.x, _1853.y ? _1258.xyz.y : _1855.y, _1853.z ? _1258.xyz.z : _1855.z);
            _1416 = vec3(_1854.x ? _1414.x : _1856.x, _1854.y ? _1414.y : _1856.y, _1854.z ? _1414.z : _1856.z);
        }
        else
        {
            _1416 = vec3(_1408.x ? _1402.x : _1406.x, _1408.y ? _1402.y : _1406.y, _1408.z ? _1402.z : _1406.z);
        }
        bvec3 _1418 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1420 = mix(_1258.xyz, vec3(_1418.x ? _1403.x : _1416.x, _1418.y ? _1403.y : _1416.y, _1418.z ? _1403.z : _1416.z), _1386.xyz * (_Globals._MatCap2ndBlend * ((_294 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1369, _1369 * _698, _Globals._MatCap2ndShadowMask))));
        _1422 = vec4(_1420.x, _1420.y, _1420.z, _1258.w);
    }
    else
    {
        _1422 = _1258;
    }
    highp vec4 _1568;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1441 = mix(_517, _514, vec3(_Globals._RimNormalStrength));
        highp float _1445 = dot(_346, _1441) * 0.5 + 0.5;
        highp float _1468 = (_294 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1441, _362)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1472 = mix(_1468, _1468 * clamp((_1445 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1473 = _1468 * clamp(((1.0 - _1445) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1483 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _1492 = clamp((_1472 - _1483) / clamp(fwidth(_1472) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1483), 0.0, 1.0), 0.0, 1.0);
        highp float _1499 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _1509 = clamp((_1473 * _Globals._RimDirStrength + (-_1499)) / clamp(fwidth(_1473 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _1499), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _1521 = vec3(1.0 - _Globals._RimEnableLighting) + (_697 * _Globals._RimEnableLighting);
        highp vec3 _1523 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _473.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _1524 = _1523 * _1521;
        highp vec3 _1530 = _1523 * _1521 + _1422.xyz;
        highp vec3 _1531 = _1422.xyz * _1524;
        bvec3 _1533 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _1534 = vec3(_1533.x ? _1524.x : _270.x, _1533.y ? _1524.y : _270.y, _1533.z ? _1524.z : _270.z);
        bvec3 _1536 = bvec3(_Globals._RimBlendMode == 1u);
        bool _1538 = _Globals._RimBlendMode == 2u;
        highp vec3 _1544;
        if (_1538)
        {
            highp vec3 _1542 = (-_1422.xyz) * _1524 + _1530;
            bvec3 _1858 = isnan(_1542);
            bvec3 _1859 = isnan(_1422.xyz);
            highp vec3 _1860 = max(_1542, _1422.xyz);
            highp vec3 _1861 = vec3(_1858.x ? _1422.xyz.x : _1860.x, _1858.y ? _1422.xyz.y : _1860.y, _1858.z ? _1422.xyz.z : _1860.z);
            _1544 = vec3(_1859.x ? _1542.x : _1861.x, _1859.y ? _1542.y : _1861.y, _1859.z ? _1542.z : _1861.z);
        }
        else
        {
            _1544 = vec3(_1536.x ? _1530.x : _1534.x, _1536.y ? _1530.y : _1534.y, _1536.z ? _1530.z : _1534.z);
        }
        bvec3 _1546 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _1549 = mix(_1422.xyz, vec3(_1546.x ? _1531.x : _1544.x, _1546.y ? _1531.y : _1544.y, _1546.z ? _1531.z : _1544.z), vec3(mix(_1492, _1492 * _698, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _1551 = _Globals._RimIndirColor.xyz * _1521;
        highp vec3 _1555 = _Globals._RimIndirColor.xyz * _1521 + _1549;
        highp vec3 _1556 = _1549 * _1551;
        highp vec3 _1557 = vec3(_1533.x ? _1551.x : _270.x, _1533.y ? _1551.y : _270.y, _1533.z ? _1551.z : _270.z);
        highp vec3 _1564;
        if (_1538)
        {
            highp vec3 _1562 = (-_1549) * _1551 + _1555;
            bvec3 _1863 = isnan(_1562);
            bvec3 _1864 = isnan(_1549);
            highp vec3 _1865 = max(_1562, _1549);
            highp vec3 _1866 = vec3(_1863.x ? _1549.x : _1865.x, _1863.y ? _1549.y : _1865.y, _1863.z ? _1549.z : _1865.z);
            _1564 = vec3(_1864.x ? _1562.x : _1866.x, _1864.y ? _1562.y : _1866.y, _1864.z ? _1562.z : _1866.z);
        }
        else
        {
            _1564 = vec3(_1536.x ? _1555.x : _1557.x, _1536.y ? _1555.y : _1557.y, _1536.z ? _1555.z : _1557.z);
        }
        highp vec3 _1566 = mix(_1549, vec3(_1546.x ? _1556.x : _1564.x, _1546.y ? _1556.y : _1564.y, _1546.z ? _1556.z : _1564.z), vec3(mix(_1509, _1509 * _698, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _1568 = vec4(_1566.x, _1566.y, _1566.z, _1422.w);
    }
    else
    {
        _1568 = _1422;
    }
    highp vec4 _1633;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _1582 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _350, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _1596 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _1602;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _1602 = roundEven(_1596);
        }
        else
        {
            _1602 = _1596;
        }
        highp vec3 _1609 = mix(_1582, _1582 * _473.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _1613 = _1568.xyz + _1609;
        highp vec3 _1614 = _1568.xyz * _1609;
        bvec3 _1616 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _1617 = vec3(_1616.x ? _1609.x : _270.x, _1616.y ? _1609.y : _270.y, _1616.z ? _1609.z : _270.z);
        bvec3 _1619 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _1627;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _1625 = (-_1568.xyz) * _1609 + _1613;
            bvec3 _1868 = isnan(_1625);
            bvec3 _1869 = isnan(_1568.xyz);
            highp vec3 _1870 = max(_1625, _1568.xyz);
            highp vec3 _1871 = vec3(_1868.x ? _1568.xyz.x : _1870.x, _1868.y ? _1568.xyz.y : _1870.y, _1868.z ? _1568.xyz.z : _1870.z);
            _1627 = vec3(_1869.x ? _1625.x : _1871.x, _1869.y ? _1625.y : _1871.y, _1869.z ? _1625.z : _1871.z);
        }
        else
        {
            _1627 = vec3(_1619.x ? _1613.x : _1617.x, _1619.y ? _1613.y : _1617.y, _1619.z ? _1613.z : _1617.z);
        }
        bvec3 _1629 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _1631 = mix(_1568.xyz, vec3(_1629.x ? _1614.x : _1627.x, _1629.y ? _1614.y : _1627.y, _1629.z ? _1614.z : _1627.z), vec3((_Globals._EmissionBlend * mix(1.0, _1602, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _1633 = vec4(_1631.x, _1631.y, _1631.z, _1568.w);
    }
    else
    {
        _1633 = _1568;
    }
    highp vec4 _1698;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _1647 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _350, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _1661 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _1667;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _1667 = roundEven(_1661);
        }
        else
        {
            _1667 = _1661;
        }
        highp vec3 _1674 = mix(_1647, _1647 * _473.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _1678 = _1633.xyz + _1674;
        highp vec3 _1679 = _1633.xyz * _1674;
        bvec3 _1681 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _1682 = vec3(_1681.x ? _1674.x : _270.x, _1681.y ? _1674.y : _270.y, _1681.z ? _1674.z : _270.z);
        bvec3 _1684 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _1692;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _1690 = (-_1633.xyz) * _1674 + _1678;
            bvec3 _1873 = isnan(_1690);
            bvec3 _1874 = isnan(_1633.xyz);
            highp vec3 _1875 = max(_1690, _1633.xyz);
            highp vec3 _1876 = vec3(_1873.x ? _1633.xyz.x : _1875.x, _1873.y ? _1633.xyz.y : _1875.y, _1873.z ? _1633.xyz.z : _1875.z);
            _1692 = vec3(_1874.x ? _1690.x : _1876.x, _1874.y ? _1690.y : _1876.y, _1874.z ? _1690.z : _1876.z);
        }
        else
        {
            _1692 = vec3(_1684.x ? _1678.x : _1682.x, _1684.y ? _1678.y : _1682.y, _1684.z ? _1678.z : _1682.z);
        }
        bvec3 _1694 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _1696 = mix(_1633.xyz, vec3(_1694.x ? _1679.x : _1692.x, _1694.y ? _1679.y : _1692.y, _1694.z ? _1679.z : _1692.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _1667, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _1698 = vec4(_1696.x, _1696.y, _1696.z, _1633.w);
    }
    else
    {
        _1698 = _1633;
    }
    bvec3 _1700 = bvec3(_294 < 0.0);
    highp vec3 _1709 = mix(_1698.xyz, _Globals._BackfaceColor.xyz * _697, vec3(_Globals._BackfaceColor.w));
    highp vec3 _1744 = vec3(_1700.x ? _1709.x : _1698.xyz.x, _1700.y ? _1709.y : _1698.xyz.y, _1700.z ? _1709.z : _1698.xyz.z).xyz;
    highp vec3 _1752 = mix(_1744, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _1744, vec3(pow(clamp(1.0 - abs(dot(_517, _362)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_294 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : length(_354)) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_1752.x, _1752.y, _1752.z, _1698.w), vec4(out_var_TEXCOORD9));
}
