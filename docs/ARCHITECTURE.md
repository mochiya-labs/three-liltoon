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

Builds produce nine surface templates, three outlines, three fur ribbon templates, transparent prepass, refraction blur prepass and smoke (18 recipes). Generated specialization guards preserve optional upstream feature branches through DXC optimization. The browser sets those compile-time booleans from material properties, removes unused sampler reads using explicit neutral defaults, and lets WebGL compile/link the resulting GLSL. No HLSL compiler ships to the browser. Upstream shader equations remain in the pinned source. The generator also reads special-family properties/defaults and lowers the fur geometry stage without editing vendor files.

SPIR-V reflection emits explicit original texture/sampler/stage mappings. Runtime binding follows the actual upstream sampler owner, including `sampler_MainTex` and inline filtering/wrapping rules. Material-owned texture views share the caller's image, retain color/data interpretation, and preserve property-scoped UV uniforms. Equivalent image/state/interpretation bindings can share a uniform; different images never merge solely because their sampler state is shared. Original input textures remain caller-owned and unchanged. Material-owned 2D views force `flipY = false`, including when a caller supplies `flipY = true`. This matches glTF loading; other image/UV conventions require conversion before assignment. For `ImageBitmap` inputs, configure orientation when decoding the bitmap; Three.js ignores `Texture.flipY` for these inputs.

A bounded 128-entry CPU template cache uses feature state, active resources and alias topology; Three owns GPU program caching. Feature toggles and texture assignments trigger specialization. Numeric animation remains a uniform update. Source sampler-state changes are checked on draws. Rendering checks `MAX_VERTEX_TEXTURE_IMAGE_UNITS`, `MAX_TEXTURE_IMAGE_UNITS` and `MAX_COMBINED_TEXTURE_IMAGE_UNITS` separately. There is no fixed combined budget and no automatic feature removal on overflow. Three's own allocator warning can still compare total allocation against its fragment limit; the browser test verifies that 19 active samplers (16 fragment + bone + morph displacement + morph weights) link and draw successfully on a 16/16/32 context. That warning is not suppressed or used as a limit.

See [Material specialization](MATERIAL_SPECIALIZATION.md) for scope, tests and remaining parity limits. DXC uses HLSL 2018 to preserve upstream vector-ternary semantics.

## Compatibility ABI

`shader/compat/lil_pipeline_web.hlsl` is the web platform boundary. Its headers supply:

- object, view, projection, camera, screen, and time uniforms;
- Unity-style texture/sampler macros;
- one main light, ambient/SH approximation, and neutral additional-light fields;
- Three directional shadow-map sampling;
- CubeTexture environment sampling;
- fog, stereo, and instancing fallbacks;
- bone-texture skinning (morphs are applied by Three.js at the runtime vertex boundary);
- explicit declarations or diagnostics for unsupported Unity/VRC facilities.

The ABI uses one generated `_Globals` structured uniform value in Three.js plus independently bound texture samplers. `LilToonUniformBinder` constructs its shape from active GLSL struct members, initializes lilToon defaults, and updates transposed matrices per draw. The transpose is required because the DXC/SPIRV-Cross path preserves the upstream HLSL row-vector operations in GLSL.

## Runtime integration

`LilToonMaterial` is a public `RawShaderMaterial`. It preserves upstream property names, applies generated Unity-to-Three render-state mappings, specializes the forward template by render mode, enabled features and assigned textures, normalizes color textures as sRGB and metallic/smoothness/mask textures as linear data, binds safe neutral textures, and updates deformation resources per object. Unity texture transforms remain property-scoped shader uniforms, so two normal-map slots can share an image while retaining independent `_ST` tiling and offsets.

The private renderer context in `src/renderer/rendererContext.ts` uses public Three.js state. Once per scene/render frame it selects the first visible directional light, reads ambient or hemisphere lighting, binds its shadow target and matrix, and binds a CubeTexture environment. The material then receives object/camera state in its `onBeforeRender` callback.

Inactive directional shadow maps must contribute no occlusion. The shadow adapter requires renderer shadows to be enabled, a shadow-casting main light, and an allocated map. Otherwise it binds a shared white RGBA texture (packed far depth `1`), resets the projection to identity, resets the map size to `1 × 1`, and clears both biases. This prevents the ordinary sampler2D null-texture fallback (zero depth) from creating world-axis-aligned false shadows, and prevents disabled renderers from sampling stale maps. Material construction and null system-shadow bindings also use the white fallback, including outline programs. The neutral binding leaves authored toon shading active. Regression tests cover absent/disabled maps, state reset, re-enabling shadows, and neutral attenuation across world-space boundaries.

`enableLilToon(renderer)` in `src/renderer/enableLilToon.ts` installs instance-local integration over public Three.js render/disposal methods. A chained scene callback prepares passes after host scene edits and before render-list/shadow collection. Automatic forward binding selects a weakly cached context from each draw's renderer; it never depends on loader or application adapter assignment.

