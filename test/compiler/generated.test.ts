import { execFileSync } from "node:child_process";
import { existsSync, readFileSync } from "node:fs";
import { resolve } from "node:path";
import { describe, expect, it } from "vitest";
import { PROJECT_ROOT } from "../../tools/paths.js";

describe("generated shader artifacts", () => {
  const variants = [
    "minimal-opaque",
    "standard-opaque",
    "standard-cutout",
    "standard-transparent",
    "standard-opaque-dissolve-noise",
    "standard-cutout-dissolve-noise",
    "standard-transparent-dissolve-noise",
    "standard-opaque-matcap-mask",
    "standard-cutout-matcap-mask",
    "standard-transparent-matcap-mask",
    "standard-opaque-layered-matcap",
    "standard-cutout-layered-matcap",
    "standard-transparent-layered-matcap",
    "standard-opaque-surface-controls",
    "standard-cutout-surface-controls",
    "standard-transparent-surface-controls",
    "standard-opaque-layered-surface-controls",
    "standard-cutout-layered-surface-controls",
    "standard-transparent-layered-surface-controls",
    "outline",
  ];

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

  it.each([
    "standard-opaque",
    "standard-cutout",
    "standard-transparent",
    "standard-opaque-shadow-border",
    "standard-cutout-shadow-border",
    "standard-transparent-shadow-border",
    "outline",
  ])("applies receiver normal bias in the %s shadow lookup", (variant) => {
    const vertex = readFileSync(
      resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.vert.glsl`),
      "utf8",
    );
    const normalBiasReferences = vertex.match(/uShadowNormalBias/g) ?? [];
    expect(normalBiasReferences.length).toBeGreaterThanOrEqual(2);
  });

  it("uses Three.js's base-256 RGBA shadow-depth decoder", () => {
    const source = readFileSync(
      resolve(PROJECT_ROOT, "shader/compat/lil_web_shadow.hlsl"),
      "utf8",
    );
    expect(source).toContain("255.0 / 256.0");
    expect(source).toContain("1.0 / 256.0");
    expect(source).not.toContain("1.0 / 65025.0");
    expect(source).not.toContain("1.0 / 16581375.0");
  });

  it.each(["opaque", "cutout", "transparent"])(
    "samples both MatCap masks in the %s mask profile",
    (renderMode) => {
      const fragment = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/standard-${renderMode}-matcap-mask.frag.glsl`),
        "utf8",
      );
      expect(fragment).toContain("Combined_MatCapBlendMask");
      expect(fragment).toContain("Combined_MatCap2ndBlendMask");
      expect(fragment).toContain("_Globals._MatCapBlendMask_ST.xy");
      expect(fragment).toContain("_Globals._MatCap2ndBlendMask_ST.xy");
    },
  );

  it.each(["opaque", "cutout", "transparent"])(
    "samples layered color masks and masked MatCaps in the %s layered profile",
    (renderMode) => {
      const fragment = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/standard-${renderMode}-layered-matcap.frag.glsl`),
        "utf8",
      );
      for (const texture of [
        "Main2ndTex",
        "Main2ndBlendMask",
        "Main3rdTex",
        "Main3rdBlendMask",
        "MatCapBlendMask",
        "MatCapBumpMap",
        "MatCap2ndBlendMask",
        "MatCap2ndBumpMap",
      ]) {
        expect(fragment).toContain(`Combined_${texture}`);
      }
    },
  );

  it.each(["opaque", "cutout", "transparent"])(
    "samples Main Color 2nd and reflection controls in the %s layered surface profile",
    (renderMode) => {
      const fragment = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/standard-${renderMode}-layered-surface-controls.frag.glsl`),
        "utf8",
      );
      expect(fragment).toContain("Combined_Main2ndTex");
      expect(fragment).toContain("Combined_Main2ndBlendMask");
      expect(fragment).toContain("Combined_MetallicGlossMap");
      expect(fragment).toContain("Combined_SmoothnessTex");
      expect(fragment).toContain("Combined_ReflectionColorTex");
      expect(fragment).toContain("_Globals._MatCapBumpMap_ST.xy");
      expect(fragment).toContain("_Globals._MatCap2ndBumpMap_ST.xy");
    },
  );

  it.each(["opaque", "cutout", "transparent"])(
    "samples reflection controls, MatCap masks, and custom normals in the %s surface profile",
    (renderMode) => {
      const fragment = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/standard-${renderMode}-surface-controls.frag.glsl`),
        "utf8",
      );
      for (const texture of [
        "SmoothnessTex",
        "MetallicGlossMap",
        "ReflectionColorTex",
        "MatCapBlendMask",
        "MatCapBumpMap",
        "MatCap2ndBlendMask",
        "MatCap2ndBumpMap",
      ]) {
        expect(fragment).toContain(`Combined_${texture}`);
      }
      expect(fragment).toContain("_Globals._BumpMap_ST.xy");
      expect(fragment).toContain("_Globals._MatCapBumpMap_ST.xy");
      expect(fragment).toContain("_Globals._MatCap2ndBumpMap_ST.xy");
    },
  );

  it.each(variants)("stays within Three.js's 16 allocated texture units for %s", (variant) => {
    const samplers = new Set<string>();
    for (const stage of ["vert", "frag"] as const) {
      const glsl = readFileSync(
        resolve(PROJECT_ROOT, `shader/generated/glsl/${variant}.${stage}.glsl`),
        "utf8",
      );
      for (const match of glsl.matchAll(
        /uniform\s+(?:\w+\s+)?sampler(?:2D|2DArray|Cube|2DShadow)\s+([A-Za-z_][A-Za-z0-9_]*)/g,
      )) samplers.add(match[1]!);
    }
    expect(samplers.size, `${variant} makes Three.js allocate ${samplers.size} texture units`).toBeLessThanOrEqual(16);
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
