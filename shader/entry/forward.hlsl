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

// Some optimized web profiles are selected only when lilToon's MatCap custom
// normals reference the same texture as the primary normal map. Alias those
// texture objects after their declarations but before the fragment functions
// are included, preserving each feature's independent scale and strength while
// consuming one WebGL texture unit instead of three.
#if defined(LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN)
    #define _MatCapBumpMap _BumpMap
    #define _MatCap2ndBumpMap _BumpMap
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
    #define LIL_TRANSFER_SHADOW(vi,uv,o) o._ShadowCoord = mul(uMainShadowMatrix, float4(vi.positionWS, 1.0))
    #define LIL_LIGHT_ATTENUATION(atten,i) atten = lilWebSampleShadow(i._ShadowCoord)
#endif

#include "lil_pass_forward.hlsl"
