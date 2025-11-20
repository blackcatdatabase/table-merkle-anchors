-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  merkle_anchors
ALTER TABLE merkle_anchors ADD CONSTRAINT fk_merkle_anchor_root FOREIGN KEY (merkle_root_id) REFERENCES merkle_roots(id) ON DELETE CASCADE;
