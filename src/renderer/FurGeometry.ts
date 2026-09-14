import {
	BufferGeometry,
	Float32BufferAttribute,
	Uint32BufferAttribute,
	DataTexture,
	FloatType,
	RGBAFormat,
	Vector3,
	Matrix4,
	Mesh,
	type SkinnedMesh,
} from "three";

/** Upstream AppendFur strip topology, expressed as barycentric root/tip vertices. */
export function furFactors(layers: number): number[][] {
	const a = [1, 0, 0],
		b = [0, 1, 0],
		c = [0, 0, 1];
	const ab = [0.5, 0.5, 0],
		bc = [0, 0.5, 0.5],
		ac = [0.5, 0, 0.5];
	const factors =
		layers === 1 ? [a, b, c] : layers >= 2 ? [a, bc, b, ac, c, ab] : [];
	if (layers >= 3)
		factors.push(
			[1 / 6, 4 / 6, 1 / 6],
			bc,
			[1 / 6, 1 / 6, 4 / 6],
			ac,
			[4 / 6, 1 / 6, 1 / 6],
			ab,
		);
	factors.push(a);
	return factors;
}

/** GPU evaluates original per-corner fur shading before barycentric interpolation.
 * CPU packs source attributes and morphs; the GPU applies skinning to fur corners.
 */
export class FurGeometry {
	readonly geometry = new BufferGeometry();
	readonly texture: DataTexture;
	private readonly data: Float32Array;
	private staticVersion = "";
	private staticAttributes = new Map<string, unknown>();
	private pose = new Float64Array(0);
	private readonly p = new Vector3();
	private readonly n = new Vector3();
	private readonly delta = new Vector3();
	private readonly tangent = new Vector3();
	private readonly base = new Vector3();
	private readonly bone = new Matrix4();
	private readonly weighted = new Matrix4();
	private readonly combined = new Matrix4();

