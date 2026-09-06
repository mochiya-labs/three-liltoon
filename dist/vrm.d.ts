import { VRMLoaderPlugin, VRM } from '@pixiv/three-vrm';
import { G as GLTFLilToonExtensionOptions, a as GLTFLilToonExtension } from './GLTFLilToonExtension-2SkJrHyN.js';
import 'three';
import 'three/examples/jsm/loaders/GLTFLoader.js';

/**
 * Adds lilToon materials and VRM expression bindings to the supplied plugin.
 * Returns the same instance and preserves its options and other hooks.
 * Ordinary glTF/GLB also loads; expression setup runs only for a completed VRM.
 * Register this once instead of a separate GLTFLilToonExtension registration.
 * Repeated enhancement is a no-op; the first call's warning options apply.
 */
declare function enableLilToonVRM<T extends VRMLoaderPlugin>(plugin: T, options?: GLTFLilToonExtensionOptions): T & Pick<GLTFLilToonExtension, "loadMaterial">;

/**
 * Adapt existing three-vrm color/UV binds to lilToon properties.
 * Call after loading, before the first expression update. Repeated calls return
 * the same undo function. Undo restores the original binds and property values;
 * undo and reinstall if the application later adds or replaces expression binds.
 * Morph binds and materials other than LilToonMaterial are left unchanged.
 */
declare function installLilToonExpressionBindings(vrm: VRM): () => void;
/** Restore bindings installed manually or during VRM loading. Safe to repeat. */
declare function uninstallLilToonExpressionBindings(vrm: VRM): void;

export { enableLilToonVRM, installLilToonExpressionBindings, uninstallLilToonExpressionBindings };
