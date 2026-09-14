import { test, expect } from "@playwright/test";
import path from "node:path";
test("Unity transparency sequences retain pass state, morphs, groups and outline masks", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyTransparency(),
		`/@fs/${path.resolve("test/integration/transparency-fixture.ts").replaceAll("\\", "/")}`,
	);
	console.log(JSON.stringify({ result, errors }));
	expect(errors).toEqual([]);
	expect(result.normal.map((c: any) => c.pass)).toEqual(["forward", "outline"]);
	expect(result["one-pass"].map((c: any) => c.pass)).toEqual([
		"forward",
		"outline",
	]);
	expect(result["two-pass"].map((c: any) => c.pass)).toEqual([
		"transparent-pre",
		"forward",
		"outline",
	]);
	expect(result["two-pass"].map((c: any) => c.side)).toEqual([1, 2, 1]);
	expect(result["two-pass"].every((c: any) => c.depth === false)).toBe(true);
	expect(result["two-pass"][2].key).toContain("outline-transparent:");
	expect(result.normalOneDifference).toBe(0);
	expect(result.twoDifference).toBeGreaterThan(10);
	expect(result.morphDifference).toBeGreaterThan(10);
	expect(result.morphReset).toBe(0);
	expect(result.groups).toEqual([
		"transparent-pre",
		"forward",
		"outline",
		"transparent-pre",
		"forward",
		"outline",
	]);
	expect(result.maskDifference).toBe(0);
	expect(result.restored).toBe(true);
	expect(result.glError).toBe(0);
	expect(result.remainingTextures).toBe(0);
});
