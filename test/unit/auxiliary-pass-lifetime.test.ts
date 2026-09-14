import { describe, expect, it, vi } from "vitest";
import {
	Mesh,
	Scene,
	PlaneGeometry,
	PerspectiveCamera,
	Vector4,
	type WebGLRenderer,
} from "three";
import { AuxiliaryPassDraw } from "../../src/renderer/AuxiliaryPassDraw.js";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";

describe("auxiliary pass lifetime", () => {
	it.each(["transparent-pre", "outline", "refraction-blur-pre"] as const)(
		"keeps %s across no-draw passes and releases replaced sources",
		(pass) => {
			const source = new LilToonMaterial({
				renderMode:
					pass === "refraction-blur-pre" ? "refraction-blur" : "transparent",
				transparencyMode: "two-pass",
			});
			const scene = new Scene(),
				mesh = new Mesh(new PlaneGeometry(), source),
				camera = new PerspectiveCamera();
			scene.add(mesh);
			const draws = new AuxiliaryPassDraw();
			const renderer = {
				autoClear: true,
				info: { autoReset: true },
				shadowMap: { autoUpdate: true, needsUpdate: false },
				getViewport: (v: Vector4) => v.set(0, 0, 32, 32),
				getScissor: (v: Vector4) => v.set(0, 0, 32, 32),
				getScissorTest: () => false,
				setViewport: vi.fn(),
				setScissor: vi.fn(),
				setScissorTest: vi.fn(),
			} as unknown as WebGLRenderer;
			let auxiliary: Mesh | undefined;
			const render: WebGLRenderer["render"] = (current) => {
				auxiliary = current.children[0] as Mesh;
			};
			const draw = () => {
				draws.begin();
				draws.draw(renderer, render, mesh, source, pass, scene, camera, null);
				draws.end();
			};
			draw();
			const first = auxiliary!,
				material = first.material as LilToonMaterial;
			const disposed = vi.spyOn(material, "dispose"),
				geometryDisposed = vi.spyOn(first.geometry, "dispose");
			mesh.visible = false;
			for (let i = 0; i < 3; i++) {
				draws.begin();
				draws.end();
			}
			expect(disposed).not.toHaveBeenCalled();
			mesh.visible = true;
			draw();
			expect(auxiliary).toBe(first);
			mesh.material = new LilToonMaterial();
			draws.begin();
			draws.end();
			expect(disposed).toHaveBeenCalledOnce();
			expect(geometryDisposed).toHaveBeenCalledOnce();
			expect(mesh.geometry.attributes.position.count).toBe(4);
			draws.dispose();
			source.dispose();
			mesh.material.dispose();
			mesh.geometry.dispose();
			expect(disposed).toHaveBeenCalledOnce();
		},
	);
});
