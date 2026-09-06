import {
	existsSync,
	mkdirSync,
	readFileSync,
	readdirSync,
	writeFileSync,
} from "node:fs";
import { basename, resolve } from "node:path";
import pixelmatch from "pixelmatch";
import { PNG } from "pngjs";
import { PROJECT_ROOT } from "../../tools/paths.js";

interface ParityThresholds {
	maxDiffRatio: number;
	maxRms: number;
	pixelThreshold: number;
}

const defaults: ParityThresholds = {
	maxDiffRatio: 0.05,
	maxRms: 0.08,
	pixelThreshold: 0.1,
};
const parityRoot = resolve(PROJECT_ROOT, "test/parity");
const referenceRoot = resolve(parityRoot, "unity-reference");
const outputRoot = resolve(parityRoot, "three-output");
const diffRoot = resolve(parityRoot, "diff");
const requireFixtures = process.argv.includes("--require-fixtures");

function pngNames(directory: string): string[] {
	if (!existsSync(directory)) return [];
	return readdirSync(directory)
		.filter((file) => file.endsWith(".png"))
		.sort();
}

function thresholdsFor(file: string): ParityThresholds {
	const path = resolve(parityRoot, "scenes", `${basename(file, ".png")}.json`);
	if (!existsSync(path)) return defaults;
	return {
		...defaults,
		...(JSON.parse(readFileSync(path, "utf8")) as Partial<ParityThresholds>),
	};
}

function rms(left: PNG, right: PNG): number {
	let squared = 0;
	let channels = 0;
	for (let index = 0; index < left.data.length; index += 4) {
		for (let channel = 0; channel < 3; channel += 1) {
			const delta =
				(left.data[index + channel]! - right.data[index + channel]!) / 255;
			squared += delta * delta;
			channels += 1;
		}
	}
	return Math.sqrt(squared / channels);
}

const references = pngNames(referenceRoot);
if (references.length === 0) {
	process.stdout.write(
		"No Unity parity references are installed. See test/parity/README.md.\n",
	);
	if (requireFixtures) process.exitCode = 1;
} else {
	mkdirSync(diffRoot, { recursive: true });
	let failures = 0;
	for (const file of references) {
		const outputPath = resolve(outputRoot, file);
		if (!existsSync(outputPath)) {
			process.stderr.write(`${file}: missing Three.js output\n`);
			failures += 1;
			continue;
		}
		const reference = PNG.sync.read(readFileSync(resolve(referenceRoot, file)));
		const output = PNG.sync.read(readFileSync(outputPath));
		if (
			reference.width !== output.width ||
			reference.height !== output.height
		) {
			process.stderr.write(
				`${file}: size mismatch ${reference.width}x${reference.height} vs ${output.width}x${output.height}\n`,
			);
			failures += 1;
			continue;
		}
		const settings = thresholdsFor(file);
		const diff = new PNG({ width: reference.width, height: reference.height });
		const different = pixelmatch(
			reference.data,
			output.data,
			diff.data,
			reference.width,
			reference.height,
			{
				threshold: settings.pixelThreshold,
			},
		);
		const ratio = different / (reference.width * reference.height);
		const rmsError = rms(reference, output);
		const passed =
			ratio <= settings.maxDiffRatio && rmsError <= settings.maxRms;
		process.stdout.write(
			`${passed ? "PASS" : "FAIL"} ${file}: diff=${(ratio * 100).toFixed(2)}% rms=${rmsError.toFixed(4)}\n`,
		);
		writeFileSync(resolve(diffRoot, file), PNG.sync.write(diff));
		if (!passed) failures += 1;
	}
	if (failures > 0) process.exitCode = 1;
}
