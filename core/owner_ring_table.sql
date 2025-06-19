SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_tableテーブルの作成
DROP TABLE IF EXISTS owner_ring_table;

CREATE TABLE owner_ring_table (
    owner_no INT NOT NULL,
    table_no INT NOT NULL,
    game_tag_no INT DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    max_buyin INT DEFAULT NULL,
    PRIMARY KEY (owner_no, table_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_owner_ring_table_owner_id ON owner_ring_table(owner_no);
CREATE INDEX idx_owner_ring_table_table_number ON owner_ring_table(table_no);
CREATE INDEX idx_owner_ring_table_game_tag_no ON owner_ring_table(game_tag_no);
CREATE INDEX idx_owner_ring_table_small_blind ON owner_ring_table(small_blind);
CREATE INDEX idx_owner_ring_table_big_blind ON owner_ring_table(big_blind);
CREATE INDEX idx_owner_ring_table_giant_blind ON owner_ring_table(giant_blind);
CREATE INDEX idx_owner_ring_table_ante ON owner_ring_table(ante);
CREATE INDEX idx_owner_ring_table_max_buyin ON owner_ring_table(max_buyin); 