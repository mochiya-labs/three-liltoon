import { expect, test } from "@playwright/test";

test("applies both emission masks with RGBA, UV animation, and neutral fallback", async ({
	page,
}) => {
	const errors: string[] = [];
	page.on("pageerror", (error) => errors.push(error.message));
	page.on("console", (message) => {
		if (message.type() === "error") errors.push(message.text());
	});
	await page.goto("/emission-mask.html");
	await expect(page.locator("html")).toHaveAttribute(
		"data-render-status",
		"ok",
		{ timeout: 30_000 },
	);
	const result = JSON.parse(await page.getByRole("status").innerText());
	expect(result.count).toBe(36);
	expect(result.glError).toBe(0);
	expect(result.failed).toEqual([]);
	expect(errors).toEqual([]);
});
