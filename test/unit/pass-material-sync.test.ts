import { describe, expect, it } from "vitest";
import { BackSide, DataTexture, Vector4 } from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { syncPassMaterial } from "../../src/renderer/syncPassMaterial.js";

describe("pass material synchronization", () => {
	it("leaves unchanged programs and render state alone, but observes mutable values", () => {
		const source = new LilToonMaterial({
			shaderVariant: "Hidden/lilToonTwoPassTransparentOutline",
			properties: { _MainTex_ST: [1, 1, 0, 0] },
		});
		const target = new LilToonMaterial({
			shaderVariant: source.shaderVariant,
			pass: "transparent-pre",
			properties: source.lilToonProperties,
		});
		syncPassMaterial(source, target);
		const version = target.version;
		for (let i = 0; i < 3; i++) syncPassMaterial(source, target);
		expect(target.version).toBe(version);
		(source.lilToonProperties._MainTex_ST as number[])[2] = 0.25;
		source.lilToonProperties._OutlineColor = new Vector4(1, 0.5, 0, 1);
		source.color.setRGB(0.3, 0.4, 0.5);
		syncPassMaterial(source, target);
		expect(target.color.toArray()).toEqual(source.color.toArray());
		expect((target.globalUniforms._MainTex_ST as Vector4).z).toBe(0.25);
		expect(target.getProperty("_OutlineColor")).not.toBe(
			source.getProperty("_OutlineColor"),
		);
		(source.lilToonProperties._OutlineColor as Vector4).y = 0.7;
		syncPassMaterial(source, target);
		expect((target.getProperty("_OutlineColor") as Vector4).y).toBe(0.7);
		expect(target.version).toBe(version);
		source.lilToonProperties._PreCull = 1;
		source.lilToonProperties._PreZWrite = 0;
		syncPassMaterial(source, target);
		expect(target.side).toBe(BackSide);
		expect(target.depthWrite).toBe(false);
		const changedVersion = target.version;
		syncPassMaterial(source, target);
		expect(target.version).toBe(changedVersion);
		source.dispose();
		target.dispose();
	});

	it("updates texture specialization, removal and shader selection between draws", () => {
		const source = new LilToonMaterial({
			shaderVariant: "Hidden/lilToonTransparentOutline",
		});
		const target = new LilToonMaterial({
			shaderVariant: source.shaderVariant,
			pass: "outline",
		});
		const texture = new DataTexture();
		source.lilToonTextures._OutlineTex = texture;
		syncPassMaterial(source, target);
		expect(target.lilToonTextures._OutlineTex).toBe(texture);
		expect(target.fragmentShader).toContain("Combined_OutlineTex");
		delete source.lilToonTextures._OutlineTex;
		source.shaderVariant = "Hidden/lilToonCutoutOutline";
		syncPassMaterial(source, target);
		expect(target.lilToonTextures._OutlineTex).toBeNull();
		expect(target.shaderVariant).toBe(source.shaderVariant);
		expect(target.transparent).toBe(false);
		source.dispose();
		target.dispose();
		texture.dispose();
	});

	it("retains system textures when live inputs rebuild the program", () => {
		const material = new LilToonMaterial({
			shaderVariant: "Hidden/lilToonRefraction",
		});
		const background = new DataTexture();
		material.setSystemTexture("__background", background);
		const key = material.shaderKey;
		material.setProperty("_UseMain2ndTex", 1);
		material.setTexture("_Main2ndTex", new DataTexture());
		expect(material.shaderKey).not.toBe(key);
		const bindings = Object.entries(material.uniforms).filter(([name]) =>
			name.includes("BackgroundTexture"),
		);
		expect(bindings.length).toBeGreaterThan(0);
		expect(bindings.every(([, uniform]) => uniform.value === background)).toBe(
			true,
		);
		material.lilToonTextures._Main2ndTex!.dispose();
		material.dispose();
		background.dispose();
	});
});
