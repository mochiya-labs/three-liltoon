import {
	REVISION,
	type Camera,
	type Material,
	type WebGLRenderer,
} from "three";

function queue(material: Material, defaultQueue: number) {
	return (
		material as Material & {
			isLilToonMaterial?: boolean;
			renderQueue?: number;
		}
	).isLilToonMaterial
		? ((material as Material & { renderQueue?: number }).renderQueue ??
				defaultQueue)
		: defaultQueue;
}

/** Compare authored queues only. Apply host group/renderOrder precedence first. */
export function compareLilToonRenderQueue(
	a: Material,
	b: Material,
	defaultQueue: number,
): number {
	return queue(a, defaultQueue) - queue(b, defaultQueue);
}

type RenderItem = {
	id: number;
	material: Material & { id: number };
	groupOrder: number;
	renderOrder: number;
	z: number;
	materialVariant?: number;
};

/** Owns default renderer sorting while installed; no private renderer state is read. */
export function installMaterialRenderQueue(renderer: WebGLRenderer) {
	let camera: Camera | undefined;
	// r185 reverses the complete sorted lists for reversed-depth cameras.
	const reversed = () =>
		Number(REVISION) >= 185 && camera?.reversedDepth === true;
	const priority = (a: RenderItem, b: RenderItem, fallback: number) =>
		a.groupOrder - b.groupOrder ||
		a.renderOrder - b.renderOrder ||
		(reversed() ? -1 : 1) *
			compareLilToonRenderQueue(a.material, b.material, fallback);
	renderer.setOpaqueSort(
		(a: RenderItem, b: RenderItem) =>
			priority(a, b, 2000) ||
			a.material.id - b.material.id ||
			((a as RenderItem).materialVariant ?? 0) -
				((b as RenderItem).materialVariant ?? 0) ||
			a.z - b.z ||
			a.id - b.id,
	);
	renderer.setTransparentSort(
		(a: RenderItem, b: RenderItem) =>
			priority(a, b, 3000) || b.z - a.z || a.id - b.id,
	);
	return {
		enter(next: Camera) {
			const previous = camera;
			camera = next;
			return () => {
				camera = previous;
			};
		},
		dispose() {
			renderer.setOpaqueSort(null);
			renderer.setTransparentSort(null);
		},
	};
}
