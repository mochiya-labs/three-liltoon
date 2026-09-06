import { readFileSync } from "node:fs";
import { resolve } from "node:path";
import Ajv from "ajv";
import { describe, expect, it } from "vitest";
import {
	LILTOON_GLTF_EXTENSION,
	type GLTFLilToonMaterialDefinition,
} from "../../src/loaders/types.js";
import { generateGLTFLilToonSchema } from "../../tools/generators/generate-gltf-schema.js";
import { PROJECT_ROOT } from "../../tools/paths.js";

const schema = JSON.parse(
	readFileSync(
		resolve(PROJECT_ROOT, `schema/${LILTOON_GLTF_EXTENSION}.schema.json`),
		"utf8",
	),
);
const ajv = new Ajv({ strict: true, allowUnionTypes: true, allErrors: true });
const validate = ajv.compile(schema);

describe("lilToon glTF JSON Schema", () => {
	it("matches the annotated public wire types", () => {
		expect(schema).toEqual(generateGLTFLilToonSchema());
	}, 30000);

	it("is a valid self-contained Draft 7 schema", () => {
		expect(schema.$schema).toBe("http://json-schema.org/draft-07/schema#");
		expect(ajv.validateSchema(schema)).toBe(true);
	});

	it("accepts the Unity serializer's material payload shape", () => {
		const material = {
			specVersion: "1.0",
			lilToonVersion: "2.3.4",
			shaderVariant: "Hidden/lilToonCutoutOutline",
			renderMode: "cutout",
			properties: {
				_Color: [0.2, 0.3, 0.4, 1],
				_Cutoff: 0.5,
				_MainTex_ST: [2, 2, -0.25, 0.1],
				_EmissionColor: [4, 2, 1, 1],
			},
			textures: { _MainTex: { index: 0, texCoord: 0 } },
		} satisfies GLTFLilToonMaterialDefinition;
		expect(validate(material), JSON.stringify(validate.errors)).toBe(true);
	});

	it.each([
		{},
		{ renderMode: "opaque" },
		{ renderMode: "transparent" },
		{ lilToonVersion: 234 },
		{ properties: { _CustomToggle: true, _FutureValue: [-1, 2] } },
		{ textures: { _CustomTexture: 0, _MainTex: { index: 12 } } },
		{ textures: { _MainTex: { index: 0, texCoord: 2 } } },
		{ shaderVariant: "Hidden/lilToonFur" },
	])(
		"accepts supported data shapes without a shader-support gate: %j",
		(data) => {
			expect(validate(data), JSON.stringify(validate.errors)).toBe(true);
		},
	);

	it.each([
		null,
		[],
		{ specVersion: "2.0" },
		{ specVersion: 1 },
		{ renderMode: "blend" },
		{ properties: { _Color: { r: 1, g: 1, b: 1 } } },
		{ properties: { _Color: [1, "1", 1, 1] } },
		{ properties: { _Color: null } },
		{ properties: { _UseShadow: "true" } },
		{ textures: { _MainTex: -1 } },
		{ textures: { _MainTex: 0.5 } },
		{ textures: { _MainTex: "texture.png" } },
		{ textures: { _MainTex: {} } },
		{ textures: { _MainTex: { index: -1 } } },
		{ textures: { _MainTex: { index: 0.5 } } },
		{ textures: { _MainTex: { index: 0, texCoord: -1 } } },
		{ textures: { _MainTex: { index: 0, texCoord: 0.5 } } },
		{ renderMdoe: "opaque" },
		{ asset: { version: "2.0" }, materials: [] },
	])("rejects invalid extension authoring data: %j", (data) => {
		expect(validate(data)).toBe(false);
	});

	it("validates the glTF material example in the format guide", () => {
		const guide = readFileSync(
			resolve(PROJECT_ROOT, "docs/MATERIAL_FORMAT.md"),
			"utf8",
		);
		const examples = [...guide.matchAll(/```json\s+([\s\S]*?)```/g)].map(
			(match) => JSON.parse(match[1]),
		);
		const gltf = examples.find((example) => example.materials);
		expect(gltf).toBeDefined();
		for (const material of gltf.materials) {
			expect(
				validate(material.extensions[LILTOON_GLTF_EXTENSION]),
				JSON.stringify(validate.errors),
			).toBe(true);
		}
	});
});
