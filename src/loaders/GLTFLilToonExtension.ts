import type { Material, Mesh, Texture } from "three";
import type {
	GLTF,
	GLTFLoaderPlugin,
	GLTFParser,
} from "three/examples/jsm/loaders/GLTFLoader.js";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import type { LilToonRendererAdapter } from "../renderer/LilToonRendererAdapter.js";
import { OutlinePass } from "../passes/OutlinePass.js";
import { ShadowCasterPass } from "../passes/ShadowCasterPass.js";
import {
	LILTOON_GLTF_EXTENSION,
	LILTOON_GLTF_SPEC_VERSION,
	type GLTFLilToonMaterialDefinition,
} from "./types.js";
import { warnLilToon } from "../utils/diagnostics.js";
import type { LilToonWarning } from "../utils/materialWarnings.js";
import { ensureLilToonTangents } from "./LilToonTangentGenerator.js";

export interface GLTFLilToonExtensionOptions {
	rendererAdapter?: LilToonRendererAdapter;
	addOutlines?: boolean;
	configureShadowCasters?: boolean;
	/** Non-fatal compatibility warnings. Omit to log them to the console. */
	onWarning?: (warning: LilToonWarning) => void;
}

function renderModeFromDefinition(definition: GLTFLilToonMaterialDefinition) {
	if (definition.renderMode) return definition.renderMode;
	const name = definition.shaderVariant?.toLowerCase() ?? "";
	if (name.includes("cutout")) return "cutout" as const;
	if (name.includes("trans")) return "transparent" as const;
	return "opaque" as const;
}

export class GLTFLilToonExtension implements GLTFLoaderPlugin {
	readonly name = LILTOON_GLTF_EXTENSION;
	readonly #outlinePass = new OutlinePass();
	readonly #shadowCasterPass = new ShadowCasterPass();
	readonly #materialWarnings = new Map<number, LilToonWarning[]>();

	constructor(
		readonly parser: GLTFParser,
		readonly options: GLTFLilToonExtensionOptions = {},
	) {}

	loadMaterial(materialIndex: number): Promise<Material> | null {
		const materialDefinition = this.parser.json.materials?.[materialIndex];
		const definition = materialDefinition?.extensions?.[this.name] as
			GLTFLilToonMaterialDefinition | undefined;
		if (!definition) return null;
		return (async () => {
			const textures: Record<string, Texture> = {};
			await Promise.all(
				Object.entries(definition.textures ?? {}).map(
					async ([property, textureInfo]) => {
						const index =
							typeof textureInfo === "number" ? textureInfo : textureInfo.index;
						textures[property] = (await this.parser.getDependency(
							"texture",
							index,
						)) as Texture;
					},
				),
			);
			const material = new LilToonMaterial({
				name: materialDefinition.name,
				renderMode: renderModeFromDefinition(definition),
				properties: definition.properties,
				textures,
				deformation: true,
			});
			material.setRendererAdapter(this.options.rendererAdapter);
			this.parser.associations.set(material, { materials: materialIndex });
			const warnings = material.getWarnings();
			if (
				definition.specVersion &&
				definition.specVersion !== LILTOON_GLTF_SPEC_VERSION
			) {
				warnings.push({
					severity: "warning",
					code: "spec-version-mismatch",
					materialName: material.name,
					shaderKey: material.shaderKey,
					property: "specVersion",
					message: `Material uses ${this.name} spec ${definition.specVersion}; this build implements ${LILTOON_GLTF_SPEC_VERSION}. Attempting a best-effort load.`,
				});
			}
			if (
				/fur|gem|refraction|tessellation|liltoonlite/i.test(
					definition.shaderVariant ?? "",
				)
			) {
				warnings.push({
					severity: "warning",
					code: "unsupported-shader-variant",
					materialName: material.name,
					shaderKey: material.shaderKey,
					property: "shaderVariant",
					message: `Unity shader ${definition.shaderVariant} is not reproduced by ${material.shaderKey}. Loading with the standard forward fallback.`,
				});
			}
			this.#materialWarnings.set(
				materialIndex,
				warnings.map((warning) => ({ ...warning, materialIndex })),
			);
			return material;
		})();
	}

	async afterRoot(result: GLTF): Promise<void> {
		const meshes: Mesh[] = [];
		result.scene.traverse((object) => {
			if ((object as Mesh).isMesh) meshes.push(object as Mesh);
		});
		await ensureLilToonTangents(meshes);
		for (const mesh of meshes) {
			const materials = Array.isArray(mesh.material)
				? mesh.material
				: [mesh.material];
			for (const material of materials) {
				if (!(material instanceof LilToonMaterial)) continue;
				material.setRendererAdapter(this.options.rendererAdapter);
				if (this.options.configureShadowCasters !== false)
					this.#shadowCasterPass.configure(mesh, material);
				if (this.options.addOutlines !== false && material.featureSet.outline)
					this.#outlinePass.attach(mesh, material);
			}
		}
		if (this.options.rendererAdapter)
			this.options.rendererAdapter.attach(result.scene);
		// Source material indices deduplicate warnings across shared meshes and loader clones.
		const warnings = [...this.#materialWarnings]
			.sort(([a], [b]) => a - b)
			.flatMap(([, entries]) => entries);
		result.userData ??= {};
		result.userData.lilToonWarnings = warnings;
		for (const warning of warnings) {
			if (this.options.onWarning) this.options.onWarning({ ...warning });
			else
				warnLilToon(
					`${warning.materialName} (material ${warning.materialIndex}, ${warning.shaderKey}): ${warning.message}`,
				);
		}
	}
}
