# Architecture

## Source and compiler flow

```text
vendor/lilToon ShaderLab + HLSL (pinned, untouched)
        │
        ├─ ShaderLab parser → properties/defaults/render recipes
        │
        └─ web entry wrapper + shader/compat ABI
                         ↓
                        DXC
                         ↓
                  validated SPIR-V
                         ↓
        SPIRV-Cross reflection + ESSL 3.00
                         ↓
       deterministic WebGL linking transforms
                         ↓
             generated GLSL strings in dist
```

`tools/shaderlab/` scans ShaderLab without assuming that braces, comments, strings, attributes, or nested blocks are line-oriented. The generators extract all 517 properties from `lts.shader`, defaults, texture semantics, render-state recipes, upstream identity, manifests, and notices.

`tools/shader-build/` compiles wrapper entrypoints rather than `.shader` files. Every SPIR-V module is validated, reflected, cross-compiled to ESSL 3.00, optionally checked by glslang, hashed, and emitted into `shader/generated/`. `src/generated/shaders.ts` embeds the validated GLSL for bundlers, and `dist/` contains the committed runtime package consumed by deployable examples. Runtime consumers do not need compiler binaries or the vendor submodule.

The shipped variants are smoke, minimal opaque, standard opaque/cutout/transparent, dissolve-noise, MatCap-mask, layered-MatCap, reflection/MatCap surface-control, layered-surface-control, and outline. The loader selects a profile from the textures actually assigned to each material. Layered profiles retain `_Main2ndTex` / `_Main3rdTex` and their blend masks; MatCap profiles retain both MatCap masks and custom normals; surface-control profiles retain metallic, smoothness, and reflection-color textures. A layered surface-control material can also retain Main Color 2nd when its MatCap custom-normal slots reference the same glTF texture as the primary normal map. The shader aliases that shared image sampler while preserving each property's independent `_ST` transform and strength.

Three allocates sampler units across the linked vertex and fragment program. Skinned/morphed avatar shaders require two vertex samplers, so generated lilToon profiles are limited to fourteen additional fragment samplers. Compiler tests count the union of vertex and fragment sampler uniforms and reject any program above sixteen. Generated GLSL also reuses a real sampler for upstream texture-size queries instead of consuming a duplicate dummy binding.

Materials assigning `_EmissionBlendMask` or `_Emission2ndBlendMask` select the `emission-mask` profile for their render mode. It compiles upstream RGBA emission masking, both emission maps, independent mask `_ST` and `_ScrollRotate`, and the shadow-border mask. It retains main-layer maps, normals, unmasked MatCaps, and the alpha mask, but exchanges reflection and the dissolve texture for the extra sampler slots (15 linked samplers for opaque, 16 for cutout/transparent). Combinations requiring reflection, textured dissolve, layered blend masks, or masked/custom-normal MatCaps are outside this profile's budget and require another profile; this is not an all-features variant. Materials without emission masks keep their previous selection. DXC compilation explicitly selects HLSL 2018 so newer compiler defaults do not change upstream vector-ternary semantics.

## Compatibility ABI

`shader/compat/lil_pipeline_web.hlsl` is the web platform boundary. Its headers supply:

- object, view, projection, camera, screen, and time uniforms;
- Unity-style texture/sampler macros;
- one main light, ambient/SH approximation, and neutral additional-light fields;
- Three directional shadow-map sampling;
- CubeTexture environment sampling;
- fog, stereo, and instancing fallbacks;
- bone-texture skinning and array-texture morph targets;
- explicit declarations or diagnostics for unsupported Unity/VRC facilities.

The ABI uses one generated `_Globals` structured uniform value in Three.js plus independently bound texture samplers. `LilToonUniformBinder` constructs its shape from active GLSL struct members, initializes lilToon defaults, and updates transposed matrices per draw. The transpose is required because the DXC/SPIRV-Cross path preserves the upstream HLSL row-vector operations in GLSL.

## Runtime integration

`LilToonMaterial` is a public `RawShaderMaterial`. It preserves upstream property names, applies generated Unity-to-Three render-state mappings, selects the forward variant by render mode and assigned layer/mask/surface-control textures, normalizes color textures as sRGB and metallic/smoothness/mask textures as linear data, binds safe neutral textures, and updates deformation resources per object. Unity texture transforms remain property-scoped shader uniforms, so two normal-map slots can share an image while retaining independent `_ST` tiling and offsets.

The private renderer context in `src/renderer/rendererContext.ts` uses public Three.js state. Once per scene/render frame it selects the first visible directional light, reads ambient or hemisphere lighting, binds its shadow target and matrix, and binds a CubeTexture environment. The material then receives object/camera state in its `onBeforeRender` callback.

Inactive directional shadow maps must contribute no occlusion. The shadow adapter requires renderer shadows to be enabled, a shadow-casting main light, and an allocated map. Otherwise it binds a shared white RGBA texture (packed far depth `1`), resets the projection to identity, resets the map size to `1 × 1`, and clears both biases. This prevents the ordinary sampler2D null-texture fallback (zero depth) from creating world-axis-aligned false shadows, and prevents disabled renderers from sampling stale maps. Material construction and null system-shadow bindings also use the white fallback, including outline programs. This is a runtime binding correction: generated shaders, sampler budgets, material `_UseShadow`, and authored toon shading remain unchanged. Regression tests cover absent/disabled maps, state reset, re-enabling shadows, and neutral attenuation across world-space boundaries.

