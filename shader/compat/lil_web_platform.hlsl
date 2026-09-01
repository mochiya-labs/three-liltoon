#ifndef LIL_WEB_PLATFORM_INCLUDED
#define LIL_WEB_PLATFORM_INCLUDED

#define LIL_WEB 1
#define LIL_BRP 1
#define UNITY_VERSION 202230
#define UNITY_UV_STARTS_AT_TOP 0
#define SHADEROPTIONS_CAMERA_RELATIVE_RENDERING 0

#define UNITY_VERTEX_INPUT_INSTANCE_ID
#define UNITY_VERTEX_OUTPUT_STEREO
#define UNITY_SETUP_INSTANCE_ID(input)
#define UNITY_TRANSFER_INSTANCE_ID(input, output)
#define UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output)
#define UNITY_TRANSFER_VERTEX_OUTPUT_STEREO(input, output)
#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
#define UNITY_INITIALIZE_OUTPUT(type, name) name = (type)0

#define UNITY_BRANCH
#define UNITY_FLATTEN
#define UNITY_UNROLL
#define UNITY_LOOP

float3 LinearToGammaSpace(float3 color)
{
    return max(1.055 * pow(max(color, 0.0), 1.0 / 2.4) - 0.055, 0.0);
}

float3 GammaToLinearSpace(float3 color)
{
    return color <= 0.04045 ? color / 12.92 : pow((color + 0.055) / 1.055, 2.4);
}

#endif
