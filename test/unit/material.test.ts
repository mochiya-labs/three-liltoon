import { describe, expect, it } from "vitest";
import { DataTexture, Vector4 } from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { LILTOON_GLTF_SPEC_VERSION } from "../../src/loaders/types.js";

describe("LilToonMaterial", () => {
  it("preserves lilToon property names and updates generated uniforms", () => {
    const material = new LilToonMaterial({
      properties: { _Color: [0.8, 0.2, 0.3, 1], _UseShadow: 1 },
    });
    expect(material.getProperty("_UseShadow")).toBe(1);
    expect(material.featureSet.shadow).toBe(true);
    expect(material.globalUniforms._Color).toBeInstanceOf(Vector4);
    expect((material.globalUniforms._Color as Vector4).toArray()).toEqual([0.8, 0.2, 0.3, 1]);
    material.setProperty("_ShadowBorder", 0.42);
    expect(material.globalUniforms._ShadowBorder).toBe(0.42);
  });

  it("binds one texture to every generated sampler that uses its lilToon property", () => {
    const material = new LilToonMaterial();
    const texture = new DataTexture();
    material.setTexture("_MainTex", texture);
    const bound = Object.entries(material.uniforms)
      .filter(([name]) => name.includes("Combined_MainTex"))
      .map(([, uniform]) => uniform.value);
    expect(bound.length).toBeGreaterThan(0);
    expect(bound.every((value) => value === texture)).toBe(true);
  });

  it("serializes stable lilToon property names and caller-owned texture references", () => {
    const material = new LilToonMaterial({ properties: { _UseRim: 1 } });
    const texture = new DataTexture();
    material.setTexture("_MainTex", texture);
    const serialized = material.toLilToonJSON((_value, property) => `texture:${property}`);
    expect(serialized.renderMode).toBe("opaque");
    expect(serialized.specVersion).toBe(LILTOON_GLTF_SPEC_VERSION);
    expect(serialized.properties._UseRim).toBe(1);
    expect(serialized.textures._MainTex).toBe("texture:_MainTex");
    expect(serialized.lilToonVersion).toMatch(/^2\./);
  });

  it("preserves lilToon state when Three clones a material", () => {
    const texture = new DataTexture();
    const material = new LilToonMaterial({
      renderMode: "transparent",
      properties: { _Color: [0.4, 0.5, 0.6, 0.7], _UseRim: 1 },
      textures: { _MainTex: texture },
    });

    const clone = material.clone();

    expect(clone).toBeInstanceOf(LilToonMaterial);
    expect(clone.renderMode).toBe("transparent");
    expect(clone.getProperty("_UseRim")).toBe(1);
    expect(clone.lilToonTextures._MainTex).toBe(texture);
    expect(clone.globalUniforms).not.toBe(material.globalUniforms);
    expect(clone.uniforms._Globals.value).toBe(clone.globalUniforms);
    expect((clone.globalUniforms._Color as Vector4).toArray()).toEqual([0.4, 0.5, 0.6, 0.7]);
  });

  it("enables the outline only when lilToon's outline toggle is enabled", () => {
    const material = new LilToonMaterial({
      properties: { _UseOutline: 0, _OutlineWidth: 0.08 },
    });
    expect(material.featureSet.outline).toBe(false);
    material.setProperty("_UseOutline", 1);
    expect(material.featureSet.outline).toBe(true);
  });
});
