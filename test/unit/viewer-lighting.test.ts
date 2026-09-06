import { readFileSync } from "node:fs";
import { DirectionalLight, PerspectiveCamera, Scene, Vector3 } from "three";
import { describe, expect, it } from "vitest";
import { LilToonLightAdapter } from "../../src/renderer/LilToonLightAdapter.js";

const source = readFileSync(
	new URL(
		"../../examples/mochiya-liltoon-viewer/src/components/viewer/viewer-lighting.tsx",
		import.meta.url,
	),
	"utf8",
);
const lightElement = source.match(/<directionalLight\b[\s\S]*?\/>/)?.[0] ?? "";

describe("viewer fixed lighting", () => {
	it("declares a fixed position without camera hooks or a moving target", () => {
		const position = lightElement
			.match(/position=\{\[([^\]]+)\]\}/)?.[1]
			.split(",")
			.map(Number);
		expect(position).toHaveLength(3);
		expect(position?.every(Number.isFinite)).toBe(true);
		expect(lightElement).not.toMatch(/\b(?:ref|target)=/);
		expect(source).not.toMatch(/\b(?:useFrame|useThree|updateCameraLight)\b/);
	});

	it("keeps the lilToon light direction and shadow view fixed during camera movement", () => {
		const scene = new Scene();
		const light = new DirectionalLight();
		// Read the declared viewer position so this check exercises its actual setup.
		const position = lightElement
			.match(/position=\{\[([^\]]+)\]\}/)![1]
			.split(",")
			.map(Number);
		light.position.fromArray(position);
		const camera = new PerspectiveCamera();
		scene.add(light, camera);
		scene.updateMatrixWorld(true);
		light.shadow.updateMatrices(light);
		const shadowMatrix = light.shadow.matrix.clone();
		const adapter = new LilToonLightAdapter();
		const direction = adapter.read(scene).direction.clone();

		for (const cameraPosition of [
			[0, 2, 3],
			[3, 2, 0],
			[0, 2, -3],
			[-3, 2, 0],
			[12, 7, 25],
		]) {
			camera.position.fromArray(cameraPosition);
			camera.lookAt(2, 1, 0);
			camera.rotateZ(0.3);
			scene.updateMatrixWorld(true);
			light.shadow.updateMatrices(light);
			expect(light.getWorldPosition(new Vector3()).toArray()).toEqual(position);
			expect(light.target.getWorldPosition(new Vector3()).toArray()).toEqual([
				0, 0, 0,
			]);
			expect(adapter.read(scene).direction.distanceTo(direction)).toBeLessThan(
				1e-8,
			);
			expect(light.shadow.matrix.equals(shadowMatrix)).toBe(true);
		}
	});
});
