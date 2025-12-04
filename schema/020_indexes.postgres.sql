-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  merkle_anchors

CREATE INDEX IF NOT EXISTS idx_merkle_anchors_mrid ON merkle_anchors (merkle_root_id);
