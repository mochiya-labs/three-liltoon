import {
	VRMExpressionMaterialColorBind,
	VRMExpressionTextureTransformBind,
	type VRM,
	type VRMExpressionBind,
	type VRMExpressionMaterialColorType,
} from "@pixiv/three-vrm";
import { LilToonMaterial } from "../material/LilToonMaterial.js";

const colorProperties: Record<VRMExpressionMaterialColorType, string> = {
	color: "_Color",
	emissionColor: "_EmissionColor",
	shadeColor: "_ShadowColor",
	matcapColor: "_MatCapColor",
	rimColor: "_RimColor",
	outlineColor: "_OutlineColor",
};

// A VRM owns its bindings. This table must not keep released avatars alive.
const installations = new WeakMap<VRM, () => void>();

/**
 * Adapt existing three-vrm color/UV binds to lilToon properties.
 * Call after loading, before the first expression update. Repeated calls return
 * the same undo function. Undo restores the original binds and property values;
 * undo and reinstall if the application later adds or replaces expression binds.
 * Morph binds and materials other than LilToonMaterial are left unchanged.
 */
export function installLilToonExpressionBindings(vrm: VRM): () => void {
	const installed = installations.get(vrm);
	if (installed) return installed;
	const restore: (() => void)[] = [];
	for (const expression of vrm.expressionManager?.expressions ?? []) {
		for (const bind of [...expression.binds]) {
			if (
				!(
					bind instanceof VRMExpressionMaterialColorBind ||
					bind instanceof VRMExpressionTextureTransformBind
				) ||
				!(bind.material instanceof LilToonMaterial)
			)
				continue;

			const material = bind.material;
			const isColor = bind instanceof VRMExpressionMaterialColorBind;
			const property = isColor ? colorProperties[bind.type] : "_MainTex_ST";
			if (!property) continue;
			const value = material.lilToonProperties[property];
			const original = Array.isArray(value)
				? [...value]
				: property === "_MainTex_ST"
					? [1, 1, 0, 0]
					: [1, 1, 1, 1];
			const target = isColor
				? [
						bind.targetValue.r,
						bind.targetValue.g,
						bind.targetValue.b,
						bind.targetAlpha,
					]
				: [bind.scale.x, bind.scale.y, bind.offset.x, bind.offset.y];
			// VRM only animates alpha for base color. Preserve lilToon-specific
			// alpha controls on emission, shade, rim, matcap and outline colors.
			const channels = isColor && bind.type !== "color" ? 3 : 4;
			const replacement: VRMExpressionBind = {
				clearAppliedWeight: () => {
					const current = material.lilToonProperties[property];
					const result = Array.isArray(current) ? [...current] : [...original];
					for (let i = 0; i < channels; i++) result[i] = original[i] ?? 0;
					material.setProperty(property, result);
				},
				applyWeight: (weight) => {
					const current = material.lilToonProperties[property];
					const result = Array.isArray(current) ? [...current] : [...original];
					for (let i = 0; i < channels; i++) {
						result[i] =
							(result[i] ?? original[i] ?? 0) +
							weight * (target[i] - (original[i] ?? 0));
					}
					material.setProperty(property, result);
				},
			};
			expression.deleteBind(bind);
			expression.addBind(replacement);
			restore.push(() => {
				expression.deleteBind(replacement);
				expression.addBind(bind);
				replacement.clearAppliedWeight();
			});
		}
	}
	let active = true;
	const undo = () => {
		if (!active) return;
		active = false;
		for (const reset of restore.splice(0).reverse()) reset();
		installations.delete(vrm);
	};
	installations.set(vrm, undo);
	return undo;
}

/** Restore bindings installed manually or during VRM loading. Safe to repeat. */
export function uninstallLilToonExpressionBindings(vrm: VRM): void {
	installations.get(vrm)?.();
}
