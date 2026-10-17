import {
	Color,
	FloatType,
	FramebufferTexture,
	HalfFloatType,
	Mesh,
	MeshBasicMaterial,
	NearestFilter,
	NoColorSpace,
	OrthographicCamera,
	PlaneGeometry,
	Scene,
	SRGBColorSpace,
	UnsignedByteType,
	Vector4,
	WebGLRenderer,
	WebGLRenderTarget,
	type Texture,
} from "three";
import { SceneColorCapture } from "../../src/renderer/SceneColorCapture.js";

// Independent reference: the previous resolve-to-renderbuffer followed by a copy.
function reference(renderer: WebGLRenderer, source: WebGLRenderTarget) {
	const gl = renderer.getContext() as WebGL2RenderingContext;
	const read = gl.getParameter(gl.READ_FRAMEBUFFER_BINDING),
		draw = gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING);
	const rb = gl.getParameter(gl.RENDERBUFFER_BINDING),
		scissor = gl.isEnabled(gl.SCISSOR_TEST);
	const texture = new FramebufferTexture(source.width, source.height);
	texture.type = source.texture.type;
	texture.colorSpace = source.texture.colorSpace;
	const framebuffer = gl.createFramebuffer(),
		color = gl.createRenderbuffer();
	try {
		gl.bindFramebuffer(gl.READ_FRAMEBUFFER, draw);
		gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, framebuffer);
		gl.bindRenderbuffer(gl.RENDERBUFFER, color);
		const format =
			texture.colorSpace === SRGBColorSpace
				? gl.SRGB8_ALPHA8
				: texture.type === HalfFloatType
					? gl.RGBA16F
					: texture.type === FloatType
						? gl.RGBA32F
						: gl.RGBA8;
		gl.renderbufferStorage(
			gl.RENDERBUFFER,
			format,
			source.width,
			source.height,
		);
		gl.framebufferRenderbuffer(
			gl.DRAW_FRAMEBUFFER,
			gl.COLOR_ATTACHMENT0,
			gl.RENDERBUFFER,
			color,
		);
		gl.disable(gl.SCISSOR_TEST);
		gl.blitFramebuffer(
			0,
			0,
			source.width,
			source.height,
			0,
			0,
			source.width,
			source.height,
			gl.COLOR_BUFFER_BIT,
			gl.NEAREST,
		);
		gl.bindFramebuffer(gl.READ_FRAMEBUFFER, framebuffer);
		renderer.copyFramebufferToTexture(texture);
	} finally {
		gl.bindFramebuffer(gl.READ_FRAMEBUFFER, read);
		gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, draw);
		gl.bindRenderbuffer(gl.RENDERBUFFER, rb);
		if (scissor) gl.enable(gl.SCISSOR_TEST);
		gl.deleteFramebuffer(framebuffer);
		gl.deleteRenderbuffer(color);
	}
	return texture;
}

