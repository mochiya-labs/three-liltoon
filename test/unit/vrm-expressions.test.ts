import { afterEach, describe, expect, it, vi } from "vitest";
import {
	BufferGeometry,
	Color,
	DataTexture,
	Group,
	Mesh,
	MeshBasicMaterial,
	MeshStandardMaterial,
	PerspectiveCamera,
	Scene,
	Vector2,
	type WebGLRenderer,
} from "three";
import {
	GLTFLoader,
	type GLTF,
	type GLTFParser,
} from "three/examples/jsm/loaders/GLTFLoader.js";
import {
	VRMExpression,
	VRMExpressionManager,
	VRMExpressionMaterialColorBind,
	VRMExpressionMorphTargetBind,
	VRMExpressionTextureTransformBind,
	VRMLoaderPlugin,
	type VRM,
	type VRMExpressionMaterialColorType,
} from "@pixiv/three-vrm";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { enableLilToon } from "../../src/renderer/enableLilToon.js";
import {
	enableLilToonVRM,
	installLilToonExpressionBindings,
	uninstallLilToonExpressionBindings,
} from "../../src/vrm.js";

afterEach(() => vi.restoreAllMocks());

function expressions(...names: string[]) {
	const manager = new VRMExpressionManager();
	for (const name of names) manager.registerExpression(new VRMExpression(name));
	// The adapter consumes only the real manager; humanoid/physics are unrelated.
	const vrm = { expressionManager: manager } as VRM;
	return { vrm, manager, expression: manager.getExpression(names[0])! };
}

function colorBind(
	material: LilToonMaterial,
	type: VRMExpressionMaterialColorType = "color",
	targetValue = new Color(1, 0, 0),
	targetAlpha = 1,
) {
	// Upstream creates unsupported shader binds before the adapter replaces them.
	const warning = vi.spyOn(console, "warn").mockImplementation(() => {});
	try {
		return new VRMExpressionMaterialColorBind({
			material,
			type,
			targetValue,
			targetAlpha,
		});
	} finally {
		warning.mockRestore();
	}
}

