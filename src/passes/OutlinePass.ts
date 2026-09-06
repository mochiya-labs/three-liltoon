import { Mesh, SkinnedMesh, type Object3D } from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";

export class OutlinePass {
	readonly #outlines = new WeakMap<Mesh, Mesh>();

	attach(mesh: Mesh, sourceMaterial: LilToonMaterial): Mesh {
		const existing = this.#outlines.get(mesh);
		if (existing) return existing;
		const material = new LilToonMaterial({
			name: `${sourceMaterial.name} outline`,
			renderMode: sourceMaterial.renderMode,
			pass: "outline",
			properties: sourceMaterial.lilToonProperties,
			textures: sourceMaterial.lilToonTextures,
		});
		material.setRendererAdapter(sourceMaterial.rendererAdapter);
		const outline =
			mesh instanceof SkinnedMesh
				? new SkinnedMesh(mesh.geometry, material)
				: new Mesh(mesh.geometry, material);
		if (outline instanceof SkinnedMesh && mesh instanceof SkinnedMesh) {
			outline.bind(mesh.skeleton, mesh.bindMatrix);
			outline.bindMode = mesh.bindMode;
		}
		outline.name = `${mesh.name || mesh.uuid}:lilToon-outline`;
		outline.frustumCulled = mesh.frustumCulled;
		outline.renderOrder = mesh.renderOrder - 1;
		outline.matrixAutoUpdate = false;
		outline.matrix.identity();
		outline.onBeforeRender = () => {
			const sourceMorphs = (mesh as Mesh & { morphTargetInfluences?: number[] })
				.morphTargetInfluences;
			const target = outline as Mesh & { morphTargetInfluences?: number[] };
			if (sourceMorphs && target.morphTargetInfluences)
				target.morphTargetInfluences.splice(
					0,
					sourceMorphs.length,
					...sourceMorphs,
				);
		};
		mesh.add(outline as unknown as Object3D);
		this.#outlines.set(mesh, outline);
		return outline;
	}

	detach(mesh: Mesh): void {
		const outline = this.#outlines.get(mesh);
		if (!outline) return;
		mesh.remove(outline);
		if (Array.isArray(outline.material))
			outline.material.forEach((material) => material.dispose());
		else outline.material.dispose();
		this.#outlines.delete(mesh);
	}
}
