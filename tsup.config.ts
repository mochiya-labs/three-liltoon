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
  // Three.js is a peer dependency, including its examples/addons entrypoints.
  external: ["three", /^three\//],
  treeshake: true,
});