Supported lilToon shader names select outline pass presence. Outline expansion uses the mesh normal when no vector texture is assigned. Generated passes use a consistent attribute location layout; runtime shaders compile absent optional vertex inputs as constants, so cached VAOs and unrelated host shaders cannot overwrite their fallback values. Geometry attributes remain shared and caller-owned.

Ordinary automatic outline materials are created and synchronized only when a mesh needs an automatic outline. Meshes sharing a source material reuse one synchronization per preparation invocation; later invocations still observe mutable properties, colors and textures. Manually supplied outlines and transparent-pass outlines do not trigger ordinary outline preparation. Shadow preparation remains independent.

Outline proxies temporarily share the source geometry, groups, skeleton and morphs. Hidden array entries preserve non-outline group boundaries. Proxies do not participate in raycasting and are removed in `finally`, including failed draws. Temporary depth/distance casters honor authored custom casters; main alpha, opacity, cutoff and a privately owned UV-transform texture view are synchronized before shadow draws. The source texture is never disposed or transformed by a caster. Caster behavior remains an approximation of upstream's full shader.

Recipes are renderer-owned. Scene membership and source mesh/material assignment govern their lifetime: unrelated fullscreen renders, override-material passes, hidden meshes and camera culling retain cached resources. Actual removal/replacement, source disposal and renderer release retire resources; geometry and mode changes invalidate dependent recipes. Shared automatic-pass materials track each owning mesh/scene, and Gem caches distinguish mesh/material pairs. Temporary hooks and proxies still restore after each render. No host frame-boundary API is required. Renderer installation uses reference-counted, idempotent leases. Nested renders preserve surrounding state. Material setters retain original ABI names; familiar color/opacity/map/alphaTest aliases and texture-driven program reselection are tested. Refraction and Gem share a named scene-color capture per render invocation, taken immediately before the first participating draw. Gem's black prepass preserves framebuffer alpha; its surface then uses upstream shading/blending. Fur draws upstream ribbon topology after its surface, using a cached GPU skinning preparation pass and GPU per-corner fur evaluation; CPU morph preparation runs only when source inputs change, with CPU skinning retained for devices without float render targets. See [special rendering modes](RENDERING_MODES.md).

### Three.js output integration

`src/renderer/outputTransform.ts` wraps the translated fragment entry and uses the installed peer's `tonemapping_pars_fragment` and `colorspace_pars_fragment` implementations. Per-draw uniforms select tone mapping, exposure, output transfer and ordinary transparent premultiplication. Renderer settings do not create additional shader variants or depend on RawShaderMaterial receiving Three's standard generated prefix. Clones own their uniforms, and shared materials take output settings from the current renderer and target.

