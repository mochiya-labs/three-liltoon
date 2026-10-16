import { describe, expect, it } from "vitest";
import {
	ACESFilmicToneMapping,
	NeutralToneMapping,
	NoToneMapping,
	SRGBColorSpace,
	WebGLRenderTarget,
	type WebGLRenderer,
} from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { updateOutputTransform } from "../../src/renderer/outputTransform.js";
import { syncPassMaterial } from "../../src/renderer/AuxiliaryPassDraw.js";

describe("raw material output contract", () => {
	it("follows per-draw renderer, target, exposure and toneMapped state without rebuilding", () => {
		const material = new LilToonMaterial();
		let target: WebGLRenderTarget | null = null;
		const renderer = {
			getRenderTarget: () => target,
			outputColorSpace: SRGBColorSpace,
			toneMapping: NeutralToneMapping,
			toneMappingExposure: 2,
		} as WebGLRenderer;
		const version = material.version;
		updateOutputTransform(material, renderer, false);
		expect(material.uniforms.uLilToonToneMapping!.value).toBe(
			NeutralToneMapping,
		);
		expect(material.uniforms.toneMappingExposure!.value).toBe(2);
		expect(material.uniforms.uLilToonOutputSrgb!.value).toBe(1);
		target = new WebGLRenderTarget();
		target.texture.colorSpace = SRGBColorSpace;
		updateOutputTransform(material, renderer, true);
		expect(material.uniforms.uLilToonToneMapping!.value).toBe(NoToneMapping);
		expect(material.uniforms.uLilToonOutputSrgb!.value).toBe(0);
		target.dispose();
		target = null;
		renderer.toneMapping = ACESFilmicToneMapping;
		renderer.toneMappingExposure = 0.4;
		updateOutputTransform(material, renderer, false);
		expect(material.uniforms.uLilToonToneMapping!.value).toBe(
			ACESFilmicToneMapping,
		);
		expect(material.uniforms.toneMappingExposure!.value).toBe(0.4);
		material.toneMapped = false;
		updateOutputTransform(material, renderer, false);
		expect(material.uniforms.uLilToonToneMapping!.value).toBe(NoToneMapping);
		expect(material.version).toBe(version);
		material.dispose();
	});
	it("keeps clone uniforms independent and toneMapped on auxiliary materials", () => {
		const source = new LilToonMaterial();
		source.toneMapped = false;
		const clone = source.clone();
		expect(clone.toneMapped).toBe(false);
		expect(clone.uniforms.toneMappingExposure).not.toBe(
			source.uniforms.toneMappingExposure,
		);
		const outline = new LilToonMaterial({ pass: "outline" });
		syncPassMaterial(source, outline);
		expect(outline.toneMapped).toBe(false);
		for (const m of [source, clone, outline]) m.dispose();
	});
});
