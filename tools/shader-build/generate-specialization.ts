import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { SPECIALIZATION_PROPERTIES } from "../../src/shader/features.js";
import { GENERATED_SHADER_ROOT, LILTOON_INCLUDES } from "../paths.js";

/** Inject only feature gates, before upstream functions are compiled. Never edit vendor files. */
export function generateSpecialization(): void {
	const directory = resolve(GENERATED_SHADER_ROOT, "hlsl");
	mkdirSync(directory, { recursive: true });
	const source = readFileSync(
		resolve(LILTOON_INCLUDES, "lil_common.hlsl"),
		"utf8",
	);
	const anchor = '#include "lil_common_input.hlsl"';
	if (source.split(anchor).length !== 2)
		throw new Error("Upstream common input include changed");
	const gates = SPECIALIZATION_PROPERTIES.map(
		(property, id) =>
			`[[vk::constant_id(${id})]] const bool lilWebFeature${id} = true;\n#define ${property} (lilWebFeature${id} && ${property})`,
	).join("\n");
	writeFileSync(
		resolve(directory, "lil_common.hlsl"),
		`// Generated upstream include with specialization gates.\n${source.replace(anchor, `${anchor}\n${gates}`)}`,
	);
}