`enableLilToon(renderer)` in `src/renderer/enableLilToon.ts` installs instance-local integration over public Three.js render/disposal methods. A chained scene callback prepares passes after host scene edits and before render-list/shadow collection. Automatic forward binding selects a weakly cached context from each draw's renderer; it never depends on loader or application adapter assignment.

Outline proxies temporarily share the source geometry, groups, skeleton and morphs. Hidden array entries preserve non-outline group boundaries. Proxies do not participate in raycasting and are removed in `finally`, including failed draws. Temporary depth/distance casters honor authored custom casters; main alpha, opacity, cutoff and a privately owned UV-transform texture view are synchronized before shadow draws. The source texture is never disposed or transformed by a caster. Caster behavior remains an approximation of upstream's full shader.

Recipes are renderer-owned, released after disuse or material/renderer disposal. Renderer installation uses reference-counted, idempotent leases. Nested renders preserve surrounding state. Material setters retain original ABI names; familiar color/opacity/map/alphaTest aliases and texture-driven program reselection are tested. Gem/refraction and fur are still separate unsupported shader milestones.

## glTF loading

`GLTFLilToonExtension` implements the public `GLTFLoaderPlugin` interface. It only handles a material with `MOCHIYA_materials_liltoon`, resolves referenced glTF textures through the parser, constructs `LilToonMaterial`, and generates missing tangents after loading. It accepts neither a renderer nor pass options. Ordinary glTF materials remain untouched.

`@mochiya/three-liltoon/vrm` is a separate optional entry. `enableLilToonVRM(plugin, materialOptions?)` enhances and returns the supplied standard `VRMLoaderPlugin` instance. It uses the public parser to compose `GLTFLilToonExtension.loadMaterial`, preserves any custom material fallback, and awaits the original `afterRoot` before tangent preparation and expression adaptation. Other hooks, options, plugin name and identity are retained. A weak set makes repeated enhancement a no-op; the first warning options apply. Ordinary glTF/GLB follows the same material path without creating a VRM. Register the enhanced plugin once; it already includes the material extension. No loader parse wrapping or global prototype mutation is used. `src/vrm/expressionBindings.ts` owns the VRM-channel-to-lilToon-property mapping, idempotent installation and undo. A weak registry avoids retaining released VRMs; the integration owns no GPU resources. Ordinary material and morph binds stay with three-vrm. Renderer-owned outlines synchronize animated properties and textures before drawing, independently of attachment composition.

Only the `/vrm` entry imports the optional `@pixiv/three-vrm` peer. The root and `/gltf` JavaScript/declarations must remain usable when that peer is absent. Source checking uses TypeScript's Bundler resolution because three-vrm 3.5.5 publishes extensionless declaration imports; emitted runtime modules remain ESM with explicit relative `.js` paths.

### Non-fatal profile diagnostics and viewer lighting

The loading contract includes structured rendering warnings: compare enabled forward features and active assigned textures against the selected shader's executable uniform references and sampler bindings, rather than merely its declared globals (which include compiled-out features). Ignore disabled features, exporter texture aliases, and supported shared MatCap normal bindings. Diagnostics must not change authored parameters, select a different profile, or reject a model. Unsupported material feature requests fall back with warnings; actual resource/parse failures and explicit unsupported pass APIs remain errors.

`LilToonMaterial.getWarnings()` reports current material state and `shaderKey` identifies the selected program. Texture edits reselect the supported profile; scalar property edits update uniforms. Callers can recheck warnings after edits. The glTF plugin publishes deduplicated, material-indexed warnings through `onWarning` (console fallback) and `gltf.userData.lilToonWarnings`. The viewer presents the successful load with a warning count and expandable material/parameter/profile details. This is a compatibility check, not a guarantee of visual parity: arbitrary parameter interactions, GPU compilation, missing UVs, and lighting differences need separate verification.

The example viewer uses a fixed world-space directional light, aimed at the origin; its position and intensity are tunable in `viewer-lighting.tsx`. Neither the light nor its target follows camera orbit, pan, or zoom. Authored MatCaps and specular highlights can still respond to the view direction; a fixed light does not freeze those material effects. The viewer renders directly without an EffectComposer or post-processing exposure control. Regression coverage belongs under `test/`, without per-fix example pages or issue documents.

## Generated versus maintained files

Maintained source lives under `shader/compat`, `shader/entry`, `src` (except `src/generated`), and `tools`. Generated files live under `shader/generated`, `src/generated`, `schema`, `dist`, and `THIRD_PARTY_NOTICES.md`; rebuild them with `npm run build:package`. Runtime JavaScript, TypeScript declarations, the staged extension schema and staged third-party notice in `dist/` are committed; compiler intermediates and source maps remain untracked. Never edit `vendor/lilToon` or generated artifacts by hand.
