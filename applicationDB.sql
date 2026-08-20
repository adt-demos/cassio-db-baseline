SET SESSION sql_require_primary_key = 0;
DROP TABLE IF EXISTS `zzzz`;
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 10.0.1.4    Database: nzjjlw6khn
-- ------------------------------------------------------
-- Server version	11.8.6-MariaDB-0+deb13u1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `adtuzyn3_action_log_config`
--

DROP TABLE IF EXISTS `adtuzyn3_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_action_log_config`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_action_log_config` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_action_log_config` DISABLE KEYS */;
INSERT INTO `adtuzyn3_action_log_config` VALUES
(1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),
(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),
(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),
(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),
(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),
(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),
(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),
(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),
(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),
(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),
(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),
(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),
(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),
(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),
(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),
(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),
(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),
(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),
(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA'),
(22,'guidedtour','com_guidedtours.state','id','title','#__guidedtours','PLG_ACTIONLOG_JOOMLA'),
(23,'contact','com_contact.form','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `adtuzyn3_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_action_logs`
--

DROP TABLE IF EXISTS `adtuzyn3_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_action_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_action_logs` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_action_logs` DISABLE KEYS */;
INSERT INTO `adtuzyn3_action_logs` VALUES
(1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2026-08-20 08:31:09','com_users',680,0,'COM_ACTIONLOGS_DISABLED'),
(2,'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED','{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:13','com_guidedtours.state',680,12,'COM_ACTIONLOGS_DISABLED'),
(3,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":2,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=2\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_tags.tag',680,2,'COM_ACTIONLOGS_DISABLED'),
(4,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":3,\"title\":\"Worldwide\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=3\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_tags.tag',680,3,'COM_ACTIONLOGS_DISABLED'),
(5,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":4,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=4\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_tags.tag',680,4,'COM_ACTIONLOGS_DISABLED'),
(6,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":5,\"title\":\"Joomla 6\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=5\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_tags.tag',680,5,'COM_ACTIONLOGS_DISABLED'),
(7,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FIELD\",\"id\":1,\"title\":\"About the Author\",\"itemlink\":\"index.php?option=com_fields&task=field.edit&id=1\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_fields.field',680,1,'COM_ACTIONLOGS_DISABLED'),
(8,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_categories.category',680,8,'COM_ACTIONLOGS_DISABLED'),
(9,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_categories.category',680,9,'COM_ACTIONLOGS_DISABLED'),
(10,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_categories.category',680,10,'COM_ACTIONLOGS_DISABLED'),
(11,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=11\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_categories.category',680,11,'COM_ACTIONLOGS_DISABLED'),
(12,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"About\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,1,'COM_ACTIONLOGS_DISABLED'),
(13,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,2,'COM_ACTIONLOGS_DISABLED'),
(14,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"Welcome to your blog\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,3,'COM_ACTIONLOGS_DISABLED'),
(15,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,4,'COM_ACTIONLOGS_DISABLED'),
(16,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"Your Modules\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,5,'COM_ACTIONLOGS_DISABLED'),
(17,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":6,\"title\":\"Your Template\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,6,'COM_ACTIONLOGS_DISABLED'),
(18,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,7,'COM_ACTIONLOGS_DISABLED'),
(19,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":8,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=8\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,8,'COM_ACTIONLOGS_DISABLED'),
(20,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,9,'COM_ACTIONLOGS_DISABLED'),
(21,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":10,\"title\":\"Workflows\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=10\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,10,'COM_ACTIONLOGS_DISABLED'),
(22,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=11\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:21','com_content.article',680,11,'COM_ACTIONLOGS_DISABLED'),
(23,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,102,'COM_ACTIONLOGS_DISABLED'),
(24,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,103,'COM_ACTIONLOGS_DISABLED'),
(25,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,104,'COM_ACTIONLOGS_DISABLED'),
(26,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,105,'COM_ACTIONLOGS_DISABLED'),
(27,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Sample Layouts\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,106,'COM_ACTIONLOGS_DISABLED'),
(28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,107,'COM_ACTIONLOGS_DISABLED'),
(29,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Create a Post\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,108,'COM_ACTIONLOGS_DISABLED'),
(30,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,109,'COM_ACTIONLOGS_DISABLED'),
(31,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Site Administrator\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,110,'COM_ACTIONLOGS_DISABLED'),
(32,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"Change Password\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,111,'COM_ACTIONLOGS_DISABLED'),
(33,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"Log out\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,112,'COM_ACTIONLOGS_DISABLED'),
(34,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,113,'COM_ACTIONLOGS_DISABLED'),
(35,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,114,'COM_ACTIONLOGS_DISABLED'),
(36,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Search\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,115,'COM_ACTIONLOGS_DISABLED'),
(37,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Site Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,116,'COM_ACTIONLOGS_DISABLED'),
(38,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Template Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,117,'COM_ACTIONLOGS_DISABLED'),
(39,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,118,'COM_ACTIONLOGS_DISABLED'),
(40,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Category List\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,119,'COM_ACTIONLOGS_DISABLED'),
(41,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Articles\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,120,'COM_ACTIONLOGS_DISABLED'),
(42,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,121,'COM_ACTIONLOGS_DISABLED'),
(43,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"Workflows\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,122,'COM_ACTIONLOGS_DISABLED'),
(44,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":123,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=123\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,123,'COM_ACTIONLOGS_DISABLED'),
(45,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,124,'COM_ACTIONLOGS_DISABLED'),
(46,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_menus.item',680,125,'COM_ACTIONLOGS_DISABLED'),
(47,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Main Menu Blog\",\"extension_name\":\"Main Menu Blog\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,110,'COM_ACTIONLOGS_DISABLED'),
(48,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Special Menu\",\"extension_name\":\"Special Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,111,'COM_ACTIONLOGS_DISABLED'),
(49,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"Syndication\",\"extension_name\":\"Syndication\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,112,'COM_ACTIONLOGS_DISABLED'),
(50,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"Archived Articles\",\"extension_name\":\"Archived Articles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,113,'COM_ACTIONLOGS_DISABLED'),
(51,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Latest Posts\",\"extension_name\":\"Latest Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,114,'COM_ACTIONLOGS_DISABLED'),
(52,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":115,\"title\":\"Older Posts\",\"extension_name\":\"Older Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=115\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,115,'COM_ACTIONLOGS_DISABLED'),
(53,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":116,\"title\":\"Bottom Menu\",\"extension_name\":\"Bottom Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=116\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,116,'COM_ACTIONLOGS_DISABLED'),
(54,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"Search\",\"extension_name\":\"Search\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,117,'COM_ACTIONLOGS_DISABLED'),
(55,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":118,\"title\":\"Image\",\"extension_name\":\"Image\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=118\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,118,'COM_ACTIONLOGS_DISABLED'),
(56,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"Popular Tags\",\"extension_name\":\"Popular Tags\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,119,'COM_ACTIONLOGS_DISABLED'),
(57,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"Similar Items\",\"extension_name\":\"Similar Items\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,120,'COM_ACTIONLOGS_DISABLED'),
(58,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Site Information\",\"extension_name\":\"Site Information\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,121,'COM_ACTIONLOGS_DISABLED'),
(59,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":680,\"username\":\"adt-webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=680\"}','2026-08-20 08:31:24','com_modules.module',680,16,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `adtuzyn3_action_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_action_logs_extensions`
--

DROP TABLE IF EXISTS `adtuzyn3_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_action_logs_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `adtuzyn3_action_logs_extensions` VALUES
(1,'com_banners'),
(2,'com_cache'),
(3,'com_categories'),
(4,'com_config'),
(5,'com_contact'),
(6,'com_content'),
(7,'com_installer'),
(8,'com_media'),
(9,'com_menus'),
(10,'com_messages'),
(11,'com_modules'),
(12,'com_newsfeeds'),
(13,'com_plugins'),
(14,'com_redirect'),
(15,'com_tags'),
(16,'com_templates'),
(17,'com_users'),
(18,'com_checkin'),
(19,'com_scheduler'),
(20,'com_fields'),
(21,'com_guidedtours');
/*!40000 ALTER TABLE `adtuzyn3_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_action_logs_users`
--

DROP TABLE IF EXISTS `adtuzyn3_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_action_logs_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_action_logs_users` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_assets`
--

DROP TABLE IF EXISTS `adtuzyn3_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_assets`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_assets` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_assets` DISABLE KEYS */;
INSERT INTO `adtuzyn3_assets` VALUES
(1,0,0,291,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,1,2,1,'com_admin','com_admin','{}'),
(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,11,12,1,'com_config','com_config','{}'),
(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,1,17,116,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9,1,117,118,1,'com_cpanel','com_cpanel','{}'),
(10,1,119,120,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,121,124,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
(12,11,122,123,2,'com_languages.language.1','English (en-GB)','{}'),
(13,1,125,126,1,'com_login','com_login','{}'),
(14,1,127,128,1,'com_mails','com_mails','{}'),
(15,1,129,130,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,1,131,140,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
(17,1,141,142,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,143,240,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
(19,1,241,244,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,1,245,246,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
(21,1,247,248,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
(23,1,249,250,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
(24,1,255,258,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
(26,1,259,260,1,'com_wrapper','com_wrapper','{}'),
(27,8,18,19,2,'com_content.category.2','Uncategorised','{}'),
(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
(30,19,242,243,2,'com_newsfeeds.category.5','Uncategorised','{}'),
(32,24,256,257,2,'com_users.category.7','Uncategorised','{}'),
(33,1,261,262,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,1,263,264,1,'com_joomlaupdate','com_joomlaupdate','{}'),
(35,1,265,266,1,'com_tags','com_tags','{}'),
(36,1,267,268,1,'com_contenthistory','com_contenthistory','{}'),
(37,1,269,270,1,'com_ajax','com_ajax','{}'),
(38,1,271,272,1,'com_postinstall','com_postinstall','{}'),
(39,18,144,145,2,'com_modules.module.1','Main Menu','{}'),
(40,18,146,147,2,'com_modules.module.2','Login','{}'),
(41,18,148,149,2,'com_modules.module.3','Popular Articles','{}'),
(42,18,150,151,2,'com_modules.module.4','Recently Added Articles','{}'),
(43,18,152,153,2,'com_modules.module.8','Toolbar','{}'),
(44,18,154,155,2,'com_modules.module.9','Notifications','{}'),
(45,18,156,157,2,'com_modules.module.10','Logged-in Users','{}'),
(46,18,158,159,2,'com_modules.module.12','Admin Menu','{}'),
(49,18,164,165,2,'com_modules.module.15','Title','{}'),
(50,18,166,167,2,'com_modules.module.16','Login Form','{}'),
(51,18,168,169,2,'com_modules.module.17','Breadcrumbs','{}'),
(52,18,170,171,2,'com_modules.module.79','Multilanguage status','{}'),
(53,18,174,175,2,'com_modules.module.86','Joomla Version','{}'),
(54,16,132,133,2,'com_menus.menu.1','Main Menu','{}'),
(55,18,178,179,2,'com_modules.module.87','Sample Data','{}'),
(56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),
(57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),
(58,56,23,24,3,'com_content.transition.1','UNPUBLISH','{}'),
(59,56,25,26,3,'com_content.transition.2','PUBLISH','{}'),
(60,56,27,28,3,'com_content.transition.3','TRASH','{}'),
(61,56,29,30,3,'com_content.transition.4','ARCHIVE','{}'),
(62,56,31,32,3,'com_content.transition.5','FEATURE','{}'),
(63,56,33,34,3,'com_content.transition.6','UNFEATURE','{}'),
(64,56,35,36,3,'com_content.transition.7','PUBLISH_AND_FEATURE','{}'),
(65,1,251,252,1,'com_privacy','com_privacy','{}'),
(66,1,253,254,1,'com_actionlogs','com_actionlogs','{}'),
(67,18,160,161,2,'com_modules.module.88','Latest Actions','{}'),
(68,18,162,163,2,'com_modules.module.89','Privacy Dashboard','{}'),
(70,18,172,173,2,'com_modules.module.103','Site','{}'),
(71,18,176,177,2,'com_modules.module.104','System','{}'),
(72,18,180,181,2,'com_modules.module.91','System Dashboard','{}'),
(73,18,182,183,2,'com_modules.module.92','Content Dashboard','{}'),
(74,18,184,185,2,'com_modules.module.93','Menus Dashboard','{}'),
(75,18,186,187,2,'com_modules.module.94','Components Dashboard','{}'),
(76,18,188,189,2,'com_modules.module.95','Users Dashboard','{}'),
(77,18,190,191,2,'com_modules.module.99','Frontend Link','{}'),
(78,18,192,193,2,'com_modules.module.100','Messages','{}'),
(79,18,194,195,2,'com_modules.module.101','Post Install Messages','{}'),
(80,18,196,197,2,'com_modules.module.102','User Status','{}'),
(82,18,198,199,2,'com_modules.module.105','3rd Party','{}'),
(83,18,200,201,2,'com_modules.module.106','Help Dashboard','{}'),
(84,18,202,203,2,'com_modules.module.107','Privacy Requests','{}'),
(85,18,204,205,2,'com_modules.module.108','Privacy Status','{}'),
(86,18,206,207,2,'com_modules.module.96','Popular Articles','{}'),
(87,18,208,209,2,'com_modules.module.97','Recently Added Articles','{}'),
(88,18,210,211,2,'com_modules.module.98','Logged-in Users','{}'),
(89,18,212,213,2,'com_modules.module.90','Login Support','{}'),
(90,1,273,280,1,'com_scheduler','com_scheduler','{}'),
(91,1,281,282,1,'com_associations','com_associations','{}'),
(92,1,283,284,1,'com_categories','com_categories','{}'),
(93,1,285,286,1,'com_fields','com_fields','{}'),
(94,1,287,288,1,'com_workflow','com_workflow','{}'),
(95,1,289,290,1,'com_guidedtours','com_guidedtours','{}'),
(96,18,214,215,2,'com_modules.module.109','Guided Tours','{}'),
(97,90,274,275,2,'com_scheduler.task.1','Rotate Logs','{}'),
(98,90,276,277,2,'com_scheduler.task.2','Session GC','{}'),
(99,90,278,279,2,'com_scheduler.task.3','Update Notification','{}'),
(100,8,38,41,2,'com_content.fieldgroup.1','The Author','{}'),
(101,100,39,40,3,'com_content.field.1','About the Author','{}'),
(102,8,42,85,2,'com_content.workflow.2','Blog Workflow','{}'),
(103,102,43,44,3,'com_content.stage.2','Idea','{}'),
(104,102,45,46,3,'com_content.stage.3','Copywriting','{}'),
(105,102,47,48,3,'com_content.stage.4','Graphic Design','{}'),
(106,102,49,50,3,'com_content.stage.5','Fact Check','{}'),
(107,102,51,52,3,'com_content.stage.6','Content Review','{}'),
(108,102,53,54,3,'com_content.stage.7','Published','{}'),
(109,102,55,56,3,'com_content.stage.8','On Hold','{}'),
(110,102,57,58,3,'com_content.stage.9','Trashed','{}'),
(111,102,59,60,3,'com_content.stage.10','Unpublished','{}'),
(112,102,61,62,3,'com_content.transition.8','Write Article','{}'),
(113,102,63,64,3,'com_content.transition.9','Graphic Design','{}'),
(114,102,65,66,3,'com_content.transition.10','Check Facts','{}'),
(115,102,67,68,3,'com_content.transition.11','Review Content','{}'),
(116,102,69,70,3,'com_content.transition.12','Edit','{}'),
(117,102,71,72,3,'com_content.transition.13','Publish and Feature','{}'),
(118,102,73,74,3,'com_content.transition.14','Set on Hold','{}'),
(119,102,75,76,3,'com_content.transition.15','Trash','{}'),
(120,102,77,78,3,'com_content.transition.16','Resume Idea','{}'),
(121,102,79,80,3,'com_content.transition.17','Unpublish','{}'),
(122,102,81,82,3,'com_content.transition.18','Trash','{}'),
(123,102,83,84,3,'com_content.transition.19','Publish again','{}'),
(124,8,86,95,2,'com_content.category.8','Blog','{}'),
(125,8,96,103,2,'com_content.category.9','Help','{}'),
(126,8,104,111,2,'com_content.category.10','Joomla','{}'),
(127,8,112,115,2,'com_content.category.11','Typography','{}'),
(128,125,97,98,3,'com_content.article.1','About','{}'),
(129,125,99,100,3,'com_content.article.2','Working on Your Site','{}'),
(130,124,87,88,3,'com_content.article.3','Welcome to your blog','{}'),
(131,124,89,90,3,'com_content.article.4','About your home page','{}'),
(132,124,91,92,3,'com_content.article.5','Your Modules','{}'),
(133,124,93,94,3,'com_content.article.6','Your Template','{}'),
(134,126,105,106,3,'com_content.article.7','Millions','{}'),
(135,126,107,108,3,'com_content.article.8','Love','{}'),
(136,126,109,110,3,'com_content.article.9','Joomla','{}'),
(137,125,101,102,3,'com_content.article.10','Workflows','{}'),
(138,127,113,114,3,'com_content.article.11','Typography','{}'),
(139,16,134,135,2,'com_menus.menu.2','Main Menu Blog ','{}'),
(140,16,136,137,2,'com_menus.menu.3','Special Menu ','{}'),
(141,16,138,139,2,'com_menus.menu.4','Bottom Menu ','{}'),
(142,18,216,217,2,'com_modules.module.110','Main Menu Blog','{}'),
(143,18,218,219,2,'com_modules.module.111','Special Menu','{}'),
(144,18,220,221,2,'com_modules.module.112','Syndication','{}'),
(145,18,222,223,2,'com_modules.module.113','Archived Articles','{}'),
(146,18,224,225,2,'com_modules.module.114','Latest Posts','{}'),
(147,18,226,227,2,'com_modules.module.115','Older Posts','{}'),
(148,18,228,229,2,'com_modules.module.116','Bottom Menu','{}'),
(149,18,230,231,2,'com_modules.module.117','Search','{}'),
(150,18,232,233,2,'com_modules.module.118','Image','{}'),
(151,18,234,235,2,'com_modules.module.119','Popular Tags','{}'),
(152,18,236,237,2,'com_modules.module.120','Similar Items','{}'),
(153,18,238,239,2,'com_modules.module.121','Site Information','{}');
/*!40000 ALTER TABLE `adtuzyn3_assets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_associations`
--

DROP TABLE IF EXISTS `adtuzyn3_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_associations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_associations` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_associations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_banner_clients`
--

DROP TABLE IF EXISTS `adtuzyn3_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_banner_clients`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_banner_clients` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_banner_tracks`
--

DROP TABLE IF EXISTS `adtuzyn3_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_banner_tracks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_banner_tracks` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_banners`
--

DROP TABLE IF EXISTS `adtuzyn3_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_banners`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_banners` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_banners` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_categories`
--

DROP TABLE IF EXISTS `adtuzyn3_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_categories` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_categories` DISABLE KEYS */;
INSERT INTO `adtuzyn3_categories` VALUES
(1,0,0,0,19,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',680,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',0,'*',1),
(8,124,1,11,12,1,'blog','com_content','Blog','blog','','',1,NULL,NULL,1,'{\"workflow_id\":\"2\"}','','','',680,'2026-08-20 08:31:21',680,'2026-08-20 08:31:21',0,'*',1),
(9,125,1,13,14,1,'help','com_content','Help','help','','',1,NULL,NULL,1,'{}','','','',680,'2026-08-20 08:31:21',680,'2026-08-20 08:31:21',0,'*',1),
(10,126,1,15,16,1,'joomla','com_content','Joomla','joomla','','',1,NULL,NULL,1,'{}','','','',680,'2026-08-20 08:31:21',680,'2026-08-20 08:31:21',0,'*',1),
(11,127,1,17,18,1,'typography','com_content','Typography','typography','','',1,NULL,NULL,1,'{}','','','',680,'2026-08-20 08:31:21',680,'2026-08-20 08:31:21',0,'*',1);
/*!40000 ALTER TABLE `adtuzyn3_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_contact_details`
--

DROP TABLE IF EXISTS `adtuzyn3_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_contact_details`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_contact_details` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_contact_details` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_content`
--

DROP TABLE IF EXISTS `adtuzyn3_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_content`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_content` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_content` DISABLE KEYS */;
INSERT INTO `adtuzyn3_content` VALUES
(1,128,'About','about','<p>This tells you a bit about this blog and the person who writes it.</p><p>When you are logged in you will be able to edit this page by selecting the edit icon.</p>','',1,9,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'','{}','{}',1,2,'','',1,0,'{}',0,'*',''),
(2,129,'Working on Your Site','working-on-your-site','<p>Here are some basic tips for working on your site.</p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.</li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.</li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.</li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li><li>You can learn much more about working with Joomla from the <a href=\"https://docs.joomla.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Joomla documentation site</a> and get help from other users at the <a href=\"https://forum.joomla.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li></ul>','',1,9,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'','{}','{}',1,1,'','',3,0,'{}',0,'*',''),
(3,130,'Welcome to your blog','welcome-to-your-blog','<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>','',1,8,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,3,'','',1,0,'{}',1,'*',''),
(4,131,'About your home page','about-your-home-page','<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>','<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.</p>',1,8,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,2,'','',1,0,'{}',1,'*',''),
(5,132,'Your Modules','your-modules','<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\"https://extensions.joomla.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Joomla Extensions Directory.</a></p>','',1,8,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,1,'','',1,0,'{}',1,'*',''),
(6,133,'Your Template','your-template','<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>','',1,8,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,0,'','',1,0,'{}',1,'*',''),
(7,134,'Millions','millions','<p><strong>Millions of Websites are built on Joomla!</strong></p><p>Learn more about beautiful blog presentation.</p>','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est</p>',1,10,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,2,'','',1,0,'{}',0,'*',''),
(8,135,'Love','love','<p><strong>We love Joomla to the moon and back!</strong></p><p>Thank you to all volunteers who have contributed!</p>','<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p> ',1,10,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,1,'','',1,0,'{}',0,'*',''),
(9,136,'Joomla','joomla','<p><strong>We proudly present Joomla Version 6!</strong></p><p>Learn more about workflows in Joomla.</p>','<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Dragée carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu soufflé oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy.</p>',1,10,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,0,'','',1,0,'{}',0,'*',''),
(10,137,'Workflows','workflows','<p>Workflows manage the stages your articles must go through until they are published.</p><p>The component to manage workflows is not enabled by default.</p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.</p><ol><li>Access the administration area</li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'</li><li>Save changes</li></ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.</p><p>When you edit an article you will also see the new transitions for articles related to workflows.</p>','',1,9,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-end\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,0,'','',1,0,'{}',0,'*',''),
(11,138,'Typography','typography','<h1>Colour Scheme</h1> <p class=\"d-grid gap-2 d-sm-block\"> <span class=\"btn btn-secondary\">secondary</span>   <span class=\"btn btn-primary\">primary</span>   <span class=\"btn btn-info\">info</span>   <span class=\"btn btn-success\">success</span>   <span class=\"btn btn-warning\">warning</span>   <span class=\"btn btn-danger\">danger</span> </p> <p><span class=\"text text-secondary\">text-secondary</span>  <span class=\"text text-primary\">text-primary</span>  <span class=\"text text-info\">text-info</span>  <span class=\"text text-success\">text-success</span>  <span class=\"text text-warning\">text-warning</span>  <span class=\"text text-danger\">text-danger</span></p><h1>Typography (h1)</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h2>Lorem Ipsum Dolor Sit Amet (h2)</h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit </strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h3>Lorem Ipsum Dolor Sit Amet (h3)</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h4>Lorem Ipsum Dolor Sit Amet (h4)</h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h5>Lorem Ipsum Dolor Sit Amet (h5)</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p> <p><a href=\"index.php\"> Lorem ipsum dolor (a)</a></p><h1>Lists</h1> <p>(ol)(li)</p> <ol> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ol> <p>(ul)(li)</p> <ul> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ul> <h1>Displays</h1><p class=\"display-1\">Lorem (display-1)</p><p class=\"display-2\">Lorem (display-2)</p><p class=\"display-3\">Lorem ipsum (display-3)</p><p class=\"display-4\">Lorem ipsum (display-4)</p><p class=\"lead\">Lorem ipsum arma virumque cano (lead)</p>','',1,11,'2026-08-20 08:31:21',680,'Joomla','2026-08-20 08:31:21',680,NULL,NULL,'2026-08-20 08:31:21',NULL,'','{}','{}',1,0,'','',1,0,'{}',0,'*','');
/*!40000 ALTER TABLE `adtuzyn3_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_content_frontpage`
--

DROP TABLE IF EXISTS `adtuzyn3_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_content_frontpage`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_content_frontpage` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_content_frontpage` DISABLE KEYS */;
INSERT INTO `adtuzyn3_content_frontpage` VALUES
(3,4,NULL,NULL),
(4,3,NULL,NULL),
(5,2,NULL,NULL),
(6,1,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_content_rating`
--

DROP TABLE IF EXISTS `adtuzyn3_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_content_rating`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_content_rating` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_content_rating` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_content_types`
--

DROP TABLE IF EXISTS `adtuzyn3_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_content_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_content_types` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_content_types` DISABLE KEYS */;
INSERT INTO `adtuzyn3_content_types` VALUES
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_user_id\":\"created_by\",\"core_created_by_alias\":\"created_by_alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ] }'),
(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),
(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `adtuzyn3_content_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_contentitem_tag_map`
--

DROP TABLE IF EXISTS `adtuzyn3_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_contentitem_tag_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `adtuzyn3_contentitem_tag_map` VALUES
('com_content.article',1,3,2,'2026-08-20 08:31:23',1),
('com_content.article',1,3,3,'2026-08-20 08:31:23',1),
('com_content.article',1,3,4,'2026-08-20 08:31:23',1),
('com_content.article',1,3,5,'2026-08-20 08:31:23',1),
('com_content.article',2,4,2,'2026-08-20 08:31:23',1),
('com_content.article',2,4,3,'2026-08-20 08:31:23',1),
('com_content.article',2,4,4,'2026-08-20 08:31:23',1),
('com_content.article',2,4,5,'2026-08-20 08:31:23',1),
('com_content.article',3,5,2,'2026-08-20 08:31:23',1),
('com_content.article',3,5,3,'2026-08-20 08:31:23',1),
('com_content.article',3,5,4,'2026-08-20 08:31:23',1),
('com_content.article',3,5,5,'2026-08-20 08:31:23',1),
('com_content.article',4,6,2,'2026-08-20 08:31:23',1),
('com_content.article',4,6,3,'2026-08-20 08:31:23',1),
('com_content.article',4,6,4,'2026-08-20 08:31:23',1),
('com_content.article',4,6,5,'2026-08-20 08:31:23',1);
/*!40000 ALTER TABLE `adtuzyn3_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_extensions`
--

DROP TABLE IF EXISTS `adtuzyn3_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_extensions` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_extensions` DISABLE KEYS */;
INSERT INTO `adtuzyn3_extensions` VALUES
(1,0,'com_wrapper','component','com_wrapper','','',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),
(2,0,'com_admin','component','com_admin','','',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL),
(3,0,'com_banners','component','com_banners','','',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),
(4,0,'com_cache','component','com_cache','','',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL),
(5,0,'com_categories','component','com_categories','','',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL),
(6,0,'com_checkin','component','com_checkin','','',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL),
(7,0,'com_contact','component','com_contact','','',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),
(8,0,'com_cpanel','component','com_cpanel','','',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL),
(9,0,'com_installer','component','com_installer','','',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),
(10,0,'com_languages','component','com_languages','','',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL),
(11,0,'com_login','component','com_login','','',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL),
(12,0,'com_media','component','com_media','','',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"files\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),
(13,0,'com_menus','component','com_menus','','',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),
(14,0,'com_messages','component','com_messages','','',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL),
(15,0,'com_modules','component','com_modules','','',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),
(16,0,'com_newsfeeds','component','com_newsfeeds','','',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),
(17,0,'com_plugins','component','com_plugins','','',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL),
(18,0,'com_templates','component','com_templates','','',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL),
(19,0,'com_content','component','com_content','','',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),
(20,0,'com_config','component','com_config','','',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),
(21,0,'com_redirect','component','com_redirect','','',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL),
(22,0,'com_users','component','com_users','','',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),
(23,0,'com_finder','component','com_finder','','',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),
(24,0,'com_joomlaupdate','component','com_joomlaupdate','','',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"customurl\":\"\",\"autoupdate_status\":0,\"autoupdate\":0,\"minimum_stability\":\"4\",\"update_token\":\"jiKoYsOjX1kmrTm5EFxvRPikvidpSiscedSEPKPb\"}','',NULL,NULL,0,0,NULL),
(25,0,'com_tags','component','com_tags','','',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),
(26,0,'com_contenthistory','component','com_contenthistory','','',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),
(27,0,'com_ajax','component','com_ajax','','',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),
(28,0,'com_postinstall','component','com_postinstall','','',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL),
(29,0,'com_fields','component','com_fields','','',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),
(30,0,'com_associations','component','com_associations','','',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL),
(31,0,'com_privacy','component','com_privacy','','',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),
(32,0,'com_actionlogs','component','com_actionlogs','','',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),
(33,0,'com_workflow','component','com_workflow','','',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL),
(34,0,'com_mails','component','com_mails','','',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','','',NULL,NULL,0,0,NULL),
(35,0,'com_scheduler','component','com_scheduler','','',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL),
(36,0,'com_guidedtours','component','com_guidedtours','','',1,1,0,0,1,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(37,0,'lib_joomla','library','joomla','','',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL),
(38,0,'lib_phpass','library','phpass','','',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.5.1\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),
(39,0,'mod_articles_archive','module','mod_articles_archive','','',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),
(40,0,'mod_articles_latest','module','mod_articles_latest','','',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),
(41,0,'mod_articles_popular','module','mod_articles_popular','','',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),
(42,0,'mod_banners','module','mod_banners','','',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),
(43,0,'mod_breadcrumbs','module','mod_breadcrumbs','','',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),
(44,0,'mod_custom','module','mod_custom','','',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(45,0,'mod_feed','module','mod_feed','','',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(46,0,'mod_footer','module','mod_footer','','',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),
(47,0,'mod_login','module','mod_login','','',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(48,0,'mod_menu','module','mod_menu','','',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(49,0,'mod_articles_news','module','mod_articles_news','','',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),
(50,0,'mod_random_image','module','mod_random_image','','',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),
(51,0,'mod_related_items','module','mod_related_items','','',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),
(52,0,'mod_stats','module','mod_stats','','',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),
(53,0,'mod_syndicate','module','mod_syndicate','','',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),
(54,0,'mod_users_latest','module','mod_users_latest','','',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),
(55,0,'mod_whosonline','module','mod_whosonline','','',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),
(56,0,'mod_wrapper','module','mod_wrapper','','',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),
(57,0,'mod_articles_category','module','mod_articles_category','','',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),
(58,0,'mod_articles_categories','module','mod_articles_categories','','',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),
(59,0,'mod_languages','module','mod_languages','','',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),
(60,0,'mod_finder','module','mod_finder','','',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),
(61,0,'mod_articles','module','mod_articles','','',0,1,0,0,1,'{\"name\":\"mod_articles\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}','','',NULL,NULL,0,0,NULL),
(62,0,'mod_custom','module','mod_custom','','',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(63,0,'mod_feed','module','mod_feed','','',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(64,0,'mod_latest','module','mod_latest','','',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),
(65,0,'mod_logged','module','mod_logged','','',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),
(66,0,'mod_login','module','mod_login','','',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(67,0,'mod_loginsupport','module','mod_loginsupport','','',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),
(68,0,'mod_menu','module','mod_menu','','',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(69,0,'mod_popular','module','mod_popular','','',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),
(70,0,'mod_quickicon','module','mod_quickicon','','',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),
(71,0,'mod_frontend','module','mod_frontend','','',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),
(72,0,'mod_messages','module','mod_messages','','',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),
(73,0,'mod_post_installation_messages','module','mod_post_installation_messages','','',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),
(74,0,'mod_user','module','mod_user','','',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),
(75,0,'mod_title','module','mod_title','','',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),
(76,0,'mod_toolbar','module','mod_toolbar','','',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),
(77,0,'mod_multilangstatus','module','mod_multilangstatus','','',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(78,0,'mod_version','module','mod_version','','',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(79,0,'mod_stats_admin','module','mod_stats_admin','','',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),
(80,0,'mod_tags_popular','module','mod_tags_popular','','',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(81,0,'mod_tags_similar','module','mod_tags_similar','','',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(82,0,'mod_sampledata','module','mod_sampledata','','',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),
(83,0,'mod_latestactions','module','mod_latestactions','','',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),
(84,0,'mod_privacy_dashboard','module','mod_privacy_dashboard','','',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),
(85,0,'mod_submenu','module','mod_submenu','','',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),
(86,0,'mod_privacy_status','module','mod_privacy_status','','',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),
(87,0,'mod_guidedtours','module','mod_guidedtours','','',1,1,1,0,1,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(88,0,'plg_actionlog_joomla','plugin','joomla','','actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),
(89,0,'plg_api-authentication_basic','plugin','basic','','api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),
(90,0,'plg_api-authentication_token','plugin','token','','api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),
(91,0,'plg_authentication_cookie','plugin','cookie','','authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),
(92,0,'plg_authentication_joomla','plugin','joomla','','authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(93,0,'plg_authentication_ldap','plugin','ldap','','authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),
(94,0,'plg_behaviour_compat6','plugin','compat6','','behaviour',0,0,1,0,1,'{\"name\":\"plg_behaviour_compat6\",\"type\":\"plugin\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_COMPAT6_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat6\",\"filename\":\"compat6\"}','{\"classes_aliases\":\"0\",\"legacy_classes\":\"1\"}','',NULL,NULL,1,0,NULL),
(95,0,'plg_behaviour_taggable','plugin','taggable','','behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,2,0,NULL),
(96,0,'plg_behaviour_versionable','plugin','versionable','','behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,3,0,NULL),
(97,0,'plg_content_confirmconsent','plugin','confirmconsent','','content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),
(98,0,'plg_content_contact','plugin','contact','','content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(99,0,'plg_content_emailcloak','plugin','emailcloak','','content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),
(100,0,'plg_content_fields','plugin','fields','','content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),
(101,0,'plg_content_finder','plugin','finder','','content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),
(102,0,'plg_content_joomla','plugin','joomla','','content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),
(103,0,'plg_content_loadmodule','plugin','loadmodule','','content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),
(104,0,'plg_content_pagebreak','plugin','pagebreak','','content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),
(105,0,'plg_content_pagenavigation','plugin','pagenavigation','','content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),
(106,0,'plg_content_vote','plugin','vote','','content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),
(107,0,'plg_editors-xtd_article','plugin','article','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),
(108,0,'plg_editors-xtd_contact','plugin','contact','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(109,0,'plg_editors-xtd_fields','plugin','fields','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),
(110,0,'plg_editors-xtd_image','plugin','image','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),
(111,0,'plg_editors-xtd_menu','plugin','menu','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),
(112,0,'plg_editors-xtd_module','plugin','module','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),
(113,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),
(114,0,'plg_editors-xtd_readmore','plugin','readmore','','editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),
(115,0,'plg_editors_codemirror','plugin','codemirror','','editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),
(116,0,'plg_editors_none','plugin','none','','editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),
(117,0,'plg_editors_tinymce','plugin','tinymce','','editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"8.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),
(118,0,'plg_extension_finder','plugin','finder','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),
(119,0,'plg_extension_joomla','plugin','joomla','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(120,0,'plg_extension_joomlaupdate','plugin','joomlaupdate','','extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,3,0,NULL),
(121,0,'plg_extension_namespacemap','plugin','namespacemap','','extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,4,0,NULL),
(122,0,'plg_fields_calendar','plugin','calendar','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),
(123,0,'plg_fields_checkboxes','plugin','checkboxes','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),
(124,0,'plg_fields_color','plugin','color','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),
(125,0,'plg_fields_editor','plugin','editor','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL),
(126,0,'plg_fields_imagelist','plugin','imagelist','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),
(127,0,'plg_fields_integer','plugin','integer','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),
(128,0,'plg_fields_list','plugin','list','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),
(129,0,'plg_fields_media','plugin','media','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),
(130,0,'plg_fields_note','plugin','note','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_note\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Note\",\"filename\":\"note\"}','{\"class\":\"alert alert-info\",\"heading\":\"h4\"}','',NULL,NULL,9,0,NULL),
(131,0,'plg_fields_number','plugin','number','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_number\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NUMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Number\",\"filename\":\"number\"}','{\"min\":\"1.0\",\"max\":\"100.0\",\"step\":\"0.1\",\"currency\":\"0\",\"symbol\":\"\",\"position\":\"0\",\"decimals\":\"2\"}','',NULL,NULL,10,0,NULL),
(132,0,'plg_fields_radio','plugin','radio','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,11,0,NULL),
(133,0,'plg_fields_sql','plugin','sql','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,12,0,NULL),
(134,0,'plg_fields_subform','plugin','subform','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,13,0,NULL),
(135,0,'plg_fields_text','plugin','text','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,14,0,NULL),
(136,0,'plg_fields_textarea','plugin','textarea','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,15,0,NULL),
(137,0,'plg_fields_url','plugin','url','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,16,0,NULL),
(138,0,'plg_fields_user','plugin','user','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,17,0,NULL),
(139,0,'plg_fields_usergrouplist','plugin','usergrouplist','','fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,18,0,NULL),
(140,0,'plg_filesystem_local','plugin','local','','filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),
(141,0,'plg_finder_categories','plugin','categories','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),
(142,0,'plg_finder_contacts','plugin','contacts','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),
(143,0,'plg_finder_content','plugin','content','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),
(144,0,'plg_finder_newsfeeds','plugin','newsfeeds','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),
(145,0,'plg_finder_tags','plugin','tags','','finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),
(146,0,'plg_installer_folderinstaller','plugin','folderinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),
(147,0,'plg_installer_override','plugin','override','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),
(148,0,'plg_installer_packageinstaller','plugin','packageinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),
(149,0,'plg_installer_urlinstaller','plugin','urlinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),
(150,0,'plg_installer_webinstaller','plugin','webinstaller','','installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),
(151,0,'plg_media-action_crop','plugin','crop','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),
(152,0,'plg_media-action_resize','plugin','resize','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),
(153,0,'plg_media-action_rotate','plugin','rotate','','media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),
(154,0,'plg_privacy_actionlogs','plugin','actionlogs','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),
(155,0,'plg_privacy_consents','plugin','consents','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),
(156,0,'plg_privacy_contact','plugin','contact','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(157,0,'plg_privacy_content','plugin','content','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(158,0,'plg_privacy_message','plugin','message','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),
(159,0,'plg_privacy_user','plugin','user','','privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),
(160,0,'plg_quickicon_autoupdate','plugin','autoupdate','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_autoupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_QUICKICON_AUTOUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Autoupdate\",\"filename\":\"autoupdate\"}','','',NULL,NULL,1,0,NULL),
(161,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,2,0,NULL),
(162,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,3,0,NULL),
(163,0,'plg_quickicon_overridecheck','plugin','overridecheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,4,0,NULL),
(164,0,'plg_quickicon_downloadkey','plugin','downloadkey','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,5,0,NULL),
(165,0,'plg_quickicon_privacycheck','plugin','privacycheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,6,0,NULL),
(166,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,7,0,NULL),
(167,0,'plg_quickicon_eos','plugin','eos','','quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,8,0,NULL),
(168,0,'plg_sampledata_blog','plugin','blog','','sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),
(169,0,'plg_sampledata_multilang','plugin','multilang','','sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),
(170,0,'plg_schemaorg_article','plugin','article','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,1,0,NULL),
(171,0,'plg_schemaorg_blogposting','plugin','blogposting','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,2,0,NULL),
(172,0,'plg_schemaorg_book','plugin','book','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,3,0,NULL),
(173,0,'plg_schemaorg_event','plugin','event','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,4,0,NULL),
(174,0,'plg_schemaorg_jobposting','plugin','jobposting','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,5,0,NULL),
(175,0,'plg_schemaorg_organization','plugin','organization','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,6,0,NULL),
(176,0,'plg_schemaorg_person','plugin','person','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,7,0,NULL),
(177,0,'plg_schemaorg_recipe','plugin','recipe','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,8,0,NULL),
(178,0,'plg_schemaorg_custom','plugin','custom','','schemaorg',0,1,1,0,1,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,9,0,NULL),
(179,0,'plg_system_accessibility','plugin','accessibility','','system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),
(180,0,'plg_system_actionlogs','plugin','actionlogs','','system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(181,0,'plg_system_cache','plugin','cache','','system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),
(182,0,'plg_system_debug','plugin','debug','','system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),
(183,0,'plg_system_fields','plugin','fields','','system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),
(184,0,'plg_system_highlight','plugin','highlight','','system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),
(185,0,'plg_system_httpheaders','plugin','httpheaders','','system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),
(186,0,'plg_system_jooa11y','plugin','jooa11y','','system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),
(187,0,'plg_system_languagecode','plugin','languagecode','','system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),
(188,0,'plg_system_languagefilter','plugin','languagefilter','','system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),
(189,0,'plg_system_log','plugin','log','','system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),
(190,0,'plg_system_logout','plugin','logout','','system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),
(191,0,'plg_system_privacyconsent','plugin','privacyconsent','','system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),
(192,0,'plg_system_redirect','plugin','redirect','','system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),
(193,0,'plg_system_remember','plugin','remember','','system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),
(194,0,'plg_system_schedulerunner','plugin','schedulerunner','','system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),
(195,0,'plg_system_schemaorg','plugin','schemaorg','','system',0,1,1,0,1,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,18,0,NULL),
(196,0,'plg_system_sef','plugin','sef','','system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}','',NULL,NULL,19,0,NULL),
(197,0,'plg_system_shortcut','plugin','shortcut','','system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,21,0,NULL),
(198,0,'plg_system_skipto','plugin','skipto','','system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,22,0,NULL),
(199,0,'plg_system_stats','plugin','stats','','system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1787214674,\"unique_id\":\"81c627041f5a644addc1de04ff8e95773baa8715\",\"interval\":12}','',NULL,NULL,23,0,NULL),
(200,0,'plg_system_task_notification','plugin','tasknotification','','system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,24,0,NULL),
(201,0,'plg_system_webauthn','plugin','webauthn','','system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,26,0,NULL),
(202,0,'plg_task_check_files','plugin','checkfiles','','task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),
(203,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs','','task',0,1,1,0,1,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(204,0,'plg_task_globalcheckin','plugin','globalcheckin','','task',0,1,1,0,1,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,3,0,NULL),
(205,0,'plg_task_requests','plugin','requests','','task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,4,0,NULL),
(206,0,'plg_task_privacyconsent','plugin','privacyconsent','','task',0,1,1,0,1,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,5,0,NULL),
(207,0,'plg_task_rotatelogs','plugin','rotatelogs','','task',0,1,1,0,1,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,6,0,NULL),
(208,0,'plg_task_sessiongc','plugin','sessiongc','','task',0,1,1,0,1,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,7,0,NULL),
(209,0,'plg_task_site_status','plugin','sitestatus','','task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,8,0,NULL),
(210,0,'plg_task_updatenotification','plugin','updatenotification','','task',0,1,1,0,1,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,9,0,NULL),
(211,0,'plg_multifactorauth_totp','plugin','totp','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),
(212,0,'plg_multifactorauth_yubikey','plugin','yubikey','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),
(213,0,'plg_multifactorauth_webauthn','plugin','webauthn','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL),
(214,0,'plg_multifactorauth_email','plugin','email','','multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL),
(215,0,'plg_multifactorauth_fixed','plugin','fixed','','multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL),
(216,0,'plg_user_contactcreator','plugin','contactcreator','','user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),
(217,0,'plg_user_joomla','plugin','joomla','','user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),
(218,0,'plg_user_profile','plugin','profile','','user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),
(219,0,'plg_user_terms','plugin','terms','','user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),
(220,0,'plg_user_token','plugin','token','','user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),
(221,0,'plg_webservices_banners','plugin','banners','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),
(222,0,'plg_webservices_config','plugin','config','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),
(223,0,'plg_webservices_contact','plugin','contact','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(224,0,'plg_webservices_content','plugin','content','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(225,0,'plg_webservices_installer','plugin','installer','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),
(226,0,'plg_webservices_joomlaupdate','plugin','joomlaupdate','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_WEBSERVICES_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','{}','',NULL,NULL,6,0,NULL),
(227,0,'plg_webservices_languages','plugin','languages','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,7,0,NULL),
(228,0,'plg_webservices_media','plugin','media','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,8,0,NULL),
(229,0,'plg_webservices_menus','plugin','menus','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,9,0,NULL),
(230,0,'plg_webservices_messages','plugin','messages','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,10,0,NULL),
(231,0,'plg_webservices_modules','plugin','modules','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,11,0,NULL),
(232,0,'plg_webservices_newsfeeds','plugin','newsfeeds','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,12,0,NULL),
(233,0,'plg_webservices_plugins','plugin','plugins','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,13,0,NULL),
(234,0,'plg_webservices_privacy','plugin','privacy','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,14,0,NULL),
(235,0,'plg_webservices_redirect','plugin','redirect','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,15,0,NULL),
(236,0,'plg_webservices_tags','plugin','tags','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,16,0,NULL),
(237,0,'plg_webservices_templates','plugin','templates','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,17,0,NULL),
(238,0,'plg_webservices_users','plugin','users','','webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,18,0,NULL),
(239,0,'plg_workflow_featuring','plugin','featuring','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),
(240,0,'plg_workflow_notification','plugin','notification','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),
(241,0,'plg_workflow_publishing','plugin','publishing','','workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),
(242,0,'plg_system_guidedtours','plugin','guidedtours','','system',0,1,1,0,1,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,15,0,NULL),
(243,0,'atum','template','atum','','',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),
(244,0,'cassiopeia','template','cassiopeia','','',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}','',NULL,NULL,0,0,NULL),
(245,0,'cassiopeia_extended','template','cassiopeia_extended','','',0,1,1,0,1,'{\"name\":\"cassiopeia_extended\",\"type\":\"template\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_EXTENDED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":false,\"parent\":\"cassiopeia\",\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}','',NULL,NULL,0,0,NULL),
(246,0,'files_joomla','file','joomla','','',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2026-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(247,0,'English (en-GB) Language Pack','package','pkg_en-GB','','',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2026-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),
(248,247,'English (en-GB)','language','en-GB','','',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.3\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(249,247,'English (en-GB)','language','en-GB','','',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.3\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL),
(250,247,'English (en-GB)','language','en-GB','','',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.3\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `adtuzyn3_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_fields`
--

DROP TABLE IF EXISTS `adtuzyn3_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_fields` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_fields` DISABLE KEYS */;
INSERT INTO `adtuzyn3_fields` VALUES
(1,101,'com_content.article',1,'About the Author','about-the-author','About the Author','','textarea','','',1,0,0,NULL,NULL,0,'{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"1\",\"label_render_class\":\"\",\"display\":\"3\",\"prefix\":\"\",\"suffix\":\"\",\"layout\":\"\",\"display_readonly\":\"2\"}','{\"rows\":3,\"cols\":80,\"maxlength\":400,\"filter\":\"\"}','*','2026-08-20 08:31:21',680,'2026-08-20 08:31:21',680,1);
/*!40000 ALTER TABLE `adtuzyn3_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_fields_categories`
--

DROP TABLE IF EXISTS `adtuzyn3_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_fields_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_fields_categories` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_fields_groups`
--

DROP TABLE IF EXISTS `adtuzyn3_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_fields_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_fields_groups` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_fields_groups` DISABLE KEYS */;
INSERT INTO `adtuzyn3_fields_groups` VALUES
(1,100,'com_content.article','The Author','','',1,NULL,NULL,0,'{\"display_readonly\":\"1\"}','*','2026-08-20 08:31:21',680,'2026-08-20 08:31:21',680,1);
/*!40000 ALTER TABLE `adtuzyn3_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_fields_values`
--

DROP TABLE IF EXISTS `adtuzyn3_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_fields_values`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_fields_values` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_fields_values` DISABLE KEYS */;
INSERT INTO `adtuzyn3_fields_values` VALUES
(1,'4','Uurnip greens yarrow ricebean endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale.'),
(1,'10','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.');
/*!40000 ALTER TABLE `adtuzyn3_fields_values` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_filters`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_filters`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_filters` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_links`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_links`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_links` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_links` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_links` VALUES
(1,'index.php?option=com_tags&view=tag&id=2','index.php?option=com_tags&view=tag&id[0]=2:millions','Millions','','2026-08-20 08:31:21','07a15f0dca6c9bd316ecbc382e65aa71',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,5,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31343A7B733A323A226964223B693A323B733A353A22616C696173223B733A383A226D696C6C696F6E73223B733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A33313A7B733A31303A227461675F6C61796F7574223B733A393A225F3A64656661756C74223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A353B733A31343A2273686F775F7461675F7469746C65223B733A313A2230223B733A32333A227461675F6C6973745F73686F775F7461675F696D616765223B733A313A2230223B733A32393A227461675F6C6973745F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A31343A227461675F6C6973745F696D616765223B733A303A22223B733A31363A227461675F6C6973745F6F726465726279223B733A353A227469746C65223B733A32363A227461675F6C6973745F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A31333A2273686F775F68656164696E6773223B733A313A2230223B733A31383A227461675F6C6973745F73686F775F64617465223B733A313A2230223B733A32343A227461675F6C6973745F73686F775F6974656D5F696D616765223B733A313A2230223B733A33303A227461675F6C6973745F73686F775F6974656D5F6465736372697074696F6E223B733A313A2230223B733A33323A227461675F6C6973745F6974656D5F6D6178696D756D5F63686172616374657273223B693A303B733A31373A2272657475726E5F616E795F6F725F616C6C223B733A313A2231223B733A31363A22696E636C7564655F6368696C6472656E223B733A313A2230223B733A373A226D6178696D756D223B693A3230303B733A32343A227461675F6C6973745F6C616E67756167655F66696C746572223B733A333A22616C6C223B733A31313A22746167735F6C61796F7574223B733A393A225F3A64656661756C74223B733A31363A22616C6C5F746167735F6F726465726279223B733A353A227469746C65223B733A32363A22616C6C5F746167735F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A32333A22616C6C5F746167735F73686F775F7461675F696D616765223B733A313A2230223B733A32393A22616C6C5F746167735F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A33313A22616C6C5F746167735F7461675F6D6178696D756D5F63686172616374657273223B693A32303B733A32323A22616C6C5F746167735F73686F775F7461675F68697473223B733A313A2230223B733A31323A2266696C7465725F6669656C64223B733A313A2231223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31393A227461675F6669656C645F616A61785F6D6F6465223B733A313A2231223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A343A22736C7567223B733A31303A22323A6D696C6C696F6E73223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A333A22746167223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A393A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B693A383B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A35313A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669645B305D3D323A6D696C6C696F6E73223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A333A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A333A22546167223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A333B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A32313A2241445420546573742055736572204163636F756E74223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A353B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A383A224D696C6C696F6E73223B693A31373B693A353B693A31383B733A33393A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669643D32223B7D),
(2,'index.php?option=com_tags&view=tag&id=3','index.php?option=com_tags&view=tag&id[0]=3:worldwide','Worldwide','','2026-08-20 08:31:21','f3748f09a3689806a532c0ab8be0ee90',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,5,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31343A7B733A323A226964223B693A333B733A353A22616C696173223B733A393A22776F726C6477696465223B733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A33313A7B733A31303A227461675F6C61796F7574223B733A393A225F3A64656661756C74223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A353B733A31343A2273686F775F7461675F7469746C65223B733A313A2230223B733A32333A227461675F6C6973745F73686F775F7461675F696D616765223B733A313A2230223B733A32393A227461675F6C6973745F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A31343A227461675F6C6973745F696D616765223B733A303A22223B733A31363A227461675F6C6973745F6F726465726279223B733A353A227469746C65223B733A32363A227461675F6C6973745F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A31333A2273686F775F68656164696E6773223B733A313A2230223B733A31383A227461675F6C6973745F73686F775F64617465223B733A313A2230223B733A32343A227461675F6C6973745F73686F775F6974656D5F696D616765223B733A313A2230223B733A33303A227461675F6C6973745F73686F775F6974656D5F6465736372697074696F6E223B733A313A2230223B733A33323A227461675F6C6973745F6974656D5F6D6178696D756D5F63686172616374657273223B693A303B733A31373A2272657475726E5F616E795F6F725F616C6C223B733A313A2231223B733A31363A22696E636C7564655F6368696C6472656E223B733A313A2230223B733A373A226D6178696D756D223B693A3230303B733A32343A227461675F6C6973745F6C616E67756167655F66696C746572223B733A333A22616C6C223B733A31313A22746167735F6C61796F7574223B733A393A225F3A64656661756C74223B733A31363A22616C6C5F746167735F6F726465726279223B733A353A227469746C65223B733A32363A22616C6C5F746167735F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A32333A22616C6C5F746167735F73686F775F7461675F696D616765223B733A313A2230223B733A32393A22616C6C5F746167735F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A33313A22616C6C5F746167735F7461675F6D6178696D756D5F63686172616374657273223B693A32303B733A32323A22616C6C5F746167735F73686F775F7461675F68697473223B733A313A2230223B733A31323A2266696C7465725F6669656C64223B733A313A2231223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31393A227461675F6669656C645F616A61785F6D6F6465223B733A313A2231223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A343A22736C7567223B733A31313A22333A776F726C6477696465223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A333A22746167223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A393A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B693A383B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A35323A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669645B305D3D333A776F726C6477696465223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A333A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A333A22546167223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A333B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A32313A2241445420546573742055736572204163636F756E74223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A353B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A393A22576F726C6477696465223B693A31373B693A353B693A31383B733A33393A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669643D33223B7D),
(3,'index.php?option=com_tags&view=tag&id=4','index.php?option=com_tags&view=tag&id[0]=4:love','Love','','2026-08-20 08:31:21','562ea23f1de6ae8d2e2c6fe2bb39c3cf',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,5,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31343A7B733A323A226964223B693A343B733A353A22616C696173223B733A343A226C6F7665223B733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A33313A7B733A31303A227461675F6C61796F7574223B733A393A225F3A64656661756C74223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A353B733A31343A2273686F775F7461675F7469746C65223B733A313A2230223B733A32333A227461675F6C6973745F73686F775F7461675F696D616765223B733A313A2230223B733A32393A227461675F6C6973745F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A31343A227461675F6C6973745F696D616765223B733A303A22223B733A31363A227461675F6C6973745F6F726465726279223B733A353A227469746C65223B733A32363A227461675F6C6973745F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A31333A2273686F775F68656164696E6773223B733A313A2230223B733A31383A227461675F6C6973745F73686F775F64617465223B733A313A2230223B733A32343A227461675F6C6973745F73686F775F6974656D5F696D616765223B733A313A2230223B733A33303A227461675F6C6973745F73686F775F6974656D5F6465736372697074696F6E223B733A313A2230223B733A33323A227461675F6C6973745F6974656D5F6D6178696D756D5F63686172616374657273223B693A303B733A31373A2272657475726E5F616E795F6F725F616C6C223B733A313A2231223B733A31363A22696E636C7564655F6368696C6472656E223B733A313A2230223B733A373A226D6178696D756D223B693A3230303B733A32343A227461675F6C6973745F6C616E67756167655F66696C746572223B733A333A22616C6C223B733A31313A22746167735F6C61796F7574223B733A393A225F3A64656661756C74223B733A31363A22616C6C5F746167735F6F726465726279223B733A353A227469746C65223B733A32363A22616C6C5F746167735F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A32333A22616C6C5F746167735F73686F775F7461675F696D616765223B733A313A2230223B733A32393A22616C6C5F746167735F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A33313A22616C6C5F746167735F7461675F6D6178696D756D5F63686172616374657273223B693A32303B733A32323A22616C6C5F746167735F73686F775F7461675F68697473223B733A313A2230223B733A31323A2266696C7465725F6669656C64223B733A313A2231223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31393A227461675F6669656C645F616A61785F6D6F6465223B733A313A2231223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A343A22736C7567223B733A363A22343A6C6F7665223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A333A22746167223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A393A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B693A383B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669645B305D3D343A6C6F7665223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A333A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A333A22546167223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A333B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A32313A2241445420546573742055736572204163636F756E74223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A353B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A343A224C6F7665223B693A31373B693A353B693A31383B733A33393A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669643D34223B7D),
(4,'index.php?option=com_tags&view=tag&id=5','index.php?option=com_tags&view=tag&id[0]=5:joomla-6','Joomla 6','','2026-08-20 08:31:21','640a0ef42150f01a79ae470d21bed291',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,5,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31343A7B733A323A226964223B693A353B733A353A22616C696173223B733A383A226A6F6F6D6C612036223B733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A33313A7B733A31303A227461675F6C61796F7574223B733A393A225F3A64656661756C74223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A353B733A31343A2273686F775F7461675F7469746C65223B733A313A2230223B733A32333A227461675F6C6973745F73686F775F7461675F696D616765223B733A313A2230223B733A32393A227461675F6C6973745F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A31343A227461675F6C6973745F696D616765223B733A303A22223B733A31363A227461675F6C6973745F6F726465726279223B733A353A227469746C65223B733A32363A227461675F6C6973745F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A31333A2273686F775F68656164696E6773223B733A313A2230223B733A31383A227461675F6C6973745F73686F775F64617465223B733A313A2230223B733A32343A227461675F6C6973745F73686F775F6974656D5F696D616765223B733A313A2230223B733A33303A227461675F6C6973745F73686F775F6974656D5F6465736372697074696F6E223B733A313A2230223B733A33323A227461675F6C6973745F6974656D5F6D6178696D756D5F63686172616374657273223B693A303B733A31373A2272657475726E5F616E795F6F725F616C6C223B733A313A2231223B733A31363A22696E636C7564655F6368696C6472656E223B733A313A2230223B733A373A226D6178696D756D223B693A3230303B733A32343A227461675F6C6973745F6C616E67756167655F66696C746572223B733A333A22616C6C223B733A31313A22746167735F6C61796F7574223B733A393A225F3A64656661756C74223B733A31363A22616C6C5F746167735F6F726465726279223B733A353A227469746C65223B733A32363A22616C6C5F746167735F6F7264657262795F646972656374696F6E223B733A333A22415343223B733A32333A22616C6C5F746167735F73686F775F7461675F696D616765223B733A313A2230223B733A32393A22616C6C5F746167735F73686F775F7461675F6465736372697074696F6E223B733A313A2230223B733A33313A22616C6C5F746167735F7461675F6D6178696D756D5F63686172616374657273223B693A32303B733A32323A22616C6C5F746167735F73686F775F7461675F68697473223B733A313A2230223B733A31323A2266696C7465725F6669656C64223B733A313A2231223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31393A227461675F6669656C645F616A61785F6D6F6465223B733A313A2231223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A343A22736C7567223B733A31303A22353A6A6F6F6D6C612D36223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A333A22746167223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A393A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B693A383B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A35313A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669645B305D3D353A6A6F6F6D6C612D36223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A333A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A333A22546167223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A333B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A32313A2241445420546573742055736572204163636F756E74223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A353B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A383A224A6F6F6D6C612036223B693A31373B693A353B693A31383B733A33393A22696E6465782E7068703F6F7074696F6E3D636F6D5F7461677326766965773D7461672669643D35223B7D),
(5,'index.php?option=com_content&view=category&id=8','index.php?option=com_content&view=category&id=8','Blog','','2026-08-20 08:31:21','f9c9c07ad5de896b9464c0732a17f967',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,1,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31373A7B733A323A226964223B693A383B733A353A22616C696173223B733A343A22626C6F67223B733A393A22657874656E73696F6E223B733A31313A22636F6D5F636F6E74656E74223B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A303B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A333A226C6674223B693A31313B733A393A22706172656E745F6964223B693A313B733A353A226C6576656C223B693A313B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A313A7B733A31313A22776F726B666C6F775F6964223B733A313A2232223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A343A22736C7567223B733A363A22383A626C6F67223B733A363A226C61796F7574223B733A383A2263617465676F7279223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D38223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A323A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A383A2243617465676F7279223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A383B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A343A22426C6F67223B693A31373B693A313B693A31383B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D38223B7D),
(6,'index.php?option=com_content&view=category&id=9','index.php?option=com_content&view=category&id=9','Help','','2026-08-20 08:31:21','cb9436aef916fc18d96c9fe3e560e6b5',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,1,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31373A7B733A323A226964223B693A393B733A353A22616C696173223B733A343A2268656C70223B733A393A22657874656E73696F6E223B733A31313A22636F6D5F636F6E74656E74223B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A303B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A333A226C6674223B693A31333B733A393A22706172656E745F6964223B693A313B733A353A226C6576656C223B693A313B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A343A22736C7567223B733A363A22393A68656C70223B733A363A226C61796F7574223B733A383A2263617465676F7279223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D39223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A323A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A383A2243617465676F7279223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A383B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A343A2248656C70223B693A31373B693A313B693A31383B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D39223B7D),
(7,'index.php?option=com_content&view=category&id=10','index.php?option=com_content&view=category&id=10','Joomla','','2026-08-20 08:31:21','dcca8ec1b9c8a7a365145d8884f1bef2',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,1,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31373A7B733A323A226964223B693A31303B733A353A22616C696173223B733A363A226A6F6F6D6C61223B733A393A22657874656E73696F6E223B733A31313A22636F6D5F636F6E74656E74223B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A303B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A333A226C6674223B693A31353B733A393A22706172656E745F6964223B693A313B733A353A226C6576656C223B693A313B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A343A22736C7567223B733A393A2231303A6A6F6F6D6C61223B733A363A226C61796F7574223B733A383A2263617465676F7279223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A34383A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D3130223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A323A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A383A2243617465676F7279223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A383B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A363A224A6F6F6D6C61223B693A31373B693A313B693A31383B733A34383A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D3130223B7D),
(8,'index.php?option=com_content&view=category&id=11','index.php?option=com_content&view=category&id=11','Typography','','2026-08-20 08:31:21','661267e625c7754f2eae9dc3cd004378',1,1,1,'*',NULL,NULL,'2026-08-20 08:31:21',NULL,0,0,1,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A303A22223B693A333B613A31373A7B733A323A226964223B693A31313B733A353A22616C696173223B733A31303A227479706F677261706879223B733A393A22657874656E73696F6E223B733A31313A22636F6D5F636F6E74656E74223B733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A303B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A333A226C6674223B693A31373B733A393A22706172656E745F6964223B693A313B733A353A226C6576656C223B693A313B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2273756D6D617279223B733A303A22223B733A31303A22637265617465645F6279223B693A3638303B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A343A22736C7567223B733A31333A2231313A7479706F677261706879223B733A363A226C61796F7574223B733A383A2263617465676F7279223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A343A226C696E6B223B693A343B733A373A226D6574616B6579223B693A353B733A383A226D65746164657363223B693A363B733A31303A226D657461617574686F72223B693A373B733A363A22617574686F72223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B4E3B693A31303B4E3B693A31313B733A34383A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D3131223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A323A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A383A2243617465676F7279223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A383B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A31303A225479706F677261706879223B693A31373B693A313B693A31383B733A34383A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D63617465676F72792669643D3131223B7D),
(9,'index.php?option=com_content&view=article&id=1','index.php?option=com_content&view=article&id=1:about&catid=9','About',' This tells you a bit about this blog and the person who writes it. When you are logged in you will be able to edit this page by selecting the edit icon. ','2026-08-20 08:31:21','dae45efb2f39342df2020f6ffd2be6be',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A3135343A2220546869732074656C6C7320796F752061206269742061626F7574207468697320626C6F6720616E642074686520706572736F6E2077686F207772697465732069742E205768656E20796F7520617265206C6F6767656420696E20796F752077696C6C2062652061626C6520746F2065646974207468697320706167652062792073656C656374696E672074686520656469742069636F6E2E20223B693A333B613A32353A7B733A323A226964223B693A313B733A353A22616C696173223B733A353A2261626F7574223B733A373A2273756D6D617279223B733A3136353A223C703E546869732074656C6C7320796F752061206269742061626F7574207468697320626C6F6720616E642074686520706572736F6E2077686F207772697465732069742E3C2F703E3C703E5768656E20796F7520617265206C6F6767656420696E20796F752077696C6C2062652061626C6520746F2065646974207468697320706167652062792073656C656374696E672074686520656469742069636F6E2E3C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A303A22223B733A353A226361746964223B693A393B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A2248656C70223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A373A22313A61626F7574223B733A373A22636174736C7567223B733A363A22393A68656C70223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36303A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D313A61626F75742663617469643D39223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A2248656C70223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31323B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A353A2241626F7574223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D31223B7D),
(10,'index.php?option=com_content&view=article&id=2','index.php?option=com_content&view=article&id=2:working-on-your-site&catid=9','Working on Your Site',' Here are some basic tips for working on your site. Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site. One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator. To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla. As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them. When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will. You can learn much more about working with Joomla from the Joomla documentation site and get help from other users at the Joomla forums. In the administrator there are help buttons on every page that provide detailed information about the functions on that page. ','2026-08-20 08:31:21','806a19b9e4c657ddf32c7dc18355bd40',1,1,3,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A333B693A313B733A353A22656E2D4742223B693A323B733A313639323A2220486572652061726520736F6D65206261736963207469707320666F7220776F726B696E67206F6E20796F757220736974652E204A6F6F6D6C6121206861732061202766726F6E7420656E6427207468617420796F7520617265206C6F6F6B696E67206174206E6F7720616E6420616E202761646D696E6973747261746F7227206F7220276261636B20656E642720776869636820697320776865726520796F7520646F20746865206D6F726520616476616E63656420776F726B206F66206372656174696E6720796F7572207369746520737563682061732073657474696E6720757020746865206D656E757320616E64206465636964696E672077686174206D6F64756C657320746F2073686F772E20596F75206E65656420746F206C6F67696E20746F207468652061646D696E6973747261746F722073657061726174656C79207573696E67207468652073616D652075736572206E616D6520616E642070617373776F7264207468617420796F75207573656420746F206C6F67696E20746F20746869732070617274206F662074686520736974652E204F6E65206F6620746865206669727374207468696E677320796F752077696C6C2070726F6261626C792077616E7420746F20646F206973206368616E6765207468652073697465207469746C6520616E6420746167206C696E6520616E6420746F206164642061206C6F676F2E20546F20646F20746869732073656C656374207468652054656D706C6174652053657474696E6773206C696E6B20696E20746865206D656E752077686963682069732076697369626C6520696620796F75206C6F6720696E2E20546F206368616E676520796F75722073697465206465736372697074696F6E2C2062726F77736572207469746C652C2064656661756C7420656D61696C20616E64206F74686572206974656D732C2073656C65637420536974652053657474696E67732E204D6F726520616476616E63656420636F6E66696775726174696F6E206F7074696F6E732061726520617661696C61626C6520696E207468652061646D696E6973747261746F722E20546F20746F74616C6C79206368616E676520746865206C6F6F6B206F6620796F7572207369746520796F752077696C6C2070726F6261626C792077616E7420746F20696E7374616C6C2061206E65772074656D706C6174652E20476F20746F2053797374656D2C2073656C65637420496E7374616C6C202D20457874656E73696F6E732066726F6D20746865206C69737420616E642074686520657874656E73696F6E20696E7374616C6C65722077696C6C206F70656E2E20546865726520617265206D616E79206672656520616E6420636F6D6D65726369616C2074656D706C6174657320617661696C61626C6520666F72204A6F6F6D6C612E20417320796F75206861766520616C7265616479207365656E2C20796F752063616E20636F6E74726F6C2077686F2063616E2073656520646966666572656E74207061727473206F6620796F7520736974652E205768656E20796F7520776F726B2077697468206D6F64756C657320616E642061727469636C65732C2073657474696E672074686520416363657373206C6576656C20746F20526567697374657265642077696C6C206D65616E2074686174206F6E6C79206C6F6767656420696E2075736572732063616E20736565207468656D2E205768656E20796F75206372656174652061206E65772061727469636C65206F72206F74686572206B696E64206F6620636F6E74656E7420796F7520616C736F2063616E2073617665206974206173205075626C6973686564206F7220556E7075626C69736865642E20496620697420697320556E7075626C697368656420736974652076697369746F72732077696C6C206E6F742062652061626C6520746F207365652069742062757420796F752077696C6C2E20596F752063616E206C6561726E206D756368206D6F72652061626F757420776F726B696E672077697468204A6F6F6D6C612066726F6D20746865204A6F6F6D6C6120646F63756D656E746174696F6E207369746520616E64206765742068656C702066726F6D206F7468657220757365727320617420746865204A6F6F6D6C6120666F72756D732E20496E207468652061646D696E6973747261746F72207468657265206172652068656C7020627574746F6E73206F6E206576657279207061676520746861742070726F766964652064657461696C656420696E666F726D6174696F6E2061626F7574207468652066756E6374696F6E73206F6E207468617420706167652E20223B693A333B613A32353A7B733A323A226964223B693A323B733A353A22616C696173223B733A32303A22776F726B696E67206F6E20796F75722073697465223B733A373A2273756D6D617279223B733A313931373A223C703E486572652061726520736F6D65206261736963207469707320666F7220776F726B696E67206F6E20796F757220736974652E3C2F703E3C756C3E3C6C693E4A6F6F6D6C6121206861732061202766726F6E7420656E6427207468617420796F7520617265206C6F6F6B696E67206174206E6F7720616E6420616E202761646D696E6973747261746F7227206F7220276261636B20656E642720776869636820697320776865726520796F7520646F20746865206D6F726520616476616E63656420776F726B206F66206372656174696E6720796F7572207369746520737563682061732073657474696E6720757020746865206D656E757320616E64206465636964696E672077686174206D6F64756C657320746F2073686F772E20596F75206E65656420746F206C6F67696E20746F207468652061646D696E6973747261746F722073657061726174656C79207573696E67207468652073616D652075736572206E616D6520616E642070617373776F7264207468617420796F75207573656420746F206C6F67696E20746F20746869732070617274206F662074686520736974652E3C2F6C693E3C6C693E4F6E65206F6620746865206669727374207468696E677320796F752077696C6C2070726F6261626C792077616E7420746F20646F206973206368616E6765207468652073697465207469746C6520616E6420746167206C696E6520616E6420746F206164642061206C6F676F2E20546F20646F20746869732073656C656374207468652054656D706C6174652053657474696E6773206C696E6B20696E20746865206D656E752077686963682069732076697369626C6520696620796F75206C6F6720696E2E20546F206368616E676520796F75722073697465206465736372697074696F6E2C2062726F77736572207469746C652C2064656661756C7420656D61696C20616E64206F74686572206974656D732C2073656C65637420536974652053657474696E67732E204D6F726520616476616E63656420636F6E66696775726174696F6E206F7074696F6E732061726520617661696C61626C6520696E207468652061646D696E6973747261746F722E3C2F6C693E3C6C693E546F20746F74616C6C79206368616E676520746865206C6F6F6B206F6620796F7572207369746520796F752077696C6C2070726F6261626C792077616E7420746F20696E7374616C6C2061206E65772074656D706C6174652E20476F20746F2053797374656D2C2073656C65637420496E7374616C6C202D20457874656E73696F6E732066726F6D20746865206C69737420616E642074686520657874656E73696F6E20696E7374616C6C65722077696C6C206F70656E2E20546865726520617265206D616E79206672656520616E6420636F6D6D65726369616C2074656D706C6174657320617661696C61626C6520666F72204A6F6F6D6C612E3C2F6C693E3C6C693E417320796F75206861766520616C7265616479207365656E2C20796F752063616E20636F6E74726F6C2077686F2063616E2073656520646966666572656E74207061727473206F6620796F7520736974652E205768656E20796F7520776F726B2077697468206D6F64756C657320616E642061727469636C65732C2073657474696E672074686520416363657373206C6576656C20746F20526567697374657265642077696C6C206D65616E2074686174206F6E6C79206C6F6767656420696E2075736572732063616E20736565207468656D2E3C2F6C693E3C6C693E5768656E20796F75206372656174652061206E65772061727469636C65206F72206F74686572206B696E64206F6620636F6E74656E7420796F7520616C736F2063616E2073617665206974206173205075626C6973686564206F7220556E7075626C69736865642E20496620697420697320556E7075626C697368656420736974652076697369746F72732077696C6C206E6F742062652061626C6520746F207365652069742062757420796F752077696C6C2E3C2F6C693E3C6C693E596F752063616E206C6561726E206D756368206D6F72652061626F757420776F726B696E672077697468204A6F6F6D6C612066726F6D20746865203C6120687265663D2268747470733A2F2F646F63732E6A6F6F6D6C612E6F72672F22207461726765743D225F626C616E6B222072656C3D226E6F6F70656E6572206E6F7265666572726572223E4A6F6F6D6C6120646F63756D656E746174696F6E20736974653C2F613E20616E64206765742068656C702066726F6D206F7468657220757365727320617420746865203C6120687265663D2268747470733A2F2F666F72756D2E6A6F6F6D6C612E6F72672F22207461726765743D225F626C616E6B222072656C3D226E6F6F70656E6572206E6F7265666572726572223E4A6F6F6D6C6120666F72756D733C2F613E2E20496E207468652061646D696E6973747261746F72207468657265206172652068656C7020627574746F6E73206F6E206576657279207061676520746861742070726F766964652064657461696C656420696E666F726D6174696F6E2061626F7574207468652066756E6374696F6E73206F6E207468617420706167652E3C2F6C693E3C2F756C3E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A303A22223B733A353A226361746964223B693A393B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A2248656C70223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A32323A22323A776F726B696E672D6F6E2D796F75722D73697465223B733A373A22636174736C7567223B733A363A22393A68656C70223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A37353A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D323A776F726B696E672D6F6E2D796F75722D736974652663617469643D39223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A2248656C70223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31323B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A32303A22576F726B696E67206F6E20596F75722053697465223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D32223B7D),
(11,'index.php?option=com_content&view=article&id=3','index.php?option=com_content&view=article&id=3:welcome-to-your-blog&catid=8','Welcome to your blog',' This is a sample blog posting. If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site. As you add and modify articles you will see how your site changes and also how you can customise it in various ways. Go ahead, you can\'t break it. ','2026-08-20 08:31:21','18147a707bdef7603cb506b9b8b0dcb3',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A3432313A22205468697320697320612073616D706C6520626C6F6720706F7374696E672E20496620796F75206C6F6720696E20746F20746865207369746520287468652041646D696E6973747261746F72204C6F67696E206C696E6B206973206F6E20746865207665727920626F74746F6D206F66207468697320706167652920796F752077696C6C2062652061626C6520746F206564697420697420616E6420616C6C206F6620746865206F74686572206578697374696E672061727469636C65732E20596F752077696C6C20616C736F2062652061626C6520746F206372656174652061206E65772061727469636C6520616E64206D616B65206F74686572206368616E67657320746F2074686520736974652E20417320796F752061646420616E64206D6F646966792061727469636C657320796F752077696C6C2073656520686F7720796F75722073697465206368616E67657320616E6420616C736F20686F7720796F752063616E20637573746F6D69736520697420696E20766172696F757320776179732E20476F2061686561642C20796F752063616E277420627265616B2069742E20223B693A333B613A32373A7B733A323A226964223B693A333B733A353A22616C696173223B733A32303A2277656C636F6D6520746F20796F757220626C6F67223B733A373A2273756D6D617279223B733A3434343A223C703E5468697320697320612073616D706C6520626C6F6720706F7374696E672E3C2F703E3C703E496620796F75206C6F6720696E20746F20746865207369746520287468652041646D696E6973747261746F72204C6F67696E206C696E6B206973206F6E20746865207665727920626F74746F6D206F66207468697320706167652920796F752077696C6C2062652061626C6520746F206564697420697420616E6420616C6C206F6620746865206F74686572206578697374696E672061727469636C65732E20596F752077696C6C20616C736F2062652061626C6520746F206372656174652061206E65772061727469636C6520616E64206D616B65206F74686572206368616E67657320746F2074686520736974652E3C2F703E3C703E417320796F752061646420616E64206D6F646966792061727469636C657320796F752077696C6C2073656520686F7720796F75722073697465206368616E67657320616E6420616C736F20686F7720796F752063616E20637573746F6D69736520697420696E20766172696F757320776179732E3C2F703E3C703E476F2061686561642C20796F752063616E277420627265616B2069742E3C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A3537333A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D313230302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D313230302E6A70673F77696474683D31323030266865696768743D343030222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22416D617A696E6720416E64726F6D6564612047616C617879222C22696D6167655F696E74726F5F616C745F656D707479223A22222C22696D6167655F696E74726F5F63617074696F6E223A22222C22696D6167655F66756C6C74657874223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D3430302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D3430302E6A70673F77696474683D343030266865696768743D343030222C22666C6F61745F66756C6C74657874223A22666C6F61742D7374617274222C22696D6167655F66756C6C746578745F616C74223A22222C22696D6167655F66756C6C746578745F616C745F656D707479223A312C22696D6167655F66756C6C746578745F63617074696F6E223A227777772E6E6173612E676F765C2F6D756C74696D656469615C2F696D61676567616C6C657279227D223B733A353A226361746964223B693A383B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A22426C6F67223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A32323A22333A77656C636F6D652D746F2D796F75722D626C6F67223B733A373A22636174736C7567223B733A363A22383A626C6F67223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132393A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361312D313230302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361312D313230302E6A70673F77696474683D31323030266865696768743D343030223B733A383A22696D616765416C74223B733A32343A22416D617A696E6720416E64726F6D6564612047616C617879223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A37353A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D333A77656C636F6D652D746F2D796F75722D626C6F672663617469643D38223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A22426C6F67223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31333B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A32303A2257656C636F6D6520746F20796F757220626C6F67223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D33223B7D),
(12,'index.php?option=com_content&view=article&id=4','index.php?option=com_content&view=article&id=4:about-your-home-page&catid=8','About your home page',' Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in. If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break. ','2026-08-20 08:31:21','3bd295e805d8c80ef0ad6785e13a0eff',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A3438363A2220596F757220686F6D6520706167652069732073657420746F20646973706C61792074686520666F7572206D6F737420726563656E742061727469636C65732066726F6D2074686520626C6F672063617465676F727920696E206120636F6C756D6E2E205468656E20746865726520617265206C696E6B7320746F20746865206E6578742074776F206F6C646573742061727469636C65732E20596F752063616E206368616E67652074686F7365206E756D626572732062792065646974696E672074686520636F6E74656E74206F7074696F6E732073657474696E677320696E2074686520626C6F672074616220696E20796F757220736974652061646D696E6973747261746F722E2054686572652069732061206C696E6B20746F20796F757220736974652061646D696E6973747261746F7220696620796F7520617265206C6F6767656420696E2E20496620796F752077616E7420746F206861766520796F757220626C6F6720706F73742062726F6B656E20696E746F2074776F2070617274732C20616E20696E74726F64756374696F6E20616E64207468656E20612066756C6C206C656E67746820736570617261746520706167652C20757365207468652052656164204D6F7265207370616E20746F20696E73657274206120627265616B2E20223B693A333B613A32373A7B733A323A226964223B693A343B733A353A22616C696173223B733A32303A2261626F757420796F757220686F6D652070616765223B733A373A2273756D6D617279223B733A3439373A223C703E596F757220686F6D6520706167652069732073657420746F20646973706C61792074686520666F7572206D6F737420726563656E742061727469636C65732066726F6D2074686520626C6F672063617465676F727920696E206120636F6C756D6E2E205468656E20746865726520617265206C696E6B7320746F20746865206E6578742074776F206F6C646573742061727469636C65732E20596F752063616E206368616E67652074686F7365206E756D626572732062792065646974696E672074686520636F6E74656E74206F7074696F6E732073657474696E677320696E2074686520626C6F672074616220696E20796F757220736974652061646D696E6973747261746F722E2054686572652069732061206C696E6B20746F20796F757220736974652061646D696E6973747261746F7220696620796F7520617265206C6F6767656420696E2E3C2F703E3C703E496620796F752077616E7420746F206861766520796F757220626C6F6720706F73742062726F6B656E20696E746F2074776F2070617274732C20616E20696E74726F64756374696F6E20616E64207468656E20612066756C6C206C656E67746820736570617261746520706167652C20757365207468652052656164204D6F7265207370616E20746F20696E73657274206120627265616B2E3C2F703E223B733A343A22626F6479223B733A3136313A223C703E4F6E207468652066756C6C207061676520796F752077696C6C2073656520626F74682074686520696E74726F647563746F727920636F6E74656E7420616E64207468652072657374206F66207468652061727469636C652E20596F752063616E206368616E6765207468652073657474696E677320746F20686964652074686520696E74726F64756374696F6E20696620796F752077616E742E3C2F703E223B733A363A22696D61676573223B733A3534383A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D313230302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D313230302E6A70673F77696474683D31323030266865696768743D343030222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22222C22696D6167655F66756C6C74657874223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D3430302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D3430302E6A70673F77696474683D343030266865696768743D343030222C22666C6F61745F66756C6C74657874223A22666C6F61742D7374617274222C22696D6167655F66756C6C746578745F616C74223A22222C22696D6167655F66756C6C746578745F616C745F656D707479223A312C22696D6167655F66756C6C746578745F63617074696F6E223A227777772E6E6173612E676F765C2F6D756C74696D656469615C2F696D61676567616C6C657279227D223B733A353A226361746964223B693A383B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A22426C6F67223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A32323A22343A61626F75742D796F75722D686F6D652D70616765223B733A373A22636174736C7567223B733A363A22383A626C6F67223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132393A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361322D313230302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361322D313230302E6A70673F77696474683D31323030266865696768743D343030223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A37353A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D343A61626F75742D796F75722D686F6D652D706167652663617469643D38223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A22426C6F67223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31333B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A32303A2241626F757420796F757220686F6D652070616765223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D34223B7D),
(13,'index.php?option=com_content&view=article&id=5','index.php?option=com_content&view=article&id=5:your-modules&catid=8','Your Modules',' Your site has some commonly used modules already preconfigured. These include: Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image. Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing. Older Posts (type: Articles), which lists out articles by categories. Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader. Login Form (type: Login), which allows your users to access restricted areas of the website. Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit. Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the Joomla Extensions Directory. ','2026-08-20 08:31:21','4028f1486430127663f854d441ef3b6a',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A313130323A2220596F757220736974652068617320736F6D6520636F6D6D6F6E6C792075736564206D6F64756C657320616C726561647920707265636F6E666967757265642E20546865736520696E636C7564653A20496D6167652028747970653A20437573746F6D292C20776869636820686F6C64732074686520696D6167652062656E6561746820746865206D656E752E2054686973206973206120437573746F6D206D6F64756C65207468617420796F752063616E206564697420746F206368616E67652074686520696D6167652E20506F70756C617220546167732028747970653A2054616773202D20506F70756C6172292C2077686963682077696C6C2061707065617220696620796F75207573652074616767696E67206F6E20796F75722061727469636C65732E20456E74657220612074616720696E207468652054616773206669656C64207768656E2065646974696E672E204F6C64657220506F7374732028747970653A2041727469636C6573292C207768696368206C69737473206F75742061727469636C65732062792063617465676F726965732E2053796E6469636174696F6E2028747970653A2053796E6469636174696F6E204665656473292C20776869636820616C6C6F777320796F7572207265616465727320746F207265616420796F757220706F73747320696E2061206E657773207265616465722E204C6F67696E20466F726D2028747970653A204C6F67696E292C20776869636820616C6C6F777320796F757220757365727320746F206163636573732072657374726963746564206172656173206F662074686520776562736974652E2045616368206F66207468657365206D6F64756C657320686173206D616E79206F7074696F6E7320776869636820796F752063616E206578706572696D656E74207769746820696E20746865204D6F64756C65204D616E6167657220696E20796F757220736974652041646D696E6973747261746F722E205768656E20796F7520617265206C6F6767656420696E20796F752063616E20616C736F2073656C6563742074686520656469742069636F6E20696E2074686520746F7020726967687420636F726E65722077686963682077696C6C2074616B6520796F7520746F20616E20656469742073637265656E20666F722074686174206D6F64756C652E20416C77617973206265207375726520746F207361766520616E6420636C6F736520616E79206D6F64756C6520796F7520656469742E204A6F6F6D6C612120616C736F20696E636C75646573206D616E79206F74686572206D6F64756C657320796F752063616E20696E636F72706F7261746520696E20796F757220736974652E20417320796F7520646576656C6F7020796F7572207369746520796F75206D61792077616E7420746F20616464206D6F7265206D6F64756C6573207468617420796F752063616E2066696E6420617420746865204A6F6F6D6C6120457874656E73696F6E73204469726563746F72792E20223B693A333B613A32373A7B733A323A226964223B693A353B733A353A22616C696173223B733A31323A22796F7572206D6F64756C6573223B733A373A2273756D6D617279223B733A313235353A223C703E596F757220736974652068617320736F6D6520636F6D6D6F6E6C792075736564206D6F64756C657320616C726561647920707265636F6E666967757265642E20546865736520696E636C7564653A3C2F703E3C756C3E3C6C693E496D6167652028747970653A20437573746F6D292C20776869636820686F6C64732074686520696D6167652062656E6561746820746865206D656E752E2054686973206973206120437573746F6D206D6F64756C65207468617420796F752063616E206564697420746F206368616E67652074686520696D6167652E3C2F6C693E3C6C693E506F70756C617220546167732028747970653A2054616773202D20506F70756C6172292C2077686963682077696C6C2061707065617220696620796F75207573652074616767696E67206F6E20796F75722061727469636C65732E20456E74657220612074616720696E207468652054616773206669656C64207768656E2065646974696E672E3C2F6C693E3C6C693E4F6C64657220506F7374732028747970653A2041727469636C6573292C207768696368206C69737473206F75742061727469636C65732062792063617465676F726965732E3C2F6C693E3C6C693E53796E6469636174696F6E2028747970653A2053796E6469636174696F6E204665656473292C20776869636820616C6C6F777320796F7572207265616465727320746F207265616420796F757220706F73747320696E2061206E657773207265616465722E3C2F6C693E3C6C693E4C6F67696E20466F726D2028747970653A204C6F67696E292C20776869636820616C6C6F777320796F757220757365727320746F206163636573732072657374726963746564206172656173206F662074686520776562736974652E3C2F6C693E3C2F756C3E3C703E45616368206F66207468657365206D6F64756C657320686173206D616E79206F7074696F6E7320776869636820796F752063616E206578706572696D656E74207769746820696E20746865204D6F64756C65204D616E6167657220696E20796F757220736974652041646D696E6973747261746F722E205768656E20796F7520617265206C6F6767656420696E20796F752063616E20616C736F2073656C6563742074686520656469742069636F6E20696E2074686520746F7020726967687420636F726E65722077686963682077696C6C2074616B6520796F7520746F20616E20656469742073637265656E20666F722074686174206D6F64756C652E20416C77617973206265207375726520746F207361766520616E6420636C6F736520616E79206D6F64756C6520796F7520656469742E3C2F703E3C703E4A6F6F6D6C612120616C736F20696E636C75646573206D616E79206F74686572206D6F64756C657320796F752063616E20696E636F72706F7261746520696E20796F757220736974652E20417320796F7520646576656C6F7020796F7572207369746520796F75206D61792077616E7420746F20616464206D6F7265206D6F64756C6573207468617420796F752063616E2066696E6420617420746865203C6120687265663D2268747470733A2F2F657874656E73696F6E732E6A6F6F6D6C612E6F72672F22207461726765743D225F626C616E6B222072656C3D226E6F6F70656E6572206E6F7265666572726572223E4A6F6F6D6C6120457874656E73696F6E73204469726563746F72792E3C2F613E3C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A3536303A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D313230302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D313230302E6A70673F77696474683D31323030266865696768743D343030222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22222C22696D6167655F66756C6C74657874223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D3430302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D3430302E6A70673F77696474683D343030266865696768743D343030222C22666C6F61745F66756C6C74657874223A22666C6F61742D7374617274222C22696D6167655F66756C6C746578745F616C74223A2243726162204E6562756C61222C22696D6167655F66756C6C746578745F616C745F656D707479223A22222C22696D6167655F66756C6C746578745F63617074696F6E223A227777772E6E6173612E676F765C2F6D756C74696D656469615C2F696D61676567616C6C657279227D223B733A353A226361746964223B693A383B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A22426C6F67223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A31343A22353A796F75722D6D6F64756C6573223B733A373A22636174736C7567223B733A363A22383A626C6F67223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132393A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361332D313230302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361332D313230302E6A70673F77696474683D31323030266865696768743D343030223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D353A796F75722D6D6F64756C65732663617469643D38223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A22426C6F67223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31333B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A31323A22596F7572204D6F64756C6573223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D35223B7D),
(14,'index.php?option=com_content&view=article&id=6','index.php?option=com_content&view=article&id=6:your-template&catid=8','Your Template',' Templates control the look and feel of your website. This blog is installed with the Cassiopeia template. You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in. For example you can change the site background colour, highlights colour, site title, site description and title font used. More options are available in the site administrator. You may also install a new template using the extension manager. ','2026-08-20 08:31:21','147641875990a7ae30eab44cdbf59955',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A3438333A222054656D706C6174657320636F6E74726F6C20746865206C6F6F6B20616E64206665656C206F6620796F757220776562736974652E205468697320626C6F6720697320696E7374616C6C65642077697468207468652043617373696F706569612074656D706C6174652E20596F752063616E206564697420746865206F7074696F6E732062792073656C656374696E672074686520576F726B696E67206F6E20596F757220536974652C2054656D706C6174652053657474696E6773206C696E6B20696E20746865206D656E752077686963682069732076697369626C65207768656E20796F75206C6F6720696E2E20466F72206578616D706C6520796F752063616E206368616E6765207468652073697465206261636B67726F756E6420636F6C6F75722C20686967686C696768747320636F6C6F75722C2073697465207469746C652C2073697465206465736372697074696F6E20616E64207469746C6520666F6E7420757365642E204D6F7265206F7074696F6E732061726520617661696C61626C6520696E2074686520736974652061646D696E6973747261746F722E20596F75206D617920616C736F20696E7374616C6C2061206E65772074656D706C617465207573696E672074686520657874656E73696F6E206D616E616765722E20223B693A333B613A32373A7B733A323A226964223B693A363B733A353A22616C696173223B733A31333A22796F75722074656D706C617465223B733A373A2273756D6D617279223B733A3531323A223C703E54656D706C6174657320636F6E74726F6C20746865206C6F6F6B20616E64206665656C206F6620796F757220776562736974652E3C2F703E3C703E5468697320626C6F6720697320696E7374616C6C65642077697468207468652043617373696F706569612074656D706C6174652E3C2F703E3C703E596F752063616E206564697420746865206F7074696F6E732062792073656C656374696E672074686520576F726B696E67206F6E20596F757220536974652C2054656D706C6174652053657474696E6773206C696E6B20696E20746865206D656E752077686963682069732076697369626C65207768656E20796F75206C6F6720696E2E3C2F703E3C703E466F72206578616D706C6520796F752063616E206368616E6765207468652073697465206261636B67726F756E6420636F6C6F75722C20686967686C696768747320636F6C6F75722C2073697465207469746C652C2073697465206465736372697074696F6E20616E64207469746C6520666F6E7420757365642E3C2F703E3C703E4D6F7265206F7074696F6E732061726520617661696C61626C6520696E2074686520736974652061646D696E6973747261746F722E20596F75206D617920616C736F20696E7374616C6C2061206E65772074656D706C617465207573696E672074686520657874656E73696F6E206D616E616765722E3C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A3534383A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D313230302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D313230302E6A70673F77696474683D31323030266865696768743D343030222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22222C22696D6167655F66756C6C74657874223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D3430302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D3430302E6A70673F77696474683D343030266865696768743D343030222C22666C6F61745F66756C6C74657874223A22666C6F61742D7374617274222C22696D6167655F66756C6C746578745F616C74223A22222C22696D6167655F66756C6C746578745F616C745F656D707479223A312C22696D6167655F66756C6C746578745F63617074696F6E223A227777772E6E6173612E676F765C2F6D756C74696D656469615C2F696D61676567616C6C657279227D223B733A353A226361746964223B693A383B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A22426C6F67223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A31353A22363A796F75722D74656D706C617465223B733A373A22636174736C7567223B733A363A22383A626C6F67223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132393A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361342D313230302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361342D313230302E6A70673F77696474683D31323030266865696768743D343030223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36383A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D363A796F75722D74656D706C6174652663617469643D38223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A22426C6F67223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31333B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A31333A22596F75722054656D706C617465223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D36223B7D),
(15,'index.php?option=com_content&view=article&id=7','index.php?option=com_content&view=article&id=7:millions&catid=10','Millions',' Millions of Websites are built on Joomla! Learn more about beautiful blog presentation. ','2026-08-20 08:31:21','55062a4bef8a594d5d34a55f0772ecbd',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A38393A22204D696C6C696F6E73206F6620576562736974657320617265206275696C74206F6E204A6F6F6D6C6121204C6561726E206D6F72652061626F75742062656175746966756C20626C6F672070726573656E746174696F6E2E20223B693A333B613A32373A7B733A323A226964223B693A373B733A353A22616C696173223B733A383A226D696C6C696F6E73223B733A373A2273756D6D617279223B733A3131373A223C703E3C7374726F6E673E4D696C6C696F6E73206F6620576562736974657320617265206275696C74206F6E204A6F6F6D6C61213C2F7374726F6E673E3C2F703E3C703E4C6561726E206D6F72652061626F75742062656175746966756C20626C6F672070726573656E746174696F6E2E3C2F703E223B733A343A22626F6479223B733A3237343A223C703E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E736574657475722073616469707363696E6720656C6974722C20736564206469616D206E6F6E756D79206569726D6F642074656D706F7220696E766964756E74207574206C61626F726520657420646F6C6F7265206D61676E6120616C69717579616D20657261742C20736564206469616D20766F6C75707475612E204174207665726F20656F73206574206163637573616D206574206A7573746F2064756F20646F6C6F72657320657420656120726562756D2E205374657420636C697461206B6173642067756265726772656E2C206E6F207365612074616B696D6174612073616E63747573206573743C2F703E223B733A363A22696D61676573223B733A3234313A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D3634302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361312D3634302E6A70673F77696474683D363430266865696768743D333230222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22227D223B733A353A226361746964223B693A31303B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A363A224A6F6F6D6C61223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A31303A22373A6D696C6C696F6E73223B733A373A22636174736C7567223B733A393A2231303A6A6F6F6D6C61223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132363A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361312D3634302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361312D3634302E6A70673F77696474683D363430266865696768743D333230223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36343A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D373A6D696C6C696F6E732663617469643D3130223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31343B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A383A224D696C6C696F6E73223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D37223B7D),
(16,'index.php?option=com_content&view=article&id=8','index.php?option=com_content&view=article&id=8:love&catid=10','Love',' We love Joomla to the moon and back! Thank you to all volunteers who have contributed! ','2026-08-20 08:31:21','9f1ab7efd9c37073477fa8a8689b5d92',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A38383A22205765206C6F7665204A6F6F6D6C6120746F20746865206D6F6F6E20616E64206261636B21205468616E6B20796F7520746F20616C6C20766F6C756E74656572732077686F206861766520636F6E74726962757465642120223B693A333B613A32373A7B733A323A226964223B693A383B733A353A22616C696173223B733A343A226C6F7665223B733A373A2273756D6D617279223B733A3131363A223C703E3C7374726F6E673E5765206C6F7665204A6F6F6D6C6120746F20746865206D6F6F6E20616E64206261636B213C2F7374726F6E673E3C2F703E3C703E5468616E6B20796F7520746F20616C6C20766F6C756E74656572732077686F206861766520636F6E7472696275746564213C2F703E223B733A343A22626F6479223B733A3535373A223C703E5575726E697020677265656E7320796172726F7720726963656265616E20727574616261676120656E64697665206361756C69666C6F77657220736561206C657474756365206B6F686C7261626920616D6172616E7468207761746572207370696E6163682061766F6361646F206461696B6F6E206E6170612063616262616765206173706172616775732077696E74657220707572736C616E65206B616C652E2043656C65727920706F7461746F207363616C6C696F6E206465736572742072616973696E20686F727365726164697368207370696E61636820636172726F7420736F6B6F2E204C6F74757320726F6F74207761746572207370696E6163682066656E6E656C206B6F6D6275206D61697A652062616D626F6F2073686F6F7420677265656E206265616E207377697373206368617264207365616B616C652070756D706B696E206F6E696F6E20636869636B706561206772616D20636F726E207065612E204272757373656C73207370726F757420636F7269616E6465722077617465722063686573746E757420676F7572642073776973732063686172642077616B616D65206B6F686C726162692062656574726F6F7420636172726F7420776174657263726573732E20436F726E20616D6172616E74682073616C736966792062756E7961206E757473206E6F726920617A756B69206265616E20636869636B7765656420706F7461746F2062656C6C20706570706572206172746963686F6B652E3C2F703E20223B733A363A22696D61676573223B733A3234313A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D3634302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361322D3634302E6A70673F77696474683D363430266865696768743D333230222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22227D223B733A353A226361746964223B693A31303B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A363A224A6F6F6D6C61223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A363A22383A6C6F7665223B733A373A22636174736C7567223B733A393A2231303A6A6F6F6D6C61223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132363A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361322D3634302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361322D3634302E6A70673F77696474683D363430266865696768743D333230223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36303A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D383A6C6F76652663617469643D3130223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31343B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A343A224C6F7665223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D38223B7D),
(17,'index.php?option=com_content&view=article&id=9','index.php?option=com_content&view=article&id=9:joomla&catid=10','Joomla',' We proudly present Joomla Version 6! Learn more about workflows in Joomla. ','2026-08-20 08:31:21','e84e0f52eb3e19a8d8840739a771c6fb',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A37363A222057652070726F75646C792070726573656E74204A6F6F6D6C612056657273696F6E203621204C6561726E206D6F72652061626F757420776F726B666C6F777320696E204A6F6F6D6C612E20223B693A333B613A32373A7B733A323A226964223B693A393B733A353A22616C696173223B733A363A226A6F6F6D6C61223B733A373A2273756D6D617279223B733A3130343A223C703E3C7374726F6E673E57652070726F75646C792070726573656E74204A6F6F6D6C612056657273696F6E2036213C2F7374726F6E673E3C2F703E3C703E4C6561726E206D6F72652061626F757420776F726B666C6F777320696E204A6F6F6D6C612E3C2F703E223B733A343A22626F6479223B733A3339353A223C703E43757063616B6520697073756D20646F6C6F722E2053697420616D657420636F74746F6E2063616E64792069636520637265616D20736573616D6520736E6170732063616B65206D617273686D616C6C6F7720706F776465722E2049636520637265616D2063686F636F6C6174652063616B65206D617273686D616C6C6F772068616C76616820626F6E626F6E2E2044726167C3A96520636172726F742063616B652064616E6973682063616E6479206D756666696E2062726F776E69652E2043616E647920737567617220706C756D2069636520637265616D206368757061206368757073206D616361726F6F6E20746972616D69737520736F7566666CC3A9206F61742063616B652E20546F7070696E672063686565736563616B65206C6F6C6C69706F702067756D6D69206265617273206963696E6720737765657420726F6C6C20646F6E7574206C6971756F726963652E20506965206A656C6C792D6F2063616E647920646F6E7574206F61742063616B6520636F74746F6E2063616E64792E3C2F703E223B733A363A22696D61676573223B733A3234313A227B22696D6167655F696E74726F223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D3634302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361332D3634302E6A70673F77696474683D363430266865696768743D333230222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A312C22696D6167655F696E74726F5F63617074696F6E223A22227D223B733A353A226361746964223B693A31303B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A363A224A6F6F6D6C61223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A383A22393A6A6F6F6D6C61223B733A373A22636174736C7567223B733A393A2231303A6A6F6F6D6C61223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A383A22696D61676555726C223B733A3132363A22696D616765732F73616D706C65646174612F63617373696F706569612F6E617361332D3634302E6A7067236A6F6F6D6C61496D6167653A2F2F6C6F63616C2D696D616765732F73616D706C65646174612F63617373696F706569612F6E617361332D3634302E6A70673F77696474683D363430266865696768743D333230223B733A383A22696D616765416C74223B733A303A22223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36323A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D393A6A6F6F6D6C612663617469643D3130223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31343B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A363A224A6F6F6D6C61223B693A31373B693A333B693A31383B733A34363A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D39223B7D),
(18,'index.php?option=com_content&view=article&id=10','index.php?option=com_content&view=article&id=10:workflows&catid=9','Workflows',' Workflows manage the stages your articles must go through until they are published. The component to manage workflows is not enabled by default. To see the workflow that we have provided with the sample data, you first need to enable this functionality. Access the administration area From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\' Save changes Now when you access \'Content\' again you will see the section \'Workflows\'. When you edit an article you will also see the new transitions for articles related to workflows. ','2026-08-20 08:31:21','c4a3f90f62e7d7514c57e8a351a3860b',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A3536323A2220576F726B666C6F7773206D616E616765207468652073746167657320796F75722061727469636C6573206D75737420676F207468726F75676820756E74696C207468657920617265207075626C69736865642E2054686520636F6D706F6E656E7420746F206D616E61676520776F726B666C6F7773206973206E6F7420656E61626C65642062792064656661756C742E20546F207365652074686520776F726B666C6F77207468617420776520686176652070726F76696465642077697468207468652073616D706C6520646174612C20796F75206669727374206E65656420746F20656E61626C6520746869732066756E6374696F6E616C6974792E20416363657373207468652061646D696E697374726174696F6E20617265612046726F6D2027436F6E74656E7427203E202741727469636C657327203E20274F7074696F6E7327203E2027496E746567726174696F6E2720746162207365742027456E61626C6520776F726B666C6F772720746F2027596573272053617665206368616E676573204E6F77207768656E20796F75206163636573732027436F6E74656E742720616761696E20796F752077696C6C20736565207468652073656374696F6E2027576F726B666C6F7773272E205768656E20796F75206564697420616E2061727469636C6520796F752077696C6C20616C736F2073656520746865206E6577207472616E736974696F6E7320666F722061727469636C65732072656C6174656420746F20776F726B666C6F77732E20223B693A333B613A32353A7B733A323A226964223B693A31303B733A353A22616C696173223B733A393A22776F726B666C6F7773223B733A373A2273756D6D617279223B733A3632343A223C703E576F726B666C6F7773206D616E616765207468652073746167657320796F75722061727469636C6573206D75737420676F207468726F75676820756E74696C207468657920617265207075626C69736865642E3C2F703E3C703E54686520636F6D706F6E656E7420746F206D616E61676520776F726B666C6F7773206973206E6F7420656E61626C65642062792064656661756C742E3C2F703E3C703E546F207365652074686520776F726B666C6F77207468617420776520686176652070726F76696465642077697468207468652073616D706C6520646174612C20796F75206669727374206E65656420746F20656E61626C6520746869732066756E6374696F6E616C6974792E3C2F703E3C6F6C3E3C6C693E416363657373207468652061646D696E697374726174696F6E20617265613C2F6C693E3C6C693E46726F6D2027436F6E74656E7427203E202741727469636C657327203E20274F7074696F6E7327203E2027496E746567726174696F6E2720746162207365742027456E61626C6520776F726B666C6F772720746F2027596573273C2F6C693E3C6C693E53617665206368616E6765733C2F6C693E3C2F6F6C3E3C703E4E6F77207768656E20796F75206163636573732027436F6E74656E742720616761696E20796F752077696C6C20736565207468652073656374696F6E2027576F726B666C6F7773272E3C2F703E3C703E5768656E20796F75206564697420616E2061727469636C6520796F752077696C6C20616C736F2073656520746865206E6577207472616E736974696F6E7320666F722061727469636C65732072656C6174656420746F20776F726B666C6F77732E3C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A3431303A227B22696D6167655F696E74726F223A22222C22666C6F61745F696E74726F223A22222C22696D6167655F696E74726F5F616C74223A22222C22696D6167655F696E74726F5F616C745F656D707479223A22222C22696D6167655F696E74726F5F63617074696F6E223A22222C22696D6167655F66756C6C74657874223A22696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D3430302E6A7067236A6F6F6D6C61496D6167653A5C2F5C2F6C6F63616C2D696D616765735C2F73616D706C65646174615C2F63617373696F706569615C2F6E617361342D3430302E6A70673F77696474683D343030266865696768743D343030222C22666C6F61745F66756C6C74657874223A22666C6F61742D656E64222C22696D6167655F66756C6C746578745F616C74223A22222C22696D6167655F66756C6C746578745F616C745F656D707479223A312C22696D6167655F66756C6C746578745F63617074696F6E223A227777772E6E6173612E676F765C2F6D756C74696D656469615C2F696D61676567616C6C657279227D223B733A353A226361746964223B693A393B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A343A2248656C70223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A31323A2231303A776F726B666C6F7773223B733A373A22636174736C7567223B733A363A22393A68656C70223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36353A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D31303A776F726B666C6F77732663617469643D39223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A343A2248656C70223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31323B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A393A22576F726B666C6F7773223B693A31373B693A333B693A31383B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D3130223B7D),
(19,'index.php?option=com_content&view=article&id=11','index.php?option=com_content&view=article&id=11:typography&catid=11','Typography',' Colour Scheme secondary primary info success warning danger text-secondary text-primary text-info text-success text-warning text-danger Typography (h1) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h2) Lorem ipsum dolor sit amet, consectetuer adipiscing elit (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h3) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h4) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h5) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem ipsum dolor (a) Lists (ol)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur (ul)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Displays Lorem (display-1) Lorem (display-2) Lorem ipsum (display-3) Lorem ipsum (display-4) Lorem ipsum arma virumque cano (lead) ','2026-08-20 08:31:21','ae3967249c8edc8ea258164c5fe09225',1,1,1,'*','2026-08-20 08:31:21',NULL,'2026-08-20 08:31:21',NULL,0,0,3,0x4F3A35323A224A6F6F6D6C615C436F6D706F6E656E745C46696E6465725C41646D696E6973747261746F725C496E64657865725C526573756C74223A31393A7B693A303B693A313B693A313B733A353A22656E2D4742223B693A323B733A313930333A2220436F6C6F757220536368656D65207365636F6E64617279207072696D61727920696E666F2073756363657373207761726E696E672064616E67657220746578742D7365636F6E6461727920746578742D7072696D61727920746578742D696E666F20746578742D7375636365737320746578742D7761726E696E6720746578742D64616E676572205479706F6772617068792028683129204C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E20287029204C6F72656D20497073756D20446F6C6F722053697420416D65742028683229204C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C697420287374726F6E67292C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E20287029204C6F72656D20497073756D20446F6C6F722053697420416D65742028683329204C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E20287029204C6F72656D20497073756D20446F6C6F722053697420416D65742028683429204C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E20287029204C6F72656D20497073756D20446F6C6F722053697420416D65742028683529204C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E20287029204C6F72656D20697073756D20646F6C6F7220286129204C6973747320286F6C29286C6929204C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E7365637465747572204C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E73656374657475722028756C29286C6929204C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E7365637465747572204C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E736563746574757220446973706C617973204C6F72656D2028646973706C61792D3129204C6F72656D2028646973706C61792D3229204C6F72656D20697073756D2028646973706C61792D3329204C6F72656D20697073756D2028646973706C61792D3429204C6F72656D20697073756D2061726D6120766972756D7175652063616E6F20286C6561642920223B693A333B613A32353A7B733A323A226964223B693A31313B733A353A22616C696173223B733A31303A227479706F677261706879223B733A373A2273756D6D617279223B733A323734393A223C68313E436F6C6F757220536368656D653C2F68313E203C7020636C6173733D22642D67726964206761702D3220642D736D2D626C6F636B223E203C7370616E20636C6173733D2262746E2062746E2D7365636F6E64617279223E7365636F6E646172793C2F7370616E3E2020203C7370616E20636C6173733D2262746E2062746E2D7072696D617279223E7072696D6172793C2F7370616E3E2020203C7370616E20636C6173733D2262746E2062746E2D696E666F223E696E666F3C2F7370616E3E2020203C7370616E20636C6173733D2262746E2062746E2D73756363657373223E737563636573733C2F7370616E3E2020203C7370616E20636C6173733D2262746E2062746E2D7761726E696E67223E7761726E696E673C2F7370616E3E2020203C7370616E20636C6173733D2262746E2062746E2D64616E676572223E64616E6765723C2F7370616E3E203C2F703E203C703E3C7370616E20636C6173733D227465787420746578742D7365636F6E64617279223E746578742D7365636F6E646172793C2F7370616E3E20203C7370616E20636C6173733D227465787420746578742D7072696D617279223E746578742D7072696D6172793C2F7370616E3E20203C7370616E20636C6173733D227465787420746578742D696E666F223E746578742D696E666F3C2F7370616E3E20203C7370616E20636C6173733D227465787420746578742D73756363657373223E746578742D737563636573733C2F7370616E3E20203C7370616E20636C6173733D227465787420746578742D7761726E696E67223E746578742D7761726E696E673C2F7370616E3E20203C7370616E20636C6173733D227465787420746578742D64616E676572223E746578742D64616E6765723C2F7370616E3E3C2F703E3C68313E5479706F67726170687920286831293C2F68313E3C703E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E202870293C2F703E3C68323E4C6F72656D20497073756D20446F6C6F722053697420416D657420286832293C2F68323E3C703E3C7374726F6E673E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C6974203C2F7374726F6E673E20287374726F6E67292C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E202870293C2F703E3C68333E4C6F72656D20497073756D20446F6C6F722053697420416D657420286833293C2F68333E3C703E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E202870293C2F703E3C68343E4C6F72656D20497073756D20446F6C6F722053697420416D657420286834293C2F68343E3C703E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E202870293C2F703E3C68353E4C6F72656D20497073756D20446F6C6F722053697420416D657420286835293C2F68353E3C703E4C6F72656D20697073756D20646F6C6F722073697420616D65742C20636F6E7365637465747565722061646970697363696E6720656C69742C20736564206469616D206E6F6E756D6D79206E69626820657569736D6F642074696E636964756E74207574206C616F7265657420646F6C6F7265206D61676E6120616C697175616D206572617420766F6C75747061742E205574207769736920656E696D206164206D696E696D2076656E69616D2C2071756973206E6F73747275642065786572636920746174696F6E20756C6C616D636F72706572207375736369706974206C6F626F72746973206E69736C20757420616C69717569702065782E202870293C2F703E203C703E3C6120687265663D22696E6465782E706870223E204C6F72656D20697073756D20646F6C6F72202861293C2F613E3C2F703E3C68313E4C697374733C2F68313E203C703E286F6C29286C69293C2F703E203C6F6C3E203C6C693E4C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E73656374657475723C2F6C693E203C6C693E4C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E73656374657475723C2F6C693E203C2F6F6C3E203C703E28756C29286C69293C2F703E203C756C3E203C6C693E4C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E73656374657475723C2F6C693E203C6C693E4C6F72656D20697073756D20646F6C6F722073697420616D657420636F6E73656374657475723C2F6C693E203C2F756C3E203C68313E446973706C6179733C2F68313E3C7020636C6173733D22646973706C61792D31223E4C6F72656D2028646973706C61792D31293C2F703E3C7020636C6173733D22646973706C61792D32223E4C6F72656D2028646973706C61792D32293C2F703E3C7020636C6173733D22646973706C61792D33223E4C6F72656D20697073756D2028646973706C61792D33293C2F703E3C7020636C6173733D22646973706C61792D34223E4C6F72656D20697073756D2028646973706C61792D34293C2F703E3C7020636C6173733D226C656164223E4C6F72656D20697073756D2061726D6120766972756D7175652063616E6F20286C656164293C2F703E223B733A343A22626F6479223B733A303A22223B733A363A22696D61676573223B733A303A22223B733A353A226361746964223B693A31313B733A31303A22637265617465645F6279223B693A3638303B733A31363A22637265617465645F62795F616C696173223B733A363A224A6F6F6D6C61223B733A383A226D6F646966696564223B733A31393A22323032362D30382D32302030383A33313A3231223B733A31313A226D6F6469666965645F6279223B693A3638303B733A363A22706172616D73223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A38363A7B733A31343A2261727469636C655F6C61796F7574223B733A393A225F3A64656661756C74223B733A31303A2273686F775F7469746C65223B733A313A2231223B733A31313A226C696E6B5F7469746C6573223B733A313A2231223B733A31303A2273686F775F696E74726F223B733A313A2231223B733A31393A22696E666F5F626C6F636B5F706F736974696F6E223B733A313A2230223B733A32313A22696E666F5F626C6F636B5F73686F775F7469746C65223B733A313A2231223B733A31333A2273686F775F63617465676F7279223B733A313A2231223B733A31333A226C696E6B5F63617465676F7279223B733A313A2231223B733A32303A2273686F775F706172656E745F63617465676F7279223B733A313A2230223B733A32303A226C696E6B5F706172656E745F63617465676F7279223B733A313A2230223B733A31373A2273686F775F6173736F63696174696F6E73223B733A313A2230223B733A353A22666C616773223B733A313A2231223B733A31313A2273686F775F617574686F72223B733A313A2231223B733A31313A226C696E6B5F617574686F72223B733A313A2230223B733A31363A2273686F775F6372656174655F64617465223B733A313A2230223B733A31363A2273686F775F6D6F646966795F64617465223B733A313A2230223B733A31373A2273686F775F7075626C6973685F64617465223B733A313A2231223B733A32303A2273686F775F6974656D5F6E617669676174696F6E223B733A313A2231223B733A31333A2273686F775F726561646D6F7265223B733A313A2231223B733A31393A2273686F775F726561646D6F72655F7469746C65223B733A313A2231223B733A31343A22726561646D6F72655F6C696D6974223B693A3130303B733A393A2273686F775F74616773223B733A313A2231223B733A31313A227265636F72645F68697473223B733A313A2231223B733A393A2273686F775F68697473223B733A313A2231223B733A31313A2273686F775F6E6F61757468223B733A313A2230223B733A31333A2275726C735F706F736974696F6E223B693A303B733A373A2263617074636861223B733A303A22223B733A32333A2273686F775F7075626C697368696E675F6F7074696F6E73223B733A313A2231223B733A32303A2273686F775F61727469636C655F6F7074696F6E73223B733A313A2231223B733A32373A2273686F775F636F6E6669677572655F656469745F6F7074696F6E73223B733A313A2231223B733A31363A2273686F775F7065726D697373696F6E73223B733A313A2231223B733A32323A2273686F775F6173736F63696174696F6E735F65646974223B733A313A2231223B733A31323A22736176655F686973746F7279223B733A313A2231223B733A31333A22686973746F72795F6C696D6974223B693A31303B733A32353A2273686F775F75726C735F696D616765735F66726F6E74656E64223B733A313A2230223B733A32343A2273686F775F75726C735F696D616765735F6261636B656E64223B733A313A2231223B733A373A2274617267657461223B693A303B733A373A2274617267657462223B693A303B733A373A2274617267657463223B693A303B733A31313A22666C6F61745F696E74726F223B733A343A226C656674223B733A31343A22666C6F61745F66756C6C74657874223B733A343A226C656674223B733A31353A2263617465676F72795F6C61796F7574223B733A363A225F3A626C6F67223B733A31393A2273686F775F63617465676F72795F7469746C65223B733A313A2230223B733A31363A2273686F775F6465736372697074696F6E223B733A313A2230223B733A32323A2273686F775F6465736372697074696F6E5F696D616765223B733A313A2230223B733A383A226D61784C6576656C223B733A313A2231223B733A32313A2273686F775F656D7074795F63617465676F72696573223B733A313A2230223B733A31363A2273686F775F6E6F5F61727469636C6573223B733A313A2231223B733A33323A2273686F775F63617465676F72795F68656164696E675F7469746C655F74657874223B733A313A2231223B733A31363A2273686F775F7375626361745F64657363223B733A313A2231223B733A32313A2273686F775F6361745F6E756D5F61727469636C6573223B733A313A2230223B733A31333A2273686F775F6361745F74616773223B733A313A2231223B733A32313A2273686F775F626173655F6465736372697074696F6E223B733A313A2231223B733A31313A226D61784C6576656C636174223B733A323A222D31223B733A32353A2273686F775F656D7074795F63617465676F726965735F636174223B733A313A2230223B733A32303A2273686F775F7375626361745F646573635F636174223B733A313A2231223B733A32353A2273686F775F6361745F6E756D5F61727469636C65735F636174223B733A313A2231223B733A32303A226E756D5F6C656164696E675F61727469636C6573223B693A313B733A31383A22626C6F675F636C6173735F6C656164696E67223B733A303A22223B733A31383A226E756D5F696E74726F5F61727469636C6573223B693A343B733A31303A22626C6F675F636C617373223B733A303A22223B733A31313A226E756D5F636F6C756D6E73223B693A313B733A31383A226D756C74695F636F6C756D6E5F6F72646572223B733A313A2230223B733A393A226E756D5F6C696E6B73223B693A343B733A32343A2273686F775F73756263617465676F72795F636F6E74656E74223B733A313A2230223B733A31363A226C696E6B5F696E74726F5F696D616765223B733A313A2230223B733A32313A2273686F775F706167696E6174696F6E5F6C696D6974223B733A313A2231223B733A31323A2266696C7465725F6669656C64223B733A343A2268696465223B733A31333A2273686F775F68656164696E6773223B733A313A2231223B733A31343A226C6973745F73686F775F64617465223B733A313A2230223B733A31313A22646174655F666F726D6174223B733A303A22223B733A31343A226C6973745F73686F775F68697473223B733A313A2231223B733A31363A226C6973745F73686F775F617574686F72223B733A313A2231223B733A31313A22646973706C61795F6E756D223B733A323A223130223B733A31313A226F7264657262795F707269223B733A353A226F72646572223B733A31313A226F7264657262795F736563223B733A353A227264617465223B733A31303A226F726465725F64617465223B733A393A227075626C6973686564223B733A31353A2273686F775F706167696E6174696F6E223B733A313A2232223B733A32333A2273686F775F706167696E6174696F6E5F726573756C7473223B733A313A2231223B733A31333A2273686F775F6665617475726564223B733A343A2273686F77223B733A31343A2273686F775F666565645F6C696E6B223B733A313A2231223B733A31323A22666565645F73756D6D617279223B733A313A2230223B733A31383A22666565645F73686F775F726561646D6F7265223B733A313A2230223B733A373A227365665F696473223B693A313B733A32303A22637573746F6D5F6669656C64735F656E61626C65223B733A313A2231223B733A31363A22776F726B666C6F775F656E61626C6564223B733A313A2230223B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A226D6574616B6579223B733A303A22223B733A383A226D65746164657363223B733A303A22223B733A383A226D65746164617461223B4F3A32343A224A6F6F6D6C615C52656769737472795C5265676973747279223A333A7B733A373A22002A0064617461223B4F3A383A22737464436C617373223A303A7B7D733A31343A22002A00696E697469616C697A6564223B623A313B733A31323A22002A00736570617261746F72223B733A313A222E223B7D733A373A2276657273696F6E223B693A313B733A383A226F72646572696E67223B693A303B733A383A2263617465676F7279223B733A31303A225479706F677261706879223B733A393A226361745F7374617465223B693A313B733A31303A226361745F616363657373223B693A313B733A343A22736C7567223B733A31333A2231313A7479706F677261706879223B733A373A22636174736C7567223B733A31333A2231313A7479706F677261706879223B733A363A22617574686F72223B733A32313A2241445420546573742055736572204163636F756E74223B733A363A226C61796F7574223B733A373A2261727469636C65223B733A373A22636F6E74657874223B733A31393A22636F6D5F636F6E74656E742E61727469636C65223B733A31303A226D657461617574686F72223B4E3B7D693A343B4E3B693A353B613A353A7B693A313B613A333A7B693A303B733A353A227469746C65223B693A313B733A383A227375627469746C65223B693A323B733A323A226964223B7D693A323B613A323A7B693A303B733A373A2273756D6D617279223B693A313B733A343A22626F6479223B7D693A333B613A383A7B693A303B733A343A226D657461223B693A313B733A31303A226C6973745F7072696365223B693A323B733A31303A2273616C655F7072696365223B693A333B733A373A226D6574616B6579223B693A343B733A383A226D65746164657363223B693A353B733A31303A226D657461617574686F72223B693A363B733A363A22617574686F72223B693A373B733A31363A22637265617465645F62795F616C696173223B7D693A343B613A323A7B693A303B733A343A2270617468223B693A313B733A353A22616C696173223B7D693A353B613A313A7B693A303B733A383A22636F6D6D656E7473223B7D7D693A363B733A313A222A223B693A373B4E3B693A383B4E3B693A393B733A31393A22323032362D30382D32302030383A33313A3231223B693A31303B4E3B693A31313B733A36373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D31313A7479706F6772617068792663617469643D3131223B693A31323B4E3B693A31333B733A31393A22323032362D30382D32302030383A33313A3231223B693A31343B693A313B693A31353B613A343A7B733A343A2254797065223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A373A2241727469636C65223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A393B7D7D733A363A22417574686F72223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A363A224A6F6F6D6C61223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A31303B7D7D733A383A2243617465676F7279223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A31303A225479706F677261706879223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A313B733A323A226964223B693A31353B7D7D733A383A224C616E6775616765223B613A313A7B693A303B4F3A383A22737464436C617373223A363A7B733A353A227469746C65223B733A313A222A223B733A353A227374617465223B693A313B733A363A22616363657373223B693A313B733A383A226C616E6775616765223B733A313A222A223B733A363A226E6573746564223B623A303B733A323A226964223B693A373B7D7D7D693A31363B733A31303A225479706F677261706879223B693A31373B693A333B693A31383B733A34373A22696E6465782E7068703F6F7074696F6E3D636F6D5F636F6E74656E7426766965773D61727469636C652669643D3131223B7D);
/*!40000 ALTER TABLE `adtuzyn3_finder_links` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_links_terms`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_links_terms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_links_terms` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_links_terms` VALUES
(1,1,0.17),
(10,1,0.17),
(1,2,0.56004),
(2,2,0.56004),
(3,2,0.56004),
(4,2,0.56004),
(9,2,0.56004),
(10,2,0.56004),
(11,2,0.56004),
(12,2,0.56004),
(13,2,0.56004),
(14,2,0.56004),
(15,2,0.56004),
(16,2,0.56004),
(17,2,0.56004),
(18,2,0.56004),
(19,2,0.56004),
(1,3,0.24),
(2,3,0.24),
(3,3,0.24),
(4,3,0.24),
(9,3,0.24),
(10,3,0.24),
(11,3,0.24),
(12,3,0.24),
(13,3,0.24),
(14,3,0.24),
(15,3,0.24),
(16,3,0.24),
(17,3,0.24),
(18,3,0.24),
(19,3,0.24),
(1,4,1.97321),
(15,4,2.34652),
(1,5,0.32004),
(2,5,0.32004),
(3,5,0.32004),
(4,5,0.32004),
(9,5,0.32004),
(10,5,0.32004),
(11,5,0.32004),
(12,5,0.32004),
(13,5,0.32004),
(14,5,0.32004),
(15,5,0.32004),
(16,5,0.32004),
(17,5,0.32004),
(18,5,0.32004),
(19,5,0.32004),
(1,6,0.32004),
(2,6,0.32004),
(3,6,0.32004),
(4,6,0.32004),
(9,6,0.32004),
(11,6,0.32004),
(12,6,0.32004),
(13,6,0.32004),
(14,6,0.32004),
(15,6,0.32004),
(16,6,0.32004),
(17,6,0.32004),
(18,6,0.32004),
(19,6,0.32004),
(10,6,0.50673),
(2,8,0.17),
(11,8,0.17),
(2,9,2.22),
(3,11,0.17),
(12,11,0.17),
(3,12,0.98679),
(16,12,1.17348),
(4,14,0.17),
(13,14,0.17),
(17,15,0.07),
(14,15,0.17),
(4,15,0.37),
(9,16,0.48),
(11,16,0.48),
(12,16,0.48),
(14,16,0.48),
(18,16,0.48),
(19,16,0.48),
(15,16,0.76),
(16,16,0.76),
(13,16,1.04),
(4,16,1.48),
(7,16,1.48),
(10,16,1.88),
(17,16,2.52),
(5,17,0.17),
(16,17,0.17),
(9,18,0.18669),
(14,18,0.18669),
(15,18,0.18669),
(12,18,0.56007),
(5,18,0.98679),
(11,18,1.17348),
(6,20,0.17),
(17,20,0.17),
(10,21,0.37338),
(6,21,0.98679),
(7,23,0.34),
(18,23,0.34),
(8,24,0.34),
(19,24,0.34),
(8,25,2.46679),
(19,25,2.93348),
(9,27,0.17),
(9,28,0.04669),
(14,28,0.04669),
(19,28,0.04669),
(11,28,0.09338),
(13,28,0.14007),
(10,28,0.18676),
(12,28,0.18676),
(9,29,0.18669),
(10,29,0.18669),
(11,29,0.37338),
(15,30,0.23331),
(17,30,0.23331),
(10,30,0.46662),
(12,30,1.23321),
(9,30,1.46652),
(9,31,0.14),
(13,31,0.14),
(16,31,0.14),
(12,31,0.28),
(14,31,0.28),
(11,31,0.56),
(10,31,1.4),
(9,32,0.14),
(13,32,0.14),
(14,32,0.14),
(15,32,0.14),
(18,32,0.14),
(12,32,0.28),
(10,32,0.7),
(9,33,0.09331),
(10,33,0.09331),
(13,33,0.09331),
(11,33,0.18662),
(9,34,0.14),
(9,35,0.09331),
(12,35,0.09331),
(13,35,0.09331),
(14,35,0.09331),
(18,35,0.09331),
(11,36,0.18669),
(14,36,0.18669),
(18,36,0.18669),
(9,36,0.37338),
(13,36,0.74676),
(9,37,0.18669),
(13,37,0.18669),
(9,38,0.09331),
(17,38,0.09331),
(11,38,0.18662),
(14,38,0.27993),
(12,38,0.37324),
(10,38,0.46655),
(13,38,0.65317),
(9,39,0.09331),
(10,39,0.27993),
(11,39,0.27993),
(9,40,0.28),
(10,40,0.28),
(12,40,0.28),
(13,40,0.28),
(9,41,0.18669),
(11,41,0.18669),
(10,41,0.37338),
(12,41,1.54686),
(9,42,0.28),
(9,43,0.42),
(14,43,0.42),
(9,44,0.23331),
(16,45,0.14),
(9,45,0.28),
(11,45,0.7),
(18,45,0.98),
(14,45,1.12),
(13,45,1.26),
(12,45,1.68),
(10,45,2.52),
(13,46,0.18669),
(14,46,0.18669),
(18,46,0.18669),
(10,46,0.37338),
(11,46,0.37338),
(9,46,0.56007),
(9,47,0.09331),
(16,47,0.18662),
(18,47,0.46655),
(12,47,0.55986),
(13,47,0.55986),
(11,47,0.86645),
(10,47,1.30634),
(9,48,0.18669),
(14,48,0.18669),
(10,48,0.37338),
(13,48,0.37338),
(18,48,0.37338),
(9,49,0.14),
(10,49,0.14),
(16,49,0.14),
(9,50,0.18669),
(12,50,0.18669),
(13,50,0.37338),
(18,50,0.37338),
(11,50,0.56007),
(10,50,1.12014),
(9,51,0.28),
(16,52,0.14),
(9,52,0.42),
(14,52,0.56),
(18,52,0.7),
(12,52,0.84),
(11,52,0.98),
(13,52,1.54),
(10,52,2.1),
(10,58,0.7),
(10,59,0.23331),
(10,60,0.28),
(10,61,0.28),
(13,61,0.28),
(18,61,0.56),
(10,62,0.14),
(11,62,0.14),
(13,62,0.14),
(11,63,0.60669),
(13,63,0.60669),
(14,63,0.60669),
(12,63,1.21338),
(10,63,1.82007),
(10,64,0.74662),
(10,65,0.32669),
(13,65,0.32669),
(10,66,0.18669),
(14,66,0.18669),
(18,66,0.18669),
(11,66,0.37338),
(13,66,0.37338),
(10,67,0.09331),
(12,67,0.09331),
(13,67,0.09331),
(18,67,0.09331),
(10,68,0.32669),
(11,68,0.32669),
(12,68,0.32669),
(18,68,0.32669),
(10,69,0.37331),
(11,69,0.74662),
(12,69,0.74662),
(18,69,0.74662),
(13,69,1.11993),
(11,70,0.09331),
(13,70,0.09331),
(10,70,0.27993),
(13,71,0.09331),
(15,71,0.09331),
(10,71,0.18662),
(14,72,0.42),
(10,72,0.84),
(10,73,0.23331),
(10,74,0.32669),
(10,75,0.14),
(10,76,0.32669),
(11,77,0.14),
(12,77,0.28),
(14,77,0.28),
(10,77,0.7),
(13,77,0.7),
(13,78,0.28),
(14,78,0.28),
(12,78,0.56),
(10,78,0.84),
(10,79,0.46669),
(10,80,0.60669),
(10,81,0.32669),
(12,81,0.65338),
(10,82,0.32669),
(14,82,0.32669),
(10,83,0.28),
(11,83,0.28),
(10,84,0.37331),
(10,85,0.37331),
(10,86,0.32669),
(18,86,0.32669),
(10,87,0.51331),
(14,87,0.51331),
(10,88,0.37331),
(10,89,0.42),
(10,90,0.27993),
(10,91,0.60669),
(10,92,0.23331),
(10,93,0.37338),
(10,94,0.23331),
(10,95,0.42),
(14,95,0.42),
(10,96,0.46669),
(13,96,0.46669),
(10,97,0.23331),
(18,97,0.23331),
(13,98,0.14),
(14,98,0.14),
(18,98,0.14),
(10,98,0.28),
(10,99,0.28),
(10,100,0.18669),
(12,101,0.18669),
(18,101,0.18669),
(10,101,0.56007),
(10,102,0.42),
(10,103,0.14),
(10,104,0.09331),
(11,104,0.09331),
(18,104,0.09331),
(10,105,0.14),
(13,105,0.28),
(10,106,0.18669),
(12,106,0.18669),
(16,106,0.18669),
(18,106,0.18669),
(10,107,0.18669),
(11,108,0.09331),
(13,108,0.09331),
(10,108,0.18662),
(12,108,0.27993),
(10,109,0.51331),
(14,110,0.32669),
(10,110,0.65338),
(10,111,0.42),
(13,112,0.09331),
(18,112,0.09331),
(11,112,0.18662),
(12,112,0.18662),
(14,112,0.18662),
(10,112,0.37324),
(10,113,0.23331),
(10,114,0.18669),
(10,115,0.23331),
(15,115,0.23331),
(17,115,0.23331),
(10,116,0.23331),
(10,117,0.18669),
(10,118,0.18669),
(11,118,0.18669),
(12,118,0.18669),
(14,118,0.18669),
(10,119,0.18669),
(10,120,0.14),
(11,120,0.14),
(14,120,0.14),
(11,121,0.23331),
(10,121,0.46662),
(13,121,0.46662),
(10,122,0.18669),
(10,123,0.18669),
(14,123,0.18669),
(10,124,0.32669),
(10,125,0.18669),
(13,125,0.37338),
(10,126,0.18669),
(10,127,0.18669),
(13,127,0.18669),
(14,127,0.18669),
(10,128,0.23331),
(10,129,0.65338),
(13,129,3.03355),
(12,130,0.18669),
(13,130,0.18669),
(14,130,0.18669),
(15,130,0.18669),
(17,130,0.18669),
(10,130,0.56007),
(10,131,0.18669),
(10,132,0.18669),
(10,133,0.18669),
(18,133,0.18669),
(11,134,0.14),
(14,134,0.14),
(18,134,0.14),
(10,134,0.28),
(10,135,0.14),
(18,135,0.14),
(10,136,0.14),
(18,136,0.14),
(12,137,0.09331),
(14,137,0.09331),
(15,137,0.09331),
(11,137,0.18662),
(13,137,0.18662),
(10,137,0.55986),
(11,138,0.09331),
(12,138,0.09331),
(13,138,0.09331),
(14,138,0.09331),
(15,138,0.09331),
(10,138,0.77314),
(10,139,0.14),
(10,140,0.18669),
(10,141,0.18669),
(10,142,0.32669),
(12,142,0.32669),
(13,142,0.32669),
(14,142,0.65338),
(10,143,0.27993),
(13,144,0.23331),
(11,144,0.46662),
(10,144,0.69993),
(10,145,0.18669),
(10,146,0.23331),
(12,146,0.23331),
(10,147,0.37331),
(10,148,0.74662),
(10,149,0.32669),
(10,150,0.42),
(18,150,0.42),
(10,151,0.46669),
(10,152,0.18669),
(10,153,0.18669),
(13,153,0.18669),
(18,153,0.18669),
(11,154,0.14),
(12,154,0.14),
(10,154,0.42),
(18,154,0.42),
(10,155,0.18669),
(13,156,0.28),
(10,156,0.84),
(10,157,0.46669),
(10,158,0.65338),
(14,159,0.37331),
(10,159,0.74662),
(12,159,0.74662),
(10,160,0.18669),
(12,161,0.37338),
(11,161,0.56007),
(13,161,0.74676),
(14,161,0.93345),
(10,161,2.85369),
(10,162,0.18669),
(13,162,0.18669),
(10,163,0.18669),
(10,164,0.28),
(10,165,0.14),
(13,165,0.14),
(10,166,0.74662),
(14,166,3.09314),
(10,167,0.42),
(14,167,0.42),
(18,168,0.18669),
(13,168,0.56007),
(10,168,0.93345),
(10,169,0.18669),
(10,170,0.46662),
(12,170,0.46662),
(10,171,0.28),
(10,172,0.18669),
(10,173,0.46662),
(14,173,0.46662),
(10,174,0.32669),
(10,175,1.02662),
(10,176,0.09331),
(10,177,0.18669),
(13,177,0.18669),
(14,177,0.18669),
(13,178,0.23331),
(10,178,0.46662),
(10,179,0.23331),
(14,179,0.23331),
(10,180,0.32669),
(14,180,0.32669),
(10,181,0.37331),
(13,182,0.18669),
(10,182,0.37338),
(12,182,0.37338),
(10,183,0.18669),
(10,184,0.23331),
(14,185,0.23331),
(10,185,0.46662),
(13,185,1.63317),
(13,186,0.18669),
(14,186,0.18669),
(18,186,0.18669),
(10,186,0.37338),
(10,187,0.37338),
(14,188,0.32669),
(10,188,2.38017),
(18,189,0.18669),
(11,189,1.17348),
(14,189,1.36017),
(10,189,1.73355),
(12,189,1.73355),
(13,189,2.48031),
(11,313,0.23331),
(11,314,0.14),
(16,314,0.14),
(11,315,0.28),
(11,316,0.23331),
(12,316,0.23331),
(11,317,0.23331),
(18,318,0.32669),
(11,318,0.65338),
(11,319,0.42),
(11,320,0.37331),
(11,321,0.28),
(11,322,0.18669),
(11,323,0.28),
(11,324,0.32669),
(11,325,0.28),
(18,325,0.28),
(11,326,0.32669),
(11,327,0.18669),
(11,328,0.18669),
(11,329,1.72679),
(12,344,0.18669),
(12,345,0.28),
(12,346,0.37331),
(12,347,0.28),
(12,348,0.32669),
(12,349,0.32669),
(13,349,0.32669),
(12,350,0.18669),
(12,351,0.37338),
(12,352,0.18669),
(12,353,1.17348),
(12,354,0.28),
(12,355,0.18669),
(12,356,1.12),
(12,357,0.56),
(12,358,0.28),
(12,359,0.23331),
(12,360,0.18669),
(12,361,0.18669),
(12,362,0.32669),
(12,363,0.28),
(12,364,0.18669),
(12,365,0.18669),
(13,365,0.18669),
(12,366,0.28),
(12,367,0.18669),
(12,368,0.37331),
(12,369,0.14),
(18,369,0.14),
(12,370,0.18669),
(12,371,0.14),
(18,371,0.14),
(12,372,0.37338),
(12,373,0.23331),
(12,374,0.28),
(12,375,0.14),
(13,375,0.14),
(13,407,0.56),
(13,408,0.28),
(13,409,0.14),
(13,410,0.28),
(13,411,0.23331),
(13,412,0.32669),
(13,413,0.46669),
(13,414,0.23331),
(13,415,0.37331),
(13,416,0.28),
(13,417,0.56),
(13,418,0.32669),
(13,419,0.42),
(13,420,0.18669),
(13,421,0.23331),
(13,422,0.46669),
(13,423,0.23331),
(13,424,0.23331),
(13,425,0.18669),
(13,426,0.18669),
(13,427,0.23331),
(13,428,0.69993),
(13,429,0.32669),
(13,430,0.37331),
(13,431,0.51331),
(13,432,0.23331),
(19,432,0.23331),
(13,433,0.32669),
(14,433,0.32669),
(13,434,0.14),
(14,434,0.14),
(13,435,1.12),
(13,436,0.18669),
(13,437,0.23331),
(13,438,0.14),
(13,439,0.65338),
(13,440,0.46662),
(13,441,0.60669),
(13,442,0.28),
(13,443,0.32669),
(13,444,0.46669),
(13,445,0.23331),
(13,446,0.28),
(13,447,0.18669),
(13,448,1.02662),
(13,449,0.32669),
(13,450,0.56007),
(13,451,0.18669),
(13,452,0.46662),
(13,453,0.14),
(13,454,0.93345),
(13,455,0.32669),
(14,455,0.32669),
(14,470,0.46669),
(14,471,0.46669),
(19,472,0.28),
(14,472,0.56),
(14,473,0.32669),
(14,474,0.18669),
(14,475,0.18669),
(14,476,0.46669),
(14,477,0.42),
(15,485,0.17),
(15,486,0.32669),
(15,487,0.37331),
(15,488,0.18669),
(17,488,0.18669),
(19,488,2.42697),
(15,489,0.42),
(15,490,0.23331),
(15,491,0.23331),
(15,492,0.46669),
(15,493,0.37338),
(19,493,0.93345),
(15,494,0.23331),
(17,494,0.23331),
(19,494,3.26634),
(15,495,0.28),
(19,495,1.4),
(15,496,0.32669),
(15,497,0.14),
(15,498,0.09331),
(15,499,0.28),
(15,500,0.23331),
(15,501,0.14),
(15,502,0.18669),
(19,502,0.93345),
(15,503,0.14),
(15,504,0.37324),
(15,505,0.42),
(15,506,0.37331),
(15,507,0.23331),
(17,507,0.23331),
(19,507,3.96627),
(15,508,0.23331),
(15,509,0.18669),
(15,510,0.28),
(15,511,0.23331),
(19,511,4.43289),
(15,512,0.23331),
(19,512,1.16655),
(15,513,0.09331),
(15,514,0.28),
(15,515,0.56),
(15,516,0.23331),
(15,517,0.46669),
(15,518,0.32669),
(15,519,0.14),
(16,519,0.14),
(15,520,0.28),
(19,520,0.7),
(15,521,0.14),
(17,521,0.14),
(19,521,1.82),
(15,522,0.18669),
(15,523,0.37331),
(15,524,0.28),
(15,525,0.09331),
(19,525,1.39965),
(15,526,0.18669),
(15,527,0.37331),
(15,528,0.37331),
(16,548,0.74662),
(16,549,0.42),
(16,550,0.42),
(16,551,0.32669),
(16,552,0.23331),
(16,553,0.18669),
(16,554,0.28),
(16,555,0.37338),
(16,556,0.37331),
(16,557,0.18669),
(16,558,0.37331),
(16,559,0.23331),
(16,560,0.32669),
(17,561,0.28),
(16,561,0.56),
(16,562,0.51331),
(16,563,0.28),
(16,564,0.46662),
(16,565,0.37331),
(16,566,0.37331),
(16,567,0.42),
(16,568,0.51331),
(16,569,0.42),
(16,570,0.37338),
(16,571,0.28),
(16,572,0.28),
(16,573,0.28),
(16,574,0.28),
(16,575,0.23331),
(16,576,0.18669),
(16,577,0.23331),
(16,578,0.28),
(16,579,0.51331),
(16,580,0.18669),
(16,581,0.74662),
(16,582,0.23331),
(16,583,0.32669),
(16,584,0.23331),
(16,585,0.23331),
(16,586,0.18669),
(16,587,0.18669),
(16,588,0.18669),
(16,589,0.18669),
(16,590,0.23331),
(16,591,0.14),
(16,592,0.28),
(16,593,0.56),
(16,594,0.32669),
(16,595,0.37331),
(16,596,0.28),
(16,597,0.37331),
(16,598,0.18669),
(16,599,0.37331),
(16,600,0.32669),
(16,601,0.37331),
(16,602,0.32669),
(16,603,0.23331),
(16,604,0.18669),
(16,605,0.98007),
(16,606,0.28),
(16,607,0.46662),
(16,608,0.23331),
(16,609,0.28),
(16,610,0.46669),
(16,611,0.28),
(16,612,0.69993),
(16,613,0.46669),
(16,614,0.09331),
(17,614,0.09331),
(18,614,0.09331),
(16,615,0.28),
(16,616,0.28),
(17,675,0.23331),
(17,676,0.28),
(17,677,0.32669),
(17,678,0.93345),
(17,679,1.16655),
(17,680,0.46669),
(17,681,0.42),
(17,682,0.23331),
(17,683,0.23331),
(17,684,0.56),
(17,685,0.69993),
(17,686,0.32669),
(17,687,0.28),
(17,688,0.46662),
(17,689,0.28),
(17,690,0.23331),
(17,691,0.28),
(17,692,0.42),
(17,693,0.23331),
(17,694,0.32669),
(17,695,0.42),
(17,696,0.37331),
(17,697,0.37331),
(17,698,1.02662),
(17,699,0.28),
(17,700,0.28),
(17,701,0.14),
(17,702,0.18669),
(17,703,0.28),
(17,704,0.32669),
(17,705,0.32669),
(17,706,0.18669),
(17,707,0.28),
(17,708,0.23331),
(17,709,0.32669),
(17,710,0.23331),
(17,711,0.23331),
(17,712,0.37331),
(17,713,0.32669),
(17,714,0.32669),
(17,715,0.42),
(18,715,3.48),
(18,738,0.46669),
(18,739,0.84),
(18,740,0.32669),
(18,741,0.60669),
(18,742,0.42),
(18,743,0.56),
(18,744,0.23331),
(18,745,0.65331),
(18,746,0.23331),
(18,747,0.18669),
(18,748,0.42),
(18,749,0.18669),
(18,750,0.28),
(18,751,0.32669),
(18,752,0.60669),
(18,753,0.56),
(18,754,0.18669),
(18,755,0.37331),
(18,756,0.32669),
(18,757,0.32669),
(18,758,0.28),
(18,759,0.18669),
(18,760,0.32669),
(18,761,0.51331),
(18,762,0.23331),
(18,763,0.37331),
(18,764,0.42),
(19,769,0.46655),
(19,770,2.33345),
(19,771,1.63345),
(19,772,1.63345),
(19,773,0.18669),
(19,774,0.18669),
(19,775,2.8),
(19,776,2.05324),
(19,777,0.28),
(19,778,0.42),
(19,779,0.42),
(19,780,0.42),
(19,781,0.42),
(19,782,0.37331),
(19,783,0.93345),
(19,784,0.93345),
(19,785,1.63345),
(19,786,0.46655),
(19,787,1.4),
(19,788,0.09331),
(19,789,0.09331),
(19,790,0.09331),
(19,791,0.09331),
(19,792,0.09331),
(19,793,0.18669),
(19,794,1.63345),
(19,795,0.18669),
(19,796,0.18662),
(19,797,1.86655),
(19,798,1.16655),
(19,799,0.93345),
(19,800,0.93345),
(19,801,1.63345),
(19,802,1.63345),
(19,803,0.09331),
(19,804,0.23345),
(19,805,0.32669),
(19,806,0.93345),
(19,807,0.28),
(19,808,0.42),
(19,809,0.28),
(19,810,0.32669),
(19,811,1.86655),
(19,812,1.4),
(19,813,0.51331),
(19,814,0.42),
(19,815,0.56),
(19,816,0.65331),
(19,817,0.56),
(19,818,0.56),
(19,819,2.1),
(19,820,0.09331),
(19,821,2.56655),
(19,822,1.4),
(19,823,0.37331),
(19,824,1.86655),
(19,825,0.32669),
(19,826,0.93345);
/*!40000 ALTER TABLE `adtuzyn3_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_logging`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_logging`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_logging` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_taxonomy`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_taxonomy`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_taxonomy` VALUES
(1,0,0,29,0,'','ROOT','root',1,1,'*'),
(2,1,1,8,1,'type','Type','type',1,1,'*'),
(3,2,2,3,2,'type/tag','Tag','tag',1,1,'*'),
(4,1,9,14,1,'author','Author','author',1,1,'*'),
(5,4,10,11,2,'author/adt-test-user-account','ADT Test User Account','adt-test-user-account',1,1,'*'),
(6,1,15,18,1,'language','Language','language',1,1,'*'),
(7,6,16,17,2,'language/4086f6336014c75439f87cbda42d9c51','*','4086f6336014c75439f87cbda42d9c51',1,1,'*'),
(8,2,4,5,2,'type/category','Category','category',1,1,'*'),
(9,2,6,7,2,'type/article','Article','article',1,1,'*'),
(10,4,12,13,2,'author/joomla','Joomla','joomla',1,1,'*'),
(11,1,19,28,1,'category','Category','category',1,1,'*'),
(12,11,20,21,2,'category/help','Help','help',1,1,'*'),
(13,11,22,23,2,'category/blog','Blog','blog',1,1,'*'),
(14,11,24,25,2,'category/joomla','Joomla','joomla',1,1,'*'),
(15,11,26,27,2,'category/typography','Typography','typography',1,1,'*');
/*!40000 ALTER TABLE `adtuzyn3_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_taxonomy_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_taxonomy_map` VALUES
(1,3),
(1,5),
(1,7),
(2,3),
(2,5),
(2,7),
(3,3),
(3,5),
(3,7),
(4,3),
(4,5),
(4,7),
(5,7),
(5,8),
(6,7),
(6,8),
(7,7),
(7,8),
(8,7),
(8,8),
(9,7),
(9,9),
(9,10),
(9,12),
(10,7),
(10,9),
(10,10),
(10,12),
(11,7),
(11,9),
(11,10),
(11,13),
(12,7),
(12,9),
(12,10),
(12,13),
(13,7),
(13,9),
(13,10),
(13,13),
(14,7),
(14,9),
(14,10),
(14,13),
(15,7),
(15,9),
(15,10),
(15,14),
(16,7),
(16,9),
(16,10),
(16,14),
(17,7),
(17,9),
(17,10),
(17,14),
(18,7),
(18,9),
(18,10),
(18,12),
(19,7),
(19,9),
(19,10),
(19,15);
/*!40000 ALTER TABLE `adtuzyn3_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_terms`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=832 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_terms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_terms` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_terms` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_terms` VALUES
(1,'2','2',0,0,0.1,'',2,'*'),
(2,'account','account',0,0,0.4667,'A253',15,'*'),
(3,'adt','adt',0,0,0.2,'A300',15,'*'),
(4,'millions','millions',0,0,0.5333,'M452',2,'*'),
(5,'test','test',0,0,0.2667,'T230',15,'*'),
(6,'user','user',0,0,0.2667,'U260',15,'*'),
(8,'3','3',0,0,0.1,'',2,'*'),
(9,'worldwide','worldwide',0,0,0.6,'W643',1,'*'),
(11,'4','4',0,0,0.1,'',2,'*'),
(12,'love','love',0,0,0.2667,'L100',2,'*'),
(14,'5','5',0,0,0.1,'',2,'*'),
(15,'6','6',0,0,0.1,'',3,'*'),
(16,'joomla','joomla',0,0,0.4,'J540',13,'*'),
(17,'8','8',0,0,0.1,'',2,'*'),
(18,'blog','blog',0,0,0.2667,'B420',6,'*'),
(20,'9','9',0,0,0.1,'',2,'*'),
(21,'help','help',0,0,0.2667,'H410',2,'*'),
(23,'10','10',0,0,0.2,'',2,'*'),
(24,'11','11',0,0,0.2,'',2,'*'),
(25,'typography','typography',0,0,0.6667,'T1261',2,'*'),
(27,'1','1',0,0,0.1,'',1,'*'),
(28,'a','a',0,0,0.0667,'A000',7,'*'),
(29,'able','able',0,0,0.2667,'A140',3,'*'),
(30,'about','about',0,0,0.3333,'A130',5,'*'),
(31,'and','and',0,0,0.2,'A530',7,'*'),
(32,'are','are',0,0,0.2,'A600',7,'*'),
(33,'be','be',0,0,0.1333,'B000',4,'*'),
(34,'bit','bit',0,0,0.2,'B300',1,'*'),
(35,'by','by',0,0,0.1333,'B000',5,'*'),
(36,'edit','edit',0,0,0.2667,'E300',5,'*'),
(37,'icon','icon',0,0,0.2667,'I250',2,'*'),
(38,'in','in',0,0,0.1333,'I500',7,'*'),
(39,'it','it',0,0,0.1333,'I300',3,'*'),
(40,'logged','logged',0,0,0.4,'L230',4,'*'),
(41,'page','page',0,0,0.2667,'P200',4,'*'),
(42,'person','person',0,0,0.4,'P625',1,'*'),
(43,'selecting','selecting',0,0,0.6,'S42352',2,'*'),
(44,'tells','tells',0,0,0.3333,'T420',1,'*'),
(45,'the','the',0,0,0.2,'T000',8,'*'),
(46,'this','this',0,0,0.2667,'T200',6,'*'),
(47,'to','to',0,0,0.1333,'T000',7,'*'),
(48,'when','when',0,0,0.2667,'W500',5,'*'),
(49,'who','who',0,0,0.2,'W000',3,'*'),
(50,'will','will',0,0,0.2667,'W400',6,'*'),
(51,'writes','writes',0,0,0.4,'W632',1,'*'),
(52,'you','you',0,0,0.2,'Y000',8,'*'),
(58,'\'administrator\'','\'administrator\'',0,0,1,'A3523636',1,'*'),
(59,'\'back','\'back',0,0,0.3333,'B200',1,'*'),
(60,'\'front','\'front',0,0,0.4,'F653',1,'*'),
(61,'access','access',0,0,0.4,'A200',3,'*'),
(62,'add','add',0,0,0.2,'A300',3,'*'),
(63,'administrator','administrator',0,0,0.8667,'A3523636',5,'*'),
(64,'advanced','advanced',0,0,0.5333,'A31523',1,'*'),
(65,'already','already',0,0,0.4667,'A463',2,'*'),
(66,'also','also',0,0,0.2667,'A420',5,'*'),
(67,'an','an',0,0,0.1333,'A500',4,'*'),
(68,'article','article',0,0,0.4667,'A6324',4,'*'),
(69,'articles','articles',0,0,0.5333,'A63242',5,'*'),
(70,'as','as',0,0,0.1333,'A200',3,'*'),
(71,'at','at',0,0,0.1333,'A300',3,'*'),
(72,'available','available',0,0,0.6,'A1414',2,'*'),
(73,'basic','basic',0,0,0.3333,'B200',1,'*'),
(74,'browser','browser',0,0,0.4667,'B626',1,'*'),
(75,'but','but',0,0,0.2,'B300',1,'*'),
(76,'buttons','buttons',0,0,0.4667,'B352',1,'*'),
(77,'can','can',0,0,0.2,'C500',5,'*'),
(78,'change','change',0,0,0.4,'C520',4,'*'),
(79,'commercial','commercial',0,0,0.6667,'C5624',1,'*'),
(80,'configuration','configuration',0,0,0.8667,'C512635',1,'*'),
(81,'content','content',0,0,0.4667,'C5353',2,'*'),
(82,'control','control',0,0,0.4667,'C5364',2,'*'),
(83,'create','create',0,0,0.4,'C630',2,'*'),
(84,'creating','creating',0,0,0.5333,'C6352',1,'*'),
(85,'deciding','deciding',0,0,0.5333,'D2352',1,'*'),
(86,'default','default',0,0,0.4667,'D143',2,'*'),
(87,'description','description',0,0,0.7333,'D26135',2,'*'),
(88,'detailed','detailed',0,0,0.5333,'D430',1,'*'),
(89,'different','different',0,0,0.6,'D1653',1,'*'),
(90,'do','do',0,0,0.1333,'D000',1,'*'),
(91,'documentation','documentation',0,0,0.8667,'D2535',1,'*'),
(92,'email','email',0,0,0.3333,'E540',1,'*'),
(93,'end\'','end\'',0,0,0.2667,'E530',1,'*'),
(94,'every','every',0,0,0.3333,'E160',1,'*'),
(95,'extension','extension',0,0,0.6,'E23525',2,'*'),
(96,'extensions','extensions',0,0,0.6667,'E235252',2,'*'),
(97,'first','first',0,0,0.3333,'F623',2,'*'),
(98,'for','for',0,0,0.2,'F600',4,'*'),
(99,'forums','forums',0,0,0.4,'F652',1,'*'),
(100,'free','free',0,0,0.2667,'F600',1,'*'),
(101,'from','from',0,0,0.2667,'F650',3,'*'),
(102,'functions','functions',0,0,0.6,'F52352',1,'*'),
(103,'get','get',0,0,0.2,'G300',1,'*'),
(104,'go','go',0,0,0.1333,'G000',3,'*'),
(105,'has','has',0,0,0.2,'H200',2,'*'),
(106,'have','have',0,0,0.2667,'H100',4,'*'),
(107,'here','here',0,0,0.2667,'H600',1,'*'),
(108,'if','if',0,0,0.1333,'I100',4,'*'),
(109,'information','information',0,0,0.7333,'I516535',1,'*'),
(110,'install','install',0,0,0.4667,'I5234',2,'*'),
(111,'installer','installer',0,0,0.6,'I52346',1,'*'),
(112,'is','is',0,0,0.1333,'I200',6,'*'),
(113,'items','items',0,0,0.3333,'I352',1,'*'),
(114,'kind','kind',0,0,0.2667,'K530',1,'*'),
(115,'learn','learn',0,0,0.3333,'L650',3,'*'),
(116,'level','level',0,0,0.3333,'L140',1,'*'),
(117,'line','line',0,0,0.2667,'L500',1,'*'),
(118,'link','link',0,0,0.2667,'L520',4,'*'),
(119,'list','list',0,0,0.2667,'L230',1,'*'),
(120,'log','log',0,0,0.2,'L200',3,'*'),
(121,'login','login',0,0,0.3333,'L250',3,'*'),
(122,'logo','logo',0,0,0.2667,'L200',1,'*'),
(123,'look','look',0,0,0.2667,'L200',2,'*'),
(124,'looking','looking',0,0,0.4667,'L252',1,'*'),
(125,'many','many',0,0,0.2667,'M000',2,'*'),
(126,'mean','mean',0,0,0.2667,'M000',1,'*'),
(127,'menu','menu',0,0,0.2667,'M000',3,'*'),
(128,'menus','menus',0,0,0.3333,'M200',1,'*'),
(129,'modules','modules',0,0,0.4667,'M342',2,'*'),
(130,'more','more',0,0,0.2667,'M600',6,'*'),
(131,'much','much',0,0,0.2667,'M200',1,'*'),
(132,'name','name',0,0,0.2667,'N000',1,'*'),
(133,'need','need',0,0,0.2667,'N300',2,'*'),
(134,'new','new',0,0,0.2,'N000',4,'*'),
(135,'not','not',0,0,0.2,'N300',2,'*'),
(136,'now','now',0,0,0.2,'N000',2,'*'),
(137,'of','of',0,0,0.1333,'O100',6,'*'),
(138,'on','on',0,0,0.1333,'O500',6,'*'),
(139,'one','one',0,0,0.2,'O500',1,'*'),
(140,'only','only',0,0,0.2667,'O540',1,'*'),
(141,'open','open',0,0,0.2667,'O150',1,'*'),
(142,'options','options',0,0,0.4667,'O1352',4,'*'),
(143,'or','or',0,0,0.1333,'O600',1,'*'),
(144,'other','other',0,0,0.3333,'O360',3,'*'),
(145,'part','part',0,0,0.2667,'P630',1,'*'),
(146,'parts','parts',0,0,0.3333,'P632',2,'*'),
(147,'password','password',0,0,0.5333,'P263',1,'*'),
(148,'probably','probably',0,0,0.5333,'P614',1,'*'),
(149,'provide','provide',0,0,0.4667,'P613',1,'*'),
(150,'published','published',0,0,0.6,'P423',2,'*'),
(151,'registered','registered',0,0,0.6667,'R2363',1,'*'),
(152,'same','same',0,0,0.2667,'S500',1,'*'),
(153,'save','save',0,0,0.2667,'S100',3,'*'),
(154,'see','see',0,0,0.2,'S000',4,'*'),
(155,'seen','seen',0,0,0.2667,'S500',1,'*'),
(156,'select','select',0,0,0.4,'S423',2,'*'),
(157,'separately','separately',0,0,0.6667,'S1634',1,'*'),
(158,'setting','setting',0,0,0.4667,'S352',1,'*'),
(159,'settings','settings',0,0,0.5333,'S352',3,'*'),
(160,'show','show',0,0,0.2667,'S000',1,'*'),
(161,'site','site',0,0,0.2667,'S300',5,'*'),
(162,'some','some',0,0,0.2667,'S500',2,'*'),
(163,'such','such',0,0,0.2667,'S000',1,'*'),
(164,'system','system',0,0,0.4,'S350',1,'*'),
(165,'tag','tag',0,0,0.2,'T200',2,'*'),
(166,'template','template',0,0,0.5333,'T5143',2,'*'),
(167,'templates','templates',0,0,0.6,'T51432',2,'*'),
(168,'that','that',0,0,0.2667,'T000',3,'*'),
(169,'them','them',0,0,0.2667,'T500',1,'*'),
(170,'there','there',0,0,0.3333,'T600',2,'*'),
(171,'things','things',0,0,0.4,'T520',1,'*'),
(172,'tips','tips',0,0,0.2667,'T120',1,'*'),
(173,'title','title',0,0,0.3333,'T400',2,'*'),
(174,'totally','totally',0,0,0.4667,'T400',1,'*'),
(175,'unpublished','unpublished',0,0,0.7333,'U51423',1,'*'),
(176,'up','up',0,0,0.1333,'U100',1,'*'),
(177,'used','used',0,0,0.2667,'U230',3,'*'),
(178,'users','users',0,0,0.3333,'U262',2,'*'),
(179,'using','using',0,0,0.3333,'U252',2,'*'),
(180,'visible','visible',0,0,0.4667,'V214',2,'*'),
(181,'visitors','visitors',0,0,0.5333,'V2362',1,'*'),
(182,'want','want',0,0,0.2667,'W530',3,'*'),
(183,'what','what',0,0,0.2667,'W300',1,'*'),
(184,'where','where',0,0,0.3333,'W600',1,'*'),
(185,'which','which',0,0,0.3333,'W200',3,'*'),
(186,'with','with',0,0,0.2667,'W300',4,'*'),
(187,'work','work',0,0,0.2667,'W620',1,'*'),
(188,'working','working',0,0,0.4667,'W6252',2,'*'),
(189,'your','your',0,0,0.2667,'Y600',6,'*'),
(313,'ahead','ahead',0,0,0.3333,'A300',1,'*'),
(314,'all','all',0,0,0.2,'A400',2,'*'),
(315,'bottom','bottom',0,0,0.4,'B350',1,'*'),
(316,'break','break',0,0,0.3333,'B620',2,'*'),
(317,'can\'t','can\'t',0,0,0.3333,'C530',1,'*'),
(318,'changes','changes',0,0,0.4667,'C520',2,'*'),
(319,'customise','customise',0,0,0.6,'C352',1,'*'),
(320,'existing','existing',0,0,0.5333,'E2352',1,'*'),
(321,'how','how',0,0,0.2,'H000',1,'*'),
(322,'make','make',0,0,0.2667,'M200',1,'*'),
(323,'modify','modify',0,0,0.4,'M310',1,'*'),
(324,'posting','posting',0,0,0.4667,'P2352',1,'*'),
(325,'sample','sample',0,0,0.4,'S514',2,'*'),
(326,'various','various',0,0,0.4667,'V620',1,'*'),
(327,'very','very',0,0,0.2667,'V600',1,'*'),
(328,'ways','ways',0,0,0.2667,'W200',1,'*'),
(329,'welcome','welcome',0,0,0.4667,'W425',1,'*'),
(344,'both','both',0,0,0.2667,'B300',1,'*'),
(345,'broken','broken',0,0,0.4,'B625',1,'*'),
(346,'category','category',0,0,0.5333,'C326',1,'*'),
(347,'column','column',0,0,0.4,'C450',1,'*'),
(348,'display','display',0,0,0.4667,'D214',1,'*'),
(349,'editing','editing',0,0,0.4667,'E352',2,'*'),
(350,'four','four',0,0,0.2667,'F600',1,'*'),
(351,'full','full',0,0,0.2667,'F400',1,'*'),
(352,'hide','hide',0,0,0.2667,'H300',1,'*'),
(353,'home','home',0,0,0.2667,'H500',1,'*'),
(354,'insert','insert',0,0,0.4,'I5263',1,'*'),
(355,'into','into',0,0,0.2667,'I530',1,'*'),
(356,'introduction','introduction',0,0,0.8,'I5363235',1,'*'),
(357,'introductory','introductory',0,0,0.8,'I5363236',1,'*'),
(358,'length','length',0,0,0.4,'L523',1,'*'),
(359,'links','links',0,0,0.3333,'L520',1,'*'),
(360,'most','most',0,0,0.2667,'M230',1,'*'),
(361,'next','next',0,0,0.2667,'N230',1,'*'),
(362,'numbers','numbers',0,0,0.4667,'N162',1,'*'),
(363,'oldest','oldest',0,0,0.4,'O4323',1,'*'),
(364,'post','post',0,0,0.2667,'P230',1,'*'),
(365,'read','read',0,0,0.2667,'R300',2,'*'),
(366,'recent','recent',0,0,0.4,'R253',1,'*'),
(367,'rest','rest',0,0,0.2667,'R230',1,'*'),
(368,'separate','separate',0,0,0.5333,'S163',1,'*'),
(369,'set','set',0,0,0.2,'S300',2,'*'),
(370,'span','span',0,0,0.2667,'S150',1,'*'),
(371,'tab','tab',0,0,0.2,'T100',2,'*'),
(372,'then','then',0,0,0.2667,'T500',1,'*'),
(373,'those','those',0,0,0.3333,'T200',1,'*'),
(374,'two','two',0,0,0.2,'T000',1,'*'),
(375,'use','use',0,0,0.2,'U200',2,'*'),
(407,'allows','allows',0,0,0.4,'A420',1,'*'),
(408,'always','always',0,0,0.4,'A420',1,'*'),
(409,'any','any',0,0,0.2,'A500',1,'*'),
(410,'appear','appear',0,0,0.4,'A160',1,'*'),
(411,'areas','areas',0,0,0.3333,'A620',1,'*'),
(412,'beneath','beneath',0,0,0.4667,'B530',1,'*'),
(413,'categories','categories',0,0,0.6667,'C3262',1,'*'),
(414,'close','close',0,0,0.3333,'C420',1,'*'),
(415,'commonly','commonly',0,0,0.5333,'C540',1,'*'),
(416,'corner','corner',0,0,0.4,'C656',1,'*'),
(417,'custom','custom',0,0,0.4,'C350',1,'*'),
(418,'develop','develop',0,0,0.4667,'D141',1,'*'),
(419,'directory','directory',0,0,0.6,'D6236',1,'*'),
(420,'each','each',0,0,0.2667,'E200',1,'*'),
(421,'enter','enter',0,0,0.3333,'E536',1,'*'),
(422,'experiment','experiment',0,0,0.6667,'E21653',1,'*'),
(423,'feeds','feeds',0,0,0.3333,'F320',1,'*'),
(424,'field','field',0,0,0.3333,'F430',1,'*'),
(425,'find','find',0,0,0.2667,'F530',1,'*'),
(426,'form','form',0,0,0.2667,'F650',1,'*'),
(427,'holds','holds',0,0,0.3333,'H432',1,'*'),
(428,'image','image',0,0,0.3333,'I520',1,'*'),
(429,'include','include',0,0,0.4667,'I5243',1,'*'),
(430,'includes','includes',0,0,0.5333,'I52432',1,'*'),
(431,'incorporate','incorporate',0,0,0.7333,'I526163',1,'*'),
(432,'lists','lists',0,0,0.3333,'L232',2,'*'),
(433,'manager','manager',0,0,0.4667,'M260',2,'*'),
(434,'may','may',0,0,0.2,'M000',2,'*'),
(435,'module','module',0,0,0.4,'M340',1,'*'),
(436,'news','news',0,0,0.2667,'N200',1,'*'),
(437,'older','older',0,0,0.3333,'O436',1,'*'),
(438,'out','out',0,0,0.2,'O300',1,'*'),
(439,'popular','popular',0,0,0.4667,'P460',1,'*'),
(440,'posts','posts',0,0,0.3333,'P232',1,'*'),
(441,'preconfigured','preconfigured',0,0,0.8667,'P6251263',1,'*'),
(442,'reader','reader',0,0,0.4,'R360',1,'*'),
(443,'readers','readers',0,0,0.4667,'R362',1,'*'),
(444,'restricted','restricted',0,0,0.6667,'R23623',1,'*'),
(445,'right','right',0,0,0.3333,'R230',1,'*'),
(446,'screen','screen',0,0,0.4,'S650',1,'*'),
(447,'sure','sure',0,0,0.2667,'S600',1,'*'),
(448,'syndication','syndication',0,0,0.7333,'S53235',1,'*'),
(449,'tagging','tagging',0,0,0.4667,'T252',1,'*'),
(450,'tags','tags',0,0,0.2667,'T200',1,'*'),
(451,'take','take',0,0,0.2667,'T200',1,'*'),
(452,'these','these',0,0,0.3333,'T200',1,'*'),
(453,'top','top',0,0,0.2,'T100',1,'*'),
(454,'type','type',0,0,0.2667,'T100',1,'*'),
(455,'website','website',0,0,0.4667,'W123',2,'*'),
(470,'background','background',0,0,0.6667,'B2653',1,'*'),
(471,'cassiopeia','cassiopeia',0,0,0.6667,'C100',1,'*'),
(472,'colour','colour',0,0,0.4,'C460',2,'*'),
(473,'example','example',0,0,0.4667,'E2514',1,'*'),
(474,'feel','feel',0,0,0.2667,'F400',1,'*'),
(475,'font','font',0,0,0.2667,'F530',1,'*'),
(476,'highlights','highlights',0,0,0.6667,'H24232',1,'*'),
(477,'installed','installed',0,0,0.6,'I52343',1,'*'),
(485,'7','7',0,0,0.1,'',1,'*'),
(486,'accusam','accusam',0,0,0.4667,'A250',1,'*'),
(487,'aliquyam','aliquyam',0,0,0.5333,'A425',1,'*'),
(488,'amet','amet',0,0,0.2667,'A530',3,'*'),
(489,'beautiful','beautiful',0,0,0.6,'B314',1,'*'),
(490,'built','built',0,0,0.3333,'B430',1,'*'),
(491,'clita','clita',0,0,0.3333,'C430',1,'*'),
(492,'consetetur','consetetur',0,0,0.6667,'C5236',1,'*'),
(493,'diam','diam',0,0,0.2667,'D500',2,'*'),
(494,'dolor','dolor',0,0,0.3333,'D460',3,'*'),
(495,'dolore','dolore',0,0,0.4,'D460',2,'*'),
(496,'dolores','dolores',0,0,0.4667,'D462',1,'*'),
(497,'duo','duo',0,0,0.2,'D000',1,'*'),
(498,'ea','ea',0,0,0.1333,'E000',1,'*'),
(499,'eirmod','eirmod',0,0,0.4,'E653',1,'*'),
(500,'elitr','elitr',0,0,0.3333,'E436',1,'*'),
(501,'eos','eos',0,0,0.2,'E200',1,'*'),
(502,'erat','erat',0,0,0.2667,'E630',2,'*'),
(503,'est','est',0,0,0.2,'E230',1,'*'),
(504,'et','et',0,0,0.1333,'E300',1,'*'),
(505,'gubergren','gubergren',0,0,0.6,'G16265',1,'*'),
(506,'invidunt','invidunt',0,0,0.5333,'I51353',1,'*'),
(507,'ipsum','ipsum',0,0,0.3333,'I125',3,'*'),
(508,'justo','justo',0,0,0.3333,'J300',1,'*'),
(509,'kasd','kasd',0,0,0.2667,'K300',1,'*'),
(510,'labore','labore',0,0,0.4,'L160',1,'*'),
(511,'lorem','lorem',0,0,0.3333,'L650',2,'*'),
(512,'magna','magna',0,0,0.3333,'M250',2,'*'),
(513,'no','no',0,0,0.1333,'N000',1,'*'),
(514,'nonumy','nonumy',0,0,0.4,'N000',1,'*'),
(515,'presentation','presentation',0,0,0.8,'P62535',1,'*'),
(516,'rebum','rebum',0,0,0.3333,'R150',1,'*'),
(517,'sadipscing','sadipscing',0,0,0.6667,'S31252',1,'*'),
(518,'sanctus','sanctus',0,0,0.4667,'S5232',1,'*'),
(519,'sea','sea',0,0,0.2,'S000',2,'*'),
(520,'sed','sed',0,0,0.2,'S300',2,'*'),
(521,'sit','sit',0,0,0.2,'S300',3,'*'),
(522,'stet','stet',0,0,0.2667,'S300',1,'*'),
(523,'takimata','takimata',0,0,0.5333,'T253',1,'*'),
(524,'tempor','tempor',0,0,0.4,'T516',1,'*'),
(525,'ut','ut',0,0,0.1333,'U300',2,'*'),
(526,'vero','vero',0,0,0.2667,'V600',1,'*'),
(527,'voluptua','voluptua',0,0,0.5333,'V413',1,'*'),
(528,'websites','websites',0,0,0.5333,'W1232',1,'*'),
(548,'amaranth','amaranth',0,0,0.5333,'A5653',1,'*'),
(549,'artichoke','artichoke',0,0,0.6,'A632',1,'*'),
(550,'asparagus','asparagus',0,0,0.6,'A2162',1,'*'),
(551,'avocado','avocado',0,0,0.4667,'A123',1,'*'),
(552,'azuki','azuki',0,0,0.3333,'A200',1,'*'),
(553,'back','back',0,0,0.2667,'B200',1,'*'),
(554,'bamboo','bamboo',0,0,0.4,'B510',1,'*'),
(555,'bean','bean',0,0,0.2667,'B500',1,'*'),
(556,'beetroot','beetroot',0,0,0.5333,'B363',1,'*'),
(557,'bell','bell',0,0,0.2667,'B400',1,'*'),
(558,'brussels','brussels',0,0,0.5333,'B6242',1,'*'),
(559,'bunya','bunya',0,0,0.3333,'B500',1,'*'),
(560,'cabbage','cabbage',0,0,0.4667,'C120',1,'*'),
(561,'carrot','carrot',0,0,0.4,'C630',2,'*'),
(562,'cauliflower','cauliflower',0,0,0.7333,'C4146',1,'*'),
(563,'celery','celery',0,0,0.4,'C460',1,'*'),
(564,'chard','chard',0,0,0.3333,'C630',1,'*'),
(565,'chestnut','chestnut',0,0,0.5333,'C353',1,'*'),
(566,'chickpea','chickpea',0,0,0.5333,'C100',1,'*'),
(567,'chickweed','chickweed',0,0,0.6,'C300',1,'*'),
(568,'contributed','contributed',0,0,0.7333,'C53613',1,'*'),
(569,'coriander','coriander',0,0,0.6,'C6536',1,'*'),
(570,'corn','corn',0,0,0.2667,'C650',1,'*'),
(571,'daikon','daikon',0,0,0.4,'D250',1,'*'),
(572,'desert','desert',0,0,0.4,'D263',1,'*'),
(573,'endive','endive',0,0,0.4,'E531',1,'*'),
(574,'fennel','fennel',0,0,0.4,'F540',1,'*'),
(575,'gourd','gourd',0,0,0.3333,'G630',1,'*'),
(576,'gram','gram',0,0,0.2667,'G650',1,'*'),
(577,'green','green',0,0,0.3333,'G650',1,'*'),
(578,'greens','greens',0,0,0.4,'G652',1,'*'),
(579,'horseradish','horseradish',0,0,0.7333,'H62632',1,'*'),
(580,'kale','kale',0,0,0.2667,'K400',1,'*'),
(581,'kohlrabi','kohlrabi',0,0,0.5333,'K461',1,'*'),
(582,'kombu','kombu',0,0,0.3333,'K510',1,'*'),
(583,'lettuce','lettuce',0,0,0.4667,'L320',1,'*'),
(584,'lotus','lotus',0,0,0.3333,'L320',1,'*'),
(585,'maize','maize',0,0,0.3333,'M200',1,'*'),
(586,'moon','moon',0,0,0.2667,'M000',1,'*'),
(587,'napa','napa',0,0,0.2667,'N100',1,'*'),
(588,'nori','nori',0,0,0.2667,'N600',1,'*'),
(589,'nuts','nuts',0,0,0.2667,'N320',1,'*'),
(590,'onion','onion',0,0,0.3333,'O500',1,'*'),
(591,'pea','pea',0,0,0.2,'P000',1,'*'),
(592,'pepper','pepper',0,0,0.4,'P600',1,'*'),
(593,'potato','potato',0,0,0.4,'P300',1,'*'),
(594,'pumpkin','pumpkin',0,0,0.4667,'P5125',1,'*'),
(595,'purslane','purslane',0,0,0.5333,'P6245',1,'*'),
(596,'raisin','raisin',0,0,0.4,'R250',1,'*'),
(597,'ricebean','ricebean',0,0,0.5333,'R215',1,'*'),
(598,'root','root',0,0,0.2667,'R300',1,'*'),
(599,'rutabaga','rutabaga',0,0,0.5333,'R312',1,'*'),
(600,'salsify','salsify',0,0,0.4667,'S421',1,'*'),
(601,'scallion','scallion',0,0,0.5333,'S450',1,'*'),
(602,'seakale','seakale',0,0,0.4667,'S400',1,'*'),
(603,'shoot','shoot',0,0,0.3333,'S300',1,'*'),
(604,'soko','soko',0,0,0.2667,'S000',1,'*'),
(605,'spinach','spinach',0,0,0.4667,'S152',1,'*'),
(606,'sprout','sprout',0,0,0.4,'S163',1,'*'),
(607,'swiss','swiss',0,0,0.3333,'S000',1,'*'),
(608,'thank','thank',0,0,0.3333,'T520',1,'*'),
(609,'uurnip','uurnip',0,0,0.4,'U651',1,'*'),
(610,'volunteers','volunteers',0,0,0.6667,'V45362',1,'*'),
(611,'wakame','wakame',0,0,0.4,'W250',1,'*'),
(612,'water','water',0,0,0.3333,'W360',1,'*'),
(613,'watercress','watercress',0,0,0.6667,'W36262',1,'*'),
(614,'we','we',0,0,0.1333,'W000',3,'*'),
(615,'winter','winter',0,0,0.4,'W536',1,'*'),
(616,'yarrow','yarrow',0,0,0.4,'Y600',1,'*'),
(675,'bears','bears',0,0,0.3333,'B620',1,'*'),
(676,'bonbon','bonbon',0,0,0.4,'B515',1,'*'),
(677,'brownie','brownie',0,0,0.4667,'B650',1,'*'),
(678,'cake','cake',0,0,0.2667,'C000',1,'*'),
(679,'candy','candy',0,0,0.3333,'C530',1,'*'),
(680,'cheesecake','cheesecake',0,0,0.6667,'C000',1,'*'),
(681,'chocolate','chocolate',0,0,0.6,'C430',1,'*'),
(682,'chupa','chupa',0,0,0.3333,'C100',1,'*'),
(683,'chups','chups',0,0,0.3333,'C120',1,'*'),
(684,'cotton','cotton',0,0,0.4,'C350',1,'*'),
(685,'cream','cream',0,0,0.3333,'C650',1,'*'),
(686,'cupcake','cupcake',0,0,0.4667,'C120',1,'*'),
(687,'danish','danish',0,0,0.4,'D520',1,'*'),
(688,'donut','donut',0,0,0.3333,'D530',1,'*'),
(689,'dragée','dragée',0,0,0.4,'D620',1,'*'),
(690,'gummi','gummi',0,0,0.3333,'G500',1,'*'),
(691,'halvah','halvah',0,0,0.4,'H410',1,'*'),
(692,'ice','ice',0,0,0.2,'I200',1,'*'),
(693,'icing','icing',0,0,0.3333,'I252',1,'*'),
(694,'jelly-o','jelly-o',0,0,0.4667,'J400',1,'*'),
(695,'liquorice','liquorice',0,0,0.6,'L262',1,'*'),
(696,'lollipop','lollipop',0,0,0.5333,'L100',1,'*'),
(697,'macaroon','macaroon',0,0,0.5333,'M265',1,'*'),
(698,'marshmallow','marshmallow',0,0,0.7333,'M6254',1,'*'),
(699,'muffin','muffin',0,0,0.4,'M150',1,'*'),
(700,'oat','oat',0,0,0.2,'O300',1,'*'),
(701,'pie','pie',0,0,0.2,'P000',1,'*'),
(702,'plum','plum',0,0,0.2667,'P450',1,'*'),
(703,'powder','powder',0,0,0.4,'P360',1,'*'),
(704,'present','present',0,0,0.4667,'P6253',1,'*'),
(705,'proudly','proudly',0,0,0.4667,'P634',1,'*'),
(706,'roll','roll',0,0,0.2667,'R400',1,'*'),
(707,'sesame','sesame',0,0,0.4,'S500',1,'*'),
(708,'snaps','snaps',0,0,0.3333,'S512',1,'*'),
(709,'soufflé','soufflé',0,0,0.4667,'S140',1,'*'),
(710,'sugar','sugar',0,0,0.3333,'S600',1,'*'),
(711,'sweet','sweet',0,0,0.3333,'S300',1,'*'),
(712,'tiramisu','tiramisu',0,0,0.5333,'T652',1,'*'),
(713,'topping','topping',0,0,0.4667,'T152',1,'*'),
(714,'version','version',0,0,0.4667,'V625',1,'*'),
(715,'workflows','workflows',0,0,0.6,'W62142',2,'*'),
(738,'\'articles\'','\'articles\'',0,0,0.6667,'A63242',1,'*'),
(739,'\'content\'','\'content\'',0,0,0.6,'C5353',1,'*'),
(740,'\'enable','\'enable',0,0,0.4667,'E514',1,'*'),
(741,'\'integration\'','\'integration\'',0,0,0.8667,'I532635',1,'*'),
(742,'\'options\'','\'options\'',0,0,0.6,'O1352',1,'*'),
(743,'\'workflows\'.','\'workflows\'.',0,0,0.8,'W62142',1,'*'),
(744,'\'yes\'','\'yes\'',0,0,0.3333,'Y200',1,'*'),
(745,'administration','administration',0,0,0.9333,'A3523635',1,'*'),
(746,'again','again',0,0,0.3333,'A250',1,'*'),
(747,'area','area',0,0,0.2667,'A600',1,'*'),
(748,'component','component',0,0,0.6,'C5153',1,'*'),
(749,'data','data',0,0,0.2667,'D000',1,'*'),
(750,'enable','enable',0,0,0.4,'E514',1,'*'),
(751,'enabled','enabled',0,0,0.4667,'E5143',1,'*'),
(752,'functionality','functionality',0,0,0.8667,'F523543',1,'*'),
(753,'manage','manage',0,0,0.4,'M200',1,'*'),
(754,'must','must',0,0,0.2667,'M230',1,'*'),
(755,'provided','provided',0,0,0.5333,'P613',1,'*'),
(756,'related','related',0,0,0.4667,'R430',1,'*'),
(757,'section','section',0,0,0.4667,'S350',1,'*'),
(758,'stages','stages',0,0,0.4,'S320',1,'*'),
(759,'they','they',0,0,0.2667,'T000',1,'*'),
(760,'through','through',0,0,0.4667,'T620',1,'*'),
(761,'transitions','transitions',0,0,0.7333,'T652352',1,'*'),
(762,'until','until',0,0,0.3333,'U534',1,'*'),
(763,'workflow','workflow',0,0,0.5333,'W6214',1,'*'),
(764,'workflow\'','workflow\'',0,0,0.6,'W6214',1,'*'),
(769,'ad','ad',0,0,0.1333,'A300',1,'*'),
(770,'adipiscing','adipiscing',0,0,0.6667,'A31252',1,'*'),
(771,'aliquam','aliquam',0,0,0.4667,'A425',1,'*'),
(772,'aliquip','aliquip',0,0,0.4667,'A421',1,'*'),
(773,'arma','arma',0,0,0.2667,'A650',1,'*'),
(774,'cano','cano',0,0,0.2667,'C500',1,'*'),
(775,'consectetuer','consectetuer',0,0,0.8,'C5236',1,'*'),
(776,'consectetur','consectetur',0,0,0.7333,'C5236',1,'*'),
(777,'danger','danger',0,0,0.4,'D526',1,'*'),
(778,'display-1','display-1',0,0,0.6,'D214',1,'*'),
(779,'display-2','display-2',0,0,0.6,'D214',1,'*'),
(780,'display-3','display-3',0,0,0.6,'D214',1,'*'),
(781,'display-4','display-4',0,0,0.6,'D214',1,'*'),
(782,'displays','displays',0,0,0.5333,'D2142',1,'*'),
(783,'elit','elit',0,0,0.2667,'E430',1,'*'),
(784,'enim','enim',0,0,0.2667,'E500',1,'*'),
(785,'euismod','euismod',0,0,0.4667,'E253',1,'*'),
(786,'ex','ex',0,0,0.1333,'E200',1,'*'),
(787,'exerci','exerci',0,0,0.4,'E262',1,'*'),
(788,'h1','h1',0,0,0.1333,'H000',1,'*'),
(789,'h2','h2',0,0,0.1333,'H000',1,'*'),
(790,'h3','h3',0,0,0.1333,'H000',1,'*'),
(791,'h4','h4',0,0,0.1333,'H000',1,'*'),
(792,'h5','h5',0,0,0.1333,'H000',1,'*'),
(793,'info','info',0,0,0.2667,'I510',1,'*'),
(794,'laoreet','laoreet',0,0,0.4667,'L630',1,'*'),
(795,'lead','lead',0,0,0.2667,'L300',1,'*'),
(796,'li','li',0,0,0.1333,'L000',1,'*'),
(797,'lobortis','lobortis',0,0,0.5333,'L1632',1,'*'),
(798,'minim','minim',0,0,0.3333,'M000',1,'*'),
(799,'nibh','nibh',0,0,0.2667,'N100',1,'*'),
(800,'nisl','nisl',0,0,0.2667,'N240',1,'*'),
(801,'nonummy','nonummy',0,0,0.4667,'N000',1,'*'),
(802,'nostrud','nostrud',0,0,0.4667,'N2363',1,'*'),
(803,'ol','ol',0,0,0.1333,'O400',1,'*'),
(804,'p','p',0,0,0.0667,'P000',1,'*'),
(805,'primary','primary',0,0,0.4667,'P656',1,'*'),
(806,'quis','quis',0,0,0.2667,'Q000',1,'*'),
(807,'scheme','scheme',0,0,0.4,'S500',1,'*'),
(808,'secondary','secondary',0,0,0.6,'S536',1,'*'),
(809,'strong','strong',0,0,0.4,'S3652',1,'*'),
(810,'success','success',0,0,0.4667,'S000',1,'*'),
(811,'suscipit','suscipit',0,0,0.5333,'S130',1,'*'),
(812,'tation','tation',0,0,0.4,'T500',1,'*'),
(813,'text-danger','text-danger',0,0,0.7333,'T23526',1,'*'),
(814,'text-info','text-info',0,0,0.6,'T2351',1,'*'),
(815,'text-primary','text-primary',0,0,0.8,'T231656',1,'*'),
(816,'text-secondary','text-secondary',0,0,0.9333,'T232536',1,'*'),
(817,'text-success','text-success',0,0,0.8,'T232',1,'*'),
(818,'text-warning','text-warning',0,0,0.8,'T23652',1,'*'),
(819,'tincidunt','tincidunt',0,0,0.6,'T52353',1,'*'),
(820,'ul','ul',0,0,0.1333,'U400',1,'*'),
(821,'ullamcorper','ullamcorper',0,0,0.7333,'U452616',1,'*'),
(822,'veniam','veniam',0,0,0.4,'V500',1,'*'),
(823,'virumque','virumque',0,0,0.5333,'V652',1,'*'),
(824,'volutpat','volutpat',0,0,0.5333,'V4313',1,'*'),
(825,'warning','warning',0,0,0.4667,'W652',1,'*'),
(826,'wisi','wisi',0,0,0.2667,'W200',1,'*');
/*!40000 ALTER TABLE `adtuzyn3_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_terms_common`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_terms_common`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_terms_common` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_terms_common` VALUES
('a','en',0),
('about','en',0),
('above','en',0),
('after','en',0),
('again','en',0),
('against','en',0),
('all','en',0),
('am','en',0),
('an','en',0),
('and','en',0),
('any','en',0),
('are','en',0),
('aren\'t','en',0),
('as','en',0),
('at','en',0),
('be','en',0),
('because','en',0),
('been','en',0),
('before','en',0),
('being','en',0),
('below','en',0),
('between','en',0),
('both','en',0),
('but','en',0),
('by','en',0),
('can\'t','en',0),
('cannot','en',0),
('could','en',0),
('couldn\'t','en',0),
('did','en',0),
('didn\'t','en',0),
('do','en',0),
('does','en',0),
('doesn\'t','en',0),
('doing','en',0),
('don\'t','en',0),
('down','en',0),
('during','en',0),
('each','en',0),
('few','en',0),
('for','en',0),
('from','en',0),
('further','en',0),
('had','en',0),
('hadn\'t','en',0),
('has','en',0),
('hasn\'t','en',0),
('have','en',0),
('haven\'t','en',0),
('having','en',0),
('he','en',0),
('he\'d','en',0),
('he\'ll','en',0),
('he\'s','en',0),
('her','en',0),
('here','en',0),
('here\'s','en',0),
('hers','en',0),
('herself','en',0),
('him','en',0),
('himself','en',0),
('his','en',0),
('how','en',0),
('how\'s','en',0),
('i','en',0),
('i\'d','en',0),
('i\'ll','en',0),
('i\'m','en',0),
('i\'ve','en',0),
('if','en',0),
('in','en',0),
('into','en',0),
('is','en',0),
('isn\'t','en',0),
('it','en',0),
('it\'s','en',0),
('its','en',0),
('itself','en',0),
('let\'s','en',0),
('me','en',0),
('more','en',0),
('most','en',0),
('mustn\'t','en',0),
('my','en',0),
('myself','en',0),
('no','en',0),
('nor','en',0),
('not','en',0),
('of','en',0),
('off','en',0),
('on','en',0),
('once','en',0),
('only','en',0),
('or','en',0),
('other','en',0),
('ought','en',0),
('our','en',0),
('ours','en',0),
('ourselves','en',0),
('out','en',0),
('over','en',0),
('own','en',0),
('same','en',0),
('shan\'t','en',0),
('she','en',0),
('she\'d','en',0),
('she\'ll','en',0),
('she\'s','en',0),
('should','en',0),
('shouldn\'t','en',0),
('so','en',0),
('some','en',0),
('such','en',0),
('than','en',0),
('that','en',0),
('that\'s','en',0),
('the','en',0),
('their','en',0),
('theirs','en',0),
('them','en',0),
('themselves','en',0),
('then','en',0),
('there','en',0),
('there\'s','en',0),
('these','en',0),
('they','en',0),
('they\'d','en',0),
('they\'ll','en',0),
('they\'re','en',0),
('they\'ve','en',0),
('this','en',0),
('those','en',0),
('through','en',0),
('to','en',0),
('too','en',0),
('under','en',0),
('until','en',0),
('up','en',0),
('very','en',0),
('was','en',0),
('wasn\'t','en',0),
('we','en',0),
('we\'d','en',0),
('we\'ll','en',0),
('we\'re','en',0),
('we\'ve','en',0),
('were','en',0),
('weren\'t','en',0),
('what','en',0),
('what\'s','en',0),
('when','en',0),
('when\'s','en',0),
('where','en',0),
('where\'s','en',0),
('which','en',0),
('while','en',0),
('who','en',0),
('who\'s','en',0),
('whom','en',0),
('why','en',0),
('why\'s','en',0),
('with','en',0),
('won\'t','en',0),
('would','en',0),
('wouldn\'t','en',0),
('you','en',0),
('you\'d','en',0),
('you\'ll','en',0),
('you\'re','en',0),
('you\'ve','en',0),
('your','en',0),
('yours','en',0),
('yourself','en',0),
('yourselves','en',0);
/*!40000 ALTER TABLE `adtuzyn3_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_tokens`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_tokens` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_tokens_aggregate`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_finder_types`
--

DROP TABLE IF EXISTS `adtuzyn3_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_finder_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_finder_types` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_finder_types` DISABLE KEYS */;
INSERT INTO `adtuzyn3_finder_types` VALUES
(1,'Category',''),
(2,'Contact',''),
(3,'Article',''),
(4,'News Feed',''),
(5,'Tag','');
/*!40000 ALTER TABLE `adtuzyn3_finder_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_guidedtour_steps`
--

DROP TABLE IF EXISTS `adtuzyn3_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_guidedtour_steps`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `adtuzyn3_guidedtour_steps` VALUES
(1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION',6,'bottom','#jform_autostart0',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',7,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(8,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',8,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',9,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',10,'bottom','.button-new',2,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',11,'bottom','#jform_title',2,2,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',12,'bottom','#jform_description,#jform_description_ifr',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',13,'bottom','#jform_published',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',14,'top','#jform_position',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',15,'top','#jform_target',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',16,'top','#jform_type',2,3,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',17,'bottom','#save-group-children-save .button-save',2,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(18,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',18,'bottom','',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',19,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',20,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',21,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',22,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',23,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',24,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',25,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',26,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',27,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',28,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',29,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',30,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(31,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',31,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',32,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',33,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',34,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',35,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',36,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',37,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',38,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',39,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',40,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',41,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',42,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(43,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',43,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',44,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',45,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',46,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',47,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',48,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(49,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',49,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',50,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',51,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',52,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',53,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',54,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',55,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',56,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',57,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',58,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',59,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(60,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',60,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',61,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',62,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',63,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',64,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',65,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',66,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',67,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',68,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',69,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(70,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',70,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',71,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',72,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',73,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',74,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',75,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',76,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',77,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',78,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',79,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',80,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',81,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(82,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',82,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',83,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',84,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',85,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',86,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',87,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',88,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',89,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',90,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',91,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',92,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',93,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(94,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',94,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',95,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',96,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',97,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',98,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',99,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',100,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(101,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',101,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',102,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',103,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',104,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',105,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',106,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',107,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',108,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',109,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',110,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',111,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(112,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',112,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',113,'right','#sidebarmenu',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',114,'center','',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',115,'left','.quickicons-for-update_quickicon .card',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',116,'bottom','#header',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL),
(117,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',117,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,'*','',NULL);
/*!40000 ALTER TABLE `adtuzyn3_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_guidedtours`
--

DROP TABLE IF EXISTS `adtuzyn3_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_guidedtours`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_guidedtours` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_guidedtours` DISABLE KEYS */;
INSERT INTO `adtuzyn3_guidedtours` VALUES
(1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,0),
(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',12,'[\"com_cpanel\"]','administrator/index.php','2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL,1,'*','',1,1);
/*!40000 ALTER TABLE `adtuzyn3_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_history`
--

DROP TABLE IF EXISTS `adtuzyn3_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `is_legacy` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_history`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_history` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_history` DISABLE KEYS */;
INSERT INTO `adtuzyn3_history` VALUES
(1,'com_tags.tag.2','','2026-08-20 08:31:21',680,382,'c9d17c379e6aabb77a9227ab78cd40849dfdcd00','{\"id\":2,\"title\":\"Millions\",\"alias\":\"millions\",\"parent_id\":1,\"published\":1,\"access\":1,\"created_user_id\":680,\"language\":\"*\",\"description\":\"\",\"typeAlias\":\"com_tags.tag\",\"level\":1,\"lft\":1,\"rgt\":2,\"note\":\"\",\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_time\":\"2026-08-20 08:31:21\",\"created_by_alias\":\"\",\"images\":\"{}\",\"urls\":\"{}\",\"publish_up\":null,\"publish_down\":null}',0,1,0),
(2,'com_tags.tag.3','','2026-08-20 08:31:21',680,384,'ee47a98e77242e54c0899e5940a17c34a3700d53','{\"id\":3,\"title\":\"Worldwide\",\"alias\":\"worldwide\",\"parent_id\":1,\"published\":1,\"access\":1,\"created_user_id\":680,\"language\":\"*\",\"description\":\"\",\"typeAlias\":\"com_tags.tag\",\"level\":1,\"lft\":3,\"rgt\":4,\"note\":\"\",\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_time\":\"2026-08-20 08:31:21\",\"created_by_alias\":\"\",\"images\":\"{}\",\"urls\":\"{}\",\"publish_up\":null,\"publish_down\":null}',0,1,0),
(3,'com_tags.tag.4','','2026-08-20 08:31:21',680,374,'b651cd085882f489abe307c25af9ea54c1b72b2f','{\"id\":4,\"title\":\"Love\",\"alias\":\"love\",\"parent_id\":1,\"published\":1,\"access\":1,\"created_user_id\":680,\"language\":\"*\",\"description\":\"\",\"typeAlias\":\"com_tags.tag\",\"level\":1,\"lft\":5,\"rgt\":6,\"note\":\"\",\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_time\":\"2026-08-20 08:31:21\",\"created_by_alias\":\"\",\"images\":\"{}\",\"urls\":\"{}\",\"publish_up\":null,\"publish_down\":null}',0,1,0),
(4,'com_tags.tag.5','','2026-08-20 08:31:21',680,382,'3510797df29947b81e39c6c71f97cdf3f285843e','{\"id\":5,\"title\":\"Joomla 6\",\"alias\":\"joomla-6\",\"parent_id\":4,\"published\":1,\"access\":1,\"created_user_id\":680,\"language\":\"*\",\"description\":\"\",\"typeAlias\":\"com_tags.tag\",\"level\":2,\"lft\":6,\"rgt\":7,\"note\":\"\",\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_time\":\"2026-08-20 08:31:21\",\"created_by_alias\":\"\",\"images\":\"{}\",\"urls\":\"{}\",\"publish_up\":null,\"publish_down\":null}',0,1,0),
(5,'com_content.category.8','','2026-08-20 08:31:21',680,376,'ed547cbb6967ae7393a8407ab920a94653553b00','{\"title\":\"Blog\",\"parent_id\":1,\"id\":8,\"published\":1,\"access\":1,\"created_user_id\":680,\"extension\":\"com_content\",\"level\":1,\"alias\":\"blog\",\"associations\":{},\"description\":\"\",\"language\":\"*\",\"params\":\"{\\\"workflow_id\\\":\\\"2\\\"}\",\"typeAlias\":\"{extension}.category\",\"lft\":11,\"rgt\":12,\"asset_id\":124,\"note\":\"\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"\",\"created_time\":\"2026-08-20 08:31:21\"}',0,1,0),
(6,'com_content.category.9','','2026-08-20 08:31:21',680,355,'d199fb4497eb15e71f4232ec2007be2edbfd0531','{\"title\":\"Help\",\"parent_id\":1,\"id\":9,\"published\":1,\"access\":1,\"created_user_id\":680,\"extension\":\"com_content\",\"level\":1,\"alias\":\"help\",\"associations\":{},\"description\":\"\",\"language\":\"*\",\"params\":\"{}\",\"typeAlias\":\"{extension}.category\",\"lft\":13,\"rgt\":14,\"asset_id\":125,\"note\":\"\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"\",\"created_time\":\"2026-08-20 08:31:21\"}',0,1,0),
(7,'com_content.category.10','','2026-08-20 08:31:21',680,360,'732b5b5df5693860cf4f7590ad9580af8417cda8','{\"title\":\"Joomla\",\"parent_id\":1,\"id\":10,\"published\":1,\"access\":1,\"created_user_id\":680,\"extension\":\"com_content\",\"level\":1,\"alias\":\"joomla\",\"associations\":{},\"description\":\"\",\"language\":\"*\",\"params\":\"{}\",\"typeAlias\":\"{extension}.category\",\"lft\":15,\"rgt\":16,\"asset_id\":126,\"note\":\"\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"\",\"created_time\":\"2026-08-20 08:31:21\"}',0,1,0),
(8,'com_content.category.11','','2026-08-20 08:31:21',680,368,'0955596c1cbd3cdba0db4bc27efed24b727a88fe','{\"title\":\"Typography\",\"parent_id\":1,\"id\":11,\"published\":1,\"access\":1,\"created_user_id\":680,\"extension\":\"com_content\",\"level\":1,\"alias\":\"typography\",\"associations\":{},\"description\":\"\",\"language\":\"*\",\"params\":\"{}\",\"typeAlias\":\"{extension}.category\",\"lft\":17,\"rgt\":18,\"asset_id\":127,\"note\":\"\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"\",\"created_time\":\"2026-08-20 08:31:21\"}',0,1,0),
(9,'com_content.article.1','','2026-08-20 08:31:21',680,621,'3d1eecca7d96374fe56dddf362e01d429e409abc','{\"catid\":9,\"title\":\"About\",\"introtext\":\"<p>This tells you a bit about this blog and the person who writes it.<\\/p><p>When you are logged in you will be able to edit this page by selecting the edit icon.<\\/p>\",\"fulltext\":\"\",\"id\":1,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"about\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"images\":\"\",\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":128,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(10,'com_content.article.2','','2026-08-20 08:31:21',680,2429,'3bef67b62feb411e0063f8b9376889ccb128d6ca','{\"catid\":9,\"access\":3,\"title\":\"Working on Your Site\",\"introtext\":\"<p>Here are some basic tips for working on your site.<\\/p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.<\\/li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.<\\/li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.<\\/li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.<\\/li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.<\\/li><li>You can learn much more about working with Joomla from the <a href=\\\"https:\\/\\/docs.joomla.org\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Joomla documentation site<\\/a> and get help from other users at the <a href=\\\"https:\\/\\/forum.joomla.org\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Joomla forums<\\/a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.<\\/li><\\/ul>\",\"fulltext\":\"\",\"id\":2,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"working-on-your-site\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"images\":\"\",\"typeAlias\":\"com_content.article\",\"asset_id\":129,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(11,'com_content.article.3','','2026-08-20 08:31:21',680,1620,'f0f98a14fb74eec822bfe4197598bc76cf1f94b5','{\"catid\":8,\"featured\":1,\"tags\":{\"0\":\"2\",\"1\":\"3\",\"2\":\"4\",\"3\":\"5\"},\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Amazing Andromeda Galaxy\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"title\":\"Welcome to your blog\",\"introtext\":\"<p>This is a sample blog posting.<\\/p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p><p>Go ahead, you can\'t break it.<\\/p>\",\"fulltext\":\"\",\"id\":3,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"welcome-to-your-blog\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":130,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(12,'com_content.article.4','','2026-08-20 08:31:21',680,1975,'c7558adb13c6d3f22b5059c33cf550ec5113cf3a','{\"catid\":8,\"featured\":1,\"tags\":{\"0\":\"2\",\"1\":\"3\",\"2\":\"4\",\"3\":\"5\"},\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"authorValue\":\"Uurnip greens yarrow ricebean endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale.\",\"title\":\"About your home page\",\"introtext\":\"<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.<\\/p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.<\\/p>\",\"fulltext\":\"<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.<\\/p>\",\"id\":4,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"about-your-home-page\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":131,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(13,'com_content.article.5','','2026-08-20 08:31:21',680,2417,'418dcf3c3d79ef43c55b282fd539d67818e9775a','{\"catid\":8,\"featured\":1,\"tags\":{\"0\":\"2\",\"1\":\"3\",\"2\":\"4\",\"3\":\"5\"},\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"Crab Nebula\\\",\\\"image_fulltext_alt_empty\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"title\":\"Your Modules\",\"introtext\":\"<p>Your site has some commonly used modules already preconfigured. These include:<\\/p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.<\\/li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.<\\/li><li>Older Posts (type: Articles), which lists out articles by categories.<\\/li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.<\\/li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.<\\/li><\\/ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.<\\/p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\\\"https:\\/\\/extensions.joomla.org\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Joomla Extensions Directory.<\\/a><\\/p>\",\"fulltext\":\"\",\"id\":5,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"your-modules\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":132,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(14,'com_content.article.6','','2026-08-20 08:31:21',680,1648,'3794c83f6e4c00d7650dcdd8d51e05f83c5716a5','{\"catid\":8,\"featured\":1,\"tags\":{\"0\":\"2\",\"1\":\"3\",\"2\":\"4\",\"3\":\"5\"},\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"title\":\"Your Template\",\"introtext\":\"<p>Templates control the look and feel of your website.<\\/p><p>This blog is installed with the Cassiopeia template.<\\/p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.<\\/p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.<\\/p><p>More options are available in the site administrator. You may also install a new template using the extension manager.<\\/p>\",\"fulltext\":\"\",\"id\":6,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"your-template\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":133,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(15,'com_content.article.7','','2026-08-20 08:31:21',680,1131,'c6b8d9e4a243445e878b21e6266fa368ff7c6bb9','{\"catid\":10,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"title\":\"Millions\",\"introtext\":\"<p><strong>Millions of Websites are built on Joomla!<\\/strong><\\/p><p>Learn more about beautiful blog presentation.<\\/p>\",\"fulltext\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est<\\/p>\",\"id\":7,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"millions\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":134,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(16,'com_content.article.8','','2026-08-20 08:31:21',680,1405,'086708bd666118ae821bbc557a7a4ef13f0ae21c','{\"catid\":10,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"title\":\"Love\",\"introtext\":\"<p><strong>We love Joomla to the moon and back!<\\/strong><\\/p><p>Thank you to all volunteers who have contributed!<\\/p>\",\"fulltext\":\"<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.<\\/p> \",\"id\":8,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"love\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":135,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(17,'com_content.article.9','','2026-08-20 08:31:21',680,1243,'82e2531d0a30d1fa1d2debaba062025f5ad9bb18','{\"catid\":10,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"title\":\"Joomla\",\"introtext\":\"<p><strong>We proudly present Joomla Version 6!<\\/strong><\\/p><p>Learn more about workflows in Joomla.<\\/p>\",\"fulltext\":\"<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Drag\\u00e9e carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu souffl\\u00e9 oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy.<\\/p>\",\"id\":9,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"joomla\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":136,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(18,'com_content.article.10','','2026-08-20 08:31:21',680,1736,'b4ae88abd6f992343205c120222f0e2d4f414fcf','{\"catid\":9,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-end\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"authorValue\":\"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\",\"title\":\"Workflows\",\"introtext\":\"<p>Workflows manage the stages your articles must go through until they are published.<\\/p><p>The component to manage workflows is not enabled by default.<\\/p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.<\\/p><ol><li>Access the administration area<\\/li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'<\\/li><li>Save changes<\\/li><\\/ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.<\\/p><p>When you edit an article you will also see the new transitions for articles related to workflows.<\\/p>\",\"fulltext\":\"\",\"id\":10,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"workflows\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":137,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0),
(19,'com_content.article.11','','2026-08-20 08:31:21',680,3296,'467dfa13328a7bfad3a86cc281767a932262f31c','{\"catid\":11,\"title\":\"Typography\",\"introtext\":\"<h1>Colour Scheme<\\/h1> <p class=\\\"d-grid gap-2 d-sm-block\\\"> <span class=\\\"btn btn-secondary\\\">secondary<\\/span>   <span class=\\\"btn btn-primary\\\">primary<\\/span>   <span class=\\\"btn btn-info\\\">info<\\/span>   <span class=\\\"btn btn-success\\\">success<\\/span>   <span class=\\\"btn btn-warning\\\">warning<\\/span>   <span class=\\\"btn btn-danger\\\">danger<\\/span> <\\/p> <p><span class=\\\"text text-secondary\\\">text-secondary<\\/span>  <span class=\\\"text text-primary\\\">text-primary<\\/span>  <span class=\\\"text text-info\\\">text-info<\\/span>  <span class=\\\"text text-success\\\">text-success<\\/span>  <span class=\\\"text text-warning\\\">text-warning<\\/span>  <span class=\\\"text text-danger\\\">text-danger<\\/span><\\/p><h1>Typography (h1)<\\/h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h2>Lorem Ipsum Dolor Sit Amet (h2)<\\/h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit <\\/strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h3>Lorem Ipsum Dolor Sit Amet (h3)<\\/h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h4>Lorem Ipsum Dolor Sit Amet (h4)<\\/h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h5>Lorem Ipsum Dolor Sit Amet (h5)<\\/h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p> <p><a href=\\\"index.php\\\"> Lorem ipsum dolor (a)<\\/a><\\/p><h1>Lists<\\/h1> <p>(ol)(li)<\\/p> <ol> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ol> <p>(ul)(li)<\\/p> <ul> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ul> <h1>Displays<\\/h1><p class=\\\"display-1\\\">Lorem (display-1)<\\/p><p class=\\\"display-2\\\">Lorem (display-2)<\\/p><p class=\\\"display-3\\\">Lorem ipsum (display-3)<\\/p><p class=\\\"display-4\\\">Lorem ipsum (display-4)<\\/p><p class=\\\"lead\\\">Lorem ipsum arma virumque cano (lead)<\\/p>\",\"fulltext\":\"\",\"id\":11,\"ordering\":0,\"created_user_id\":680,\"created_by_alias\":\"Joomla\",\"alias\":\"typography\",\"language\":\"*\",\"associations\":{},\"metakey\":\"\",\"metadesc\":\"\",\"featured\":0,\"state\":1,\"images\":\"\",\"access\":1,\"typeAlias\":\"com_content.article\",\"asset_id\":138,\"created\":\"2026-08-20 08:31:21\",\"created_by\":680,\"publish_up\":\"2026-08-20 08:31:21\",\"publish_down\":null,\"urls\":\"{}\",\"attribs\":\"{}\",\"metadata\":\"{}\",\"note\":\"\"}',0,1,0);
/*!40000 ALTER TABLE `adtuzyn3_history` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_languages`
--

DROP TABLE IF EXISTS `adtuzyn3_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_languages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_languages` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_languages` DISABLE KEYS */;
INSERT INTO `adtuzyn3_languages` VALUES
(1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `adtuzyn3_languages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_mail_templates`
--

DROP TABLE IF EXISTS `adtuzyn3_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_mail_templates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_mail_templates` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_mail_templates` DISABLE KEYS */;
INSERT INTO `adtuzyn3_mail_templates` VALUES
('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_joomlaupdate.update.failed','com_joomlaupdate','','COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_SUBJECT','COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_BODY','','','{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_joomlaupdate.update.success','com_joomlaupdate','','COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_SUBJECT','COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_BODY','','','{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_content_joomla.newarticle','plg_content_joomla','','PLG_CONTENT_JOOMLA_NEW_ARTICLE_SUBJECT','PLG_CONTENT_JOOMLA_NEW_ARTICLE_BODY','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"title\",\"url\"]}'),
('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `adtuzyn3_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_menu`
--

DROP TABLE IF EXISTS `adtuzyn3_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_menu`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_menu` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_menu` DISABLE KEYS */;
INSERT INTO `adtuzyn3_menu` VALUES
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,91,0,'*',0,NULL,NULL),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),
(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),
(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),
(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),
(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),
(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),
(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),
(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),
(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),
(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),
(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),
(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),
(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),
(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,19,NULL,NULL,0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL),
(102,'0main-menu-blog','Blog','blog','','blog','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":4,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-2\",\"show_pagination\":2,\"secure\":0,\"show_page_heading\":1}',43,44,0,'*',0,NULL,NULL),
(103,'0main-menu-blog','Help','help','','help','index.php?option=com_content&view=category&layout=blog&id=9','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"blog_class_leading\":\"\",\"blog_class\":\"boxed\",\"num_leading_articles\":0,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":4,\"show_pagination_results\":1,\"article_layout\":\"_:default\",\"link_titles\":0,\"info_block_show_title\":\"\",\"show_category\":0,\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":0,\"link_author\":\"\",\"show_create_date\":0,\"show_modify_date\":\"\",\"show_publish_date\":0,\"show_hits\":0,\"menu_text\":1,\"menu_show\":1,\"show_page_heading\":1,\"secure\":0}',45,50,0,'*',0,NULL,NULL),
(104,'0main-menu-blog','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,22,NULL,NULL,0,5,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":101,\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":101,\"secure\":0}',51,52,0,'*',0,NULL,NULL),
(105,'0main-menu-blog','Logout','logout','','logout','index.php?option=com_users&view=login&layout=logout&task=user.menulogout','component',1,1,1,22,NULL,NULL,0,2,' ',0,'{\"logout\":101,\"secure\":0}',53,54,0,'*',0,NULL,NULL),
(106,'0main-menu-blog','Sample Layouts','sample-layouts','','sample-layouts','','heading',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"heading\",\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',55,68,0,'*',0,NULL,NULL),
(107,'0main-menu-blog','Typography','typography','','typography','index.php?option=com_content&view=article&id=11&catid=11','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":0,\"link_titles\":0,\"show_intro\":1,\"info_block_position\":\"\",\"info_block_show_title\":0,\"show_category\":0,\"show_author\":0,\"show_create_date\":0,\"show_modify_date\":0,\"show_publish_date\":0,\"show_item_navigation\":0,\"show_hits\":0,\"show_tags\":0,\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"secure\":0}',69,70,0,'*',0,NULL,NULL),
(108,'1special-menu','Create a Post','create-a-post','','create-a-post','index.php?option=com_content&view=form&layout=edit','component',1,1,1,19,NULL,NULL,0,3,' ',0,'{\"enable_category\":1,\"catid\":8,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',71,76,0,'*',0,NULL,NULL),
(109,'1special-menu','Working on Your Site','working-on-your-site','','working-on-your-site','index.php?option=com_content&view=article&id=2','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',77,78,0,'*',0,NULL,NULL),
(110,'1special-menu','Site Administrator','site-administrator','','site-administrator','administrator','url',1,1,1,0,NULL,NULL,1,3,' ',0,'{\"menu_text\":1,\"secure\":0}',79,80,0,'*',0,NULL,NULL),
(111,'1special-menu','Change Password','change-password','','change-password','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,22,NULL,NULL,0,2,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',81,82,0,'*',0,NULL,NULL),
(112,'1special-menu','Log out','log-out','','log-out','index.php?option=com_users&view=login','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"logindescription_show\":1,\"logoutdescription_show\":1,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',83,84,0,'*',0,NULL,NULL),
(113,'2bottom-menu','Login','login-1','','login-1','index.php?Itemid=','alias',1,1,1,0,NULL,NULL,0,5,' ',0,'{\"aliasoptions\":104,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}',85,86,0,'*',0,NULL,NULL),
(114,'2bottom-menu','Logout','logout-1','','logout-1','index.php?Itemid=','alias',1,1,1,0,NULL,NULL,0,2,' ',0,'{\"aliasoptions\":105,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}',87,88,0,'*',0,NULL,NULL),
(115,'2bottom-menu','Search','search','','search','index.php?option=com_finder&view=search','component',1,1,1,23,NULL,NULL,0,1,' ',0,'{\"show_date_filters\":\"1\",\"show_advanced\":\"\",\"expand_advanced\":\"1\",\"show_taxonomy\":\"1\",\"show_date\":\"1\",\"show_url\":\"1\",\"menu_text\":0,\"menu_show\":0,\"secure\":0}',89,90,0,'*',0,NULL,NULL),
(116,'1special-menu','Site Settings','site-settings','','create-a-post/site-settings','index.php?option=com_config&view=config','component',1,108,2,20,NULL,NULL,0,6,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',72,73,0,'*',0,NULL,NULL),
(117,'1special-menu','Template Settings','template-settings','','create-a-post/template-settings','index.php?option=com_config&view=templates','component',1,108,2,20,NULL,NULL,0,6,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',74,75,0,'*',0,NULL,NULL),
(118,'0main-menu-blog','Blog','blog','','sample-layouts/blog','index.php?option=com_content&view=category&layout=blog&id=8','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":1,\"num_intro_articles\":2,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-1\",\"blog_class\":\"columns-2\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',56,57,0,'*',0,NULL,NULL),
(119,'0main-menu-blog','Category List','category-list','','sample-layouts/category-list','index.php?option=com_content&view=category&id=8','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"menu_text\":1,\"show_page_heading\":1,\"secure\":0}',58,59,0,'*',0,NULL,NULL),
(120,'0main-menu-blog','Articles','articles','','sample-layouts/articles','index.php?option=com_content&view=category&layout=blog&id=10','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":3,\"num_intro_articles\":0,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-3\",\"blog_class\":\"\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',60,67,0,'*',0,NULL,NULL),
(121,'0main-menu-blog','About your home page','about-your-home-page','','help/about-your-home-page','index.php?option=com_content&view=article&id=4','component',1,103,2,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}',46,47,0,'*',0,NULL,NULL),
(122,'0main-menu-blog','Workflows','workflows','','help/workflows','index.php?option=com_content&view=article&id=10','component',1,103,2,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}',48,49,0,'*',0,NULL,NULL),
(123,'0main-menu-blog','Millions','millions','','sample-layouts/articles/millions','index.php?option=com_content&view=article&id=7','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',61,62,0,'*',0,NULL,NULL),
(124,'0main-menu-blog','Love','love','','sample-layouts/articles/love','index.php?option=com_content&view=article&id=8','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',63,64,0,'*',0,NULL,NULL),
(125,'0main-menu-blog','Joomla','joomla','','sample-layouts/articles/joomla','index.php?option=com_content&view=article&id=9','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',65,66,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_menu_types`
--

DROP TABLE IF EXISTS `adtuzyn3_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_menu_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_menu_types` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_menu_types` DISABLE KEYS */;
INSERT INTO `adtuzyn3_menu_types` VALUES
(1,0,'mainmenu','Main Menu','The main menu for the site',0,1),
(2,139,'0main-menu-blog','Main Menu Blog ','The horizontal dropdown menu',0,0),
(3,140,'1special-menu','Special Menu ','',0,0),
(4,141,'2bottom-menu','Bottom Menu ','',0,0);
/*!40000 ALTER TABLE `adtuzyn3_menu_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_messages`
--

DROP TABLE IF EXISTS `adtuzyn3_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_messages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_messages` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_messages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_messages_cfg`
--

DROP TABLE IF EXISTS `adtuzyn3_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_messages_cfg`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_messages_cfg` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_modules`
--

DROP TABLE IF EXISTS `adtuzyn3_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_modules`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_modules` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_modules` DISABLE KEYS */;
INSERT INTO `adtuzyn3_modules` VALUES
(1,39,'Main Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),
(3,41,'Popular Articles','','',6,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),
(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),
(16,50,'Login Form','','',7,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
(17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(87,55,'Sample Data','','',1,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(88,67,'Latest Actions','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(89,68,'Privacy Dashboard','','',5,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),
(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),
(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),
(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),
(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(109,96,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*'),
(110,142,'Main Menu Blog','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"0main-menu-blog\",\"layout\":\"cassiopeia:collapse-metismenu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"nav\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(111,143,'Special Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',3,0,'{\"menutype\":\"1special-menu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"aside\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(112,144,'Syndication','','',6,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_syndicate',1,0,'{\"display_text\":1,\"text\":\"My Blog\",\"format\":\"rss\",\"layout\":\"_:default\",\"cache\":0,\"module_tag\":\"section\"}',0,'*'),
(113,145,'Archived Articles','','',4,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_articles',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":1,\"count\":10,\"category_filtering_type\":1,\"show_child_category_articles\":0,\"levels\":1,\"ex_or_include_articles\":0,\"exclude_current\":1,\"excluded_articles\":\"\",\"included_articles\":\"\",\"title_only\":1,\"articles_layout\":0,\"layout_columns\":3,\"item_title\":0,\"item_heading\":\"h4\",\"link_titles\":1,\"show_author\":0,\"show_category\":0,\"show_category_link\":0,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i\",\"show_hits\":0,\"info_layout\":0,\"show_tags\":0,\"trigger_events\":0,\"show_introtext\":0,\"introtext_limit\":100,\"image\":0,\"img_intro_full\":\"none\",\"show_readmore\":0,\"show_readmore_title\":1,\"readmore_limit\":15,\"show_featured\":\"show\",\"show_archived\":\"show\",\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":30,\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"month_year\",\"date_grouping_field\":\"created\",\"month_year_format\":\"F Y\",\"article_grouping_direction\":\"ksort\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":0}',0,'*'),
(114,146,'Latest Posts','','',6,'top-a',NULL,NULL,NULL,NULL,1,'mod_articles',1,0,'{\"mode\":\"normal\",\"show_on_article_page\":1,\"count\":3,\"category_filtering_type\":1,\"catid\":10,\"show_child_category_articles\":0,\"levels\":1,\"ex_or_include_articles\":0,\"exclude_current\":1,\"excluded_articles\":\"\",\"included_articles\":\"\",\"title_only\":0,\"articles_layout\":1,\"layout_columns\":3,\"item_title\":1,\"item_heading\":\"h3\",\"link_titles\":1,\"show_author\":0,\"show_category\":0,\"show_category_link\":1,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i\",\"show_hits\":0,\"info_layout\":1,\"show_tags\":0,\"trigger_events\":0,\"show_introtext\":1,\"introtext_limit\":0,\"image\":0,\"img_intro_full\":\"intro\",\"show_readmore\":1,\"show_readmore_title\":1,\"readmore_limit\":100,\"show_featured\":\"show\",\"show_archived\":\"hide\",\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":30,\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"date_grouping_field\":\"created\",\"month_year_format\":\"F Y\",\"article_grouping_direction\":\"ksort\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Cassiopeia-noCard\"}',0,'*'),
(115,147,'Older Posts','','',2,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_articles',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":1,\"count\":6,\"category_filtering_type\":1,\"catid\":8,\"show_child_category_articles\":0,\"levels\":1,\"ex_or_include_articles\":0,\"exclude_current\":1,\"excluded_articles\":\"\",\"included_articles\":\"\",\"title_only\":1,\"articles_layout\":0,\"layout_columns\":3,\"item_title\":0,\"item_heading\":\"h4\",\"link_titles\":1,\"show_author\":0,\"show_category\":0,\"show_category_link\":0,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i\",\"show_hits\":0,\"info_layout\":0,\"show_tags\":0,\"trigger_events\":0,\"show_introtext\":0,\"introtext_limit\":100,\"image\":0,\"img_intro_full\":\"none\",\"show_readmore\":0,\"show_readmore_title\":1,\"readmore_limit\":15,\"show_featured\":\"show\",\"show_archived\":\"hide\",\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":30,\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"date_grouping_field\":\"created\",\"month_year_format\":\"F Y\",\"article_grouping_direction\":\"ksort\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":0}',0,'*'),
(116,148,'Bottom Menu','','',1,'footer',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"2bottom-menu\",\"class_sfx\":\"menu-horizontal\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":0,\"layout\":\"cassiopeia:dropdown-metismenu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(117,149,'Search','','',1,'search',NULL,NULL,NULL,NULL,1,'mod_finder',1,1,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":0,\"alt_label\":\"Search\",\"show_button\":1,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"module_tag\":\"search\"}',0,'*'),
(118,150,'Image','','<p><h1 class=\"display-4 text-thin\">Welcome to Joomla on Cassiopeia!</h1><p class=\"lead\"><strong>You have chosen one of the most powerful CMS Systems in the world.</strong></p><p class=\"lead\">Cassiopeia is the multi-purpose frontend template for Joomla.</p><p><a class=\"btn btn-primary btn-lg\" href=\"index.php?option=com_content&view=article&id=11&catid=11\">Typography »</a></p></p>',1,'banner',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"images\\/banners\\/banner.jpg#joomlaImage:\\/\\/local-images\\/banners\\/banner.jpg?width=1140&height=600\",\"layout\":\"cassiopeia:banner\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\"}',0,'*'),
(119,151,'Popular Tags','','',1,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_tags_popular',1,1,'{\"maximum\":8,\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":1,\"display_count\":1,\"no_results_text\":0,\"minsize\":1,\"maxsize\":2,\"layout\":\"_:cloud\",\"owncache\":1,\"module_tag\":\"aside\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(120,152,'Similar Items','','',3,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_tags_similar',1,1,'{\"maximum\":5,\"matchtype\":\"any\",\"layout\":\"_:default\",\"owncache\":1,\"module_tag\":\"div\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(121,153,'Site Information','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_stats_admin',6,1,'{\"serverinfo\":1,\"siteinfo\":1,\"counter\":0,\"increase\":0,\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":12,\"header_tag\":\"h2\",\"style\":0}',1,'*');
/*!40000 ALTER TABLE `adtuzyn3_modules` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_modules_menu`
--

DROP TABLE IF EXISTS `adtuzyn3_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_modules_menu`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_modules_menu` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_modules_menu` DISABLE KEYS */;
INSERT INTO `adtuzyn3_modules_menu` VALUES
(1,0),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(14,0),
(15,0),
(16,-104),
(17,0),
(79,0),
(86,0),
(87,0),
(88,0),
(89,0),
(90,0),
(91,0),
(92,0),
(93,0),
(94,0),
(95,0),
(96,0),
(97,0),
(98,0),
(99,0),
(100,0),
(101,0),
(102,0),
(103,0),
(104,0),
(105,0),
(106,0),
(107,0),
(108,0),
(109,0),
(110,0),
(111,0),
(112,0),
(113,0),
(114,101),
(115,0),
(116,0),
(117,0),
(118,101),
(119,0),
(120,0),
(121,0);
/*!40000 ALTER TABLE `adtuzyn3_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_newsfeeds`
--

DROP TABLE IF EXISTS `adtuzyn3_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_newsfeeds`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_newsfeeds` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_overrider`
--

DROP TABLE IF EXISTS `adtuzyn3_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_overrider`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_overrider` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_overrider` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_postinstall_messages`
--

DROP TABLE IF EXISTS `adtuzyn3_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_postinstall_messages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_postinstall_messages` DISABLE KEYS */;
INSERT INTO `adtuzyn3_postinstall_messages` VALUES
(1,246,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(2,246,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(3,246,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),
(4,246,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1),
(5,246,'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_TITLE','COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_DESCRIPTION','COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_ACTION','com_joomlaupdate',1,'action','admin://components/com_joomlaupdate/postinstall/autoupdate.php','com_joomlaupdate_postinstall_autoupdate_action','admin://components/com_joomlaupdate/postinstall/autoupdate.php','com_joomlaupdate_postinstall_autoupdate_condition','5.4.0',1);
/*!40000 ALTER TABLE `adtuzyn3_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_privacy_consents`
--

DROP TABLE IF EXISTS `adtuzyn3_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_privacy_consents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_privacy_consents` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_privacy_requests`
--

DROP TABLE IF EXISTS `adtuzyn3_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_privacy_requests`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_privacy_requests` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_redirect_links`
--

DROP TABLE IF EXISTS `adtuzyn3_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_redirect_links`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_redirect_links` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_scheduler_logs`
--

DROP TABLE IF EXISTS `adtuzyn3_scheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_scheduler_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) unsigned NOT NULL,
  `taskid` int(10) unsigned NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  PRIMARY KEY (`id`),
  KEY `idx_taskname` (`taskname`),
  KEY `idx_tasktype` (`tasktype`),
  KEY `idx_lastdate` (`lastdate`),
  KEY `idx_nextdate` (`nextdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_scheduler_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_scheduler_logs` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_scheduler_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_scheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_scheduler_tasks`
--

DROP TABLE IF EXISTS `adtuzyn3_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_scheduler_tasks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `adtuzyn3_scheduler_tasks` VALUES
(1,97,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"20\",\"exec-time\":\"08:00\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,NULL,'2026-09-19 08:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}',NULL,'2026-08-20 08:27:13',680,NULL,NULL),
(2,98,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"08:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,NULL,'2026-08-21 08:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2026-08-20 08:27:13',680,NULL,NULL),
(3,99,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"08:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,NULL,'2026-08-21 08:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}',NULL,'2026-08-20 08:27:13',680,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_schemaorg`
--

DROP TABLE IF EXISTS `adtuzyn3_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_schemaorg`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_schemaorg` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_schemas`
--

DROP TABLE IF EXISTS `adtuzyn3_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_schemas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_schemas` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_schemas` DISABLE KEYS */;
INSERT INTO `adtuzyn3_schemas` VALUES
(246,'6.0.1-2025-10-29');
/*!40000 ALTER TABLE `adtuzyn3_schemas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_session`
--

DROP TABLE IF EXISTS `adtuzyn3_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_session`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_session` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_session` DISABLE KEYS */;
INSERT INTO `adtuzyn3_session` VALUES
(0x3036383131636236303230626339656539356137366339343630313561346535,0,1,1787214453,'joomla|s:828:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzg3MjE0NDUzO3M6NDoibGFzdCI7aToxNzg3MjE0NDUzO3M6Mzoibm93IjtpOjE3ODcyMTQ0NTM7fXM6NToidG9rZW4iO3M6MzI6ImY5ODNjMjhkNDM1MWFhNzY0Yzg3YTk0MTdkOGNhNmQ4Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czoyNjoiaHR0cHM6Ly8xMC4wLjEuMy9pbmRleC5waHAiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),
(0x3066323030313661613563366332366463393339636436386330616538633635,1,0,1787214685,'joomla|s:1600:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc4NzIxNDY1MjtzOjQ6Imxhc3QiO2k6MTc4NzIxNDY4NDtzOjM6Im5vdyI7aToxNzg3MjE0Njg1O31zOjU6InRva2VuIjtzOjMyOiIxMDg1OTlmNTgwMTdhYjhmZDA2NTU3MTA5NTAzNWM1MCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzYW1wbGVkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImJsb2ciO086ODoic3RkQ2xhc3MiOjM6e3M6ODoiYXJ0aWNsZXMiO2E6MTI6e2k6MDtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo0O2k6NTtpOjU7aTo2O2k6NjtpOjc7aTo3O2k6ODtpOjg7aTo5O2k6OTtpOjEwO2k6MTA7aToxMTtzOjY6ImNhdElkcyI7YTo0OntpOjA7aTo4O2k6MTtpOjk7aToyO2k6MTA7aTozO2k6MTE7fX1zOjk6Im1lbnV0eXBlcyI7YTozOntpOjA7czoxNToiMG1haW4tbWVudS1ibG9nIjtpOjE7czoxMzoiMXNwZWNpYWwtbWVudSI7aToyO3M6MTI6IjJib3R0b20tbWVudSI7fXM6MTM6Im1lbnVJZHNMZXZlbDEiO2E6MTQ6e2k6MDtpOjEwMjtpOjE7aToxMDM7aToyO2k6MTA0O2k6MztpOjEwNTtpOjQ7aToxMDY7aTo1O2k6MTA3O2k6NjtpOjEwODtpOjc7aToxMDk7aTo4O2k6MTEwO2k6OTtpOjExMTtpOjEwO2k6MTEyO2k6MTE7aToxMTM7aToxMjtpOjExNDtpOjEzO2k6MTE1O319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo2ODA7fXM6MTk6InBsZ19zeXN0ZW1fd2ViYXV0aG4iO086ODoic3RkQ2xhc3MiOjE6e3M6OToicmV0dXJuVXJsIjtzOjQxOiJodHRwczovL3d3dzEudGhlLWdhbGxleS51ay9hZG1pbmlzdHJhdG9yLyI7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',680,'adt-webmaster'),
(0x3737376136303235313961303762386539376431633332303062386133626237,0,1,1787214688,'joomla|s:828:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjM7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzg3MjE0NjQ0O3M6NDoibGFzdCI7aToxNzg3MjE0Njg3O3M6Mzoibm93IjtpOjE3ODcyMTQ2ODg7fXM6NToidG9rZW4iO3M6MzI6IjlhZDRlMGVjOTdlODlhN2I4MjJmZDU1NGZjYWI3ODY1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czoyNzoiaHR0cHM6Ly93d3cxLnRoZS1nYWxsZXkudWsvIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,'');
/*!40000 ALTER TABLE `adtuzyn3_session` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_tags`
--

DROP TABLE IF EXISTS `adtuzyn3_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_tags`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_tags` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_tags` DISABLE KEYS */;
INSERT INTO `adtuzyn3_tags` VALUES
(1,0,0,9,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',680,'2026-08-20 08:27:13','',680,'2026-08-20 08:27:13','','',0,'*',1,NULL,NULL),
(2,1,1,2,1,'millions','Millions','millions','','',1,NULL,NULL,1,'{}','','','{}',680,'2026-08-20 08:31:21','',680,'2026-08-20 08:31:21','{}','{}',0,'*',1,NULL,NULL),
(3,1,3,4,1,'worldwide','Worldwide','worldwide','','',1,NULL,NULL,1,'{}','','','{}',680,'2026-08-20 08:31:21','',680,'2026-08-20 08:31:21','{}','{}',0,'*',2,NULL,NULL),
(4,1,5,8,1,'love','Love','love','','',1,NULL,NULL,1,'{}','','','{}',680,'2026-08-20 08:31:21','',680,'2026-08-20 08:31:21','{}','{}',0,'*',3,NULL,NULL),
(5,4,6,7,2,'love/joomla-6','Joomla 6','joomla-6','','',1,NULL,NULL,1,'{}','','','{}',680,'2026-08-20 08:31:21','',680,'2026-08-20 08:31:21','{}','{}',0,'*',4,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_template_overrides`
--

DROP TABLE IF EXISTS `adtuzyn3_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_template_overrides`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_template_overrides` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_template_styles`
--

DROP TABLE IF EXISTS `adtuzyn3_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_template_styles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_template_styles` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_template_styles` DISABLE KEYS */;
INSERT INTO `adtuzyn3_template_styles` VALUES
(10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11,'cassiopeia',0,'1','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12,'cassiopeia_extended',0,'0','Cassiopeia Extended - Default',0,'cassiopeia','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}');
/*!40000 ALTER TABLE `adtuzyn3_template_styles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_tuf_metadata`
--

DROP TABLE IF EXISTS `adtuzyn3_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_tuf_metadata`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_tuf_metadata` DISABLE KEYS */;
INSERT INTO `adtuzyn3_tuf_metadata` VALUES
(1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":16,\"expires\":\"2027-09-17T18:55:11Z\",\"keys\":{\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21\"}},\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8\"}},\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"042b66e1431a1f5c2c15b4a16ea60f23f466851b58e9ff057dbfc2a5e0d821d1\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f\"}},\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"546cdff30cc1ad6dd5f3d1e173672d94bd61a9507199af064142f70cde8de4e3\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ea764b0b475b3c396627ac6689cbd8f54a5f93e87b6f5e3eb44a7ccafb542ff3\"}},\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"45e416d24d13a60ace5ab028827d5cfc8ba177bb9466bf2acd8efa6e3547911a\"}},\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cbfa7dcac9659e5a8a946ec999bd28f53b451e38ce5827980bed2686098cf19\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"390d45fce58e41fec922092b138eaf719ed2036c8722bd694a6832ab6ca18409\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\",\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"45cabce9321e0091f9a88a862d250c35f6efede25c7c6eab6cbf738d176c366308bb24cedc80812244259a0d56fd796b2ebd13f98d6aba5c8220df4f136a8504\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":109,\"expires\":\"2026-11-18T18:57:57Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.4.1-Stable-Update_Package.zip\":{\"length\":30009045,\"hashes\":{\"sha512\":\"aeddd1143cd574ff3f6e9bc7d7c67bf5d21dc1b404d98498a691b1fff12f5d245b48424f97155f20e2807e4ee2c1aed7313fae3ab8c0d27a08a20947c166c43e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 5.4.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.1\"}},\"Joomla_5.4.2-Stable-Update_Package.zip\":{\"length\":30316442,\"hashes\":{\"sha512\":\"e83add95a43103ec2d6ccada9e33a29fa6feb2d8e27b6bd16376f4a75d9b588c029b1f24c97b0772e3a6eb0e20d2b8e0e3526cf2af242d90c280ef63abeddaa9\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.2\"}},\"Joomla_5.4.3-Stable-Update_Package.zip\":{\"length\":30403970,\"hashes\":{\"sha512\":\"63901b3cca37a59fe8028e0adb01eda3bb3669dc410c21b1ab7cb040997980c75d2d52b242d053800a542f4d60cf6a15e5fdabc963014c35aef80f6b8b02857f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 5.4.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.3\"}},\"Joomla_5.4.4-Stable-Update_Package.zip\":{\"length\":30488702,\"hashes\":{\"sha512\":\"56497e3c1bf1b9b21e8149a15e36dd1590f6adffd13b38005af40afdf2a33761fbacc9628c5ea6b0e21eb04fb1ca20ca9bc96b2add4b626ed0b567f43994a65e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.4\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.4\"}},\"Joomla_5.4.5-Stable-Update_Package.zip\":{\"length\":30498375,\"hashes\":{\"sha512\":\"c4ebb9a6782c6ef1a3fe58231b78dbf301e212f0f33325e2a17e8014331dab5dee99ebaf2f90eb3e795d1c24ddc55d9485dba095e3f76d0780a80d0f61204ef2\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.5 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5951-joomla-5-4-5-bugfix-release.html\",\"title\":\"Joomla! 5.4.5 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.5\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.5\"}},\"Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\":{\"length\":30498394,\"hashes\":{\"sha512\":\"902e15b690f8bb33de3d139bc861362bd9f073fef506ce150bdc0f29bf8bde6c10aefa0518bb4f57f39576117913cddf59a8c325c7a517c21d7b6b1aea48aee8\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.5-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.5-rc1/Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.5-rc1\",\"title\":\"Joomla! 5.4.5-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.5-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.5-rc1\"}},\"Joomla_5.4.6-Stable-Update_Package.zip\":{\"length\":31661279,\"hashes\":{\"sha512\":\"40d8b14c59c9af7ad098247a70d195c307f31597365cc4b5133b7ffc896c236b3266b45fc6c05879624c96e7f1af26b66ef3c371482b54b130b9faa65622f2fd\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.6 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.6 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.6\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.6\"}},\"Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31656827,\"hashes\":{\"sha512\":\"e327d1ce0979ad1b10d46d7ba30abd55bd61299d0ac627f99d00310a84f45811573cf153976b0f32d2047c2d9ad72fd59d42594617439ec7250aff7e85801c97\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.6-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.6-rc1/Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.6-rc1\",\"title\":\"Joomla! 5.4.6-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.6-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.6-rc1\"}},\"Joomla_5.4.7-Stable-Update_Package.zip\":{\"length\":31851429,\"hashes\":{\"sha512\":\"e1abbac01fe804d4eb64b1327ace9db4356e39a8782ab547b5257be308ea9215badec27821eae936b9a2db2f120fc175357f54ac3ca5af2313ec2af52eb44223\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.7 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.7 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.7\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.7\"}},\"Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31847733,\"hashes\":{\"sha512\":\"e70bdb5ceceb837fe99ee49ca0bbc0f7bfeade3e024dba5a90a8d84e56079c13a231a93dcb6d637b6b07b22e7d98c8f894fc6a2de614f0544f48550c3e15506b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.7-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.7-rc1/Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.7-rc1\",\"title\":\"Joomla! 5.4.7-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.7-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.7-rc1\"}},\"Joomla_5.4.8-Stable-Update_Package.zip\":{\"length\":31921433,\"hashes\":{\"sha512\":\"86e9451f94887dbbee1475596fb91d58c2650e12cebfa976d2e0962e94e71d93683b42ce2d911cc9911ea42ca28e9c341dd002ddd8814f41a372e1732a5d0b3e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.8 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8\"}},\"Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31919278,\"hashes\":{\"sha512\":\"442ec82e57c50d317895fc85bb53cd0fc6abd6937ee3d32da0abfdbc75c7476a1a4817f686aa687c269c2d6ef0bdbb3d3ea2413b6220958a21d8a5623709deea\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc1/Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc1\",\"title\":\"Joomla! 5.4.8-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8-rc1\"}},\"Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip\":{\"length\":31919276,\"hashes\":{\"sha512\":\"201c6ab2a5f4a44950067856379865a1af5ea61c875ce90510ab2f9c9c0f4f9aa087048a7f469ed698bb41b532f87c8ebf3caaf1aa2ded754b3edc591e2eb280\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc2/Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc2\",\"title\":\"Joomla! 5.4.8-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8-rc2\"}},\"Joomla_6.0.1-Stable-Update_Package.zip\":{\"length\":30247182,\"hashes\":{\"sha512\":\"38f8dd3ff1fd48b9973193a4484591b3b9f4a7516eb7640ff1687d84c81d4dc8cd05f6f58b9f48172bae41a466442f4a5af4a23e3d63869aeb1b05f4fdd6512e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 6.0.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.1\"}},\"Joomla_6.0.2-Stable-Update_Package.zip\":{\"length\":30555623,\"hashes\":{\"sha512\":\"c0cff255fcf8e0359453c18365f4906afcce115981a5114e3388da583ad192bde320c8bdd191cd8ca4e55ad5585c9c4cd098c2e1661d8a109d37b94340e4b6a6\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.2\"}},\"Joomla_6.0.3-Stable-Update_Package.zip\":{\"length\":30645479,\"hashes\":{\"sha512\":\"212a681935d260925cbb15e0fa4d9c9e40978aa32ab7137ff1e0775be26eaa6634317521ec8a411aed3f76990758cbe4dcec3c86186458238dc45f8a3886e5dc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 6.0.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.3\"}},\"Joomla_6.0.4-Stable-Update_Package.zip\":{\"length\":30730380,\"hashes\":{\"sha512\":\"39de3d222482dc1d6ba3041c9cbfb259dbf17762d917af59906c1c5c43b5da5016d5fb54d788f8b866fb473e4b57e3f1780db74be115300c181897c75e38c2e5\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.4\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.4\"}},\"Joomla_6.1.0-Stable-Update_Package.zip\":{\"length\":31441199,\"hashes\":{\"sha512\":\"e066487307a7952450d4f37ce97a576ae185728793d081c98416db9bb2a830fa4cfea0c5f6c7828bb91523cd26d6120c0d5111fc39962fa71cd875a8983c2c1a\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5950-joomla-6-1-is-here.html\",\"title\":\"Joomla! 6.1.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0\"}},\"Joomla_6.1.0-alpha2-Alpha-Full_Package.zip\":{\"length\":33107068,\"hashes\":{\"sha512\":\"be9711e1bda18981f077369105399eff9e8ab9203cad43d2c5385689e32db7bc6e11f3b5e406194dd9c2d7f5892bb92c6702cf5436badf3d971150ffcfda0a72\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\":{\"length\":30736927,\"hashes\":{\"sha512\":\"388790c8b32f624e5b33531f4a41eefa85b5273e76e20a847b01c7eaa59367939317581e5f75ade6c024f25894740c9651ce2faaa330ac8a7fb863434c170879\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha3-Alpha-Full_Package.zip\":{\"length\":33216519,\"hashes\":{\"sha512\":\"16eb1fb81ef4b0c2f3ebca14538945d291623f544d77946e556fc2f17561bda55c256be4f56c0f5034609bbc10e7dcbf0995691b0cd613f5dc58658fe964333b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\":{\"length\":30842460,\"hashes\":{\"sha512\":\"9290f78cdba43c0bbb4e9b812a1e06cd548e6a4e14b51529d50d5acab3fdb4f7ab5cc6828655596159af41962b51f5a14008a26f06e3f9c5b3781f309cb52a19\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-beta3-Beta-Update_Package.zip\":{\"length\":31413826,\"hashes\":{\"sha512\":\"9f03df89f3112706026cd9e99f4e3e1cc46a706db8492957e093ae416aadc568b422bcebbf74d45ffc07072d011c0d64e64e9891adcc3f56326da22ccb62d449\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-beta3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-beta3/Joomla_6.1.0-beta3-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1026-joomla-6-1-beta3-help-make-it-stable.html\",\"title\":\"Joomla! 6.1.0-beta3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-beta3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-beta3\"}},\"Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31432633,\"hashes\":{\"sha512\":\"6b06981c9e3dc2f0345fc7ef6372d14fa4d84f5f8f424465139dd0ec9c596cf297a554a61b0bcbe02d1c4b494f5e8f1abb821f715222f1f3610045ea7c5f60cc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc1/Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/news/5945-joomla-6-1-release-candidate-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc1\"}},\"Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":31433359,\"hashes\":{\"sha512\":\"b9b85aa048c26face653f9fb62f4ca28c294fa2a9c643aed73b581742d07db6d9d0b3169b4f7a437d1b233fe4771e0efe6395280a22139afa0a459908ba5d9b3\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc2/Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5949-joomla-6-1-release-candidate-2-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc2\"}},\"Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip\":{\"length\":31441220,\"hashes\":{\"sha512\":\"5e66b9407f56f0d5d948a85743872e034a1e45b2d8b0cd876cbedb16edcfe39a32f95172677e2a12514a062aae8e1eb94ca3612ea1adb757c3911865cf2e242b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc3/Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5952-joomla-6-1-release-candidate-3-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc3\"}},\"Joomla_6.1.1-Stable-Update_Package.zip\":{\"length\":32594982,\"hashes\":{\"sha512\":\"17deb752b2b3cfa828d9537bc216cfd48202f60fba9cee7e40998fc69012a0089144a0f9468fef0010ccd202da63638a1d5dc130726d23f15b96defe49e65685\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.1\"}},\"Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip\":{\"length\":32593613,\"hashes\":{\"sha512\":\"92ecff9ab0d49f82954709c781ba899899ac51d53c755b02f020d8c4b4c1947c8640519d2e1467ffdef53809ede6382f0da8255ae537ab38aea02be3dec421ca\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.1-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.1-rc1/Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.1-rc1\",\"title\":\"Joomla! 6.1.1-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.1-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.1-rc1\"}},\"Joomla_6.1.2-Stable-Update_Package.zip\":{\"length\":32955671,\"hashes\":{\"sha512\":\"92583e1301ddd9b8715fec76b1157ca8d7f2201d6e7e53127d307c430c1e78a0a32d8db552540fb15bb899fc5fb2ca0e91c18537b6034c408742e0148973576b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2\"}},\"Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip\":{\"length\":32944838,\"hashes\":{\"sha512\":\"d006b3e855dfbed2dde9e4cdaccbac53a3fdee1c5ad6912a8a77fc29579dcb3119d1845d712c2272e51a95414619684baa76dbc83690ed716d6b0b261abfcc2a\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc1/Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc1\",\"title\":\"Joomla! 6.1.2-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc1\"}},\"Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip\":{\"length\":32947291,\"hashes\":{\"sha512\":\"e55782640120cabe47188b443a57f9a178b15fc140a6aef65226298ed2b0e16d88d82ccae2f9be9fd70a00a6582f429a16e5e39fe9b95a4858f48b2a39b36455\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc2/Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc2\",\"title\":\"Joomla! 6.1.2-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc2\"}},\"Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip\":{\"length\":32951517,\"hashes\":{\"sha512\":\"b846e7b89c3dde8fe81e59b4a6664dea72197d1a6ca2e10a6318417ab8439268c57e17c0ff89361e4afbdfc1510321874a711cdd9684fcf9ce842ece1638789e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc3/Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/edit/6.1.2-rc3\",\"title\":\"Joomla! 6.1.2-rc3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc3\"}},\"Joomla_6.1.3-Stable-Update_Package.zip\":{\"length\":33023112,\"hashes\":{\"sha512\":\"91b4eae07ddc73626dc11da88de88b7752528def632e58f4f502ef3e56510c9f7e15ca66e06a8541291ea5dbefb32657194c065366927da6aba184dbeebdd610\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3\"}},\"Joomla_6.1.3-rc1-Release_Candidate-Update_Package.zip\":{\"length\":33001951,\"hashes\":{\"sha512\":\"71eee7cfa031b2977e07dbfe69bc73fd8c55b40bb658b2d8bde9ebf7670921ded81f3ea279a798fc8b7ce24c3047454e1fc40a22e23f7054fdbcb0d457113d25\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2\",\"title\":\"Joomla! 6.1.3-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3-rc2\"}},\"Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\":{\"length\":33020933,\"hashes\":{\"sha512\":\"dfb9a965e3edc8d8dbebe00ab567b4417c2e4e385cebe381c50f081c2dadebfd646ae20fd670fb01f25a3182b002aed147200362ceac85825eb1f22148f63947\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2\",\"title\":\"Joomla! 6.1.3-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3-rc2\"}},\"Joomla_6.2.0-alpha3-Alpha-Update_Package.zip\":{\"length\":32173625,\"hashes\":{\"sha512\":\"b966f0cd9b89ebd29066f333333cd98e27f889f5bb03248bc13c4aae4df34916b03b7f3779b2e0b2c325ba46c3a479cec163d5c141ebf2df94db86611dfc7d16\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.0-alpha3/Joomla_6.2.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1067-joomla-6-2-alpha3-one-step-closer-to-beta.html\",\"title\":\"Joomla! 6.2.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.0-alpha3\"}},\"Joomla_6.2.0-beta1-Beta-Update_Package.zip\":{\"length\":32310957,\"hashes\":{\"sha512\":\"c3a7cd4b44de8e495744b9e8c9ba270ccb4baaca6fbf77b4077bf424bfb71b2bbc266a5ca47f13b53c2f7adca835cd5c0c7c42e1cfe40b46df3db577e5d9cc34\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.0-beta1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.0-beta1/Joomla_6.2.0-beta1-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1078-joomla-6-2-beta-1-the-next-phase-starts-now.html\",\"title\":\"Joomla! 6.2.0-beta1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.0-beta1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.0-beta1\"}}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"bbe00def429589a0146fdafc0089b37eda7866c3a906ba3bbb7a991e4fa00bd4ffdeee006a5a010582e4b49c62dcc0123cc419dde2b0cd9bc5bb80c90411cd09\"},{\"keyid\":\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"sig\":\"51f5ec7d3851f232646bcf911031c4df53f442a93943a6d6fd973e36205c05fa87863fa3de43d5dbb2b8b8b5413a5cd7034fa73322347f44de4a1b9644221705\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":125,\"expires\":\"2027-03-16T19:03:48Z\",\"meta\":{\"targets.json\":{\"length\":41140,\"hashes\":{\"sha512\":\"20b4bec3d64342e54f2ebdf24a3d847151792ac10bccce74bbbfbf1f77c3838b79fa5a9febb0b6bbedbd0dd6212e5d05a1b2e827513b22f1f895dff62954dfc2\"},\"version\":109}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"54430c46f5964b5839f4590be34566f55897a12017efd7b1eb37d68aa0d3b18dac853b5a7af52697606911a44c8844637e11013157dec1d06014123647c05f06\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":1204,\"expires\":\"2026-08-22T01:23:46Z\",\"meta\":{\"snapshot.json\":{\"length\":534,\"hashes\":{\"sha512\":\"132cb7c65a65176f95a15deb87f3c36f61a5530d6d4a4d6a0dd69abe8ae059768f95dafddbcb99107eec6891be2e002a99d13655ea979ff310daf7199ade5a8c\"},\"version\":125}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"6b444770e2c724b98ee5ae42dd7f5c0ad0062468d1f3bb84c13271d3af4df9935cf002fed37564ee55e2449182b868f9f39e0fc4155466156b81c2803588c80a\"}]}',NULL);
/*!40000 ALTER TABLE `adtuzyn3_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_ucm_base`
--

DROP TABLE IF EXISTS `adtuzyn3_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_ucm_base`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_ucm_base` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_ucm_content`
--

DROP TABLE IF EXISTS `adtuzyn3_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_ucm_content`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_ucm_content` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_ucm_content` DISABLE KEYS */;
INSERT INTO `adtuzyn3_ucm_content` VALUES
(1,'com_content.article','Welcome to your blog','welcome-to-your-blog','<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>',1,NULL,NULL,1,'{}',1,'{}',680,'Joomla','2026-08-20 08:31:21',680,'2026-08-20 08:31:21','*','2026-08-20 08:31:21',NULL,3,130,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(2,'com_content.article','About your home page','about-your-home-page','<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>',1,NULL,NULL,1,'{}',1,'{}',680,'Joomla','2026-08-20 08:31:21',680,'2026-08-20 08:31:21','*','2026-08-20 08:31:21',NULL,4,131,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(3,'com_content.article','Your Modules','your-modules','<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\"https://extensions.joomla.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Joomla Extensions Directory.</a></p>',1,NULL,NULL,1,'{}',1,'{}',680,'Joomla','2026-08-20 08:31:21',680,'2026-08-20 08:31:21','*','2026-08-20 08:31:21',NULL,5,132,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(4,'com_content.article','Your Template','your-template','<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>',1,NULL,NULL,1,'{}',1,'{}',680,'Joomla','2026-08-20 08:31:21',680,'2026-08-20 08:31:21','*','2026-08-20 08:31:21',NULL,6,133,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1);
/*!40000 ALTER TABLE `adtuzyn3_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_update_sites`
--

DROP TABLE IF EXISTS `adtuzyn3_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_update_sites`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_update_sites` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_update_sites` DISABLE KEYS */;
INSERT INTO `adtuzyn3_update_sites` VALUES
(1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1787214673,'',NULL,NULL),
(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_6.xml',1,1787214673,'',NULL,NULL),
(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1787214673,'',NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_update_sites` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_update_sites_extensions`
--

DROP TABLE IF EXISTS `adtuzyn3_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_update_sites_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `adtuzyn3_update_sites_extensions` VALUES
(1,246),
(2,247),
(3,24);
/*!40000 ALTER TABLE `adtuzyn3_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_updates`
--

DROP TABLE IF EXISTS `adtuzyn3_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_updates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_updates` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_updates` DISABLE KEYS */;
INSERT INTO `adtuzyn3_updates` VALUES
(1,1,246,'Joomla! 6.1.3','Joomla! 6.1.3 Release','joomla','file','',0,'6.1.3','','https://update.joomla.org/cms/','https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html',NULL,''),
(2,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/af-ZA_details.xml','','',''),
(3,2,0,'Belarusian','','pkg_be-BY','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/be-BY_details.xml','','',''),
(4,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/bg-BG_details.xml','','',''),
(5,2,0,'Catalan','','pkg_ca-ES','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/ca-ES_details.xml','','',''),
(6,2,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'6.0.1.4','','https://update.joomla.org/language/details6/zh-CN_details.xml','','',''),
(7,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/zh-TW_details.xml','','',''),
(8,2,0,'Croatian','','pkg_hr-HR','package','',0,'6.0.3.2','','https://update.joomla.org/language/details6/hr-HR_details.xml','','',''),
(9,2,0,'Czech','','pkg_cs-CZ','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/cs-CZ_details.xml','','',''),
(10,2,0,'Danish','','pkg_da-DK','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/da-DK_details.xml','','',''),
(11,2,0,'Dutch','','pkg_nl-NL','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/nl-NL_details.xml','','',''),
(12,2,0,'English, Australia','','pkg_en-AU','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-AU_details.xml','','',''),
(13,2,0,'English, Canada','','pkg_en-CA','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-CA_details.xml','','',''),
(14,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-NZ_details.xml','','',''),
(15,2,0,'English, USA','','pkg_en-US','package','',0,'6.1.1.2','','https://update.joomla.org/language/details6/en-US_details.xml','','',''),
(16,2,0,'Estonian','','pkg_et-EE','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/et-EE_details.xml','','',''),
(17,2,0,'Finnish','','pkg_fi-FI','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/fi-FI_details.xml','','',''),
(18,2,0,'Flemish','','pkg_nl-BE','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/nl-BE_details.xml','','',''),
(19,2,0,'French','','pkg_fr-FR','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/fr-FR_details.xml','','',''),
(20,2,0,'French, Canada','','pkg_fr-CA','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/fr-CA_details.xml','','',''),
(21,2,0,'Georgian','','pkg_ka-GE','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ka-GE_details.xml','','',''),
(22,2,0,'German','','pkg_de-DE','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/de-DE_details.xml','','',''),
(23,2,0,'German, Austria','','pkg_de-AT','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/de-AT_details.xml','','',''),
(24,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/de-LI_details.xml','','',''),
(25,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/de-LU_details.xml','','',''),
(26,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/de-CH_details.xml','','',''),
(27,2,0,'Greek','','pkg_el-GR','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/el-GR_details.xml','','',''),
(28,2,0,'Hungarian','','pkg_hu-HU','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/hu-HU_details.xml','','',''),
(29,2,0,'Italian','','pkg_it-IT','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/it-IT_details.xml','','',''),
(30,2,0,'Japanese','','pkg_ja-JP','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ja-JP_details.xml','','',''),
(31,2,0,'Laotian','','pkg_lo-LA','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/lo-LA_details.xml','','',''),
(32,2,0,'Latvian','','pkg_lv-LV','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/lv-LV_details.xml','','',''),
(33,2,0,'Lithuanian','','pkg_lt-LT','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/lt-LT_details.xml','','',''),
(34,2,0,'Malay','','pkg_ms-MY','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ms-MY_details.xml','','',''),
(35,2,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/nb-NO_details.xml','','',''),
(36,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/fa-IR_details.xml','','',''),
(37,2,0,'Polish','','pkg_pl-PL','package','',0,'6.0.0.1','','https://update.joomla.org/language/details6/pl-PL_details.xml','','',''),
(38,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/pt-BR_details.xml','','',''),
(39,2,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'6.1.0.1','','https://update.joomla.org/language/details6/pt-PT_details.xml','','',''),
(40,2,0,'Romanian','','pkg_ro-RO','package','',0,'6.0.0.1','','https://update.joomla.org/language/details6/ro-RO_details.xml','','',''),
(41,2,0,'Russian','','pkg_ru-RU','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/ru-RU_details.xml','','',''),
(42,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/sr-RS_details.xml','','',''),
(43,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/sr-YU_details.xml','','',''),
(44,2,0,'Slovak','','pkg_sk-SK','package','',0,'6.1.0.1','','https://update.joomla.org/language/details6/sk-SK_details.xml','','',''),
(45,2,0,'Slovenian','','pkg_sl-SI','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/sl-SI_details.xml','','',''),
(46,2,0,'Spanish','','pkg_es-ES','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/es-ES_details.xml','','',''),
(47,2,0,'Swedish','','pkg_sv-SE','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/sv-SE_details.xml','','',''),
(48,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/ta-IN_details.xml','','',''),
(49,2,0,'Thai','','pkg_th-TH','package','',0,'6.0.0.2','','https://update.joomla.org/language/details6/th-TH_details.xml','','',''),
(50,2,0,'Turkish','','pkg_tr-TR','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/tr-TR_details.xml','','',''),
(51,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/uk-UA_details.xml','','',''),
(52,2,0,'Welsh','','pkg_cy-GB','package','',0,'6.1.3.1','','https://update.joomla.org/language/details6/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `adtuzyn3_updates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_user_keys`
--

DROP TABLE IF EXISTS `adtuzyn3_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_user_keys`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_user_keys` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_user_keys` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_user_mfa`
--

DROP TABLE IF EXISTS `adtuzyn3_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_user_mfa`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_user_mfa` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_user_notes`
--

DROP TABLE IF EXISTS `adtuzyn3_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_user_notes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_user_notes` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_user_notes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_user_profiles`
--

DROP TABLE IF EXISTS `adtuzyn3_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_user_profiles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_user_profiles` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_user_profiles` DISABLE KEYS */;
INSERT INTO `adtuzyn3_user_profiles` VALUES
(680,'guidedtour.id.12','{\"state\":\"delayed\",\"time\":{\"date\":\"2026-08-20 08:31:13.068028\",\"timezone_type\":3,\"timezone\":\"UTC\"}}',0);
/*!40000 ALTER TABLE `adtuzyn3_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_user_usergroup_map`
--

DROP TABLE IF EXISTS `adtuzyn3_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_user_usergroup_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `adtuzyn3_user_usergroup_map` VALUES
(680,8);
/*!40000 ALTER TABLE `adtuzyn3_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_usergroups`
--

DROP TABLE IF EXISTS `adtuzyn3_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_usergroups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_usergroups` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_usergroups` DISABLE KEYS */;
INSERT INTO `adtuzyn3_usergroups` VALUES
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `adtuzyn3_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_users`
--

DROP TABLE IF EXISTS `adtuzyn3_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_users` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_users` DISABLE KEYS */;
INSERT INTO `adtuzyn3_users` VALUES
(680,'ADT Test User Account','adt-webmaster','changeme@adt-installation-bootstrap.uk','$2y$12$D4sJ/s7Nw2LrKiTtHSpBQupCE2iZfJEG2uEVaXpDkeqcsGJRq6h02',0,1,'2026-08-20 08:27:15','2026-08-20 08:31:09','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `adtuzyn3_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_viewlevels`
--

DROP TABLE IF EXISTS `adtuzyn3_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_viewlevels`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_viewlevels` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_viewlevels` DISABLE KEYS */;
INSERT INTO `adtuzyn3_viewlevels` VALUES
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `adtuzyn3_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_webauthn_credentials`
--

DROP TABLE IF EXISTS `adtuzyn3_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_webauthn_credentials`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtuzyn3_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_workflow_associations`
--

DROP TABLE IF EXISTS `adtuzyn3_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_workflow_associations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_workflow_associations` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_workflow_associations` DISABLE KEYS */;
INSERT INTO `adtuzyn3_workflow_associations` VALUES
(1,1,'com_content.article'),
(2,1,'com_content.article'),
(7,1,'com_content.article'),
(8,1,'com_content.article'),
(9,1,'com_content.article'),
(10,1,'com_content.article'),
(11,1,'com_content.article'),
(3,7,'com_content.article'),
(4,7,'com_content.article'),
(5,7,'com_content.article'),
(6,7,'com_content.article');
/*!40000 ALTER TABLE `adtuzyn3_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_workflow_stages`
--

DROP TABLE IF EXISTS `adtuzyn3_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_workflow_stages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_workflow_stages` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_workflow_stages` DISABLE KEYS */;
INSERT INTO `adtuzyn3_workflow_stages` VALUES
(1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL),
(2,103,0,2,1,'Idea','Basic stage. Every newly submitted article for Blog.',0,NULL,NULL),
(3,104,0,2,1,'Copywriting','Copywriter is at work.',0,NULL,NULL),
(4,105,0,2,1,'Graphic Design','Graphic Designer is at work.',0,NULL,NULL),
(5,106,0,2,1,'Fact Check','Fact Checker is at work.',0,NULL,NULL),
(6,107,0,2,1,'Content Review','The article is reviewed, checked for text, illustration, HTML.',0,NULL,NULL),
(7,108,0,2,1,'Published','Online and Published.',1,NULL,NULL),
(8,109,0,2,1,'On Hold','On hold, waiting.',0,NULL,NULL),
(9,110,0,2,1,'Trashed','Not accepted',0,NULL,NULL),
(10,111,0,2,1,'Unpublished','A published article is unpublished and unfeatured',0,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_workflow_transitions`
--

DROP TABLE IF EXISTS `adtuzyn3_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_workflow_transitions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_workflow_transitions` DISABLE KEYS */;
INSERT INTO `adtuzyn3_workflow_transitions` VALUES
(1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),
(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),
(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),
(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),
(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),
(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),
(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL),
(8,112,0,2,1,'Write Article','The content strategist checks any idea which is submitted in category blog. ',2,3,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(9,113,0,2,1,'Graphic Design','The Graphic Designer can now add any illustrations.',3,4,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(10,114,0,2,1,'Check Facts','The article is complete and must be checked by a subject expert.',4,5,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(11,115,0,2,1,'Review Content','The complete article is reviewed.',5,6,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(12,116,0,2,1,'Edit','The article must be reviewed.',6,3,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(13,117,0,2,1,'Publish and Feature','',6,7,'{\"publishing\":1,\"featuring\":1,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}',NULL,NULL),
(14,118,0,2,1,'Set on Hold','',-1,8,'{\"publishing\":2,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(15,119,0,2,1,'Trash','',2,9,'{\"publishing\":-2,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(16,120,0,2,1,'Resume Idea','An article on hold can be resumed as idea.',8,2,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(17,121,0,2,1,'Unpublish','A published article is unpublished.',7,10,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(18,122,0,2,1,'Trash','Trash a published article.',7,9,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(19,123,0,2,1,'Publish again','Re-activate an unpublished article.',10,7,'{\"publishing\":1,\"featuring\":0,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}',NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtuzyn3_workflows`
--

DROP TABLE IF EXISTS `adtuzyn3_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtuzyn3_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtuzyn3_workflows`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtuzyn3_workflows` WRITE;
/*!40000 ALTER TABLE `adtuzyn3_workflows` DISABLE KEYS */;
INSERT INTO `adtuzyn3_workflows` VALUES
(1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2026-08-20 08:27:13',680,'2026-08-20 08:27:13',680,NULL,NULL),
(2,102,1,'Blog Workflow','Blog writing workflow from idea until published and online. Roles: Content Strategist, Copywriter, Graphic Designer, Subject Expert, Content Editor.','com_content.article',0,0,'2026-08-20 08:31:21',680,'2026-08-20 08:31:21',680,NULL,NULL);
/*!40000 ALTER TABLE `adtuzyn3_workflows` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping routines for database 'nzjjlw6khn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-08-20  9:34:54
DROP TABLE IF EXISTS `zzzz`;
CREATE TABLE `zzzz` ( `idxx` int(10) unsigned NOT NULL, PRIMARY KEY (`idxx`) ) Engine=INNODB CHARSET=utf8mb4;
