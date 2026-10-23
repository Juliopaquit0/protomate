-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_truck_prts
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'eb7fe791-70cb-11f1-ac96-0a0027000019:1-260';

--
-- Table structure for table `final_pag`
--

DROP TABLE IF EXISTS `final_pag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_pag` (
  `id_final_pag` int NOT NULL AUTO_INCREMENT,
  `id_pag` int DEFAULT NULL,
  `id_carrinho` int DEFAULT NULL,
  `id_endereco` int DEFAULT NULL,
  `id_usuario` int NOT NULL,
  `frete` decimal(10,2) DEFAULT '0.00',
  `forma_de_envio` varchar(20) DEFAULT NULL,
  `parcelas` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_final_pag`),
  KEY `id_pag` (`id_pag`),
  KEY `id_carrinho` (`id_carrinho`),
  KEY `id_endereco` (`id_endereco`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `final_pag_ibfk_1` FOREIGN KEY (`id_pag`) REFERENCES `forma_pag` (`id_pag`),
  CONSTRAINT `final_pag_ibfk_2` FOREIGN KEY (`id_carrinho`) REFERENCES `carrinho` (`id_carrinho`),
  CONSTRAINT `final_pag_ibfk_3` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
  CONSTRAINT `final_pag_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_pag`
--

LOCK TABLES `final_pag` WRITE;
/*!40000 ALTER TABLE `final_pag` DISABLE KEYS */;
INSERT INTO `final_pag` VALUES (1,1,1,512,512,0.00,NULL,4),(2,2,3,512,512,0.00,NULL,1),(3,3,4,512,512,0.00,NULL,1);
/*!40000 ALTER TABLE `final_pag` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-23 10:24:07
