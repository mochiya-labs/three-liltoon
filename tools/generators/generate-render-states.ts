import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { GENERATED_SHADER_ROOT, GENERATED_SOURCE_ROOT, LILTOON_SHADER } from "../paths.js";
import { parseShaderLab } from "../shaderlab/parser.js";

const recipes = {
  opaque: "ltspass_opaque.shader",
  cutout: "ltspass_cutout.shader",
  transparent: "ltspass_transparent.shader",
} as const;

const manifest = Object.fromEntries(
  Object.entries(recipes).map(([renderMode, file]) => {
    const shader = parseShaderLab(readFileSync(resolve(LILTOON_SHADER, file), "utf8"));
    const passes = Object.fromEntries(
      shader.subShaders.flatMap((subShader) =>
        subShader.passes.map((pass, index) => [
          (pass.name ?? `pass-${index}`).toLowerCase(),
          {
            name: pass.name,
            tags: pass.tags,
            renderState: pass.renderState,
            defines: Object.keys(pass.defines),
            pragmas: pass.pragmas,
            includes: pass.includes,
          },
        ]),
      ),
    );
    return [renderMode, { source: file, passes }];
  }),
);

mkdirSync(GENERATED_SOURCE_ROOT, { recursive: true });
mkdirSync(resolve(GENERATED_SHADER_ROOT, "manifests"), { recursive: true });
const banner = "// Generated from upstream hidden pass shaders. Do not edit.\n";
writeFileSync(
  resolve(GENERATED_SOURCE_ROOT, "renderStates.ts"),
  `${banner}export const LILTOON_RENDER_RECIPES = ${JSON.stringify(manifest, null, 2)} as const;\n`,
);
writeFileSync(resolve(GENERATED_SHADER_ROOT, "manifests/shaderlab-recipes.json"), `${JSON.stringify(manifest, null, 2)}\n`);
process.stdout.write(`Generated ShaderLab recipes for ${Object.keys(manifest).join(", ")}.\n`);
