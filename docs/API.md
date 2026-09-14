# API and integration

Start with the [README tutorials](../README.md).

## Entry points

| Import                          | Main exports                                                                                  |
| ------------------------------- | --------------------------------------------------------------------------------------------- |
| `@mochiya/three-liltoon`        | `LilToonMaterial`, `enableLilToon`, material factory/loader, property metadata, warning types |
| `@mochiya/three-liltoon/gltf`   | `GLTFLilToonExtension`, extension version/name and warning types                              |
| `@mochiya/three-liltoon/vrm`    | `enableLilToonVRM`, expression binding install/uninstall helpers                              |
| `@mochiya/three-liltoon/schema` | JSON Schema for a glTF material extension payload                                             |

Only `/vrm` requires the optional Three-VRM peer. React Three Fiber is a host integration, not a package dependency.

## Materials

`LilToonMaterial` extends Three.js `RawShaderMaterial`. Constructor inputs include `name`, `color`, `opacity`, `map`, `alphaTest`, `renderMode`, `transparencyMode`, `properties` and `textures`. Original property names are case-sensitive. Render mode defaults to opaque; transparent configuration defaults to normal. See [rendering modes](RENDERING_MODES.md) for valid values and authored render-state defaults.

| Familiar property               | Original lilToon value                                         |
| ------------------------------- | -------------------------------------------------------------- |
| `color` (mutable Three `Color`) | `_Color` RGB                                                   |
| `opacity`                       | `_Color` alpha; choose transparent rendering to blend          |
| `map`                           | `_MainTex`                                                     |
| `alphaTest`                     | `_Cutoff`; for ordinary modes, a positive value selects cutout |

```ts
import { LilToonMaterial } from "@mochiya/three-liltoon";

const material = new LilToonMaterial({
	renderMode: "transparent",
	transparencyMode: "two-pass",
	properties: { _Color: [1, 1, 1, 0.5], _UseEmission: 1 },
});
material.setProperty("_EmissionColor", [0.5, 0.1, 0.2, 1]);
const emission = material.getProperty("_EmissionColor");
const copy = material.clone();
```

`setProperty(name, value)` and `setTexture(name, textureOrNull)` return the material. Numeric arrays or supported Three Color/Vector objects can represent values. Shader colors and gamma-adjusted scalar properties use linear values; standard color textures use sRGB interpretation and masks/normals use linear data. Each texture slot keeps its own `<property>_ST` uniform, even when images are shared.

Feature toggles and texture changes automatically specialize shaders; ordinary numeric edits remain uniform updates. Use these setters for edits rather than replacing internal uniform objects. `lilToonProperties` and `lilToonTextures` expose effective values for inspection, including defaults. `shaderKey` identifies the current template/specialization, not an assurance of feature parity.

Exported models already carry their authored properties. The README's illustrative material preset is not a required override for loaded assets.

For standalone JSON, `LilToonMaterialLoader` loads properties but does not resolve texture identifiers. Resolve textures yourself and pass a property-name-to-Texture map to `new LilToonMaterialFactory().create(serialized, textures)`. Prefer GLTFLoader for exported GLB/VRM models. See [material format](MATERIAL_FORMAT.md).

## Renderer lifetime and React Three Fiber

Call `enableLilToon(renderer)` for automatic outlines, shadow casters and special-mode passes. Each call returns an independent, idempotent release function; the integration remains installed while any lease is active. Renderer disposal also releases it. No adapter or frame-boundary API is required.

For React Three Fiber, mount this component inside the canvas:

```tsx
import { useEffect } from "react";
import { useThree } from "@react-three/fiber";
import { enableLilToon } from "@mochiya/three-liltoon";

export function LilToonRendering() {
	const gl = useThree((state) => state.gl);
	useEffect(() => enableLilToon(gl), [gl]);
	return null;
}
```

Cached resources survive compositor fullscreen draws, override-material passes and hidden/culled meshes. Actual source removal/replacement is reconciled during rendering; material/geometry disposal and renderer release also free dependent resources. Temporary scene proxies and callbacks are restored after rendering, including failures. Input textures remain caller-owned.

Remove models from the scene and dispose their owned geometries, materials and textures when no longer needed. A renderer lease does not dispose application-owned assets. Shared assets need shared ownership accounting. VRM cleanup follows Three-VRM's lifecycle; uninstall custom expression bindings before disposing their materials.

