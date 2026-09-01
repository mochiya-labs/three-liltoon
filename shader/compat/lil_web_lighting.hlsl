#ifndef LIL_WEB_LIGHTING_INCLUDED
#define LIL_WEB_LIGHTING_INCLUDED

float4 uMainLightColor;
float4 uMainLightDirection;
float4 uAmbientColor;

#define _LightColor0 uMainLightColor
#define _WorldSpaceLightPos0 uMainLightDirection

float4 unity_SHAr;
float4 unity_SHAg;
float4 unity_SHAb;
float4 unity_SHBr;
float4 unity_SHBg;
float4 unity_SHBb;
float4 unity_SHC;

float4 unity_4LightPosX0;
float4 unity_4LightPosY0;
float4 unity_4LightPosZ0;
float4 unity_4LightAtten0;
float4 unity_LightColor[4];

float3 UnityWorldSpaceLightDir(float3 positionWS)
{
    return normalize(uMainLightDirection.xyz);
}

struct UnityGIInput
{
    float3 worldPos;
    float4 probeHDR[2];
    float4 boxMin[2];
    float4 boxMax[2];
    float4 probePosition[2];
};

struct Unity_GlossyEnvironmentData
{
    float roughness;
    float3 reflUVW;
};

TextureCube unity_SpecCube0;
SamplerState samplerunity_SpecCube0;
TextureCube unity_SpecCube1;
SamplerState samplerunity_SpecCube1;
float4 unity_SpecCube0_HDR;
float4 unity_SpecCube1_HDR;
float4 unity_SpecCube0_BoxMin;
float4 unity_SpecCube0_BoxMax;
float4 unity_SpecCube0_ProbePosition;
float4 unity_SpecCube1_BoxMin;
float4 unity_SpecCube1_BoxMax;
float4 unity_SpecCube1_ProbePosition;

float3 UnityGI_IndirectSpecular(UnityGIInput data, float occlusion, Unity_GlossyEnvironmentData glossy)
{
    return unity_SpecCube0.SampleLevel(samplerunity_SpecCube0, glossy.reflUVW, glossy.roughness * 8.0).rgb * occlusion;
}

#endif
