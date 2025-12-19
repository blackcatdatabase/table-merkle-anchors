-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  merkle_anchors

ALTER TABLE merkle_anchors ADD CONSTRAINT fk_merkle_anchor_root FOREIGN KEY (merkle_root_id) REFERENCES merkle_roots(id) ON DELETE CASCADE;
