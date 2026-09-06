import { LilToonMaterial, warnLilToon } from './chunk-QFSBPSQT.js';
import { Loader, FileLoader } from 'three';

// src/material/LilToonMaterialFactory.ts
var LilToonMaterialFactory = class {
  create(source, textures = {}) {
    return new LilToonMaterial({
      renderMode: source.renderMode,
      properties: source.properties,
      textures
    });
  }
};
var LilToonMaterialLoader = class extends Loader {
  /** Non-fatal compatibility warnings. Omit to log them to the console. */
  onWarning;
  constructor(manager) {
    super(manager);
  }
  parse(json) {
    const value = typeof json === "string" ? JSON.parse(json) : json;
    const material = new LilToonMaterialFactory().create(value);
    for (const warning of material.getWarnings()) {
      if (this.onWarning) this.onWarning(warning);
      else
        warnLilToon(
          `${warning.materialName} (${warning.shaderKey}): ${warning.message}`
        );
    }
    return material;
  }
  load(url, onLoad, onProgress, onError) {
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
      onError
    );
  }
};

export { LilToonMaterialFactory, LilToonMaterialLoader };
