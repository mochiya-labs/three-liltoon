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

`LilToonRendererAdapter` uses public Three.js state. Once per scene/render frame it selects the first visible directional light, reads ambient or hemisphere lighting, binds its shadow target and matrix, and binds a CubeTexture environment. The material then receives object/camera state in its `onBeforeRender` callback.

`LilToonPassManager` is a small owner for this adapter. `OutlinePass` adds a back-face outline child, including shared skeleton and copied morph influences. `ShadowCasterPass` installs Three depth/distance materials with main-texture alpha cutoff. Refraction, gem, and fur expose explicit unsupported diagnostics rather than silently producing a wrong pass.

## glTF loading

`GLTFLilToonExtension` implements the public `GLTFLoaderPlugin` interface. It only handles a material with `MOCHIYA_materials_liltoon`, resolves referenced glTF textures through the parser, constructs `LilToonMaterial`, and configures the adapter, caster, and optional outline after the root loads. Ordinary glTF materials remain untouched.

## Generated versus maintained files

Maintained source lives under `shader/compat`, `shader/entry`, `src` (except `src/generated`), and `tools`. Generated files live under `shader/generated`, `src/generated`, `dist`, and `THIRD_PARTY_NOTICES.md`; rebuild them with `npm run build:package`. Only the runtime JavaScript and TypeScript declarations in `dist/` are committed; compiler intermediates and source maps remain untracked. Never edit `vendor/lilToon` or generated artifacts by hand.
