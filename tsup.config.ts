import { defineConfig } from "tsup";

export default defineConfig({
	entry: {
		index: "src/index.ts",
		gltf: "src/gltf.ts",
		vrm: "src/vrm.ts",
	},
	format: ["esm"],
	dts: true,
	clean: true,
	// Keep the checked-in runtime package minimal for the deployable viewer.
	sourcemap: false,
	splitting: true,
	// Three.js is a peer dependency, including its examples/addons entrypoints.
	external: ["three", /^three\//, "@pixiv/three-vrm"],
	treeshake: true,
});