describe("lilToon VRM expression bindings", () => {
	it.each([
		["color", "_Color"],
		["emissionColor", "_EmissionColor"],
		["shadeColor", "_ShadowColor"],
		["matcapColor", "_MatCapColor"],
		["rimColor", "_RimColor"],
		["outlineColor", "_OutlineColor"],
	] as const)(
		"maps %s and preserves shader alpha outside base color",
		(type, property) => {
			const material = new LilToonMaterial({
				properties: { [property]: [0.2, 0.4, 0.6, 0.8] },
			});
			const { vrm, manager, expression } = expressions("test");
			expression.addBind(
				colorBind(material, type, new Color(0.6, 0.8, 0.2), 0.4),
			);
			const undo = installLilToonExpressionBindings(vrm);
			manager.setValue("test", 0.5);
			manager.update();
			const result = material.getProperty(property) as number[];
			[0.4, 0.6, 0.4, type === "color" ? 0.6 : 0.8].forEach((value, i) =>
				expect(result[i]).toBeCloseTo(value),
			);
			manager.setValue("test", 0);
			manager.update();
			expect(material.getProperty(property)).toEqual([0.2, 0.4, 0.6, 0.8]);
			if (type !== "color") {
				material.setProperty(property, [0.2, 0.4, 0.6, 0.3]);
				manager.update();
				expect((material.getProperty(property) as number[])[3]).toBe(0.3);
			}
			undo();
			material.dispose();
		},
	);

	it("blends concurrent expressions without accumulating previous frames", () => {
		const material = new LilToonMaterial({
			properties: { _Color: [0, 0, 0, 1] },
		});
		const { vrm, manager, expression } = expressions("red", "green");
		expression.addBind(colorBind(material));
		manager
			.getExpression("green")!
			.addBind(colorBind(material, "color", new Color(0, 1, 0)));
		installLilToonExpressionBindings(vrm);
		manager.setValue("red", 0.5);
		manager.setValue("green", 0.25);
		manager.update();
		manager.update();
		expect(material.getProperty("_Color")).toEqual([0.5, 0.25, 0, 1]);
		uninstallLilToonExpressionBindings(vrm);
		expect(material.getProperty("_Color")).toEqual([0, 0, 0, 1]);
		material.dispose();
	});

	it("animates property-owned UVs without changing a shared texture or other slots", () => {
		const texture = new DataTexture();
		const material = new LilToonMaterial({
			properties: { _MainTex_ST: [2, 3, 0.2, 0.4], _BumpMap_ST: [4, 4, 0, 0] },
			textures: { _MainTex: texture },
		});
		const { vrm, manager, expression } = expressions("eyes");
		const warning = vi.spyOn(console, "warn").mockImplementation(() => {});
		expression.addBind(
			new VRMExpressionTextureTransformBind({
				material,
				scale: new Vector2(4, 5),
				offset: new Vector2(0.6, 0.8),
			}),
		);
		warning.mockRestore();
		installLilToonExpressionBindings(vrm);
		manager.setValue("eyes", 0.5);
		manager.update();
		const result = material.getProperty("_MainTex_ST") as number[];
		[3, 4, 0.4, 0.6].forEach((value, i) =>
			expect(result[i]).toBeCloseTo(value),
		);
		expect(material.getProperty("_BumpMap_ST")).toEqual([4, 4, 0, 0]);
		expect(texture.repeat.toArray()).toEqual([1, 1]);
		expect(texture.offset.toArray()).toEqual([0, 0]);
		uninstallLilToonExpressionBindings(vrm);
		expect(material.getProperty("_MainTex_ST")).toEqual([2, 3, 0.2, 0.4]);
		material.dispose();
		texture.dispose();
	});

	it("leaves standard material and morph bindings with three-vrm", () => {
		const { vrm, manager, expression } = expressions("test");
		const basic = new MeshBasicMaterial({ color: new Color(0, 0, 0) });
		const standard = new MeshStandardMaterial({ emissive: new Color(0, 0, 0) });
		const mesh = new Mesh(new BufferGeometry(), basic);
		mesh.morphTargetInfluences = [0];
		const binds = [
			new VRMExpressionMaterialColorBind({
				material: basic,
				type: "color",
				targetValue: new Color(1, 0, 0),
			}),
			new VRMExpressionMaterialColorBind({
				material: standard,
				type: "emissionColor",
				targetValue: new Color(0, 1, 0),
			}),
			new VRMExpressionMorphTargetBind({
				primitives: [mesh],
				index: 0,
				weight: 1,
			}),
		];
		binds.forEach((bind) => expression.addBind(bind));
		installLilToonExpressionBindings(vrm);
		expect(expression.binds).toEqual(binds);
		manager.setValue("test", 0.5);
		manager.update();
		expect(basic.color.toArray()).toEqual([0.5, 0, 0]);
		expect(standard.emissive.toArray()).toEqual([0, 0.5, 0]);
		expect(mesh.morphTargetInfluences).toEqual([0.5]);
		uninstallLilToonExpressionBindings(vrm);
		expect(expression.binds).toEqual(binds);
		basic.dispose();
		standard.dispose();
		mesh.geometry.dispose();
	});

	it("installs once and supports repeated undo and reinstallation", () => {
		const material = new LilToonMaterial();
		const { vrm, expression } = expressions("test");
		const original = colorBind(material);
		expression.addBind(original);
		const undo = installLilToonExpressionBindings(vrm);
		expect(installLilToonExpressionBindings(vrm)).toBe(undo);
		expect(expression.binds).toHaveLength(1);
		expect(expression.binds[0]).not.toBe(original);
		undo();
		undo();
		uninstallLilToonExpressionBindings(vrm);
		expect(expression.binds).toEqual([original]);
		installLilToonExpressionBindings(vrm);
		expect(expression.binds).toHaveLength(1);
		expect(expression.binds[0]).not.toBe(original);
		uninstallLilToonExpressionBindings(vrm);
		material.dispose();
	});

	it("keeps generated outline properties synchronized without an attachment bridge", () => {
		const material = new LilToonMaterial({ properties: { _UseOutline: 1 } });
		const mesh = new Mesh(new BufferGeometry(), material);
		const scene = new Scene();
		scene.add(mesh);
		const renderer = {
			render(scene: Scene, camera: PerspectiveCamera) {
				scene.onBeforeRender(
					renderer,
					scene,
					camera,
					undefined!,
					undefined!,
					undefined!,
				);
				const outline = mesh.children[0] as Mesh;
				expect(
					(outline.material as LilToonMaterial).getProperty("_OutlineColor"),
				).toEqual(material.getProperty("_OutlineColor"));
				expect(
					(outline.material as LilToonMaterial).getProperty("_MainTex_ST"),
				).toEqual([2, 2, 0.5, 0]);
			},
			dispose: vi.fn(),
		} as unknown as WebGLRenderer;
		const release = enableLilToon(renderer);
		const { vrm, manager, expression } = expressions("outline");
		expression.addBind(
			colorBind(material, "outlineColor", new Color(0.5, 0.25, 0.75)),
		);
		installLilToonExpressionBindings(vrm);
		manager.setValue("outline", 1);
		manager.update();
		material.setProperty("_MainTex_ST", [2, 2, 0.5, 0]);
		renderer.render(scene, new PerspectiveCamera());
		expect(mesh.children).toHaveLength(0);
		uninstallLilToonExpressionBindings(vrm);
		release();
		material.dispose();
		mesh.geometry.dispose();
	});
});

describe("VRM loader integration", () => {
	it("awaits standard VRM construction before installing bindings", async () => {
		const material = new LilToonMaterial({
			properties: { _Color: [0, 0, 0, 1] },
		});
		const { vrm, manager, expression } = expressions("test");
		expression.addBind(colorBind(material));
		let finish!: () => void;
		const pending = new Promise<void>((resolve) => {
			finish = resolve;
		});
		const standard = vi
			.spyOn(VRMLoaderPlugin.prototype, "afterRoot")
			.mockImplementation(async (gltf) => {
				await pending;
				gltf.userData.vrm = vrm;
			});
		const parser = { json: {} } as GLTFParser;
		const plugin = enableLilToonVRM(new VRMLoaderPlugin(parser));
		const gltf = { scene: new Group(), userData: {} } as GLTF;
		const loading = plugin.afterRoot(gltf);
		expect(gltf.userData.vrm).toBeUndefined();
		finish();
		await loading;
		expect(standard).toHaveBeenCalledTimes(1);
		expect(gltf.userData.vrm).toBe(vrm);
		manager.setValue("test", 0.5);
		manager.update();
		expect(material.getProperty("_Color")).toEqual([0.5, 0, 0, 1]);
		uninstallLilToonExpressionBindings(vrm);
		material.dispose();
	});

	it("keeps ordinary glTF loading usable without a VRM extension", async () => {
		const loader = new GLTFLoader().register((parser) =>
			enableLilToonVRM(new VRMLoaderPlugin(parser)),
		);
		const gltf = await loader.parseAsync(
			JSON.stringify({
				asset: { version: "2.0" },
				scene: 0,
				scenes: [{ nodes: [] }],
			}),
			"",
		);
		expect(gltf.userData.vrm).toBeUndefined();
		expect(gltf.scene.children).toHaveLength(0);
	});
});
