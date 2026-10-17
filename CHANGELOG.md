# Package changelog

User-facing changes to `@mochiya/three-liltoon`. Package versions and [material specification versions](docs/SPEC_CHANGELOG.md) are independent. Publication dates below are UTC, verified against the [npm registry](https://registry.npmjs.org/@mochiya%2fthree-liltoon). Historical entries are reconstructed from repository history and published package contents; they summarize meaningful changes rather than every commit.

## Unreleased

- Reduce GPU overhead with multisampled render targets by submitting transparent auxiliary passes, refraction blur and gem preparation within the active render, without lowering antialiasing quality.
- Capture the active scene framebuffer for refraction and gem effects after auxiliary renders, and recreate capture buffers after WebGL context restoration.

## 0.1.8

- Make `shaderVariant` authoritative and deprecate `renderMode` and `transparencyMode` selection inputs. Legacy inputs remain supported; conflicting mode metadata no longer prevents supported shader variants from loading. Standalone JSON writes shader identity without redundant mode fields.

## 0.1.7

- Reduce automatic pass CPU overhead by preparing ordinary outlines only when needed and synchronizing shared outline materials once per render preparation. Shadow casting and live material updates remain supported.

- Restore outlines for exported regular Unity outline shaders, including materials with `_UseOutline: 0`. Existing files retain their authored shader selection without re-export.
- Add `shaderVariant` selection to direct materials and preserve it through cloning, copying and standalone serialization. Regular outlines follow Unity shader selection; `_UseOutline` remains preserved Multi-family data and no longer acts as a web outline toggle. Direct callers select an outline shader such as `Hidden/lilToonOutline`.
- Keep static and skinned outlines stable across repeated frames and mixed-material draws by isolating missing vertex inputs from shared GPU attribute state.
- Use the mesh normal for outline expansion when no outline vector texture is assigned.

## 0.1.6

- Add optional `LilToonMaterial.renderQueue`, including constructor, clone/copy, serialization and loading support.
- Add opt-in `enableLilToon(renderer, { materialRenderQueue: true })` sorting and the `compareLilToonRenderQueue` helper for applications owning custom sorting. Queue priority applies within Three.js render lists after group/object order; it does not change blending or depth writes. Older assets without queues remain supported.
- Enable queue sorting in both bundled examples. Queue metadata belongs to specification 1.3; published 0.1.5 does not yet interpret it.
- Honor Three.js renderer tone mapping/exposure, material `toneMapped`, target/output color space and ordinary transparent premultiplication through the raw-shader output adapter. Auxiliary materials inherit the source output policy. See [output API behavior](docs/API.md).
- Avoid repeated outline property/program updates when inputs have not changed, and skip hidden scene branches during automatic pass preparation.
- Add separate package and specification changelogs.
- Fix the example viewer build using an outdated runtime API.

Source references: [outline optimization](https://github.com/mochiya-labs/three-liltoon/commit/244fa42902a564ed2ca691a6a64e3103e0e371a0), [output adapter](https://github.com/mochiya-labs/three-liltoon/commit/43e805a604066da42274f777d8368b8d9c9c680c). These changes are not included merely by installing 0.1.5.

## 0.1.5 — 2026-10-12

- Read embedded reflection cubemaps through specification 1.3 `cubeTextures._ReflectionCubeTex`: linear RGBA16F faces, authored mip levels and HDR values.
- Validate cube payload layout and device texture-size limits; preserve texture ownership and disposal behavior.
- Add diagnostic viewer cubemap face previews with mip selection and preview exposure.
- Retain loading compatibility with specification 1.0–1.2.

[Source changes](https://github.com/mochiya-labs/three-liltoon/commit/9669b22a2f230b211bf3fcfc6c205c8f6c414244). The published artifact supports cubemaps but has no material queue API.

## 0.1.4 — 2026-09-20

- Generate missing MikkTSpace tangents while retaining indexed geometry and splitting only vertices requiring distinct tangent values, reducing unnecessary duplication of skin and morph attributes.
- Borrow source geometry for auxiliary passes instead of maintaining separate pass geometry buffers; source geometry remains caller-owned.
- Export `LILTOON_TEXTURE_SEMANTICS` and its type for application texture policies.
- Keep material specification 1.2.

[Source changes](https://github.com/mochiya-labs/three-liltoon/commit/ac06d5524b3420421c521d8057feff60cf050fb5).

## 0.1.3 — 2026-09-16

- Move morph weights from scalar uniform arrays into material-owned float textures, avoiding uniform-vector exhaustion on meshes with many targets.
- Retain Three.js displacement textures and morph equations; refresh weights for each shared-material draw and release owned weight textures on disposal.
- Include the weight sampler in device resource validation.
- Keep material specification 1.2 and existing material APIs.

[Source changes](https://github.com/mochiya-labs/three-liltoon/commit/db2661d7c021754a250fb2ad30bf44fea70cf63f).

## 0.1.2 — 2026-09-14

- Replace fixed shader profiles with material feature/resource specialization and compatible sampler aliases. Validate actual vertex, fragment and combined texture limits instead of silently omitting enabled maps.
- Support all nine regular rendering modes, including refraction blur, gem and the three fur modes, plus `normal`, `one-pass` and `two-pass` transparent configurations.
- Add renderer-managed scene-color captures, refraction blur, gem prepasses, fur ribbons and transparent auxiliary passes; preserve their known WebGL and Unity parity limitations.
- Preserve authored sampler interpretation/filtering through material-owned views rather than forcing a global filtering override.
- Use upstream transparent defaults and dedicated cutout/transparent outline variants.
- Read specification 1.2 while retaining 1.0/1.1 compatibility.
- Reorganize public API, rendering-mode, architecture and contribution documentation.

[Source changes](https://github.com/mochiya-labs/three-liltoon/commit/0e5cc3303c9b29854b36a3b7b9aa2f05532a59a8).

## 0.1.1 — 2026-09-11

- Replace the package's capped/custom morph transport with Three.js morph texture/chunk integration, allowing authored targets beyond the former 64-target limit, subject to device limits.
- Preserve position/normal morphing, skinning and outline deformation, with renderer-owned displacement storage.
- Improve the example viewer's layout, navigation, localization, theme preferences and model inspection.
- Keep material specification 1.0.

[Source changes](https://github.com/mochiya-labs/three-liltoon/commit/0dafa8bfb942b867cfad51a5622433494b3cc9cd). Viewer work spans the preceding source history and is not a separate npm package release.

## 0.1.0 — 2026-09-06

Initial published scoped package:

- `LilToonMaterial` with compiled upstream shading, ordinary opaque/cutout/transparent materials, shader-property and texture handling, and standard material convenience properties.
- Instance-local `enableLilToon(renderer)` integration for automatic outlines and shadow casters, with reference-counted cleanup.
- glTF extension loading and a generated JSON Schema for specification 1.0, plus optional `enableLilToonVRM` integration and VRM material-expression bindings.
- Lighting, directional shadows, direct environment cubemaps, skinning, morphs and missing-tangent preparation within the documented compatibility limits.
- ESM distribution, optional three-vrm peer, basic Three.js example and diagnostic GLB/VRM viewer.
- Pre-release corrections for material masks, per-object uniforms, texture transforms, color conversion, shadow fallback and resource ownership.

The original repository scaffold's `1.0.0` manifest was not a published package release. Pre-release refactors and removed experimental APIs are consolidated here rather than presented as public migrations.
