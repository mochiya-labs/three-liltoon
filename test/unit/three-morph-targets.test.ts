import {
	BufferGeometry,
	Float32BufferAttribute,
	Mesh,
	ShaderChunk,
	Texture,
} from "three";
import { describe, expect, it } from "vitest";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import {
	updateThreeMorphDefines,
	withThreeMorphTargets,
} from "../../src/renderer/threeMorphTargets.js";

function geometry(count: number, normals = false, colors = false) {
	const g = new BufferGeometry();
	const attribute = new Float32BufferAttribute([0, 0, 0], 3);
	g.setAttribute("position", attribute);
	if (count) g.morphAttributes.position = Array(count).fill(attribute);
	if (normals) g.morphAttributes.normal = Array(count).fill(attribute);
	if (colors) g.morphAttributes.color = Array(count).fill(attribute);
	return g;
}

describe("Three.js morph integration", () => {
	it("specializes shared raw materials for the full geometry count without changing targets or weights", () => {
		const material = new LilToonMaterial();
		for (const count of [1, 64, 65, 526, 0, 69]) {
			const g = geometry(count),
				mesh = new Mesh(g, material);
			const attributes = g.morphAttributes.position;
			const weights = mesh.morphTargetInfluences;
			weights?.fill(0.25);
			updateThreeMorphDefines(material, g);
			expect(material.defines.MORPHTARGETS_COUNT).toBe(count);
			expect(material.defines.USE_MORPHTARGETS).toBe(count > 0);
			expect(g.morphAttributes.position).toBe(attributes);
			expect(mesh.morphTargetInfluences).toBe(weights);
			expect(weights?.every((w) => w === 0.25) ?? true).toBe(true);
			const version = material.version;
			updateThreeMorphDefines(material, g);
			expect(material.version).toBe(version);
		}
	});
	it("matches Three's data stride when normals or colors are present", () => {
		const material = new LilToonMaterial();
		for (const [normals, colors, stride] of [
			[false, false, 1],
			[true, false, 2],
			[false, true, 3],
			[true, true, 3],
		] as const) {
			updateThreeMorphDefines(material, geometry(69, normals, colors));
			expect(material.defines.MORPHTARGETS_TEXTURE_STRIDE).toBe(stride);
			expect(material.defines.USE_MORPHNORMALS).toBe(normals);
		}
	});
	it("uses the installed peer's morph chunks for forward, outline, clones and profile changes", () => {
		const material = new LilToonMaterial();
		const outline = new LilToonMaterial({ pass: "outline" });
		material.setTexture("_EmissionBlendMask", new Texture());
		for (const m of [material, outline, material.clone()]) {
			for (const name of [
				"morphtarget_pars_vertex",
				"morphtarget_vertex",
				"morphnormal_vertex",
			] as const) {
				expect(m.vertexShader).toContain(`#include <${name}>`);
				expect(ShaderChunk[name]).toBeTruthy();
			}
			expect(m.vertexShader).toContain(
				"lilToonMain(vec4(transformed, position.w), objectNormal)",
			);
			for (const name of [
				"morphTargetsTexture",
				"morphTargetsTextureSize",
				"morphTargetInfluences",
				"morphTargetBaseInfluence",
			])
				expect(m.uniforms).not.toHaveProperty(name);
			expect(
				Object.keys(m.globalUniforms).some((n) => n.startsWith("uMorph")),
			).toBe(false);
		}
	});
	it("detects a changed compiled vertex interface instead of silently omitting morphs", () => {
		expect(() => withThreeMorphTargets("void main() {}")).toThrow(
			"vertex entry",
		);
	});
});
