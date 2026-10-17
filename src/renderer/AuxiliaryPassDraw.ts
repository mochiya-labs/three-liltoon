import {
	type BufferGeometry,
	Mesh,
	SkinnedMesh,
	Scene,
	type Camera,
	type WebGLRenderer,
	type Object3D,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonPass } from "../material/LilToonMaterialParameters.js";
import { syncPassMaterial } from "./syncPassMaterial.js";
import { ownsPassSource } from "./passOwnership.js";

/** Cached pass proxy. Borrows source geometry, including Three's morph texture. */
export class AuxiliaryPassDraw {
	private recipes = new Map<
		string,
		{
			mesh: Mesh;
			owner: Object3D;
			sourceGeometry: BufferGeometry;
			mode: string;
			transparencyMode: string;
			source: LilToonMaterial;
			geometry: BufferGeometry;
			material: LilToonMaterial;
			proxy: Mesh;
			scene: Scene;
			release(): void;
		}
	>();
	private depth = 0;
	begin() {
		this.depth++;
	}
	end() {
		if (--this.depth === 0) {
			for (const r of this.recipes.values())
				if (
					!ownsPassSource(r.owner, r.mesh, r.source) ||
					r.mesh.geometry !== r.sourceGeometry ||
					r.mode !== r.source.renderMode ||
					r.transparencyMode !== r.source.transparencyMode
				)
					r.release();
		}
	}
	draw(
		renderer: WebGLRenderer,
		mesh: Mesh,
		source: LilToonMaterial,
		pass: LilToonPass,
		scene: Scene,
		camera: Camera,
		group: { start: number; count: number } | null,
		configure?: (material: LilToonMaterial) => void,
	) {
		const key = `${mesh.uuid}:${mesh.geometry.uuid}:${source.uuid}:${pass}`;
		let r = this.recipes.get(key);
		if (
			r &&
			(r.mode !== source.renderMode ||
				r.transparencyMode !== source.transparencyMode)
		) {
			r.release();
			r = undefined;
		}
		if (!r) {
			const geometry = mesh.geometry,
				sourceGeometry = mesh.geometry;
			const material = new LilToonMaterial({
				shaderVariant: source.shaderVariant,
				pass,
				properties: source.lilToonProperties,
				textures: source.lilToonTextures,
			});
			const proxy = (mesh as SkinnedMesh).isSkinnedMesh
				? new SkinnedMesh(geometry, material)
				: new Mesh(geometry, material);
			proxy.matrixAutoUpdate = false;
			proxy.frustumCulled = false;
			const temporary = new Scene();
			temporary.add(proxy);
			const release = () => {
				source.removeEventListener("dispose", release);
				sourceGeometry.removeEventListener("dispose", release);
				material.dispose();
				this.recipes.delete(key);
			};
			r = {
				mesh,
				owner: scene,
				sourceGeometry,
				mode: source.renderMode,
				transparencyMode: source.transparencyMode,
				source,
				geometry,
				material,
				proxy,
				scene: temporary,
				release,
			};
			this.recipes.set(key, r);
			source.addEventListener("dispose", release);
			sourceGeometry.addEventListener("dispose", release);
		}
		r.owner = scene;
		const { geometry, material, proxy } = r;
		syncPassMaterial(source, material);
		proxy.matrixWorld.copy(mesh.matrixWorld);
		proxy.layers.mask = mesh.layers.mask;
		proxy.morphTargetInfluences = mesh.morphTargetInfluences;
		if ((proxy as SkinnedMesh).isSkinnedMesh) {
			const skin = mesh as SkinnedMesh,
				out = proxy as SkinnedMesh;
			out.skeleton = skin.skeleton;
			out.bindMode = skin.bindMode;
			out.bindMatrix.copy(skin.bindMatrix);
			out.bindMatrixInverse.copy(skin.bindMatrixInverse);
		}
		// The source was uploaded during the enclosing render-list collection.
		// Draw in that invocation: a nested render would resolve the entire MSAA
		// target after each small auxiliary pass. Three intersects group/drawRange.
		proxy.modelViewMatrix.multiplyMatrices(
			camera.matrixWorldInverse,
			proxy.matrixWorld,
		);
		proxy.normalMatrix.getNormalMatrix(proxy.modelViewMatrix);
		material.onBeforeRender(
			renderer,
			scene,
			camera,
			geometry,
			proxy,
			group as never,
		);
		configure?.(material);
		renderer.renderBufferDirect(
			camera,
			r.scene,
			geometry,
			material,
			proxy,
			group as never,
		);
	}
	dispose() {
		for (const r of this.recipes.values()) r.release();
	}
}
