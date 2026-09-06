# Publishing

This page is for maintainers publishing `@mochiya/three-liltoon` to npm.

The package uses its own SemVer. A minor alpha bump may add a renderer feature; a patch must not silently change the material ABI or accepted visual baseline. npm receives compiled files under `dist/` plus the package metadata, README and license that npm always includes.

## First-time npm setup

1. Confirm that your npm account can publish public packages in the `@mochiya` organization.
2. Enable two-factor authentication for publishing, or use npm staged publishing or trusted publishing.
3. Sign in and verify the active account:

```bash
npm login
npm whoami
```

The package manifest sets `publishConfig.access` to `public` and uses the public npm registry. Do not commit an npm token or project-level `.npmrc` containing credentials.

## Release checklist

1. Work from a clean, reviewed commit with the lilToon submodule initialized and clean.
2. Confirm the pinned upstream identity and toolchain with `npm run tools:check`.
3. Install and run the release checks:

```bash
git submodule update --init --recursive
npm ci
npm run format:check
npm run build
npm test
npm run test:browser
npm run test:parity:required
```

If `tools:check` reports missing compiler binaries, run `npm run tools:setup`, then run `tools:check` again.
On Windows, tools installed by the Vulkan SDK are discovered through `PATH` and `PATHEXT`; `DXC_PATH`, `SPIRV_CROSS_PATH`, and `SPIRV_VAL_PATH` remain available for explicit executable paths.

4. Inspect WebGL output in Chromium and Firefox and review every Unity/Three diff artifact.
5. Review the generated runtime files, schema and third-party notice under `dist/`.
6. Inspect the exact npm payload:

```bash
npm pack --dry-run
```

The file list must contain only `dist/**`, `package.json`, `README.md` and `LICENSE`. Source, tools, tests, examples, vendor files, compiler binaries and lockfiles must be absent.

7. Optionally create and test the tarball in a temporary consumer before publishing:

```bash
npm pack
npm install /path/to/mochiya-three-liltoon-0.1.0.tgz three @pixiv/three-vrm
```

8. Publish the first public version:

```bash
npm publish --access public
```

9. Verify the registry result:

```bash
npm view @mochiya/three-liltoon version
npm view @mochiya/three-liltoon dist-tags
```

A package name and version cannot be reused after publication. Increment `version` before every later release. Create a matching Git tag and GitHub release after the registry package is verified. Do not call this package official lilToon software.

For automated releases, configure npm trusted publishing for the protected GitHub workflow instead of storing an npm token. Require the same tests and parity fixtures before the publish job.
