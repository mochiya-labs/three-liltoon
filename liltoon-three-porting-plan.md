# lilToon → Three.js Porting Plan
## Untouched lilToon Submodule + DXC → SPIR-V → GLSL ES

> **Purpose:** Technical implementation and maintenance guide for contributors building a Three.js port of lilToon while keeping the upstream lilToon source tree unmodified.
>
> **Primary target:** Three.js `WebGLRenderer` / WebGL2 using generated GLSL ES 3.00 shaders and `THREE.RawShaderMaterial`.
>
> **Canonical shader source:** Upstream lilToon HLSL.
>
> **Compiler boundary:** DXC compiles HLSL to SPIR-V. SPIRV-Cross converts SPIR-V to GLSL ES 3.00 and emits reflection metadata.
>
> **Future target:** WebGPU can be added later from the SPIR-V boundary through a SPIR-V → WGSL toolchain, without changing the upstream lilToon submodule.
>
> **Non-goal:** Do not manually rewrite the whole lilToon shader into GLSL, TSL, or WGSL.

---

# 1. Project goals

Build a reusable package that:

1. Keeps `lilxyzw/lilToon` as an **untouched Git submodule**.
2. Reuses as much of lilToon's original HLSL implementation as possible.
3. Replaces only the Unity renderer/pipeline API with a web/Three.js compatibility layer.
4. Parses Unity ShaderLab files for:
   - material properties
   - defaults
   - shader variants
   - render states
   - pass definitions
5. Compiles supported HLSL passes with:
   - **DXC:** HLSL → SPIR-V
   - **SPIRV-Cross:** SPIR-V → GLSL ES 3.00
6. Generates TypeScript metadata from:
   - ShaderLab
   - SPIR-V reflection
7. Provides a Three.js runtime package exposing:
   - `LilToonMaterial`
   - material property loading
   - shader variant selection
   - render-state conversion
   - light/shadow integration
   - outline/special-pass support
8. Can be published as an npm package and used by an ordinary Three.js application without requiring DXC or SPIRV-Cross at runtime.
9. Includes visual parity tests against Unity/lilToon reference renders.
10. Makes upstream lilToon upgrades a controlled process:
    - update submodule
    - rebuild
    - run compiler tests
    - run visual parity tests
    - publish a new compatible package version

---

# 2. Hard architectural rules

All contributions must follow these rules.

## 2.1 Never modify the lilToon submodule

Everything under:

```text
vendor/liltoon/
```

is read-only.

Do not:
- patch HLSL files in place
- copy modified HLSL files back into the submodule
- commit changes inside the submodule
- maintain a long-lived fork unless this plan is explicitly revised

All compatibility behavior belongs in this repository.

## 2.2 Upstream HLSL is the shading source of truth

Do not manually reproduce lilToon shading algorithms in GLSL unless a specific construct is impossible to cross-compile.

Preferred order:

1. compile original upstream HLSL unchanged
2. satisfy missing Unity definitions through compatibility headers/macros/functions
3. wrap original pass files with custom entrypoints
4. apply generated preprocessing transforms outside the submodule if absolutely necessary
5. only manually reimplement a shader function as a last resort

Any unavoidable replacement must be documented in:

```text
docs/PORTING_EXCEPTIONS.md
```

with:
- original file/function
- reason it cannot be compiled
- replacement implementation
- visual parity test covering it

## 2.3 SPIR-V is the stable compiler boundary

Do not tightly couple the runtime to DXC-generated syntax.

The pipeline is:

```text
lilToon HLSL
    │
    ├── web compatibility headers
    ├── wrapper entrypoints
    └── generated feature defines
    │
    ▼
DXC
    │
    ▼
SPIR-V
    │
    ├── reflection JSON
    │
    ▼
SPIRV-Cross
    │
    ▼
GLSL ES 3.00
    │
    ▼
THREE.RawShaderMaterial
```

Generated GLSL must never be manually edited.

## 2.4 Compilation is build-time, not runtime

Consumers install:

```bash
npm install @your-scope/liltoon-three
```

and receive precompiled JavaScript/TypeScript declarations + generated GLSL.

Consumers must **not** need:
- DXC
- Vulkan SDK
- SPIRV-Cross
- Rust
- Unity

Those are repository development/CI dependencies only.

---

# 3. Upstream repositories

Use these as external dependencies/reference implementations.

## lilToon

```text
https://github.com/lilxyzw/lilToon
```

Current relevant root:

```text
Assets/lilToon/
```

Important groups:

```text
Assets/lilToon/
├── BaseShaderResources/
├── CustomShaderResources/
├── Editor/
├── External/
├── Shader/
│   ├── Includes/
│   └── *.shader
├── Texture/
├── LICENSE
└── Third Party Notices.md
```

## Three.js

Reference repository:

```text
https://github.com/mrdoob/three.js
```

The port should depend on Three.js through npm as a peer dependency rather than vendoring Three.js.

Example:

```json
{
  "peerDependencies": {
    "three": ">=0.1xx"
  }
}
```

Use an exact supported version range after implementation/testing rather than leaving an indefinitely broad range.

---

# 4. Proposed port repository structure

Create a standalone repository, for example:

```text
liltoon-three/
├── .github/
│   └── workflows/
│       ├── build.yml
│       ├── test.yml
│       └── release.yml
│
├── vendor/
│   └── liltoon/                      # Git submodule, NEVER MODIFY
│
├── tools/
│   ├── bin/                          # optional local downloaded tool binaries; gitignored
│   ├── shaderlab/
│   │   ├── parser.ts
│   │   ├── property-parser.ts
│   │   ├── pass-parser.ts
│   │   ├── render-state-parser.ts
│   │   └── types.ts
│   │
│   ├── shader-build/
│   │   ├── build-all.ts
│   │   ├── build-variant.ts
│   │   ├── preprocess.ts
│   │   ├── dxc.ts
│   │   ├── spirv-cross.ts
│   │   ├── reflection.ts
│   │   ├── validate-generated.ts
│   │   └── hash.ts
│   │
│   ├── generators/
│   │   ├── generate-material-schema.ts
│   │   ├── generate-render-states.ts
│   │   ├── generate-uniform-types.ts
│   │   ├── generate-shader-manifest.ts
│   │   └── generate-third-party-notices.ts
│   │
│   └── unity-reference/
│       └── README.md
│
├── shader/
│   ├── compat/
│   │   ├── lil_pipeline_web.hlsl
│   │   ├── lil_web_platform.hlsl
│   │   ├── lil_web_math.hlsl
│   │   ├── lil_web_texture.hlsl
│   │   ├── lil_web_lighting.hlsl
│   │   ├── lil_web_shadow.hlsl
│   │   ├── lil_web_fog.hlsl
│   │   ├── lil_web_environment.hlsl
│   │   ├── lil_web_stereo.hlsl
│   │   ├── lil_web_instancing.hlsl
│   │   └── lil_web_unsupported.hlsl
│   │
│   ├── entry/
│   │   ├── forward.vert.hlsl
│   │   ├── forward.frag.hlsl
│   │   ├── outline.vert.hlsl
│   │   ├── outline.frag.hlsl
│   │   ├── shadowcaster.vert.hlsl
│   │   ├── shadowcaster.frag.hlsl
│   │   ├── fur.vert.hlsl
│   │   ├── fur.frag.hlsl
│   │   ├── gem.vert.hlsl
│   │   ├── gem.frag.hlsl
│   │   ├── refraction.vert.hlsl
│   │   └── refraction.frag.hlsl
│   │
│   ├── patches/
│   │   └── README.md                 # should remain empty unless unavoidable
│   │
│   └── generated/                    # generated; do not hand-edit
│       ├── spirv/
│       ├── glsl/
│       ├── reflection/
│       └── manifests/
│
├── src/
│   ├── index.ts
│   │
│   ├── material/
│   │   ├── LilToonMaterial.ts
│   │   ├── LilToonMaterialParameters.ts
│   │   ├── LilToonMaterialFactory.ts
│   │   ├── LilToonMaterialState.ts
│   │   └── LilToonFeatureSet.ts
│   │
│   ├── generated/
│   │   ├── properties.ts
│   │   ├── defaults.ts
│   │   ├── renderStates.ts
│   │   ├── uniforms.ts
│   │   └── shaderManifest.ts
│   │
│   ├── renderer/
│   │   ├── LilToonRendererAdapter.ts
│   │   ├── LilToonLightAdapter.ts
│   │   ├── LilToonShadowAdapter.ts
│   │   ├── LilToonEnvironmentAdapter.ts
│   │   ├── LilToonPassManager.ts
│   │   └── LilToonUniformBinder.ts
│   │
│   ├── passes/
│   │   ├── OutlinePass.ts
│   │   ├── ShadowCasterPass.ts
│   │   ├── RefractionPass.ts
│   │   ├── FurPass.ts
│   │   └── GemPass.ts
│   │
│   ├── loaders/
│   │   ├── LilToonMaterialLoader.ts
│   │   ├── GLTFLilToonExtension.ts
│   │   └── types.ts
│   │
│   ├── shader/
│   │   ├── ShaderVariant.ts
│   │   ├── ShaderVariantCache.ts
│   │   ├── ShaderProgramLibrary.ts
│   │   └── ShaderManifest.ts
│   │
│   └── utils/
│       ├── colors.ts
│       ├── texture.ts
│       ├── renderState.ts
│       └── diagnostics.ts
│
├── test/
│   ├── unit/
│   ├── compiler/
│   ├── shaderlab/
│   ├── integration/
│   ├── parity/
│   │   ├── scenes/
│   │   ├── unity-reference/
│   │   ├── three-output/
│   │   └── diff/
│   └── fixtures/
│
├── examples/
│   ├── basic-three/
│   ├── gltf-loader/
│   ├── vrm-avatar/
│   ├── outline/
│   ├── transparency/
│   └── advanced-material/
│
├── docs/
│   ├── ARCHITECTURE.md
│   ├── FEATURE_MATRIX.md
│   ├── PORTING_EXCEPTIONS.md
│   ├── MATERIAL_FORMAT.md
│   ├── UPGRADING_LILTOON.md
│   └── PUBLISHING.md
│
├── package.json
├── tsconfig.json
├── tsup.config.ts
├── vitest.config.ts
├── .gitmodules
├── LICENSE
├── THIRD_PARTY_NOTICES.md
└── README.md
```

