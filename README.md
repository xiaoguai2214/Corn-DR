# Corn-DR

Corn-DR is a paired dataset for multi-label degradation recognition, image
restoration, and 2x super-resolution of maize disease and pest imagery. It
covers rain, fog or haze, blur, low illumination, local occlusion, and compound
combinations of these degradations.

[中文说明](README_CN.md)

## Download

The complete dataset is distributed as multipart assets in the
[latest GitHub Release](https://github.com/xiaoguai2214/Corn-DR/releases/latest).
Download every asset, verify it with `SHA256SUMS.txt`, and reconstruct the three
multipart archives on macOS or Linux:

```bash
shasum -a 256 -c SHA256SUMS.txt
cat Corn-DR-v1.0-images.tar.part-* | tar -xf -
cat Corn-DR-v1.0-tui_x2.tar.part-* | tar -xf -
cat Corn-DR-v1.0-clean_lr_x2.tar.part-* | tar -xf -
tar -xzf Corn-DR-v1.0-tui_masks_x2.tar.gz
tar -xzf Corn-DR-v1.0-annotations-and-manifests.tar.gz
```

Run the commands in an empty destination directory. The numbered parts of each
archive must remain together and must not be renamed.

## Dataset composition

| Split | Samples |
| --- | ---: |
| Training | 12,083 |
| Validation | 570 |
| Test | 400 |
| **Total** | **13,053** |

Each sample has a high-resolution target in `images`, a degraded 2x input in
`tui_x2`, a clean low-resolution reference in `clean_lr_x2`, and a JSON record
in `tui_labels_x2`. Local occlusion masks are provided when applicable in
`tui_masks_x2`. The release contains 12,470 mask files; samples without a mask
are identified by their metadata.

The five non-exclusive degradation labels are:

- `RAIN`: rain streaks or rain-like interference
- `FOG`: fog- or haze-like atmospheric degradation
- `BLUR`: motion, defocus, or related blur
- `LOW`: low illumination
- `OCCL`: local occlusion or anomaly patterns

Splits are formed by the original clear-image group before degradation
generation. An original image and all of its derived versions therefore remain
in one subset.

## Scope and limitations

Corn-DR combines maize disease and pest semantics with controlled paired
degradations and supplementary samples derived from public restoration
benchmarks. The supplementary real-degradation material is not a newly
collected maize-field benchmark. Independent evaluation on representative
field imagery is required before making claims about field diagnostic
reliability.

## Included and excluded materials

The release includes paired images, low-resolution references, multi-label
annotations, local masks, split manifests, provenance fields, degradation
parameters, random seeds, and integrity hashes. Machine-specific absolute paths
have been removed from the public metadata.

The release does **not** include trained weights, checkpoints, unreleased model
implementation, system-integration code, credentials, or private logs.

## Documentation

- [Dataset card](DATASET_CARD.md)
- [Data structure and archive map](docs/DATA_STRUCTURE.md)
- [Provenance and source terms](docs/PROVENANCE_AND_LICENSES.md)
- [Manifest documentation](manifests/README.md)
- [Machine-readable label definitions](metadata/label_definitions.json)
- [Source registry](metadata/source_registry.csv)

## Citation

The associated manuscript is under review. A complete citation will be added
when a stable publication record becomes available. Until then, cite this
repository and the versioned GitHub Release used in your work.

## Terms of use

No single repository-wide license overrides the terms of the source datasets.
Users must follow the applicable source licenses, access conditions, and
attribution requirements described in
[Provenance and source terms](docs/PROVENANCE_AND_LICENSES.md).

## Contact

Questions about academic use may be directed to the corresponding author of the
associated manuscript.
