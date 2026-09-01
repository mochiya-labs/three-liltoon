import { describe, expect, it } from "vitest";
import type { GLTFParser } from "three/examples/jsm/loaders/GLTFLoader.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { LILTOON_GLTF_EXTENSION, LILTOON_GLTF_SPEC_VERSION } from "../../src/loaders/types.js";

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
});
