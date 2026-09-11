import {
	AmbientLight,
	Bone,
	DirectionalLight,
	Float32BufferAttribute,
	Mesh,
	MeshBasicMaterial,
	OrthographicCamera,
	PlaneGeometry,
	Scene,
	Skeleton,
	SkinnedMesh,
	Uint16BufferAttribute,
	Vector3,
	WebGLRenderer,
	WebGLRenderTarget,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../src/index.js";

export function verifyMorphRendering() {
	const renderer = new WebGLRenderer({ antialias: false });
	renderer.setSize(128, 128);
	const release = enableLilToon(renderer);
	const target = new WebGLRenderTarget(128, 128);
	renderer.setRenderTarget(target);
	const scene = new Scene();
	const camera = new OrthographicCamera(-1.1, 1.1, 1.1, -1.1, 0.1, 10);
	camera.position.z = 3;
	const light = new DirectionalLight(0xffffff, 1.5);
	light.position.set(1, 2, 3);
	scene.add(light, new AmbientLight(0xffffff, 0.25));
	const material = new LilToonMaterial({
		properties: { _Color: [0.7, 0.2, 0.4, 1], _UseShadow: 0 },
	});
	const pixels = (mesh: Mesh) => {
		scene.add(mesh);
		renderer.render(scene, camera);
		const result = new Uint8Array(128 * 128 * 4);
		renderer.readRenderTargetPixels(target, 0, 0, 128, 128, result);
		scene.remove(mesh);
		return result;
	};
	const difference = (a: Uint8Array, b: Uint8Array) => {
		let sum = 0,
			changed = 0;
		for (let i = 0; i < a.length; i++) {
			const d = Math.abs(a[i] - b[i]);
			sum += d;
			if (d > 1) changed++;
		}
		return { mean: sum / a.length, changed };
	};
	const checks: Record<string, { mean: number; changed: number }> = {};
	for (const relative of [true, false])
		for (const manyActive of [false, true])
			for (const skinned of [false, true]) {
				const geometry = new PlaneGeometry(1, 1, 4, 4);
				const n = geometry.attributes.position.count;
				geometry.morphTargetsRelative = relative;
				for (const channel of ["position", "normal"] as const) {
					const base = geometry.attributes[channel];
					geometry.morphAttributes[channel] = Array.from(
						{ length: 526 },
						(_, i) => {
							const data = new Float32Array(n * 3);
							for (let v = 0; v < n; v++) {
								data[v * 3] =
									(relative ? 0 : base.getX(v)) +
									(i === 69 ? 0.18 : i === 525 ? -0.07 : 0.002);
								data[v * 3 + 1] =
									(relative ? 0 : base.getY(v)) +
									(channel === "position" ? (i === 525 ? 0.16 : 0) : 0.01);
								data[v * 3 + 2] = relative ? 0 : base.getZ(v);
							}
							return new Float32BufferAttribute(data, 3);
						},
					);
				}
				let mesh: Mesh;
				if (skinned) {
					geometry.setAttribute(
						"skinIndex",
						new Uint16BufferAttribute(new Uint16Array(n * 4), 4),
					);
					const weights = new Float32Array(n * 4);
					for (let v = 0; v < n; v++) weights[v * 4] = 1;
					geometry.setAttribute(
						"skinWeight",
						new Float32BufferAttribute(weights, 4),
					);
					const skin = new SkinnedMesh(geometry, material),
						bone = new Bone();
					skin.add(bone);
					skin.bind(new Skeleton([bone]));
					bone.position.x = 0.15;
					mesh = skin;
				} else mesh = new Mesh(geometry, material);
				mesh.morphTargetInfluences!.fill(manyActive ? 0.015 : 0);
				mesh.morphTargetInfluences![69] = 1.25;
				mesh.morphTargetInfluences![525] = -0.5;
				const baked = geometry.clone();
				baked.morphAttributes = {};
				for (let vertex = 0; vertex < n; vertex++) {
					const position = Mesh.prototype.getVertexPosition.call(
						mesh,
						vertex,
						new Vector3(),
					);
					baked.attributes.position.setXYZ(vertex, ...position.toArray());
					const base = new Vector3().fromBufferAttribute(
							geometry.attributes.normal,
							vertex,
						),
						normal = base.clone();
					mesh.morphTargetInfluences!.forEach((weight, i) => {
						const delta = new Vector3().fromBufferAttribute(
							geometry.morphAttributes.normal![i],
							vertex,
						);
						if (!relative) delta.sub(base);
						normal.addScaledVector(delta, weight);
					});
					baked.attributes.normal.setXYZ(vertex, ...normal.toArray());
				}
				const reference = mesh.clone();
				reference.geometry = baked;
				reference.morphTargetInfluences = [];
				// The clone shares the original skeleton, whose posed bone is kept current by the source draw.
				for (const outline of [false, true]) {
					material.setProperty("_UseOutline", Number(outline));
					material.setProperty("_OutlineWidth", 0.07);
					checks[[relative, manyActive, skinned, outline].join("/")] =
						difference(pixels(mesh), pixels(reference));
				}
				const changed = pixels(mesh);
				mesh.morphTargetInfluences!.fill(0);
				checks["reset/" + [relative, manyActive, skinned].join("/")] =
					difference(changed, pixels(mesh));
				(mesh as SkinnedMesh).skeleton?.dispose();
				geometry.dispose();
				baked.dispose();
			}
	const glError = renderer.getContext().getError();
	target.dispose();
	material.dispose();
	release();
	renderer.dispose();
	return { checks, glError };
}

export async function verifyThreeMorphOwnership() {
	const renderer = new WebGLRenderer();
	renderer.setSize(32, 32);
	const gl = renderer.getContext() as WebGL2RenderingContext;
	const limits = {
		arrayLayers: gl.getParameter(gl.MAX_ARRAY_TEXTURE_LAYERS),
		vertexUniformVectors: gl.getParameter(gl.MAX_VERTEX_UNIFORM_VECTORS),
		textureSize: gl.getParameter(gl.MAX_TEXTURE_SIZE),
	};
	const scene = new Scene(),
		camera = new OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 3;
	const material = new LilToonMaterial({ properties: { _AsUnlit: 1 } });
	const stock = new MeshBasicMaterial();
	const captures: {
		count: number;
		sharedTexture: boolean;
		weight: number;
		disposed: boolean;
	}[] = [];
	for (const count of [1, 64, 65, 526, 69]) {
		const geometry = new PlaneGeometry(1, 1);
		geometry.morphTargetsRelative = true;
		geometry.morphAttributes.position = Array.from(
			{ length: count },
			() => new Float32BufferAttribute(new Float32Array(12).fill(0.002), 3),
		);
		const mesh: Mesh = new Mesh(geometry, stock);
		scene.add(mesh);
		const binding = () => {
			const program = gl.getParameter(gl.CURRENT_PROGRAM) as WebGLProgram;
			const unit = gl.getUniform(
				program,
				gl.getUniformLocation(program, "morphTargetsTexture")!,
			);
			const active = gl.getParameter(gl.ACTIVE_TEXTURE);
			gl.activeTexture(gl.TEXTURE0 + unit);
			const texture = gl.getParameter(
				gl.TEXTURE_BINDING_2D_ARRAY,
			) as WebGLTexture;
			gl.activeTexture(active);
			return {
				texture,
				weight: gl.getUniform(
					program,
					gl.getUniformLocation(
						program,
						`morphTargetInfluences[${count - 1}]`,
					)!,
				) as number,
			};
		};
		mesh.morphTargetInfluences!.fill(0.2);
		renderer.render(scene, camera);
		const first = binding();
		mesh.material = material;
		await renderer.compileAsync(scene, camera);
		mesh.morphTargetInfluences![count - 1] = 0.75;
		renderer.render(scene, camera);
		const second = binding();
		scene.remove(mesh);
		geometry.dispose();
		captures.push({
			count,
			sharedTexture: first.texture !== null && first.texture === second.texture,
			weight: second.weight,
			disposed: !gl.isTexture(first.texture),
		});
	}
	const plain = new Mesh(new PlaneGeometry(1, 1), material);
	scene.add(plain);
	renderer.render(scene, camera);
	const staticReset = material.defines.MORPHTARGETS_COUNT === 0;
	plain.geometry.dispose();
	const glError = gl.getError();
	material.dispose();
	stock.dispose();
	renderer.dispose();
	return { limits, captures, staticReset, glError };
}
