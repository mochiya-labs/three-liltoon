import { defineConfig } from "tsup";

export default defineConfig({
  entry: {
    index: "src/index.ts",
    gltf: "src/gltf.ts",
  },
  format: ["esm"],
  dts: true,
  clean: true,
  sourcemap: true,
  splitting: true,
  external: ["three"],
  treeshake: true,
});
