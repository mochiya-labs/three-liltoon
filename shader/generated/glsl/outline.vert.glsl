#version 300 es
precision highp float;
precision highp int;

float _140;
vec3 _141;

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
    vec4 _812;
    vec4 _813;
    vec4 _814;
    vec3 _815;
    vec3 _816;
    vec3 _817;
    float _818;
    vec4 _819;
    do
    {
        if ((_Globals._Invisible != 0u) || ((_Globals._OutlineDisableInVR != 0u) && (abs(_Globals.uProjectionMatrix[0].z) > 9.9999999747524270787835121154785e-07)))
        {
            _812 = vec4(0.0);
            _813 = vec4(0.0);
            _814 = vec4(0.0);
            _815 = vec3(0.0);
            _816 = vec3(0.0);
            _817 = vec3(0.0);
            _818 = 0.0;
            _819 = vec4(0.0);
            break;
        }
        vec2 _176 = uv * _Globals._MainTex_ST.xy + _Globals._MainTex_ST.zw;
        vec3 _267;
        vec4 _268;
        do
        {
            if (_Globals.uMorphTargetCount == 0u)
            {
                _267 = normal;
                _268 = position;
                break;
            }
            bvec3 _187 = bvec3(_Globals.uMorphTargetsRelative != 0u);
            vec3 _191 = position.xyz * _Globals.uMorphTargetBaseInfluence;
            vec3 _193 = normal * _Globals.uMorphTargetBaseInfluence;
            vec3 _196;
            vec3 _199;
            _196 = vec3(_187.x ? normal.x : _193.x, _187.y ? normal.y : _193.y, _187.z ? normal.z : _193.z);
            _199 = vec3(_187.x ? position.xyz.x : _191.x, _187.y ? position.xyz.y : _191.y, _187.z ? position.xyz.z : _191.z);
            vec3 _197;
            vec3 _200;
            for (uint _201 = 0u; _201 < 64u; _196 = _197, _199 = _200, _201++)
            {
                if (_201 >= _Globals.uMorphTargetCount)
                {
                    break;
                }
                if (_Globals.uMorphTargetInfluences[_201] == 0.0)
                {
                    _197 = _196;
                    _200 = _199;
                    continue;
                }
                bool _216 = _Globals.uMorphHasPositions != 0u;
                vec3 _238;
                if (_216)
                {
                    uint _222 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _225 = uint(gl_VertexID) * _Globals.uMorphVertexDataStride;
                    _238 = _199 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_225 % _222), int(_225 / _222), int(_201), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_201]);
                }
                else
                {
                    _238 = _199;
                }
                vec3 _265;
                if (_Globals.uMorphHasNormals != 0u)
                {
                    uint _248 = max(uint(_Globals.uMorphTargetsTextureSize.x), 1u);
                    uint _252 = (uint(gl_VertexID) * _Globals.uMorphVertexDataStride) + uint(_216);
                    _265 = _196 + (texelFetch(SPIRV_Cross_CombinedmorphTargetsTextureSPIRV_Cross_DummySampler, ivec4(int(_252 % _248), int(_252 / _248), int(_201), 0).xyz, 0).xyz * _Globals.uMorphTargetInfluences[_201]);
                }
                else
                {
                    _265 = _196;
                }
                _197 = _265;
                _200 = _238;
            }
            _267 = _196;
            _268 = vec4(_199.x, _199.y, _199.z, position.w);
            break;
        } while(false);
        vec4 _515;
        vec4 _516;
        vec3 _517;
        do
        {
            if (_Globals.uSkinningEnabled == 0u)
            {
                _515 = tangent;
                _516 = _268;
                _517 = _267;
                break;
            }
            uvec4 _276 = uvec4(skinIndex);
            vec4 _279 = _268 * spvWorkaroundRowMajor(_Globals.uBindMatrix);
            mat3 _286 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrix)[2].xyz);
            vec3 _287 = _267 * _286;
            vec3 _289 = tangent.xyz * _286;
            uint _291 = _276.x * 4u;
            uint _295 = max(uint(_Globals.uBoneTextureSize.x), 1u);
            uint _304 = _291 + 1u;
            uint _312 = _291 + 2u;
            uint _320 = _291 + 3u;
            mat4 _329 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_291 % _295), int(_291 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_304 % _295), int(_304 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_312 % _295), int(_312 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_320 % _295), int(_320 / _295), 0).xy, 0)));
            uint _331 = _276.y * 4u;
            uint _339 = _331 + 1u;
            uint _347 = _331 + 2u;
            uint _355 = _331 + 3u;
            mat4 _364 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_331 % _295), int(_331 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_339 % _295), int(_339 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_347 % _295), int(_347 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_355 % _295), int(_355 / _295), 0).xy, 0)));
            uint _366 = _276.z * 4u;
            uint _374 = _366 + 1u;
            uint _382 = _366 + 2u;
            uint _390 = _366 + 3u;
            mat4 _399 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_366 % _295), int(_366 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_374 % _295), int(_374 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_382 % _295), int(_382 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_390 % _295), int(_390 / _295), 0).xy, 0)));
            uint _401 = _276.w * 4u;
            uint _409 = _401 + 1u;
            uint _417 = _401 + 2u;
            uint _425 = _401 + 3u;
            mat4 _434 = transpose(mat4(texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_401 % _295), int(_401 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_409 % _295), int(_409 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_417 % _295), int(_417 / _295), 0).xy, 0), texelFetch(SPIRV_Cross_CombinedboneTextureSPIRV_Cross_DummySampler, ivec3(int(_425 % _295), int(_425 / _295), 0).xy, 0)));
            mat3 _456 = mat3(_329[0].xyz, _329[1].xyz, _329[2].xyz);
            mat3 _465 = mat3(_364[0].xyz, _364[1].xyz, _364[2].xyz);
            mat3 _475 = mat3(_399[0].xyz, _399[1].xyz, _399[2].xyz);
            mat3 _485 = mat3(_434[0].xyz, _434[1].xyz, _434[2].xyz);
            mat3 _509 = mat3(spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uBindMatrixInverse)[2].xyz);
            vec3 _513 = normalize((((((_289 * _456) * skinWeight.x) + ((_289 * _465) * skinWeight.y)) + ((_289 * _475) * skinWeight.z)) + ((_289 * _485) * skinWeight.w)) * _509);
            _515 = vec4(_513.x, _513.y, _513.z, tangent.w);
            _516 = (((((_279 * _329) * skinWeight.x) + ((_279 * _364) * skinWeight.y)) + ((_279 * _399) * skinWeight.z)) + ((_279 * _434) * skinWeight.w)) * spvWorkaroundRowMajor(_Globals.uBindMatrixInverse);
            _517 = normalize((((((_287 * _456) * skinWeight.x) + ((_287 * _465) * skinWeight.y)) + ((_287 * _475) * skinWeight.z)) + ((_287 * _485) * skinWeight.w)) * _509);
            break;
        } while(false);
        mat3 _525 = mat3(_515.xyz, normalize(cross(_517, _515.xyz)) * (_515.w * length(_517)), _517);
        vec2 _144[4] = vec2[](_176, uv1, uv2, uv3);
        float _573 = _Globals._OutlineWidth * 0.00999999977648258209228515625;
        float _577 = _573 * textureLod(SPIRV_Cross_Combined_OutlineWidthMasklil_sampler_trilinear_repeat, _144[0], 0.0).x;
        bool _578 = _Globals._OutlineVertexR2Width == 1u;
        float _583;
        if (_578)
        {
            _583 = _577 * color.x;
        }
        else
        {
            _583 = _577;
        }
        bool _584 = _Globals._OutlineVertexR2Width == 2u;
        float _589;
        if (_584)
        {
            _589 = _583 * color.w;
        }
        else
        {
            _589 = _583;
        }
        vec4 _601 = textureLod(SPIRV_Cross_Combined_OutlineVectorTexlil_sampler_trilinear_repeat, _144[_Globals._OutlineVectorUVMode], 0.0);
        _601.w = _601.w * _601.x;
        vec2 _610 = ((_601.wy * 2.0) - vec2(1.0)).xy * _Globals._OutlineVectorScale;
        vec3 _611 = vec3(_610.x, _610.y, _141.z);
        vec2 _612 = _610.xy;
        _611.z = sqrt(1.0 - clamp(dot(_612, _612), 0.0, 1.0));
        vec3 _625;
        if (_584)
        {
            _625 = _525 * ((color.xyz * 2.0) - vec3(1.0));
        }
        else
        {
            _625 = _525 * _611;
        }
        vec3 _627 = _516.xyz + (_625 * (_589 * mix(1.0, clamp(length(_Globals.uCameraPosition.xyz - ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].x, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].x, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].x, _140) * _516.x) + ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].y, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].y, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].y, _140) * _516.y) + ((vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].z, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].z, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].z, _140) * _516.z) + vec4(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].w, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].w, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].w, _140)))).xyz), 0.0, 1.0), _Globals._OutlineFixWidth)));
        bvec3 _631 = bvec3(_Globals.uOrthoParams.w == 0.0);
        vec3 _640 = (vec4(_Globals.uCameraPosition.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)).xyz - _627;
        mat3 _647 = mat3(spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrixInverse)[2].xyz);
        vec3 _655 = vec3(_Globals.uViewMatrix[2].x, _Globals.uViewMatrix[2].y, _Globals.uViewMatrix[2].z) * _647;
        vec4 _664 = vec4(_627 - (normalize(vec3(_631.x ? _640.x : _655.x, _631.y ? _640.y : _655.y, _631.z ? _640.z : _655.z)) * _Globals._OutlineZBias), 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix);
        vec3 _665 = _664.xyz;
        vec4 _672 = vec4(_664.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uViewProjectionMatrix);
        vec3 _674 = normalize(_647 * _517);
        vec3 _708 = ((_Globals.unity_SHAr.xyz * 0.3333329856395721435546875) + (_Globals.unity_SHAg.xyz * 0.3333329856395721435546875)) + (_Globals.unity_SHAb.xyz * 0.3333329856395721435546875);
        vec3 _725 = normalize(_Globals._LightDirectionOverride.xyz * mat3(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].xyz)) * length(_Globals._LightDirectionOverride.xyz);
        bvec3 _728 = bvec3(_Globals._LightDirectionOverride.w != 0.0);
        vec3 _732 = normalize((vec3(_708.x, abs(_708.y), _708.z) + (_Globals.uMainLightDirection.xyz * dot(_Globals.uMainLightColor.xyz, vec3(0.0396819151937961578369140625, 0.4580217897891998291015625, 0.0060965395532548427581787109375)))) + vec3(_728.x ? _725.x : _Globals._LightDirectionOverride.xyz.x, _728.y ? _725.y : _Globals._LightDirectionOverride.xyz.y, _728.z ? _725.z : _Globals._LightDirectionOverride.xyz.z));
        vec4 _735 = _732.xyzz * _732.yzzx;
        float _747 = _732.x;
        float _748 = _732.y;
        vec3 _766 = clamp(((vec3(_Globals.unity_SHAr.w + dot(_Globals.unity_SHBr, _735), _Globals.unity_SHAg.w + dot(_Globals.unity_SHBg, _735), _Globals.unity_SHAb.w + dot(_Globals.unity_SHBb, _735)) + (_Globals.unity_SHC.xyz * (_747 * _747 + (-(_748 * _748))))) + vec3(dot(_Globals.unity_SHAr.xyz, _732), dot(_Globals.unity_SHAg.xyz, _732), dot(_Globals.unity_SHAb.xyz, _732))) + _Globals.uMainLightColor.xyz, vec3(_Globals._LightMinLimit), vec3(_Globals._LightMaxLimit));
        vec3 _781 = _665 + (normalize(_674) * _Globals.uShadowNormalBias);
        float _792 = _573 * textureLod(SPIRV_Cross_Combined_OutlineWidthMasklil_sampler_trilinear_repeat, _176, 0.0).x;
        float _797;
        if (_578)
        {
            _797 = _792 * color.x;
        }
        else
        {
            _797 = _792;
        }
        float _802;
        if (_584)
        {
            _802 = _797 * color.w;
        }
        else
        {
            _802 = _797;
        }
        bvec4 _810 = bvec4(((_802 > (-9.9999999747524270787835121154785e-07)) && (_802 < 9.9999999747524270787835121154785e-07)) && (_Globals._OutlineDeleteMesh != 0u));
        _812 = vec4(_810.x ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).x : _672.x, _810.y ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).y : _672.y, _810.z ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).z : _672.z, _810.w ? vec4(uintBitsToFloat(0x7fc00000u /* nan */)).w : _672.w);
        _813 = vec4(uv.x, uv.y, uv1.x, uv1.y);
        _814 = vec4(uv2.x, uv2.y, uv3.x, uv3.y);
        _815 = _665;
        _816 = _674;
        _817 = mix(mix(_766, vec3(dot(_766, vec3(0.3333333432674407958984375))), vec3(_Globals._MonochromeLighting)), vec3(1.0), vec3(_Globals._AsUnlit));
        _818 = 1.0;
        _819 = vec4(_781, 1.0) * spvWorkaroundRowMajor(_Globals.uMainShadowMatrix);
        break;
    } while(false);
    gl_Position = _812;
    out_var_TEXCOORD0 = _813;
    out_var_TEXCOORD1 = _814;
    out_var_TEXCOORD3 = _815;
    out_var_TEXCOORD4 = _816;
    out_var_TEXCOORD5 = _817;
    out_var_TEXCOORD6 = _818;
    out_var_TEXCOORD7 = _819;
}