---

# 5. Add lilToon as a Git submodule

Initialize:

```bash
git submodule add https://github.com/lilxyzw/lilToon.git vendor/liltoon
git submodule update --init --recursive
```

Pin a specific lilToon commit/tag.

Do not track `master` implicitly for releases.

Record the pinned revision in generated package metadata:

```ts
export const LILTOON_UPSTREAM_COMMIT = "...";
```

and preferably:

```json
{
  "liltoonCommit": "...",
  "liltoonVersion": "..."
}
```

inside the generated shader manifest.

Upgrade workflow:

```bash
cd vendor/liltoon
git fetch --tags
git checkout <new-version-or-commit>
cd ../..

npm run generate
npm run shaders:build
npm test
npm run test:parity
```

---

# 6. Toolchain

## 6.1 Required tools

### Node.js

Use:
- Node.js 20+ or newer LTS
- npm, pnpm, or yarn; pick one and commit the lockfile

Recommended:
- TypeScript
- `tsx` for development scripts
- `vitest` for unit/compiler tests
- `tsup` or `rollup` for package builds

### DXC — DirectX Shader Compiler

Repository:

```text
https://github.com/microsoft/DirectXShaderCompiler
```

Purpose:

```text
HLSL → SPIR-V
```

DXC is the reference HLSL compiler and supports SPIR-V generation using `-spirv`.

Basic command shape:

```bash
dxc \
  -spirv \
  -T vs_6_0 \
  -E main \
  -fspv-target-env=vulkan1.0 \
  -fspv-reflect \
  -I shader/compat \
  -I vendor/liltoon/Assets/lilToon/Shader \
  -I vendor/liltoon/Assets/lilToon/Shader/Includes \
  shader/entry/forward.vert.hlsl \
  -Fo shader/generated/spirv/forward.vert.spv
```

Fragment:

```bash
dxc \
  -spirv \
  -T ps_6_0 \
  -E main \
  -fspv-target-env=vulkan1.0 \
  -fspv-reflect \
  -I shader/compat \
  -I vendor/liltoon/Assets/lilToon/Shader \
  -I vendor/liltoon/Assets/lilToon/Shader/Includes \
  shader/entry/forward.frag.hlsl \
  -Fo shader/generated/spirv/forward.frag.spv
```

Useful DXC options during development:

```text
-spirv
    Generate SPIR-V.

-T vs_6_0 / ps_6_0
    Shader stage/profile.

-E <entrypoint>
    Entry function.

-I <dir>
    Add include directory.

-DNAME=value
    Define shader feature/build macro.

-Fo <path>
    Output binary SPIR-V.

-fspv-reflect
    Add reflection-oriented information.

-fspv-target-env=<env>
    Select target SPIR-V/Vulkan environment.

-fspv-debug=file
-fspv-debug=line
-fspv-debug=tool
    Useful in debug builds.

-WX
    Treat warnings as errors in CI after initial bring-up.
```

Do not target newer Vulkan/SPIR-V features unless necessary. WebGL-targeted generated shaders should stay conservative.

### SPIRV-Cross

Repository:

```text
https://github.com/KhronosGroup/SPIRV-Cross
```

Purpose:

```text
SPIR-V → GLSL ES
SPIR-V → reflection JSON
```

GLSL ES command:

```bash
spirv-cross \
  shader/generated/spirv/forward.vert.spv \
  --es \
  --version 300 \
  --output shader/generated/glsl/forward.vert.glsl
```

Fragment:

```bash
spirv-cross \
  shader/generated/spirv/forward.frag.spv \
  --es \
  --version 300 \
  --output shader/generated/glsl/forward.frag.glsl
```

Reflection:

```bash
spirv-cross \
  shader/generated/spirv/forward.frag.spv \
  --reflect \
  --output shader/generated/reflection/forward.frag.json
```

The build scripts should execute these commands rather than requiring developers to run them manually.

### SPIRV-Tools — recommended

Use for:
- validation
- disassembly
- debugging generated SPIR-V

Commands:

```bash
spirv-val shader/generated/spirv/forward.frag.spv
```

```bash
spirv-dis shader/generated/spirv/forward.frag.spv \
  -o shader/generated/spirv/forward.frag.spvasm
```

Do not commit `.spvasm` by default; generate on demand for debugging.

### Optional: Naga for future WebGPU

Naga repository is currently maintained inside `gfx-rs/wgpu`.

Potential later pipeline:

```text
SPIR-V → Naga → WGSL
```

This is NOT part of the first WebGL release.

Keep SPIR-V output stable enough that a WebGPU backend can be added without touching upstream lilToon.

---

# 7. Build scripts

Expose at least:

```json
{
  "scripts": {
    "generate": "tsx tools/generators/generate-material-schema.ts && tsx tools/generators/generate-render-states.ts",
    "shaders:build": "tsx tools/shader-build/build-all.ts",
    "shaders:clean": "rimraf shader/generated",
    "shaders:rebuild": "npm run shaders:clean && npm run generate && npm run shaders:build",
    "test": "vitest run",
    "test:compiler": "vitest run test/compiler",
    "test:parity": "tsx test/parity/run.ts",
    "build": "npm run generate && npm run shaders:build && tsup",
    "prepublishOnly": "npm run build && npm test"
  }
}
```

The exact package manager can change, but preserve the stages.

---

# 8. Upstream lilToon folder-by-folder treatment

This section is critical.

---

## 8.1 `Assets/lilToon/Shader/*.shader`

Examples include:

```text
lts.shader
lts_cutout.shader
lts_trans.shader
lts_fur.shader
lts_gem.shader
lts_ref.shader
lts_tess.shader
ltsmulti.shader
ltspass_opaque.shader
...
```

### Do NOT compile these with DXC

These are Unity ShaderLab containers.

They mix:
- `Properties`
- `SubShader`
- `Pass`
- `UsePass`
- `Tags`
- `Cull`
- `ZWrite`
- `ZTest`
- `Blend`
- `BlendOp`
- `Stencil`
- `Offset`
- `ColorMask`
- `AlphaToMask`
- HLSL blocks
- Unity `#pragma` variant declarations

DXC only compiles HLSL, not ShaderLab.

### Task: parse these files

Implement a ShaderLab extraction layer.

The parser does NOT need to be a complete Unity ShaderLab parser initially. It only needs to parse constructs lilToon actually uses.

Extract:

```ts
interface ShaderLabShader {
  name: string;
  properties: ShaderProperty[];
  subShaders: ShaderLabSubShader[];
}

interface ShaderProperty {
  name: string;
  displayName?: string;
  type: "Float" | "Int" | "Range" | "Color" | "Vector" | "2D" | "Cube" | string;
  defaultValue: unknown;
  attributes: string[];
}

interface ShaderLabPass {
  name?: string;
  tags: Record<string, string>;
  renderState: ShaderRenderState;
  defines: Record<string, string | boolean>;
  pragmas: string[];
  includes: string[];
}
```

### `lts.shader`

Use primarily as:

1. canonical material property schema
2. default values
3. advanced render-state property schema
4. version source (`_lilToonVersion`)
5. mapping of top-level shader to hidden pass shader(s)

Generate:

```text
src/generated/properties.ts
src/generated/defaults.ts
```

