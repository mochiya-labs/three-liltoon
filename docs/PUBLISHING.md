# Publishing

This page is for package maintainers preparing a public release.

The package uses its own SemVer. A minor alpha bump may add a renderer feature; a patch must not silently change a material ABI or accepted visual baseline.

## Release checklist

1. Work from a clean, reviewed commit with the lilToon submodule initialized and clean.
2. Confirm the pinned upstream identity and toolchain with `npm run tools:check`.
3. Run `npm ci`, `npm run build`, `npm test`, `npm run test:browser`, and `npm run test:parity:required`.
4. Inspect WebGL output in Chromium and Firefox and review every Unity/Three diff artifact.
5. Regenerate and manually review `THIRD_PARTY_NOTICES.md` and the committed runtime files under `dist/`. Compiler tools and Three.js remain development/peer dependencies and are not copied into the runtime package.
6. Run `npm pack --dry-run`; require only `dist`, `README.md`, `LICENSE`, and `THIRD_PARTY_NOTICES.md` in the tarball.
7. Verify a temporary consumer can install the tarball with a supported Three.js version, build `examples/basic-three`, and load it without source-relative shader paths.
8. Publish with npm provenance from the protected release workflow and create a matching Git tag/GitHub release. Do not call the package official lilToon software.

The release workflow intentionally refuses to publish without an npm trusted-publishing configuration and required parity fixtures. Never add npm tokens, signing keys, Unity credentials, or third-party avatar source assets to Git.
