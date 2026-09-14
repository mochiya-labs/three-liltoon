# Documentation

New to the package? Start with the [overview, installation and tutorials](../README.md).

## Using three-liltoon

- [API and integration](API.md): materials, renderer lifetime, React Three Fiber, VRM expressions and diagnostics.
- [Rendering modes](RENDERING_MODES.md): mode selection and the transparent, refraction, fur and gem sequences.
- [Feature matrix](FEATURE_MATRIX.md): supported features, known differences and verification scope.
- [Material and glTF format](MATERIAL_FORMAT.md): the `MOCHIYA_materials_liltoon` contract, standalone JSON and validation.
- [Model viewer](../examples/mochiya-liltoon-viewer/README.md): inspect local GLB/VRM files and their textures/settings.

## Understanding and extending the renderer

- [Architecture](ARCHITECTURE.md): build pipeline, compatibility layer, loaders and resource ownership.
- [Material specialization](MATERIAL_SPECIALIZATION.md): runtime features, sampler reuse and device limits.
- [Porting differences](PORTING_EXCEPTIONS.md): how WebGL2 integration differs from Unity.
- [Contributing](../CONTRIBUTING.md): source setup, compilation, tests and bug reports.

Implementation and browser coverage do not establish full Unity visual parity.
