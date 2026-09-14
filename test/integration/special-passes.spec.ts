import { test, expect } from "@playwright/test";
import path from "node:path";
test("special rendering modes draw and respond to material edits", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifySpecialPasses(),
		`/@fs/${path.resolve("test/integration/special-passes-fixture.ts").replaceAll("\\", "/")}`,
	);
	console.log(JSON.stringify({ result, errors }));
	await page.screenshot({ path: ".tmp/special-modes.png" });
	expect(errors).toEqual([]);
	expect(result.offscreenError).toBe(0);
	expect(result.targetRestored).toBe(true);
	expect(result.zeroBlurDifference).toBe(0);
	expect(result["fur-two-pass"].sequence.map((d: any) => d.pass)).toEqual([
		"forward",
		"fur-pre",
		"fur",
	]);
	expect(result["fur-two-pass"].sequence[1]).toMatchObject({
		depth: true,
		coverage: true,
		src: 201,
		dst: 200,
	});
	expect(result["refraction-blur"].sequence.map((d: any) => d.pass)).toEqual([
		"refraction-blur-pre",
		"forward",
	]);
	expect(result.furMorphChanged).toBeGreaterThan(10);
	expect(result.furMorphReset).toBe(0);
	expect(result.furMorphError).toBe(0);
	for (const mode of [
		"refraction",
		"gem",
		"fur",
		"refraction-blur",
		"fur-cutout",
		"fur-two-pass",
	]) {
		expect(result[mode].changed).toBeGreaterThan(10);
		expect(result[mode].glError).toBe(0);
		expect(result[mode].restored).toBe(true);
		expect(result[mode].children).toBe(0);
	}
});
