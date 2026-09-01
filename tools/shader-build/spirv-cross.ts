import { execFileSync } from "node:child_process";
import { readFileSync, writeFileSync } from "node:fs";
import type { ShaderStage } from "./types.js";

function postprocessGlsl(source: string, stage: ShaderStage): string {
  let output = source;
  if (!/precision\s+(?:lowp|mediump|highp)\s+float/.test(output)) {
    output = output.replace("#version 300 es", "#version 300 es\nprecision highp float;\nprecision highp int;");
  }
  output = output.replace(
    /SPIRV_Cross_Combined_(_[A-Za-z0-9_]+)sampler\1/g,
    "$1",
  );
  if (stage === "vertex") {
    const attributes: Record<string, string> = {
      in_var_POSITION: "position",
      in_var_NORMAL: "normal",
      in_var_TANGENT: "tangent",
      in_var_COLOR: "color",
      in_var_TEXCOORD0: "uv",
      in_var_TEXCOORD1: "uv1",
      in_var_TEXCOORD2: "uv2",
      in_var_TEXCOORD3: "uv3",
      in_var_BLENDINDICES: "skinIndex",
      in_var_BLENDWEIGHT: "skinWeight",
    };
    for (const [generated, three] of Object.entries(attributes)) {
      output = output.replace(new RegExp(`\\b${generated}\\b`, "g"), three);
    }
  } else {
    // SPIRV-Cross names stage outputs and inputs independently. WebGL2 links
    // varyings by name (location qualifiers are not available until later
    // ESSL versions), so make fragment inputs use the vertex-stage names.
    output = output.replace(/\bin_var_/g, "out_var_");
  }
  return `${output.trim()}\n`;
}

export function crossCompileGlsl(
  executable: string,
  input: string,
  output: string,
  stage: ShaderStage,
): void {
  execFileSync(
    executable,
    [input, "--es", "--version", "300", "--glsl-emit-ubo-as-plain-uniforms", "--output", output],
    { stdio: "inherit" },
  );
  writeFileSync(output, postprocessGlsl(readFileSync(output, "utf8"), stage));
}

export function writeReflection(executable: string, input: string, output: string): void {
  execFileSync(executable, [input, "--reflect", "--output", output], { stdio: "inherit" });
}
