# Contributing

Bug reports, minimal reproductions and rendering improvements are welcome. Start with the [architecture](docs/ARCHITECTURE.md), [feature matrix](docs/FEATURE_MATRIX.md) and [porting differences](docs/PORTING_EXCEPTIONS.md).

## Build from source

Use Node.js 20 or newer and initialize the pinned lilToon submodule:

```bash
git clone --recurse-submodules https://github.com/mochiya-labs/three-liltoon.git
cd three-liltoon
npm ci
npm run tools:check
```

Shader builds need DXC, SPIRV-Cross and SPIRV-Tools (`spirv-val`). `glslangValidator` provides an optional additional GLSL check. Tool expectations are recorded in `tools/toolchain.json`. Put executables on PATH or set `DXC_PATH`, `SPIRV_CROSS_PATH`, `SPIRV_VAL_PATH` and `GLSLANG_VALIDATOR_PATH`. `npm run tools:setup` records discovered executable paths and versions for diagnosis; it does not install compilers.

```bash
npm run build
npm test
npx playwright install chromium firefox
npm run test:browser
```

`build` generates property/schema/shader data, checks TypeScript, bundles JavaScript/declarations and stages distribution assets. `npm test` regenerates inputs and runs unit/compiler tests. Native shader tools are development inputs; consumers install compiled runtime artifacts.

For a procedural Three.js example, run `npm run example:dev`. For local model inspection, follow the [viewer guide](examples/mochiya-liltoon-viewer/README.md).

## Source map

| Directory                                                   | Responsibility                                        |
| ----------------------------------------------------------- | ----------------------------------------------------- |
| `vendor/lilToon`                                            | Pinned upstream ShaderLab/HLSL                        |
| `shader/compat`, `shader/entry`                             | Web platform definitions and pass wrappers            |
| `tools/shaderlab`, `tools/generators`, `tools/shader-build` | Parsing, schemas and deterministic shader translation |
| `src/material`, `src/shader`                                | Material API and runtime specialization               |
| `src/renderer`, `src/loaders`, `src/vrm`                    | Three rendering, glTF and optional VRM integration    |
| `test/unit`, `test/compiler`, `test/integration`            | Behavior, compiler contracts and browser checks       |

The port keeps upstream source unchanged; adaptations live in wrappers, compatibility definitions or generators. `shader/generated` and `src/generated` are build intermediates. `dist` contains the tracked consumer build; `schema` and third-party notices are also generated. Source changes affecting output need regenerated artifacts. The standalone schema command is `npm run generate:gltf-schema`.

Formatting uses the repository's Prettier configuration: `npm run format` and `npm run format:check`. Tests for a contribution should demonstrate its behavior and protect affected resource ownership/render state. [Visual comparisons](test/parity/README.md) require matching Unity/Three scenes; a successful WebGL smoke test alone does not demonstrate Unity parity.

## Report a rendering problem

Include package and Three.js versions, browser/GPU, rendering mode, relevant properties/textures, warnings and reproduction steps. A minimal procedural scene or redistributable model makes a report easier to investigate. For differences from Unity, include the lilToon version and matching camera, lighting and color-space settings. Do not attach third-party assets you lack permission to redistribute.

Open reports and proposed changes on [GitHub](https://github.com/mochiya-labs/three-liltoon/issues). Describe the user-visible change and the tests performed in a pull request.
