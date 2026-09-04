import { expect, test } from "@playwright/test";

test("preserves masked MatCap pixels with reflection enabled and no cubemap", async ({ page }) => {
  const errors: string[] = [];
  page.on("pageerror", error => errors.push(error.message));
  page.on("console", message => {
    if (message.type() === "error") errors.push(message.text());
  });

  await page.goto("/reflection-matcap.html");
  await expect(page.locator("html")).toHaveAttribute("data-render-status", "ok", { timeout: 30_000 });
  const result = JSON.parse(await page.getByRole("status").innerText());
  expect(result.glError).toBe(0);
  expect(result.samples).toHaveLength(8);
  for (const sample of result.samples) {
    expect(sample.hdr).toEqual([1, 1, 0, 0]);
    expect(sample.maskVisible).toBe(true);
    expect(sample.unchanged).toBe(true);
  }
  expect(errors).toEqual([]);
});
