# Manifest Documentation

Version `v1.0.0` includes five JSONL manifests in the annotations archive:

| Manifest | Records | Purpose |
| --- | ---: | --- |
| `train_all_12083.jsonl` | 12,083 | complete training split |
| `val_all_570.jsonl` | 570 | complete validation split |
| `val_standard_320.jsonl` | 320 | standard validation subset |
| `val_hard_250.jsonl` | 250 | difficult validation subset |
| `test_hard_400.jsonl` | 400 | held-out difficult test split |

Each line is one JSON object. Important fields include `id`, `sample_key`,
`split`, `source_dataset`, `source_relative_path`, `source_group_id`, `comb`,
`deg_code5`, `component_severities`, `params`, `seed`, the paired relative file
paths, and available SHA-256 hashes.

The public manifests remove machine-specific `source_path` fields and historical
absolute paths. Relative paths resolve from the extracted Corn-DR root.
