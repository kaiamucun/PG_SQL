SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_org_imgテーブルの作成
DROP TABLE IF EXISTS admin_org_img;

CREATE TABLE admin_org_img (
    org_no INT NOT NULL,
    img_no INT NOT NULL,
    PRIMARY KEY (org_no, img_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- admin_org_img table
CREATE TABLE admin_org_img (
    id BIGSERIAL PRIMARY KEY,
    org_id BIGINT NOT NULL,
    media_id BIGINT NOT NULL,
    image_type VARCHAR(100) NOT NULL, -- 'logo', 'banner', 'profile', 'gallery', etc.
    title VARCHAR(255),
    description TEXT,
    display_order INTEGER DEFAULT 0,
    is_primary BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    uploaded_by BIGINT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (org_id) REFERENCES org(id) ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON DELETE CASCADE
);

CREATE INDEX idx_admin_org_img_org_id ON admin_org_img(org_id);
CREATE INDEX idx_admin_org_img_media_id ON admin_org_img(media_id);
CREATE INDEX idx_admin_org_img_image_type ON admin_org_img(image_type);
CREATE INDEX idx_admin_org_img_is_primary ON admin_org_img(is_primary);
CREATE INDEX idx_admin_org_img_is_active ON admin_org_img(is_active);
CREATE INDEX idx_admin_org_img_display_order ON admin_org_img(display_order); 