import { CubeTexture, DataTexture, Group, Vector4 } from "three";
import type {
	GLTF,
	GLTFParser,
} from "three/examples/jsm/loaders/GLTFLoader.js";
import { describe, expect, it, vi } from "vitest";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { LilToonMaterialLoader } from "../../src/loaders/LilToonMaterialLoader.js";
import { LILTOON_GLTF_EXTENSION } from "../../src/loaders/types.js";
import {
	shaderPropertyReferences,
	type LilToonWarning,
} from "../../src/utils/materialWarnings.js";

describe("material profile warnings", () => {
	it("does not mistake a declared uniform for an implemented feature", () => {
		expect(
			shaderPropertyReferences(
				"struct Globals { float _UseGlitter; };",
				"if (_Globals._UseMatCap != 0.0) {}",
			),
		).toEqual(new Set(["_UseMatCap"]));
	});

	it.each(["opaque", "cutout", "transparent"] as const)(
		"reports mixed emission/MatCap/reflection requirements for %s",
		(renderMode) => {
			const material = new LilToonMaterial({
				name: "Face",
				renderMode,
				properties: { _UseEmission: 1, _UseMatCap: 1, _UseReflection: 1 },
				textures: {
					_EmissionBlendMask: new DataTexture(),
					_MatCapBlendMask: new DataTexture(),
					_SmoothnessTex: new DataTexture(),
				},
			});
			const warnings = material.getWarnings();
			expect(warnings).toEqual(
				expect.arrayContaining([
					expect.objectContaining({
						code: "unsupported-feature",
						property: "_UseReflection",
					}),
					expect.objectContaining({
						code: "unused-texture",
						property: "_MatCapBlendMask",
					}),
				]),
			);
			expect(
				warnings.every(
					(warning) =>
						warning.severity === "warning" &&
						warning.materialName === "Face" &&
						warning.shaderKey === `standard-${renderMode}-emission-mask`,
				),
			).toBe(true);
			expect(
				warnings.some((warning) => warning.property === "_EmissionBlendMask"),
			).toBe(false);
			// The parent warning covers reflection; do not repeat one for every child texture.
			expect(
				warnings.some((warning) => warning.property === "_SmoothnessTex"),
			).toBe(false);
			expect(material.getProperty("_UseReflection")).toBe(1);
			expect(material.clone().getWarnings()).toEqual(warnings);
			expect(JSON.parse(JSON.stringify(warnings))).toEqual(warnings);
		},
	);

	it("ignores dormant exported textures and compatibility aliases", () => {
		const material = new LilToonMaterial({
			textures: {
				_BaseMap: new DataTexture(),
				_BaseColorMap: new DataTexture(),
				_EmissionBlendMask: new DataTexture(),
				_MatCapBlendMask: new DataTexture(),
				_MainColorAdjustMask: new DataTexture(),
			},
		});
		expect(material.getWarnings()).toEqual([]);
	});

	it("rechecks edits against the existing program instead of silently reselecting it", () => {
		const material = new LilToonMaterial();
		material.setTexture("_EmissionBlendMask", new DataTexture());
		expect(material.getWarnings()).toEqual([]);
		material.setProperty("_UseEmission", 1);
		expect(material.shaderKey).toBe("standard-opaque");
		expect(material.getWarnings()).toContainEqual(
			expect.objectContaining({
				property: "_EmissionBlendMask",
				code: "unused-texture",
			}),
		);
		material.setTexture("_EmissionBlendMask", null);
		expect(material.getWarnings()).toEqual([]);
	});

	it("accepts shared MatCap normal aliases but detects later incompatible replacements", () => {
		const normal = new DataTexture();
		const material = new LilToonMaterial({
			properties: {
				_UseMatCap: 1,
				_MatCapCustomNormal: 1,
				_UseMatCap2nd: 1,
				_MatCap2ndCustomNormal: 1,
				_UseReflection: 1,
				_UseShadow: 1,
			},
			textures: {
				_BumpMap: normal,
				_MatCapBumpMap: normal,
				_MatCap2ndBumpMap: normal,
				_SmoothnessTex: new DataTexture(),
				_ShadowBorderMask: new DataTexture(),
			},
		});
		expect(material.getWarnings()).toEqual([]);
		material.setTexture("_MatCapBumpMap", new DataTexture());
		expect(material.getWarnings()).toContainEqual(
			expect.objectContaining({
				property: "_MatCapBumpMap",
				code: "unused-texture",
			}),
		);
	});

	it("warns rather than throwing for unsupported platform features", () => {
		const material = new LilToonMaterial({
			properties: {
				_TessellationMode: 1,
				_UseVRCLightVolumes: 1,
				_UseParallax: 0,
				_UsePOM: 1,
			},
		});
		expect(material.getWarnings().map((warning) => warning.property)).toEqual([
			"_TessellationMode",
			"_UseVRCLightVolumes",
		]);
	});

	it("recognizes vector-valued enable modes and does not warn on separate outline settings", () => {
		const material = new LilToonMaterial({
			properties: {
				_UseEmission: 1,
				_DissolveParams: new Vector4(1, 0, 0, 0),
				_UseOutline: 1,
			},
			textures: {
				_EmissionBlendMask: new DataTexture(),
				_DissolveMask: new DataTexture(),
				_OutlineTex: new DataTexture(),
			},
		});
		expect(material.getWarnings()).toContainEqual(
			expect.objectContaining({
				property: "_DissolveParams",
				code: "unsupported-feature",
			}),
		);
		expect(
			material
				.getWarnings()
				.some((warning) => warning.property.includes("Outline")),
		).toBe(false);
	});

	it("reports texture dimensionality mismatches and keeps GPU bindings safe", () => {
		const cube = new CubeTexture();
		const twoD = new DataTexture();
		const material = new LilToonMaterial({
			properties: { _UseReflection: 1, _ApplyReflection: 1 },
			textures: { _MainTex: cube, _ReflectionCubeTex: twoD },
		});
		expect(
			material
				.getWarnings()
				.filter((warning) => warning.code === "texture-type-mismatch")
				.map((warning) => warning.property),
		).toEqual(["_MainTex", "_ReflectionCubeTex"]);
		expect(
			Object.entries(material.uniforms)
				.filter(([name]) => name.includes("Combined_MainTex"))
				.every(([, uniform]) => uniform.value !== cube),
		).toBe(true);
		expect(
			Object.entries(material.uniforms)
				.filter(([name]) => name.includes("Combined_ReflectionCubeTex"))
				.every(([, uniform]) => uniform.value === null),
		).toBe(true);
	});
});

