import {
  DataTexture,
  LinearFilter,
  LinearMipmapLinearFilter,
  LinearSRGBColorSpace,
  RGBAFormat,
  RepeatWrapping,
  SRGBColorSpace,
  Texture,
  UnsignedByteType,
} from "three";
import { LILTOON_TEXTURE_SEMANTICS } from "../generated/textureSemantics.js";

const neutralTextures = new Map<string, DataTexture>();

function pixelForDefault(name: string): [number, number, number, number] {
  switch (name.toLowerCase()) {
    case "black": return [0, 0, 0, 255];
    case "gray": return [128, 128, 128, 255];
    case "bump": return [128, 128, 255, 255];
    case "red": return [255, 0, 0, 255];
    case "white":
    default: return [255, 255, 255, 255];
  }
}

export function getNeutralTexture(name = "white"): DataTexture {
  const existing = neutralTextures.get(name);
  if (existing) return existing;
  const texture = new DataTexture(
    new Uint8Array(pixelForDefault(name)),
    1,
    1,
    RGBAFormat,
    UnsignedByteType,
  );
  texture.name = `three-liltoon:${name}`;
  texture.wrapS = RepeatWrapping;
  texture.wrapT = RepeatWrapping;
  texture.minFilter = LinearFilter;
  texture.magFilter = LinearFilter;
  texture.generateMipmaps = false;
  texture.needsUpdate = true;
  neutralTextures.set(name, texture);
  return texture;
}

export function normalizeLilToonTexture(property: string, texture: Texture): Texture {
  const semantic = (LILTOON_TEXTURE_SEMANTICS as Record<string, "color" | "normal" | "data">)[property];
  texture.colorSpace = semantic === "color" ? SRGBColorSpace : LinearSRGBColorSpace;
  texture.flipY = false;
  texture.wrapS ||= RepeatWrapping;
  texture.wrapT ||= RepeatWrapping;
  if (texture.minFilter === undefined) texture.minFilter = LinearMipmapLinearFilter;
  texture.needsUpdate = true;
  return texture;
}
