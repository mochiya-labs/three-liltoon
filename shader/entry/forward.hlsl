#ifndef LIL_RENDER
#define LIL_RENDER 0
#endif

#define LIL_PASS_FORWARD
#define LIL_IGNORE_SHADERSETTING

#if defined(LIL_WEB_DEFORMATION)
    #define LIL_REQUIRE_APP_VERTEXID
    #define LIL_REQUIRE_APP_NORMAL
    #define LIL_REQUIRE_APP_TANGENT
    #define LIL_CUSTOM_VERTEX_OS lilWebApplyDeformation(positionOS, input.normalOS, input.tangentOS, input.skinIndex, input.skinWeight, input.vertexID);
#endif

#include "../compat/lil_pipeline_web.hlsl"
#include "lil_common.hlsl"

#if defined(LIL_REFRACTION) || defined(LIL_GEM)
uint uBackgroundIsSRGB;
float4 lilWebBackground(float2 uv) {
    float4 col = LIL_SAMPLE_SCREEN(_lilBackgroundTexture, lil_sampler_linear_clamp, uv);
    if (uBackgroundIsSRGB != 0) col.rgb = col.rgb <= 0.04045 ? col.rgb / 12.92 : pow((col.rgb + 0.055) / 1.055, 2.4);
    return max(col, 0);
}
#undef LIL_GET_BG_TEX
#define LIL_GET_BG_TEX(uv,lod) lilWebBackground(uv)
#if defined(LIL_REFRACTION_BLUR2)
float4 lilWebGrab(float2 uv) {
    float4 col = LIL_SAMPLE_SCREEN(_GrabTexture, lil_sampler_linear_clamp, uv);
    if (uBackgroundIsSRGB != 0) col.rgb = col.rgb <= 0.04045 ? col.rgb / 12.92 : pow((col.rgb + 0.055) / 1.055, 2.4);
    return max(col, 0);
}
#undef LIL_GET_GRAB_TEX
#define LIL_GET_GRAB_TEX(uv,lod) lilWebGrab(uv)
#endif
#endif

#if defined(LIL_WEB_DEFORMATION)
    #include "../generated/hlsl/lil_common_appdata.web.hlsl"
#endif

// Unity's shader compiler permits LIL_FORCE_SCENE_LIGHT to mutate material
// globals. Vulkan uniform blocks are immutable, so the web ABI applies the
// equivalent override in the TypeScript binder before upload.
#undef LIL_FORCE_SCENE_LIGHT
#define LIL_FORCE_SCENE_LIGHT

#if defined(LIL_FEATURE_RECEIVE_SHADOW)
    #undef LIL_SHADOW_COORDS
    #undef LIL_TRANSFER_SHADOW
    #undef LIL_LIGHT_ATTENUATION
    #define LIL_SHADOW_COORDS(idx) float4 _ShadowCoord : TEXCOORD##idx;
    #define LIL_TRANSFER_SHADOW(vi,uv,o) o._ShadowCoord = lilWebGetShadowCoord(vi.positionWS, vertexNormalInput.normalWS)
    #define LIL_LIGHT_ATTENUATION(atten,i) atten = lilWebSampleShadow(i._ShadowCoord)
#endif

#if defined(LIL_WEB_REFBLUR_PRE)
    #include "lil_pass_forward_refblur.hlsl"
#elif defined(LIL_GEM)
    #include "lil_pass_forward_gem.hlsl"
#else
    #include "lil_pass_forward.hlsl"
#endif
