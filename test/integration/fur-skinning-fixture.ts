import {
	Scene,
	PerspectiveCamera,
	WebGLRenderer,
	Mesh,
	SkinnedMesh,
	Bone,
	Skeleton,
	SphereGeometry,
	Float32BufferAttribute,
	Vector3,
	Vector4,
	Matrix4,
	MeshNormalMaterial,
} from "three";
import { LilToonMaterial, enableLilToon } from "../../dist/index.js";
export function verifyFurSkinning(forceCPU = false) {
	const renderer = new WebGLRenderer({ antialias: false });
	renderer.setSize(128, 128);
	const has = renderer.extensions.has.bind(renderer.extensions);
	if (forceCPU)
		renderer.extensions.has = (name) =>
			name === "EXT_color_buffer_float" ? false : has(name);
	const release = enableLilToon(renderer);
	const scene = new Scene();
	const camera = new PerspectiveCamera(35, 1, 0.1, 20);
	camera.position.z = 4;
	const gl = renderer.getContext();
	const read = () => {
		const data = new Uint8Array(128 * 128 * 4);
		gl.readPixels(0, 0, 128, 128, gl.RGBA, gl.UNSIGNED_BYTE, data);
		return data;
	};
	const difference = (a: Uint8Array, b: Uint8Array) => {
		let pixels = 0;
		for (let i = 0; i < a.length; i += 4)
			if (
				Math.max(...[0, 1, 2, 3].map((c) => Math.abs(a[i + c]! - b[i + c]!))) >
				2
			)
				pixels++;
		return pixels;
	};
	const gallery = document.createElement("div");
	gallery.style.cssText =
		"position:fixed;top:0;left:0;z-index:9999;background:red;display:flex";
	document.body.append(gallery);
	const results: any[] = [];
	for (const mode of ["fur", "fur-cutout", "fur-two-pass"] as const) {
		const geometry = new SphereGeometry(0.6, 12, 8);
		const count = geometry.attributes.position!.count;
		const indices = new Float32Array(count * 4),
			weights = new Float32Array(count * 4);
		for (let i = 0; i < count; i++) {
			indices.set([0, 1, 2, 3], i * 4);
			weights.set([0.1, 0.2, 0.3, 0.4], i * 4);
		}
		geometry.setAttribute("skinIndex", new Float32BufferAttribute(indices, 4));
		geometry.setAttribute("skinWeight", new Float32BufferAttribute(weights, 4));
		const morph = geometry.attributes.position!.clone();
		for (let i = 0; i < count; i++) morph.setX(i, morph.getX(i) * 1.15);
		geometry.morphAttributes.position = [morph];
		const material = new LilToonMaterial({
			renderMode: mode,
			properties: {
				_AsUnlit: 1,
				_FurLayerNum: 3,
				_FurVector: new Vector4(0.4, 0.2, 1, 0.15),
				_FurRandomize: 0,
			},
		});
		const mesh = new SkinnedMesh(geometry, material);
		mesh.frustumCulled = false;
		const bones = Array.from({ length: 4 }, () => new Bone());
		mesh.add(...bones);
		mesh.position.set(0.1, 0.05, 0);
		mesh.rotation.z = 0.1;
		mesh.updateMatrixWorld(true);
		mesh.bind(new Skeleton(bones));
		scene.add(mesh);
		const frames = new Map<string, { id: string; version: number }>();
		let stable = true;
		let disposedPasses = 0;
		const direct = renderer.renderBufferDirect;
		renderer.renderBufferDirect = function (...args) {
			const m = args[3] as LilToonMaterial;
			if (m.pass === "fur" || m.pass === "fur-pre") {
				const old = frames.get(m.pass);
				if (!old) m.addEventListener("dispose", () => disposedPasses++);
				if (old && old.id !== m.uuid) stable = false;
				frames.set(m.pass, { id: m.uuid, version: m.version });
			}
			return direct.apply(this, args);
		};
		renderer.render(scene, camera);
		const initial = read();
		// A compositor renders override and fullscreen scenes between avatar draws.
		const normalOverride = new MeshNormalMaterial();
		scene.overrideMaterial = normalOverride;
		renderer.render(scene, camera);
		scene.overrideMaterial = null;
		renderer.render(new Scene(), camera);
		mesh.visible = false;
		renderer.render(scene, camera);
		mesh.visible = true;
		const otherCamera = camera.clone();
		otherCamera.layers.set(1);
		renderer.render(scene, otherCamera);
		normalOverride.dispose();
		bones.forEach((b, i) => {
			b.rotation.z = 0.1 * (i + 1);
			b.position.x = 0.06 * i;
			b.scale.setScalar(1 + 0.03 * i);
		});
		mesh.morphTargetInfluences![0] = 0.65;
		mesh.updateMatrixWorld(true);
		renderer.render(scene, camera);
		const animated = read();
		const preview = document.createElement("img");
		preview.src = renderer.domElement.toDataURL();
		gallery.append(preview);
		renderer.render(scene, camera);
		const repeated = read();
		const passVersions = [...frames.values()].map((v) => v.version);
		renderer.render(scene, camera);
		const stableVersions = [...frames.values()].every(
			(v, i) => v.version === passVersions[i],
		);
		const baked = geometry.clone();
		baked.morphAttributes = {};
		baked.setAttribute(
			"tangent",
			new Float32BufferAttribute(new Float32Array(count * 4), 4),
		);
		baked.deleteAttribute("skinIndex");
		baked.deleteAttribute("skinWeight");
		const position = new Vector3(),
			normal = new Vector3(),
			boneMatrix = new Matrix4(),
			weighted = new Matrix4(),
			combined = new Matrix4(),
			v = new Vector4();
		mesh.skeleton.update();
		for (let i = 0; i < count; i++) {
			mesh.getVertexPosition(i, position);
			baked.attributes.position!.setXYZ(i, position.x, position.y, position.z);
			normal.fromBufferAttribute(geometry.attributes.normal!, i);
			weighted.elements.fill(0);
			for (let k = 0; k < 4; k++) {
				boneMatrix.fromArray(mesh.skeleton.boneMatrices!, k * 16);
				for (let e = 0; e < 16; e++)
					weighted.elements[e]! +=
						boneMatrix.elements[e]! * weights[i * 4 + k]!;
			}
			combined
				.multiplyMatrices(mesh.bindMatrixInverse, weighted)
				.multiply(mesh.bindMatrix);
			v.set(normal.x, normal.y, normal.z, 0).applyMatrix4(combined);
			normal.set(v.x, v.y, v.z).normalize();
			baked.attributes.normal!.setXYZ(i, normal.x, normal.y, normal.z);
			v.set(1, 0, 0, 0).applyMatrix4(combined);
			normal.set(v.x, v.y, v.z).normalize();
			baked.attributes.tangent!.setXYZW(i, normal.x, normal.y, normal.z, 1);
		}
		const reference = new Mesh(baked, material.clone());
		reference.matrixAutoUpdate = false;
		reference.matrix.copy(mesh.matrixWorld);
		reference.frustumCulled = false;
		renderer.renderBufferDirect = direct;
		scene.remove(mesh);
		scene.add(reference);
		renderer.render(scene, camera);

		const referencePreview = document.createElement("img");
		referencePreview.src = renderer.domElement.toDataURL();
		gallery.append(referencePreview);
		results.push({
			mode,
			changed: difference(initial, animated),
			repeatDifference: difference(animated, repeated),
			referenceDifference: difference(animated, read()),
			stable,
			stableVersions,
			disposedPasses,
			distinctPasses: new Set([...frames.values()].map((v) => v.id)).size,
			error: gl.getError(),
		});
		renderer.renderBufferDirect = direct;
		scene.remove(reference);
		geometry.dispose();
		baked.dispose();
		material.dispose();
		reference.material.dispose();
	}
	release();
	renderer.dispose();
	return results;
}
