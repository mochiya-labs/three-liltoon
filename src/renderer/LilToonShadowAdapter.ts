import { Matrix4, Vector4, type DirectionalLight, type Texture } from "three";
import type { LilToonGlobalUniforms } from "./LilToonUniformBinder.js";

export interface LilToonShadowBinding {
  texture: Texture | null;
}

export class LilToonShadowAdapter {
  bind(light: DirectionalLight | undefined, globals: LilToonGlobalUniforms): LilToonShadowBinding {
    const shadow = light?.castShadow ? light.shadow : undefined;
    const targetMatrix = globals.uMainShadowMatrix;
    if (targetMatrix instanceof Matrix4) {
      targetMatrix.copy(shadow?.matrix ?? new Matrix4()).transpose();
    }
    const targetSize = globals.uShadowMapSize;
    if (targetSize instanceof Vector4) {
      const width = shadow?.mapSize.x ?? 1;
      const height = shadow?.mapSize.y ?? 1;
      targetSize.set(width, height, 1 / Math.max(1, width), 1 / Math.max(1, height));
    }
    globals.uShadowBias = shadow?.bias ?? 0;
    globals.uShadowNormalBias = shadow?.normalBias ?? 0;
    return { texture: shadow?.map?.texture ?? null };
  }
}
