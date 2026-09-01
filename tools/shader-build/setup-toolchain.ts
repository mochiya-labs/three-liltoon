import { mkdirSync, writeFileSync } from "node:fs";
import { resolve } from "node:path";
import { PROJECT_ROOT } from "../paths.js";
import { discoverToolchain, getVersion } from "./toolchain.js";

const tools = discoverToolchain();
const state = {
  tools,
  versions: {
    dxc: getVersion(tools.dxc, ["--version"]),
    spirvVal: getVersion(tools.spirvVal, ["--version"]),
  },
};
const outputDirectory = resolve(PROJECT_ROOT, ".tmp");
mkdirSync(outputDirectory, { recursive: true });
writeFileSync(resolve(outputDirectory, "toolchain-paths.json"), `${JSON.stringify(state, null, 2)}\n`);
process.stdout.write(`Located the pinned shader toolchain and wrote .tmp/toolchain-paths.json.\n`);
