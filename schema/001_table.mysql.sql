-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  merkle_anchors
CREATE TABLE IF NOT EXISTS merkle_anchors (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  merkle_root_id BIGINT UNSIGNED NOT NULL,
  anchor_type ENUM('file','blockchain','notary') NOT NULL,
  anchor_ref VARCHAR(512) NOT NULL,
  anchored_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  meta JSON NULL,
  UNIQUE KEY ux_anchor_triplet (merkle_root_id, anchor_type, anchor_ref),
  INDEX idx_merkle_anchors_mrid (merkle_root_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
