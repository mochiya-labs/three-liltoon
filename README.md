# three-liltoon

An unofficial Three.js/WebGL2 port and integration that cross-compiles portions of the upstream [lilToon](https://github.com/lilxyzw/lilToon) HLSL. It keeps lilToon as an untouched Git submodule and supplies a web compatibility ABI, deterministic shader build, Three.js material, automatic outline and shadow integration, deformation support, and a glTF loader extension.

This is an alpha and is not affiliated with or endorsed by lilToon. See the exact [feature matrix](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/FEATURE_MATRIX.md) and [known porting differences](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/PORTING_EXCEPTIONS.md) before shipping an avatar.

Maintained by [Mochiya](https://mochiya.org).

## Compatibility

- lilToon commit `72fc09625b24c9a750591c286e9192512a5177a1` (`2.3.4-3-g72fc096`)
- Three.js `>=0.180.0 <0.190.0`
- WebGL2 only
- ESM and TypeScript declarations

Compiler binaries are development dependencies only. The npm package embeds generated GLSL strings and does not compile shaders in the browser.

The runtime JavaScript, TypeScript declarations, extension schema and third-party notice under `dist/` are committed so deployable examples can consume the package without initializing the lilToon submodule or installing the shader toolchain. Source maps and compiler intermediates remain untracked. After changing package or shader source, run `npm run build:package` and commit the updated `dist/` files with the source change.

## Install

```bash
npm install @mochiya/three-liltoon three
```

Add `@pixiv/three-vrm` when using the optional `/vrm` integration.

## Choose your setup

| API                                                      | Use it for                                     | What it does                                                                                   |
| -------------------------------------------------------- | ---------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `enableLilToon(renderer)`                                | Every app rendering lilToon materials          | Enables automatic outline and shadow passes on an existing `WebGLRenderer`.                    |
| `enableLilToonVRM(new VRMLoaderPlugin(parser, options))` | Apps loading VRM, or a mix of VRM and glTF/GLB | Adds lilToon material loading and VRM material-expression bindings to the standard VRM plugin. |
| `new GLTFLilToonExtension(parser)`                       | Apps loading glTF/GLB without three-vrm        | Loads lilToon materials and prepares tangents. No VRM dependency.                              |

Enable the renderer once, then choose either loader setup below. Manually created materials need only the renderer setup.

## Render lilToon materials

```ts
import { Mesh, WebGLRenderer } from "three";
import { LilToonMaterial, enableLilToon } from "@mochiya/three-liltoon";

const renderer = new WebGLRenderer({ antialias: true });
const releaseRendering = enableLilToon(renderer);
renderer.shadowMap.enabled = true;
const material = new LilToonMaterial({
	color: "#e85a7a",
	map: mainTexture,
	properties: { _UseShadow: 1, _UseOutline: 1, _OutlineWidth: 0.05 },
});
const mesh = new Mesh(geometry, material);
mesh.castShadow = mesh.receiveShadow = true;
scene.add(mesh);
renderer.setAnimationLoop(() => renderer.render(scene, camera));
```

Use ordinary Three.js meshes, lights and scene setup. The package binds one directional light, ambient/hemisphere lighting, supported environment inputs, skinning and position/normal morph targets automatically. Morphs reuse Three.js's GPU textures, weight uploads and shader chunks, with no package-defined target cap or CPU overflow. Three.js/WebGL device limits still apply. Outlines and casters follow the current material, including replacement and removal. See [Three.js morph integration](docs/ARCHITECTURE.md#threejs-morph-integration) for resource and lifecycle limits.

Call `releaseRendering()` when its owner unmounts; disposing the renderer also releases its integration. React Three Fiber: `useEffect(() => enableLilToon(gl), [gl])`. Each installation returns an independent, idempotent cleanup function. No adapter or pass manager is needed. Gem/refraction and fur remain unsupported.

| Familiar property         | Original lilToon value                                              |
| ------------------------- | ------------------------------------------------------------------- |
| `color` (mutable `Color`) | `_Color` RGB                                                        |
| `opacity`                 | `_Color` alpha; select `renderMode: "transparent"` for transparency |
| `map`                     | `_MainTex`                                                          |
| `alphaTest`               | `_Cutoff`; a positive value selects cutout mode                     |

Original property names remain available through `setProperty()` and `setTexture()`. Texture changes automatically reselect the supported shader profile. Independent texture transforms stay in their `_ST` properties. Dispose materials and geometries normally; shared input textures remain caller-owned. The renderer releases its own pass resources and restores authored custom casters.

## Load glTF/GLB without VRM

The package defines `MOCHIYA_materials_liltoon`; it only replaces materials that explicitly carry that extension.

```ts
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { GLTFLilToonExtension } from "@mochiya/three-liltoon/gltf";

const loader = new GLTFLoader();
loader.register((parser) => new GLTFLilToonExtension(parser));

const gltf = await loader.loadAsync("/avatar.glb");
scene.add(gltf.scene);
```

Loading reconstructs materials and tangents; it takes no renderer and creates no render passes. Render with the setup above. See the [format guide](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/MATERIAL_FORMAT.md) and [JSON Schema](dist/schema/MOCHIYA_materials_liltoon.schema.json), also available as `@mochiya/three-liltoon/schema`. The schema validates each material's extension payload, not an entire glTF document or rendered feature support.

## Load VRM and glTF/GLB

Install `@pixiv/three-vrm` 3.4 or newer within major version 3 when loading VRM avatars. It is an optional peer; `@mochiya/three-liltoon` and `@mochiya/three-liltoon/gltf` work without it.

Use this loader setup when your app supports VRM:

```ts
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { VRMLoaderPlugin } from "@pixiv/three-vrm";
import { enableLilToonVRM } from "@mochiya/three-liltoon/vrm";

const loader = new GLTFLoader();
loader.register((parser) => enableLilToonVRM(new VRMLoaderPlugin(parser)));
const gltf = await loader.loadAsync("/avatar.vrm");
const vrm = gltf.userData.vrm;
scene.add(vrm?.scene ?? gltf.scene);
vrm?.expressionManager?.setValue("happy", 0.5);
// Each frame, before rendering:
vrm?.update(deltaSeconds);
```

The helper enhances and returns the same plugin instance. Pass standard VRM options to `new VRMLoaderPlugin(parser, options)`. It includes `GLTFLilToonExtension` internally, so register only the enhanced VRM plugin. Repeated enhancement is a no-op. Ordinary glTF/GLB also loads; expression adaptation runs only when a VRM runtime exists. Materials without the lilToon extension retain their normal loading behavior.

### VRM material expressions

| VRM binding                               | lilToon property                                                               |
| ----------------------------------------- | ------------------------------------------------------------------------------ |
| Base color / alpha                        | `_Color`                                                                       |
| Emission, shade, matcap, rim, outline RGB | `_EmissionColor`, `_ShadowColor`, `_MatCapColor`, `_RimColor`, `_OutlineColor` |
| Texture scale / offset                    | `_MainTex_ST` only; other texture slots keep their own transforms              |
| Morph targets and other materials         | Handled unchanged by three-vrm                                                 |

Generated outlines follow animated colors and main UVs. Shader feature/profile limits still apply. This mapping requires neither attachment data nor `@mochiya/avatar-composition`.

For custom loading, `/vrm` also exports `installLilToonExpressionBindings(vrm)`, which returns an undo function, and `uninstallLilToonExpressionBindings(vrm)`. Repeated installation is safe. Install before the first expression update; undo and reinstall after changing the expression bindings themselves. Uninstall restores the original bindings and values without disposing materials or textures. The loader installs automatically, so ordinary loading needs no manual setup call.

The runtime chooses a material-specific shader profile so layered-color masks, MatCap masks, custom normals, or reflection controls fit Three/WebGL's texture-unit budget. A maximal lilToon shader is intentionally not used: skinned/morphed avatars reserve two of the renderer's sixteen allocated units for deformation, and every generated profile is tested to keep the complete linked program within that limit.

### Rendering warnings

Both loader setups accept an optional lilToon warning callback:

```ts
new GLTFLilToonExtension(parser, { onWarning });
enableLilToonVRM(new VRMLoaderPlugin(parser, vrmOptions), { onWarning });
```

Use one setup per loader; the first enhancement's warning options apply. The renderer setup is independent of these loading options.

`LilToonWarning` is exported from both `@mochiya/three-liltoon` and `@mochiya/three-liltoon/gltf`. Warnings contain `severity: "warning"`, a stable `code`, `materialName`, glTF `materialIndex`, `property`, `shaderKey`, and a readable `message`. They do not reject loading or change authored settings. With no callback they are logged to the console; the completed load also exposes them as `gltf.userData.lilToonWarnings`. Use a fresh collection per load if reusing a loader.

Checks cover known enabled forward features missing from the selected program, active assigned textures without samplers, incompatible 2D/cube textures, extension-version differences, and unsupported Unity shader families. Dormant texture slots and supported shared MatCap normals do not produce warnings. For example, enabling reflection and assigning a MatCap mask alongside an emission mask reports what the emission-mask profile cannot reproduce. A lack of warnings is not a guarantee of Unity visual parity or GPU/geometry correctness.

Direct material users can call `material.getWarnings()` and inspect `material.shaderKey`; this check is side-effect-free. Recheck after `setProperty` / `setTexture`: texture edits automatically reselect the shader profile; unsupported combinations still warn. `LilToonMaterialLoader.onWarning` provides the same feature diagnostics for standalone JSON loads (that loader does not resolve serialized texture references). Outline, shadow, and other passes are outside the forward-profile check. Real file/parse failures still reject; explicit unsupported pass constructors still throw.

Unity-authored `.glb` models and VRM 1.0 `.vrm` avatars can be produced with the companion [`org.mochiya.avatar-tools`](https://github.com/mochiya-labs/unity-avatar-tools) package. It delegates geometry and VRM behavior to UniVRM and adds this material extension to supported lilToon materials.

## Develop and verify

Run `npm run format` after code changes and `npm run format:check` before submitting them. The checked-in Prettier settings also enable VS Code format-on-save; generated files and upstream sources are excluded.

Initialize the pinned upstream source and ensure `dxc`, `spirv-cross`, `spirv-val`, and optionally `glslangValidator` are on `PATH` (or set their `*_PATH` environment variables).

```bash
git submodule update --init --recursive
npm ci
npm run tools:check
npm run build
npm test
npm run example:dev
```

Useful checks:

- `npm run generate:gltf-schema` (schema only; no shader toolchain needed)
- `npm run shaders:preprocess -- --variant standard-opaque`
- `npm run shaders:rebuild`
- `npm run test:browser`
- `npm run test:parity`
- `npm pack --dry-run`

The browser test installs no browser automatically. On a developer machine or CI image, run `npx playwright install chromium firefox` first.

## Viewer example

[`examples/mochiya-liltoon-viewer`](https://github.com/mochiya-labs/three-liltoon/blob/main/examples/mochiya-liltoon-viewer/README.md) is a standalone Next.js and React Three Fiber app for uploading a `.glb` or `.vrm`, rendering the Mochiya lilToon extension, and inspecting every effective material property. Its UI uses the `radix-mira` shadcn preset, olive color tokens, and Phosphor icons.

The viewer installs the checked-in package artifact from the repository root. Its development command refreshes that local package without rebuilding shaders; deployment uses the artifact installed during Vercel's dependency-install step and does not mutate dependencies during `next build`.

```bash
cd examples/mochiya-liltoon-viewer
npm install
npm run dev
```

## Documentation

- [Architecture](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/ARCHITECTURE.md)
- [Feature matrix](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/FEATURE_MATRIX.md)
- [Porting exceptions](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/PORTING_EXCEPTIONS.md)
- [Material/glTF format](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/MATERIAL_FORMAT.md)
- [Upgrading lilToon](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/UPGRADING_LILTOON.md)
- [Publishing](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/PUBLISHING.md)

## License

Package code is MIT. Upstream and carried notices are in [THIRD_PARTY_NOTICES.md](dist/THIRD_PARTY_NOTICES.md). DXC, SPIRV-Cross, SPIRV-Tools, glslang, Playwright, and Three.js are not redistributed in the runtime package.
