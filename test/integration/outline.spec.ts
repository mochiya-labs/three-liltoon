import { expect, test } from "@playwright/test";
import path from "node:path";

test("Unity outline variants retain static and skinned pixels across cached mixed draws", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyOutlinePixels(),
		`/@fs/${path.resolve("test/integration/outline-fixture.ts")}`,
	);
	expect(errors).toEqual([]);
	expect(result.gl).toBe(0);
	for (const key of [
		"stable",
		"vectorStable",
		"contextRestored",
		"retained",
		"multiIgnored",
		"disabled",
		"restored",
	])
		expect(result[key], JSON.stringify(result)).toBe(true);
});
