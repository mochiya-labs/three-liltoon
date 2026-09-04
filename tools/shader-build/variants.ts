import { resolve } from "node:path";
import { PROJECT_ROOT } from "../paths.js";
import type { ShaderVariantRecipe } from "./types.js";

export const CORE_FEATURE_DEFINES = [
  "LIL_WEB_DEFORMATION",
  "LIL_WEB_SKINNING",
  "LIL_WEB_MORPHTARGETS",
  "LIL_USE_SHADOW",
  "LIL_FEATURE_ANIMATE_MAIN_UV",
  "LIL_FEATURE_MAIN_TONE_CORRECTION",
  "LIL_FEATURE_MAIN2ND",
  "LIL_FEATURE_MAIN3RD",
  "LIL_FEATURE_DECAL",
  "LIL_FEATURE_ANIMATE_DECAL",
  "LIL_FEATURE_ALPHAMASK",
  "LIL_FEATURE_SHADOW",
  "LIL_FEATURE_RECEIVE_SHADOW",
  "LIL_FEATURE_SHADOW_3RD",
  "LIL_FEATURE_RIMSHADE",
  "LIL_FEATURE_EMISSION_1ST",
  "LIL_FEATURE_EMISSION_2ND",
  "LIL_FEATURE_ANIMATE_EMISSION_UV",
  "LIL_FEATURE_NORMAL_1ST",
  "LIL_FEATURE_NORMAL_2ND",
  "LIL_FEATURE_REFLECTION",
  "LIL_FEATURE_MATCAP",
  "LIL_FEATURE_MATCAP_2ND",
  "LIL_FEATURE_RIMLIGHT",
  "LIL_FEATURE_RIMLIGHT_DIRECTION",
  "LIL_FEATURE_BACKLIGHT",
  "LIL_FEATURE_DISTANCE_FADE",
  "LIL_FEATURE_DISSOLVE",
  "LIL_FEATURE_Main2ndTex",
  "LIL_FEATURE_Main3rdTex",
  "LIL_FEATURE_AlphaMask",
  "LIL_FEATURE_BumpMap",
  "LIL_FEATURE_Bump2ndMap",
  "LIL_FEATURE_MatCapTex",
  "LIL_FEATURE_MatCap2ndTex",
  "LIL_FEATURE_EmissionMap",
  "LIL_FEATURE_Emission2ndMap",
  "LIL_FEATURE_DissolveMask",
] as const;

const MATCAP_MASK_FEATURE_DEFINES = [
  "LIL_FEATURE_MatCapBlendMask",
  "LIL_FEATURE_MatCapBumpMap",
  "LIL_FEATURE_MatCap2ndBlendMask",
  "LIL_FEATURE_MatCap2ndBumpMap",
] as const;

const SHADOW_BORDER_MASK_FEATURE_DEFINES = ["LIL_FEATURE_ShadowBorderMask"] as const;

// Emission masks need two additional samplers. Keep both emission maps, main
// layers, normals, MatCaps, alpha mask, and the face's shadow-border mask;
// exchange cubemap reflection and the dissolve texture to stay within the
// 16 linked texture units available with bone/morph deformation.
const EMISSION_MASK_FEATURE_DEFINES = [
  ...CORE_FEATURE_DEFINES.filter((feature) => ![
    "LIL_FEATURE_REFLECTION",
    "LIL_FEATURE_DissolveMask",
  ].includes(feature)),
  "LIL_FEATURE_EmissionBlendMask",
  "LIL_FEATURE_Emission2ndBlendMask",
  "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
  ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
] as const;

// Give the shadow-border mask its own sampler lane. In cutout/transparent
// modes the full core already reaches the WebGL2 per-stage sampler ceiling,
// so texture-backed emission and dissolve/alpha-mask features must remain in
// their dedicated profiles instead of producing an un-linkable 17-sampler
// fallback.
const SHADOW_BORDER_CORE_FEATURE_DEFINES = CORE_FEATURE_DEFINES.filter(
  (feature) => ![
    "LIL_FEATURE_AlphaMask",
    "LIL_FEATURE_DissolveMask",
    "LIL_FEATURE_EmissionMap",
    "LIL_FEATURE_Emission2ndMap",
  ].includes(feature),
);

// Cutout and transparent standard variants already consume WebGL2's minimum
// 16 fragment texture units. The mask profile trades the two dissolve-map
// samplers for the two MatCap mask samplers. Runtime material selection keeps
// dissolve materials on the standard profile and masked MatCap materials on
// this profile instead of producing an un-linkable >16-sampler shader.
const MATCAP_MASK_CORE_FEATURE_DEFINES = CORE_FEATURE_DEFINES.filter(
  (feature) => ![
    "LIL_FEATURE_AlphaMask",
    "LIL_FEATURE_DissolveMask",
    "LIL_FEATURE_EmissionMap",
    "LIL_FEATURE_Emission2ndMap",
  ].includes(feature),
);

