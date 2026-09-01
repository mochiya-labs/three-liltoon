#ifndef LIL_WEB_TEXTURE_INCLUDED
#define LIL_WEB_TEXTURE_INCLUDED

float4 DecodeHDR(float4 data, float4 decodeInstructions)
{
    return float4(data.rgb * decodeInstructions.x, data.a);
}

float3 DecodeLightmap(float4 color)
{
    return color.rgb;
}

float3 DecodeRealtimeLightmap(float4 color)
{
    return color.rgb;
}

#endif
