#ifndef LIL_PIPELINE_WEB_INCLUDED
#define LIL_PIPELINE_WEB_INCLUDED

#include "lil_web_platform.hlsl"
#include "lil_web_math.hlsl"
#include "lil_web_texture.hlsl"
#include "lil_web_lighting.hlsl"
#include "lil_web_shadow.hlsl"
#include "lil_web_fog.hlsl"
#include "lil_web_environment.hlsl"
#include "lil_web_stereo.hlsl"
#include "lil_web_instancing.hlsl"
#include "lil_web_deformation.hlsl"
#include "lil_web_unsupported.hlsl"

#define UNITY_SHOULD_SAMPLE_SH 1
#include "openlit_core.hlsl"

#endif
