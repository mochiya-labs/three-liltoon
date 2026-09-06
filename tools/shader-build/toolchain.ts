import { execFileSync } from "node:child_process";
import { existsSync, readFileSync } from "node:fs";
import { delimiter } from "node:path";

export interface Toolchain {
	dxc: string;
	spirvCross: string;
	spirvVal: string;
	glslangValidator?: string;
}

function executableOnPath(name: string): string | undefined {
	const candidates = (process.env.PATH ?? "")
		.split(delimiter)
		.map((directory) => `${directory}/${name}`);
	return candidates.find(existsSync);
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
