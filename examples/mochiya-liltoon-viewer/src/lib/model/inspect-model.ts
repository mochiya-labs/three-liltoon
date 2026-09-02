import { LilToonMaterial, LILTOON_GLTF_EXTENSION } from "three-liltoon";
import {
  Color,
  Material,
  Mesh,
  Texture,
  Vector2,
  Vector3,
  Vector4,
  type Object3D,
} from "three";
import type { GLTF, GLTFParser } from "three/addons/loaders/GLTFLoader.js";

import type {
  InspectorEntry,
  MaterialInspection,
  ModelInspection,
  TextureInspection,
} from "./types";
import { createTexturePreview } from "./texture-preview";

type LilToonExtensionDefinition = {
  specVersion?: string;
  lilToonVersion?: string | number;
  shaderVariant?: string;
  renderMode?: string;
};

function formatNumber(value: number) {
  if (!Number.isFinite(value)) return String(value);
  if (Number.isInteger(value)) return String(value);
  return Number(value.toFixed(6)).toString();
}

function formatValue(value: unknown): string {
  if (value == null) return "null";
  if (typeof value === "number") return formatNumber(value);
  if (typeof value === "string" || typeof value === "boolean") return String(value);
  if (value instanceof Color) {
    return `[${formatNumber(value.r)}, ${formatNumber(value.g)}, ${formatNumber(value.b)}]`;
  }
  if (value instanceof Vector2 || value instanceof Vector3 || value instanceof Vector4) {
    return `[${value.toArray().map(formatNumber).join(", ")}]`;
  }
  if (Array.isArray(value)) return `[${value.map(formatValue).join(", ")}]`;
  try {
    return JSON.stringify(value);
  } catch {
    return String(value);
  }
}

function flattenRecord(
  value: unknown,
  result: InspectorEntry[],
  prefix = "",
): void {
  if (
    value == null ||
    typeof value !== "object" ||
    Array.isArray(value)
  ) {
    if (prefix) result.push({ name: prefix, value: formatValue(value) });
    return;
  }

  for (const [key, child] of Object.entries(value as Record<string, unknown>)) {
    const name = prefix ? `${prefix}.${key}` : key;
    if (child && typeof child === "object" && !Array.isArray(child)) {
      flattenRecord(child, result, name);
    } else {
      result.push({ name, value: formatValue(child) });
    }
  }
}

function textureSize(texture: Texture) {
  const image = texture.image as { width?: number; height?: number } | undefined;
  return image?.width && image?.height ? `${image.width} × ${image.height}` : "Unknown";
}

function textureInspection(slot: string, texture: Texture): TextureInspection {
  return {
    id: `${slot}:${texture.uuid}`,
    slot,
    name: texture.name || "Unnamed texture",
    previewUrl: createTexturePreview(texture),
    size: textureSize(texture),
    colorSpace: texture.colorSpace || "No color space",
    flipY: texture.flipY ? "Yes" : "No",
    wrap: `${texture.wrapS} / ${texture.wrapT}`,
    filter: `${texture.minFilter} / ${texture.magFilter}`,
  };
}

function inspectTextures(material: Material): TextureInspection[] {
  const textures = new Map<string, Texture>();
  const lilToon = material instanceof LilToonMaterial ? material : undefined;

  if (lilToon) {
    for (const [slot, texture] of Object.entries(lilToon.lilToonTextures)) {
      if (texture) textures.set(slot, texture);
    }
  }

  for (const [slot, value] of Object.entries(material)) {
    if (value instanceof Texture) textures.set(slot, value);
  }

  if (!lilToon && "uniforms" in material) {
    const uniforms = (material as Material & {
      uniforms?: Record<string, { value?: unknown }>;
    }).uniforms;
    for (const [slot, uniform] of Object.entries(uniforms ?? {})) {
      if (uniform.value instanceof Texture) textures.set(slot, uniform.value);
    }
  }

  return [...textures.entries()]
    .map(([slot, texture]) => textureInspection(slot, texture))
    .sort((a, b) => a.slot.localeCompare(b.slot));
}

function sourceMaterialIndex(parser: GLTFParser, material: Material) {
  return parser.associations.get(material)?.materials;
}

function extensionDefinition(
  parser: GLTFParser,
  materialIndex: number | undefined,
): LilToonExtensionDefinition | undefined {
  if (materialIndex == null) return undefined;
  return parser.json.materials?.[materialIndex]?.extensions?.[
    LILTOON_GLTF_EXTENSION
  ] as LilToonExtensionDefinition | undefined;
}

