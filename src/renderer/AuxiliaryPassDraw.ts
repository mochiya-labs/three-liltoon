import {
	type BufferGeometry,
	Mesh,
	SkinnedMesh,
	Scene,
	Vector4,
	type Camera,
	type WebGLRenderer,
	type Object3D,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonPass } from "../material/LilToonMaterialParameters.js";
import { setGlobalProperty } from "./LilToonUniformBinder.js";
import { applyLilToonPassState } from "../utils/renderState.js";
import { ownsPassSource } from "./passOwnership.js";

export function syncPassMaterial(
	source: LilToonMaterial,
	target: LilToonMaterial,
) {
	source.getProperty("_Color");
	target.toneMapped = source.toneMapped;
	target.renderQueue = source.renderQueue;
	target.shaderVariant = source.shaderVariant;
	for (const [key, value] of Object.entries(source.lilToonProperties)) {
		target.lilToonProperties[key] = value;
		setGlobalProperty(target.globalUniforms, key, value);
	}
	target.setProperty("_Color", source.getProperty("_Color")!);
	for (const [key, value] of Object.entries(source.lilToonTextures))
		if (target.lilToonTextures[key] !== value) target.setTexture(key, value);
	applyLilToonPassState(
		target,
		source.renderMode,
		source.lilToonProperties,
		target.pass,
	);
}

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
		render: WebGLRenderer["render"],
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
		const { start: originalStart, count: originalCount } = geometry.drawRange;
		const start = Math.max(originalStart, group?.start ?? 0);
		const count = Math.max(
			0,
			Math.min(
				originalStart + originalCount,
				group ? group.start + group.count : Infinity,
			) - start,
		);
		proxy.matrix.copy(mesh.matrixWorld);
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
		const before = material.onBeforeRender;
		material.onBeforeRender = (
			renderer,
			_scene,
			camera,
			geometry,
			object,
			group,
		) => {
			before.call(material, renderer, scene, camera, geometry, object, group);
			configure?.(material);
		};
		const auto = renderer.autoClear,
			info = renderer.info.autoReset,
			shadows = renderer.shadowMap.autoUpdate,
			needs = renderer.shadowMap.needsUpdate;
		const viewport = renderer.getViewport(new Vector4()),
			scissor = renderer.getScissor(new Vector4()),
			scissorTest = renderer.getScissorTest();
		try {
			renderer.autoClear = false;
			renderer.info.autoReset = false;
			renderer.shadowMap.autoUpdate = false;
			renderer.shadowMap.needsUpdate = false;
			// A single-material proxy ignores source groups; narrow only this nested draw.
			geometry.setDrawRange(start, count);
			render.call(renderer, r.scene, camera);
		} finally {
			geometry.setDrawRange(originalStart, originalCount);
			material.onBeforeRender = before;
			renderer.autoClear = auto;
			renderer.info.autoReset = info;
			renderer.shadowMap.autoUpdate = shadows;
			renderer.shadowMap.needsUpdate = needs;
			renderer.setViewport(viewport);
			renderer.setScissor(scissor);
			renderer.setScissorTest(scissorTest);
		}
	}
	dispose() {
		for (const r of this.recipes.values()) r.release();
	}
}
