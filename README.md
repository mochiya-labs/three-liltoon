# three-liltoon

Render lilToon materials in Three.js applications, including exported GLB models and VRM avatars. three-liltoon brings upstream [lilToon](https://github.com/lilxyzw/lilToon) shading to WebGL2 with familiar Three.js materials, automatic rendering passes, and optional VRM integration.

It is an unofficial, MIT-licensed port maintained by [Mochiya](https://mochiya.org), not affiliated with or endorsed by lilToon. The renderer is in alpha: supported features do not imply pixel-identical Unity rendering.

- Create materials in JavaScript or load authored materials from Unity exports.
- Use main-color layers, toon shadows, normals, MatCaps, emission, rim lighting and reflection together.
- Render opaque, cutout, transparent, refraction, fur and gem materials, with outlines and animated meshes.
- Keep standard glTF/VRM loading for materials without the lilToon extension.

[Documentation](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/README.md) · [Feature matrix](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/FEATURE_MATRIX.md) · [Report an issue](https://github.com/mochiya-labs/three-liltoon/issues)

## Install

Install the package and Three.js:

```bash
npm install @mochiya/three-liltoon three
```

For VRM loading, also install the optional peer:

```bash
npm install @pixiv/three-vrm
```

The package includes built runtime files; consumers do not need Unity, the lilToon submodule or shader compiler tools.

| Component                | Runtime and tested setup                                                      |
| ------------------------ | ----------------------------------------------------------------------------- |
| Renderer                 | Three.js `WebGLRenderer`, WebGL2                                              |
| Three.js                 | Tested with 0.180.0 and 0.185.1; use one shared copy in the application       |
| Optional VRM integration | Tested with `@pixiv/three-vrm` 3.5.5                                          |
| Package format           | ESM with TypeScript declarations                                              |
| Upstream shader baseline | lilToon `2.3.4-3-g72fc096`, commit `72fc09625b24c9a750591c286e9192512a5177a1` |

WebGPU and WebXR are not supported by this backend. Some effects have additional GPU requirements; see the [rendering modes reference](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/RENDERING_MODES.md).

## Your first lilToon material

In a browser application with an ESM bundler such as Vite, this creates a lit, outlined sphere:

```ts
import * as THREE from "three";
import { LilToonMaterial, enableLilToon } from "@mochiya/three-liltoon";

const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(35, 640 / 480, 0.1, 100);
camera.position.z = 4;

const renderer = new THREE.WebGLRenderer({ antialias: true });
renderer.setSize(640, 480);
document.body.appendChild(renderer.domElement);
const releaseRendering = enableLilToon(renderer);

scene.add(new THREE.HemisphereLight(0xffffff, 0x404040, 0.5));
const light = new THREE.DirectionalLight(0xffffff, 1);
light.position.set(1, 2, 3);
scene.add(light);

const geometry = new THREE.SphereGeometry(1, 32, 24);
const material = new LilToonMaterial({
	color: "#e85a7a",
	properties: { _UseShadow: 1, _UseOutline: 1, _OutlineWidth: 0.03 },
});
scene.add(new THREE.Mesh(geometry, material));
renderer.setAnimationLoop(() => renderer.render(scene, camera));

// Call when this scene is no longer needed.
function dispose() {
	renderer.setAnimationLoop(null);
	releaseRendering();
	material.dispose();
	geometry.dispose();
	renderer.dispose();
	renderer.domElement.remove();
}
```

`enableLilToon(renderer)` enables outlines and the additional passes required by the selected material modes. Install it once per renderer owner and call its returned cleanup function when that owner is disposed. Materials work with ordinary `Mesh` and `SkinnedMesh` objects.

Use `color`, `opacity`, `map` and `alphaTest` for familiar Three.js controls, or the original lilToon names for detailed edits:

```ts
material.setProperty("_UseRim", 1);
material.setProperty("_RimColor", [1, 0.5, 0.6, 1]);
// After loading a texture:
// material.setTexture("_MainTex", texture);
// material.setProperty("_MainTex_ST", [1, 1, 0, 0]);
```

Feature toggles and texture assignments specialize the shader automatically. Ordinary numeric animation updates uniforms. Dispose shared input textures separately when your application no longer needs them. [Material API and lifecycle](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/API.md)

## Bring a model from Unity

Use [Mochiya Avatar Tools](https://github.com/mochiya-labs/unity-avatar-tools) to export supported lilToon materials into GLB or VRM files. The exporter adds `MOCHIYA_materials_liltoon` alongside ordinary glTF/VRM data and fallback materials.

A normal VRM or GLB does not automatically contain lilToon shader settings. three-liltoon replaces only materials carrying this extension; it does not guess from texture or material names.

### Load GLB or glTF

Reuse the scene, camera and enabled renderer above, replacing the sphere with a loaded model:

```ts
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { GLTFLilToonExtension } from "@mochiya/three-liltoon/gltf";

const loader = new GLTFLoader();
loader.register((parser) => new GLTFLilToonExtension(parser));
const gltf = await loader.loadAsync("/model.glb");
scene.add(gltf.scene);
```

The plugin loads materials and reconstructs missing tangents where needed. Camera framing and animation playback remain application responsibilities. Draco, Meshopt and KTX2 require their usual GLTFLoader decoder setup.

### Load a VRM avatar

Use this loader configuration instead of the GLB-only plugin when your application supports VRM:

```ts
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { VRMLoaderPlugin, VRMUtils } from "@pixiv/three-vrm";
import { enableLilToonVRM } from "@mochiya/three-liltoon/vrm";

const loader = new GLTFLoader();
loader.register((parser) => enableLilToonVRM(new VRMLoaderPlugin(parser)));
const gltf = await loader.loadAsync("/avatar.vrm");
const vrm = gltf.userData.vrm;
if (vrm) VRMUtils.rotateVRM0(vrm);
scene.add(vrm?.scene ?? gltf.scene);

let previousTime: number | undefined;
renderer.setAnimationLoop((time) => {
	const delta = previousTime === undefined ? 0 : (time - previousTime) / 1000;
	previousTime = time;
	vrm?.update(delta);
	renderer.render(scene, camera);
});
```

The enhanced VRM plugin already includes lilToon loading, so do not register both configurations on the same loader. It also works with ordinary GLB files. Three-VRM owns humanoid, expression and spring-bone updates; three-liltoon adapts supported material-expression bindings. Playing VRMA requires the application's usual animation loading and retargeting setup. [VRM integration details](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/API.md#vrm-material-expressions)

## Rendering modes and compatibility

The current source supports `opaque`, `cutout`, `transparent`, `refraction`, `refraction-blur`, `fur`, `fur-cutout`, `fur-two-pass` and `gem`. Transparent materials additionally accept `transparencyMode: "normal" | "one-pass" | "two-pass"`. Outline is a material setting and additional draw, not a separate rendering mode.

The main differences from Unity are lighting and render-pipeline integration: one directional light plus ambient/hemisphere lighting, a direct environment cubemap, approximate shadow casters/receivers, and different transparent sorting. Additional-light passes, full Unity shadow/probe/fog behavior, AudioLink, VRC Light Volumes, tessellation and optional shader families are not reproduced. Fur retains CPU morph preparation and a CPU skinning fallback on devices without float render targets.

See [rendering modes](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/RENDERING_MODES.md), the [feature matrix](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/FEATURE_MATRIX.md) and [porting differences](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/PORTING_EXCEPTIONS.md) before choosing the package for an asset. Loader warnings identify known unsupported requests; absence of warnings is not a visual-parity guarantee.

## How the port works

three-liltoon translates upstream shader code rather than recreating its appearance with a different toon shader.

```text
Build:   pinned lilToon ShaderLab/HLSL
           -> web compatibility headers and pass wrappers
           -> DXC -> validated SPIR-V -> SPIRV-Cross -> GLSL ES templates

Runtime: material properties + assigned textures
           -> specialized GLSL + Three.js scene/deformation bindings
           -> WebGL shader compilation and rendering
```

The build reads original properties, defaults and render states. Compatibility headers replace Unity-specific inputs with Three.js camera, lighting, texture and deformation data. WebGL2 cannot run the original fur geometry stage, so the port generates ribbon topology and evaluates translated fur equations through vertex shaders.

At runtime, `LilToonMaterial` specializes complete translated templates, rather than assembling arbitrary HLSL snippets. Compatible texture bindings reuse upstream sampler rules where WebGL permits. The runtime checks actual vertex, fragment and combined texture limits; it does not silently remove enabled textures to fit a fixed sixteen-total budget. Three.js/WebGL compiles the resulting GLSL. The HLSL translation tools are build-time dependencies only.

The loader handles serialized materials, the material supplies shading, and renderer integration schedules outlines, captures and auxiliary passes. Standard VRM behavior stays with Three-VRM. [Architecture](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/ARCHITECTURE.md) · [Shader specialization](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/MATERIAL_SPECIALIZATION.md)

## Try the model viewer

The [example viewer](https://github.com/mochiya-labs/three-liltoon/blob/main/examples/mochiya-liltoon-viewer/README.md) opens a local GLB/VRM and displays its materials, textures and compatibility warnings. Model files stay in the browser.

```bash
git clone https://github.com/mochiya-labs/three-liltoon.git
cd three-liltoon/examples/mochiya-liltoon-viewer
npm install
npm run dev
```

Open the local URL printed by Next.js. This viewer uses the included runtime build and does not need the shader toolchain.

## Reference and contributing

| Guide                                                                                                     | Contents                                                                        |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [API](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/API.md)                                | Material editing, renderer lifetime, R3F, VRM expressions, warnings and cleanup |
| [Rendering modes](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/RENDERING_MODES.md)        | Unity mode mapping, transparency variants, refraction, fur and gem              |
| [Feature matrix](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/FEATURE_MATRIX.md)          | Supported features, limitations and verification scope                          |
| [Material/glTF format](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/MATERIAL_FORMAT.md)   | `MOCHIYA_materials_liltoon`, standalone JSON and schema validation              |
| [Architecture](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/ARCHITECTURE.md)              | Compiler pipeline, compatibility layer, rendering and resource ownership        |
| [Porting differences](https://github.com/mochiya-labs/three-liltoon/blob/main/docs/PORTING_EXCEPTIONS.md) | Adaptations from Unity and upstream lilToon                                     |
| [Contributing](https://github.com/mochiya-labs/three-liltoon/blob/main/CONTRIBUTING.md)                   | Source setup, build tools, tests and useful bug reports                         |

## License

Package code is MIT. See [LICENSE](https://github.com/mochiya-labs/three-liltoon/blob/main/LICENSE) and [third-party notices](https://github.com/mochiya-labs/three-liltoon/blob/main/THIRD_PARTY_NOTICES.md); the npm archive also includes notices under `dist/`. Upstream lilToon retains its own license. Shader compiler tools are not redistributed in the runtime package.
