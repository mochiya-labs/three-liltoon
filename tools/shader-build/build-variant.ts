import { execFileSync } from "node:child_process";
import { mkdirSync, readFileSync } from "node:fs";
import { basename, relative, resolve } from "node:path";
import { GENERATED_SHADER_ROOT, PROJECT_ROOT } from "../paths.js";
import { compileHlsl } from "./dxc.js";
import { crossCompileGlsl, writeReflection } from "./spirv-cross.js";
import type {
	BuiltShaderVariant,
	ShaderStage,
	ShaderVariantRecipe,
} from "./types.js";
import type { Toolchain } from "./toolchain.js";

function discoverIncludes(sourceFile: string): string[] {
	const source = readFileSync(sourceFile, "utf8");
	return [...source.matchAll(/^\s*#\s*include\s+["<]([^">]+)[">]/gm)].map(
		(match) => match[1]!,
	);
}

export function buildVariant(
	recipe: ShaderVariantRecipe,
	toolchain: Toolchain,
): BuiltShaderVariant {
	const outputDirectories = {
		spirv: resolve(GENERATED_SHADER_ROOT, "spirv"),
		glsl: resolve(GENERATED_SHADER_ROOT, "glsl"),
		reflection: resolve(GENERATED_SHADER_ROOT, "reflection"),
	};
	Object.values(outputDirectories).forEach((directory) =>
		mkdirSync(directory, { recursive: true }),
	);
	const builtStages = {} as BuiltShaderVariant["stages"];
	for (const stage of ["vertex", "fragment"] satisfies ShaderStage[]) {
		const suffix = stage === "vertex" ? "vert" : "frag";
		const spirv = resolve(
			outputDirectories.spirv,
			`${recipe.key}.${suffix}.spv`,
		);
		const glsl = resolve(
			outputDirectories.glsl,
			`${recipe.key}.${suffix}.glsl`,
		);
		const reflection = resolve(
			outputDirectories.reflection,
			`${recipe.key}.${suffix}.json`,
		);
		compileHlsl({
			executable: toolchain.dxc,
			source: recipe.sources[stage],
			output: spirv,
			stage,
			entry: recipe.entries[stage],
			defines: recipe.defines,
		});
		execFileSync(toolchain.spirvVal, ["--target-env", "vulkan1.0", spirv], {
			stdio: "inherit",
		});
		crossCompileGlsl(toolchain.spirvCross, spirv, glsl, stage);
		writeReflection(toolchain.spirvCross, spirv, reflection);
		if (toolchain.glslangValidator) {
			execFileSync(toolchain.glslangValidator, ["-S", suffix, glsl], {
				stdio: "inherit",
			});
		}
		builtStages[stage] = {
			stage,
			spirv: relative(PROJECT_ROOT, spirv),
			glsl: relative(PROJECT_ROOT, glsl),
			reflection: relative(PROJECT_ROOT, reflection),
			sourceIncludes: [
				basename(recipe.sources[stage]),
				...discoverIncludes(recipe.sources[stage]),
			],
		};
	}
	return {
		key: recipe.key,
		renderMode: recipe.renderMode,
		defines: recipe.defines,
		stages: builtStages,
	};
}
