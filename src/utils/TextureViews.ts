import {
	ClampToEdgeWrapping,
	LinearFilter,
	LinearMipmapLinearFilter,
	LinearMipmapNearestFilter,
	NearestFilter,
	NearestMipmapNearestFilter,
	NearestMipmapLinearFilter,
	RepeatWrapping,
	type Texture,
} from "three";
import { normalizeLilToonTexture, getNeutralTexture } from "./texture.js";
import { LILTOON_TEXTURE_SEMANTICS } from "../generated/textureSemantics.js";
import type { ShaderResource } from "../generated/shaders.js";

/** Material-owned views preserve caller textures and upstream sampler ownership. */
export class TextureViews {
	private readonly views = new Map<
		string,
		{ signature: string; texture: Texture }
	>();
	get(
		resource: ShaderResource,
		textures: Record<string, Texture | null>,
	): Texture | null {
		const source = textures[resource.property];
		if (!source) return null;
		const state = samplerState(resource, textures);
		const signature = JSON.stringify([source.uuid, source.version, ...state]);
		const existing = this.views.get(resource.uniform);
		if (existing?.signature === signature) return existing.texture;
		existing?.texture.dispose();
		const view = normalizeLilToonTexture(resource.property, source.clone());
		[view.wrapS, view.wrapT, view.minFilter, view.magFilter, view.anisotropy] =
			state as [
				typeof view.wrapS,
				typeof view.wrapT,
				typeof view.minFilter,
				typeof view.magFilter,
				number,
			];
		// A non-mipmapped input cannot acquire missing levels merely by borrowing a sampler.
		if (
			!view.generateMipmaps &&
			view.mipmaps.length === 0 &&
			view.minFilter !== LinearFilter &&
			view.minFilter !== NearestFilter
		)
			view.minFilter =
				view.minFilter === NearestMipmapNearestFilter ||
				view.minFilter === NearestMipmapLinearFilter
					? NearestFilter
					: LinearFilter;
		view.needsUpdate = true;
		this.views.set(resource.uniform, { signature, texture: view });
		return view;
	}
	retain(resources: readonly ShaderResource[]): void {
		const used = new Set(resources.map((r) => r.uniform));
		for (const [key, view] of this.views)
			if (!used.has(key)) {
				view.texture.dispose();
				this.views.delete(key);
			}
	}
	dispose(): void {
		for (const view of this.views.values()) view.texture.dispose();
		this.views.clear();
	}
}

function samplerState(
	resource: ShaderResource,
	textures: Record<string, Texture | null>,
) {
	const owner =
		textures[resource.sampler.replace(/^sampler/, "")] ??
		getNeutralTexture("white");
	const inline = resource.sampler.startsWith("lil_sampler_");
	const state = inline
		? [
				resource.sampler.includes("clamp")
					? ClampToEdgeWrapping
					: RepeatWrapping,
				resource.sampler.includes("clamp")
					? ClampToEdgeWrapping
					: RepeatWrapping,
				resource.sampler.includes("trilinear")
					? LinearMipmapLinearFilter
					: LinearMipmapNearestFilter,
				LinearFilter,
				1,
			]
		: [
				owner.wrapS,
				owner.wrapT,
				owner.minFilter,
				owner.magFilter,
				owner.anisotropy,
			];
	return state;
}
export function textureBindingKey(
	resource: ShaderResource,
	textures: Record<string, Texture | null>,
): string {
	return JSON.stringify([
		textures[resource.property]?.uuid,
		(LILTOON_TEXTURE_SEMANTICS as Record<string, string>)[resource.property],
		...samplerState(resource, textures),
	]);
}