Keep original lilToon property names unchanged:

```text
_Color
_MainTex
_UseShadow
_ShadowBorder
_MatCapTex
_RimColor
...
```

The public `LilToonMaterial` API should accept those names.

### Hidden `ltspass_*.shader` files

These are especially important.

They contain:
- actual pass configuration
- `LIL_FEATURE_*` defines
- forward / forward-add / outline / shadowcaster pass definitions
- render state
- selected HLSL include chain

Treat hidden pass shader files as **build recipes**.

Extract:
- pass name
- pass type
- compile-time defines
- feature defines
- render state
- included pass HLSL

Generate a manifest such as:

```json
{
  "opaque": {
    "passes": {
      "forward": {
        "defines": [
          "LIL_PASS_FORWARD",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_NORMAL_1ST"
        ],
        "renderState": {
          "cull": "_Cull",
          "zWrite": "_ZWrite",
          "zTest": "_ZTest"
        }
      }
    }
  }
}
```

Do not attempt Unity `UsePass` behavior at runtime. Resolve it during build/generation.

---

## 8.2 `Assets/lilToon/Shader/Includes/lil_pipeline_*.hlsl`

Current upstream includes multiple renderer pipelines:

```text
lil_pipeline_brp.hlsl
lil_pipeline_lwrp.hlsl
lil_pipeline_urp.hlsl
lil_pipeline_hdrp.hlsl
```

### Treatment

Do NOT compile these as the web pipeline.

These files are reference implementations showing which renderer facilities lilToon expects.

For the WebGL port, write:

```text
shader/compat/lil_pipeline_web.hlsl
```

It must define/implement enough of the expected API for the unchanged common/pass code to compile.

Study BRP first because it is conceptually closest to traditional forward Three.js rendering.

`lil_pipeline_brp.hlsl` includes Unity-specific headers such as:
- `UnityCG.cginc`
- `AutoLight.cginc`
- `Lighting.cginc`
- `UnityMetaPass.cginc`

Those cannot be available on the web.

### Goal

Replace **renderer abstraction**, not lilToon shading.

`lil_pipeline_web.hlsl` should provide:
- matrix conventions
- object/world/view/clip transforms
- camera access
- normal transforms
- tangent transforms
- light structures
- main light access
- optional additional lights
- attenuation
- shadow sampling hooks
- environment/reflection access
- fog hooks
- time
- texture/sampler compatibility macros
- common Unity macro aliases needed by upstream lilToon code

Document every compatibility symbol in:

```text
docs/ARCHITECTURE.md
```

---

## 8.3 `Assets/lilToon/Shader/Includes/lil_common*.hlsl`

Includes:

```text
lil_common.hlsl
lil_common_appdata.hlsl
lil_common_frag.hlsl
lil_common_frag_alpha.hlsl
lil_common_functions.hlsl
lil_common_functions_thirdparty.hlsl
lil_common_input.hlsl
lil_common_input_base.hlsl
lil_common_input_opt.hlsl
lil_common_macro.hlsl
lil_common_vert.hlsl
lil_common_vert_fur.hlsl
...
```

### Treatment

**Compile unchanged whenever possible.**

This is the high-value shader core.

Do not translate manually.

Responsibilities include:
- material inputs
- feature macros
- texture inputs
- shared shader math
- UV behavior
- normal handling
- main texture layers
- shadow/toon math
- MatCap
- rim
- emission
- reflection
- alpha logic
- vertex processing

### If compilation fails

For every compiler error:

1. determine whether the missing symbol is a Unity renderer dependency
2. if yes, implement it in `shader/compat/*`
3. if it is a compiler-language incompatibility, add a build-time wrapper/compat macro
4. avoid changing vendor source
5. only create a generated patch as last resort

Create a tracking table in `docs/PORTING_EXCEPTIONS.md`.

---

## 8.4 `Assets/lilToon/Shader/Includes/lil_pass_forward*.hlsl`

Includes:

```text
lil_pass_forward.hlsl
lil_pass_forward_normal.hlsl
lil_pass_forward_lite.hlsl
lil_pass_forward_fur.hlsl
lil_pass_forward_gem.hlsl
lil_pass_forward_refblur.hlsl
lil_pass_forward_fakeshadow.hlsl
```

### Treatment

Reuse pass logic unchanged where possible.

Do not compile these directly as standalone shaders.

Create wrapper entry files under:

```text
shader/entry/
```

Example conceptual wrapper:

```hlsl
#define LIL_WEB
#define LIL_BRP
#define LIL_PASS_FORWARD

#include "../compat/lil_pipeline_web.hlsl"
#include "../../vendor/liltoon/Assets/lilToon/Shader/Includes/lil_common.hlsl"

// Define any web-only injection functions expected at the documented
// "Insert functions and includes that depend on Unity here" boundary.

#include "../../vendor/liltoon/Assets/lilToon/Shader/Includes/lil_pass_forward.hlsl"
```

The exact include order must match upstream pass expectations.

### First supported pass

Start with:

```text
LIL_PASS_FORWARD
```

opaque material.

Then:
- cutout
- transparency
- outline
- shadowcaster
- optional forward-add semantics
- special passes

---

## 8.5 `lil_pass_shadowcaster.hlsl`

### Treatment

Do not initially force lilToon's Unity shadowcaster pass into Three's internal shadow pipeline.

First release option:

- use Three.js depth/shadow materials for shadow casting
- make lilToon alpha/cutout masks available to a custom depth material where required

Later:
- compile upstream shadowcaster HLSL
- integrate via `customDepthMaterial` / `customDistanceMaterial`
- support lilToon-specific alpha/discard/dissolve behavior

The visual result matters more than preserving Unity's exact internal pass architecture.

---

## 8.6 `lil_vert_outline.hlsl`

### Treatment

Reuse upstream outline vertex logic if possible.

Outline is a separate draw pass.

Runtime architecture:

```text
mesh
├── forward material
└── outline material / second draw
```

Implement:

```text
src/passes/OutlinePass.ts
```

Do not merge outline into one fragment shader.

The outline pass needs its own:
- culling
- depth state
- stencil state
- blend state
- polygon offset
- feature defines
- uniforms

---

## 8.7 `lil_tessellation.hlsl` and tessellation `.shader` variants

### Treatment

Mark unsupported for WebGL2 v1.

Do not spend initial implementation time attempting to emulate hardware tessellation.

Document:

```text
Tessellation:
  WebGL2: unsupported
  fallback: pre-subdivided geometry or CPU-side subdivision
```

Exclude tessellation variants from compiler builds.

The parser should still recognize them and report:

```text
UnsupportedFeatureError("lilToon tessellation is not supported by the WebGL backend")
```

instead of silently producing incorrect output.

---

## 8.8 Fur files

Relevant:

```text
lil_common_vert_fur.hlsl
lil_pass_forward_fur.hlsl
lts_fur*.shader
lts_furonly*.shader
```

### Treatment

Phase after normal lilToon.

Unity's fur rendering model may not map one-to-one to a normal Three material.

Implement through a special pass/controller:

```text
src/passes/FurPass.ts
```

Reuse upstream fur shader logic where possible, but render shell/layer instances under Three.

Do not block initial package release on fur.

---

## 8.9 Refraction files

Relevant:

```text
lts_ref.shader
lts_ref_blur.shader
lil_pass_forward_refblur.hlsl
```

### Treatment

Requires renderer infrastructure, not merely shader translation.

Three.js must render scene color to a texture before the refractive lilToon object.

Architecture:

```text
opaque scene
    ↓
WebGLRenderTarget
    ↓
sceneColor texture
    ↓
lilToon refraction pass
```

Implement:

```text
src/passes/RefractionPass.ts
```

Compile shader logic only after the scene-color pipeline is in place.

---

## 8.10 Gem files

Relevant:

```text
lts_gem.shader
lil_pass_forward_gem.hlsl
```

### Treatment

Separate variant/pass.

Port after standard forward features.

Determine all required:
- view vectors
- environment/reflection data
- special texture inputs
- depth/front/back-face behavior

Document exact deviations from Unity.

---

## 8.11 VRC Light Volumes / VRChat-specific shader features

Relevant:

```text
Shader/Includes/VRC Light Volumes/
```

and related defines.

### Treatment

Not part of baseline Three.js port.

Feature flags should be parsed but either:
- disabled
- mapped to a neutral fallback
- explicitly reported unsupported

Do not let VRChat-specific dependencies break standard lilToon compilation.

---

## 8.12 `openlit_core.hlsl`

### Treatment

Attempt to compile unchanged.

This is a likely renderer-integration hotspot.

If it references Unity lighting macros/types:
- provide those through `lil_pipeline_web.hlsl`
- implement web light data structures
- adapt Three lights to those structures

Do not duplicate OpenLit lighting calculations in TypeScript.

