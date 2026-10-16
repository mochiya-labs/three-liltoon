# Material specification changelog

History of `MOCHIYA_materials_liltoon`, independently of the [npm package versions](../CHANGELOG.md). The [material format reference](MATERIAL_FORMAT.md) and generated schema define the current contract. The extension is optional; files also retain ordinary glTF material fallbacks.

## 1.3 — current

### Embedded cubemaps — shipped in package 0.1.5

- Add `cubeTextures` separately from ordinary glTF 2D `textures`.
- Support `_ReflectionCubeTex` with `encoding: "rgba16f-linear"`, a power-of-two `size`, and `mipmaps` referencing glTF bufferViews.
- Each level contains six little-endian linear RGBA16F faces in +X, -X, +Y, -Y, +Z, -Z order. A base level or complete authored mip chain preserves HDR reflection values.

### Material queue metadata — not yet in a published runtime

- Add optional integer `renderQueue` from 0 through 5000, containing the effective Unity material queue, including shader fallback resolution.
- Preserve shader mode, alpha, blending and depth-write settings independently of queue metadata.
- The updated runtime loads the field; queue ordering requires the renderer sorting opt-in or integration into a host-owned comparator.
- Earlier 1.3 files without the field still load. Published 0.1.5 ignores this field, so the shared version number alone does not establish queue support.

The additive queue field is retained within 1.3. There is no adopted 1.4 specification. Readers must distinguish support for individual optional capabilities from recognition of the version string.

## 1.2 — shipped in package 0.1.2

- Add `refraction-blur`, `fur-cutout` and `fur-two-pass` render modes, completing the nine regular mode identifiers.
- Add optional `transparencyMode`: `normal`, `one-pass` or `two-pass`.
- Preserve inference from supported Unity shader names when mode/configuration fields are omitted.
- Retain readers for 1.0 and the intermediate 1.1 payload.

## 1.1 — intermediate development format

- Extend `renderMode` with basic `refraction`, `fur` and `gem`.
- Retain the existing properties and texture transport.

The retained development records describe this step, but both the runtime and exporter Git histories move from 1.0 to 1.2 in their next committed format change. No separate npm release advertising 1.1 was found; do not interpret this heading as a separately published standard or package.

## 1.0 — initial format

- Material-local extension with `specVersion`, `lilToonVersion`, `shaderVariant`, `renderMode`, `properties` and `textures`.
- Ordinary opaque, cutout and transparent modes; shader-name inference when mode is absent.
- Original shader property names and linear material values, including per-property texture transforms.
- Texture references as glTF indices or texture-info objects carrying `index` and optional `texCoord`. Preserving `texCoord` does not imply support for nonzero UV-channel selection.
- Ordinary PBR fallback retained; the extension is listed in `extensionsUsed` without requiring unaware viewers to implement it.
- Standalone generated authoring schema; runtime version mismatch produces a warning and best-effort loading rather than automatic rejection.

## Compatibility

Current readers accept 1.0–1.3. Older runtimes may ignore unfamiliar optional fields and cannot reproduce features they do not implement. Successful loading is distinct from faithful rendering: queue ordering, embedded cubes and special passes require the corresponding runtime capabilities.

Historical format boundaries are reconstructed from the [runtime mode change](https://github.com/mochiya-labs/three-liltoon/commit/0e5cc3303c9b29854b36a3b7b9aa2f05532a59a8), [cubemap change](https://github.com/mochiya-labs/three-liltoon/commit/9669b22a2f230b211bf3fcfc6c205c8f6c414244), and corresponding [Unity exporter history](https://github.com/mochiya-labs/unity-avatar-tools/commits/HEAD/Editor/LilToonMaterialSerializer.cs). No independent specification release dates are inferred from package publication dates.
