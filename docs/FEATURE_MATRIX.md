# Feature matrix

See the [README](../README.md) for installation and tested dependencies.

**Implemented** means the shader/runtime path exists. **Limited** means it has known differences from Unity. **Unverified** means translated code is present but broader visual coverage is needed. No appearance feature currently has an approved, committed Unity image-parity baseline. Successful compilation, serialized properties and browser smoke tests are different levels of support.

## Material shading

| Feature                                                       | Status      | Behavior and limits                                                                                                                         |
| ------------------------------------------------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Base color and main texture                                   | Implemented | Original names and main UV transform retained                                                                                               |
| Main UV animation and tone correction                         | Implemented | Upstream equations retained; full Unity parity unverified                                                                                   |
| Main Color 2nd/3rd, decals                                    | Implemented | Layer maps, blend masks, decal animation and layer dissolve can coexist with other active features                                          |
| First, second and third toon shadow bands                     | Limited     | Authored colors, borders, blur and masks retained; Three lighting differs from Unity                                                        |
| Normal Map and Normal Map 2nd                                 | Implemented | Independent UV transforms; MikkTSpace tangent reconstruction when exported geometry lacks tangents                                          |
| MatCap and MatCap 2nd                                         | Implemented | Blend masks and independent custom normals coexist with emission, rim and reflection                                                        |
| Rim and directional rim                                       | Implemented | Browser exercised; appearance remains dependent on the view and scene                                                                       |
| RimShade and backlight                                        | Limited     | One-main-light approximation                                                                                                                |
| Emission and Emission 2nd                                     | Implemented | Maps, RGBA blend masks and independent UV transforms/animation; gradation code has less visual coverage                                     |
| Reflection and specular                                       | Limited     | Metallic, smoothness and reflection-color textures; direct cubemap environment, no Unity probe blending                                     |
| Distance fade and dissolve                                    | Implemented | Core/noise dissolve and mode-specific alpha behavior retained                                                                               |
| Alpha mask and cutoff                                         | Limited     | Active in applicable forward modes; opaque alpha masking is inactive upstream. Shadow casters do not reproduce every alpha/dissolve feature |
| Gradations, advanced masks, glitter, anisotropy, parallax/POM | Unverified  | Compiled and runtime-specializable; broader controlled visual comparisons are still needed                                                  |

Enabled assigned inputs are not removed by a texture-priority profile. Actual per-stage and combined texture limits apply. A device-capacity overflow produces a draw-time error with counts. [Material specialization](MATERIAL_SPECIALIZATION.md) explains sampler reuse and neutral defaults.

## Rendering modes

All nine regular selector modes have implementations; their pass sequences and defaults are detailed in [Rendering modes](RENDERING_MODES.md).

| Unity mode or setting             | Status      | Behavior and limits                                                                                                                                                                    |
| --------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Opaque                            | Implemented | Standard opaque surface                                                                                                                                                                |
| Cutout                            | Limited     | Alpha-tested surface; approximate shadow integration                                                                                                                                   |
| Transparent                       | Limited     | Normal, OnePass and TwoPass identities; explicit per-group pass order and transparent outlines. Additional-light passes are absent, so Normal and OnePass share their current sequence |
| Refraction / Refraction Blur      | Limited     | Named scene-color capture; blur adds horizontal blur, a second capture and vertical blur/refraction. Three sorting differs from Unity queues                                           |
| Fur / Fur (Cutout) / Fur (2 pass) | Limited     | Upstream ribbon equations and shading; GPU skinning preparation where supported, cached CPU morphs and CPU fallback. No fur shadow silhouette or collision/light interaction           |
| Gem                               | Limited     | Scene capture, black prepass and upstream gem shading; Unity fog/probe behavior is not reproduced                                                                                      |
| Outline                           | Limited     | Additional draw following source skinning/morphs; mode-specific alpha and transparent outline state. Not a separate rendering mode                                                     |

Optional families such as Lite, Multi, FurOnly, tessellation, overlay and FakeShadow do not have dedicated equivalent implementations. A supported regular mode does not imply support for every upstream shader family with a similar name.

## Scene and model integration

| Capability                                    | Status      | Behavior and limits                                                                                                                                                                  |
| --------------------------------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Static meshes                                 | Implemented | Ordinary Three.js meshes                                                                                                                                                             |
| Skinned meshes                                | Implemented | Three bone textures and bind matrices; four weights per vertex                                                                                                                       |
| Position/normal morph targets                 | Implemented | Ordinary surfaces reuse Three GPU transport; no package cap or CPU overflow. Three/WebGL layer, uniform, size and memory limits apply. Fur uses its own cached CPU morph preparation |
| Directional shadow receiving                  | Limited     | One packed depth map, 2×2 PCF, depth and normal bias; no cascades/VSM parity                                                                                                         |
| Directional/point shadow casting              | Limited     | Three depth/distance materials with main-alpha cutoff, not the full upstream caster                                                                                                  |
| Direct and ambient lighting                   | Limited     | First visible directional light plus ambient/hemisphere approximation                                                                                                                |
| Environment reflections                       | Limited     | `THREE.CubeTexture`; no direct equirectangular/PMREM integration or Unity probe blending                                                                                             |
| glTF/GLB material loading                     | Implemented | Only `MOCHIYA_materials_liltoon` materials are replaced; ordinary materials retain their loader behavior                                                                             |
| VRM material expressions                      | Implemented | Optional integration maps supported color and main-texture transform bindings; humanoid, morph expressions and physics stay with Three-VRM                                           |
| Texture-info `texCoord` selection             | Unsupported | Field is accepted, but per-texture UV-channel remapping is not implemented. Upstream material UV-mode properties are separate                                                        |
| Additional lights, lightmaps and Unity probes | Unsupported | No full Unity multi-light or baked-lighting integration                                                                                                                              |
| Unity fog                                     | Unsupported | Neutral compatibility behavior                                                                                                                                                       |
| AudioLink / VRC Light Volumes                 | Unsupported | Platform data/services are unavailable; VRC Light Volumes use Three lighting fallback with diagnostics                                                                               |
| Instancing / stereo / WebXR                   | Unsupported | No equivalent instanced/stereo shader integration                                                                                                                                    |
| Hardware tessellation / WebGPU                | Unsupported | Not provided by this WebGL2 backend                                                                                                                                                  |

Unity multi-frame blendshape interpolation absent from exported glTF, tangent/color morph deformation and normal-only target sets outside the standard loader path are not supplied by the morph integration. See [architecture](ARCHITECTURE.md#threejs-morph-integration) for lifecycle details.

## Verification and diagnostics

Browser regressions exercise static/skinned rendering, outlines, directional shadows, high-index and large morph sets, simultaneous texture features, transparent pass ordering, refraction/blur captures and fur deformation against baked references. They do not establish complete Unity visual equivalence or compatibility with every browser/GPU combination.

Known unsupported active features and texture mismatches produce structured warnings through `onWarning`, `gltf.userData.lilToonWarnings` and `material.getWarnings()`. Dormant settings do not necessarily warn; missing warnings do not prove visual fidelity. See [API diagnostics](API.md#warnings-and-errors) and [porting differences](PORTING_EXCEPTIONS.md).
