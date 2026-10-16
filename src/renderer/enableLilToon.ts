import { installMaterialRenderQueue } from "./materialRenderQueue.js";
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
import { SceneColorPasses } from "./SceneColorPasses.js";
import { FurPasses } from "./FurPasses.js";
import { TransparencyPasses } from "./TransparencyPasses.js";
import { applyLilToonPassState } from "../utils/renderState.js";
import type { LilToonScalarOrVector } from "../material/LilToonMaterialParameters.js";
import { ownsPassSource } from "./passOwnership.js";

function sameProperty(
	value: LilToonScalarOrVector,
	before: LilToonScalarOrVector | undefined,
): boolean {
	if (Array.isArray(value))
		return (
			Array.isArray(before) &&
			value.length === before.length &&
			value.every((v, i) => v === before[i])
		);
	if (typeof value === "object")
		return (
			before !== undefined &&
			value.constructor === before.constructor &&
			value.equals(before as never)
		);
	return value === before;
}
function copyProperty(value: LilToonScalarOrVector): LilToonScalarOrVector {
	return Array.isArray(value)
		? [...value]
		: typeof value === "object"
			? value.clone()
			: value;
}

type Recipe = {
	owners: Map<Mesh, Object3D>;
	source: LilToonMaterial;
	outline: LilToonMaterial | null;
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
	private depth = 0;

	begin() {
		this.depth++;
	}
	end() {
		if (--this.depth !== 0) return;
		for (const [source, recipe] of this.recipes) {
			for (const [mesh, root] of recipe.owners)
				if (!ownsPassSource(root, mesh, source)) recipe.owners.delete(mesh);
			if (!recipe.owners.size) recipe.release();
		}
	}
	private recipe(source: LilToonMaterial, mesh: Mesh, scene: Object3D): Recipe {
		let recipe = this.recipes.get(source);
		if (!recipe) {
			const depth = new MeshDepthMaterial({ depthPacking: RGBADepthPacking });
			const distance = new MeshDistanceMaterial();
			recipe = {
				owners: new Map(),
				source,
				outline: null,
				depth,
				distance,
				input: null,
				map: null,
				release: () => {
					source.removeEventListener("dispose", recipe!.release);
					recipe!.outline?.dispose();
					depth.dispose();
					distance.dispose();
					recipe!.map?.dispose();
					this.recipes.delete(source);
				},
			};
			this.recipes.set(source, recipe);
			source.addEventListener("dispose", recipe.release);
		}
		recipe.owners.set(mesh, scene);
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
	private prepareOutline(recipe: Recipe): LilToonMaterial {
		const source = recipe.source;
		// Capture mutable aliases before constructing the first outline.
		source.getProperty("_Color");
		const outline = (recipe.outline ??= new LilToonMaterial({
			pass: "outline",
			shaderVariant: source.shaderVariant,
			properties: source.lilToonProperties,
			textures: source.lilToonTextures,
		}));
		let changed = outline.shaderVariant !== source.shaderVariant;
		for (const [name, value] of Object.entries(source.lilToonProperties)) {
			if (sameProperty(value, outline.lilToonProperties[name])) continue;
			outline.lilToonProperties[name] = copyProperty(value);
			setGlobalProperty(outline.globalUniforms, name, value);
			changed = true;
		}
		for (const [name, texture] of Object.entries(source.lilToonTextures)) {
			if (outline.lilToonTextures[name] !== texture)
				outline.setTexture(name, texture);
		}
		if (changed) {
			outline.shaderVariant = source.shaderVariant;
			// Refresh feature/program selection only when inputs actually change.
			outline.setProperty("_Color", source.getProperty("_Color")!);
			applyLilToonPassState(
				outline,
				source.renderMode,
				source.lilToonProperties,
				"outline",
			);
		}
		outline.visible = source.visible;
		outline.toneMapped = source.toneMapped;
		outline.renderQueue = source.renderQueue;
		return outline;
	}
	prepare(scene: Object3D): () => void {
		const undo: (() => void)[] = [];
		const meshes: Mesh[] = [];
		// Invocation-local: nested renders and later scene edits must synchronize again.
		const outlinesPrepared = new Set<Recipe>();
		scene.traverseVisible((node) => {
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
						? this.recipe(material, mesh, scene)
						: undefined,
				);
				const first = recipes.find((recipe) => recipe !== undefined);
				if (!first) continue;
				// Legacy manually attached outlines are honored without generating a duplicate.
				const manualOutline = mesh.children.some(
					(child) =>
						!helpers.has(child) &&
						(child as Mesh).isMesh &&
						((child as Mesh).material as LilToonMaterial)?.pass === "outline",
				);
				const outlines = recipes.map((recipe) => {
					if (
						manualOutline ||
						!recipe ||
						recipe.source.renderMode === "transparent" ||
						!recipe.source.featureSet.outline
					)
						return this.hidden;
					if (!outlinesPrepared.has(recipe)) {
						this.prepareOutline(recipe);
						outlinesPrepared.add(recipe);
					}
					return recipe.outline!;
				});
				if (
					!manualOutline &&
					outlines.some((material) => material !== this.hidden)
				) {
					let proxy = this.proxies.get(mesh);
					if (!proxy) {
						proxy = (mesh as SkinnedMesh).isSkinnedMesh
							? new SkinnedMesh(mesh.geometry, this.hidden)
							: new Mesh(mesh.geometry, this.hidden);
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

type Installation = {
	materialRenderQueue: boolean;
	release(): void;
	acquire(): () => void;
};

export interface EnableLilToonOptions {
	/** Own the renderer sort callbacks until final release; requires default sorters. */
	materialRenderQueue?: boolean;
}
const installations = new WeakMap<WebGLRenderer, Installation>();

/** Install automatic passes on an existing renderer. Release the returned lease on teardown. */
export function enableLilToon(
	renderer: WebGLRenderer,
	options: EnableLilToonOptions = {},
): () => void {
	const existing = installations.get(renderer);
	if (existing) {
		if (
			options.materialRenderQueue !== undefined &&
			options.materialRenderQueue !== existing.materialRenderQueue
		)
			throw new Error("enableLilToon leases must agree on materialRenderQueue");
		return existing.acquire();
	}
	const sorting = options.materialRenderQueue
		? installMaterialRenderQueue(renderer)
		: undefined;
	const passes = new AutomaticPasses();
	const sceneColors = new SceneColorPasses();
	const fur = new FurPasses();
	const transparency = new TransparencyPasses();
	const render = renderer.render,
		dispose = renderer.dispose;
	let users = 0,
		disposed = false;
	const wrapped: WebGLRenderer["render"] = function (scene, camera) {
		const restoreSortCamera = sorting?.enter(camera);
		passes.begin();
		const previous = scene.onBeforeRender;
		const original = originalHooks.get(previous) ?? previous;
		let restore: (() => void) | undefined;
		let restoreColors: (() => void) | undefined;
		let restoreFur: (() => void) | undefined;
		let restoreTransparency: (() => void) | undefined;
		const hook: Object3D["onBeforeRender"] = function (
			this: Object3D,
			...args
		) {
			original.apply(this, args);
			restore ??= passes.prepare(scene);
			restoreColors ??= sceneColors.prepare(renderer, scene, render);
			restoreFur ??= fur.prepare(renderer, scene, render);
			restoreTransparency ??= transparency.prepare(renderer, scene, render);
		};
		originalHooks.set(hook, original);
		scene.onBeforeRender = hook;
		try {
			// Three invokes the scene hook before collecting render lists and shadows.
			if (!(scene as { isScene?: boolean }).isScene) {
				restore = passes.prepare(scene);
				restoreColors = sceneColors.prepare(renderer, scene, render);
				restoreFur = fur.prepare(renderer, scene, render);
				restoreTransparency = transparency.prepare(renderer, scene, render);
			}
			render.call(renderer, scene, camera);
		} finally {
			restoreTransparency?.();
			restoreFur?.();
			restoreColors?.();
			restore?.();
			if (scene.onBeforeRender === hook) scene.onBeforeRender = previous;
			passes.end();
			restoreSortCamera?.();
		}
	};
	const wrappedDispose = () => {
		installation.release();
		dispose.call(renderer);
	};
	const installation: Installation = {
		materialRenderQueue: options.materialRenderQueue ?? false,
		release: () => {
			if (disposed) return;
			disposed = true;
			if (renderer.render === wrapped) renderer.render = render;
			if (renderer.dispose === wrappedDispose) renderer.dispose = dispose;
			sorting?.dispose();
			passes.dispose();
			sceneColors.dispose();
			fur.dispose();
			transparency.dispose();
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
