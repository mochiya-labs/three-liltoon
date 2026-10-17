import {
	FramebufferTexture,
	Vector2,
	Scene,
	Mesh,
	SkinnedMesh,
	NoColorSpace,
	SRGBColorSpace,
	HalfFloatType,
	FloatType,
	UnsignedByteType,
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
import { ownsPassSource } from "./passOwnership.js";

/** Named GrabPass equivalent. Each render invocation owns its capture and restoration. */
export class SceneColorPasses {
	private captures: FramebufferTexture[] = [];
	private grabs: FramebufferTexture[] = [];
	private blur = new AuxiliaryPassDraw();
	private resolves: {
		gl: WebGL2RenderingContext;
		framebuffer: WebGLFramebuffer;
		color: WebGLRenderbuffer;
		key: string;
	}[] = [];
	private depth = 0;
	private contextCanvas?: WebGLRenderer["domElement"];
	private readonly contextLost = () => {
		this.resolves = [];
	};
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
		let captured: FramebufferTexture | undefined;
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
					const target = renderer.getRenderTarget();
					const size = target
						? new Vector2(target.width, target.height)
						: renderer.getDrawingBufferSize(new Vector2());
					const colorSpace = target?.texture.colorSpace ?? NoColorSpace;
					let texture = this.captures[slot];
					if (
						!texture ||
						texture.image.width !== size.x ||
						texture.image.height !== size.y ||
						texture.colorSpace !== colorSpace ||
						texture.type !== (target?.texture.type ?? UnsignedByteType)
					) {
						texture?.dispose();
						texture = new FramebufferTexture(size.x, size.y);
						texture.colorSpace = colorSpace;
						if (target) texture.type = target.texture.type;
						this.captures[slot] = texture;
					}
					this.capture(renderer, texture, slot);
					captured = texture;
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
					let grab = this.grabs[slot];
					if (
						!grab ||
						grab.image.width !== background.image.width ||
						grab.image.height !== background.image.height ||
						grab.type !== background.type ||
						grab.colorSpace !== background.colorSpace
					) {
						grab?.dispose();
						grab = new FramebufferTexture(
							background.image.width,
							background.image.height,
						);
						grab.type = background.type;
						grab.colorSpace = background.colorSpace;
						this.grabs[slot] = grab;
					}
					this.capture(renderer, grab, slot);
					material.setSystemTexture("__grab", grab);
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
	private capture(
		renderer: WebGLRenderer,
		texture: FramebufferTexture,
		slot: number,
	) {
		const gl = renderer.getContext() as WebGL2RenderingContext;
		if (!this.contextCanvas) {
			this.contextCanvas = renderer.domElement;
			this.contextCanvas.addEventListener("webglcontextlost", this.contextLost);
		}
		if (!renderer.getRenderTarget() || gl.getParameter(gl.SAMPLES) === 0) {
			renderer.copyFramebufferToTexture(texture);
			return;
		}
		// Public WebGL2 resolve: no renderer-private framebuffer or texture handles.
		const read = gl.getParameter(gl.READ_FRAMEBUFFER_BINDING),
			draw = gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING),
			rb = gl.getParameter(gl.RENDERBUFFER_BINDING);
		const scissorEnabled = gl.isEnabled(gl.SCISSOR_TEST);
		const { width, height } = texture.image;
		const format =
			texture.colorSpace === SRGBColorSpace
				? gl.SRGB8_ALPHA8
				: texture.type === HalfFloatType
					? gl.RGBA16F
					: texture.type === FloatType
						? gl.RGBA32F
						: gl.RGBA8;
		const key = `${width}:${height}:${format}`;
		let resolve = this.resolves[slot];
		try {
			if (!resolve || resolve.key !== key) {
				if (resolve) {
					gl.deleteFramebuffer(resolve.framebuffer);
					gl.deleteRenderbuffer(resolve.color);
				}
				const framebuffer = gl.createFramebuffer(),
					color = gl.createRenderbuffer();
				if (!framebuffer || !color)
					throw new Error(
						"[three-liltoon] Cannot allocate scene-color resolve",
					);
				resolve = { gl, framebuffer, color, key };
				this.resolves[slot] = resolve;
				gl.bindRenderbuffer(gl.RENDERBUFFER, color);
				gl.renderbufferStorage(gl.RENDERBUFFER, format, width, height);
				gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, framebuffer);
				gl.framebufferRenderbuffer(
					gl.DRAW_FRAMEBUFFER,
					gl.COLOR_ATTACHMENT0,
					gl.RENDERBUFFER,
					color,
				);
				if (
					gl.checkFramebufferStatus(gl.DRAW_FRAMEBUFFER) !==
					gl.FRAMEBUFFER_COMPLETE
				)
					throw new Error(
						"[three-liltoon] Scene-color resolve format is unsupported",
					);
			}
			// Three's MSAA resolve can leave READ_FRAMEBUFFER at the canvas while
			// DRAW_FRAMEBUFFER still contains the active scene. Capture that scene.
			gl.bindFramebuffer(gl.READ_FRAMEBUFFER, draw);
			gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, resolve.framebuffer);
			gl.disable(gl.SCISSOR_TEST);
			gl.blitFramebuffer(
				0,
				0,
				width,
				height,
				0,
				0,
				width,
				height,
				gl.COLOR_BUFFER_BIT,
				gl.NEAREST,
			);
			gl.bindFramebuffer(gl.READ_FRAMEBUFFER, resolve.framebuffer);
			renderer.copyFramebufferToTexture(texture);
		} finally {
			gl.bindFramebuffer(gl.READ_FRAMEBUFFER, read);
			gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, draw);
			gl.bindRenderbuffer(gl.RENDERBUFFER, rb);
			if (scissorEnabled) gl.enable(gl.SCISSOR_TEST);
		}
	}
	dispose() {
		this.contextCanvas?.removeEventListener(
			"webglcontextlost",
			this.contextLost,
		);
		this.contextCanvas = undefined;
		this.blur.dispose();
		for (const texture of this.grabs) texture.dispose();
		this.grabs = [];
		for (const recipe of this.gems.values()) recipe.release();
		for (const texture of this.captures) texture.dispose();
		this.captures = [];
		for (const r of this.resolves) {
			r.gl.deleteFramebuffer(r.framebuffer);
			r.gl.deleteRenderbuffer(r.color);
		}
		this.resolves = [];
	}
}
