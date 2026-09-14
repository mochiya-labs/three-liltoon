import { describe, expect, it } from "vitest";
import {
	Mesh,
	PlaneGeometry,
	Float32BufferAttribute,
	Bone,
	Skeleton,
	SkinnedMesh,
	Vector3,
} from "three";
import { LilToonMaterial } from "../../src/material/LilToonMaterial.js";
import { GLTFLilToonExtension } from "../../src/loaders/GLTFLilToonExtension.js";
import { FurGeometry, furFactors } from "../../src/renderer/FurGeometry.js";
import { LilToonMaterialFactory } from "../../src/material/LilToonMaterialFactory.js";

describe("special modes", () => {
	it.each([
		["Hidden/lilToonOnePassTransparentOutline", "transparent", "one-pass"],
		["Hidden/lilToonTwoPassTransparent", "transparent", "two-pass"],
		["Hidden/lilToonRefractionBlur", "refraction-blur", "normal"],
		["Hidden/lilToonFurCutout", "fur-cutout", "normal"],
		["Hidden/lilToonFurTwoPass", "fur-two-pass", "normal"],
	])(
		"infers %s when explicit mode fields are absent",
		async (shaderVariant, mode, transparency) => {
			const parser = {
				json: {
					materials: [
						{
							extensions: {
								MOCHIYA_materials_liltoon: {
									specVersion: "1.2",
									shaderVariant,
									properties: { _UseOutline: 0 },
								},
							},
						},
					],
				},
				associations: new Map(),
			};
			const m = (await new GLTFLilToonExtension(parser as never).loadMaterial(
				0,
			)) as LilToonMaterial;
			expect(m.renderMode).toBe(mode);
			expect(m.transparencyMode).toBe(transparency);
			m.dispose();
		},
	);
	it.each(["normal", "one-pass", "two-pass"] as const)(
		"preserves transparency variant %s",
		async (transparencyMode) => {
			const source = new LilToonMaterial({
				renderMode: "transparent",
				transparencyMode,
			});
			const copy = source.clone();
			expect(copy.transparencyMode).toBe(transparencyMode);
			expect(source.toLilToonJSON().transparencyMode).toBe(transparencyMode);
			const restored = new LilToonMaterialFactory().create(
				source.toLilToonJSON(),
			);
			expect(restored.transparencyMode).toBe(transparencyMode);
			expect(restored.forceSinglePass).toBe(true);
			copy.dispose();
			restored.dispose();
			source.dispose();
		},
	);
	it.each([
		"refraction",
		"fur",
		"gem",
		"refraction-blur",
		"fur-cutout",
		"fur-two-pass",
	] as const)("loads and round-trips %s", async (mode) => {
		const parser = {
			json: {
				materials: [
					{
						extensions: {
							MOCHIYA_materials_liltoon: {
								specVersion: "1.1",
								renderMode: mode,
								properties: { _UseOutline: 0 },
							},
						},
					},
				],
			},
			associations: new Map(),
		};
		const material = (await new GLTFLilToonExtension(
			parser as never,
		).loadMaterial(0)) as LilToonMaterial;
		expect(material.renderMode).toBe(mode);
		expect(material.transparent).toBe(mode !== "fur-cutout");
		expect(material.shaderKey).toContain(`standard-${mode}:`);
		expect(material.clone().renderMode).toBe(mode);
		material.alphaTest = 0;
		expect(material.renderMode).toBe(mode);
		expect(material.toJSON()).toBeDefined();
		material.dispose();
	});
	it("keeps original strip connectivity and source geometry untouched", () => {
		const geometry = new PlaneGeometry(1, 1),
			mesh = new Mesh(geometry);
		const fur = new FurGeometry(mesh, 2, 64);
		expect(furFactors(2)).toHaveLength(7);
		expect(fur.geometry.attributes.position!.count).toBe(28);
		expect(fur.geometry.index!.count).toBe(72);
		expect(geometry.attributes.position!.count).toBe(4);
		fur.update();
		const version = fur.texture.version;
		fur.update();
		expect(fur.texture.version).toBe(version);
		fur.dispose();
		geometry.dispose();
	});
	it("packs morphs and skin weights while bone motion leaves source data cached", () => {
		const geometry = new PlaneGeometry(1, 1),
			original = geometry.attributes.position!.array.slice();
		geometry.morphAttributes.position = [
			new Float32BufferAttribute(new Float32Array(12).fill(0.2), 3),
		];
		geometry.morphTargetsRelative = true;
		geometry.setAttribute(
			"skinIndex",
			new Float32BufferAttribute(new Float32Array(16), 4),
		);
		geometry.setAttribute(
			"skinWeight",
			new Float32BufferAttribute(
				[1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0],
				4,
			),
		);
		const mesh = new SkinnedMesh(geometry),
			bone = new Bone();
		mesh.add(bone);
		mesh.bind(new Skeleton([bone]));
		mesh.morphTargetInfluences![0] = 0.75;
		bone.position.x = 0.3;
		mesh.updateMatrixWorld(true);
		const fur = new FurGeometry(mesh, 1, 64);
		fur.update();
		const expected = Mesh.prototype.getVertexPosition.call(
			mesh,
			0,
			new Vector3(),
		);
		const data = fur.texture.image.data!;
		expect(data[0]).toBeCloseTo(expected.x);
		expect(data[1]).toBeCloseTo(expected.y);
		expect(data[2]).toBeCloseTo(expected.z);
		expect(geometry.attributes.position!.array).toEqual(original);
		expect(data[24]).toBe(0);
		expect(data[28]).toBe(1);
		const version = fur.texture.version;
		bone.position.x += 0.4;
		mesh.updateMatrixWorld(true);
		fur.update();
		expect(fur.texture.version).toBe(version);
		mesh.morphTargetInfluences![0] = 0.25;
		fur.update();
		expect(fur.texture.version).toBe(version + 1);
		expect(data[0]).toBeCloseTo(original[0]! + 0.05);
		geometry.morphAttributes.position![0]!.setX(0, 0.4);
		geometry.morphAttributes.position![0]!.needsUpdate = true;
		fur.update();
		expect(data[0]).toBeCloseTo(original[0]! + 0.1);
		const nextVersion = fur.texture.version;
		fur.update();
		expect(fur.texture.version).toBe(nextVersion);
		fur.update(true);
		const skinned = mesh.getVertexPosition(0, new Vector3());
		expect(data[0]).toBeCloseTo(skinned.x);
		const cpuVersion = fur.texture.version;
		fur.update(true);
		expect(fur.texture.version).toBe(cpuVersion);
		bone.position.x += 0.2;
		mesh.updateMatrixWorld(true);
		fur.update(true);
		expect(data[0]).toBeCloseTo(mesh.getVertexPosition(0, new Vector3()).x);
		fur.dispose();
		geometry.dispose();
	});
});
