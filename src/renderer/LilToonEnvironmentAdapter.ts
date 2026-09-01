import { CubeTexture, type Scene, type Texture } from "three";
import { warnLilToon } from "../utils/diagnostics.js";

export class LilToonEnvironmentAdapter {
  #warnedEquirectangular = false;

  read(scene: Scene): Texture | null {
    if (!scene.environment) return null;
    if (scene.environment instanceof CubeTexture) return scene.environment;
    if (!this.#warnedEquirectangular) {
      this.#warnedEquirectangular = true;
      warnLilToon("Raw equirectangular/PMREM environment access is not public in WebGLRenderer; use a CubeTexture for lilToon reflection.");
    }
    return null;
  }
}
