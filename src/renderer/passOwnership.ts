import type { Mesh, Object3D } from "three";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";

/** Membership, not visibility or a particular draw, determines resource lifetime. */
export function ownsPassSource(
	root: Object3D,
	mesh: Mesh,
	source: LilToonMaterial,
): boolean {
	if (source.pass !== "forward") return false;
	const assigned = Array.isArray(mesh.material)
		? mesh.material.includes(source)
		: mesh.material === source;
	if (!assigned) return false;
	for (let node: Object3D | null = mesh; node; node = node.parent)
		if (node === root) return true;
	return false;
}
