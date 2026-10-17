import { test, expect } from "@playwright/test";
import path from "node:path";

test("direct scene capture preserves formats, state, snapshots and resource lifetime", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifySceneCapture(),
		`/@fs/${path.resolve("test/integration/scene-capture-fixture.ts")}`,
	);
	console.log(JSON.stringify(result));
	expect(errors).toEqual([]);
	for (const row of result.rows) {
		expect(row.restored).toBe(true);
		for (const key of [
			"difference",
			"nextDifference",
			"nestedDifference",
			"preservedDifference",
			"error",
		])
			expect(row[key]).toBe(0);
		expect(row.movingDifference).toBeGreaterThan(0);
	}
	expect(result.size).toEqual([24, 32]);
	expect(result.contextDifference).toBe(0);
	expect(result.canvasDifference).toBe(0);
	expect(result.error).toBe(0);
	for (const error of Object.values(result.checkpoints)) expect(error).toBe(0);
	expect(result.remaining).toEqual({ geometries: 0, textures: 0 });
});
