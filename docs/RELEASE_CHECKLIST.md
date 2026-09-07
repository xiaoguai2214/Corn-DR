# Release Checklist

## Data integrity

- [ ] Recover the exact dataset version used for the manuscript experiments.
- [ ] Confirm totals: 12,083 training, 570 validation, and 400 test samples.
- [ ] Confirm the three training components: 9,700, 1,800, and 583 samples.
- [ ] Verify that no original clear-image group appears in more than one split.
- [ ] Generate cryptographic checksums for every released archive and manifest.

## Provenance and permissions

- [ ] Assign a source dataset and source item ID to every sample.
- [ ] Record whether each sample is original, transformed, or synthetic.
- [ ] Verify redistribution terms against the exact downloaded source package.
- [ ] Include all required attribution, copyright, and license notices.
- [ ] Replace non-redistributable images with source-download instructions and
      reconstruction metadata.
- [ ] Obtain written permission where the published terms are unclear.

## Privacy and unpublished work

- [ ] Exclude model checkpoints and trained weights.
- [ ] Exclude unreleased model and system-integration implementation.
- [ ] Exclude credentials, tokens, environment files, and server addresses.
- [ ] Exclude private experiment logs and reviewer/submission correspondence.
- [ ] Inspect archive contents manually before upload.

## Scientific documentation

- [ ] Freeze stable sample IDs and label definitions.
- [ ] Document degradation parameters, ranges, and random seeds.
- [ ] Publish dataset statistics generated from the release manifests.
- [ ] State explicitly that public real-degradation benchmarks are not newly
      collected maize field images.
- [ ] Add a version tag and archived DOI when the release is stable.

