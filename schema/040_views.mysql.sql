-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
