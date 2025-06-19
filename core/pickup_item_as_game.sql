SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- pickup_item_as_gameテーブルの作成
DROP TABLE IF EXISTS pickup_item_as_game;

CREATE TABLE pickup_item_as_game (
    pickup_item_no INT NOT NULL,
    game_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    game_title VARCHAR(10) DEFAULT 'リングゲーム' COMMENT 'default = "リングゲーム"',
    game_price INT DEFAULT NULL COMMENT '宣伝用リング参加費',
    game_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    game_player_count INT DEFAULT NULL COMMENT '手動更新（リング総人数）',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_pickup_item_as_game_pickup_item_id ON pickup_item_as_game(pickup_item_id);
CREATE INDEX idx_pickup_item_as_game_game_name ON pickup_item_as_game(game_name);
CREATE INDEX idx_pickup_item_as_game_genre ON pickup_item_as_game(game_genre); 