import { execFileSync } from "node:child_process";
import { existsSync, readFileSync } from "node:fs";
import { resolve } from "node:path";
import { describe, expect, it } from "vitest";
import { PROJECT_ROOT } from "../../tools/paths.js";

describe("generated shader artifacts", () => {
  const variants = ["minimal-opaque", "standard-opaque", "standard-cutout", "standard-transparent", "outline"];

  it.each(variants)("ships validated artifacts for %s", (variant) => {
    for (const stage of ["vert", "frag"]) {
      expect(existsSync(resolve(PROJECT_ROOT, `shader/generated/spirv/${variant}.${stage}.spv`))).toBe(true);
      const glsl = readFileSync(resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.${stage}.glsl`), "utf8");
      expect(glsl).toMatch(/^#version 300 es/);
      expect(glsl).not.toContain("layout(std140) uniform");
    }
  });

  it("uses Three-compatible vertex attribute names for avatar deformation", () => {
    const vertex = readFileSync(
      resolve(PROJECT_ROOT, "shader/generated/glsl/standard-opaque.vert.glsl"),
      "utf8",
    );
    expect(vertex).toContain("in vec4 position;");
    expect(vertex).toContain("in vec3 normal;");
    expect(vertex).toContain("in vec4 skinIndex;");
    expect(vertex).toContain("in vec4 skinWeight;");
    expect(vertex).toContain("sampler2DArray");
  });

  it.each(variants)("stays within WebGL2's minimum per-stage texture-unit limits for %s", (variant) => {
    for (const stage of ["vert", "frag"] as const) {
      const glsl = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.${stage}.glsl`),
        "utf8",
      );
      const samplerCount = [...glsl.matchAll(/uniform\s+(?:\w+\s+)?sampler(?:2D|2DArray|Cube|2DShadow)\s+/g)].length;
      expect(samplerCount, `${variant}.${stage} has ${samplerCount} active samplers`).toBeLessThanOrEqual(16);
    }
  });

  it.each(variants)("uses matching WebGL2 varying names for %s", (variant) => {
    const vertex = readFileSync(
      resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.vert.glsl`),
      "utf8",
    );
    const fragment = readFileSync(
      resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.frag.glsl`),
      "utf8",
    );
    const vertexOutputs = new Set(
      [...vertex.matchAll(/^out\s+(?:\w+\s+)?\w+\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/gm)].map((match) => match[1]),
    );
    const fragmentInputs = [
      ...fragment.matchAll(/^in\s+(?:\w+\s+)?\w+\s+([A-Za-z_][A-Za-z0-9_]*)\s*;/gm),
    ].map((match) => match[1]);
    expect(fragmentInputs.every((name) => vertexOutputs.has(name))).toBe(true);
  });

  it("leaves the upstream submodule untouched", () => {
    const status = execFileSync("git", ["status", "--short"], {
      cwd: resolve(PROJECT_ROOT, "vendor/lilToon"),
      encoding: "utf8",
    });
    expect(status).toBe("");
  });
});
