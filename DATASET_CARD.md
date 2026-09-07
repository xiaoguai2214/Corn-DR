# Corn-DR Dataset Card

## Summary

Corn-DR supports research on multi-label degradation recognition and conditioned
all-in-one restoration with super-resolution for maize disease and pest images.
It combines agricultural semantic content, controlled paired degradation, and a
limited supplementary set drawn from public real-degradation restoration
benchmarks.

## Intended tasks

- Multi-label recognition of compound image degradations
- Paired restoration of rain, haze-like effects, blur, and low illumination
- Joint restoration and 2x super-resolution
- Reliability calibration and degradation-conditioned routing analysis

## Composition reported in the manuscript

| Component | Samples | Notes |
| --- | ---: | --- |
| Basic degraded maize-semantic samples | 9,700 | Controlled degradation pipeline |
| Difficult degradation extensions | 1,800 | Stronger or compound settings |
| Supplementary real-degradation samples | 583 | Public restoration benchmarks; not newly collected maize field images |
| Validation | 570 | Split by original clear image |
| Test | 400 | Split by original clear image |
| Total | 13,053 | Training total is 12,083 |

All counts remain subject to verification against the final release manifests.

## Annotation scheme

Annotations are multi-label rather than mutually exclusive. A sample may carry
several of `RAIN`, `FOG`, `BLUR`, `LOW`, and `OCCL`. Restoration-pair coverage is
centered on `RAIN`, `FOG`, `BLUR`, `LOW`, and their combinations.

## Split policy

The split unit is the original clear image. Its derived degradation variants
must remain in the same subset. A release validation script should reject any
cross-split reuse of the same source-image identifier.

## Provenance

The manuscript identifies PlantVillage, PlantDoc, and IP102 as agricultural
semantic sources, and GoPro, Dense-Haze, NH-HAZE, SID, and SPA-Data as sources
of supplementary real degradation patterns. Exact per-sample provenance must be
recorded in release manifests before any archive is published.

## Known limitations

- The dataset is dominated by controlled paired degradations.
- Public real-degradation restoration samples are not equivalent to newly
  captured maize field images.
- Device-, season-, location-, and weather-dependent domain shifts are not fully
  represented.
- Opaque occlusion can remove information that no restoration method can
  deterministically recover.
- Extremely low illumination combined with strong blur may leave too little
  observable evidence for reliable restoration.

## Responsible use

Corn-DR is intended for academic image restoration, degradation recognition,
and agricultural computer-vision research. It should not be used to claim field
diagnostic reliability without independent evaluation on representative,
real-world maize imagery.

## Release and licensing status

Documentation is public while the data release undergoes provenance and license
review. No repository-wide license applies to third-party material. Files may
only be redistributed when the corresponding source terms permit it.

