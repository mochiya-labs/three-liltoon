import { UnsupportedFeatureError } from "../utils/diagnostics.js";

export class RefractionPass {
	constructor() {
		throw new UnsupportedFeatureError(
			"Refraction requires scene-color capture and is not shipped in the WebGL2 alpha.",
		);
	}
}
