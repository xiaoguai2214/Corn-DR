# Corn-DR

Corn-DR is a research dataset for compound degradation recognition, image
restoration, and super-resolution of maize disease and pest imagery. It is
designed to study degradations that may coexist in practical imaging, including
rain, haze-like effects, blur, low illumination, and local occlusion.

> Release status: documentation preview. Dataset archives and split manifests
> are being prepared and audited for source provenance and redistribution
> permissions. No downloadable dataset archive is available in this repository
> yet.

[中文说明](README_CN.md)

## Dataset scope

The manuscript version of Corn-DR contains 13,053 samples:

| Split | Samples |
| --- | ---: |
| Training | 12,083 |
| Validation | 570 |
| Test | 400 |
| Total | 13,053 |

The training split comprises 9,700 basic degraded samples with maize semantics,
1,800 difficult degradation extensions, and 583 supplementary samples from
public real-degradation restoration benchmarks. Splitting is performed by the
original clear image before degradation generation so that an original image
and all of its derived versions occur in only one subset.

The recognition annotations use five non-exclusive labels:

- `RAIN`: rain streaks or rain-like interference
- `FOG`: fog- or haze-like atmospheric degradation
- `BLUR`: motion, defocus, or related blur
- `LOW`: low illumination
- `OCCL`: local occlusion or anomaly patterns, such as droplets, water stains,
  strong specular coverage, or irregular occluders

## Important interpretation

Corn-DR combines maize disease/pest semantics with controlled paired
degradations and supplementary images from public restoration benchmarks. The
supplementary real-degradation images are not newly collected maize field
images. Consequently, they should not be described as a new real-world maize
field benchmark.

## Planned release contents

- Versioned train, validation, and test manifests with stable sample IDs
- Multi-label degradation annotations and source/provenance fields
- Degradation-generation protocol and reproducibility metadata
- Dataset statistics, integrity hashes, and verification instructions
- Download instructions for source datasets that cannot be redistributed

## Not included

- Trained model weights or checkpoints
- Unreleased model implementation and system-integration code
- Private experiment logs, credentials, or machine-specific files
- Third-party source images without confirmed redistribution permission

## Documentation

- [Dataset card](DATASET_CARD.md)
- [Planned data structure](docs/DATA_STRUCTURE.md)
- [Provenance and redistribution audit](docs/PROVENANCE_AND_LICENSES.md)
- [Release checklist](docs/RELEASE_CHECKLIST.md)
- [Manifest documentation](manifests/README.md)
- [Machine-readable label definitions](metadata/label_definitions.json)
- [Source registry](metadata/source_registry.csv)

## Citation

The associated manuscript is currently under review. Citation metadata will be
added after a stable public release or publication record is available.

## License and third-party data

No repository-wide data license is granted at this stage. Corn-DR contains or
derives material from multiple public research datasets with different terms.
Each source must be handled according to its own license and access conditions.
See [Provenance and redistribution audit](docs/PROVENANCE_AND_LICENSES.md).

## Contact

Questions about academic access to unreleased materials may be directed to the
corresponding author of the associated manuscript.

