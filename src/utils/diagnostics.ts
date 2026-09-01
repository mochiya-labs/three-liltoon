export class UnsupportedFeatureError extends Error {
  constructor(message: string) {
    super(`[three-liltoon] ${message}`);
    this.name = "UnsupportedFeatureError";
  }
}

export function warnLilToon(message: string): void {
  console.warn(`[three-liltoon] ${message}`);
}

export function assertSupportedMaterial(properties: Record<string, unknown>): void {
  if (Number(properties._TessellationMode ?? 0) !== 0) {
    throw new UnsupportedFeatureError(
      "lilToon tessellation is not supported by the WebGL2 backend. Use pre-subdivided geometry.",
    );
  }
  if (Number(properties._UseVRCLightVolumes ?? 0) !== 0) {
    warnLilToon("VRC Light Volumes are unavailable; explicit Three.js lighting is used.");
  }
}
