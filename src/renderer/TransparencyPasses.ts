import {
	type Mesh,
	type Scene,
	type Object3D,
	type WebGLRenderer,
} from "three";
import { LilToonMaterial } from "../material/LilToonMaterial.js";
import { AuxiliaryPassDraw } from "./AuxiliaryPassDraw.js";

/** Unity surface pass order, excluding deferred ForwardAdd and shadow parity. */
export class TransparencyPasses {
	private draws = new AuxiliaryPassDraw();
	prepare(
		renderer: WebGLRenderer,
		scene: Object3D,
		render: WebGLRenderer["render"],
	) {
		this.draws.begin();
		const undo: (() => void)[] = [];
		scene.traverse((node) => {
			const mesh = node as Mesh;
			if (!mesh.isMesh) return;
			const materials = Array.isArray(mesh.material)
				? mesh.material
				: [mesh.material];
			if (
				!materials.some(
					(m) =>
						m instanceof LilToonMaterial &&
						m.renderMode === "transparent" &&
						m.pass === "forward",
				)
			)
				return;
			const before = mesh.onBeforeRender,
				after = mesh.onAfterRender;
			const isSurface = (m: unknown): m is LilToonMaterial =>
				m instanceof LilToonMaterial &&
				m.renderMode === "transparent" &&
				m.pass === "forward";
			const pre: Mesh["onBeforeRender"] = (...args) => {
				before.apply(mesh, args);
				const source = args[4];
				if (isSurface(source) && source.transparencyMode === "two-pass")
					this.draws.draw(
						renderer,
						render,
						mesh,
						source,
						"transparent-pre",
						scene as Scene,
						args[2],
						args[5] as unknown as { start: number; count: number } | null,
					);
			};
			const post: Mesh["onAfterRender"] = (...args) => {
				after.apply(mesh, args);
				const source = args[4];
				const manual = mesh.children.some(
					(c) =>
						(c as Mesh).isMesh &&
						((c as Mesh).material as LilToonMaterial)?.pass === "outline",
				);
				if (
					isSurface(source) &&
					!manual &&
					Number(source.lilToonProperties._UseOutline ?? 1) !== 0 &&
					Number(source.lilToonProperties._OutlineWidth ?? 0) > 0
				)
					this.draws.draw(
						renderer,
						render,
						mesh,
						source,
						"outline",
						scene as Scene,
						args[2],
						args[5] as unknown as { start: number; count: number } | null,
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
}
