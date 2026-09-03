import {
  AmbientLight,
  Color,
  DirectionalLight,
  HemisphereLight,
  Vector3,
  type Scene,
} from "three";

export interface LilToonSceneLighting {
  main?: DirectionalLight;
  direction: Vector3;
  color: Color;
  ambient: Color;
}

const lightPosition = new Vector3();
const targetPosition = new Vector3();

export class LilToonLightAdapter {
  read(scene: Scene): LilToonSceneLighting {
    let main: DirectionalLight | undefined;
    const ambient = new Color(0.05, 0.05, 0.05);
    scene.traverseVisible((object) => {
      if (!main && object instanceof DirectionalLight) main = object;
      if (object instanceof AmbientLight) ambient.add(object.color.clone().multiplyScalar(object.intensity));
      if (object instanceof HemisphereLight) {
        ambient.add(object.color.clone().add(object.groundColor).multiplyScalar(object.intensity * 0.5));
      }
    });
    // A missing Three.js DirectionalLight is the equivalent of Unity having no
    // main light. Keep both uniforms at zero so OpenLit can derive its fallback
    // direction from SH and the material's _LightDirectionOverride. Supplying
    // an artificial white, upward-facing light here drives lilToon's direct
    // specular and toon terms even in an otherwise unlit Three.js scene.
    const direction = new Vector3();
    const color = new Color(0, 0, 0);
    if (main) {
      main.getWorldPosition(lightPosition);
      main.target.getWorldPosition(targetPosition);
      direction.subVectors(lightPosition, targetPosition).normalize();
      color.copy(main.color).multiplyScalar(main.intensity);
    }
    return { main, direction, color, ambient };
  }
}
