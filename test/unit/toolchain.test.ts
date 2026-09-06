import { mkdirSync, mkdtempSync, rmSync, writeFileSync } from "node:fs";
import { tmpdir } from "node:os";
import { delimiter, join } from "node:path";
import { afterEach, describe, expect, it } from "vitest";
import { executableOnPath } from "../../tools/shader-build/toolchain.js";

const temporaryDirectories: string[] = [];

afterEach(() => {
	for (const directory of temporaryDirectories.splice(0)) {
		rmSync(directory, { recursive: true, force: true });
	}
});

function temporaryDirectory(): string {
	const directory = mkdtempSync(join(tmpdir(), "three-liltoon-toolchain-"));
	temporaryDirectories.push(directory);
	return directory;
}

describe("shader toolchain executable discovery", () => {
	it("resolves Windows executables through PATHEXT", () => {
		const directory = temporaryDirectory();
		const executable = join(directory, "dxc.exe");
		writeFileSync(executable, "");

		const result = executableOnPath("dxc", {
			path: directory,
			pathExt: ".COM;.EXE;.BAT;.CMD",
			platform: "win32",
		});

		expect(result?.toLowerCase()).toBe(executable.toLowerCase());
	});

	it("searches every PATH entry and ignores directories with matching names", () => {
		const firstDirectory = temporaryDirectory();
		const secondDirectory = temporaryDirectory();
		mkdirSync(join(firstDirectory, "spirv-cross"));
		const executable = join(secondDirectory, "spirv-cross");
		writeFileSync(executable, "");

		expect(
			executableOnPath("spirv-cross", {
				path: `${firstDirectory}${delimiter}${secondDirectory}`,
				platform: "linux",
			}),
		).toBe(executable);
	});
});
