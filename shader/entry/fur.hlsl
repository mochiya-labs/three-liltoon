#define LIL_FUR
#define LIL_PASS_FORWARD
#define LIL_IGNORE_SHADERSETTING
#define LIL_REQUIRE_APP_VERTEXID
#define LIL_REQUIRE_APP_NORMAL
#define LIL_REQUIRE_APP_TANGENT
#define LIL_REQUIRE_APP_COLOR
#include "../compat/lil_pipeline_web.hlsl"
#include "lil_common.hlsl"
#undef LIL_FORCE_SCENE_LIGHT
#define LIL_FORCE_SCENE_LIGHT
#define vert lilFurVertex
#include "lil_pass_forward_fur.web.hlsl"
#undef vert

// Source vertices packed as eight RGBA texels; GPU preparation applies skinning.
Texture2D<float4> uFurVertices;
float4 lilFurLoad(uint id, uint field) {
    uint width, height;
    uFurVertices.GetDimensions(width, height);
    uint offset = id * 8 + field;
    return uFurVertices.Load(int3(offset % width, offset / width, 0));
}
appdata lilFurInput(uint id) {
    appdata a = (appdata)0;
    a.positionOS = float4(lilFurLoad(id, 0).xyz, 1);
    a.normalOS = lilFurLoad(id, 1).xyz;
    a.tangentOS = lilFurLoad(id, 2);
    a.color = lilFurLoad(id, 3);
    a.uv0 = lilFurLoad(id, 4).xy;
    a.uv1 = lilFurLoad(id, 4).zw;
    a.uv2 = lilFurLoad(id, 5).xy;
    a.uv3 = lilFurLoad(id, 5).zw;
    a.vertexID = id;
    return a;
}
v2f webVert(float4 factor : POSITION, float3 ids : NORMAL) {
    v2g input[3];
    input[0] = lilFurVertex(lilFurInput(uint(ids.x)));
    input[1] = lilFurVertex(lilFurInput(uint(ids.y)));
    input[2] = lilFurVertex(lilFurInput(uint(ids.z)));
    #include "lil_web_fur_setup.hlsl"
    return lilWebAppendFur(factor.w != 0, output, input, furVectors, factor.xyz);
}
