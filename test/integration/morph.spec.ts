import { expect, test } from "@playwright/test";
import path from "node:path";

test("high-index and 526 active GPU morphs match baked Three.js geometry, skinning and outlines", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (error) => errors.push(error.message));
	page.on("console", (message) => {
		if (message.type() === "error") errors.push(message.text());
	});
	await page.goto("/");
	const fixture =
		"/@fs/" +
		path.resolve("test/integration/morph-fixture.ts").replaceAll("\\", "/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyMorphRendering(),
		fixture,
	);
	for (const [name, metric] of Object.entries(result.checks) as [
		string,
		{ mean: number; changed: number },
	][]) {
		if (name.startsWith("reset/"))
			expect(metric.changed, name).toBeGreaterThan(100);
		else expect(metric.mean, name).toBeLessThan(0.15);
	}
	expect(result.glError).toBe(0);
	expect(errors).toEqual([]);
});

test("reuses Three.js GPU morph textures and uniforms across materials and releases them with geometry", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (error) => errors.push(error.message));
	page.on("console", (message) => {
		if (message.type() === "error") errors.push(message.text());
	});
	await page.goto("/");
	const fixture =
		"/@fs/" +
		path.resolve("test/integration/morph-fixture.ts").replaceAll("\\", "/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyThreeMorphOwnership(),
		fixture,
	);
	console.log(JSON.stringify(result));
	for (const capture of result.captures) {
		expect(capture.sharedTexture, String(capture.count)).toBe(true);
		expect(capture.weight).toBeCloseTo(0.75);
		expect(capture.disposed).toBe(true);
	}
	expect(result.staticReset).toBe(true);
	expect(result.glError).toBe(0);
	expect(errors).toEqual([]);
});
