SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- imgテーブルの作成
DROP TABLE IF EXISTS img;

CREATE TABLE img (
    img_no INT NOT NULL AUTO_INCREMENT COMMENT '画像番号',
    img_path VARCHAR(191) DEFAULT NULL COMMENT '画像パス',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (img_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- owner_no = 1 の画像データ
INSERT INTO img(img_no, img_path) VALUES(101, 'https://example.com/images/owner1/interior1.jpg'); -- 店内の様子
INSERT INTO img(img_no, img_path) VALUES(102, 'https://example.com/images/owner1/interior2.jpg');
INSERT INTO img(img_no, img_path) VALUES(103, 'https://example.com/images/owner1/cast1.jpg'); -- キャスト
INSERT INTO img(img_no, img_path) VALUES(104, 'https://example.com/images/owner1/cast2.jpg');
INSERT INTO img(img_no, img_path) VALUES(105, 'https://example.com/images/owner1/cast3.jpg');
INSERT INTO img(img_no, img_path) VALUES(106, 'https://example.com/images/owner1/food1.jpg'); -- フード
INSERT INTO img(img_no, img_path) VALUES(107, 'https://example.com/images/owner1/food2.jpg');
INSERT INTO img(img_no, img_path) VALUES(108, 'https://example.com/images/owner1/tournament_a_winner.jpg'); -- トーナメントA優勝者
INSERT INTO img(img_no, img_path) VALUES(109, 'https://example.com/images/owner1/tournament_b_winner.jpg'); -- トーナメントB優勝者
INSERT INTO img(img_no, img_path) VALUES(110, 'https://example.com/images/owner1/other1.jpg'); -- その他
INSERT INTO img(img_no, img_path) VALUES(111, 'https://example.com/images/owner1/other2.jpg');

-- owner_no = 2 の画像データ
INSERT INTO img(img_no, img_path) VALUES(201, 'https://example.com/images/owner2/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(202, 'https://example.com/images/owner2/interior2.jpg');
INSERT INTO img(img_no, img_path) VALUES(203, 'https://example.com/images/owner2/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(204, 'https://example.com/images/owner2/cast2.jpg');
INSERT INTO img(img_no, img_path) VALUES(205, 'https://example.com/images/owner2/cast3.jpg');
INSERT INTO img(img_no, img_path) VALUES(206, 'https://example.com/images/owner2/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(207, 'https://example.com/images/owner2/food2.jpg');
INSERT INTO img(img_no, img_path) VALUES(208, 'https://example.com/images/owner2/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(209, 'https://example.com/images/owner2/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(210, 'https://example.com/images/owner2/other1.jpg');
INSERT INTO img(img_no, img_path) VALUES(211, 'https://example.com/images/owner2/other2.jpg');

-- owner_no = 3 の画像データ
INSERT INTO img(img_no, img_path) VALUES(301, 'https://example.com/images/owner3/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(302, 'https://example.com/images/owner3/interior2.jpg');
INSERT INTO img(img_no, img_path) VALUES(303, 'https://example.com/images/owner3/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(304, 'https://example.com/images/owner3/cast2.jpg');
INSERT INTO img(img_no, img_path) VALUES(305, 'https://example.com/images/owner3/cast3.jpg');
INSERT INTO img(img_no, img_path) VALUES(306, 'https://example.com/images/owner3/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(307, 'https://example.com/images/owner3/food2.jpg');
INSERT INTO img(img_no, img_path) VALUES(308, 'https://example.com/images/owner3/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(309, 'https://example.com/images/owner3/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(310, 'https://example.com/images/owner3/other1.jpg');
INSERT INTO img(img_no, img_path) VALUES(311, 'https://example.com/images/owner3/other2.jpg');

-- owner_no = 4 の画像データ
INSERT INTO img(img_no, img_path) VALUES(401, 'https://example.com/images/owner4/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(402, 'https://example.com/images/owner4/interior2.jpg');
INSERT INTO img(img_no, img_path) VALUES(403, 'https://example.com/images/owner4/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(404, 'https://example.com/images/owner4/cast2.jpg');
INSERT INTO img(img_no, img_path) VALUES(405, 'https://example.com/images/owner4/cast3.jpg');
INSERT INTO img(img_no, img_path) VALUES(406, 'https://example.com/images/owner4/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(407, 'https://example.com/images/owner4/food2.jpg');
INSERT INTO img(img_no, img_path) VALUES(408, 'https://example.com/images/owner4/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(409, 'https://example.com/images/owner4/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(410, 'https://example.com/images/owner4/other1.jpg');
INSERT INTO img(img_no, img_path) VALUES(411, 'https://example.com/images/owner4/other2.jpg');

-- owner_no = 5 の画像データ
INSERT INTO img(img_no, img_path) VALUES(501, 'https://example.com/images/owner5/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(502, 'https://example.com/images/owner5/interior2.jpg');
INSERT INTO img(img_no, img_path) VALUES(503, 'https://example.com/images/owner5/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(504, 'https://example.com/images/owner5/cast2.jpg');
INSERT INTO img(img_no, img_path) VALUES(505, 'https://example.com/images/owner5/cast3.jpg');
INSERT INTO img(img_no, img_path) VALUES(506, 'https://example.com/images/owner5/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(507, 'https://example.com/images/owner5/food2.jpg');
INSERT INTO img(img_no, img_path) VALUES(508, 'https://example.com/images/owner5/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(509, 'https://example.com/images/owner5/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(510, 'https://example.com/images/owner5/other1.jpg');
INSERT INTO img(img_no, img_path) VALUES(511, 'https://example.com/images/owner5/other2.jpg');

-- owner_no = 6-20 の画像データ（簡略版）
INSERT INTO img(img_no, img_path) VALUES(601, 'https://example.com/images/owner6/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(603, 'https://example.com/images/owner6/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(606, 'https://example.com/images/owner6/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(608, 'https://example.com/images/owner6/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(609, 'https://example.com/images/owner6/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(610, 'https://example.com/images/owner6/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(701, 'https://example.com/images/owner7/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(703, 'https://example.com/images/owner7/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(706, 'https://example.com/images/owner7/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(708, 'https://example.com/images/owner7/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(709, 'https://example.com/images/owner7/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(710, 'https://example.com/images/owner7/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(801, 'https://example.com/images/owner8/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(803, 'https://example.com/images/owner8/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(806, 'https://example.com/images/owner8/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(808, 'https://example.com/images/owner8/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(809, 'https://example.com/images/owner8/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(810, 'https://example.com/images/owner8/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(901, 'https://example.com/images/owner9/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(903, 'https://example.com/images/owner9/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(906, 'https://example.com/images/owner9/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(908, 'https://example.com/images/owner9/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(909, 'https://example.com/images/owner9/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(910, 'https://example.com/images/owner9/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1001, 'https://example.com/images/owner10/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1003, 'https://example.com/images/owner10/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1006, 'https://example.com/images/owner10/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1008, 'https://example.com/images/owner10/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1009, 'https://example.com/images/owner10/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1010, 'https://example.com/images/owner10/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1101, 'https://example.com/images/owner11/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1103, 'https://example.com/images/owner11/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1106, 'https://example.com/images/owner11/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1108, 'https://example.com/images/owner11/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1109, 'https://example.com/images/owner11/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1110, 'https://example.com/images/owner11/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1201, 'https://example.com/images/owner12/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1203, 'https://example.com/images/owner12/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1206, 'https://example.com/images/owner12/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1208, 'https://example.com/images/owner12/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1209, 'https://example.com/images/owner12/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1210, 'https://example.com/images/owner12/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1301, 'https://example.com/images/owner13/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1303, 'https://example.com/images/owner13/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1306, 'https://example.com/images/owner13/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1308, 'https://example.com/images/owner13/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1309, 'https://example.com/images/owner13/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1310, 'https://example.com/images/owner13/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1401, 'https://example.com/images/owner14/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1403, 'https://example.com/images/owner14/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1406, 'https://example.com/images/owner14/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1408, 'https://example.com/images/owner14/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1409, 'https://example.com/images/owner14/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1410, 'https://example.com/images/owner14/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1501, 'https://example.com/images/owner15/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1503, 'https://example.com/images/owner15/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1506, 'https://example.com/images/owner15/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1508, 'https://example.com/images/owner15/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1509, 'https://example.com/images/owner15/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1510, 'https://example.com/images/owner15/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1601, 'https://example.com/images/owner16/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1603, 'https://example.com/images/owner16/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1606, 'https://example.com/images/owner16/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1608, 'https://example.com/images/owner16/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1609, 'https://example.com/images/owner16/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1610, 'https://example.com/images/owner16/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1701, 'https://example.com/images/owner17/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1703, 'https://example.com/images/owner17/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1706, 'https://example.com/images/owner17/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1708, 'https://example.com/images/owner17/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1709, 'https://example.com/images/owner17/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1710, 'https://example.com/images/owner17/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1801, 'https://example.com/images/owner18/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1803, 'https://example.com/images/owner18/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1806, 'https://example.com/images/owner18/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1808, 'https://example.com/images/owner18/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1809, 'https://example.com/images/owner18/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1810, 'https://example.com/images/owner18/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(1901, 'https://example.com/images/owner19/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1903, 'https://example.com/images/owner19/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1906, 'https://example.com/images/owner19/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(1908, 'https://example.com/images/owner19/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1909, 'https://example.com/images/owner19/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(1910, 'https://example.com/images/owner19/other1.jpg');

INSERT INTO img(img_no, img_path) VALUES(2001, 'https://example.com/images/owner20/interior1.jpg');
INSERT INTO img(img_no, img_path) VALUES(2003, 'https://example.com/images/owner20/cast1.jpg');
INSERT INTO img(img_no, img_path) VALUES(2006, 'https://example.com/images/owner20/food1.jpg');
INSERT INTO img(img_no, img_path) VALUES(2008, 'https://example.com/images/owner20/tournament_a_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(2009, 'https://example.com/images/owner20/tournament_b_winner.jpg');
INSERT INTO img(img_no, img_path) VALUES(2010, 'https://example.com/images/owner20/other1.jpg');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 