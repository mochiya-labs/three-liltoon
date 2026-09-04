# Upgrading lilToon

This page is for contributors updating the upstream shader source used by `three-liltoon`.

Upstream upgrades are deliberate compatibility changes, not an implicit branch update.

1. Record the current package version, submodule commit, generated hashes, compiler versions, browser results, and parity results.
2. Update `vendor/lilToon` to one reviewed tag/commit and commit the parent repository's submodule pointer. Never edit files inside the submodule.
3. Run `git -C vendor/lilToon status --short` and require empty output.
4. Run `npm run tools:check`. Use the versions recorded in `tools/toolchain.json`; a toolchain change is a separate reviewed change because it can rewrite every generated shader.
5. Run `npm run generate`. Review the property/default/texture/render-state diff, especially property type or default changes.
6. Run `npm run shaders:rebuild`. Compiler failures should be fixed in `shader/compat`, wrappers, or a documented deterministic generated transform—not in `vendor/lilToon`.
7. Inspect `src/generated/shaderManifest.ts`, SPIR-V reflection, active sampler counts, vertex attributes, and varying-link tests.
8. Run `npm run typecheck`, `npm test`, `npm run example:build`, and `npm run test:browser` in Chromium and Firefox.
9. Render every approved Unity scene at the new upstream commit, render the matching Three scenes, and run `npm run test:parity:required`. Review diffs rather than automatically accepting new references.
10. Update `README.md`, `docs/FEATURE_MATRIX.md`, `docs/PORTING_EXCEPTIONS.md`, `THIRD_PARTY_NOTICES.md`, and the compatibility constants. Bump this package with SemVer independently of lilToon.

Before merging, verify that a clean checkout plus initialized submodules reproduces generated sources and that `git diff --exit-code` is empty after the build. Preserve the old references and release tag so regressions can be bisected.
