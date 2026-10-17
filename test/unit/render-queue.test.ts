import { describe, expect, it, vi } from "vitest";
import {
	MeshBasicMaterial,
	PerspectiveCamera,
	Scene,
	type Material,
	type WebGLRenderer,
} from "three";
import {
	LilToonMaterial,
	LilToonMaterialFactory,
	enableLilToon,
	compareLilToonRenderQueue,
} from "../../src/index.js";
import { installMaterialRenderQueue } from "../../src/renderer/materialRenderQueue.js";
import { syncPassMaterial } from "../../src/renderer/syncPassMaterial.js";

const item = (material: Material, z: number, id = 1) => ({
	material,
	z,
	id,
	groupOrder: 0,
	renderOrder: 0,
});
function renderer() {
	return {
		setOpaqueSort: vi.fn(),
		setTransparentSort: vi.fn(),
		render: vi.fn(),
		dispose: vi.fn(),
	} as unknown as WebGLRenderer;
}
describe("authored render queues", () => {
	it("preserves queue through clone, copy and standalone serialization without changing depth/blend state", () => {
		const source = new LilToonMaterial({
			renderMode: "transparent",
			renderQueue: 2450,
			properties: { _ZWrite: 1 },
		});
		const clone = source.clone(),
			copy = new LilToonMaterial().copy(source);
		const restored = new LilToonMaterialFactory().create(
			source.toLilToonJSON(),
		);
		for (const m of [source, clone, copy, restored]) {
			expect(m.renderQueue).toBe(2450);
			expect(m.transparent).toBe(true);
			expect(m.depthWrite).toBe(true);
		}
		const version = source.version;
		source.renderQueue = 3000;
		expect(source.version).toBe(version);
		expect(clone.renderQueue).toBe(2450);
		source.renderQueue = undefined;
		expect(source.renderQueue).toBeUndefined();
		for (const m of [source, clone, copy, restored]) m.dispose();
	});
	it.each([-1, 5001, 1.5, NaN, Infinity])(
		"rejects invalid queue %s",
		(value) => {
			const m = new LilToonMaterial();
			expect(() => {
				m.renderQueue = value;
			}).toThrow(RangeError);
			m.dispose();
		},
	);
	it("sorts inner transparent geometry before outer geometry regardless of depth, respecting host priority", () => {
		const r = renderer();
		const lease = installMaterialRenderQueue(r);
		const sort = vi.mocked(r.setTransparentSort).mock.calls[0][0]!;
		const inner = new LilToonMaterial({
				renderMode: "transparent",
				renderQueue: 2450,
			}),
			outer = new LilToonMaterial({
				renderMode: "transparent",
				renderQueue: 3000,
			});
		for (const z of [-1, 0, 1])
			expect(sort(item(inner, z), item(outer, -z))).toBeLessThan(0);
		expect(
			sort({ ...item(inner, 0), renderOrder: 1 }, item(outer, 0)),
		).toBeGreaterThan(0);
		expect(
			sort({ ...item(inner, 0), groupOrder: 1 }, item(outer, 0)),
		).toBeGreaterThan(0);
		outer.renderQueue = 2400;
		expect(sort(item(inner, 0), item(outer, 0))).toBeGreaterThan(0);
		lease.dispose();
		expect(r.setTransparentSort).toHaveBeenLastCalledWith(null);
		expect(r.setOpaqueSort).toHaveBeenLastCalledWith(null);
		inner.dispose();
		outer.dispose();
	});
	it("keeps native sorting for legacy/mixed materials and equal queues", () => {
		const r = renderer();
		const lease = installMaterialRenderQueue(r);
		const transparent = vi.mocked(r.setTransparentSort).mock.calls[0][0]!;
		const opaque = vi.mocked(r.setOpaqueSort).mock.calls[0][0]!;
		const old = new LilToonMaterial(),
			standard = new MeshBasicMaterial();
		expect(transparent(item(old, 1), item(standard, 0))).toBeLessThan(0);
		expect(transparent(item(old, 0, 2), item(standard, 0, 1))).toBeGreaterThan(
			0,
		);
		expect(opaque(item(old, 1), item(standard, 0))).toBeLessThan(0);
		expect(
			opaque(
				{ ...item(old, 0), materialVariant: 0 },
				{ ...item(old, 0), materialVariant: 1 },
			),
		).toBeLessThan(0);
		expect(compareLilToonRenderQueue(old, standard, 3000)).toBe(0);
		lease.dispose();
		old.dispose();
		standard.dispose();
	});
	it("keeps sorting opt-in and shares ownership until the final lease", () => {
		const r = renderer(),
			original = r.render;
		const plain = enableLilToon(r);
		expect(r.setTransparentSort).not.toHaveBeenCalled();
		expect(() => enableLilToon(r, { materialRenderQueue: true })).toThrow(
			/agree/,
		);
		plain();
		const a = enableLilToon(r, { materialRenderQueue: true }),
			b = enableLilToon(r);
		expect(r.setTransparentSort).toHaveBeenCalledTimes(1);
		a();
		a();
		expect(r.setTransparentSort).toHaveBeenCalledTimes(1);
		b();
		expect(r.setTransparentSort).toHaveBeenLastCalledWith(null);
		expect(r.render).toBe(original);
		const c = enableLilToon(r, { materialRenderQueue: true });
		r.dispose();
		c();
		expect(r.setTransparentSort).toHaveBeenCalledTimes(4);
	});
	it("restores rendering hooks after errors and allows reinstall", () => {
		const r = renderer();
		vi.mocked(r.render).mockImplementation(() => {
			throw new Error("draw");
		});
		const s = new Scene(),
			before = s.onBeforeRender,
			release = enableLilToon(r, { materialRenderQueue: true });
		expect(() => r.render(s, new PerspectiveCamera())).toThrow("draw");
		expect(s.onBeforeRender).toBe(before);
		release();
	});
	it("propagates dynamic queues into auxiliary materials", () => {
		const source = new LilToonMaterial({
			renderMode: "transparent",
			renderQueue: 2450,
		});
		const pass = new LilToonMaterial({
			renderMode: "transparent",
			pass: "transparent-pre",
		});
		syncPassMaterial(source, pass);
		expect(pass.renderQueue).toBe(2450);
		source.renderQueue = 3000;
		syncPassMaterial(source, pass);
		expect(pass.renderQueue).toBe(3000);
		source.dispose();
		pass.dispose();
	});
});
