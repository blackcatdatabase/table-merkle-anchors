-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  merkle_anchors

-- Contract view for [merkle_anchors]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_merkle_anchors AS
SELECT
  id,
  merkle_root_id,
  anchor_type,
  anchor_ref,
  anchored_at,
  meta
FROM merkle_anchors;
