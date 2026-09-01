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
    vec4 _Color;
    vec4 _MainTex_ST;
    vec4 _OutlineColor;
    vec4 _OutlineLitColor;
    vec4 _OutlineTex_ST;
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

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 uv;
layout(location = 2) in vec2 uv1;
layout(location = 3) in vec2 uv2;
layout(location = 4) in vec2 uv3;
out vec4 out_var_TEXCOORD0;
out vec4 out_var_TEXCOORD1;
out vec3 out_var_TEXCOORD3;
out vec3 out_var_TEXCOORD4;
out vec3 out_var_TEXCOORD6;
out vec3 out_var_TEXCOORD7;
out vec3 out_var_TEXCOORD8;
out float out_var_TEXCOORD9;

highp mat4 spvWorkaroundRowMajor(highp mat4 wrap) { return wrap; }
mediump mat4 spvWorkaroundRowMajorMP(mediump mat4 wrap) { return wrap; }

void main()
{
    vec4 _215;
    vec4 _216;
    vec4 _217;
    vec3 _218;
    vec3 _219;
    vec3 _220;
    vec3 _221;
    vec3 _222;
    float _223;
    do
    {
        if (_Globals._Invisible != 0u)
        {
            _215 = vec4(0.0);
            _216 = vec4(0.0);
            _217 = vec4(0.0);
            _218 = vec3(0.0);
            _219 = vec3(0.0);
            _220 = vec3(0.0);
            _221 = vec3(0.0);
            _222 = vec3(0.0);
            _223 = 0.0;
            break;
        }
        vec4 _96 = vec4(position.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uModelMatrix);
        vec3 _138 = ((_Globals.unity_SHAr.xyz * 0.3333329856395721435546875) + (_Globals.unity_SHAg.xyz * 0.3333329856395721435546875)) + (_Globals.unity_SHAb.xyz * 0.3333329856395721435546875);
        vec3 _155 = normalize(_Globals._LightDirectionOverride.xyz * mat3(spvWorkaroundRowMajor(_Globals.uModelMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uModelMatrix)[2].xyz)) * length(_Globals._LightDirectionOverride.xyz);
        bvec3 _158 = bvec3(_Globals._LightDirectionOverride.w != 0.0);
        vec3 _162 = normalize((vec3(_138.x, abs(_138.y), _138.z) + (_Globals.uMainLightDirection.xyz * dot(_Globals.uMainLightColor.xyz, vec3(0.0396819151937961578369140625, 0.4580217897891998291015625, 0.0060965395532548427581787109375)))) + vec3(_158.x ? _155.x : _Globals._LightDirectionOverride.xyz.x, _158.y ? _155.y : _Globals._LightDirectionOverride.xyz.y, _158.z ? _155.z : _Globals._LightDirectionOverride.xyz.z));
        vec4 _165 = _162.xyzz * _162.yzzx;
        float _177 = _162.x;
        float _178 = _162.y;
        vec3 _183 = vec3(_Globals.unity_SHAr.w + dot(_Globals.unity_SHBr, _165), _Globals.unity_SHAg.w + dot(_Globals.unity_SHBg, _165), _Globals.unity_SHAb.w + dot(_Globals.unity_SHBb, _165)) + (_Globals.unity_SHC.xyz * (_177 * _177 + (-(_178 * _178))));
        vec3 _191 = normalize((_Globals.unity_SHAr.xyz + _Globals.unity_SHAg.xyz) + _Globals.unity_SHAb.xyz);
        vec3 _204 = clamp((_183 + vec3(dot(_Globals.unity_SHAr.xyz, _162), dot(_Globals.unity_SHAg.xyz, _162), dot(_Globals.unity_SHAb.xyz, _162))) + _Globals.uMainLightColor.xyz, vec3(_Globals._LightMinLimit), vec3(_Globals._LightMaxLimit));
        _215 = vec4(_96.xyz, 1.0) * spvWorkaroundRowMajor(_Globals.uViewProjectionMatrix);
        _216 = vec4(uv.x, uv.y, uv1.x, uv1.y);
        _217 = vec4(uv2.x, uv2.y, uv3.x, uv3.y);
        _218 = _96.xyz;
        _219 = vec3(1.0, 0.0, 0.0);
        _220 = mix(mix(_204, vec3(dot(_204, vec3(0.3333333432674407958984375))), vec3(_Globals._MonochromeLighting)), vec3(1.0), vec3(_Globals._AsUnlit));
        _221 = _162;
        _222 = _183 + vec3(dot(_Globals.unity_SHAr.xyz, _191), dot(_Globals.unity_SHAg.xyz, _191), dot(_Globals.unity_SHAb.xyz, _191));
        _223 = 1.0;
        break;
    } while(false);
    gl_Position = _215;
    out_var_TEXCOORD0 = _216;
    out_var_TEXCOORD1 = _217;
    out_var_TEXCOORD3 = _218;
    out_var_TEXCOORD4 = _219;
    out_var_TEXCOORD6 = _220;
    out_var_TEXCOORD7 = _221;
    out_var_TEXCOORD8 = _222;
    out_var_TEXCOORD9 = _223;
}
