import { afterEach, describe, expect, it, vi } from "vitest";
import { Group, Mesh, MeshBasicMaterial, MeshStandardMaterial } from "three";
import {
	GLTFLoader,
	type GLTF,
	type GLTFParser,
} from "three/examples/jsm/loaders/GLTFLoader.js";
import { MToonMaterial, VRMLoaderPlugin } from "@pixiv/three-vrm";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { LILTOON_GLTF_EXTENSION } from "../../src/loaders/types.js";
import { enableLilToonVRM } from "../../src/vrm.js";

afterEach(() => vi.restoreAllMocks());

function document() {
	return {
		asset: { version: "2.0" },
		scene: 0,
		scenes: [{ nodes: [0, 1, 2, 3] }],
		nodes: [0, 1, 2, 3].map((mesh) => ({ mesh })),
		meshes: [0, 1, 2, 3].map((material) => ({
			primitives: [{ attributes: { POSITION: 0 }, material }],
		})),
		// Omitted bufferView is valid glTF: initialize the accessor to zero.
		accessors: [
			{
				componentType: 5126,
				count: 3,
				type: "VEC3",
				min: [0, 0, 0],
				max: [0, 0, 0],
			},
		],
		extensionsUsed: [
			LILTOON_GLTF_EXTENSION,
			"KHR_materials_unlit",
			"VRMC_materials_mtoon",
		],
		materials: [
			{
				name: "lilToon",
				extensions: {
					[LILTOON_GLTF_EXTENSION]: {
						specVersion: "1.0",
						properties: { _Color: [0.2, 0.4, 0.6, 1] },
					},
				},
			},
			{
				name: "PBR",
				pbrMetallicRoughness: { baseColorFactor: [0.3, 0.5, 0.7, 1] },
			},
			{ name: "Unlit", extensions: { KHR_materials_unlit: {} } },
			{
				name: "MToon",
				extensions: {
					VRMC_materials_mtoon: {
						specVersion: "1.0",
						shadeColorFactor: [1, 1, 1],
					},
				},
			},
		],
	};
}

function encodeGLB(json: unknown) {
	const text = JSON.stringify(json);
	const jsonBytes = new TextEncoder().encode(
		text + " ".repeat((4 - (text.length % 4)) % 4),
	);
	const bytes = new ArrayBuffer(20 + jsonBytes.length);
	const view = new DataView(bytes);
	[0x46546c67, 2, bytes.byteLength, jsonBytes.length, 0x4e4f534a].forEach(
		(value, index) => view.setUint32(index * 4, value, true),
	);
	new Uint8Array(bytes, 20).set(jsonBytes);
	return bytes;
}

function dispose(gltf: GLTF) {
	gltf.scene.traverse((object) => {
		if (!(object instanceof Mesh)) return;
		object.geometry.dispose();
		const materials = Array.isArray(object.material)
			? object.material
			: [object.material];
		materials.forEach((material) => material.dispose());
	});
}

