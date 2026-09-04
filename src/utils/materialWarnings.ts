import type { Texture } from "three";

export type LilToonWarningCode =
  | "unsupported-feature"
  | "unused-texture"
  | "texture-type-mismatch"
  | "spec-version-mismatch"
  | "unsupported-shader-variant";

/** Serializable, non-fatal compatibility diagnostic. */
export interface LilToonWarning {
  severity: "warning";
  code: LilToonWarningCode;
  materialName: string;
  materialIndex?: number;
  shaderKey: string;
  property: string;
  message: string;
}

interface WarningContext {
  materialName: string;
  shaderKey: string;
  properties: Record<string, unknown>;
  textures: Record<string, Texture | null>;
  usedProperties: ReadonlySet<string>;
  samplerBindings: ReadonlyMap<string, string>;
  cubeSamplers: ReadonlySet<string>;
}

// Parent gates prevent dormant exported settings from generating noise.
const FEATURE_GATES: Record<string, string | undefined> = {
  _UseMain2ndTex: undefined,
  _UseMain3rdTex: undefined,
  _Main2ndDissolveParams: "_UseMain2ndTex",
  _Main3rdDissolveParams: "_UseMain3rdTex",
  _UseShadow: undefined,
  _UseRimShade: undefined,
  _UseEmission: undefined,
  _UseEmission2nd: undefined,
  _UseBumpMap: undefined,
  _UseBump2ndMap: undefined,
  _UseReflection: undefined,
  _UseMatCap: undefined,
  _UseMatCap2nd: undefined,
  _UseRim: undefined,
  _UseBacklight: undefined,
  _UseGlitter: undefined,
  _UseAnisotropy: undefined,
  _UseParallax: undefined,
  _UsePOM: "_UseParallax",
  _UseAudioLink: undefined,
  _UseDither: undefined,
  _EmissionUseGrad: "_UseEmission",
  _Emission2ndUseGrad: "_UseEmission2nd",
  _MatCapCustomNormal: "_UseMatCap",
  _MatCap2ndCustomNormal: "_UseMatCap2nd",
  _MainGradationStrength: undefined,
  _AlphaMaskMode: undefined,
  _DissolveParams: undefined,
  _TessellationMode: undefined,
  _UseVRCLightVolumes: undefined,
};

function firstComponent(value: unknown): number {
  if (Array.isArray(value)) return Number(value[0] ?? 0);
  if (value && typeof value === "object" && "x" in value) return Number(value.x);
  return Number(value ?? 0);
}

/** Only executable member accesses count; the shared struct also declares unused features. */
export function shaderPropertyReferences(vertex: string, fragment: string): Set<string> {
  return new Set([...`${vertex}\n${fragment}`.matchAll(/\b_Globals\.([A-Za-z_]\w*)/g)].map((match) => match[1]!));
}

function textureGates(property: string): string[] | null {
  // Unity compatibility aliases are not independent lilToon texture inputs.
  if (["_BaseMap", "_BaseColorMap"].includes(property) || property.startsWith("_Outline")) return null;
  if (property.startsWith("_MatCap2nd")) return ["_UseMatCap2nd", ...(property.includes("Bump") ? ["_MatCap2ndCustomNormal"] : [])];
  if (property.startsWith("_MatCap")) return ["_UseMatCap", ...(property.includes("Bump") ? ["_MatCapCustomNormal"] : [])];
  if (property.startsWith("_Emission2nd")) return ["_UseEmission2nd", ...(property.includes("GradTex") ? ["_Emission2ndUseGrad"] : [])];
  if (property.startsWith("_Emission")) return ["_UseEmission", ...(property.includes("GradTex") ? ["_EmissionUseGrad"] : [])];
  if (property.startsWith("_Main2nd")) return ["_UseMain2ndTex", ...(property.includes("Dissolve") ? ["_Main2ndDissolveParams"] : [])];
  if (property.startsWith("_Main3rd")) return ["_UseMain3rdTex", ...(property.includes("Dissolve") ? ["_Main3rdDissolveParams"] : [])];
  if (property === "_MainGradationTex") return ["_MainGradationStrength"];
  if (property.startsWith("_Bump2nd")) return ["_UseBump2ndMap"];
  if (property.startsWith("_Bump")) return ["_UseBumpMap"];
  if (property.startsWith("_Shadow")) return ["_UseShadow"];
  if (property.startsWith("_RimShade")) return ["_UseRimShade"];
  if (property.startsWith("_Rim")) return ["_UseRim"];
  if (property.startsWith("_ReflectionCube")) return ["_UseReflection", "_ApplyReflection"];
  if (/^_(Reflection|Smoothness|Metallic)/.test(property)) return ["_UseReflection"];
  if (property.startsWith("_Dissolve")) return ["_DissolveParams"];
  if (property.startsWith("_AlphaMask")) return ["_AlphaMaskMode"];
  if (property.startsWith("_AudioLink")) return ["_UseAudioLink"];
  if (property.startsWith("_Anisotropy")) return ["_UseAnisotropy"];
  if (property.startsWith("_Glitter")) return ["_UseGlitter"];
  if (property.startsWith("_Backlight")) return ["_UseBacklight"];
  if (property.startsWith("_Parallax")) return ["_UseParallax"];
  return [];
}

