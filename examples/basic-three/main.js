import {
	AmbientLight,
	Bone,
	Color,
	DirectionalLight,
	Float32BufferAttribute,
	Mesh,
	MeshStandardMaterial,
	PCFShadowMap,
	PerspectiveCamera,
	PlaneGeometry,
	Scene,
	Skeleton,
	SkinnedMesh,
	SRGBColorSpace,
	SphereGeometry,
	CylinderGeometry,
	Uint16BufferAttribute,
	WebGLRenderer,
} from "three";
import { OrbitControls } from "three/examples/jsm/controls/OrbitControls.js";
import { LilToonMaterial, enableLilToon } from "@mochiya/three-liltoon";

const canvas = document.querySelector("#scene");
const status = document.querySelector("#status");
const context = canvas.getContext("webgl2", { antialias: true, alpha: false });
if (!context) throw new Error("This example requires WebGL2.");

const renderer = new WebGLRenderer({ canvas, context, antialias: true });
enableLilToon(renderer);
renderer.outputColorSpace = SRGBColorSpace;
renderer.shadowMap.enabled = true;
renderer.shadowMap.type = PCFShadowMap;
renderer.setPixelRatio(Math.min(devicePixelRatio, 2));
renderer.setClearColor(0x20221b);

const scene = new Scene();
scene.background = new Color(0x20221b);
const camera = new PerspectiveCamera(35, 1, 0.1, 100);
camera.position.set(4.4, 2.7, 5.7);
const controls = new OrbitControls(camera, canvas);
controls.target.set(0, 0.7, 0);
controls.enableDamping = true;

scene.add(new AmbientLight(0xe8edda, 0.85));
const sun = new DirectionalLight(0xfff2dc, 3.2);
sun.position.set(3.5, 5.5, 4);
sun.castShadow = true;
sun.shadow.mapSize.set(1024, 1024);
sun.shadow.camera.left = -4;
sun.shadow.camera.right = 4;
sun.shadow.camera.top = 4;
sun.shadow.camera.bottom = -4;
scene.add(sun, sun.target);

const material = new LilToonMaterial({
	name: "Mochiya example",
	renderMode: "opaque",
	properties: {
		_Color: [0.91, 0.35, 0.48, 1],
		_UseShadow: 1,
		_ShadowColor: [0.54, 0.2, 0.33, 1],
		_Shadow2ndColor: [0.77, 0.28, 0.42, 1],
		_ShadowBorder: 0.52,
		_ShadowBlur: 0.08,
		_UseRim: 1,
		_RimColor: [1, 0.75, 0.82, 0.42],
		_RimBorder: 0.45,
		_RimBlur: 0.55,
		_OutlineWidth: 0.055,
		_UseOutline: 1,
		_OutlineColor: [0.16, 0.06, 0.1, 1],
	},
});

const hero = new Mesh(new SphereGeometry(1.25, 96, 64), material);
hero.position.y = 1.3;
hero.castShadow = true;
hero.receiveShadow = true;
const basePositions = hero.geometry.attributes.position;
const morphPositions = new Float32BufferAttribute(
	basePositions.array.slice(),
	3,
);
for (let index = 0; index < morphPositions.count; index += 1) {
	const y = morphPositions.getY(index);
	const factor = 1 + Math.max(0, y) * 0.12;
	morphPositions.setX(index, morphPositions.getX(index) * factor);
	morphPositions.setZ(index, morphPositions.getZ(index) * factor);
}
hero.geometry.morphAttributes.position = [morphPositions];
hero.updateMorphTargets();
scene.add(hero);

const neutral = new MeshStandardMaterial({ color: 0x858a72, roughness: 0.9 });
const floor = new Mesh(new PlaneGeometry(20, 20), neutral);
floor.rotation.x = -Math.PI / 2;
floor.receiveShadow = true;
scene.add(floor);
function createSkinnedColumn() {
	const segmentHeight = 0.75;
	const segmentCount = 4;
	const height = segmentHeight * segmentCount;
	const halfHeight = height / 2;
	const geometry = new CylinderGeometry(
		0.38,
		0.52,
		height,
		32,
		segmentCount * 3,
		true,
	);
	const position = geometry.attributes.position;
	const skinIndices = [];
	const skinWeights = [];
	for (let index = 0; index < position.count; index += 1) {
		const y = position.getY(index) + halfHeight;
		const bone = Math.min(segmentCount - 1, Math.floor(y / segmentHeight));
		const weight = Math.min(
			1,
			Math.max(0, (y - bone * segmentHeight) / segmentHeight),
		);
		skinIndices.push(bone, bone + 1, 0, 0);
		skinWeights.push(1 - weight, weight, 0, 0);
	}
	geometry.setAttribute("skinIndex", new Uint16BufferAttribute(skinIndices, 4));
	geometry.setAttribute(
		"skinWeight",
		new Float32BufferAttribute(skinWeights, 4),
	);
	const bones = [];
	for (let index = 0; index <= segmentCount; index += 1) {
		const bone = new Bone();
		bone.position.y = index === 0 ? -halfHeight : segmentHeight;
		if (bones[index - 1]) bones[index - 1].add(bone);
		bones.push(bone);
	}
	const skinMaterial = new LilToonMaterial({
		name: "Skinned lilToon example",
		properties: {
			...material.lilToonProperties,
			_Color: [0.63, 0.72, 0.36, 1],
			_OutlineWidth: 0.04,
		},
	});
	const mesh = new SkinnedMesh(geometry, skinMaterial);
	mesh.add(bones[0]);
	mesh.bind(new Skeleton(bones));
	mesh.position.set(-2.2, halfHeight, 0.5);
	mesh.castShadow = true;
	mesh.receiveShadow = true;
	return { mesh, bones };
}
const skinnedColumn = createSkinnedColumn();
scene.add(skinnedColumn.mesh);

let reported = false;
function resize() {
	renderer.setSize(innerWidth, innerHeight, false);
	camera.aspect = innerWidth / innerHeight;
	camera.updateProjectionMatrix();
}
addEventListener("resize", resize);
resize();

function frame(time) {
	controls.update();
	hero.rotation.y = time * 0.00022;
	hero.morphTargetInfluences[0] = Math.sin(time * 0.0013) * 0.5 + 0.5;
	skinnedColumn.bones[2].rotation.z = Math.sin(time * 0.0015) * 0.42;
	skinnedColumn.bones[3].rotation.z = Math.cos(time * 0.0012) * 0.22;
	renderer.render(scene, camera);
	if (!reported && renderer.info.programs?.length) {
		const error = context.getError();
		reported = true;
		const ok = error === context.NO_ERROR;
		document.documentElement.dataset.renderStatus = ok
			? "ok"
			: `gl-error-${error}`;
		status.textContent = ok
			? `WebGL2 OK · static + morph + skin + outline · ${renderer.info.programs.length} programs`
			: `WebGL error ${error}`;
	}
	requestAnimationFrame(frame);
}
requestAnimationFrame(frame);
