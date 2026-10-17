import {
	Mesh,
	MeshBasicMaterial,
	Scene,
	type BufferGeometry,
	type Object3D,
	type WebGLRenderer,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import { FurDeformation } from "./FurDeformation.js";
import type { SkinnedMesh } from "three";
import { FurGeometry } from "./FurGeometry.js";
import { syncPassMaterial } from "./syncPassMaterial.js";
import { ownsPassSource } from "./passOwnership.js";

/** Fur follows its owning surface draw, including the renderer's transparent ordering. */
export class FurPasses {
	private recipes = new Map<
		string,
		{
			mesh: Mesh;
			owner: Object3D;
			geometry: FurGeometry;
			deformation?: FurDeformation;
			sourceGeometry: Mesh["geometry"];
			sourceIndex: Mesh["geometry"]["index"];
			topology: string;
			layers: number;
			materials: LilToonMaterial[];
			mode: string;
			scene: Scene;
			proxy: Mesh;
			source: LilToonMaterial;
			release(): void;
		}
	>();
	private depth = 0;
	private uploaded = new WeakSet<BufferGeometry>();
	private uploadMaterial = new MeshBasicMaterial({ visible: false });
	private contextCanvas?: HTMLCanvasElement;
	private readonly contextRestored = () => {
		this.uploaded = new WeakSet();
	};
	prepare(
		renderer: WebGLRenderer,
		scene: Object3D,
		render: WebGLRenderer["render"],
	): () => void {
		this.depth++;
		const undo: (() => void)[] = [];
		scene.traverse((node) => {
			const mesh = node as Mesh;
			if (!mesh.isMesh) return;
			const materials = Array.isArray(mesh.material)
				? mesh.material
				: [mesh.material];
			if (
				!materials.some(
					(m) =>
						m instanceof LilToonMaterial &&
						m.renderMode.startsWith("fur") &&
						m.pass === "forward",
				)
			)
				return;
			const after = mesh.onAfterRender;
			const hook: Mesh["onAfterRender"] = (...args) => {
				after.apply(mesh, args);
				const source = args[4];
				if (
					!(source instanceof LilToonMaterial) ||
					!source.renderMode.startsWith("fur") ||
					source.pass !== "forward"
				)
					return;
				if (!this.contextCanvas) {
					this.contextCanvas = renderer.domElement;
					this.contextCanvas.addEventListener(
						"webglcontextrestored",
						this.contextRestored,
					);
				}
				const layers = Number(source.lilToonProperties._FurLayerNum ?? 2);
				if (
					(mesh.geometry.index?.count ??
						mesh.geometry.attributes.position!.count) < 3
				)
					return;
				const key = `${mesh.uuid}:${source.uuid}`;
				const topology = `${mesh.geometry.index?.version}:${mesh.geometry.index?.count}:${mesh.geometry.attributes.position!.count}`;
				let recipe = this.recipes.get(key);
				if (
					recipe &&
					(recipe.sourceGeometry !== mesh.geometry ||
						recipe.sourceIndex !== mesh.geometry.index ||
						recipe.layers !== layers ||
						recipe.mode !== source.renderMode ||
						recipe.source !== source ||
						recipe.topology !== topology)
				) {
					recipe.release();
					recipe = undefined;
				}
				if (!recipe) {
					const gpuSkinning =
						(mesh as SkinnedMesh).isSkinnedMesh &&
						renderer.extensions.has("EXT_color_buffer_float");
					const gl = renderer.getContext();
					const maxSize = gpuSkinning
						? Math.min(
								renderer.capabilities.maxTextureSize,
								...(gl.getParameter(gl.MAX_VIEWPORT_DIMS) as Int32Array),
							)
						: renderer.capabilities.maxTextureSize;
					const geometry = new FurGeometry(mesh, layers, maxSize);
					const deformation = gpuSkinning
						? new FurDeformation(geometry.texture)
						: undefined;
					const materials = (
						source.renderMode === "fur-two-pass"
							? (["fur-pre", "fur"] as const)
							: (["fur"] as const)
					).map(
						(pass) =>
							new LilToonMaterial({
								shaderVariant: source.shaderVariant,
								pass,
								properties: source.lilToonProperties,
								textures: source.lilToonTextures,
							}),
					);
					const proxy = new Mesh(geometry.geometry, materials[0]);
					const temporary = new Scene();
					temporary.add(proxy);
					proxy.matrixAutoUpdate = false;
					proxy.frustumCulled = false;
					const sourceGeometry = mesh.geometry;
					const release = () => {
						geometry.dispose();
						deformation?.dispose();
						materials.forEach((material) => material.dispose());
						sourceGeometry.removeEventListener("dispose", release);
						source.removeEventListener("dispose", release);
						this.recipes.delete(key);
					};
					recipe = {
						mesh,
						owner: scene,
						geometry,
						deformation,
						sourceGeometry: mesh.geometry,
						sourceIndex: mesh.geometry.index,
						topology,
						layers,
						materials,
						mode: source.renderMode,
						scene: temporary,
						proxy,
						source,
						release,
					};
					mesh.geometry.addEventListener("dispose", release);
					source.addEventListener("dispose", release);
					this.recipes.set(key, recipe);
				}
				recipe.owner = scene;
				const {
					geometry,
					deformation,
					materials,
					proxy,
					scene: temporary,
				} = recipe;
				geometry.update(!deformation);
				deformation?.update(
					renderer,
					render,
					mesh as SkinnedMesh,
					geometry.texture,
					args[2],
				);
				for (const material of materials) syncPassMaterial(source, material);
				const group =
					(args[5] as unknown as { start: number; count: number } | null) ??
					mesh.geometry.drawRange;
				const previousRange = { ...geometry.geometry.drawRange };
				if (group) {
					const perTriangle =
						geometry.geometry.index!.count /
						Math.floor(
							(mesh.geometry.index?.count ??
								mesh.geometry.attributes.position!.count) / 3,
						);
					const start = Math.max(mesh.geometry.drawRange.start, group.start),
						end = Math.min(
							mesh.geometry.drawRange.start + mesh.geometry.drawRange.count,
							group.start + group.count,
						);
					geometry.geometry.setDrawRange(
						Math.floor(start / 3) * perTriangle,
						Math.max(0, Math.floor((end - start) / 3)) * perTriangle,
					);
				}
				proxy.matrix.copy(mesh.matrixWorld);
				proxy.layers.mask = mesh.layers.mask;

				const auto = renderer.autoClear,
					info = renderer.info.autoReset,
					shadows = renderer.shadowMap.autoUpdate,
					needs = renderer.shadowMap.needsUpdate;
				try {
					renderer.autoClear = false;
					renderer.info.autoReset = false;
					renderer.shadowMap.autoUpdate = false;
					renderer.shadowMap.needsUpdate = false;
					if (!this.uploaded.has(geometry.geometry)) {
						// Generated ribbons are created after the source's render-list upload.
						// Let Three register their immutable buffers once, without a draw.
						// Repeat after context restoration; ordinary frames draw inline.
						proxy.material = this.uploadMaterial;
						render.call(renderer, temporary, args[2]);
						this.uploaded.add(geometry.geometry);
					}
					proxy.matrixWorld.copy(mesh.matrixWorld);
					proxy.modelViewMatrix.multiplyMatrices(
						args[2].matrixWorldInverse,
						proxy.matrixWorld,
					);
					proxy.normalMatrix.getNormalMatrix(proxy.modelViewMatrix);
					for (const material of materials) {
						proxy.material = material;
						material.onBeforeRender(
							renderer,
							scene as Scene,
							args[2],
							geometry.geometry,
							proxy,
							null as never,
						);
						// Morphs were packed at source indices, not ribbon indices.
						material.setSystemTexture(
							"__furVertices",
							deformation?.target.texture ?? geometry.texture,
						);
						renderer.renderBufferDirect(
							args[2],
							temporary,
							geometry.geometry,
							material,
							proxy,
							null as never,
						);
					}
				} finally {
					renderer.autoClear = auto;
					renderer.info.autoReset = info;
					renderer.shadowMap.autoUpdate = shadows;
					renderer.shadowMap.needsUpdate = needs;

					geometry.geometry.setDrawRange(
						previousRange.start,
						previousRange.count,
					);
				}
			};
			mesh.onAfterRender = hook;
			undo.push(() => {
				if (mesh.onAfterRender === hook) mesh.onAfterRender = after;
			});
		});
		return () => {
			undo.reverse().forEach((fn) => fn());
			if (--this.depth === 0) {
				for (const recipe of this.recipes.values())
					if (
						!ownsPassSource(recipe.owner, recipe.mesh, recipe.source) ||
						recipe.mesh.geometry !== recipe.sourceGeometry ||
						recipe.mode !== recipe.source.renderMode
					)
						recipe.release();
			}
		};
	}
	dispose() {
		this.contextCanvas?.removeEventListener(
			"webglcontextrestored",
			this.contextRestored,
		);
		this.contextCanvas = undefined;
		this.uploaded = new WeakSet();
		this.uploadMaterial.dispose();
		for (const recipe of this.recipes.values()) recipe.release();
	}
}
