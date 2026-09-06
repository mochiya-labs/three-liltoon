import { FileLoader, Loader, type LoadingManager } from "three";
import { LilToonMaterialFactory } from "../material/LilToonMaterialFactory.js";
import type { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { SerializedLilToonMaterial } from "../material/LilToonMaterialState.js";
import type { LilToonWarning } from "../utils/materialWarnings.js";
import { warnLilToon } from "../utils/diagnostics.js";

export class LilToonMaterialLoader extends Loader<LilToonMaterial> {
	/** Non-fatal compatibility warnings. Omit to log them to the console. */
	onWarning?: (warning: LilToonWarning) => void;

	constructor(manager?: LoadingManager) {
		super(manager);
	}

	parse(json: string | SerializedLilToonMaterial) {
		const value =
			typeof json === "string"
				? (JSON.parse(json) as SerializedLilToonMaterial)
				: json;
		const material = new LilToonMaterialFactory().create(value);
		for (const warning of material.getWarnings()) {
			if (this.onWarning) this.onWarning(warning);
			else
				warnLilToon(
					`${warning.materialName} (${warning.shaderKey}): ${warning.message}`,
				);
		}
		return material;
	}

	load(
		url: string,
		onLoad: (material: ReturnType<LilToonMaterialLoader["parse"]>) => void,
		onProgress?: (event: ProgressEvent) => void,
		onError?: (error: unknown) => void,
	): void {
		const loader = new FileLoader(this.manager);
		loader.setPath(this.path);
		loader.setRequestHeader(this.requestHeader);
		loader.setWithCredentials(this.withCredentials);
		loader.load(
			url,
			(data) => {
				try {
					onLoad(this.parse(String(data)));
				} catch (error) {
					onError?.(error);
					this.manager.itemError(url);
				}
			},
			onProgress,
			onError,
		);
	}
}
