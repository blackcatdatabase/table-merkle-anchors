-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  merkle_anchors

CREATE INDEX IF NOT EXISTS idx_merkle_anchors_mrid ON merkle_anchors (merkle_root_id);
