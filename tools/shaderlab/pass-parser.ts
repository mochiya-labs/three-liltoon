import { findBlocksAtDepth } from "./parser.js";
import { parseFlatRenderStates, parseStencil } from "./render-state-parser.js";
import type { ShaderLabPass, ShaderRenderState } from "./types.js";

export function parseTags(source: string): Record<string, string> {
  const tags: Record<string, string> = {};
  for (const block of findBlocksAtDepth(source, "Tags", 0)) {
    for (const match of block.body.matchAll(/"([^"]+)"\s*=\s*"([^"]*)"/g)) {
      tags[match[1]!] = match[2]!;
    }
  }
  return tags;
}

export function parseRenderState(source: string): ShaderRenderState {
  const state = parseFlatRenderStates(source);
  const stencil = findBlocksAtDepth(source, "Stencil", 0)[0];
  if (stencil) state.stencil = parseStencil(stencil.body);
  return state;
}

function extractHlsl(passSource: string): string {
  return [...passSource.matchAll(/\bHLSLPROGRAM\b([\s\S]*?)\bENDHLSL\b/g)]
    .map((match) => match[1]!.trim())
    .join("\n");
}

function parseCompilerDirectives(source: string): Pick<ShaderLabPass, "defines" | "pragmas" | "includes"> {
  const defines: Record<string, string | boolean> = {};
  const pragmas: string[] = [];
  const includes: string[] = [];
  for (const line of source.split(/\r?\n/)) {
    const define = /^\s*#\s*define\s+([A-Za-z_][A-Za-z0-9_]*)(?:\s+(.+?))?\s*$/.exec(line);
    if (define) defines[define[1]!] = define[2]?.trim() || true;
    const pragma = /^\s*#\s*pragma\s+(.+?)\s*$/.exec(line);
    if (pragma) pragmas.push(pragma[1]!);
    const include = /^\s*#\s*include\s+["<]([^">]+)[">]/.exec(line);
    if (include) includes.push(include[1]!);
  }
  return { defines, pragmas, includes };
}

export function parsePasses(subShaderSource: string, globalHlsl = ""): ShaderLabPass[] {
  return findBlocksAtDepth(subShaderSource, "Pass", 0).map((block) => {
    const hlsl = [globalHlsl, extractHlsl(block.body)].filter(Boolean).join("\n");
    const name = /\bName\s+"([^"]+)"/.exec(block.body)?.[1];
    return {
      ...(name ? { name } : {}),
      tags: parseTags(block.body),
      renderState: parseRenderState(block.body),
      ...parseCompilerDirectives(hlsl),
      hlsl,
    };
  });
}
