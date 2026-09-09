# Release Verification Record

The following checks were completed for version `v1.0.0` before packaging:

- 13,053 aligned files were found in each of `images`, `tui_x2`,
  `clean_lr_x2`, and `tui_labels_x2`.
- 12,470 local-mask files were found in `tui_masks_x2`.
- Five JSONL manifests contain the expected 13,623 records, including the two
  overlapping validation views.
- All 13,056 JSON files in the public labels and reports parsed successfully.
- Machine-specific absolute paths were removed from public JSON and JSONL
  metadata.
- Release assets were split below GitHub's 2 GiB per-file limit.
- A SHA-256 checksum was generated for every release asset.
- Model weights, checkpoints, private code, credentials, and experiment logs
  are not present in the release.
