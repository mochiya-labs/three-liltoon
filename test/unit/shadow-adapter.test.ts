import {
	DataTexture,
	DirectionalLight,
	Matrix4,
	Scene,
	Vector4,
	WebGLRenderTarget,
	type Texture,
	type WebGLRenderer,
} from "three";
import { describe, expect, it } from "vitest";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { rendererContext } from "../../src/renderer/rendererContext.js";
import { LilToonShadowAdapter } from "../../src/renderer/LilToonShadowAdapter.js";
import type { LilToonGlobalUniforms } from "../../src/renderer/LilToonUniformBinder.js";

function shadowGlobals(): LilToonGlobalUniforms {
	return {
		uMainShadowMatrix: new Matrix4(),
		uShadowMapSize: new Vector4(),
		uShadowBias: 0,
		uShadowNormalBias: 0,
	};
}

function expectNeutral(
	texture: Texture | null,
	globals: LilToonGlobalUniforms,
): void {
	expect(texture).toBeInstanceOf(DataTexture);
	const image = (texture as DataTexture).image;
	expect([image.width, image.height]).toEqual([1, 1]);
	expect(Array.from(image.data ?? [])).toEqual([255, 255, 255, 255]);
	expect((globals.uMainShadowMatrix as Matrix4).equals(new Matrix4())).toBe(
		true,
	);
	expect((globals.uShadowMapSize as Vector4).toArray()).toEqual([1, 1, 1, 1]);
	expect(globals.uShadowBias).toBe(0);
	expect(globals.uShadowNormalBias).toBe(0);

	// Mirror lil_web_shadow.hlsl's unpack/comparison, including the previously
	// broken x=0 and y=1 boundaries. Every PCF tap reads this constant texture.
	const rgba = Array.from(image.data ?? [], (byte) => Number(byte) / 255);
	const depth =
		(rgba[0] * 255) / 256 +
		(rgba[1] * 255) / 65536 +
		(rgba[2] * 255) / 16777216 +
		rgba[3] / 16777216;
	const matrix = (globals.uMainShadowMatrix as Matrix4).clone().transpose();
	for (const x of [-2, -0.1, 0, 0.1, 1, 2]) {
		for (const y of [-1, 0.8, 1, 1.2]) {
			for (const z of [-1, 0, 0.1, 1, 2]) {
				const p = new Vector4(x, y, z, 1).applyMatrix4(matrix);
				const outside = p.x < 0 || p.x > 1 || p.y < 0 || p.y > 1 || p.z > 1;
				expect(outside ? 1 : Number(p.z <= depth)).toBe(1);
			}
		}
	}
}

function castingLight(): DirectionalLight {
	const light = new DirectionalLight();
	light.castShadow = true;
	light.shadow.map = new WebGLRenderTarget(64, 32);
	light.shadow.mapSize.set(64, 32);
	light.shadow.matrix.makeTranslation(0.2, 0.3, 0.4);
	light.shadow.bias = 0.02;
	light.shadow.normalBias = 0.03;
	return light;
}

function shadowTextures(material: LilToonMaterial): Texture[] {
	return Object.entries(material.uniforms)
		.filter(([name]) => name.includes("uMainShadowMap"))
		.map(([, uniform]) => uniform.value);
}

describe("directional shadow fallback", () => {
	it.each([
		"missing light",
		"casting disabled",
		"missing map",
		"renderer disabled",
	])("is unoccluded with %s and clears stale shadow state", (reason) => {
		const adapter = new LilToonShadowAdapter();
		const globals = shadowGlobals();
		const light = castingLight();
		const map = light.shadow.map!;
		adapter.bind(light, globals);
		if (reason === "casting disabled") light.castShadow = false;
		if (reason === "missing map") light.shadow.map = null;
		const binding = adapter.bind(
			reason === "missing light" ? undefined : light,
			globals,
			reason !== "renderer disabled",
		);
		expectNeutral(binding.texture, globals);
		map.dispose();
	});

	it("preserves live shadow matrices, dimensions and biases, and restores them after re-enabling", () => {
		const adapter = new LilToonShadowAdapter();
		const globals = shadowGlobals();
		const light = castingLight();
		const originalMatrix = light.shadow.matrix.clone();
		for (const enabled of [true, false, true]) {
			const binding = adapter.bind(light, globals, enabled);
			if (!enabled) {
				expectNeutral(binding.texture, globals);
				continue;
			}
			expect(binding.texture).toBe(light.shadow.map!.texture);
			expect(
				(globals.uMainShadowMatrix as Matrix4).equals(
					originalMatrix.clone().transpose(),
				),
			).toBe(true);
			expect((globals.uShadowMapSize as Vector4).toArray()).toEqual([
				64,
				32,
				1 / 64,
				1 / 32,
			]);
			expect(globals.uShadowBias).toBe(0.02);
			expect(globals.uShadowNormalBias).toBe(0.03);
			expect(light.shadow.matrix.equals(originalMatrix)).toBe(true);
		}
		light.shadow.map!.dispose();
	});

	it.each(["opaque", "cutout", "transparent", "outline"] as const)(
		"initializes and clears %s system shadow samplers with far depth",
		(variant) => {
			const material = new LilToonMaterial(
				variant === "outline" ? { pass: "outline" } : { renderMode: variant },
			);
			// Some outline profiles compile shadow receiving out entirely.
			const textures = shadowTextures(material);
			if (variant !== "outline") expect(textures.length).toBeGreaterThan(0);
			for (const texture of textures)
				expect(Array.from((texture as DataTexture).image.data ?? [])).toEqual([
					255, 255, 255, 255,
				]);
			const real = new DataTexture();
			material.setSystemTexture("__shadow", real);
			for (const texture of shadowTextures(material))
				expect(texture).toBe(real);
			material.setSystemTexture("__shadow", null);
			for (const texture of shadowTextures(material))
				expect(Array.from((texture as DataTexture).image.data ?? [])).toEqual([
					255, 255, 255, 255,
				]);
			const clone = material.clone();
			for (const texture of shadowTextures(clone))
				expect(Array.from((texture as DataTexture).image.data ?? [])).toEqual([
					255, 255, 255, 255,
				]);
			material.dispose();
			clone.dispose();
			real.dispose();
		},
	);

	it("honors renderer shadow toggles on successive draws without changing authored properties", () => {
		const renderer = {
			info: { render: { frame: 1 } },
			shadowMap: { enabled: true },
		} as WebGLRenderer;
		const context = rendererContext(renderer);
		const material = new LilToonMaterial({
			properties: { _UseShadow: 1, _ShadowBorder: 0.4 },
		});
		const light = castingLight();
		const scene = new Scene();
		scene.add(light);
		for (const enabled of [true, false, true]) {
			renderer.shadowMap.enabled = enabled;
			context.prepareMaterial(material, scene);
			if (enabled)
				expect(shadowTextures(material)[0]).toBe(light.shadow.map!.texture);
			else expectNeutral(shadowTextures(material)[0], material.globalUniforms);
			expect(material.getProperty("_UseShadow")).toBe(1);
			expect(material.getProperty("_ShadowBorder")).toBe(0.4);
		}
		light.castShadow = false;
		context.prepareMaterial(material, scene);
		expectNeutral(shadowTextures(material)[0], material.globalUniforms);
		light.shadow.map!.dispose();
		material.dispose();
	});
});
