SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_book_pickup_itemテーブルの作成
DROP TABLE IF EXISTS room_book_pickup_item;

CREATE TABLE room_book_pickup_item (
    room_no INT NOT NULL,
    book_start_date DATE NOT NULL COMMENT '予約開始日：{YYYYMMDD}',
    display_no INT NOT NULL COMMENT '表示番号(1, 2)',
    book_end_date DATE DEFAULT NULL COMMENT '予約終了日：{YYYYMMDD}',
    pickup_item_no INT DEFAULT NULL COMMENT '(pickup_item_no = 0) = データなし',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (room_no, book_start_date, display_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- 2025年7月1日の予約データを挿入
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(1, '2025-07-01', 1, 1);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(1, '2025-07-01', 2, 2);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(2, '2025-07-01', 1, 3);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(2, '2025-07-01', 2, 4);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(3, '2025-07-01', 1, 5);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(3, '2025-07-01', 2, 6);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(4, '2025-07-01', 1, 7);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(4, '2025-07-01', 2, 8);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(5, '2025-07-01', 1, 9);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(5, '2025-07-01', 2, 10);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(6, '2025-07-01', 1, 11);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(6, '2025-07-01', 2, 12);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(7, '2025-07-01', 1, 13);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(7, '2025-07-01', 2, 14);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(8, '2025-07-01', 1, 15);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(8, '2025-07-01', 2, 16);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(9, '2025-07-01', 1, 17);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(9, '2025-07-01', 2, 18);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(10, '2025-07-01', 1, 19);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(10, '2025-07-01', 2, 20);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(11, '2025-07-01', 1, 21);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(11, '2025-07-01', 2, 22);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(12, '2025-07-01', 1, 23);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(12, '2025-07-01', 2, 24);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(13, '2025-07-01', 1, 25);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(13, '2025-07-01', 2, 26);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(14, '2025-07-01', 1, 27);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(14, '2025-07-01', 2, 28);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(15, '2025-07-01', 1, 29);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(15, '2025-07-01', 2, 30);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(16, '2025-07-01', 1, 31);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(16, '2025-07-01', 2, 32);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(17, '2025-07-01', 1, 33);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(17, '2025-07-01', 2, 34);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(18, '2025-07-01', 1, 35);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(18, '2025-07-01', 2, 36);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(19, '2025-07-01', 1, 37);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(19, '2025-07-01', 2, 38);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(20, '2025-07-01', 1, 39);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(20, '2025-07-01', 2, 40);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(21, '2025-07-01', 1, 41);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(21, '2025-07-01', 2, 42);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(22, '2025-07-01', 1, 43);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(22, '2025-07-01', 2, 44);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(23, '2025-07-01', 1, 45);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(23, '2025-07-01', 2, 46);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(24, '2025-07-01', 1, 47);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(24, '2025-07-01', 2, 48);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(25, '2025-07-01', 1, 49);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(25, '2025-07-01', 2, 50);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(26, '2025-07-01', 1, 51);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(26, '2025-07-01', 2, 52);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(27, '2025-07-01', 1, 53);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(27, '2025-07-01', 2, 54);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(28, '2025-07-01', 1, 55);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(28, '2025-07-01', 2, 56);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(29, '2025-07-01', 1, 57);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(29, '2025-07-01', 2, 58);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(30, '2025-07-01', 1, 59);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(30, '2025-07-01', 2, 60);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(31, '2025-07-01', 1, 61);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(31, '2025-07-01', 2, 62);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(32, '2025-07-01', 1, 63);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(32, '2025-07-01', 2, 64);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(33, '2025-07-01', 1, 65);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(33, '2025-07-01', 2, 66);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(34, '2025-07-01', 1, 67);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(34, '2025-07-01', 2, 68);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(35, '2025-07-01', 1, 69);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(35, '2025-07-01', 2, 70);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(36, '2025-07-01', 1, 71);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(36, '2025-07-01', 2, 72);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(37, '2025-07-01', 1, 73);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(37, '2025-07-01', 2, 74);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(38, '2025-07-01', 1, 75);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(38, '2025-07-01', 2, 76);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(39, '2025-07-01', 1, 77);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(39, '2025-07-01', 2, 78);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(40, '2025-07-01', 1, 79);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(40, '2025-07-01', 2, 80);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(41, '2025-07-01', 1, 81);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(41, '2025-07-01', 2, 82);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(42, '2025-07-01', 1, 83);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(42, '2025-07-01', 2, 84);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(43, '2025-07-01', 1, 85);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(43, '2025-07-01', 2, 86);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(44, '2025-07-01', 1, 87);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(44, '2025-07-01', 2, 88);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(45, '2025-07-01', 1, 89);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(45, '2025-07-01', 2, 90);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(46, '2025-07-01', 1, 91);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(46, '2025-07-01', 2, 92);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(47, '2025-07-01', 1, 93);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(47, '2025-07-01', 2, 94);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(48, '2025-07-01', 1, 95);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(48, '2025-07-01', 2, 96);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(49, '2025-07-01', 1, 97);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(49, '2025-07-01', 2, 98);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(50, '2025-07-01', 1, 99);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(50, '2025-07-01', 2, 100);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(51, '2025-07-01', 1, 101);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(51, '2025-07-01', 2, 102);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(52, '2025-07-01', 1, 103);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(52, '2025-07-01', 2, 104);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(53, '2025-07-01', 1, 105);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(53, '2025-07-01', 2, 106);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(54, '2025-07-01', 1, 107);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(54, '2025-07-01', 2, 108);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(55, '2025-07-01', 1, 109);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(55, '2025-07-01', 2, 110);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(56, '2025-07-01', 1, 111);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(56, '2025-07-01', 2, 112);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(57, '2025-07-01', 1, 113);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(57, '2025-07-01', 2, 114);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(58, '2025-07-01', 1, 115);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(58, '2025-07-01', 2, 116);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(59, '2025-07-01', 1, 117);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(59, '2025-07-01', 2, 118);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(60, '2025-07-01', 1, 119);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(60, '2025-07-01', 2, 120);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(61, '2025-07-01', 1, 121);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(61, '2025-07-01', 2, 122);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(62, '2025-07-01', 1, 123);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(62, '2025-07-01', 2, 124);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(63, '2025-07-01', 1, 125);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(63, '2025-07-01', 2, 126);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(64, '2025-07-01', 1, 127);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(64, '2025-07-01', 2, 128);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(65, '2025-07-01', 1, 129);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(65, '2025-07-01', 2, 130);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(66, '2025-07-01', 1, 131);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(66, '2025-07-01', 2, 132);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(67, '2025-07-01', 1, 133);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(67, '2025-07-01', 2, 134);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(68, '2025-07-01', 1, 135);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(68, '2025-07-01', 2, 136);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(69, '2025-07-01', 1, 137);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(69, '2025-07-01', 2, 138);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(70, '2025-07-01', 1, 139);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(70, '2025-07-01', 2, 140);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(71, '2025-07-01', 1, 141);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(71, '2025-07-01', 2, 142);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(72, '2025-07-01', 1, 143);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(72, '2025-07-01', 2, 144);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(73, '2025-07-01', 1, 145);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(73, '2025-07-01', 2, 146);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(74, '2025-07-01', 1, 147);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(74, '2025-07-01', 2, 148);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(75, '2025-07-01', 1, 149);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(75, '2025-07-01', 2, 150);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(76, '2025-07-01', 1, 151);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(76, '2025-07-01', 2, 152);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(77, '2025-07-01', 1, 153);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(77, '2025-07-01', 2, 154);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(78, '2025-07-01', 1, 155);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(78, '2025-07-01', 2, 156);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(79, '2025-07-01', 1, 157);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(79, '2025-07-01', 2, 158);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(80, '2025-07-01', 1, 159);
INSERT INTO room_book_pickup_item(room_no, book_start_date, display_no, pickup_item_no) VALUES(80, '2025-07-01', 2, 160);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 