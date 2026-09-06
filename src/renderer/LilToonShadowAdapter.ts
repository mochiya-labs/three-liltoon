import { Matrix4, Vector4, type DirectionalLight, type Texture } from "three";
import type { LilToonGlobalUniforms } from "./LilToonUniformBinder.js";
import { getNeutralTexture } from "../utils/texture.js";

export interface LilToonShadowBinding {
	texture: Texture | null;
}

export class LilToonShadowAdapter {
	bind(
		light: DirectionalLight | undefined,
		globals: LilToonGlobalUniforms,
		shadowsEnabled = true,
	): LilToonShadowBinding {
		// A disabled renderer can retain an old map. A casting light can also have
		// no map yet. Neither case may leave an active projection/bias behind.
		const shadow =
			shadowsEnabled && light?.castShadow && light.shadow.map?.texture
				? light.shadow
				: undefined;
		const targetMatrix = globals.uMainShadowMatrix;
		if (targetMatrix instanceof Matrix4) {
			if (shadow) targetMatrix.copy(shadow.matrix).transpose();
			else targetMatrix.identity();
		}
		const targetSize = globals.uShadowMapSize;
		if (targetSize instanceof Vector4) {
			const width = shadow?.mapSize.x ?? 1;
			const height = shadow?.mapSize.y ?? 1;
			targetSize.set(
				width,
				height,
				1 / Math.max(1, width),
				1 / Math.max(1, height),
			);
		}
		globals.uShadowBias = shadow?.bias ?? 0;
		globals.uShadowNormalBias = shadow?.normalBias ?? 0;
		// Null sampler2D uniforms become zero-depth textures in Three. White RGBA
		// decodes to far depth 1, so the identity projection is unoccluded everywhere.
		return { texture: shadow?.map?.texture ?? getNeutralTexture("white") };
	}
}
