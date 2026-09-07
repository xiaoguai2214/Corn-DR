# Provenance and Redistribution Audit

This document separates public availability from permission to redistribute.
Being downloadable or used in a paper does not automatically authorize a new
repository to republish the image files.

## Source registry under review

| Source | Role in manuscript | Current repository policy |
| --- | --- | --- |
| PlantVillage | Maize disease semantics | Do not redistribute until the exact source package and its image terms are matched to each sample |
| PlantDoc | Field-style plant disease semantics | Official repository indicates CC BY 4.0; retain attribution and modification notices for any eligible redistributed material |
| IP102 | Insect pest semantics | Public research access is documented, but redistribution permission must be verified; prefer source IDs and download instructions |
| GoPro deblurring dataset | Real blur patterns/pairs | Do not mirror until the dataset-specific redistribution terms are confirmed |
| Dense-Haze | Real dense-haze pairs | Do not mirror until the benchmark access and redistribution terms are confirmed |
| NH-HAZE | Real non-homogeneous haze pairs | Do not mirror until the benchmark access and redistribution terms are confirmed |
| SID | Real low-light raw/long-exposure pairs | The official code repository has an MIT license, but this must not be assumed to relicense every dataset image; verify separately |
| SPA-Data | Real rain/rain-free pairs | Verify the license distributed with the exact official dataset package; retain required notices if redistribution is permitted |

## Required per-sample provenance

Every released sample must be traceable through at least:

- a stable Corn-DR sample ID;
- the source dataset and source item ID;
- the original clear-image group ID used for splitting;
- whether the image is original, transformed, or synthetically degraded;
- the applied degradation recipe and random seed, when applicable;
- the source citation and source URL;
- the redistribution decision and the evidence supporting it.

## Release rule

Only files marked `redistributable=yes` after manual verification may enter a
public archive. For all other sources, publish metadata, official download
instructions, and deterministic reconstruction instructions instead.

## References identified in the manuscript

- PlantVillage: https://doi.org/10.3389/fpls.2016.01419
- PlantDoc: https://doi.org/10.1145/3371158.3371196
- IP102: https://doi.org/10.1109/CVPR.2019.00899
- GoPro deblurring benchmark: https://doi.org/10.1109/CVPR.2017.35
- Dense-Haze: https://doi.org/10.1109/ICIP.2019.8803046
- NH-HAZE: https://doi.org/10.1109/CVPRW50498.2020.00230
- SID: https://doi.org/10.1109/CVPR.2018.00347
- SPA-Data: https://doi.org/10.1109/CVPR.2019.01255

