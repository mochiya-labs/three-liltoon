import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonMaterialParameters } from "../material/LilToonMaterialParameters.js";

/** @deprecated Use LilToonMaterial with shaderVariant: "Hidden/lilToonGem" and enableLilToon(renderer). */
export class GemPass extends LilToonMaterial {
	constructor(
		parameters: Omit<LilToonMaterialParameters, "renderMode" | "pass"> = {},
	) {
		super({ ...parameters, renderMode: "gem" });
	}
}