TypeScript should only populate shader inputs.

---

## 8.13 `Assets/lilToon/Editor/`

This is Unity editor C# and is NOT part of the browser runtime.

### Read/reference only

Especially inspect:

```text
lilMaterialProperty.cs
lilMaterialUtils.cs
lilOptimizer.cs
lilShaderManager.cs
lilShaderUtils.cs
lilEnumeration.cs
lilConstants.cs
lilRenderPipelineReader.cs
```

Use these to understand:
- property semantics
- feature toggles
- variant generation
- optimizer behavior
- property naming
- render modes
- material conversion behavior

### Do not port Unity editor UI

Do not reimplement:
- inspector GUI
- Unity asset database
- Unity importer code
- editor startup logic

Only reproduce behavior that changes shader compilation or runtime material semantics.

If feature compilation logic is encoded only in C#, implement an equivalent **build-time TypeScript generator**, not browser runtime logic.

---

## 8.14 `BaseShaderResources/` and `CustomShaderResources/`

### Treatment

Inspect for:
- generated shader templates
- source fragments
- shader container templates
- configuration data

Do not automatically include the entire folders in npm.

Only copy data/code that is actually required by the compile pipeline, and preserve license notices.

If they are only used by Unity-side shader generation, treat them as build/reference inputs.

---

## 8.15 `Texture/`

### Treatment

Do not package all textures blindly.

Identify lilToon default/runtime-required textures, for example:
- noise
- tangent helpers
- default gradients
- fur noise
- shape textures

For each:
1. determine whether it is actually required at runtime
2. determine licensing from upstream notices
3. either bundle it under `dist/assets/` or replace it with programmatically generated neutral textures where semantically safe

Do not replace appearance-critical textures with approximations without parity tests.

---

# 9. Shader compiler adaptation

The compiler adaptation layer is responsible for making original lilToon HLSL legal for DXC/SPIR-V without modifying upstream files.

Implement in:

```text
shader/compat/
tools/shader-build/
```

---

## 9.1 Compatibility categories

### A. Unity type/macro compatibility

Implement aliases for symbols such as:
- transform helpers
- saturate/lerp/etc. only if required
- texture/sampler declaration macros
- branch/flatten hints
- stereo/instance macros
- camera variables
- screen parameters
- time variables

Do not redefine native HLSL functions unnecessarily.

### B. Matrix conventions

Three.js and Unity differ in coordinate conventions and matrix semantics.

Define one explicit shader ABI.

Example ABI inputs:

```text
uModelMatrix
uModelViewMatrix
uViewMatrix
uProjectionMatrix
uNormalMatrix
uCameraPosition
```

Do not rely on Three's built-in GLSL uniforms inside upstream HLSL.

The TypeScript runtime populates the ABI.

### C. Vertex attributes

Define stable locations/semantics for:
- POSITION
- NORMAL
- TANGENT
- TEXCOORD0
- TEXCOORD1
- TEXCOORD2
- TEXCOORD3
- COLOR
- skin indices/weights
- morph data if supported

Use SPIR-V reflection + generated GLSL inspection to guarantee stable mapping.

If DXC/SPIRV-Cross renames attributes, map them in the runtime using generated manifest metadata.

### D. Texture and sampler model

HLSL separates textures/samplers differently from classic GLSL ES.

Standardize web bindings in the compatibility layer.

Prefer one predictable mapping per lilToon texture property.

Generate runtime uniform metadata from reflection.

### E. Precision

Generated ESSL must compile under WebGL2.

Validate:
- vertex shader precision
- fragment shader precision
- integer precision
- sampler types

Insert required precision declarations in a deterministic post-generation step if SPIRV-Cross does not emit suitable ones.

Generated-source postprocessing is allowed if it is:
- deterministic
- isolated in `tools/shader-build`
- tested
- not manually maintained

---

# 10. Renderer abstraction: Unity → Three.js

This is the main unavoidable manual integration work.

Implement:

```text
src/renderer/LilToonRendererAdapter.ts
shader/compat/lil_web_*.hlsl
```

---

## 10.1 Camera

Expose:
- camera position
- view matrix
- projection matrix
- inverse matrices if needed
- screen size
- near/far if needed

Update per camera/render.

---

## 10.2 Object transforms

Expose:
- model matrix
- model-view matrix
- normal transform
- object/world scale information if lilToon uses it

Update per object before draw.

---

## 10.3 Main directional light

Start with one supported main directional light.

Map Three:

```ts
THREE.DirectionalLight
```

to a web lilToon light ABI:

```text
direction
color
intensity
shadow enabled
shadow matrix
shadow map
```

Use this to make initial lighting parity tractable.

---

## 10.4 Additional lights

Do not begin with unlimited arbitrary lights.

Phase implementation:

1. one main directional light
2. ambient/environment
3. configurable number of point lights
4. configurable number of spot lights
5. multiple directional lights if needed

Shader variant defines should control fixed array sizes if required.

---

## 10.5 Ambient / indirect lighting

Map Three scene/environment data to the closest lilToon/OpenLit inputs.

Start with explicit uniform ambient color.

Later support:
- hemisphere approximation
- spherical harmonics
- environment map contribution

Do not claim Unity light-probe parity until tested.

---

## 10.6 Shadows

Three's internal WebGL shadow implementation is not directly callable from arbitrary HLSL.

Create a stable lilToon shadow ABI:

```text
uMainShadowMap
uMainShadowMatrix
uShadowMapSize
uShadowBias
uShadowNormalBias
```

Implement shadow sampling in:

```text
shader/compat/lil_web_shadow.hlsl
```

The runtime obtains shadow camera/matrix/texture data from Three.

First target:
- directional shadow map
- one cascade or non-cascaded shadow

Then extend.

If exact access to Three internal shadow resources becomes brittle, own the required shadow render target/pass in `LilToonPassManager`.

Avoid coupling generated shader code to undocumented Three internal variable names.

---

## 10.7 Fog

Map:
- `THREE.Fog`
- `THREE.FogExp2`

to explicit web lilToon uniforms.

No fog support in first compiler milestone is acceptable, but shader compile must have neutral fallback functions.

---

## 10.8 Reflection/environment

Map:
- `scene.environment`
- cubemap/equirectangular environment after Three preprocessing

to lilToon reflection inputs.

Do not assume Unity reflection probes equal Three PMREM behavior.

Track this as expected cross-renderer variance.

---

## 10.9 Time

Provide a stable time uniform:

```text
uTime
```

for:
- UV animation
- emission animation
- blink
- scrolling
- dissolve animation
- AudioLink substitutes if ever implemented

---

## 10.10 Stereo/WebXR

Do not make stereo assumptions in the shader core.

Three will render per eye.

Ensure:
- camera matrices update per eye
- view-dependent effects (MatCap/rim/parallax) use the active eye camera
- no single global camera position is cached across both eyes

Add WebXR parity testing after desktop WebGL correctness.

---

# 11. ShaderLab render-state conversion

Implement:

```text
tools/shaderlab/render-state-parser.ts
src/utils/renderState.ts
src/generated/renderStates.ts
```

Convert Unity render-state values into Three material settings.

---

## 11.1 Cull

Unity:

```text
Cull Off
Cull Front
Cull Back
```

Three:

```ts
THREE.DoubleSide
THREE.BackSide
THREE.FrontSide
```

Verify orientation carefully because naming semantics differ by which faces are rendered vs culled.

Create unit tests.

---

## 11.2 ZWrite

Unity:

```text
ZWrite On/Off
```

Three:

```ts
material.depthWrite
```

---

## 11.3 ZTest

Map Unity compare functions to Three depth functions.

Implement full enum table rather than hardcoding `LEqual`.

Example Three constants include:
- `NeverDepth`
- `AlwaysDepth`
- `LessDepth`
- `LessEqualDepth`
- `EqualDepth`
- `GreaterEqualDepth`
- `GreaterDepth`
- `NotEqualDepth`

Unit-test all enum values used by lilToon.

---

## 11.4 Blend / BlendOp

Set:

```ts
material.blending = THREE.CustomBlending;
material.blendSrc
material.blendDst
material.blendEquation
material.blendSrcAlpha
material.blendDstAlpha
material.blendEquationAlpha
```

Create explicit Unity → Three enum maps.

Do not infer values from numeric constants at random.

Use lilToon's ShaderLab defaults and Unity enum definitions as specification.

---

## 11.5 Stencil

Map:
- reference
- read mask
- write mask
- compare function
- pass op
- fail op
- depth-fail op

to Three stencil fields.

Outline and normal pass can use separate states.

---

## 11.6 Offset

Unity:

```text
Offset factor, units
```

Three:

```ts
polygonOffset = true
polygonOffsetFactor
polygonOffsetUnits
```

---

## 11.7 ColorMask

