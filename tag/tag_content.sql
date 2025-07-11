SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tag_contentテーブルの作成
DROP TABLE IF EXISTS tag_content;

CREATE TABLE tag_content (
    search_type VARCHAR(20) NOT NULL COMMENT 'tournament, news',
    ref_no INT NOT NULL COMMENT '{search_type}_no',
    tag_no INT NOT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (search_type, ref_no, tag_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- トーナメントとタグの関連付け
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',1,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',1,143); -- 池袋
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',1,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',1,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',1,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',2,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',2,143); -- 池袋
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',2,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',2,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',2,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',3,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',3,143); -- 池袋
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',3,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',3,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',3,267); -- リングゲーム

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',4,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',4,143); -- 池袋
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',4,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',4,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',4,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',5,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',5,121); -- 秋葉原
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',5,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',5,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',5,299); -- SPADIE

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',6,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',6,121); -- 秋葉原
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',6,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',6,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',6,299); -- SPADIE

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',7,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',7,129); -- 新宿
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',7,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',7,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',7,299); -- SPADIE

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',8,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',8,129); -- 新宿
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',8,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',8,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',8,299); -- SPADIE

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',9,22);  -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',9,123); -- 渋谷
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',9,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',9,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',9,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',10,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',10,123); -- 渋谷
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',10,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',10,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',10,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',11,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',11,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',11,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',11,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',12,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',12,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',12,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',12,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',13,36); -- 大阪府
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',13,212); -- 梅田
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',13,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',13,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',13,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',14,36); -- 大阪府
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',14,212); -- 梅田
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',14,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',14,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',14,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',15,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',15,123); -- 渋谷
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',15,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',15,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',15,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',16,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',16,123); -- 渋谷
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',16,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',16,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',16,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',17,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',17,129); -- 新宿
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',17,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',17,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',17,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',18,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',18,129); -- 新宿
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',18,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',18,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',18,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',19,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',19,134); -- 赤坂
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',19,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',19,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',19,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',20,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',20,134); -- 赤坂
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',20,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',20,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',20,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',21,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',21,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',21,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',21,299); -- SPADIE
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',21,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',22,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',22,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',22,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',22,299); -- SPADIE
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',22,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',23,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',23,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',23,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',23,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',24,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',24,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',24,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',24,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',25,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',25,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',25,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',25,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',26,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',26,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',26,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',26,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',27,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',27,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',27,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',27,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',28,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',28,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',28,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',28,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',29,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',29,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',29,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',29,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',30,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',30,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',30,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',30,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',31,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',31,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',31,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',31,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',32,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',32,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',32,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',32,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',33,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',33,158); -- 六本木
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',33,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',33,278); -- NLH

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',34,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',34,158); -- 六本木
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',34,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',34,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',34,272); -- アルコール提供

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',35,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',35,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',35,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',35,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',36,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',36,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',36,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',36,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',37,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',37,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',37,278); -- NLH

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',38,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',38,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',38,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',38,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',39,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',39,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',39,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',39,291); -- コイン

INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',40,22); -- 東京都
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',40,266); -- トーナメント
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',40,278); -- NLH
INSERT INTO tag_content(search_type,ref_no,tag_no) VALUES('tournament',40,291); -- コイン

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 