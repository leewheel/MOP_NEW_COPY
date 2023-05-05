/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.26-log : Database - archive
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`archive` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `archive`;

/*Table structure for table `currency_transactions` */

DROP TABLE IF EXISTS `currency_transactions`;

CREATE TABLE `currency_transactions`  (
  `realmid` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` int UNSIGNED NOT NULL,
  `unix_time` int UNSIGNED NOT NULL,
  `operation` enum('LOOT_MOB','LOOT_ITEM','MAIL','QUEST_REWARD','TRADE','SELL_ITEM','GUILD_BANK','AUCTION','TRANSMOGRIFICATION') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `param` int UNSIGNED NULL DEFAULT NULL,
  `attachments` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `amount_before` bigint UNSIGNED NULL DEFAULT NULL,
  `amount_after` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE,
  INDEX `idx_operation`(`operation`) USING BTREE,
  INDEX `idx_unix_time`(`unix_time`) USING BTREE,
  INDEX `idx_param`(`param`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2361 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

/*Data for the table `currency_transactions` */

insert  into `currency_transactions`(`realmid`,`id`,`guid`,`unix_time`,`operation`,`param`,`attachments`,`amount_before`,`amount_after`) values (1,1,1,1636074664,'QUEST_REWARD',30039,'',0,2),(1,2,2,1636074826,'QUEST_REWARD',29612,'',0,9800),(1,3,2,1636075009,'QUEST_REWARD',31853,'',9800,19600),(1,4,2,1636075024,'QUEST_REWARD',29690,'',19600,29400),(1,5,2,1636075543,'QUEST_REWARD',31765,'',29400,127400),(1,6,2,1636075663,'QUEST_REWARD',31766,'',127400,225400),(1,7,2,1636075857,'LOOT_MOB',73158,'',225400,228061);

/*Table structure for table `x` */

DROP TABLE IF EXISTS `x`;

CREATE TABLE `x` (
  `asd` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `x` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
