import { LILTOON_SHADERS } from "../generated/shaders.js";
import { LILTOON_TEXTURE_SEMANTICS } from "../generated/textureSemantics.js";
import type { LilToonRenderMode } from "../material/LilToonMaterialParameters.js";

export interface LilToonShaderProgram {
  key: keyof typeof LILTOON_SHADERS;
  vertexShader: string;
  fragmentShader: string;
  samplerBindings: Map<string, string>;
}

export type LilToonShaderProfile =
  | "standard"
  | "dissolve-noise"
  | "matcap-mask"
  | "matcap-shadow-border"
  | "layered-matcap"
  | "surface-controls"
  | "surface-controls-shadow-border"
  | "shadow-border"
  | "layered-surface-controls";

const textureNames = Object.keys(LILTOON_TEXTURE_SEMANTICS).sort((a, b) => b.length - a.length);

function inferTextureProperty(uniformName: string): string {
  const tail = uniformName.replace(/^SPIRV_Cross_Combined_?/, "");
  if (/^unity_SpecCube0/.test(tail)) return "__environment";
  if (/^uMainShadowMap/.test(tail)) return "__shadow";
  if (/^boneTexture/.test(tail)) return "__bones";
  if (/^morphTargetsTexture/.test(tail)) return "__morphs";
  return textureNames.find((name) => tail.startsWith(name.replace(/^_/, ""))) ?? `__unknown:${uniformName}`;
}

export function parseSamplerBindings(fragmentShader: string): Map<string, string> {
  const bindings = new Map<string, string>();
  for (const match of fragmentShader.matchAll(/uniform\s+(?:lowp\s+|mediump\s+|highp\s+)?sampler(?:2D|2DArray|Cube|2DShadow)\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/g)) {
    bindings.set(match[1]!, inferTextureProperty(match[1]!));
  }
  return bindings;
}

export function getLilToonShaderProgram(
  renderMode: LilToonRenderMode,
  profile: LilToonShaderProfile = "standard",
): LilToonShaderProgram {
  const suffix = profile === "standard" ? "" : `-${profile}`;
  const key = `standard-${renderMode}${suffix}` as keyof typeof LILTOON_SHADERS;
  const shader = LILTOON_SHADERS[key];
  if (!shader) throw new Error(`[three-liltoon] Shader variant not shipped: ${key}`);
  return {
    key,
    vertexShader: shader.vertex,
    fragmentShader: shader.fragment,
    samplerBindings: new Map([
      ...parseSamplerBindings(shader.vertex),
      ...parseSamplerBindings(shader.fragment),
    ]),
  };
}

export function getOutlineShaderProgram(): LilToonShaderProgram {
  const shader = LILTOON_SHADERS.outline;
  return {
    key: "outline",
    vertexShader: shader.vertex,
    fragmentShader: shader.fragment,
    samplerBindings: new Map([
      ...parseSamplerBindings(shader.vertex),
      ...parseSamplerBindings(shader.fragment),
    ]),
  };
}
