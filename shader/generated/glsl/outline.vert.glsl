#version 300 es
precision highp float;
precision highp int;

float _139;
vec3 _140;

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
    vec4 _Color;
    vec4 _MainTex_ST;
    vec4 _OutlineColor;
    vec4 _OutlineLitColor;
    vec4 _OutlineTex_ST;
    vec4 _OutlineTex_ScrollRotate;
    vec4 _OutlineTexHSVG;
    float _AsUnlit;
    float _Cutoff;
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
    uint _OutlineVertexR2Width;
    uint _OutlineVectorUVMode;
    uint _Invisible;
    uint _OutlineLitApplyTex;
    uint _OutlineLitShadowReceive;
    uint _OutlineDeleteMesh;
    uint _OutlineDisableInVR;
    uint _UdonForceSceneLighting;
};

uniform type_Globals _Globals;

uniform highp sampler2DArray SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler;
uniform highp sampler2D SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler;
uniform highp sampler2D SPIRV_Cross_Combined_OutlineWidthMasklil_sampler_trilinear_repeat;
uniform highp sampler2D SPIRV_Cross_Combined_OutlineVectorTexlil_sampler_trilinear_repeat;

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 uv;
layout(location = 2) in vec2 uv1;
layout(location = 3) in vec2 uv2;
layout(location = 4) in vec2 uv3;
layout(location = 5) in vec4 color;
layout(location = 6) in vec3 normal;
layout(location = 7) in vec4 tangent;
layout(location = 8) in vec4 skinIndex;
layout(location = 9) in vec4 skinWeight;
out vec4 out_var_TEXCOORD0;
out vec4 out_var_TEXCOORD1;
out vec3 out_var_TEXCOORD3;
out vec3 out_var_TEXCOORD4;
out vec3 out_var_TEXCOORD5;
out float out_var_TEXCOORD6;
out vec4 out_var_TEXCOORD7;

highp mat4 spvWorkaroundRowMajor(highp mat4 wrap) { return wrap; }
mediump mat4 spvWorkaroundRowMajorMP(mediump mat4 wrap) { return wrap; }