export function collectMaterialWarnings(context: WarningContext): LilToonWarning[] {
  const { properties, textures, usedProperties, samplerBindings, cubeSamplers } = context;
  const warnings: LilToonWarning[] = [];
  const unsupported = new Set<string>();
  const enabled = (name: string): boolean => firstComponent(properties[name]) !== 0;
  const add = (code: LilToonWarningCode, property: string, message: string) => {
    warnings.push({ severity: "warning", code, materialName: context.materialName, shaderKey: context.shaderKey, property, message });
  };

  for (const [property, parent] of Object.entries(FEATURE_GATES)) {
    if (!enabled(property) || (parent && (!enabled(parent) || unsupported.has(parent)))) continue;
    // These facilities are ABI fallbacks even if a future shader retains a member access.
    const unavailable = property === "_TessellationMode" || property === "_UseVRCLightVolumes";
    if (!unavailable && usedProperties.has(property)) continue;
    unsupported.add(property);
    add("unsupported-feature", property,
      `${property} is enabled, but ${context.shaderKey} does not implement it. The model will load without this feature.`);
  }

  const boundProperties = new Set(samplerBindings.values());
  for (const [property, texture] of Object.entries(textures).sort(([a], [b]) => a.localeCompare(b))) {
    if (!texture) continue;
    const gates = textureGates(property);
    if (gates === null || gates.some((gate) => !enabled(gate) || unsupported.has(gate))) continue;
    if (property === "_MainColorAdjustMask") {
      const hsvg = properties._MainTexHSVG;
      const components = Array.isArray(hsvg) ? hsvg : (hsvg as { toArray?: () => number[] } | undefined)?.toArray?.();
      if (!enabled("_MainGradationStrength") && (!components || components.every((value, i) => value === [0, 1, 1, 1][i]))) continue;
    }
    // Some profiles alias custom MatCap normals to the primary sampler while
    // retaining independent transforms. The same texture is a supported binding.
    const sharedNormal = /^_MatCap(?:2nd)?BumpMap$/.test(property)
      && boundProperties.has("_BumpMap") && texture === textures._BumpMap
      && usedProperties.has(`${property}_ST`);
    if (!boundProperties.has(property) && !sharedNormal) {
      add("unused-texture", property,
        `${property} is assigned to an enabled feature, but ${context.shaderKey} has no sampler for it. This texture is ignored; the result may be unmasked or use a fallback.`);
      continue;
    }
    const expectsCube = [...samplerBindings].some(([uniform, slot]) => slot === property && cubeSamplers.has(uniform));
    const isCube = Boolean((texture as Texture & { isCubeTexture?: boolean }).isCubeTexture);
    if (expectsCube !== isCube) {
      add("texture-type-mismatch", property,
        `${property} requires a ${expectsCube ? "CubeTexture" : "2D texture"}; the incompatible texture is ignored.`);
    }
  }
  return warnings;
}
