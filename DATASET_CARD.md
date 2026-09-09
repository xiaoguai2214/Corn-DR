# Corn-DR Dataset Card

## Summary

Corn-DR supports multi-label degradation recognition and conditioned all-in-one
restoration with 2x super-resolution for maize disease and pest images. It
combines agricultural semantic content, controlled paired degradation, and a
supplementary set derived from public real-degradation restoration benchmarks.

## Intended tasks

- Multi-label recognition of compound image degradations
- Paired restoration of rain, haze-like effects, blur, and low illumination
- Joint restoration and 2x super-resolution
- Reliability calibration and degradation-conditioned routing analysis

## Verified composition

| Split | Samples | JSON labels | Occlusion masks |
| --- | ---: | ---: | ---: |
| Training | 12,083 | 12,083 | included when applicable |
| Validation | 570 | 570 | included when applicable |
| Test | 400 | 400 | included when applicable |
| **Total** | **13,053** | **13,053** | **12,470** |

Each sample is represented by aligned files under `images`, `tui_x2`,
`clean_lr_x2`, and `tui_labels_x2`. Every released file set was checked against
the recovered experimental dataset before packaging.

## Annotation scheme

Annotations are multi-label rather than mutually exclusive. A sample may carry
several of `RAIN`, `FOG`, `BLUR`, `LOW`, and `OCCL`. JSON records include the
degradation combination, component severity, generation parameters, random
seed, pairing information, quality-control fields, relative data paths, and
file hashes where available.

## Split policy

The split unit is the original clear-image group. All degradation variants from
the same source group remain in the same subset to reduce cross-split leakage.

## Provenance

The source registry identifies PlantVillage, PlantDoc, and IP102 as agricultural
semantic sources, and GoPro, Dense-Haze, NH-HAZE, SID, and SPA-Data as sources
of supplementary restoration material. Source-specific citations and terms
remain applicable to redistributed or derived material.

## Known limitations

- The dataset is dominated by controlled paired degradations.
- Supplementary real-degradation samples are not newly captured maize-field
  images.
- Device-, season-, location-, and weather-dependent domain shifts are not fully
  represented.
- Opaque occlusion can remove information that cannot be recovered
  deterministically.
- Strong low illumination combined with blur may leave insufficient observable
  evidence for reliable restoration.

## Responsible use

Corn-DR is intended for academic image restoration, degradation recognition,
and agricultural computer-vision research. Field diagnostic claims require
independent evaluation on representative real-world maize imagery.

## Release contents

Version `v1.0.0` provides all paired image components, JSON labels, masks,
versioned split manifests, audit summaries, and SHA-256 checksums as GitHub
Release assets. Trained weights and unreleased model code are excluded.
