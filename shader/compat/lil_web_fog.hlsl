#ifndef LIL_WEB_FOG_INCLUDED
#define LIL_WEB_FOG_INCLUDED

float4 unity_FogColor;
#define UNITY_FOG_LERP_COLOR(color, fogColor, factor) color = lerp(fogColor, color, factor)
#define UNITY_CALC_FOG_FACTOR(depth) float unityFogFactor = 1.0

#endif
