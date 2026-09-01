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
  "LIL_FEATURE_DissolveNoiseMask",
] as const;

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
