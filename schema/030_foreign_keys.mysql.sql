-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  merkle_anchors

ALTER TABLE merkle_anchors ADD CONSTRAINT fk_merkle_anchor_root FOREIGN KEY (merkle_root_id) REFERENCES merkle_roots(id) ON DELETE CASCADE;
