import { discoverToolchain, getVersion, readPinnedToolchain } from "./toolchain.js";

const tools = discoverToolchain();
const versions = {
  dxc: getVersion(tools.dxc, ["--version"]),
  spirvCross: getVersion(tools.spirvCross, ["--version"]),
  spirvVal: getVersion(tools.spirvVal, ["--version"]),
  ...(tools.glslangValidator
    ? { glslangValidator: getVersion(tools.glslangValidator, ["--version"]) }
    : {}),
};
const pinned = readPinnedToolchain() as {
  dxc?: { versionContains?: string };
  spirvTools?: { versionContains?: string };
};
if (pinned.dxc?.versionContains && !versions.dxc.includes(pinned.dxc.versionContains)) {
  throw new Error(`DXC version mismatch. Expected ${pinned.dxc.versionContains}.`);
}
if (pinned.spirvTools?.versionContains && !versions.spirvVal.includes(pinned.spirvTools.versionContains)) {
  throw new Error(`SPIRV-Tools version mismatch. Expected ${pinned.spirvTools.versionContains}.`);
}
process.stdout.write(`${JSON.stringify({ tools, versions }, null, 2)}\n`);
