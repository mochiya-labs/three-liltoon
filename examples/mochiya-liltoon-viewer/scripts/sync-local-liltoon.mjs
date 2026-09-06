import { execFileSync } from "node:child_process";
import { mkdirSync, rmSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const viewerDirectory = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const libraryDirectory = resolve(viewerDirectory, "../..");
const packageDirectory = resolve(viewerDirectory, ".local-packages");
const cacheDirectory = resolve(viewerDirectory, ".npm-cache");
const npmCli = process.env.npm_execpath;
const npm = npmCli
	? process.execPath
	: process.platform === "win32"
		? "npm.cmd"
		: "npm";
const npmArgs = (args) => (npmCli ? [npmCli, ...args] : args);

function run(args, options = {}) {
	return execFileSync(npm, npmArgs(args), {
		cwd: options.cwd ?? viewerDirectory,
		encoding: "utf8",
		stdio: options.capture ? ["inherit", "pipe", "inherit"] : "inherit",
	});
}

// The repository commits the package's runtime JS and declarations in dist/.
// Pack those artifacts without rebuilding shaders so the viewer can run in a
// clean deployment that has neither the lilToon submodule nor compiler tools.
// Installing the fresh tarball also avoids npm's cache for file: dependencies
// when the package version has not changed and prevents a second Three.js copy.
rmSync(packageDirectory, { recursive: true, force: true });
mkdirSync(packageDirectory, { recursive: true });
mkdirSync(cacheDirectory, { recursive: true });

const packResult = execFileSync(
	npm,
	npmArgs([
		"pack",
		"--json",
		"--cache",
		cacheDirectory,
		"--pack-destination",
		packageDirectory,
	]),
	{
		cwd: libraryDirectory,
		encoding: "utf8",
		stdio: ["inherit", "pipe", "inherit"],
	},
);
const [packed] = JSON.parse(packResult);
if (!packed?.filename)
	throw new Error("npm pack did not return an artifact filename.");

run([
	"install",
	"--force",
	"--no-save",
	"--ignore-scripts",
	"--no-audit",
	"--no-fund",
	"--cache",
	cacheDirectory,
	resolve(packageDirectory, packed.filename),
]);
