#ifndef LIL_RENDER
#define LIL_RENDER 0
#endif

#define LIL_PASS_FORWARD
#define LIL_OUTLINE
#define LIL_IGNORE_SHADERSETTING

#if defined(LIL_WEB_DEFORMATION)
    #define LIL_REQUIRE_APP_VERTEXID
    #define LIL_REQUIRE_APP_NORMAL
    #define LIL_REQUIRE_APP_TANGENT
    #define LIL_CUSTOM_VERTEX_OS lilWebApplyDeformation(positionOS, input.normalOS, input.tangentOS, input.skinIndex, input.skinWeight, input.vertexID);
#endif

#include "../compat/lil_pipeline_web.hlsl"
#include "lil_common.hlsl"

#if defined(LIL_WEB_DEFORMATION)
    #include "../generated/hlsl/lil_common_appdata.web.hlsl"
#endif

#undef LIL_FORCE_SCENE_LIGHT
#define LIL_FORCE_SCENE_LIGHT

#if defined(LIL_FEATURE_OUTLINE_RECEIVE_SHADOW)
    #undef LIL_SHADOW_COORDS
    #undef LIL_TRANSFER_SHADOW
    #undef LIL_LIGHT_ATTENUATION
    #define LIL_SHADOW_COORDS(idx) float4 _ShadowCoord : TEXCOORD##idx;
    #define LIL_TRANSFER_SHADOW(vi,uv,o) o._ShadowCoord = lilWebGetShadowCoord(vi.positionWS, vertexNormalInput.normalWS)
    #define LIL_LIGHT_ATTENUATION(atten,i) atten = lilWebSampleShadow(i._ShadowCoord)
#endif

#include "lil_pass_forward.hlsl"
