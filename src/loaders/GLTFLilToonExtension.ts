import type { Material, Mesh, Texture } from "three";
import type {
  GLTF,
  GLTFLoaderPlugin,
  GLTFParser,
} from "three/examples/jsm/loaders/GLTFLoader.js";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonRendererAdapter } from "../renderer/LilToonRendererAdapter.js";
import { OutlinePass } from "../passes/OutlinePass.js";
import { ShadowCasterPass } from "../passes/ShadowCasterPass.js";
import {
  LILTOON_GLTF_EXTENSION,
  type GLTFLilToonMaterialDefinition,
} from "./types.js";

export interface GLTFLilToonExtensionOptions {
  rendererAdapter?: LilToonRendererAdapter;
  addOutlines?: boolean;
  configureShadowCasters?: boolean;
}

function renderModeFromDefinition(definition: GLTFLilToonMaterialDefinition) {
  if (definition.renderMode) return definition.renderMode;
  const name = definition.shaderVariant?.toLowerCase() ?? "";
  if (name.includes("cutout")) return "cutout" as const;
  if (name.includes("trans")) return "transparent" as const;
  return "opaque" as const;
}

export class GLTFLilToonExtension implements GLTFLoaderPlugin {
  readonly name = LILTOON_GLTF_EXTENSION;
  readonly #outlinePass = new OutlinePass();
  readonly #shadowCasterPass = new ShadowCasterPass();

  constructor(
    readonly parser: GLTFParser,
    readonly options: GLTFLilToonExtensionOptions = {},
  ) {}

  loadMaterial(materialIndex: number): Promise<Material> | null {
    const materialDefinition = this.parser.json.materials?.[materialIndex];
    const definition = materialDefinition?.extensions?.[this.name] as GLTFLilToonMaterialDefinition | undefined;
    if (!definition) return null;
    return (async () => {
      const textures: Record<string, Texture> = {};
      await Promise.all(
        Object.entries(definition.textures ?? {}).map(async ([property, textureInfo]) => {
          const index = typeof textureInfo === "number" ? textureInfo : textureInfo.index;
          textures[property] = await this.parser.getDependency("texture", index) as Texture;
        }),
      );
      const material = new LilToonMaterial({
        name: materialDefinition.name,
        renderMode: renderModeFromDefinition(definition),
        properties: definition.properties,
        textures,
        deformation: true,
      });
      material.setRendererAdapter(this.options.rendererAdapter);
      return material;
    })();
  }

  async afterRoot(result: GLTF): Promise<void> {
    const meshes: Mesh[] = [];
    result.scene.traverse((object) => {
      if ((object as Mesh).isMesh) meshes.push(object as Mesh);
    });
    for (const mesh of meshes) {
      const materials = Array.isArray(mesh.material) ? mesh.material : [mesh.material];
      for (const material of materials) {
        if (!(material instanceof LilToonMaterial)) continue;
        material.setRendererAdapter(this.options.rendererAdapter);
        if (this.options.configureShadowCasters !== false) this.#shadowCasterPass.configure(mesh, material);
        if (this.options.addOutlines !== false && material.featureSet.outline) this.#outlinePass.attach(mesh, material);
      }
    }
    if (this.options.rendererAdapter) this.options.rendererAdapter.attach(result.scene);
  }
}
