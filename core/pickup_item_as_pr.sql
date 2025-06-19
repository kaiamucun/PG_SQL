SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- pickup_item_as_prテーブルの作成
DROP TABLE IF EXISTS pickup_item_as_pr;

CREATE TABLE pickup_item_as_pr (
    pickup_item_no INT NOT NULL,
    pr VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE pickup_item_as_pr (
    id BIGSERIAL PRIMARY KEY,
    pickup_item_id BIGINT NOT NULL,
    brand_id BIGINT,
    event_id BIGINT,
    pr_type VARCHAR(50) NOT NULL, -- 'brand', 'event', 'news', etc.
    campaign_name VARCHAR(255),
    discount_rate INTEGER,
    special_offer TEXT,
    promotion_code VARCHAR(50),
    valid_from TIMESTAMP,
    valid_until TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pickup_item_id) REFERENCES pickup_item(id) ON DELETE CASCADE,
    FOREIGN KEY (brand_id) REFERENCES brand(id) ON DELETE SET NULL,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE SET NULL
);

CREATE INDEX idx_pickup_item_as_pr_pickup_item_id ON pickup_item_as_pr(pickup_item_id);
CREATE INDEX idx_pickup_item_as_pr_brand_id ON pickup_item_as_pr(brand_id);
CREATE INDEX idx_pickup_item_as_pr_event_id ON pickup_item_as_pr(event_id);
CREATE INDEX idx_pickup_item_as_pr_pr_type ON pickup_item_as_pr(pr_type); 