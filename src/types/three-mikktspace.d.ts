declare module "three/examples/jsm/libs/mikktspace.module.js" {
	export function generateTangents(
		position: Float32Array,
		normal: Float32Array,
		texcoord: Float32Array,
	): Float32Array;

	export let isReady: boolean;
	export const ready: Promise<void>;
}
