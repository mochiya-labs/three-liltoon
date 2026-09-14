export { LilToonMaterialFactory, LilToonMaterialLoader } from './chunk-W6OLKWPZ.js';
import { LilToonMaterial, setGlobalProperty, applyLilToonPassState } from './chunk-RBNOH5NO.js';
export { GLTFLilToonExtension, LILTOON_DEFAULTS, LILTOON_GLTF_EXTENSION, LILTOON_GLTF_SPEC_VERSION, LILTOON_UPSTREAM_COMMIT, LILTOON_UPSTREAM_VERSION, LilToonEnvironmentAdapter, LilToonLightAdapter, LilToonMaterial, LilToonShadowAdapter, THREE_VERSION_RANGE, UnsupportedFeatureError, detectLilToonFeatures } from './chunk-RBNOH5NO.js';
import { MeshBasicMaterial, MeshDepthMaterial, RGBADepthPacking, MeshDistanceMaterial, SkinnedMesh, Mesh, OneFactor, ZeroFactor, CustomBlending, BufferGeometry, Scene, Vector4, SRGBColorSpace, HalfFloatType, FloatType, Vector2, NoColorSpace, UnsignedByteType, FramebufferTexture, DataTexture, RGBAFormat, Float32BufferAttribute, Uint32BufferAttribute, Vector3, Matrix4, WebGLRenderTarget, NearestFilter, RawShaderMaterial, GLSL3, PlaneGeometry } from 'three';

// src/renderer/passOwnership.ts
function ownsPassSource(root, mesh, source) {
  if (source.pass !== "forward") return false;
  const assigned = Array.isArray(mesh.material) ? mesh.material.includes(source) : mesh.material === source;
  if (!assigned) return false;
  for (let node = mesh; node; node = node.parent)
    if (node === root) return true;
  return false;
}

// src/renderer/AuxiliaryPassDraw.ts
function syncPassMaterial(source, target) {
  source.getProperty("_Color");
  target.renderMode = source.renderMode;
  target.transparencyMode = source.transparencyMode;
  for (const [key, value] of Object.entries(source.lilToonProperties)) {
    target.lilToonProperties[key] = value;
    setGlobalProperty(target.globalUniforms, key, value);
  }
  target.setProperty("_Color", source.getProperty("_Color"));
  for (const [key, value] of Object.entries(source.lilToonTextures))
    if (target.lilToonTextures[key] !== value) target.setTexture(key, value);
  applyLilToonPassState(
    target,
    source.renderMode,
    source.lilToonProperties,
    target.pass
  );
}
var AuxiliaryPassDraw = class {
  recipes = /* @__PURE__ */ new Map();
  depth = 0;
  begin() {
    this.depth++;
  }
  end() {
    if (--this.depth === 0) {
      for (const r of this.recipes.values())
        if (!ownsPassSource(r.owner, r.mesh, r.source) || r.mesh.geometry !== r.sourceGeometry || r.mode !== r.source.renderMode || r.transparencyMode !== r.source.transparencyMode)
          r.release();
    }
  }
  draw(renderer, render, mesh, source, pass, scene, camera, group, configure) {
    const key = `${mesh.uuid}:${mesh.geometry.uuid}:${source.uuid}:${pass}`;
    let r = this.recipes.get(key);
    if (r && (r.mode !== source.renderMode || r.transparencyMode !== source.transparencyMode)) {
      r.release();
      r = void 0;
    }
    if (!r) {
      const geometry2 = new BufferGeometry(), sourceGeometry = mesh.geometry;
      const material2 = new LilToonMaterial({
        renderMode: source.renderMode,
        pass,
        properties: source.lilToonProperties,
        textures: source.lilToonTextures
      });
      const proxy2 = mesh.isSkinnedMesh ? new SkinnedMesh(geometry2, material2) : new Mesh(geometry2, material2);
      proxy2.matrixAutoUpdate = false;
      proxy2.frustumCulled = false;
      const temporary = new Scene();
      temporary.add(proxy2);
      const release = () => {
        source.removeEventListener("dispose", release);
        sourceGeometry.removeEventListener("dispose", release);
        geometry2.attributes = {};
        geometry2.index = null;
        geometry2.morphAttributes = {};
        geometry2.dispose();
        material2.dispose();
        this.recipes.delete(key);
      };
      r = {
        mesh,
        owner: scene,
        sourceGeometry,
        mode: source.renderMode,
        transparencyMode: source.transparencyMode,
        source,
        geometry: geometry2,
        material: material2,
        proxy: proxy2,
        scene: temporary,
        release
      };
      this.recipes.set(key, r);
      source.addEventListener("dispose", release);
      sourceGeometry.addEventListener("dispose", release);
    }
    r.owner = scene;
    const { geometry, material, proxy } = r;
    syncPassMaterial(source, material);
    geometry.attributes = mesh.geometry.attributes;
    geometry.index = mesh.geometry.index;
    geometry.morphAttributes = mesh.geometry.morphAttributes;
    geometry.morphTargetsRelative = mesh.geometry.morphTargetsRelative;
    const range = mesh.geometry.drawRange, start = Math.max(range.start, group?.start ?? 0);
    geometry.setDrawRange(
      start,
      Math.max(
        0,
        Math.min(
          range.start + range.count,
          group ? group.start + group.count : Infinity
        ) - start
      )
    );
    proxy.matrix.copy(mesh.matrixWorld);
    proxy.layers.mask = mesh.layers.mask;
    proxy.morphTargetInfluences = mesh.morphTargetInfluences;
    if (proxy.isSkinnedMesh) {
      const skin = mesh, out = proxy;
      out.skeleton = skin.skeleton;
      out.bindMode = skin.bindMode;
      out.bindMatrix.copy(skin.bindMatrix);
      out.bindMatrixInverse.copy(skin.bindMatrixInverse);
    }
    const before = material.onBeforeRender;
    material.onBeforeRender = (renderer2, _scene, camera2, geometry2, object, group2) => {
      before.call(material, renderer2, scene, camera2, geometry2, object, group2);
      configure?.(material);
    };
    const auto = renderer.autoClear, info = renderer.info.autoReset, shadows = renderer.shadowMap.autoUpdate, needs = renderer.shadowMap.needsUpdate;
    const viewport = renderer.getViewport(new Vector4()), scissor = renderer.getScissor(new Vector4()), scissorTest = renderer.getScissorTest();
    try {
      renderer.autoClear = false;
      renderer.info.autoReset = false;
      renderer.shadowMap.autoUpdate = false;
      renderer.shadowMap.needsUpdate = false;
      render.call(renderer, r.scene, camera);
    } finally {
      material.onBeforeRender = before;
      renderer.autoClear = auto;
      renderer.info.autoReset = info;
      renderer.shadowMap.autoUpdate = shadows;
      renderer.shadowMap.needsUpdate = needs;
      renderer.setViewport(viewport);
      renderer.setScissor(scissor);
      renderer.setScissorTest(scissorTest);
    }
  }
  dispose() {
    for (const r of this.recipes.values()) r.release();
  }
};

