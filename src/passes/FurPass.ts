import { UnsupportedFeatureError } from "../utils/diagnostics.js";

export class FurPass {
  constructor() {
    throw new UnsupportedFeatureError("Fur shell rendering is not shipped in the WebGL2 alpha.");
  }
}
