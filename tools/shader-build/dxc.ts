import { execFileSync } from "node:child_process";
import { resolve } from "node:path";
import { LILTOON_INCLUDES, LILTOON_SHADER, PROJECT_ROOT } from "../paths.js";
import type { ShaderStage } from "./types.js";

export interface DxcCompileOptions {
	executable: string;
	source: string;
	output: string;
	stage: ShaderStage;
	entry: string;
	defines: string[];
	preprocessOutput?: string;
}

export function compileHlsl(options: DxcCompileOptions): void {
	const profile = options.stage === "vertex" ? "vs_6_0" : "ps_6_0";
	const args = [
		"-spirv",
		// lilToon uses pre-2021 vector ternaries. Pin the language version instead
		// of inheriting a newer DXC installation's short-circuiting defaults.
		"-HV",
		"2018",
		"-T",
		profile,
		"-E",
		options.entry,
		"-fspv-target-env=vulkan1.0",
		"-fspv-reflect",
		"-O3",
		"-D",
		`SHADER_STAGE_${options.stage.toUpperCase()}=1`,
		"-I",
		resolve(PROJECT_ROOT, "shader/compat"),
		"-I",
		LILTOON_SHADER,
		"-I",
		LILTOON_INCLUDES,
		...options.defines.flatMap((define) => ["-D", define]),
		...(options.preprocessOutput
			? ["-P", options.preprocessOutput]
			: ["-Fo", options.output]),
		options.source,
	];
	execFileSync(options.executable, args, {
		cwd: PROJECT_ROOT,
		stdio: "inherit",
	});
}
