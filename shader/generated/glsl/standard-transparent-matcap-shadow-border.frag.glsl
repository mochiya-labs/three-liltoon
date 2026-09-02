#version 300 es
precision mediump float;
precision highp int;

vec3 _335;
vec3 _341;
float _342;
vec4 _343;

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
    highp vec4 _Color3rd;
    highp vec4 _Main3rdTex_ST;
    highp vec4 _Main3rdTex_ScrollRotate;
    highp vec4 _Main3rdDistanceFade;
    highp vec4 _Main3rdTexDecalAnimation;
    highp vec4 _Main3rdTexDecalSubParam;
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
    highp float _Main3rdTexAngle;
    highp float _Main3rdEnableLighting;
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
    uint _Main3rdTexBlendMode;
    uint _Main3rdTexAlphaMode;
    uint _Main3rdTex_UVMode;
    uint _Main3rdTex_Cull;
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
    uint _UseMain3rdTex;
    uint _Main3rdTexIsMSDF;
    uint _Main3rdTexIsDecal;
    uint _Main3rdTexIsLeftOnly;
    uint _Main3rdTexIsRightOnly;
    uint _Main3rdTexShouldCopy;
    uint _Main3rdTexShouldFlipMirror;
    uint _Main3rdTexShouldFlipCopy;
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
uniform highp sampler2D SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp sampler2D SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat;
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
    highp vec3 _363 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _370 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _386 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _395 = float(gl_FrontFacing ? 1 : (-1));
    highp float _446;
    do
    {
        highp vec3 _402 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _403 = _402.xy;
        highp float _409 = _402.z;
        if ((any(lessThan(_403, vec2(0.0))) || any(greaterThan(_403, vec2(1.0)))) || (_409 > 1.0))
        {
            _446 = 1.0;
            break;
        }
        highp float _419 = _409 + _Globals.uShadowBias;
        _446 = (((step(_419, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _403), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_419, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _403), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_419, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _403), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_419, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _403), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _447 = normalize(out_var_TEXCOORD7);
    highp vec3 _451 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _455 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _456 = length(_455);
    highp vec3 _463 = normalize(_455);
    highp mat3 _472 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _477 = bvec2(_395 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _478 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _491 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _492 = sin(_491);
    highp float _493 = cos(_491);
    highp vec2 _494 = (vec2(_477.x ? _478.x : out_var_TEXCOORD0.xy.x, _477.y ? _478.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _495 = _494.x;
    highp float _496 = _494.y;
    highp vec2 _507 = (vec2(_495 * _493 + (-(_496 * _492)), _495 * _492 + (_496 * _493)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec2 _508 = dFdx(_507);
    highp vec2 _509 = abs(_508);
    highp vec2 _510 = dFdy(_507);
    highp vec2 _511 = abs(_510);
    highp vec4 _515 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _507);
    highp vec3 _522 = pow(abs(_515.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _523 = _522.z;
    highp float _524 = _522.y;
    bvec4 _526 = bvec4(_523 > _524);
    highp vec4 _527 = vec4(_523, _524, -1.0, 0.666666686534881591796875);
    highp vec4 _528 = vec4(_524, _523, 0.0, -0.3333333432674407958984375);
    highp vec4 _529 = vec4(_526.x ? _527.x : _528.x, _526.y ? _527.y : _528.y, _526.z ? _527.z : _528.z, _526.w ? _527.w : _528.w);
    highp float _530 = _529.x;
    highp float _531 = _522.x;
    bvec4 _533 = bvec4(_530 > _531);
    highp vec4 _536 = vec4(_530, _529.yw, _531);
    highp vec4 _538 = vec4(_531, _529.yz, _530);
    highp vec4 _539 = vec4(_533.x ? _536.x : _538.x, _533.y ? _536.y : _538.y, _533.z ? _536.z : _538.z, _533.w ? _536.w : _538.w);
    highp float _544 = _539.x - (isnan(_539.y) ? _539.w : (isnan(_539.w) ? _539.y : min(_539.w, _539.y)));
    highp float _557 = clamp((_544 / (_539.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _560 = clamp(_539.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _574 = vec3((-_560) * _557 + _560) + (clamp(abs((fract(vec3(abs(_539.z + ((_539.w - _539.y) / (6.0 * _544 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_560 * _557));
    highp vec4 _578 = vec4(_574.x, _574.y, _574.z, _515.w) * _Globals._Color;
    highp vec3 _610;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _591 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _507 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _591.w = _591.w * _591.x;
        highp vec2 _602 = ((_591.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _603 = vec3(_602.x, _602.y, _341.z);
        highp vec2 _604 = _602.xy;
        _603.z = sqrt(1.0 - clamp(dot(_604, _604), 0.0, 1.0));
        _610 = _603;
    }
    else
    {
        _610 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _659;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _619 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _620 = vec2(_619.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _619.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _622 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _623 = vec2(_622.x ? out_var_TEXCOORD1.xy.x : _620.x, _622.y ? out_var_TEXCOORD1.xy.y : _620.y);
        bvec2 _625 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _635 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_625.x ? out_var_TEXCOORD1.zw.x : _623.x, _625.y ? out_var_TEXCOORD1.zw.y : _623.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _635.w = _635.w * _635.x;
        highp vec2 _647 = (((_635.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _659 = vec3(_610.xy + _647, _610.z * sqrt(1.0 - clamp(dot(_647, _647), 0.0, 1.0)));
    }
    else
    {
        _659 = _610;
    }
    highp vec3 _661 = normalize(_472 * _659);
    bvec3 _666 = bvec3(_395 < (_Globals._FlipNormal - 1.0));
    highp vec3 _667 = -_661;
    highp vec3 _668 = vec3(_666.x ? _667.x : _661.x, _666.y ? _667.y : _661.y, _666.z ? _667.z : _661.z);
    highp float _670 = clamp(dot(_668, _463), 0.0, 1.0);
    highp vec3 _671 = normalize(out_var_TEXCOORD4);
    highp vec2 _675 = ((_668 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _370, _363)).xy * 0.5) + vec2(0.5);
    bool _676 = out_var_TEXCOORD5.w > 0.0;
    bool _681 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _959;
    highp vec4 _960;
    if (_681)
    {
        bvec2 _687 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _688 = vec2(_687.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _687.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _690 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _691 = vec2(_690.x ? out_var_TEXCOORD1.xy.x : _688.x, _690.y ? out_var_TEXCOORD1.xy.y : _688.y);
        bvec2 _693 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _694 = vec2(_693.x ? out_var_TEXCOORD1.zw.x : _691.x, _693.y ? out_var_TEXCOORD1.zw.y : _691.y);
        bvec2 _696 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _697 = vec2(_696.x ? _675.x : _694.x, _696.y ? _675.y : _694.y);
        highp vec4 _736 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _737 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _745;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _744 = _697;
            _744.x = abs(_697.x - 0.5) + 0.5;
            _745 = _744;
        }
        else
        {
            _745 = _697;
        }
        highp vec2 _746 = _736.xy;
        highp vec2 _747 = _736.zw;
        highp vec2 _748 = _745 * _746 + _747;
        highp vec2 _757;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_697.x < 0.5))
        {
            highp vec2 _756 = _748;
            _756.x = 1.0 - _748.x;
            _757 = _756;
        }
        else
        {
            _757 = _748;
        }
        highp vec2 _764;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _676)
        {
            highp vec2 _763 = _757;
            _763.x = 1.0 - _757.x;
            _764 = _763;
        }
        else
        {
            _764 = _757;
        }
        highp vec2 _769;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _676)
        {
            highp vec2 _768 = _764;
            _768.x = -1.0;
            _769 = _768;
        }
        else
        {
            _769 = _764;
        }
        highp vec2 _775;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_676))
        {
            highp vec2 _774 = _769;
            _774.x = -1.0;
            _775 = _774;
        }
        else
        {
            _775 = _769;
        }
        highp float _778 = sin(_737);
        highp float _779 = cos(_737);
        highp vec2 _780 = ((_775 - _747) / _746) - vec2(0.5);
        highp float _781 = _780.x;
        highp float _782 = _780.y;
        highp vec2 _790 = (vec2(_781 * _779 + (-(_782 * _778)), _781 * _778 + (_782 * _779)) + vec2(0.5)) * _746 + _747;
        uint _794 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _798 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _794 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _794);
        highp float _799 = _790.x;
        highp float _800 = _790.y;
        uint _807 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _817 = ((mix(vec2(_799, 1.0 - _800), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_798 % _807), float(_798 / _807))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _817.y = 1.0 - _817.y;
        highp vec4 _822 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _817);
        highp vec4 _838;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _825 = _822.x;
            highp float _826 = _822.y;
            highp float _827 = _822.z;
            highp float _828 = isnan(_826) ? _825 : (isnan(_825) ? _826 : min(_825, _826));
            highp float _829 = isnan(_826) ? _825 : (isnan(_825) ? _826 : max(_825, _826));
            highp float _830 = isnan(_827) ? _829 : (isnan(_829) ? _827 : min(_829, _827));
            highp float _831 = isnan(_830) ? _828 : (isnan(_828) ? _830 : max(_828, _830));
            _838 = vec4(1.0, 1.0, 1.0, clamp((_831 - 0.5) / clamp(fwidth(_831), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _838 = _822;
        }
        highp vec4 _861;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _842 = clamp(_670 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _845 = 0.5 - abs(_799 - 0.5);
            highp float _852 = 0.5 - abs(_800 - 0.5);
            highp vec4 _860 = _838;
            _860.w = _838.w * (clamp(_845 / clamp(fwidth(_845), 9.9999997473787516355514526367188e-05, _842), 0.0, 1.0) * clamp(_852 / clamp(fwidth(_852), 9.9999997473787516355514526367188e-05, _842), 0.0, 1.0));
            _861 = _860;
        }
        else
        {
            _861 = _838;
        }
        highp vec4 _862 = _Globals._Color2nd * _861;
        highp float _863 = _862.w;
        _862.w = mix(_863, _863 * clamp((_456 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _889;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_395 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_395 < 0.0)))
        {
            highp vec4 _888 = _862;
            _888.w = 0.0;
            _889 = _888;
        }
        else
        {
            _889 = _862;
        }
        highp vec4 _928;
        highp vec4 _929;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _900;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _899 = _578;
                _899.w = _889.w;
                _900 = _899;
            }
            else
            {
                _900 = _578;
            }
            highp vec4 _908;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _907 = _900;
                _907.w = _900.w * _889.w;
                _908 = _907;
            }
            else
            {
                _908 = _900;
            }
            highp vec4 _917;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _916 = _908;
                _916.w = clamp(_908.w + _889.w, 0.0, 1.0);
                _917 = _916;
            }
            else
            {
                _917 = _908;
            }
            highp vec4 _926;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _925 = _917;
                _925.w = clamp(_917.w - _889.w, 0.0, 1.0);
                _926 = _925;
            }
            else
            {
                _926 = _917;
            }
            highp vec4 _927 = _889;
            _927.w = 1.0;
            _928 = _927;
            _929 = _926;
        }
        else
        {
            _928 = _889;
            _929 = _578;
        }
        highp vec3 _939 = _929.xyz + _928.xyz;
        highp vec3 _940 = _929.xyz * _928.xyz;
        bvec3 _942 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _943 = vec3(_942.x ? _928.xyz.x : _335.x, _942.y ? _928.xyz.y : _335.y, _942.z ? _928.xyz.z : _335.z);
        bvec3 _945 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _953;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _951 = (-_929.xyz) * _928.xyz + _939;
            bvec3 _2814 = isnan(_951);
            bvec3 _2815 = isnan(_929.xyz);
            highp vec3 _2816 = max(_951, _929.xyz);
            highp vec3 _2817 = vec3(_2814.x ? _929.xyz.x : _2816.x, _2814.y ? _929.xyz.y : _2816.y, _2814.z ? _929.xyz.z : _2816.z);
            _953 = vec3(_2815.x ? _951.x : _2817.x, _2815.y ? _951.y : _2817.y, _2815.z ? _951.z : _2817.z);
        }
        else
        {
            _953 = vec3(_945.x ? _939.x : _943.x, _945.y ? _939.y : _943.y, _945.z ? _939.z : _943.z);
        }
        bvec3 _955 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _957 = mix(_929.xyz, vec3(_955.x ? _940.x : _953.x, _955.y ? _940.y : _953.y, _955.z ? _940.z : _953.z), vec3(_928.w * _Globals._Main2ndEnableLighting));
        _959 = _928;
        _960 = vec4(_957.x, _957.y, _957.z, _929.w);
    }
    else
    {
        _959 = _Globals._Color2nd;
        _960 = _578;
    }
    bool _965 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1243;
    highp vec4 _1244;
    if (_965)
    {
        bvec2 _971 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _972 = vec2(_971.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _971.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _974 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _975 = vec2(_974.x ? out_var_TEXCOORD1.xy.x : _972.x, _974.y ? out_var_TEXCOORD1.xy.y : _972.y);
        bvec2 _977 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _978 = vec2(_977.x ? out_var_TEXCOORD1.zw.x : _975.x, _977.y ? out_var_TEXCOORD1.zw.y : _975.y);
        bvec2 _980 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _981 = vec2(_980.x ? _675.x : _978.x, _980.y ? _675.y : _978.y);
        highp vec4 _1020 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _1021 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _1029;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _1028 = _981;
            _1028.x = abs(_981.x - 0.5) + 0.5;
            _1029 = _1028;
        }
        else
        {
            _1029 = _981;
        }
        highp vec2 _1030 = _1020.xy;
        highp vec2 _1031 = _1020.zw;
        highp vec2 _1032 = _1029 * _1030 + _1031;
        highp vec2 _1041;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_981.x < 0.5))
        {
            highp vec2 _1040 = _1032;
            _1040.x = 1.0 - _1032.x;
            _1041 = _1040;
        }
        else
        {
            _1041 = _1032;
        }
        highp vec2 _1048;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _676)
        {
            highp vec2 _1047 = _1041;
            _1047.x = 1.0 - _1041.x;
            _1048 = _1047;
        }
        else
        {
            _1048 = _1041;
        }
        highp vec2 _1053;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _676)
        {
            highp vec2 _1052 = _1048;
            _1052.x = -1.0;
            _1053 = _1052;
        }
        else
        {
            _1053 = _1048;
        }
        highp vec2 _1059;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_676))
        {
            highp vec2 _1058 = _1053;
            _1058.x = -1.0;
            _1059 = _1058;
        }
        else
        {
            _1059 = _1053;
        }
        highp float _1062 = sin(_1021);
        highp float _1063 = cos(_1021);
        highp vec2 _1064 = ((_1059 - _1031) / _1030) - vec2(0.5);
        highp float _1065 = _1064.x;
        highp float _1066 = _1064.y;
        highp vec2 _1074 = (vec2(_1065 * _1063 + (-(_1066 * _1062)), _1065 * _1062 + (_1066 * _1063)) + vec2(0.5)) * _1030 + _1031;
        uint _1078 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1082 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1078 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1078);
        highp float _1083 = _1074.x;
        highp float _1084 = _1074.y;
        uint _1091 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1101 = ((mix(vec2(_1083, 1.0 - _1084), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1082 % _1091), float(_1082 / _1091))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1101.y = 1.0 - _1101.y;
        highp vec4 _1106 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1101);
        highp vec4 _1122;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1109 = _1106.x;
            highp float _1110 = _1106.y;
            highp float _1111 = _1106.z;
            highp float _1112 = isnan(_1110) ? _1109 : (isnan(_1109) ? _1110 : min(_1109, _1110));
            highp float _1113 = isnan(_1110) ? _1109 : (isnan(_1109) ? _1110 : max(_1109, _1110));
            highp float _1114 = isnan(_1111) ? _1113 : (isnan(_1113) ? _1111 : min(_1113, _1111));
            highp float _1115 = isnan(_1114) ? _1112 : (isnan(_1112) ? _1114 : max(_1112, _1114));
            _1122 = vec4(1.0, 1.0, 1.0, clamp((_1115 - 0.5) / clamp(fwidth(_1115), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1122 = _1106;
        }
        highp vec4 _1145;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1126 = clamp(_670 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1129 = 0.5 - abs(_1083 - 0.5);
            highp float _1136 = 0.5 - abs(_1084 - 0.5);
            highp vec4 _1144 = _1122;
            _1144.w = _1122.w * (clamp(_1129 / clamp(fwidth(_1129), 9.9999997473787516355514526367188e-05, _1126), 0.0, 1.0) * clamp(_1136 / clamp(fwidth(_1136), 9.9999997473787516355514526367188e-05, _1126), 0.0, 1.0));
            _1145 = _1144;
        }
        else
        {
            _1145 = _1122;
        }
        highp vec4 _1146 = _Globals._Color3rd * _1145;
        highp float _1147 = _1146.w;
        _1146.w = mix(_1147, _1147 * clamp((_456 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1173;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_395 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_395 < 0.0)))
        {
            highp vec4 _1172 = _1146;
            _1172.w = 0.0;
            _1173 = _1172;
        }
        else
        {
            _1173 = _1146;
        }
        highp vec4 _1212;
        highp vec4 _1213;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1184;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1183 = _960;
                _1183.w = _1173.w;
                _1184 = _1183;
            }
            else
            {
                _1184 = _960;
            }
            highp vec4 _1192;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1191 = _1184;
                _1191.w = _1184.w * _1173.w;
                _1192 = _1191;
            }
            else
            {
                _1192 = _1184;
            }
            highp vec4 _1201;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1200 = _1192;
                _1200.w = clamp(_1192.w + _1173.w, 0.0, 1.0);
                _1201 = _1200;
            }
            else
            {
                _1201 = _1192;
            }
            highp vec4 _1210;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1209 = _1201;
                _1209.w = clamp(_1201.w - _1173.w, 0.0, 1.0);
                _1210 = _1209;
            }
            else
            {
                _1210 = _1201;
            }
            highp vec4 _1211 = _1173;
            _1211.w = 1.0;
            _1212 = _1211;
            _1213 = _1210;
        }
        else
        {
            _1212 = _1173;
            _1213 = _960;
        }
        highp vec3 _1223 = _1213.xyz + _1212.xyz;
        highp vec3 _1224 = _1213.xyz * _1212.xyz;
        bvec3 _1226 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1227 = vec3(_1226.x ? _1212.xyz.x : _335.x, _1226.y ? _1212.xyz.y : _335.y, _1226.z ? _1212.xyz.z : _335.z);
        bvec3 _1229 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1237;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1235 = (-_1213.xyz) * _1212.xyz + _1223;
            bvec3 _2839 = isnan(_1235);
            bvec3 _2840 = isnan(_1213.xyz);
            highp vec3 _2841 = max(_1235, _1213.xyz);
            highp vec3 _2842 = vec3(_2839.x ? _1213.xyz.x : _2841.x, _2839.y ? _1213.xyz.y : _2841.y, _2839.z ? _1213.xyz.z : _2841.z);
            _1237 = vec3(_2840.x ? _1235.x : _2842.x, _2840.y ? _1235.y : _2842.y, _2840.z ? _1235.z : _2842.z);
        }
        else
        {
            _1237 = vec3(_1229.x ? _1223.x : _1227.x, _1229.y ? _1223.y : _1227.y, _1229.z ? _1223.z : _1227.z);
        }
        bvec3 _1239 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1241 = mix(_1213.xyz, vec3(_1239.x ? _1224.x : _1237.x, _1239.y ? _1224.y : _1237.y, _1239.z ? _1224.z : _1237.z), vec3(_1212.w * _Globals._Main3rdEnableLighting));
        _1243 = _1212;
        _1244 = vec4(_1241.x, _1241.y, _1241.z, _1213.w);
    }
    else
    {
        _1243 = _Globals._Color3rd;
        _1244 = _960;
    }
    highp vec4 _1284;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1255 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1260;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1259 = _1244;
            _1259.w = _1255;
            _1260 = _1259;
        }
        else
        {
            _1260 = _1244;
        }
        highp vec4 _1267;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1266 = _1260;
            _1266.w = _1260.w * _1255;
            _1267 = _1266;
        }
        else
        {
            _1267 = _1260;
        }
        highp vec4 _1275;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1274 = _1267;
            _1274.w = clamp(_1267.w + _1255, 0.0, 1.0);
            _1275 = _1274;
        }
        else
        {
            _1275 = _1267;
        }
        highp vec4 _1283;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1282 = _1275;
            _1282.w = clamp(_1275.w - _1255, 0.0, 1.0);
            _1283 = _1282;
        }
        else
        {
            _1283 = _1275;
        }
        _1284 = _1283;
    }
    else
    {
        _1284 = _1244;
    }
    highp vec4 _1379;
    highp float _1380;
    if ((_386 & 1) != 0)
    {
        highp vec4 _1288 = _1284;
        _1288.w = 1.0;
        highp vec2 _1294 = roundEven(_Globals._DissolveParams.xy);
        highp float _1295 = _1294.x;
        highp vec4 _1368;
        highp float _1369;
        if (_1295 != 0.0)
        {
            highp float _1311;
            highp float _1312;
            if (_1295 == 1.0)
            {
                _1311 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1312 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1311 = 0.0;
                _1312 = 1.0;
            }
            highp float _1343;
            highp float _1344;
            if (_1295 == 2.0)
            {
                highp vec2 _1321 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1332 = (_1294.y == 1.0) ? (vec2(_1321.x * cos(_Globals._DissolvePos.w) + (-(_1321.y * sin(_Globals._DissolvePos.w))), _342) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1343 = 1.0 - clamp(abs(_1332 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1344 = _1312 * float(_1332 > _Globals._DissolveParams.z);
            }
            else
            {
                _1343 = _1311;
                _1344 = _1312;
            }
            highp float _1365;
            highp float _1366;
            if (_1295 == 3.0)
            {
                highp float _1354 = (_1294.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1365 = 1.0 - clamp(abs(_1354 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1366 = _1344 * float(_1354 > _Globals._DissolveParams.z);
            }
            else
            {
                _1365 = _1343;
                _1366 = _1344;
            }
            highp vec4 _1367 = _1288;
            _1367.w = _1366;
            _1368 = _1367;
            _1369 = _1365;
        }
        else
        {
            _1368 = _1288;
            _1369 = 0.0;
        }
        highp vec4 _1375;
        if ((_386 & 2) != 0)
        {
            highp vec4 _1374 = _1368;
            _1374.w = 1.0 - _1368.w;
            _1375 = _1374;
        }
        else
        {
            _1375 = _1368;
        }
        highp vec4 _1378 = _1375;
        _1378.w = _1375.w * _1284.w;
        _1379 = _1378;
        _1380 = _1369;
    }
    else
    {
        _1379 = _1284;
        _1380 = 0.0;
    }
    if ((_1379.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1610;
    highp float _1611;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1423 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1426 = clamp(_446 + distance(_447, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp vec4 _1431;
        _1431.x = clamp(dot(_447, mix(_671, _668, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1426, _Globals._ShadowReceive);
        _1431.y = clamp(dot(_447, mix(_671, _668, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1426, _Globals._Shadow2ndReceive);
        _1431.z = clamp(dot(_447, mix(_671, _668, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0) * mix(1.0, _1426, _Globals._Shadow3rdReceive);
        highp vec2 _1452 = vec2(_Globals._ShadowBorderMaskLOD);
        bvec2 _2844 = isnan(_509);
        bvec2 _2845 = isnan(_1452);
        highp vec2 _2846 = max(_509, _1452);
        highp vec2 _2847 = vec2(_2844.x ? _1452.x : _2846.x, _2844.y ? _1452.y : _2846.y);
        bvec2 _2849 = isnan(_511);
        bvec2 _2850 = isnan(_1452);
        highp vec2 _2851 = max(_511, _1452);
        highp vec2 _2852 = vec2(_2849.x ? _1452.x : _2851.x, _2849.y ? _1452.y : _2851.y);
        highp vec4 _1456 = textureGrad(SPIRV_Cross_Combined_ShadowBorderMasklil_sampler_trilinear_repeat, _507, vec2(_2845.x ? _509.x : _2847.x, _2845.y ? _509.y : _2847.y), vec2(_2850.x ? _511.x : _2852.x, _2850.y ? _511.y : _2852.y));
        highp vec4 _1464;
        _1464.x = clamp(_1456.x * _Globals._ShadowAOShift.x + _Globals._ShadowAOShift.y, 0.0, 1.0);
        _1464.y = clamp(_1456.y * _Globals._ShadowAOShift.z + _Globals._ShadowAOShift.w, 0.0, 1.0);
        _1464.z = clamp(_1456.z * _Globals._ShadowAOShift2.x + _Globals._ShadowAOShift2.y, 0.0, 1.0);
        bool _1483 = _Globals._ShadowPostAO != 0u;
        bvec3 _1484 = bvec3(_1483);
        highp vec3 _1487 = _1431.xyz * _1464.xyz;
        highp vec3 _1488 = vec3(_1484.x ? _1431.xyz.x : _1487.x, _1484.y ? _1431.xyz.y : _1487.y, _1484.z ? _1431.xyz.z : _1487.z);
        highp float _1489 = _1488.x;
        highp float _1493 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1494 = clamp(_1493, 0.0, 1.0);
        highp float _1496 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1503 = _1488.y;
        highp float _1508 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1520 = clamp(_1493 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1527 = _1488.z;
        highp float _1532 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp vec4 _1541 = vec4((_1489 - _1494) / clamp(fwidth(_1489) * _1423 + (_1496 - _1494), 0.0, 1.0), (_1503 - _1508) / clamp(fwidth(_1503) * _1423 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1508), 0.0, 1.0), (_1527 - _1532) / clamp(fwidth(_1527) * _1423 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1532), 0.0, 1.0), (_1489 - _1520) / clamp(fwidth(_1489) * _1423 + (_1496 - _1520), 0.0, 1.0));
        bvec4 _1542 = bvec4(_1483);
        highp vec4 _1544 = _1541 * _1464.xyzx;
        highp vec4 _1546 = clamp(vec4(_1542.x ? _1544.x : _1541.x, _1542.y ? _1544.y : _1541.y, _1542.z ? _1544.z : _1541.z, _1542.w ? _1544.w : _1541.w), vec4(0.0), vec4(1.0));
        highp float _1551 = (_395 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1553 = _1546.x * _1551;
        highp vec3 _1588 = mix(mix(_1379.xyz * _Globals._ShadowColor.xyz, (_1379.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(_1546.y * _1551)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1379.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(_1546.z * _1551)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1594 = _1379.xyz * out_var_TEXCOORD6;
        highp vec3 _1600 = mix(mix(_1588, _1588 * _1379.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1379.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2854 = isnan(_1600);
        bvec3 _2855 = isnan(_1594);
        highp vec3 _2856 = min(_1600, _1594);
        highp vec3 _2857 = vec3(_2854.x ? _1594.x : _2856.x, _2854.y ? _1594.y : _2856.y, _2854.z ? _1594.z : _2856.z);
        highp vec3 _1608 = mix(mix(vec3(_2855.x ? _1600.x : _2857.x, _2855.y ? _1600.y : _2857.y, _2855.z ? _1600.z : _2857.z), _1594, _Globals._ShadowBorderColor.xyz * (_1546.w * _1551)), _1594, vec3(mix(1.0, _1553, _Globals._ShadowStrength)));
        _1610 = vec4(_1608.x, _1608.y, _1608.z, _1379.w);
        _1611 = _1553;
    }
    else
    {
        highp vec3 _1395 = _1379.xyz * out_var_TEXCOORD6;
        _1610 = vec4(_1395.x, _1395.y, _1395.z, _1379.w);
        _1611 = 1.0;
    }
    highp vec3 _1614 = vec3(_Globals._LightMaxLimit);
    bvec3 _2859 = isnan(out_var_TEXCOORD6);
    bvec3 _2860 = isnan(_1614);
    highp vec3 _2861 = min(out_var_TEXCOORD6, _1614);
    highp vec3 _2862 = vec3(_2859.x ? _1614.x : _2861.x, _2859.y ? _1614.y : _2861.y, _2859.z ? _1614.z : _2861.z);
    highp vec3 _1615 = vec3(_2860.x ? out_var_TEXCOORD6.x : _2862.x, _2860.y ? out_var_TEXCOORD6.y : _2862.y, _2860.z ? out_var_TEXCOORD6.z : _2862.z);
    highp float _1616 = clamp(_1611, 0.0, 1.0);
    highp vec3 _1618 = _1379.xyz * _Globals._LightMaxLimit;
    bvec3 _2864 = isnan(_1610.xyz);
    bvec3 _2865 = isnan(_1618);
    highp vec3 _2866 = min(_1610.xyz, _1618);
    highp vec3 _2867 = vec3(_2864.x ? _1618.x : _2866.x, _2864.y ? _1618.y : _2866.y, _2864.z ? _1618.z : _2866.z);
    highp vec3 _1619 = vec3(_2865.x ? _1610.xyz.x : _2867.x, _2865.y ? _1610.xyz.y : _2867.y, _2865.z ? _1610.xyz.z : _2867.z);
    highp vec4 _1653;
    if (_681)
    {
        highp vec3 _1623 = _1619.xyz;
        highp vec3 _1633 = _1623 + _959.xyz;
        highp vec3 _1634 = _1623 * _959.xyz;
        bvec3 _1636 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1637 = vec3(_1636.x ? _959.xyz.x : _335.x, _1636.y ? _959.xyz.y : _335.y, _1636.z ? _959.xyz.z : _335.z);
        bvec3 _1639 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1647;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1645 = (-_1623) * _959.xyz + _1633;
            bvec3 _2869 = isnan(_1645);
            bvec3 _2870 = isnan(_1623);
            highp vec3 _2871 = max(_1645, _1623);
            highp vec3 _2872 = vec3(_2869.x ? _1623.x : _2871.x, _2869.y ? _1623.y : _2871.y, _2869.z ? _1623.z : _2871.z);
            _1647 = vec3(_2870.x ? _1645.x : _2872.x, _2870.y ? _1645.y : _2872.y, _2870.z ? _1645.z : _2872.z);
        }
        else
        {
            _1647 = vec3(_1639.x ? _1633.x : _1637.x, _1639.y ? _1633.y : _1637.y, _1639.z ? _1633.z : _1637.z);
        }
        bvec3 _1649 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1651 = mix(_1623, vec3(_1649.x ? _1634.x : _1647.x, _1649.y ? _1634.y : _1647.y, _1649.z ? _1634.z : _1647.z), vec3((-_959.w) * _Globals._Main2ndEnableLighting + _959.w));
        _1653 = vec4(_1651.x, _1651.y, _1651.z, _1610.w);
    }
    else
    {
        _1653 = vec4(_1619.x, _1619.y, _1619.z, _1610.w);
    }
    highp vec4 _1686;
    if (_965)
    {
        highp vec3 _1666 = _1653.xyz + _1243.xyz;
        highp vec3 _1667 = _1653.xyz * _1243.xyz;
        bvec3 _1669 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1670 = vec3(_1669.x ? _1243.xyz.x : _335.x, _1669.y ? _1243.xyz.y : _335.y, _1669.z ? _1243.xyz.z : _335.z);
        bvec3 _1672 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1680;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1678 = (-_1653.xyz) * _1243.xyz + _1666;
            bvec3 _2874 = isnan(_1678);
            bvec3 _2875 = isnan(_1653.xyz);
            highp vec3 _2876 = max(_1678, _1653.xyz);
            highp vec3 _2877 = vec3(_2874.x ? _1653.xyz.x : _2876.x, _2874.y ? _1653.xyz.y : _2876.y, _2874.z ? _1653.xyz.z : _2876.z);
            _1680 = vec3(_2875.x ? _1678.x : _2877.x, _2875.y ? _1678.y : _2877.y, _2875.z ? _1678.z : _2877.z);
        }
        else
        {
            _1680 = vec3(_1672.x ? _1666.x : _1670.x, _1672.y ? _1666.y : _1670.y, _1672.z ? _1666.z : _1670.z);
        }
        bvec3 _1682 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1684 = mix(_1653.xyz, vec3(_1682.x ? _1667.x : _1680.x, _1682.y ? _1667.y : _1680.y, _1682.z ? _1667.z : _1680.z), vec3((-_1243.w) * _Globals._Main3rdEnableLighting + _1243.w));
        _1686 = vec4(_1684.x, _1684.y, _1684.z, _1653.w);
    }
    else
    {
        _1686 = _1653;
    }
    highp vec4 _1732;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1702 = pow(clamp(1.0 - abs(dot(mix(_671, _668, vec3(_Globals._RimShadeNormalStrength)), _463)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1711 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1730 = mix(_1686.xyz, _1686.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1702 - _1711) / clamp(fwidth(_1702) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1711), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1732 = vec4(_1730.x, _1730.y, _1730.z, _1686.w);
    }
    else
    {
        _1732 = _1686;
    }
    highp vec4 _1805;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1756 = dot(normalize(((-_463) * _Globals._BacklightViewStrength) + _447), mix(_671, _668, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1766;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1766 = _1756 * clamp(_446 + distance(_447, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1766 = _1756;
        }
        highp float _1775 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1803 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1379.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_395 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_463, _447) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1766 - _1775) / clamp(fwidth(_1766) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1775), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1615 + _1732.xyz;
        _1805 = vec4(_1803.x, _1803.y, _1803.z, _1732.w);
    }
    else
    {
        _1805 = _1732;
    }
    highp vec3 _1808 = _1805.xyz * _1805.w;
    highp vec4 _2061;
    if (_Globals._UseReflection != 0u)
    {
        highp vec3 _1819 = dFdx(_668);
        highp vec3 _1820 = abs(_1819);
        highp vec3 _1821 = dFdy(_668);
        highp vec3 _1822 = abs(_1821);
        highp float _1823 = dot(_1820, _1820);
        highp float _1824 = dot(_1822, _1822);
        highp float _1825 = isnan(_1824) ? _1823 : (isnan(_1823) ? _1824 : max(_1823, _1824));
        highp float _1828 = (_1825 / (_1825 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1831 = clamp(1.0 - (isnan(_1828) ? 0.0 : (isnan(0.0) ? _1828 : max(0.0, _1828))), 0.0, 1.0);
        highp float _1832 = isnan(_1831) ? _Globals._Smoothness : (isnan(_Globals._Smoothness) ? _1831 : min(_Globals._Smoothness, _1831));
        highp float _1833 = 1.0 - _1832;
        highp float _1834 = _1833 * _1833;
        highp vec3 _1837 = _1808.xyz;
        highp vec3 _1839 = _1837 - (_1837 * _Globals._Metallic);
        highp vec3 _1845 = mix(vec3(_Globals._Reflectance), _1379.xyz, vec3(_Globals._Metallic));
        highp vec4 _1847 = _Globals._ReflectionColor;
        highp vec4 _1856;
        if (_Globals._ReflectionApplyTransparency != 0u)
        {
            highp vec4 _1855 = _1847;
            _1855.w = _1847.w * _1805.w;
            _1856 = _1855;
        }
        else
        {
            _1856 = _1847;
        }
        highp vec4 _1957;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1929;
            do
            {
                highp vec3 _1867 = mix(_671, _668, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1869 = normalize(_463 + _447);
                highp float _1871 = clamp(dot(_1867, _1869), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1880 = pow(_1871, 1.0 / _1834);
                    highp float _1887 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1929 = vec3(clamp((_1880 - _1887) / clamp(fwidth(_1880) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1887), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1899 = clamp(dot(_1867, _463), 0.0, 1.0);
                highp float _1901 = clamp(dot(_1867, _447), 0.0, 1.0);
                highp float _1904 = isnan(0.00200000009499490261077880859375) ? _1834 : (isnan(_1834) ? 0.00200000009499490261077880859375 : max(_1834, 0.00200000009499490261077880859375));
                highp float _1905 = 1.0 - _1904;
                highp float _1909 = _1904 * _1904;
                highp float _1912 = (_1871 * _1909 + (-_1871)) * _1871 + 1.0;
                highp float _1920 = 1.0 - clamp(dot(_447, _1869), 0.0, 1.0);
                _1929 = (_1845 + ((((((vec3(1.0) - _1845) * _1920) * _1920) * _1920) * _1920) * _1920)) * (((0.5 / ((_1901 * (_1899 * _1905 + _1904) + (_1899 * (_1901 * _1905 + _1904))) + 9.9999997473787516355514526367188e-06)) * (_1909 / (_1912 * _1912 + 1.0000000116860974230803549289703e-07))) * _1901);
                break;
            } while(false);
            highp vec3 _1930 = _1839.xyz;
            highp vec3 _1932 = _1856.xyz * _1615;
            highp vec3 _1937 = _1856.xyz * _1615 + _1930;
            highp vec3 _1938 = _1930 * _1932;
            bvec3 _1940 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1941 = vec3(_1940.x ? _1932.x : _335.x, _1940.y ? _1932.y : _335.y, _1940.z ? _1932.z : _335.z);
            bvec3 _1943 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1951;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1949 = (-_1930) * _1932 + _1937;
                bvec3 _2899 = isnan(_1949);
                bvec3 _2900 = isnan(_1930);
                highp vec3 _2901 = max(_1949, _1930);
                highp vec3 _2902 = vec3(_2899.x ? _1930.x : _2901.x, _2899.y ? _1930.y : _2901.y, _2899.z ? _1930.z : _2901.z);
                _1951 = vec3(_2900.x ? _1949.x : _2902.x, _2900.y ? _1949.y : _2902.y, _2900.z ? _1949.z : _2902.z);
            }
            else
            {
                _1951 = vec3(_1943.x ? _1937.x : _1941.x, _1943.y ? _1937.y : _1941.y, _1943.z ? _1937.z : _1941.z);
            }
            bvec3 _1953 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1955 = mix(_1930, vec3(_1953.x ? _1938.x : _1951.x, _1953.y ? _1938.y : _1951.y, _1953.z ? _1938.z : _1951.z), _1929 * _1856.w);
            _1957 = vec4(_1955.x, _1955.y, _1955.z, _1805.w);
        }
        else
        {
            _1957 = vec4(_1839.x, _1839.y, _1839.z, _1805.w);
        }
        highp vec4 _2060;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1979 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1986 = reflect(-_463, mix(_671, _668, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1989 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1986, _1833 * ((-4.19999980926513671875) * _1833 + 10.19999980926513671875));
            highp vec3 _2009 = ((_1989.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1989.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1615, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _2015 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1986, _1833 * 8.0).xyz * 1.0;
            highp float _2026 = 1.0 - _670;
            highp vec3 _2040 = _1957.xyz + _1856.xyz;
            highp vec3 _2041 = _1957.xyz * _1856.xyz;
            bvec3 _2043 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _2044 = vec3(_2043.x ? _1856.xyz.x : _335.x, _2043.y ? _1856.xyz.y : _335.y, _2043.z ? _1856.xyz.z : _335.z);
            bvec3 _2046 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _2054;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _2052 = (-_1957.xyz) * _1856.xyz + _2040;
                bvec3 _2904 = isnan(_2052);
                bvec3 _2905 = isnan(_1957.xyz);
                highp vec3 _2906 = max(_2052, _1957.xyz);
                highp vec3 _2907 = vec3(_2904.x ? _1957.xyz.x : _2906.x, _2904.y ? _1957.xyz.y : _2906.y, _2904.z ? _1957.xyz.z : _2906.z);
                _2054 = vec3(_2905.x ? _2052.x : _2907.x, _2905.y ? _2052.y : _2907.y, _2905.z ? _2052.z : _2907.z);
            }
            else
            {
                _2054 = vec3(_2046.x ? _2040.x : _2044.x, _2046.y ? _2040.y : _2044.y, _2046.z ? _2040.z : _2044.z);
            }
            bvec3 _2056 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _2058 = mix(_1957.xyz, vec3(_2056.x ? _2041.x : _2054.x, _2056.y ? _2041.y : _2054.y, _2056.z ? _2041.z : _2054.z), ((vec3(_1979.x ? _2009.x : _2015.x, _1979.y ? _2009.y : _2015.y, _1979.z ? _2009.z : _2015.z) * (1.0 / (_1834 * _1834 + 1.0))) * mix(_1845, vec3(clamp(_1832 + (1.0 - ((-_Globals._Metallic) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_2026 * _2026) * _2026) * _2026) * _2026))) * _1856.w);
            _2060 = vec4(_2058.x, _2058.y, _2058.z, _1957.w);
        }
        else
        {
            _2060 = _1957;
        }
        _2061 = _2060;
    }
    else
    {
        _2061 = vec4(_1808.x, _1808.y, _1808.z, _1805.w);
    }
    highp vec4 _2224;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _2106;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _2083 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _507 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _2083.w = _2083.w * _2083.x;
            highp vec2 _2094 = ((_2083.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _2095 = vec3(_2094.x, _2094.y, _341.z);
            highp vec2 _2096 = _2094.xy;
            _2095.z = sqrt(1.0 - clamp(dot(_2096, _2096), 0.0, 1.0));
            highp vec3 _2103 = normalize(_472 * _2095);
            highp vec3 _2104 = -_2103;
            _2106 = vec3(_666.x ? _2104.x : _2103.x, _666.y ? _2104.y : _2103.y, _666.z ? _2104.z : _2103.z);
        }
        else
        {
            _2106 = mix(_671, _668, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _2123 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _2124 = vec3(_2123.x ? _463.x : _363.x, _2123.y ? _463.y : _363.y, _2123.z ? _463.z : _363.z);
        bvec3 _2125 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _2126 = vec3(_2125.x ? vec3(0.0, 1.0, 0.0).x : _370.x, _2125.y ? vec3(0.0, 1.0, 0.0).y : _370.y, _2125.z ? vec3(0.0, 1.0, 0.0).z : _370.z);
        highp vec3 _2130 = normalize(_2126 - (_2124 * dot(_2124, _2126)));
        highp vec4 _2152 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_2106) * mat3(cross(_2124, _2130), _2130, _2124)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _2158 = mix(_2152.xyz, _2152.xyz * _1615, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _2159 = vec4(_2158.x, _2158.y, _2158.z, _2152.w);
        highp float _2164 = mix(_2152.w, _2152.w * _1616, _Globals._MatCapShadowMask);
        _2159.w = _2164;
        highp vec4 _2174;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _2173 = _2159;
            _2173.w = _2164 * _2061.w;
            _2174 = _2173;
        }
        else
        {
            _2174 = _2159;
        }
        highp vec4 _2188 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _507 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _2197 = mix(_2174.xyz, _2174.xyz * _1379.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _2204 = _2061.xyz + _2197;
        highp vec3 _2205 = _2061.xyz * _2197;
        bvec3 _2207 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _2208 = vec3(_2207.x ? _2197.x : _335.x, _2207.y ? _2197.y : _335.y, _2207.z ? _2197.z : _335.z);
        bvec3 _2210 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _2218;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _2216 = (-_2061.xyz) * _2197 + _2204;
            bvec3 _2909 = isnan(_2216);
            bvec3 _2910 = isnan(_2061.xyz);
            highp vec3 _2911 = max(_2216, _2061.xyz);
            highp vec3 _2912 = vec3(_2909.x ? _2061.xyz.x : _2911.x, _2909.y ? _2061.xyz.y : _2911.y, _2909.z ? _2061.xyz.z : _2911.z);
            _2218 = vec3(_2910.x ? _2216.x : _2912.x, _2910.y ? _2216.y : _2912.y, _2910.z ? _2216.z : _2912.z);
        }
        else
        {
            _2218 = vec3(_2210.x ? _2204.x : _2208.x, _2210.y ? _2204.y : _2208.y, _2210.z ? _2204.z : _2208.z);
        }
        bvec3 _2220 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _2222 = mix(_2061.xyz, vec3(_2220.x ? _2205.x : _2218.x, _2220.y ? _2205.y : _2218.y, _2220.z ? _2205.z : _2218.z), _2188.xyz * (_Globals._MatCapBlend * ((_395 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _2174.w)));
        _2224 = vec4(_2222.x, _2222.y, _2222.z, _2061.w);
    }
    else
    {
        _2224 = _2061;
    }
    highp vec4 _2386;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _2269;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _2246 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _507 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _2246.w = _2246.w * _2246.x;
            highp vec2 _2257 = ((_2246.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _2258 = vec3(_2257.x, _2257.y, _341.z);
            highp vec2 _2259 = _2257.xy;
            _2258.z = sqrt(1.0 - clamp(dot(_2259, _2259), 0.0, 1.0));
            highp vec3 _2266 = normalize(_472 * _2258);
            highp vec3 _2267 = -_2266;
            _2269 = vec3(_666.x ? _2267.x : _2266.x, _666.y ? _2267.y : _2266.y, _666.z ? _2267.z : _2266.z);
        }
        else
        {
            _2269 = mix(_671, _668, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _2285 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _2286 = vec3(_2285.x ? _463.x : _363.x, _2285.y ? _463.y : _363.y, _2285.z ? _463.z : _363.z);
        bvec3 _2287 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _2288 = vec3(_2287.x ? vec3(0.0, 1.0, 0.0).x : _370.x, _2287.y ? vec3(0.0, 1.0, 0.0).y : _370.y, _2287.z ? vec3(0.0, 1.0, 0.0).z : _370.z);
        highp vec3 _2292 = normalize(_2288 - (_2286 * dot(_2286, _2288)));
        highp vec4 _2314 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_2269 * mat3(cross(_2286, _2292), _2292, _2286)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _2315 = _2314.xyz;
        highp vec3 _2320 = mix(_2315, _2315 * _1615, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _2321 = vec4(_2320.x, _2320.y, _2320.z, _2314.w);
        highp float _2322 = _2314.w;
        highp float _2326 = mix(_2322, _2322 * _1616, _Globals._MatCap2ndShadowMask);
        _2321.w = _2326;
        highp vec4 _2336;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _2335 = _2321;
            _2335.w = _2326 * _2224.w;
            _2336 = _2335;
        }
        else
        {
            _2336 = _2321;
        }
        highp vec4 _2350 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _507 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2359 = mix(_2336.xyz, _2336.xyz * _1379.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2366 = _2224.xyz + _2359;
        highp vec3 _2367 = _2224.xyz * _2359;
        bvec3 _2369 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2370 = vec3(_2369.x ? _2359.x : _335.x, _2369.y ? _2359.y : _335.y, _2369.z ? _2359.z : _335.z);
        bvec3 _2372 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2380;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2378 = (-_2224.xyz) * _2359 + _2366;
            bvec3 _2914 = isnan(_2378);
            bvec3 _2915 = isnan(_2224.xyz);
            highp vec3 _2916 = max(_2378, _2224.xyz);
            highp vec3 _2917 = vec3(_2914.x ? _2224.xyz.x : _2916.x, _2914.y ? _2224.xyz.y : _2916.y, _2914.z ? _2224.xyz.z : _2916.z);
            _2380 = vec3(_2915.x ? _2378.x : _2917.x, _2915.y ? _2378.y : _2917.y, _2915.z ? _2378.z : _2917.z);
        }
        else
        {
            _2380 = vec3(_2372.x ? _2366.x : _2370.x, _2372.y ? _2366.y : _2370.y, _2372.z ? _2366.z : _2370.z);
        }
        bvec3 _2382 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2384 = mix(_2224.xyz, vec3(_2382.x ? _2367.x : _2380.x, _2382.y ? _2367.y : _2380.y, _2382.z ? _2367.z : _2380.z), _2350.xyz * (_Globals._MatCap2ndBlend * ((_395 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2336.w)));
        _2386 = vec4(_2384.x, _2384.y, _2384.z, _2224.w);
    }
    else
    {
        _2386 = _2224;
    }
    highp vec4 _2542;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2405 = mix(_671, _668, vec3(_Globals._RimNormalStrength));
        highp float _2409 = dot(_447, _2405) * 0.5 + 0.5;
        highp float _2432 = (_395 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2405, _463)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2436 = mix(_2432, _2432 * clamp((_2409 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2437 = _2432 * clamp(((1.0 - _2409) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2447 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2456 = clamp((_2436 - _2447) / clamp(fwidth(_2436) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2447), 0.0, 1.0), 0.0, 1.0);
        highp float _2463 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2473 = clamp((_2437 * _Globals._RimDirStrength + (-_2463)) / clamp(fwidth(_2437 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2463), 0.0, 1.0), 0.0, 1.0);
        highp float _2477 = mix(_2456, _2456 * _1616, _Globals._RimShadowMask);
        highp float _2479 = mix(_2473, _2473 * _1616, _Globals._RimShadowMask);
        highp float _2488;
        highp float _2489;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2488 = _2479 * _2386.w;
            _2489 = _2477 * _2386.w;
        }
        else
        {
            _2488 = _2479;
            _2489 = _2477;
        }
        highp vec3 _2495 = vec3(1.0 - _Globals._RimEnableLighting) + (_1615 * _Globals._RimEnableLighting);
        highp vec3 _2497 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1379.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2498 = _2497 * _2495;
        highp vec3 _2504 = _2497 * _2495 + _2386.xyz;
        highp vec3 _2505 = _2386.xyz * _2498;
        bvec3 _2507 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2508 = vec3(_2507.x ? _2498.x : _335.x, _2507.y ? _2498.y : _335.y, _2507.z ? _2498.z : _335.z);
        bvec3 _2510 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2512 = _Globals._RimBlendMode == 2u;
        highp vec3 _2518;
        if (_2512)
        {
            highp vec3 _2516 = (-_2386.xyz) * _2498 + _2504;
            bvec3 _2919 = isnan(_2516);
            bvec3 _2920 = isnan(_2386.xyz);
            highp vec3 _2921 = max(_2516, _2386.xyz);
            highp vec3 _2922 = vec3(_2919.x ? _2386.xyz.x : _2921.x, _2919.y ? _2386.xyz.y : _2921.y, _2919.z ? _2386.xyz.z : _2921.z);
            _2518 = vec3(_2920.x ? _2516.x : _2922.x, _2920.y ? _2516.y : _2922.y, _2920.z ? _2516.z : _2922.z);
        }
        else
        {
            _2518 = vec3(_2510.x ? _2504.x : _2508.x, _2510.y ? _2504.y : _2508.y, _2510.z ? _2504.z : _2508.z);
        }
        bvec3 _2520 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2523 = mix(_2386.xyz, vec3(_2520.x ? _2505.x : _2518.x, _2520.y ? _2505.y : _2518.y, _2520.z ? _2505.z : _2518.z), vec3(_2489 * _Globals._RimColor.w)).xyz;
        highp vec3 _2525 = _Globals._RimIndirColor.xyz * _2495;
        highp vec3 _2529 = _Globals._RimIndirColor.xyz * _2495 + _2523;
        highp vec3 _2530 = _2523 * _2525;
        highp vec3 _2531 = vec3(_2507.x ? _2525.x : _335.x, _2507.y ? _2525.y : _335.y, _2507.z ? _2525.z : _335.z);
        highp vec3 _2538;
        if (_2512)
        {
            highp vec3 _2536 = (-_2523) * _2525 + _2529;
            bvec3 _2924 = isnan(_2536);
            bvec3 _2925 = isnan(_2523);
            highp vec3 _2926 = max(_2536, _2523);
            highp vec3 _2927 = vec3(_2924.x ? _2523.x : _2926.x, _2924.y ? _2523.y : _2926.y, _2924.z ? _2523.z : _2926.z);
            _2538 = vec3(_2925.x ? _2536.x : _2927.x, _2925.y ? _2536.y : _2927.y, _2925.z ? _2536.z : _2927.z);
        }
        else
        {
            _2538 = vec3(_2510.x ? _2529.x : _2531.x, _2510.y ? _2529.y : _2531.y, _2510.z ? _2529.z : _2531.z);
        }
        highp vec3 _2540 = mix(_2523, vec3(_2520.x ? _2530.x : _2538.x, _2520.y ? _2530.y : _2538.y, _2520.z ? _2530.z : _2538.z), vec3(_2488 * _Globals._RimIndirColor.w));
        _2542 = vec4(_2540.x, _2540.y, _2540.z, _2386.w);
    }
    else
    {
        _2542 = _2386;
    }
    highp vec4 _2609;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2556 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _451, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2570 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2576;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2576 = roundEven(_2570);
        }
        else
        {
            _2576 = _2570;
        }
        highp vec3 _2585 = mix(_2556, _2556 * _1379.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2589 = _2542.xyz + _2585;
        highp vec3 _2590 = _2542.xyz * _2585;
        bvec3 _2592 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2593 = vec3(_2592.x ? _2585.x : _335.x, _2592.y ? _2585.y : _335.y, _2592.z ? _2585.z : _335.z);
        bvec3 _2595 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2603;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2601 = (-_2542.xyz) * _2585 + _2589;
            bvec3 _2929 = isnan(_2601);
            bvec3 _2930 = isnan(_2542.xyz);
            highp vec3 _2931 = max(_2601, _2542.xyz);
            highp vec3 _2932 = vec3(_2929.x ? _2542.xyz.x : _2931.x, _2929.y ? _2542.xyz.y : _2931.y, _2929.z ? _2542.xyz.z : _2931.z);
            _2603 = vec3(_2930.x ? _2601.x : _2932.x, _2930.y ? _2601.y : _2932.y, _2930.z ? _2601.z : _2932.z);
        }
        else
        {
            _2603 = vec3(_2595.x ? _2589.x : _2593.x, _2595.y ? _2589.y : _2593.y, _2595.z ? _2589.z : _2593.z);
        }
        bvec3 _2605 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2607 = mix(_2542.xyz, vec3(_2605.x ? _2590.x : _2603.x, _2605.y ? _2590.y : _2603.y, _2605.z ? _2590.z : _2603.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2576, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2542.w));
        _2609 = vec4(_2607.x, _2607.y, _2607.z, _2542.w);
    }
    else
    {
        _2609 = _2542;
    }
    highp vec4 _2676;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2623 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _451, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2637 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2643;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2643 = roundEven(_2637);
        }
        else
        {
            _2643 = _2637;
        }
        highp vec3 _2652 = mix(_2623, _2623 * _1379.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2656 = _2609.xyz + _2652;
        highp vec3 _2657 = _2609.xyz * _2652;
        bvec3 _2659 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2660 = vec3(_2659.x ? _2652.x : _335.x, _2659.y ? _2652.y : _335.y, _2659.z ? _2652.z : _335.z);
        bvec3 _2662 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2670;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2668 = (-_2609.xyz) * _2652 + _2656;
            bvec3 _2934 = isnan(_2668);
            bvec3 _2935 = isnan(_2609.xyz);
            highp vec3 _2936 = max(_2668, _2609.xyz);
            highp vec3 _2937 = vec3(_2934.x ? _2609.xyz.x : _2936.x, _2934.y ? _2609.xyz.y : _2936.y, _2934.z ? _2609.xyz.z : _2936.z);
            _2670 = vec3(_2935.x ? _2668.x : _2937.x, _2935.y ? _2668.y : _2937.y, _2935.z ? _2668.z : _2937.z);
        }
        else
        {
            _2670 = vec3(_2662.x ? _2656.x : _2660.x, _2662.y ? _2656.y : _2660.y, _2662.z ? _2656.z : _2660.z);
        }
        bvec3 _2672 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2674 = mix(_2609.xyz, vec3(_2672.x ? _2657.x : _2670.x, _2672.y ? _2657.y : _2670.y, _2672.z ? _2657.z : _2670.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2643, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2609.w));
        _2676 = vec4(_2674.x, _2674.y, _2674.z, _2609.w);
    }
    else
    {
        _2676 = _2609;
    }
    bvec3 _2686 = bvec3(_395 < 0.0);
    highp vec3 _2687 = (_2676.xyz + ((_Globals._DissolveColor.xyz * _1380) * _2676.w)).xyz;
    highp vec3 _2695 = mix(_2687, _Globals._BackfaceColor.xyz * _1615, vec3(_Globals._BackfaceColor.w));
    highp float _2716 = (_395 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _456) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2730 = vec3(_2686.x ? _2695.x : _2687.x, _2686.y ? _2695.y : _2687.y, _2686.z ? _2695.z : _2687.z).xyz;
    highp vec3 _2741 = mix(_2730, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2730, vec3(pow(clamp(1.0 - abs(dot(_671, _463)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2716));
    highp vec4 _2742 = vec4(_2741.x, _2741.y, _2741.z, _2676.w);
    highp float _2744 = mix(_2676.w, _2676.w * _Globals._DistanceFadeColor.w, _2716);
    _2742.w = _2744;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2744, _2742, vec4(out_var_TEXCOORD9));
}