describe("glTF warning delivery", () => {
	it("also reports non-fatal features through the standalone JSON material loader", () => {
		const loader = new LilToonMaterialLoader();
		loader.onWarning = vi.fn();
		const material = loader.parse({
			renderMode: "opaque",
			properties: { _TessellationMode: 1 },
			textures: {},
		});
		expect(material).toBeInstanceOf(LilToonMaterial);
		expect(loader.onWarning).toHaveBeenCalledWith(
			expect.objectContaining({
				severity: "warning",
				property: "_TessellationMode",
			}),
		);
	});

	function parserStub() {
		return {
			json: {
				materials: [
					{
						name: "Unsupported",
						extensions: {
							[LILTOON_GLTF_EXTENSION]: {
								specVersion: "999",
								shaderVariant: "Hidden/lilToonFur",
								properties: { _TessellationMode: 1 },
							},
						},
					},
					{ name: "Ordinary" },
				],
			},
			associations: new Map(),
			getDependency: vi.fn(),
		} as unknown as GLTFParser;
	}

	it("delivers indexed warnings once per source material and preserves successful loading", async () => {
		const onWarning = vi.fn<(warning: LilToonWarning) => void>();
		const plugin = new GLTFLilToonExtension(parserStub(), { onWarning });
		expect(plugin.loadMaterial(1)).toBeNull();
		const material = await plugin.loadMaterial(0);
		await plugin.loadMaterial(0);
		const result = { scene: new Group(), userData: {} } as GLTF;
		await plugin.afterRoot(result);
		expect(material).toBeInstanceOf(LilToonMaterial);
		expect(result.userData.lilToonWarnings).toHaveLength(3);
		expect(onWarning).toHaveBeenCalledTimes(3);
		expect(onWarning.mock.calls.map(([warning]) => warning)).toEqual(
			result.userData.lilToonWarnings,
		);
		expect(
			onWarning.mock.calls.every(
				([warning]) =>
					warning.materialIndex === 0 && warning.materialName === "Unsupported",
			),
		).toBe(true);
	});

	it("uses a console fallback and does not leak diagnostics into the next load", async () => {
		const warn = vi.spyOn(console, "warn").mockImplementation(() => {});
		try {
			const plugin = new GLTFLilToonExtension(parserStub());
			await plugin.loadMaterial(0);
			await plugin.afterRoot({ scene: new Group(), userData: {} } as GLTF);
			expect(warn).toHaveBeenCalledTimes(3);
			const clean = { scene: new Group(), userData: {} } as GLTF;
			await new GLTFLilToonExtension(parserStub()).afterRoot(clean);
			expect(clean.userData.lilToonWarnings).toEqual([]);
		} finally {
			warn.mockRestore();
		}
	});
});