describe("enableLilToonVRM", () => {
	it.each(["gltf", "glb"])(
		"loads lilToon, PBR, unlit and MToon in ordinary %s without a VRM runtime",
		async (format) => {
			const loader = new GLTFLoader().register((parser) =>
				enableLilToonVRM(new VRMLoaderPlugin(parser)),
			);
			const input = document();
			const gltf = await loader.parseAsync(
				format === "glb" ? encodeGLB(input) : JSON.stringify(input),
				"",
			);
			const materials = gltf.scene.children.map(
				(object) => (object as Mesh).material,
			);
			expect(materials[0]).toBeInstanceOf(LilToonMaterial);
			expect((materials[0] as LilToonMaterial).getProperty("_Color")).toEqual([
				0.2, 0.4, 0.6, 1,
			]);
			expect(materials[1]).toBeInstanceOf(MeshStandardMaterial);
			expect((materials[1] as MeshStandardMaterial).color.toArray()).toEqual([
				0.3, 0.5, 0.7,
			]);
			expect(materials[2]).toBeInstanceOf(MeshBasicMaterial);
			expect(materials[3]).toBeInstanceOf(MToonMaterial);
			expect(
				gltf.parser.associations.get(materials[0] as LilToonMaterial),
			).toMatchObject({ materials: 0 });
			expect(gltf.userData.vrm).toBeUndefined();
			dispose(gltf);
		},
	);

	it("preserves the plugin instance, options, other hooks and custom material fallback", async () => {
		const parser = {
			json: document(),
			associations: new Map(),
		} as unknown as GLTFParser;
		const helperRoot = new Group();
		const plugin = new VRMLoaderPlugin(parser, {
			helperRoot,
			autoUpdateHumanBones: true,
		});
		const hooks = [
			plugin.beforeRoot,
			plugin.loadMesh,
			plugin.getMaterialType,
			plugin.extendMaterialParams,
		];
		const humanoid = plugin.humanoidPlugin;
		const fallback = new MeshBasicMaterial();
		const originalLoad = vi.fn(function (this: VRMLoaderPlugin) {
			expect(this).toBe(plugin);
			return Promise.resolve(fallback);
		});
		const custom = Object.assign(plugin, {
			loadMaterial: originalLoad,
			customValue: 42,
		});
		const enhanced = enableLilToonVRM(custom);
		expect(enhanced).toBe(custom);
		expect(enhanced.customValue).toBe(42);
		expect(enhanced.name).toBe("VRMLoaderPlugin");
		expect(enhanced.parser).toBe(parser);
		expect(enhanced.humanoidPlugin).toBe(humanoid);
		expect([
			enhanced.beforeRoot,
			enhanced.loadMesh,
			enhanced.getMaterialType,
			enhanced.extendMaterialParams,
		]).toEqual(hooks);
		const material = await enhanced.loadMaterial(0);
		expect(material).toBeInstanceOf(LilToonMaterial);
		expect(originalLoad).not.toHaveBeenCalled();
		expect(await enhanced.loadMaterial(1)).toBe(fallback);
		expect(originalLoad).toHaveBeenCalledTimes(1);
		material?.dispose();
		fallback.dispose();
	});

	it("enhances once and publishes each warning once with the first options", async () => {
		const onWarning = vi.fn();
		const ignored = vi.fn();
		const loader = new GLTFLoader().register((parser) => {
			const plugin = enableLilToonVRM(new VRMLoaderPlugin(parser), {
				onWarning,
			});
			const hooks = [plugin.loadMaterial, plugin.afterRoot];
			expect(enableLilToonVRM(plugin, { onWarning: ignored })).toBe(plugin);
			expect([plugin.loadMaterial, plugin.afterRoot]).toEqual(hooks);
			return plugin;
		});
		const input = document();
		input.materials[0].extensions![LILTOON_GLTF_EXTENSION]!.specVersion =
			"future";
		const gltf = await loader.parseAsync(JSON.stringify(input), "");
		expect(onWarning).toHaveBeenCalledTimes(1);
		expect(onWarning.mock.calls[0][0]).toMatchObject({
			code: "spec-version-mismatch",
			materialIndex: 0,
		});
		expect(gltf.userData.lilToonWarnings).toEqual([onWarning.mock.calls[0][0]]);
		expect(ignored).not.toHaveBeenCalled();
		dispose(gltf);
	});

	it("propagates failures from the original VRM hook", async () => {
		const failure = new Error("custom VRM initialization failed");
		const loader = new GLTFLoader().register((parser) => {
			const plugin = new VRMLoaderPlugin(parser);
			plugin.afterRoot = async () => {
				throw failure;
			};
			return enableLilToonVRM(plugin);
		});
		await expect(
			loader.parseAsync(
				JSON.stringify({ asset: { version: "2.0" }, scenes: [{ nodes: [] }] }),
				"",
			),
		).rejects.toBe(failure);
	});

	it("keeps standalone glTF material loading independent of VRM setup", async () => {
		const loader = new GLTFLoader().register(
			(parser) => new GLTFLilToonExtension(parser),
		);
		const input = document();
		input.scenes[0].nodes = [0, 1, 2];
		const gltf = await loader.parseAsync(JSON.stringify(input), "");
		expect((gltf.scene.children[0] as Mesh).material).toBeInstanceOf(
			LilToonMaterial,
		);
		expect((gltf.scene.children[1] as Mesh).material).toBeInstanceOf(
			MeshStandardMaterial,
		);
		expect(gltf.userData.vrm).toBeUndefined();
		dispose(gltf);
	});
});