Three does not expose every Unity-style per-channel color mask at the ordinary Material API in the same way.

Investigate WebGLRenderer capabilities.

If exact mapping is unavailable:
- either add controlled renderer-state integration
- or mark uncommon masks partially supported

Do not silently ignore non-default masks.

---

## 11.8 AlphaToMask

Three's material API and WebGL2 multisample behavior may not match Unity exactly.

Implement only where render target/sample configuration supports it.

Otherwise expose a diagnostic.

---

## 11.9 Render queue

Unity queue cannot map one-to-one to Three.

Map approximately through:
- `transparent`
- `renderOrder`
- object sorting
- pass manager ordering

Define a documented deterministic ordering scheme.

---

# 12. Material schema generation

The package should not contain a manually maintained list of thousands of lilToon properties.

Generate it from `lts.shader` and relevant shader variants.

Output:

```text
src/generated/properties.ts
src/generated/defaults.ts
```

Example generated structure:

```ts
export interface LilToonPropertySchema {
  _Color: {
    type: "Color";
    default: [1, 1, 1, 1];
  };
  _MainTex: {
    type: "Texture2D";
  };
  _UseShadow: {
    type: "Int";
    default: 0;
  };
}
```

Runtime public API can expose:

```ts
const material = new LilToonMaterial({
  _Color: new THREE.Color(1, 1, 1),
  _MainTex: texture,
  _UseShadow: 1,
  _ShadowBorder: 0.5,
});
```

Do not rename properties internally unless an explicit mapping layer preserves the original names.

---

# 13. Shader variant system

lilToon has many feature defines.

Compiling every theoretical combination would cause a variant explosion.

Implement a finite supported variant system.

---

## 13.1 Feature detection

Given material properties, derive compile-time feature set:

```ts
interface LilToonFeatureSet {
  main2nd: boolean;
  main3rd: boolean;
  shadow: boolean;
  shadow3rd: boolean;
  normal1st: boolean;
  normal2nd: boolean;
  matcap: boolean;
  matcap2nd: boolean;
  rim: boolean;
  emission1st: boolean;
  emission2nd: boolean;
  reflection: boolean;
  glitter: boolean;
  backlight: boolean;
  outline: boolean;
  // ...
}
```

Use upstream ShaderLab/Editor optimization behavior as reference.

---

## 13.2 Prefer build-time supported super-variants initially

For first implementation, avoid generating one shader program for every material.

Compile a small number of broad variants:

```text
standard-opaque
standard-cutout
standard-transparent
outline
shadowcaster
```

with most common features enabled.

Then optimize variant specialization after correctness.

This avoids blocking the port on reproducing lilToon's optimizer immediately.

---

## 13.3 Later specialized variants

Generate a canonical variant key:

```text
renderMode + feature bitset + pass
```

Hash it.

Manifest example:

```json
{
  "variantKey": "forward:opaque:0x000128af",
  "vertexShader": "forward-91f04a.vert.glsl",
  "fragmentShader": "forward-91f04a.frag.glsl",
  "requiredUniforms": [],
  "requiredTextures": []
}
```

Runtime:

```text
material → feature set → variant key → shader program
```

Do not compile shaders in browser.

---

# 14. Generated artifact pipeline

Build each pass/variant through the following stages.

```text
ShaderLab metadata
        │
        ▼
variant recipe
        │
        ▼
HLSL wrapper + defines
        │
        ▼
DXC
        │
        ▼
.spv
        │
        ├── spirv-val
        │
        ├── SPIRV-Cross --reflect
        │
        ▼
SPIRV-Cross --es --version 300
        │
        ▼
.glsl
        │
        ▼
deterministic GLSL postprocess
        │
        ▼
WebGL compile test
        │
        ▼
package artifact
```

For every generated shader keep metadata:

```json
{
  "pass": "forward",
  "renderMode": "opaque",
  "variant": "...",
  "sourceLilToonCommit": "...",
  "dxcVersion": "...",
  "spirvCrossVersion": "...",
  "sourceIncludes": [],
  "defines": [],
  "reflection": {}
}
```

This makes regressions diagnosable.

---

# 15. Three.js runtime material

Implement:

```text
src/material/LilToonMaterial.ts
```

For WebGLRenderer it should use or wrap:

```ts
THREE.RawShaderMaterial
```

`RawShaderMaterial` is preferred because Three does not automatically prepend the normal ShaderMaterial built-ins.

Do not make generated shaders depend on Three's private GLSL chunks.

---

## 15.1 Material responsibilities

`LilToonMaterial` should own:
- lilToon property values
- texture assignments
- render mode
- feature set
- selected shader variant
- Three render-state mapping
- uniforms
- dirty flags

It should not own:
- global renderer lighting
- global shadow render targets
- scene framebuffer capture
- multi-pass scheduling

Those belong in renderer/pass adapters.

---

## 15.2 Recommended API

```ts
const material = new LilToonMaterial({
  properties: {
    _Color: [1, 1, 1, 1],
    _UseShadow: 1,
    _ShadowBorder: 0.5,
  },
  textures: {
    _MainTex: mainTexture,
  },
});
```

Also allow:

```ts
material.setProperty("_ShadowBorder", 0.45);
material.setTexture("_MatCapTex", matcap);
```

Provide typed helpers while preserving string-name compatibility.

---

# 16. Uniform binding

Do not hand-write the complete uniform list.

Use SPIRV-Cross reflection to generate:

```text
src/generated/uniforms.ts
```

Group uniforms conceptually:

```text
PerFrame
PerScene
PerCamera
PerObject
PerMaterial
Textures
```

Even if GLSL eventually sees flat uniforms, the TypeScript architecture should keep update frequency separated.

This avoids repeatedly uploading material constants that did not change.

---

# 17. Skinning and morph targets

This requires deliberate integration.

The upstream Unity shader expects Unity-provided mesh deformation semantics.

Three usually performs skinning/morph logic through generated shader chunks.

Because this port uses raw generated shaders, implement the required vertex deformation explicitly.

## Phase 1

Support:
- static mesh
- skinned mesh

## Phase 2

Support:
- morph targets
- morph normals if needed

## Approach

Prefer a web compatibility implementation matching Three's CPU-provided data:
- bone texture or bone matrices
- skin indices
- skin weights
- morph attributes

Do not depend on private Three GLSL chunks unless they are copied under compatible license and explicitly versioned.

If using Three's exposed skeleton/bone texture data, create explicit uniforms in `LilToonRendererAdapter`.

Skinned avatars are a release-blocking requirement if the package is intended for avatar rendering.

---

# 18. Texture handling

Implement consistent rules for:

- `flipY`
- color space
- wrapping
- filtering
- mipmaps
- anisotropy
- texture transform
- normal maps
- texture coordinate channels

Unity and glTF/Three texture conventions differ.

Create a material-loader normalization layer.

## Color space

At minimum classify:
- color textures: sRGB
- data/mask/normal textures: linear/non-color

Do not infer solely from filename.

Use the lilToon property semantic table.

Generate texture semantic metadata from ShaderLab/property names plus curated overrides.

---

# 19. Lighting parity strategy

Do not initially attempt every Unity lighting feature.

Define controlled reference conditions.

Baseline reference scene:
- one directional light
- fixed ambient light
- fixed camera
- no fog
- no reflection probe unless testing reflection
- fixed color management
- fixed exposure/tone mapping
- fixed shadow map resolution/filter
- identical mesh/textures

Then compare individual lilToon features.

Cross-engine visual differences should be isolated feature by feature.

---

# 20. Implementation phases

---

## Phase 0 — repository and toolchain

Deliver:
- repo scaffold
- lilToon submodule
- Node build scripts
- DXC discovery/version check
- SPIRV-Cross discovery/version check
- SPIRV-Tools validation
- CI setup

Acceptance:
- `npm run shaders:build` can compile a trivial local HLSL vertex/fragment shader through DXC → SPIR-V → GLSL ES
- generated GLSL compiles in a headless/browser WebGL2 test

---

## Phase 1 — ShaderLab parser

Support constructs present in:
- `lts.shader`
- `ltspass_opaque.shader`

Parse:
- properties
- defaults
- attributes
- tags
- passes
- names
- render states
- defines
- pragmas
- includes
- `UsePass`

Acceptance:
- snapshot tests of extracted material schema
- snapshot tests of opaque pass recipe
- no Unity runtime required

---

## Phase 2 — first upstream lilToon compile

Goal:

Compile an upstream standard forward shader using:
- original `lil_common*.hlsl`
- original `lil_pass_forward*.hlsl`
- local web pipeline compatibility layer

Start with:
- static mesh
- opaque
- one directional light
- no shadows
- no advanced features

Create minimal neutral definitions for unsupported Unity systems.

