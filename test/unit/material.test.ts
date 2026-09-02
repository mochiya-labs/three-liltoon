import { describe, expect, it } from "vitest";
import {
  BufferGeometry,
  DataTexture,
  Group,
  Mesh,
  PerspectiveCamera,
  SRGBColorSpace,
  Scene,
  Vector2,
  Vector4,
  type WebGLRenderer,
} from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { LILTOON_GLTF_SPEC_VERSION } from "../../src/loaders/types.js";
import { LILTOON_TEXTURE_SEMANTICS } from "../../src/generated/textureSemantics.js";
import { LILTOON_DEFAULTS } from "../../src/generated/defaults.js";

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

  it("converts linear shader output for an sRGB display", () => {
    const material = new LilToonMaterial();

    expect(material.fragmentShader).toContain("uniform uint uLilToonOutputSrgb");
    expect(material.fragmentShader).toContain("out_var_SV_Target.rgb = mix(");
    expect(material.uniforms.uLilToonOutputSrgb?.value).toBe(1);
  });

  it("uses the MatCap-mask shader profile and preserves independent normal transforms", () => {
    const firstNormal = new DataTexture();
    const secondNormal = new DataTexture();
    const matCapMask = new DataTexture();
    const material = new LilToonMaterial({
      properties: {
        _UseBumpMap: 1,
        _BumpMap_ST: [2, 3, 0.1, 0.2],
        _UseBump2ndMap: 1,
        _Bump2ndMap_ST: [7, 5, 0.3, 0.4],
        _UseMatCap: 1,
      },
      textures: {
        _BumpMap: firstNormal,
        _Bump2ndMap: secondNormal,
        _MatCapBlendMask: matCapMask,
      },
    });

    expect(material.fragmentShader).toContain("Combined_MatCapBlendMask");
    expect((material.globalUniforms._BumpMap_ST as Vector4).toArray()).toEqual([2, 3, 0.1, 0.2]);
    expect((material.globalUniforms._Bump2ndMap_ST as Vector4).toArray()).toEqual([7, 5, 0.3, 0.4]);
    expect(Object.entries(material.uniforms).some(
      ([name, uniform]) => name.includes("Combined_MatCapBlendMask") && uniform.value === matCapMask,
    )).toBe(true);
  });

  it("uses linear reflection data textures and a surface-control shader profile", () => {
    const metallic = new DataTexture();
    const smoothness = new DataTexture();
    const reflectionColor = new DataTexture();
    const material = new LilToonMaterial({
      properties: { _UseReflection: 1, _Metallic: 1, _Smoothness: 1 },
      textures: {
        _MetallicGlossMap: metallic,
        _SmoothnessTex: smoothness,
        _ReflectionColorTex: reflectionColor,
      },
    });

    expect(LILTOON_TEXTURE_SEMANTICS._MetallicGlossMap).toBe("data");
    expect(LILTOON_TEXTURE_SEMANTICS._SmoothnessTex).toBe("data");
    expect(LILTOON_TEXTURE_SEMANTICS._ReflectionColorTex).toBe("color");
    expect(LILTOON_DEFAULTS._Reflectance).toBeCloseTo(0.00309598, 7);
    expect(material.fragmentShader).toContain("Combined_MetallicGlossMap");
    expect(material.fragmentShader).toContain("Combined_SmoothnessTex");
    expect(material.fragmentShader).toContain("Combined_ReflectionColorTex");
  });

  it("applies independent masks to Main Color 2nd and 3rd in the layered MatCap profile", () => {
    const material = new LilToonMaterial({
      renderMode: "transparent",
      textures: {
        _Main2ndTex: new DataTexture(),
        _Main2ndBlendMask: new DataTexture(),
        _Main3rdTex: new DataTexture(),
        _Main3rdBlendMask: new DataTexture(),
        _MatCapBlendMask: new DataTexture(),
      },
    });

    expect(material.fragmentShader).toContain("Combined_Main2ndTex");
    expect(material.fragmentShader).toContain("Combined_Main2ndBlendMask");
    expect(material.fragmentShader).toContain("Combined_Main3rdTex");
    expect(material.fragmentShader).toContain("Combined_Main3rdBlendMask");
  });

  it("keeps Main Color 2nd with reflection controls when MatCap normals share the primary normal", () => {
    const normal = new DataTexture();
    const material = new LilToonMaterial({
      renderMode: "transparent",
      properties: {
        _MatCapBumpMap_ST: [2, 3, 0.1, 0.2],
        _MatCap2ndBumpMap_ST: [7, 5, 0.3, 0.4],
      },
      textures: {
        _BumpMap: normal,
        _MatCapBumpMap: normal,
        _MatCap2ndBumpMap: normal,
        _Main2ndTex: new DataTexture(),
        _Main2ndBlendMask: new DataTexture(),
        _MetallicGlossMap: new DataTexture(),
        _SmoothnessTex: new DataTexture(),
        _ReflectionColorTex: new DataTexture(),
      },
    });

    expect(material.fragmentShader).toContain("Combined_Main2ndBlendMask");
    expect(material.fragmentShader).toContain("Combined_MetallicGlossMap");
    expect(material.fragmentShader).not.toContain("Combined_MatCapBumpMap");
    expect(material.fragmentShader).not.toContain("Combined_MatCap2ndBumpMap");
    expect((material.globalUniforms._MatCapBumpMap_ST as Vector4).toArray()).toEqual([2, 3, 0.1, 0.2]);
    expect((material.globalUniforms._MatCap2ndBumpMap_ST as Vector4).toArray()).toEqual([7, 5, 0.3, 0.4]);
  });

  it("samples the shadow border mask without duplicating shared MatCap normals", () => {
    const normal = new DataTexture();
    const shadowBorderMask = new DataTexture();
    const material = new LilToonMaterial({
      properties: { _UseShadow: 1, _UseMatCap: 1, _UseReflection: 1 },
      textures: {
        _BumpMap: normal,
        _MatCapBlendMask: new DataTexture(),
        _MetallicGlossMap: new DataTexture(),
        _ShadowBorderMask: shadowBorderMask,
      },
    });

    expect(material.fragmentShader).toContain("Combined_ShadowBorderMask");
    expect(material.fragmentShader).not.toContain("Combined_MatCapBumpMap");
    expect(Object.entries(material.uniforms).some(
      ([name, uniform]) => name.includes("Combined_ShadowBorderMask") && uniform.value === shadowBorderMask,
    )).toBe(true);
  });

  it("binds authored three-band shadow controls in the shadow-border profile", () => {
    const material = new LilToonMaterial({
      properties: {
        _UseShadow: 1,
        _ShadowColor: [0.59, 0.4, 0.4, 1],
        _ShadowNormalStrength: 1,
        _ShadowBorder: 0.726,
        _ShadowBlur: 0.1,
        _ShadowReceive: 1,
        _Shadow2ndColor: [0.37, 0.24, 0.24, 1],
        _Shadow2ndNormalStrength: 1,
        _Shadow2ndBorder: 0.599,
        _Shadow2ndBlur: 0.199,
        _Shadow2ndReceive: 1,
        _Shadow3rdColor: [0.14, 0.14, 0.14, 1],
        _Shadow3rdNormalStrength: 1,
        _Shadow3rdBorder: 0.457,
        _Shadow3rdBlur: 0.188,
        _Shadow3rdReceive: 0.518,
        _ShadowBorderColor: [0.13, 0.13, 0.13, 1],
        _ShadowBorderRange: 0.224,
        _ShadowEnvStrength: 0.391,
      },
      textures: { _ShadowBorderMask: new DataTexture() },
    });

    expect(material.featureSet.shadow).toBe(true);
    expect(material.featureSet.shadow3rd).toBe(true);
    expect(material.fragmentShader).toContain("Combined_ShadowBorderMask");
    expect(material.globalUniforms._ShadowBorder).toBe(0.726);
    expect(material.globalUniforms._Shadow2ndBorder).toBe(0.599);
    expect(material.globalUniforms._Shadow3rdBorder).toBe(0.457);
    expect(material.globalUniforms._ShadowEnvStrength).toBe(0.391);
    expect((material.globalUniforms._ShadowColor as Vector4).toArray()).toEqual([0.59, 0.4, 0.4, 1]);
    expect((material.globalUniforms._Shadow2ndColor as Vector4).toArray()).toEqual([0.37, 0.24, 0.24, 1]);
    expect((material.globalUniforms._Shadow3rdColor as Vector4).toArray()).toEqual([0.14, 0.14, 0.14, 1]);
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

  it("uploads per-object globals again when a shared material draws another mesh", () => {
    const material = new LilToonMaterial();
    const renderer = {
      outputColorSpace: SRGBColorSpace,
      getRenderTarget() {
        return null;
      },
      getDrawingBufferSize(target: Vector2) {
        return target.set(1280, 720);
      },
    } as unknown as WebGLRenderer;
    const scene = new Scene();
    const camera = new PerspectiveCamera();
    const mesh = new Mesh(new BufferGeometry(), material);

    material.uniformsNeedUpdate = false;
    material.onBeforeRender(
      renderer,
      scene,
      camera,
      mesh.geometry,
      mesh,
      new Group(),
    );

    expect(material.uniformsNeedUpdate).toBe(true);
  });
});
