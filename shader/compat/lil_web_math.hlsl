#ifndef LIL_WEB_MATH_INCLUDED
#define LIL_WEB_MATH_INCLUDED

float4x4 uModelMatrix;
float4x4 uModelMatrixInverse;
float4x4 uViewMatrix;
float4x4 uProjectionMatrix;
float4x4 uViewProjectionMatrix;
float4 uCameraPosition;
float4 uScreenParams;
float4 uProjectionParams;
float4 uOrthoParams;
float4 uWorldTransformParams;
float4 uTime;

#define unity_ObjectToWorld uModelMatrix
#define unity_WorldToObject uModelMatrixInverse
#define UNITY_MATRIX_V uViewMatrix
#define UNITY_MATRIX_P uProjectionMatrix
#define UNITY_MATRIX_VP uViewProjectionMatrix
#define _WorldSpaceCameraPos uCameraPosition
#define _ScreenParams uScreenParams
#define _ProjectionParams uProjectionParams
#define unity_OrthoParams uOrthoParams
#define unity_WorldTransformParams uWorldTransformParams
#define _Time uTime

float3 UnityWorldToViewPos(float3 positionWS)
{
    return mul(uViewMatrix, float4(positionWS, 1.0)).xyz;
}

float4 UnityWorldToClipPos(float3 positionWS)
{
    return mul(uViewProjectionMatrix, float4(positionWS, 1.0));
}

float4 UnityViewToClipPos(float3 positionVS)
{
    return mul(uProjectionMatrix, float4(positionVS, 1.0));
}

float4 UnityObjectToClipPos(float4 positionOS)
{
    return mul(uViewProjectionMatrix, mul(uModelMatrix, positionOS));
}

float4 ComputeGrabScreenPos(float4 positionCS)
{
    float4 screen = positionCS * 0.5;
    screen.xy = screen.xy + screen.w;
    screen.zw = positionCS.zw;
    return screen;
}

float3 UnityWorldSpaceLightDir(float3 positionWS);
float3 UnityObjectToWorldNormal(float3 normalOS)
{
    return normalize(mul(normalOS, (float3x3)uModelMatrixInverse));
}

#endif