Acceptance:
- DXC produces valid SPIR-V
- `spirv-val` passes
- SPIRV-Cross emits GLSL ES 300
- browser WebGL2 compiles/links program
- triangle/mesh renders

---

## Phase 3 — main texture + base color

Enable:
- `_MainTex`
- `_Color`
- UV0
- texture transforms needed by main texture
- alpha result for opaque path

Acceptance:
- Unity and Three base-color reference scenes visually agree within chosen diff threshold

---

## Phase 4 — core lilToon shading

Enable in controlled order:

1. lighting core
2. main shadow/toon band
3. 2nd shadow
4. 3rd shadow
5. first normal map
6. second normal map
7. Main2nd
8. Main3rd
9. rim shade
10. backlight

Each item gets a separate parity fixture.

Do not enable the next feature before the previous one has a stable test.

---

## Phase 5 — appearance effects

Enable:
- reflection/specular
- MatCap
- MatCap2nd
- rim light
- emission
- emission2nd
- glitter
- anisotropy
- distance fade
- parallax/POM if WebGL2 behavior is acceptable
- dissolve
- ID mask/UDIM discard where practical

Update `FEATURE_MATRIX.md`.

---

## Phase 6 — skinned avatars and morphs

Implement:
- `THREE.SkinnedMesh`
- bone matrices/bone texture
- skinning
- morph targets

Acceptance:
- animated skinned reference avatar
- no frame-to-frame shader artifacts
- outline follows deformation
- normals remain correct

---

## Phase 7 — cutout and transparency

Implement:
- alpha cutoff
- alpha masks
- transparent blend state
- render sorting strategy
- two-sided variants
- optional prepass if required

Parity-test:
- hair
- eyelashes
- semitransparent clothing
- layered transparent materials

---

## Phase 8 — shadows

Implement:
- receive directional shadow
- cast shadow with lilToon alpha/cutout behavior
- bias/normal-bias mappings
- animated/skinned shadow caster

Do not require exact Unity shadow filtering; require stable comparable appearance.

---

## Phase 9 — outline

Implement:
- second draw/pass
- upstream outline vertex HLSL where possible
- outline color
- width
- width mask
- vector texture
- lighting
- cull/depth/stencil states

Test on:
- smooth mesh
- hard-edge mesh
- skinned avatar

---

## Phase 10 — glTF/VRM integration

Do not make `.mat` the web runtime format.

Define a serializable lilToon payload.

Recommended custom glTF extension:

```text
MOCHIYA_materials_liltoon
```

or a neutral project-specific name if publishing broadly.

Example:

```json
{
  "extensions": {
    "MOCHIYA_materials_liltoon": {
      "lilToonVersion": 45,
      "shaderVariant": "lilToon",
      "properties": {
        "_UseShadow": 1,
        "_ShadowBorder": 0.5
      },
      "textures": {
        "_MainTex": {
          "index": 3
        }
      }
    }
  }
}
```

Implement:

```text
src/loaders/GLTFLilToonExtension.ts
```

Register using `GLTFLoader.register(...)`.

The loader:
1. reads extension data
2. loads referenced textures
3. creates `LilToonMaterial`
4. attaches it to the primitive/mesh
5. sets render state
6. selects shader variant

VRM can carry the extension alongside standard VRM/glTF data.

---

## Phase 11 — special rendering modes

Implement independently:

### Refraction
Requires scene color texture/pass manager.

### Gem
Requires dedicated shader/pass integration.

### Fur
Requires shell/layer rendering strategy.

### FakeShadow
Implement only if valuable.

### Tessellation
Remain unsupported in WebGL2 unless a geometry preprocessing fallback is implemented.

---

# 21. Unity material export pipeline

For real-world use, add a separate Unity exporter project/package later.

This does NOT belong inside the upstream lilToon submodule.

Possible separate folder/repo:

```text
unity-exporter/
```

Responsibilities:
- inspect Unity `Material`
- verify shader is lilToon
- read all serialized properties/textures
- preserve lilToon version
- export custom glTF/VRM extension payload
- export texture references
- preserve render mode/state

Do not recreate lilToon's material inspector.

The exporter should use Unity material APIs and treat property names as opaque lilToon keys.

---

# 22. Using the package in a Three.js web app

After publishing:

```bash
npm install three @your-scope/liltoon-three
```

Basic conceptual usage:

```ts
import * as THREE from "three";
import {
  LilToonMaterial,
  LilToonRendererAdapter,
} from "@your-scope/liltoon-three";

const renderer = new THREE.WebGLRenderer({
  antialias: true,
});

const adapter = new LilToonRendererAdapter(renderer);

const material = new LilToonMaterial({
  properties: {
    _Color: [1, 1, 1, 1],
    _UseShadow: 1,
    _ShadowBorder: 0.5,
  },
  textures: {
    _MainTex: mainTexture,
  },
});

const mesh = new THREE.Mesh(geometry, material);

adapter.attach(scene);
```

The final API may differ, but consumer code must not know:
- DXC
- SPIR-V
- SPIRV-Cross
- ShaderLab
- upstream HLSL paths

Those are package build concerns.

---

# 23. GLTFLoader usage

Recommended consumer flow:

```ts
const loader = new GLTFLoader();

loader.register((parser) => {
  return new GLTFLilToonExtension(parser, {
    rendererAdapter,
  });
});

const gltf = await loader.loadAsync("/avatar.vrm");
scene.add(gltf.scene);
```

The extension should degrade gracefully:
- if custom lilToon extension exists: use `LilToonMaterial`
- if absent: leave normal glTF material untouched

Do not globally replace all glTF materials.

---

# 24. Package artifacts

The npm package should contain only what consumers need.

Example:

```text
dist/
├── index.js
├── index.d.ts
├── material/
├── renderer/
├── passes/
├── loaders/
├── generated/
│   ├── shaderManifest.js
│   └── properties.js
├── shaders/
│   ├── forward-*.vert.glsl
│   ├── forward-*.frag.glsl
│   ├── outline-*.vert.glsl
│   └── outline-*.frag.glsl
└── assets/
```

Possible bundling strategies:

### Option A — GLSL strings bundled in JS

Best default.

Build converts:

```text
generated GLSL
```

to:

```ts
export const forwardVertex = `...`;
```

Pros:
- simplest consumer setup
- no asset URL resolution
- works with Vite/Next.js/Webpack

Cons:
- increases JS bundle size

### Option B — shader files as package assets

Useful if variants become numerous.

Runtime fetch/import URL management is more complex.

Start with Option A.

---

# 25. Tree-shaking and package splitting

If the full shader library becomes large, publish subpath exports:

```json
{
  "exports": {
    ".": "./dist/index.js",
    "./core": "./dist/core.js",
    "./outline": "./dist/outline.js",
    "./fur": "./dist/fur.js",
    "./gltf": "./dist/gltf.js"
  }
}
```

Consumers rendering only standard opaque lilToon should not have to bundle fur/refraction/gem code.

---

# 26. Publishing

Use npm.

Example package name:

```text
@your-scope/liltoon-three
```

or a neutral open-source name if appropriate.

Do not imply official affiliation with lilToon unless permission exists.

README wording should say:

> An unofficial Three.js/WebGL port/integration that cross-compiles portions of the upstream lilToon shader.

Include:
- supported lilToon version/commit
- supported Three.js versions
- feature matrix
- known visual differences
- required renderer configuration
- examples
- license notices

---

# 27. Versioning policy

Use SemVer for this package independently of lilToon.

Example:

```text
@your-scope/liltoon-three 0.3.0
supports lilToon commit abc123 / version X
supports Three r1xx–r1yy
```

Generated metadata:

```ts
export const compatibility = {
  packageVersion: "0.3.0",
  lilToonCommit: "...",
  lilToonVersion: "...",
  threeMin: "...",
  threeMaxTested: "...",
};
```

Do not encode lilToon version directly as npm package version.

---

# 28. License and redistribution

Upstream lilToon is MIT licensed.

The MIT notice must remain with copies/substantial portions of upstream software.

The repository/package must include:
- lilToon MIT license notice
- required notices from `Assets/lilToon/Third Party Notices.md`
- Three.js license if Three code is copied rather than merely peer-depended on
- SPIRV-Cross/DXC notices if binaries/source are redistributed

Preferred model:
- do NOT publish DXC/SPIRV-Cross binaries in the npm runtime package
- use them only in CI/development
- do NOT vendor Three runtime source
- use `three` as peer dependency

Generate:

```text
THIRD_PARTY_NOTICES.md
```

during release and verify manually.

---

# 29. CI

CI must run on every PR.

## Compiler job

1. initialize submodules
2. install Node dependencies
3. install/download pinned DXC
4. install/download pinned SPIRV-Cross
5. run `npm run generate`
6. run `npm run shaders:build`
7. validate SPIR-V
8. verify generated files are reproducible
9. run WebGL shader compile tests