	constructor(
		readonly mesh: Mesh,
		layers: number,
		maxSize: number,
	) {
		const source = mesh.geometry,
			count = source.attributes.position!.count;
		const texels = count * 8,
			width = Math.min(maxSize, Math.max(1, texels));
		const height = Math.max(1, Math.ceil(texels / width));
		if (height > maxSize)
			throw new Error(
				"[three-liltoon] Fur vertex data exceeds MAX_TEXTURE_SIZE",
			);
		this.data = new Float32Array(width * height * 4);
		this.texture = new DataTexture(
			this.data,
			width,
			height,
			RGBAFormat,
			FloatType,
		);
		this.texture.needsUpdate = true;
		const factors = furFactors(layers),
			stripSize = factors.length * 2;
		const length = source.index?.count ?? count;
		const triangles = Math.floor(length / 3),
			vertexCount = triangles * stripSize;
		const positions = new Float32Array(vertexCount * 4),
			corners = new Float32Array(vertexCount * 3);
		const perTriangle = Math.max(0, stripSize - 2) * 3;
		const indices = new Uint32Array(triangles * perTriangle);
		for (let t = 0; t + 2 < length; t += 3) {
			const ids = [0, 1, 2].map((n) => source.index?.getX(t + n) ?? t + n);
			const start = (t / 3) * stripSize;
			let vertex = start;
			for (const factor of factors)
				for (const tip of [0, 1]) {
					positions.set([...factor, tip], vertex * 4);
					corners.set(ids, vertex * 3);
					vertex++;
				}
			for (let j = 0; j + 2 < stripSize; j++)
				indices.set(
					[start + j + (j % 2), start + j + 1 - (j % 2), start + j + 2],
					(t / 3) * perTriangle + j * 3,
				);
		}
		this.geometry.setAttribute(
			"position",
			new Float32BufferAttribute(positions, 4),
		);
		this.geometry.setAttribute(
			"normal",
			new Float32BufferAttribute(corners, 3),
		);
		this.geometry.setIndex(new Uint32BufferAttribute(indices, 1));
		for (const group of source.groups)
			this.geometry.addGroup(
				Math.floor(group.start / 3) * perTriangle,
				Math.floor(group.count / 3) * perTriangle,
				group.materialIndex,
			);
		this.geometry.setDrawRange(
			Math.floor(source.drawRange.start / 3) * perTriangle,
			Number.isFinite(source.drawRange.count)
				? Math.floor(source.drawRange.count / 3) * perTriangle
				: Infinity,
		);
	}
	update(cpuSkinning = false) {
		const mesh = this.mesh,
			source = mesh.geometry,
			attrs = source.attributes;
		const tracked: Record<string, (typeof attrs)[string]> = { ...attrs };
		for (const [name, targets] of Object.entries(source.morphAttributes))
			targets?.forEach((attribute, i) => {
				tracked[name + ":morph:" + i] = attribute;
			});
		const version =
			String(cpuSkinning) +
			String(source.morphTargetsRelative) +
			Object.entries(tracked)
				.map(
					([key, a]) =>
						key +
						":" +
						a.count +
						":" +
						("version" in a ? a.version : a.data.version),
				)
				.join("|");
		const skin = mesh as SkinnedMesh;
		const weights = mesh.morphTargetInfluences ?? [];
		const useCpuSkin = cpuSkinning && skin.isSkinnedMesh;
		if (useCpuSkin) skin.skeleton.update();
		const poseLength =
			weights.length +
			(useCpuSkin ? skin.skeleton.boneMatrices!.length + 32 : 0);
		let changed = this.pose.length !== poseLength;
		if (changed) this.pose = new Float64Array(poseLength);
		let cursor = 0;
		const compare = (values: ArrayLike<number>) => {
			for (let i = 0; i < values.length; i++, cursor++) {
				if (this.pose[cursor] !== values[i]) changed = true;
				this.pose[cursor] = values[i]!;
			}
		};

		compare(weights);
		if (useCpuSkin) {
			compare(skin.skeleton.boneMatrices!);
			compare(skin.bindMatrix.elements);
			compare(skin.bindMatrixInverse.elements);
		}

		if (
			!changed &&
			this.staticVersion === version &&
			Object.entries(tracked).every(
				([key, a]) => this.staticAttributes.get(key) === a,
			)
		)
			return;
		this.staticVersion = version;
		this.staticAttributes = new Map(Object.entries(tracked));
		const { p, n, delta, tangent, base } = this;
		for (let i = 0; i < attrs.position!.count; i++) {
			Mesh.prototype.getVertexPosition.call(mesh, i, p);
			n.fromBufferAttribute(attrs.normal!, i);
			const normals = source.morphAttributes.normal;
			if (normals && mesh.morphTargetInfluences) {
				base.copy(n);
				for (let j = 0; j < normals.length; j++) {
					const weight = mesh.morphTargetInfluences[j] ?? 0;
					if (!weight) continue;
					delta.fromBufferAttribute(normals[j]!, i);
					if (!source.morphTargetsRelative) delta.sub(base);
					n.addScaledVector(delta, weight);
				}
			}
			if (attrs.tangent) tangent.fromBufferAttribute(attrs.tangent, i);
			else tangent.set(1, 0, 0);
			if (useCpuSkin) {
				skin.applyBoneTransform(i, p);
				const { weighted, bone, combined } = this;
				weighted.elements.fill(0);
				for (let k = 0; k < 4; k++) {
					const weight = attrs.skinWeight!.getComponent(i, k);
					if (weight === 0) continue;
					bone.fromArray(
						skin.skeleton.boneMatrices!,
						attrs.skinIndex!.getComponent(i, k) * 16,
					);
					for (let e = 0; e < 16; e++)
						weighted.elements[e]! += bone.elements[e]! * weight;
				}
				combined
					.multiplyMatrices(skin.bindMatrixInverse, weighted)
					.multiply(skin.bindMatrix);
				n.transformDirection(combined);
				tangent.transformDirection(combined);
			}
			const offset = i * 32;
			this.data[offset] = p.x;
			this.data[offset + 1] = p.y;
			this.data[offset + 2] = p.z;
			this.data[offset + 3] = 1;
			this.data[offset + 4] = n.x;
			this.data[offset + 5] = n.y;
			this.data[offset + 6] = n.z;
			this.data[offset + 7] = 0;
			this.data[offset + 8] = tangent.x;
			this.data[offset + 9] = tangent.y;
			this.data[offset + 10] = tangent.z;
			this.data[offset + 11] = attrs.tangent?.getW(i) ?? 1;
			this.data[offset + 12] = attrs.color?.getX(i) ?? 1;
			this.data[offset + 13] = attrs.color?.getY(i) ?? 1;
			this.data[offset + 14] = attrs.color?.getZ(i) ?? 1;
			this.data[offset + 15] =
				attrs.color && attrs.color.itemSize > 3 ? attrs.color.getW(i) : 1;
			for (let k = 0; k < 4; k++) {
				this.data[offset + 24 + k] = skin.isSkinnedMesh
					? attrs.skinIndex!.getComponent(i, k)
					: 0;
				this.data[offset + 28 + k] = skin.isSkinnedMesh
					? attrs.skinWeight!.getComponent(i, k)
					: k === 0
						? 1
						: 0;
			}
			for (let u = 0; u < 4; u++) {
				const uv = attrs[u === 0 ? "uv" : `uv${u}`];
				this.data[offset + 16 + u * 2] = uv?.getX(i) ?? 0;
				this.data[offset + 17 + u * 2] = uv?.getY(i) ?? 0;
			}
		}
		this.texture.needsUpdate = true;
	}
	dispose() {
		this.geometry.dispose();
		this.texture.dispose();
	}
}
