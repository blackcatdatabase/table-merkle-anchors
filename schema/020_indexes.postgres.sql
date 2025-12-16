-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  merkle_anchors

CREATE INDEX IF NOT EXISTS idx_merkle_anchors_mrid ON merkle_anchors (merkle_root_id);
