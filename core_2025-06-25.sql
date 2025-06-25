# ************************************************************
# Sequel Ace SQL dump
# バージョン 20094
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# ホスト: localhost (MySQL 8.4.5)
# データベース: core
# 生成時間: 2025-06-25 06:28:51 +0000
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
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Operator decided',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '非可逆暗号文字列',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for display',
  `ua` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user agent, hints',
  `login_dt` datetime(3) DEFAULT NULL COMMENT 'ログイン日時',
  `access_dt` datetime(3) DEFAULT NULL COMMENT '最終アクセス日時',
  `access_org_no` int DEFAULT NULL COMMENT '最終アクセス組織',
  `announce_check_dt` datetime DEFAULT NULL COMMENT '未読件数の表示用',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;

INSERT INTO `admin_user` (`user_id`, `password`, `user_name`, `ua`, `login_dt`, `access_dt`, `access_org_no`, `announce_check_dt`, `enabled`, `created_at`, `updated_at`)
VALUES
	('master','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','master','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',1,'2025-05-27 09:08:35',1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_01','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者01(AG)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',2,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_02','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者02(IG)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',3,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_03','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者03(QC)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',4,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_04','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者04(GGSJ)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',5,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_05','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者05(GGSB)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',6,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_06','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者06(GGNG)','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','2025-06-24 10:37:27.778','2025-06-24 11:01:35.072',7,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_07','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者07(GGOS)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',8,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_08','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者08(KKSB)','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','2025-06-25 13:18:05.245','2025-06-25 15:25:33.036',9,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_09','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者09(KKSJ)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',10,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_10','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者10(SAP)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',11,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_11','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者11(CLT)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',12,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_12','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者12(NG)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',13,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_13','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者13(Rela)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',14,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_14','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者14(NCA)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',15,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_15','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者15(Gut)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',16,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_16','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者16(RGS)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',17,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_17','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者17(NCS)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',18,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_18','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者18(8YH)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',19,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_19','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者19(BBEB)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',20,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10'),
	('room_admin_20','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f','ROOM管理者20(BKNK)','','2025-06-19 01:35:03.872','2025-06-19 03:27:07.503',21,NULL,1,'2025-06-24 10:37:10','2025-06-24 10:37:10');

/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ admin_user_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_org`;

CREATE TABLE `admin_user_org` (
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_no` int NOT NULL,
  `permission_bit_flag` int DEFAULT NULL COMMENT 'ENUM user, event, info, tournament, news',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`user_id`,`org_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_user_org` WRITE;
/*!40000 ALTER TABLE `admin_user_org` DISABLE KEYS */;

INSERT INTO `admin_user_org` (`user_id`, `org_no`, `permission_bit_flag`, `enabled`, `created_at`, `updated_at`)
VALUES
	('master',1,929,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_01',2,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_02',3,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_03',4,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_04',5,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_05',6,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_06',7,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_07',8,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_08',9,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_09',10,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_10',11,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_11',12,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_12',13,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_13',14,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_14',15,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_15',16,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_16',17,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_17',18,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_18',19,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_19',20,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27'),
	('room_admin_20',21,122,1,'2025-06-24 10:34:27','2025-06-24 10:34:27');

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
  `brand_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `brand_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ブランド名',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`brand_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;