const LAYERED_MATCAP_FEATURE_DEFINES = [
  "LIL_FEATURE_Main2ndBlendMask",
  "LIL_FEATURE_Main3rdBlendMask",
  ...MATCAP_MASK_FEATURE_DEFINES,
] as const;

// This lane mirrors lilToon's material optimizer for layered MatCap materials:
// keep both color layers and masks, both MatCaps and custom normals, and both
// general normal maps. Reflection, alpha-mask, dissolve, and texture-backed
// emission live in other lanes so an animated avatar stays within 14 fragment
// samplers plus its bone and morph samplers.
const LAYERED_MATCAP_CORE_FEATURE_DEFINES = CORE_FEATURE_DEFINES.filter(
  (feature) => ![
    "LIL_FEATURE_REFLECTION",
    "LIL_FEATURE_AlphaMask",
    "LIL_FEATURE_DissolveMask",
    "LIL_FEATURE_EmissionMap",
    "LIL_FEATURE_Emission2ndMap",
  ].includes(feature),
);

const SURFACE_CONTROL_FEATURE_DEFINES = [
  "LIL_FEATURE_SmoothnessTex",
  "LIL_FEATURE_MetallicGlossMap",
  "LIL_FEATURE_ReflectionColorTex",
  "LIL_FEATURE_MatCapBlendMask",
  "LIL_FEATURE_MatCapBumpMap",
  "LIL_FEATURE_MatCap2ndBlendMask",
  "LIL_FEATURE_MatCap2ndBumpMap",
] as const;

// A reflection-heavy lilToon material needs three reflection control textures
// in addition to MatCap masks/custom normals. Exchange texture-backed main
// layers, emissions, and dissolve maps to keep the full surface-control path
// linkable on the WebGL2-guaranteed sampler budget.
const SURFACE_CONTROL_CORE_FEATURE_DEFINES = CORE_FEATURE_DEFINES.filter(
  (feature) => ![
    "LIL_FEATURE_MAIN2ND",
    "LIL_FEATURE_MAIN3RD",
    "LIL_FEATURE_Main2ndTex",
    "LIL_FEATURE_Main3rdTex",
    "LIL_FEATURE_EmissionMap",
    "LIL_FEATURE_Emission2ndMap",
    "LIL_FEATURE_DissolveMask",
    "LIL_FEATURE_AlphaMask",
    "LIL_FEATURE_Bump2ndMap",
  ].includes(feature),
);

const LAYERED_SURFACE_CONTROL_FEATURE_DEFINES = [
  "LIL_FEATURE_MAIN2ND",
  "LIL_FEATURE_Main2ndTex",
  "LIL_FEATURE_Main2ndBlendMask",
  ...SURFACE_CONTROL_FEATURE_DEFINES,
  "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
] as const;

const DISSOLVE_NOISE_CORE_FEATURE_DEFINES = CORE_FEATURE_DEFINES.filter(
  (feature) => feature !== "LIL_FEATURE_Emission2ndMap",
);

const entry = (name: string) => resolve(PROJECT_ROOT, `shader/entry/${name}.hlsl`);
const forwardSources = { vertex: entry("forward"), fragment: entry("forward") } as const;
const entries = { vertex: "vert", fragment: "frag" } as const;

