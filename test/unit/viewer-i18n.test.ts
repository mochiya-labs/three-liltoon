import { describe, expect, it } from "vitest";
import { messages } from "../../examples/mochiya-liltoon-viewer/src/lib/i18n.js";

describe("diagnostic viewer localization", () => {
	it("keeps English and Japanese interface dictionaries complete", () => {
		expect(Object.keys(messages.ja).sort()).toEqual(
			Object.keys(messages.en).sort(),
		);
		expect(messages.ja.viewerTitle).toContain("モデルビューアー");
		expect(messages.ja.openModel).not.toBe(messages.en.openModel);
	});
});
