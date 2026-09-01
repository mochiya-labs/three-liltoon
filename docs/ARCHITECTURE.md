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

`tools/shader-build/` compiles wrapper entrypoints rather than `.shader` files. Every SPIR-V module is validated, reflected, cross-compiled to ESSL 3.00, optionally checked by glslang, hashed, and emitted into `shader/generated/`. `src/generated/shaders.ts` embeds the validated GLSL for bundlers. Runtime consumers do not need compiler binaries or the vendor submodule.

The shipped variants are smoke, minimal opaque, standard opaque, standard cutout, standard transparent, and outline. Standard variants deliberately keep a common alpha feature set active to prioritize correctness and predictable loading. They are held below WebGL2's guaranteed 16 sampler units per shader stage. Specialized feature-bit variants can be added later without changing the ABI.

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

`LilToonMaterial` is a public `RawShaderMaterial`. It preserves upstream property names, applies generated Unity-to-Three render-state mappings, selects the forward variant by render mode, normalizes texture color spaces, binds safe neutral textures, and updates deformation resources per object.

`LilToonRendererAdapter` uses public Three.js state. Once per scene/render frame it selects the first visible directional light, reads ambient or hemisphere lighting, binds its shadow target and matrix, and binds a CubeTexture environment. The material then receives object/camera state in its `onBeforeRender` callback.

`LilToonPassManager` is a small owner for this adapter. `OutlinePass` adds a back-face outline child, including shared skeleton and copied morph influences. `ShadowCasterPass` installs Three depth/distance materials with main-texture alpha cutoff. Refraction, gem, and fur expose explicit unsupported diagnostics rather than silently producing a wrong pass.

## glTF loading

`GLTFLilToonExtension` implements the public `GLTFLoaderPlugin` interface. It only handles a material with `MOCHIYA_materials_liltoon`, resolves referenced glTF textures through the parser, constructs `LilToonMaterial`, and configures the adapter, caster, and optional outline after the root loads. Ordinary glTF materials remain untouched.

## Generated versus maintained files

Maintained source lives under `shader/compat`, `shader/entry`, `src` (except `src/generated`), and `tools`. Generated files live under `shader/generated`, `src/generated`, and `THIRD_PARTY_NOTICES.md`; rebuild them with `npm run generate` and `npm run shaders:build`. Never edit `vendor/lilToon` or generated artifacts by hand.
