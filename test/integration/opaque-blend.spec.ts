import { expect, test } from "@playwright/test";
import path from "node:path";

test("ordinary shaders honor authored blending without transparent classification", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (error) => errors.push(error.message));
	await page.goto("/");
	const fixture = `/@fs/${path.resolve("test/integration/opaque-blend-fixture.ts")}`;
	const result = await page.evaluate(
		async (url) => (await import(url)).verifyOpaqueBlend(),
		fixture,
	);
	expect(
		Object.entries(result.checks).filter(([, pass]) => !pass),
		JSON.stringify(result),
	).toEqual([]);
	expect(errors).toEqual([]);
});
