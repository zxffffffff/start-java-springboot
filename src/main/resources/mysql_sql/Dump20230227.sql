CREATE DATABASE  IF NOT EXISTS `test_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_base_info`
--

DROP TABLE IF EXISTS `user_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_base_info` (
  `uk_user_id` bigint unsigned NOT NULL COMMENT '用户唯一id 雪花算法\\nuser unique Snowflake ID\\n',
  `user_password` char(64) NOT NULL,
  `user_name` varchar(45) NOT NULL COMMENT '用于登录，不可重复\nuse for login',
  `user_phone` varchar(45) NOT NULL COMMENT '用于登录，不可重复\\nuse for login',
  `user_email` varchar(45) DEFAULT NULL COMMENT '用于登录，不可重复\\nuse for login',
  PRIMARY KEY (`uk_user_id`),
  UNIQUE KEY `uid_UNIQUE` (`uk_user_id`) /*!80000 INVISIBLE */,
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户的基本信息，包括账号、密码、唯一id等。';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27 17:37:35