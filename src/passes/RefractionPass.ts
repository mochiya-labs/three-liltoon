import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonMaterialParameters } from "../material/LilToonMaterialParameters.js";

/** @deprecated Use LilToonMaterial with renderMode: "refraction" and enableLilToon(renderer). */
export class RefractionPass extends LilToonMaterial {
	constructor(
		parameters: Omit<LilToonMaterialParameters, "renderMode" | "pass"> = {},
	) {
		super({ ...parameters, renderMode: "refraction" });
	}
}
