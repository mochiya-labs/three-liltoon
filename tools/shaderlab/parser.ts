import type {
	ShaderLabShader,
	ShaderLabSubShader,
	SourceBlock,
} from "./types.js";
import { parsePasses, parseRenderState, parseTags } from "./pass-parser.js";
import { parseProperties } from "./property-parser.js";

function isIdentifierCharacter(character: string | undefined): boolean {
	return character !== undefined && /[A-Za-z0-9_]/.test(character);
}

function skipTrivia(source: string, offset: number): number {
	let cursor = offset;
	while (cursor < source.length) {
		if (/\s/.test(source[cursor]!)) {
			cursor += 1;
			continue;
		}
		if (source.startsWith("//", cursor)) {
			const newline = source.indexOf("\n", cursor + 2);
			return newline === -1 ? source.length : skipTrivia(source, newline + 1);
		}
		if (source.startsWith("/*", cursor)) {
			const close = source.indexOf("*/", cursor + 2);
			return close === -1 ? source.length : skipTrivia(source, close + 2);
		}
		break;
	}
	return cursor;
}

function findClosingBrace(source: string, open: number): number {
	let depth = 1;
	let cursor = open + 1;
	let stringDelimiter: string | undefined;
	while (cursor < source.length) {
		const character = source[cursor]!;
		const next = source[cursor + 1];
		if (stringDelimiter) {
			if (character === "\\") cursor += 2;
			else {
				if (character === stringDelimiter) stringDelimiter = undefined;
				cursor += 1;
			}
			continue;
		}
		if (character === '"' || character === "'") {
			stringDelimiter = character;
			cursor += 1;
			continue;
		}
		if (character === "/" && next === "/") {
			const newline = source.indexOf("\n", cursor + 2);
			cursor = newline === -1 ? source.length : newline + 1;
			continue;
		}
		if (character === "/" && next === "*") {
			const close = source.indexOf("*/", cursor + 2);
			cursor = close === -1 ? source.length : close + 2;
			continue;
		}
		if (character === "{") depth += 1;
		if (character === "}") {
			depth -= 1;
			if (depth === 0) return cursor;
		}
		cursor += 1;
	}
	throw new SyntaxError(`Unterminated block starting at offset ${open}`);
}

export function findBlocksAtDepth(
	source: string,
	keyword: string,
	targetDepth = 0,
): SourceBlock[] {
	const blocks: SourceBlock[] = [];
	let depth = 0;
	let cursor = 0;
	let stringDelimiter: string | undefined;
	while (cursor < source.length) {
		const character = source[cursor]!;
		const next = source[cursor + 1];
		if (stringDelimiter) {
			if (character === "\\") cursor += 2;
			else {
				if (character === stringDelimiter) stringDelimiter = undefined;
				cursor += 1;
			}
			continue;
		}
		if (character === '"' || character === "'") {
			stringDelimiter = character;
			cursor += 1;
			continue;
		}
		if (character === "/" && next === "/") {
			const newline = source.indexOf("\n", cursor + 2);
			cursor = newline === -1 ? source.length : newline + 1;
			continue;
		}
		if (character === "/" && next === "*") {
			const close = source.indexOf("*/", cursor + 2);
			cursor = close === -1 ? source.length : close + 2;
			continue;
		}
		if (
			depth === targetDepth &&
			source.startsWith(keyword, cursor) &&
			!isIdentifierCharacter(source[cursor - 1]) &&
			!isIdentifierCharacter(source[cursor + keyword.length])
		) {
			let open = skipTrivia(source, cursor + keyword.length);
			if (source[open] === '"') {
				open += 1;
				while (open < source.length && source[open] !== '"') {
					open += source[open] === "\\" ? 2 : 1;
				}
				open = skipTrivia(source, open + 1);
			}
			if (source[open] === "{") {
				const close = findClosingBrace(source, open);
				blocks.push({
					keyword,
					body: source.slice(open + 1, close),
					start: cursor,
					end: close + 1,
				});
				cursor = close + 1;
				continue;
			}
		}
		if (character === "{") depth += 1;
		if (character === "}") depth -= 1;
		cursor += 1;
	}
	return blocks;
}

export function removeComments(source: string): string {
	return source
		.replace(/\/\*[\s\S]*?\*\//g, (comment) => comment.replace(/[^\n]/g, " "))
		.replace(/\/\/[^\n]*/g, "");
}

export function parseShaderLab(source: string): ShaderLabShader {
	const withoutComments = removeComments(source);
	const shaderMatch = /\bShader\s+"([^"]+)"/.exec(withoutComments);
	if (!shaderMatch)
		throw new SyntaxError("ShaderLab source has no Shader declaration");
	const shaderBlocks = findBlocksAtDepth(source, "Shader", 0);
	if (shaderBlocks.length !== 1) {
		throw new SyntaxError(
			`Expected one Shader block, found ${shaderBlocks.length}`,
		);
	}
	const shaderBody = shaderBlocks[0]!.body;
	const propertiesBlock = findBlocksAtDepth(shaderBody, "Properties", 0)[0];
	const subShaders = findBlocksAtDepth(shaderBody, "SubShader", 0).map(
		(block): ShaderLabSubShader => ({
			tags: parseTags(block.body),
			renderState: parseRenderState(block.body),
			passes: parsePasses(block.body, extractGlobalHlsl(shaderBody)),
			usePasses: [...block.body.matchAll(/\bUsePass\s+"([^"]+)"/g)].map(
				(match) => match[1]!,
			),
		}),
	);
	return {
		name: shaderMatch[1]!,
		properties: propertiesBlock ? parseProperties(propertiesBlock.body) : [],
		subShaders,
	};
}

export function extractGlobalHlsl(source: string): string {
	return [...source.matchAll(/\bHLSLINCLUDE\b([\s\S]*?)\bENDHLSL\b/g)]
		.map((match) => match[1]!.trim())
		.join("\n");
}
