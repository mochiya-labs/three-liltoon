# Material and glTF format

## Standalone material JSON

`LilToonMaterialLoader` accepts the following shape. Property keys are original lilToon names; values are numbers, booleans, or numeric vectors. Texture references are application-owned identifiers and are resolved by the caller before constructing a material.

```json
{
	"specVersion": "1.3",
	"lilToonVersion": "2.3.4-3-g72fc096",
	"shaderVariant": "Hidden/lilToonOutline",
	"renderMode": "opaque",
	"properties": {
		"_Color": [0.91, 0.35, 0.48, 1],
		"_UseShadow": 1,
		"_ShadowBorder": 0.5,
		"_UseRim": 1
	},
	"textures": {
		"_MainTex": "textures/body.png"
	}
}
```

`renderMode` is `opaque`, `cutout`, `transparent`, `refraction`, `refraction-blur`, `fur`, `fur-cutout`, `fur-two-pass`, or `gem`. Use `enableLilToon(renderer)` for automatic passes. Transparent also accepts `transparencyMode: "normal" | "one-pass" | "two-pass"`, defaulting to normal when no shader variant selects another configuration. Cloning and standalone JSON preserve this setting. Unknown properties remain available for round-tripping; active generated uniforms determine rendering. Outline presence comes from `shaderVariant`; see [shader selection and outlines](API.md#shader-selection-and-outlines).

## glTF extension

Extension name: `MOCHIYA_materials_liltoon`.

```json
{
	"materials": [
		{
			"name": "Body",
			"extensions": {
				"MOCHIYA_materials_liltoon": {
					"specVersion": "1.3",
					"lilToonVersion": "2.3.4-3-g72fc096",
					"shaderVariant": "Hidden/lilToonOutline",
					"renderMode": "opaque",
					"properties": {
						"_Color": [1, 1, 1, 1],
						"_UseShadow": 1,
						"_OutlineWidth": 0.04
					},
					"textures": {
						"_MainTex": { "index": 0 },
						"_BumpMap": { "index": 1, "texCoord": 0 }
					}
				}
			}
		}
	],
	"extensionsUsed": ["MOCHIYA_materials_liltoon"]
}
```

Each texture value may be a glTF texture index or an object with `index` and optional `texCoord`. The loader resolves `index`; it does not implement UV-channel remapping from `texCoord`. A supported `shaderVariant` selects the corresponding Unity surface mode, transparent configuration and outline pass. Explicit mode fields must agree with that selection; contradictory configurations are rejected. Standalone material JSON follows the same rule. Without `shaderVariant`, mode fields select a regular non-outline variant, defaulting to opaque/normal. Unsupported shader names emit a compatibility warning and use a non-outline fallback, with explicit modes preferred over best-effort name inference. See [supported shader names](RENDERING_MODES.md#unity-shader-selection).

Current extension version is `1.3`. Versions `1.0`, `1.1` and `1.2` remain readable. Embedded cubemaps require a reader supporting `cubeTextures`. Other versions warn and load best-effort.

Register the plugin on a particular `GLTFLoader`. Materials without the extension continue through Three's normal loader. The extension is Mochiya-specific and is not a Khronos or lilToon standard.

### Contract and validation

This guide defines the extension's meaning; the annotated [TypeScript wire types](../src/loaders/types.ts) define its structure and generate the [Draft 7 JSON Schema](../schema/MOCHIYA_materials_liltoon.schema.json). Validate the object at `materials[i].extensions.MOCHIYA_materials_liltoon`, not the enclosing glTF or the standalone material JSON above.

| Field              | Accepted value                                                                                                    | If omitted                                                      |
| ------------------ | ----------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| `specVersion`      | `"1.0"`, `"1.1"`, `"1.2"`, `"1.3"`                                                                                | Current version; reads 1.0/1.1/1.2                              |
| `lilToonVersion`   | String or number; source metadata                                                                                 | Unspecified                                                     |
| `shaderVariant`    | Original Unity shader name; selects regular outline/pass configuration                                            | Unspecified                                                     |
| `renderMode`       | `opaque`, `cutout`, `transparent`, `refraction`, `refraction-blur`, `fur`, `fur-cutout`, `fur-two-pass`, or `gem` | Inferred from shader name                                       |
| `transparencyMode` | `normal`, `one-pass`, `two-pass`                                                                                  | Transparent only; defaults to normal or inferred shader variant |
| `properties`       | Original names mapped to numbers, booleans or numeric arrays                                                      | Shader defaults                                                 |
| `textures`         | Original names mapped to nonnegative integer indices or `{ index, texCoord? }`                                    | Semantic default textures                                       |

| `cubeTextures` | `_ReflectionCubeTex` mapped to a cubemap descriptor below | No authored cube |

Colors and vectors use arrays; Three.js `Color`/`Vector` instances are constructor inputs only. Colors and gamma-adjusted scalar values are linear; HDR values may exceed 1. Texture transforms belong to each property's `<name>_ST` value. Texture indices address the enclosing glTF `textures` array; `texCoord` is a nonnegative integer and defaults to 0. The extension texture-info field does not select alternate UV channels; upstream material UV-mode properties are a separate shader mechanism.

Resolved 2D textures must follow the [texture-orientation convention](ARCHITECTURE.md): material-owned views use `flipY = false`, regardless of the supplied texture flag.

Property and texture names are open dictionaries, including names unsupported by the current renderer. Unknown fields outside those dictionaries are rejected by the authoring schema. The loader does not enforce this schema at runtime: version mismatches still warn and load on a best-effort basis. Structural validation cannot verify referenced textures exist, shader feature support, or visual parity. Keep standard glTF material fallback data and list the extension in `extensionsUsed` for unaware viewers.

The package exports the schema as `@mochiya/three-liltoon/schema`. For example, with [Ajv](https://ajv.js.org/guide/getting-started.html) installed:

```js
import Ajv from "ajv";
import schema from "@mochiya/three-liltoon/schema" with { type: "json" };

const validate = new Ajv({ allowUnionTypes: true }).compile(schema);
const payload = gltf.materials[0].extensions.MOCHIYA_materials_liltoon;
if (!validate(payload)) console.error(validate.errors);
```

The schema is generated from the wire types with [ts-json-schema-generator](https://github.com/vega/ts-json-schema-generator). See [Contributing](../CONTRIBUTING.md) for source builds and schema generation.

### Embedded reflection cubemaps

A material can retain its authored reflection cube independently of other materials or the scene environment:

```json
{
	"cubeTextures": {
		"_ReflectionCubeTex": {
			"encoding": "rgba16f-linear",
			"size": 4,
			"mipmaps": [10, 11, 12]
		}
	}
}
```

Each entry in `mipmaps` is a glTF **bufferView index**, starting at mip zero. These are raw binary payloads, not glTF image or texture indices. Each level contains six tightly packed square faces in `+X, -X, +Y, -Y, +Z, -Z` order. Each pixel is RGBA, little-endian IEEE 754 binary16, already decoded to linear color. Values must be finite; HDR intensities above one are retained. A level of width `w` occupies exactly `6 × w × w × 8` bytes, with no stride or padding within its bufferView.

`size` is a positive power of two. Supply either the base level alone or the full chain through 1×1. Width halves at each level. The reader preserves supplied mips and does not generate replacement reflection filtering. Base-only cubes use linear filtering without mipmaps.

Within each face, rows and columns address increasing texture `t` and `s`; at texel centers let `u = 2s−1`, `v = 2t−1`. Sampling directions are:

| Face | Direction      |
| ---- | -------------- |
| +X   | `(1, -v, -u)`  |
| -X   | `(-1, -v, u)`  |
| +Y   | `(u, 1, v)`    |
| -Y   | `(u, -1, -v)`  |
| +Z   | `(u, -v, 1)`   |
| -Z   | `(-u, -v, -1)` |

Directions use glTF coordinates. Producers must convert their source coordinate system, including each face's orientation. Cube sampling has no `texCoord` or `_ST` transform. A property cannot occur in both `textures` and `cubeTextures`; `_ReflectionCubeTex` is the supported cube property. The loader validates encoding, sizes, level counts, buffer references/lengths and finite pixels before GPU upload. Device texture-size and memory limits still apply.

The loader creates a half-float `THREE.CubeTexture` in `LinearSRGBColorSpace` and uses identity `_ReflectionCubeTex_HDR` decoding. `_ReflectionCubeColor`, override and lighting controls retain their upstream meaning. Identical descriptors share one source cube within a file. The source appears in `parser.associations` for model resource inventory; the model owner must dispose it when unloading. Materials own their sampler views, not the shared source. Pixel arrays are independent of parser binary caches and remain available for context restoration.

Standalone material JSON does not resolve these glTF buffer references: standalone callers provide a resolved `CubeTexture` through the normal material texture input. Generic glTF viewers can use the standard fallback material but do not reproduce these authored reflections. Cube RenderTextures, Unity probe blending and PMREM/equirectangular conversion are outside this transport contract.

## Material render queues

Optional `renderQueue` is an integer from 0 through 5000 containing the effective Unity material queue (including the shader default). It is independent of `renderMode`, blending and `_ZWrite`: a transparent shader can have queue 2450. The loader preserves the value without changing those states. Standalone material JSON uses the same field.

Enable queue-aware sorting with `enableLilToon(renderer, { materialRenderQueue: true })`; see [sorter ownership and limitations](API.md#material-render-queue-sorting). Lower queues draw earlier within each Three render list, after group/object ordering. Missing queues use 2000 in the opaque list and 3000 in transparent/transmissive lists, including ordinary Three materials. Legacy files without queue information retain the existing relative ordering. Queue metadata requires a compatible reader and renderer opt-in; it cannot be reconstructed from older exports.
