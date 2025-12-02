-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  merkle_anchors

ALTER TABLE merkle_anchors ADD CONSTRAINT fk_merkle_anchor_root FOREIGN KEY (merkle_root_id) REFERENCES merkle_roots(id) ON DELETE CASCADE;