export const SHADER_VARIANTS: ShaderVariantRecipe[] = [
  {
    key: "smoke",
    renderMode: "smoke",
    sources: { vertex: entry("trivial.vert"), fragment: entry("trivial.frag") },
    entries: { vertex: "main", fragment: "main" },
    defines: [],
  },
  { key: "minimal-opaque", renderMode: "opaque", sources: forwardSources, entries, defines: ["LIL_RENDER=0"] },
  { key: "standard-opaque", renderMode: "opaque", sources: forwardSources, entries, defines: ["LIL_RENDER=0", ...CORE_FEATURE_DEFINES] },
  { key: "standard-cutout", renderMode: "cutout", sources: forwardSources, entries, defines: ["LIL_RENDER=1", ...CORE_FEATURE_DEFINES] },
  { key: "standard-transparent", renderMode: "transparent", sources: forwardSources, entries, defines: ["LIL_RENDER=2", ...CORE_FEATURE_DEFINES] },
  ...(["opaque", "cutout", "transparent"] as const).map((renderMode, index) => ({
    key: `standard-${renderMode}-emission-mask`,
    renderMode,
    sources: forwardSources,
    entries,
    defines: [`LIL_RENDER=${index}`, ...EMISSION_MASK_FEATURE_DEFINES],
  })),
  {
    key: "standard-opaque-dissolve-noise",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...DISSOLVE_NOISE_CORE_FEATURE_DEFINES, "LIL_FEATURE_DissolveNoiseMask"],
  },
  {
    key: "standard-cutout-dissolve-noise",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...DISSOLVE_NOISE_CORE_FEATURE_DEFINES, "LIL_FEATURE_DissolveNoiseMask"],
  },
  {
    key: "standard-transparent-dissolve-noise",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...DISSOLVE_NOISE_CORE_FEATURE_DEFINES, "LIL_FEATURE_DissolveNoiseMask"],
  },
  {
    key: "standard-opaque-matcap-mask",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...MATCAP_MASK_CORE_FEATURE_DEFINES, ...MATCAP_MASK_FEATURE_DEFINES],
  },
  {
    key: "standard-cutout-matcap-mask",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...MATCAP_MASK_CORE_FEATURE_DEFINES, ...MATCAP_MASK_FEATURE_DEFINES],
  },
  {
    key: "standard-transparent-matcap-mask",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...MATCAP_MASK_CORE_FEATURE_DEFINES, ...MATCAP_MASK_FEATURE_DEFINES],
  },
  {
    key: "standard-opaque-matcap-shadow-border",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=0",
      ...MATCAP_MASK_CORE_FEATURE_DEFINES,
      ...MATCAP_MASK_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-cutout-matcap-shadow-border",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=1",
      ...MATCAP_MASK_CORE_FEATURE_DEFINES,
      ...MATCAP_MASK_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-transparent-matcap-shadow-border",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=2",
      ...MATCAP_MASK_CORE_FEATURE_DEFINES,
      ...MATCAP_MASK_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-opaque-layered-matcap",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...LAYERED_MATCAP_CORE_FEATURE_DEFINES, ...LAYERED_MATCAP_FEATURE_DEFINES],
  },
  {
    key: "standard-cutout-layered-matcap",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...LAYERED_MATCAP_CORE_FEATURE_DEFINES, ...LAYERED_MATCAP_FEATURE_DEFINES],
  },
  {
    key: "standard-transparent-layered-matcap",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...LAYERED_MATCAP_CORE_FEATURE_DEFINES, ...LAYERED_MATCAP_FEATURE_DEFINES],
  },
  {
    key: "standard-opaque-surface-controls",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-cutout-surface-controls",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-transparent-surface-controls",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-opaque-surface-controls-shadow-border",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=0",
      ...SURFACE_CONTROL_CORE_FEATURE_DEFINES,
      ...SURFACE_CONTROL_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-cutout-surface-controls-shadow-border",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=1",
      ...SURFACE_CONTROL_CORE_FEATURE_DEFINES,
      ...SURFACE_CONTROL_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-transparent-surface-controls-shadow-border",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: [
      "LIL_RENDER=2",
      ...SURFACE_CONTROL_CORE_FEATURE_DEFINES,
      ...SURFACE_CONTROL_FEATURE_DEFINES,
      ...SHADOW_BORDER_MASK_FEATURE_DEFINES,
      "LIL_WEB_SHARE_MATCAP_BUMP_WITH_MAIN",
    ],
  },
  {
    key: "standard-opaque-layered-surface-controls",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...LAYERED_SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-cutout-layered-surface-controls",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...LAYERED_SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-transparent-layered-surface-controls",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...SURFACE_CONTROL_CORE_FEATURE_DEFINES, ...LAYERED_SURFACE_CONTROL_FEATURE_DEFINES],
  },
  {
    key: "standard-opaque-shadow-border",
    renderMode: "opaque",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=0", ...SHADOW_BORDER_CORE_FEATURE_DEFINES, ...SHADOW_BORDER_MASK_FEATURE_DEFINES],
  },
  {
    key: "standard-cutout-shadow-border",
    renderMode: "cutout",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=1", ...SHADOW_BORDER_CORE_FEATURE_DEFINES, ...SHADOW_BORDER_MASK_FEATURE_DEFINES],
  },
  {
    key: "standard-transparent-shadow-border",
    renderMode: "transparent",
    sources: forwardSources,
    entries,
    defines: ["LIL_RENDER=2", ...SHADOW_BORDER_CORE_FEATURE_DEFINES, ...SHADOW_BORDER_MASK_FEATURE_DEFINES],
  },
  {
    key: "outline",
    renderMode: "outline",
    sources: { vertex: entry("outline"), fragment: entry("outline") },
    entries,
    defines: [
      "LIL_RENDER=0",
      "LIL_WEB_DEFORMATION",
      "LIL_WEB_SKINNING",
      "LIL_WEB_MORPHTARGETS",
      "LIL_USE_SHADOW",
      "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
      "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
      "LIL_FEATURE_ANIMATE_OUTLINE_UV",
      "LIL_FEATURE_OutlineTex",
      "LIL_FEATURE_OutlineWidthMask",
      "LIL_FEATURE_OutlineVectorTex",
    ],
  },
];
