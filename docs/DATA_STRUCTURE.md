# Data Structure and Archive Map

After all release assets are downloaded and extracted, the dataset has the
following structure:

```text
Corn-DR/
|-- images/
|   |-- train/              # high-resolution targets
|   |-- val/
|   `-- test/
|-- tui_x2/
|   |-- train/              # degraded 2x inputs
|   |-- val/
|   `-- test/
|-- clean_lr_x2/
|   |-- train/              # clean low-resolution references
|   |-- val/
|   `-- test/
|-- tui_labels_x2/
|   |-- train/              # per-sample JSON metadata
|   |-- val/
|   `-- test/
|-- tui_masks_x2/
|   |-- train/              # local-occlusion masks when applicable
|   |-- val/
|   `-- test/
|-- manifests/              # versioned JSONL split manifests
`-- reports/                # dataset and loader audit summaries
```

## Release assets

| Asset prefix | Reconstructed directory | Packaging |
| --- | --- | --- |
| `Corn-DR-v1.0-images.tar.part-*` | `images/` | multipart tar |
| `Corn-DR-v1.0-tui_x2.tar.part-*` | `tui_x2/` | multipart tar |
| `Corn-DR-v1.0-clean_lr_x2.tar.part-*` | `clean_lr_x2/` | multipart tar |
| `Corn-DR-v1.0-tui_masks_x2.tar.gz` | `tui_masks_x2/` | gzip tar |
| `Corn-DR-v1.0-annotations-and-manifests.tar.gz` | labels, manifests, reports | gzip tar |
| `SHA256SUMS.txt` | release integrity list | text |

Multipart archives use sequential two-digit suffixes. Concatenate every part in
lexical order and pipe the result to `tar -xf -`. See the root README for exact
commands.

## Integrity notes

- High-resolution targets: 13,053 files
- Degraded 2x inputs: 13,053 files
- Clean low-resolution references: 13,053 files
- Per-sample JSON labels: 13,053 files
- Local masks: 12,470 files
- Split manifests: 5 JSONL files, 13,623 records including overlapping
  validation views (`val_all`, `val_standard`, and `val_hard`)

Public JSON and JSONL metadata use relative paths. Machine-specific absolute
paths from the experiment environment are not included.
