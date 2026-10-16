import { expect, test } from "@playwright/test";
import path from "node:path";

test("raw lilToon output follows standard Three tone mapping, alpha and target behavior", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (e) => errors.push(e.message));
	page.on("console", (m) => {
		if (m.type() === "error") errors.push(m.text());
	});
	await page.goto("/");
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyOutputTransform(),
		`/@fs/${path.resolve("test/integration/output-transform-fixture.ts").replaceAll("\\", "/")}`,
	);
	expect(errors).toEqual([]);
	expect(
		Object.entries(result.checks).filter(([, ok]) => !ok),
		JSON.stringify(result),
	).toEqual([]);
	expect(result.glError).toBe(0);
});
