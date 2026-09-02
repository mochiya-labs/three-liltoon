#version 300 es
precision mediump float;
precision highp int;

vec3 _297;
vec3 _302;
float _303;

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
uniform highp sampler2D SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex;
uniform highp sampler2D SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex;
uniform highp sampler2D SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex;
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
    highp vec3 _323 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _330 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _346 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _355 = float(gl_FrontFacing ? 1 : (-1));
    highp float _406;
    do
    {
        highp vec3 _362 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _363 = _362.xy;
        highp float _369 = _362.z;
        if ((any(lessThan(_363, vec2(0.0))) || any(greaterThan(_363, vec2(1.0)))) || (_369 > 1.0))
        {
            _406 = 1.0;
            break;
        }
        highp float _379 = _369 + _Globals.uShadowBias;
        _406 = (((step(_379, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _363), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_379, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _363), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_379, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _363), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_379, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _363), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _407 = normalize(out_var_TEXCOORD7);
    highp vec3 _411 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _415 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _416 = length(_415);
    highp vec3 _423 = normalize(_415);
    highp mat3 _432 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _437 = bvec2(_355 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _438 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _451 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _452 = sin(_451);
    highp float _453 = cos(_451);
    highp vec2 _454 = (vec2(_437.x ? _438.x : out_var_TEXCOORD0.xy.x, _437.y ? _438.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _455 = _454.x;
    highp float _456 = _454.y;
    highp vec2 _467 = (vec2(_455 * _453 + (-(_456 * _452)), _455 * _452 + (_456 * _453)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _471 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _467);
    highp vec3 _478 = pow(abs(_471.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _479 = _478.z;
    highp float _480 = _478.y;
    bvec4 _482 = bvec4(_479 > _480);
    highp vec4 _483 = vec4(_479, _480, -1.0, 0.666666686534881591796875);
    highp vec4 _484 = vec4(_480, _479, 0.0, -0.3333333432674407958984375);
    highp vec4 _485 = vec4(_482.x ? _483.x : _484.x, _482.y ? _483.y : _484.y, _482.z ? _483.z : _484.z, _482.w ? _483.w : _484.w);
    highp float _486 = _485.x;
    highp float _487 = _478.x;
    bvec4 _489 = bvec4(_486 > _487);
    highp vec4 _492 = vec4(_486, _485.yw, _487);
    highp vec4 _494 = vec4(_487, _485.yz, _486);
    highp vec4 _495 = vec4(_489.x ? _492.x : _494.x, _489.y ? _492.y : _494.y, _489.z ? _492.z : _494.z, _489.w ? _492.w : _494.w);
    highp float _500 = _495.x - (isnan(_495.y) ? _495.w : (isnan(_495.w) ? _495.y : min(_495.w, _495.y)));
    highp float _513 = clamp((_500 / (_495.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _516 = clamp(_495.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _530 = vec3((-_516) * _513 + _516) + (clamp(abs((fract(vec3(abs(_495.z + ((_495.w - _495.y) / (6.0 * _500 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_516 * _513));
    highp vec4 _534 = vec4(_530.x, _530.y, _530.z, _471.w) * _Globals._Color;
    highp vec3 _566;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _547 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _467 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _547.w = _547.w * _547.x;
        highp vec2 _558 = ((_547.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _559 = vec3(_558.x, _558.y, _302.z);
        highp vec2 _560 = _558.xy;
        _559.z = sqrt(1.0 - clamp(dot(_560, _560), 0.0, 1.0));
        _566 = _559;
    }
    else
    {
        _566 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _615;
    if (_Globals._UseBump2ndMap != 0u)
    {
        bvec2 _575 = bvec2(_Globals._Bump2ndMap_UVMode == 1u);
        highp vec2 _576 = vec2(_575.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _575.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _578 = bvec2(_Globals._Bump2ndMap_UVMode == 2u);
        highp vec2 _579 = vec2(_578.x ? out_var_TEXCOORD1.xy.x : _576.x, _578.y ? out_var_TEXCOORD1.xy.y : _576.y);
        bvec2 _581 = bvec2(_Globals._Bump2ndMap_UVMode == 3u);
        highp vec4 _591 = texture(SPIRV_Cross_Combined_Bump2ndMaplil_sampler_trilinear_repeat, vec2(_581.x ? out_var_TEXCOORD1.zw.x : _579.x, _581.y ? out_var_TEXCOORD1.zw.y : _579.y) * _Globals._Bump2ndMap_ST.xy + _Globals._Bump2ndMap_ST.zw);
        _591.w = _591.w * _591.x;
        highp vec2 _603 = (((_591.wy * 2.0) - vec2(1.0)).xy * _Globals._Bump2ndScale).xy;
        _615 = vec3(_566.xy + _603, _566.z * sqrt(1.0 - clamp(dot(_603, _603), 0.0, 1.0)));
    }
    else
    {
        _615 = _566;
    }
    highp vec3 _617 = normalize(_432 * _615);
    bvec3 _622 = bvec3(_355 < (_Globals._FlipNormal - 1.0));
    highp vec3 _623 = -_617;
    highp vec3 _624 = vec3(_622.x ? _623.x : _617.x, _622.y ? _623.y : _617.y, _622.z ? _623.z : _617.z);
    highp float _626 = clamp(dot(_624, _423), 0.0, 1.0);
    highp vec3 _627 = normalize(out_var_TEXCOORD4);
    highp vec2 _631 = ((_624 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _330, _323)).xy * 0.5) + vec2(0.5);
    bool _632 = out_var_TEXCOORD5.w > 0.0;
    bool _637 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _920;
    highp vec4 _921;
    if (_637)
    {
        bvec2 _643 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _644 = vec2(_643.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _643.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _646 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _647 = vec2(_646.x ? out_var_TEXCOORD1.xy.x : _644.x, _646.y ? out_var_TEXCOORD1.xy.y : _644.y);
        bvec2 _649 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _650 = vec2(_649.x ? out_var_TEXCOORD1.zw.x : _647.x, _649.y ? out_var_TEXCOORD1.zw.y : _647.y);
        bvec2 _652 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _653 = vec2(_652.x ? _631.x : _650.x, _652.y ? _631.y : _650.y);
        highp vec4 _692 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _693 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _701;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _700 = _653;
            _700.x = abs(_653.x - 0.5) + 0.5;
            _701 = _700;
        }
        else
        {
            _701 = _653;
        }
        highp vec2 _702 = _692.xy;
        highp vec2 _703 = _692.zw;
        highp vec2 _704 = _701 * _702 + _703;
        highp vec2 _713;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_653.x < 0.5))
        {
            highp vec2 _712 = _704;
            _712.x = 1.0 - _704.x;
            _713 = _712;
        }
        else
        {
            _713 = _704;
        }
        highp vec2 _720;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _632)
        {
            highp vec2 _719 = _713;
            _719.x = 1.0 - _713.x;
            _720 = _719;
        }
        else
        {
            _720 = _713;
        }
        highp vec2 _725;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _632)
        {
            highp vec2 _724 = _720;
            _724.x = -1.0;
            _725 = _724;
        }
        else
        {
            _725 = _720;
        }
        highp vec2 _731;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_632))
        {
            highp vec2 _730 = _725;
            _730.x = -1.0;
            _731 = _730;
        }
        else
        {
            _731 = _725;
        }
        highp float _734 = sin(_693);
        highp float _735 = cos(_693);
        highp vec2 _736 = ((_731 - _703) / _702) - vec2(0.5);
        highp float _737 = _736.x;
        highp float _738 = _736.y;
        highp vec2 _746 = (vec2(_737 * _735 + (-(_738 * _734)), _737 * _734 + (_738 * _735)) + vec2(0.5)) * _702 + _703;
        uint _750 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _754 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _750 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _750);
        highp float _755 = _746.x;
        highp float _756 = _746.y;
        uint _763 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _773 = ((mix(vec2(_755, 1.0 - _756), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_754 % _763), float(_754 / _763))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _773.y = 1.0 - _773.y;
        highp vec4 _778 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _773);
        highp vec4 _794;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _781 = _778.x;
            highp float _782 = _778.y;
            highp float _783 = _778.z;
            highp float _784 = isnan(_782) ? _781 : (isnan(_781) ? _782 : min(_781, _782));
            highp float _785 = isnan(_782) ? _781 : (isnan(_781) ? _782 : max(_781, _782));
            highp float _786 = isnan(_783) ? _785 : (isnan(_785) ? _783 : min(_785, _783));
            highp float _787 = isnan(_786) ? _784 : (isnan(_784) ? _786 : max(_784, _786));
            _794 = vec4(1.0, 1.0, 1.0, clamp((_787 - 0.5) / clamp(fwidth(_787), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _794 = _778;
        }
        highp vec4 _817;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _798 = clamp(_626 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _801 = 0.5 - abs(_755 - 0.5);
            highp float _808 = 0.5 - abs(_756 - 0.5);
            highp vec4 _816 = _794;
            _816.w = _794.w * (clamp(_801 / clamp(fwidth(_801), 9.9999997473787516355514526367188e-05, _798), 0.0, 1.0) * clamp(_808 / clamp(fwidth(_808), 9.9999997473787516355514526367188e-05, _798), 0.0, 1.0));
            _817 = _816;
        }
        else
        {
            _817 = _794;
        }
        highp vec4 _818 = _Globals._Color2nd * _817;
        highp float _824 = _818.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _467).x;
        _818.w = mix(_824, _824 * clamp((_416 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _850;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_355 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_355 < 0.0)))
        {
            highp vec4 _849 = _818;
            _849.w = 0.0;
            _850 = _849;
        }
        else
        {
            _850 = _818;
        }
        highp vec4 _889;
        highp vec4 _890;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _861;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _860 = _534;
                _860.w = _850.w;
                _861 = _860;
            }
            else
            {
                _861 = _534;
            }
            highp vec4 _869;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _868 = _861;
                _868.w = _861.w * _850.w;
                _869 = _868;
            }
            else
            {
                _869 = _861;
            }
            highp vec4 _878;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _877 = _869;
                _877.w = clamp(_869.w + _850.w, 0.0, 1.0);
                _878 = _877;
            }
            else
            {
                _878 = _869;
            }
            highp vec4 _887;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _886 = _878;
                _886.w = clamp(_878.w - _850.w, 0.0, 1.0);
                _887 = _886;
            }
            else
            {
                _887 = _878;
            }
            highp vec4 _888 = _850;
            _888.w = 1.0;
            _889 = _888;
            _890 = _887;
        }
        else
        {
            _889 = _850;
            _890 = _534;
        }
        highp vec3 _900 = _890.xyz + _889.xyz;
        highp vec3 _901 = _890.xyz * _889.xyz;
        bvec3 _903 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _904 = vec3(_903.x ? _889.xyz.x : _297.x, _903.y ? _889.xyz.y : _297.y, _903.z ? _889.xyz.z : _297.z);
        bvec3 _906 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _914;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _912 = (-_890.xyz) * _889.xyz + _900;
            bvec3 _2474 = isnan(_912);
            bvec3 _2475 = isnan(_890.xyz);
            highp vec3 _2476 = max(_912, _890.xyz);
            highp vec3 _2477 = vec3(_2474.x ? _890.xyz.x : _2476.x, _2474.y ? _890.xyz.y : _2476.y, _2474.z ? _890.xyz.z : _2476.z);
            _914 = vec3(_2475.x ? _912.x : _2477.x, _2475.y ? _912.y : _2477.y, _2475.z ? _912.z : _2477.z);
        }
        else
        {
            _914 = vec3(_906.x ? _900.x : _904.x, _906.y ? _900.y : _904.y, _906.z ? _900.z : _904.z);
        }
        bvec3 _916 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _918 = mix(_890.xyz, vec3(_916.x ? _901.x : _914.x, _916.y ? _901.y : _914.y, _916.z ? _901.z : _914.z), vec3(_889.w * _Globals._Main2ndEnableLighting));
        _920 = _889;
        _921 = vec4(_918.x, _918.y, _918.z, _890.w);
    }
    else
    {
        _920 = _Globals._Color2nd;
        _921 = _534;
    }
    bool _926 = _Globals._UseMain3rdTex != 0u;
    highp vec4 _1209;
    highp vec4 _1210;
    if (_926)
    {
        bvec2 _932 = bvec2(_Globals._Main3rdTex_UVMode == 1u);
        highp vec2 _933 = vec2(_932.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _932.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _935 = bvec2(_Globals._Main3rdTex_UVMode == 2u);
        highp vec2 _936 = vec2(_935.x ? out_var_TEXCOORD1.xy.x : _933.x, _935.y ? out_var_TEXCOORD1.xy.y : _933.y);
        bvec2 _938 = bvec2(_Globals._Main3rdTex_UVMode == 3u);
        highp vec2 _939 = vec2(_938.x ? out_var_TEXCOORD1.zw.x : _936.x, _938.y ? out_var_TEXCOORD1.zw.y : _936.y);
        bvec2 _941 = bvec2(_Globals._Main3rdTex_UVMode == 4u);
        highp vec2 _942 = vec2(_941.x ? _631.x : _939.x, _941.y ? _631.y : _939.y);
        highp vec4 _981 = _Globals._Main3rdTex_ST + (vec4(0.0, 0.0, _Globals._Main3rdTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _982 = _Globals._Main3rdTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main3rdTexAngle;
        highp vec2 _990;
        if (_Globals._Main3rdTexShouldCopy != 0u)
        {
            highp vec2 _989 = _942;
            _989.x = abs(_942.x - 0.5) + 0.5;
            _990 = _989;
        }
        else
        {
            _990 = _942;
        }
        highp vec2 _991 = _981.xy;
        highp vec2 _992 = _981.zw;
        highp vec2 _993 = _990 * _991 + _992;
        highp vec2 _1002;
        if ((_Globals._Main3rdTexShouldFlipCopy != 0u) && (_942.x < 0.5))
        {
            highp vec2 _1001 = _993;
            _1001.x = 1.0 - _993.x;
            _1002 = _1001;
        }
        else
        {
            _1002 = _993;
        }
        highp vec2 _1009;
        if ((_Globals._Main3rdTexShouldFlipMirror != 0u) && _632)
        {
            highp vec2 _1008 = _1002;
            _1008.x = 1.0 - _1002.x;
            _1009 = _1008;
        }
        else
        {
            _1009 = _1002;
        }
        highp vec2 _1014;
        if ((_Globals._Main3rdTexIsLeftOnly != 0u) && _632)
        {
            highp vec2 _1013 = _1009;
            _1013.x = -1.0;
            _1014 = _1013;
        }
        else
        {
            _1014 = _1009;
        }
        highp vec2 _1020;
        if ((_Globals._Main3rdTexIsRightOnly != 0u) && (!_632))
        {
            highp vec2 _1019 = _1014;
            _1019.x = -1.0;
            _1020 = _1019;
        }
        else
        {
            _1020 = _1014;
        }
        highp float _1023 = sin(_982);
        highp float _1024 = cos(_982);
        highp vec2 _1025 = ((_1020 - _992) / _991) - vec2(0.5);
        highp float _1026 = _1025.x;
        highp float _1027 = _1025.y;
        highp vec2 _1035 = (vec2(_1026 * _1024 + (-(_1027 * _1023)), _1026 * _1023 + (_1027 * _1024)) + vec2(0.5)) * _991 + _992;
        uint _1039 = uint(_Globals._Main3rdTexDecalAnimation.z);
        uint _1043 = (_Globals._Main3rdTexDecalAnimation.w == 0.0) ? _1039 : (uint(_Globals.uTime.y * _Globals._Main3rdTexDecalAnimation.w) % _1039);
        highp float _1044 = _1035.x;
        highp float _1045 = _1035.y;
        uint _1052 = uint(_Globals._Main3rdTexDecalAnimation.x);
        highp vec2 _1062 = ((mix(vec2(_1044, 1.0 - _1045), vec2(0.5), vec2(_Globals._Main3rdTexDecalSubParam.z)) + vec2(float(_1043 % _1052), float(_1043 / _1052))) * _Globals._Main3rdTexDecalSubParam.xy) / _Globals._Main3rdTexDecalAnimation.xy;
        _1062.y = 1.0 - _1062.y;
        highp vec4 _1067 = texture(SPIRV_Cross_Combined_Main3rdTexsampler_Main3rdTex, _1062);
        highp vec4 _1083;
        if (_Globals._Main3rdTexIsMSDF != 0u)
        {
            highp float _1070 = _1067.x;
            highp float _1071 = _1067.y;
            highp float _1072 = _1067.z;
            highp float _1073 = isnan(_1071) ? _1070 : (isnan(_1070) ? _1071 : min(_1070, _1071));
            highp float _1074 = isnan(_1071) ? _1070 : (isnan(_1070) ? _1071 : max(_1070, _1071));
            highp float _1075 = isnan(_1072) ? _1074 : (isnan(_1074) ? _1072 : min(_1074, _1072));
            highp float _1076 = isnan(_1075) ? _1073 : (isnan(_1073) ? _1075 : max(_1073, _1075));
            _1083 = vec4(1.0, 1.0, 1.0, clamp((_1076 - 0.5) / clamp(fwidth(_1076), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _1083 = _1067;
        }
        highp vec4 _1106;
        if (_Globals._Main3rdTexIsDecal != 0u)
        {
            highp float _1087 = clamp(_626 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _1090 = 0.5 - abs(_1044 - 0.5);
            highp float _1097 = 0.5 - abs(_1045 - 0.5);
            highp vec4 _1105 = _1083;
            _1105.w = _1083.w * (clamp(_1090 / clamp(fwidth(_1090), 9.9999997473787516355514526367188e-05, _1087), 0.0, 1.0) * clamp(_1097 / clamp(fwidth(_1097), 9.9999997473787516355514526367188e-05, _1087), 0.0, 1.0));
            _1106 = _1105;
        }
        else
        {
            _1106 = _1083;
        }
        highp vec4 _1107 = _Globals._Color3rd * _1106;
        highp float _1113 = _1107.w * texture(SPIRV_Cross_Combined_Main3rdBlendMasksampler_MainTex, _467).x;
        _1107.w = mix(_1113, _1113 * clamp((_416 - _Globals._Main3rdDistanceFade.x) / (_Globals._Main3rdDistanceFade.y - _Globals._Main3rdDistanceFade.x), 0.0, 1.0), _Globals._Main3rdDistanceFade.z);
        highp vec4 _1139;
        if (((_Globals._Main3rdTex_Cull == 1u) && (_355 > 0.0)) || ((_Globals._Main3rdTex_Cull == 2u) && (_355 < 0.0)))
        {
            highp vec4 _1138 = _1107;
            _1138.w = 0.0;
            _1139 = _1138;
        }
        else
        {
            _1139 = _1107;
        }
        highp vec4 _1178;
        highp vec4 _1179;
        if (_Globals._Main3rdTexAlphaMode != 0u)
        {
            highp vec4 _1150;
            if (_Globals._Main3rdTexAlphaMode == 1u)
            {
                highp vec4 _1149 = _921;
                _1149.w = _1139.w;
                _1150 = _1149;
            }
            else
            {
                _1150 = _921;
            }
            highp vec4 _1158;
            if (_Globals._Main3rdTexAlphaMode == 2u)
            {
                highp vec4 _1157 = _1150;
                _1157.w = _1150.w * _1139.w;
                _1158 = _1157;
            }
            else
            {
                _1158 = _1150;
            }
            highp vec4 _1167;
            if (_Globals._Main3rdTexAlphaMode == 3u)
            {
                highp vec4 _1166 = _1158;
                _1166.w = clamp(_1158.w + _1139.w, 0.0, 1.0);
                _1167 = _1166;
            }
            else
            {
                _1167 = _1158;
            }
            highp vec4 _1176;
            if (_Globals._Main3rdTexAlphaMode == 4u)
            {
                highp vec4 _1175 = _1167;
                _1175.w = clamp(_1167.w - _1139.w, 0.0, 1.0);
                _1176 = _1175;
            }
            else
            {
                _1176 = _1167;
            }
            highp vec4 _1177 = _1139;
            _1177.w = 1.0;
            _1178 = _1177;
            _1179 = _1176;
        }
        else
        {
            _1178 = _1139;
            _1179 = _921;
        }
        highp vec3 _1189 = _1179.xyz + _1178.xyz;
        highp vec3 _1190 = _1179.xyz * _1178.xyz;
        bvec3 _1192 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1193 = vec3(_1192.x ? _1178.xyz.x : _297.x, _1192.y ? _1178.xyz.y : _297.y, _1192.z ? _1178.xyz.z : _297.z);
        bvec3 _1195 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1203;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1201 = (-_1179.xyz) * _1178.xyz + _1189;
            bvec3 _2499 = isnan(_1201);
            bvec3 _2500 = isnan(_1179.xyz);
            highp vec3 _2501 = max(_1201, _1179.xyz);
            highp vec3 _2502 = vec3(_2499.x ? _1179.xyz.x : _2501.x, _2499.y ? _1179.xyz.y : _2501.y, _2499.z ? _1179.xyz.z : _2501.z);
            _1203 = vec3(_2500.x ? _1201.x : _2502.x, _2500.y ? _1201.y : _2502.y, _2500.z ? _1201.z : _2502.z);
        }
        else
        {
            _1203 = vec3(_1195.x ? _1189.x : _1193.x, _1195.y ? _1189.y : _1193.y, _1195.z ? _1189.z : _1193.z);
        }
        bvec3 _1205 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1207 = mix(_1179.xyz, vec3(_1205.x ? _1190.x : _1203.x, _1205.y ? _1190.y : _1203.y, _1205.z ? _1190.z : _1203.z), vec3(_1178.w * _Globals._Main3rdEnableLighting));
        _1209 = _1178;
        _1210 = vec4(_1207.x, _1207.y, _1207.z, _1179.w);
    }
    else
    {
        _1209 = _Globals._Color3rd;
        _1210 = _921;
    }
    highp vec4 _1250;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _1221 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _1226;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _1225 = _1210;
            _1225.w = _1221;
            _1226 = _1225;
        }
        else
        {
            _1226 = _1210;
        }
        highp vec4 _1233;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _1232 = _1226;
            _1232.w = _1226.w * _1221;
            _1233 = _1232;
        }
        else
        {
            _1233 = _1226;
        }
        highp vec4 _1241;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _1240 = _1233;
            _1240.w = clamp(_1233.w + _1221, 0.0, 1.0);
            _1241 = _1240;
        }
        else
        {
            _1241 = _1233;
        }
        highp vec4 _1249;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _1248 = _1241;
            _1248.w = clamp(_1241.w - _1221, 0.0, 1.0);
            _1249 = _1248;
        }
        else
        {
            _1249 = _1241;
        }
        _1250 = _1249;
    }
    else
    {
        _1250 = _1210;
    }
    highp vec4 _1345;
    highp float _1346;
    if ((_346 & 1) != 0)
    {
        highp vec4 _1254 = _1250;
        _1254.w = 1.0;
        highp vec2 _1260 = roundEven(_Globals._DissolveParams.xy);
        highp float _1261 = _1260.x;
        highp vec4 _1334;
        highp float _1335;
        if (_1261 != 0.0)
        {
            highp float _1277;
            highp float _1278;
            if (_1261 == 1.0)
            {
                _1277 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1278 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _1277 = 0.0;
                _1278 = 1.0;
            }
            highp float _1309;
            highp float _1310;
            if (_1261 == 2.0)
            {
                highp vec2 _1287 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _1298 = (_1260.y == 1.0) ? (vec2(_1287.x * cos(_Globals._DissolvePos.w) + (-(_1287.y * sin(_Globals._DissolvePos.w))), _303) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _1309 = 1.0 - clamp(abs(_1298 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1310 = _1278 * float(_1298 > _Globals._DissolveParams.z);
            }
            else
            {
                _1309 = _1277;
                _1310 = _1278;
            }
            highp float _1331;
            highp float _1332;
            if (_1261 == 3.0)
            {
                highp float _1320 = (_1260.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1331 = 1.0 - clamp(abs(_1320 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1332 = _1310 * float(_1320 > _Globals._DissolveParams.z);
            }
            else
            {
                _1331 = _1309;
                _1332 = _1310;
            }
            highp vec4 _1333 = _1254;
            _1333.w = _1332;
            _1334 = _1333;
            _1335 = _1331;
        }
        else
        {
            _1334 = _1254;
            _1335 = 0.0;
        }
        highp vec4 _1341;
        if ((_346 & 2) != 0)
        {
            highp vec4 _1340 = _1334;
            _1340.w = 1.0 - _1334.w;
            _1341 = _1340;
        }
        else
        {
            _1341 = _1334;
        }
        highp vec4 _1344 = _1341;
        _1344.w = _1341.w * _1250.w;
        _1345 = _1344;
        _1346 = _1335;
    }
    else
    {
        _1345 = _1250;
        _1346 = 0.0;
    }
    if ((_1345.w - _Globals._Cutoff) < 0.0)
    {
        discard;
    }
    highp vec4 _1527;
    highp float _1528;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1379 = clamp(dot(_407, mix(_627, _624, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1382 = clamp(dot(_407, mix(_627, _624, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1385 = clamp(dot(_407, mix(_627, _624, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1389 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1392 = clamp(_406 + distance(_407, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1395 = mix(1.0, _1392, _Globals._ShadowReceive);
        highp float _1396 = _1379 * _1395;
        highp float _1399 = mix(1.0, _1392, _Globals._Shadow2ndReceive);
        highp float _1403 = mix(1.0, _1392, _Globals._Shadow3rdReceive);
        highp float _1414 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1415 = clamp(_1414, 0.0, 1.0);
        highp float _1417 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1430 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1444 = clamp(_1414 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1457 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1472 = (_355 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1473 = clamp((_1379 * _1395 + (-_1415)) / clamp(fwidth(_1396) * _1389 + (_1417 - _1415), 0.0, 1.0), 0.0, 1.0) * _1472;
        highp vec3 _1505 = mix(mix(_1345.xyz * _Globals._ShadowColor.xyz, (_1345.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1382 * _1399 + (-_1430)) / clamp(fwidth(_1382 * _1399) * _1389 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1430), 0.0, 1.0), 0.0, 1.0) * _1472)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1345.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1385 * _1403 + (-_1457)) / clamp(fwidth(_1385 * _1403) * _1389 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1457), 0.0, 1.0), 0.0, 1.0) * _1472)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1511 = _1345.xyz * out_var_TEXCOORD6;
        highp vec3 _1517 = mix(mix(_1505, _1505 * _1345.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1345.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2504 = isnan(_1517);
        bvec3 _2505 = isnan(_1511);
        highp vec3 _2506 = min(_1517, _1511);
        highp vec3 _2507 = vec3(_2504.x ? _1511.x : _2506.x, _2504.y ? _1511.y : _2506.y, _2504.z ? _1511.z : _2506.z);
        highp vec3 _1525 = mix(mix(vec3(_2505.x ? _1517.x : _2507.x, _2505.y ? _1517.y : _2507.y, _2505.z ? _1517.z : _2507.z), _1511, _Globals._ShadowBorderColor.xyz * (clamp((_1379 * _1395 + (-_1444)) / clamp(fwidth(_1396) * _1389 + (_1417 - _1444), 0.0, 1.0), 0.0, 1.0) * _1472)), _1511, vec3(mix(1.0, _1473, _Globals._ShadowStrength)));
        _1527 = vec4(_1525.x, _1525.y, _1525.z, _1345.w);
        _1528 = _1473;
    }
    else
    {
        highp vec3 _1361 = _1345.xyz * out_var_TEXCOORD6;
        _1527 = vec4(_1361.x, _1361.y, _1361.z, _1345.w);
        _1528 = 1.0;
    }
    highp vec3 _1531 = vec3(_Globals._LightMaxLimit);
    bvec3 _2509 = isnan(out_var_TEXCOORD6);
    bvec3 _2510 = isnan(_1531);
    highp vec3 _2511 = min(out_var_TEXCOORD6, _1531);
    highp vec3 _2512 = vec3(_2509.x ? _1531.x : _2511.x, _2509.y ? _1531.y : _2511.y, _2509.z ? _1531.z : _2511.z);
    highp vec3 _1532 = vec3(_2510.x ? out_var_TEXCOORD6.x : _2512.x, _2510.y ? out_var_TEXCOORD6.y : _2512.y, _2510.z ? out_var_TEXCOORD6.z : _2512.z);
    highp float _1533 = clamp(_1528, 0.0, 1.0);
    highp vec3 _1535 = _1345.xyz * _Globals._LightMaxLimit;
    bvec3 _2514 = isnan(_1527.xyz);
    bvec3 _2515 = isnan(_1535);
    highp vec3 _2516 = min(_1527.xyz, _1535);
    highp vec3 _2517 = vec3(_2514.x ? _1535.x : _2516.x, _2514.y ? _1535.y : _2516.y, _2514.z ? _1535.z : _2516.z);
    highp vec3 _1536 = vec3(_2515.x ? _1527.xyz.x : _2517.x, _2515.y ? _1527.xyz.y : _2517.y, _2515.z ? _1527.xyz.z : _2517.z);
    highp vec4 _1570;
    if (_637)
    {
        highp vec3 _1540 = _1536.xyz;
        highp vec3 _1550 = _1540 + _920.xyz;
        highp vec3 _1551 = _1540 * _920.xyz;
        bvec3 _1553 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1554 = vec3(_1553.x ? _920.xyz.x : _297.x, _1553.y ? _920.xyz.y : _297.y, _1553.z ? _920.xyz.z : _297.z);
        bvec3 _1556 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1564;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1562 = (-_1540) * _920.xyz + _1550;
            bvec3 _2519 = isnan(_1562);
            bvec3 _2520 = isnan(_1540);
            highp vec3 _2521 = max(_1562, _1540);
            highp vec3 _2522 = vec3(_2519.x ? _1540.x : _2521.x, _2519.y ? _1540.y : _2521.y, _2519.z ? _1540.z : _2521.z);
            _1564 = vec3(_2520.x ? _1562.x : _2522.x, _2520.y ? _1562.y : _2522.y, _2520.z ? _1562.z : _2522.z);
        }
        else
        {
            _1564 = vec3(_1556.x ? _1550.x : _1554.x, _1556.y ? _1550.y : _1554.y, _1556.z ? _1550.z : _1554.z);
        }
        bvec3 _1566 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1568 = mix(_1540, vec3(_1566.x ? _1551.x : _1564.x, _1566.y ? _1551.y : _1564.y, _1566.z ? _1551.z : _1564.z), vec3((-_920.w) * _Globals._Main2ndEnableLighting + _920.w));
        _1570 = vec4(_1568.x, _1568.y, _1568.z, _1527.w);
    }
    else
    {
        _1570 = vec4(_1536.x, _1536.y, _1536.z, _1527.w);
    }
    highp vec4 _1603;
    if (_926)
    {
        highp vec3 _1583 = _1570.xyz + _1209.xyz;
        highp vec3 _1584 = _1570.xyz * _1209.xyz;
        bvec3 _1586 = bvec3(_Globals._Main3rdTexBlendMode == 0u);
        highp vec3 _1587 = vec3(_1586.x ? _1209.xyz.x : _297.x, _1586.y ? _1209.xyz.y : _297.y, _1586.z ? _1209.xyz.z : _297.z);
        bvec3 _1589 = bvec3(_Globals._Main3rdTexBlendMode == 1u);
        highp vec3 _1597;
        if (_Globals._Main3rdTexBlendMode == 2u)
        {
            highp vec3 _1595 = (-_1570.xyz) * _1209.xyz + _1583;
            bvec3 _2524 = isnan(_1595);
            bvec3 _2525 = isnan(_1570.xyz);
            highp vec3 _2526 = max(_1595, _1570.xyz);
            highp vec3 _2527 = vec3(_2524.x ? _1570.xyz.x : _2526.x, _2524.y ? _1570.xyz.y : _2526.y, _2524.z ? _1570.xyz.z : _2526.z);
            _1597 = vec3(_2525.x ? _1595.x : _2527.x, _2525.y ? _1595.y : _2527.y, _2525.z ? _1595.z : _2527.z);
        }
        else
        {
            _1597 = vec3(_1589.x ? _1583.x : _1587.x, _1589.y ? _1583.y : _1587.y, _1589.z ? _1583.z : _1587.z);
        }
        bvec3 _1599 = bvec3(_Globals._Main3rdTexBlendMode == 3u);
        highp vec3 _1601 = mix(_1570.xyz, vec3(_1599.x ? _1584.x : _1597.x, _1599.y ? _1584.y : _1597.y, _1599.z ? _1584.z : _1597.z), vec3((-_1209.w) * _Globals._Main3rdEnableLighting + _1209.w));
        _1603 = vec4(_1601.x, _1601.y, _1601.z, _1570.w);
    }
    else
    {
        _1603 = _1570;
    }
    highp vec4 _1649;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1619 = pow(clamp(1.0 - abs(dot(mix(_627, _624, vec3(_Globals._RimShadeNormalStrength)), _423)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1628 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1647 = mix(_1603.xyz, _1603.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1619 - _1628) / clamp(fwidth(_1619) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1628), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1649 = vec4(_1647.x, _1647.y, _1647.z, _1603.w);
    }
    else
    {
        _1649 = _1603;
    }
    highp vec4 _1722;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1673 = dot(normalize(((-_423) * _Globals._BacklightViewStrength) + _407), mix(_627, _624, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1683;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1683 = _1673 * clamp(_406 + distance(_407, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1683 = _1673;
        }
        highp float _1692 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1720 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1345.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_355 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_423, _407) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1683 - _1692) / clamp(fwidth(_1683) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1692), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1532 + _1649.xyz;
        _1722 = vec4(_1720.x, _1720.y, _1720.z, _1649.w);
    }
    else
    {
        _1722 = _1649;
    }
    highp vec3 _1725 = _1722.xyz * _1722.w;
    highp vec4 _1888;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1771;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1748 = texture(SPIRV_Cross_Combined_MatCapBumpMapsampler_MainTex, _467 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1748.w = _1748.w * _1748.x;
            highp vec2 _1759 = ((_1748.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1760 = vec3(_1759.x, _1759.y, _302.z);
            highp vec2 _1761 = _1759.xy;
            _1760.z = sqrt(1.0 - clamp(dot(_1761, _1761), 0.0, 1.0));
            highp vec3 _1768 = normalize(_432 * _1760);
            highp vec3 _1769 = -_1768;
            _1771 = vec3(_622.x ? _1769.x : _1768.x, _622.y ? _1769.y : _1768.y, _622.z ? _1769.z : _1768.z);
        }
        else
        {
            _1771 = mix(_627, _624, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1788 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1789 = vec3(_1788.x ? _423.x : _323.x, _1788.y ? _423.y : _323.y, _1788.z ? _423.z : _323.z);
        bvec3 _1790 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1791 = vec3(_1790.x ? vec3(0.0, 1.0, 0.0).x : _330.x, _1790.y ? vec3(0.0, 1.0, 0.0).y : _330.y, _1790.z ? vec3(0.0, 1.0, 0.0).z : _330.z);
        highp vec3 _1795 = normalize(_1791 - (_1789 * dot(_1789, _1791)));
        highp vec4 _1817 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1771) * mat3(cross(_1789, _1795), _1795, _1789)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec3 _1823 = mix(_1817.xyz, _1817.xyz * _1532, vec3(_Globals._MatCapEnableLighting));
        highp vec4 _1824 = vec4(_1823.x, _1823.y, _1823.z, _1817.w);
        highp float _1829 = mix(_1817.w, _1817.w * _1533, _Globals._MatCapShadowMask);
        _1824.w = _1829;
        highp vec4 _1838;
        if (_Globals._MatCapApplyTransparency != 0u)
        {
            highp vec4 _1837 = _1824;
            _1837.w = _1829 * _1722.w;
            _1838 = _1837;
        }
        else
        {
            _1838 = _1824;
        }
        highp vec4 _1852 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _467 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1860 = _1725.xyz;
        highp vec3 _1861 = mix(_1838.xyz, _1838.xyz * _1345.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1868 = _1860 + _1861;
        highp vec3 _1869 = _1860 * _1861;
        bvec3 _1871 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1872 = vec3(_1871.x ? _1861.x : _297.x, _1871.y ? _1861.y : _297.y, _1871.z ? _1861.z : _297.z);
        bvec3 _1874 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1882;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1880 = (-_1860) * _1861 + _1868;
            bvec3 _2529 = isnan(_1880);
            bvec3 _2530 = isnan(_1860);
            highp vec3 _2531 = max(_1880, _1860);
            highp vec3 _2532 = vec3(_2529.x ? _1860.x : _2531.x, _2529.y ? _1860.y : _2531.y, _2529.z ? _1860.z : _2531.z);
            _1882 = vec3(_2530.x ? _1880.x : _2532.x, _2530.y ? _1880.y : _2532.y, _2530.z ? _1880.z : _2532.z);
        }
        else
        {
            _1882 = vec3(_1874.x ? _1868.x : _1872.x, _1874.y ? _1868.y : _1872.y, _1874.z ? _1868.z : _1872.z);
        }
        bvec3 _1884 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1886 = mix(_1860, vec3(_1884.x ? _1869.x : _1882.x, _1884.y ? _1869.y : _1882.y, _1884.z ? _1869.z : _1882.z), _1852.xyz * (_Globals._MatCapBlend * ((_355 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : _1838.w)));
        _1888 = vec4(_1886.x, _1886.y, _1886.z, _1722.w);
    }
    else
    {
        _1888 = vec4(_1725.x, _1725.y, _1725.z, _1722.w);
    }
    highp vec4 _2050;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1933;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1910 = texture(SPIRV_Cross_Combined_MatCap2ndBumpMapsampler_MainTex, _467 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1910.w = _1910.w * _1910.x;
            highp vec2 _1921 = ((_1910.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1922 = vec3(_1921.x, _1921.y, _302.z);
            highp vec2 _1923 = _1921.xy;
            _1922.z = sqrt(1.0 - clamp(dot(_1923, _1923), 0.0, 1.0));
            highp vec3 _1930 = normalize(_432 * _1922);
            highp vec3 _1931 = -_1930;
            _1933 = vec3(_622.x ? _1931.x : _1930.x, _622.y ? _1931.y : _1930.y, _622.z ? _1931.z : _1930.z);
        }
        else
        {
            _1933 = mix(_627, _624, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1949 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1950 = vec3(_1949.x ? _423.x : _323.x, _1949.y ? _423.y : _323.y, _1949.z ? _423.z : _323.z);
        bvec3 _1951 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1952 = vec3(_1951.x ? vec3(0.0, 1.0, 0.0).x : _330.x, _1951.y ? vec3(0.0, 1.0, 0.0).y : _330.y, _1951.z ? vec3(0.0, 1.0, 0.0).z : _330.z);
        highp vec3 _1956 = normalize(_1952 - (_1950 * dot(_1950, _1952)));
        highp vec4 _1978 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1933 * mat3(cross(_1950, _1956), _1956, _1950)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1979 = _1978.xyz;
        highp vec3 _1984 = mix(_1979, _1979 * _1532, vec3(_Globals._MatCap2ndEnableLighting));
        highp vec4 _1985 = vec4(_1984.x, _1984.y, _1984.z, _1978.w);
        highp float _1986 = _1978.w;
        highp float _1990 = mix(_1986, _1986 * _1533, _Globals._MatCap2ndShadowMask);
        _1985.w = _1990;
        highp vec4 _2000;
        if (_Globals._MatCap2ndApplyTransparency != 0u)
        {
            highp vec4 _1999 = _1985;
            _1999.w = _1990 * _1888.w;
            _2000 = _1999;
        }
        else
        {
            _2000 = _1985;
        }
        highp vec4 _2014 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _467 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _2023 = mix(_2000.xyz, _2000.xyz * _1345.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _2030 = _1888.xyz + _2023;
        highp vec3 _2031 = _1888.xyz * _2023;
        bvec3 _2033 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _2034 = vec3(_2033.x ? _2023.x : _297.x, _2033.y ? _2023.y : _297.y, _2033.z ? _2023.z : _297.z);
        bvec3 _2036 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _2044;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _2042 = (-_1888.xyz) * _2023 + _2030;
            bvec3 _2534 = isnan(_2042);
            bvec3 _2535 = isnan(_1888.xyz);
            highp vec3 _2536 = max(_2042, _1888.xyz);
            highp vec3 _2537 = vec3(_2534.x ? _1888.xyz.x : _2536.x, _2534.y ? _1888.xyz.y : _2536.y, _2534.z ? _1888.xyz.z : _2536.z);
            _2044 = vec3(_2535.x ? _2042.x : _2537.x, _2535.y ? _2042.y : _2537.y, _2535.z ? _2042.z : _2537.z);
        }
        else
        {
            _2044 = vec3(_2036.x ? _2030.x : _2034.x, _2036.y ? _2030.y : _2034.y, _2036.z ? _2030.z : _2034.z);
        }
        bvec3 _2046 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _2048 = mix(_1888.xyz, vec3(_2046.x ? _2031.x : _2044.x, _2046.y ? _2031.y : _2044.y, _2046.z ? _2031.z : _2044.z), _2014.xyz * (_Globals._MatCap2ndBlend * ((_355 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : _2000.w)));
        _2050 = vec4(_2048.x, _2048.y, _2048.z, _1888.w);
    }
    else
    {
        _2050 = _1888;
    }
    highp vec4 _2206;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _2069 = mix(_627, _624, vec3(_Globals._RimNormalStrength));
        highp float _2073 = dot(_407, _2069) * 0.5 + 0.5;
        highp float _2096 = (_355 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_2069, _423)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _2100 = mix(_2096, _2096 * clamp((_2073 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _2101 = _2096 * clamp(((1.0 - _2073) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _2111 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2120 = clamp((_2100 - _2111) / clamp(fwidth(_2100) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _2111), 0.0, 1.0), 0.0, 1.0);
        highp float _2127 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2137 = clamp((_2101 * _Globals._RimDirStrength + (-_2127)) / clamp(fwidth(_2101 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2127), 0.0, 1.0), 0.0, 1.0);
        highp float _2141 = mix(_2120, _2120 * _1533, _Globals._RimShadowMask);
        highp float _2143 = mix(_2137, _2137 * _1533, _Globals._RimShadowMask);
        highp float _2152;
        highp float _2153;
        if (_Globals._RimApplyTransparency != 0u)
        {
            _2152 = _2143 * _2050.w;
            _2153 = _2141 * _2050.w;
        }
        else
        {
            _2152 = _2143;
            _2153 = _2141;
        }
        highp vec3 _2159 = vec3(1.0 - _Globals._RimEnableLighting) + (_1532 * _Globals._RimEnableLighting);
        highp vec3 _2161 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1345.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2162 = _2161 * _2159;
        highp vec3 _2168 = _2161 * _2159 + _2050.xyz;
        highp vec3 _2169 = _2050.xyz * _2162;
        bvec3 _2171 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2172 = vec3(_2171.x ? _2162.x : _297.x, _2171.y ? _2162.y : _297.y, _2171.z ? _2162.z : _297.z);
        bvec3 _2174 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2176 = _Globals._RimBlendMode == 2u;
        highp vec3 _2182;
        if (_2176)
        {
            highp vec3 _2180 = (-_2050.xyz) * _2162 + _2168;
            bvec3 _2539 = isnan(_2180);
            bvec3 _2540 = isnan(_2050.xyz);
            highp vec3 _2541 = max(_2180, _2050.xyz);
            highp vec3 _2542 = vec3(_2539.x ? _2050.xyz.x : _2541.x, _2539.y ? _2050.xyz.y : _2541.y, _2539.z ? _2050.xyz.z : _2541.z);
            _2182 = vec3(_2540.x ? _2180.x : _2542.x, _2540.y ? _2180.y : _2542.y, _2540.z ? _2180.z : _2542.z);
        }
        else
        {
            _2182 = vec3(_2174.x ? _2168.x : _2172.x, _2174.y ? _2168.y : _2172.y, _2174.z ? _2168.z : _2172.z);
        }
        bvec3 _2184 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2187 = mix(_2050.xyz, vec3(_2184.x ? _2169.x : _2182.x, _2184.y ? _2169.y : _2182.y, _2184.z ? _2169.z : _2182.z), vec3(_2153 * _Globals._RimColor.w)).xyz;
        highp vec3 _2189 = _Globals._RimIndirColor.xyz * _2159;
        highp vec3 _2193 = _Globals._RimIndirColor.xyz * _2159 + _2187;
        highp vec3 _2194 = _2187 * _2189;
        highp vec3 _2195 = vec3(_2171.x ? _2189.x : _297.x, _2171.y ? _2189.y : _297.y, _2171.z ? _2189.z : _297.z);
        highp vec3 _2202;
        if (_2176)
        {
            highp vec3 _2200 = (-_2187) * _2189 + _2193;
            bvec3 _2544 = isnan(_2200);
            bvec3 _2545 = isnan(_2187);
            highp vec3 _2546 = max(_2200, _2187);
            highp vec3 _2547 = vec3(_2544.x ? _2187.x : _2546.x, _2544.y ? _2187.y : _2546.y, _2544.z ? _2187.z : _2546.z);
            _2202 = vec3(_2545.x ? _2200.x : _2547.x, _2545.y ? _2200.y : _2547.y, _2545.z ? _2200.z : _2547.z);
        }
        else
        {
            _2202 = vec3(_2174.x ? _2193.x : _2195.x, _2174.y ? _2193.y : _2195.y, _2174.z ? _2193.z : _2195.z);
        }
        highp vec3 _2204 = mix(_2187, vec3(_2184.x ? _2194.x : _2202.x, _2184.y ? _2194.y : _2202.y, _2184.z ? _2194.z : _2202.z), vec3(_2152 * _Globals._RimIndirColor.w));
        _2206 = vec4(_2204.x, _2204.y, _2204.z, _2050.w);
    }
    else
    {
        _2206 = _2050;
    }
    highp vec4 _2273;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2220 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _411, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2234 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2240;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2240 = roundEven(_2234);
        }
        else
        {
            _2240 = _2234;
        }
        highp vec3 _2249 = mix(_2220, _2220 * _1345.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2253 = _2206.xyz + _2249;
        highp vec3 _2254 = _2206.xyz * _2249;
        bvec3 _2256 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2257 = vec3(_2256.x ? _2249.x : _297.x, _2256.y ? _2249.y : _297.y, _2256.z ? _2249.z : _297.z);
        bvec3 _2259 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2267;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2265 = (-_2206.xyz) * _2249 + _2253;
            bvec3 _2549 = isnan(_2265);
            bvec3 _2550 = isnan(_2206.xyz);
            highp vec3 _2551 = max(_2265, _2206.xyz);
            highp vec3 _2552 = vec3(_2549.x ? _2206.xyz.x : _2551.x, _2549.y ? _2206.xyz.y : _2551.y, _2549.z ? _2206.xyz.z : _2551.z);
            _2267 = vec3(_2550.x ? _2265.x : _2552.x, _2550.y ? _2265.y : _2552.y, _2550.z ? _2265.z : _2552.z);
        }
        else
        {
            _2267 = vec3(_2259.x ? _2253.x : _2257.x, _2259.y ? _2253.y : _2257.y, _2259.z ? _2253.z : _2257.z);
        }
        bvec3 _2269 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2271 = mix(_2206.xyz, vec3(_2269.x ? _2254.x : _2267.x, _2269.y ? _2254.y : _2267.y, _2269.z ? _2254.z : _2267.z), vec3(((_Globals._EmissionBlend * mix(1.0, _2240, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w) * _2206.w));
        _2273 = vec4(_2271.x, _2271.y, _2271.z, _2206.w);
    }
    else
    {
        _2273 = _2206;
    }
    highp vec4 _2340;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2287 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _411, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2301 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2307;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2307 = roundEven(_2301);
        }
        else
        {
            _2307 = _2301;
        }
        highp vec3 _2316 = mix(_2287, _2287 * _1345.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2320 = _2273.xyz + _2316;
        highp vec3 _2321 = _2273.xyz * _2316;
        bvec3 _2323 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2324 = vec3(_2323.x ? _2316.x : _297.x, _2323.y ? _2316.y : _297.y, _2323.z ? _2316.z : _297.z);
        bvec3 _2326 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2334;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2332 = (-_2273.xyz) * _2316 + _2320;
            bvec3 _2554 = isnan(_2332);
            bvec3 _2555 = isnan(_2273.xyz);
            highp vec3 _2556 = max(_2332, _2273.xyz);
            highp vec3 _2557 = vec3(_2554.x ? _2273.xyz.x : _2556.x, _2554.y ? _2273.xyz.y : _2556.y, _2554.z ? _2273.xyz.z : _2556.z);
            _2334 = vec3(_2555.x ? _2332.x : _2557.x, _2555.y ? _2332.y : _2557.y, _2555.z ? _2332.z : _2557.z);
        }
        else
        {
            _2334 = vec3(_2326.x ? _2320.x : _2324.x, _2326.y ? _2320.y : _2324.y, _2326.z ? _2320.z : _2324.z);
        }
        bvec3 _2336 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2338 = mix(_2273.xyz, vec3(_2336.x ? _2321.x : _2334.x, _2336.y ? _2321.y : _2334.y, _2336.z ? _2321.z : _2334.z), vec3(((_Globals._Emission2ndBlend * mix(1.0, _2307, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w) * _2273.w));
        _2340 = vec4(_2338.x, _2338.y, _2338.z, _2273.w);
    }
    else
    {
        _2340 = _2273;
    }
    bvec3 _2350 = bvec3(_355 < 0.0);
    highp vec3 _2351 = (_2340.xyz + ((_Globals._DissolveColor.xyz * _1346) * _2340.w)).xyz;
    highp vec3 _2359 = mix(_2351, _Globals._BackfaceColor.xyz * _1532, vec3(_Globals._BackfaceColor.w));
    highp float _2380 = (_355 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _416) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z);
    highp vec3 _2394 = vec3(_2350.x ? _2359.x : _2351.x, _2350.y ? _2359.y : _2351.y, _2350.z ? _2359.z : _2351.z).xyz;
    highp vec3 _2405 = mix(_2394, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2394, vec3(pow(clamp(1.0 - abs(dot(_627, _423)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)) * _Globals._DistanceFadeColor.w, vec3(_2380));
    highp vec4 _2406 = vec4(_2405.x, _2405.y, _2405.z, _2340.w);
    highp float _2408 = mix(_2340.w, _2340.w * _Globals._DistanceFadeColor.w, _2380);
    _2406.w = _2408;
    out_var_SV_Target = mix(_Globals.unity_FogColor * _2408, _2406, vec4(out_var_TEXCOORD9));
}