INSERT INTO `brand` (`brand_no`, `brand_name`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'Japan Open Poker Tour',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(2,'学生ポーカー選手権 U-30',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(3,'MASTERS S-1',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(4,'Spadie Poker League',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(5,'戦国ポーカーツアー',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(6,'SHIBUYA POKER FES',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(7,'SHINJUKU POKER FES',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(8,'Top of Poker Championship',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(9,'百花繚乱',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(10,'XPT',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(11,'風林火山',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(12,'名人戦',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(13,'JAPAN POKER FESTIVAL',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(14,'ポーカー王位戦',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(15,'AJPC',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(16,'WOLF SERIES of POKER',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(17,'Osaka Super Tournament',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(18,'GOLD DRAGON',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(19,'NIPPON SERIES',1,'2025-06-19 06:47:27','2025-06-19 06:47:27'),
	(20,'World Series of Poker',1,'2025-06-19 06:47:27','2025-06-19 06:47:27');

/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ brand_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brand_event`;

CREATE TABLE `brand_event` (
  `brand_no` int NOT NULL,
  `event_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`brand_no`,`event_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `brand_event` WRITE;
/*!40000 ALTER TABLE `brand_event` DISABLE KEYS */;

INSERT INTO `brand_event` (`brand_no`, `event_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(1,2,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(1,3,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(1,4,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(1,5,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(2,6,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(4,7,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(5,8,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(7,9,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(8,10,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(8,11,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(9,12,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(10,13,1,'2025-06-19 09:32:26','2025-06-19 09:32:26'),
	(20,14,1,'2025-06-19 09:32:26','2025-06-19 09:32:26');

/*!40000 ALTER TABLE `brand_event` ENABLE KEYS */;
UNLOCK TABLES;


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
  `event_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `event_kind` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'japan, global',
  `event_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'イベント名',
  `start_date` date DEFAULT NULL COMMENT '開始日 : YYYYMMDD',
  `end_date` date DEFAULT NULL COMMENT '終了日 : YYYYMMDD',
  `main_price` int DEFAULT NULL COMMENT '-1: 権利者のみ',
  `main_price_unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
  `venue_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会場施設名',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`event_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;

INSERT INTO `event` (`event_no`, `event_kind`, `event_name`, `start_date`, `end_date`, `main_price`, `main_price_unit`, `venue_name`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'japan','2025 Tokyo #02','2025-07-17','2025-07-21',100000,'JPY','ベルサール高田馬場',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(2,'japan','2025 Sapporo #02','2025-09-12','2025-09-15',100000,'JPY','サッポロファクトリー',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(3,'japan','2025 Tokyo #03','2025-10-09','2025-10-13',100000,'JPY','ベルサール高田馬場',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(4,'japan','2025 Osaka #02','2025-10-30','2025-11-03',100000,'JPY','堂島リバーフォーラム',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(5,'japan','2026 Tokyo #01','2025-12-27','2026-01-04',100000,'JPY','ベルサール高田馬場',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(6,'japan','U-30 2025 SUMMER','2025-08-22','2025-08-24',60000,'JPY','ベルサール飯田橋',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(7,'japan','SPADIE POKER LEAGUE FINAL Season38th','2025-08-08','2025-08-17',-1,'JPY','ベルサール新宿',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(8,'japan','戦国ポーカーツアー2025-秋の陣-','2025-09-12','2025-09-15',60000,'JPY','ベルサール新宿',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(9,'japan','SHINJUKU POKER FES ','2025-06-27','2025-06-27',1000000,'JPY','Humax新宿',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(10,'japan','TPC Season 14','2025-07-24','2025-07-27',1500000,'JPY','難波御堂筋ホール',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(11,'japan','TPC Season 15','2025-12-11','2025-12-14',1500000,'JPY','難波御堂筋ホール',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(12,'japan','百花繚乱','2025-06-07','2025-06-08',1000000,'JPY','DEER GOLD',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(13,'japan','XPT','2025-11-21','2025-11-24',2500000,'JPY','NTTクレドホール',1,'2025-06-19 07:56:36','2025-06-19 07:56:36'),
	(14,'global','WSOP2025','2025-05-27','2025-07-16',10000,'USD','LasVegas',1,'2025-06-19 07:56:36','2025-06-19 07:56:36');

/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'pg',0,'pg',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(2,'room',1,'AG',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(3,'room',2,'IG',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(4,'room',3,'QC',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(5,'room',4,'GGSJ',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(6,'room',5,'GGSB',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(7,'room',6,'GGNG',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(8,'room',7,'GGOS',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(9,'room',8,'KKSB',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(10,'room',9,'KKSJ',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(11,'room',10,'SAP',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(12,'room',11,'CLT',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(13,'room',12,'NG',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(14,'room',13,'Rela',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(15,'room',14,'NCA',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(16,'room',15,'Gut',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(17,'room',16,'RGS',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(18,'room',17,'NCS',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(19,'room',18,'8YH',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(20,'room',19,'BBEB',1,'2025-06-19 02:40:38','2025-06-19 02:40:38'),
	(21,'room',20,'BKNK',1,'2025-06-19 02:40:38','2025-06-19 02:40:38');

/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ owner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `owner_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `owner_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'room, event, media',
  `ref_no` int DEFAULT NULL COMMENT 'room_no, event_no, media_no',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`owner_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;

INSERT INTO `owner` (`owner_no`, `owner_type`, `ref_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'room',1,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(2,'room',2,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(3,'room',3,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(4,'room',4,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(5,'room',5,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(6,'room',6,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(7,'room',7,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(8,'room',8,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(9,'room',9,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(10,'room',10,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(11,'room',11,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(12,'room',12,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(13,'room',13,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(14,'room',14,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(15,'room',15,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(16,'room',16,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(17,'room',17,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(18,'room',18,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(19,'room',19,1,'2025-06-19 08:04:00','2025-06-19 08:04:00'),
	(20,'room',20,1,'2025-06-19 08:04:00','2025-06-19 08:04:00');

/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ owner_as_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owner_as_info`;

CREATE TABLE `owner_as_info` (
  `owner_no` int NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '非表示：空文字',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` bigint DEFAULT NULL COMMENT '小数点以下6桁までサポート',
  `lon` bigint DEFAULT NULL COMMENT '小数点以下6桁までサポート',
  `access` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行き方',
  `table_count` int DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '現金、クレカ、PokerWebCoin',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`owner_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `owner_as_info` WRITE;
/*!40000 ALTER TABLE `owner_as_info` DISABLE KEYS */;

INSERT INTO `owner_as_info` (`owner_no`, `tel`, `address`, `lat`, `lon`, `access`, `table_count`, `payment_method`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'03-6206-8948','東京都千代田区外神田1-11-6 小暮ビル4F',36,140,'秋葉原駅徒歩3分',6,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(2,'03-6912-7815','東京都豊島区東池袋1丁目22-5 サンケエビルB1',36,140,'池袋駅徒歩4分',7,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(3,'03-5244-4193','東京都千代田区外神田3-14-9 第26東ビル7F',36,140,'秋葉原駅徒歩5分',5,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(4,'03-6233-8879','東京都新宿区歌舞伎町1-25-3 西武新宿駅前ビルWAMALL 3F',36,140,'西武新宿駅徒歩1分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(5,'03-6427-8010','東京都渋谷区宇田川町12-9 JouleShibuya 10F',36,140,'渋谷駅ハチ公口徒歩5分',9,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(6,'052-253-9721','愛知県名古屋市中区栄3丁目9-2 GEMS栄6階',35,137,'栄駅徒歩5分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(7,'06-6809-2388','大阪府大阪市北区太融寺町8-17 プラザ梅田ビル5F',35,136,'大阪駅徒歩8分',6,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(8,'03-6452-5290','東京都渋谷区宇田川町12-7 エメラルドビル6F',36,140,'渋谷駅徒歩4分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(9,'03-4363-3620','東京都新宿区歌舞伎町1-23-15 SUZUYAビル3F',36,140,'新宿駅東口徒歩3分',9,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(10,'080-7180-9888','東京都港区赤坂3-10-4 月世界ビル4F BaneBAGUS赤坂見附店内',36,140,'赤坂見附駅徒歩1分',4,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(11,'03-6205-6155','東京都新宿区歌舞伎町1-23-15 SUZUYAビル9F',36,140,'西武新宿駅徒歩2分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(12,'052-452-5778','愛知県名古屋市中村区椿町14-6 11CUBESビル6F',35,137,'名駅西口徒歩1分',7,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(13,'050-3590-6011','東京都豊島区東池袋1-7-7 鳥駒総本店ビル3F',36,140,'池袋駅東口徒歩2分',5,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(14,'03-3526-2282','東京都千代田区外神田1-15-18 奥山ビル4F',36,140,'秋葉原駅電気街口徒歩1分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(15,'03-5826-4246','東京都台東区上野2-11-20 タンポポビル2F',36,140,'京成上野駅徒歩3分',7,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(16,'03-6380-3666','東京都新宿区歌舞伎町2-38-3 Stella.K 2F',36,140,'新宿駅徒歩6分',7,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(17,'03-6228-0366','東京都新宿区歌舞伎町1-22-9 Jゴールドビル6F',36,140,'西武新宿駅徒歩1分',7,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(18,'045-900-4087','神奈川県横浜市中区伊勢佐木町2丁目10-4 第三泰信ビル 1F',35,140,'関内駅徒歩5分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(19,'03-6459-3286','東京都渋谷区恵比寿1-10-7 TIB恵比寿 7F',36,140,'恵比寿駅徒歩30秒',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07'),
	(20,'03-6205-7622','東京都港区新橋3丁目7-3 新橋フォディアビルB1F',36,140,'新橋駅徒歩5分',8,'現金、クレカ、PokerWebCoin',1,'2025-06-19 08:20:07','2025-06-19 08:20:07');

/*!40000 ALTER TABLE `owner_as_info` ENABLE KEYS */;
UNLOCK TABLES;


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
  `pickup_item_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `pickup_item_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tournament, pr, game',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pickup_item` WRITE;
/*!40000 ALTER TABLE `pickup_item` DISABLE KEYS */;

INSERT INTO `pickup_item` (`pickup_item_no`, `pickup_item_type`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(2,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(3,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(4,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(5,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(6,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(7,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(8,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(9,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(10,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(11,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(12,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(13,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(14,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(15,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(16,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(17,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(18,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(19,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(20,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(21,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(22,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(23,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(24,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(25,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(26,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(27,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(28,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(29,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(30,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(31,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(32,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(33,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(34,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(35,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(36,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(37,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(38,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(39,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(40,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(41,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(42,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(43,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(44,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(45,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(46,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(47,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(48,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(49,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(50,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(51,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(52,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(53,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(54,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(55,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(56,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(57,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(58,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(59,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(60,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(61,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(62,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(63,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(64,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(65,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(66,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(67,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(68,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(69,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(70,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(71,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(72,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(73,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(74,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(75,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(76,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(77,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(78,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(79,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(80,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(81,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(82,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(83,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(84,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(85,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(86,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(87,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(88,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(89,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(90,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(91,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(92,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(93,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(94,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(95,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(96,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(97,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(98,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(99,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(100,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(101,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(102,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(103,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(104,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(105,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(106,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(107,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(108,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(109,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(110,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(111,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(112,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(113,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(114,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(115,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(116,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(117,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(118,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(119,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(120,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(121,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(122,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(123,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(124,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(125,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(126,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(127,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(128,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(129,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(130,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(131,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(132,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(133,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(134,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(135,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(136,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(137,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(138,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(139,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(140,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(141,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(142,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(143,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(144,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(145,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(146,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(147,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(148,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(149,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(150,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(151,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(152,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(153,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(154,'tournament',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(155,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(156,'pr',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(157,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(158,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(159,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31'),
	(160,'game',1,'2025-06-19 08:48:31','2025-06-19 08:48:31');

/*!40000 ALTER TABLE `pickup_item` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ pickup_item_as_game
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_game`;

CREATE TABLE `pickup_item_as_game` (
  `pickup_item_no` int NOT NULL,
  `game_time` time DEFAULT NULL COMMENT 'hh:mm (24h)',
  `game_title` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'リングゲーム' COMMENT 'default = "リングゲーム"',
  `game_price` int DEFAULT NULL COMMENT '宣伝用リング参加費',
  `game_price_unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
  `game_player_count` int DEFAULT NULL COMMENT '手動更新（リング総人数）',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pickup_item_as_game` WRITE;
/*!40000 ALTER TABLE `pickup_item_as_game` DISABLE KEYS */;

INSERT INTO `pickup_item_as_game` (`pickup_item_no`, `game_time`, `game_title`, `game_price`, `game_price_unit`, `game_player_count`, `enabled`, `created_at`, `updated_at`)
VALUES
	(5,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(6,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(7,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(8,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(13,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(14,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(15,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(16,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(21,'17:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(22,'17:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(23,'17:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(24,'17:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(29,'13:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(30,'13:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(31,'13:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(32,'13:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(37,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(38,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(39,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(40,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(45,'16:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(46,'16:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(47,'16:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(48,'16:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(53,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(54,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(55,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(56,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(61,'13:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(62,'13:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(63,'13:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(64,'13:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(69,'13:30:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(70,'13:30:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(71,'13:30:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(72,'13:30:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(77,'21:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(78,'21:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(79,'21:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(80,'21:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(85,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(86,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(87,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(88,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(93,'17:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(94,'17:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(95,'17:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(96,'17:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(101,'18:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(102,'18:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(103,'18:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(104,'18:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(109,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(110,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(111,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(112,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(117,'13:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(118,'13:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(119,'13:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(120,'13:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(125,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(126,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(127,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(128,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(133,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(134,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(135,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(136,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(141,'20:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(142,'20:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(143,'20:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(144,'20:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(149,'15:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(150,'15:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(151,'15:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(152,'15:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(157,'18:00:00','リングゲーム',3000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(158,'18:00:00','ルーレット',1500,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(159,'18:00:00','大富豪',1000,'円',8,1,'2025-06-19 09:25:47','2025-06-19 09:25:47'),
	(160,'18:00:00','ブラックジャック',2000,'円',10,1,'2025-06-19 09:25:47','2025-06-19 09:25:47');

/*!40000 ALTER TABLE `pickup_item_as_game` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ pickup_item_as_pr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_pr`;

CREATE TABLE `pickup_item_as_pr` (
  `pickup_item_no` int NOT NULL,
  `pr` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pickup_item_as_pr` WRITE;
/*!40000 ALTER TABLE `pickup_item_as_pr` DISABLE KEYS */;

INSERT INTO `pickup_item_as_pr` (`pickup_item_no`, `pr`, `enabled`, `created_at`, `updated_at`)
VALUES
	(3,'秋葉原の電脳街で、チップに魂を宿せ！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(4,'メイド通りの裏側で、最速レイズ体験せよ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(11,'池袋駅0分、終電ギリギリまでオールイン！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(12,'サンシャインの夜景より眩しいリバーの奇跡。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(19,'次のクエストは“優勝”。あなたのレベルを上げろ！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(20,'経験値も賞金も一気に稼げる“リアルRPG”開幕！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(27,'ネオンより熱い、24/7の勝負魂。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(28,'世界が集うテーブルで、“GOOD GAME”を刻め。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(35,'スクランブル交差点のドラマは、リバーでも起こる。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(36,'渋谷の夜、GGの合図はチップの音。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(43,'驚きの手羽先よりスパイシーなブラフを。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(44,'味噌カツの後は、濃厚ポーカーで勝ち点GET。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(51,'なんでや!? の一手で場を沸かせ！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(52,'粉もん文化に負けない、アツアツのポーカー勝負。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(59,'K-POPのビートに乗せてオールイン！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(60,'流行最前線で、運も実力もアップデート。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(67,'煌めく摩天楼で、ハンドもランクアップ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(68,'新宿の夜景を背に、チップを積み上げろ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(75,'大人の街・赤坂で、ラグジュアリーブラフ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(76,'シャンパンを片手に、優雅な勝負を。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(83,'東京発、世界基準のハイテンションポーカー。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(84,'ライブ配信で君の神プレイが瞬時に拡散！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(91,'名古屋城より堅牢なディフェンスで守り切れ！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(92,'東海トップクラスのトーナメントで名を刻め。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(99,'リレイズの連鎖でドラマチック逆転劇。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(100,'買い物帰りに、ひと勝負のスパイスを。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(107,'“にゃん”と驚く幸運がここに潜む。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(108,'推しネコに見守られながら、勝利をゲット！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(115,'上野の静寂を破る、一撃ガットショット！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(116,'不忍池の風を感じつつ、鋭くドローを射抜け。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(123,'eSportsの熱量で、カードバトルを再定義。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(124,'ゲーム好き集合！“カード×ゲーミング”の聖地。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(131,'都会のネオン、ネコのまなざし、勝利の女神は二度鳴く。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(132,'夜行性のあなたへ、深夜トーナメント常設。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(139,'ベイエリアの潮風とともにエイトハンドを制覇。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(140,'みなとみらいの夜景より輝くロイヤルフラッシュ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(147,'バブルに乗せて夢もチップも一気に膨らませ！',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(148,'恵比寿の泡×ポーカーの緊張感＝極上エンタメ。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(155,'化け猫の如く変幻自在のプレイスタイルを。',1,'2025-06-20 07:40:12','2025-06-20 07:40:12'),
	(156,'九つの命で何度でもリバイ、最後に笑うのは誰？',1,'2025-06-20 07:40:12','2025-06-20 07:40:12');

/*!40000 ALTER TABLE `pickup_item_as_pr` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ pickup_item_as_tournament
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_item_as_tournament`;

CREATE TABLE `pickup_item_as_tournament` (
  `pickup_item_no` int NOT NULL,
  `tournament_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `late_dt` datetime DEFAULT NULL,
  `entry_price` int DEFAULT NULL COMMENT 'エントリー費用',
  `entry_price_unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pickup_item_as_tournament` WRITE;
/*!40000 ALTER TABLE `pickup_item_as_tournament` DISABLE KEYS */;

INSERT INTO `pickup_item_as_tournament` (`pickup_item_no`, `tournament_name`, `start_dt`, `late_dt`, `entry_price`, `entry_price_unit`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'♠SPADIE『昼下がりのポーカー』【昼ポ】','2025-07-01 15:15:00','2025-07-01 17:25:00',2500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(2,'♠SPADIE『平日夜のトーナメント』【夜ポ】','2025-07-01 18:00:00','2025-07-01 20:40:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(9,'1000円昼ポーカー【リング/カジノプランの方はFREEROLL！】','2025-07-01 16:00:00','2025-07-01 17:00:00',1000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(10,'【19時20分までにエントリーで1000円割引】Ikebukuro Daily 4K','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(17,'【IV AKIHABARA ドリチケつき】Daily NLH 4K【♠︎SPADIE】','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(18,'【♠︎SPADIE】Daily Turbo 1K','2025-07-01 20:55:00','2025-07-01 22:00:00',1000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(25,'【SPADIE】Daily Deep Stacks 3K','2025-07-01 13:45:00','2025-07-01 16:45:00',4000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(26,'【SPADIE】Thursday Double Stack 3K','2025-07-01 17:45:00','2025-07-01 20:55:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(33,'Speed Racer 1K','2025-07-01 16:00:00','2025-07-01 17:00:00',1000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(34,'Daily NLH 2.5K','2025-07-01 18:00:00','2025-07-01 21:00:00',2500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(41,'Speed Racer 1k','2025-07-01 17:00:00','2025-07-01 18:10:00',1000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(42,'Great Deal','2025-07-01 19:00:00','2025-07-01 20:55:00',5000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(49,'UMEDA DEEP','2025-07-01 15:00:00','2025-07-01 18:35:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(50,'Osaka Classic','2025-07-01 19:00:00','2025-07-01 21:10:00',2000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(57,'KK Genesis 5K','2025-07-01 14:00:00','2025-07-01 17:40:00',5000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(58,'KK Night Stack 6K','2025-07-01 17:30:00','2025-07-01 20:50:00',6000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(65,'KK Daily Deep 3.5k RFID Edition','2025-07-01 14:00:00','2025-07-01 17:40:00',3500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(66,'KK Daily Main 4k','2025-07-01 18:15:00','2025-07-01 20:45:00',4000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(73,'AKASAKA160 【総額40万Coin 相当】','2025-07-01 22:00:00','2025-07-02 02:10:00',16000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(74,'AKASAKA330 【総額100万Coin 相当】','2025-07-01 22:00:00','2025-07-02 01:10:00',33000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(81,'【優勝15,000コイン！】CLT Evening Tournament 2.5k【SPADIE】','2025-07-01 15:10:00','2025-07-01 17:50:00',2500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(82,'Milky Way tournament【SPADIE】','2025-07-01 20:55:00','2025-07-01 22:00:00',2000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(89,'フリーロール','2025-07-01 16:15:00','2025-07-01 18:25:00',1000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(90,'夜のトーナメント『夜ぽ』','2025-07-01 19:00:00','2025-07-01 20:40:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(97,'SPARKL DAILY TOURNAMENT','2025-07-01 18:00:00','2025-07-01 20:50:00',3300,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(98,'SPARKL DAILY TOURNAMENT','2025-07-01 21:00:00','2025-07-01 23:00:00',2200,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(105,'MILLION CHALLENGE DEEP　NSバウチャー対象','2025-07-01 15:00:00','2025-07-01 17:30:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(106,'選べるマルチサテライト【NSバウチャー対象】','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(113,'【優勝１万マイル】お昼のトーナメント','2025-07-01 13:00:00','2025-07-01 17:20:00',2000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(114,'6Kプライズマッチ【SHINOBI】','2025-07-01 17:00:00','2025-07-01 21:00:00',6000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(121,'ラビガチップマッチ','2025-07-01 19:00:00','2025-07-01 21:00:00',3000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(122,'【1卓限定】ラビガマッチターボ','2025-07-01 21:00:00','2025-07-01 22:30:00',2000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(129,'【六本木】フリーロール【BACKDOOR】','2025-07-01 18:00:00','2025-07-01 19:00:00',0,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(130,'【クライナーアドオンあり】酒トナメｘABPT大枠【プライズ:ニッカフロンティア】','2025-07-01 19:30:00','2025-07-01 22:10:00',3300,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(137,'6月度 START UP POKER(~16:30〆)','2025-07-01 13:30:00','2025-07-01 16:30:00',1500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(138,'【80000保証】Daily POKERWEBCOINトーナメント(~20:30〆)','2025-07-01 18:00:00','2025-07-01 20:30:00',5000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(145,'✨GRAND OPEN✨フリーロール‼️⚡️5万相当⚡️16時までアドオン無料‼️レイト17時半‼️','2025-07-01 15:00:00','2025-07-01 17:30:00',0,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(146,'✨GRAND OPEN✨#6 タッグ戦‼️500,000相当✨18時まで早割‼️レイト21時半‼️','2025-07-01 17:00:00','2025-07-01 21:30:00',13000,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(153,'21万保証❣️プライズマッチ❤化猫月間P‼','2025-07-01 18:00:00','2025-07-01 21:50:00',8500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25'),
	(154,'6.5万保証❣終電まで❤️化猫月間P!!','2025-07-01 21:00:00','2025-07-01 22:50:00',8500,'円',1,'2025-06-20 07:34:25','2025-06-20 07:34:25');

/*!40000 ALTER TABLE `pickup_item_as_tournament` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `room_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `room_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ルーム名',
  `order_no` int DEFAULT NULL COMMENT '並び順',
  `service_tag_no` int DEFAULT '0' COMMENT '一覧のサービスタグ / 非表示:0 (default)',
  `has_license_fuei` tinyint DEFAULT NULL COMMENT '風営法５号',
  `has_license_yukyo` tinyint DEFAULT NULL COMMENT '特定遊興',
  `is_partner` tinyint DEFAULT NULL COMMENT '提携店舗フラグ',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店舗ルームマスタ';

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;

INSERT INTO `room` (`room_no`, `room_name`, `order_no`, `service_tag_no`, `has_license_fuei`, `has_license_yukyo`, `is_partner`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'アキバギルド',1,305,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(2,'イケブクロギルド',1,306,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(3,'カジクエ',1,307,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(4,'GGPL新宿',1,308,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(5,'GGPL渋谷',1,309,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(6,'GGPL名古屋',1,310,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(7,'GGPL梅田',1,311,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(8,'KKLP渋谷',1,312,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(9,'KKLP新宿',1,313,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(10,'赤坂デポ',1,314,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(11,'CLT',1,315,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(12,'ナゴヤギルド',1,316,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(13,'金沢ポーカーSPARKL',1,317,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(14,'ネコカジ秋葉原',1,318,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(15,'ガットショット上野池之端',1,319,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(16,'大塚 RABBIT GIRL\'S',1,320,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(17,'BACKDOOR六本木',1,321,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(18,'ENPOKER町田',1,322,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(19,'BUBBLE赤坂',1,323,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56'),
	(20,'化猫ポーカー倶楽部',1,324,1,1,1,1,'2025-06-23 17:02:56','2025-06-23 17:02:56');

/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;


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
  `display_no` int NOT NULL COMMENT '表示番号(1, 2)',
  `pickup_item_no` int DEFAULT NULL COMMENT '(pickup_item_no = 0) = データなし',
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`room_no`,`display_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `room_pickup` WRITE;
/*!40000 ALTER TABLE `room_pickup` DISABLE KEYS */;

INSERT INTO `room_pickup` (`room_no`, `display_no`, `pickup_item_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(1,2,3,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(2,3,9,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(2,4,11,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(3,5,17,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(3,6,19,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(4,7,25,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(4,8,27,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(5,9,33,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(5,10,35,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(6,11,41,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(6,12,43,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(7,13,49,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(7,14,51,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(8,15,57,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(8,16,59,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(9,17,65,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(9,18,67,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(10,19,73,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(10,20,75,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(11,21,81,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(11,22,83,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(12,23,89,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(12,24,91,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(13,25,97,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(13,26,99,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(14,27,105,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(14,28,107,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(15,29,113,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(15,30,115,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(16,31,121,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(16,32,123,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(17,33,129,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(17,34,131,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(18,35,137,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(18,36,139,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(19,37,145,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(19,38,147,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(20,39,153,1,'2025-06-19 08:51:25','2025-06-19 08:51:25'),
	(20,40,155,1,'2025-06-19 08:51:25','2025-06-19 08:51:25');

/*!40000 ALTER TABLE `room_pickup` ENABLE KEYS */;
UNLOCK TABLES;


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



# テーブルのダンプ room_pickup_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room_pickup_item`;

CREATE TABLE `room_pickup_item` (
  `room_no` int NOT NULL,
  `pickup_item_no` int NOT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`room_no`,`pickup_item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `room_pickup_item` WRITE;
/*!40000 ALTER TABLE `room_pickup_item` DISABLE KEYS */;

INSERT INTO `room_pickup_item` (`room_no`, `pickup_item_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,2,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,3,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,4,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,5,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,6,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,7,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(1,8,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,9,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,10,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,11,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,12,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,13,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,14,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,15,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(2,16,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,17,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,18,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,19,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,20,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,21,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,22,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,23,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(3,24,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,25,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,26,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,27,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,28,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,29,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,30,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,31,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(4,32,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,33,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,34,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,35,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,36,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,37,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,38,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,39,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(5,40,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,41,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,42,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,43,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,44,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,45,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,46,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,47,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(6,48,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,49,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,50,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,51,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,52,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,53,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,54,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,55,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(7,56,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,57,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,58,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,59,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,60,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,61,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,62,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,63,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(8,64,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,65,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,66,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,67,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,68,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,69,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,70,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,71,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(9,72,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,73,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,74,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,75,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,76,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,77,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,78,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,79,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(10,80,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,81,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,82,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,83,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,84,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,85,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,86,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,87,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(11,88,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,89,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,90,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,91,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,92,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,93,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,94,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,95,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(12,96,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,97,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,98,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,99,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,100,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,101,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,102,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,103,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(13,104,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,105,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,106,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,107,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,108,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,109,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,110,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,111,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(14,112,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,113,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,114,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,115,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,116,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,117,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,118,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,119,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(15,120,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,121,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,122,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,123,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,124,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,125,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,126,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,127,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(16,128,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,129,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,130,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,131,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,132,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,133,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,134,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,135,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(17,136,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,137,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,138,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,139,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,140,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,141,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,142,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,143,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(18,144,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,145,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,146,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,147,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,148,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,149,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,150,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,151,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(19,152,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,153,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,154,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,155,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,156,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,157,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,158,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,159,1,'2025-06-19 08:52:44','2025-06-19 08:52:44'),
	(20,160,1,'2025-06-19 08:52:44','2025-06-19 08:52:44');

/*!40000 ALTER TABLE `room_pickup_item` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `tag_type` varchar(20) NOT NULL,
  `tag_no` int NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
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

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;

INSERT INTO `tag` (`tag_type`, `tag_no`, `tag_name`, `hit_csv`, `order_no`, `parent_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	('area',57,'旭川','アサヒカワ,Asahikawa',57,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',58,'函館','ハコダテ,Hakodate',58,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',59,'帯広','オビヒロ,Obihiro',59,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',60,'すすきの','ススキノ,Susukino',60,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',61,'道東中標津','ドウトウナカシベツ,Doutounakashibetsu',61,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',62,'北見','キタミ,Kitami',62,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',63,'苫小牧','トマコマイ,Tomakomai',63,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',64,'千歳','チトセ,Chitose',64,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',65,'釧路','クシロ,Kushiro',65,10,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',66,'八戸','ハチノヘ,Hachinohe',66,11,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',67,'盛岡','モリオカ,Morioka',67,12,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',68,'仙台','センダイ,Sendai',68,13,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',69,'秋田','アキタ,Akita',69,14,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',70,'由利本荘','ユリホンジョウ,Yurihonjo',70,14,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',71,'川反','カワバタ,Kawabata',71,14,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',72,'山形','ヤマガタ,Yamagata',72,15,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',73,'郡山','コオリヤマ,Koriyama',73,16,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',74,'福島','フクシマ,Fukushima',74,16,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',75,'いわき','イワキ,Iwaki',75,16,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',76,'つくば','ツクバ,Tsukuba',76,17,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',77,'取手','トリデ,Toride',77,17,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',78,'土浦','ツチウラ,Tsuchiura',78,17,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',79,'水戸','ミト,Mito',79,17,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',80,'宇都宮','ウツノミヤ,Utsunomiya',80,18,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',81,'大田原','オオタワラ,Otawara',81,18,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',82,'前橋','マエバシ,Maebashi',82,19,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',83,'太田','オオタ,Ota',83,19,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',84,'伊勢崎','イセサキ,Isesaki',84,19,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',85,'高崎','タカサキ,Takasaki',85,19,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',86,'桐生','キリュウ,Kiryu',86,19,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',87,'川越','カワゴエ,Kawagoe',87,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',88,'熊谷','クマガヤ,Kumagaya',88,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',89,'大宮','オオミヤ,Omiya',89,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',90,'草加','ソウカ,Soka',90,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',91,'川口','カワグチ,Kawaguchi',91,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',92,'浦和','ウラワ,Urawa',92,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',93,'越谷','コシガヤ,Koshigaya',93,20,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',94,'成田','ナリタ,Narita',94,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',95,'稲毛海岸','イナゲカイガン,Inagekaigan',95,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',96,'我孫子','アビコ,Abiko',96,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',97,'新松戸','シンマツド,Shinmatsudo',97,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',98,'千葉','チバ,Chiba',98,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',99,'船橋','フナバシ,Funabashi',99,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',100,'津田沼','ツダヌマ,Tsudanuma',100,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',101,'柏','カシワ,Kashiwa',101,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',102,'本八幡','モトヤワタ,Motoyawata',102,21,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',103,'北千住','キタセンジュ,Kitasenju',103,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',104,'阿佐ヶ谷','アサガヤ,Asagaya',104,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',105,'綾瀬','アヤセ,Ayase',105,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',106,'下北沢','シモキタザワ,Shimokitazawa',106,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',107,'葛西','カサイ,Kasai',107,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',108,'蒲田','カマタ,Kamata',108,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',109,'亀戸','カメイド,Kameido',109,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',110,'吉祥寺','キチジョウジ,Kichijoji',110,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',111,'錦糸町','キンシチョウ,Kinshicho',111,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',112,'銀座','ギンザ,Ginza',112,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',113,'日本橋','ニホンバシ,Nihonbashi',113,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',114,'駒込','コマゴメ,Komagome',114,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',115,'恵比寿','エビス,Ebisu',115,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',116,'五反田','ゴタンダ,Gotanda',116,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',117,'高田馬場','タカダノババ,Takadanobaba',117,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',118,'国分寺','コクブンジ,Kokubunji',118,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',119,'三田','ミタ,Mita',119,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',120,'四谷','ヨツヤ,Yotsuya',120,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',121,'秋葉原','アキハバラ,Akihabara',121,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',122,'十条','ジュウジョウ,Jujo',122,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',123,'渋谷','シブヤ,Shibuya',123,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',124,'三軒茶屋','サンゲンヂャヤ,Sangenjaya',124,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',125,'水道橋','スイドウバシ,Suidobashi',125,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',126,'小岩','コイワ,Koiwa',126,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',127,'上野','ウエノ,Ueno',127,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',128,'新橋','シンバシ,Shinbashi',128,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',129,'新宿','シンジュク,Shinjuku',129,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',130,'新小岩','シンコイワ,Shinkoiwa',130,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',131,'世田谷','セタガヤ,Setagaya',131,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',132,'西麻布','ニシアザブ,Nishiazabu',132,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',133,'赤羽','アカバネ,Akabane',133,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',134,'赤坂','アカサカ,Akasaka',134,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',135,'浅草橋','アサクサバシ,Asakusabashi',135,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',136,'巣鴨','スガモ,Sugamo',136,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',137,'足立','アダチ,Adachi',137,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',138,'代官山','ダイカンヤマ,Daikanyama',138,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',139,'台場','ダイバ,Daiba',139,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',140,'台東','タイトウ,Taito',140,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',141,'大森','オオモリ,Omori',141,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',142,'大塚','オオツカ,Otsuka',142,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',143,'池袋','イケブクロ,Ikebukuro',143,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',144,'中目黒','ナカメグロ,Nakameguro',144,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',145,'中野','ナカノ,Nakano',145,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',146,'町田','マチダ,Machida',146,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',147,'東大和','ヒガシヤマト,Higashiyamato',147,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',148,'東中野','ヒガシナカノ,Higashinakano',148,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',149,'湯島','ユシマ,Yushima',149,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',150,'八王子','ハチオウジ,Hachioji',150,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',151,'八丁堀','ハッチョウボリ,Hatchobori',151,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',152,'品川','シナガワ,Shinagawa',152,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',153,'福生','フッサ,Fussa',153,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',154,'麻布十番','アザブジュウバン,Azabujuban',154,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',155,'白金','シロカネ,Shirokane',155,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',156,'目黒','メグロ,Meguro',156,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',157,'練馬','ネリマ,Nerima',157,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',158,'六本木','ロッポンギ,Roppongi',158,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',159,'立川','タチカワ,Tachikawa',159,22,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',160,'伊勢原','イセハラ,Isehara',160,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',161,'大船','オオフナ,Ofuna',161,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',162,'横浜','ヨコハマ,Yokohama',162,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',163,'関内','カンナイ,Kannai',163,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',164,'小田原','オダワラ,Odawara',164,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',165,'新横浜','シンヨコハマ,Shinyokohama',165,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',166,'川崎','カワサキ,Kawasaki',166,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',167,'大和','ヤマト,Yamato',167,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',168,'平塚','ヒラツカ,Hiratsuka',168,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',169,'湘南','ショウナン,Shonan',169,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',170,'南林間','ミナミリンカン,Minamirinkan',170,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',171,'本厚木','ホンアツギ,Honatsugi',171,23,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',172,'新潟','ニイガタ,Niigata',172,24,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',173,'上越','ジョウエツ,Joetsu',173,24,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',174,'富山','トヤマ,Toyama',174,25,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',175,'金沢','カナザワ,Kanazawa',175,26,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',176,'福井','フクイ,Fukui',176,27,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',177,'甲府','コウフ,Kofu',177,28,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',178,'長野','ナガノ,Nagano',178,29,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',179,'松本','マツモト,Matsumoto',179,29,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',180,'上田','ウエダ,Ueda',180,29,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',181,'岐阜','ギフ,Gifu',181,30,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',182,'浜松','ハママツ,Hamamatsu',182,31,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',183,'袋井','フクロイ,Fukuroi',183,31,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',184,'富士','フジ,Fuji',184,31,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',185,'静岡','シズオカ,Shizuoka',185,31,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',186,'今池','イマイケ,Imaike',186,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',187,'蒲郡','ガマゴオリ,Gamagori',187,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',188,'栄','サカエ,Sakae',188,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',189,'岡崎','オカザキ,Okazaki',189,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',190,'知立','チリュウ,Chiryu',190,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',191,'豊橋','トヨハシ,Toyohashi',191,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',192,'津島','ツシマ,Tsushima',192,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',193,'名古屋','ナゴヤ,Nagoya',193,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',194,'金山','カナヤマ,Kanayama',194,32,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',195,'四日市','ヨッカイチ,Yokkaichi',195,33,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',196,'栗東','リットウ,Ritto',196,34,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',197,'草津','クサツ,Kusatsu',197,34,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',198,'木屋町','キヤマチ,Kiyamachi',198,35,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',199,'西京極','ニシキョウゴク,Nishikyogoku',199,35,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',200,'河原町','カワラマチ,Kawaramachi',200,35,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',201,'祇園','ギオン,Gion',201,35,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',202,'なんば','ナンバ,Namba',202,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',203,'堺','サカイ,Sakai',203,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',204,'守口','モリグチ,Moriguchi',204,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',205,'心斎橋','シンサイバシ,Shinsaibashi',205,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',206,'西大橋','ニシオオハシ,Nishiohashi',206,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',207,'大阪','オオサカ,Osaka',207,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',208,'泉大津','イズミオオツ,Izumiotsu',208,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',209,'東大阪','ヒガシオオサカ,Higashiosaka',209,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',210,'道頓堀','ドウトンボリ,Dotonbori',210,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',211,'難波','ナニワ,Naniwa',211,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',212,'梅田','ウメダ,Umeda',212,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',213,'八尾','ヤオ,Yao',213,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',214,'北新地','キタシンチ,Kitashinchi',214,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',215,'北堀江','キタホリエ,Kitahorie',215,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',216,'枚方','ヒラカタ,Hirakata',216,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',217,'淀川','ヨドガワ,Yodogawa',217,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',218,'茨木','イバラキ,Ibaraki',218,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',219,'本町','ホンマチ,Honmachi',219,36,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',220,'三宮','サンノミヤ,Sannomiya',220,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',221,'州本','シュウホン,Shuhon',221,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',222,'西宮','ニシノミヤ,Nishinomiya',222,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',223,'尼崎','アマガサキ,Amagasaki',223,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',224,'神戸','コウベ,Kobe',224,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',225,'明石','アカシ,Akashi',225,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',226,'加古川','カコガワ,Kakogawa',226,37,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',227,'生駒','イコマ,Ikoma',227,38,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',228,'天理','テンリ,Tenri',228,38,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',229,'和歌山','ワカヤマ,Wakayama',229,39,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',230,'米子','ヨナゴ,Yonago',230,40,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',231,'松江','マツエ,Matsue',231,41,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',232,'岡山','オカヤマ,Okayama',232,42,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',233,'流川','ナガレカワ,Nagarekawa',233,43,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',234,'福山','フクヤマ,Fukuyama',234,43,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',235,'広島','ヒロシマ,Hiroshima',235,43,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',236,'五日市','イツカイチ,Itsukaichi',236,43,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',237,'山口','ヤマグチ,Yamaguchi',237,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',238,'柳井','ヤナイ,Yanai',238,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',239,'防府','ホウフ,Hofu',239,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',240,'宇部','ウベ,Ube',240,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',241,'周南','シュウナン,Shunan',241,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',242,'岩国','イワクニ,Iwakuni',242,44,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',243,'徳島','トクシマ,Tokushima',243,45,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',244,'高松','タカマツ,Takamatsu',244,46,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',245,'松山','マツヤマ,Matsuyama',245,47,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',246,'高知','コウチ,Kochi',246,48,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',247,'西中州','ニシナカス,Nishinakasu',247,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',248,'中州','ナカス,Nakasu',248,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',249,'直方','ノオガタ,Nogata',249,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',250,'天神','テンジン,Tenjin',250,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',251,'北九州','キタキュウシュウ,Kitakyushu',251,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',252,'薬院','ヤクイン,Yakuin',252,49,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',253,'大村','オオムラ,Omura',253,51,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',254,'思案橋','シアンバシ,Shianbashi',254,51,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',255,'熊本','クマモト,Kumamoto',255,52,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',256,'大分','オオイタ,Oita',256,53,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',257,'宮崎','ミヤザキ,Miyazaki',257,54,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',258,'鹿児島','カゴシマ,Kagoshima',258,55,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',259,'天文館','テンモンカン,Tenmonkan',259,55,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',260,'霧島','キリシマ,Kirishima',260,55,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',261,'出水','イズミ,Izumi',261,55,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',262,'沖縄','オキナワ,Okinawa',262,56,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',263,'宜野湾','ギノワン,Ginowan',263,56,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',264,'那覇','ナハ,Naha',264,56,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('area',265,'宮古島','ミヤコジマ,Miyakojima',265,56,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('brand',297,'JOPT','JapanOpenPokerTour,ジャパンオープンポーカーツアー,ジェイオーピーティー',297,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('brand',298,'戦国','sengoku,センゴク',298,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('brand',299,'SPAIDIE','スペイディー',299,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('brand',300,'MASTER','マスター',300,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('brand',301,'TPC','ティーピーシー,トップオブポーカー,Top of Poker Championship',301,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('country',1,'Japan','japan,ジャパン,ニホン,ニッポン,日本',1,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('country',2,'Asia','asia,アジア,トウナンアジア,東南アジア,亜細亜',2,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('country',3,'Europe','europe,ヨーロッパ,欧州',3,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('game',278,'NLH','No limit holdem,ノーリミットホールデム,ホールデム',278,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('game',279,'PLO','Pot Limit Omaha,ポットリミットオマハ,オマハ',279,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('game',280,'MIX','ミックス',280,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('game',281,'Other','その他ゲーム',281,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('media',302,'PokerGuild','pg,ポーカーギルド',302,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('media',303,'ポーカーニュース','pokernews',303,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('news_cate',304,'インタビュー','interview',304,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',10,'北海道','ホッカイドウ,Hokkaido',10,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',11,'青森県','アオモリ,Aomori',11,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',12,'岩手県','イワテ,Iwate',12,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',13,'宮城県','ミヤギ,Miyagi',13,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',14,'秋田県','アキタ,Akita',14,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',15,'山形県','ヤマガタ,Yamagata',15,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',16,'福島県','フクシマ,Fukushima',16,4,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',17,'茨城県','イバラギ,Ibaraki',17,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',18,'栃木県','トチギ,Tochigi',18,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',19,'群馬県','グンマ,Gunma',19,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',20,'埼玉県','サイタマ,Saitama',20,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',21,'千葉県','チバ,Chiba',21,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',22,'東京都','トウキョウ,Tokyo',22,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',23,'神奈川県','カナガワ,Kanagawa',23,5,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',24,'新潟県','ニイガタ,Niigata',24,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',25,'富山県','トヤマ,Toyama',25,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',26,'石川県','イシカワ,Ishikawa',26,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',27,'福井県','フクイ,Fukui',27,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',28,'山梨県','ヤマナシ,Yamanashi',28,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',29,'長野県','ナガノ,Nagano',29,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',30,'岐阜県','ギフ,Gifu',30,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',31,'静岡県','シズオカ,Shizuoka',31,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',32,'愛知県','アイチ,Aichi',32,6,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',33,'三重県','ミエ,Mie',33,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',34,'滋賀県','シガ,Shiga',34,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',35,'京都府','キョウト,Kyoto',35,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',36,'大阪府','オオサカ,Osaka',36,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',37,'兵庫県','ヒョウゴ,Hyogo',37,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',38,'奈良県','ナラ,Nara',38,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',39,'和歌山県','ワカヤマ,Wakayama',39,7,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',40,'鳥取県','トットリ,Tottori',40,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',41,'島根県','シマネ,Shimane',41,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',42,'岡山県','オカヤマ,Okayama',42,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',43,'広島県','ヒロシマ,Hiroshima',43,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',44,'山口県','ヤマグチ,Yamaguchi',44,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',45,'徳島県','トクシマ,Tokushima',45,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',46,'香川県','カガワ,Kagawa',46,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',47,'愛媛県','エヒメ,Ehime',47,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',48,'高知県','コウチ,Kochi',48,8,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',49,'福岡県','フクオカ,Fukuoka',49,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',50,'佐賀県','サガ,Saga',50,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',51,'長崎県','ナガサキ,Nagasaki',51,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',52,'熊本県','クマモト,Kumamoto',52,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',53,'大分県','オオイタ,Oita',53,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',54,'宮崎県','ミヤザキ,Miyazaki',54,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',55,'鹿児島県','カゴシマ,Kagoshima',55,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('pref',56,'沖縄県','オキナワ,Okinawa',56,9,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',291,'コイン','coin,pokerwebcoin,ポーカーウェブコイン',291,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',292,'JOPT権利','jopt,ジェイオーピーティー,ケンリ,権利,ticket',292,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',293,'戦国権利','sengoku,センゴク,ケンリ,権利,戦国,ticket',293,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',294,'Spaide権利','spadie,スペイディー,ケンリ,権利,ticket',294,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',295,'TPC権利','tpc,ティーピーシー,ケンリ,権利,ticket',295,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('prize',296,'チケット','ticket',296,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',4,'北海道・東北','ホッカイドウ,Hokkaido,Tohoku,東北,トウホク',4,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',5,'関東','カントウ,Kanto',5,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',6,'中部','チュウブ,Chubu,関西,Kansai',6,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',7,'近畿','キンキ,kinki,関西,Kansai',7,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',8,'中国・四国','チュウゴク,Chugoku,シコク,シコク',8,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('region',9,'九州・沖縄','キュウシュウ,Kyushu,オキナワ,Okinawa',9,1,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',305,'アキバギルド','AG,エージー,アキハバラ',305,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',306,'イケブクロギルド','イケブクロギルド,ikebukuroguild,IG,ikegi,イケギ',306,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',307,'カジクエ','カジノクエスト,QC,カジクエ,casinoquest,秋葉原カジノクエスト',307,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',308,'GGPL新宿','GGPLshinjuku,GoodGamePokerLiveShinjuku,グッドゲームポーカーライブシンジュク,ジージーピーエルシンジュク,GoodGamePokerLive新宿',308,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',309,'GGPL渋谷','GGPLShibuya,GoodGamePokerLiveShibuya,グッドゲームポーカーライブシブヤ,ジージーピーエルシブヤ,GoodGamePokerLive渋谷',309,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',310,'GGPL名古屋','GGPLNagoya,GoodGamePokerLiveNagoya,グッドゲームポーカーライブナゴヤ,ジージーピーエルナゴヤ,GoodGamePokerLive名古屋',310,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',311,'GGPL梅田','GGPLUmeda,GoodGamePokerLiveUmeda,グッドゲームポーカーライブウメダ,ジージーピーエルウメダ,GoodGamePokerLive梅田',311,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',312,'KKLP渋谷','KKLPshibuya,KKLivePokerShibuya,ケーケーライブシブヤ,ケーケピーエルシブヤ,KKLIVE POKER SHIBUYA',312,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',313,'KKLP新宿','KKLPshinjuku,KKLivePokerShinjuku,ケーケーライブシンジュク,ケーケピーエルシンジュク,KKLIVE POKER SHINJUKU',313,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',314,'赤坂デポ','SAP,SALON de poker,デポ,サロンデポーカーアカサカ,SALON de poker赤坂',314,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',315,'CLT','CLT,Casino Live Tokyo,カジノライブトウキョウ,シーエルティー,Casino Live Tokyo',315,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',316,'ナゴヤギルド','NG,NagoyaGulid,ナゴヤギルド,ナゴギ',316,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',317,'池袋リレイズ','RERAISE,ikebukuroReraise,イケブクロリレイズ,リレイズ',317,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',318,'ネコカジ秋葉原','nekokajiakihabara,ネコカジアキハバラ,ネコカジ',318,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',319,'ガットショット上野池之端','GS,gatShotUenoikenohataten,ガットショットウエノイケノハタテン',319,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',320,'RIC GAMES SHINJUKU','RICGAMESSHINJUKU,リックゲームズシンジュク,リック',320,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',321,'ネコカジ新宿','nekokajiakihabara,ネコカジシンジュク,ネコカジ',321,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',322,'横浜eight','yokohamaeight,ヨコハマエイト,エイト',322,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',323,'BUBBLE 恵比寿','bubbleebisu,バブルエビス,バブル',323,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('room',324,'化猫ポーカー倶楽部','バケネコ,bakeneko,',324,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',266,'トーナメント','tournament',266,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',267,'リングゲーム','ringgame',267,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',268,'カジノゲーム','casinogame',268,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',269,'初心者講習','ショシンシャコウシュウ,BeginnersTeaching',269,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',270,'貸しテーブル','カシテーブル,RentalTable',270,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',271,'フード提供','フオードテイキョウ,SupplyFood',271,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',272,'アルコール提供','アルコールテイキョウ,SupplyAlcohol',272,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',273,'スマホ充電','スマホジュウデン,ChargeBatterySmartphone',273,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',274,'飲み放題ブラン','ノミホウダイプラン,All you can drink',274,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',275,'近くに駐車場','チカクニチュウシャジョウ,neerCarParking',275,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',276,'Wi-Fi','ワイファイ,wifi',276,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('service',277,'喫煙所あり','タバコ,キツエンジョ,kituenjo,smoking',277,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',282,'Heads-Up','HeadsUp,ヘッズアップ',282,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',283,'3-MAX','3MAX,threemax,スリーマックス',283,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',284,'4-MAX','4MAX,fourmax,フォーマックス',284,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',285,'5-MAX','5MAX,fivemax,ファイブマックス',285,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',286,'6-MAX','6MAX,sixmax,シックスマックス',286,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',287,'7-MAX','7MAX,sevenmax,セブンマックス',287,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',288,'8-MAX','8MAX,eightmax,エイトマックス',288,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',289,'9-MAX','9MAX,ninemax,ナインマックス',289,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12'),
	('table',290,'10-MAX','10MAX,tenmax,テンマックス',290,0,1,'2025-06-18 09:58:12','2025-06-18 09:58:12');

/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;


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
  `search_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'room, event, media, brand',
  `ref_no` int NOT NULL COMMENT '{search_type}_no',
  `tag_no` int NOT NULL,
  PRIMARY KEY (`search_type`,`ref_no`,`tag_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tag_owner` WRITE;
/*!40000 ALTER TABLE `tag_owner` DISABLE KEYS */;

INSERT INTO `tag_owner` (`search_type`, `ref_no`, `tag_no`)
VALUES
	('room',1,1),
	('room',1,5),
	('room',1,22),
	('room',1,121),
	('room',1,266),
	('room',1,267),
	('room',1,268),
	('room',1,269),
	('room',1,271),
	('room',1,272),
	('room',1,273),
	('room',1,274),
	('room',1,275),
	('room',1,276),
	('room',1,305),
	('room',2,1),
	('room',2,5),
	('room',2,22),
	('room',2,143),
	('room',2,266),
	('room',2,267),
	('room',2,268),
	('room',2,269),
	('room',2,271),
	('room',2,272),
	('room',2,273),
	('room',2,275),
	('room',2,276),
	('room',2,277),
	('room',2,306),
	('room',3,1),
	('room',3,5),
	('room',3,22),
	('room',3,121),
	('room',3,266),
	('room',3,267),
	('room',3,268),
	('room',3,269),
	('room',3,270),
	('room',3,271),
	('room',3,272),
	('room',3,273),
	('room',3,275),
	('room',3,276),
	('room',3,277),
	('room',3,307),
	('room',4,1),
	('room',4,5),
	('room',4,22),
	('room',4,129),
	('room',4,266),
	('room',4,267),
	('room',4,268),
	('room',4,269),
	('room',4,271),
	('room',4,272),
	('room',4,273),
	('room',4,275),
	('room',4,276),
	('room',4,277),
	('room',4,308),
	('room',5,1),
	('room',5,5),
	('room',5,22),
	('room',5,123),
	('room',5,266),
	('room',5,267),
	('room',5,269),
	('room',5,271),
	('room',5,272),
	('room',5,273),
	('room',5,274),
	('room',5,275),
	('room',5,276),
	('room',5,277),
	('room',5,309),
	('room',6,1),
	('room',6,6),
	('room',6,32),
	('room',6,188),
	('room',6,266),
	('room',6,267),
	('room',6,269),
	('room',6,271),
	('room',6,272),
	('room',6,273),
	('room',6,276),
	('room',6,310),
	('room',7,1),
	('room',7,7),
	('room',7,36),
	('room',7,212),
	('room',7,266),
	('room',7,267),
	('room',7,269),
	('room',7,271),
	('room',7,272),
	('room',7,273),
	('room',7,276),
	('room',7,311),
	('room',8,1),
	('room',8,5),
	('room',8,22),
	('room',8,123),
	('room',8,266),
	('room',8,267),
	('room',8,269),
	('room',8,271),
	('room',8,272),
	('room',8,273),
	('room',8,276),
	('room',8,312),
	('room',9,1),
	('room',9,5),
	('room',9,22),
	('room',9,129),
	('room',9,266),
	('room',9,267),
	('room',9,268),
	('room',9,269),
	('room',9,270),
	('room',9,271),
	('room',9,272),
	('room',9,273),
	('room',9,274),
	('room',9,275),
	('room',9,276),
	('room',9,277),
	('room',9,313),
	('room',10,1),
	('room',10,5),
	('room',10,22),
	('room',10,134),
	('room',10,266),
	('room',10,267),
	('room',10,271),
	('room',10,272),
	('room',10,273),
	('room',10,274),
	('room',10,275),
	('room',10,276),
	('room',10,277),
	('room',10,314),
	('room',11,1),
	('room',11,5),
	('room',11,22),
	('room',11,129),
	('room',11,266),
	('room',11,267),
	('room',11,268),
	('room',11,269),
	('room',11,270),
	('room',11,272),
	('room',11,273),
	('room',11,274),
	('room',11,275),
	('room',11,276),
	('room',11,277),
	('room',11,315),
	('room',12,1),
	('room',12,6),
	('room',12,32),
	('room',12,193),
	('room',12,266),
	('room',12,267),
	('room',12,268),
	('room',12,269),
	('room',12,270),
	('room',12,271),
	('room',12,272),
	('room',12,273),
	('room',12,275),
	('room',12,276),
	('room',12,277),
	('room',12,316),
	('room',13,1),
	('room',13,5),
	('room',13,22),
	('room',13,143),
	('room',13,266),
	('room',13,267),
	('room',13,269),
	('room',13,270),
	('room',13,271),
	('room',13,272),
	('room',13,273),
	('room',13,274),
	('room',13,275),
	('room',13,276),
	('room',13,317),
	('room',14,1),
	('room',14,5),
	('room',14,22),
	('room',14,121),
	('room',14,266),
	('room',14,267),
	('room',14,269),
	('room',14,270),
	('room',14,271),
	('room',14,272),
	('room',14,273),
	('room',14,274),
	('room',14,276),
	('room',14,318),
	('room',14,319),
	('room',15,1),
	('room',15,5),
	('room',15,22),
	('room',15,127),
	('room',15,266),
	('room',15,267),
	('room',15,269),
	('room',15,270),
	('room',15,271),
	('room',15,272),
	('room',15,273),
	('room',15,274),
	('room',15,275),
	('room',15,276),
	('room',16,1),
	('room',16,5),
	('room',16,22),
	('room',16,129),
	('room',16,266),
	('room',16,267),
	('room',16,269),
	('room',16,270),
	('room',16,271),
	('room',16,272),
	('room',16,273),
	('room',16,274),
	('room',16,275),
	('room',16,276),
	('room',16,320),
	('room',17,1),
	('room',17,5),
	('room',17,22),
	('room',17,129),
	('room',17,266),
	('room',17,267),
	('room',17,269),
	('room',17,270),
	('room',17,271),
	('room',17,272),
	('room',17,273),
	('room',17,275),
	('room',17,276),
	('room',17,321),
	('room',18,1),
	('room',18,5),
	('room',18,23),
	('room',18,162),
	('room',18,266),
	('room',18,267),
	('room',18,269),
	('room',18,271),
	('room',18,272),
	('room',18,273),
	('room',18,274),
	('room',18,322),
	('room',19,1),
	('room',19,5),
	('room',19,22),
	('room',19,115),
	('room',19,266),
	('room',19,267),
	('room',19,271),
	('room',19,272),
	('room',19,273),
	('room',19,275),
	('room',19,276),
	('room',19,323),
	('room',20,1),
	('room',20,5),
	('room',20,22),
	('room',20,128),
	('room',20,266),
	('room',20,267),
	('room',20,271),
	('room',20,272),
	('room',20,276),
	('room',20,324);

/*!40000 ALTER TABLE `tag_owner` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ tournament
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament`;

CREATE TABLE `tournament` (
  `tournament_no` int NOT NULL AUTO_INCREMENT COMMENT '[auto increment]',
  `tournament_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `late_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `blind_min` int DEFAULT NULL COMMENT '非表示：structure存在',
  `detail_html_no` int DEFAULT NULL COMMENT '0:非表示：空文字。（RFT）',
  `entry_price` int DEFAULT NULL COMMENT 'エントリー費用',
  `entry_price_unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
  `owner_no` int DEFAULT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`tournament_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;

INSERT INTO `tournament` (`tournament_no`, `tournament_name`, `start_dt`, `late_dt`, `end_dt`, `blind_min`, `detail_html_no`, `entry_price`, `entry_price_unit`, `owner_no`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'♠SPADIE『昼下がりのポーカー』【昼ポ】','2025-07-01 15:15:00','2025-07-01 17:25:00','2025-07-01 22:00:00',15,1,2500,'JPY',1,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(2,'♠SPADIE『平日夜のトーナメント』【夜ポ】','2025-07-01 18:00:00','2025-07-01 20:40:00','2025-07-01 23:00:00',15,2,3000,'JPY',1,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(3,'1000円昼ポーカー【リング/カジノプランの方はFREEROLL！】','2025-07-01 16:00:00','2025-07-01 17:00:00','2025-07-01 18:00:00',15,3,1000,'JPY',2,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(4,'【19時20分までにエントリーで1000円割引】Ikebukuro Daily 4K','2025-07-01 18:00:00','2025-07-01 20:30:00','2025-07-01 23:00:00',15,4,4000,'JPY',2,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(5,'【IV AKIHABARA ドリチケつき】Daily NLH 4K【♠︎SPADIE】','2025-07-01 18:00:00','2025-07-01 20:30:00','2025-07-01 23:00:00',10,5,4000,'JPY',3,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(6,'【♠︎SPADIE】Daily Turbo 1K','2025-07-01 20:55:00','2025-07-01 22:00:00','2025-07-01 23:00:00',10,6,1000,'JPY',3,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(7,'【SPADIE】Daily Deep Stacks 3K','2025-07-01 13:45:00','2025-07-01 16:45:00','2025-07-01 23:00:00',10,7,4000,'JPY',4,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(8,'【SPADIE】Thursday Double Stack 3K','2025-07-01 17:45:00','2025-07-01 20:55:00','2025-07-01 23:00:00',20,8,3000,'JPY',4,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(9,'Speed Racer 1K','2025-07-01 16:00:00','2025-07-01 17:00:00','2025-07-01 18:00:00',10,9,1000,'JPY',5,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(10,'Daily NLH 2.5K','2025-07-01 18:00:00','2025-07-01 21:00:00','2025-07-01 23:00:00',20,10,2500,'JPY',5,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(11,'Speed Racer 1k','2025-07-01 17:00:00','2025-07-01 18:10:00','2025-07-01 19:00:00',10,11,1000,'JPY',6,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(12,'Great Deal','2025-07-01 19:00:00','2025-07-01 20:55:00','2025-07-01 23:00:00',15,12,5000,'JPY',6,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(13,'UMEDA DEEP','2025-07-01 15:00:00','2025-07-01 18:35:00','2025-07-01 22:00:00',25,13,3000,'JPY',7,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(14,'Osaka Classic','2025-07-01 19:00:00','2025-07-01 21:10:00','2025-07-01 23:00:00',15,14,2000,'JPY',7,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(15,'KK Genesis 5K','2025-07-01 14:00:00','2025-07-01 17:40:00','2025-07-01 22:00:00',25,15,5000,'JPY',8,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(16,'KK Night Stack 6K','2025-07-01 17:30:00','2025-07-01 20:50:00','2025-07-01 23:00:00',20,16,6000,'JPY',8,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(17,'KK Daily Deep 3.5k RFID Edition','2025-07-01 14:00:00','2025-07-01 17:40:00','2025-07-01 22:00:00',20,17,3500,'JPY',9,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(18,'KK Daily Main 4k','2025-07-01 18:15:00','2025-07-01 20:45:00','2025-07-01 23:00:00',15,18,4000,'JPY',9,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(19,'AKASAKA160 【総額40万Coin 相当】','2025-07-01 22:00:00','2025-07-02 02:10:00','2025-07-02 04:30:00',30,19,16000,'JPY',10,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(20,'AKASAKA330 【総額100万Coin 相当】','2025-07-01 22:00:00','2025-07-02 01:10:00','2025-07-02 05:00:00',40,20,33000,'JPY',10,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(21,'【優勝15,000コイン！】CLT Evening Tournament 2.5k【SPADIE】','2025-07-01 15:10:00','2025-07-01 17:50:00','2025-07-01 22:00:00',20,21,2500,'JPY',11,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(22,'Milky Way tournament【SPADIE】','2025-07-01 20:55:00','2025-07-01 22:00:00','2025-07-01 23:00:00',12,22,2000,'JPY',11,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(23,'フリーロール','2025-07-01 16:15:00','2025-07-01 18:25:00','2025-07-01 22:00:00',20,23,1000,'JPY',12,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(24,'夜のトーナメント『夜ぽ』','2025-07-01 19:00:00','2025-07-01 20:40:00','2025-07-01 23:00:00',15,24,3000,'JPY',12,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(25,'SPARKL DAILY TOURNAMENT','2025-07-01 18:00:00','2025-07-01 20:50:00','2025-07-02 01:00:00',20,25,3300,'JPY',13,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(26,'SPARKL DAILY TOURNAMENT','2025-07-01 21:00:00','2025-07-01 23:00:00','2025-07-02 01:00:00',20,26,2200,'JPY',13,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(27,'MILLION CHALLENGE DEEP　NSバウチャー対象','2025-07-01 15:00:00','2025-07-01 17:30:00','2025-07-01 22:00:00',20,27,3000,'JPY',14,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(28,'選べるマルチサテライト【NSバウチャー対象】','2025-07-01 18:00:00','2025-07-01 20:30:00','2025-07-01 23:00:00',20,28,4000,'JPY',14,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(29,'【優勝１万マイル】お昼のトーナメント','2025-07-01 13:00:00','2025-07-01 17:20:00','2025-07-01 23:00:00',30,29,2000,'JPY',15,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(30,'6Kプライズマッチ【SHINOBI】','2025-07-01 17:00:00','2025-07-01 21:00:00','2025-07-02 00:00:00',30,30,6000,'JPY',15,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(31,'ラビガチップマッチ','2025-07-01 19:00:00','2025-07-01 21:00:00','2025-07-02 00:00:00',20,31,3000,'JPY',16,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(32,'【1卓限定】ラビガマッチターボ','2025-07-01 21:00:00','2025-07-01 22:30:00','2025-07-02 00:00:00',10,32,2000,'JPY',16,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(33,'【六本木】フリーロール【BACKDOOR】','2025-07-01 18:00:00','2025-07-01 19:00:00','2025-07-01 20:00:00',10,33,0,'JPY',17,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(34,'【クライナーアドオンあり】酒トナメｘABPT大枠【プライズ:ニッカフロンティア】','2025-07-01 19:30:00','2025-07-01 22:10:00','2025-07-02 02:00:00',25,34,3300,'JPY',17,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(35,'6月度 START UP POKER(~16:30〆)','2025-07-01 13:30:00','2025-07-01 16:30:00','2025-07-01 21:00:00',15,35,1500,'JPY',18,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(36,'【80000保証】Daily POKERWEBCOINトーナメント(~20:30〆)','2025-07-01 18:00:00','2025-07-01 20:30:00','2025-07-01 23:00:00',20,36,5000,'JPY',18,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(37,'✨GRAND OPEN✨フリーロール‼️⚡️5万相当⚡️16時までアドオン無料‼️レイト17時半‼️','2025-07-01 15:00:00','2025-07-01 17:30:00','2025-07-01 19:00:00',15,37,0,'JPY',19,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(38,'✨GRAND OPEN✨#6 タッグ戦‼️500,000相当✨18時まで早割‼️レイト21時半‼️','2025-07-01 17:00:00','2025-07-01 21:30:00','2025-07-01 23:30:00',20,38,13000,'JPY',19,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(39,'21万保証❣️プライズマッチ❤化猫月間P‼','2025-07-01 18:00:00','2025-07-01 21:50:00','2025-07-02 00:00:00',20,39,8500,'JPY',20,1,'2025-06-20 07:11:02','2025-06-20 07:11:02'),
	(40,'6.5万保証❣終電まで❤️化猫月間P!!','2025-07-01 21:00:00','2025-07-01 22:50:00','2025-07-02 05:00:00',20,40,8500,'JPY',20,1,'2025-06-20 07:11:02','2025-06-20 07:11:02');

/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ tournament_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament_price`;

CREATE TABLE `tournament_price` (
  `tournament_no` int NOT NULL,
  `price_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'entry, reentry, addon',
  `unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
  `price` int DEFAULT NULL,
  `stack` int DEFAULT NULL,
  `remark` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`tournament_no`,`price_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tournament_price` WRITE;
/*!40000 ALTER TABLE `tournament_price` DISABLE KEYS */;

INSERT INTO `tournament_price` (`tournament_no`, `price_type`, `unit`, `price`, `stack`, `remark`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,'addon','JPY',2000,12000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(1,'entry','JPY',2500,15000,'昼ポーカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(1,'reentry','JPY',2500,15000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(2,'addon','JPY',2500,15000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(2,'entry','JPY',3000,20000,'夜ポーカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(2,'reentry','JPY',3000,20000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(3,'addon','JPY',3000,20000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(3,'entry','JPY',4000,25000,'深夜ポーカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(3,'reentry','JPY',4000,25000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(4,'addon','JPY',4000,25000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(4,'entry','JPY',5000,30000,'週末スペシャル',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(4,'reentry','JPY',5000,30000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(5,'addon','JPY',5000,30000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(5,'entry','JPY',6000,40000,'ディープスタック',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(5,'reentry','JPY',6000,40000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(6,'entry','JPY',1000,10000,'ターボ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(6,'reentry','JPY',1000,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(7,'entry','JPY',3500,25000,'フリーズアウト',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(8,'addon','JPY',3500,40000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(8,'entry','JPY',4500,50000,'ダブルスタック',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(8,'reentry','JPY',4500,50000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(9,'entry','JPY',800,8000,'スーパーターボ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(9,'reentry','JPY',800,8000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(10,'entry','JPY',600,6000,'ハイパーターボ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(10,'reentry','JPY',600,6000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(11,'addon','JPY',5000,35000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(11,'entry','JPY',7000,50000,'サンデースペシャル',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(11,'reentry','JPY',7000,50000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(12,'entry','JPY',2800,15000,'ノックアウト',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(12,'reentry','JPY',2800,15000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(13,'entry','JPY',3200,18000,'プログレッシブKO',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(13,'reentry','JPY',3200,18000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(14,'entry','JPY',1500,12000,'サテライト',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(14,'reentry','JPY',1500,12000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(15,'entry','JPY',3800,22000,'ミステリーバウンティ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(15,'reentry','JPY',3800,22000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(16,'entry','JPY',1200,10000,'早朝ポーカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(16,'reentry','JPY',1200,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(17,'addon','JPY',1500,10000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(17,'entry','JPY',2000,15000,'モーニンググローリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(17,'reentry','JPY',2000,15000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(18,'entry','JPY',1500,12000,'モーニングブレイカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(18,'reentry','JPY',1500,12000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(19,'addon','JPY',8000,50000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(19,'entry','JPY',10000,60000,'ハイローラー深夜',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(19,'reentry','JPY',10000,60000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(20,'addon','JPY',12000,60000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(20,'entry','JPY',15000,80000,'スーパーハイローラー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(20,'reentry','JPY',15000,80000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(21,'entry','JPY',2000,15000,'プログレッシブJP',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(21,'reentry','JPY',2000,15000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(22,'entry','JPY',800,8000,'ライトニング',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(22,'reentry','JPY',800,8000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(23,'entry','JPY',1500,12000,'ラッシュポーカー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(23,'reentry','JPY',1500,12000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(24,'entry','JPY',1000,10000,'アフタヌーンクイック',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(24,'reentry','JPY',1000,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(25,'addon','JPY',1500,10000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(25,'entry','JPY',2000,15000,'イブニングスタート',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(25,'reentry','JPY',2000,15000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(26,'entry','JPY',1500,12000,'ナイトエクスプレス',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(26,'reentry','JPY',1500,12000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(27,'addon','JPY',2000,15000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(27,'entry','JPY',2500,18000,'ウィークエンドウォリアー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(27,'reentry','JPY',2500,18000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(28,'addon','JPY',1500,12000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(28,'entry','JPY',1800,14000,'ハッピーアワー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(28,'reentry','JPY',1800,14000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(29,'addon','JPY',4000,30000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(29,'entry','JPY',5000,35000,'ディープナイト',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(29,'reentry','JPY',5000,35000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(30,'addon','JPY',6000,40000,'アドオン',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(30,'entry','JPY',8000,50000,'ウルトラディープ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(30,'reentry','JPY',8000,50000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(31,'entry','JPY',800,8000,'ラピッドファイア',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(31,'reentry','JPY',800,8000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(32,'entry','JPY',600,6000,'スピードプレイ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(32,'reentry','JPY',600,6000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(33,'entry','JPY',1200,10000,'パワープレイ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(33,'reentry','JPY',1200,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(34,'entry','JPY',900,9000,'ブリッツ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(34,'reentry','JPY',900,9000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(35,'entry','JPY',700,7000,'フラッシュ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(35,'reentry','JPY',700,7000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(36,'entry','JPY',1100,10000,'クイックストライク',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(36,'reentry','JPY',1100,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(37,'entry','JPY',1300,11000,'エクスプレス',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(37,'reentry','JPY',1300,11000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(38,'entry','JPY',800,8000,'ライトニング',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(38,'reentry','JPY',800,8000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(39,'entry','JPY',1000,10000,'バースト',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(39,'reentry','JPY',1000,10000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(40,'entry','JPY',1500,12000,'ウルトラダッシュ',1,'2025-06-24 17:52:55','2025-06-24 17:52:55'),
	(40,'reentry','JPY',1500,12000,'リエントリー',1,'2025-06-24 17:52:55','2025-06-24 17:52:55');

/*!40000 ALTER TABLE `tournament_price` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ tournament_structure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournament_structure`;

CREATE TABLE `tournament_structure` (
  `tournament_no` int NOT NULL,
  `seq` int NOT NULL,
  `level` int DEFAULT NULL COMMENT '-1=Break',
  `small_blind` int DEFAULT NULL,
  `big_blind` int DEFAULT NULL,
  `giant_blind` int DEFAULT NULL,
  `ante` int DEFAULT NULL,
  `blind_min` int DEFAULT NULL,
  `enabled` tinyint DEFAULT '1' COMMENT '論理削除フラグ',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (`tournament_no`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tournament_structure` WRITE;
/*!40000 ALTER TABLE `tournament_structure` DISABLE KEYS */;

INSERT INTO `tournament_structure` (`tournament_no`, `seq`, `level`, `small_blind`, `big_blind`, `giant_blind`, `ante`, `blind_min`, `enabled`, `created_at`, `updated_at`)
VALUES
	(1,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,3,3,300,600,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,5,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,6,5,500,1000,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,7,6,600,1200,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,8,7,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,9,8,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,10,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,11,9,1200,2400,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,12,10,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,13,11,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,14,12,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,15,13,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,16,14,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,17,15,5000,10000,0,1200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(1,18,16,6000,12000,0,1500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,3,3,300,600,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,5,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,6,5,500,1000,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,7,6,600,1200,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,8,7,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,9,8,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,10,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,11,9,1200,2400,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,12,10,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,13,11,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,14,12,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,15,13,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(2,16,14,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,3,3,300,600,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,4,4,500,1000,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,5,5,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,6,6,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,7,7,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(3,8,8,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,3,3,300,600,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,5,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,6,5,500,1000,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,7,6,600,1200,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,8,7,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,9,8,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,10,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,11,9,1200,2400,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,12,10,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,13,11,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,14,12,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,15,13,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(4,16,14,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,2,2,200,400,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,3,3,300,600,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,4,4,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,5,5,500,1000,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,6,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,7,6,600,1200,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,8,7,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,9,8,1000,2000,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,10,9,1200,2400,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,11,10,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,12,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,13,11,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,14,12,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,15,13,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,16,14,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,17,15,5000,10000,0,1200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(5,18,16,6000,12000,0,1500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,2,2,200,400,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,3,3,300,600,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,4,4,500,1000,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,5,5,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,6,6,1000,2000,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,7,7,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,8,8,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,9,9,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,10,10,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,11,11,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(6,12,12,5000,10000,0,1200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,2,2,200,400,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,3,3,300,600,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,4,4,400,800,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,5,5,500,1000,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,6,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,7,6,600,1200,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,8,7,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,9,8,1000,2000,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,10,9,1200,2400,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,11,10,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,12,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,13,11,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,14,12,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,15,13,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,16,14,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,17,15,5000,10000,0,1200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(7,18,16,6000,12000,0,1500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,2,2,200,400,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,3,3,300,600,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,5,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,6,5,500,1000,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,7,6,600,1200,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,8,7,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,9,8,1000,2000,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,10,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,11,9,1200,2400,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,12,10,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(8,13,11,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,2,2,200,400,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,3,3,300,600,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,4,4,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,5,5,600,1200,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,6,6,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,7,7,1000,2000,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,8,8,1200,2400,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,9,9,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,10,10,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,11,11,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(9,12,12,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,2,2,200,400,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,3,3,300,600,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,4,4,400,800,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,5,5,500,1000,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,6,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,7,6,600,1200,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,8,7,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,9,8,1000,2000,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,10,9,1200,2400,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,11,10,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,12,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,13,11,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,14,12,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(10,15,13,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,2,2,200,400,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,3,3,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,4,4,600,1200,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,5,5,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,6,6,1000,2000,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(11,7,7,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,3,3,300,600,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,5,5,500,1000,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,6,6,600,1200,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,7,7,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,8,8,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,9,9,1200,2400,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,10,10,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,11,11,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,12,12,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,13,13,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(12,14,14,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,1,1,100,200,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,2,2,200,400,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,3,3,300,600,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,4,4,400,800,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,5,5,500,1000,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,6,-1,0,0,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,7,6,600,1200,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,8,7,800,1600,0,200,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,9,8,1000,2000,0,200,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,10,9,1200,2400,0,300,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,11,-1,0,0,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,12,11,1500,3000,0,400,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(13,13,12,2000,4000,0,500,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,2,2,200,400,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,3,3,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,4,4,600,1200,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,5,5,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,6,6,1000,2000,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(14,7,7,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,1,1,100,200,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,2,2,200,400,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,3,3,300,600,0,0,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,4,4,400,800,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,5,5,500,1000,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,6,6,600,1200,0,100,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,7,7,800,1600,0,200,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,8,8,1000,2000,0,200,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,9,9,1200,2400,0,300,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,10,10,1500,3000,0,400,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,11,11,2000,4000,0,500,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(15,12,12,2500,5000,0,600,25,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(16,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(17,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,2,2,200,400,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,3,3,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,4,4,600,1200,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,5,5,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,6,6,1000,2000,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,7,7,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,8,8,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,9,9,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(18,10,10,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,1,1,100,200,0,0,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,2,2,200,400,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,3,3,300,600,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,4,4,400,800,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,5,5,500,1000,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,6,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,7,6,600,1200,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,8,7,800,1600,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,9,8,1000,2000,0,300,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,10,9,1200,2400,0,300,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,11,10,1500,3000,0,400,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,12,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,13,11,2000,4000,0,500,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,14,12,2500,5000,0,600,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,15,13,3000,6000,0,800,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,16,14,4000,8000,0,1000,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,17,15,5000,10000,0,1200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(19,18,16,6000,12000,0,1500,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,1,1,100,200,0,0,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,2,2,200,400,0,100,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,3,3,300,600,0,100,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,4,4,400,800,0,100,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,5,5,500,1000,0,100,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,6,6,600,1200,0,100,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,7,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,8,7,800,1600,0,200,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,9,8,1000,2000,0,300,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,10,9,1200,2400,0,300,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,11,10,1500,3000,0,400,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,12,11,2000,4000,0,500,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,13,-1,0,0,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,14,12,2500,5000,0,600,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,15,13,3000,6000,0,800,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,16,14,4000,8000,0,1000,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,17,15,5000,10000,0,1200,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,18,16,6000,12000,0,1500,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,19,17,8000,16000,0,2000,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(20,20,18,10000,20000,0,2500,40,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,10,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,11,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(21,12,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,1,1,100,200,0,0,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,2,2,200,400,0,0,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,3,3,300,600,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,4,4,500,1000,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,5,5,800,1600,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,6,6,1000,2000,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,7,7,1500,3000,0,400,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,8,8,2000,4000,0,500,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,9,9,3000,6000,0,800,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(22,10,10,4000,8000,0,1000,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,6,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,7,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,8,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,9,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,10,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,11,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,12,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(23,13,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,2,2,200,400,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,3,3,300,600,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,5,5,600,1200,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,6,6,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,7,7,1000,2000,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,8,8,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,9,9,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,10,10,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,11,11,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(24,12,12,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,6,-1,0,0,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,7,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,8,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,9,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,10,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,11,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,12,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(25,13,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,10,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,11,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(26,12,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,10,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,11,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(27,12,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,1,1,100,200,0,0,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,2,2,200,400,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,3,3,300,600,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,4,4,400,800,0,100,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,5,5,600,1200,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,6,6,800,1600,0,200,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,7,7,1000,2000,0,300,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,8,8,1500,3000,0,400,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,9,9,2000,4000,0,500,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,10,10,2500,5000,0,600,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,11,11,3000,6000,0,800,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(28,12,12,4000,8000,0,1000,20,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,1,1,100,200,0,0,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,2,2,200,400,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,3,3,300,600,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,4,4,400,800,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,5,5,600,1200,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,6,-1,0,0,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,7,6,800,1600,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,8,7,1000,2000,0,300,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,9,8,1500,3000,0,400,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,10,9,2000,4000,0,500,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,11,10,2500,5000,0,600,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,12,11,3000,6000,0,800,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(29,13,12,4000,8000,0,1000,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,1,1,100,200,0,0,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,2,2,200,400,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,3,3,300,600,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,4,4,400,800,0,100,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,5,5,600,1200,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,6,6,800,1600,0,200,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,7,7,1000,2000,0,300,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,8,8,1500,3000,0,400,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,9,9,2000,4000,0,500,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,10,10,2500,5000,0,600,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,11,11,3000,6000,0,800,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(30,12,12,4000,8000,0,1000,30,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,2,2,200,400,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,3,3,300,600,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,4,4,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,5,5,600,1200,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,6,6,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,7,7,1000,2000,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,8,8,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,9,9,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,10,10,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,11,11,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(31,12,12,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,1,1,100,200,0,0,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,2,2,200,400,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,3,3,300,600,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,4,4,400,800,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,5,5,600,1200,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,6,6,800,1600,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,7,7,1000,2000,0,300,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,8,8,1500,3000,0,400,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,9,9,2000,4000,0,500,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,10,10,2500,5000,0,600,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,11,11,3000,6000,0,800,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(32,12,12,4000,8000,0,1000,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,1,1,100,200,0,0,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,2,2,200,400,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,3,3,300,600,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,4,4,400,800,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,5,5,600,1200,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,6,6,800,1600,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,7,7,1000,2000,0,300,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,8,8,1500,3000,0,400,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,9,9,2000,4000,0,500,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,10,10,2500,5000,0,600,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,11,11,3000,6000,0,800,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(33,12,12,4000,8000,0,1000,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,2,2,200,400,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,3,3,300,600,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,4,4,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,5,5,600,1200,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,6,6,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,7,7,1000,2000,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,8,8,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,9,9,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,10,10,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,11,11,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(34,12,12,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,1,1,100,200,0,0,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,2,2,200,400,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,3,3,300,600,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,4,4,400,800,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,5,5,600,1200,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,6,6,800,1600,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,7,7,1000,2000,0,300,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,8,8,1500,3000,0,400,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,9,9,2000,4000,0,500,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,10,10,2500,5000,0,600,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,11,11,3000,6000,0,800,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(35,12,12,4000,8000,0,1000,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,1,1,100,200,0,0,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,2,2,200,400,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,3,3,300,600,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,4,4,400,800,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,5,5,600,1200,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,6,6,800,1600,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,7,7,1000,2000,0,300,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,8,8,1500,3000,0,400,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,9,9,2000,4000,0,500,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,10,10,2500,5000,0,600,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,11,11,3000,6000,0,800,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(36,12,12,4000,8000,0,1000,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,1,1,100,200,0,0,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,2,2,200,400,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,3,3,300,600,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,4,4,400,800,0,100,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,5,5,600,1200,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,6,6,800,1600,0,200,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,7,7,1000,2000,0,300,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,8,8,1500,3000,0,400,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,9,9,2000,4000,0,500,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,10,10,2500,5000,0,600,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,11,11,3000,6000,0,800,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(37,12,12,4000,8000,0,1000,15,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,1,1,100,200,0,0,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,2,2,200,400,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,3,3,300,600,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,4,4,400,800,0,100,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,5,5,600,1200,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,6,6,800,1600,0,200,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,7,7,1000,2000,0,300,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,8,8,1500,3000,0,400,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,9,9,2000,4000,0,500,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,10,10,2500,5000,0,600,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,11,11,3000,6000,0,800,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(38,12,12,4000,8000,0,1000,8,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,1,1,100,200,0,0,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,2,2,200,400,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,3,3,300,600,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,4,4,400,800,0,100,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,5,5,600,1200,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,6,6,800,1600,0,200,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,7,7,1000,2000,0,300,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,8,8,1500,3000,0,400,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,9,9,2000,4000,0,500,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,10,10,2500,5000,0,600,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,11,11,3000,6000,0,800,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(39,12,12,4000,8000,0,1000,10,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,1,1,100,200,0,0,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,2,2,200,400,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,3,3,300,600,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,4,4,400,800,0,100,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,5,5,600,1200,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,6,6,800,1600,0,200,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,7,7,1000,2000,0,300,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,8,8,1500,3000,0,400,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,9,9,2000,4000,0,500,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,10,10,2500,5000,0,600,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,11,11,3000,6000,0,800,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40'),
	(40,12,12,4000,8000,0,1000,12,1,'2025-06-24 17:44:40','2025-06-24 17:44:40');

/*!40000 ALTER TABLE `tournament_structure` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
