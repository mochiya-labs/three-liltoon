import { describe, expect, it, vi } from "vitest";
import {
	Bone,
	BoxGeometry,
	Color,
	DataTexture,
	DirectionalLight,
	Group,
	Mesh,
	MeshBasicMaterial,
	MeshDepthMaterial,
	PerspectiveCamera,
	Scene,
	Skeleton,
	SkinnedMesh,
	Vector2,
	Vector4,
	type Material,
	type WebGLRenderer,
} from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { enableLilToon } from "../../src/renderer/enableLilToon.js";

function harness(draw: (scene: Scene) => void) {
	const renderer = {
		info: { render: { frame: 0 } },
		shadowMap: { enabled: false },
		getRenderTarget: () => null,
		getDrawingBufferSize: (v: Vector2) => v.set(32, 32),
		render(scene: Scene, camera: PerspectiveCamera) {
			scene.updateMatrixWorld();
			scene.onBeforeRender(
				renderer,
				scene,
				camera,
				undefined!,
				undefined!,
				undefined!,
			);
			draw(scene);
			renderer.info.render.frame++;
		},
		dispose: vi.fn(),
	} as unknown as WebGLRenderer;
	return renderer;
}
const outlined = () =>
	new LilToonMaterial({ properties: { _UseOutline: 1, _OutlineWidth: 0.1 } });

describe("automatic material inputs", () => {
	it("binds a shared material to the renderer and scene performing each draw", () => {
		const material = outlined(),
			mesh = new Mesh(new BoxGeometry(), material),
			camera = new PerspectiveCamera();
		const draw = (renderer: WebGLRenderer, scene: Scene) =>
			material.onBeforeRender(
				renderer,
				scene,
				camera,
				mesh.geometry,
				mesh,
				new Group(),
			);
		const a = new Scene(),
			b = new Scene();
		a.add(new DirectionalLight(0xff0000, 1));
		b.add(new DirectionalLight(0x0000ff, 1));
		const first = harness(() => {}),
			second = harness(() => {});
		draw(first, a);
		expect(
			(material.globalUniforms.uMainLightColor as Vector4).toArray(),
		).toEqual([1, 0, 0, 1]);
		draw(second, b);
		expect(
			(material.globalUniforms.uMainLightColor as Vector4).toArray(),
		).toEqual([0, 0, 1, 1]);
		draw(first, a);
		expect((material.globalUniforms.uMainLightColor as Vector4).x).toBe(1);
	});
	it("synchronizes familiar aliases, mutable colors, clone and shader requirements", () => {
		const texture = new DataTexture();
		const m = new LilToonMaterial({
			color: new Color(0.1, 0.2, 0.3),
			opacity: 0.4,
			map: texture,
			alphaTest: 0.25,
		});
		expect(m.getProperty("_Color")).toEqual([0.1, 0.2, 0.3, 0.4]);
		expect(m.map).toBe(texture);
		expect(m.renderMode).toBe("cutout");
		m.color.setRGB(0.5, 0.6, 0.7);
		expect(m.clone().getProperty("_Color")).toEqual([0.5, 0.6, 0.7, 0.4]);
		m.setProperty("_Color", [0.2, 0.3, 0.4, 0.5]);
		expect(m.color.toArray()).toEqual([0.2, 0.3, 0.4]);
		expect(m.opacity).toBe(0.5);
		m.setProperty("_Cutoff", 0.7);
		expect(m.alphaTest).toBe(0.7);
		m.setTexture("_EmissionBlendMask", new DataTexture());
		expect(m.shaderKey).toContain("emission-mask");
		expect(m.map).toBe(texture);
		m.setTexture("_EmissionBlendMask", null);
		expect(m.shaderKey).toBe("standard-cutout");
		const transparent = new LilToonMaterial({
			renderMode: "transparent",
			alphaTest: 0,
		});
		expect(transparent.transparent).toBe(true);
		transparent.alphaTest = 0.5;
		expect(transparent.transparent).toBe(false);
		expect(transparent.shaderKey).toBe("standard-cutout");
	});
});

