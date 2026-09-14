import { readFileSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { LILTOON_INCLUDES, GENERATED_SHADER_ROOT } from "../paths.js";

/** Lower upstream geometry-stage interpolation to one output vertex per invocation. */
export function generateFur() {
	const source = readFileSync(
		resolve(LILTOON_INCLUDES, "lil_common_vert_fur.hlsl"),
		"utf8",
	);
	const append = source.indexOf("void AppendFur(");
	const geometry = source.indexOf("// Geometry shader");
	const setup = source.indexOf("    v2f output;", geometry);
	const topology = source.indexOf("    if(_FurLayerNum == 1)", setup);
	if ([append, geometry, setup, topology].some((i) => i < 0))
		throw new Error("Upstream fur structure changed");
	let head = source.slice(0, geometry);
	head = head.replace(
		"void AppendFur(inout TriangleStream<v2f> outStream, inout v2f output,",
		"v2f lilWebAppendFur(bool tip, inout v2f output,",
	);
	head = head.replace("outStream.Append(output);", "if (!tip) return output;");
	head = head.replace("outStream.Append(output);", "return output;");
	if (head.includes("TriangleStream") || head.includes("outStream"))
		throw new Error("Unconverted fur stream operation");
	writeFileSync(
		resolve(GENERATED_SHADER_ROOT, "hlsl/lil_common_vert_fur.hlsl"),
		`${head}\n#endif\n`,
	);
	writeFileSync(
		resolve(GENERATED_SHADER_ROOT, "hlsl/lil_web_fur_setup.hlsl"),
		source.slice(setup, topology),
	);
	writeFileSync(
		resolve(GENERATED_SHADER_ROOT, "hlsl/lil_pass_forward_fur.web.hlsl"),
		readFileSync(
			resolve(LILTOON_INCLUDES, "lil_pass_forward_fur.hlsl"),
			"utf8",
		),
	);
}
