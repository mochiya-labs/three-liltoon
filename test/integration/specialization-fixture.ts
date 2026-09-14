import {
	AmbientLight,
	DataTexture,
	Float32BufferAttribute,
	Mesh,
	NearestFilter,
	OrthographicCamera,
	PlaneGeometry,
	Scene,
	Texture,
	Vector4,
	WebGLRenderer,
	WebGLRenderTarget,
} from "three";
import { LilToonMaterial } from "../../dist/index.js";
import { getLilToonShaderProgram } from "../../src/shader/ShaderProgramLibrary.js";

function tex(r = 255, g = 255, b = 255, a = 255) {
	const t = new DataTexture(new Uint8Array([r, g, b, a]), 1, 1);
	t.minFilter = NearestFilter;
	t.magFilter = NearestFilter;
	t.needsUpdate = true;
	return t;
}
function harness() {
	const renderer = new WebGLRenderer({ antialias: false });
	renderer.setSize(32, 32);
	const target = new WebGLRenderTarget(32, 32);
	renderer.setRenderTarget(target);
	renderer.setClearColor(0, 0);
	const camera = new OrthographicCamera(-1, 1, 1, -1, 0.1, 10);
	camera.position.z = 2;
	const scene = new Scene();
	scene.add(new AmbientLight(0xffffff, 1));
	const geometry = new PlaneGeometry(2, 2);
	const mesh = new Mesh(geometry);
	scene.add(mesh);
	const materials = new Set<LilToonMaterial>();
	const render = (material: LilToonMaterial) => {
		materials.add(material);
		mesh.material = material;
		renderer.render(scene, camera);
		const data = new Uint8Array(4);
		renderer.readRenderTargetPixels(target, 16, 16, 1, 1, data);
		return [...data];
	};
	const dispose = () => {
		for (const m of materials) m.dispose();
		geometry.dispose();
		target.dispose();
		renderer.dispose();
	};
	return { renderer, render, mesh, geometry, dispose };
}
export function verifySpecializationRendering() {
	const details: unknown[] = [];
	const h = harness(),
		checks: Record<string, boolean> = {};
	const white = tex(),
		black = tex(0, 0, 0),
		transparent = tex(255, 255, 255, 0),
		red = tex(255, 0, 0);
	const defaults = {
		_Color: [0.05, 0.05, 0.05, 1],
		_AsUnlit: 1,
		_UseShadow: 0,
		_UseMatCap: 1,
		_MatCapColor: [0.1, 0.1, 0.1, 1],
		_MatCapBlend: 0.5,
		_UseRim: 1,
		_RimColor: [0.1, 0.1, 0.1, 1],
		_UseReflection: 1,
		_ApplySpecular: 0,
		_ApplyReflection: 0,
	};
	for (const mode of ["opaque", "cutout", "transparent"] as const) {
		for (const second of [false, true]) {
			const prefix = second ? "_Emission2nd" : "_Emission";
			const material = new LilToonMaterial({
				renderMode: mode,
				properties: {
					...defaults,
					[second ? "_UseEmission2nd" : "_UseEmission"]: 1,
					[`${prefix}Color`]: [0.6, 0.2, 0.1, 1],
				},
				textures: {
					_MainTex: white,
					_MatCapBlendMask: white,
					_RimColorTex: white,
					[`${prefix}Map`]: white,
					[`${prefix}BlendMask`]: black,
				},
			});
			const off = h.render(material);
			material.setTexture(`${prefix}BlendMask`, white);
			const on = h.render(material);
			checks[`${mode}/${prefix}/mask`] = on[0]! > off[0]! + 80;
			material.setTexture(`${prefix}BlendMask`, transparent);
			const alpha = h.render(material);
			checks[`${mode}/${prefix}/rgba`] = alpha.every(
				(v, i) => Math.abs(v - off[i]!) <= 1,
			);
			material.setTexture(`${prefix}BlendMask`, null);
			const fallback = h.render(material);
			checks[`${mode}/${prefix}/fallback`] = fallback.every(
				(v, i) => Math.abs(v - on[i]!) <= 1,
			);
			material.setTexture(`${prefix}Map`, red);
			const colored = h.render(material);
			checks[`${mode}/${prefix}/map`] =
				colored[0] === on[0] && colored[1]! < on[1]! - 25;
			const key = material.shaderKey;
			material.setProperty(`${prefix}Blend`, 0.5);
			h.render(material);
			checks[`${mode}/${prefix}/uniform`] = material.shaderKey === key;
			material.setProperty(second ? "_UseEmission2nd" : "_UseEmission", 0);
			const disabled = h.render(material);
			checks[`${mode}/${prefix}/toggle`] = disabled.every(
				(v, i) => Math.abs(v - off[i]!) <= 1,
			);
			// Freeze UVs and time to check independent mask tiling and animation deterministically.
			const uv = h.geometry.attributes.uv!;
			for (let i = 0; i < uv.count; i++) uv.setXY(i, 0.25, 0.25);
			uv.needsUpdate = true;
			const stripe = new DataTexture(
				new Uint8Array([0, 0, 0, 255, 255, 255, 255, 255]),
				2,
				1,
			);
			stripe.needsUpdate = true;
			material.setProperty(second ? "_UseEmission2nd" : "_UseEmission", 1);
			material.setProperty(`${prefix}Blend`, 1);
			material.setTexture(`${prefix}Map`, white);
			material.setTexture(`${prefix}BlendMask`, stripe);
			const beforeUV = h.render(material);
			material.setProperty(`${prefix}BlendMask_ST`, [1, 1, 0.5, 0]);
			const afterUV = h.render(material);
			details.push({ mode, prefix, beforeUV, afterUV });
			checks[`${mode}/${prefix}/uv`] = afterUV[0]! > beforeUV[0]! + 80;
			material.setProperty(`${prefix}BlendMask_ST`, [1, 1, 0, 0]);
			material.setProperty(`${prefix}BlendMask_ScrollRotate`, [0.5, 0, 0, 0]);
			const callback = material.onBeforeRender;
			material.onBeforeRender = (...args) => {
				callback(...args);
				(material.globalUniforms.uTime as Vector4).set(0.05, 1, 2, 3);
			};
			const animated = h.render(material);
			checks[`${mode}/${prefix}/animation`] = animated.every(
				(v, i) => Math.abs(v - afterUV[i]!) <= 1,
			);
			stripe.dispose();
		}
		const alphaMaterial = new LilToonMaterial({
			renderMode: mode,
			properties: { ...defaults, _AlphaMaskMode: 1 },
			textures: {
				_MainTex: white,
				_AlphaMask: black,
				_MatCapBlendMask: white,
				_RimColorTex: white,
			},
		});
		const alpha = h.render(alphaMaterial);
		checks[`${mode}/alpha-mask`] =
			mode === "opaque" ? alpha[3] === 255 : alpha[3] === 0;
		checks[`${mode}/diagnostics`] = alphaMaterial.getWarnings().length === 0;
	}
	const material = new LilToonMaterial({
		properties: {
			...defaults,
			_UseReflection: 1,
			_ApplyReflection: 1,
			_MatCapColor: [0.6, 0.1, 0.1, 1],
			_MatCapBlend: 1,
		},
		textures: { _MainTex: white, _MatCapTex: white, _MatCapBlendMask: black },
	});
	const noMask = h.render(material);
	material.setTexture("_MatCapBlendMask", white);
	const masked = h.render(material);
	material.setProperty("_UseReflection", 0);
	const noReflection = h.render(material);
	checks["matcap/reflection"] =
		masked[0]! > noMask[0]! + 70 &&
		noReflection.every((v, i) => Math.abs(v - masked[i]!) <= 1);
	const glError = h.renderer.getContext().getError();
	h.dispose();
	for (const t of [white, black, transparent, red]) t.dispose();
	return { checks, glError, details };
}
export function verifyTextureCapacity() {
	const h = harness();
	const properties = {
		_UseShadow: 1,
		_UseMain2ndTex: 1,
		_UseMain3rdTex: 1,
		_UseEmission: 1,
		_UseEmission2nd: 1,
		_UseMatCap: 1,
		_UseRim: 1,
		_UseReflection: 1,
		_ApplyReflection: 1,
	};
	const names = [
		"_MainTex",
		"_Main2ndTex",
		"_Main2ndBlendMask",
		"_Main3rdTex",
		"_Main3rdBlendMask",
		"_EmissionMap",
		"_EmissionBlendMask",
		"_Emission2ndMap",
		"_Emission2ndBlendMask",
		"_MatCapTex",
		"_MatCapBlendMask",
		"_RimColorTex",
		"_SmoothnessTex",
		"_MetallicGlossMap",
	];
	const textures = Object.fromEntries(
		names.map((name, i) => [name, tex(128 + i, 128, 128)]),
	);
	const material = new LilToonMaterial({ properties, textures });
	h.geometry.morphAttributes.position = [
		new Float32BufferAttribute(
			new Float32Array(h.geometry.attributes.position!.array),
			3,
		),
	];
	h.mesh.updateMorphTargets();
	const pixel = h.render(material),
		gl = h.renderer.getContext() as WebGL2RenderingContext;
	const resources = getLilToonShaderProgram(
		"opaque",
		material.lilToonProperties,
		textures,
	).resources;
	const activeSamplers = h.renderer.info
		.programs!.map((p) => {
			const program = (p as unknown as { program: WebGLProgram }).program;
			return Array.from(
				{ length: gl.getProgramParameter(program, gl.ACTIVE_UNIFORMS) },
				(_, i) => gl.getActiveUniform(program, i)!,
			)
				.filter((u) =>
					[gl.SAMPLER_2D, gl.SAMPLER_CUBE, gl.SAMPLER_2D_ARRAY].includes(
						u.type as 35678,
					),
				)
				.map((u) => u.name);
		})
		.flat();
	const result = {
		pixel,
		fragment: resources.filter((r) => r.stage === "fragment").length,
		activeSamplers,
		glError: gl.getError(),
		limits: {
			vertex: gl.getParameter(gl.MAX_VERTEX_TEXTURE_IMAGE_UNITS),
			fragment: gl.getParameter(gl.MAX_TEXTURE_IMAGE_UNITS),
			combined: gl.getParameter(gl.MAX_COMBINED_TEXTURE_IMAGE_UNITS),
		},
	};
	h.dispose();
	for (const t of Object.values(textures)) t.dispose();
	return result;
}
