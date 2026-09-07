# Planned Data Structure

The following structure is planned for a verified release. Directory names may
change when the original manifest is recovered and audited.

```text
Corn-DR/
|-- README.md
|-- README_CN.md
|-- DATASET_CARD.md
|-- docs/
|   |-- DATA_STRUCTURE.md
|   |-- PROVENANCE_AND_LICENSES.md
|   `-- RELEASE_CHECKLIST.md
|-- manifests/
|   |-- README.md
|   |-- train.csv
|   |-- val.csv
|   `-- test.csv
|-- metadata/
|   |-- label_definitions.json
|   |-- source_registry.csv
|   `-- release_statistics.json
`-- tools/
    |-- verify_manifests.py
    `-- verify_checksums.py
```

Data archives will only be added after every file has a traceable source record
and confirmed redistribution status. Sources that cannot be redistributed will
be represented by stable IDs, download instructions, and reconstruction
metadata instead of copied image files.

