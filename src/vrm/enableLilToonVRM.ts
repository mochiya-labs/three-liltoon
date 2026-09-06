import type { VRM, VRMLoaderPlugin } from "@pixiv/three-vrm";
import type { GLTFLoaderPlugin } from "three/examples/jsm/loaders/GLTFLoader.js";
import {
	GLTFLilToonExtension,
	type GLTFLilToonExtensionOptions,
} from "../loaders/GLTFLilToonExtension.js";
import { installLilToonExpressionBindings } from "./expressionBindings.js";

const enabled = new WeakSet<VRMLoaderPlugin>();

/**
 * Adds lilToon materials and VRM expression bindings to the supplied plugin.
 * Returns the same instance and preserves its options and other hooks.
 * Ordinary glTF/GLB also loads; expression setup runs only for a completed VRM.
 * Register this once instead of a separate GLTFLilToonExtension registration.
 * Repeated enhancement is a no-op; the first call's warning options apply.
 */
export function enableLilToonVRM<T extends VRMLoaderPlugin>(
	plugin: T,
	options: GLTFLilToonExtensionOptions = {},
): T & Pick<GLTFLilToonExtension, "loadMaterial"> {
	const enhanced = plugin as T & Pick<GLTFLilToonExtension, "loadMaterial">;
	if (enabled.has(plugin)) return enhanced;

	const materials = new GLTFLilToonExtension(plugin.parser, options);
	const originalLoadMaterial = (plugin as T & GLTFLoaderPlugin).loadMaterial;
	const originalAfterRoot = plugin.afterRoot;

	enhanced.loadMaterial = function (index) {
		return (
			materials.loadMaterial(index) ??
			originalLoadMaterial?.call(this, index) ??
			null
		);
	};
	plugin.afterRoot = async function (gltf) {
		await originalAfterRoot.call(this, gltf);
		await materials.afterRoot(gltf);
		const vrm = gltf.userData.vrm as VRM | undefined;
		if (vrm) installLilToonExpressionBindings(vrm);
	};
	enabled.add(plugin);
	return enhanced;
}
