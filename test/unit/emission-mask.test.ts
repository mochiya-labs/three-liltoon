import { DataTexture, LinearSRGBColorSpace, Vector4 } from "three";
import type { GLTFParser } from "three/examples/jsm/loaders/GLTFLoader.js";
import { describe, expect, it } from "vitest";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { LILTOON_GLTF_EXTENSION } from "../../src/loaders/types.js";
import { getLilToonShaderProgram } from "../../src/shader/ShaderProgramLibrary.js";

describe("emission blend masks", () => {
	it.each(["opaque", "cutout", "transparent"] as const)(
		"binds both masks and independent UV transforms in %s",
		(renderMode) => {
			const first = new DataTexture();
			const second = new DataTexture();
			const material = new LilToonMaterial({
				renderMode,
				properties: {
					_UseEmission: 1,
					_UseEmission2nd: 1,
					_UseShadow: 1,
					_EmissionBlendMask_ST: [2, 3, 0.1, 0.2],
					_Emission2ndBlendMask_ST: [4, 5, 0.3, 0.4],
					_EmissionBlendMask_ScrollRotate: [0.1, 0.2, 0.3, 0.4],
				},
				textures: {
					_EmissionBlendMask: first,
					_Emission2ndBlendMask: second,
					_ShadowBorderMask: new DataTexture(),
				},
			});
			for (const candidate of [material, material.clone()]) {
				for (const [name, texture] of [
					["EmissionBlendMask", first],
					["Emission2ndBlendMask", second],
				] as const) {
					expect(
						Object.entries(candidate.uniforms).some(
							([key, uniform]) =>
								key.includes(`Combined_${name}`) &&
								uniform.value?.source === texture.source,
						),
					).toBe(true);
					expect(texture.colorSpace).toBe(LinearSRGBColorSpace);
				}
				expect(
					(candidate.globalUniforms._EmissionBlendMask_ST as Vector4).toArray(),
				).toEqual([2, 3, 0.1, 0.2]);
				expect(
					(
						candidate.globalUniforms._Emission2ndBlendMask_ST as Vector4
					).toArray(),
				).toEqual([4, 5, 0.3, 0.4]);
				expect(
					(
						candidate.globalUniforms._EmissionBlendMask_ScrollRotate as Vector4
					).toArray(),
				).toEqual([0.1, 0.2, 0.3, 0.4]);
				expect(candidate.fragmentShader).toContain("Combined_ShadowBorderMask");
			}
		},
	);

	it("selects the mask profile when only the second emission mask is assigned", () => {
		const material = new LilToonMaterial({
			textures: { _Emission2ndBlendMask: new DataTexture() },
		});
		expect(material.fragmentShader).toContain("Combined_Emission2ndBlendMask");
	});

	it("loads the face's emission mask alongside its shadow mask through glTF", async () => {
		const textures = [new DataTexture(), new DataTexture()];
		const parser = {
			json: {
				materials: [
					{
						name: "Shinano_face",
						extensions: {
							[LILTOON_GLTF_EXTENSION]: {
								specVersion: "1.0",
								renderMode: "opaque",
								properties: {
									_UseEmission: 1,
									_EmissionColor: [3.594362, 4.193802, 5.215357, 0.16],
									_EmissionMainStrength: 1,
								},
								textures: {
									_EmissionBlendMask: { index: 0 },
									_ShadowBorderMask: { index: 1 },
								},
							},
						},
					},
				],
			},
			associations: new Map(),
			getDependency: (_kind: string, index: number) =>
				Promise.resolve(textures[index]),
		} as unknown as GLTFParser;
		const material = (await new GLTFLilToonExtension(parser).loadMaterial(
			0,
		)) as LilToonMaterial;
		expect(material.name).toBe("Shinano_face");
		expect(
			Object.entries(material.uniforms).some(
				([name, uniform]) =>
					name.includes("Combined_EmissionBlendMask") &&
					uniform.value === textures[0],
			),
		).toBe(true);
		expect(material.getProperty("_EmissionColor")).toEqual([
			3.594362, 4.193802, 5.215357, 0.16,
		]);
	});

	it.each(["opaque", "cutout", "transparent"] as const)(
		"ships complete, sampler-safe %s emission shaders",
		(renderMode) => {
			const program = getLilToonShaderProgram(renderMode, "emission-mask");
			for (const name of [
				"EmissionMap",
				"Emission2ndMap",
				"EmissionBlendMask",
				"Emission2ndBlendMask",
				"ShadowBorderMask",
			]) {
				expect(program.fragmentShader).toContain(`Combined_${name}`);
			}
			for (const name of ["EmissionBlendMask", "Emission2ndBlendMask"]) {
				expect(program.fragmentShader).toContain(`_Globals._${name}_ST`);
				expect(program.fragmentShader).toContain(
					`_Globals._${name}_ScrollRotate`,
				);
			}
			// The runtime Three morph chunk contributes the additional sampler.
			expect(program.samplerBindings.size + 1).toBeLessThanOrEqual(16);
			expect(program.vertexShader).toContain("skinIndex");
			expect(program.vertexShader).not.toContain("uMorphTarget");
		},
	);
});
