#ifndef LIL_WEB_DEFORMATION_INCLUDED
#define LIL_WEB_DEFORMATION_INCLUDED

Texture2D<float4> boneTexture;
SamplerState sampler_boneTexture;

float4x4 uBindMatrix;
float4x4 uBindMatrixInverse;
float4 uBoneTextureSize;
uint uSkinningEnabled;

float4 lilWebLoadBoneTexel(uint texelIndex)
{
    uint width = max((uint)uBoneTextureSize.x, 1u);
    return boneTexture.Load(int3(texelIndex % width, texelIndex / width, 0));
}

float4x4 lilWebGetBoneMatrix(uint boneIndex)
{
    uint texel = boneIndex * 4u;
    float4 row0 = lilWebLoadBoneTexel(texel + 0u);
    float4 row1 = lilWebLoadBoneTexel(texel + 1u);
    float4 row2 = lilWebLoadBoneTexel(texel + 2u);
    float4 row3 = lilWebLoadBoneTexel(texel + 3u);
    return transpose(float4x4(row0, row1, row2, row3));
}

void lilWebApplySkinning(
    inout float4 positionOS,
    inout float3 normalOS,
    inout float4 tangentOS,
    float4 skinIndexInput,
    float4 skinWeight)
{
    #if defined(LIL_WEB_SKINNING)
        if(uSkinningEnabled == 0u) return;
        uint4 skinIndex = (uint4)skinIndexInput;
        float4 boundPosition = mul(uBindMatrix, positionOS);
        float3 boundNormal = mul((float3x3)uBindMatrix, normalOS);
        float3 boundTangent = mul((float3x3)uBindMatrix, tangentOS.xyz);
        float4x4 bone0 = lilWebGetBoneMatrix(skinIndex.x);
        float4x4 bone1 = lilWebGetBoneMatrix(skinIndex.y);
        float4x4 bone2 = lilWebGetBoneMatrix(skinIndex.z);
        float4x4 bone3 = lilWebGetBoneMatrix(skinIndex.w);
        float4 position = mul(bone0, boundPosition) * skinWeight.x;
        position += mul(bone1, boundPosition) * skinWeight.y;
        position += mul(bone2, boundPosition) * skinWeight.z;
        position += mul(bone3, boundPosition) * skinWeight.w;
        float3 normal = mul((float3x3)bone0, boundNormal) * skinWeight.x;
        normal += mul((float3x3)bone1, boundNormal) * skinWeight.y;
        normal += mul((float3x3)bone2, boundNormal) * skinWeight.z;
        normal += mul((float3x3)bone3, boundNormal) * skinWeight.w;
        float3 tangent = mul((float3x3)bone0, boundTangent) * skinWeight.x;
        tangent += mul((float3x3)bone1, boundTangent) * skinWeight.y;
        tangent += mul((float3x3)bone2, boundTangent) * skinWeight.z;
        tangent += mul((float3x3)bone3, boundTangent) * skinWeight.w;
        positionOS = mul(uBindMatrixInverse, position);
        normalOS = normalize(mul((float3x3)uBindMatrixInverse, normal));
        tangentOS.xyz = normalize(mul((float3x3)uBindMatrixInverse, tangent));
    #endif
}

void lilWebApplyDeformation(
    inout float4 positionOS,
    inout float3 normalOS,
    inout float4 tangentOS,
    float4 skinIndex,
    float4 skinWeight,
    uint vertexID)
{
    // Three.js shader chunks apply morphs before the compiled vertex entry.
    lilWebApplySkinning(positionOS, normalOS, tangentOS, skinIndex, skinWeight);
}

#endif
