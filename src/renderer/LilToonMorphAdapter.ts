import {
  DataArrayTexture,
  FloatType,
  RGBAFormat,
  Vector4,
  type BufferAttribute,
  type BufferGeometry,
  type InterleavedBufferAttribute,
  type Mesh,
  type WebGLRenderer,
} from "three";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";

type MorphAttribute = BufferAttribute | InterleavedBufferAttribute;

interface MorphTextureEntry {
  count: number;
  hasPositions: boolean;
  hasNormals: boolean;
  vertexCount: number;
  texture: DataArrayTexture;
  width: number;
  height: number;
  stride: number;
}

function writeAttribute(
  target: Float32Array,
  offset: number,
  attribute: MorphAttribute | undefined,
  vertex: number,
): void {
  if (!attribute) return;
  target[offset] = attribute.getX(vertex);
  target[offset + 1] = attribute.getY(vertex);
  target[offset + 2] = attribute.getZ(vertex);
  target[offset + 3] = attribute.itemSize >= 4 ? attribute.getW(vertex) : 0;
}

export class LilToonMorphAdapter {
  readonly #textures = new WeakMap<BufferGeometry, MorphTextureEntry>();

  update(
    mesh: Mesh,
    material: LilToonMaterial,
    renderer: WebGLRenderer,
  ): void {
    const positions = mesh.geometry.morphAttributes.position as MorphAttribute[] | undefined;
    const normals = mesh.geometry.morphAttributes.normal as MorphAttribute[] | undefined;
    const count = Math.min(64, Math.max(positions?.length ?? 0, normals?.length ?? 0));
    material.globalUniforms.uMorphTargetCount = count;
    if (count === 0) {
      material.setSystemTexture("__morphs", null);
      return;
    }
    let entry = this.#textures.get(mesh.geometry);
    const vertexCount = mesh.geometry.attributes.position.count;
    const hasPositions = Boolean(positions?.length);
    const hasNormals = Boolean(normals?.length);
    if (
      !entry || entry.count !== count || entry.vertexCount !== vertexCount ||
      entry.hasPositions !== hasPositions || entry.hasNormals !== hasNormals
    ) {
      entry?.texture.dispose();
      entry = this.createTexture(
        positions,
        normals,
        count,
        vertexCount,
        renderer.capabilities.maxTextureSize,
      );
      this.#textures.set(mesh.geometry, entry);
      const dispose = () => {
        entry?.texture.dispose();
        this.#textures.delete(mesh.geometry);
        mesh.geometry.removeEventListener("dispose", dispose);
      };
      mesh.geometry.addEventListener("dispose", dispose);
    }
    const influences = (mesh.morphTargetInfluences ?? []).slice(0, count);
    const sum = influences.reduce((total, influence) => total + influence, 0);
    const target = material.globalUniforms.uMorphTargetInfluences;
    if (Array.isArray(target)) {
      for (let index = 0; index < target.length; index += 1) target[index] = influences[index] ?? 0;
    }
    material.globalUniforms.uMorphVertexDataStride = entry.stride;
    material.globalUniforms.uMorphHasPositions = Number(entry.hasPositions);
    material.globalUniforms.uMorphHasNormals = Number(entry.hasNormals);
    material.globalUniforms.uMorphTargetsRelative = Number(mesh.geometry.morphTargetsRelative);
    material.globalUniforms.uMorphTargetBaseInfluence = mesh.geometry.morphTargetsRelative ? 1 : 1 - sum;
    const size = material.globalUniforms.uMorphTargetsTextureSize;
    if (size instanceof Vector4) size.set(entry.width, entry.height, 1 / entry.width, 1 / entry.height);
    material.setSystemTexture("__morphs", entry.texture);
  }

  private createTexture(
    positions: MorphAttribute[] | undefined,
    normals: MorphAttribute[] | undefined,
    count: number,
    vertexCount: number,
    maximumWidth: number,
  ): MorphTextureEntry {
    const hasPositions = Boolean(positions?.length);
    const hasNormals = Boolean(normals?.length);
    const stride = Number(hasPositions) + Number(hasNormals);
    const texelCount = vertexCount * stride;
    const width = Math.min(maximumWidth, texelCount);
    const height = Math.ceil(texelCount / width);
    const layerSize = width * height * 4;
    const data = new Float32Array(layerSize * count);
    for (let target = 0; target < count; target += 1) {
      for (let vertex = 0; vertex < vertexCount; vertex += 1) {
        let component = 0;
        if (hasPositions) {
          writeAttribute(data, target * layerSize + (vertex * stride + component) * 4, positions?.[target], vertex);
          component += 1;
        }
        if (hasNormals) {
          writeAttribute(data, target * layerSize + (vertex * stride + component) * 4, normals?.[target], vertex);
        }
      }
    }
    const texture = new DataArrayTexture(data, width, height, count);
    texture.format = RGBAFormat;
    texture.type = FloatType;
    texture.needsUpdate = true;
    return { count, hasPositions, hasNormals, vertexCount, texture, width, height, stride };
  }
}