The wrapper runs after the upstream fragment entry, including early returns. Ordinary transparent surface/outline output is unpremultiplied for the nonlinear display transform and premultiplied again; diagnostic transparent prepass output is treated as straight RGB. No-transform offscreen draws bypass this operation, preserving linear HDR output. Fur, refraction and Gem retain their own blend representation. The adapter neither edits upstream shader files nor mutates global Three ShaderChunks. See the [output contract](API.md#tone-mapping-and-output-color) for supported controls and compositor limitations.

### Three.js morph integration

`src/renderer/threeMorphTargets.ts` wraps the compiled vertex entry with the installed Three.js peer's `morphtarget_pars_vertex`, `morphnormal_vertex` and `morphtarget_vertex` chunks. It substitutes texture reads for the scalar morph-weight array while retaining the peer's displacement lookup and morph equations. Their output positions/normals feed the original lilToon entry before bone skinning. Neither upstream lilToon nor the global Three.js shader chunks are modified.

Three's WebGLRenderer owns displacement texture packing, caching, base influence and geometry disposal. Its corresponding uniforms stay outside the lilToon material's uniform map. Standard Three materials and lilToon materials sharing geometry use the same displacement texture. Auxiliary transparency, outline and blur passes also borrow the source geometry: their nested draw temporarily narrows its draw range and restores it in `finally`, including failed draws. Releasing a pass never disposes the caller's geometry. Each lilToon material owns a small R32F weight texture, refreshed from the current mesh's `morphTargetInfluences` before each draw, including shared-material draws. Unchanged weights do not trigger uploads. Resizing or disposing the material releases its weight texture; cloned materials own independent textures. Three handles GPU upload and context restoration through its ordinary DataTexture lifecycle.

Outlines and other lilToon surface passes use the same adapter. Native depth/distance casters and application override materials retain Three's own implementation; they do not inherit this adapter. Native casters lack the large lilToon globals, but remain subject to their own uniform limits. Fur retains its separate cached deformation path.

RawShaderMaterial omits Three's automatic geometry defines, so the small bridge sets the full target count, attribute stride and position/normal feature defines before each draw. Program selection updates only when that metadata changes, including different geometries sharing a material. Weight-only animation does not repack data or change programs. A precompile made before the first draw can compile the no-morph variant; the first draw specializes it to the actual geometry. The bridge uses public material/geometry APIs, with no private renderer imports or state access.

There is no package-defined count limit, target selection or CPU overflow. Three allocates one displacement texture-array layer per authored target, including zero-weight targets. The adapter stores one float per weight (2,592 bytes for 648 targets, before padding) and adds one vertex sampler, included in stage and combined resource checks. Weight count no longer grows the lilToon vertex-uniform array. Other uniforms, array-layer, texture-size, sampler and memory limits still apply; for example, 256 array layers cannot hold a 648-target geometry. This is not an unlimited-target guarantee.

Weights, relative/absolute base influence and signed contributions use Three's implementation. Geometry follows the [Three.js morph lifecycle](https://threejs.org/docs/pages/BufferGeometry.html#morphAttributes): after rendering, replace and dispose geometry to change morph attribute data; animating weights remains supported. Unity multi-frame interpolation absent from exported glTF, tangent/color morph deformation, normal-only target sets outside the standard loader path, instancing and WebGPU are not supported by this integration. The texture stride still accounts for color data when present so position/normal lookup stays compatible.

## glTF loading

`GLTFLilToonExtension` implements the public `GLTFLoaderPlugin` interface. It only handles a material with `MOCHIYA_materials_liltoon`, resolves referenced glTF textures through the parser, constructs `LilToonMaterial`, and generates missing tangents after loading. It accepts neither a renderer nor pass options. Ordinary glTF materials remain untouched.

Missing tangents use MikkTSpace with Three's glTF handedness convention. Indexed meshes retain indices: only position, normal and UV corner data are expanded for generation, then vertices split where their exact generated tangents differ. Skin attributes and every morph target follow that mapping without permanently expanding to triangle corners. Supplied tangents remain unchanged. Custom Unity tangent data omitted by an exporter cannot be reconstructed exactly from the remaining attributes.

`@mochiya/three-liltoon/vrm` is a separate optional entry. `enableLilToonVRM(plugin, materialOptions?)` enhances and returns the supplied standard `VRMLoaderPlugin` instance. It uses the public parser to compose `GLTFLilToonExtension.loadMaterial`, preserves any custom material fallback, and awaits the original `afterRoot` before tangent preparation and expression adaptation. Other hooks, options, plugin name and identity are retained. A weak set makes repeated enhancement a no-op; the first warning options apply. Ordinary glTF/GLB follows the same material path without creating a VRM. Register the enhanced plugin once; it already includes the material extension. No loader parse wrapping or global prototype mutation is used. `src/vrm/expressionBindings.ts` owns the VRM-channel-to-lilToon-property mapping, idempotent installation and undo. A weak registry avoids retaining released VRMs; the integration owns no GPU resources. Ordinary material and morph binds stay with three-vrm. Renderer-owned outlines synchronize animated properties and textures before drawing, independently of attachment composition.

Only the `/vrm` entry imports the optional `@pixiv/three-vrm` peer. The root and `/gltf` JavaScript/declarations are usable when that peer is absent. Source checking uses TypeScript's Bundler resolution because three-vrm 3.5.5 publishes extensionless declaration imports; emitted runtime modules remain ESM with explicit relative `.js` paths.

### Feature diagnostics

The loading contract includes structured rendering warnings: compare enabled forward features and active assigned textures against the selected shader's executable uniform references and sampler bindings, rather than merely its declared globals (which include compiled-out features). Ignore disabled features, exporter texture aliases, and supported shared MatCap normal bindings. These warnings do not modify authored parameters or reject the model. Unsupported material feature requests fall back with warnings; actual resource/parse failures and explicit unsupported pass APIs remain errors.

`LilToonMaterial.getWarnings()` reports current material state and `shaderKey` identifies the selected program. Feature toggles and texture edits specialize the program; ordinary scalar edits update uniforms. Callers can recheck warnings after edits. The glTF plugin publishes deduplicated, material-indexed warnings through `onWarning` (console fallback) and `gltf.userData.lilToonWarnings`. The viewer presents the successful load with a warning count and expandable material/parameter/profile details. This is a compatibility check, not a guarantee of visual parity: arbitrary parameter interactions, GPU compilation, missing UVs, and lighting differences need separate verification.

The example viewer uses a fixed world-space directional light, aimed at the origin; its position and intensity are tunable in `viewer-lighting.tsx`. Neither the light nor its target follows camera orbit, pan, or zoom. Authored MatCaps and specular highlights can still respond to the view direction; a fixed light does not freeze those material effects. The viewer renders directly without an EffectComposer or post-processing exposure control.

## Generated versus maintained files

Maintained source lives under `shader/compat`, `shader/entry`, `src` (except `src/generated`), and `tools`. Generated files live under `shader/generated`, `src/generated`, `schema`, `dist`, and `THIRD_PARTY_NOTICES.md`; rebuild them with `npm run build:package`. Runtime JavaScript, TypeScript declarations, the staged extension schema and staged third-party notice in `dist/` are committed; compiler intermediates and source maps remain untracked. Source contributions change the compatibility layer or generators and regenerate these outputs; see [Contributing](../CONTRIBUTING.md).
