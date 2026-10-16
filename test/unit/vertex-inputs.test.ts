import { describe, expect, it } from "vitest";
import {
	BufferGeometry,
	Float32BufferAttribute,
	RawShaderMaterial,
} from "three";
import { LILTOON_SHADERS } from "../../src/generated/shaders.js";
import {
	updateVertexInputs,
	withVertexInputs,
} from "../../src/renderer/vertexInputs.js";

describe("vertex input isolation", () => {
	it("uses the same locations across generated surface and auxiliary shaders", () => {
		const locations = new Map<string, number>();
		for (const shader of Object.values(LILTOON_SHADERS)) {
			for (const match of shader.vertex.matchAll(
				/layout\(location = (\d+)\) in \w+ (\w+);/g,
			)) {
				const previous = locations.get(match[2]);
				if (previous !== undefined)
					expect(Number(match[1]), match[2]).toBe(previous);
				locations.set(match[2], Number(match[1]));
			}
		}
		expect(locations.size).toBeGreaterThanOrEqual(9);
	});
	it("changes geometry-presence defines without rebuilding buffers or repeatedly invalidating a material", () => {
		const material = new RawShaderMaterial();
		const geometry = new BufferGeometry();
		const tangent = new Float32BufferAttribute([1, 0, 0, 1], 4);
		geometry.setAttribute("tangent", tangent);
		updateVertexInputs(material, geometry);
		const version = material.version;
		updateVertexInputs(material, geometry);
		expect(material.version).toBe(version);
		expect(geometry.getAttribute("tangent")).toBe(tangent);
		expect(material.defines.LIL_HAS_tangent).toBe(1);
		geometry.deleteAttribute("tangent");
		updateVertexInputs(material, geometry);
		expect(material.defines.LIL_HAS_tangent).toBeUndefined();
		expect(material.version).toBeGreaterThan(version);
		const source = withVertexInputs("layout(location = 2) in vec4 tangent;");
		expect(source).toContain("const vec4 tangent = vec4(1.0, 0.0, 0.0, 1.0)");
		material.dispose();
		geometry.dispose();
	});
});
