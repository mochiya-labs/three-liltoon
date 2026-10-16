import { defineConfig } from "vite";

export default defineConfig({
	// Fixtures import VRM expressions lazily. Prebundle them before testing so
	// dependency discovery cannot reload the page during a GPU comparison.
	optimizeDeps: {
		include: [
			"@pixiv/three-vrm",
			"three/examples/jsm/loaders/GLTFLoader.js",
			"three/examples/jsm/postprocessing/EffectComposer.js",
			"three/examples/jsm/postprocessing/RenderPass.js",
			"three/examples/jsm/postprocessing/OutputPass.js",
		],
	},
});
