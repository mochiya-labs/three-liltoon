import {
	Bone,
	DataTexture,
	Float32BufferAttribute,
	GLSL3,
	Mesh,
	OrthographicCamera,
	RawShaderMaterial,
	Scene,
	Skeleton,
	SkinnedMesh,
	SphereGeometry,
	Uint16BufferAttribute,
	WebGLRenderer,
	WebGLRenderTarget,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../src/index.js";

export async function verifyOutlinePixels() {
	const renderer = new WebGLRenderer({ antialias: false });
	renderer.setSize(256, 128);
	const release = enableLilToon(renderer);
	const target = new WebGLRenderTarget(256, 128);
	renderer.setRenderTarget(target);
	const scene = new Scene();
	const camera = new OrthographicCamera(-2, 2, 1, -1, 0.1, 20);
	camera.position.z = 5;
	const material = new LilToonMaterial({
		shaderVariant: "Hidden/lilToonOutline",
		properties: {
			_UseOutline: 0,
			_AsUnlit: 1,
			_Color: [1, 1, 1, 1],
			_OutlineWidth: 5,
			_OutlineColor: [1, 0, 0, 1],
			_OutlineFixWidth: 0,
			_OutlineVertexR2Width: 0,
		},
	});
	const geometry = new SphereGeometry(0.55, 32, 24);
	const skinnedGeometry = geometry.clone();
	const count = skinnedGeometry.attributes.position.count;
	const weights = new Float32Array(count * 4);
	for (let i = 0; i < count; i++) weights[i * 4] = 1;
	skinnedGeometry.setAttribute(
		"skinIndex",
		new Uint16BufferAttribute(new Uint16Array(count * 4), 4),
	);
	skinnedGeometry.setAttribute(
		"skinWeight",
		new Float32BufferAttribute(weights, 4),
	);
	const morph = skinnedGeometry.attributes.position.clone();
	for (let i = 0; i < count; i++) morph.setY(i, morph.getY(i) * 1.1);
	skinnedGeometry.morphAttributes.position = [morph];
	const a = new Mesh(geometry, material);
	a.position.x = -1;
	const b = new SkinnedMesh(skinnedGeometry, material);
	b.position.x = 1;
	const bone = new Bone();
	b.add(bone);
	b.bind(new Skeleton([bone]));
	b.morphTargetInfluences![0] = 0.5;
	scene.add(a, b);
	// A host shader deliberately changes generic tangent state. Cached lilToon
	// VAOs must remain correct even though this state is not part of the VAO.
	const hostMaterial = new RawShaderMaterial({
		glslVersion: GLSL3,
		vertexShader: `precision highp float;
 layout(location=0) in vec3 position;
 layout(location=2) in vec4 tangent;
 void main(){gl_Position=vec4(position.xy + vec2(10.0) + tangent.xy,0.0,1.0);}`,
		fragmentShader: `precision highp float; out vec4 color; void main(){color=vec4(0.0);}`,
	});
	hostMaterial.defaultAttributeValues = {
		...hostMaterial.defaultAttributeValues,
		tangent: [0, 0, 0, 0],
	} as typeof hostMaterial.defaultAttributeValues;
	const host = new Mesh(geometry, hostMaterial);
	host.frustumCulled = false;
	host.renderOrder = 100;
	scene.add(host);
	const pixels = new Uint8Array(256 * 128 * 4);
	const render = () => {
		renderer.render(scene, camera);
		renderer.readRenderTargetPixels(target, 0, 0, 256, 128, pixels);
		const red = [0, 0];
		for (let i = 0; i < pixels.length; i += 4)
			if (pixels[i] > 150 && pixels[i + 1] < 40 && pixels[i + 2] < 40)
				red[(i / 4) % 256 < 128 ? 0 : 1]++;
		return red;
	};
	const frames = [render()];
	for (let i = 0; i < 5; i++) {
		a.renderOrder = i % 2;
		b.renderOrder = 1 - (i % 2);
		frames.push(render());
	}
	const stable = frames.every((f) =>
		f.every((n, i) => n > 100 && n === frames[0][i]),
	);
	const memory = { ...renderer.info.memory };
	for (let i = 0; i < 5; i++) render();
	const retained =
		memory.geometries === renderer.info.memory.geometries &&
		memory.textures === renderer.info.memory.textures;
	material.setProperty("_UseOutline", 1);
	const multiIgnored = render().every((n, i) => n === frames[0][i]);
	material.shaderVariant = "lilToon";
	const disabled = render().every((n) => n === 0);
	material.shaderVariant = "Hidden/lilToonOutline";
	const restored = render().every((n, i) => n === frames[0][i]);
	const vector = new DataTexture(new Uint8Array([128, 128, 255, 255]), 1, 1);
	vector.needsUpdate = true;
	material.setTexture("_OutlineVectorTex", vector);
	const vectorFrames = [render(), render(), render()];
	const vectorStable = vectorFrames.every((f) =>
		f.every((n, i) => n > 100 && n === vectorFrames[0][i]),
	);
	const lost = new Promise<void>((resolve) =>
		renderer.domElement.addEventListener("webglcontextlost", () => resolve(), {
			once: true,
		}),
	);
	renderer.forceContextLoss();
	await lost;
	const recovered = new Promise<void>((resolve) =>
		renderer.domElement.addEventListener(
			"webglcontextrestored",
			() => resolve(),
			{ once: true },
		),
	);
	// Allow the loss event dispatch to finish before requesting restoration.
	await new Promise((resolve) => setTimeout(resolve, 100));
	renderer.forceContextRestore();
	await recovered;
	const contextRestored = render().every((n, i) => n === vectorFrames[0][i]);
	const gl = renderer.getContext().getError();
	release();
	scene.clear();
	geometry.dispose();
	skinnedGeometry.dispose();
	b.skeleton.dispose();
	material.dispose();
	vector.dispose();
	hostMaterial.dispose();
	target.dispose();
	renderer.dispose();
	return {
		frames,
		vectorFrames,
		stable,
		vectorStable,
		contextRestored,
		retained,
		multiIgnored,
		disabled,
		restored,
		gl,
	};
}
