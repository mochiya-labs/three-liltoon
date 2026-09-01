import { readFileSync } from "node:fs";
import { resolve } from "node:path";
import { describe, expect, it } from "vitest";
import { parseShaderLab } from "../../tools/shaderlab/parser.js";
import { PROJECT_ROOT } from "../../tools/paths.js";

describe("ShaderLab parser", () => {
  it("extracts the canonical lilToon material schema", () => {
    const source = readFileSync(
      resolve(PROJECT_ROOT, "vendor/lilToon/Assets/lilToon/Shader/lts.shader"),
      "utf8",
    );
    const shader = parseShaderLab(source);
    expect(shader.name).toBe("lilToon");
    expect(shader.properties.length).toBeGreaterThan(500);
    expect(shader.properties.find((property) => property.name === "_Color")).toMatchObject({
      type: "Color",
      defaultValue: [1, 1, 1, 1],
      attributes: ["lilHDR", "MainColor"],
    });
    expect(shader.properties.find((property) => property.name === "_MainTex")).toMatchObject({
      type: "2D",
      defaultValue: { texture: "white" },
    });
    expect(shader.properties.find((property) => property.name === "_Cutoff")).toMatchObject({
      type: "Range",
      range: [-0.001, 1.001],
      defaultValue: 0.5,
    });
  });

  it("extracts upstream opaque pass recipes and states", () => {
    const source = readFileSync(
      resolve(PROJECT_ROOT, "vendor/lilToon/Assets/lilToon/Shader/ltspass_opaque.shader"),
      "utf8",
    );
    const shader = parseShaderLab(source);
    const forward = shader.subShaders[0]?.passes.find((pass) => pass.name === "FORWARD");
    expect(forward).toBeDefined();
    expect(forward?.tags).toEqual({ LightMode: "ForwardBase" });
    expect(forward?.defines.LIL_PASS_FORWARD).toBe(true);
    expect(forward?.includes).toContain("Includes/lil_pass_forward.hlsl");
    expect(forward?.renderState.cull).toEqual({ property: "_Cull" });
    expect(forward?.renderState.blend).toEqual([
      { property: "_SrcBlend" },
      { property: "_DstBlend" },
      { property: "_SrcBlendAlpha" },
      { property: "_DstBlendAlpha" },
    ]);
  });
});
