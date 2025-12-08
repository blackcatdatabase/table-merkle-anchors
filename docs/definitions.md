# merkle_anchors

Anchors proving Merkle roots in external systems (files, blockchain, etc.).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| anchor_ref |  | NO |  | Reference or locator for the anchor. |
| anchor_type | TEXT | NO |  | Anchor medium. (enum: file, blockchain, notary) |
| anchored_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the anchor was created. |
| id | BIGINT | NO |  | Surrogate primary key. |
| merkle_root_id | BIGINT | NO |  | Referenced Merkle root (FK merkle_roots.id). |
| meta | JSONB | YES |  | JSON metadata tied to the anchor. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_merkle_anchor_ref | merkle_root_id, anchor_type, anchor_ref |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_merkle_anchors_mrid | merkle_root_id | INDEX idx_merkle_anchors_mrid (merkle_root_id) |
| uq_merkle_anchor_ref | merkle_root_id,anchor_type,anchor_ref | UNIQUE KEY uq_merkle_anchor_ref (merkle_root_id, anchor_type, anchor_ref) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_merkle_anchor_root | merkle_root_id | merkle_roots(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_merkle_anchor_ref | anchor_ref, anchor_type, merkle_root_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_merkle_anchors_mrid | merkle_root_id | CREATE INDEX IF NOT EXISTS idx_merkle_anchors_mrid ON merkle_anchors (merkle_root_id) |
| uq_merkle_anchor_ref | anchor_ref,anchor_type,merkle_root_id | CONSTRAINT uq_merkle_anchor_ref UNIQUE (anchor_ref, anchor_type, merkle_root_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_merkle_anchor_root | merkle_root_id | merkle_roots(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_merkle_anchors | mysql | algorithm=MERGE, security=INVOKER | [packages\merkle-anchors\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/merkle-anchors/schema/040_views.mysql.sql) |
| vw_merkle_anchors | postgres |  | [packages\merkle-anchors\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/merkle-anchors/schema/040_views.postgres.sql) |
