import {
	BackSide,
	Mesh,
	MeshBasicMaterial,
	MeshDepthMaterial,
	MeshDistanceMaterial,
	RGBADepthPacking,
	SkinnedMesh,
	type WebGLRenderer,
	type Object3D,
	type Texture,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import { setGlobalProperty } from "./LilToonUniformBinder.js";

type Recipe = {
	source: LilToonMaterial;
	outline: LilToonMaterial;
	depth: MeshDepthMaterial;
	distance: MeshDistanceMaterial;
	input: Texture | null;
	map: Texture | null;
	release(): void;
};
const helpers = new WeakSet<Object3D>();
const originalHooks = new WeakMap<
	Object3D["onBeforeRender"],
	Object3D["onBeforeRender"]
>();

/** Renderer-owned recipes; helpers exist in the scene only during rendering. */
class AutomaticPasses {
	private readonly recipes = new Map<LilToonMaterial, Recipe>();
	private readonly proxies = new WeakMap<Mesh, Mesh>();
	private readonly hidden = new MeshBasicMaterial({ visible: false });
	private readonly active = new Set<LilToonMaterial>();
	private depth = 0;

	begin() {
		this.depth++;
	}
	end() {
		if (--this.depth !== 0) return;
		for (const [source, recipe] of this.recipes)
			if (!this.active.has(source)) recipe.release();
		this.active.clear();
	}
	private recipe(source: LilToonMaterial): Recipe {
		this.active.add(source);
		let recipe = this.recipes.get(source);
		if (!recipe) {
			const outline = new LilToonMaterial({
				pass: "outline",
				renderMode: source.renderMode,
				properties: source.lilToonProperties,
				textures: source.lilToonTextures,
			});
			const depth = new MeshDepthMaterial({ depthPacking: RGBADepthPacking });
			const distance = new MeshDistanceMaterial();
			recipe = {
				source,
				outline,
				depth,
				distance,
				input: null,
				map: null,
				release: () => {
					source.removeEventListener("dispose", recipe!.release);
					outline.dispose();
					depth.dispose();
					distance.dispose();
					recipe!.map?.dispose();
					this.recipes.delete(source);
				},
			};
			this.recipes.set(source, recipe);
			source.addEventListener("dispose", recipe.release);
		}
		// Read mutable standard Color edits as well as original property setters.
		source.getProperty("_Color");
		for (const [name, value] of Object.entries(source.lilToonProperties)) {
			recipe.outline.lilToonProperties[name] = value;
			setGlobalProperty(recipe.outline.globalUniforms, name, value);
		}
		recipe.outline.setProperty("_Color", source.getProperty("_Color")!);
		for (const [name, texture] of Object.entries(source.lilToonTextures)) {
			if (recipe.outline.lilToonTextures[name] !== texture)
				recipe.outline.setTexture(name, texture);
		}
		recipe.outline.side = BackSide;
		recipe.outline.visible = source.visible;
		if (recipe.input !== source.map) {
			recipe.map?.dispose();
			recipe.input = source.map;
			recipe.map = source.map?.clone() ?? null;
			if (recipe.map) recipe.map.matrixAutoUpdate = false;
		}
		if (recipe.map) {
			const st = source.getProperty("_MainTex_ST");
			const v = Array.isArray(st)
				? st
				: st && typeof st === "object" && "toArray" in st
					? st.toArray()
					: [1, 1, 0, 0];
			recipe.map.matrix.setUvTransform(
				v[2] ?? 0,
				v[3] ?? 0,
				v[0] ?? 1,
				v[1] ?? 1,
				0,
				0,
				0,
			);
		}
		return recipe;
	}
	prepare(scene: Object3D): () => void {
		const undo: (() => void)[] = [];
		const meshes: Mesh[] = [];
		scene.traverse((node) => {
			if ((node as Mesh).isMesh && !helpers.has(node))
				meshes.push(node as Mesh);
		});
		try {
			for (const mesh of meshes) {
				const materials = Array.isArray(mesh.material)
					? mesh.material
					: [mesh.material];
				const recipes = materials.map((material) =>
					material instanceof LilToonMaterial && material.pass === "forward"
						? this.recipe(material)
						: undefined,
				);
				const first = recipes.find((recipe) => recipe !== undefined);
				if (!first) continue;
				const outlines = recipes.map((recipe) =>
					recipe &&
					Number(recipe.source.lilToonProperties._UseOutline ?? 1) !== 0 &&
					Number(recipe.source.lilToonProperties._OutlineWidth ?? 0) > 0
						? recipe.outline
						: this.hidden,
				);
				// Legacy manually attached outlines are honored without generating a duplicate.
				const manualOutline = mesh.children.some(
					(child) =>
						!helpers.has(child) &&
						(child as Mesh).isMesh &&
						((child as Mesh).material as LilToonMaterial)?.pass === "outline",
				);
				if (
					!manualOutline &&
					outlines.some((material) => material !== this.hidden)
				) {
					let proxy = this.proxies.get(mesh);
					if (!proxy) {
						proxy = (mesh as SkinnedMesh).isSkinnedMesh
							? new SkinnedMesh(mesh.geometry, first.outline)
							: new Mesh(mesh.geometry, first.outline);
						proxy.name = `${mesh.name}:lilToon-outline`;
						proxy.matrixAutoUpdate = false;
						proxy.raycast = () => {};
						helpers.add(proxy);
						this.proxies.set(mesh, proxy);
					}
					proxy.geometry = mesh.geometry;
					proxy.material = Array.isArray(mesh.material)
						? outlines
						: outlines[0]!;
					proxy.visible = mesh.visible;
					proxy.layers.mask = mesh.layers.mask;
					proxy.frustumCulled = mesh.frustumCulled;
					proxy.renderOrder = mesh.renderOrder - 1;
					proxy.morphTargetDictionary = mesh.morphTargetDictionary;
					proxy.morphTargetInfluences = mesh.morphTargetInfluences;
					if ((proxy as SkinnedMesh).isSkinnedMesh) {
						const skin = proxy as SkinnedMesh,
							source = mesh as SkinnedMesh;
						skin.skeleton = source.skeleton;
						skin.bindMode = source.bindMode;
						skin.bindMatrix.copy(source.bindMatrix);
						skin.bindMatrixInverse.copy(source.bindMatrixInverse);
						skin.boundingBox = source.boundingBox;
						skin.boundingSphere = source.boundingSphere;
					}
					const priorParent = proxy.parent;
					mesh.add(proxy);
					undo.push(() => {
						proxy!.removeFromParent();
						priorParent?.add(proxy!);
					});
				}
				const depth = mesh.customDepthMaterial,
					distance = mesh.customDistanceMaterial;
				// Authored custom casters are authoritative. Defaults are installed temporarily.
				if (!depth) mesh.customDepthMaterial = first.depth;
				if (!distance) mesh.customDistanceMaterial = first.distance;
				const before = mesh.onBeforeShadow;
				const hook: Mesh["onBeforeShadow"] = (...args) => {
					const material = args[5] as MeshDepthMaterial | MeshDistanceMaterial;
					const recipe =
						recipes[
							(args[6] as { materialIndex?: number } | null)?.materialIndex ?? 0
						];
					if (
						recipe &&
						(material === first.depth || material === first.distance)
					) {
						if (!!material.map !== !!recipe.map) material.needsUpdate = true;
						material.map = recipe.map;
						material.alphaMap = null;
						material.alphaTest = recipe.source.alphaTest;
						material.opacity = recipe.source.opacity;
					} else if (
						!recipe &&
						(material === first.depth || material === first.distance)
					) {
						material.opacity =
							materials[
								(args[6] as { materialIndex?: number } | null)?.materialIndex ??
									0
							]?.opacity ?? 1;
					}
					before.apply(mesh, args);
				};
				mesh.onBeforeShadow = hook;
				undo.push(() => {
					if (mesh.customDepthMaterial === first.depth)
						mesh.customDepthMaterial = depth;
					if (mesh.customDistanceMaterial === first.distance)
						mesh.customDistanceMaterial = distance;
					if (mesh.onBeforeShadow === hook) mesh.onBeforeShadow = before;
				});
			}
			// Scene callbacks may have moved or inserted objects after Three's initial matrix update.
			scene.updateMatrixWorld();
		} catch (error) {
			undo.reverse().forEach((restore) => restore());
			throw error;
		}
		return () => undo.reverse().forEach((restore) => restore());
	}
	dispose() {
		for (const recipe of this.recipes.values()) recipe.release();
		this.hidden.dispose();
	}
}

type Installation = { release(): void; acquire(): () => void };
const installations = new WeakMap<WebGLRenderer, Installation>();

/** Install automatic passes on an existing renderer. Release the returned lease on teardown. */
export function enableLilToon(renderer: WebGLRenderer): () => void {
	const existing = installations.get(renderer);
	if (existing) return existing.acquire();
	const passes = new AutomaticPasses();
	const render = renderer.render,
		dispose = renderer.dispose;
	let users = 0,
		disposed = false;
	const wrapped: WebGLRenderer["render"] = function (scene, camera) {
		passes.begin();
		const previous = scene.onBeforeRender;
		const original = originalHooks.get(previous) ?? previous;
		let restore: (() => void) | undefined;
		const hook: Object3D["onBeforeRender"] = function (
			this: Object3D,
			...args
		) {
			original.apply(this, args);
			restore ??= passes.prepare(scene);
		};
		originalHooks.set(hook, original);
		scene.onBeforeRender = hook;
		try {
			// Three invokes the scene hook before collecting render lists and shadows.
			if (!(scene as { isScene?: boolean }).isScene)
				restore = passes.prepare(scene);
			render.call(renderer, scene, camera);
		} finally {
			restore?.();
			if (scene.onBeforeRender === hook) scene.onBeforeRender = previous;
			passes.end();
		}
	};
	const wrappedDispose = () => {
		installation.release();
		dispose.call(renderer);
	};
	const installation: Installation = {
		release: () => {
			if (disposed) return;
			disposed = true;
			if (renderer.render === wrapped) renderer.render = render;
			if (renderer.dispose === wrappedDispose) renderer.dispose = dispose;
			passes.dispose();
			installations.delete(renderer);
		},
		acquire: () => {
			users++;
			let released = false;
			return () => {
				if (released || disposed) return;
				released = true;
				if (--users === 0) installation.release();
			};
		},
	};
	installations.set(renderer, installation);
	renderer.render = wrapped;
	renderer.dispose = wrappedDispose;
	return installation.acquire();
}
