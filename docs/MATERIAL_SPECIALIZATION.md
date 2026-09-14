# Material-driven shader specialization

The runtime selects and specializes translated GLSL from a material's rendering mode, enabled properties and assigned textures. HLSL translation happens during the package build; the browser compiles and links the resulting GLSL through Three.js/WebGL.

## Template selection

The build produces nine surface templates and their outline, ribbon and prepass programs. These represent [rendering modes](RENDERING_MODES.md), not fixed texture-priority profiles. Generated guards keep optional upstream feature branches through DXC optimization.

At runtime, `src/shader/ShaderProgramLibrary.ts` selects a template, `src/shader/features.ts` derives feature gates, and resource specialization replaces dormant/unassigned texture reads with their upstream neutral values. It removes unused declarations and aliases compatible bindings. `LilToonMaterial` installs the resulting shaders and asks Three.js to update the GPU program.

This specializes complete translated vertex/fragment templates; it is not a graph that concatenates independent HLSL feature snippets. Three's morph-target ShaderChunks are a separate composition boundary. See [architecture](ARCHITECTURE.md).

## Edits and caching

Feature toggles, texture assignments and relevant sampler-state changes can select a different program. Ordinary numeric animation remains a uniform update. A bounded 128-entry CPU cache keys structural configurations by feature state, resources and alias topology; Three.js manages compiled GPU programs.

The material preserves the identity of its uniform dictionary across program changes so revisiting a compiled configuration uses current values. Clones retain their own material values and owned sampling views.

## Texture and sampler reuse

SPIR-V reflection records each original texture, sampler owner, stage and GLSL binding. Runtime texture views apply upstream reuse rules, including emission masks sampled through `sampler_MainTex`, and inline filtering/wrapping states. Color/data interpretation remains slot-specific; UV transforms remain independent material uniforms.

Identical source image/state/interpretation bindings may alias. Different images cannot share a WebGL texture binding merely because HLSL shares their sampler state. Caller textures are neither mutated nor disposed by the material. Textures without mip levels use compatible non-mip filtering where needed for completeness.

Unassigned/dormant resources retain upstream defaults, including alpha-zero shadow-color fallback and no-map gradation/custom-normal/glitter behavior. Enabled assigned texture features are not discarded to reduce resource usage.

## Device limits and diagnostics

The renderer checks `MAX_VERTEX_TEXTURE_IMAGE_UNITS`, `MAX_TEXTURE_IMAGE_UNITS` and `MAX_COMBINED_TEXTURE_IMAGE_UNITS`, including bone/morph resources. It has no fixed sixteen-total limit. A genuine overflow throws a diagnostic identifying the material and required/available counts. Uniform, varying, texture-size and driver constraints still apply.

A browser regression links 18 active samplers (16 fragment plus bone and morph inputs) on a 16/16/32 context. Some Three.js versions can still warn when their shared allocator crosses the fragment-stage limit; that warning is not a combined-program hardware limit. Driver `isnan` warnings likewise do not indicate that material textures were dropped.

Feature diagnostics follow upstream mode conditions: opaque alpha masking is inactive rather than reported as a missing feature. See [API diagnostics](API.md#warnings-and-errors).

## Coverage and remaining differences

Unit/compiler checks cover feature combinations, cache keys, neutral defaults, aliasing, sampling state, ownership and capacity boundaries. Browser tests exercise both emission masks and their UV animation, simultaneous MatCap/rim/reflection, alpha modes, skinning, outlines and morphs.

Gradations, anisotropy, glitter and parallax/POM are compiled and specializable but need broader visual coverage. Scene lighting, shadows and unsupported Unity/VRC facilities retain the limits in the [feature matrix](FEATURE_MATRIX.md). There are no committed approved Unity reference images establishing full visual parity.