## Scene inputs

- The first visible directional light is the main light. Ambient/hemisphere colors provide an approximate ambient term; additional Unity light passes are unavailable.
- Set renderer shadow support, the light's `castShadow`, and mesh `castShadow`/`receiveShadow` as in Three.js. This is approximate shadow integration, separate from `_UseShadow` toon-band shading.
- `scene.environment` supports a `CubeTexture`; raw equirectangular textures and private PMREM state are not consumed.
- Standard surfaces use Three GPU skinning and position/normal morph transport. Device limits still apply; fur has a separate deformation path described in [rendering modes](RENDERING_MODES.md).
- Shader UV/time animation uses the material's rendering path; skeletal animation, VRMA retargeting and avatar updates remain host responsibilities.

## VRM material expressions

| VRM binding                               | lilToon property                                                               |
| ----------------------------------------- | ------------------------------------------------------------------------------ |
| Base color / alpha                        | `_Color`                                                                       |
| Emission, shade, matcap, rim, outline RGB | `_EmissionColor`, `_ShadowColor`, `_MatCapColor`, `_RimColor`, `_OutlineColor` |
| Texture scale / offset                    | `_MainTex_ST` only; other texture slots keep their own transforms              |
| Morph targets and other materials         | Handled unchanged by three-vrm                                                 |

Generated outlines follow animated colors and main UVs. Graphics API limits and the documented feature support still apply. This mapping requires neither attachment data nor `@mochiya/avatar-composition`.

For custom loading, `/vrm` also exports `installLilToonExpressionBindings(vrm)`, which returns an undo function, and `uninstallLilToonExpressionBindings(vrm)`. Repeated installation is safe. Install before the first expression update; undo and reinstall after changing the expression bindings themselves. Uninstall restores the original bindings and values without disposing materials or textures. The loader installs automatically, so ordinary loading needs no manual setup call.

## Warnings and errors

Both loader setups accept an optional lilToon warning callback:

```ts
new GLTFLilToonExtension(parser, { onWarning });
enableLilToonVRM(new VRMLoaderPlugin(parser, vrmOptions), { onWarning });
```

Use one setup per loader; the first enhancement's warning options apply. The renderer setup is independent of these loading options.

`LilToonWarning` is exported from both `@mochiya/three-liltoon` and `@mochiya/three-liltoon/gltf`. Warnings contain `severity: "warning"`, a stable `code`, `materialName`, glTF `materialIndex`, `property`, `shaderKey`, and a readable `message`. They do not reject loading or change authored settings. With no callback they are logged to the console; the completed load also exposes them as `gltf.userData.lilToonWarnings`. Use a fresh collection per load if reusing a loader.

Checks cover known enabled forward features missing from the selected program, active assigned textures without samplers, incompatible 2D/cube textures, extension-version differences, and unsupported Unity shader families. Dormant texture slots and supported shared MatCap normals do not produce warnings. Opaque alpha-mask settings are inactive, matching upstream, and do not generate a missing-feature warning. A lack of warnings is not a guarantee of Unity visual parity or GPU/geometry correctness.

Direct material users can call `material.getWarnings()` and inspect `material.shaderKey`; this check is side-effect-free. Recheck after `setProperty` / `setTexture`: feature toggles and texture edits specialize the program; unavailable platform facilities still warn. `LilToonMaterialLoader.onWarning` provides the same feature diagnostics for standalone JSON loads (that loader does not resolve serialized texture references). Fur texture checks include its internal pass. Outline and shadow behavior remain outside the forward-feature check. Real file/parse failures still reject.

Texture-unit capacity is checked against vertex, fragment and combined context limits, including bone/morph resources. A genuine overflow throws a resource-count diagnostic; the library does not drop enabled texture inputs to fit an artificial budget. See [shader specialization](MATERIAL_SPECIALIZATION.md).

## Compatibility exports

Low-level light/shadow/environment adapters remain exported, but ordinary applications need only the renderer and loader helpers. `RefractionPass`, `FurPass` and `GemPass` are deprecated material conveniences; use `LilToonMaterial({ renderMode })` with `enableLilToon` instead. Internal pass identifiers are not additional user-facing rendering modes.
