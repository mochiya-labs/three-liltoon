import {
	ACESFilmicToneMapping,
	AgXToneMapping,
	CineonToneMapping,
	CustomToneMapping,
	LinearToneMapping,
	NeutralToneMapping,
	NoToneMapping,
	ReinhardToneMapping,
	ShaderChunk,
	SRGBColorSpace,
	type IUniform,
	type Material,
	type WebGLRenderer,
} from "three";

const toneFunctions = [
	[LinearToneMapping, "LinearToneMapping"],
	[ReinhardToneMapping, "ReinhardToneMapping"],
	[CineonToneMapping, "CineonToneMapping"],
	[ACESFilmicToneMapping, "ACESFilmicToneMapping"],
	[AgXToneMapping, "AgXToneMapping"],
	[NeutralToneMapping, "NeutralToneMapping"],
	[CustomToneMapping, "CustomToneMapping"],
] as const;

export function outputUniforms(): Record<string, IUniform> {
	return {
		uLilToonOutputSrgb: { value: 0 },
		uLilToonToneMapping: { value: NoToneMapping },
		toneMappingExposure: { value: 1 },
		uLilToonPremultipliedOutput: { value: 0 },
	};
}

/** Raw shaders need an explicit output boundary. Reuse the installed Three peer's curves. */
export function withOutputTransform(source: string): string {
	const globals = source.indexOf("struct type_Globals");
	if (globals < 0 || !source.includes("void main()"))
		throw new Error(
			"[three-liltoon] Missing fragment output integration point.",
		);
	const helpers = `
uniform uint uLilToonOutputSrgb;
uniform int uLilToonToneMapping;
uniform uint uLilToonPremultipliedOutput;
#include <tonemapping_pars_fragment>
#include <colorspace_pars_fragment>
vec3 lilToonToneMap(vec3 color) {
${toneFunctions.map(([mode, fn]) => `    if (uLilToonToneMapping == ${mode}) return ${fn}(color);`).join("\n")}
    return color;
}
`;
	// Resolve the exported chunks here to keep this boundary independent of shader
	// specialization and to use the consumer's Three implementation, not a copied curve.
	const prefix = helpers
		.replace(
			"#include <tonemapping_pars_fragment>",
			ShaderChunk.tonemapping_pars_fragment,
		)
		.replace(
			"#include <colorspace_pars_fragment>",
			ShaderChunk.colorspace_pars_fragment,
		);
	return (
		(source.slice(0, globals) + prefix + source.slice(globals)).replace(
			"void main()",
			"void lilToonFragmentMain()",
		) +
		`
void main() {
    lilToonFragmentMain();
    if (uLilToonToneMapping == ${NoToneMapping} && uLilToonOutputSrgb == 0u) return;
    vec3 color = out_var_SV_Target.rgb;
    float alpha = out_var_SV_Target.a;
    // Ordinary lilToon transparency already premultiplies in its upstream shader.
    // Transform straight RGB, then restore the blend representation exactly once.
    bool premultiplied = uLilToonPremultipliedOutput != 0u && alpha > 0.0;
    if (premultiplied) color /= alpha;
    color = lilToonToneMap(color);
    if (uLilToonOutputSrgb != 0u) color = sRGBTransferOETF(vec4(color, alpha)).rgb;
    if (premultiplied) color *= alpha;
    out_var_SV_Target.rgb = color;
}
`
	);
}

export function updateOutputTransform(
	material: Material & { uniforms: Record<string, IUniform> },
	renderer: WebGLRenderer,
	premultiplied: boolean,
): void {
	const target = renderer.getRenderTarget();
	const display =
		target === null ||
		("isXRRenderTarget" in target && target.isXRRenderTarget === true);
	// Match Three's ordinary render-target contract: linear output, including
	// sRGB texture attachments where the framebuffer performs the storage encoding.
	material.uniforms.uLilToonOutputSrgb!.value = Number(
		display &&
			(target?.texture.colorSpace ?? renderer.outputColorSpace) ===
				SRGBColorSpace,
	);
	material.uniforms.uLilToonToneMapping!.value =
		display && material.toneMapped
			? (renderer.toneMapping ?? NoToneMapping)
			: NoToneMapping;
	material.uniforms.toneMappingExposure!.value =
		renderer.toneMappingExposure ?? 1;
	material.uniforms.uLilToonPremultipliedOutput!.value = Number(premultiplied);
}
