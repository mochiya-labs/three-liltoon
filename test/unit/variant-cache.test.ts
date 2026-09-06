import { describe, expect, it, vi } from "vitest";
import { ShaderVariantCache } from "../../src/shader/ShaderVariantCache.js";

describe("ShaderVariantCache", () => {
	it("creates each variant once", () => {
		const cache = new ShaderVariantCache<object>();
		const factory = vi.fn(() => ({}));
		expect(cache.getOrCreate("opaque", factory)).toBe(
			cache.getOrCreate("opaque", factory),
		);
		expect(factory).toHaveBeenCalledOnce();
		expect(cache.size).toBe(1);
	});
});
