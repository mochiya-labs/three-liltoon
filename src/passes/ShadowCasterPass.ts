import {
	MeshDepthMaterial,
	MeshDistanceMaterial,
	RGBADepthPacking,
	type Mesh,
} from "three";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";

export class ShadowCasterPass {
	configure(mesh: Mesh, material: LilToonMaterial): void {
		const alphaMap = material.lilToonTextures._MainTex ?? null;
		const alphaTest =
			material.renderMode === "cutout"
				? Number(material.lilToonProperties._Cutoff ?? 0.5)
				: 0;
		mesh.customDepthMaterial = new MeshDepthMaterial({
			depthPacking: RGBADepthPacking,
			map: alphaMap,
			alphaMap,
			alphaTest,
			side: material.side,
		});
		mesh.customDistanceMaterial = new MeshDistanceMaterial({
			map: alphaMap,
			alphaMap,
			alphaTest,
			side: material.side,
		});
	}
}
