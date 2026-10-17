import {
	FramebufferTexture,
	NearestFilter,
	NoColorSpace,
	UnsignedByteType,
	Vector2,
	Vector4,
	WebGLRenderTarget,
	type Texture,
	type ColorSpace,
	type WebGLRenderer,
} from "three";

/** One snapshot slot. Three owns its texture and framebuffer allocation. */
export class SceneColorCapture {
	private target?: WebGLRenderTarget;
	private canvasTexture?: FramebufferTexture;
	private framebuffer?: WebGLFramebuffer;
	private canvas?: HTMLCanvasElement;
	private readonly contextLost = () => {
		// Remove Three's old-context disposal listeners while those handles are
		// still associated with the lost context. The next bind reallocates them.
		this.target?.dispose();
		this.canvasTexture?.dispose();
		this.framebuffer = undefined;
	};

	capture(renderer: WebGLRenderer): Texture {
		if (!this.canvas) {
			this.canvas = renderer.domElement;
			this.canvas.addEventListener("webglcontextlost", this.contextLost);
		}
		const source = renderer.getRenderTarget();
		const size = source
			? new Vector2(source.width, source.height)
			: renderer.getDrawingBufferSize(new Vector2());
		const type = source?.texture.type ?? UnsignedByteType;
		const colorSpace = (source?.texture.colorSpace ??
			NoColorSpace) as ColorSpace;
		let texture: Texture | undefined =
			this.target?.texture ?? this.canvasTexture;
		if (
			!texture ||
			Boolean(source) !== Boolean(this.target) ||
			(texture.image as { width: number }).width !== size.x ||
			(texture.image as { height: number }).height !== size.y ||
			texture.type !== type ||
			texture.colorSpace !== colorSpace
		) {
			this.target?.dispose();
			this.canvasTexture?.dispose();
			this.target = undefined;
			this.canvasTexture = undefined;
			this.framebuffer = undefined;
			if (source) {
				this.target = new WebGLRenderTarget(size.x, size.y, {
					type,
					colorSpace,
					minFilter: NearestFilter,
					magFilter: NearestFilter,
					depthBuffer: false,
					stencilBuffer: false,
					generateMipmaps: false,
				});
				texture = this.target.texture;
			} else {
				texture = this.canvasTexture = new FramebufferTexture(size.x, size.y);
			}
		}
		const gl = renderer.getContext() as WebGL2RenderingContext;
		const read = gl.getParameter(gl.READ_FRAMEBUFFER_BINDING);
		const draw = gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING);
		const scissorEnabled = gl.isEnabled(gl.SCISSOR_TEST);
		try {
			if (!source) {
				// The default framebuffer still uses Three's copy path.
				gl.bindFramebuffer(gl.READ_FRAMEBUFFER, draw);
				renderer.copyFramebufferToTexture(this.canvasTexture!);
			} else {
				if (!this.framebuffer) this.initialize(renderer, source);
				// READ can be unbound after an earlier resolve. The active scene is DRAW.
				gl.bindFramebuffer(gl.READ_FRAMEBUFFER, draw);
				gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, this.framebuffer!);
				gl.disable(gl.SCISSOR_TEST);
				// Resolve straight into the sampled texture; no intermediate color buffer.
				gl.blitFramebuffer(
					0,
					0,
					size.x,
					size.y,
					0,
					0,
					size.x,
					size.y,
					gl.COLOR_BUFFER_BIT,
					gl.NEAREST,
				);
			}
		} finally {
			gl.bindFramebuffer(gl.READ_FRAMEBUFFER, read);
			gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, draw);
			if (scissorEnabled) gl.enable(gl.SCISSOR_TEST);
			else gl.disable(gl.SCISSOR_TEST);
		}
		return texture!;
	}

	private initialize(renderer: WebGLRenderer, source: WebGLRenderTarget) {
		const gl = renderer.getContext() as WebGL2RenderingContext;
		const face = renderer.getActiveCubeFace(),
			level = renderer.getActiveMipmapLevel();
		const viewport = renderer.getCurrentViewport(new Vector4());
		const scissor = gl.getParameter(gl.SCISSOR_BOX) as Int32Array;
		const scissorTest = gl.isEnabled(gl.SCISSOR_TEST);
		const renderbuffer = gl.getParameter(gl.RENDERBUFFER_BINDING);
		const sourceViewport = source.viewport.clone(),
			sourceScissor = source.scissor.clone();
		const sourceScissorTest = source.scissorTest;
		try {
			// Public target binding allocates the attachment, including after context loss.
			renderer.setRenderTarget(this.target!);
			if (
				gl.checkFramebufferStatus(gl.DRAW_FRAMEBUFFER) !==
				gl.FRAMEBUFFER_COMPLETE
			)
				throw new Error(
					"[three-liltoon] Scene-color capture format is unsupported",
				);
			this.framebuffer = gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING);
		} finally {
			// Target defaults can differ from the active viewport/scissor. Restore both
			// Three's state cache and GL without changing the caller's target defaults.
			source.viewport.copy(viewport);
			source.scissor.fromArray(scissor);
			source.scissorTest = scissorTest;
			try {
				renderer.setRenderTarget(source, face, level);
			} finally {
				source.viewport.copy(sourceViewport);
				source.scissor.copy(sourceScissor);
				source.scissorTest = sourceScissorTest;
				gl.bindRenderbuffer(gl.RENDERBUFFER, renderbuffer);
			}
		}
	}

	dispose() {
		this.canvas?.removeEventListener("webglcontextlost", this.contextLost);
		this.canvas = undefined;
		this.target?.dispose();
		this.canvasTexture?.dispose();
		this.target = undefined;
		this.canvasTexture = undefined;
		this.framebuffer = undefined;
	}
}
