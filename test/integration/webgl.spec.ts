import { expect, test } from "@playwright/test";
import { PNG } from "pngjs";

test("links and renders the shipped avatar shader paths without browser errors", async ({
	page,
}) => {
	const browserErrors: string[] = [];
	page.on("console", (message) => {
		if (message.type() === "error") browserErrors.push(message.text());
	});
	page.on("pageerror", (error) => browserErrors.push(error.message));

	await page.goto("/");
	await expect(page.locator("html")).toHaveAttribute(
		"data-render-status",
		"ok",
		{ timeout: 30_000 },
	);
	await expect(page.getByRole("status")).toContainText(
		"static + morph + skin + outline",
	);
	await expect(page.locator(".vite-error-overlay")).toHaveCount(0);

	const screenshot = PNG.sync.read(await page.screenshot());
	const colors = new Set<string>();
	for (let index = 0; index < screenshot.data.length; index += 4 * 97) {
		colors.add(
			`${screenshot.data[index]},${screenshot.data[index + 1]},${screenshot.data[index + 2]}`,
		);
	}
	expect(colors.size).toBeGreaterThan(20);
	expect(browserErrors).toEqual([]);
});
