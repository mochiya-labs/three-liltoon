import type { BufferGeometry, Mesh } from "three";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";

function materialNeedsTangents(material: LilToonMaterial): boolean {
	const features = material.featureSet;
	return (
		features.normal1st ||
		features.normal2nd ||
		features.anisotropy ||
		features.outline ||
		material.lilToonTextures._MatCapBumpMap != null ||
		material.lilToonTextures._MatCap2ndBumpMap != null
	);
}

function geometryCanGenerateTangents(geometry: BufferGeometry): boolean {
	return (
		geometry.hasAttribute("position") &&
		geometry.hasAttribute("normal") &&
		geometry.hasAttribute("uv")
	);
}

/**
 * Reconstructs glTF's standard MikkTSpace tangent basis for lilToon features
 * that consume tangent-space normals. UniVRM deliberately omits TANGENT data,
 * so a custom shader loader must perform the reconstruction itself.
 */
export async function ensureLilToonTangents(
	meshes: readonly Mesh[],
): Promise<void> {
	const geometries = new Set<BufferGeometry>();

	for (const mesh of meshes) {
		if (mesh.geometry.hasAttribute("tangent")) continue;
		const materials = Array.isArray(mesh.material)
			? mesh.material
			: [mesh.material];
		const needsTangents = materials.some(
			(material) =>
				material.isMaterial &&
				"isLilToonMaterial" in material &&
				material.isLilToonMaterial === true &&
				materialNeedsTangents(material as LilToonMaterial),
		);
		if (needsTangents && geometryCanGenerateTangents(mesh.geometry))
			geometries.add(mesh.geometry);
	}

	if (geometries.size === 0) return;

	const [bufferGeometryUtils, MikkTSpace] = await Promise.all([
		import("three/examples/jsm/utils/BufferGeometryUtils.js"),
		import("three/examples/jsm/libs/mikktspace.module.js"),
	]);
	await MikkTSpace.ready;

	for (const geometry of geometries) {
		// The default sign negation is required by glTF's normal-map convention.
		bufferGeometryUtils.computeMikkTSpaceTangents(geometry, MikkTSpace);
	}
}
