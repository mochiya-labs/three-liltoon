import type { WebGLRenderer } from "three";
import type { ShaderResource } from "../generated/shaders.js";
export interface TextureLimits {
	vertex: number;
	fragment: number;
	combined: number;
}
const limits = new WeakMap<WebGLRenderer, TextureLimits>();
export function assertTextureLimits(
	name: string,
	resources: readonly ShaderResource[],
	limit: TextureLimits,
	morph = false,
): void {
	const vertex =
		new Set(resources.filter((r) => r.stage === "vertex").map((r) => r.uniform))
			.size + Number(morph);
	const fragment = new Set(
		resources.filter((r) => r.stage === "fragment").map((r) => r.uniform),
	).size;
	const combined = vertex + fragment;
	if (
		vertex > limit.vertex ||
		fragment > limit.fragment ||
		combined > limit.combined
	)
		throw new Error(
			`[three-liltoon] ${name}: texture units exceed this device's limits (vertex ${vertex}/${limit.vertex}, fragment ${fragment}/${limit.fragment}, combined ${combined}/${limit.combined}). Enabled features were preserved; use fewer textures or a device with higher limits.`,
		);
}
export function checkTextureLimits(
	renderer: WebGLRenderer,
	name: string,
	resources: readonly ShaderResource[],
	morph: boolean,
): void {
	let limit = limits.get(renderer);
	if (!limit) {
		const gl = renderer.getContext();
		limit = {
			vertex: gl.getParameter(gl.MAX_VERTEX_TEXTURE_IMAGE_UNITS),
			fragment: gl.getParameter(gl.MAX_TEXTURE_IMAGE_UNITS),
			combined: gl.getParameter(gl.MAX_COMBINED_TEXTURE_IMAGE_UNITS),
		};
		limits.set(renderer, limit);
	}
	assertTextureLimits(name, resources, limit, morph);
}
