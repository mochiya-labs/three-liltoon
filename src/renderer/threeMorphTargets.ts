import type { BufferGeometry, RawShaderMaterial } from "three";

/** Feed Three's morphed attributes into the compiled lilToon vertex entry. */
export function withThreeMorphTargets(source: string): string {
	if (
		!source.includes("void main()") ||
		!source.includes("in vec4 position;") ||
		!source.includes("in vec3 normal;")
	) {
		throw new Error(
			"[three-liltoon] Compiled vertex entry no longer matches the Three.js morph integration.",
		);
	}
	return (
		source.replace(
			"void main()",
			`
precision highp sampler2DArray;
#include <morphtarget_pars_vertex>
void lilToonMain(vec4 position, vec3 normal)`,
		) +
		`
void main() {
	vec3 transformed = position.xyz;
	vec3 objectNormal = normal;
	#include <morphnormal_vertex>
	#include <morphtarget_vertex>
	lilToonMain(vec4(transformed, position.w), objectNormal);
}
`
	);
}

/** RawShaderMaterial omits Three's geometry defines; supply only that metadata.
 * WebGLRenderer owns all morph uniforms, texture packing, caching and disposal.
 */
export function updateThreeMorphDefines(
	material: RawShaderMaterial,
	geometry: BufferGeometry,
): void {
	const morph = geometry.morphAttributes;
	const count = (morph.position || morph.normal || morph.color)?.length ?? 0;
	const next = {
		USE_MORPHTARGETS: Boolean(morph.position),
		USE_MORPHNORMALS: Boolean(morph.normal),
		MORPHTARGETS_COUNT: count,
		MORPHTARGETS_TEXTURE_STRIDE: morph.color
			? 3
			: morph.normal
				? 2
				: morph.position
					? 1
					: 0,
	};
	let changed = false;
	for (const [name, value] of Object.entries(next)) {
		if (material.defines[name] !== value) {
			material.defines[name] = value;
			changed = true;
		}
	}
	if (changed) material.needsUpdate = true;
}
