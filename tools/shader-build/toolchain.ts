import { execFileSync } from "node:child_process";
import { existsSync, readFileSync, statSync } from "node:fs";
import { delimiter, extname, join } from "node:path";

export interface Toolchain {
	dxc: string;
	spirvCross: string;
	spirvVal: string;
	glslangValidator?: string;
}

export interface ExecutableSearchOptions {
	path?: string;
	pathExt?: string;
	platform?: NodeJS.Platform;
}

export function executableOnPath(
	name: string,
	options: ExecutableSearchOptions = {},
): string | undefined {
	const platform = options.platform ?? process.platform;
	const pathValue = options.path ?? process.env.PATH ?? "";
	const pathExt =
		options.pathExt ?? process.env.PATHEXT ?? ".COM;.EXE;.BAT;.CMD";
	const extensions =
		platform === "win32" && extname(name) === ""
			? ["", ...pathExt.split(";").filter(Boolean)]
			: [""];

	for (const pathEntry of pathValue.split(delimiter)) {
		const directory = pathEntry.trim().replace(/^"|"$/g, "");
		if (!directory) continue;

		for (const extension of extensions) {
			const candidate = join(directory, `${name}${extension}`);
			if (existsSync(candidate) && statSync(candidate).isFile())
				return candidate;
		}
	}

	return undefined;
}

function resolveTool(
	environmentName: string,
	executable: string,
	required = true,
): string | undefined {
	const candidate =
		process.env[environmentName] || executableOnPath(executable);
	if (!candidate && required) {
		throw new Error(
			`Missing ${executable}. Set ${environmentName} or run npm run tools:setup after installing the pinned toolchain.`,
		);
	}
	return candidate;
}

export function discoverToolchain(): Toolchain {
	return {
		dxc: resolveTool("DXC_PATH", "dxc")!,
		spirvCross: resolveTool("SPIRV_CROSS_PATH", "spirv-cross")!,
		spirvVal: resolveTool("SPIRV_VAL_PATH", "spirv-val")!,
		glslangValidator: resolveTool(
			"GLSLANG_VALIDATOR_PATH",
			"glslangValidator",
			false,
		),
	};
}

export function getVersion(executable: string, args: string[]): string {
	try {
		return execFileSync(executable, args, {
			encoding: "utf8",
			stdio: ["ignore", "pipe", "pipe"],
		}).trim();
	} catch (error) {
		const stderr = (error as { stderr?: Buffer | string }).stderr;
		if (stderr) return String(stderr).trim();
		throw error;
	}
}

export function readPinnedToolchain(): Record<string, unknown> {
	return JSON.parse(
		readFileSync(new URL("../toolchain.json", import.meta.url), "utf8"),
	) as Record<string, unknown>;
}
