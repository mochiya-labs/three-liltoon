import { describe, expect, it } from "vitest";
import {
	BackSide,
	DoubleSide,
	FrontSide,
	LessEqualDepth,
	OneMinusSrcAlphaFactor,
	SrcAlphaFactor,
} from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";

describe("Unity render-state conversion", () => {
	it.each([
		[0, DoubleSide],
		[1, BackSide],
		[2, FrontSide],
	])("maps Unity cull %s", (unityCull, side) => {
		const material = new LilToonMaterial({ properties: { _Cull: unityCull } });
		expect(material.side).toBe(side);
	});

	it("maps transparent blending and depth state", () => {
		const material = new LilToonMaterial({ renderMode: "transparent" });
		expect(material.transparent).toBe(true);
		expect(material.depthWrite).toBe(false);
		expect(material.depthFunc).toBe(LessEqualDepth);
		expect(material.blendSrc).toBe(SrcAlphaFactor);
		expect(material.blendDst).toBe(OneMinusSrcAlphaFactor);
	});
});
