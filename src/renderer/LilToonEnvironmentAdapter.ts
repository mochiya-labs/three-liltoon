import { CubeTexture, Vector4, type Scene, type Texture } from "three";
import type { LilToonGlobalUniforms } from "./LilToonUniformBinder.js";
import { warnLilToon } from "../utils/diagnostics.js";

export class LilToonEnvironmentAdapter {
	#warnedEquirectangular = false;

	read(scene: Scene): Texture | null {
		if (!scene.environment) return null;
		if (scene.environment instanceof CubeTexture) return scene.environment;
		if (!this.#warnedEquirectangular) {
			this.#warnedEquirectangular = true;
			warnLilToon(
				"Raw equirectangular/PMREM environment access is not public in WebGLRenderer; use a CubeTexture for lilToon reflection.",
			);
		}
		return null;
	}

	bind(scene: Scene, globals: LilToonGlobalUniforms): Texture | null {
		const texture = this.read(scene);
		const hdr = globals.unity_SpecCube0_HDR;
		if (hdr instanceof Vector4) {
			// A regular Three.js CubeTexture is already display-decoded by its
			// color-space setting. These values make Unity's DecodeHDR path an
			// identity operation and, critically, mark the reflection probe valid.
			hdr.set(texture ? 1 : 0, 1, 0, 0);
		}
		return texture;
	}
}
