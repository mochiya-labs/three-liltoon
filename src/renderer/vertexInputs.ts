import type { BufferGeometry, RawShaderMaterial } from "three";

// Generic WebGL attribute constants are global state, not VAO state. Compile
// absent inputs as constants so cached bindings and host materials cannot corrupt them.
const defaults: Record<string, string> = {
	normal: "vec3(0.0, 0.0, 1.0)",
	tangent: "vec4(1.0, 0.0, 0.0, 1.0)",
	color: "vec4(1.0)",
	uv: "vec2(0.0)",
	uv1: "vec2(0.0)",
	uv2: "vec2(0.0)",
	uv3: "vec2(0.0)",
	skinIndex: "vec4(0.0)",
	skinWeight: "vec4(1.0, 0.0, 0.0, 0.0)",
};
const names = Object.keys(defaults);
export function withVertexInputs(source: string): string {
	return source.replace(
		/layout\(location = \d+\) in (vec[234]) (\w+);/g,
		(declaration, type: string, name: string) => {
			const value = defaults[name];
			return value
				? `#ifdef LIL_HAS_${name}\n${declaration}\n#else\nconst ${type} ${name} = ${value};\n#endif`
				: declaration;
		},
	);
}
export function updateVertexInputs(
	material: RawShaderMaterial,
	geometry: BufferGeometry,
): void {
	for (const name of names) {
		const key = `LIL_HAS_${name}`;
		const present = geometry.hasAttribute(name);
		if (present === (material.defines[key] === 1)) continue;
		if (present) material.defines[key] = 1;
		else delete material.defines[key];
		material.needsUpdate = true;
	}
}
