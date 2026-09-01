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