export async function verifySceneCapture() {
	const renderer = new WebGLRenderer({ preserveDrawingBuffer: true });
	renderer.setSize(48, 48);
	const gl = renderer.getContext() as WebGL2RenderingContext;
	const capture = new SceneColorCapture(),
		nested = new SceneColorCapture();
	const scene = new Scene(),
		camera = new OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 2;
	const material = new MeshBasicMaterial({ toneMapped: false });
	const mesh = new Mesh(new PlaneGeometry(1.4, 1.4), material);
	scene.add(mesh);
	const output = new WebGLRenderTarget(48, 48, {
		type: FloatType,
		minFilter: NearestFilter,
		magFilter: NearestFilter,
	});
	const sample = (texture: Texture) => {
		const savedMap = material.map,
			savedColor = material.color.clone(),
			position = mesh.position.clone();
		material.map = texture;
		material.color.setRGB(1, 1, 1);
		material.needsUpdate = true;
		mesh.position.set(0, 0, 0);
		renderer.setScissorTest(false);
		renderer.setRenderTarget(output);
		renderer.render(scene, camera);
		const pixels = new Float32Array(48 * 48 * 4);
		renderer.readRenderTargetPixels(output, 0, 0, 48, 48, pixels);
		material.map = savedMap;
		material.color.copy(savedColor);
		material.needsUpdate = true;
		mesh.position.copy(position);
		return pixels;
	};
	const difference = (a: Float32Array, b: Float32Array) =>
		a.reduce((n, v, i) => n + Number(Math.abs(v - b[i]!) > 0.0001), 0);
	const state = () => ({
		read: gl.getParameter(gl.READ_FRAMEBUFFER_BINDING),
		draw: gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING),
		viewport: Array.from(gl.getParameter(gl.VIEWPORT) as Int32Array),
		scissor: Array.from(gl.getParameter(gl.SCISSOR_BOX) as Int32Array),
		scissorTest: gl.isEnabled(gl.SCISSOR_TEST),
		cachedViewport: renderer.getCurrentViewport(new Vector4()).toArray(),
	});
	const rows = [];
	let lastSource: WebGLRenderTarget | undefined;
	for (const [type, colorSpace] of [
		[UnsignedByteType, NoColorSpace],
		[UnsignedByteType, SRGBColorSpace],
		[HalfFloatType, NoColorSpace],
		[FloatType, NoColorSpace],
	] as const) {
		for (const samples of [0, 4]) {
			const source = new WebGLRenderTarget(48, 48, {
				type,
				colorSpace,
				samples,
			});
			const paint = (pose: number) => {
				renderer.setScissorTest(false);
				renderer.setRenderTarget(source);
				scene.background = new Color(0.1, 0.3, 0.5);
				material.color.setRGB(
					type === UnsignedByteType ? 0.8 : 2,
					0.2 + pose * 0.3,
					0.1,
				);
				mesh.position.x = pose * 0.25;
				renderer.render(scene, camera);
			};
			paint(0);
			const old = reference(renderer, source);
			// Active viewport/scissor deliberately differ from target defaults.
			renderer.setViewport(2, 3, 40, 41);
			renderer.setScissor(3, 4, 38, 39);
			renderer.setScissorTest(true);
			gl.bindFramebuffer(gl.READ_FRAMEBUFFER, null);
			const before = state(),
				first = capture.capture(renderer),
				after = state();
			const restored =
				before.read === after.read &&
				before.draw === after.draw &&
				JSON.stringify({ ...before, read: null, draw: null }) ===
					JSON.stringify({ ...after, read: null, draw: null });
			const firstPixels = sample(first),
				oldPixels = sample(old);
			old.dispose();
			paint(1);
			const nestedTexture = nested.capture(renderer),
				nestedPixels = sample(nestedTexture);
			// An independent capture must not overwrite the outer snapshot.
			const outerAfterNested = sample(first);
			paint(1);
			const secondReference = reference(renderer, source),
				second = capture.capture(renderer);
			const secondPixels = sample(second),
				secondOldPixels = sample(secondReference);
			secondReference.dispose();
			rows.push({
				type,
				colorSpace,
				samples,
				restored,
				difference: difference(firstPixels, oldPixels),
				nextDifference: difference(secondPixels, secondOldPixels),
				nestedDifference: difference(nestedPixels, secondPixels),
				preservedDifference: difference(firstPixels, outerAfterNested),
				movingDifference: difference(firstPixels, secondPixels),
				error: gl.getError(),
			});
			lastSource?.dispose();
			lastSource = source;
		}
	}
	// Rebuild capture attachments after context restoration, then resize and reuse.
	const restored = new Promise<void>((resolve) =>
		renderer.domElement.addEventListener(
			"webglcontextrestored",
			() => resolve(),
			{ once: true },
		),
	);
	// The fixture owns these resources; release their old-context listeners too.
	renderer.domElement.addEventListener(
		"webglcontextlost",
		() => {
			lastSource!.dispose();
			output.dispose();
			material.dispose();
			mesh.geometry.dispose();
		},
		{ once: true },
	);
	renderer.forceContextLoss();
	await new Promise((r) => setTimeout(r, 50));
	renderer.forceContextRestore();
	await restored;
	const checkpoints: Record<string, number> = {};
	checkpoints.restored = gl.getError();
	lastSource!.setSize(24, 32);
	renderer.setScissorTest(false);
	renderer.setRenderTarget(lastSource!);
	renderer.render(scene, camera);
	checkpoints.paint = gl.getError();
	const resized = capture.capture(renderer);
	checkpoints.capture = gl.getError();
	const size = [
		(resized.image as { width: number }).width,
		(resized.image as { height: number }).height,
	];
	const oldResized = reference(renderer, lastSource!);
	const contextDifference = difference(sample(resized), sample(oldResized));
	oldResized.dispose();
	checkpoints.resized = gl.getError();
	// Switching from an offscreen capture to the default framebuffer keeps its copy path.
	renderer.setRenderTarget(null);
	renderer.render(scene, camera);
	checkpoints.canvasPaint = gl.getError();
	const canvas = capture.capture(renderer);
	checkpoints.canvasCapture = gl.getError();
	const canvasReference = new FramebufferTexture(48, 48);
	renderer.copyFramebufferToTexture(canvasReference);
	const canvasDifference = difference(sample(canvas), sample(canvasReference));
	canvasReference.dispose();
	const error = gl.getError();

	renderer.setRenderTarget(null);
	capture.dispose();
	nested.dispose();
	lastSource!.dispose();
	output.dispose();
	material.dispose();
	mesh.geometry.dispose();
	checkpoints.disposed = gl.getError();
	const remaining = { ...renderer.info.memory };
	renderer.dispose();
	return {
		rows,
		size,
		contextDifference,
		canvasDifference,
		checkpoints,
		error,
		remaining,
	};
}
