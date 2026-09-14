import {
	FloatType,
	GLSL3,
	Mesh,
	NearestFilter,
	PlaneGeometry,
	RawShaderMaterial,
	Scene,
	Vector4,
	WebGLRenderTarget,
	type Camera,
	type DataTexture,
	type SkinnedMesh,
	type WebGLRenderer,
} from "three";

/** Deform source texels once, before the much larger ribbon draws. */
export class FurDeformation {
	readonly target: WebGLRenderTarget;
	private readonly material: RawShaderMaterial;
	private readonly scene = new Scene();
	private readonly quad: Mesh;
	private version = -1;
	private pose = new Float32Array(0);
	private renderer?: WebGLRenderer;
	private readonly invalidate = () => {
		this.version = -1;
	};
	constructor(source: DataTexture) {
		this.target = new WebGLRenderTarget(
			source.image.width,
			source.image.height,
			{
				type: FloatType,
				minFilter: NearestFilter,
				magFilter: NearestFilter,
				depthBuffer: false,
				stencilBuffer: false,
			},
		);
		this.material = new RawShaderMaterial({
			glslVersion: GLSL3,
			depthTest: false,
			depthWrite: false,
			uniforms: {
				sourceVertices: { value: source },
				bones: { value: null },
				bindMatrix: { value: null },
				bindMatrixInverse: { value: null },
			},
			vertexShader:
				"precision highp float;in vec3 position;void main(){gl_Position=vec4(position.xy,0.0,1.0);}",
			fragmentShader: `
precision highp float;
precision highp int;
uniform highp sampler2D sourceVertices;
uniform highp sampler2D bones;
uniform mat4 bindMatrix;
uniform mat4 bindMatrixInverse;
out vec4 result;

vec4 loadSource(int index) {
    ivec2 size = textureSize(sourceVertices, 0);
    return texelFetch(sourceVertices, ivec2(index % size.x, index / size.x), 0);
}
vec4 loadBone(int index) {
    int width = textureSize(bones, 0).x;
    return texelFetch(bones, ivec2(index % width, index / width), 0);
}
mat4 bone(int index) {
    index *= 4;
    return mat4(loadBone(index), loadBone(index + 1), loadBone(index + 2), loadBone(index + 3));
}
vec3 safeNormalize(vec3 value) {
    float magnitude = length(value);
    return magnitude > 0.0 ? value / magnitude : vec3(0.0);
}
void main() {
    ivec2 coord = ivec2(gl_FragCoord.xy);
    int index = coord.y * textureSize(sourceVertices, 0).x + coord.x;
    int field = index % 8;
    result = texelFetch(sourceVertices, coord, 0);
    // UVs, colors, joint indices and weights pass through unchanged.
    if (field > 2) return;
    int base = index - field;
    ivec4 ids = ivec4(loadSource(base + 6));
    vec4 weights = loadSource(base + 7);
    mat4 skin = bone(ids.x) * weights.x + bone(ids.y) * weights.y
              + bone(ids.z) * weights.z + bone(ids.w) * weights.w;
    mat4 transform = bindMatrixInverse * skin * bindMatrix;
    if (field == 0) result = vec4((transform * vec4(result.xyz, 1.0)).xyz, 1.0);
    else result = vec4(safeNormalize(mat3(transform) * result.xyz), result.w);
}
`,
		});
		this.quad = new Mesh(new PlaneGeometry(2, 2), this.material);
		this.quad.frustumCulled = false;
		this.scene.add(this.quad);
	}
	update(
		renderer: WebGLRenderer,
		render: WebGLRenderer["render"],
		mesh: SkinnedMesh,
		source: DataTexture,
		camera: Camera,
	) {
		if (!this.renderer) {
			this.renderer = renderer;
			renderer.domElement.addEventListener(
				"webglcontextrestored",
				this.invalidate,
			);
		}
		// The owning surface draw has already updated Three's skeleton matrices.
		const skeleton = mesh.skeleton;
		if (!skeleton.boneTexture) skeleton.computeBoneTexture();

		const matrices = skeleton.boneMatrices!;
		const length = matrices.length + 32;
		let changed =
			this.version !== source.version || this.pose.length !== length;
		if (this.pose.length !== length) this.pose = new Float32Array(length);
		let index = 0;
		for (const values of [
			matrices,
			mesh.bindMatrix.elements,
			mesh.bindMatrixInverse.elements,
		])
			for (const value of values) {
				const f = Math.fround(value);
				if (this.pose[index] !== f) changed = true;
				this.pose[index++] = f;
			}
		if (!changed) return;
		this.material.uniforms.bones!.value = skeleton.boneTexture;
		this.material.uniforms.bindMatrix!.value = mesh.bindMatrix;
		this.material.uniforms.bindMatrixInverse!.value = mesh.bindMatrixInverse;
		const target = renderer.getRenderTarget(),
			face = renderer.getActiveCubeFace(),
			level = renderer.getActiveMipmapLevel();
		const viewport = renderer.getViewport(new Vector4()),
			scissor = renderer.getScissor(new Vector4()),
			scissorTest = renderer.getScissorTest();
		const auto = renderer.autoClear,
			info = renderer.info.autoReset,
			shadows = renderer.shadowMap.autoUpdate,
			needs = renderer.shadowMap.needsUpdate;
		this.version = -1;
		this.quad.layers.mask = camera.layers.mask;
		try {
			renderer.autoClear = false;
			renderer.info.autoReset = false;
			renderer.shadowMap.autoUpdate = false;
			renderer.shadowMap.needsUpdate = false;
			renderer.setRenderTarget(this.target);
			renderer.setScissorTest(false);
			render.call(renderer, this.scene, camera);
			this.version = source.version;
		} finally {
			renderer.setRenderTarget(target, face, level);
			renderer.setViewport(viewport);
			renderer.setScissor(scissor);
			renderer.setScissorTest(scissorTest);
			renderer.autoClear = auto;
			renderer.info.autoReset = info;
			renderer.shadowMap.autoUpdate = shadows;
			renderer.shadowMap.needsUpdate = needs;
		}
	}
	dispose() {
		this.renderer?.domElement.removeEventListener(
			"webglcontextrestored",
			this.invalidate,
		);
		this.target.dispose();
		this.quad.geometry.dispose();
		this.material.dispose();
	}
}
