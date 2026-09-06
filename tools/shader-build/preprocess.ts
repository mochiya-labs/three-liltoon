import { mkdirSync } from "node:fs";
import { resolve } from "node:path";
import { PROJECT_ROOT } from "../paths.js";
import { compileHlsl } from "./dxc.js";
import { discoverToolchain } from "./toolchain.js";
import { SHADER_VARIANTS } from "./variants.js";

const requested =
	process.argv[process.argv.indexOf("--variant") + 1] || "standard-opaque";
const variant = SHADER_VARIANTS.find(
	(candidate) => candidate.key === requested,
);
if (!variant) throw new Error(`Unknown shader variant: ${requested}`);
const outputDirectory = resolve(PROJECT_ROOT, ".tmp/preprocessed");
mkdirSync(outputDirectory, { recursive: true });
const toolchain = discoverToolchain();
for (const stage of ["vertex", "fragment"] as const) {
	const output = resolve(outputDirectory, `${variant.key}.${stage}.hlsl`);
	compileHlsl({
		executable: toolchain.dxc,
		source: variant.sources[stage],
		output: "",
		stage,
		entry: variant.entries[stage],
		defines: variant.defines,
		preprocessOutput: output,
	});
	process.stdout.write(`${output}\n`);
}