// src/renderer/SceneColorPasses.ts
var SceneColorPasses = class {
  captures = [];
  grabs = [];
  blur = new AuxiliaryPassDraw();
  resolves = [];
  depth = 0;
  gems = /* @__PURE__ */ new Map();
  prepare(renderer, scene, render) {
    const slot = this.depth++;
    this.blur.begin();
    let captured;
    const undo = [];
    scene.traverse((node) => {
      const mesh = node;
      if (!mesh.isMesh) return;
      const materials = Array.isArray(mesh.material) ? mesh.material : [mesh.material];
      if (!materials.some(
        (m) => m instanceof LilToonMaterial && ["refraction", "refraction-blur", "gem"].includes(m.renderMode) && m.pass === "forward"
      ))
        return;
      const before = mesh.onBeforeRender;
      const hook = (...args) => {
        before.apply(mesh, args);
        const material = args[4];
        if (!(material instanceof LilToonMaterial) || !["refraction", "refraction-blur", "gem"].includes(
          material.renderMode
        ) || material.pass !== "forward")
          return;
        if (!captured) {
          const target = renderer.getRenderTarget();
          const size = target ? new Vector2(target.width, target.height) : renderer.getDrawingBufferSize(new Vector2());
          const colorSpace = target?.texture.colorSpace ?? NoColorSpace;
          let texture = this.captures[slot];
          if (!texture || texture.image.width !== size.x || texture.image.height !== size.y || texture.colorSpace !== colorSpace || texture.type !== (target?.texture.type ?? UnsignedByteType)) {
            texture?.dispose();
            texture = new FramebufferTexture(size.x, size.y);
            texture.colorSpace = colorSpace;
            if (target) texture.type = target.texture.type;
            this.captures[slot] = texture;
          }
          this.capture(renderer, texture, slot);
          captured = texture;
        }
        material.setSystemTexture("__background", captured);
        material.globalUniforms.uBackgroundIsSRGB = !renderer.getRenderTarget() && renderer.outputColorSpace === SRGBColorSpace ? 1 : 0;
        if (material.renderMode === "refraction-blur") {
          const background = captured;
          this.blur.draw(
            renderer,
            render,
            mesh,
            material,
            "refraction-blur-pre",
            scene,
            args[2],
            args[5],
            (pass) => {
              pass.setSystemTexture("__background", background);
              pass.setSystemTexture("__grab", background);
              pass.globalUniforms.uBackgroundIsSRGB = material.globalUniforms.uBackgroundIsSRGB;
            }
          );
          let grab = this.grabs[slot];
          if (!grab || grab.image.width !== background.image.width || grab.image.height !== background.image.height || grab.type !== background.type || grab.colorSpace !== background.colorSpace) {
            grab?.dispose();
            grab = new FramebufferTexture(
              background.image.width,
              background.image.height
            );
            grab.type = background.type;
            grab.colorSpace = background.colorSpace;
            this.grabs[slot] = grab;
          }
          this.capture(renderer, grab, slot);
          material.setSystemTexture("__grab", grab);
        }
        if (material.renderMode === "gem")
          this.clearGem(
            renderer,
            render,
            mesh,
            material,
            scene,
            args[2],
            args[5]
          );
      };
      mesh.onBeforeRender = hook;
      undo.push(() => {
        if (mesh.onBeforeRender === hook) mesh.onBeforeRender = before;
      });
    });
    return () => {
      undo.reverse().forEach((restore) => restore());
      this.blur.end();
      if (--this.depth === 0) {
        for (const recipe of this.gems.values())
          if (!ownsPassSource(recipe.owner, recipe.mesh, recipe.source) || recipe.mesh.geometry !== recipe.sourceGeometry || recipe.source.renderMode !== "gem")
            recipe.release();
      }
    };
  }
  clearGem(renderer, render, mesh, source, owner, camera, group) {
    const key = `${mesh.uuid}:${source.uuid}`;
    let recipe = this.gems.get(key);
    if (recipe && (recipe.sourceGeometry !== mesh.geometry || recipe.source !== source)) {
      recipe.release();
      recipe = void 0;
    }
    if (!recipe) {
      const material2 = new MeshBasicMaterial({
        color: 0,
        blending: CustomBlending,
        blendSrc: OneFactor,
        blendDst: ZeroFactor,
        blendSrcAlpha: ZeroFactor,
        blendDstAlpha: OneFactor
      });
      const geometry2 = new BufferGeometry(), sourceGeometry = mesh.geometry;
      const proxy2 = mesh.isSkinnedMesh ? new SkinnedMesh(geometry2, material2) : new Mesh(geometry2, material2);
      const temporary2 = new Scene();
      temporary2.add(proxy2);
      const release = () => {
        sourceGeometry.removeEventListener("dispose", release);
        source.removeEventListener("dispose", release);
        geometry2.attributes = {};
        geometry2.index = null;
        geometry2.morphAttributes = {};
        geometry2.dispose();
        material2.dispose();
        this.gems.delete(key);
      };
      recipe = {
        mesh,
        owner,
        source,
        sourceGeometry,
        geometry: geometry2,
        material: material2,
        proxy: proxy2,
        scene: temporary2,
        release
      };
      this.gems.set(key, recipe);
      sourceGeometry.addEventListener("dispose", release);
      source.addEventListener("dispose", release);
    }
    recipe.owner = owner;
    const { material, geometry, proxy, scene: temporary } = recipe;
    material.side = source.side;
    material.depthWrite = source.depthWrite;
    material.depthTest = source.depthTest;
    material.depthFunc = source.depthFunc;
    material.stencilWrite = source.stencilWrite;
    for (const key2 of [
      "stencilRef",
      "stencilFunc",
      "stencilFuncMask",
      "stencilWriteMask",
      "stencilFail",
      "stencilZFail",
      "stencilZPass",
      "colorWrite",
      "polygonOffset",
      "polygonOffsetFactor",
      "polygonOffsetUnits"
    ])
      material[key2] = source[key2];
    geometry.index = mesh.geometry.index;
    geometry.attributes = mesh.geometry.attributes;
    geometry.morphAttributes = mesh.geometry.morphAttributes;
    geometry.morphTargetsRelative = mesh.geometry.morphTargetsRelative;
    const range = mesh.geometry.drawRange;
    const start = Math.max(range.start, group?.start ?? 0);
    geometry.setDrawRange(
      start,
      Math.max(
        0,
        Math.min(
          range.start + range.count,
          group ? group.start + group.count : Infinity
        ) - start
      )
    );
    proxy.matrixAutoUpdate = false;
    proxy.matrix.copy(mesh.matrixWorld);
    proxy.layers.mask = mesh.layers.mask;
    proxy.frustumCulled = false;
    proxy.morphTargetInfluences = mesh.morphTargetInfluences;
    if (proxy.isSkinnedMesh) {
      const skin = mesh, out = proxy;
      out.skeleton = skin.skeleton;
      out.bindMode = skin.bindMode;
      out.bindMatrix.copy(skin.bindMatrix);
      out.bindMatrixInverse.copy(skin.bindMatrixInverse);
    }
    const autoClear = renderer.autoClear, autoReset = renderer.info.autoReset;
    const shadowUpdate = renderer.shadowMap.autoUpdate, shadowNeeds = renderer.shadowMap.needsUpdate;
    const viewport = renderer.getViewport(new Vector4()), scissor = renderer.getScissor(new Vector4()), scissorTest = renderer.getScissorTest();
    try {
      renderer.autoClear = false;
      renderer.info.autoReset = false;
      renderer.shadowMap.autoUpdate = false;
      renderer.shadowMap.needsUpdate = false;
      render.call(renderer, temporary, camera);
    } finally {
      renderer.autoClear = autoClear;
      renderer.info.autoReset = autoReset;
      renderer.shadowMap.autoUpdate = shadowUpdate;
      renderer.shadowMap.needsUpdate = shadowNeeds;
      renderer.setViewport(viewport);
      renderer.setScissor(scissor);
      renderer.setScissorTest(scissorTest);
    }
  }
  capture(renderer, texture, slot) {
    const gl = renderer.getContext();
    if (!renderer.getRenderTarget() || gl.getParameter(gl.SAMPLES) === 0) {
      renderer.copyFramebufferToTexture(texture);
      return;
    }
    const read = gl.getParameter(gl.READ_FRAMEBUFFER_BINDING), draw = gl.getParameter(gl.DRAW_FRAMEBUFFER_BINDING), rb = gl.getParameter(gl.RENDERBUFFER_BINDING);
    const scissorEnabled = gl.isEnabled(gl.SCISSOR_TEST);
    const { width, height } = texture.image;
    const format = texture.colorSpace === SRGBColorSpace ? gl.SRGB8_ALPHA8 : texture.type === HalfFloatType ? gl.RGBA16F : texture.type === FloatType ? gl.RGBA32F : gl.RGBA8;
    const key = `${width}:${height}:${format}`;
    let resolve = this.resolves[slot];
    try {
      if (!resolve || resolve.key !== key) {
        if (resolve) {
          gl.deleteFramebuffer(resolve.framebuffer);
          gl.deleteRenderbuffer(resolve.color);
        }
        const framebuffer = gl.createFramebuffer(), color = gl.createRenderbuffer();
        if (!framebuffer || !color)
          throw new Error(
            "[three-liltoon] Cannot allocate scene-color resolve"
          );
        resolve = { gl, framebuffer, color, key };
        this.resolves[slot] = resolve;
        gl.bindRenderbuffer(gl.RENDERBUFFER, color);
        gl.renderbufferStorage(gl.RENDERBUFFER, format, width, height);
        gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, framebuffer);
        gl.framebufferRenderbuffer(
          gl.DRAW_FRAMEBUFFER,
          gl.COLOR_ATTACHMENT0,
          gl.RENDERBUFFER,
          color
        );
        if (gl.checkFramebufferStatus(gl.DRAW_FRAMEBUFFER) !== gl.FRAMEBUFFER_COMPLETE)
          throw new Error(
            "[three-liltoon] Scene-color resolve format is unsupported"
          );
      }
      gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, resolve.framebuffer);
      gl.disable(gl.SCISSOR_TEST);
      gl.blitFramebuffer(
        0,
        0,
        width,
        height,
        0,
        0,
        width,
        height,
        gl.COLOR_BUFFER_BIT,
        gl.NEAREST
      );
      gl.bindFramebuffer(gl.READ_FRAMEBUFFER, resolve.framebuffer);
      renderer.copyFramebufferToTexture(texture);
    } finally {
      gl.bindFramebuffer(gl.READ_FRAMEBUFFER, read);
      gl.bindFramebuffer(gl.DRAW_FRAMEBUFFER, draw);
      gl.bindRenderbuffer(gl.RENDERBUFFER, rb);
      if (scissorEnabled) gl.enable(gl.SCISSOR_TEST);
    }
  }
  dispose() {
    this.blur.dispose();
    for (const texture of this.grabs) texture.dispose();
    this.grabs = [];
    for (const recipe of this.gems.values()) recipe.release();
    for (const texture of this.captures) texture.dispose();
    this.captures = [];
    for (const r of this.resolves) {
      r.gl.deleteFramebuffer(r.framebuffer);
      r.gl.deleteRenderbuffer(r.color);
    }
    this.resolves = [];
  }
};
var FurDeformation = class {
  target;
  material;
  scene = new Scene();
  quad;
  version = -1;
  pose = new Float32Array(0);
  renderer;
  invalidate = () => {
    this.version = -1;
  };
  constructor(source) {
    this.target = new WebGLRenderTarget(
      source.image.width,
      source.image.height,
      {
        type: FloatType,
        minFilter: NearestFilter,
        magFilter: NearestFilter,
        depthBuffer: false,
        stencilBuffer: false
      }
    );
    this.material = new RawShaderMaterial({
      glslVersion: GLSL3,
      depthTest: false,
      depthWrite: false,
      uniforms: {
        sourceVertices: { value: source },
        bones: { value: null },
        bindMatrix: { value: null },
        bindMatrixInverse: { value: null }
      },
      vertexShader: "precision highp float;in vec3 position;void main(){gl_Position=vec4(position.xy,0.0,1.0);}",
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
`
    });
    this.quad = new Mesh(new PlaneGeometry(2, 2), this.material);
    this.quad.frustumCulled = false;
    this.scene.add(this.quad);
  }
  update(renderer, render, mesh, source, camera) {
    if (!this.renderer) {
      this.renderer = renderer;
      renderer.domElement.addEventListener(
        "webglcontextrestored",
        this.invalidate
      );
    }
    const skeleton = mesh.skeleton;
    if (!skeleton.boneTexture) skeleton.computeBoneTexture();
    const matrices = skeleton.boneMatrices;
    const length = matrices.length + 32;
    let changed = this.version !== source.version || this.pose.length !== length;
    if (this.pose.length !== length) this.pose = new Float32Array(length);
    let index = 0;
    for (const values of [
      matrices,
      mesh.bindMatrix.elements,
      mesh.bindMatrixInverse.elements
    ])
      for (const value of values) {
        const f = Math.fround(value);
        if (this.pose[index] !== f) changed = true;
        this.pose[index++] = f;
      }
    if (!changed) return;
    this.material.uniforms.bones.value = skeleton.boneTexture;
    this.material.uniforms.bindMatrix.value = mesh.bindMatrix;
    this.material.uniforms.bindMatrixInverse.value = mesh.bindMatrixInverse;
    const target = renderer.getRenderTarget(), face = renderer.getActiveCubeFace(), level = renderer.getActiveMipmapLevel();
    const viewport = renderer.getViewport(new Vector4()), scissor = renderer.getScissor(new Vector4()), scissorTest = renderer.getScissorTest();
    const auto = renderer.autoClear, info = renderer.info.autoReset, shadows = renderer.shadowMap.autoUpdate, needs = renderer.shadowMap.needsUpdate;
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
      this.invalidate
    );
    this.target.dispose();
    this.quad.geometry.dispose();
    this.material.dispose();
  }
};
function furFactors(layers) {
  const a = [1, 0, 0], b = [0, 1, 0], c = [0, 0, 1];
  const ab = [0.5, 0.5, 0], bc = [0, 0.5, 0.5], ac = [0.5, 0, 0.5];
  const factors = layers === 1 ? [a, b, c] : layers >= 2 ? [a, bc, b, ac, c, ab] : [];
  if (layers >= 3)
    factors.push(
      [1 / 6, 4 / 6, 1 / 6],
      bc,
      [1 / 6, 1 / 6, 4 / 6],
      ac,
      [4 / 6, 1 / 6, 1 / 6],
      ab
    );
  factors.push(a);
  return factors;
}
var FurGeometry = class {
  constructor(mesh, layers, maxSize) {
    this.mesh = mesh;
    const source = mesh.geometry, count = source.attributes.position.count;
    const texels = count * 8, width = Math.min(maxSize, Math.max(1, texels));
    const height = Math.max(1, Math.ceil(texels / width));
    if (height > maxSize)
      throw new Error(
        "[three-liltoon] Fur vertex data exceeds MAX_TEXTURE_SIZE"
      );
    this.data = new Float32Array(width * height * 4);
    this.texture = new DataTexture(
      this.data,
      width,
      height,
      RGBAFormat,
      FloatType
    );
    this.texture.needsUpdate = true;
    const factors = furFactors(layers), stripSize = factors.length * 2;
    const length = source.index?.count ?? count;
    const triangles = Math.floor(length / 3), vertexCount = triangles * stripSize;
    const positions = new Float32Array(vertexCount * 4), corners = new Float32Array(vertexCount * 3);
    const perTriangle = Math.max(0, stripSize - 2) * 3;
    const indices = new Uint32Array(triangles * perTriangle);
    for (let t = 0; t + 2 < length; t += 3) {
      const ids = [0, 1, 2].map((n) => source.index?.getX(t + n) ?? t + n);
      const start = t / 3 * stripSize;
      let vertex = start;
      for (const factor of factors)
        for (const tip of [0, 1]) {
          positions.set([...factor, tip], vertex * 4);
          corners.set(ids, vertex * 3);
          vertex++;
        }
      for (let j = 0; j + 2 < stripSize; j++)
        indices.set(
          [start + j + j % 2, start + j + 1 - j % 2, start + j + 2],
          t / 3 * perTriangle + j * 3
        );
    }
    this.geometry.setAttribute(
      "position",
      new Float32BufferAttribute(positions, 4)
    );
    this.geometry.setAttribute(
      "normal",
      new Float32BufferAttribute(corners, 3)
    );
    this.geometry.setIndex(new Uint32BufferAttribute(indices, 1));
    for (const group of source.groups)
      this.geometry.addGroup(
        Math.floor(group.start / 3) * perTriangle,
        Math.floor(group.count / 3) * perTriangle,
        group.materialIndex
      );
    this.geometry.setDrawRange(
      Math.floor(source.drawRange.start / 3) * perTriangle,
      Number.isFinite(source.drawRange.count) ? Math.floor(source.drawRange.count / 3) * perTriangle : Infinity
    );
  }
  mesh;
  geometry = new BufferGeometry();
  texture;
  data;
  staticVersion = "";
  staticAttributes = /* @__PURE__ */ new Map();
  pose = new Float64Array(0);
  p = new Vector3();
  n = new Vector3();
  delta = new Vector3();
  tangent = new Vector3();
  base = new Vector3();
  bone = new Matrix4();
  weighted = new Matrix4();
  combined = new Matrix4();
  update(cpuSkinning = false) {
    const mesh = this.mesh, source = mesh.geometry, attrs = source.attributes;
    const tracked = { ...attrs };
    for (const [name, targets] of Object.entries(source.morphAttributes))
      targets?.forEach((attribute, i) => {
        tracked[name + ":morph:" + i] = attribute;
      });
    const version = String(cpuSkinning) + String(source.morphTargetsRelative) + Object.entries(tracked).map(
      ([key, a]) => key + ":" + a.count + ":" + ("version" in a ? a.version : a.data.version)
    ).join("|");
    const skin = mesh;
    const weights = mesh.morphTargetInfluences ?? [];
    const useCpuSkin = cpuSkinning && skin.isSkinnedMesh;
    if (useCpuSkin) skin.skeleton.update();
    const poseLength = weights.length + (useCpuSkin ? skin.skeleton.boneMatrices.length + 32 : 0);
    let changed = this.pose.length !== poseLength;
    if (changed) this.pose = new Float64Array(poseLength);
    let cursor = 0;
    const compare = (values) => {
      for (let i = 0; i < values.length; i++, cursor++) {
        if (this.pose[cursor] !== values[i]) changed = true;
        this.pose[cursor] = values[i];
      }
    };
    compare(weights);
    if (useCpuSkin) {
      compare(skin.skeleton.boneMatrices);
      compare(skin.bindMatrix.elements);
      compare(skin.bindMatrixInverse.elements);
    }
    if (!changed && this.staticVersion === version && Object.entries(tracked).every(
      ([key, a]) => this.staticAttributes.get(key) === a
    ))
      return;
    this.staticVersion = version;
    this.staticAttributes = new Map(Object.entries(tracked));
    const { p, n, delta, tangent, base } = this;
    for (let i = 0; i < attrs.position.count; i++) {
      Mesh.prototype.getVertexPosition.call(mesh, i, p);
      n.fromBufferAttribute(attrs.normal, i);
      const normals = source.morphAttributes.normal;
      if (normals && mesh.morphTargetInfluences) {
        base.copy(n);
        for (let j = 0; j < normals.length; j++) {
          const weight = mesh.morphTargetInfluences[j] ?? 0;
          if (!weight) continue;
          delta.fromBufferAttribute(normals[j], i);
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
          const weight = attrs.skinWeight.getComponent(i, k);
          if (weight === 0) continue;
          bone.fromArray(
            skin.skeleton.boneMatrices,
            attrs.skinIndex.getComponent(i, k) * 16
          );
          for (let e = 0; e < 16; e++)
            weighted.elements[e] += bone.elements[e] * weight;
        }
        combined.multiplyMatrices(skin.bindMatrixInverse, weighted).multiply(skin.bindMatrix);
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
      this.data[offset + 15] = attrs.color && attrs.color.itemSize > 3 ? attrs.color.getW(i) : 1;
      for (let k = 0; k < 4; k++) {
        this.data[offset + 24 + k] = skin.isSkinnedMesh ? attrs.skinIndex.getComponent(i, k) : 0;
        this.data[offset + 28 + k] = skin.isSkinnedMesh ? attrs.skinWeight.getComponent(i, k) : k === 0 ? 1 : 0;
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
};

// src/renderer/FurPasses.ts
function sameProperty(value, previous) {
  if (Array.isArray(value))
    return Array.isArray(previous) && value.length === previous.length && value.every((v, i) => v === previous[i]);
  if (typeof value === "object")
    return previous !== void 0 && value.constructor === previous.constructor && value.equals(previous);
  return value === previous;
}
var FurPasses = class {
  recipes = /* @__PURE__ */ new Map();
  depth = 0;
  prepare(renderer, scene, render) {
    this.depth++;
    const undo = [];
    scene.traverse((node) => {
      const mesh = node;
      if (!mesh.isMesh) return;
      const materials = Array.isArray(mesh.material) ? mesh.material : [mesh.material];
      if (!materials.some(
        (m) => m instanceof LilToonMaterial && m.renderMode.startsWith("fur") && m.pass === "forward"
      ))
        return;
      const after = mesh.onAfterRender;
      const hook = (...args) => {
        after.apply(mesh, args);
        const source = args[4];
        if (!(source instanceof LilToonMaterial) || !source.renderMode.startsWith("fur") || source.pass !== "forward")
          return;
        const layers = Number(source.lilToonProperties._FurLayerNum ?? 2);
        if ((mesh.geometry.index?.count ?? mesh.geometry.attributes.position.count) < 3)
          return;
        const key = `${mesh.uuid}:${source.uuid}`;
        const topology = `${mesh.geometry.index?.version}:${mesh.geometry.index?.count}:${mesh.geometry.attributes.position.count}`;
        let recipe = this.recipes.get(key);
        if (recipe && (recipe.sourceGeometry !== mesh.geometry || recipe.sourceIndex !== mesh.geometry.index || recipe.layers !== layers || recipe.mode !== source.renderMode || recipe.source !== source || recipe.topology !== topology)) {
          recipe.release();
          recipe = void 0;
        }
        if (!recipe) {
          const gpuSkinning = mesh.isSkinnedMesh && renderer.extensions.has("EXT_color_buffer_float");
          const gl = renderer.getContext();
          const maxSize = gpuSkinning ? Math.min(
            renderer.capabilities.maxTextureSize,
            ...gl.getParameter(gl.MAX_VIEWPORT_DIMS)
          ) : renderer.capabilities.maxTextureSize;
          const geometry2 = new FurGeometry(mesh, layers, maxSize);
          const deformation2 = gpuSkinning ? new FurDeformation(geometry2.texture) : void 0;
          const materials3 = (source.renderMode === "fur-two-pass" ? ["fur-pre", "fur"] : ["fur"]).map(
            (pass) => new LilToonMaterial({
              renderMode: source.renderMode,
              pass,
              properties: source.lilToonProperties,
              textures: source.lilToonTextures
            })
          );
          const proxy2 = new Mesh(geometry2.geometry, materials3[0]);
          const temporary2 = new Scene();
          temporary2.add(proxy2);
          proxy2.matrixAutoUpdate = false;
          proxy2.frustumCulled = false;
          const sourceGeometry = mesh.geometry;
          const release = () => {
            geometry2.dispose();
            deformation2?.dispose();
            materials3.forEach((material) => material.dispose());
            sourceGeometry.removeEventListener("dispose", release);
            source.removeEventListener("dispose", release);
            this.recipes.delete(key);
          };
          recipe = {
            mesh,
            owner: scene,
            geometry: geometry2,
            deformation: deformation2,
            sourceGeometry: mesh.geometry,
            sourceIndex: mesh.geometry.index,
            topology,
            layers,
            materials: materials3,
            mode: source.renderMode,
            scene: temporary2,
            proxy: proxy2,
            source,
            release
          };
          mesh.geometry.addEventListener("dispose", release);
          source.addEventListener("dispose", release);
          this.recipes.set(key, recipe);
        }
        recipe.owner = scene;
        const {
          geometry,
          deformation,
          materials: materials2,
          proxy,
          scene: temporary
        } = recipe;
        geometry.update(!deformation);
        deformation?.update(
          renderer,
          render,
          mesh,
          geometry.texture,
          args[2]
        );
        source.getProperty("_Color");
        for (const material of materials2) {
          let changed = false;
          for (const key2 in source.lilToonProperties) {
            const value = source.lilToonProperties[key2];
            const previous = material.lilToonProperties[key2];
            if (!sameProperty(value, previous)) {
              material.setProperty(
                key2,
                Array.isArray(value) ? [...value] : value
              );
              changed = true;
            }
          }
          for (const key2 of /* @__PURE__ */ new Set([
            ...Object.keys(source.lilToonTextures),
            ...Object.keys(material.lilToonTextures)
          ]))
            if (material.lilToonTextures[key2] !== source.lilToonTextures[key2])
              material.setTexture(key2, source.lilToonTextures[key2] ?? null);
          if (changed)
            applyLilToonPassState(
              material,
              source.renderMode,
              source.lilToonProperties,
              material.pass
            );
        }
        const group = args[5] ?? mesh.geometry.drawRange;
        const previousRange = { ...geometry.geometry.drawRange };
        if (group) {
          const perTriangle = geometry.geometry.index.count / Math.floor(
            (mesh.geometry.index?.count ?? mesh.geometry.attributes.position.count) / 3
          );
          const start = Math.max(mesh.geometry.drawRange.start, group.start), end = Math.min(
            mesh.geometry.drawRange.start + mesh.geometry.drawRange.count,
            group.start + group.count
          );
          geometry.geometry.setDrawRange(
            Math.floor(start / 3) * perTriangle,
            Math.max(0, Math.floor((end - start) / 3)) * perTriangle
          );
        }
        proxy.matrix.copy(mesh.matrixWorld);
        proxy.layers.mask = mesh.layers.mask;
        const auto = renderer.autoClear, info = renderer.info.autoReset, shadows = renderer.shadowMap.autoUpdate, needs = renderer.shadowMap.needsUpdate;
        try {
          renderer.autoClear = false;
          renderer.info.autoReset = false;
          renderer.shadowMap.autoUpdate = false;
          renderer.shadowMap.needsUpdate = false;
          for (const material of materials2) {
            proxy.material = material;
            const before = material.onBeforeRender;
            material.onBeforeRender = (...draw) => {
              before.call(
                material,
                draw[0],
                scene,
                draw[2],
                draw[3],
                draw[4],
                draw[5]
              );
              material.setSystemTexture(
                "__furVertices",
                deformation?.target.texture ?? geometry.texture
              );
            };
            try {
              render.call(renderer, temporary, args[2]);
            } finally {
              material.onBeforeRender = before;
            }
          }
        } finally {
          renderer.autoClear = auto;
          renderer.info.autoReset = info;
          renderer.shadowMap.autoUpdate = shadows;
          renderer.shadowMap.needsUpdate = needs;
          geometry.geometry.setDrawRange(
            previousRange.start,
            previousRange.count
          );
        }
      };
      mesh.onAfterRender = hook;
      undo.push(() => {
        if (mesh.onAfterRender === hook) mesh.onAfterRender = after;
      });
    });
    return () => {
      undo.reverse().forEach((fn) => fn());
      if (--this.depth === 0) {
        for (const recipe of this.recipes.values())
          if (!ownsPassSource(recipe.owner, recipe.mesh, recipe.source) || recipe.mesh.geometry !== recipe.sourceGeometry || recipe.mode !== recipe.source.renderMode)
            recipe.release();
      }
    };
  }
  dispose() {
    for (const recipe of this.recipes.values()) recipe.release();
  }
};

// src/renderer/TransparencyPasses.ts
var TransparencyPasses = class {
  draws = new AuxiliaryPassDraw();
  prepare(renderer, scene, render) {
    this.draws.begin();
    const undo = [];
    scene.traverse((node) => {
      const mesh = node;
      if (!mesh.isMesh) return;
      const materials = Array.isArray(mesh.material) ? mesh.material : [mesh.material];
      if (!materials.some(
        (m) => m instanceof LilToonMaterial && m.renderMode === "transparent" && m.pass === "forward"
      ))
        return;
      const before = mesh.onBeforeRender, after = mesh.onAfterRender;
      const isSurface = (m) => m instanceof LilToonMaterial && m.renderMode === "transparent" && m.pass === "forward";
      const pre = (...args) => {
        before.apply(mesh, args);
        const source = args[4];
        if (isSurface(source) && source.transparencyMode === "two-pass")
          this.draws.draw(
            renderer,
            render,
            mesh,
            source,
            "transparent-pre",
            scene,
            args[2],
            args[5]
          );
      };
      const post = (...args) => {
        after.apply(mesh, args);
        const source = args[4];
        const manual = mesh.children.some(
          (c) => c.isMesh && c.material?.pass === "outline"
        );
        if (isSurface(source) && !manual && Number(source.lilToonProperties._UseOutline ?? 1) !== 0 && Number(source.lilToonProperties._OutlineWidth ?? 0) > 0)
          this.draws.draw(
            renderer,
            render,
            mesh,
            source,
            "outline",
            scene,
            args[2],
            args[5]
          );
      };
      mesh.onBeforeRender = pre;
      mesh.onAfterRender = post;
      undo.push(() => {
        if (mesh.onBeforeRender === pre) mesh.onBeforeRender = before;
        if (mesh.onAfterRender === post) mesh.onAfterRender = after;
      });
    });
    return () => {
      undo.reverse().forEach((fn) => fn());
      this.draws.end();
    };
  }
  dispose() {
    this.draws.dispose();
  }
};

// src/renderer/enableLilToon.ts
var helpers = /* @__PURE__ */ new WeakSet();
var originalHooks = /* @__PURE__ */ new WeakMap();
var AutomaticPasses = class {
  recipes = /* @__PURE__ */ new Map();
  proxies = /* @__PURE__ */ new WeakMap();
  hidden = new MeshBasicMaterial({ visible: false });
  depth = 0;
  begin() {
    this.depth++;
  }
  end() {
    if (--this.depth !== 0) return;
    for (const [source, recipe] of this.recipes) {
      for (const [mesh, root] of recipe.owners)
        if (!ownsPassSource(root, mesh, source)) recipe.owners.delete(mesh);
      if (!recipe.owners.size) recipe.release();
    }
  }
  recipe(source, mesh, scene) {
    let recipe = this.recipes.get(source);
    if (!recipe) {
      const outline = new LilToonMaterial({
        pass: "outline",
        renderMode: source.renderMode,
        properties: source.lilToonProperties,
        textures: source.lilToonTextures
      });
      const depth = new MeshDepthMaterial({ depthPacking: RGBADepthPacking });
      const distance = new MeshDistanceMaterial();
      recipe = {
        owners: /* @__PURE__ */ new Map(),
        source,
        outline,
        depth,
        distance,
        input: null,
        map: null,
        release: () => {
          source.removeEventListener("dispose", recipe.release);
          outline.dispose();
          depth.dispose();
          distance.dispose();
          recipe.map?.dispose();
          this.recipes.delete(source);
        }
      };
      this.recipes.set(source, recipe);
      source.addEventListener("dispose", recipe.release);
    }
    recipe.owners.set(mesh, scene);
    source.getProperty("_Color");
    for (const [name, value] of Object.entries(source.lilToonProperties)) {
      recipe.outline.lilToonProperties[name] = value;
      setGlobalProperty(recipe.outline.globalUniforms, name, value);
    }
    recipe.outline.setProperty("_Color", source.getProperty("_Color"));
    for (const [name, texture] of Object.entries(source.lilToonTextures)) {
      if (recipe.outline.lilToonTextures[name] !== texture)
        recipe.outline.setTexture(name, texture);
    }
    recipe.outline.renderMode = source.renderMode;
    applyLilToonPassState(
      recipe.outline,
      source.renderMode,
      source.lilToonProperties,
      "outline"
    );
    recipe.outline.visible = source.visible;
    if (recipe.input !== source.map) {
      recipe.map?.dispose();
      recipe.input = source.map;
      recipe.map = source.map?.clone() ?? null;
      if (recipe.map) recipe.map.matrixAutoUpdate = false;
    }
    if (recipe.map) {
      const st = source.getProperty("_MainTex_ST");
      const v = Array.isArray(st) ? st : st && typeof st === "object" && "toArray" in st ? st.toArray() : [1, 1, 0, 0];
      recipe.map.matrix.setUvTransform(
        v[2] ?? 0,
        v[3] ?? 0,
        v[0] ?? 1,
        v[1] ?? 1,
        0,
        0,
        0
      );
    }
    return recipe;
  }
  prepare(scene) {
    const undo = [];
    const meshes = [];
    scene.traverse((node) => {
      if (node.isMesh && !helpers.has(node))
        meshes.push(node);
    });
    try {
      for (const mesh of meshes) {
        const materials = Array.isArray(mesh.material) ? mesh.material : [mesh.material];
        const recipes = materials.map(
          (material) => material instanceof LilToonMaterial && material.pass === "forward" ? this.recipe(material, mesh, scene) : void 0
        );
        const first = recipes.find((recipe) => recipe !== void 0);
        if (!first) continue;
        const outlines = recipes.map(
          (recipe) => recipe && recipe.source.renderMode !== "transparent" && Number(recipe.source.lilToonProperties._UseOutline ?? 1) !== 0 && Number(recipe.source.lilToonProperties._OutlineWidth ?? 0) > 0 ? recipe.outline : this.hidden
        );
        const manualOutline = mesh.children.some(
          (child) => !helpers.has(child) && child.isMesh && child.material?.pass === "outline"
        );
        if (!manualOutline && outlines.some((material) => material !== this.hidden)) {
          let proxy = this.proxies.get(mesh);
          if (!proxy) {
            proxy = mesh.isSkinnedMesh ? new SkinnedMesh(mesh.geometry, first.outline) : new Mesh(mesh.geometry, first.outline);
            proxy.name = `${mesh.name}:lilToon-outline`;
            proxy.matrixAutoUpdate = false;
            proxy.raycast = () => {
            };
            helpers.add(proxy);
            this.proxies.set(mesh, proxy);
          }
          proxy.geometry = mesh.geometry;
          proxy.material = Array.isArray(mesh.material) ? outlines : outlines[0];
          proxy.visible = mesh.visible;
          proxy.layers.mask = mesh.layers.mask;
          proxy.frustumCulled = mesh.frustumCulled;
          proxy.renderOrder = mesh.renderOrder - 1;
          proxy.morphTargetDictionary = mesh.morphTargetDictionary;
          proxy.morphTargetInfluences = mesh.morphTargetInfluences;
          if (proxy.isSkinnedMesh) {
            const skin = proxy, source = mesh;
            skin.skeleton = source.skeleton;
            skin.bindMode = source.bindMode;
            skin.bindMatrix.copy(source.bindMatrix);
            skin.bindMatrixInverse.copy(source.bindMatrixInverse);
            skin.boundingBox = source.boundingBox;
            skin.boundingSphere = source.boundingSphere;
          }
          const priorParent = proxy.parent;
          mesh.add(proxy);
          undo.push(() => {
            proxy.removeFromParent();
            priorParent?.add(proxy);
          });
        }
        const depth = mesh.customDepthMaterial, distance = mesh.customDistanceMaterial;
        if (!depth) mesh.customDepthMaterial = first.depth;
        if (!distance) mesh.customDistanceMaterial = first.distance;
        const before = mesh.onBeforeShadow;
        const hook = (...args) => {
          const material = args[5];
          const recipe = recipes[args[6]?.materialIndex ?? 0];
          if (recipe && (material === first.depth || material === first.distance)) {
            if (!!material.map !== !!recipe.map) material.needsUpdate = true;
            material.map = recipe.map;
            material.alphaMap = null;
            material.alphaTest = recipe.source.alphaTest;
            material.opacity = recipe.source.opacity;
          } else if (!recipe && (material === first.depth || material === first.distance)) {
            material.opacity = materials[args[6]?.materialIndex ?? 0]?.opacity ?? 1;
          }
          before.apply(mesh, args);
        };
        mesh.onBeforeShadow = hook;
        undo.push(() => {
          if (mesh.customDepthMaterial === first.depth)
            mesh.customDepthMaterial = depth;
          if (mesh.customDistanceMaterial === first.distance)
            mesh.customDistanceMaterial = distance;
          if (mesh.onBeforeShadow === hook) mesh.onBeforeShadow = before;
        });
      }
      scene.updateMatrixWorld();
    } catch (error) {
      undo.reverse().forEach((restore) => restore());
      throw error;
    }
    return () => undo.reverse().forEach((restore) => restore());
  }
  dispose() {
    for (const recipe of this.recipes.values()) recipe.release();
    this.hidden.dispose();
  }
};
var installations = /* @__PURE__ */ new WeakMap();
function enableLilToon(renderer) {
  const existing = installations.get(renderer);
  if (existing) return existing.acquire();
  const passes = new AutomaticPasses();
  const sceneColors = new SceneColorPasses();
  const fur = new FurPasses();
  const transparency = new TransparencyPasses();
  const render = renderer.render, dispose = renderer.dispose;
  let users = 0, disposed = false;
  const wrapped = function(scene, camera) {
    passes.begin();
    const previous = scene.onBeforeRender;
    const original = originalHooks.get(previous) ?? previous;
    let restore;
    let restoreColors;
    let restoreFur;
    let restoreTransparency;
    const hook = function(...args) {
      original.apply(this, args);
      restore ??= passes.prepare(scene);
      restoreColors ??= sceneColors.prepare(renderer, scene, render);
      restoreFur ??= fur.prepare(renderer, scene, render);
      restoreTransparency ??= transparency.prepare(renderer, scene, render);
    };
    originalHooks.set(hook, original);
    scene.onBeforeRender = hook;
    try {
      if (!scene.isScene) {
        restore = passes.prepare(scene);
        restoreColors = sceneColors.prepare(renderer, scene, render);
        restoreFur = fur.prepare(renderer, scene, render);
        restoreTransparency = transparency.prepare(renderer, scene, render);
      }
      render.call(renderer, scene, camera);
    } finally {
      restoreTransparency?.();
      restoreFur?.();
      restoreColors?.();
      restore?.();
      if (scene.onBeforeRender === hook) scene.onBeforeRender = previous;
      passes.end();
    }
  };
  const wrappedDispose = () => {
    installation.release();
    dispose.call(renderer);
  };
  const installation = {
    release: () => {
      if (disposed) return;
      disposed = true;
      if (renderer.render === wrapped) renderer.render = render;
      if (renderer.dispose === wrappedDispose) renderer.dispose = dispose;
      passes.dispose();
      sceneColors.dispose();
      fur.dispose();
      transparency.dispose();
      installations.delete(renderer);
    },
    acquire: () => {
      users++;
      let released = false;
      return () => {
        if (released || disposed) return;
        released = true;
        if (--users === 0) installation.release();
      };
    }
  };
  installations.set(renderer, installation);
  renderer.render = wrapped;
  renderer.dispose = wrappedDispose;
  return installation.acquire();
}

// src/passes/RefractionPass.ts
var RefractionPass = class extends LilToonMaterial {
  constructor(parameters = {}) {
    super({ ...parameters, renderMode: "refraction" });
  }
};

// src/passes/GemPass.ts
var GemPass = class extends LilToonMaterial {
  constructor(parameters = {}) {
    super({ ...parameters, renderMode: "gem" });
  }
};

// src/passes/FurPass.ts
var FurPass = class extends LilToonMaterial {
  constructor(parameters = {}) {
    super({ ...parameters, renderMode: "fur" });
  }
};

// src/generated/properties.ts
var LILTOON_PROPERTIES = [
  {
    "name": "_DummyProperty",
    "displayName": "",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Invisible",
    "displayName": "sInvisible",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AsUnlit",
    "displayName": "sAsUnlit",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Cutoff",
    "displayName": "sCutoff",
    "type": "Range",
    "range": [
      -1e-3,
      1.001
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_SubpassCutoff",
    "displayName": "sSubpassCutoff",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_FlipNormal",
    "displayName": "sFlipBackfaceNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ShiftBackfaceUV",
    "displayName": "sShiftBackfaceUV",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BackfaceForceShadow",
    "displayName": "sBackfaceForceShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_BackfaceColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_VertexLightStrength",
    "displayName": "sVertexLightStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_LightMinLimit",
    "displayName": "sLightMinLimit",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.05,
    "attributes": []
  },
  {
    "name": "_LightMaxLimit",
    "displayName": "sLightMaxLimit",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BeforeExposureLimit",
    "displayName": "sBeforeExposureLimit",
    "type": "Float",
    "defaultValue": 1e4,
    "attributes": []
  },
  {
    "name": "_MonochromeLighting",
    "displayName": "sMonochromeLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AlphaBoostFA",
    "displayName": "sAlphaBoostFA",
    "type": "Range",
    "range": [
      1,
      100
    ],
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_lilDirectionalLightStrength",
    "displayName": "sDirectionalLightStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_LightDirectionOverride",
    "displayName": "sLightDirectionOverrides",
    "type": "Vector",
    "defaultValue": [
      1e-3,
      2e-3,
      1e-3,
      0
    ],
    "attributes": [
      "lilVec3B"
    ]
  },
  {
    "name": "_AAStrength",
    "displayName": "sAAShading",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseDither",
    "displayName": "sDither",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_DitherTex",
    "displayName": "Dither",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_DitherMaxValue",
    "displayName": "Max Value",
    "type": "Float",
    "defaultValue": 255,
    "attributes": []
  },
  {
    "name": "_EnvRimBorder",
    "displayName": "[VRCLV] Rim Border",
    "type": "Range",
    "range": [
      0,
      3
    ],
    "defaultValue": 3,
    "attributes": []
  },
  {
    "name": "_EnvRimBlur",
    "displayName": "[VRCLV] Rim Blur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.35,
    "attributes": []
  },
  {
    "name": "_Color",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR",
      "MainColor"
    ]
  },
  {
    "name": "_MainTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "MainTexture"
    ]
  },
  {
    "name": "_MainTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_MainTexHSVG",
    "displayName": "sHSVGs",
    "type": "Vector",
    "defaultValue": [
      0,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHSVG"
    ]
  },
  {
    "name": "_MainGradationStrength",
    "displayName": "Gradation Strength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MainGradationTex",
    "displayName": "Gradation Map",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MainColorAdjustMask",
    "displayName": "Adjust Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_UseMain2ndTex",
    "displayName": "sMainColor2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Color2nd",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main2ndTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndTexAngle",
    "displayName": "sAngle",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "lilAngle"
    ]
  },
  {
    "name": "_Main2ndTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main2ndTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|MatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTex_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTexDecalAnimation",
    "displayName": "sDecalAnimations",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      1,
      30
    ],
    "attributes": [
      "lilDecalAnim"
    ]
  },
  {
    "name": "_Main2ndTexDecalSubParam",
    "displayName": "sDecalSubParams",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      1
    ],
    "attributes": [
      "lilDecalSub"
    ]
  },
  {
    "name": "_Main2ndTexIsDecal",
    "displayName": "sAsDecal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsLeftOnly",
    "displayName": "Left Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsRightOnly",
    "displayName": "Right Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldCopy",
    "displayName": "Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldFlipMirror",
    "displayName": "Flip Mirror",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexShouldFlipCopy",
    "displayName": "Flip Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndTexIsMSDF",
    "displayName": "sAsMSDF",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Main2ndTexBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndTexAlphaMode",
    "displayName": "sAlphaModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main2ndEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main2ndDissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Main2ndDissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main2ndDissolveParams",
    "displayName": "sDissolveParams",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_Main2ndDissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_Main2ndDistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_UseMain3rdTex",
    "displayName": "sMainColor3rd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Color3rd",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main3rdTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdTexAngle",
    "displayName": "sAngle",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "lilAngle"
    ]
  },
  {
    "name": "_Main3rdTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main3rdTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|MatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTex_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTexDecalAnimation",
    "displayName": "sDecalAnimations",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      1,
      30
    ],
    "attributes": [
      "lilDecalAnim"
    ]
  },
  {
    "name": "_Main3rdTexDecalSubParam",
    "displayName": "sDecalSubParams",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      1
    ],
    "attributes": [
      "lilDecalSub"
    ]
  },
  {
    "name": "_Main3rdTexIsDecal",
    "displayName": "sAsDecal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsLeftOnly",
    "displayName": "Left Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsRightOnly",
    "displayName": "Right Only",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldCopy",
    "displayName": "Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldFlipMirror",
    "displayName": "Flip Mirror",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexShouldFlipCopy",
    "displayName": "Flip Copy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdTexIsMSDF",
    "displayName": "sAsMSDF",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Main3rdBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Main3rdTexBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdTexAlphaMode",
    "displayName": "sAlphaModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Main3rdEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Main3rdDissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Main3rdDissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_Main3rdDissolveParams",
    "displayName": "sDissolveParams",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_Main3rdDissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_Main3rdDistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_AlphaMaskMode",
    "displayName": "sAlphaMaskModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnumLabel"
    ]
  },
  {
    "name": "_AlphaMask",
    "displayName": "AlphaMask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_AlphaMaskScale",
    "displayName": "Scale",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AlphaMaskValue",
    "displayName": "Offset",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_UseBumpMap",
    "displayName": "sNormalMap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_BumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_BumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseBump2ndMap",
    "displayName": "sNormalMap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Bump2ndMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_Bump2ndMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Bump2ndScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Bump2ndScaleMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_UseAnisotropy",
    "displayName": "sAnisotropy",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_AnisotropyTangentMap",
    "displayName": "Tangent Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_AnisotropyScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyScaleMask",
    "displayName": "Scale Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_AnisotropyTangentWidth",
    "displayName": "sTangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyBitangentWidth",
    "displayName": "sBitangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_AnisotropyShift",
    "displayName": "sOffset",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropyShiftNoiseScale",
    "displayName": "sNoiseStrength",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropySpecularStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndTangentWidth",
    "displayName": "sTangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndBitangentWidth",
    "displayName": "sBitangentWidth",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndShift",
    "displayName": "sOffset",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndShiftNoiseScale",
    "displayName": "sNoiseStrength",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Anisotropy2ndSpecularStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_AnisotropyShiftNoiseMask",
    "displayName": "sNoise",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Anisotropy2Reflection",
    "displayName": "sReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Anisotropy2MatCap",
    "displayName": "sMatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Anisotropy2MatCap2nd",
    "displayName": "sMatCap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UseBacklight",
    "displayName": "sBacklight",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_BacklightColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.85,
      0.8,
      0.7,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_BacklightColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_BacklightMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_BacklightNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BacklightBorder",
    "displayName": "Border",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.35,
    "attributes": []
  },
  {
    "name": "_BacklightBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.05,
    "attributes": []
  },
  {
    "name": "_BacklightDirectivity",
    "displayName": "sDirectivity",
    "type": "Float",
    "defaultValue": 5,
    "attributes": []
  },
  {
    "name": "_BacklightViewStrength",
    "displayName": "sViewDirectionStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_BacklightReceiveShadow",
    "displayName": "sReceiveShadow",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BacklightBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UseShadow",
    "displayName": "sShadow",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_ShadowStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowStrengthMask",
    "displayName": "sStrength",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowStrengthMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowBorderMask",
    "displayName": "sBorder",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowBorderMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowBlurMask",
    "displayName": "sBlur",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowBlurMaskLOD",
    "displayName": "LOD",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "lilLOD"
    ]
  },
  {
    "name": "_ShadowAOShift",
    "displayName": "1st Scale|1st Offset|2nd Scale|2nd Offset",
    "type": "Vector",
    "defaultValue": [
      1,
      0,
      1,
      0
    ],
    "attributes": [
      "lilFFFF"
    ]
  },
  {
    "name": "_ShadowAOShift2",
    "displayName": "3rd Scale|3rd Offset",
    "type": "Vector",
    "defaultValue": [
      1,
      0,
      1,
      0
    ],
    "attributes": [
      "lilFF"
    ]
  },
  {
    "name": "_ShadowPostAO",
    "displayName": "sIgnoreBorderProperties",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ShadowColorType",
    "displayName": "sShadowColorTypes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_ShadowColor",
    "displayName": "Shadow Color",
    "type": "Color",
    "defaultValue": [
      0.82,
      0.76,
      0.85,
      1
    ],
    "attributes": []
  },
  {
    "name": "_ShadowColorTex",
    "displayName": "Shadow Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ShadowNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_ShadowBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_ShadowReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Shadow2ndColor",
    "displayName": "2nd Color",
    "type": "Color",
    "defaultValue": [
      0.68,
      0.66,
      0.79,
      1
    ],
    "attributes": []
  },
  {
    "name": "_Shadow2ndColorTex",
    "displayName": "2nd Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Shadow2ndNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Shadow2ndBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.15,
    "attributes": []
  },
  {
    "name": "_Shadow2ndBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Shadow2ndReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Shadow3rdColor",
    "displayName": "3rd Color",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": []
  },
  {
    "name": "_Shadow3rdColorTex",
    "displayName": "3rd Color",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Shadow3rdNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Shadow3rdBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.25,
    "attributes": []
  },
  {
    "name": "_Shadow3rdBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_Shadow3rdReceive",
    "displayName": "sReceiveShadow",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowBorderColor",
    "displayName": "sShadowBorderColor",
    "type": "Color",
    "defaultValue": [
      1,
      0.1,
      0,
      1
    ],
    "attributes": []
  },
  {
    "name": "_ShadowBorderRange",
    "displayName": "sShadowBorderRange",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.08,
    "attributes": []
  },
  {
    "name": "_ShadowMainStrength",
    "displayName": "sContrast",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowEnvStrength",
    "displayName": "sShadowEnvStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ShadowMaskType",
    "displayName": "sShadowMaskTypes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_ShadowFlatBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      -2,
      2
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ShadowFlatBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      1e-3,
      2
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseRimShade",
    "displayName": "RimShade",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_RimShadeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.5,
      0.5,
      0.5,
      1
    ],
    "attributes": []
  },
  {
    "name": "_RimShadeMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_RimShadeNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadeBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimShadeBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadeFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 1,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_UseReflection",
    "displayName": "sReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Smoothness",
    "displayName": "Smoothness",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_SmoothnessTex",
    "displayName": "Smoothness",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Metallic",
    "displayName": "Metallic",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": [
      "Gamma"
    ]
  },
  {
    "name": "_MetallicGlossMap",
    "displayName": "Metallic",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Reflectance",
    "displayName": "sReflectance",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.04,
    "attributes": [
      "Gamma"
    ]
  },
  {
    "name": "_GSAAStrength",
    "displayName": "GSAA",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ApplySpecular",
    "displayName": "Apply Specular",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ApplySpecularFA",
    "displayName": "sMultiLightSpecular",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_SpecularToon",
    "displayName": "Specular Toon",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_SpecularNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_SpecularBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_SpecularBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ApplyReflection",
    "displayName": "sApplyReflection",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ReflectionColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_ReflectionColorTex",
    "displayName": "sColor",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ReflectionApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionCubeTex",
    "displayName": "Cubemap Fallback",
    "type": "Cube",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_ReflectionCubeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_ReflectionCubeOverride",
    "displayName": "Override",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ReflectionCubeEnableLighting",
    "displayName": "sEnableLighting+ (Fallback)",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_ReflectionBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseMatCap",
    "displayName": "sMatCap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_MatCapColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_MatCapTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_MatCapMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBlendUV1",
    "displayName": "sBlendUV1",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec2R"
    ]
  },
  {
    "name": "_MatCapZRotCancel",
    "displayName": "sMatCapZRotCancel",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapPerspective",
    "displayName": "sFixPerspective",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MatCapEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapLod",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCapBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_MatCapApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCapCustomNormal",
    "displayName": "sMatCapCustomNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCapBumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_MatCapBumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseMatCap2nd",
    "displayName": "sMatCap2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_MatCap2ndColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_MatCap2ndTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_MatCap2ndMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendUV1",
    "displayName": "sBlendUV1",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec2R"
    ]
  },
  {
    "name": "_MatCap2ndZRotCancel",
    "displayName": "sMatCapZRotCancel",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndPerspective",
    "displayName": "sFixPerspective",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_MatCap2ndEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndLod",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      10
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_MatCap2ndBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_MatCap2ndApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_MatCap2ndCustomNormal",
    "displayName": "sMatCapCustomNormal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_MatCap2ndBumpMap",
    "displayName": "Normal Map",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "Normal"
    ]
  },
  {
    "name": "_MatCap2ndBumpScale",
    "displayName": "Scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_UseRim",
    "displayName": "sRimLight",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_RimColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.66,
      0.5,
      0.48,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_RimColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_RimMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.65,
    "attributes": []
  },
  {
    "name": "_RimFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 3.5,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_RimEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_RimVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_RimApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_RimDirStrength",
    "displayName": "sRimLightDirection",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimDirRange",
    "displayName": "sRimDirectionRange",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimIndirRange",
    "displayName": "sRimIndirectionRange",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RimIndirColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_RimIndirBorder",
    "displayName": "sBorder",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RimIndirBlur",
    "displayName": "sBlur",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_RimBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseGlitter",
    "displayName": "sGlitter",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_GlitterUVMode",
    "displayName": "UV Mode|UV0|UV1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_GlitterColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_GlitterColorTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_GlitterColorTex_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_GlitterMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterNormalStrength",
    "displayName": "sNormalStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterScaleRandomize",
    "displayName": "sRandomize+ (Size)",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterApplyShape",
    "displayName": "Shape",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterShapeTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_GlitterAtras",
    "displayName": "Atras",
    "type": "Vector",
    "defaultValue": [
      1,
      1,
      0,
      0
    ],
    "attributes": [
      "lilVec2"
    ]
  },
  {
    "name": "_GlitterAngleRandomize",
    "displayName": "sRandomize+ (+sAngle+)",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterParams1",
    "displayName": "Tiling|Particle Size|Contrast",
    "type": "Vector",
    "defaultValue": [
      256,
      256,
      0.16,
      50
    ],
    "attributes": [
      "lilGlitParam1"
    ]
  },
  {
    "name": "_GlitterParams2",
    "displayName": "sGlitterParams2",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0
    ],
    "attributes": [
      "lilGlitParam2"
    ]
  },
  {
    "name": "_GlitterPostContrast",
    "displayName": "sPostContrast",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterSensitivity",
    "displayName": "Sensitivity",
    "type": "Float",
    "defaultValue": 0.25,
    "attributes": []
  },
  {
    "name": "_GlitterEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_GlitterShadowMask",
    "displayName": "sShadowMask",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_GlitterBackfaceMask",
    "displayName": "sBackfaceMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterApplyTransparency",
    "displayName": "sApplyTransparency",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GlitterVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_UseEmission",
    "displayName": "sEmission",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_EmissionColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HDR",
      "lilHDR"
    ]
  },
  {
    "name": "_EmissionMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_EmissionMap_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_EmissionMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|Rim",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_EmissionMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_EmissionBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_EmissionBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_EmissionBlendMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_EmissionBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_EmissionBlink",
    "displayName": "sBlinkSettings",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      3.141593,
      0
    ],
    "attributes": [
      "lilBlink"
    ]
  },
  {
    "name": "_EmissionUseGrad",
    "displayName": "sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_EmissionGradTex",
    "displayName": "Gradation Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_EmissionGradSpeed",
    "displayName": "Gradation Speed",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_EmissionParallaxDepth",
    "displayName": "sParallaxDepth",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_EmissionFluorescence",
    "displayName": "sFluorescence",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_egci",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egai",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_egc7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_ega7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_UseEmission2nd",
    "displayName": "sEmission2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_Emission2ndColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HDR",
      "lilHDR"
    ]
  },
  {
    "name": "_Emission2ndMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Emission2ndMap_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Emission2ndMap_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3|Rim",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Emission2ndMainStrength",
    "displayName": "sMainColorPower",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Emission2ndBlend",
    "displayName": "Blend",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Emission2ndBlendMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Emission2ndBlendMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_Emission2ndBlendMode",
    "displayName": "sBlendModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_Emission2ndBlink",
    "displayName": "sBlinkSettings",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      3.141593,
      0
    ],
    "attributes": [
      "lilBlink"
    ]
  },
  {
    "name": "_Emission2ndUseGrad",
    "displayName": "sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_Emission2ndGradTex",
    "displayName": "Gradation Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Emission2ndGradSpeed",
    "displayName": "Gradation Speed",
    "type": "Float",
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_Emission2ndParallaxDepth",
    "displayName": "sParallaxDepth",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_Emission2ndFluorescence",
    "displayName": "sFluorescence",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_e2gci",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gai",
    "displayName": "",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2gc7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga0",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga1",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga2",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga3",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga4",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga5",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga6",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_e2ga7",
    "displayName": "",
    "type": "Color",
    "defaultValue": [
      1,
      0,
      0,
      0
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_UseParallax",
    "displayName": "sParallax",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_UsePOM",
    "displayName": "sPOM",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ParallaxMap",
    "displayName": "Parallax Map",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_Parallax",
    "displayName": "Parallax Scale",
    "type": "Float",
    "defaultValue": 0.02,
    "attributes": []
  },
  {
    "name": "_ParallaxOffset",
    "displayName": "sParallaxOffset",
    "type": "Float",
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_DistanceFadeColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DistanceFade",
    "displayName": "sDistanceFadeSettings",
    "type": "Vector",
    "defaultValue": [
      0.1,
      0.01,
      0,
      0
    ],
    "attributes": [
      "lilFFFB"
    ]
  },
  {
    "name": "_DistanceFadeMode",
    "displayName": "sDistanceFadeModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_DistanceFadeRimColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DistanceFadeRimFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 5,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_UseAudioLink",
    "displayName": "sAudioLink",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_AudioLinkDefaultValue",
    "displayName": "Strength|Blink Strength|Blink Speed|Blink Threshold",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      2,
      0.75
    ],
    "attributes": [
      "lilFRFR"
    ]
  },
  {
    "name": "_AudioLinkUVMode",
    "displayName": "sAudioLinkUVModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLinkUVParams",
    "displayName": "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0.125
    ],
    "attributes": [
      "lilALUVParams"
    ]
  },
  {
    "name": "_AudioLinkStart",
    "displayName": "sAudioLinkStartPosition",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec3"
    ]
  },
  {
    "name": "_AudioLinkMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "blue"
    },
    "attributes": []
  },
  {
    "name": "_AudioLinkMask_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_AudioLinkMask_UVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLink2Main2nd",
    "displayName": "sMainColor2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Main3rd",
    "displayName": "sMainColor3rd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission",
    "displayName": "sEmission",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2EmissionGrad",
    "displayName": "sEmission+sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission2nd",
    "displayName": "sEmission2nd",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Emission2ndGrad",
    "displayName": "sEmission2nd+sGradation",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLink2Vertex",
    "displayName": "sVertex",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLinkVertexUVMode",
    "displayName": "sAudioLinkVertexUVModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_AudioLinkVertexUVParams",
    "displayName": "Scale|Offset|sAngle|Band|Bass|Low Mid|High Mid|Treble",
    "type": "Vector",
    "defaultValue": [
      0.25,
      0,
      0,
      0.125
    ],
    "attributes": [
      "lilALUVParams"
    ]
  },
  {
    "name": "_AudioLinkVertexStart",
    "displayName": "sAudioLinkStartPosition",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilVec3"
    ]
  },
  {
    "name": "_AudioLinkVertexStrength",
    "displayName": "sAudioLinkVertexStrengths",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": [
      "lilVec3Float"
    ]
  },
  {
    "name": "_AudioLinkAsLocal",
    "displayName": "sAudioLinkAsLocal",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AudioLinkLocalMap",
    "displayName": "Local Map",
    "type": "2D",
    "defaultValue": {
      "texture": "black"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_AudioLinkLocalMapParams",
    "displayName": "sAudioLinkLocalMapParams",
    "type": "Vector",
    "defaultValue": [
      120,
      1,
      0,
      0
    ],
    "attributes": [
      "lilALLocal"
    ]
  },
  {
    "name": "_DissolveMask",
    "displayName": "Dissolve Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_DissolveNoiseMask",
    "displayName": "Dissolve Noise Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "gray"
    },
    "attributes": []
  },
  {
    "name": "_DissolveNoiseMask_ScrollRotate",
    "displayName": "Scroll",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_DissolveNoiseStrength",
    "displayName": "Dissolve Noise Strength",
    "type": "Float",
    "defaultValue": 0.1,
    "attributes": []
  },
  {
    "name": "_DissolveColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_DissolveParams",
    "displayName": "sDissolveParamsModes",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0.5,
      0.1
    ],
    "attributes": [
      "lilDissolve"
    ]
  },
  {
    "name": "_DissolvePos",
    "displayName": "Dissolve Position",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilDissolveP"
    ]
  },
  {
    "name": "_IDMaskCompile",
    "displayName": "_IDMaskCompile",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskFrom",
    "displayName": "_IDMaskFrom|0: UV0|1: UV1|2: UV2|3: UV3|4: UV4|5: UV5|6: UV6|7: UV7|8: VertexID",
    "type": "Int",
    "defaultValue": 8,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_IDMask1",
    "displayName": "_IDMask1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask2",
    "displayName": "_IDMask2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask3",
    "displayName": "_IDMask3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask4",
    "displayName": "_IDMask4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask5",
    "displayName": "_IDMask5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask6",
    "displayName": "_IDMask6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask7",
    "displayName": "_IDMask7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMask8",
    "displayName": "_IDMask8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskIsBitmap",
    "displayName": "_IDMaskIsBitmap",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskIndex1",
    "displayName": "_IDMaskIndex1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex2",
    "displayName": "_IDMaskIndex2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex3",
    "displayName": "_IDMaskIndex3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex4",
    "displayName": "_IDMaskIndex4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex5",
    "displayName": "_IDMaskIndex5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex6",
    "displayName": "_IDMaskIndex6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex7",
    "displayName": "_IDMaskIndex7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskIndex8",
    "displayName": "_IDMaskIndex8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_IDMaskControlsDissolve",
    "displayName": "_IDMaskControlsDissolve",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior1",
    "displayName": "_IDMaskPrior1",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior2",
    "displayName": "_IDMaskPrior2",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior3",
    "displayName": "_IDMaskPrior3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior4",
    "displayName": "_IDMaskPrior4",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior5",
    "displayName": "_IDMaskPrior5",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior6",
    "displayName": "_IDMaskPrior6",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior7",
    "displayName": "_IDMaskPrior7",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_IDMaskPrior8",
    "displayName": "_IDMaskPrior8",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "ToggleUI"
    ]
  },
  {
    "name": "_UDIMDiscardCompile",
    "displayName": "sUDIMDiscard",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_UDIMDiscardUV",
    "displayName": "sUDIMDiscardUV|0: UV0|1: UV1|2: UV2|3: UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UDIMDiscardMode",
    "displayName": "sUDIMDiscardMode|0: Vertex|1: Pixel (slower)",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow3_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow2_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow1_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_3",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_2",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_1",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_UDIMDiscardRow0_0",
    "displayName": "",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0.6,
      0.56,
      0.73,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_OutlineTex",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_OutlineTex_ScrollRotate",
    "displayName": "sScrollRotates",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      0,
      0
    ],
    "attributes": [
      "lilUVAnim"
    ]
  },
  {
    "name": "_OutlineTexHSVG",
    "displayName": "sHSVGs",
    "type": "Vector",
    "defaultValue": [
      0,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHSVG"
    ]
  },
  {
    "name": "_OutlineLitColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      0.2,
      0,
      0
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_OutlineLitApplyTex",
    "displayName": "sColorFromMain",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineLitScale",
    "displayName": "Scale",
    "type": "Float",
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_OutlineLitOffset",
    "displayName": "Offset",
    "type": "Float",
    "defaultValue": -8,
    "attributes": []
  },
  {
    "name": "_OutlineLitShadowReceive",
    "displayName": "sReceiveShadow",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineWidth",
    "displayName": "Width",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.08,
    "attributes": [
      "lilOLWidth"
    ]
  },
  {
    "name": "_OutlineWidthMask",
    "displayName": "Width",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_OutlineFixWidth",
    "displayName": "sFixWidth",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_OutlineVertexR2Width",
    "displayName": "sOutlineVertexColorUsages",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineDeleteMesh",
    "displayName": "sDeleteMesh0",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineVectorTex",
    "displayName": "Vector",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "NoScaleOffset",
      "Normal"
    ]
  },
  {
    "name": "_OutlineVectorUVMode",
    "displayName": "UV Mode|UV0|UV1|UV2|UV3",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineVectorScale",
    "displayName": "Vector scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_OutlineEnableLighting",
    "displayName": "sEnableLighting",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_OutlineZBias",
    "displayName": "Z Bias",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineDisableInVR",
    "displayName": "sDisableInVR",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_TessEdge",
    "displayName": "sTessellationEdge",
    "type": "Range",
    "range": [
      1,
      100
    ],
    "defaultValue": 10,
    "attributes": []
  },
  {
    "name": "_TessStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_TessShrink",
    "displayName": "sTessellationShrink",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_TessFactorMax",
    "displayName": "sTessellationFactor",
    "type": "Range",
    "range": [
      1,
      8
    ],
    "defaultValue": 3,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_UseOutline",
    "displayName": "Use Outline",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggleLeft"
    ]
  },
  {
    "name": "_TransparentMode",
    "displayName": "Rendering Mode|Opaque|Cutout|Transparent|Refraction|Fur|FurCutout|Gem",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_UseClippingCanceller",
    "displayName": "sSettingClippingCanceller",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_AsOverlay",
    "displayName": "sAsOverlay",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_BaseColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_BaseMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_BaseColorMap",
    "displayName": "Texture",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_lilToonVersion",
    "displayName": "Version",
    "type": "Int",
    "defaultValue": 45,
    "attributes": [
      "HideInInspector"
    ]
  },
  {
    "name": "_Ramp",
    "displayName": "Shadow Ramp",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_Cull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_SrcBlend",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlend",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_SrcBlendAlpha",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendAlpha",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_BlendOp",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_BlendOpAlpha",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_SrcBlendFA",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendFA",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_SrcBlendAlphaFA",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_DstBlendAlphaFA",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_BlendOpFA",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_BlendOpAlphaFA",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_ZClip",
    "displayName": "sZClip",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ZWrite",
    "displayName": "sZWrite",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_ZTest",
    "displayName": "sZTest",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_StencilRef",
    "displayName": "Ref",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 0,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilReadMask",
    "displayName": "ReadMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilWriteMask",
    "displayName": "WriteMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_StencilComp",
    "displayName": "Comp",
    "type": "Float",
    "defaultValue": 8,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_StencilPass",
    "displayName": "Pass",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_StencilFail",
    "displayName": "Fail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_StencilZFail",
    "displayName": "ZFail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OffsetFactor",
    "displayName": "sOffsetFactor",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OffsetUnits",
    "displayName": "sOffsetUnits",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_ColorMask",
    "displayName": "sColorMask",
    "type": "Int",
    "defaultValue": 15,
    "attributes": [
      "lilColorMask"
    ]
  },
  {
    "name": "_AlphaToMask",
    "displayName": "sAlphaToMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_lilShadowCasterBias",
    "displayName": "Shadow Caster Bias",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_RefractionStrength",
    "displayName": "sStrength",
    "type": "Range",
    "range": [
      -1,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_RefractionFresnelPower",
    "displayName": "sRefractionFresnel",
    "type": "Range",
    "range": [
      0.01,
      10
    ],
    "defaultValue": 1,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_RefractionColorFromMain",
    "displayName": "sColorFromMain",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_RefractionColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": []
  },
  {
    "name": "_FurNoiseMask",
    "displayName": "Noise",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": []
  },
  {
    "name": "_FurMask",
    "displayName": "Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_FurLengthMask",
    "displayName": "Length Mask",
    "type": "2D",
    "defaultValue": {
      "texture": "white"
    },
    "attributes": [
      "NoScaleOffset"
    ]
  },
  {
    "name": "_FurVectorTex",
    "displayName": "Vector",
    "type": "2D",
    "defaultValue": {
      "texture": "bump"
    },
    "attributes": [
      "NoScaleOffset",
      "Normal"
    ]
  },
  {
    "name": "_FurVectorScale",
    "displayName": "Vector scale",
    "type": "Range",
    "range": [
      -10,
      10
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_FurVector",
    "displayName": "sFurVectors",
    "type": "Vector",
    "defaultValue": [
      0,
      0,
      1,
      0.02
    ],
    "attributes": [
      "lilVec3Float"
    ]
  },
  {
    "name": "_VertexColor2FurVector",
    "displayName": "sVertexColor2Vector",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_FurGravity",
    "displayName": "sGravity",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.25,
    "attributes": []
  },
  {
    "name": "_FurRandomize",
    "displayName": "sRandomize",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurAO",
    "displayName": "sAO",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurLayerNum",
    "displayName": "sLayerNum",
    "type": "Range",
    "range": [
      1,
      3
    ],
    "defaultValue": 2,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_FurRootOffset",
    "displayName": "sRootWidth",
    "type": "Range",
    "range": [
      -1,
      0
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurCutoutLength",
    "displayName": "sLength+ (Cutout)",
    "type": "Float",
    "defaultValue": 0.8,
    "attributes": []
  },
  {
    "name": "_FurTouchStrength",
    "displayName": "sTouchStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurRimColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      0,
      0,
      0,
      1
    ],
    "attributes": []
  },
  {
    "name": "_FurRimFresnelPower",
    "displayName": "sFresnelPower",
    "type": "Range",
    "range": [
      0.01,
      50
    ],
    "defaultValue": 3,
    "attributes": [
      "PowerSlider(3.0)"
    ]
  },
  {
    "name": "_FurRimAntiLight",
    "displayName": "sAntiLight",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.5,
    "attributes": []
  },
  {
    "name": "_FurCull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_FurSrcBlend",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 5,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurDstBlend",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurSrcBlendAlpha",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurDstBlendAlpha",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurBlendOp",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_FurBlendOpAlpha",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_FurSrcBlendFA",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurDstBlendFA",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurSrcBlendAlphaFA",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurDstBlendAlphaFA",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_FurBlendOpFA",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_FurBlendOpAlphaFA",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_FurZClip",
    "displayName": "sZClip",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_FurZWrite",
    "displayName": "sZWrite",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_FurZTest",
    "displayName": "sZTest",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_FurStencilRef",
    "displayName": "Ref",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 0,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_FurStencilReadMask",
    "displayName": "ReadMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_FurStencilWriteMask",
    "displayName": "WriteMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_FurStencilComp",
    "displayName": "Comp",
    "type": "Float",
    "defaultValue": 8,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_FurStencilPass",
    "displayName": "Pass",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_FurStencilFail",
    "displayName": "Fail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_FurStencilZFail",
    "displayName": "ZFail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_FurOffsetFactor",
    "displayName": "sOffsetFactor",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurOffsetUnits",
    "displayName": "sOffsetUnits",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_FurColorMask",
    "displayName": "sColorMask",
    "type": "Int",
    "defaultValue": 15,
    "attributes": [
      "lilColorMask"
    ]
  },
  {
    "name": "_FurAlphaToMask",
    "displayName": "sAlphaToMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_GemChromaticAberration",
    "displayName": "sChromaticAberration",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 0.02,
    "attributes": []
  },
  {
    "name": "_GemEnvContrast",
    "displayName": "sContrast",
    "type": "Float",
    "defaultValue": 2,
    "attributes": []
  },
  {
    "name": "_GemEnvColor",
    "displayName": "sEnvironmentColor",
    "type": "Color",
    "defaultValue": [
      1,
      1,
      1,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_GemParticleLoop",
    "displayName": "sParticleLoop",
    "type": "Float",
    "defaultValue": 8,
    "attributes": []
  },
  {
    "name": "_GemParticleColor",
    "displayName": "sColor",
    "type": "Color",
    "defaultValue": [
      4,
      4,
      4,
      1
    ],
    "attributes": [
      "lilHDR"
    ]
  },
  {
    "name": "_GemVRParallaxStrength",
    "displayName": "sVRParallaxStrength",
    "type": "Range",
    "range": [
      0,
      1
    ],
    "defaultValue": 1,
    "attributes": []
  },
  {
    "name": "_OutlineCull",
    "displayName": "sCullModes",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilEnum"
    ]
  },
  {
    "name": "_OutlineSrcBlend",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlend",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineSrcBlendAlpha",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendAlpha",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 10,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineBlendOp",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineBlendOpAlpha",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineSrcBlendFA",
    "displayName": "sSrcBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendFA",
    "displayName": "sDstBlendRGB",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineSrcBlendAlphaFA",
    "displayName": "sSrcBlendAlpha",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineDstBlendAlphaFA",
    "displayName": "sDstBlendAlpha",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendMode)"
    ]
  },
  {
    "name": "_OutlineBlendOpFA",
    "displayName": "sBlendOpRGB",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineBlendOpAlphaFA",
    "displayName": "sBlendOpAlpha",
    "type": "Int",
    "defaultValue": 4,
    "attributes": [
      "Enum(UnityEngine.Rendering.BlendOp)"
    ]
  },
  {
    "name": "_OutlineZClip",
    "displayName": "sZClip",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineZWrite",
    "displayName": "sZWrite",
    "type": "Int",
    "defaultValue": 1,
    "attributes": [
      "lilToggle"
    ]
  },
  {
    "name": "_OutlineZTest",
    "displayName": "sZTest",
    "type": "Int",
    "defaultValue": 2,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_OutlineStencilRef",
    "displayName": "Ref",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 0,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilReadMask",
    "displayName": "ReadMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilWriteMask",
    "displayName": "WriteMask",
    "type": "Range",
    "range": [
      0,
      255
    ],
    "defaultValue": 255,
    "attributes": [
      "IntRange"
    ]
  },
  {
    "name": "_OutlineStencilComp",
    "displayName": "Comp",
    "type": "Float",
    "defaultValue": 8,
    "attributes": [
      "Enum(UnityEngine.Rendering.CompareFunction)"
    ]
  },
  {
    "name": "_OutlineStencilPass",
    "displayName": "Pass",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineStencilFail",
    "displayName": "Fail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineStencilZFail",
    "displayName": "ZFail",
    "type": "Float",
    "defaultValue": 0,
    "attributes": [
      "Enum(UnityEngine.Rendering.StencilOp)"
    ]
  },
  {
    "name": "_OutlineOffsetFactor",
    "displayName": "sOffsetFactor",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineOffsetUnits",
    "displayName": "sOffsetUnits",
    "type": "Float",
    "defaultValue": 0,
    "attributes": []
  },
  {
    "name": "_OutlineColorMask",
    "displayName": "sColorMask",
    "type": "Int",
    "defaultValue": 15,
    "attributes": [
      "lilColorMask"
    ]
  },
  {
    "name": "_OutlineAlphaToMask",
    "displayName": "sAlphaToMask",
    "type": "Int",
    "defaultValue": 0,
    "attributes": [
      "lilToggle"
    ]
  }
];

// src/generated/renderStates.ts
var LILTOON_RENDER_RECIPES = {
  "opaque": {
    "source": "ltspass_opaque.shader",
    "passes": {
      "forward": {
        "name": "FORWARD",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": {
            "property": "_ZWrite"
          },
          "zTest": {
            "property": "_ZTest"
          },
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_BlendOp"
            },
            {
              "property": "_BlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlend"
            },
            {
              "property": "_DstBlend"
            },
            {
              "property": "_SrcBlendAlpha"
            },
            {
              "property": "_DstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_outline": {
        "name": "FORWARD_OUTLINE",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": {
            "property": "_OutlineZWrite"
          },
          "zTest": {
            "property": "_OutlineZTest"
          },
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOp"
            },
            {
              "property": "_OutlineBlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlend"
            },
            {
              "property": "_OutlineDstBlend"
            },
            {
              "property": "_OutlineSrcBlendAlpha"
            },
            {
              "property": "_OutlineDstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add": {
        "name": "FORWARD_ADD",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlendFA"
            },
            {
              "property": "_DstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_BlendOpFA"
            },
            {
              "property": "_BlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add_outline": {
        "name": "FORWARD_ADD_OUTLINE",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlendFA"
            },
            {
              "property": "_OutlineDstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOpFA"
            },
            {
              "property": "_OutlineBlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "shadow_caster": {
        "name": "SHADOW_CASTER",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "shadow_caster_outline": {
        "name": "SHADOW_CASTER_OUTLINE",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "meta": {
        "name": "META",
        "tags": {
          "LightMode": "Meta"
        },
        "renderState": {
          "cull": false
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_META"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "shader_feature EDITOR_VISUALIZATION"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_meta.hlsl"
        ]
      }
    }
  },
  "cutout": {
    "source": "ltspass_cutout.shader",
    "passes": {
      "forward": {
        "name": "FORWARD",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": {
            "property": "_ZWrite"
          },
          "zTest": {
            "property": "_ZTest"
          },
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_BlendOp"
            },
            {
              "property": "_BlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlend"
            },
            {
              "property": "_DstBlend"
            },
            {
              "property": "_SrcBlendAlpha"
            },
            {
              "property": "_DstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_outline": {
        "name": "FORWARD_OUTLINE",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": {
            "property": "_OutlineZWrite"
          },
          "zTest": {
            "property": "_OutlineZTest"
          },
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOp"
            },
            {
              "property": "_OutlineBlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlend"
            },
            {
              "property": "_OutlineDstBlend"
            },
            {
              "property": "_OutlineSrcBlendAlpha"
            },
            {
              "property": "_OutlineDstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add": {
        "name": "FORWARD_ADD",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlendFA"
            },
            {
              "property": "_DstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_BlendOpFA"
            },
            {
              "property": "_BlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add_outline": {
        "name": "FORWARD_ADD_OUTLINE",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlendFA"
            },
            {
              "property": "_OutlineDstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOpFA"
            },
            {
              "property": "_OutlineBlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "shadow_caster": {
        "name": "SHADOW_CASTER",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "shadow_caster_outline": {
        "name": "SHADOW_CASTER_OUTLINE",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "meta": {
        "name": "META",
        "tags": {
          "LightMode": "Meta"
        },
        "renderState": {
          "cull": false
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_META"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "shader_feature EDITOR_VISUALIZATION"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_meta.hlsl"
        ]
      }
    }
  },
  "transparent": {
    "source": "ltspass_transparent.shader",
    "passes": {
      "forward_back": {
        "name": "FORWARD_BACK",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_PreCull"
          },
          "zWrite": {
            "property": "_PreZWrite"
          },
          "zTest": {
            "property": "_PreZTest"
          },
          "colorMask": {
            "property": "_PreColorMask"
          },
          "offset": [
            {
              "property": "_PreOffsetFactor"
            },
            {
              "property": "_PreOffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_PreBlendOp"
            },
            {
              "property": "_PreBlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_PreSrcBlend"
            },
            {
              "property": "_PreDstBlend"
            },
            {
              "property": "_PreSrcBlendAlpha"
            },
            {
              "property": "_PreDstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_PreAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_PreStencilRef"
            },
            "readMask": {
              "property": "_PreStencilReadMask"
            },
            "writeMask": {
              "property": "_PreStencilWriteMask"
            },
            "comp": {
              "property": "_PreStencilComp"
            },
            "pass": {
              "property": "_PreStencilPass"
            },
            "fail": {
              "property": "_PreStencilFail"
            },
            "zFail": {
              "property": "_PreStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD",
          "LIL_TRANSPARENT_PRE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward": {
        "name": "FORWARD",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": {
            "property": "_ZWrite"
          },
          "zTest": {
            "property": "_ZTest"
          },
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_BlendOp"
            },
            {
              "property": "_BlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlend"
            },
            {
              "property": "_DstBlend"
            },
            {
              "property": "_SrcBlendAlpha"
            },
            {
              "property": "_DstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_outline": {
        "name": "FORWARD_OUTLINE",
        "tags": {
          "LightMode": "ForwardBase"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": {
            "property": "_OutlineZWrite"
          },
          "zTest": {
            "property": "_OutlineZTest"
          },
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOp"
            },
            {
              "property": "_OutlineBlendOpAlpha"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlend"
            },
            {
              "property": "_OutlineDstBlend"
            },
            {
              "property": "_OutlineSrcBlendAlpha"
            },
            {
              "property": "_OutlineDstBlendAlpha"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fwdbase",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add": {
        "name": "FORWARD_ADD",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_Cull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_ColorMask"
          },
          "offset": [
            {
              "property": "_OffsetFactor"
            },
            {
              "property": "_OffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_SrcBlendFA"
            },
            {
              "property": "_DstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_BlendOpFA"
            },
            {
              "property": "_BlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_AlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "forward_add_outline": {
        "name": "FORWARD_ADD_OUTLINE",
        "tags": {
          "LightMode": "ForwardAdd"
        },
        "renderState": {
          "cull": {
            "property": "_OutlineCull"
          },
          "zWrite": false,
          "zTest": "LEqual",
          "colorMask": {
            "property": "_OutlineColorMask"
          },
          "offset": [
            {
              "property": "_OutlineOffsetFactor"
            },
            {
              "property": "_OutlineOffsetUnits"
            }
          ],
          "blend": [
            {
              "property": "_OutlineSrcBlendFA"
            },
            {
              "property": "_OutlineDstBlendFA"
            },
            "Zero",
            "One"
          ],
          "blendOp": [
            {
              "property": "_OutlineBlendOpFA"
            },
            {
              "property": "_OutlineBlendOpAlphaFA"
            }
          ],
          "alphaToMask": {
            "property": "_OutlineAlphaToMask"
          },
          "stencil": {
            "ref": {
              "property": "_OutlineStencilRef"
            },
            "readMask": {
              "property": "_OutlineStencilReadMask"
            },
            "writeMask": {
              "property": "_OutlineStencilWriteMask"
            },
            "comp": {
              "property": "_OutlineStencilComp"
            },
            "pass": {
              "property": "_OutlineStencilPass"
            },
            "fail": {
              "property": "_OutlineStencilFail"
            },
            "zFail": {
              "property": "_OutlineStencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_FORWARDADD",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_fragment POINT DIRECTIONAL SPOT POINT_COOKIE DIRECTIONAL_COOKIE",
          "multi_compile_vertex _ FOG_LINEAR FOG_EXP FOG_EXP2",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_forward.hlsl"
        ]
      },
      "shadow_caster": {
        "name": "SHADOW_CASTER",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "shadow_caster_outline": {
        "name": "SHADOW_CASTER_OUTLINE",
        "tags": {
          "LightMode": "ShadowCaster"
        },
        "renderState": {
          "offset": [
            1,
            1
          ],
          "cull": {
            "property": "_Cull"
          },
          "stencil": {
            "ref": {
              "property": "_StencilRef"
            },
            "readMask": {
              "property": "_StencilReadMask"
            },
            "writeMask": {
              "property": "_StencilWriteMask"
            },
            "comp": {
              "property": "_StencilComp"
            },
            "pass": {
              "property": "_StencilPass"
            },
            "fail": {
              "property": "_StencilFail"
            },
            "zFail": {
              "property": "_StencilZFail"
            }
          }
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_SHADOWCASTER",
          "LIL_OUTLINE"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "multi_compile_shadowcaster",
          "multi_compile_instancing"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_shadowcaster.hlsl"
        ]
      },
      "meta": {
        "name": "META",
        "tags": {
          "LightMode": "Meta"
        },
        "renderState": {
          "cull": false
        },
        "defines": [
          "LIL_RENDER",
          "LIL_FEATURE_ANIMATE_MAIN_UV",
          "LIL_FEATURE_MAIN_TONE_CORRECTION",
          "LIL_FEATURE_MAIN_GRADATION_MAP",
          "LIL_FEATURE_MAIN2ND",
          "LIL_FEATURE_MAIN3RD",
          "LIL_FEATURE_DECAL",
          "LIL_FEATURE_ANIMATE_DECAL",
          "LIL_FEATURE_LAYER_DISSOLVE",
          "LIL_FEATURE_ALPHAMASK",
          "LIL_FEATURE_SHADOW",
          "LIL_FEATURE_RECEIVE_SHADOW",
          "LIL_FEATURE_SHADOW_3RD",
          "LIL_FEATURE_SHADOW_LUT",
          "LIL_FEATURE_RIMSHADE",
          "LIL_FEATURE_EMISSION_1ST",
          "LIL_FEATURE_EMISSION_2ND",
          "LIL_FEATURE_ANIMATE_EMISSION_UV",
          "LIL_FEATURE_ANIMATE_EMISSION_MASK_UV",
          "LIL_FEATURE_EMISSION_GRADATION",
          "LIL_FEATURE_NORMAL_1ST",
          "LIL_FEATURE_NORMAL_2ND",
          "LIL_FEATURE_ANISOTROPY",
          "LIL_FEATURE_REFLECTION",
          "LIL_FEATURE_MATCAP",
          "LIL_FEATURE_MATCAP_2ND",
          "LIL_FEATURE_RIMLIGHT",
          "LIL_FEATURE_RIMLIGHT_DIRECTION",
          "LIL_FEATURE_GLITTER",
          "LIL_FEATURE_BACKLIGHT",
          "LIL_FEATURE_PARALLAX",
          "LIL_FEATURE_POM",
          "LIL_FEATURE_DISTANCE_FADE",
          "LIL_FEATURE_AUDIOLINK",
          "LIL_FEATURE_AUDIOLINK_VERTEX",
          "LIL_FEATURE_AUDIOLINK_LOCAL",
          "LIL_FEATURE_DISSOLVE",
          "LIL_FEATURE_DITHER",
          "LIL_FEATURE_IDMASK",
          "LIL_FEATURE_UDIMDISCARD",
          "LIL_FEATURE_OUTLINE_TONE_CORRECTION",
          "LIL_FEATURE_OUTLINE_RECEIVE_SHADOW",
          "LIL_FEATURE_ANIMATE_OUTLINE_UV",
          "LIL_FEATURE_FUR_COLLISION",
          "LIL_FEATURE_MainGradationTex",
          "LIL_FEATURE_MainColorAdjustMask",
          "LIL_FEATURE_Main2ndTex",
          "LIL_FEATURE_Main2ndBlendMask",
          "LIL_FEATURE_Main2ndDissolveMask",
          "LIL_FEATURE_Main2ndDissolveNoiseMask",
          "LIL_FEATURE_Main3rdTex",
          "LIL_FEATURE_Main3rdBlendMask",
          "LIL_FEATURE_Main3rdDissolveMask",
          "LIL_FEATURE_Main3rdDissolveNoiseMask",
          "LIL_FEATURE_AlphaMask",
          "LIL_FEATURE_BumpMap",
          "LIL_FEATURE_Bump2ndMap",
          "LIL_FEATURE_Bump2ndScaleMask",
          "LIL_FEATURE_AnisotropyTangentMap",
          "LIL_FEATURE_AnisotropyScaleMask",
          "LIL_FEATURE_AnisotropyShiftNoiseMask",
          "LIL_FEATURE_ShadowBorderMask",
          "LIL_FEATURE_ShadowBlurMask",
          "LIL_FEATURE_ShadowStrengthMask",
          "LIL_FEATURE_ShadowColorTex",
          "LIL_FEATURE_Shadow2ndColorTex",
          "LIL_FEATURE_Shadow3rdColorTex",
          "LIL_FEATURE_RimShadeMask",
          "LIL_FEATURE_BacklightColorTex",
          "LIL_FEATURE_SmoothnessTex",
          "LIL_FEATURE_MetallicGlossMap",
          "LIL_FEATURE_ReflectionColorTex",
          "LIL_FEATURE_ReflectionCubeTex",
          "LIL_FEATURE_MatCapTex",
          "LIL_FEATURE_MatCapBlendMask",
          "LIL_FEATURE_MatCapBumpMap",
          "LIL_FEATURE_MatCap2ndTex",
          "LIL_FEATURE_MatCap2ndBlendMask",
          "LIL_FEATURE_MatCap2ndBumpMap",
          "LIL_FEATURE_RimColorTex",
          "LIL_FEATURE_GlitterColorTex",
          "LIL_FEATURE_GlitterShapeTex",
          "LIL_FEATURE_EmissionMap",
          "LIL_FEATURE_EmissionBlendMask",
          "LIL_FEATURE_EmissionGradTex",
          "LIL_FEATURE_Emission2ndMap",
          "LIL_FEATURE_Emission2ndBlendMask",
          "LIL_FEATURE_Emission2ndGradTex",
          "LIL_FEATURE_ParallaxMap",
          "LIL_FEATURE_AudioLinkMask",
          "LIL_FEATURE_AudioLinkLocalMap",
          "LIL_FEATURE_DissolveMask",
          "LIL_FEATURE_DissolveNoiseMask",
          "LIL_FEATURE_OutlineTex",
          "LIL_FEATURE_OutlineWidthMask",
          "LIL_FEATURE_OutlineVectorTex",
          "LIL_FEATURE_FurNoiseMask",
          "LIL_FEATURE_FurMask",
          "LIL_FEATURE_FurLengthMask",
          "LIL_FEATURE_FurVectorTex",
          "LIL_OPTIMIZE_APPLY_SHADOW_FA",
          "LIL_OPTIMIZE_USE_FORWARDADD",
          "LIL_OPTIMIZE_USE_VERTEXLIGHT",
          "LIL_FEATURE_VRCLIGHTVOLUMES_WITHOUTPACKAGE",
          "LIL_PASS_META"
        ],
        "pragmas": [
          "skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE",
          "target 3.5",
          "fragmentoption ARB_precision_hint_fastest",
          "skip_variants DECALS_OFF DECALS_3RT DECALS_4RT DECAL_SURFACE_GRADIENT _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3",
          "skip_variants _ADDITIONAL_LIGHT_SHADOWS",
          "skip_variants PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2",
          "skip_variants _SCREEN_SPACE_OCCLUSION",
          "vertex vert",
          "fragment frag",
          "shader_feature EDITOR_VISUALIZATION"
        ],
        "includes": [
          "Includes/lil_pipeline_brp.hlsl",
          "Includes/lil_common.hlsl",
          "Includes/lil_pass_meta.hlsl"
        ]
      }
    }
  }
};

export { FurPass, GemPass, LILTOON_PROPERTIES, LILTOON_RENDER_RECIPES, RefractionPass, enableLilToon };
