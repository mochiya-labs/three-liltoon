import type {
  ShaderProperty,
  ShaderPropertyDefault,
  ShaderPropertyType,
} from "./types.js";

function parseNumber(value: string): number {
  const parsed = Number(value.trim().replace(/[fF]$/, ""));
  if (!Number.isFinite(parsed)) throw new SyntaxError(`Invalid numeric default: ${value}`);
  return parsed;
}

function parseDefault(value: string): ShaderPropertyDefault {
  const clean = value.trim();
  const vector = /^\(([^)]*)\)/.exec(clean);
  if (vector) return vector[1]!.split(",").map(parseNumber);
  const texture = /^"([^"]*)"\s*(?:\{[^}]*\})?/.exec(clean);
  if (texture) return { texture: texture[1]! };
  if (/^[+-]?(?:\d+\.?\d*|\.\d+)(?:e[+-]?\d+)?[fF]?$/i.test(clean)) {
    return parseNumber(clean);
  }
  return clean;
}

function parseType(source: string): {
  type: ShaderPropertyType;
  range?: [number, number];
} {
  const clean = source.trim();
  const range = /^Range\s*\(\s*([^,]+)\s*,\s*([^\)]+)\s*\)$/i.exec(clean);
  if (range) {
    return { type: "Range", range: [parseNumber(range[1]!), parseNumber(range[2]!)] };
  }
  const normalized = clean.toLowerCase() === "float" ? "Float" : clean;
  return { type: normalized };
}

export function parseProperties(source: string): ShaderProperty[] {
  const properties: ShaderProperty[] = [];
  for (const line of source.split(/\r?\n/)) {
    const clean = line.replace(/\/\/.*$/, "").trim();
    if (!clean) continue;
    const match = /^((?:\[[^\]]+\]\s*)*)([_A-Za-z][_A-Za-z0-9]*)\s*\(\s*"((?:\\.|[^"])*)"\s*,\s*(.+)\)\s*=\s*(.+)$/.exec(
      clean,
    );
    if (!match) continue;
    const attributes = [...match[1]!.matchAll(/\[([^\]]+)\]/g)].map((item) => item[1]!.trim());
    const parsedType = parseType(match[4]!);
    properties.push({
      name: match[2]!,
      displayName: match[3]!,
      type: parsedType.type,
      ...(parsedType.range ? { range: parsedType.range } : {}),
      defaultValue: parseDefault(match[5]!),
      attributes,
    });
  }
  return properties;
}
