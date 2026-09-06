import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { GENERATED_SHADER_ROOT, LILTOON_INCLUDES } from "../paths.js";

const sourcePath = resolve(LILTOON_INCLUDES, "lil_common_appdata.hlsl");
const outputDirectory = resolve(GENERATED_SHADER_ROOT, "hlsl");
const outputPath = resolve(outputDirectory, "lil_common_appdata.web.hlsl");
const injection = `
    #if defined(LIL_WEB_SKINNING)
        float4 skinIndex   : BLENDINDICES;
        float4 skinWeight  : BLENDWEIGHT;
    #endif
`;

export function generateWebAppdata(): string {
	const source = readFileSync(sourcePath, "utf8");
	const occurrences =
		source.match(/\s+LIL_VERTEX_INPUT_INSTANCE_ID/g)?.length ?? 0;
	if (occurrences !== 2) {
		throw new Error(
			`Upstream appdata structure changed: expected 2 injection points, found ${occurrences}.`,
		);
	}
	const generated = source.replace(
		/(\s+)LIL_VERTEX_INPUT_INSTANCE_ID/g,
		`${injection}$1LIL_VERTEX_INPUT_INSTANCE_ID`,
	);
	mkdirSync(outputDirectory, { recursive: true });
	writeFileSync(
		outputPath,
		`// Generated from vendor/lilToon/Assets/lilToon/Shader/Includes/lil_common_appdata.hlsl. Do not edit.\n// Web-only skin attributes are injected before the upstream instance field.\n${generated}`,
	);
	return outputPath;
}

if (import.meta.url === `file://${process.argv[1]}`)
	process.stdout.write(`${generateWebAppdata()}\n`);
