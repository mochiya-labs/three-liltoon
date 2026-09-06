import { Material } from 'three';
import { GLTFLoaderPlugin, GLTFParser, GLTF } from 'three/examples/jsm/loaders/GLTFLoader.js';

type LilToonWarningCode = "unsupported-feature" | "unused-texture" | "texture-type-mismatch" | "spec-version-mismatch" | "unsupported-shader-variant";
/** Serializable, non-fatal compatibility diagnostic. */
interface LilToonWarning {
    severity: "warning";
    code: LilToonWarningCode;
    materialName: string;
    materialIndex?: number;
    shaderKey: string;
    property: string;
    message: string;
}

interface GLTFLilToonExtensionOptions {
    /** Non-fatal compatibility warnings. Omit to log them to the console. */
    onWarning?: (warning: LilToonWarning) => void;
}
declare class GLTFLilToonExtension implements GLTFLoaderPlugin {
    #private;
    readonly parser: GLTFParser;
    readonly options: GLTFLilToonExtensionOptions;
    readonly name = "MOCHIYA_materials_liltoon";
    constructor(parser: GLTFParser, options?: GLTFLilToonExtensionOptions);
    loadMaterial(materialIndex: number): Promise<Material> | null;
    afterRoot(result: GLTF): Promise<void>;
}

export { type GLTFLilToonExtensionOptions as G, type LilToonWarning as L, GLTFLilToonExtension as a, type LilToonWarningCode as b };
