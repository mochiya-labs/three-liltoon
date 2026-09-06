import { describe, expect, it } from "vitest";
import { CubeTexture, Scene, Vector4 } from "three";
import { LilToonEnvironmentAdapter } from "../../src/renderer/LilToonEnvironmentAdapter.js";

describe("LilToonEnvironmentAdapter", () => {
	it("marks a Three.js cube environment as a valid lilToon reflection probe", () => {
		const scene = new Scene();
		const environment = new CubeTexture();
		const hdr = new Vector4();
		scene.environment = environment;

		const bound = new LilToonEnvironmentAdapter().bind(scene, {
			unity_SpecCube0_HDR: hdr,
		});

		expect(bound).toBe(environment);
		expect(hdr.toArray()).toEqual([1, 1, 0, 0]);
	});

	it("invalidates the probe when the scene has no cube environment", () => {
		const hdr = new Vector4(1, 1, 0, 0);

		const bound = new LilToonEnvironmentAdapter().bind(new Scene(), {
			unity_SpecCube0_HDR: hdr,
		});

		expect(bound).toBeNull();
		expect(hdr.toArray()).toEqual([0, 1, 0, 0]);
	});

	it("does not overwrite the independent material cubemap decode", () => {
		const materialHdr = new Vector4(2, 2.2, 0, 1);
		const globals = {
			unity_SpecCube0_HDR: new Vector4(),
			_ReflectionCubeTex_HDR: materialHdr,
		};
		const adapter = new LilToonEnvironmentAdapter();
		const scene = new Scene();

		adapter.bind(scene, globals);
		expect(materialHdr.toArray()).toEqual([2, 2.2, 0, 1]);
		scene.environment = new CubeTexture();
		adapter.bind(scene, globals);
		expect(materialHdr.toArray()).toEqual([2, 2.2, 0, 1]);
	});
});
