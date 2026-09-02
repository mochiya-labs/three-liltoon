import { DataTexture, Vector4 } from "three";
import { describe, expect, it } from "vitest";
import type { GLTFParser } from "three/examples/jsm/loaders/GLTFLoader.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { LILTOON_GLTF_EXTENSION, LILTOON_GLTF_SPEC_VERSION } from "../../src/loaders/types.js";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";

describe("GLTFLilToonExtension", () => {
  it("associates a custom material with its glTF material index", async () => {
    const associations = new Map();
    const parser = {
      json: {
        materials: [{
          name: "Body",
          extensions: {
            [LILTOON_GLTF_EXTENSION]: {
              specVersion: LILTOON_GLTF_SPEC_VERSION,
              renderMode: "opaque",
              properties: { _UseShadow: 1 },
            },
          },
        }],
      },
      associations,
      getDependency: () => Promise.reject(new Error("No textures expected")),
    } as unknown as GLTFParser;

    const material = await new GLTFLilToonExtension(parser).loadMaterial(0);

    expect(material).not.toBeNull();
    expect(associations.get(material!)).toEqual({ materials: 0 });
  });

  it("loads MatCap masks and independent normal-map transforms", async () => {
    const textures = [new DataTexture(), new DataTexture(), new DataTexture(), new DataTexture()];
    const parser = {
      json: {
        materials: [{
          extensions: {
            [LILTOON_GLTF_EXTENSION]: {
              specVersion: LILTOON_GLTF_SPEC_VERSION,
              properties: {
                _BumpMap_ST: [2, 3, 0.1, 0.2],
                _Bump2ndMap_ST: [7, 5, 0.3, 0.4],
                _UseReflection: 1,
              },
              textures: {
                _BumpMap: { index: 0 },
                _Bump2ndMap: { index: 1 },
                _MatCapBlendMask: { index: 2 },
                _MetallicGlossMap: { index: 3 },
              },
            },
          },
        }],
      },
      associations: new Map(),
      getDependency: (_kind: string, index: number) => Promise.resolve(textures[index]),
    } as unknown as GLTFParser;

    const material = await new GLTFLilToonExtension(parser).loadMaterial(0);

    expect(material).toBeInstanceOf(LilToonMaterial);
    const lilToonMaterial = material as LilToonMaterial;
    expect(lilToonMaterial.fragmentShader).toContain("Combined_MatCapBlendMask");
    expect(lilToonMaterial.fragmentShader).toContain("Combined_MetallicGlossMap");
    expect((lilToonMaterial.globalUniforms._BumpMap_ST as Vector4).toArray()).toEqual([2, 3, 0.1, 0.2]);
    expect((lilToonMaterial.globalUniforms._Bump2ndMap_ST as Vector4).toArray()).toEqual([7, 5, 0.3, 0.4]);
  });

  it("loads layered color masks together with MatCap masks", async () => {
    const textures = [new DataTexture(), new DataTexture(), new DataTexture(), new DataTexture()];
    const parser = {
      json: {
        materials: [{
          extensions: {
            [LILTOON_GLTF_EXTENSION]: {
              specVersion: LILTOON_GLTF_SPEC_VERSION,
              renderMode: "transparent",
              textures: {
                _Main2ndTex: { index: 0 },
                _Main2ndBlendMask: { index: 1 },
                _Main3rdTex: { index: 0 },
                _Main3rdBlendMask: { index: 2 },
                _MatCapBlendMask: { index: 3 },
              },
            },
          },
        }],
      },
      associations: new Map(),
      getDependency: (_kind: string, index: number) => Promise.resolve(textures[index]),
    } as unknown as GLTFParser;

    const material = await new GLTFLilToonExtension(parser).loadMaterial(0) as LilToonMaterial;

    expect(material.fragmentShader).toContain("Combined_Main2ndBlendMask");
    expect(material.fragmentShader).toContain("Combined_Main3rdBlendMask");
    expect(material.fragmentShader).toContain("Combined_MatCapBlendMask");
  });
});
