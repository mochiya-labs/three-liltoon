#version 300 es
precision mediump float;
precision highp int;

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
    highp vec4 _OutlineColor;
    highp vec4 _OutlineLitColor;
    highp vec4 _OutlineTex_ST;
    highp vec4 _OutlineTex_ScrollRotate;
    highp vec4 _OutlineTexHSVG;
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

uniform highp sampler2D SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap;
uniform highp sampler2D SPIRV_Cross_Combined_OutlineTexsampler_OutlineTex;

in highp vec4 out_var_TEXCOORD0;
in highp vec3 out_var_TEXCOORD4;
in highp vec3 out_var_TEXCOORD5;
in highp float out_var_TEXCOORD6;
in highp vec4 out_var_TEXCOORD7;
layout(location = 0) out highp vec4 out_var_SV_Target;

highp mat4 spvWorkaroundRowMajor(highp mat4 wrap) { return wrap; }
mediump mat4 spvWorkaroundRowMajorMP(mediump mat4 wrap) { return wrap; }

void main()
{
    highp float _154;
    do
    {
        highp vec3 _110 = out_var_TEXCOORD7.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD7.w : (isnan(out_var_TEXCOORD7.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD7.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _111 = _110.xy;
        highp float _117 = _110.z;
        if ((any(lessThan(_111, vec2(0.0))) || any(greaterThan(_111, vec2(1.0)))) || (_117 > 1.0))
        {
            _154 = 1.0;
            break;
        }
        highp float _127 = _117 + _Globals.uShadowBias;
        _154 = (((step(_127, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _111), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08))) + step(_127, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _111), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_127, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _111), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) + step(_127, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _111), vec4(0.99609375, 0.0038909912109375, 1.5199184417724609375e-05, 5.9604644775390625e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _155 = normalize(vec3(0.0, 1.0, 0.0));
    highp float _167 = _Globals._OutlineTex_ScrollRotate.w * _Globals.uTime.y + _Globals._OutlineTex_ScrollRotate.z;
    highp float _168 = sin(_167);
    highp float _169 = cos(_167);
    highp vec2 _170 = (out_var_TEXCOORD0.xy * _Globals._OutlineTex_ST.xy + _Globals._OutlineTex_ST.zw) - vec2(0.5);
    highp float _171 = _170.x;
    highp float _172 = _170.y;
    highp vec4 _188 = texture(SPIRV_Cross_Combined_OutlineTexsampler_OutlineTex, (vec2(_171 * _169 + (-(_172 * _168)), _171 * _168 + (_172 * _169)) + vec2(0.5)) + fract(_Globals._OutlineTex_ScrollRotate.xy * _Globals.uTime.y));
    highp vec3 _195 = pow(abs(_188.xyz), vec3(_Globals._OutlineTexHSVG.w));
    highp float _196 = _195.z;
    highp float _197 = _195.y;
    bvec4 _199 = bvec4(_196 > _197);
    highp vec4 _200 = vec4(_196, _197, -1.0, 0.666666686534881591796875);
    highp vec4 _201 = vec4(_197, _196, 0.0, -0.3333333432674407958984375);
    highp vec4 _202 = vec4(_199.x ? _200.x : _201.x, _199.y ? _200.y : _201.y, _199.z ? _200.z : _201.z, _199.w ? _200.w : _201.w);
    highp float _203 = _202.x;
    highp float _204 = _195.x;
    bvec4 _206 = bvec4(_203 > _204);
    highp vec4 _209 = vec4(_203, _202.yw, _204);
    highp vec4 _211 = vec4(_204, _202.yz, _203);
    highp vec4 _212 = vec4(_206.x ? _209.x : _211.x, _206.y ? _209.y : _211.y, _206.z ? _209.z : _211.z, _206.w ? _209.w : _211.w);
    highp float _213 = _212.x;
    highp float _214 = _212.w;
    highp float _215 = _212.y;
    highp float _217 = _213 - (isnan(_215) ? _214 : (isnan(_214) ? _215 : min(_214, _215)));
    highp float _230 = clamp((_217 / (_213 + 1.0000000133514319600180897396058e-10)) * _Globals._OutlineTexHSVG.y, 0.0, 1.0);
    highp float _233 = clamp(_213 * _Globals._OutlineTexHSVG.z, 0.0, 1.0);
    highp mat3 _255 = mat3(spvWorkaroundRowMajor(_Globals.uViewMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uViewMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uViewMatrix)[2].xyz);
    bvec3 _267 = bvec3(_Globals._OutlineLitApplyTex != 0u);
    highp vec3 _268 = (vec3((-_233) * _230 + _233) + (clamp(abs((fract(vec3(abs(_212.z + ((_214 - _215) / (6.0 * _217 + 1.0000000133514319600180897396058e-10))) + _Globals._OutlineTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_233 * _230))).xyz;
    highp vec3 _272 = _268 * _Globals._OutlineLitColor.xyz;
    highp float _282 = clamp((dot(normalize((normalize(out_var_TEXCOORD4) * _255).xy), normalize((_155 * _255).xy)) * 0.5 + 0.5) * _Globals._OutlineLitScale + _Globals._OutlineLitOffset, 0.0, 1.0) * _Globals._OutlineLitColor.w;
    highp float _289;
    if (_Globals._OutlineLitShadowReceive != 0u)
    {
        _289 = _282 * _154;
    }
    else
    {
        _289 = _282;
    }
    highp vec3 _295 = mix(_268 * _Globals._OutlineColor.xyz, vec3(_267.x ? _272.x : _Globals._OutlineLitColor.xyz.x, _267.y ? _272.y : _Globals._OutlineLitColor.xyz.y, _267.z ? _272.z : _Globals._OutlineLitColor.xyz.z), vec3(_289));
    highp vec4 _296 = vec4(_295.x, _295.y, _295.z, _188.w);
    _296.w = 1.0;
    highp vec3 _301 = vec3(_Globals._LightMaxLimit);
    bvec3 _328 = isnan(out_var_TEXCOORD5);
    bvec3 _329 = isnan(_301);
    highp vec3 _330 = min(out_var_TEXCOORD5, _301);
    highp vec3 _331 = vec3(_328.x ? _301.x : _330.x, _328.y ? _301.y : _330.y, _328.z ? _301.z : _330.z);
    highp vec3 _307 = mix(_296.xyz, _296.xyz * vec3(_329.x ? out_var_TEXCOORD5.x : _331.x, _329.y ? out_var_TEXCOORD5.y : _331.y, _329.z ? out_var_TEXCOORD5.z : _331.z), vec3(_Globals._OutlineEnableLighting));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_307.x, _307.y, _307.z, _296.w), vec4(out_var_TEXCOORD6));
}
