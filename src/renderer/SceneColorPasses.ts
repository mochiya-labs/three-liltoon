import {
	Scene,
	Mesh,
	SkinnedMesh,
	SRGBColorSpace,
	MeshBasicMaterial,
	type BufferGeometry,
	CustomBlending,
	OneFactor,
	ZeroFactor,
	type WebGLRenderer,
	type Camera,
	type Texture,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import { AuxiliaryPassDraw } from "./AuxiliaryPassDraw.js";
import { SceneColorCapture } from "./SceneColorCapture.js";
import { ownsPassSource } from "./passOwnership.js";

/** Named GrabPass equivalent. Each render invocation owns its capture and restoration. */
export class SceneColorPasses {
	private captures: SceneColorCapture[] = [];
	private grabs: SceneColorCapture[] = [];
	private blur = new AuxiliaryPassDraw();
	private depth = 0;
	private gems = new Map<
		string,
		{
			mesh: Mesh;
			owner: import("three").Object3D;
			source: LilToonMaterial;
			sourceGeometry: BufferGeometry;
			geometry: BufferGeometry;
			material: MeshBasicMaterial;
			proxy: Mesh;
			scene: Scene;
			release(): void;
		}
	>();
	prepare(
		renderer: WebGLRenderer,
		scene: import("three").Object3D,
	): () => void {
		const slot = this.depth++;
		this.blur.begin();
		let captured: Texture | undefined;
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
						["refraction", "refraction-blur", "gem"].includes(m.renderMode) &&
						m.pass === "forward",
				)
			)
				return;
			const before = mesh.onBeforeRender;
			const hook: Mesh["onBeforeRender"] = (...args) => {
				before.apply(mesh, args);
				const material = args[4];
				if (
					!(material instanceof LilToonMaterial) ||
					!["refraction", "refraction-blur", "gem"].includes(
						material.renderMode,
					) ||
					material.pass !== "forward"
				)
					return;
				if (!captured) {
					const capture = (this.captures[slot] ??= new SceneColorCapture());
					captured = capture.capture(renderer);
				}
				material.setSystemTexture("__background", captured);
				material.globalUniforms.uBackgroundIsSRGB =
					!renderer.getRenderTarget() &&
					renderer.outputColorSpace === SRGBColorSpace
						? 1
						: 0;
				if (material.renderMode === "refraction-blur") {
					const background = captured;
					this.blur.draw(
						renderer,
						mesh,
						material,
						"refraction-blur-pre",
						scene as Scene,
						args[2],
						args[5] as unknown as { start: number; count: number } | null,
						(pass) => {
							pass.setSystemTexture("__background", background);
							// Upstream's blur vertex unpack queries _GrabTexture dimensions.
							// The unnamed capture occurs after this pass, so use the equally sized named snapshot here.
							pass.setSystemTexture("__grab", background);
							pass.globalUniforms.uBackgroundIsSRGB =
								material.globalUniforms.uBackgroundIsSRGB;
						},
					);
					const grab = (this.grabs[slot] ??= new SceneColorCapture());
					material.setSystemTexture("__grab", grab.capture(renderer));
				}
				if (material.renderMode === "gem")
					this.clearGem(
						renderer,
						mesh,
						material,
						scene,
						args[2],
						args[5] as unknown as { start: number; count: number } | null,
					);
			};
			mesh.onBeforeRender = hook;
			undo.push(() => {
				if (mesh.onBeforeRender === hook) mesh.onBeforeRender = before;
			});
		});
		return () => {
			undo.reverse().forEach((restore) => restore());
			this.blur.end();
			if (--this.depth === 0) {
				for (const recipe of this.gems.values())
					if (
						!ownsPassSource(recipe.owner, recipe.mesh, recipe.source) ||
						recipe.mesh.geometry !== recipe.sourceGeometry ||
						recipe.source.renderMode !== "gem"
					)
						recipe.release();
			}
		};
	}
	private clearGem(
		renderer: WebGLRenderer,
		mesh: Mesh,
		source: LilToonMaterial,
		owner: import("three").Object3D,
		camera: Camera,
		group: { start: number; count: number } | null,
	) {
		// Upstream GEM_PRE writes black RGB while preserving framebuffer alpha.
		const key = `${mesh.uuid}:${source.uuid}`;
		let recipe = this.gems.get(key);
		if (
			recipe &&
			(recipe.sourceGeometry !== mesh.geometry || recipe.source !== source)
		) {
			recipe.release();
			recipe = undefined;
		}
		if (!recipe) {
			const material = new MeshBasicMaterial({
				color: 0,
				blending: CustomBlending,
				blendSrc: OneFactor,
				blendDst: ZeroFactor,
				blendSrcAlpha: ZeroFactor,
				blendDstAlpha: OneFactor,
			});
			const geometry = mesh.geometry,
				sourceGeometry = mesh.geometry;
			const proxy: Mesh = (mesh as SkinnedMesh).isSkinnedMesh
				? new SkinnedMesh(geometry, material)
				: new Mesh(geometry, material);
			proxy.matrixAutoUpdate = false;
			const temporary = new Scene();
			temporary.add(proxy);
			const release = () => {
				sourceGeometry.removeEventListener("dispose", release);
				source.removeEventListener("dispose", release);
				material.dispose();
				this.gems.delete(key);
			};
			recipe = {
				mesh,
				owner,
				source,
				sourceGeometry,
				geometry,
				material,
				proxy,
				scene: temporary,
				release,
			};
			this.gems.set(key, recipe);
			sourceGeometry.addEventListener("dispose", release);
			source.addEventListener("dispose", release);
		}
		recipe.owner = owner;
		const { material, geometry, proxy, scene: temporary } = recipe;
		material.side = source.side;
		material.depthWrite = source.depthWrite;
		material.depthTest = source.depthTest;
		material.depthFunc = source.depthFunc;
		material.stencilWrite = source.stencilWrite;
		for (const key of [
			"stencilRef",
			"stencilFunc",
			"stencilFuncMask",
			"stencilWriteMask",
			"stencilFail",
			"stencilZFail",
			"stencilZPass",
			"colorWrite",
			"polygonOffset",
			"polygonOffsetFactor",
			"polygonOffsetUnits",
		] as const)
			(material as any)[key] = source[key];
		proxy.matrixWorld.copy(mesh.matrixWorld);
		proxy.layers.mask = mesh.layers.mask;
		proxy.frustumCulled = false;
		proxy.morphTargetInfluences = mesh.morphTargetInfluences;
		if ((proxy as SkinnedMesh).isSkinnedMesh) {
			const skin = mesh as SkinnedMesh,
				out = proxy as SkinnedMesh;
			out.skeleton = skin.skeleton;
			out.bindMode = skin.bindMode;
			out.bindMatrix.copy(skin.bindMatrix);
			out.bindMatrixInverse.copy(skin.bindMatrixInverse);
		}
		// Reuse the source's already-uploaded buffers without ending the parent render.
		proxy.modelViewMatrix.multiplyMatrices(
			camera.matrixWorldInverse,
			proxy.matrixWorld,
		);
		proxy.normalMatrix.getNormalMatrix(proxy.modelViewMatrix);
		material.onBeforeRender(
			renderer,
			temporary,
			camera,
			geometry,
			proxy,
			group as never,
		);
		renderer.renderBufferDirect(
			camera,
			temporary,
			geometry,
			material,
			proxy,
			group as never,
		);
	}
	dispose() {
		this.blur.dispose();
		for (const texture of this.grabs) texture.dispose();
		this.grabs = [];
		for (const recipe of this.gems.values()) recipe.release();
		for (const texture of this.captures) texture.dispose();
		this.captures = [];
	}
}
