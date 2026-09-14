import { LinearMipmapNearestFilter, NearestMipmapNearestFilter } from "three";
import { LILTOON_SHADERS } from "../../src/generated/shaders.js";
import { LILTOON_DEFAULTS } from "../../src/generated/defaults.js";
import { SPECIALIZATION_PROPERTIES } from "../../src/shader/features.js";
import {
	DataTexture,
	LinearFilter,
	NearestFilter,
	RepeatWrapping,
	ClampToEdgeWrapping,
	Texture,
	SRGBColorSpace,
	LinearSRGBColorSpace,
} from "three";
import { describe, expect, it, vi } from "vitest";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { getLilToonShaderProgram } from "../../src/shader/ShaderProgramLibrary.js";
import { assertTextureLimits } from "../../src/renderer/textureLimits.js";
import type { ShaderResource } from "../../src/generated/shaders.js";

const properties = {
	_UseEmission: 1,
	_UseMatCap: 1,
	_UseRim: 1,
	_UseReflection: 1,
	_UseMain2ndTex: 1,
	_AlphaMaskMode: 1,
};
const slots = [
	"_EmissionMap",
	"_EmissionBlendMask",
	"_MatCapBlendMask",
	"_RimColorTex",
	"_SmoothnessTex",
	"_Main2ndBlendMask",
	"_AlphaMask",
];
describe("material specialization", () => {
	it.each(["opaque", "cutout", "transparent"] as const)(
		"preserves the reported feature combination in %s",
		(renderMode) => {
			const textures = Object.fromEntries(
				slots.map((p) => [p, new DataTexture()]),
			);
			const material = new LilToonMaterial({
				renderMode,
				properties,
				textures,
			});
			expect(material.getWarnings()).toEqual([]);
			for (const slot of slots)
				expect(material.fragmentShader.includes(`Combined${slot}`), slot).toBe(
					slot !== "_AlphaMask" || renderMode !== "opaque",
				);
		},
	);
	it("reuses structural programs across materials and keeps numeric animation as uniforms", () => {
		const a = new LilToonMaterial({
			properties,
			textures: { _EmissionMap: new Texture() },
		});
		const b = new LilToonMaterial({
			properties,
			textures: { _EmissionMap: new Texture() },
		});
		expect(a.shaderKey).toBe(b.shaderKey);
		const uniforms = a.uniforms;
		const key = a.shaderKey,
			version = a.version;
		a.setProperty("_EmissionBlend", 0.4);
		expect(a.shaderKey).toBe(key);
		expect(a.version).toBe(version);
		a.setProperty("_UseEmission", 0);
		expect(a.shaderKey).not.toBe(key);
		expect(a.uniforms).toBe(uniforms);
		expect(a.fragmentShader).not.toContain("Combined_EmissionMap");
		a.setProperty("_UseEmission", 1);
		expect(a.shaderKey).toBe(key);
		a.setTexture("_EmissionMap", null);
		expect(a.fragmentShader).not.toContain("Combined_EmissionMap");
	});
	it("follows sampler_MainTex without mutating source textures and owns clone lifetimes", () => {
		const main = new Texture();
		main.minFilter = NearestFilter;
		main.magFilter = NearestFilter;
		main.wrapS = ClampToEdgeWrapping;
		const mask = new Texture();
		mask.minFilter = LinearFilter;
		mask.wrapS = RepeatWrapping;
		const dispose = vi.spyOn(mask, "dispose");
		const material = new LilToonMaterial({
			properties,
			textures: {
				_MainTex: main,
				_EmissionBlendMask: mask,
				_EmissionMap: mask,
			},
		});
		const bound = (m: LilToonMaterial, p: string) =>
			Object.entries(m.uniforms).find(([n]) => n.includes(`Combined${p}`))![1]
				.value as Texture;
		const view = bound(material, "_EmissionBlendMask");
		expect(view).not.toBe(mask);
		expect(view.source).toBe(mask.source);
		expect(view.minFilter).toBe(NearestFilter);
		expect(view.wrapS).toBe(ClampToEdgeWrapping);
		expect(view.colorSpace).toBe(LinearSRGBColorSpace);
		expect(bound(material, "_EmissionMap").colorSpace).toBe(SRGBColorSpace);
		expect(mask.minFilter).toBe(LinearFilter);
		expect(mask.colorSpace).toBe("");
		const clone = material.clone();
		expect(bound(clone, "_EmissionBlendMask")).not.toBe(view);
		const release = vi.spyOn(view, "dispose");
		material.setTexture("_EmissionBlendMask", null);
		expect(release).toHaveBeenCalledOnce();
		material.dispose();
		clone.dispose();
		expect(dispose).not.toHaveBeenCalled();
	});
	it("aliases identical image/state/interpretation, preserving independent UV uniforms", () => {
		const texture = new Texture();
		const options = {
			_UseMatCap: 1,
			_UseMatCap2nd: 1,
			_MatCapCustomNormal: 1,
			_MatCap2ndCustomNormal: 1,
		};
		const shared = getLilToonShaderProgram("opaque", options, {
			_MatCapBumpMap: texture,
			_MatCap2ndBumpMap: texture,
		});
		const normals = shared.resources.filter((r) =>
			r.property.includes("BumpMap"),
		);
		expect(normals).toHaveLength(2);
		expect(new Set(normals.map((r) => r.uniform)).size).toBe(1);
		expect(shared.fragmentShader).toContain("_Globals._MatCap2ndBumpMap_ST");
		const distinct = getLilToonShaderProgram("opaque", options, {
			_MatCapBumpMap: texture,
			_MatCap2ndBumpMap: new Texture(),
		});
		expect(distinct.key).not.toBe(shared.key);
		expect(
			new Set(
				distinct.resources
					.filter((r) => r.property.includes("BumpMap"))
					.map((r) => r.uniform),
			).size,
		).toBe(2);
	});
	it("retains large feature combinations for contexts with higher fragment capacity", () => {
		const textures = Object.fromEntries(
			LILTOON_SHADERS["standard-cutout"].resources
				.filter((r) => !r.property.startsWith("__"))
				.map((r) => [r.property, new Texture()]),
		);
		const p = getLilToonShaderProgram(
			"cutout",
			{
				...LILTOON_DEFAULTS,
				...Object.fromEntries(SPECIALIZATION_PROPERTIES.map((p) => [p, 1])),
				_AlphaMaskMode: 1,
				_MainGradationStrength: 1,
				_DissolveParams: [1, 0, 0.5, 0.1],
				_Main2ndDissolveParams: [1, 0, 0.5, 0.1],
				_Main3rdDissolveParams: [1, 0, 0.5, 0.1],
			},
			textures,
		);
		expect(
			p.resources.filter((r) => r.stage === "fragment").length,
		).toBeGreaterThan(16);
		expect(() =>
			assertTextureLimits(
				"Large",
				p.resources,
				{ vertex: 32, fragment: 128, combined: 160 },
				true,
			),
		).not.toThrow();
		for (const slot of slots)
			expect(
				p.resources.some((r) => r.property === slot),
				slot,
			).toBe(true);
	});

	it("keeps borrowed mip filters complete for textures without mip levels", () => {
		const main = new Texture();
		main.minFilter = NearestMipmapNearestFilter;
		const material = new LilToonMaterial({
			properties: { _UseEmission: 1 },
			textures: { _MainTex: main, _EmissionBlendMask: new DataTexture() },
		});
		const view = Object.entries(material.uniforms).find(([key]) =>
			key.includes("Combined_EmissionBlendMask"),
		)![1].value as Texture;
		expect(view.minFilter).toBe(NearestFilter);
		expect(main.minFilter).toBe(NearestMipmapNearestFilter);
	});
	it("maps the upstream linear-clamp sampler to bilinear nearest-mip filtering", () => {
		const source = new Texture();
		const material = new LilToonMaterial({
			properties: { _UseShadow: 1, _ShadowColorType: 1 },
			textures: { _ShadowColorTex: source },
		});
		const view = Object.entries(material.uniforms).find(([key]) =>
			key.includes("Combined_ShadowColorTex"),
		)![1].value as Texture;
		expect(view.minFilter).toBe(LinearMipmapNearestFilter);
		expect(view.wrapS).toBe(ClampToEdgeWrapping);
	});

	it("does not reserve a fragment unit when no feature consumes scene shadows", () => {
		const p = getLilToonShaderProgram("opaque", {
			_UseShadow: 0,
			_UseReflection: 0,
			_UseBacklight: 0,
		});
		expect(p.resources.some((r) => r.property === "__shadow")).toBe(false);
	});

	it("uses only the active shadow color sampling path", () => {
		for (const mode of [0, 1]) {
			const p = getLilToonShaderProgram(
				"opaque",
				{ _UseShadow: 1, _ShadowColorType: mode },
				{ _ShadowColorTex: new Texture() },
			);
			const r = p.resources.filter((r) => r.property === "_ShadowColorTex");
			expect(r).toHaveLength(1);
			expect(r[0]!.sampler).toBe(
				mode ? "lil_sampler_linear_clamp" : "sampler_MainTex",
			);
		}
	});
	it("accepts more than sixteen combined units and rejects only actual API limits", () => {
		const resources: ShaderResource[] = Array.from({ length: 16 }, (_, i) => ({
			uniform: `tex${i}`,
			property: `_tex${i}`,
			sampler: "sampler_MainTex",
			type: "sampler2D",
			stage: "fragment",
		}));
		resources.push({
			uniform: "bones",
			property: "__bones",
			sampler: "dummy",
			type: "sampler2D",
			stage: "vertex",
		});
		expect(() =>
			assertTextureLimits(
				"Face",
				resources,
				{ vertex: 16, fragment: 16, combined: 32 },
				true,
			),
		).not.toThrow();
		expect(() =>
			assertTextureLimits(
				"Face",
				resources,
				{ vertex: 1, fragment: 16, combined: 32 },
				true,
			),
		).toThrow("vertex 2/1");
		expect(() =>
			assertTextureLimits(
				"Face",
				resources,
				{ vertex: 16, fragment: 15, combined: 32 },
				true,
			),
		).toThrow("fragment 16/15");
		expect(() =>
			assertTextureLimits(
				"Face",
				resources,
				{ vertex: 16, fragment: 16, combined: 17 },
				true,
			),
		).toThrow("combined 18/17");
		expect(() =>
			assertTextureLimits(
				"Face",
				resources,
				{ vertex: 32, fragment: 32, combined: 64 },
				true,
			),
		).not.toThrow();
	});
});
