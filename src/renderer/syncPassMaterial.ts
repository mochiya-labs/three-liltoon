import type { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonScalarOrVector } from "../material/LilToonMaterialParameters.js";
import { setGlobalProperty } from "./LilToonUniformBinder.js";
import {
	applyLilToonPassState,
	isRenderStateProperty,
} from "../utils/renderState.js";

function sameValue(
	a: LilToonScalarOrVector,
	b: LilToonScalarOrVector | undefined,
) {
	if (Array.isArray(a))
		return (
			Array.isArray(b) && a.length === b.length && a.every((v, i) => v === b[i])
		);
	if (typeof a === "object")
		return (
			b !== undefined && a.constructor === b.constructor && a.equals(b as never)
		);
	return a === b;
}

/** Pass materials own value snapshots so in-place source edits remain observable. */
export function syncPassMaterial(
	source: LilToonMaterial,
	target: LilToonMaterial,
) {
	source.getProperty("_Color");
	target.toneMapped = source.toneMapped;
	target.renderQueue = source.renderQueue;
	let changed = false,
		stateChanged = false;
	for (const key in source.lilToonProperties) {
		const value = source.lilToonProperties[key]!;
		if (sameValue(value, target.lilToonProperties[key])) continue;
		target.lilToonProperties[key] = Array.isArray(value)
			? [...value]
			: typeof value === "object"
				? value.clone()
				: value;
		setGlobalProperty(target.globalUniforms, key, value);
		changed = true;
		stateChanged ||= isRenderStateProperty(key);
	}
	for (const key of new Set([
		...Object.keys(source.lilToonTextures),
		...Object.keys(target.lilToonTextures),
	])) {
		const texture = source.lilToonTextures[key] ?? null;
		if (target.lilToonTextures[key] === texture) continue;
		target.lilToonTextures[key] = texture;
		changed = true;
	}
	const selectionChanged = target.shaderVariant !== source.shaderVariant;
	// Apply selection after copying properties, so its render state sees current values.
	target.shaderVariant = source.shaderVariant;
	if (changed) target.setProperty("_Color", source.getProperty("_Color")!);
	if (stateChanged && !selectionChanged)
		applyLilToonPassState(
			target,
			source.renderMode,
			source.lilToonProperties,
			target.pass,
		);
}
