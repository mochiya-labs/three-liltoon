import type { Texture } from "three";

const PREVIEW_EDGE = 192;
const previewCache = new WeakMap<object, string | null>();

type SizedImage = {
  width?: number;
  height?: number;
};

function imageSize(image: unknown) {
  if (!image || typeof image !== "object") return null;
  const { width, height } = image as SizedImage;
  if (!width || !height) return null;
  return { width, height };
}

export function createTexturePreview(texture: Texture): string | undefined {
  if (typeof document === "undefined") return undefined;

  const image = texture.image as unknown;
  if (!image || typeof image !== "object" || Array.isArray(image)) return undefined;

  const cached = previewCache.get(image);
  if (cached !== undefined) return cached ?? undefined;

  const size = imageSize(image);
  if (!size) {
    previewCache.set(image, null);
    return undefined;
  }

  const canvas = document.createElement("canvas");
  canvas.width = PREVIEW_EDGE;
  canvas.height = PREVIEW_EDGE;
  const context = canvas.getContext("2d");
  if (!context) return undefined;

  const scale = Math.min(PREVIEW_EDGE / size.width, PREVIEW_EDGE / size.height);
  const width = Math.max(1, Math.round(size.width * scale));
  const height = Math.max(1, Math.round(size.height * scale));
  const x = Math.floor((PREVIEW_EDGE - width) / 2);
  const y = Math.floor((PREVIEW_EDGE - height) / 2);

  try {
    context.imageSmoothingEnabled = true;
    context.imageSmoothingQuality = "high";
    context.drawImage(image as CanvasImageSource, x, y, width, height);
    const preview = canvas.toDataURL("image/png");
    previewCache.set(image, preview);
    return preview;
  } catch {
    // Compressed and GPU-only textures do not always expose a drawable source.
    previewCache.set(image, null);
    return undefined;
  }
}
