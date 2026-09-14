import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonMaterialParameters } from "../material/LilToonMaterialParameters.js";

/** @deprecated Use LilToonMaterial with renderMode: "fur" and enableLilToon(renderer). */
export class FurPass extends LilToonMaterial {
	constructor(
		parameters: Omit<LilToonMaterialParameters, "renderMode" | "pass"> = {},
	) {
		super({ ...parameters, renderMode: "fur" });
	}
}
