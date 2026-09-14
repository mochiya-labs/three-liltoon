import { expect, test } from "@playwright/test";
import path from "node:path";
const fixture = `/@fs/${path.resolve("test/integration/specialization-fixture.ts").replaceAll("\\", "/")}`;
test("renders combined masks, emission, rim, reflection and alpha after runtime edits", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifySpecializationRendering(),
		fixture,
	);
	expect(
		Object.entries(result.checks).filter(([, pass]) => !pass),
		JSON.stringify(result.details),
	).toEqual([]);
	expect(result.glError).toBe(0);
	expect(errors).toEqual([]);
});
test("renders sixteen fragment textures alongside bone and morph vertex textures", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyTextureCapacity(),
		fixture,
	);
	console.log(JSON.stringify(result));
	expect(result.fragment).toBe(16);
	expect(result.activeSamplers.length).toBeGreaterThan(16);
	expect(result.pixel[3]).toBe(255);
	expect(result.glError).toBe(0);
	expect(errors).toEqual([]);
});
