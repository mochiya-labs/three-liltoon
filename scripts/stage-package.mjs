import { copyFileSync, mkdirSync } from "node:fs";
import { resolve } from "node:path";

const root = resolve(import.meta.dirname, "..");
const dist = resolve(root, "dist");
const schemaDirectory = resolve(dist, "schema");

mkdirSync(schemaDirectory, { recursive: true });
copyFileSync(
	resolve(root, "schema/MOCHIYA_materials_liltoon.schema.json"),
	resolve(schemaDirectory, "MOCHIYA_materials_liltoon.schema.json"),
);
copyFileSync(
	resolve(root, "THIRD_PARTY_NOTICES.md"),
	resolve(dist, "THIRD_PARTY_NOTICES.md"),
);

process.stdout.write("Staged npm package assets in dist/.\n");
