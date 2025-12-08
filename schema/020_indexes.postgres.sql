-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  merkle_anchors

CREATE INDEX IF NOT EXISTS idx_merkle_anchors_mrid ON merkle_anchors (merkle_root_id);
