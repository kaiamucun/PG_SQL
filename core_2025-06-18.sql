# ************************************************************
# Sequel Ace SQL dump
# バージョン 20094
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# ホスト: localhost (MySQL 8.4.5)
# データベース: core
# 生成時間: 2025-06-18 08:40:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ admin_announce
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_announce`;

CREATE TABLE `admin_announce` (
  `announce_no` int NOT NULL AUTO_INCREMENT,
  `announce_text` text NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`announce_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ admin_org_action
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_org_action`;

CREATE TABLE `admin_org_action` (
  `org_no` int NOT NULL,
  `action_type` varchar(20) NOT NULL,
  `seq` bigint NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `action_json` text NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_no`,`action_type`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ admin_org_img
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_org_img`;

CREATE TABLE `admin_org_img` (
  `org_no` int NOT NULL,
  `img_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_no`,`img_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `ua` varchar(191) NOT NULL DEFAULT '',
  `login_dt` datetime(3) DEFAULT '1970-01-01 00:00:00.000',
  `access_dt` datetime(3) DEFAULT '1970-01-01 00:00:00.000',
  `access_org_no` int DEFAULT '0',
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;

INSERT INTO `admin_user` (`user_id`, `password`, `user_name`, `ua`, `login_dt`, `access_dt`, `access_org_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	('master','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','master','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','2025-06-18 07:09:38.495','2025-06-18 07:10:19.566',1,1,'2025-05-27 09:08:35','2025-06-18 07:06:10');

/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ admin_user_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_org`;

CREATE TABLE `admin_user_org` (
  `user_id` varchar(20) NOT NULL,
  `org_no` int NOT NULL,
  `permission_bit_flag` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`org_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `admin_user_org` WRITE;
/*!40000 ALTER TABLE `admin_user_org` DISABLE KEYS */;

INSERT INTO `admin_user_org` (`user_id`, `org_no`, `permission_bit_flag`, `enabled`, `created_at`, `updated_at`)
VALUES
	('master',1,929,1,'2025-05-27 09:12:46','2025-06-18 07:06:18');

/*!40000 ALTER TABLE `admin_user_org` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ app_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_info`;

CREATE TABLE `app_info` (
  `info_key` varchar(191) NOT NULL,
  `info_value` varchar(191) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`info_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ brand
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_no` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brand_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ brand_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brand_event`;

CREATE TABLE `brand_event` (
  `brand_no` int NOT NULL,
  `event_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brand_no`,`event_no`),
  UNIQUE KEY `UK_event_brand` (`event_no`,`brand_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ cache_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_info`;

CREATE TABLE `cache_info` (
  `cache_id` varchar(40) NOT NULL,
  `update_dt` datetime NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_no` int NOT NULL AUTO_INCREMENT,
  `event_kind` varchar(20) NOT NULL,
  `event_name` varchar(60) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `main_price` int NOT NULL,
  `main_price_unit` varchar(3) NOT NULL,
  `venue_name` varchar(3) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_no`),
  KEY `IX_end_date` (`event_kind`,`end_date`),
  KEY `IX_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ html
# ------------------------------------------------------------

DROP TABLE IF EXISTS `html`;

CREATE TABLE `html` (
  `html_no` int NOT NULL AUTO_INCREMENT,
  `html_content` text NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`html_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ img
# ------------------------------------------------------------

DROP TABLE IF EXISTS `img`;

CREATE TABLE `img` (
  `img_no` int NOT NULL AUTO_INCREMENT,
  `img_path` varchar(191) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`img_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `media_no` int NOT NULL AUTO_INCREMENT,
  `media_name` varchar(40) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`media_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `news_no` int NOT NULL AUTO_INCREMENT,
  `news_type` varchar(20) NOT NULL,
  `news_kind` varchar(20) NOT NULL,
  `news_name` varchar(60) NOT NULL,
  `post_dt` datetime NOT NULL,
  `html_no` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `thumbnail_img_no` int NOT NULL,
  `owner_no` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_no`),
  KEY `IX_owner` (`owner_no`,`post_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `org`;

CREATE TABLE `org` (
  `org_no` int NOT NULL AUTO_INCREMENT,
  `org_type` varchar(20) NOT NULL,
  `ref_no` int NOT NULL,
  `org_prefix` varchar(4) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_no`),
  UNIQUE KEY `UK_type_ref` (`org_type`,`ref_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;

INSERT INTO `org` (`org_no`, `org_type`, `ref_no`, `org_prefix`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'pg',0,'PG',1,'2025-06-18 07:09:22','2025-06-18 07:09:22');

/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ owner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `owner_no` int NOT NULL AUTO_INCREMENT,
  `owner_type` varchar(20) NOT NULL,
  `ref_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`),
  UNIQUE KEY `UK_type_ref` (`owner_type`,`ref_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_as_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_as_info`;

CREATE TABLE `owner_as_info` (
  `owner_no` int NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `lat` bigint NOT NULL,
  `lon` bigint NOT NULL,
  `access` varchar(20) NOT NULL,
  `table_count` int NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_category`;

CREATE TABLE `owner_category` (
  `owner_no` int NOT NULL,
  `category_no` int NOT NULL,
  `order_no` int NOT NULL,
  `category_name` varchar(40) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`category_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_category_photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_category_photo`;

CREATE TABLE `owner_category_photo` (
  `owner_no` int NOT NULL,
  `category_no` int NOT NULL,
  `order_no` int NOT NULL,
  `img_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`category_no`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_html
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_html`;

CREATE TABLE `owner_html` (
  `owner_no` int NOT NULL,
  `section` varchar(10) NOT NULL,
  `html_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_ring_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_ring_price`;

CREATE TABLE `owner_ring_price` (
  `owner_no` int NOT NULL,
  `seq` int NOT NULL,
  `stack` int NOT NULL,
  `price` int NOT NULL,
  `remark` varchar(40) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_ring_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_ring_table`;

CREATE TABLE `owner_ring_table` (
  `owner_no` int NOT NULL,
  `table_no` int NOT NULL,
  `game_tag_no` int NOT NULL,
  `small_blind` int NOT NULL,
  `big_blind` int NOT NULL,
  `giant_blind` int NOT NULL,
  `ante` int NOT NULL,
  `max_buyin` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`table_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ owner_url
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_url`;

CREATE TABLE `owner_url` (
  `owner_no` int NOT NULL,
  `url_type` varchar(10) NOT NULL,
  `url` varchar(191) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_no`,`url_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ pickup_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item`;

CREATE TABLE `pickup_item` (
  `pickup_item_no` int NOT NULL AUTO_INCREMENT,
  `pickup_item_type` varchar(10) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ pickup_item_as_game
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_game`;

CREATE TABLE `pickup_item_as_game` (
  `pickup_item_no` int NOT NULL,
  `game_time` time NOT NULL,
  `game_title` varchar(10) NOT NULL,
  `game_price` int NOT NULL,
  `game_player_count` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ pickup_item_as_pr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_pr`;

CREATE TABLE `pickup_item_as_pr` (
  `pickup_item_no` int NOT NULL,
  `pr` varchar(40) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ pickup_item_as_tournament
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_tournament`;

CREATE TABLE `pickup_item_as_tournament` (
  `pickup_item_no` int NOT NULL,
  `tournament_name` varchar(60) NOT NULL,
  `start_dt` datetime NOT NULL,
  `late_dt` datetime NOT NULL,
  `entry_price` int NOT NULL,
  `entry_price_unit` varchar(3) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `room_no` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(60) NOT NULL,
  `order_no` int NOT NULL,
  `service_tag_no` int NOT NULL,
  `has_license_fuei` tinyint NOT NULL,
  `has_license_yukyo` tinyint NOT NULL,
  `is_partner` tinyint NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_no`),
  UNIQUE KEY `room_name` (`room_name`),
  KEY `IX_order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ room_opening_hours
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room_opening_hours`;

CREATE TABLE `room_opening_hours` (
  `room_no` int NOT NULL,
  `dayofweek_no` int NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `off` tinyint NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_no`,`dayofweek_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ room_pickup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room_pickup`;

CREATE TABLE `room_pickup` (
  `room_no` int NOT NULL,
  `display_no` int NOT NULL,
  `pickup_item_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_no`,`display_no`),
  UNIQUE KEY `pickup_item_no` (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ room_pickup_book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room_pickup_book`;

CREATE TABLE `room_pickup_book` (
  `room_no` int NOT NULL,
  `book_date` date NOT NULL,
  `display_no` int NOT NULL,
  `pickup_item_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_no`,`book_date`,`display_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `tag_type` varchar(20) NOT NULL,
  `tag_no` int NOT NULL,
  `tag_name` varchar(20) NOT NULL,
  `hit_csv` varchar(191) NOT NULL,
  `order_no` int NOT NULL,
  `parent_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_type`,`tag_no`),
  UNIQUE KEY `tag_no` (`tag_no`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tag_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag_content`;

CREATE TABLE `tag_content` (
  `search_type` varchar(20) NOT NULL,
  `ref_no` int NOT NULL,
  `tag_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`search_type`,`ref_no`,`tag_no`),
  UNIQUE KEY `UK_tagno` (`tag_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tag_owner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag_owner`;

CREATE TABLE `tag_owner` (
  `search_type` varchar(20) NOT NULL,
  `ref_no` int NOT NULL,
  `tag_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`search_type`,`ref_no`,`tag_no`),
  UNIQUE KEY `UK_tagno` (`tag_no`),
  KEY `IX_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tournament
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament`;

CREATE TABLE `tournament` (
  `tournament_no` int NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(60) NOT NULL,
  `start_dt` datetime NOT NULL,
  `late_dt` datetime NOT NULL,
  `end_dt` datetime NOT NULL,
  `blind_min` int NOT NULL,
  `detail_html_no` int NOT NULL,
  `entry_price` int NOT NULL,
  `entry_price_unit` varchar(3) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `owner_no` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tournament_no`),
  KEY `IX_start` (`start_dt`),
  KEY `IX_owner_start` (`owner_no`,`start_dt`),
  KEY `IX_update_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tournament_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament_price`;

CREATE TABLE `tournament_price` (
  `tournament_no` int NOT NULL,
  `price_type` varchar(20) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` int NOT NULL,
  `stack` int NOT NULL,
  `remark` varchar(20) NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tournament_no`,`price_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# テーブルのダンプ tournament_structure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament_structure`;

CREATE TABLE `tournament_structure` (
  `tournament_no` int NOT NULL,
  `seq` int NOT NULL,
  `level` int NOT NULL,
  `small_blind` int NOT NULL,
  `big_blind` int NOT NULL,
  `giant_blind` int NOT NULL,
  `ante` int NOT NULL,
  `blind_min` int NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tournament_no`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
