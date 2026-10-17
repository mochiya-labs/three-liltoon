import { test, expect } from "@playwright/test";
import path from "node:path";
test("inline auxiliary passes preserve MSAA pixels and deformation with fewer resolves", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyInlinePasses(),
		`/@fs/${path.resolve("test/integration/inline-passes-fixture.ts")}`,
	);
	console.log(JSON.stringify(result));
	expect(errors).toEqual([]);
	for (const row of result.results) {
		expect(row.difference).toBe(0);
		expect(row.firstDifference).toBe(0);
		expect(row.separateReadDifference).toBe(0);
		expect(row.repeat).toBe(0);
		expect(row.error).toBe(0);
		expect(row.draws).toBe(row.oldDraws);
		expect(row.blits).toBeLessThan(row.oldBlits);
	}
	expect(result.contextDifference).toBe(0);
	for (const row of result.rebuilt)
		expect(row).toEqual({ difference: 0, repeat: 0, error: 0 });
	expect(result.contextError).toBe(0);
	expect(result.remaining.geometries).toBe(0);
	expect(result.remaining.textures).toBe(0);
});
