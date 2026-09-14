# Visual parity fixtures

The runner compares fixed Unity/lilToon PNGs in `unity-reference/` with matching Three.js PNGs in `three-output/` and writes diffs to `diff/`.

Use identical mesh, textures, material values, camera, light, resolution, and color-management settings in both renderers. Name pairs identically, for example `010-main-shadow.png`. Optional thresholds live in `scenes/010-main-shadow.json`:

```json
{
	"maxDiffRatio": 0.05,
	"maxRms": 0.08,
	"pixelThreshold": 0.1
}
```

Run `npm run test:parity` while authoring fixtures. `npm run test:parity:required` additionally fails when no Unity references are installed. The repository currently has no approved Unity reference images; the ordinary command can therefore finish without performing a comparison. Reference images must use assets with redistribution permission.
