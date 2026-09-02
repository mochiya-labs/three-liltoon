import { execFileSync } from "node:child_process";
import { mkdirSync, rmSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const viewerDirectory = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const libraryDirectory = resolve(viewerDirectory, "../..");
const packageDirectory = resolve(viewerDirectory, ".local-packages");
const cacheDirectory = resolve(viewerDirectory, ".npm-cache");
const npm = process.platform === "win32" ? "npm.cmd" : "npm";

function run(args, options = {}) {
  return execFileSync(npm, args, {
    cwd: options.cwd ?? viewerDirectory,
    encoding: "utf8",
    stdio: options.capture ? ["inherit", "pipe", "inherit"] : "inherit",
  });
}

run(["run", "build:package"], { cwd: libraryDirectory });

// npm caches file: dependencies by their package version. Pack a fresh,
// addressable artifact so shader changes are installed even before a release
// version is bumped. Keeping it packed also prevents a second Three.js copy.
rmSync(packageDirectory, { recursive: true, force: true });
mkdirSync(packageDirectory, { recursive: true });
mkdirSync(cacheDirectory, { recursive: true });

const packResult = execFileSync(
  npm,
  ["pack", "--json", "--cache", cacheDirectory, "--pack-destination", packageDirectory],
  {
    cwd: libraryDirectory,
    encoding: "utf8",
    stdio: ["inherit", "pipe", "inherit"],
  },
);
const [packed] = JSON.parse(packResult);
if (!packed?.filename) throw new Error("npm pack did not return an artifact filename.");

run([
  "install",
  "--force",
  "--no-save",
  "--ignore-scripts",
  "--no-audit",
  "--no-fund",
  "--cache",
  cacheDirectory,
  resolve(packageDirectory, packed.filename),
]);