Fail if generated output differs from committed/generated expected output, depending on chosen artifact policy.

---

## Unit tests

Test:
- ShaderLab properties
- default parsing
- blend mapping
- stencil mapping
- depth mapping
- cull mapping
- feature selection
- variant hashing
- reflection parsing
- material serialization

---

## Browser integration tests

Use Playwright or similar.

Create WebGL2 canvas and:
- compile all shipped GLSL programs
- link all programs
- render basic fixtures
- check GL errors
- check shader error logs

Test at least:
- Chromium
- Firefox

Safari/WebKit if CI environment permits.

---

# 30. Visual parity testing

This is mandatory.

Compilation success does not mean visual correctness.

## Reference process

For each feature:
1. create a Unity scene using upstream lilToon
2. fixed mesh
3. fixed textures
4. fixed material property values
5. fixed camera
6. fixed light
7. fixed resolution
8. render PNG

Three test renders the same fixture.

Compare:
- RMS error
- SSIM/perceptual metric if useful
- diff image

Do not require pixel-perfect parity across different renderers.

Set feature-specific tolerance.

---

# 31. Parity fixture order

Create at least:

```text
001-base-color
002-main-texture
003-main-uv
010-main-shadow
011-shadow-blur
012-shadow-2nd
013-shadow-3rd
020-normal
021-normal-2nd
030-main-2nd
031-main-3rd
040-matcap
041-matcap-2nd
050-rim
060-emission
061-emission-2nd
070-reflection
080-glitter
090-dissolve
100-cutout
110-transparent
120-outline
130-skinning
131-morph
140-receive-shadow
141-cast-shadow
150-refraction
160-gem
170-fur
```

Each test must change only the smallest possible set of parameters.

---

# 32. Feature support matrix

Maintain:

```text
docs/FEATURE_MATRIX.md
```

Statuses:

```text
✅ Supported / parity tested
🟡 Supported with known differences
🧪 Experimental
❌ Unsupported
⏳ Planned
```

Separate columns:

```text
Feature
Shader compiles
Static mesh
Skinned mesh
WebGL2
WebXR
Visual parity
Notes
```

Never report a feature "supported" merely because DXC compiles it.

---

# 33. Diagnostics

The runtime must emit actionable errors.

Examples:

```text
[liltoon-three] Unsupported lilToon tessellation material.
[liltoon-three] Material requests VRC Light Volumes, which are unavailable in WebGL backend.
[liltoon-three] Shader variant not shipped: <key>.
[liltoon-three] Refraction material requires LilToonPassManager scene-color capture.
```

Do not silently ignore unsupported lilToon parameters that significantly affect appearance.

---

# 34. Performance plan

Correctness first.

After parity:

1. profile shader compile/link time
2. profile GPU cost
3. reduce broad feature super-variants
4. specialize common material variants
5. cache programs
6. cache uniform locations
7. group material updates
8. reduce texture bindings
9. avoid redundant second passes
10. measure skinned avatar workloads

Do not prematurely rewrite original shader math for performance.

---

# 35. Shader variant cache

Runtime cache key should include:

```text
pass
renderMode
featureBits
skinning
morphTargets
lightConfiguration
shadowConfiguration
```

Do not include normal scalar material values such as `_ShadowBorder`, because those are uniforms.

Only include properties that change compiled code.

---

# 36. Three.js compatibility policy

Three.js internals evolve.

Minimize dependence on private classes/fields.

Prefer:
- public `RawShaderMaterial`
- public material render-state properties
- public camera/object matrices
- public light properties
- documented GLTFLoader plugin API

If accessing Three internals is unavoidable, isolate it under:

```text
src/renderer/three-internals/
```

with:
- exact Three version tests
- comments
- compatibility adapter

Do not scatter internal access throughout the package.

---

# 37. Renderer ownership decision

During shadow/refraction work, decide whether to:

### Mode A — integrate with Three's existing renderer state

Lower code volume, potentially more brittle.

### Mode B — own lilToon-specific render passes

More code, more stable shader ABI.

Preferred:
- normal opaque/cutout rendering: ordinary Three rendering
- outline: package-owned second pass/material
- refraction: package-owned scene-color pass
- fur: package-owned pass manager
- advanced shadow requirements: own only if public Three APIs are insufficient

---

# 38. Shader entrypoint strategy

Do not attempt to feed a whole `.shader` file to DXC.

Each generated shader stage gets an entry wrapper.

The wrapper must:
1. set pass defines
2. set render-mode defines
3. set supported feature defines
4. include `lil_pipeline_web.hlsl`
5. include upstream lilToon common files
6. provide renderer-dependent injected helpers
7. include upstream pass implementation
8. expose DXC-compatible `main`

Where upstream already defines `vert` / `frag`, wrap or select those entrypoints rather than copying their body.

---

# 39. Automated preprocessing

Implement a diagnostic preprocessing mode.

DXC can show include behavior; additionally support:

```bash
npm run shaders:preprocess -- --variant standard-opaque
```

Output:

```text
.tmp/preprocessed/standard-opaque.vert.hlsl
.tmp/preprocessed/standard-opaque.frag.hlsl
```

These are debugging artifacts only.

This makes it possible to determine whether errors originate from:
- feature defines
- include order
- Unity symbols
- HLSL incompatibility

---

# 40. Porting error triage rules

When DXC fails:

## Category 1 — missing Unity macro/function

Example class:

```text
unknown identifier UNITY_...
unknown identifier UnityObjectTo...
unknown lighting helper
```

Action:
- implement compatibility definition in `shader/compat`
- add unit/compiler test
- do NOT modify vendor

## Category 2 — unsupported Unity resource

Examples:
- reflection probe array
- light probe volume
- grab pass texture

Action:
- add explicit web ABI
- implement TypeScript renderer binding
- provide neutral fallback until feature phase

## Category 3 — language feature unsupported by target SPIR-V/ESSL

Action:
- investigate DXC flag/target
- determine whether feature is actually necessary
- isolate a generated compatibility transform
- document exception

## Category 4 — unsupported graphics pipeline stage

Examples:
- tessellation
- geometry shader

Action:
- mark unsupported or implement alternative rendering architecture
- do not fake cross-compilation

## Category 5 — SPIRV-Cross generated GLSL rejected by WebGL2

Action:
- minimize reproduction
- inspect SPIR-V
- adjust HLSL compatibility/input layout
- only use deterministic GLSL postprocessing as last resort

---

# 41. Definition of "upstream untouched"

The following are allowed:

```text
#include <vendor file>
read/parse vendor file
copy license notices
generate metadata from vendor file
compile vendor HLSL through wrapper
define macros before vendor include
provide functions/macros vendor expects
```

The following are not allowed:

```text
edit vendor file
apply persistent git patch inside vendor
maintain modified copied versions of lil_common*.hlsl
maintain manually translated GLSL versions of upstream files
```

If the project discovers that a tiny upstream modification would radically simplify the port, document it first. Do not make the modification automatically.

---

# 42. Release artifacts

A release should include:

```text
npm package
GitHub release
source tag
compatibility table
generated shader manifest
THIRD_PARTY_NOTICES.md
CHANGELOG.md
```

Optional:
- prebuilt demo site
- example VRM/glTF asset with redistribution permission

Do not include test assets whose licenses do not permit redistribution.

---

# 43. Package build reproducibility

Pin compiler versions.

Create:

```text
tools/toolchain.json
```

Example:

```json
{
  "dxc": {
    "version": "<pinned release>",
    "sha256": {
      "linux-x64": "...",
      "macos-arm64": "...",
      "windows-x64": "..."
    }
  },
  "spirvCross": {
    "version": "<pinned commit/release>"
  }
}
```

CI and local setup script should use these versions.

Generated shader output can change between compiler versions; do not silently upgrade.

---

# 44. Tool bootstrap

Implement:

```bash
npm run tools:setup
```

The script:
1. detects OS/arch
2. downloads or locates pinned DXC
3. downloads/builds or locates pinned SPIRV-Cross
4. verifies version
5. verifies checksum
6. writes local tool paths
7. does not commit binaries

Allow overrides:

```text
DXC_PATH
SPIRV_CROSS_PATH
SPIRV_VAL_PATH
```

This is useful in CI and developer machines.

---

# 45. Recommended implementation order

For a new implementation, follow this order unless a documented dependency requires a different sequence.

## Step 1

Create repository structure and submodule.

## Step 2

Implement tool bootstrap + trivial HLSL compile pipeline.

## Step 3

Implement SPIR-V validation/reflection/GLSL generation.

## Step 4

Implement WebGL2 compile/link smoke test.

## Step 5

Implement minimal ShaderLab parser for `lts.shader`.

## Step 6

Implement pass parser for `ltspass_opaque.shader`.

## Step 7

Generate property/default/render-state manifests.

