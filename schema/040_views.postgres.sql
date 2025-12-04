-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  merkle_anchors

-- Contract view for [merkle_anchors]
CREATE OR REPLACE VIEW vw_merkle_anchors AS
SELECT
  id,
  merkle_root_id,
  anchor_type,
  anchor_ref,
  anchored_at,
  meta
FROM merkle_anchors;
