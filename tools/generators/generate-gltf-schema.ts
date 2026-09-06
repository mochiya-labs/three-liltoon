import { mkdirSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { createGenerator } from "ts-json-schema-generator";
import { LILTOON_GLTF_EXTENSION } from "../../src/loaders/types.js";
import { PROJECT_ROOT } from "../paths.js";

export function generateGLTFLilToonSchema() {
	const generator = createGenerator({
		path: resolve(PROJECT_ROOT, "src/loaders/types.ts"),
		tsconfig: resolve(PROJECT_ROOT, "tsconfig.json"),
		type: "GLTFLilToonMaterialDefinition",
		jsDoc: "extended",
		additionalProperties: false,
	});
	return {
		$comment:
			"Generated from src/loaders/types.ts. Do not edit; run npm run generate:gltf-schema.",
		title: LILTOON_GLTF_EXTENSION,
		...generator.createSchema("GLTFLilToonMaterialDefinition"),
	};
}

if (
	process.argv[1] &&
	resolve(process.argv[1]) === fileURLToPath(import.meta.url)
) {
	const directory = resolve(PROJECT_ROOT, "schema");
	mkdirSync(directory, { recursive: true });
	writeFileSync(
		resolve(directory, `${LILTOON_GLTF_EXTENSION}.schema.json`),
		JSON.stringify(generateGLTFLilToonSchema(), null, 2) + "\n",
	);
	process.stdout.write(`Generated ${LILTOON_GLTF_EXTENSION} JSON Schema.\n`);
}