function genericProperties(material: Material): InspectorEntry[] {
  const json = material.toJSON() as unknown as Record<string, unknown>;
  const implementationFields = new Set([
    "metadata",
    "uuid",
    "name",
    "type",
    "textures",
    "images",
    "vertexShader",
    "fragmentShader",
  ]);
  const properties: InspectorEntry[] = [];
  for (const [name, value] of Object.entries(json)) {
    if (implementationFields.has(name)) continue;
    flattenRecord(value, properties, name);
  }
  return properties.sort((a, b) => a.name.localeCompare(b.name));
}

function inspectMaterial(parser: GLTFParser, material: Material): MaterialInspection {
  const isLilToon = material instanceof LilToonMaterial;
  const materialIndex = sourceMaterialIndex(parser, material);
  const extension = extensionDefinition(parser, materialIndex);
  const details: InspectorEntry[] = [
    { name: "Name", value: material.name || "Unnamed material" },
    { name: "Three.js type", value: material.type },
    { name: "UUID", value: material.uuid },
    { name: "Source material index", value: materialIndex == null ? "Generated" : String(materialIndex) },
    { name: "Transparent", value: String(material.transparent) },
    { name: "Opacity", value: formatNumber(material.opacity) },
    { name: "Alpha test", value: formatNumber(material.alphaTest) },
    { name: "Depth test", value: String(material.depthTest) },
    { name: "Depth write", value: String(material.depthWrite) },
    { name: "Side", value: String(material.side) },
  ];

  if (isLilToon) {
    details.splice(2, 0,
      { name: "Mochiya extension", value: LILTOON_GLTF_EXTENSION },
      { name: "Specification", value: extension?.specVersion ?? "1.0" },
      { name: "lilToon version", value: String(extension?.lilToonVersion ?? "Not declared") },
      { name: "Unity shader", value: extension?.shaderVariant ?? "Not declared" },
      { name: "Render mode", value: extension?.renderMode ?? material.renderMode },
      { name: "Runtime pass", value: material.pass },
    );
  }

  const properties = isLilToon
    ? Object.entries(material.lilToonProperties)
        .map(([name, value]) => ({ name, value: formatValue(value) }))
        .sort((a, b) => a.name.localeCompare(b.name))
    : genericProperties(material);

  return {
    id: materialIndex == null ? material.uuid : `material-${materialIndex}`,
    name: material.name || `Material ${materialIndex ?? "generated"}`,
    type: isLilToon ? "lilToon" : material.type,
    isLilToon,
    sourceMaterialIndex: materialIndex,
    properties,
    textures: inspectTextures(material),
    details,
  };
}

function materialsFromScene(parser: GLTFParser, scene: Object3D) {
  const materials = new Map<string, Material>();
  scene.traverse((object) => {
    if (!(object instanceof Mesh)) return;
    const candidates = Array.isArray(object.material) ? object.material : [object.material];
    for (const material of candidates) {
      if (isGeneratedOutlineMaterial(material)) continue;
      const index = sourceMaterialIndex(parser, material);
      materials.set(index == null ? material.uuid : `material-${index}`, material);
    }
  });
  return [...materials.values()];
}

function isGeneratedOutlineMaterial(material: Material) {
  if (material instanceof LilToonMaterial) return material.pass === "outline";
  const mtoon = material as Material & {
    isMToonMaterial?: boolean;
    isOutline?: boolean;
  };
  return mtoon.isMToonMaterial === true && mtoon.isOutline === true;
}

export function inspectModel(gltf: GLTF): ModelInspection {
  let meshCount = 0;
  let nodeCount = 0;
  gltf.scene.traverse((object) => {
    nodeCount += 1;
    if (object instanceof Mesh) {
      const candidates = Array.isArray(object.material) ? object.material : [object.material];
      if (!candidates.every(isGeneratedOutlineMaterial)) meshCount += 1;
    }
  });

  const extensions = Array.isArray(gltf.parser.json.extensionsUsed)
    ? [...gltf.parser.json.extensionsUsed].sort()
    : [];
  const materials = materialsFromScene(gltf.parser, gltf.scene).map((material) =>
    inspectMaterial(gltf.parser, material),
  );
  const hasVrm = extensions.some((extension) =>
    String(extension).startsWith("VRMC_vrm"),
  );

  return {
    format: hasVrm ? "VRM" : "GLB",
    generator: gltf.asset.generator ?? "Not declared",
    gltfVersion: gltf.asset.version ?? "Not declared",
    extensions,
    hasMochiyaLilToon: extensions.includes(LILTOON_GLTF_EXTENSION),
    meshCount,
    nodeCount,
    animationNames: gltf.animations.map((clip, index) => clip.name || `Animation ${index + 1}`),
    materials,
  };
}
