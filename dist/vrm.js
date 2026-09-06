import { LilToonMaterial, GLTFLilToonExtension } from './chunk-LEOYQ4DX.js';
import { VRMExpressionMaterialColorBind, VRMExpressionTextureTransformBind } from '@pixiv/three-vrm';

var colorProperties = {
  color: "_Color",
  emissionColor: "_EmissionColor",
  shadeColor: "_ShadowColor",
  matcapColor: "_MatCapColor",
  rimColor: "_RimColor",
  outlineColor: "_OutlineColor"
};
var installations = /* @__PURE__ */ new WeakMap();
function installLilToonExpressionBindings(vrm) {
  const installed = installations.get(vrm);
  if (installed) return installed;
  const restore = [];
  for (const expression of vrm.expressionManager?.expressions ?? []) {
    for (const bind of [...expression.binds]) {
      if (!(bind instanceof VRMExpressionMaterialColorBind || bind instanceof VRMExpressionTextureTransformBind) || !(bind.material instanceof LilToonMaterial))
        continue;
      const material = bind.material;
      const isColor = bind instanceof VRMExpressionMaterialColorBind;
      const property = isColor ? colorProperties[bind.type] : "_MainTex_ST";
      if (!property) continue;
      const value = material.lilToonProperties[property];
      const original = Array.isArray(value) ? [...value] : property === "_MainTex_ST" ? [1, 1, 0, 0] : [1, 1, 1, 1];
      const target = isColor ? [
        bind.targetValue.r,
        bind.targetValue.g,
        bind.targetValue.b,
        bind.targetAlpha
      ] : [bind.scale.x, bind.scale.y, bind.offset.x, bind.offset.y];
      const channels = isColor && bind.type !== "color" ? 3 : 4;
      const replacement = {
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
            result[i] = (result[i] ?? original[i] ?? 0) + weight * (target[i] - (original[i] ?? 0));
          }
          material.setProperty(property, result);
        }
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
function uninstallLilToonExpressionBindings(vrm) {
  installations.get(vrm)?.();
}

// src/vrm/enableLilToonVRM.ts
var enabled = /* @__PURE__ */ new WeakSet();
function enableLilToonVRM(plugin, options = {}) {
  const enhanced = plugin;
  if (enabled.has(plugin)) return enhanced;
  const materials = new GLTFLilToonExtension(plugin.parser, options);
  const originalLoadMaterial = plugin.loadMaterial;
  const originalAfterRoot = plugin.afterRoot;
  enhanced.loadMaterial = function(index) {
    return materials.loadMaterial(index) ?? originalLoadMaterial?.call(this, index) ?? null;
  };
  plugin.afterRoot = async function(gltf) {
    await originalAfterRoot.call(this, gltf);
    await materials.afterRoot(gltf);
    const vrm = gltf.userData.vrm;
    if (vrm) installLilToonExpressionBindings(vrm);
  };
  enabled.add(plugin);
  return enhanced;
}

export { enableLilToonVRM, installLilToonExpressionBindings, uninstallLilToonExpressionBindings };
