import { LilToonMaterial } from "three-liltoon";
import {
	BufferGeometry,
	Material,
	Skeleton,
	Texture,
	type Object3D,
} from "three";

import type { LoadedModel } from "./types";

function collectMaterialTextures(material: Material, textures: Set<Texture>) {
	if (material instanceof LilToonMaterial) {
		for (const texture of Object.values(material.lilToonTextures)) {
			if (texture) textures.add(texture);
		}
	}

	for (const value of Object.values(material)) {
		if (value instanceof Texture) textures.add(value);
	}

	if (!(material instanceof LilToonMaterial) && "uniforms" in material) {
		const uniforms = (
			material as Material & {
				uniforms?: Record<string, { value?: unknown }>;
			}
		).uniforms;
		for (const uniform of Object.values(uniforms ?? {})) {
			if (uniform.value instanceof Texture) textures.add(uniform.value);
		}
	}
}

export function disposeModel(model: LoadedModel) {
	const geometries = new Set<BufferGeometry>();
	const skeletons = new Set<Skeleton>();
	const materials = new Set<Material>();
	const textures = new Set<Texture>();

	model.scene.traverse((object: Object3D) => {
		const renderable = object as Object3D & {
			geometry?: BufferGeometry;
			skeleton?: Skeleton;
			material?: Material | Material[];
		};
		if (renderable.geometry) geometries.add(renderable.geometry);
		if (renderable.skeleton) skeletons.add(renderable.skeleton);
		const candidates = Array.isArray(renderable.material)
			? renderable.material
			: renderable.material
				? [renderable.material]
				: [];
		for (const material of candidates) {
			materials.add(material);
			collectMaterialTextures(material, textures);
		}
	});

	for (const texture of textures) texture.dispose();
	for (const material of materials) material.dispose();
	for (const skeleton of skeletons) skeleton.dispose();
	for (const geometry of geometries) geometry.dispose();
}
