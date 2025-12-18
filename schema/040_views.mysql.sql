-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
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