## Step 8

Create minimal `lil_pipeline_web.hlsl`.

## Step 9

Attempt to compile upstream lilToon forward pass with nearly all optional features disabled.

## Step 10

Resolve missing Unity dependencies one by one in the compatibility layer.

## Step 11

Render static opaque mesh.

## Step 12

Add base texture/color.

## Step 13

Add controlled lighting.

## Step 14

Add parity fixtures.

## Step 15

Add core lilToon features incrementally.

## Step 16

Add skinned mesh support.

## Step 17

Add cutout/transparency.

## Step 18

Add shadows.

## Step 19

Add outline.

## Step 20

Add glTF/VRM extension loader.

## Step 21

Package and publish alpha version.

## Step 22

Implement refraction/gem/fur as independent follow-on milestones.

---

# 46. First release scope

The first useful alpha release should target:

```text
✅ static mesh
✅ skinned mesh
✅ base texture/color
✅ main toon shadow
✅ normal map
✅ normal map 2nd
✅ Main2nd/Main3rd
✅ MatCap
✅ rim
✅ emission
✅ cutout
✅ transparency
✅ outline
✅ one main directional light
✅ basic ambient light
✅ directional shadow receive
✅ glTF/VRM custom extension loading
```

Can remain later:

```text
⏳ multiple complex Unity light modes
⏳ reflection probe parity
⏳ advanced fog
⏳ AudioLink
⏳ VRC Light Volumes
⏳ refraction
⏳ gem
⏳ fur
❌ hardware tessellation on WebGL2
```

---

# 47. Acceptance criteria for alpha

A release candidate is acceptable when:

1. upstream lilToon submodule has no modifications
2. clean checkout can rebuild shaders
3. all shipped GLSL compiles in WebGL2
4. all SPIR-V validates
5. npm package does not require compiler binaries at runtime
6. basic lilToon property names are preserved
7. skinned VRM/glTF avatar can render
8. outline works on animated avatar
9. core material feature parity fixtures pass chosen thresholds
10. unsupported features produce diagnostics
11. package contains required licenses/notices
12. example app works from installed npm package, not repository-relative shader paths

---

# 48. Future WebGPU backend

Do NOT redesign the source when adding WebGPU.

Keep:

```text
upstream lilToon HLSL
        ↓
web compatibility ABI
        ↓
DXC
        ↓
SPIR-V
```

Add:

```text
SPIR-V
   ↓
SPIR-V → WGSL translator (for example Naga, subject to validation)
   ↓
WebGPU integration
```

The WebGPU renderer adapter should implement the same conceptual:
- material schema
- light ABI
- camera ABI
- object ABI
- texture ABI
- pass semantics

Do not make WGSL the new source of truth.

The point of this architecture is that lilToon stays the source dependency.

---

# 49. Important known risks

## Risk: lilToon common HLSL has more Unity coupling than expected

Mitigation:
- compatibility headers
- neutral stubs for unsupported systems
- compile one feature set at a time
- never start with every feature enabled

## Risk: shader variant explosion

Mitigation:
- broad super-variants first
- feature-specialized variants only after profiling
- manifest + hash-based program cache

## Risk: Three shadow internals are difficult to reuse

Mitigation:
- own shadow inputs/pass where needed
- maintain stable package shader ABI

## Risk: raw shader skinning integration

Mitigation:
- explicit bone/morph ABI
- dedicated animated avatar tests

## Risk: generated GLSL varies by compiler version

Mitigation:
- pin DXC and SPIRV-Cross
- reproducible builds
- snapshot generated metadata

## Risk: Unity and Three lighting cannot be pixel identical

Mitigation:
- controlled parity scenes
- semantic/visual parity target
- document renderer-specific differences

---

# 50. Expected implementation deliverables

A complete implementation includes:

```text
1. Working repository scaffold
2. lilToon Git submodule
3. Pinned compiler setup
4. ShaderLab parser
5. DXC build pipeline
6. SPIR-V validation/reflection pipeline
7. SPIRV-Cross GLSL generation pipeline
8. WebGL2 compile test
9. Web compatibility HLSL layer
10. Standard lilToon forward shader compiling from upstream HLSL
11. LilToonMaterial runtime
12. Three renderer adapter
13. Render-state converter
14. Shader variant library/cache
15. Skinned-mesh integration
16. Core feature implementations
17. Outline pass
18. Shadow integration
19. glTF extension loader
20. Examples
21. Visual parity suite
22. Feature matrix
23. npm packaging
24. CI/release pipeline
25. licenses/notices
```

---

# 51. Documentation that must remain current

## `docs/ARCHITECTURE.md`

Explain:
- compiler flow
- compatibility ABI
- renderer integration
- pass scheduling
- generated artifacts

## `docs/FEATURE_MATRIX.md`

Exact support status.

## `docs/PORTING_EXCEPTIONS.md`

Every place where original upstream behavior cannot be compiled/reused directly.

## `docs/MATERIAL_FORMAT.md`

Serialized lilToon/glTF extension schema.

## `docs/UPGRADING_LILTOON.md`

Exact submodule upgrade/rebuild/parity procedure.

## `docs/PUBLISHING.md`

npm/release/license process.

---

# 52. Reference sources

Use these as implementation references.

## lilToon repository

```text
https://github.com/lilxyzw/lilToon
```

Key current locations:

```text
Assets/lilToon/Shader/
Assets/lilToon/Shader/Includes/
Assets/lilToon/Editor/
Assets/lilToon/BaseShaderResources/
Assets/lilToon/CustomShaderResources/
Assets/lilToon/Texture/
```

Useful files:

```text
Assets/lilToon/Shader/lts.shader
Assets/lilToon/Shader/ltspass_opaque.shader
Assets/lilToon/Shader/Includes/lil_pipeline_brp.hlsl
Assets/lilToon/Shader/Includes/lil_common.hlsl
Assets/lilToon/Shader/Includes/lil_common_frag.hlsl
Assets/lilToon/Shader/Includes/lil_common_functions.hlsl
Assets/lilToon/Shader/Includes/lil_common_input_base.hlsl
Assets/lilToon/Shader/Includes/lil_common_vert.hlsl
Assets/lilToon/Shader/Includes/lil_pass_forward.hlsl
Assets/lilToon/Shader/Includes/lil_pass_forward_normal.hlsl
Assets/lilToon/Shader/Includes/lil_pass_shadowcaster.hlsl
Assets/lilToon/Shader/Includes/lil_vert_outline.hlsl
Assets/lilToon/Shader/Includes/openlit_core.hlsl
```

## DXC SPIR-V documentation

```text
https://github.com/microsoft/DirectXShaderCompiler/blob/main/docs/SPIR-V.rst
```

## SPIRV-Cross

```text
https://github.com/KhronosGroup/SPIRV-Cross
```

## Naga / wgpu

```text
https://github.com/gfx-rs/wgpu/tree/trunk/naga
```

## Three.js

```text
https://github.com/mrdoob/three.js
https://threejs.org/docs/pages/RawShaderMaterial.html
https://threejs.org/docs/pages/GLTFLoader.html
```

## lilToon license/documentation

```text
https://lilxyzw.github.io/lilToon/
https://github.com/lilxyzw/lilToon/blob/master/LICENSE
https://github.com/lilxyzw/lilToon/blob/master/Assets/lilToon/Third%20Party%20Notices.md
```

---

# 53. Final architectural summary

The repository should end up with this ownership boundary:

```text
┌──────────────────────────────────────────────┐
│            upstream lilToon submodule       │
│                                              │
│ ShaderLab metadata + original HLSL           │
│                                              │
│                 READ ONLY                    │
└──────────────────────┬───────────────────────┘
                       │
                       │ parse / include
                       ▼
┌──────────────────────────────────────────────┐
│              liltoon-three build             │
│                                              │
│ ShaderLab parser                             │
│ web pipeline compatibility HLSL              │
│ wrapper entrypoints                          │
│ feature/variant generator                    │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
                      DXC
                       │
                       ▼
                    SPIR-V
              ┌────────┴────────┐
              │                 │
        reflection         SPIRV-Cross
              │                 │
              │                 ▼
              │            GLSL ES 300
              │                 │
              └────────┬────────┘
                       ▼
┌──────────────────────────────────────────────┐
│             npm runtime package              │
│                                              │
│ LilToonMaterial                              │
│ renderer/light/shadow adapter                │
│ pass manager                                 │
│ generated GLSL                               │
│ generated property schema                    │
│ GLTFLoader extension                         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
                 Three.js web app
                       │
                       ▼
                  WebGLRenderer
```

The most important maintenance property is:

> **A lilToon update should normally require updating the submodule, rebuilding shaders, fixing only compatibility-layer regressions, rerunning parity tests, and publishing a new package. It should not require re-porting lilToon's shader algorithms by hand.**
