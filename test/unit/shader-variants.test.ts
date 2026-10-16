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
	it("rejects contradictory or unsupported direct selections", () => {
		expect(
			() =>
				new LilToonMaterial({
					shaderVariant: "Hidden/lilToonOutline",
					renderMode: "transparent",
				}),
		).toThrow(/Conflicting/);
		expect(
			() =>
				new LilToonMaterial({
					shaderVariant: "lilToon",
					transparencyMode: "two-pass",
				}),
		).toThrow(/Conflicting/);
		expect(
			() =>
				new LilToonMaterial({
					shaderVariant: "lilToonMulti" as LilToonShaderVariant,
				}),
		).toThrow(/Unsupported/);
	});
});
