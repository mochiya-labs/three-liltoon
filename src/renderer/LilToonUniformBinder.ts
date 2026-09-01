import {
  Color,
  Matrix4,
  Vector2,
  Vector3,
  Vector4,
  type Camera,
  type Object3D,
  type WebGLRenderer,
} from "three";
import { LILTOON_DEFAULTS } from "../generated/defaults.js";
import type { LilToonScalarOrVector } from "../material/LilToonMaterialParameters.js";

type UniformPrimitive = number | Matrix4 | Vector2 | Vector3 | Vector4 | UniformPrimitive[];
export type LilToonGlobalUniforms = Record<string, UniformPrimitive>;

function parseGlobalTypes(...shaders: string[]): Map<string, string> {
  const result = new Map<string, string>();
  for (const shader of shaders) {
    const body = /struct\s+type_Globals\s*\{([\s\S]*?)\};/.exec(shader)?.[1];
    if (!body) continue;
    for (const match of body.matchAll(/(?:lowp\s+|mediump\s+|highp\s+)?(mat4|vec4|vec3|vec2|float|uint|int)\s+([A-Za-z_][A-Za-z0-9_]*)(?:\[(\d+)\])?\s*;/g)) {
      result.set(match[2]!, `${match[1]}${match[3] ? `[${match[3]}]` : ""}`);
    }
  }
  return result;
}

function initialValue(type: string): UniformPrimitive {
  const array = /^(.*)\[(\d+)\]$/.exec(type);
  if (array) return Array.from({ length: Number(array[2]) }, () => initialValue(array[1]!));
  switch (type) {
    case "mat4": return new Matrix4();
    case "vec4": return new Vector4();
    case "vec3": return new Vector3();
    case "vec2": return new Vector2();
    default: return 0;
  }
}

function assignValue(current: UniformPrimitive, value: LilToonScalarOrVector | readonly number[]): UniformPrimitive {
  const source = value instanceof Color ? [value.r, value.g, value.b, 1] : value;
  if (current instanceof Vector4 && Array.isArray(source)) return current.fromArray([...source, 0, 0, 0, 0].slice(0, 4));
  if (current instanceof Vector3 && Array.isArray(source)) return current.fromArray([...source, 0, 0, 0].slice(0, 3));
  if (current instanceof Vector2 && Array.isArray(source)) return current.fromArray([...source, 0, 0].slice(0, 2));
  if (current instanceof Vector4 && source instanceof Vector4) return current.copy(source);
  if (current instanceof Vector3 && source instanceof Vector3) return current.copy(source);
  if (current instanceof Vector2 && source instanceof Vector2) return current.copy(source);
  if (typeof source === "boolean") return Number(source);
  if (typeof source === "number") return source;
  return current;
}

export function createGlobalUniforms(vertexShader: string, fragmentShader: string): LilToonGlobalUniforms {
  const globals: LilToonGlobalUniforms = {};
  for (const [name, type] of parseGlobalTypes(vertexShader, fragmentShader)) globals[name] = initialValue(type);
  for (const [name, value] of Object.entries(LILTOON_DEFAULTS)) {
    if (!(name in globals) || typeof value === "object" && !Array.isArray(value)) continue;
    globals[name] = assignValue(globals[name]!, value as number | readonly number[]);
  }
  for (const [name, value] of Object.entries(globals)) {
    if (name.endsWith("_ST") && value instanceof Vector4) value.set(1, 1, 0, 0);
    if (name.endsWith("_TexelSize") && value instanceof Vector4) value.set(1, 1, 1, 1);
  }
  (globals.uWorldTransformParams as Vector4 | undefined)?.set(0, 0, 0, 1);
  (globals.uScreenParams as Vector4 | undefined)?.set(1, 1, 1, 1);
  (globals.uProjectionParams as Vector4 | undefined)?.set(1, 0.1, 1000, 0.001);
  return globals;
}

export function setGlobalProperty(
  globals: LilToonGlobalUniforms,
  name: string,
  value: LilToonScalarOrVector,
): boolean {
  if (!(name in globals)) return false;
  globals[name] = assignValue(globals[name]!, value);
  return true;
}

const viewProjection = new Matrix4();
const inverseModel = new Matrix4();
const worldPosition = new Vector3();
const drawingBufferSize = new Vector2();

function uploadTransposed(target: UniformPrimitive | undefined, source: Matrix4): void {
  if (target instanceof Matrix4) target.copy(source).transpose();
}

export function updateObjectCameraUniforms(
  globals: LilToonGlobalUniforms,
  renderer: WebGLRenderer,
  camera: Camera,
  object: Object3D,
  elapsedSeconds: number,
): void {
  object.updateWorldMatrix(true, false);
  camera.updateWorldMatrix(true, false);
  uploadTransposed(globals.uModelMatrix, object.matrixWorld);
  inverseModel.copy(object.matrixWorld).invert();
  uploadTransposed(globals.uModelMatrixInverse, inverseModel);
  uploadTransposed(globals.uViewMatrix, camera.matrixWorldInverse);
  uploadTransposed(globals.uProjectionMatrix, camera.projectionMatrix);
  viewProjection.multiplyMatrices(camera.projectionMatrix, camera.matrixWorldInverse);
  uploadTransposed(globals.uViewProjectionMatrix, viewProjection);
  camera.getWorldPosition(worldPosition);
  (globals.uCameraPosition as Vector4 | undefined)?.set(worldPosition.x, worldPosition.y, worldPosition.z, 1);
  renderer.getDrawingBufferSize(drawingBufferSize);
  (globals.uScreenParams as Vector4 | undefined)?.set(
    drawingBufferSize.x,
    drawingBufferSize.y,
    1 / Math.max(1, drawingBufferSize.x),
    1 / Math.max(1, drawingBufferSize.y),
  );
  (globals.uTime as Vector4 | undefined)?.set(elapsedSeconds / 20, elapsedSeconds, elapsedSeconds * 2, elapsedSeconds * 3);
  const perspective = "isPerspectiveCamera" in camera && Boolean((camera as { isPerspectiveCamera?: boolean }).isPerspectiveCamera);
  const near = (camera as { near?: number }).near ?? 0.1;
  const far = (camera as { far?: number }).far ?? 1000;
  (globals.uProjectionParams as Vector4 | undefined)?.set(1, near, far, far === 0 ? 0 : 1 / far);
  (globals.uOrthoParams as Vector4 | undefined)?.set(0, 0, 0, perspective ? 0 : 1);
}
