#version 300 es
precision mediump float;
precision highp int;

vec3 _303;
vec3 _309;
float _310;

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
    highp vec3 _330 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z);
    highp vec3 _337 = vec3(_Globals.uViewMatrix[1].x, _Globals.uViewMatrix[1].y, _Globals.uViewMatrix[1].z);
    int _353 = int(roundEven(out_var_TEXCOORD2.w));
    highp float _362 = float(gl_FrontFacing ? 1 : (-1));
    highp float _413;
    do
    {
        highp vec3 _369 = out_var_TEXCOORD10.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD10.w : (isnan(out_var_TEXCOORD10.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD10.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _370 = _369.xy;
        highp float _376 = _369.z;
        if ((any(lessThan(_370, vec2(0.0))) || any(greaterThan(_370, vec2(1.0)))) || (_376 > 1.0))
        {
            _413 = 1.0;
            break;
        }
        highp float _386 = _376 + _Globals.uShadowBias;
        _413 = (((step(_386, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _370), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_386, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _370), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_386, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _370), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_386, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _370), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _414 = normalize(out_var_TEXCOORD7);
    highp vec3 _418 = clamp((vec3(1.0) - out_var_TEXCOORD6) * sqrt(out_var_TEXCOORD6), vec3(0.0), vec3(1.0));
    highp vec3 _422 = _Globals.uCameraPosition.xyz - out_var_TEXCOORD3;
    highp float _423 = length(_422);
    highp vec3 _430 = normalize(_422);
    highp mat3 _439 = mat3(out_var_TEXCOORD5.xyz, cross(out_var_TEXCOORD4, out_var_TEXCOORD5.xyz) * (out_var_TEXCOORD5.w * _Globals.uWorldTransformParams.w), out_var_TEXCOORD4);
    bvec2 _444 = bvec2(_362 < (_Globals._ShiftBackfaceUV - 1.0));
    highp vec2 _445 = out_var_TEXCOORD0.xy + vec2(1.0, 0.0);
    highp float _458 = _Globals._MainTex_ScrollRotate.w * _Globals.uTime.y + _Globals._MainTex_ScrollRotate.z;
    highp float _459 = sin(_458);
    highp float _460 = cos(_458);
    highp vec2 _461 = (vec2(_444.x ? _445.x : out_var_TEXCOORD0.xy.x, _444.y ? _445.y : out_var_TEXCOORD0.xy.y) * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw) - vec2(0.5);
    highp float _462 = _461.x;
    highp float _463 = _461.y;
    highp vec2 _474 = (vec2(_462 * _460 + (-(_463 * _459)), _462 * _459 + (_463 * _460)) + vec2(0.5)) + fract(_Globals._MainTex_ScrollRotate.xy * _Globals.uTime.y);
    highp vec4 _478 = texture(SPIRV_Cross_Combined_MainTexsampler_MainTex, _474);
    highp vec3 _485 = pow(abs(_478.xyz), vec3(_Globals._MainTexHSVG.w));
    highp float _486 = _485.z;
    highp float _487 = _485.y;
    bvec4 _489 = bvec4(_486 > _487);
    highp vec4 _490 = vec4(_486, _487, -1.0, 0.666666686534881591796875);
    highp vec4 _491 = vec4(_487, _486, 0.0, -0.3333333432674407958984375);
    highp vec4 _492 = vec4(_489.x ? _490.x : _491.x, _489.y ? _490.y : _491.y, _489.z ? _490.z : _491.z, _489.w ? _490.w : _491.w);
    highp float _493 = _492.x;
    highp float _494 = _485.x;
    bvec4 _496 = bvec4(_493 > _494);
    highp vec4 _499 = vec4(_493, _492.yw, _494);
    highp vec4 _501 = vec4(_494, _492.yz, _493);
    highp vec4 _502 = vec4(_496.x ? _499.x : _501.x, _496.y ? _499.y : _501.y, _496.z ? _499.z : _501.z, _496.w ? _499.w : _501.w);
    highp float _507 = _502.x - (isnan(_502.y) ? _502.w : (isnan(_502.w) ? _502.y : min(_502.w, _502.y)));
    highp float _520 = clamp((_507 / (_502.x + 1.0000000133514319600180897396058e-10)) * _Globals._MainTexHSVG.y, 0.0, 1.0);
    highp float _523 = clamp(_502.x * _Globals._MainTexHSVG.z, 0.0, 1.0);
    highp vec3 _537 = vec3((-_523) * _520 + _523) + (clamp(abs((fract(vec3(abs(_502.z + ((_502.w - _502.y) / (6.0 * _507 + 1.0000000133514319600180897396058e-10))) + _Globals._MainTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_523 * _520));
    highp vec4 _541 = vec4(_537.x, _537.y, _537.z, _478.w) * _Globals._Color;
    highp vec3 _573;
    if (_Globals._UseBumpMap != 0u)
    {
        highp vec4 _554 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _474 * _Globals._BumpMap_ST.xy + _Globals._BumpMap_ST.zw);
        _554.w = _554.w * _554.x;
        highp vec2 _565 = ((_554.wy * 2.0) - vec2(1.0)).xy * _Globals._BumpScale;
        highp vec3 _566 = vec3(_565.x, _565.y, _309.z);
        highp vec2 _567 = _565.xy;
        _566.z = sqrt(1.0 - clamp(dot(_567, _567), 0.0, 1.0));
        _573 = _566;
    }
    else
    {
        _573 = vec3(0.0, 0.0, 1.0);
    }
    highp vec3 _575 = normalize(_439 * _573);
    bvec3 _580 = bvec3(_362 < (_Globals._FlipNormal - 1.0));
    highp vec3 _581 = -_575;
    highp vec3 _582 = vec3(_580.x ? _581.x : _575.x, _580.y ? _581.y : _575.y, _580.z ? _581.z : _575.z);
    highp float _584 = clamp(dot(_582, _430), 0.0, 1.0);
    highp vec3 _585 = normalize(out_var_TEXCOORD4);
    highp vec2 _589 = ((_582 * mat3(vec3(_Globals.uViewMatrix[0].x, _Globals.uViewMatrix[0].y, _Globals.uViewMatrix[0].z), _337, _330)).xy * 0.5) + vec2(0.5);
    bool _590 = out_var_TEXCOORD5.w > 0.0;
    bool _595 = _Globals._UseMain2ndTex != 0u;
    highp vec4 _878;
    highp vec4 _879;
    if (_595)
    {
        bvec2 _601 = bvec2(_Globals._Main2ndTex_UVMode == 1u);
        highp vec2 _602 = vec2(_601.x ? out_var_TEXCOORD0.zw.x : out_var_TEXCOORD0.xy.x, _601.y ? out_var_TEXCOORD0.zw.y : out_var_TEXCOORD0.xy.y);
        bvec2 _604 = bvec2(_Globals._Main2ndTex_UVMode == 2u);
        highp vec2 _605 = vec2(_604.x ? out_var_TEXCOORD1.xy.x : _602.x, _604.y ? out_var_TEXCOORD1.xy.y : _602.y);
        bvec2 _607 = bvec2(_Globals._Main2ndTex_UVMode == 3u);
        highp vec2 _608 = vec2(_607.x ? out_var_TEXCOORD1.zw.x : _605.x, _607.y ? out_var_TEXCOORD1.zw.y : _605.y);
        bvec2 _610 = bvec2(_Globals._Main2ndTex_UVMode == 4u);
        highp vec2 _611 = vec2(_610.x ? _589.x : _608.x, _610.y ? _589.y : _608.y);
        highp vec4 _650 = _Globals._Main2ndTex_ST + (vec4(0.0, 0.0, _Globals._Main2ndTex_ScrollRotate.xy) * _Globals.uTime.y);
        highp float _651 = _Globals._Main2ndTex_ScrollRotate.w * _Globals.uTime.y + _Globals._Main2ndTexAngle;
        highp vec2 _659;
        if (_Globals._Main2ndTexShouldCopy != 0u)
        {
            highp vec2 _658 = _611;
            _658.x = abs(_611.x - 0.5) + 0.5;
            _659 = _658;
        }
        else
        {
            _659 = _611;
        }
        highp vec2 _660 = _650.xy;
        highp vec2 _661 = _650.zw;
        highp vec2 _662 = _659 * _660 + _661;
        highp vec2 _671;
        if ((_Globals._Main2ndTexShouldFlipCopy != 0u) && (_611.x < 0.5))
        {
            highp vec2 _670 = _662;
            _670.x = 1.0 - _662.x;
            _671 = _670;
        }
        else
        {
            _671 = _662;
        }
        highp vec2 _678;
        if ((_Globals._Main2ndTexShouldFlipMirror != 0u) && _590)
        {
            highp vec2 _677 = _671;
            _677.x = 1.0 - _671.x;
            _678 = _677;
        }
        else
        {
            _678 = _671;
        }
        highp vec2 _683;
        if ((_Globals._Main2ndTexIsLeftOnly != 0u) && _590)
        {
            highp vec2 _682 = _678;
            _682.x = -1.0;
            _683 = _682;
        }
        else
        {
            _683 = _678;
        }
        highp vec2 _689;
        if ((_Globals._Main2ndTexIsRightOnly != 0u) && (!_590))
        {
            highp vec2 _688 = _683;
            _688.x = -1.0;
            _689 = _688;
        }
        else
        {
            _689 = _683;
        }
        highp float _692 = sin(_651);
        highp float _693 = cos(_651);
        highp vec2 _694 = ((_689 - _661) / _660) - vec2(0.5);
        highp float _695 = _694.x;
        highp float _696 = _694.y;
        highp vec2 _704 = (vec2(_695 * _693 + (-(_696 * _692)), _695 * _692 + (_696 * _693)) + vec2(0.5)) * _660 + _661;
        uint _708 = uint(_Globals._Main2ndTexDecalAnimation.z);
        uint _712 = (_Globals._Main2ndTexDecalAnimation.w == 0.0) ? _708 : (uint(_Globals.uTime.y * _Globals._Main2ndTexDecalAnimation.w) % _708);
        highp float _713 = _704.x;
        highp float _714 = _704.y;
        uint _721 = uint(_Globals._Main2ndTexDecalAnimation.x);
        highp vec2 _731 = ((mix(vec2(_713, 1.0 - _714), vec2(0.5), vec2(_Globals._Main2ndTexDecalSubParam.z)) + vec2(float(_712 % _721), float(_712 / _721))) * _Globals._Main2ndTexDecalSubParam.xy) / _Globals._Main2ndTexDecalAnimation.xy;
        _731.y = 1.0 - _731.y;
        highp vec4 _736 = texture(SPIRV_Cross_Combined_Main2ndTexsampler_Main2ndTex, _731);
        highp vec4 _752;
        if (_Globals._Main2ndTexIsMSDF != 0u)
        {
            highp float _739 = _736.x;
            highp float _740 = _736.y;
            highp float _741 = _736.z;
            highp float _742 = isnan(_740) ? _739 : (isnan(_739) ? _740 : min(_739, _740));
            highp float _743 = isnan(_740) ? _739 : (isnan(_739) ? _740 : max(_739, _740));
            highp float _744 = isnan(_741) ? _743 : (isnan(_743) ? _741 : min(_743, _741));
            highp float _745 = isnan(_744) ? _742 : (isnan(_742) ? _744 : max(_742, _744));
            _752 = vec4(1.0, 1.0, 1.0, clamp((_745 - 0.5) / clamp(fwidth(_745), 0.00999999977648258209228515625, 1.0), 0.0, 1.0));
        }
        else
        {
            _752 = _736;
        }
        highp vec4 _775;
        if (_Globals._Main2ndTexIsDecal != 0u)
        {
            highp float _756 = clamp(_584 - 0.0500000007450580596923828125, 0.0, 1.0);
            highp float _759 = 0.5 - abs(_713 - 0.5);
            highp float _766 = 0.5 - abs(_714 - 0.5);
            highp vec4 _774 = _752;
            _774.w = _752.w * (clamp(_759 / clamp(fwidth(_759), 9.9999997473787516355514526367188e-05, _756), 0.0, 1.0) * clamp(_766 / clamp(fwidth(_766), 9.9999997473787516355514526367188e-05, _756), 0.0, 1.0));
            _775 = _774;
        }
        else
        {
            _775 = _752;
        }
        highp vec4 _776 = _Globals._Color2nd * _775;
        highp float _782 = _776.w * texture(SPIRV_Cross_Combined_Main2ndBlendMasksampler_MainTex, _474).x;
        _776.w = mix(_782, _782 * clamp((_423 - _Globals._Main2ndDistanceFade.x) / (_Globals._Main2ndDistanceFade.y - _Globals._Main2ndDistanceFade.x), 0.0, 1.0), _Globals._Main2ndDistanceFade.z);
        highp vec4 _808;
        if (((_Globals._Main2ndTex_Cull == 1u) && (_362 > 0.0)) || ((_Globals._Main2ndTex_Cull == 2u) && (_362 < 0.0)))
        {
            highp vec4 _807 = _776;
            _807.w = 0.0;
            _808 = _807;
        }
        else
        {
            _808 = _776;
        }
        highp vec4 _847;
        highp vec4 _848;
        if (_Globals._Main2ndTexAlphaMode != 0u)
        {
            highp vec4 _819;
            if (_Globals._Main2ndTexAlphaMode == 1u)
            {
                highp vec4 _818 = _541;
                _818.w = _808.w;
                _819 = _818;
            }
            else
            {
                _819 = _541;
            }
            highp vec4 _827;
            if (_Globals._Main2ndTexAlphaMode == 2u)
            {
                highp vec4 _826 = _819;
                _826.w = _819.w * _808.w;
                _827 = _826;
            }
            else
            {
                _827 = _819;
            }
            highp vec4 _836;
            if (_Globals._Main2ndTexAlphaMode == 3u)
            {
                highp vec4 _835 = _827;
                _835.w = clamp(_827.w + _808.w, 0.0, 1.0);
                _836 = _835;
            }
            else
            {
                _836 = _827;
            }
            highp vec4 _845;
            if (_Globals._Main2ndTexAlphaMode == 4u)
            {
                highp vec4 _844 = _836;
                _844.w = clamp(_836.w - _808.w, 0.0, 1.0);
                _845 = _844;
            }
            else
            {
                _845 = _836;
            }
            highp vec4 _846 = _808;
            _846.w = 1.0;
            _847 = _846;
            _848 = _845;
        }
        else
        {
            _847 = _808;
            _848 = _541;
        }
        highp vec3 _858 = _848.xyz + _847.xyz;
        highp vec3 _859 = _848.xyz * _847.xyz;
        bvec3 _861 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _862 = vec3(_861.x ? _847.xyz.x : _303.x, _861.y ? _847.xyz.y : _303.y, _861.z ? _847.xyz.z : _303.z);
        bvec3 _864 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _872;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _870 = (-_848.xyz) * _847.xyz + _858;
            bvec3 _2344 = isnan(_870);
            bvec3 _2345 = isnan(_848.xyz);
            highp vec3 _2346 = max(_870, _848.xyz);
            highp vec3 _2347 = vec3(_2344.x ? _848.xyz.x : _2346.x, _2344.y ? _848.xyz.y : _2346.y, _2344.z ? _848.xyz.z : _2346.z);
            _872 = vec3(_2345.x ? _870.x : _2347.x, _2345.y ? _870.y : _2347.y, _2345.z ? _870.z : _2347.z);
        }
        else
        {
            _872 = vec3(_864.x ? _858.x : _862.x, _864.y ? _858.y : _862.y, _864.z ? _858.z : _862.z);
        }
        bvec3 _874 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _876 = mix(_848.xyz, vec3(_874.x ? _859.x : _872.x, _874.y ? _859.y : _872.y, _874.z ? _859.z : _872.z), vec3(_847.w * _Globals._Main2ndEnableLighting));
        _878 = _847;
        _879 = vec4(_876.x, _876.y, _876.z, _848.w);
    }
    else
    {
        _878 = _Globals._Color2nd;
        _879 = _541;
    }
    highp vec4 _919;
    if (_Globals._AlphaMaskMode != 0u)
    {
        highp float _890 = clamp(_Globals._AlphaMaskScale + _Globals._AlphaMaskValue, 0.0, 1.0);
        highp vec4 _895;
        if (_Globals._AlphaMaskMode == 1u)
        {
            highp vec4 _894 = _879;
            _894.w = _890;
            _895 = _894;
        }
        else
        {
            _895 = _879;
        }
        highp vec4 _902;
        if (_Globals._AlphaMaskMode == 2u)
        {
            highp vec4 _901 = _895;
            _901.w = _895.w * _890;
            _902 = _901;
        }
        else
        {
            _902 = _895;
        }
        highp vec4 _910;
        if (_Globals._AlphaMaskMode == 3u)
        {
            highp vec4 _909 = _902;
            _909.w = clamp(_902.w + _890, 0.0, 1.0);
            _910 = _909;
        }
        else
        {
            _910 = _902;
        }
        highp vec4 _918;
        if (_Globals._AlphaMaskMode == 4u)
        {
            highp vec4 _917 = _910;
            _917.w = clamp(_910.w - _890, 0.0, 1.0);
            _918 = _917;
        }
        else
        {
            _918 = _910;
        }
        _919 = _918;
    }
    else
    {
        _919 = _879;
    }
    highp vec4 _1014;
    highp float _1015;
    if ((_353 & 1) != 0)
    {
        highp vec4 _923 = _919;
        _923.w = 1.0;
        highp vec2 _929 = roundEven(_Globals._DissolveParams.xy);
        highp float _930 = _929.x;
        highp vec4 _1003;
        highp float _1004;
        if (_930 != 0.0)
        {
            highp float _946;
            highp float _947;
            if (_930 == 1.0)
            {
                _946 = 1.0 - clamp(abs(1.0 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _947 = float(1.0 > _Globals._DissolveParams.z);
            }
            else
            {
                _946 = 0.0;
                _947 = 1.0;
            }
            highp float _978;
            highp float _979;
            if (_930 == 2.0)
            {
                highp vec2 _956 = out_var_TEXCOORD0.xy - vec2(0.5);
                highp float _967 = (_929.y == 1.0) ? (vec2(_956.x * cos(_Globals._DissolvePos.w) + (-(_956.y * sin(_Globals._DissolvePos.w))), _310) + vec2(0.5)).x : distance(out_var_TEXCOORD0.xy, _Globals._DissolvePos.xy);
                _978 = 1.0 - clamp(abs(_967 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _979 = _947 * float(_967 > _Globals._DissolveParams.z);
            }
            else
            {
                _978 = _946;
                _979 = _947;
            }
            highp float _1000;
            highp float _1001;
            if (_930 == 3.0)
            {
                highp float _989 = (_929.y == 1.0) ? dot(out_var_TEXCOORD2.xyz, normalize(_Globals._DissolvePos.xyz)) : distance(out_var_TEXCOORD2.xyz, _Globals._DissolvePos.xyz);
                _1000 = 1.0 - clamp(abs(_989 - _Globals._DissolveParams.z) / _Globals._DissolveParams.w, 0.0, 1.0);
                _1001 = _979 * float(_989 > _Globals._DissolveParams.z);
            }
            else
            {
                _1000 = _978;
                _1001 = _979;
            }
            highp vec4 _1002 = _923;
            _1002.w = _1001;
            _1003 = _1002;
            _1004 = _1000;
        }
        else
        {
            _1003 = _923;
            _1004 = 0.0;
        }
        highp vec4 _1010;
        if ((_353 & 2) != 0)
        {
            highp vec4 _1009 = _1003;
            _1009.w = 1.0 - _1003.w;
            _1010 = _1009;
        }
        else
        {
            _1010 = _1003;
        }
        highp vec4 _1013 = _1010;
        _1013.w = _1010.w * _919.w;
        _1014 = _1013;
        _1015 = _1004;
    }
    else
    {
        _1014 = _919;
        _1015 = 0.0;
    }
    highp float _1020 = fwidth(_1014.w);
    highp float _1024 = clamp(((_1014.w - _Globals._Cutoff) / (isnan(9.9999997473787516355514526367188e-05) ? _1020 : (isnan(_1020) ? 9.9999997473787516355514526367188e-05 : max(_1020, 9.9999997473787516355514526367188e-05)))) + 0.5, 0.0, 1.0);
    highp vec4 _1025 = _1014;
    _1025.w = _1024;
    if (_1024 == 0.0)
    {
        discard;
    }
    highp vec4 _1202;
    highp float _1203;
    if (_Globals._UseShadow != 0u)
    {
        highp float _1054 = clamp(dot(_414, mix(_585, _582, vec3(_Globals._ShadowNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1057 = clamp(dot(_414, mix(_585, _582, vec3(_Globals._Shadow2ndNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1060 = clamp(dot(_414, mix(_585, _582, vec3(_Globals._Shadow3rdNormalStrength))) * 0.5 + 0.5, 0.0, 1.0);
        highp float _1064 = (_Globals._ShadowMaskType == 2u) ? 0.0 : _Globals._AAStrength;
        highp float _1067 = clamp(_413 + distance(_414, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        highp float _1070 = mix(1.0, _1067, _Globals._ShadowReceive);
        highp float _1071 = _1054 * _1070;
        highp float _1074 = mix(1.0, _1067, _Globals._Shadow2ndReceive);
        highp float _1078 = mix(1.0, _1067, _Globals._Shadow3rdReceive);
        highp float _1089 = (-_Globals._ShadowBlur) * 0.5 + _Globals._ShadowBorder;
        highp float _1090 = clamp(_1089, 0.0, 1.0);
        highp float _1092 = clamp(_Globals._ShadowBlur * 0.5 + _Globals._ShadowBorder, 0.0, 1.0);
        highp float _1105 = clamp((-_Globals._Shadow2ndBlur) * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0);
        highp float _1119 = clamp(_1089 - _Globals._ShadowBorderRange, 0.0, 1.0);
        highp float _1132 = clamp((-_Globals._Shadow3rdBlur) * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0);
        highp float _1147 = (_362 < 0.0) ? (1.0 - _Globals._BackfaceForceShadow) : 1.0;
        highp float _1148 = clamp((_1054 * _1070 + (-_1090)) / clamp(fwidth(_1071) * _1064 + (_1092 - _1090), 0.0, 1.0), 0.0, 1.0) * _1147;
        highp vec3 _1180 = mix(mix(_1025.xyz * _Globals._ShadowColor.xyz, (_1025.xyz * _Globals._Shadow2ndColor.xyz).xyz, vec3((-(clamp((_1057 * _1074 + (-_1105)) / clamp(fwidth(_1057 * _1074) * _1064 + (clamp(_Globals._Shadow2ndBlur * 0.5 + _Globals._Shadow2ndBorder, 0.0, 1.0) - _1105), 0.0, 1.0), 0.0, 1.0) * _1147)) * _Globals._Shadow2ndColor.w + _Globals._Shadow2ndColor.w)), (_1025.xyz * _Globals._Shadow3rdColor.xyz).xyz, vec3((-(clamp((_1060 * _1078 + (-_1132)) / clamp(fwidth(_1060 * _1078) * _1064 + (clamp(_Globals._Shadow3rdBlur * 0.5 + _Globals._Shadow3rdBorder, 0.0, 1.0) - _1132), 0.0, 1.0), 0.0, 1.0) * _1147)) * _Globals._Shadow3rdColor.w + _Globals._Shadow3rdColor.w));
        highp vec3 _1186 = _1025.xyz * out_var_TEXCOORD6;
        highp vec3 _1192 = mix(mix(_1180, _1180 * _1025.xyz, vec3(_Globals._ShadowMainStrength)) * out_var_TEXCOORD6, _1025.xyz, clamp(out_var_TEXCOORD8 * _Globals._ShadowEnvStrength, vec3(0.0), vec3(1.0)));
        bvec3 _2354 = isnan(_1192);
        bvec3 _2355 = isnan(_1186);
        highp vec3 _2356 = min(_1192, _1186);
        highp vec3 _2357 = vec3(_2354.x ? _1186.x : _2356.x, _2354.y ? _1186.y : _2356.y, _2354.z ? _1186.z : _2356.z);
        highp vec3 _1200 = mix(mix(vec3(_2355.x ? _1192.x : _2357.x, _2355.y ? _1192.y : _2357.y, _2355.z ? _1192.z : _2357.z), _1186, _Globals._ShadowBorderColor.xyz * (clamp((_1054 * _1070 + (-_1119)) / clamp(fwidth(_1071) * _1064 + (_1092 - _1119), 0.0, 1.0), 0.0, 1.0) * _1147)), _1186, vec3(mix(1.0, _1148, _Globals._ShadowStrength)));
        _1202 = vec4(_1200.x, _1200.y, _1200.z, _1025.w);
        _1203 = _1148;
    }
    else
    {
        highp vec3 _1036 = _1025.xyz * out_var_TEXCOORD6;
        _1202 = vec4(_1036.x, _1036.y, _1036.z, _1025.w);
        _1203 = 1.0;
    }
    highp vec3 _1206 = vec3(_Globals._LightMaxLimit);
    bvec3 _2359 = isnan(out_var_TEXCOORD6);
    bvec3 _2360 = isnan(_1206);
    highp vec3 _2361 = min(out_var_TEXCOORD6, _1206);
    highp vec3 _2362 = vec3(_2359.x ? _1206.x : _2361.x, _2359.y ? _1206.y : _2361.y, _2359.z ? _1206.z : _2361.z);
    highp vec3 _1207 = vec3(_2360.x ? out_var_TEXCOORD6.x : _2362.x, _2360.y ? out_var_TEXCOORD6.y : _2362.y, _2360.z ? out_var_TEXCOORD6.z : _2362.z);
    highp float _1208 = clamp(_1203, 0.0, 1.0);
    highp vec3 _1210 = _1025.xyz * _Globals._LightMaxLimit;
    bvec3 _2364 = isnan(_1202.xyz);
    bvec3 _2365 = isnan(_1210);
    highp vec3 _2366 = min(_1202.xyz, _1210);
    highp vec3 _2367 = vec3(_2364.x ? _1210.x : _2366.x, _2364.y ? _1210.y : _2366.y, _2364.z ? _1210.z : _2366.z);
    highp vec3 _1211 = vec3(_2365.x ? _1202.xyz.x : _2367.x, _2365.y ? _1202.xyz.y : _2367.y, _2365.z ? _1202.xyz.z : _2367.z);
    highp vec4 _1245;
    if (_595)
    {
        highp vec3 _1215 = _1211.xyz;
        highp vec3 _1225 = _1215 + _878.xyz;
        highp vec3 _1226 = _1215 * _878.xyz;
        bvec3 _1228 = bvec3(_Globals._Main2ndTexBlendMode == 0u);
        highp vec3 _1229 = vec3(_1228.x ? _878.xyz.x : _303.x, _1228.y ? _878.xyz.y : _303.y, _1228.z ? _878.xyz.z : _303.z);
        bvec3 _1231 = bvec3(_Globals._Main2ndTexBlendMode == 1u);
        highp vec3 _1239;
        if (_Globals._Main2ndTexBlendMode == 2u)
        {
            highp vec3 _1237 = (-_1215) * _878.xyz + _1225;
            bvec3 _2369 = isnan(_1237);
            bvec3 _2370 = isnan(_1215);
            highp vec3 _2371 = max(_1237, _1215);
            highp vec3 _2372 = vec3(_2369.x ? _1215.x : _2371.x, _2369.y ? _1215.y : _2371.y, _2369.z ? _1215.z : _2371.z);
            _1239 = vec3(_2370.x ? _1237.x : _2372.x, _2370.y ? _1237.y : _2372.y, _2370.z ? _1237.z : _2372.z);
        }
        else
        {
            _1239 = vec3(_1231.x ? _1225.x : _1229.x, _1231.y ? _1225.y : _1229.y, _1231.z ? _1225.z : _1229.z);
        }
        bvec3 _1241 = bvec3(_Globals._Main2ndTexBlendMode == 3u);
        highp vec3 _1243 = mix(_1215, vec3(_1241.x ? _1226.x : _1239.x, _1241.y ? _1226.y : _1239.y, _1241.z ? _1226.z : _1239.z), vec3((-_878.w) * _Globals._Main2ndEnableLighting + _878.w));
        _1245 = vec4(_1243.x, _1243.y, _1243.z, _1202.w);
    }
    else
    {
        _1245 = vec4(_1211.x, _1211.y, _1211.z, _1202.w);
    }
    highp vec4 _1291;
    if (_Globals._UseRimShade != 0u)
    {
        highp float _1261 = pow(clamp(1.0 - abs(dot(mix(_585, _582, vec3(_Globals._RimShadeNormalStrength)), _430)), 0.0, 1.0), _Globals._RimShadeFresnelPower);
        highp float _1270 = clamp((-_Globals._RimShadeBlur) * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0);
        highp vec3 _1289 = mix(_1245.xyz, _1245.xyz * _Globals._RimShadeColor.xyz, vec3(clamp((_1261 - _1270) / clamp(fwidth(_1261) * _Globals._AAStrength + (clamp(_Globals._RimShadeBlur * 0.5 + _Globals._RimShadeBorder, 0.0, 1.0) - _1270), 0.0, 1.0), 0.0, 1.0) * _Globals._RimShadeColor.w));
        _1291 = vec4(_1289.x, _1289.y, _1289.z, _1245.w);
    }
    else
    {
        _1291 = _1245;
    }
    highp vec4 _1364;
    if (_Globals._UseBacklight != 0u)
    {
        highp float _1315 = dot(normalize(((-_430) * _Globals._BacklightViewStrength) + _414), mix(_585, _582, vec3(_Globals._BacklightNormalStrength))) * 0.5 + 0.5;
        highp float _1325;
        if (_Globals._BacklightReceiveShadow != 0u)
        {
            _1325 = _1315 * clamp(_413 + distance(_414, _Globals.uMainLightDirection.xyz), 0.0, 1.0);
        }
        else
        {
            _1325 = _1315;
        }
        highp float _1334 = clamp((-_Globals._BacklightBlur) * 0.5 + _Globals._BacklightBorder, 0.0, 1.0);
        highp vec3 _1362 = (mix(_Globals._BacklightColor.xyz, _Globals._BacklightColor.xyz * _1025.xyz, vec3(_Globals._BacklightMainStrength)).xyz * (((_362 < (_Globals._BacklightBackfaceMask - 1.0)) ? 0.0 : clamp(pow(clamp(dot(_430, _414) * (-0.5) + 0.5, 0.0, 1.0), _Globals._BacklightDirectivity) * clamp((_1325 - _1334) / clamp(fwidth(_1325) * _Globals._AAStrength + (clamp(_Globals._BacklightBlur * 0.5 + _Globals._BacklightBorder, 0.0, 1.0) - _1334), 0.0, 1.0), 0.0, 1.0), 0.0, 1.0)) * _Globals._BacklightColor.w)) * _1207 + _1291.xyz;
        _1364 = vec4(_1362.x, _1362.y, _1362.z, _1291.w);
    }
    else
    {
        _1364 = _1291;
    }
    highp vec4 _1636;
    if (_Globals._UseReflection != 0u)
    {
        highp vec4 _1379 = texture(SPIRV_Cross_Combined_SmoothnessTexsampler_MainTex, _474 * _Globals._SmoothnessTex_ST.xy + _Globals._SmoothnessTex_ST.zw);
        highp float _1381 = _Globals._Smoothness * _1379.x;
        highp vec3 _1384 = dFdx(_582);
        highp vec3 _1385 = abs(_1384);
        highp vec3 _1386 = dFdy(_582);
        highp vec3 _1387 = abs(_1386);
        highp float _1388 = dot(_1385, _1385);
        highp float _1389 = dot(_1387, _1387);
        highp float _1390 = isnan(_1389) ? _1388 : (isnan(_1388) ? _1389 : max(_1388, _1389));
        highp float _1393 = (_1390 / (_1390 * 5.0 + 0.00200000009499490261077880859375)) * _Globals._GSAAStrength;
        highp float _1396 = clamp(1.0 - (isnan(_1393) ? 0.0 : (isnan(0.0) ? _1393 : max(0.0, _1393))), 0.0, 1.0);
        highp float _1397 = isnan(_1396) ? _1381 : (isnan(_1381) ? _1396 : min(_1381, _1396));
        highp float _1398 = 1.0 - _1397;
        highp float _1399 = _1398 * _1398;
        highp vec4 _1409 = texture(SPIRV_Cross_Combined_MetallicGlossMapsampler_MainTex, _474 * _Globals._MetallicGlossMap_ST.xy + _Globals._MetallicGlossMap_ST.zw);
        highp float _1411 = _Globals._Metallic * _1409.x;
        highp vec3 _1414 = _1364.xyz - (_1364.xyz * _1411);
        highp vec3 _1420 = mix(vec3(_Globals._Reflectance), _1025.xyz, vec3(_1411));
        highp vec4 _1430 = texture(SPIRV_Cross_Combined_ReflectionColorTexsampler_MainTex, _474 * _Globals._ReflectionColorTex_ST.xy + _Globals._ReflectionColorTex_ST.zw);
        highp vec4 _1431 = _Globals._ReflectionColor * _1430;
        highp vec4 _1532;
        if (_Globals._ApplySpecular != 0u)
        {
            highp vec3 _1504;
            do
            {
                highp vec3 _1442 = mix(_585, _582, vec3(_Globals._SpecularNormalStrength));
                highp vec3 _1444 = normalize(_430 + _414);
                highp float _1446 = clamp(dot(_1442, _1444), 0.0, 1.0);
                if (_Globals._SpecularToon != 0u)
                {
                    highp float _1455 = pow(_1446, 1.0 / _1399);
                    highp float _1462 = clamp((-_Globals._SpecularBlur) * 0.5 + _Globals._SpecularBorder, 0.0, 1.0);
                    _1504 = vec3(clamp((_1455 - _1462) / clamp(fwidth(_1455) * _Globals._AAStrength + (clamp(_Globals._SpecularBlur * 0.5 + _Globals._SpecularBorder, 0.0, 1.0) - _1462), 0.0, 1.0), 0.0, 1.0));
                    break;
                }
                highp float _1474 = clamp(dot(_1442, _430), 0.0, 1.0);
                highp float _1476 = clamp(dot(_1442, _414), 0.0, 1.0);
                highp float _1479 = isnan(0.00200000009499490261077880859375) ? _1399 : (isnan(_1399) ? 0.00200000009499490261077880859375 : max(_1399, 0.00200000009499490261077880859375));
                highp float _1480 = 1.0 - _1479;
                highp float _1484 = _1479 * _1479;
                highp float _1487 = (_1446 * _1484 + (-_1446)) * _1446 + 1.0;
                highp float _1495 = 1.0 - clamp(dot(_414, _1444), 0.0, 1.0);
                _1504 = (_1420 + ((((((vec3(1.0) - _1420) * _1495) * _1495) * _1495) * _1495) * _1495)) * (((0.5 / ((_1476 * (_1474 * _1480 + _1479) + (_1474 * (_1476 * _1480 + _1479))) + 9.9999997473787516355514526367188e-06)) * (_1484 / (_1487 * _1487 + 1.0000000116860974230803549289703e-07))) * _1476);
                break;
            } while(false);
            highp vec3 _1505 = _1414.xyz;
            highp vec3 _1506 = _1431.xyz;
            highp vec3 _1507 = _1506 * _1207;
            highp vec3 _1512 = _1506 * _1207 + _1505;
            highp vec3 _1513 = _1505 * _1507;
            bvec3 _1515 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1516 = vec3(_1515.x ? _1507.x : _303.x, _1515.y ? _1507.y : _303.y, _1515.z ? _1507.z : _303.z);
            bvec3 _1518 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1526;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1524 = (-_1505) * _1507 + _1512;
                bvec3 _2394 = isnan(_1524);
                bvec3 _2395 = isnan(_1505);
                highp vec3 _2396 = max(_1524, _1505);
                highp vec3 _2397 = vec3(_2394.x ? _1505.x : _2396.x, _2394.y ? _1505.y : _2396.y, _2394.z ? _1505.z : _2396.z);
                _1526 = vec3(_2395.x ? _1524.x : _2397.x, _2395.y ? _1524.y : _2397.y, _2395.z ? _1524.z : _2397.z);
            }
            else
            {
                _1526 = vec3(_1518.x ? _1512.x : _1516.x, _1518.y ? _1512.y : _1516.y, _1518.z ? _1512.z : _1516.z);
            }
            bvec3 _1528 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1530 = mix(_1505, vec3(_1528.x ? _1513.x : _1526.x, _1528.y ? _1513.y : _1526.y, _1528.z ? _1513.z : _1526.z), _1504 * _1431.w);
            _1532 = vec4(_1530.x, _1530.y, _1530.z, _1364.w);
        }
        else
        {
            _1532 = vec4(_1414.x, _1414.y, _1414.z, _1364.w);
        }
        highp vec4 _1635;
        if (_Globals._ApplyReflection != 0u)
        {
            bvec3 _1554 = bvec3(((uvec2(textureSize(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, int(0u))).x < 15u) || (_Globals.unity_SpecCube0_HDR.x == 0.0)) || (_Globals._ReflectionCubeOverride != 0u));
            highp vec3 _1561 = reflect(-_430, mix(_585, _582, vec3(_Globals._ReflectionNormalStrength)));
            highp vec4 _1564 = textureLod(SPIRV_Cross_Combined_ReflectionCubeTexlil_sampler_trilinear_repeat, _1561, _1398 * ((-4.19999980926513671875) * _1398 + 10.19999980926513671875));
            highp vec3 _1584 = ((_1564.xyz * (_Globals._ReflectionCubeTex_HDR.x * pow(abs(_Globals._ReflectionCubeTex_HDR.w * (_1564.w - 1.0) + 1.0), _Globals._ReflectionCubeTex_HDR.y))) * _Globals._ReflectionCubeColor.xyz) * mix(vec3(1.0), _1207, vec3(_Globals._ReflectionCubeEnableLighting));
            highp vec3 _1590 = textureLod(SPIRV_Cross_Combinedunity_SpecCube0samplerunity_SpecCube0, _1561, _1398 * 8.0).xyz * 1.0;
            highp float _1601 = 1.0 - _584;
            highp vec3 _1610 = _1431.xyz;
            highp vec3 _1615 = _1532.xyz + _1610;
            highp vec3 _1616 = _1532.xyz * _1610;
            bvec3 _1618 = bvec3(_Globals._ReflectionBlendMode == 0u);
            highp vec3 _1619 = vec3(_1618.x ? _1610.x : _303.x, _1618.y ? _1610.y : _303.y, _1618.z ? _1610.z : _303.z);
            bvec3 _1621 = bvec3(_Globals._ReflectionBlendMode == 1u);
            highp vec3 _1629;
            if (_Globals._ReflectionBlendMode == 2u)
            {
                highp vec3 _1627 = (-_1532.xyz) * _1610 + _1615;
                bvec3 _2399 = isnan(_1627);
                bvec3 _2400 = isnan(_1532.xyz);
                highp vec3 _2401 = max(_1627, _1532.xyz);
                highp vec3 _2402 = vec3(_2399.x ? _1532.xyz.x : _2401.x, _2399.y ? _1532.xyz.y : _2401.y, _2399.z ? _1532.xyz.z : _2401.z);
                _1629 = vec3(_2400.x ? _1627.x : _2402.x, _2400.y ? _1627.y : _2402.y, _2400.z ? _1627.z : _2402.z);
            }
            else
            {
                _1629 = vec3(_1621.x ? _1615.x : _1619.x, _1621.y ? _1615.y : _1619.y, _1621.z ? _1615.z : _1619.z);
            }
            bvec3 _1631 = bvec3(_Globals._ReflectionBlendMode == 3u);
            highp vec3 _1633 = mix(_1532.xyz, vec3(_1631.x ? _1616.x : _1629.x, _1631.y ? _1616.y : _1629.y, _1631.z ? _1616.z : _1629.z), ((vec3(_1554.x ? _1584.x : _1590.x, _1554.y ? _1584.y : _1590.y, _1554.z ? _1584.z : _1590.z) * (1.0 / (_1399 * _1399 + 1.0))) * mix(_1420, vec3(clamp(_1397 + (1.0 - ((-_1411) * 0.959999978542327880859375 + 0.959999978542327880859375)), 0.0, 1.0)), vec3((((_1601 * _1601) * _1601) * _1601) * _1601))) * _1431.w);
            _1635 = vec4(_1633.x, _1633.y, _1633.z, _1532.w);
        }
        else
        {
            _1635 = _1532;
        }
        _1636 = _1635;
    }
    else
    {
        _1636 = _1364;
    }
    highp vec4 _1787;
    if (_Globals._UseMatCap != 0u)
    {
        highp vec3 _1681;
        if (_Globals._MatCapCustomNormal != 0u)
        {
            highp vec4 _1658 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _474 * _Globals._MatCapBumpMap_ST.xy + _Globals._MatCapBumpMap_ST.zw);
            _1658.w = _1658.w * _1658.x;
            highp vec2 _1669 = ((_1658.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCapBumpScale;
            highp vec3 _1670 = vec3(_1669.x, _1669.y, _309.z);
            highp vec2 _1671 = _1669.xy;
            _1670.z = sqrt(1.0 - clamp(dot(_1671, _1671), 0.0, 1.0));
            highp vec3 _1678 = normalize(_439 * _1670);
            highp vec3 _1679 = -_1678;
            _1681 = vec3(_580.x ? _1679.x : _1678.x, _580.y ? _1679.y : _1678.y, _580.z ? _1679.z : _1678.z);
        }
        else
        {
            _1681 = mix(_585, _582, vec3(_Globals._MatCapNormalStrength));
        }
        bvec3 _1698 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCapPerspective != 0u));
        highp vec3 _1699 = vec3(_1698.x ? _430.x : _330.x, _1698.y ? _430.y : _330.y, _1698.z ? _430.z : _330.z);
        bvec3 _1700 = bvec3(_Globals._MatCapZRotCancel != 0u);
        highp vec3 _1701 = vec3(_1700.x ? vec3(0.0, 1.0, 0.0).x : _337.x, _1700.y ? vec3(0.0, 1.0, 0.0).y : _337.y, _1700.z ? vec3(0.0, 1.0, 0.0).z : _337.z);
        highp vec3 _1705 = normalize(_1701 - (_1699 * dot(_1699, _1701)));
        highp vec4 _1727 = _Globals._MatCapColor * textureLod(SPIRV_Cross_Combined_MatCapTexlil_sampler_trilinear_repeat, ((mix((normalize(_1681) * mat3(cross(_1699, _1705), _1705, _1699)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCapBlendUV1.xy) * _Globals._MatCapTex_ST.xy + _Globals._MatCapTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCapLod);
        highp vec4 _1751 = texture(SPIRV_Cross_Combined_MatCapBlendMasksampler_MainTex, _474 * _Globals._MatCapBlendMask_ST.xy + _Globals._MatCapBlendMask_ST.zw);
        highp vec3 _1753 = mix(_1727.xyz, _1727.xyz * _1207, vec3(_Globals._MatCapEnableLighting)).xyz;
        highp vec3 _1760 = mix(_1753, _1753 * _1025.xyz, vec3(_Globals._MatCapMainStrength)).xyz;
        highp vec3 _1767 = _1636.xyz + _1760;
        highp vec3 _1768 = _1636.xyz * _1760;
        bvec3 _1770 = bvec3(_Globals._MatCapBlendMode == 0u);
        highp vec3 _1771 = vec3(_1770.x ? _1760.x : _303.x, _1770.y ? _1760.y : _303.y, _1770.z ? _1760.z : _303.z);
        bvec3 _1773 = bvec3(_Globals._MatCapBlendMode == 1u);
        highp vec3 _1781;
        if (_Globals._MatCapBlendMode == 2u)
        {
            highp vec3 _1779 = (-_1636.xyz) * _1760 + _1767;
            bvec3 _2404 = isnan(_1779);
            bvec3 _2405 = isnan(_1636.xyz);
            highp vec3 _2406 = max(_1779, _1636.xyz);
            highp vec3 _2407 = vec3(_2404.x ? _1636.xyz.x : _2406.x, _2404.y ? _1636.xyz.y : _2406.y, _2404.z ? _1636.xyz.z : _2406.z);
            _1781 = vec3(_2405.x ? _1779.x : _2407.x, _2405.y ? _1779.y : _2407.y, _2405.z ? _1779.z : _2407.z);
        }
        else
        {
            _1781 = vec3(_1773.x ? _1767.x : _1771.x, _1773.y ? _1767.y : _1771.y, _1773.z ? _1767.z : _1771.z);
        }
        bvec3 _1783 = bvec3(_Globals._MatCapBlendMode == 3u);
        highp vec3 _1785 = mix(_1636.xyz, vec3(_1783.x ? _1768.x : _1781.x, _1783.y ? _1768.y : _1781.y, _1783.z ? _1768.z : _1781.z), _1751.xyz * (_Globals._MatCapBlend * ((_362 < (_Globals._MatCapBackfaceMask - 1.0)) ? 0.0 : mix(_1727.w, _1727.w * _1208, _Globals._MatCapShadowMask))));
        _1787 = vec4(_1785.x, _1785.y, _1785.z, _1636.w);
    }
    else
    {
        _1787 = _1636;
    }
    highp vec4 _1937;
    if (_Globals._UseMatCap2nd != 0u)
    {
        highp vec3 _1832;
        if (_Globals._MatCap2ndCustomNormal != 0u)
        {
            highp vec4 _1809 = texture(SPIRV_Cross_Combined_BumpMapsampler_MainTex, _474 * _Globals._MatCap2ndBumpMap_ST.xy + _Globals._MatCap2ndBumpMap_ST.zw);
            _1809.w = _1809.w * _1809.x;
            highp vec2 _1820 = ((_1809.wy * 2.0) - vec2(1.0)).xy * _Globals._MatCap2ndBumpScale;
            highp vec3 _1821 = vec3(_1820.x, _1820.y, _309.z);
            highp vec2 _1822 = _1820.xy;
            _1821.z = sqrt(1.0 - clamp(dot(_1822, _1822), 0.0, 1.0));
            highp vec3 _1829 = normalize(_439 * _1821);
            highp vec3 _1830 = -_1829;
            _1832 = vec3(_580.x ? _1830.x : _1829.x, _580.y ? _1830.y : _1829.y, _580.z ? _1830.z : _1829.z);
        }
        else
        {
            _1832 = mix(_585, _582, vec3(_Globals._MatCap2ndNormalStrength));
        }
        bvec3 _1848 = bvec3((_Globals.uOrthoParams.w == 0.0) && (_Globals._MatCap2ndPerspective != 0u));
        highp vec3 _1849 = vec3(_1848.x ? _430.x : _330.x, _1848.y ? _430.y : _330.y, _1848.z ? _430.z : _330.z);
        bvec3 _1850 = bvec3(_Globals._MatCap2ndZRotCancel != 0u);
        highp vec3 _1851 = vec3(_1850.x ? vec3(0.0, 1.0, 0.0).x : _337.x, _1850.y ? vec3(0.0, 1.0, 0.0).y : _337.y, _1850.z ? vec3(0.0, 1.0, 0.0).z : _337.z);
        highp vec3 _1855 = normalize(_1851 - (_1849 * dot(_1849, _1851)));
        highp vec4 _1877 = _Globals._MatCap2ndColor * textureLod(SPIRV_Cross_Combined_MatCap2ndTexlil_sampler_trilinear_repeat, ((mix((_1832 * mat3(cross(_1849, _1855), _1855, _1849)).xy, (clamp(out_var_TEXCOORD0.zw, vec2(0.0), vec2(1.0)) * 2.0) - vec2(1.0), _Globals._MatCap2ndBlendUV1.xy) * _Globals._MatCap2ndTex_ST.xy + _Globals._MatCap2ndTex_ST.zw) * 0.5) + vec2(0.5), _Globals._MatCap2ndLod);
        highp vec3 _1878 = _1877.xyz;
        highp float _1884 = _1877.w;
        highp vec4 _1901 = texture(SPIRV_Cross_Combined_MatCap2ndBlendMasksampler_MainTex, _474 * _Globals._MatCap2ndBlendMask_ST.xy + _Globals._MatCap2ndBlendMask_ST.zw);
        highp vec3 _1903 = mix(_1878, _1878 * _1207, vec3(_Globals._MatCap2ndEnableLighting)).xyz;
        highp vec3 _1910 = mix(_1903, _1903 * _1025.xyz, vec3(_Globals._MatCap2ndMainStrength)).xyz;
        highp vec3 _1917 = _1787.xyz + _1910;
        highp vec3 _1918 = _1787.xyz * _1910;
        bvec3 _1920 = bvec3(_Globals._MatCap2ndBlendMode == 0u);
        highp vec3 _1921 = vec3(_1920.x ? _1910.x : _303.x, _1920.y ? _1910.y : _303.y, _1920.z ? _1910.z : _303.z);
        bvec3 _1923 = bvec3(_Globals._MatCap2ndBlendMode == 1u);
        highp vec3 _1931;
        if (_Globals._MatCap2ndBlendMode == 2u)
        {
            highp vec3 _1929 = (-_1787.xyz) * _1910 + _1917;
            bvec3 _2409 = isnan(_1929);
            bvec3 _2410 = isnan(_1787.xyz);
            highp vec3 _2411 = max(_1929, _1787.xyz);
            highp vec3 _2412 = vec3(_2409.x ? _1787.xyz.x : _2411.x, _2409.y ? _1787.xyz.y : _2411.y, _2409.z ? _1787.xyz.z : _2411.z);
            _1931 = vec3(_2410.x ? _1929.x : _2412.x, _2410.y ? _1929.y : _2412.y, _2410.z ? _1929.z : _2412.z);
        }
        else
        {
            _1931 = vec3(_1923.x ? _1917.x : _1921.x, _1923.y ? _1917.y : _1921.y, _1923.z ? _1917.z : _1921.z);
        }
        bvec3 _1933 = bvec3(_Globals._MatCap2ndBlendMode == 3u);
        highp vec3 _1935 = mix(_1787.xyz, vec3(_1933.x ? _1918.x : _1931.x, _1933.y ? _1918.y : _1931.y, _1933.z ? _1918.z : _1931.z), _1901.xyz * (_Globals._MatCap2ndBlend * ((_362 < (_Globals._MatCap2ndBackfaceMask - 1.0)) ? 0.0 : mix(_1884, _1884 * _1208, _Globals._MatCap2ndShadowMask))));
        _1937 = vec4(_1935.x, _1935.y, _1935.z, _1787.w);
    }
    else
    {
        _1937 = _1787;
    }
    highp vec4 _2083;
    if (_Globals._UseRim != 0u)
    {
        highp vec3 _1956 = mix(_585, _582, vec3(_Globals._RimNormalStrength));
        highp float _1960 = dot(_414, _1956) * 0.5 + 0.5;
        highp float _1983 = (_362 < (_Globals._RimBackfaceMask - 1.0)) ? 0.0 : pow(clamp(1.0 - abs(dot(_1956, _430)), 0.0, 1.0), _Globals._RimFresnelPower);
        highp float _1987 = mix(_1983, _1983 * clamp((_1960 + _Globals._RimDirRange) / (1.0 + _Globals._RimDirRange), 0.0, 1.0), _Globals._RimDirStrength);
        highp float _1988 = _1983 * clamp(((1.0 - _1960) + _Globals._RimIndirRange) / (1.0 + _Globals._RimIndirRange), 0.0, 1.0);
        highp float _1998 = clamp((-_Globals._RimBlur) * 0.5 + _Globals._RimBorder, 0.0, 1.0);
        highp float _2007 = clamp((_1987 - _1998) / clamp(fwidth(_1987) * _Globals._AAStrength + (clamp(_Globals._RimBlur * 0.5 + _Globals._RimBorder, 0.0, 1.0) - _1998), 0.0, 1.0), 0.0, 1.0);
        highp float _2014 = clamp((-_Globals._RimIndirBlur) * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0);
        highp float _2024 = clamp((_1988 * _Globals._RimDirStrength + (-_2014)) / clamp(fwidth(_1988 * _Globals._RimDirStrength) * _Globals._AAStrength + (clamp(_Globals._RimIndirBlur * 0.5 + _Globals._RimIndirBorder, 0.0, 1.0) - _2014), 0.0, 1.0), 0.0, 1.0);
        highp vec3 _2036 = vec3(1.0 - _Globals._RimEnableLighting) + (_1207 * _Globals._RimEnableLighting);
        highp vec3 _2038 = mix(_Globals._RimColor.xyz, _Globals._RimColor.xyz * _1025.xyz, vec3(_Globals._RimMainStrength)).xyz;
        highp vec3 _2039 = _2038 * _2036;
        highp vec3 _2045 = _2038 * _2036 + _1937.xyz;
        highp vec3 _2046 = _1937.xyz * _2039;
        bvec3 _2048 = bvec3(_Globals._RimBlendMode == 0u);
        highp vec3 _2049 = vec3(_2048.x ? _2039.x : _303.x, _2048.y ? _2039.y : _303.y, _2048.z ? _2039.z : _303.z);
        bvec3 _2051 = bvec3(_Globals._RimBlendMode == 1u);
        bool _2053 = _Globals._RimBlendMode == 2u;
        highp vec3 _2059;
        if (_2053)
        {
            highp vec3 _2057 = (-_1937.xyz) * _2039 + _2045;
            bvec3 _2414 = isnan(_2057);
            bvec3 _2415 = isnan(_1937.xyz);
            highp vec3 _2416 = max(_2057, _1937.xyz);
            highp vec3 _2417 = vec3(_2414.x ? _1937.xyz.x : _2416.x, _2414.y ? _1937.xyz.y : _2416.y, _2414.z ? _1937.xyz.z : _2416.z);
            _2059 = vec3(_2415.x ? _2057.x : _2417.x, _2415.y ? _2057.y : _2417.y, _2415.z ? _2057.z : _2417.z);
        }
        else
        {
            _2059 = vec3(_2051.x ? _2045.x : _2049.x, _2051.y ? _2045.y : _2049.y, _2051.z ? _2045.z : _2049.z);
        }
        bvec3 _2061 = bvec3(_Globals._RimBlendMode == 3u);
        highp vec3 _2064 = mix(_1937.xyz, vec3(_2061.x ? _2046.x : _2059.x, _2061.y ? _2046.y : _2059.y, _2061.z ? _2046.z : _2059.z), vec3(mix(_2007, _2007 * _1208, _Globals._RimShadowMask) * _Globals._RimColor.w)).xyz;
        highp vec3 _2066 = _Globals._RimIndirColor.xyz * _2036;
        highp vec3 _2070 = _Globals._RimIndirColor.xyz * _2036 + _2064;
        highp vec3 _2071 = _2064 * _2066;
        highp vec3 _2072 = vec3(_2048.x ? _2066.x : _303.x, _2048.y ? _2066.y : _303.y, _2048.z ? _2066.z : _303.z);
        highp vec3 _2079;
        if (_2053)
        {
            highp vec3 _2077 = (-_2064) * _2066 + _2070;
            bvec3 _2419 = isnan(_2077);
            bvec3 _2420 = isnan(_2064);
            highp vec3 _2421 = max(_2077, _2064);
            highp vec3 _2422 = vec3(_2419.x ? _2064.x : _2421.x, _2419.y ? _2064.y : _2421.y, _2419.z ? _2064.z : _2421.z);
            _2079 = vec3(_2420.x ? _2077.x : _2422.x, _2420.y ? _2077.y : _2422.y, _2420.z ? _2077.z : _2422.z);
        }
        else
        {
            _2079 = vec3(_2051.x ? _2070.x : _2072.x, _2051.y ? _2070.y : _2072.y, _2051.z ? _2070.z : _2072.z);
        }
        highp vec3 _2081 = mix(_2064, vec3(_2061.x ? _2071.x : _2079.x, _2061.y ? _2071.y : _2079.y, _2061.z ? _2071.z : _2079.z), vec3(mix(_2024, _2024 * _1208, _Globals._RimShadowMask) * _Globals._RimIndirColor.w));
        _2083 = vec4(_2081.x, _2081.y, _2081.z, _1937.w);
    }
    else
    {
        _2083 = _1937;
    }
    highp vec4 _2148;
    if (_Globals._UseEmission != 0u)
    {
        highp vec3 _2097 = mix(_Globals._EmissionColor.xyz, _Globals._EmissionColor.xyz * _418, vec3(_Globals._EmissionFluorescence)).xyz;
        highp float _2111 = sin(_Globals.uTime.y * _Globals._EmissionBlink.z + _Globals._EmissionBlink.w) * 0.5 + 0.5;
        highp float _2117;
        if (_Globals._EmissionBlink.y > 0.5)
        {
            _2117 = roundEven(_2111);
        }
        else
        {
            _2117 = _2111;
        }
        highp vec3 _2124 = mix(_2097, _2097 * _1025.xyz, vec3(_Globals._EmissionMainStrength)).xyz;
        highp vec3 _2128 = _2083.xyz + _2124;
        highp vec3 _2129 = _2083.xyz * _2124;
        bvec3 _2131 = bvec3(_Globals._EmissionBlendMode == 0u);
        highp vec3 _2132 = vec3(_2131.x ? _2124.x : _303.x, _2131.y ? _2124.y : _303.y, _2131.z ? _2124.z : _303.z);
        bvec3 _2134 = bvec3(_Globals._EmissionBlendMode == 1u);
        highp vec3 _2142;
        if (_Globals._EmissionBlendMode == 2u)
        {
            highp vec3 _2140 = (-_2083.xyz) * _2124 + _2128;
            bvec3 _2424 = isnan(_2140);
            bvec3 _2425 = isnan(_2083.xyz);
            highp vec3 _2426 = max(_2140, _2083.xyz);
            highp vec3 _2427 = vec3(_2424.x ? _2083.xyz.x : _2426.x, _2424.y ? _2083.xyz.y : _2426.y, _2424.z ? _2083.xyz.z : _2426.z);
            _2142 = vec3(_2425.x ? _2140.x : _2427.x, _2425.y ? _2140.y : _2427.y, _2425.z ? _2140.z : _2427.z);
        }
        else
        {
            _2142 = vec3(_2134.x ? _2128.x : _2132.x, _2134.y ? _2128.y : _2132.y, _2134.z ? _2128.z : _2132.z);
        }
        bvec3 _2144 = bvec3(_Globals._EmissionBlendMode == 3u);
        highp vec3 _2146 = mix(_2083.xyz, vec3(_2144.x ? _2129.x : _2142.x, _2144.y ? _2129.y : _2142.y, _2144.z ? _2129.z : _2142.z), vec3((_Globals._EmissionBlend * mix(1.0, _2117, _Globals._EmissionBlink.x)) * _Globals._EmissionColor.w));
        _2148 = vec4(_2146.x, _2146.y, _2146.z, _2083.w);
    }
    else
    {
        _2148 = _2083;
    }
    highp vec4 _2213;
    if (_Globals._UseEmission2nd != 0u)
    {
        highp vec3 _2162 = mix(_Globals._Emission2ndColor.xyz, _Globals._Emission2ndColor.xyz * _418, vec3(_Globals._Emission2ndFluorescence)).xyz;
        highp float _2176 = sin(_Globals.uTime.y * _Globals._Emission2ndBlink.z + _Globals._Emission2ndBlink.w) * 0.5 + 0.5;
        highp float _2182;
        if (_Globals._Emission2ndBlink.y > 0.5)
        {
            _2182 = roundEven(_2176);
        }
        else
        {
            _2182 = _2176;
        }
        highp vec3 _2189 = mix(_2162, _2162 * _1025.xyz, vec3(_Globals._Emission2ndMainStrength)).xyz;
        highp vec3 _2193 = _2148.xyz + _2189;
        highp vec3 _2194 = _2148.xyz * _2189;
        bvec3 _2196 = bvec3(_Globals._Emission2ndBlendMode == 0u);
        highp vec3 _2197 = vec3(_2196.x ? _2189.x : _303.x, _2196.y ? _2189.y : _303.y, _2196.z ? _2189.z : _303.z);
        bvec3 _2199 = bvec3(_Globals._Emission2ndBlendMode == 1u);
        highp vec3 _2207;
        if (_Globals._Emission2ndBlendMode == 2u)
        {
            highp vec3 _2205 = (-_2148.xyz) * _2189 + _2193;
            bvec3 _2429 = isnan(_2205);
            bvec3 _2430 = isnan(_2148.xyz);
            highp vec3 _2431 = max(_2205, _2148.xyz);
            highp vec3 _2432 = vec3(_2429.x ? _2148.xyz.x : _2431.x, _2429.y ? _2148.xyz.y : _2431.y, _2429.z ? _2148.xyz.z : _2431.z);
            _2207 = vec3(_2430.x ? _2205.x : _2432.x, _2430.y ? _2205.y : _2432.y, _2430.z ? _2205.z : _2432.z);
        }
        else
        {
            _2207 = vec3(_2199.x ? _2193.x : _2197.x, _2199.y ? _2193.y : _2197.y, _2199.z ? _2193.z : _2197.z);
        }
        bvec3 _2209 = bvec3(_Globals._Emission2ndBlendMode == 3u);
        highp vec3 _2211 = mix(_2148.xyz, vec3(_2209.x ? _2194.x : _2207.x, _2209.y ? _2194.y : _2207.y, _2209.z ? _2194.z : _2207.z), vec3((_Globals._Emission2ndBlend * mix(1.0, _2182, _Globals._Emission2ndBlink.x)) * _Globals._Emission2ndColor.w));
        _2213 = vec4(_2211.x, _2211.y, _2211.z, _2148.w);
    }
    else
    {
        _2213 = _2148;
    }
    bvec3 _2221 = bvec3(_362 < 0.0);
    highp vec3 _2222 = (_2213.xyz + (_Globals._DissolveColor.xyz * _1015)).xyz;
    highp vec3 _2230 = mix(_2222, _Globals._BackfaceColor.xyz * _1207, vec3(_Globals._BackfaceColor.w));
    highp vec3 _2265 = vec3(_2221.x ? _2230.x : _2222.x, _2221.y ? _2230.y : _2222.y, _2221.z ? _2230.z : _2222.z).xyz;
    highp vec3 _2273 = mix(_2265, mix(_Globals._DistanceFadeColor.xyz, _Globals._DistanceFadeRimColor.xyz * _2265, vec3(pow(clamp(1.0 - abs(dot(_585, _430)), 0.0, 1.0), _Globals._DistanceFadeRimFresnelPower) * _Globals._DistanceFadeRimColor.w)), vec3((_362 < (_Globals._DistanceFade.w - 1.0)) ? _Globals._DistanceFade.z : (clamp((((_Globals._DistanceFadeMode != 0u) ? length(_Globals.uCameraPosition.xyz - (vec4(0.0, 0.0, 0.0, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix)).xyz) : _423) - _Globals._DistanceFade.x) / (_Globals._DistanceFade.y - _Globals._DistanceFade.x), 0.0, 1.0) * _Globals._DistanceFade.z)));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_2273.x, _2273.y, _2273.z, _2213.w), vec4(out_var_TEXCOORD9));
}
