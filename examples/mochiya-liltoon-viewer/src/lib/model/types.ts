import type { VRM } from "@pixiv/three-vrm";
import type { AnimationClip, Group } from "three";

export type ModelSource = {
  id: string;
  fileName: string;
  fileSize: number;
  url: string;
};

export type InspectorEntry = {
  name: string;
  value: string;
};

export type TextureInspection = {
  id: string;
  slot: string;
  name: string;
  previewUrl?: string;
  size: string;
  colorSpace: string;
  flipY: string;
  wrap: string;
  filter: string;
};

export type MaterialInspection = {
  id: string;
  name: string;
  type: string;
  isLilToon: boolean;
  sourceMaterialIndex?: number;
  properties: InspectorEntry[];
  textures: TextureInspection[];
  details: InspectorEntry[];
};

export type ModelInspection = {
  format: "GLB" | "VRM";
  generator: string;
  gltfVersion: string;
  extensions: string[];
  hasMochiyaLilToon: boolean;
  meshCount: number;
  nodeCount: number;
  animationNames: string[];
  materials: MaterialInspection[];
};

export type LoadedModel = {
  scene: Group;
  vrm?: VRM;
  animations: AnimationClip[];
  inspection: ModelInspection;
};

export type LoadStatus =
  | { phase: "idle" }
  | { phase: "loading"; progress?: number }
  | { phase: "ready" }
  | { phase: "error"; message: string };
