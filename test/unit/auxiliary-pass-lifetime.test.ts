import { describe, expect, it, vi } from "vitest";
import {
	Mesh,
	Scene,
	PlaneGeometry,
	PerspectiveCamera,
	Vector4,
	Vector2,
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
				transparencyMode:
					pass === "refraction-blur-pre" ? "normal" : "two-pass",
			});
			const scene = new Scene(),
				mesh = new Mesh(new PlaneGeometry(), source),
				camera = new PerspectiveCamera();
			scene.add(mesh);
			const draws = new AuxiliaryPassDraw();
			const renderer = {
				autoClear: true,
				info: { autoReset: true, render: { frame: 0 } },
				getContext: () => ({ getParameter: () => 32 }),
				getRenderTarget: () => null,
				getDrawingBufferSize: (v: Vector2) => v.set(32, 32),
				shadowMap: { autoUpdate: true, needsUpdate: false },
				getViewport: (v: Vector4) => v.set(0, 0, 32, 32),
				getScissor: (v: Vector4) => v.set(0, 0, 32, 32),
				getScissorTest: () => false,
				setViewport: vi.fn(),
				setScissor: vi.fn(),
				setScissorTest: vi.fn(),
			} as unknown as WebGLRenderer;
			let auxiliary: Mesh | undefined;
			let fail = false;
			mesh.geometry.setDrawRange(1, 4);
			renderer.render = vi.fn(() => {
				throw new Error("unexpected nested render");
			});
			renderer.renderBufferDirect = (
				_camera,
				_scene,
				geometry,
				_material,
				object,
				group,
			) => {
				auxiliary = object as Mesh;
				expect(geometry).toBe(mesh.geometry);
				expect(geometry.drawRange).toEqual({ start: 1, count: 4 });
				expect(group).toEqual({ start: 2, count: 4 });
				expect(auxiliary.matrixWorld.equals(mesh.matrixWorld)).toBe(true);
				if (fail) throw new Error("draw failed");
			};
			const draw = () => {
				draws.begin();
				draws.draw(renderer, mesh, source, pass, scene, camera, {
					start: 2,
					count: 4,
				});
				draws.end();
				expect(mesh.geometry.drawRange).toEqual({ start: 1, count: 4 });
			};
			draw();
			expect(renderer.render).not.toHaveBeenCalled();
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
			expect(geometryDisposed).not.toHaveBeenCalled();
			expect(first.geometry).toBe(mesh.geometry);
			expect(mesh.geometry.attributes.position.count).toBe(4);
			mesh.material.dispose();
			mesh.material = source;
			fail = true;
			expect(draw).toThrow("draw failed");
			expect(mesh.geometry.drawRange).toEqual({ start: 1, count: 4 });
			draws.end();
			draws.dispose();
			source.dispose();
			mesh.material.dispose();
			mesh.geometry.dispose();
			expect(disposed).toHaveBeenCalledOnce();
		},
	);
});
