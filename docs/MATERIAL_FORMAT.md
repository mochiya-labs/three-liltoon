# Material and glTF format

## Standalone material JSON

`LilToonMaterialLoader` accepts the following shape. Property keys are original lilToon names; values are numbers, booleans, or numeric vectors. Texture references are application-owned identifiers and are resolved by the caller before constructing a material.

```json
{
	"specVersion": "1.0",
	"lilToonVersion": "2.3.4-3-g72fc096",
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

`renderMode` is `opaque`, `cutout`, or `transparent`. Unknown properties remain in `lilToonProperties` for round-tripping, while only active generated uniforms affect the shipped shader. `material.toLilToonJSON(resolver)` serializes current properties and lets the application map each Three texture to its own string/number reference.

## glTF extension

Extension name: `MOCHIYA_materials_liltoon`.

```json
{
	"materials": [
		{
			"name": "Body",
			"extensions": {
				"MOCHIYA_materials_liltoon": {
					"specVersion": "1.0",
					"lilToonVersion": "2.3.4-3-g72fc096",
					"shaderVariant": "lilToon",
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

Each texture value may be a glTF texture index or an object with `index` and optional `texCoord`. The alpha loader currently resolves `index`; alternate `texCoord` declarations are preserved by the schema but UV-channel remapping is not implemented. A missing `renderMode` is inferred from `shaderVariant` (`cutout`, `trans`, otherwise opaque).

`specVersion` versions Mochiya's extension payload independently from the installed lilToon version. The current value is `1.0`. A newer value produces a warning and a best-effort load so ordinary glTF fallback material data remains usable.

Register the plugin on a particular `GLTFLoader`. Materials without the extension continue through Three's normal loader. The extension is Mochiya-specific and is not a Khronos or lilToon standard.

### Contract and validation

This guide defines the extension's meaning; the annotated [TypeScript wire types](../src/loaders/types.ts) define its structure and generate the [Draft 7 JSON Schema](../schema/MOCHIYA_materials_liltoon.schema.json). Validate the object at `materials[i].extensions.MOCHIYA_materials_liltoon`, not the enclosing glTF or the standalone material JSON above.

| Field            | Accepted value                                                                 | If omitted                |
| ---------------- | ------------------------------------------------------------------------------ | ------------------------- |
| `specVersion`    | `"1.0"`                                                                        | Current version           |
| `lilToonVersion` | String or number; source metadata                                              | Unspecified               |
| `shaderVariant`  | Original Unity shader name                                                     | Unspecified               |
| `renderMode`     | `opaque`, `cutout`, `transparent`                                              | Inferred from shader name |
| `properties`     | Original names mapped to numbers, booleans or numeric arrays                   | Shader defaults           |
| `textures`       | Original names mapped to nonnegative integer indices or `{ index, texCoord? }` | Semantic default textures |

Colors and vectors use arrays; Three.js `Color`/`Vector` instances are constructor inputs only. Colors and gamma-adjusted scalar values are linear; HDR values may exceed 1. Texture transforms belong to each property's `<name>_ST` value. Texture indices address the enclosing glTF `textures` array; `texCoord` is a nonnegative integer and defaults to 0. Only `TEXCOORD_0` is currently rendered.

Property and texture names are open dictionaries, including names unsupported by the current renderer. Unknown fields outside those dictionaries are rejected by the authoring schema. The loader does not enforce this schema at runtime: version mismatches still warn and load on a best-effort basis. Structural validation cannot verify referenced textures exist, shader feature support, or visual parity. Keep standard glTF material fallback data and list the extension in `extensionsUsed` for unaware viewers.

The package exports the schema as `three-liltoon/schema`. For example, with [Ajv](https://ajv.js.org/guide/getting-started.html) installed:

```js
import Ajv from "ajv";
import schema from "three-liltoon/schema" with { type: "json" };

const validate = new Ajv({ allowUnionTypes: true }).compile(schema);
const payload = gltf.materials[0].extensions.MOCHIYA_materials_liltoon;
if (!validate(payload)) console.error(validate.errors);
```

For contributors: run `npm run generate:gltf-schema` after changing the wire types or annotations. The normal build also generates it. Generation uses [ts-json-schema-generator](https://github.com/vega/ts-json-schema-generator) and needs no upstream lilToon checkout or shader compiler; the generator and test validator are development dependencies only. Commit the generated schema with its source changes.