void main()
{
    vec4 _802;
    vec4 _803;
    vec4 _804;
    vec3 _805;
    vec3 _806;
    vec3 _807;
    float _808;
    vec4 _809;
    do
    {
        if ((_Globals._Invisible != 0u) || ((_Globals._OutlineDisableInVR != 0u) && (abs(_Globals.uProjectionMatrix[0].z) > 9.9999999747524270787835121154785e-07)))
        {
            _802 = vec4(0.0);
            _803 = vec4(0.0);
            _804 = vec4(0.0);
            _805 = vec3(0.0);
            _806 = vec3(0.0);
            _807 = vec3(0.0);
            _808 = 0.0;
            _809 = vec4(0.0);
            break;
        }
        vec2 _175 = uv * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw;
        vec3 _266;
        vec4 _267;
        do
        {
            if (_Globals.uMorphTargetCount == 0u)
            {
                _266 = normal;
                _267 = position;
                break;
            }
            bvec3 _186 = bvec3(_Globals.uMorphTargetsRelative != 0u);
            vec3 _190 = position.xyz * _Globals.uMorphTargetBaseInfluence;
            vec3 _192 = normal * _Globals.uMorphTargetBaseInfluence;
            vec3 _195;
            vec3 _198;
            _195 = vec3(_186.x ? normal.x : _192.x, _186.y ? normal.y : _192.y, _186.z ? normal.z : _192.z);
            _198 = vec3(_186.x ? position.xyz.x : _190.x, _186.y ? position.xyz.y : _190.y, _186.z ? position.xyz.z : _190.z);
            vec3 _196;
            vec3 _199;
            for (uint _200 = 0u; _200 < 64u; _195 = _196, _198 = _199, _200++)
            {
                if (_200 >= _Globals.uMorphTargetCount)
                {
                    break;
                }
                if (_Globals.uMorphTargetInfluences[_200] == 0.0)
                {
                    _196 = _195;
                    _199 = _198;
                    continue;
                }
                bool _215 = _Globals.uMorphHasPositions != 0u;
                vec3 _237;
                if (_215)
                {
                    uint _221 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _224 = uint(gl_VertexID) * _Globals.uMorphVertexDataStride;
                    _237 = _198 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_224 % _221), int(_224 / _221), int(_200), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_200]);
                }
                else
                {
                    _237 = _198;
                }
                vec3 _264;
                if (_Globals.uMorphHasNormals != 0u)
                {
                    uint _247 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _251 = (uint(gl_VertexID) * _Globals.uMorphVertexDataStride) + uint(_215);
                    _264 = _195 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_251 % _247), int(_251 / _247), int(_200), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_200]);
                }
                else
                {
                    _264 = _195;
                }
                _196 = _264;
                _199 = _237;
            }
            _266 = _195;
            _267 = vec4(_198.x, _198.y, _198.z, position.w);
            break;
        } while(false);
        vec4 _514;
        vec4 _515;
        vec3 _516;
        do
        {
            if (_Globals.uSkinningEnabled == 0u)
            {
                _514 = tangent;
                _515 = _267;
                _516 = _266;
                break;
            }
            uvec4 _275 = uvec4(skinIndex);
            vec4 _278 = _267 * spvWorkaroundRowMajor(_Globals.uBindMatrix);
            mat3 _285 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[2].xyz);
            vec3 _286 = _266 * _285;
            vec3 _288 = tangent.xyz * _285;
            uint _290 = _275.x * 4u;
            uint _294 = max(uint(_Globals.uBoneTextureSize.x), 1u);
            uint _303 = _290 + 1u;
            uint _311 = _290 + 2u;
            uint _319 = _290 + 3u;
            mat4 _328 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_290 % _294), int(_290 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_303 % _294), int(_303 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_311 % _294), int(_311 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_319 % _294), int(_319 / _294), 0).xy, 0)));
            uint _330 = _275.y * 4u;
            uint _338 = _330 + 1u;
            uint _346 = _330 + 2u;
            uint _354 = _330 + 3u;
            mat4 _363 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_330 % _294), int(_330 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_338 % _294), int(_338 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_346 % _294), int(_346 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_354 % _294), int(_354 / _294), 0).xy, 0)));
            uint _365 = _275.z * 4u;
            uint _373 = _365 + 1u;
            uint _381 = _365 + 2u;
            uint _389 = _365 + 3u;
            mat4 _398 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_365 % _294), int(_365 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_373 % _294), int(_373 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_381 % _294), int(_381 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_389 % _294), int(_389 / _294), 0).xy, 0)));
            uint _400 = _275.w * 4u;
            uint _408 = _400 + 1u;
            uint _416 = _400 + 2u;
            uint _424 = _400 + 3u;
            mat4 _433 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_400 % _294), int(_400 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_408 % _294), int(_408 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_416 % _294), int(_416 / _294), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_424 % _294), int(_424 / _294), 0).xy, 0)));
            mat3 _455 = mat3(_328[0].xyz, _328[1].xyz, _328[2].xyz);
            mat3 _464 = mat3(_363[0].xyz, _363[1].xyz, _363[2].xyz);
            mat3 _474 = mat3(_398[0].xyz, _398[1].xyz, _398[2].xyz);
            mat3 _484 = mat3(_433[0].xyz, _433[1].xyz, _433[2].xyz);
            mat3 _508 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[2].xyz);
            vec3 _512 = normalize((((((_288 * _455) * skinWeight.x) + ((_288 * _464) * skinWeight.y)) + ((_288 * _474) * skinWeight.z)) + ((_288 * _484) * skinWeight.w)) * _508);
            _514 = vec4(_512.x, _512.y, _512.z, tangent.w);
            _515 = (((((_278 * _328) * skinWeight.x) + ((_278 * _363) * skinWeight.y)) + ((_278 * _398) * skinWeight.z)) + ((_278 * _433) * skinWeight.w)) * spvWorkaroundRowMajor(_Globals.uBindMatrixInverse);
            _516 = normalize((((((_286 * _455) * skinWeight.x) + ((_286 * _464) * skinWeight.y)) + ((_286 * _474) * skinWeight.z)) + ((_286 * _484) * skinWeight.w)) * _508);
            break;
        } while(false);
        mat3 _524 = mat3(_514.xyz, normalize(cross(_516, _514.xyz)) * (_514.w * length(_516)), _516);
        vec2 _143[4] = vec2[](_175, uv1, uv2, uv3);
        float _572 = _Globals._OutlineWidth * 0.00999999977648258209228515625;
        float _576 = _572 * textureLod(SPIRV_Cross_Combined_OutlineWidthMasklil_sampler_trilinear_repeat, _143[0], 0.0).x;
        bool _577 = _Globals._OutlineVertexR2Width == 1u;
        float _582;
        if (_577)
        {
            _582 = _576 * color.x;
        }
        else
        {
            _582 = _576;
        }
        bool _583 = _Globals._OutlineVertexR2Width == 2u;
        float _588;
        if (_583)
        {
            _588 = _582 * color.w;
        }
        else
        {
            _588 = _582;
        }
        vec4 _600 = textureLod(SPIRV_Cross_Combined_OutlineVectorTexlil_sampler_trilinear_repeat, _143[_Globals._OutlineVectorUVMode], 0.0);
        _600.w = _600.w * _600.x;
        vec2 _609 = ((_600.wy * 2.0) - vec2(1.0)).xy * _Globals._OutlineVectorScale;
        vec3 _610 = vec3(_609.x, _609.y, _140.z);
        vec2 _611 = _609.xy;
        _610.z = sqrt(1.0 - clamp(dot(_611, _611), 0.0, 1.0));
        vec3 _624;
        if (_583)
        {
            _624 = _524 * ((color.xyz * 2.0) - vec3(1.0));
        }
        else
        {
            _624 = _524 * _610;
        }
        vec3 _626 = _515.xyz + (_624 * (_588 * mix(1.0, clamp(length(_Globals.uCameraPosition.xyz - ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].x, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].x, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].x, _139) * _515.x) + ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].y, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].y, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].y, _139) * _515.y) + ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].z, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].z, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].z, _139) * _515.z) + vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].w, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].w, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].w, _139)))).xyz), 0.0, 1.0), _Globals._OutlineFixWidth)));
        bvec3 _630 = bvec3(_Globals.uOrthoParams.w == 0.0);
        vec3 _639 = (vec4(_Globals.uCameraPosition.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)).xyz - _626;
        mat3 _646 = mat3(spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[2].xyz);
        vec3 _654 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z) * _646;
        vec4 _663 = vec4(_626 - (normalize(vec3(_630.x ? _639.x : _654.x, _630.y ? _639.y : _654.y, _630.z ? _639.z : _654.z)) * _Globals._OutlineZBias), 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix);
        vec4 _670 = vec4(_663.xyz, 1.0);
        vec4 _671 = _670 * spvWorkaroundRowMajor(_Globals.uViewProjectionMatrix);
        vec3 _707 = ((_Globals.unity_SHAr.xyz * 0.3333329856395721435546875) + (_Globals.unity_SHAg.xyz * 0.3333329856395721435546875)) + (_Globals.unity_SHAb.xyz * 0.3333329856395721435546875);
        vec3 _724 = normalize(_Globals._LightDirectionOverride.xyz * mat3(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].xyz)) * length(_Globals._LightDirectionOverride.xyz);
        bvec3 _727 = bvec3(_Globals._LightDirectionOverride.w != 0.0);
        vec3 _731 = normalize((vec3(_707.x, abs(_707.y), _707.z) + (_Globals.uMainLightDirection.xyz * dot(_Globals.uMainLightColor.xyz, vec3(0.0396819151937961578369140625, 0.4580217897891998291015625, 0.0060965395532548427581787109375)))) + vec3(_727.x ? _724.x : _Globals._LightDirectionOverride.xyz.x, _727.y ? _724.y : _Globals._LightDirectionOverride.xyz.y, _727.z ? _724.z : _Globals._LightDirectionOverride.xyz.z));
        vec4 _734 = _731.xyzz * _731.yzzx;
        float _746 = _731.x;
        float _747 = _731.y;
        vec3 _765 = clamp(((vec3(_Globals.unity_SHAr.w + dot(_Globals.unity_SHBr, _734), _Globals.unity_SHAg.w + dot(_Globals.unity_SHBg, _734), _Globals.unity_SHAb.w + dot(_Globals.unity_SHBb, _734)) + (_Globals.unity_SHC.xyz * (_746 * _746 + (-(_747 * _747))))) + vec3(dot(_Globals.unity_SHAr.xyz, _731), dot(_Globals.unity_SHAg.xyz, _731), dot(_Globals.unity_SHAb.xyz, _731))) + _Globals.uMainLightColor.xyz, vec3(_Globals._LightMinLimit), vec3(_Globals._LightMaxLimit));
        float _782 = _572 * textureLod(SPIRV_Cross_Combined_OutlineWidthMasklil_sampler_trilinear_repeat, _175, 0.0).x;
        float _787;
        if (_577)
        {
            _787 = _782 * color.x;
        }
        else
        {
            _787 = _782;
        }
        float _792;
        if (_583)
        {
            _792 = _787 * color.w;
        }
        else
        {
            _792 = _787;
        }
        bvec4 _800 = bvec4(((_792 > (-9.9999999747524270787835121154785e-07)) && (_792 < 9.9999999747524270787835121154785e-07)) && (_Globals._OutlineDeleteMesh != 0u));
        _802 = vec4(_800.x ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).x : _671.x, _800.y ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).y : _671.y, _800.z ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).z : _671.z, _800.w ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).w : _671.w);
        _803 = vec4(uv.x, uv.y, uv1.x, uv1.y);
        _804 = vec4(uv2.x, uv2.y, uv3.x, uv3.y);
        _805 = _663.xyz;
        _806 = normalize(_646 * _516);
        _807 = mix(mix(_765, vec3(dot(_765, vec3(0.3333333432674407958984375))), vec3(_Globals._MonochromeLighting)), vec3(1.0), vec3(_Globals._AsUnlit));
        _808 = 1.0;
        _809 = _670 * spvWorkaroundRowMajor(_Globals.uMainShadowMatrix);
        break;
    } while(false);
    gl_Position = _802;
    out_var_TEXCOORD0 = _803;
    out_var_TEXCOORD1 = _804;
    out_var_TEXCOORD3 = _805;
    out_var_TEXCOORD4 = _806;
    out_var_TEXCOORD5 = _807;
    out_var_TEXCOORD6 = _808;
    out_var_TEXCOORD7 = _809;
}
