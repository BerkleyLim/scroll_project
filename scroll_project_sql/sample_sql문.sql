-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: github
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `scroll_board`
--

DROP TABLE IF EXISTS `scroll_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scroll_board` (
  `bno` int NOT NULL AUTO_INCREMENT COMMENT '스크롤 프로젝트 게시판 인덱스 번호',
  `title` varchar(100) DEFAULT NULL COMMENT '스크롤 프로젝트 게시판 제목',
  `contents` text COMMENT '스크롤 프로젝트 게시판 내용',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scroll_board`
--

LOCK TABLES `scroll_board` WRITE;
/*!40000 ALTER TABLE `scroll_board` DISABLE KEYS */;
INSERT INTO `scroll_board` VALUES (1,'첫번째 게시물','첫번째 게시물 테스트 성공'),(2,'두번째 게시물','두번째 게시물 성공'),(4,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(5,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(6,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(7,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(8,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(9,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(10,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(11,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(12,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(13,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(14,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(15,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(16,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(17,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(18,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(19,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(20,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(21,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(22,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(23,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(24,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(25,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(26,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(27,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(28,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(29,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(30,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(31,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(32,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(33,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(34,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(35,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(36,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(37,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(38,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(39,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(40,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(41,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(42,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(43,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(44,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(45,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(46,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(47,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(48,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(49,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(50,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(51,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(52,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(53,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입'),(54,'샘플 제목 추가 : 스크롤','샘플 내용 추가 : 스크롤 내용 대량으로 삽입');
/*!40000 ALTER TABLE `scroll_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 22:39:30
