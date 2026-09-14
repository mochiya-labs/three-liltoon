import { expect, it, vi } from "vitest";
import {
	Bone,
	DataTexture,
	FloatType,
	Matrix4,
	PerspectiveCamera,
	RGBAFormat,
	Skeleton,
	SkinnedMesh,
	Vector4,
	type WebGLRenderer,
} from "three";
import { FurDeformation } from "../../src/renderer/FurDeformation.js";

it("caches GPU deformation by source and pose and restores render state on failure", () => {
	const source = new DataTexture(
		new Float32Array(32),
		8,
		1,
		RGBAFormat,
		FloatType,
	);
	const mesh = new SkinnedMesh();
	const bone = new Bone();
	mesh.add(bone);
	mesh.bind(new Skeleton([bone]));
	mesh.skeleton.computeBoneTexture();
	mesh.skeleton.update();
	const pass = new FurDeformation(source),
		camera = new PerspectiveCamera();
	camera.layers.set(3);
	const saved = { texture: {}, viewport: new Vector4(2, 3, 40, 50) };
	let target: any = saved;
	let viewport = new Vector4(2, 3, 40, 50),
		scissor = new Vector4(4, 5, 30, 35),
		test = true;
	const canvas = new EventTarget();
	const renderer = {
		domElement: canvas,
		autoClear: true,
		info: { autoReset: true },
		shadowMap: { autoUpdate: true, needsUpdate: true },
		getRenderTarget: () => target,
		getActiveCubeFace: () => 2,
		getActiveMipmapLevel: () => 1,
		getViewport: (v: Vector4) => v.copy(viewport),
		getScissor: (v: Vector4) => v.copy(scissor),
		getScissorTest: () => test,
		setRenderTarget: vi.fn((t: any) => {
			target = t;
		}),
		setViewport: (v: Vector4) => {
			viewport.copy(v);
		},
		setScissor: (v: Vector4) => {
			scissor.copy(v);
		},
		setScissorTest: (v: boolean) => {
			test = v;
		},
	} as unknown as WebGLRenderer;
	const render = vi.fn((scene: any) => {
		expect(target).toBe(pass.target);
		expect(test).toBe(false);
		expect(scene.children[0].layers.mask).toBe(camera.layers.mask);
	});
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(1);
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(1);
	bone.position.x = 0.5;
	mesh.updateMatrixWorld(true);
	mesh.skeleton.update();
	expect(() =>
		pass.update(
			renderer,
			() => {
				throw Error("draw failed");
			},
			mesh,
			source,
			camera,
		),
	).toThrow("draw failed");
	expect(target).toBe(saved);
	expect(viewport.toArray()).toEqual([2, 3, 40, 50]);
	expect(scissor.toArray()).toEqual([4, 5, 30, 35]);
	expect(test).toBe(true);
	expect(renderer.autoClear).toBe(true);
	expect(renderer.info.autoReset).toBe(true);
	expect(renderer.shadowMap).toMatchObject({
		autoUpdate: true,
		needsUpdate: true,
	});
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(2);
	source.needsUpdate = true;
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(3);
	mesh.bindMatrix.copy(new Matrix4().makeScale(2, 1, 1));
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(4);
	canvas.dispatchEvent(new Event("webglcontextrestored"));
	pass.update(renderer, render, mesh, source, camera);
	expect(render).toHaveBeenCalledTimes(5);
	const disposed = vi.fn();
	pass.target.addEventListener("dispose", disposed);
	pass.dispose();
	expect(disposed).toHaveBeenCalledOnce();
	source.dispose();
	mesh.skeleton.dispose();
});
