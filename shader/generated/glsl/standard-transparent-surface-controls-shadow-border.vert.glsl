#version 300 es
precision highp float;
precision highp int;

struct type_Globals
{
    mat4 uModelMatrix;
    mat4 uModelMatrixInverse;
    mat4 uViewMatrix;
    mat4 uProjectionMatrix;
    mat4 uViewProjectionMatrix;
    vec4 uCameraPosition;
    vec4 uScreenParams;
    vec4 uProjectionParams;
    vec4 uOrthoParams;
    vec4 uWorldTransformParams;
    vec4 uTime;
    vec4 uMainLightColor;
    vec4 uMainLightDirection;
    vec4 uAmbientColor;
    vec4 unity_SHAr;
    vec4 unity_SHAg;
    vec4 unity_SHAb;
    vec4 unity_SHBr;
    vec4 unity_SHBg;
    vec4 unity_SHBb;
    vec4 unity_SHC;
    vec4 unity_4LightPosX0;
    vec4 unity_4LightPosY0;
    vec4 unity_4LightPosZ0;
    vec4 unity_4LightAtten0;
    vec4 unity_LightColor[4];
    vec4 unity_SpecCube0_HDR;
    vec4 unity_SpecCube1_HDR;
    vec4 unity_SpecCube0_BoxMin;
    vec4 unity_SpecCube0_BoxMax;
    vec4 unity_SpecCube0_ProbePosition;
    vec4 unity_SpecCube1_BoxMin;
    vec4 unity_SpecCube1_BoxMax;
    vec4 unity_SpecCube1_ProbePosition;
    mat4 uMainShadowMatrix;
    vec4 uShadowMapSize;
    float uShadowBias;
    float uShadowNormalBias;
    vec4 unity_LightShadowBias;
    vec4 unity_FogColor;
    mat4 uBindMatrix;
    mat4 uBindMatrixInverse;
    vec4 uBoneTextureSize;
    uint uSkinningEnabled;
    vec4 uMorphTargetsTextureSize;
    float uMorphTargetInfluences[64];
    uint uMorphTargetCount;
    uint uMorphVertexDataStride;
    uint uMorphHasPositions;
    uint uMorphHasNormals;
    uint uMorphTargetsRelative;
    float uMorphTargetBaseInfluence;
    vec4 _lilBackgroundTexture_TexelSize;
    vec4 _LightDirectionOverride;
    vec4 _BackfaceColor;
    vec4 _PreColor;
    vec4 _Color;
    vec4 _MainTex_ST;
    vec4 _MainTex_ScrollRotate;
    vec4 _MainTexHSVG;
    vec4 _ShadowColor;
    vec4 _Shadow2ndColor;
    vec4 _Shadow3rdColor;
    vec4 _ShadowBorderColor;
    vec4 _ShadowAOShift;
    vec4 _ShadowAOShift2;
    vec4 _RimShadeColor;
    vec4 _BacklightColor;
    vec4 _BacklightColorTex_ST;
    vec4 _EmissionColor;
    vec4 _EmissionBlink;
    vec4 _EmissionMap_ST;
    vec4 _EmissionMap_ScrollRotate;
    vec4 _EmissionBlendMask_ST;
    vec4 _Emission2ndColor;
    vec4 _Emission2ndBlink;
    vec4 _Emission2ndMap_ST;
    vec4 _Emission2ndMap_ScrollRotate;
    vec4 _Emission2ndBlendMask_ST;
    vec4 _BumpMap_ST;
    vec4 _Bump2ndMap_ST;
    vec4 _Bump2ndScaleMask_ST;
    vec4 _ReflectionColor;
    vec4 _MetallicGlossMap_ST;
    vec4 _ReflectionColorTex_ST;
    vec4 _SmoothnessTex_ST;
    vec4 _ReflectionCubeColor;
    vec4 _ReflectionCubeTex_HDR;
    vec4 _MatCapColor;
    vec4 _MatCapTex_ST;
    vec4 _MatCapBlendMask_ST;
    vec4 _MatCapBlendUV1;
    vec4 _MatCapBumpMap_ST;
    vec4 _MatCap2ndColor;
    vec4 _MatCap2ndTex_ST;
    vec4 _MatCap2ndBlendMask_ST;
    vec4 _MatCap2ndBlendUV1;
    vec4 _MatCap2ndBumpMap_ST;
    vec4 _RimColor;
    vec4 _RimColorTex_ST;
    vec4 _RimIndirColor;
    vec4 _DistanceFade;
    vec4 _DistanceFadeColor;
    vec4 _DistanceFadeRimColor;
    vec4 _DissolveMask_ST;
    vec4 _DissolveColor;
    vec4 _DissolveParams;
    vec4 _DissolvePos;
    vec4 _OutlineColor;
    vec4 _OutlineLitColor;
    vec4 _OutlineTex_ST;
    float _AsUnlit;
    float _Cutoff;
    float _PreCutoff;
    float _SubpassCutoff;
    float _FlipNormal;
    float _ShiftBackfaceUV;
    float _VertexLightStrength;
    float _LightMinLimit;
    float _LightMaxLimit;
    float _MonochromeLighting;
    float _AAStrength;
    float _EnvRimBorder;
    float _EnvRimBlur;
    float _AlphaBoostFA;
    vec4 _AlphaMask_ST;
    float _AlphaMaskScale;
    float _AlphaMaskValue;
    float _BackfaceForceShadow;
    float _ShadowStrength;
    float _ShadowNormalStrength;
    float _ShadowBorder;
    float _ShadowBlur;
    float _ShadowStrengthMaskLOD;
    float _ShadowBorderMaskLOD;
    float _ShadowBlurMaskLOD;
    float _Shadow2ndNormalStrength;
    float _Shadow2ndBorder;
    float _Shadow2ndBlur;
    float _Shadow3rdNormalStrength;
    float _Shadow3rdBorder;
    float _Shadow3rdBlur;
    float _ShadowMainStrength;
    float _ShadowEnvStrength;
    float _ShadowBorderRange;
    float _ShadowReceive;
    float _Shadow2ndReceive;
    float _Shadow3rdReceive;
    float _ShadowFlatBlur;
    float _ShadowFlatBorder;
    float _RimShadeNormalStrength;
    float _RimShadeBorder;
    float _RimShadeBlur;
    float _RimShadeFresnelPower;
    float _BacklightNormalStrength;
    float _BacklightBorder;
    float _BacklightBlur;
    float _BacklightDirectivity;
    float _BacklightViewStrength;
    float _BacklightBackfaceMask;
    float _BacklightMainStrength;
    float _BumpScale;
    float _Bump2ndScale;
    float _Reflectance;
    float _SpecularNormalStrength;
    float _SpecularBorder;
    float _SpecularBlur;
    float _ReflectionNormalStrength;
    float _ReflectionCubeEnableLighting;
    float _Smoothness;
    float _Metallic;
    float _GSAAStrength;
    float _MatCapBlend;
    float _MatCapEnableLighting;
    float _MatCapShadowMask;
    float _MatCapVRParallaxStrength;
    float _MatCapBackfaceMask;
    float _MatCapLod;
    float _MatCapNormalStrength;
    float _MatCapMainStrength;
    float _MatCapBumpScale;
    float _MatCap2ndBlend;
    float _MatCap2ndEnableLighting;
    float _MatCap2ndShadowMask;
    float _MatCap2ndVRParallaxStrength;
    float _MatCap2ndBackfaceMask;
    float _MatCap2ndLod;
    float _MatCap2ndNormalStrength;
    float _MatCap2ndMainStrength;
    float _MatCap2ndBumpScale;
    float _RimNormalStrength;
    float _RimBorder;
    float _RimBlur;
    float _RimFresnelPower;
    float _RimEnableLighting;
    float _RimShadowMask;
    float _RimVRParallaxStrength;
    float _RimBackfaceMask;
    float _RimMainStrength;
    float _RimDirStrength;
    float _RimDirRange;
    float _RimIndirRange;
    float _RimIndirBorder;
    float _RimIndirBlur;
    float _DistanceFadeRimFresnelPower;
    float _EmissionBlend;
    float _EmissionParallaxDepth;
    float _EmissionFluorescence;
    float _EmissionMainStrength;
    float _Emission2ndBlend;
    float _Emission2ndParallaxDepth;
    float _Emission2ndFluorescence;
    float _Emission2ndMainStrength;
    float _lilShadowCasterBias;
    float _OutlineLitScale;
    float _OutlineLitOffset;
    float _OutlineWidth;
    float _OutlineEnableLighting;
    float _OutlineVectorScale;
    float _OutlineFixWidth;
    float _OutlineZBias;
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

uniform highp sampler2DArray SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler;
uniform highp sampler2D SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler;

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 uv;
layout(location = 2) in vec2 uv1;
layout(location = 3) in vec2 uv2;
layout(location = 4) in vec2 uv3;
layout(location = 5) in vec3 normal;
layout(location = 6) in vec4 tangent;
layout(location = 7) in vec4 skinIndex;
layout(location = 8) in vec4 skinWeight;
out vec4 out_var_TEXCOORD0;
out vec4 out_var_TEXCOORD1;
out vec4 out_var_TEXCOORD2;
out vec3 out_var_TEXCOORD3;
out vec3 out_var_TEXCOORD4;
out vec4 out_var_TEXCOORD5;
out vec3 out_var_TEXCOORD6;
out vec3 out_var_TEXCOORD7;
out vec3 out_var_TEXCOORD8;
out float out_var_TEXCOORD9;
out vec4 out_var_TEXCOORD10;

highp mat4 spvWorkaroundRowMajor(highp mat4 wrap) { return wrap; }
mediump mat4 spvWorkaroundRowMajorMP(mediump mat4 wrap) { return wrap; }

void main()
{
    vec4 _631;
    vec4 _632;
    vec4 _633;
    vec4 _634;
    vec3 _635;
    vec3 _636;
    vec4 _637;
    vec3 _638;
    vec3 _639;
    vec3 _640;
    float _641;
    vec4 _642;
    do
    {
        if (_Globals._Invisible != 0u)
        {
            _631 = vec4(0.0);
            _632 = vec4(0.0);
            _633 = vec4(0.0);
            _634 = vec4(0.0);
            _635 = vec3(0.0);
            _636 = vec3(0.0);
            _637 = vec4(0.0);
            _638 = vec3(0.0);
            _639 = vec3(0.0);
            _640 = vec3(0.0);
            _641 = 0.0;
            _642 = vec4(0.0);
            break;
        }
        vec3 _222;
        vec4 _223;
        do
        {
            if (_Globals.uMorphTargetCount == 0u)
            {
                _222 = normal;
                _223 = position;
                break;
            }
            bvec3 _142 = bvec3(_Globals.uMorphTargetsRelative != 0u);
            vec3 _146 = position.xyz * _Globals.uMorphTargetBaseInfluence;
            vec3 _148 = normal * _Globals.uMorphTargetBaseInfluence;
            vec3 _151;
            vec3 _154;
            _151 = vec3(_142.x ? normal.x : _148.x, _142.y ? normal.y : _148.y, _142.z ? normal.z : _148.z);
            _154 = vec3(_142.x ? position.xyz.x : _146.x, _142.y ? position.xyz.y : _146.y, _142.z ? position.xyz.z : _146.z);
            vec3 _152;
            vec3 _155;
            for (uint _156 = 0u; _156 < 64u; _151 = _152, _154 = _155, _156++)
            {
                if (_156 >= _Globals.uMorphTargetCount)
                {
                    break;
                }
                if (_Globals.uMorphTargetInfluences[_156] == 0.0)
                {
                    _152 = _151;
                    _155 = _154;
                    continue;
                }
                bool _171 = _Globals.uMorphHasPositions != 0u;
                vec3 _193;
                if (_171)
                {
                    uint _177 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _180 = uint(gl_VertexID) * _Globals.uMorphVertexDataStride;
                    _193 = _154 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_180 % _177), int(_180 / _177), int(_156), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_156]);
                }
                else
                {
                    _193 = _154;
                }
                vec3 _220;
                if (_Globals.uMorphHasNormals != 0u)
                {
                    uint _203 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _207 = (uint(gl_VertexID) * _Globals.uMorphVertexDataStride) + uint(_171);
                    _220 = _151 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_207 % _203), int(_207 / _203), int(_156), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_156]);
                }
                else
                {
                    _220 = _151;
                }
                _152 = _220;
                _155 = _193;
            }
            _222 = _151;
            _223 = vec4(_154.x, _154.y, _154.z, position.w);
            break;
        } while(false);
        vec4 _470;
        vec3 _471;
        vec4 _472;
        do
        {
            if (_Globals.uSkinningEnabled == 0u)
            {
                _470 = tangent;
                _471 = _222;
                _472 = _223;
                break;
            }
            uvec4 _231 = uvec4(skinIndex);
            vec4 _234 = _223 * spvWorkaroundRowMajor(_Globals.uBindMatrix);
            mat3 _241 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[2].xyz);
            vec3 _242 = _222 * _241;
            vec3 _244 = tangent.xyz * _241;
            uint _246 = _231.x * 4u;
            uint _250 = max(uint(_Globals.uBoneTextureSize.x), 1u);
            uint _259 = _246 + 1u;
            uint _267 = _246 + 2u;
            uint _275 = _246 + 3u;
            mat4 _284 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_246 % _250), int(_246 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_259 % _250), int(_259 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_267 % _250), int(_267 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_275 % _250), int(_275 / _250), 0).xy, 0)));
            uint _286 = _231.y * 4u;
            uint _294 = _286 + 1u;
            uint _302 = _286 + 2u;
            uint _310 = _286 + 3u;
            mat4 _319 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_286 % _250), int(_286 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_294 % _250), int(_294 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_302 % _250), int(_302 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_310 % _250), int(_310 / _250), 0).xy, 0)));
            uint _321 = _231.z * 4u;
            uint _329 = _321 + 1u;
            uint _337 = _321 + 2u;
            uint _345 = _321 + 3u;
            mat4 _354 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_321 % _250), int(_321 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_329 % _250), int(_329 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_337 % _250), int(_337 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_345 % _250), int(_345 / _250), 0).xy, 0)));
            uint _356 = _231.w * 4u;
            uint _364 = _356 + 1u;
            uint _372 = _356 + 2u;
            uint _380 = _356 + 3u;
            mat4 _389 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_356 % _250), int(_356 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_364 % _250), int(_364 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_372 % _250), int(_372 / _250), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_380 % _250), int(_380 / _250), 0).xy, 0)));
            mat3 _411 = mat3(_284[0].xyz, _284[1].xyz, _284[2].xyz);
            mat3 _420 = mat3(_319[0].xyz, _319[1].xyz, _319[2].xyz);
            mat3 _430 = mat3(_354[0].xyz, _354[1].xyz, _354[2].xyz);
            mat3 _440 = mat3(_389[0].xyz, _389[1].xyz, _389[2].xyz);
            mat3 _464 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[2].xyz);
            vec3 _468 = normalize((((((_244 * _411) * skinWeight.x) + ((_244 * _420) * skinWeight.y)) + ((_244 * _430) * skinWeight.z)) + ((_244 * _440) * skinWeight.w)) * _464);
            _470 = vec4(_468.x, _468.y, _468.z, tangent.w);
            _471 = normalize((((((_242 * _411) * skinWeight.x) + ((_242 * _420) * skinWeight.y)) + ((_242 * _430) * skinWeight.z)) + ((_242 * _440) * skinWeight.w)) * _464);
            _472 = (((((_234 * _284) * skinWeight.x) + ((_234 * _319) * skinWeight.y)) + ((_234 * _354) * skinWeight.z)) + ((_234 * _389) * skinWeight.w)) * spvWorkaroundRowMajor(_Globals.uBindMatrixInverse);
            break;
        } while(false);
        vec4 _479 = vec4(_472.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix);
        vec3 _480 = _479.xyz;
        vec3 _498 = normalize(mat3(spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[2].xyz) * _471);
        mat3 _506 = mat3(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].xyz);
        vec4 _511 = vec4(_472.x, _472.y, _472.z, vec4(0.0).w);
        vec3 _548 = ((_Globals.unity_SHAr.xyz * 0.3333329856395721435546875) + (_Globals.unity_SHAg.xyz * 0.3333329856395721435546875)) + (_Globals.unity_SHAb.xyz * 0.3333329856395721435546875);
        vec3 _558 = normalize(_Globals._LightDirectionOverride.xyz * _506) * length(_Globals._LightDirectionOverride.xyz);
        bvec3 _561 = bvec3(_Globals._LightDirectionOverride.w != 0.0);
        vec3 _565 = normalize((vec3(_548.x, abs(_548.y), _548.z) + (_Globals.uMainLightDirection.xyz * dot(_Globals.uMainLightColor.xyz, vec3(0.0396819151937961578369140625, 0.4580217897891998291015625, 0.0060965395532548427581787109375)))) + vec3(_561.x ? _558.x : _Globals._LightDirectionOverride.xyz.x, _561.y ? _558.y : _Globals._LightDirectionOverride.xyz.y, _561.z ? _558.z : _Globals._LightDirectionOverride.xyz.z));
        vec4 _568 = _565.xyzz * _565.yzzx;
        float _580 = _565.x;
        float _581 = _565.y;
        vec3 _586 = vec3(_Globals.unity_SHAr.w + dot(_Globals.unity_SHBr, _568), _Globals.unity_SHAg.w + dot(_Globals.unity_SHBg, _568), _Globals.unity_SHAb.w + dot(_Globals.unity_SHBb, _568)) + (_Globals.unity_SHC.xyz * (_580 * _580 + (-(_581 * _581))));
        vec3 _594 = normalize((_Globals.unity_SHAr.xyz + _Globals.unity_SHAg.xyz) + _Globals.unity_SHAb.xyz);
        vec3 _607 = clamp((_586 + vec3(dot(_Globals.unity_SHAr.xyz, _565), dot(_Globals.unity_SHAg.xyz, _565), dot(_Globals.unity_SHAb.xyz, _565))) + _Globals.uMainLightColor.xyz, vec3(_Globals._LightMinLimit), vec3(_Globals._LightMaxLimit));
        _511.w = 1.0;
        _631 = vec4(_479.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uViewProjectionMatrix);
        _632 = vec4(uv.x, uv.y, uv1.x, uv1.y);
        _633 = vec4(uv2.x, uv2.y, uv3.x, uv3.y);
        _634 = _511;
        _635 = _480;
        _636 = _498;
        _637 = vec4(normalize(_470.xyz * _506), _470.w);
        _638 = mix(mix(_607, vec3(dot(_607, vec3(0.3333333432674407958984375))), vec3(_Globals._MonochromeLighting)), vec3(1.0), vec3(_Globals._AsUnlit));
        _639 = _565;
        _640 = _586 + vec3(dot(_Globals.unity_SHAr.xyz, _594), dot(_Globals.unity_SHAg.xyz, _594), dot(_Globals.unity_SHAb.xyz, _594));
        _641 = 1.0;
        _642 = vec4(_480 + (normalize(_498) * _Globals.uShadowNormalBias), 1.0) * spvWorkaroundRowMajor(_Globals.uMainShadowMatrix);
        break;
    } while(false);
    gl_Position = _631;
    out_var_TEXCOORD0 = _632;
    out_var_TEXCOORD1 = _633;
    out_var_TEXCOORD2 = _634;
    out_var_TEXCOORD3 = _635;
    out_var_TEXCOORD4 = _636;
    out_var_TEXCOORD5 = _637;
    out_var_TEXCOORD6 = _638;
    out_var_TEXCOORD7 = _639;
    out_var_TEXCOORD8 = _640;
    out_var_TEXCOORD9 = _641;
    out_var_TEXCOORD10 = _642;
}
