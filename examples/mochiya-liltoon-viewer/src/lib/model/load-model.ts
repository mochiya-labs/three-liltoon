import { VRMLoaderPlugin, VRMUtils, type VRM } from "@pixiv/three-vrm";
import { LilToonRendererAdapter, type LilToonWarning } from "three-liltoon";
import { GLTFLilToonExtension } from "three-liltoon/gltf";
import { Mesh, type WebGLRenderer } from "three";
import { GLTFLoader, type GLTF } from "three/addons/loaders/GLTFLoader.js";

import { inspectModel } from "./inspect-model";
import type { LoadedModel } from "./types";

function errorMessage(error: unknown) {
  if (error instanceof Error) return error.message;
  if (typeof ProgressEvent !== "undefined" && error instanceof ProgressEvent) {
    return "The browser could not read this model file.";
  }
  return "The model could not be loaded.";
}

export function loadModel(
  url: string,
  renderer: WebGLRenderer,
  onProgress: (progress?: number) => void,
): Promise<LoadedModel> {
  const adapter = new LilToonRendererAdapter(renderer);
  const loader = new GLTFLoader();
  const warnings: LilToonWarning[] = [];
  loader.register(
    (parser) =>
      new GLTFLilToonExtension(parser, {
        rendererAdapter: adapter,
        addOutlines: true,
        configureShadowCasters: true,
        onWarning: (warning) => warnings.push(warning),
      }),
  );
  loader.register((parser) => new VRMLoaderPlugin(parser));

  return new Promise((resolve, reject) => {
    loader.load(
      url,
      (gltf: GLTF) => {
        const vrm = gltf.userData.vrm as VRM | undefined;
        if (vrm) VRMUtils.rotateVRM0(vrm);

        gltf.scene.traverse((object) => {
          if (object instanceof Mesh) {
            object.castShadow = true;
            object.receiveShadow = true;
          }
        });

        resolve({
          scene: vrm?.scene ?? gltf.scene,
          vrm,
          animations: gltf.animations,
          inspection: inspectModel(gltf, warnings),
        });
      },
      (event) => {
        onProgress(event.total > 0 ? Math.min(100, (event.loaded / event.total) * 100) : undefined);
      },
      (error) => reject(new Error(errorMessage(error))),
    );
  });
}
