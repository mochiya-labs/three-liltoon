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
const canvasSource = readFileSync(
	new URL(
		"../../examples/mochiya-liltoon-viewer/src/components/viewer/model-canvas.tsx",
		import.meta.url,
	),
	"utf8",
);
const lightElement = source.match(/<directionalLight\b[\s\S]*?\/>/)?.[0] ?? "";

describe("viewer fixed lighting", () => {
	it("matches the Avatar Composition viewer scene baseline", () => {
		expect(source).toContain(
			'<hemisphereLight args={["#e0faff", "#fff0db", 0.5]} />',
		);
		expect(lightElement).toContain("position={[-0.5, 3, 2]}");
		expect(lightElement).toContain("intensity={1.75}");
		expect(lightElement).toContain("castShadow");
		expect(lightElement).toContain("shadow-mapSize={[2048, 2048]}");
		expect(lightElement).toContain("shadow-bias={-0.0001}");
		expect(canvasSource).toContain('props.dark ? "#23251f" : "#f3f4ed"');
		expect(canvasSource).toContain('props.dark ? "#42463a" : "#d6dbcd"');
		expect(canvasSource).toContain('props.dark ? "#5b604f" : "#b8c1aa"');
		expect(canvasSource).toContain(
			"camera={{ position: [0, 1.4, 5.5], fov: 26",
		);
		expect(canvasSource).toContain("<OrbitControls");
		expect(canvasSource).not.toContain("CameraControls");
	});

	it("uses controls with the target vector required by automatic bounds", () => {
		expect(canvasSource).toContain("<Bounds fit clip observe");
		expect(canvasSource).toContain("<OrbitControls makeDefault");
	});

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
