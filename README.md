# three-liltoon

An unofficial Three.js/WebGL2 port and integration that cross-compiles portions of the upstream [lilToon](https://github.com/lilxyzw/lilToon) HLSL. It keeps lilToon as an untouched Git submodule and supplies a web compatibility ABI, deterministic shader build, Three.js material/runtime adapter, outline pass, shadow integration, deformation support, and a glTF loader extension.

This is an alpha and is not affiliated with or endorsed by lilToon. See the exact [feature matrix](docs/FEATURE_MATRIX.md) and [known porting differences](docs/PORTING_EXCEPTIONS.md) before shipping an avatar.

## Compatibility

- lilToon commit `72fc09625b24c9a750591c286e9192512a5177a1` (`2.3.4-3-g72fc096`)
- Three.js `>=0.180.0 <0.190.0`
- WebGL2 only
- ESM and TypeScript declarations

Compiler binaries are development dependencies only. The npm package embeds generated GLSL strings and does not compile shaders in the browser.

## Install

```bash
npm install three-liltoon three
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
import { GLTFLilToonExtension } from "three-liltoon/gltf";

const adapter = new LilToonRendererAdapter(renderer);
const loader = new GLTFLoader();
loader.register((parser) => new GLTFLilToonExtension(parser, {
  rendererAdapter: adapter,
  addOutlines: true,
  configureShadowCasters: true,
}));

const gltf = await loader.loadAsync("/avatar.glb");
scene.add(gltf.scene);
```

The serialized schema is documented in [MATERIAL_FORMAT.md](docs/MATERIAL_FORMAT.md).

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

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Feature matrix](docs/FEATURE_MATRIX.md)
- [Porting exceptions](docs/PORTING_EXCEPTIONS.md)
- [Material/glTF format](docs/MATERIAL_FORMAT.md)
- [Upgrading lilToon](docs/UPGRADING_LILTOON.md)
- [Publishing](docs/PUBLISHING.md)

## License

Package code is MIT. Upstream and carried notices are in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md). DXC, SPIRV-Cross, SPIRV-Tools, glslang, Playwright, and Three.js are not redistributed in the runtime package.
