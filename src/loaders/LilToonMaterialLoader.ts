import { FileLoader, Loader, type LoadingManager } from "three";
import { LilToonMaterialFactory } from "../material/LilToonMaterialFactory.js";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { SerializedLilToonMaterial } from "../material/LilToonMaterialState.js";

export class LilToonMaterialLoader extends Loader<LilToonMaterial> {
  constructor(manager?: LoadingManager) {
    super(manager);
  }

  parse(json: string | SerializedLilToonMaterial) {
    const value = typeof json === "string" ? JSON.parse(json) as SerializedLilToonMaterial : json;
    return new LilToonMaterialFactory().create(value);
  }

  load(
    url: string,
    onLoad: (material: ReturnType<LilToonMaterialLoader["parse"]>) => void,
    onProgress?: (event: ProgressEvent) => void,
    onError?: (error: unknown) => void,
  ): void {
    const loader = new FileLoader(this.manager);
    loader.setPath(this.path);
    loader.setRequestHeader(this.requestHeader);
    loader.setWithCredentials(this.withCredentials);
    loader.load(
      url,
      (data) => {
        try {
          onLoad(this.parse(String(data)));
        } catch (error) {
          onError?.(error);
          this.manager.itemError(url);
        }
      },
      onProgress,
      onError,
    );
  }
}
