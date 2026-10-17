import { Scene } from "three";
import type { GLTF } from "three/examples/jsm/loaders/GLTFLoader.js";
import { describe, expect, it } from "vitest";
import type { GLTFParser } from "three/examples/jsm/loaders/GLTFLoader.js";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { LilToonMaterialFactory } from "../../src/material/LilToonMaterialFactory.js";
import {
	shaderVariants,
	type LilToonShaderVariant,
} from "../../src/material/shaderVariants.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";

describe("Unity shader selection", () => {
	it.each(Object.keys(shaderVariants) as LilToonShaderVariant[])(
		"preserves %s through loading, cloning and serialization",
		async (shaderVariant) => {
			const [mode, transparency, outline] = shaderVariants[shaderVariant];
			for (const useOutline of [0, 1]) {
				const definition = {
					shaderVariant,
					properties: { _UseOutline: useOutline, _OutlineWidth: 0 },
				};
				const parser = {
					json: {
						materials: [
							{ extensions: { MOCHIYA_materials_liltoon: definition } },
						],
					},
					associations: new Map(),
				} as unknown as GLTFParser;
				const loaded = (await new GLTFLilToonExtension(parser).loadMaterial(
					0,
				)) as LilToonMaterial;
				const direct = new LilToonMaterial(definition);
				const clone = loaded.clone();
				const restored = new LilToonMaterialFactory().create(
					loaded.toLilToonJSON(),
				);
				for (const material of [loaded, direct, clone, restored]) {
					expect(material.shaderVariant).toBe(shaderVariant);
					expect(material.renderMode).toBe(mode);
					expect(material.transparencyMode).toBe(transparency);
					expect(material.featureSet.outline).toBe(outline);
					material.setProperty("_UseOutline", 1 - useOutline);
					expect(material.featureSet.outline).toBe(outline);
					expect(material.getProperty("_UseOutline")).toBe(1 - useOutline);
					material.dispose();
				}
			}
		},
	);
	it("keeps shader identity consistent when mode and alpha-test conveniences change", () => {
		const material = new LilToonMaterial({
			shaderVariant: "Hidden/lilToonOutline",
		});
		material.alphaTest = 0.4;
		expect(material.shaderVariant).toBe("Hidden/lilToonCutoutOutline");
		material.renderMode = "transparent";
		material.transparencyMode = "two-pass";
		expect(material.shaderVariant).toBe(
			"Hidden/lilToonTwoPassTransparentOutline",
		);
		material.renderMode = "gem";
		expect(material.shaderVariant).toBe("Hidden/lilToonGem");
		expect(material.featureSet.outline).toBe(false);
		material.renderMode = "opaque";
		expect(material.shaderVariant).toBe("lilToon");
		material.dispose();
	});
	it("does not guess outline presence from width or Multi properties", () => {
		const material = new LilToonMaterial({
			properties: { _UseOutline: 1, _OutlineWidth: 10 },
		});
		expect(material.featureSet.outline).toBe(false);
		expect(material.shaderVariant).toBe("lilToon");
		material.dispose();
	});
	it("uses shader identity over contradictory legacy modes in every input path", async () => {
		const input = {
			shaderVariant: "lilToon" as const,
			renderMode: "transparent" as const,
			transparencyMode: "two-pass" as const,
			properties: {
				_TransparentMode: 2,
				_Cull: 0,
				_ZWrite: 1,
				_SrcBlend: 1,
				_DstBlend: 10,
			},
			textures: {},
			renderQueue: 2000,
		};
		const parser = {
			json: {
				materials: [{ extensions: { MOCHIYA_materials_liltoon: input } }],
			},
			associations: new Map(),
		} as unknown as GLTFParser;
		const warnings: string[] = [];
		const loader = new GLTFLilToonExtension(parser, {
			onWarning: (w) => warnings.push(w.code),
		});
		const materials = [
			new LilToonMaterial(input),
			new LilToonMaterialFactory().create(input),
			(await loader.loadMaterial(0)) as LilToonMaterial,
		];
		for (const material of materials) {
			expect(material.shaderVariant).toBe("lilToon");
			expect(material.renderMode).toBe("opaque");
			expect(material.transparencyMode).toBe("normal");
			expect(material.getProperty("_TransparentMode")).toBe(2);
			expect(
				material.getWarnings().filter((w) => w.code === "shader-mode-conflict"),
			).toHaveLength(2);
			const json = material.toLilToonJSON();
			expect(json).not.toHaveProperty("renderMode");
			expect(json).not.toHaveProperty("transparencyMode");
			expect(new LilToonMaterialFactory().create(json).shaderVariant).toBe(
				"lilToon",
			);
			material.dispose();
		}
		await loader.afterRoot({
			scene: new Scene(),
			userData: {},
		} as unknown as GLTF);
		expect(warnings).toContain("shader-mode-conflict");
	});
	it.each(Object.keys(shaderVariants) as LilToonShaderVariant[])(
		"retains legacy mode-only selection for %s",
		(name) => {
			const [renderMode, transparencyMode] = shaderVariants[name];
			const material = new LilToonMaterial({ renderMode, transparencyMode });
			expect(material.renderMode).toBe(renderMode);
			expect(material.transparencyMode).toBe(transparencyMode);
			expect(material.featureSet.outline).toBe(false);
			material.dispose();
		},
	);
	it("rejects unsupported direct shader names", () => {
		expect(
			() =>
				new LilToonMaterial({
					shaderVariant: "lilToonMulti" as LilToonShaderVariant,
				}),
		).toThrow(/Unsupported/);
	});
});
