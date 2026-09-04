# three-liltoon

An unofficial Three.js/WebGL2 port and integration that cross-compiles portions of the upstream [lilToon](https://github.com/lilxyzw/lilToon) HLSL. It keeps lilToon as an untouched Git submodule and supplies a web compatibility ABI, deterministic shader build, Three.js material/runtime adapter, outline pass, shadow integration, deformation support, and a glTF loader extension.

This is an alpha and is not affiliated with or endorsed by lilToon. See the exact [feature matrix](docs/FEATURE_MATRIX.md) and [known porting differences](docs/PORTING_EXCEPTIONS.md) before shipping an avatar.

## Compatibility

- lilToon commit `72fc09625b24c9a750591c286e9192512a5177a1` (`2.3.4-3-g72fc096`)
- Three.js `>=0.180.0 <0.190.0`
- WebGL2 only
- ESM and TypeScript declarations

Compiler binaries are development dependencies only. The npm package embeds generated GLSL strings and does not compile shaders in the browser.

The runtime JavaScript and TypeScript declarations under `dist/` are committed so deployable examples can consume the package without initializing the lilToon submodule or installing the shader toolchain. Source maps and compiler intermediates remain untracked. After changing package or shader source, run `npm run build:package` and commit the updated `dist/` files with the source change.

## Install from Git

```bash
npm install three https://github.com/zekailin00/three-liltoon.git
```

## Basic use

```ts
import * as THREE from "three";
import {
  LilToonMaterial,
  LilToonRendererAdapter,
  OutlinePass,
} from "three-liltoon";

const renderer = new THREE.WebGLRenderer();
renderer.outputColorSpace = THREE.SRGBColorSpace;
renderer.shadowMap.enabled = true;

const material = new LilToonMaterial({
  renderMode: "opaque", // opaque | cutout | transparent
  properties: {
    _Color: [0.91, 0.35, 0.48, 1],
    _UseShadow: 1,
    _UseRim: 1,
    _OutlineWidth: 0.05,
  },
  textures: {
    _MainTex: mainTexture,
  },
});

const mesh = new THREE.Mesh(geometry, material);
mesh.castShadow = true;
mesh.receiveShadow = true;
scene.add(mesh);

const adapter = new LilToonRendererAdapter(renderer);
material.setRendererAdapter(adapter);
new OutlinePass().attach(mesh, material);

function frame() {
  adapter.render(scene, camera);
  requestAnimationFrame(frame);
}
frame();
```

The adapter reads one `DirectionalLight`, ambient/hemisphere lighting, the directional shadow map, and `scene.environment` through public Three.js APIs. `SkinnedMesh` bone textures and mesh morph targets are bound automatically. Morph targets are limited to 64.

## glTF extension

The package defines `MOCHIYA_materials_liltoon`; it only replaces materials that explicitly carry that extension.

```ts
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { LilToonRendererAdapter } from "three-liltoon";
import { GLTFLilToonExtension, type LilToonWarning } from "three-liltoon/gltf";

const adapter = new LilToonRendererAdapter(renderer);
const loader = new GLTFLoader();
const renderingWarnings: LilToonWarning[] = [];
loader.register((parser) => new GLTFLilToonExtension(parser, {
  rendererAdapter: adapter,
  addOutlines: true,
  configureShadowCasters: true,
  onWarning: (warning) => renderingWarnings.push(warning), // optional frontend collection
}));

const gltf = await loader.loadAsync("/avatar.glb");
scene.add(gltf.scene);
```

The serialized schema is documented in [MATERIAL_FORMAT.md](docs/MATERIAL_FORMAT.md).

The runtime chooses a material-specific shader profile so layered-color masks, MatCap masks, custom normals, or reflection controls fit Three/WebGL's texture-unit budget. A maximal lilToon shader is intentionally not used: skinned/morphed avatars reserve two of the renderer's sixteen allocated units for deformation, and every generated profile is tested to keep the complete linked program within that limit.

### Rendering warnings

`LilToonWarning` is exported from both `three-liltoon` and `three-liltoon/gltf`. Warnings contain `severity: "warning"`, a stable `code`, `materialName`, glTF `materialIndex`, `property`, `shaderKey`, and a readable `message`. They do not reject loading or change authored settings. With no callback they are logged to the console; the completed load also exposes them as `gltf.userData.lilToonWarnings`. Use a fresh collection per load if reusing a loader.

Checks cover known enabled forward features missing from the selected program, active assigned textures without samplers, incompatible 2D/cube textures, extension-version differences, and unsupported Unity shader families. Dormant texture slots and supported shared MatCap normals do not produce warnings. For example, enabling reflection and assigning a MatCap mask alongside an emission mask reports what the emission-mask profile cannot reproduce. A lack of warnings is not a guarantee of Unity visual parity or GPU/geometry correctness.

Direct material users can call `material.getWarnings()` and inspect `material.shaderKey`; this check is side-effect-free. Recheck after `setProperty` / `setTexture`: edits do not automatically choose a new shader profile. `LilToonMaterialLoader.onWarning` provides the same feature diagnostics for standalone JSON loads (that loader does not resolve serialized texture references). Outline, shadow, and other passes are outside the forward-profile check. Real file/parse failures still reject; explicit unsupported pass constructors still throw.

Unity-authored `.glb` models and VRM 1.0 `.vrm` avatars can be produced with the companion [`org.mochiya.liltoon-exporter`](https://github.com/zekailin00/liltoon-unity-exporter) package. It delegates geometry and VRM behavior to UniVRM and adds this material extension to supported lilToon materials.

## Develop and verify

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

- `npm run shaders:preprocess -- --variant standard-opaque`
- `npm run shaders:rebuild`
- `npm run test:browser`
- `npm run test:parity`
- `npm pack --dry-run`

The browser test installs no browser automatically. On a developer machine or CI image, run `npx playwright install chromium firefox` first.

## Viewer example

[`examples/mochiya-liltoon-viewer`](examples/mochiya-liltoon-viewer/README.md) is a standalone Next.js and React Three Fiber app for uploading a `.glb` or `.vrm`, rendering the Mochiya lilToon extension, and inspecting every effective material property. Its UI uses the `radix-mira` shadcn preset, olive color tokens, and Phosphor icons.

The viewer installs the checked-in package artifact from the repository root. Its development command refreshes that local package without rebuilding shaders; deployment uses the artifact installed during Vercel's dependency-install step and does not mutate dependencies during `next build`.

```bash
cd examples/mochiya-liltoon-viewer
npm install
npm run dev
```

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Feature matrix](docs/FEATURE_MATRIX.md)
- [Porting exceptions](docs/PORTING_EXCEPTIONS.md)
- [Material/glTF format](docs/MATERIAL_FORMAT.md)
- [Upgrading lilToon](docs/UPGRADING_LILTOON.md)
- [Publishing](docs/PUBLISHING.md)

## License

Package code is MIT. Upstream and carried notices are in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md). DXC, SPIRV-Cross, SPIRV-Tools, glslang, Playwright, and Three.js are not redistributed in the runtime package.
