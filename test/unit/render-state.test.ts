import { describe, expect, it } from "vitest";
import {
	BackSide,
	CustomBlending,
	ZeroFactor,
	DoubleSide,
	FrontSide,
	LessEqualDepth,
	OneMinusSrcAlphaFactor,
	OneFactor,
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

	it("preserves authored blending without changing ordinary shader selection or queue", () => {
		const material = new LilToonMaterial({
			shaderVariant: "lilToon",
			renderQueue: 2000,
			properties: {
				_TransparentMode: 2,
				_SrcBlend: 1,
				_DstBlend: 10,
				_SrcBlendAlpha: 1,
				_DstBlendAlpha: 10,
				_Cull: 0,
				_ZWrite: 1,
			},
		});
		expect(material.transparent).toBe(false);
		expect(material.shaderVariant).toBe("lilToon");
		expect(material.renderQueue).toBe(2000);
		expect(material.blending).toBe(CustomBlending);
		expect(material.blendSrc).toBe(OneFactor);
		expect(material.blendDst).toBe(OneMinusSrcAlphaFactor);
		expect(material.blendSrcAlpha).toBe(OneFactor);
		expect(material.blendDstAlpha).toBe(OneMinusSrcAlphaFactor);
		expect(material.side).toBe(DoubleSide);
		expect(material.depthWrite).toBe(true);
		material.setProperty("_DstBlend", 0);
		expect(material.blendDst).toBe(ZeroFactor);
		material.dispose();
	});

	it("maps transparent blending and depth state", () => {
		const material = new LilToonMaterial({ renderMode: "transparent" });
		expect(material.transparent).toBe(true);
		expect(material.depthWrite).toBe(true);
		expect(material.depthFunc).toBe(LessEqualDepth);
		expect(material.blendSrc).toBe(OneFactor);
		expect(material.blendDst).toBe(OneMinusSrcAlphaFactor);
	});
});
