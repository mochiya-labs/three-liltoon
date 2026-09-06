import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

export const PROJECT_ROOT = resolve(
	dirname(fileURLToPath(import.meta.url)),
	"..",
);
export const LILTOON_ROOT = resolve(PROJECT_ROOT, "vendor/lilToon");
export const LILTOON_ASSETS = resolve(LILTOON_ROOT, "Assets/lilToon");
export const LILTOON_SHADER = resolve(LILTOON_ASSETS, "Shader");
export const LILTOON_INCLUDES = resolve(LILTOON_SHADER, "Includes");
export const GENERATED_SHADER_ROOT = resolve(PROJECT_ROOT, "shader/generated");
export const GENERATED_SOURCE_ROOT = resolve(PROJECT_ROOT, "src/generated");
