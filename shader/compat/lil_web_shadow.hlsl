#ifndef LIL_WEB_SHADOW_INCLUDED
#define LIL_WEB_SHADOW_INCLUDED

Texture2D uMainShadowMap;
SamplerState sampler_uMainShadowMap;
float4x4 uMainShadowMatrix;
float4 uShadowMapSize;
float uShadowBias;
float uShadowNormalBias;
float4 unity_LightShadowBias;

#define UNITY_SHADOW_COORDS(index) float4 _ShadowCoord : TEXCOORD##index;
#define TRANSFER_SHADOW(output) output._ShadowCoord = 0
#define UNITY_LIGHT_ATTENUATION(result, input, positionWS) float result = 1.0

float lilWebUnpackRGBADepth(float4 packedDepth)
{
    return dot(packedDepth, float4(1.0, 1.0 / 255.0, 1.0 / 65025.0, 1.0 / 16581375.0));
}

float lilWebSampleShadow(float4 shadowCoord)
{
    float3 projected = shadowCoord.xyz / max(shadowCoord.w, 0.00001);
    if(any(projected.xy < 0.0) || any(projected.xy > 1.0) || projected.z > 1.0) return 1.0;
    float2 texel = uShadowMapSize.zw;
    float receiver = projected.z + uShadowBias;
    float attenuation = 0.0;
    attenuation += step(receiver, lilWebUnpackRGBADepth(uMainShadowMap.Sample(sampler_uMainShadowMap, projected.xy + texel * float2(-0.5, -0.5))));
    attenuation += step(receiver, lilWebUnpackRGBADepth(uMainShadowMap.Sample(sampler_uMainShadowMap, projected.xy + texel * float2( 0.5, -0.5))));
    attenuation += step(receiver, lilWebUnpackRGBADepth(uMainShadowMap.Sample(sampler_uMainShadowMap, projected.xy + texel * float2(-0.5,  0.5))));
    attenuation += step(receiver, lilWebUnpackRGBADepth(uMainShadowMap.Sample(sampler_uMainShadowMap, projected.xy + texel * float2( 0.5,  0.5))));
    return attenuation * 0.25;
}

#endif
