import { readFileSync } from "node:fs";

/** Resolve generated combined bindings against SPIR-V's original image/sampler reflection. */
export function resourceManifest(
	glsl: string,
	reflectionPath: string,
	stage: "vertex" | "fragment",
) {
	const reflection = JSON.parse(readFileSync(reflectionPath, "utf8")) as {
		separate_images?: { name: string }[];
		separate_samplers?: { name: string }[];
	};
	const samplers = [
		...(reflection.separate_samplers ?? []),
		{ name: "SPIRV_Cross_DummySampler" },
	];
	return [
		...glsl.matchAll(
			/uniform\s+(?:(?:lowp|mediump|highp)\s+)?(sampler\w+)\s+(\w+)\s*;/g,
		),
	].map((match) => {
		const [, type, uniform] = match as unknown as [string, string, string];
		const pairs = (reflection.separate_images ?? []).flatMap((image) =>
			samplers.map((sampler) => ({ image: image.name, sampler: sampler.name })),
		);
		const pair = pairs.find(
			({ image, sampler }) =>
				uniform === `SPIRV_Cross_Combined${image}${sampler}` ||
				(uniform === image && sampler === `sampler${image}`),
		);
		if (!pair)
			throw new Error(
				`Cannot resolve ${stage} sampler ${uniform} from SPIR-V reflection`,
			);
		const property =
			(
				{
					unity_SpecCube0: "__environment",
					uMainShadowMap: "__shadow",
					boneTexture: "__bones",
					_lilBackgroundTexture: "__background",
					_GrabTexture: "__grab",
					uFurVertices: "__furVertices",
				} as Record<string, string>
			)[pair.image] ?? pair.image;
		return { uniform, property, sampler: pair.sampler, type, stage };
	});
}
