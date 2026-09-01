# Feature matrix

Status meanings: ✅ supported and exercised; 🟡 supported with known renderer differences; 🧪 compiled/implemented but not yet approved by Unity visual parity; ❌ unsupported; ⏳ planned. "Browser" means the automated WebGL2 smoke path, not Unity parity.

| Feature | Shader | Static | Skinned | Browser | WebXR | Unity parity | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Base color / main texture | ✅ | ✅ | ✅ | ✅ | ❌ | 🧪 | Property names and main UV transform preserved |
| Main UV animation / tone correction | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Compiled in standard variants |
| Main2nd / Main3rd / decal | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Core textures included; advanced per-layer masks are not shipped |
| Main toon shadow, 2nd, 3rd | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | lilToon bands retained; lighting ABI differs from Unity |
| Normal map / normal map 2nd | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Tangent fallback exists; authored tangents recommended |
| MatCap / MatCap2nd | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Core textures included |
| Rim / directional rim | ✅ | ✅ | ✅ | ✅ | ❌ | 🧪 | Exercised in smoke example |
| Rim shade / backlight | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | One-light approximation |
| Emission / emission2nd | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Core emission maps included; blend masks/gradations omitted |
| Reflection / specular | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | CubeTexture environment only; no Unity probe blending |
| Distance fade / dissolve | ✅ | 🧪 | 🧪 | ✅ | ❌ | 🧪 | Core dissolve textures included |
| Cutout / alpha mask | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | Forward and shadow-caster cutoff supported |
| Transparent blending | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | Single ordinary Three transparent pass; no Unity prepass variants |
| Bone-texture skinning | ✅ | — | ✅ | ✅ | ❌ | 🧪 | Three `SkinnedMesh`; four weights |
| Morph targets | ✅ | ✅ | ✅ | ✅ | ❌ | 🧪 | Position/normal targets; maximum 64 |
| Outline | ✅ | ✅ | ✅ | ✅ | ❌ | 🧪 | Back-face child follows skinning and morphs |
| Directional shadow receive | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | One map, 2×2 PCF; no cascades/VSM parity |
| Directional/point shadow cast | ✅ | ✅ | ✅ | ✅ | ❌ | 🧪 | Uses Three depth/distance materials |
| One directional + ambient light | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | First visible directional light; simple SH ambient |
| Environment cubemap | ✅ | 🟡 | 🟡 | ✅ | ❌ | 🧪 | `THREE.CubeTexture`; PMREM/equirect internals not accessed |
| glTF custom extension | — | 🧪 | 🧪 | 🧪 | ❌ | 🧪 | `MOCHIYA_materials_liltoon`; non-extension materials preserved |
| Instancing | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Compatibility macros are neutral no-ops |
| Stereo / WebXR | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Stereo macros are neutral no-ops in this alpha |
| Multiple Unity light modes / probes | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Additional lights and probe blending are not reproduced |
| Advanced masks, gradations, glitter, anisotropy, parallax/POM | ⏳ | ⏳ | ⏳ | ⏳ | ❌ | ❌ | Not defined in shipped standard recipes |
| AudioLink / VRC Light Volumes | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | VRC Light Volumes warn and fall back to Three lighting |
| Refraction | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Requires scene-color capture; constructor diagnoses |
| Gem | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Independent future pass |
| Fur | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Independent future shell/pass system |
| Hardware tessellation | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | Unavailable in WebGL2; use pre-subdivided geometry |

The current browser smoke covers static rendering, live morph deformation, bone-texture skinning, outlines, lighting, and directional shadow maps in Chromium. Approved Unity reference images are not committed yet, so no appearance feature is represented as parity-tested.
