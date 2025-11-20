<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – merkle_anchors

Anchors proving Merkle roots in external systems (files, blockchain, etc.).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| merkle_root_id | BIGINT | NO | — | Referenced Merkle root (FK merkle_roots.id). |  |
| anchor_type | TEXT | NO | — | Anchor medium. | enum: file, blockchain, notary |
| anchored_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the anchor was created. |  |
| meta | JSONB | YES | — | JSON metadata tied to the anchor. |  |