describe("renderer-owned automatic passes", () => {
	it("prepares the first frame and removes helpers and casters after rendering", () => {
		const scene = new Scene(),
			mesh = new Mesh(new BoxGeometry(), outlined());
		scene.add(mesh);
		const groupState = mesh.geometry.groups;
		let outline: Mesh | undefined;
		const renderer = harness(() => {
			outline = mesh.children[0] as Mesh;
			expect(outline.material).toBeInstanceOf(LilToonMaterial);
			expect(mesh.customDepthMaterial).toBeInstanceOf(MeshDepthMaterial);
			expect(outline.geometry).toBe(mesh.geometry);
		});
		const release = enableLilToon(renderer);
		renderer.render(scene, new PerspectiveCamera());
		expect(mesh.children).toEqual([]);
		expect(outline!.parent).toBeNull();
		expect(mesh.customDepthMaterial).toBeUndefined();
		expect(mesh.geometry.groups).toBe(groupState);
		release();
		release();
	});
	it("handles both directions of replacement, disabling outlines, and detached meshes", () => {
		const scene = new Scene(),
			source = outlined(),
			mesh = new Mesh(new BoxGeometry(), source);
		scene.add(mesh);
		let expected = 1,
			oldOutline: Material | undefined;
		const renderer = harness(() => {
			expect(mesh.children).toHaveLength(expected);
			if (expected)
				oldOutline = (mesh.children[0] as Mesh).material as Material;
		});
		const release = enableLilToon(renderer);
		const camera = new PerspectiveCamera();
		renderer.render(scene, camera);
		const dispose = vi.spyOn(oldOutline!, "dispose");
		mesh.material = new MeshBasicMaterial() as unknown as LilToonMaterial;
		expected = 0;
		renderer.render(scene, camera);
		expect(dispose).toHaveBeenCalledOnce();
		mesh.material = source;
		expected = 1;
		renderer.render(scene, camera);
		source.setProperty("_UseOutline", 0);
		expected = 0;
		renderer.render(scene, camera);
		source.setProperty("_UseOutline", 1);
		scene.remove(mesh);
		renderer.render(scene, camera);
		release();
	});
	it("preserves grouped slots, skin/morph state, layers and scene callback edits", () => {
		const scene = new Scene(),
			source = outlined();
		const mesh = new SkinnedMesh(new BoxGeometry(), [
			new MeshBasicMaterial(),
			source,
		]);
		const bone = new Bone();
		mesh.add(bone);
		mesh.bind(new Skeleton([bone]));
		mesh.morphTargetInfluences = [0.4];
		mesh.layers.set(2);
		scene.add(mesh);
		const callback = vi.fn(() => {
			mesh.position.x = 3;
			source.setProperty("_OutlineColor", [0.1, 0.2, 0.3, 1]);
		});
		scene.onBeforeRender = callback;
		const renderer = harness(() => {
			const proxy = mesh.children.find(
				(n) => (n as Mesh).isMesh,
			) as SkinnedMesh;
			expect(proxy.skeleton).toBe(mesh.skeleton);
			expect(proxy.morphTargetInfluences).toBe(mesh.morphTargetInfluences);
			expect(proxy.layers.mask).toBe(mesh.layers.mask);
			expect(proxy.matrixWorld.elements[12]).toBe(3);
			const materials = proxy.material as Material[];
			expect(materials[0]!.visible).toBe(false);
			expect(
				(materials[1] as LilToonMaterial).getProperty("_OutlineColor"),
			).toEqual([0.1, 0.2, 0.3, 1]);
		});
		const release = enableLilToon(renderer);
		renderer.render(scene, new PerspectiveCamera());
		expect(callback).toHaveBeenCalledOnce();
		expect(scene.onBeforeRender).toBe(callback);
		expect(mesh.children).toEqual([bone]);
		release();
	});
	it("restores host casters and hooks even when rendering throws", () => {
		const scene = new Scene(),
			mesh = new Mesh(new BoxGeometry(), outlined());
		scene.add(mesh);
		const depth = new MeshDepthMaterial(),
			callback = vi.fn();
		mesh.customDepthMaterial = depth;
		mesh.onBeforeShadow = callback;
		const renderer = harness(() => {
			expect(mesh.customDepthMaterial).toBe(depth);
			throw new Error("draw failure");
		});
		const release = enableLilToon(renderer);
		expect(() => renderer.render(scene, new PerspectiveCamera())).toThrow(
			"draw failure",
		);
		expect(mesh.children).toEqual([]);
		expect(mesh.customDepthMaterial).toBe(depth);
		expect(mesh.onBeforeShadow).toBe(callback);
		release();
	});
	it("uses independent alpha UV transforms without disposing the input texture", () => {
		const texture = new DataTexture(),
			source = outlined();
		source.map = texture;
		source.alphaTest = 0.5;
		source.opacity = 0.25;
		source.setProperty("_MainTex_ST", [2, 3, 0.2, 0.4]);
		const scene = new Scene(),
			mesh = new Mesh(new BoxGeometry(), source);
		scene.add(mesh);
		const textureDispose = vi.spyOn(texture, "dispose");
		let shadowMap: DataTexture;
		const renderer = harness(() => {
			const material = mesh.customDepthMaterial as MeshDepthMaterial;
			mesh.onBeforeShadow(
				renderer,
				mesh as unknown as Scene,
				new PerspectiveCamera(),
				new PerspectiveCamera(),
				mesh.geometry,
				material,
				null!,
			);
			expect(material.map).not.toBe(texture);
			expect(material.alphaTest).toBe(0.5);
			expect(material.opacity).toBe(0.25);
			expect(material.alphaMap).toBeNull();
			shadowMap = material.map as DataTexture;
			expect(shadowMap.matrix.elements).toEqual([
				2, -0, 0, 0, 3, 0, 0.2, 0.4, 1,
			]);
		});
		const original = texture.matrix.clone(),
			release = enableLilToon(renderer);
		renderer.render(scene, new PerspectiveCamera());
		const shadowDispose = vi.spyOn(shadowMap!, "dispose");
		source.dispose();
		expect(shadowDispose).toHaveBeenCalledOnce();
		expect(textureDispose).not.toHaveBeenCalled();
		expect(texture.matrix).toEqual(original);
		release();
	});
	it("supports nested rendering and reference-counted renderer ownership", () => {
		const scene = new Scene(),
			other = new Scene(),
			mesh = new Mesh(new BoxGeometry(), outlined());
		scene.add(mesh);
		let nesting = false;
		const renderer = harness((current) => {
			if (current === scene && !nesting) {
				nesting = true;
				renderer.render(other, new PerspectiveCamera());
				nesting = false;
				expect(mesh.children).toHaveLength(1);
			}
		});
		const original = renderer.render,
			release = enableLilToon(renderer),
			second = enableLilToon(renderer);
		renderer.render(scene, new PerspectiveCamera());
		expect(mesh.children).toEqual([]);
		release();
		expect(renderer.render).not.toBe(original);
		second();
		expect(renderer.render).toBe(original);
	});
});
