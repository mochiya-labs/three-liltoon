import { expect, test } from "@playwright/test";
import path from "node:path";
test("material queues fix depth-writing transparency including same-mesh material groups", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	await page.goto("/");
	const r = await page.evaluate(
		async (url) => (await import(url)).verifyRenderQueues(),
		`/@fs/${path.resolve("test/integration/render-queue-fixture.ts")}`,
	);
	expect(errors).toEqual([]);
	expect(r.glError).toBe(0);
	expect(r.loadedQueue).toBe(2450);
	expect(r.original.order).toEqual([3000, 2450]);
	expect(r.original.pixel[2]).toBe(0);
	expect(r.corrected.order).toEqual([2450, 3000]);
	expect(r.corrected.pixel[2]).toBeGreaterThan(150);
	expect(r.corrected.pixel[0]).toBeGreaterThan(40);
	expect(r.changed.order).toEqual([2400, 2450]);
	expect(r.changed.pixel[2]).toBe(0);
	expect(r.mixed.pixel[1]).toBeGreaterThan(150);
	expect(r.passes.order).toEqual([2450, 3000]);
	expect(r.passes.pixel[2]).toBeGreaterThan(100);
	expect(r.restored.order).toEqual([3000, 2450]);
	expect(r.restored.pixel[2]).toBe(0);
});

for (const file of ["queues-glb.glb", "queues-vrm.vrm", "queues-default.glb"]) {
	test(`Unity export queue round trip: ${file}`, async ({ page }) => {
		test.skip(
			!process.env.MOCHIYA_QUEUE_FIXTURES,
			"Run Unity queue export tests and set MOCHIYA_QUEUE_FIXTURES",
		);
		const { readFile } = await import("node:fs/promises");
		await page.route("**/queue-fixture", async (route) =>
			route.fulfill({
				contentType: "model/gltf-binary",
				body: await readFile(
					path.join(process.env.MOCHIYA_QUEUE_FIXTURES!, file),
				),
			}),
		);
		await page.goto("/");
		const values = await page.evaluate(
			async (url) => (await import(url)).loadQueueFixture("/queue-fixture"),
			`/@fs/${path.resolve("test/integration/render-queue-fixture.ts")}`,
		);
		expect(
			values.find((m: { name: string }) => m.name === "QueueInner"),
		).toMatchObject({
			queue: file.includes("default") ? 2460 : 2450,
			transparent: true,
			depthWrite: true,
		});
		expect(
			values.find((m: { name: string }) => m.name === "QueueOuter"),
		).toMatchObject({
			queue: file.includes("default") ? 2460 : 3000,
			transparent: true,
			depthWrite: true,
		});
	});
}
