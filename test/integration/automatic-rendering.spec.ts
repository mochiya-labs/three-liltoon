import { expect, test } from "@playwright/test";
import path from "node:path";

test("automatic material rendering works independently of loaders and avatar composition", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (error) => errors.push(error.message));
	page.on("console", (message) => {
		if (message.type() === "error") errors.push(message.text());
	});
	await page.goto("/");
	const fixture = `/@fs/${path.resolve("test/integration/automatic-rendering-fixture.ts").replaceAll("\\", "/")}`;
	const checks = await page.evaluate(
		async (url) => (await import(url)).verifyAutomaticRendering(),
		fixture,
	);
	expect(Object.keys(checks).length).toBeGreaterThan(10);
	expect(Object.entries(checks).filter(([, passed]) => !passed)).toEqual([]);
	expect(errors).toEqual([]);
});
