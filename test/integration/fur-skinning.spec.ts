import { test, expect } from "@playwright/test";
import path from "node:path";
test("GPU fur skinning matches a baked four-bone morph reference", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const results = await page.evaluate(
		async (url) => {
			const m = await import(url);
			return [...m.verifyFurSkinning(), ...m.verifyFurSkinning(true)];
		},
		"/@fs/" +
			path
				.resolve("test/integration/fur-skinning-fixture.ts")
				.replaceAll("\\", "/"),
	);
	console.log(JSON.stringify(results));
	expect(errors).toEqual([]);
	for (const r of results) {
		expect(r.error).toBe(0);
		expect(r.changed).toBeGreaterThan(10);
		expect(r.repeatDifference).toBe(0);
		expect(r.referenceDifference).toBe(0);
		expect(r.stable).toBe(true);
		expect(r.stableVersions).toBe(true);
		expect(r.distinctPasses).toBe(r.mode === "fur-two-pass" ? 2 : 1);
		expect(r.disposedPasses).toBe(r.distinctPasses);
	}
});
