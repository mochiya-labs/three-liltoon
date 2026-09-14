# Rendering modes

The nine regular lilToon Rendering Modes have runtime implementations, with the fidelity limits below. Transparent additionally preserves Normal, OnePass and TwoPass. Additional-light passes and Unity shadow parity remain deferred. Upstream sources stay unchanged.

## Select a mode

| Unity mode      | `renderMode`      | Implementation                                            |
| --------------- | ----------------- | --------------------------------------------------------- |
| Opaque          | `opaque`          | Standard surface                                          |
| Cutout          | `cutout`          | Alpha-tested surface                                      |
| Transparent     | `transparent`     | Normal, OnePass or TwoPass                                |
| Refraction      | `refraction`      | Named capture and refraction                              |
| Refraction Blur | `refraction-blur` | Horizontal blur, second capture, vertical blur/refraction |
| Fur             | `fur`             | Surface and transparent ribbons                           |
| Fur (Cutout)    | `fur-cutout`      | Cutout surface and ribbons                                |
| Fur (2 pass)    | `fur-two-pass`    | Surface, fur prepass, transparent ribbons                 |
| Gem             | `gem`             | Capture, black prepass, gem surface                       |

```ts
import { LilToonMaterial, enableLilToon } from "@mochiya/three-liltoon";

// renderer is your existing Three.js WebGLRenderer.
const material = new LilToonMaterial({
	renderMode: "transparent",
	transparencyMode: "two-pass", // "normal" (default), "one-pass", "two-pass"
});
const release = enableLilToon(renderer);
```

`transparencyMode` applies only to transparent. Normal and OnePass share the base/outline sequence while ForwardAdd is deferred; their identities remain distinct. TwoPass draws upstream `LIL_TRANSPARENT_PRE` with `_Pre*` state before the surface. All three draw their optional transparent outline afterward using `_Outline*` state. Three's implicit double-sided split is disabled. These sequences apply per material group and follow source deformation.

Direct transparent materials use upstream ShaderLab defaults, including `_ZWrite: 1` and `_SrcBlend: 1`. Exported/explicit properties override defaults. The upstream pass named FORWARD_BACK uses configurable `_PreCull`; it does not unconditionally cull front faces. Outline remains a setting/pass, not a rendering mode.

The [material extension](MATERIAL_FORMAT.md) version 1.2 represents these modes and `transparencyMode`; versions 1.0/1.1 remain readable. Missing fields are inferred from supported Unity shader names. Cloning and standalone serialization preserve the setting. Unity accepts corresponding regular shader names and transparent outline forms; Lite, Multi, FurOnly, tessellation, overlay and other unsupported families remain rejected. Fur Cutout exports MASK as the non-extension glTF fallback. Update the runtime before consuming newly exported modes.

## Implementation

- **Compilation:** nine surface templates, three outlines, three fur ribbon templates, transparent prepass, refraction blur prepass and smoke: 18 recipes. Original equations, properties and family defaults come from pinned upstream source. Resource limits apply per stage and combined; no fixed sampler budget discards assigned inputs.
- **Refraction:** one named snapshot before the first Refraction/Gem draw per render invocation includes already-rendered transparency. Later objects share it. Blur renders upstream horizontal Gaussian blur on deformed object geometry, captures again, then performs upstream vertical blur/refraction. Both captures supply valid dimensions for screen UVs. Smoothness and its texture control blur. Canvas sRGB is explicitly decoded; offscreen encodings are retained. Multisampled targets resolve through public WebGL2 operations with restored bindings/scissor state.
- **Gem:** upstream chromatic aberration, environment contrast and particles remain. A cached deformed proxy writes black RGB while preserving alpha before the additive surface. This matches the neutral-fog web ABI, not full Unity fog/probes.
- **Fur:** generated lowering retains upstream corner calculations, strip topology, interpolation and mask/noise shading. Source attributes and morphs are cached as eight RGBA32F texels per source vertex. On devices with `EXT_color_buffer_float`, a small GPU preparation pass applies four-weight skinning to positions, normals and tangents once per changed pose, using Three's bone texture. Both ribbon passes share the result. Without that extension, CPU skinning preserves rendering. Morph preparation runs only when source attributes or morph influences change. Separate cached pass materials and scenes avoid per-frame shader-binding reconstruction; authored density and pass selection remain unchanged. Cutout uses `LIL_RENDER=1`. TwoPass adds `LIL_FUR_PRE` with depth writes, alpha-to-coverage and upstream fixed blend state before ordinary ribbons.
- **Ownership:** auxiliary draws share source attributes, groups, skeleton and morph influences without owning caller buffers. Pass state synchronizes before drawing. Callbacks and viewport/scissor state restore afterward. Cached fur, automatic and auxiliary passes survive unrelated compositor renders, override materials and visibility/camera changes. Reconciliation checks source membership and assignment rather than whether a recipe drew in the latest render; removal/replacement, source disposal and renderer release free resources. Gem recipes distinguish mesh/material pairs. Ordinary surfaces retain Three GPU skin/morph integration. Regression tests cover intervening renders, shared-material owners and cleanup as well as the baked fur reference.

## Verification and limits

Compiler checks cover 18 recipes. Unit/schema tests cover mode selection, serialization, cloning, resources, topology and deformation transport. Chrome checks cover blur response, zero-blur equivalence, multisampled captures, pass order/state, transparent outline masks, animation, groups and restoration. Unity tests export real GLBs, assert mode/configuration identifiers and preserve source materials.

These checks do not establish approved Unity visual parity. Three sorting may differ from Unity queues. Additional-light passes, Unity shadow behavior, full fog/probe lighting, FurOnly and stereo remain outside scope. Fur shadow silhouettes/collision-light interaction are absent. Changing large morph sets and the CPU compatibility fallback can still be expensive; expanded ribbon evaluation and overdraw remain GPU costs. Alpha-to-coverage depends on antialiasing support. Browser tests compare all three fur modes against baked four-bone/morph reference geometry, including the CPU fallback, stable pass materials and repeat frames. GPU preparation cache invalidation and renderer-state restoration have unit coverage. Approved Unity reference images remain necessary.

References: [upstream pass structure](https://lilxyzw.github.io/lilToon/ja_JP/dev/files.html), [refraction controls](https://lilxyzw.github.io/lilToon/ja_JP/advanced/refraction.html), [fur controls](https://lilxyzw.github.io/lilToon/ja_JP/advanced/fur.html).
