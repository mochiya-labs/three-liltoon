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
    highp float _153;
    do
    {
        highp vec3 _109 = out_var_TEXCOORD7.xyz / vec3(isnan(9.9999997473787516355514526367188e-06) ? out_var_TEXCOORD7.w : (isnan(out_var_TEXCOORD7.w) ? 9.9999997473787516355514526367188e-06 : max(out_var_TEXCOORD7.w, 9.9999997473787516355514526367188e-06)));
        highp vec2 _110 = _109.xy;
        highp float _116 = _109.z;
        if ((any(lessThan(_110, vec2(0.0))) || any(greaterThan(_110, vec2(1.0)))) || (_116 > 1.0))
        {
            _153 = 1.0;
            break;
        }
        highp float _126 = _116 + _Globals.uShadowBias;
        _153 = (((step(_126, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5) + _110), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08))) + step(_126, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5, -0.5) + _110), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_126, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(-0.5, 0.5) + _110), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) + step(_126, dot(texture(SPIRV_Cross_CombineduMainShadowMapsampler_uMainShadowMap, _Globals.uShadowMapSize.zw * vec2(0.5) + _110), vec4(1.0, 0.0039215688593685626983642578125, 1.5378700481960549950599670410156e-05, 6.0308629201699659461155533790588e-08)))) * 0.25;
        break;
    } while(false);
    highp vec3 _154 = normalize(vec3(0.0, 1.0, 0.0));
    highp float _166 = _Globals._OutlineTex_ScrollRotate.w * _Globals.uTime.y + _Globals._OutlineTex_ScrollRotate.z;
    highp float _167 = sin(_166);
    highp float _168 = cos(_166);
    highp vec2 _169 = (out_var_TEXCOORD0.xy * _Globals._OutlineTex_ST.xy + _Globals._OutlineTex_ST.zw) - vec2(0.5);
    highp float _170 = _169.x;
    highp float _171 = _169.y;
    highp vec4 _187 = texture(SPIRV_Cross_Combined_OutlineTexsampler_OutlineTex, (vec2(_170 * _168 + (-(_171 * _167)), _170 * _167 + (_171 * _168)) + vec2(0.5)) + fract(_Globals._OutlineTex_ScrollRotate.xy * _Globals.uTime.y));
    highp vec3 _194 = pow(abs(_187.xyz), vec3(_Globals._OutlineTexHSVG.w));
    highp float _195 = _194.z;
    highp float _196 = _194.y;
    bvec4 _198 = bvec4(_195 > _196);
    highp vec4 _199 = vec4(_195, _196, -1.0, 0.666666686534881591796875);
    highp vec4 _200 = vec4(_196, _195, 0.0, -0.3333333432674407958984375);
    highp vec4 _201 = vec4(_198.x ? _199.x : _200.x, _198.y ? _199.y : _200.y, _198.z ? _199.z : _200.z, _198.w ? _199.w : _200.w);
    highp float _202 = _201.x;
    highp float _203 = _194.x;
    bvec4 _205 = bvec4(_202 > _203);
    highp vec4 _208 = vec4(_202, _201.yw, _203);
    highp vec4 _210 = vec4(_203, _201.yz, _202);
    highp vec4 _211 = vec4(_205.x ? _208.x : _210.x, _205.y ? _208.y : _210.y, _205.z ? _208.z : _210.z, _205.w ? _208.w : _210.w);
    highp float _212 = _211.x;
    highp float _213 = _211.w;
    highp float _214 = _211.y;
    highp float _216 = _212 - (isnan(_214) ? _213 : (isnan(_213) ? _214 : min(_213, _214)));
    highp float _229 = clamp((_216 / (_212 + 1.0000000133514319600180897396058e-10)) * _Globals._OutlineTexHSVG.y, 0.0, 1.0);
    highp float _232 = clamp(_212 * _Globals._OutlineTexHSVG.z, 0.0, 1.0);
    highp mat3 _254 = mat3(spvWorkaroundRowMajor(_Globals.uViewMatrix)[0].xyz, spvWorkaroundRowMajor(_Globals.uViewMatrix)[1].xyz, spvWorkaroundRowMajor(_Globals.uViewMatrix)[2].xyz);
    bvec3 _266 = bvec3(_Globals._OutlineLitApplyTex != 0u);
    highp vec3 _267 = (vec3((-_232) * _229 + _232) + (clamp(abs((fract(vec3(abs(_211.z + ((_213 - _214) / (6.0 * _216 + 1.0000000133514319600180897396058e-10))) + _Globals._OutlineTexHSVG.x) + vec3(1.0, 0.666666686534881591796875, 0.3333333432674407958984375)) * 6.0) - vec3(3.0)) - vec3(1.0), vec3(0.0), vec3(1.0)) * (_232 * _229))).xyz;
    highp vec3 _271 = _267 * _Globals._OutlineLitColor.xyz;
    highp float _281 = clamp((dot(normalize((normalize(out_var_TEXCOORD4) * _254).xy), normalize((_154 * _254).xy)) * 0.5 + 0.5) * _Globals._OutlineLitScale + _Globals._OutlineLitOffset, 0.0, 1.0) * _Globals._OutlineLitColor.w;
    highp float _288;
    if (_Globals._OutlineLitShadowReceive != 0u)
    {
        _288 = _281 * _153;
    }
    else
    {
        _288 = _281;
    }
    highp vec3 _294 = mix(_267 * _Globals._OutlineColor.xyz, vec3(_266.x ? _271.x : _Globals._OutlineLitColor.xyz.x, _266.y ? _271.y : _Globals._OutlineLitColor.xyz.y, _266.z ? _271.z : _Globals._OutlineLitColor.xyz.z), vec3(_288));
    highp vec4 _295 = vec4(_294.x, _294.y, _294.z, _187.w);
    _295.w = 1.0;
    highp vec3 _300 = vec3(_Globals._LightMaxLimit);
    bvec3 _327 = isnan(out_var_TEXCOORD5);
    bvec3 _328 = isnan(_300);
    highp vec3 _329 = min(out_var_TEXCOORD5, _300);
    highp vec3 _330 = vec3(_327.x ? _300.x : _329.x, _327.y ? _300.y : _329.y, _327.z ? _300.z : _329.z);
    highp vec3 _306 = mix(_295.xyz, _295.xyz * vec3(_328.x ? out_var_TEXCOORD5.x : _330.x, _328.y ? out_var_TEXCOORD5.y : _330.y, _328.z ? out_var_TEXCOORD5.z : _330.z), vec3(_Globals._OutlineEnableLighting));
    out_var_SV_Target = mix(_Globals.unity_FogColor, vec4(_306.x, _306.y, _306.z, _295.w), vec4(out_var_TEXCOORD6));
}
