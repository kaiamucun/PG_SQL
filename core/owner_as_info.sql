SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_as_infoテーブルの作成
DROP TABLE IF EXISTS owner_as_info;

CREATE TABLE owner_as_info (
    owner_no INT NOT NULL,
    tel VARCHAR(20) DEFAULT NULL COMMENT '非表示：空文字',
    address VARCHAR(191) DEFAULT NULL,
    lat BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    lon BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    access VARCHAR(20) DEFAULT NULL COMMENT '行き方',
    table_count INT DEFAULT NULL,
    payment_method VARCHAR(191) DEFAULT NULL COMMENT '現金、クレカ、PokerWebCoin',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_owner_as_info_owner_id ON owner_as_info(owner_id);
CREATE INDEX idx_owner_as_info_info_type ON owner_as_info(info_type);
CREATE INDEX idx_owner_as_info_is_public ON owner_as_info(is_public);
CREATE INDEX idx_owner_as_info_display_order ON owner_as_info(display_order); 