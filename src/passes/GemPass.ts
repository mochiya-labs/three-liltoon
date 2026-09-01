import { UnsupportedFeatureError } from "../utils/diagnostics.js";

export class GemPass {
  constructor() {
    throw new UnsupportedFeatureError("Gem rendering is not shipped in the WebGL2 alpha.");
  }
}
