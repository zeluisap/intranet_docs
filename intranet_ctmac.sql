-- MySQL dump 10.17  Distrib 10.3.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: intranet_sttrans
-- ------------------------------------------------------
-- Server version	10.3.12-MariaDB-1:10.3.12+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `intranet_sttrans`
--

/*!40000 DROP DATABASE IF EXISTS `intranet_sttrans`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `intranet_sttrans` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `intranet_sttrans`;

--
-- Table structure for table `acao`
--

DROP TABLE IF EXISTS `acao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acao` (
  `id_acao` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `action` varchar(60) DEFAULT NULL,
  `principal` char(1) DEFAULT 'N',
  PRIMARY KEY (`id_acao`),
  KEY `fk_acao_modulo_idx` (`id_modulo`),
  CONSTRAINT `fk_acao_modulo` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acao`
--

LOCK TABLES `acao` WRITE;
/*!40000 ALTER TABLE `acao` DISABLE KEYS */;
INSERT INTO `acao` VALUES (1,1,'PRINCIPAL','index','S'),(2,2,'PRINCIPAL','index','S'),(3,3,'PRINCIPAL','index','S'),(4,4,'PRINCIPAL','index','S'),(5,5,'PRINCIPAL','index','S'),(6,6,'PRINCIPAL','index','S'),(7,7,'PRINCIPAL','index','S'),(8,8,'PRINCIPAL','index','S'),(9,9,'PRINCIPAL','index','S'),(10,10,'PRINCIPAL','index','S'),(11,11,'Listagem de Cargos','index','S'),(12,12,'PRINCIPAL','index','S'),(13,13,'PRINCIPAL','index','S'),(14,14,'PRINCIPAL','index','S'),(15,15,'PRINCIPAL','index','S'),(16,16,'PRINCIPAL','index','S'),(17,17,'PRINCIPAL','index','S'),(18,18,'PRINCIPAL','index','S'),(19,19,'PRINCIPAL','index','S'),(20,20,'PRINCIPAL','index','S'),(21,21,'PRINCIPAL','index','S'),(22,22,'PRINCIPAL','index','S'),(23,23,'PRINCIPAL','index','S'),(24,24,'PRINCIPAL','index','S'),(25,25,'PRINCIPAL','index','S'),(27,27,'PRINCIPAL','index','S'),(28,28,'PRINCIPAL','index','S'),(29,29,'PRINCIPAL','index','S'),(31,31,'PRINCIPAL','index','S'),(32,32,'PRINCIPAL','index','S'),(33,33,'PRINCIPAL','index','S'),(34,34,'PRINCIPAL','index','S'),(35,35,'PRINCIPAL','index','S'),(36,36,'PRINCIPAL','index','S'),(37,37,'PRINCIPAL','index','S'),(39,39,'PRINCIPAL','index','S'),(40,40,'PRINCIPAL','index','S'),(41,41,'PRINCIPAL','index','S'),(42,42,'PRINCIPAL','index','S'),(43,43,'PRINCIPAL','index','S'),(44,44,'PRINCIPAL','index','S'),(45,45,'PRINCIPAL','index','S'),(46,46,'PRINCIPAL','index','S'),(47,47,'PRINCIPAL','index','S'),(48,48,'PRINCIPAL','index','S'),(49,49,'PRINCIPAL','index','S'),(50,50,'PRINCIPAL','index','S'),(51,26,'Principal','adm','S'),(52,51,'PRINCIPAL','index','S'),(53,52,'PRINCIPAL','index','S'),(54,53,'PRINCIPAL','index','S'),(55,54,'Listagem de Transportes','index','S'),(56,55,'PRINCIPAL','index','S'),(57,56,'PRINCIPAL','index','S'),(58,57,'PRINCIPAL','index','S'),(59,58,'PRINCIPAL','index','S'),(60,54,'Licenças','licenca','N'),(61,54,'Pagamento de Licença','licencapgto','N'),(62,54,'Visualização de Licença','viewlicenca','N'),(63,11,'Visualização do Cargo','view','N'),(64,54,'Listagem de Pessoas','pessoa','N'),(65,59,'PRINCIPAL','index','S'),(66,60,'PRINCIPAL','index','S'),(67,61,'PRINCIPAL','index','S'),(68,62,'PRINCIPAL','index','S'),(69,63,'PRINCIPAL','index','S'),(70,64,'PRINCIPAL','index','S'),(71,65,'PRINCIPAL','index','S'),(72,66,'PRINCIPAL','index','S'),(73,67,'PRINCIPAL','index','S'),(74,68,'PRINCIPAL','index','S'),(75,69,'PRINCIPAL','index','S'),(76,70,'PRINCIPAL','index','S'),(77,71,'PRINCIPAL','index','S'),(78,72,'PRINCIPAL','index','S'),(79,73,'PRINCIPAL','index','S'),(80,74,'PRINCIPAL','index','S'),(81,75,'PRINCIPAL','index','S'),(82,76,'PRINCIPAL','index','S'),(83,77,'PRINCIPAL','index','S'),(84,78,'PRINCIPAL','index','S'),(85,79,'PRINCIPAL','index','S'),(86,80,'PRINCIPAL','index','S'),(87,81,'PRINCIPAL','index','S'),(89,83,'PRINCIPAL','index','S'),(90,84,'PRINCIPAL','index','S'),(91,85,'PRINCIPAL','index','S'),(92,86,'PRINCIPAL','index','S'),(93,87,'PRINCIPAL','index','S'),(95,89,'PRINCIPAL','index','S'),(96,90,'PRINCIPAL','index','S'),(97,91,'PRINCIPAL','index','S'),(98,92,'PRINCIPAL','index','S'),(99,93,'PRINCIPAL','index','S'),(100,94,'PRINCIPAL','index','S'),(101,95,'PRINCIPAL','index','S'),(102,96,'PRINCIPAL','index','S'),(103,97,'PRINCIPAL','index','S'),(104,98,'PRINCIPAL','index','S'),(105,99,'PRINCIPAL','index','S'),(106,100,'PRINCIPAL','index','S'),(107,101,'PRINCIPAL','index','S'),(108,102,'PRINCIPAL','index','S'),(109,103,'PRINCIPAL','index','S');
/*!40000 ALTER TABLE `acao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aditivo`
--

DROP TABLE IF EXISTS `aditivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aditivo` (
  `id_aditivo` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo` int(11) NOT NULL,
  `id_aditivo_tipo` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_valor` int(11) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `data_aditivo` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  PRIMARY KEY (`id_aditivo`),
  KEY `fk_vinculo_aditivo_vinculo1_idx` (`id_vinculo`),
  KEY `fk_aditivo_aditivo_tipo1_idx` (`id_aditivo_tipo`),
  KEY `fk_aditivo_valor1_idx` (`id_valor`),
  CONSTRAINT `fk_aditivo_aditivo_tipo1` FOREIGN KEY (`id_aditivo_tipo`) REFERENCES `aditivo_tipo` (`id_aditivo_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aditivo_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_aditivo_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aditivo`
--

LOCK TABLES `aditivo` WRITE;
/*!40000 ALTER TABLE `aditivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `aditivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aditivo_tipo`
--

DROP TABLE IF EXISTS `aditivo_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aditivo_tipo` (
  `id_aditivo_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_aditivo_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='V - ADITIVO DE VALOR\nD - ADITIVO DE DATA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aditivo_tipo`
--

LOCK TABLES `aditivo_tipo` WRITE;
/*!40000 ALTER TABLE `aditivo_tipo` DISABLE KEYS */;
INSERT INTO `aditivo_tipo` VALUES (1,'V','ADITIVO DE VALOR'),(2,'D','ADITIVO DE DATA');
/*!40000 ALTER TABLE `aditivo_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agente`
--

DROP TABLE IF EXISTS `agente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agente` (
  `id_agente` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_agente`),
  KEY `fk_agente_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_agente_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agente`
--

LOCK TABLES `agente` WRITE;
/*!40000 ALTER TABLE `agente` DISABLE KEYS */;
/*!40000 ALTER TABLE `agente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amparo_legal`
--

DROP TABLE IF EXISTS `amparo_legal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amparo_legal` (
  `id_amparo_legal` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_amparo_legal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amparo_legal`
--

LOCK TABLES `amparo_legal` WRITE;
/*!40000 ALTER TABLE `amparo_legal` DISABLE KEYS */;
INSERT INTO `amparo_legal` VALUES (1,'INFRAÇÕES DE TRÂNSITO'),(2,'INFRAÇÕES DE TRANSPORTE'),(3,'INFRAÇÃO DE TRANSPORTE'),(4,'LEI N;404/98PMS');
/*!40000 ALTER TABLE `amparo_legal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivo`
--

DROP TABLE IF EXISTS `arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivo` (
  `id_arquivo` int(11) NOT NULL AUTO_INCREMENT,
  `id_arquivo_tipo` int(11) NOT NULL,
  `nome_fisico` varchar(100) DEFAULT NULL,
  `tamanho` int(11) DEFAULT NULL,
  `legenda` varchar(100) DEFAULT NULL,
  `data_upload` date DEFAULT NULL,
  `hora_upload` time DEFAULT NULL,
  PRIMARY KEY (`id_arquivo`),
  KEY `fk_arquivo_arquivo_tipo1_idx` (`id_arquivo_tipo`),
  CONSTRAINT `fk_arquivo_arquivo_tipo1` FOREIGN KEY (`id_arquivo_tipo`) REFERENCES `arquivo_tipo` (`id_arquivo_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1438 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivo`
--

LOCK TABLES `arquivo` WRITE;
/*!40000 ALTER TABLE `arquivo` DISABLE KEYS */;
INSERT INTO `arquivo` VALUES (1,52,'arquivo1.png',0,'Logomarca','2013-05-09','04:10:27'),(2,31,'arquivo2.docx',9972,NULL,'2013-06-05','10:24:53'),(3,31,'arquivo3.docx',9972,NULL,'2013-06-05','10:30:15'),(4,3,'arquivo4.doc',233472,NULL,'2013-06-05','10:31:57'),(5,3,'arquivo5.doc',323072,NULL,'2013-06-05','10:34:34'),(6,3,'arquivo6.doc',256512,NULL,'2013-06-05','10:59:22'),(7,3,'arquivo7.doc',256512,NULL,'2013-06-06','08:18:50'),(8,49,'arquivo8.jpg',6494,'Foto','2013-07-11','10:45:04'),(9,2,'arquivo9.pdf',196807,NULL,'2013-08-18','09:43:55'),(10,2,'arquivo10.pdf',196807,NULL,'2013-09-05','09:40:22'),(11,49,'arquivo11.jpg',6494,'ARQUIVO REFERENTE A DOCUMENTO','2013-09-25','02:43:02'),(12,31,'arquivo12.docx',67110,'ARQUIVO REFERENTE A DOCUMENTO','2013-09-25','02:44:39'),(13,2,'arquivo13.pdf',8469,'ARQUIVO REFERENTE A DOCUMENTO','2013-09-25','03:13:43'),(14,1,'arquivo14.csv',619,'Arquivo Importado na Criação!','2013-11-20','09:18:45'),(15,33,'arquivo15.odt',31324,'Arquivo Importado na Criação!','2013-11-20','09:18:46'),(16,2,'arquivo16.pdf',196807,'Arquivo Importado na Criação!','2013-11-20','09:18:47'),(17,1,'arquivo17.csv',619,'Arquivo Importado na Criação!','2013-11-20','10:05:58'),(18,33,'arquivo18.doc',26112,'Arquivo Importado na Criação!','2013-11-20','10:05:59'),(19,2,'arquivo19.pdf',171010,'Arquivo Importado na Criação!','2013-11-20','10:06:00'),(20,1,'arquivo20.csv',0,'Arquivo Importado na Criação!','2013-11-20','10:09:36'),(21,2,'arquivo21.pdf',0,'Arquivo Importado na Criação!','2013-11-20','10:09:37'),(22,2,'arquivo22.pdf',0,'Arquivo Importado na Criação!','2013-11-20','10:16:37'),(23,1,'arquivo23.csv',0,'Arquivo Importado na Criação!','2013-11-20','10:16:38'),(24,1,'arquivo24.csv',0,'Arquivo Importado na Criação!','2013-11-20','10:30:11'),(25,2,'arquivo25.pdf',0,'Arquivo Importado na Criação!','2013-11-20','10:30:12'),(26,1,'arquivo26.csv',0,'Arquivo Importado na Criação!','2013-11-20','10:34:41'),(27,2,'arquivo27.pdf',0,'Arquivo Importado na Criação!','2013-11-20','10:34:42'),(28,33,'arquivo28.doc',0,'Arquivo Importado na Criação!','2013-11-20','10:34:43'),(29,1,'arquivo29.csv',619,'testando 1','2013-11-20','10:38:14'),(30,2,'arquivo30.pdf',196807,'testando 2','2013-11-20','10:38:15'),(31,33,'arquivo31.doc',26112,'testando 3','2013-11-20','10:38:16'),(32,1,'arquivo32.csv',619,'Arquivo Importado na Criação!','2013-11-21','09:09:49'),(33,33,'arquivo33.doc',26112,'Arquivo Importado na Criação!','2013-11-21','09:09:50'),(34,2,'arquivo34.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:09:51'),(35,1,'arquivo35.csv',619,'Arquivo Importado na Criação!','2013-11-21','09:28:49'),(36,2,'arquivo36.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:28:50'),(37,1,'arquivo37.csv',619,'Arquivo Importado na Criação!','2013-11-21','09:30:22'),(38,2,'arquivo38.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:30:23'),(39,2,'arquivo39.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:30:23'),(40,1,'arquivo40.csv',619,'Arquivo Importado na Criação!','2013-11-21','09:32:13'),(41,2,'arquivo41.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:32:14'),(42,2,'arquivo42.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:32:14'),(43,31,'arquivo43.xlsx',0,'Arquivo Importado na Criação!','2013-11-21','09:32:15'),(44,2,'arquivo44.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:33:15'),(45,2,'arquivo45.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:33:16'),(46,2,'arquivo46.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:34:06'),(47,2,'arquivo47.pdf',0,'Arquivo Importado na Criação!','2013-11-21','09:34:07'),(48,2,'arquivo48.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:52:33'),(49,2,'arquivo49.pdf',196807,'Arquivo Importado na Criação!','2013-11-21','09:52:33'),(50,2,'arquivo50.pdf',196807,'arquivo 1','2013-11-21','09:55:54'),(51,2,'arquivo51.pdf',196807,'arquivo 2','2013-11-21','09:55:54'),(52,2,'arquivo52.pdf',196807,'primeiro arquivo','2013-11-21','10:02:23'),(53,33,'arquivo53.doc',26112,'segundo arquivo','2013-11-21','10:02:24'),(54,33,'arquivo54.xls',0,'terceiro arquivo','2013-11-21','10:02:24'),(55,2,'arquivo55.pdf',196807,'primeiro arquivo','2013-11-21','10:09:26'),(56,2,'arquivo56.pdf',0,'segundo arquivo','2013-11-21','10:09:26'),(57,2,'arquivo57.pdf',196807,'primeiro arquivo','2013-11-21','10:15:07'),(58,1,'arquivo58.csv',619,'teste de criação de documento','2013-11-21','02:16:53'),(59,49,'arquivo59.jpg',389613,'Foto','2013-11-27','02:55:46'),(60,49,'arquivo60.jpg',10871,'Foto','2013-11-28','10:40:03'),(61,49,'arquivo61.jpg',51170,'ARQUIVO REFERENTE A DOCUMENTO','2013-12-02','10:29:53'),(62,49,'arquivo62.jpg',51170,'Foto','2013-12-02','10:43:31'),(64,1,'arquivo64.ret',309760,'Arquivo de Retorno.','2014-02-13','04:05:36'),(67,1,'arquivo67.ret',1936,'Arquivo de Retorno.','2014-02-13','04:08:34'),(69,1,'arquivo69.ret',2904,'Arquivo de Retorno.','2014-02-17','09:09:19'),(70,1,'arquivo70.ret',968,'Arquivo de Retorno.','2014-02-17','09:16:06'),(71,1,'arquivo71.ret',968,'Arquivo de Retorno.','2014-02-18','09:22:50'),(80,1,'arquivo80.ret',1936,'Arquivo de Retorno.','2014-02-27','09:22:16'),(82,1,'arquivo82.ret',4356,'Arquivo de Retorno.','2014-02-27','09:42:20'),(83,1,'arquivo83.ret',1936,'Arquivo de Retorno.','2014-02-27','09:42:44'),(84,1,'arquivo84.ret',5808,'Arquivo de Retorno.','2014-02-27','09:43:33'),(85,1,'arquivo85.ret',1452,'Arquivo de Retorno.','2014-02-27','09:43:58'),(86,1,'arquivo86.ret',2420,'Arquivo de Retorno.','2014-02-27','09:44:29'),(87,1,'arquivo87.ret',1936,'Arquivo de Retorno.','2014-02-27','09:44:52'),(88,1,'arquivo88.ret',1936,'Arquivo de Retorno.','2014-02-27','09:47:11'),(89,1,'arquivo89.ret',2420,'Arquivo de Retorno.','2014-02-27','09:49:54'),(90,1,'arquivo90.ret',10164,'Arquivo de Retorno.','2014-02-27','09:50:25'),(91,1,'arquivo91.ret',2420,'Arquivo de Retorno.','2014-02-27','09:50:49'),(92,1,'arquivo92.ret',2420,'Arquivo de Retorno.','2014-02-27','09:51:47'),(94,1,'arquivo94.ret',2904,'Arquivo de Retorno.','2014-02-27','10:13:18'),(95,1,'arquivo95.ret',1936,'Arquivo de Retorno.','2014-02-27','10:13:56'),(96,1,'arquivo96.ret',1936,'Arquivo de Retorno.','2014-02-27','10:15:03'),(100,1,'arquivo100.ret',10164,'Arquivo de Retorno.','2014-02-28','11:01:03'),(101,1,'arquivo101.ret',10164,'Arquivo de Retorno.','2014-03-06','11:23:18'),(102,1,'arquivo102.ret',6292,'Arquivo de Retorno.','2014-03-06','11:23:38'),(103,1,'arquivo103.ret',6292,'Arquivo de Retorno.','2014-03-11','10:05:05'),(104,1,'arquivo104.ret',3872,'Arquivo de Retorno.','2014-03-11','10:38:33'),(105,1,'arquivo105.ret',3872,'Arquivo de Retorno.','2014-03-12','11:12:00'),(106,1,'arquivo106.ret',2904,'Arquivo de Retorno.','2014-03-20','09:07:00'),(107,1,'arquivo107.ret',4356,'Arquivo de Retorno.','2014-03-20','09:29:41'),(108,1,'arquivo108.ret',8228,'Arquivo de Retorno.','2014-03-20','11:05:48'),(109,1,'arquivo109.ret',968,'Arquivo de Retorno.','2014-03-20','11:08:45'),(110,1,'arquivo110.ret',4840,'Arquivo de Retorno.','2014-03-25','11:48:53'),(111,1,'arquivo111.ret',2904,'Arquivo de Retorno.','2014-03-25','11:49:21'),(112,1,'arquivo112.ret',2904,'Arquivo de Retorno.','2014-03-27','10:33:11'),(113,1,'arquivo113.ret',2904,'Arquivo de Retorno.','2014-03-27','10:33:34'),(114,1,'arquivo114.ret',4356,'Arquivo de Retorno.','2014-04-02','11:13:44'),(115,1,'arquivo115.ret',968,'Arquivo de Retorno.','2014-04-02','11:14:12'),(116,1,'arquivo116.ret',2420,'Arquivo de Retorno.','2014-04-02','11:14:40'),(117,49,'arquivo117.jpg',24754,'FOTO PESSOA','2014-04-08','10:34:00'),(118,49,'arquivo118.jpg',24263,'FOTO PESSOA','2014-04-08','10:34:44'),(119,49,'arquivo119.jpg',6494,'Foto','2014-04-12','12:48:06'),(120,2,'arquivo120.pdf',1933,'fdgfdg','2014-04-17','11:11:50'),(121,49,'arquivo121.jpg',19484,'Foto','2014-04-28','01:48:51'),(122,49,'arquivo122.jpg',116311,'Foto','2014-04-28','01:52:45'),(123,1,'arquivo123.ret',14036,'Arquivo de Retorno.','2014-05-26','10:19:02'),(124,1,'arquivo124.ret',1452,'Arquivo de Retorno.','2014-05-26','10:20:21'),(125,1,'arquivo125.ret',968,'Arquivo de Retorno.','2014-05-26','10:20:56'),(126,1,'arquivo126.ret',14036,'Arquivo de Retorno.','2014-05-26','10:22:41'),(127,1,'arquivo127.ret',1936,'Arquivo de Retorno.','2014-05-26','10:23:18'),(128,1,'arquivo128.ret',14036,'Arquivo de Retorno.','2014-05-26','10:24:08'),(129,1,'arquivo129.ret',14036,'Arquivo de Retorno.','2014-05-26','10:26:28'),(130,1,'arquivo130.ret',11132,'Arquivo de Retorno.','2014-05-26','10:26:58'),(131,1,'arquivo131.ret',16456,'Arquivo de Retorno.','2014-05-26','10:28:50'),(132,1,'arquivo132.ret',4356,'Arquivo de Retorno.','2014-05-26','10:30:10'),(134,1,'arquivo134.ret',2904,'Arquivo de Retorno.','2014-05-26','10:31:43'),(136,1,'arquivo136.ret',3872,'Arquivo de Retorno.','2014-05-26','10:34:07'),(137,1,'arquivo137.ret',1936,'Arquivo de Retorno.','2014-05-26','10:34:25'),(138,1,'arquivo138.ret',3872,'Arquivo de Retorno.','2014-05-26','10:34:39'),(139,1,'arquivo139.ret',3872,'Arquivo de Retorno.','2014-05-26','10:34:57'),(140,1,'arquivo140.ret',3872,'Arquivo de Retorno.','2014-05-26','10:35:54'),(141,1,'arquivo141.ret',3872,'Arquivo de Retorno.','2014-05-26','10:36:39'),(142,1,'arquivo142.ret',3872,'Arquivo de Retorno.','2014-05-26','10:36:44'),(143,49,'arquivo143.jpg',5500,'FOTO PESSOA','2014-06-10','06:37:40'),(144,49,'arquivo144.jpg',5500,'FOTO PESSOA','2014-06-10','06:38:07'),(145,49,'arquivo145.jpg',92788,'FOTO PESSOA','2014-06-10','06:38:39'),(146,33,NULL,NULL,NULL,'2014-08-15','09:24:22'),(147,49,'arquivo147.jpg',14340,'FOTO PESSOA','2014-09-11','23:59:15'),(148,49,'arquivo148.jpg',6494,'Foto','2014-09-11','23:59:41'),(149,33,NULL,NULL,NULL,'2014-10-03','09:17:05'),(150,33,NULL,NULL,NULL,'2014-10-03','09:31:15'),(151,33,NULL,NULL,NULL,'2014-10-03','09:40:49'),(152,33,NULL,NULL,NULL,'2014-10-03','09:46:09'),(153,33,NULL,NULL,NULL,'2014-10-03','09:52:29'),(154,49,'arquivo154.jpg',21477,'FOTO PESSOA','2014-11-04','10:26:52'),(155,49,'arquivo155.jpg',31632,'FOTO PESSOA','2014-11-04','11:35:05'),(156,33,NULL,NULL,NULL,'2015-01-09','09:45:40'),(157,33,NULL,NULL,NULL,'2015-01-09','09:47:52'),(158,33,NULL,NULL,NULL,'2015-01-09','10:19:01'),(159,33,NULL,NULL,NULL,'2015-01-09','10:35:22'),(160,33,NULL,NULL,NULL,'2015-01-09','10:38:41'),(161,33,NULL,NULL,NULL,'2015-01-09','11:00:36'),(162,33,NULL,NULL,NULL,'2015-01-09','13:56:18'),(163,33,NULL,NULL,NULL,'2015-01-12','10:21:08'),(164,33,NULL,NULL,NULL,'2015-01-12','14:28:11'),(165,33,NULL,NULL,NULL,'2015-01-14','11:03:59'),(166,33,NULL,NULL,NULL,'2015-01-14','11:24:00'),(167,33,NULL,NULL,NULL,'2015-01-14','12:24:45'),(168,33,NULL,NULL,NULL,'2015-01-14','12:50:50'),(169,33,NULL,NULL,NULL,'2015-01-22','11:11:02'),(170,33,NULL,NULL,NULL,'2015-01-26','14:24:21'),(171,33,NULL,NULL,NULL,'2015-02-11','11:42:40'),(172,33,NULL,NULL,NULL,'2015-02-11','11:51:46'),(173,33,NULL,NULL,NULL,'2015-02-11','12:08:34'),(174,33,NULL,NULL,NULL,'2015-02-13','11:28:23'),(175,33,NULL,NULL,NULL,'2015-02-20','13:10:37'),(176,33,NULL,NULL,NULL,'2015-03-23','08:33:41'),(177,33,NULL,NULL,NULL,'2015-03-23','08:53:24'),(178,33,NULL,NULL,NULL,'2015-03-23','09:21:28'),(179,33,NULL,NULL,NULL,'2015-03-23','09:39:28'),(180,33,NULL,NULL,NULL,'2015-03-23','10:26:11'),(181,33,NULL,NULL,NULL,'2015-03-23','11:19:53'),(182,49,'arquivo182.jpg',21297,'FOTO PESSOA','2015-05-20','11:43:35'),(183,49,NULL,794944,'Foto','2015-09-23','08:46:39'),(184,49,NULL,794944,'Foto','2015-09-23','09:52:53'),(185,49,NULL,794944,'Foto','2015-09-24','09:34:05'),(186,49,NULL,794944,'Foto','2015-09-24','09:36:13'),(187,33,NULL,NULL,NULL,'2015-10-29','11:25:19'),(188,33,NULL,NULL,NULL,'2015-11-03','10:06:34'),(189,33,NULL,NULL,NULL,'2015-11-03','10:22:28'),(190,33,NULL,NULL,NULL,'2015-11-03','10:43:22'),(191,33,NULL,NULL,NULL,'2015-11-03','11:08:37'),(192,33,NULL,NULL,NULL,'2015-11-03','11:10:23'),(193,33,NULL,NULL,NULL,'2015-11-03','11:30:22'),(194,33,NULL,NULL,NULL,'2015-11-03','11:35:18'),(195,33,NULL,NULL,NULL,'2015-11-03','11:57:13'),(196,33,NULL,NULL,NULL,'2015-11-03','12:20:39'),(197,33,NULL,NULL,NULL,'2015-11-03','13:26:01'),(198,33,NULL,NULL,NULL,'2015-11-03','13:57:36'),(199,33,NULL,NULL,NULL,'2015-11-03','14:00:51'),(200,33,NULL,NULL,NULL,'2015-11-03','14:25:19'),(201,33,NULL,NULL,NULL,'2015-11-03','14:38:18'),(202,33,NULL,NULL,NULL,'2015-11-04','10:13:12'),(203,33,NULL,NULL,NULL,'2015-11-04','10:31:55'),(204,33,NULL,NULL,NULL,'2015-11-04','11:01:03'),(205,33,NULL,NULL,NULL,'2015-11-04','11:46:04'),(206,33,NULL,NULL,NULL,'2015-11-04','12:03:11'),(207,33,NULL,NULL,NULL,'2015-11-10','12:20:24'),(208,33,NULL,NULL,NULL,'2015-11-13','11:51:38'),(209,33,NULL,NULL,NULL,'2016-05-05','11:09:06'),(214,1,'arquivo214.ret',2592,'Arquivo de Retorno.','2017-03-08','12:38:06'),(215,1,'arquivo215.ret',2592,'Arquivo de Retorno.','2017-03-08','12:38:37'),(216,1,'arquivo216.ret',2916,'Arquivo de Retorno.','2017-03-08','12:39:04'),(217,1,'arquivo217.ret',2592,'Arquivo de Retorno.','2017-03-08','12:39:54'),(218,1,'arquivo218.ret',2430,'Arquivo de Retorno.','2017-03-08','12:40:20'),(219,1,'arquivo219.ret',968,'Arquivo de Retorno.','2017-03-08','12:40:48'),(220,1,'arquivo220.ret',2592,'Arquivo de Retorno.','2017-03-08','12:41:33'),(221,1,'arquivo221.ret',2592,'Arquivo de Retorno.','2017-03-08','12:42:01'),(222,1,'arquivo222.ret',2592,'Arquivo de Retorno.','2017-03-08','12:43:03'),(223,1,'arquivo223.txt',38150,'Arquivo de Retorno.','2017-03-09','11:45:49'),(224,1,'arquivo224.ret',3402,'Arquivo de Retorno.','2017-03-14','07:43:49'),(225,1,'arquivo225.ret',2754,'Arquivo de Retorno.','2017-03-14','07:44:19'),(226,1,'arquivo226.txt',11502,'Arquivo de Retorno.','2017-03-14','10:03:39'),(227,1,'arquivo227.ret',2904,'Arquivo de Retorno.','2017-03-14','10:24:46'),(228,1,'arquivo228.ret',2420,'Arquivo de Retorno.','2017-03-14','10:25:39'),(229,1,'arquivo229.ret',2420,'Arquivo de Retorno.','2017-03-14','10:26:27'),(230,1,'arquivo230.ret',2420,'Arquivo de Retorno.','2017-03-14','10:27:23'),(231,1,'arquivo231.ret',3388,'Arquivo de Retorno.','2017-03-17','09:52:22'),(232,1,'arquivo232.ret',2420,'Arquivo de Retorno.','2017-03-17','11:39:16'),(233,1,'arquivo233.ret',1936,'Arquivo de Retorno.','2017-03-17','11:39:50'),(234,1,'arquivo234.ret',1936,'Arquivo de Retorno.','2017-03-23','08:21:07'),(235,1,'arquivo235.ret',1936,'Arquivo de Retorno.','2017-03-23','08:21:55'),(236,1,'arquivo236.ret',3872,'Arquivo de Retorno.','2017-03-23','08:22:32'),(237,1,'arquivo237.ret',1936,'Arquivo de Retorno.','2017-03-23','09:33:20'),(238,1,'arquivo238.ret',3388,'Arquivo de Retorno.','2017-03-24','12:20:44'),(239,1,'arquivo239.ret',2420,'Arquivo de Retorno.','2017-03-28','11:52:52'),(240,1,'arquivo240.ret',1936,'Arquivo de Retorno.','2017-03-28','11:53:43'),(241,1,'arquivo241.ret',3388,'Arquivo de Retorno.','2017-03-29','12:09:23'),(242,1,'arquivo242.ret',3872,'Arquivo de Retorno.','2017-04-03','13:30:19'),(243,1,'arquivo243.ret',3388,'Arquivo de Retorno.','2017-04-03','13:30:53'),(244,1,'arquivo244.ret',2904,'Arquivo de Retorno.','2017-04-06','10:59:52'),(245,1,'arquivo245.ret',1452,'Arquivo de Retorno.','2017-04-06','11:00:38'),(246,1,'arquivo246.ret',1936,'Arquivo de Retorno.','2017-04-06','11:01:12'),(247,1,'arquivo247.ret',2904,'Arquivo de Retorno.','2017-04-08','08:44:12'),(248,1,'arquivo248.ret',968,'Arquivo de Retorno.','2017-04-12','08:00:21'),(249,1,'arquivo249.ret',1936,'Arquivo de Retorno.','2017-04-12','08:00:50'),(250,1,'arquivo250.ret',2904,'Arquivo de Retorno.','2017-04-17','08:14:17'),(251,1,'arquivo251.ret',1452,'Arquivo de Retorno.','2017-04-19','09:01:37'),(252,1,'arquivo252.ret',968,'Arquivo de Retorno.','2017-04-19','09:02:26'),(253,1,'arquivo253.ret',1936,'Arquivo de Retorno.','2017-04-19','09:02:52'),(254,1,'arquivo254.ret',1452,'Arquivo de Retorno.','2017-04-25','08:04:26'),(255,1,'arquivo255.ret',1452,'Arquivo de Retorno.','2017-04-25','08:04:55'),(256,1,'arquivo256.ret',2420,'Arquivo de Retorno.','2017-04-25','08:05:24'),(257,1,'arquivo257.ret',2904,'Arquivo de Retorno.','2017-05-02','12:20:29'),(258,1,'arquivo258.ret',1452,'Arquivo de Retorno.','2017-05-02','12:22:37'),(259,1,'arquivo259.ret',968,'Arquivo de Retorno.','2017-05-02','12:23:19'),(260,1,'arquivo260.ret',1452,'Arquivo de Retorno.','2017-05-02','12:23:54'),(261,1,'arquivo261.ret',968,'Arquivo de Retorno.','2017-05-05','10:21:00'),(262,1,'arquivo262.ret',968,'Arquivo de Retorno.','2017-05-05','10:21:24'),(263,1,'arquivo263.ret',608,'Arquivo de Retorno.','2017-05-05','10:22:05'),(264,1,'arquivo264.ret',968,'Arquivo de Retorno.','2017-05-08','12:30:08'),(265,1,'arquivo265.ret',1452,'Arquivo de Retorno.','2017-05-08','12:31:15'),(266,1,'arquivo266.ret',1452,'Arquivo de Retorno.','2017-05-09','09:43:09'),(267,1,'arquivo267.ret',1452,'Arquivo de Retorno.','2017-05-12','09:17:58'),(268,1,'arquivo268.ret',1936,'Arquivo de Retorno.','2017-05-12','09:18:24'),(269,1,'arquivo269.ret',3872,'Arquivo de Retorno.','2017-05-12','09:18:54'),(270,1,'arquivo270.ret',3388,'Arquivo de Retorno.','2017-05-17','11:39:09'),(271,1,'arquivo271.ret',2904,'Arquivo de Retorno.','2017-05-17','11:39:44'),(272,1,'arquivo272.ret',1936,'Arquivo de Retorno.','2017-05-17','11:40:20'),(273,1,'arquivo273.txt',968,'Arquivo de Retorno.','2017-05-19','09:00:35'),(274,1,'arquivo274.txt',1452,'Arquivo de Retorno.','2017-05-22','11:52:37'),(275,1,'arquivo275.txt',2420,'Arquivo de Retorno.','2017-05-22','11:53:01'),(276,1,'arquivo276.txt',1936,'Arquivo de Retorno.','2017-05-23','10:14:21'),(277,1,'arquivo277.txt',1936,'Arquivo de Retorno.','2017-05-24','13:15:35'),(278,1,'arquivo278.txt',1936,'Arquivo de Retorno.','2017-05-26','10:16:11'),(279,1,'arquivo279.txt',1452,'Arquivo de Retorno.','2017-05-26','10:16:53'),(280,1,'arquivo280.txt',2904,'Arquivo de Retorno.','2017-05-29','12:32:17'),(281,1,'arquivo281.txt',2904,'Arquivo de Retorno.','2017-05-30','11:36:45'),(282,1,'arquivo282.txt',4356,'Arquivo de Retorno.','2017-05-31','11:33:30'),(283,1,'arquivo283.txt',2420,'Arquivo de Retorno.','2017-06-01','10:52:07'),(284,1,'arquivo284.txt',1452,'Arquivo de Retorno.','2017-06-02','13:23:53'),(285,1,'arquivo285.txt',2420,'Arquivo de Retorno.','2017-06-06','08:49:21'),(286,1,'arquivo286.txt',1452,'Arquivo de Retorno.','2017-06-06','08:50:10'),(287,1,'arquivo287.ret',968,'Arquivo de Retorno.','2017-06-09','11:59:57'),(288,1,'arquivo288.ret',1452,'Arquivo de Retorno.','2017-06-09','12:00:41'),(289,1,'arquivo289.ret',1452,'Arquivo de Retorno.','2017-06-09','12:01:57'),(290,1,'arquivo290.ret',1452,'Arquivo de Retorno.','2017-06-12','09:06:30'),(291,1,'arquivo291.ret',2904,'Arquivo de Retorno.','2017-06-13','09:26:31'),(292,1,'arquivo292.ret',968,'Arquivo de Retorno.','2017-06-14','10:51:23'),(293,1,'arquivo293.ret',968,'Arquivo de Retorno.','2017-06-20','10:26:55'),(294,1,'arquivo294.ret',968,'Arquivo de Retorno.','2017-06-20','10:27:59'),(295,1,'arquivo295.ret',968,'Arquivo de Retorno.','2017-06-20','11:32:47'),(296,1,'arquivo296.ret',1936,'Arquivo de Retorno.','2017-06-21','10:45:13'),(297,1,'arquivo297.ret',2420,'Arquivo de Retorno.','2017-06-22','13:11:25'),(298,1,'arquivo298.ret',1936,'Arquivo de Retorno.','2017-06-23','13:02:22'),(299,1,'arquivo299.ret',968,'Arquivo de Retorno.','2017-06-28','09:43:17'),(300,1,'arquivo300.ret',968,'Arquivo de Retorno.','2017-06-28','09:43:41'),(301,1,'arquivo301.ret',1936,'Arquivo de Retorno.','2017-06-28','09:44:05'),(302,1,'arquivo302.ret',1452,'Arquivo de Retorno.','2017-06-30','10:57:41'),(303,1,'arquivo303.ret',968,'Arquivo de Retorno.','2017-06-30','10:58:09'),(304,1,'arquivo304.ret',968,'Arquivo de Retorno.','2017-07-03','10:57:05'),(305,1,'arquivo305.ret',968,'Arquivo de Retorno.','2017-07-05','12:19:37'),(306,1,'arquivo306.ret',2420,'Arquivo de Retorno.','2017-07-05','12:20:06'),(307,1,'arquivo307.ret',2420,'Arquivo de Retorno.','2017-07-06','08:49:27'),(308,1,'arquivo308.ret',1936,'Arquivo de Retorno.','2017-07-07','11:01:16'),(309,1,'arquivo309.ret',2420,'Arquivo de Retorno.','2017-07-11','08:44:34'),(310,1,'arquivo310.ret',2904,'Arquivo de Retorno.','2017-07-11','08:45:37'),(311,1,'arquivo311.ret',1452,'Arquivo de Retorno.','2017-07-13','11:57:58'),(312,1,'arquivo312.ret',1452,'Arquivo de Retorno.','2017-07-14','09:03:01'),(313,1,'arquivo313.ret',8712,'Arquivo de Retorno.','2017-07-19','07:45:52'),(314,1,'arquivo314.ret',968,'Arquivo de Retorno.','2017-07-19','07:47:20'),(315,1,'arquivo315.ret',4840,'Arquivo de Retorno.','2017-07-19','13:21:24'),(316,1,'arquivo316.ret',6292,'Arquivo de Retorno.','2017-07-20','14:07:37'),(317,1,'arquivo317.ret',5808,'Arquivo de Retorno.','2017-07-24','13:03:54'),(318,1,'arquivo318.ret',5808,'Arquivo de Retorno.','2017-07-26','10:33:32'),(319,1,'arquivo319.ret',1452,'Arquivo de Retorno.','2017-07-26','10:34:37'),(320,1,'arquivo320.ret',1452,'Arquivo de Retorno.','2017-07-27','12:19:22'),(321,1,'arquivo321.ret',968,'Arquivo de Retorno.','2017-07-27','12:19:50'),(322,1,'arquivo322.ret',4840,'Arquivo de Retorno.','2017-07-27','12:20:11'),(323,1,'arquivo323.ret',4840,'Arquivo de Retorno.','2017-07-27','12:21:00'),(324,1,'arquivo324.ret',5808,'Arquivo de Retorno.','2017-08-01','07:51:00'),(325,1,'arquivo325.txt',6292,'Arquivo de Retorno.','2017-08-01','11:44:45'),(326,1,'arquivo326.ret',3872,'Arquivo de Retorno.','2017-08-03','07:58:23'),(327,1,'arquivo327.ret',4840,'Arquivo de Retorno.','2017-08-04','10:38:05'),(328,1,'arquivo328.ret',4356,'Arquivo de Retorno.','2017-08-04','13:02:54'),(329,1,'arquivo329.ret',5808,'Arquivo de Retorno.','2017-08-07','10:39:03'),(330,1,'arquivo330.ret',7744,'Arquivo de Retorno.','2017-08-08','11:13:29'),(331,1,'arquivo331.ret',4356,'Arquivo de Retorno.','2017-08-09','11:40:36'),(332,1,'arquivo332.ret',6292,'Arquivo de Retorno.','2017-08-10','13:17:48'),(333,1,'arquivo333.ret',8228,'Arquivo de Retorno.','2017-08-11','11:58:38'),(334,1,'arquivo334.ret',6776,'Arquivo de Retorno.','2017-08-14','10:51:19'),(335,1,'arquivo335.ret',8712,'Arquivo de Retorno.','2017-08-16','09:38:24'),(336,1,'arquivo336.ret',6292,'Arquivo de Retorno.','2017-08-16','11:29:52'),(337,1,'arquivo337.ret',5808,'Arquivo de Retorno.','2017-08-17','10:02:19'),(338,1,'arquivo338.ret',3388,'Arquivo de Retorno.','2017-08-18','08:37:18'),(339,1,'arquivo339.ret',2904,'Arquivo de Retorno.','2017-08-22','09:20:24'),(340,1,'arquivo340.ret',14036,'Arquivo de Retorno.','2017-08-23','09:35:30'),(341,1,'arquivo341.ret',7744,'Arquivo de Retorno.','2017-08-23','10:00:28'),(342,1,'arquivo342.ret',6292,'Arquivo de Retorno.','2017-08-24','10:26:39'),(343,1,'arquivo343.ret',7260,'Arquivo de Retorno.','2017-08-25','11:38:52'),(344,1,'arquivo344.ret',5324,'Arquivo de Retorno.','2017-08-28','11:07:16'),(345,1,'arquivo345.ret',11132,'Arquivo de Retorno.','2017-08-29','11:54:05'),(346,1,'arquivo346.ret',7744,'Arquivo de Retorno.','2017-08-30','11:31:43'),(347,1,'arquivo347.ret',7260,'Arquivo de Retorno.','2017-08-31','10:26:58'),(348,1,'arquivo348.ret',11132,'Arquivo de Retorno.','2017-09-01','11:28:11'),(349,1,'arquivo349.ret',7260,'Arquivo de Retorno.','2017-09-04','10:22:31'),(350,1,'arquivo350.ret',8712,'Arquivo de Retorno.','2017-09-05','10:44:57'),(351,1,'arquivo351.ret',7744,'Arquivo de Retorno.','2017-09-06','10:25:31'),(352,1,'arquivo352.ret',10164,'Arquivo de Retorno.','2017-09-11','14:21:51'),(353,1,'arquivo353.ret',5808,'Arquivo de Retorno.','2017-09-11','14:23:49'),(354,1,'arquivo354.ret',7744,'Arquivo de Retorno.','2017-09-12','12:51:11'),(355,1,'arquivo355.ret',968,'Arquivo de Retorno.','2017-09-14','11:13:08'),(356,1,'arquivo356.ret',11132,'Arquivo de Retorno.','2017-09-14','11:15:23'),(357,1,'arquivo357.ret',968,'Arquivo de Retorno.','2017-09-14','11:16:56'),(358,1,'arquivo358.ret',10648,'Arquivo de Retorno.','2017-09-15','12:40:59'),(359,1,'arquivo359.ret',6776,'Arquivo de Retorno.','2017-09-18','10:34:50'),(360,1,'arquivo360.ret',11616,'Arquivo de Retorno.','2017-09-19','10:54:20'),(361,1,'arquivo361.ret',8712,'Arquivo de Retorno.','2017-09-20','12:35:28'),(362,1,'arquivo362.ret',4840,'Arquivo de Retorno.','2017-09-21','11:34:23'),(363,1,'arquivo363.ret',8712,'Arquivo de Retorno.','2017-09-21','11:41:34'),(364,1,'arquivo364.ret',11616,'Arquivo de Retorno.','2017-09-21','11:43:05'),(365,1,'arquivo365.ret',6776,'Arquivo de Retorno.','2017-09-21','11:44:23'),(366,1,'arquivo366.ret',6776,'Arquivo de Retorno.','2017-09-21','11:53:03'),(367,1,'arquivo367.ret',3388,'Arquivo de Retorno.','2017-09-22','09:49:58'),(368,1,'arquivo368.ret',3388,'Arquivo de Retorno.','2017-09-22','09:50:22'),(369,1,'arquivo369.ret',1936,'Arquivo de Retorno.','2017-09-25','11:56:34'),(370,1,'arquivo370.ret',1936,'Arquivo de Retorno.','2017-09-25','11:57:07'),(371,1,'arquivo371.ret',3388,'Arquivo de Retorno.','2017-09-26','10:06:25'),(372,1,'arquivo372.ret',2420,'Arquivo de Retorno.','2017-09-28','10:37:53'),(373,1,'arquivo373.ret',2420,'Arquivo de Retorno.','2017-09-28','12:06:17'),(374,1,'arquivo374.ret',3872,'Arquivo de Retorno.','2017-09-29','11:09:31'),(375,1,'arquivo375.ret',3872,'Arquivo de Retorno.','2017-10-03','11:36:06'),(376,1,'arquivo376.ret',6776,'Arquivo de Retorno.','2017-10-03','11:36:52'),(377,1,'arquivo377.ret',3872,'Arquivo de Retorno.','2017-10-03','11:39:13'),(378,1,'arquivo378.ret',7744,'Arquivo de Retorno.','2017-10-03','12:57:10'),(379,1,'arquivo379.ret',7260,'Arquivo de Retorno.','2017-10-03','12:58:40'),(380,1,'arquivo380.ret',912,'Arquivo de Retorno.','2017-10-04','12:28:12'),(381,1,'arquivo381.ret',912,'Arquivo de Retorno.','2017-10-04','12:28:49'),(382,1,'arquivo382.ret',912,'Arquivo de Retorno.','2017-10-04','12:35:03'),(383,1,'arquivo383.ret',2420,'Arquivo de Retorno.','2017-10-04','13:01:18'),(384,1,'arquivo384.ret',1936,'Arquivo de Retorno.','2017-10-06','09:08:32'),(385,1,'arquivo385.ret',968,'Arquivo de Retorno.','2017-10-06','11:05:02'),(386,1,'arquivo386.ret',1452,'Arquivo de Retorno.','2017-10-09','11:58:41'),(387,1,'arquivo387.ret',1452,'Arquivo de Retorno.','2017-10-11','08:57:37'),(388,1,'arquivo388.ret',968,'Arquivo de Retorno.','2017-10-11','08:57:59'),(389,1,'arquivo389.ret',2420,'Arquivo de Retorno.','2017-10-18','08:57:48'),(390,1,'arquivo390.ret',968,'Arquivo de Retorno.','2017-10-18','08:58:28'),(391,1,'arquivo391.ret',3872,'Arquivo de Retorno.','2017-10-18','13:49:15'),(392,1,'arquivo392.ret',12100,'Arquivo de Retorno.','2017-10-18','13:50:41'),(393,1,'arquivo393.ret',7744,'Arquivo de Retorno.','2017-10-20','11:29:32'),(394,1,'arquivo394.ret',7744,'Arquivo de Retorno.','2017-10-20','11:33:38'),(395,1,'arquivo395.ret',3872,'Arquivo de Retorno.','2017-10-20','11:36:18'),(396,1,'arquivo396.ret',12100,'Arquivo de Retorno.','2017-10-20','11:37:00'),(397,1,'arquivo397.ret',2904,'Arquivo de Retorno.','2017-10-23','13:05:15'),(398,1,'arquivo398.ret',7744,'Arquivo de Retorno.','2017-10-23','13:16:19'),(399,1,'arquivo399.ret',7744,'Arquivo de Retorno.','2017-10-23','13:22:44'),(400,1,'arquivo400.ret',12100,'Arquivo de Retorno.','2017-10-23','13:30:47'),(401,1,'arquivo401.ret',3388,'Arquivo de Retorno.','2017-10-24','11:13:01'),(402,1,'arquivo402.ret',3872,'Arquivo de Retorno.','2017-10-24','11:16:02'),(403,1,'arquivo403.ret',12100,'Arquivo de Retorno.','2017-10-24','11:17:02'),(404,1,'arquivo404.ret',7744,'Arquivo de Retorno.','2017-10-24','11:17:49'),(405,1,'arquivo405.ret',7744,'Arquivo de Retorno.','2017-10-24','11:18:48'),(406,1,'arquivo406.ret',2904,'Arquivo de Retorno.','2017-10-24','11:19:27'),(407,1,'arquivo407.ret',3388,'Arquivo de Retorno.','2017-10-24','11:20:33'),(408,1,'arquivo408.ret',7260,'Arquivo de Retorno.','2017-10-25','12:46:19'),(409,1,'arquivo409.ret',1452,'Arquivo de Retorno.','2017-10-27','09:20:21'),(410,1,'arquivo410.ret',1452,'Arquivo de Retorno.','2017-10-27','09:28:16'),(411,1,'arquivo411.ret',3872,'Arquivo de Retorno.','2017-10-30','13:32:58'),(412,1,'arquivo412.ret',3872,'Arquivo de Retorno.','2017-10-31','13:44:36'),(413,1,'arquivo413.ret',1452,'Arquivo de Retorno.','2017-10-31','13:45:13'),(414,1,'arquivo414.ret',968,'Arquivo de Retorno.','2017-10-31','13:45:54'),(415,1,'arquivo415.ret',968,'Arquivo de Retorno.','2017-11-06','10:41:26'),(416,1,'arquivo416.ret',968,'Arquivo de Retorno.','2017-11-06','10:41:55'),(417,1,'arquivo417.ret',1452,'Arquivo de Retorno.','2017-11-06','10:43:18'),(418,1,'arquivo418.ret',968,'Arquivo de Retorno.','2017-11-06','10:44:53'),(419,1,'arquivo419.ret',968,'Arquivo de Retorno.','2017-11-06','11:28:22'),(420,1,'arquivo420.ret',1452,'Arquivo de Retorno.','2017-11-06','11:30:12'),(421,1,'arquivo421.ret',968,'Arquivo de Retorno.','2017-11-06','11:30:57'),(422,1,'arquivo422.ret',1452,'Arquivo de Retorno.','2017-11-06','11:32:06'),(423,1,'arquivo423.ret',1452,'Arquivo de Retorno.','2017-11-06','11:35:50'),(424,1,'arquivo424.ret',4840,'Arquivo de Retorno.','2017-11-06','11:36:52'),(425,1,'arquivo425.ret',24684,'Arquivo de Retorno.','2017-11-07','12:14:43'),(426,1,'arquivo426.ret',23232,'Arquivo de Retorno.','2017-11-08','13:42:38'),(427,1,'arquivo427.ret',21780,'Arquivo de Retorno.','2017-11-09','13:49:25'),(428,1,'arquivo428.ret',15972,'Arquivo de Retorno.','2017-11-10','15:07:10'),(429,1,'arquivo429.ret',10648,'Arquivo de Retorno.','2017-11-13','14:40:54'),(430,1,'arquivo430.ret',7744,'Arquivo de Retorno.','2017-11-16','14:13:47'),(431,1,'arquivo431.ret',12584,'Arquivo de Retorno.','2017-11-21','11:13:37'),(432,1,'arquivo432.ret',10648,'Arquivo de Retorno.','2017-11-21','11:14:37'),(433,1,'arquivo433.ret',968,'Arquivo de Retorno.','2017-11-21','11:15:25'),(434,1,'arquivo434.ret',968,'Arquivo de Retorno.','2017-11-21','11:17:23'),(435,1,'arquivo435.ret',4840,'Arquivo de Retorno.','2017-11-21','14:14:33'),(436,1,'arquivo436.ret',1452,'Arquivo de Retorno.','2017-11-22','10:56:48'),(437,1,'arquivo437.ret',4840,'Arquivo de Retorno.','2017-11-22','13:09:56'),(438,1,'arquivo438.ret',968,'Arquivo de Retorno.','2017-11-22','13:11:14'),(439,1,'arquivo439.ret',10648,'Arquivo de Retorno.','2017-11-22','13:37:51'),(440,1,'arquivo440.ret',1936,'Arquivo de Retorno.','2017-11-28','09:03:54'),(441,1,'arquivo441.ret',968,'Arquivo de Retorno.','2017-11-28','13:23:50'),(442,1,'arquivo442.ret',968,'Arquivo de Retorno.','2017-11-28','13:24:39'),(443,1,'arquivo443.ret',2420,'Arquivo de Retorno.','2017-11-29','12:27:00'),(444,1,'arquivo444.ret',1936,'Arquivo de Retorno.','2017-12-01','10:48:23'),(445,1,'arquivo445.ret',968,'Arquivo de Retorno.','2017-12-01','10:48:59'),(446,1,'arquivo446.ret',2420,'Arquivo de Retorno.','2017-12-01','10:50:06'),(447,1,'arquivo447.ret',1936,'Arquivo de Retorno.','2017-12-01','10:52:35'),(448,1,'arquivo448.ret',1936,'Arquivo de Retorno.','2017-12-01','10:52:38'),(449,1,'arquivo449.ret',1452,'Arquivo de Retorno.','2017-12-04','12:51:16'),(450,1,'arquivo450.ret',2420,'Arquivo de Retorno.','2017-12-05','10:01:35'),(451,1,'arquivo451.ret',1936,'Arquivo de Retorno.','2017-12-07','12:22:03'),(452,1,'arquivo452.ret',2420,'Arquivo de Retorno.','2017-12-07','12:22:55'),(453,1,'arquivo453.ret',2420,'Arquivo de Retorno.','2017-12-11','14:30:55'),(454,1,'arquivo454.ret',968,'Arquivo de Retorno.','2017-12-11','14:31:40'),(455,1,'arquivo455.ret',1936,'Arquivo de Retorno.','2017-12-12','13:56:05'),(456,1,'arquivo456.ret',1452,'Arquivo de Retorno.','2017-12-13','12:36:26'),(457,1,'arquivo457.ret',968,'Arquivo de Retorno.','2017-12-14','12:23:17'),(458,1,'arquivo458.ret',2420,'Arquivo de Retorno.','2017-12-19','13:57:45'),(459,1,'arquivo459.ret',968,'Arquivo de Retorno.','2017-12-19','13:58:43'),(460,1,'arquivo460.ret',1452,'Arquivo de Retorno.','2017-12-20','12:24:53'),(461,1,'arquivo461.ret',1452,'Arquivo de Retorno.','2017-12-21','11:41:26'),(462,1,'arquivo462.ret',1452,'Arquivo de Retorno.','2017-12-22','11:15:04'),(463,1,'arquivo463.ret',968,'Arquivo de Retorno.','2018-01-02','12:10:06'),(464,1,'arquivo464.ret',968,'Arquivo de Retorno.','2018-01-02','12:10:45'),(465,1,'arquivo465.ret',968,'Arquivo de Retorno.','2018-01-02','12:11:12'),(466,1,'arquivo466.ret',968,'Arquivo de Retorno.','2018-01-03','11:41:37'),(467,1,'arquivo467.ret',968,'Arquivo de Retorno.','2018-01-03','11:41:59'),(468,1,'arquivo468.ret',968,'Arquivo de Retorno.','2018-01-03','11:42:21'),(469,1,'arquivo469.txt',3388,'Arquivo de Retorno.','2018-01-05','11:31:37'),(470,1,'arquivo470.txt',3388,'Arquivo de Retorno.','2018-01-05','11:32:28'),(471,1,'arquivo471.txt',1936,'Arquivo de Retorno.','2018-01-09','10:56:21'),(472,1,'arquivo472.txt',1936,'Arquivo de Retorno.','2018-01-09','10:56:48'),(473,1,'arquivo473.txt',1936,'Arquivo de Retorno.','2018-01-10','10:12:10'),(474,1,'arquivo474.ret',1936,'Arquivo de Retorno.','2018-01-11','10:28:04'),(475,1,'arquivo475.ret',1936,'Arquivo de Retorno.','2018-01-11','10:31:24'),(476,1,'arquivo476.ret',1936,'Arquivo de Retorno.','2018-01-12','11:18:21'),(477,1,'arquivo477.ret',2420,'Arquivo de Retorno.','2018-01-15','12:18:37'),(478,1,'arquivo478.ret',1452,'Arquivo de Retorno.','2018-01-16','10:27:04'),(479,1,'arquivo479.ret',1452,'Arquivo de Retorno.','2018-01-17','09:20:08'),(480,1,'arquivo480.ret',1936,'Arquivo de Retorno.','2018-01-17','09:20:51'),(481,1,'arquivo481.ret',3872,'Arquivo de Retorno.','2018-01-18','12:33:48'),(482,1,'arquivo482.ret',3872,'Arquivo de Retorno.','2018-01-18','15:51:35'),(483,1,'arquivo483.ret',1936,'Arquivo de Retorno.','2018-01-19','11:08:21'),(484,1,'arquivo484.ret',1936,'Arquivo de Retorno.','2018-01-19','11:13:12'),(485,1,'arquivo485.ret',1936,'Arquivo de Retorno.','2018-01-23','11:47:29'),(486,1,'arquivo486.ret',5324,'Arquivo de Retorno.','2018-01-23','11:48:42'),(487,1,'arquivo487.ret',6776,'Arquivo de Retorno.','2018-01-24','15:40:24'),(488,1,'arquivo488.txt',12584,'Arquivo de Retorno.','2018-01-25','17:58:10'),(489,1,'arquivo489.ret',3388,'Arquivo de Retorno.','2018-01-26','15:49:41'),(490,1,'arquivo490.ret',7260,'Arquivo de Retorno.','2018-01-30','11:51:10'),(491,1,'arquivo491.ret',1936,'Arquivo de Retorno.','2018-01-30','11:51:27'),(492,1,'arquivo492.ret',29524,'Arquivo de Retorno.','2018-01-30','12:45:53'),(493,1,'arquivo493.ret',12584,'Arquivo de Retorno.','2018-01-31','13:41:28'),(494,1,'arquivo494.ret',12584,'Arquivo de Retorno.','2018-01-31','13:44:37'),(495,1,'arquivo495.ret',8712,'Arquivo de Retorno.','2018-02-02','11:48:01'),(496,1,'arquivo496.ret',2904,'Arquivo de Retorno.','2018-02-02','11:48:27'),(497,1,'arquivo497.ret',2904,'Arquivo de Retorno.','2018-02-02','12:15:14'),(498,1,'arquivo498.ret',1452,'Arquivo de Retorno.','2018-02-05','11:29:12'),(499,1,'arquivo499.ret',3388,'Arquivo de Retorno.','2018-02-06','12:59:16'),(500,1,'arquivo500.ret',1452,'Arquivo de Retorno.','2018-02-16','09:38:32'),(501,1,'arquivo501.ret',5808,'Arquivo de Retorno.','2018-02-16','09:38:55'),(502,1,'arquivo502.ret',2420,'Arquivo de Retorno.','2018-02-16','09:39:41'),(503,1,'arquivo503.ret',1452,'Arquivo de Retorno.','2018-02-16','09:40:48'),(504,1,'arquivo504.ret',3872,'Arquivo de Retorno.','2018-02-16','09:41:16'),(505,49,NULL,503186,'Foto','2018-02-19','11:26:03'),(506,1,'arquivo506.ret',1452,'Arquivo de Retorno.','2018-02-19','12:09:02'),(507,1,'arquivo507.ret',3872,'Arquivo de Retorno.','2018-02-20','11:15:45'),(508,1,'arquivo508.ret',2904,'Arquivo de Retorno.','2018-02-21','09:39:53'),(509,1,'arquivo509.ret',1936,'Arquivo de Retorno.','2018-02-23','11:15:54'),(510,1,'arquivo510.ret',5324,'Arquivo de Retorno.','2018-02-23','11:16:18'),(511,1,'arquivo511.ret',2420,'Arquivo de Retorno.','2018-03-01','09:08:41'),(512,1,'arquivo512.ret',2904,'Arquivo de Retorno.','2018-03-01','09:13:03'),(513,1,'arquivo513.ret',3388,'Arquivo de Retorno.','2018-03-01','09:14:08'),(514,49,NULL,539520,'Foto','2018-03-06','08:45:15'),(515,1,'arquivo515.ret',2420,'Arquivo de Retorno.','2018-03-06','11:32:45'),(516,49,'arquivo516.jpg',46759,'Foto','2018-03-07','13:36:31'),(517,49,'arquivo517.jpg',40191,'Foto','2018-03-08','11:47:48'),(518,49,'arquivo518.jpg',72458,'Foto','2018-03-16','11:49:10'),(519,1,'arquivo519.ret',4840,'Arquivo de Retorno.','2018-03-20','12:28:42'),(520,1,'arquivo520.ret',1936,'Arquivo de Retorno.','2018-03-20','12:29:02'),(521,1,'arquivo521.ret',1936,'Arquivo de Retorno.','2018-03-21','11:09:58'),(522,49,'arquivo522.jpg',37881,'Foto','2018-03-23','10:08:32'),(523,49,NULL,521695,'Foto','2018-03-23','14:26:56'),(524,49,'arquivo524.jpg',40629,'Foto','2018-03-23','14:27:39'),(525,49,'arquivo525.jpg',41883,'Foto','2018-03-23','15:10:45'),(526,49,'arquivo526.jpg',35595,'Foto','2018-03-23','16:30:25'),(527,49,'arquivo527.jpg',40181,'Foto','2018-03-23','16:42:26'),(528,49,'arquivo528.jpg',32068,'Foto','2018-03-23','16:44:22'),(529,49,'arquivo529.jpg',24665,'Foto','2018-03-23','17:08:35'),(530,49,'arquivo530.jpg',24178,'Foto','2018-03-26','11:30:02'),(531,49,'arquivo531.jpg',25765,'Foto','2018-03-26','12:26:08'),(532,49,'arquivo532.jpg',26817,'Foto','2018-03-26','13:47:05'),(533,49,NULL,473061,'Foto','2018-03-27','08:19:23'),(534,49,'arquivo534.jpg',27488,'Foto','2018-03-27','08:20:05'),(535,49,'arquivo535.jpg',25830,'Foto','2018-03-27','08:33:19'),(536,49,'arquivo536.jpg',30565,'Foto','2018-03-27','08:43:26'),(537,49,'arquivo537.jpg',20898,'Foto','2018-03-27','15:11:56'),(538,49,'arquivo538.jpg',26346,'Foto','2018-03-27','16:45:58'),(539,49,'arquivo539.jpg',25385,'Foto','2018-04-02','13:22:10'),(540,49,'arquivo540.jpg',29070,'Foto','2018-04-02','13:41:10'),(541,49,'arquivo541.jpg',23706,'Foto','2018-04-03','12:27:36'),(542,49,'arquivo542.jpg',21215,'Foto','2018-04-03','12:37:04'),(543,49,'arquivo543.jpg',31515,'Foto','2018-04-03','13:28:59'),(544,49,'arquivo544.jpg',19948,'Foto','2018-04-03','15:10:34'),(545,49,'arquivo545.jpg',30457,'Foto','2018-04-03','15:49:11'),(546,49,'arquivo546.jpg',28788,'Foto','2018-04-03','16:46:13'),(547,49,'arquivo547.jpg',19948,'Foto','2018-04-04','10:30:30'),(548,49,'arquivo548.jpg',23608,'Foto','2018-04-04','11:02:02'),(549,49,'arquivo549.jpg',24575,'Foto','2018-04-04','13:33:23'),(550,49,'arquivo550.jpg',24039,'Foto','2018-04-05','09:48:48'),(551,49,'arquivo551.jpg',27005,'Foto','2018-04-05','10:36:56'),(552,49,'arquivo552.jpg',25134,'Foto','2018-04-05','13:44:51'),(553,49,'arquivo553.jpg',22074,'Foto','2018-04-05','13:47:18'),(554,49,'arquivo554.jpg',27653,'Foto','2018-04-05','14:05:23'),(555,49,'arquivo555.jpg',21806,'Foto','2018-04-06','09:31:05'),(556,49,'arquivo556.jpg',24961,'Foto','2018-04-06','13:26:25'),(557,1,'arquivo557.ret',198440,'Arquivo de Retorno.','2018-04-06','22:42:54'),(558,1,'arquivo558.ret',198440,'Arquivo de Retorno.','2018-04-06','22:44:28'),(559,49,'arquivo559.jpg',29762,'Foto','2018-04-09','10:02:19'),(560,49,'arquivo560.jpg',27815,'Foto','2018-04-09','11:00:01'),(561,49,'arquivo561.jpg',26846,'Foto','2018-04-09','13:03:54'),(562,49,'arquivo562.jpg',30081,'Foto','2018-04-10','09:06:59'),(563,1,'arquivo563.ret',14036,'Arquivo de Retorno.','2018-04-10','09:27:16'),(564,1,'arquivo564.ret',11132,'Arquivo de Retorno.','2018-04-10','09:27:42'),(565,49,'arquivo565.jpg',31553,'Foto','2018-04-10','10:16:01'),(566,49,'arquivo566.jpg',25704,'Foto','2018-04-10','10:31:39'),(567,49,'arquivo567.jpg',31019,'Foto','2018-04-10','11:58:35'),(568,49,'arquivo568.jpg',22016,'Foto','2018-04-10','12:36:09'),(569,49,'arquivo569.jpg',27593,'Foto','2018-04-10','13:04:13'),(570,1,'arquivo570.ret',11132,'Arquivo de Retorno.','2018-04-10','13:30:38'),(571,1,'arquivo571.ret',14036,'Arquivo de Retorno.','2018-04-10','13:31:05'),(572,49,'arquivo572.jpg',25956,'Foto','2018-04-11','08:10:26'),(573,1,'arquivo573.ret',4840,'Arquivo de Retorno.','2018-04-11','08:29:56'),(574,1,'arquivo574.ret',4356,'Arquivo de Retorno.','2018-04-11','08:31:03'),(575,1,'arquivo575.ret',2420,'Arquivo de Retorno.','2018-04-11','08:31:37'),(576,1,'arquivo576.ret',3872,'Arquivo de Retorno.','2018-04-11','08:32:18'),(577,1,'arquivo577.ret',12584,'Arquivo de Retorno.','2018-04-11','08:32:58'),(578,1,'arquivo578.ret',14036,'Arquivo de Retorno.','2018-04-11','08:34:29'),(579,1,'arquivo579.ret',11132,'Arquivo de Retorno.','2018-04-11','08:35:57'),(580,1,'arquivo580.ret',1452,'Arquivo de Retorno.','2018-04-11','08:53:56'),(581,1,'arquivo581.ret',11132,'Arquivo de Retorno.','2018-04-11','08:54:22'),(582,1,'arquivo582.ret',7744,'Arquivo de Retorno.','2018-04-11','08:55:42'),(583,1,'arquivo583.ret',13068,'Arquivo de Retorno.','2018-04-11','08:58:32'),(584,1,'arquivo584.ret',12584,'Arquivo de Retorno.','2018-04-11','09:00:13'),(585,1,'arquivo585.ret',12584,'Arquivo de Retorno.','2018-04-11','09:01:53'),(586,1,'arquivo586.ret',4356,'Arquivo de Retorno.','2018-04-11','09:03:34'),(587,1,'arquivo587.ret',3388,'Arquivo de Retorno.','2018-04-11','09:05:36'),(588,1,'arquivo588.ret',3388,'Arquivo de Retorno.','2018-04-11','09:11:27'),(589,1,'arquivo589.ret',1452,'Arquivo de Retorno.','2018-04-11','09:12:15'),(590,1,'arquivo590.ret',1452,'Arquivo de Retorno.','2018-04-11','09:19:03'),(591,1,'arquivo591.ret',2904,'Arquivo de Retorno.','2018-04-11','09:19:26'),(592,1,'arquivo592.ret',1936,'Arquivo de Retorno.','2018-04-11','09:22:05'),(593,1,'arquivo593.ret',4840,'Arquivo de Retorno.','2018-04-11','09:24:31'),(594,1,'arquivo594.ret',968,'Arquivo de Retorno.','2018-04-11','09:25:06'),(595,1,'arquivo595.ret',1936,'Arquivo de Retorno.','2018-04-11','09:25:36'),(596,1,'arquivo596.ret',1936,'Arquivo de Retorno.','2018-04-11','09:25:59'),(597,1,'arquivo597.ret',3388,'Arquivo de Retorno.','2018-04-11','09:26:23'),(598,1,'arquivo598.ret',3388,'Arquivo de Retorno.','2018-04-11','09:27:03'),(599,1,'arquivo599.ret',2904,'Arquivo de Retorno.','2018-04-11','09:27:40'),(600,1,'arquivo600.ret',968,'Arquivo de Retorno.','2018-04-11','09:29:53'),(601,1,'arquivo601.ret',2420,'Arquivo de Retorno.','2018-04-11','09:30:20'),(602,1,'arquivo602.ret',11616,'Arquivo de Retorno.','2018-04-11','12:42:06'),(603,49,'arquivo603.jpg',26144,'Foto','2018-04-11','13:04:18'),(604,1,'arquivo604.ret',7744,'Arquivo de Retorno.','2018-04-11','13:38:43'),(605,49,'arquivo605.jpg',19893,'Foto','2018-04-12','09:07:07'),(606,49,'arquivo606.jpg',26475,'Foto','2018-04-12','10:59:50'),(607,1,'arquivo607.ret',21780,'Arquivo de Retorno.','2018-04-12','11:51:59'),(608,1,'arquivo608.ret',4840,'Arquivo de Retorno.','2018-04-12','11:54:29'),(609,1,'arquivo609.ret',2420,'Arquivo de Retorno.','2018-04-12','11:55:13'),(610,49,'arquivo610.jpg',22016,'Foto','2018-04-12','12:20:39'),(611,49,'arquivo611.jpg',20466,'Foto','2018-04-12','12:21:04'),(612,49,'arquivo612.jpg',24185,'Foto','2018-04-12','13:15:54'),(613,49,'arquivo613.jpg',23383,'Foto','2018-04-12','13:34:04'),(614,49,'arquivo614.jpg',29486,'Foto','2018-04-12','14:47:11'),(615,49,NULL,523927,'Foto','2018-04-12','15:25:27'),(616,49,'arquivo616.jpg',24573,'Foto','2018-04-12','15:26:27'),(617,49,'arquivo617.jpg',23337,'Foto','2018-04-12','15:48:34'),(618,1,'arquivo618.ret',1452,'Arquivo de Retorno.','2018-04-13','09:59:59'),(619,49,'arquivo619.jpg',25986,'Foto','2018-04-13','12:17:52'),(620,49,'arquivo620.jpg',27083,'Foto','2018-04-13','19:58:09'),(621,49,'arquivo621.jpg',26614,'Foto','2018-04-13','20:11:58'),(622,49,'arquivo622.jpg',26750,'Foto','2018-04-16','08:20:56'),(623,49,'arquivo623.jpg',34686,'Foto','2018-04-16','09:16:59'),(624,49,'arquivo624.jpg',37447,'Foto','2018-04-16','13:10:20'),(625,1,'arquivo625.ret',1452,'Arquivo de Retorno.','2018-04-17','08:26:26'),(626,1,'arquivo626.ret',6292,'Arquivo de Retorno.','2018-04-17','08:26:44'),(627,49,'arquivo627.jpg',31276,'Foto','2018-04-17','09:00:51'),(628,49,'arquivo628.jpg',28064,'Foto','2018-04-17','11:19:01'),(629,49,'arquivo629.jpg',22739,'Foto','2018-04-17','12:40:48'),(630,49,'arquivo630.jpg',30031,'Foto','2018-04-17','12:43:11'),(631,49,'arquivo631.jpg',21214,'Foto','2018-04-17','13:01:17'),(632,49,'arquivo632.jpg',21038,'Foto','2018-04-17','13:27:58'),(633,49,'arquivo633.jpg',21895,'Foto','2018-04-17','13:35:41'),(634,49,'arquivo634.jpg',24941,'Foto','2018-04-17','13:36:42'),(635,49,'arquivo635.jpg',18323,'Foto','2018-04-17','13:39:28'),(636,49,'arquivo636.jpg',28304,'Foto','2018-04-17','13:43:07'),(637,49,'arquivo637.jpg',28173,'Foto','2018-04-17','13:48:29'),(638,49,'arquivo638.jpg',27946,'Foto','2018-04-17','13:50:54'),(639,49,'arquivo639.jpg',26964,'Foto','2018-04-17','13:52:53'),(640,49,'arquivo640.jpg',21359,'Foto','2018-04-17','16:04:34'),(641,49,'arquivo641.jpg',22492,'Foto','2018-04-17','16:09:44'),(642,49,'arquivo642.jpg',22217,'Foto','2018-04-17','16:18:12'),(643,49,NULL,198866,'Foto','2018-04-17','16:41:04'),(644,49,NULL,198866,'Foto','2018-04-17','16:42:20'),(645,49,'arquivo645.jpg',17604,'Foto','2018-04-17','16:45:00'),(646,49,'arquivo646.jpg',19546,'Foto','2018-04-17','17:12:51'),(647,49,'arquivo647.jpg',20145,'Foto','2018-04-17','17:26:15'),(648,49,'arquivo648.jpg',28600,'Foto','2018-04-18','10:12:45'),(649,1,'arquivo649.ret',4356,'Arquivo de Retorno.','2018-04-18','12:22:39'),(650,49,'arquivo650.jpg',20836,'Foto','2018-04-18','12:27:55'),(651,1,'arquivo651.ret',1936,'Arquivo de Retorno.','2018-04-19','10:52:33'),(652,1,'arquivo652.ret',2904,'Arquivo de Retorno.','2018-04-20','12:40:49'),(653,49,'arquivo653.jpg',17303,'Foto','2018-04-20','12:54:22'),(654,49,'arquivo654.jpg',26894,'Foto','2018-04-20','12:58:22'),(655,49,NULL,149879,'Foto','2018-04-23','09:04:15'),(656,49,'arquivo656.jpg',28066,'Foto','2018-04-23','09:05:19'),(657,1,'arquivo657.ret',4840,'Arquivo de Retorno.','2018-04-23','09:18:33'),(658,49,'arquivo658.jpg',25852,'Foto','2018-04-23','09:55:27'),(659,49,NULL,156810,'Foto','2018-04-23','10:10:59'),(660,49,'arquivo660.jpg',20801,'Foto','2018-04-23','10:11:23'),(661,49,'arquivo661.jpg',29878,'Foto','2018-04-23','10:21:37'),(662,49,'arquivo662.jpg',25577,'Foto','2018-04-24','11:39:42'),(663,49,NULL,192460,'Foto','2018-04-24','12:06:36'),(664,49,NULL,155080,'Foto','2018-04-24','12:07:03'),(665,49,'arquivo665.jpg',19419,'Foto','2018-04-24','12:11:21'),(666,49,'arquivo666.jpg',23345,'Foto','2018-04-24','12:20:35'),(667,49,NULL,160493,'Foto','2018-04-24','12:29:56'),(668,49,'arquivo668.jpg',24149,'Foto','2018-04-24','12:57:53'),(669,49,'arquivo669.jpg',27183,'Foto','2018-04-24','13:50:48'),(670,1,'arquivo670.ret',3388,'Arquivo de Retorno.','2018-04-25','08:07:33'),(671,1,'arquivo671.ret',3388,'Arquivo de Retorno.','2018-04-25','08:55:41'),(672,1,'arquivo672.ret',2904,'Arquivo de Retorno.','2018-04-25','09:49:14'),(673,1,'arquivo673.ret',3388,'Arquivo de Retorno.','2018-04-25','11:36:26'),(674,1,'arquivo674.ret',3388,'Arquivo de Retorno.','2018-04-25','11:38:40'),(675,49,'arquivo675.jpg',23460,'Foto','2018-04-25','12:08:14'),(676,49,'arquivo676.jpg',26532,'Foto','2018-04-25','12:30:19'),(677,1,'arquivo677.ret',2904,'Arquivo de Retorno.','2018-04-25','13:17:23'),(678,1,'arquivo678.ret',3388,'Arquivo de Retorno.','2018-04-25','13:17:45'),(679,1,'arquivo679.ret',1452,'Arquivo de Retorno.','2018-04-26','12:33:00'),(680,49,'arquivo680.jpg',22939,'Foto','2018-04-26','13:29:28'),(681,49,'arquivo681.jpg',26874,'Foto','2018-04-26','13:34:32'),(682,49,'arquivo682.jpg',23251,'Foto','2018-04-26','14:49:18'),(683,49,'arquivo683.jpg',23621,'Foto','2018-04-27','10:17:31'),(684,49,'arquivo684.jpg',18772,'Foto','2018-04-27','11:36:44'),(685,49,'arquivo685.jpg',21543,'Foto','2018-04-27','12:08:09'),(686,1,'arquivo686.ret',2420,'Arquivo de Retorno.','2018-04-27','12:26:12'),(687,49,'arquivo687.jpg',19363,'Foto','2018-04-27','13:33:33'),(688,49,'arquivo688.jpg',28256,'Foto','2018-04-27','14:19:24'),(689,49,'arquivo689.jpg',23621,'Foto','2018-05-03','08:26:04'),(690,49,'arquivo690.jpg',17305,'Foto','2018-05-03','08:38:46'),(691,49,'arquivo691.jpg',30589,'Foto','2018-05-03','09:26:33'),(692,49,'arquivo692.jpg',17763,'Foto','2018-05-03','11:50:38'),(693,49,'arquivo693.jpg',15438,'Foto','2018-05-03','14:03:27'),(694,1,'arquivo694.ret',1452,'Arquivo de Retorno.','2018-05-03','14:07:05'),(695,1,'arquivo695.ret',4356,'Arquivo de Retorno.','2018-05-03','14:07:33'),(696,1,'arquivo696.ret',1936,'Arquivo de Retorno.','2018-05-03','14:08:01'),(697,49,'arquivo697.jpg',25148,'Foto','2018-05-04','10:40:50'),(698,49,'arquivo698.jpg',25771,'Foto','2018-05-04','12:33:23'),(699,1,'arquivo699.ret',1936,'Arquivo de Retorno.','2018-05-07','13:58:32'),(700,1,'arquivo700.ret',1936,'Arquivo de Retorno.','2018-05-07','13:58:54'),(701,1,'arquivo701.ret',3872,'Arquivo de Retorno.','2018-05-07','13:59:17'),(702,49,'arquivo702.jpg',22313,'Foto','2018-05-08','09:14:44'),(703,49,'arquivo703.jpg',16656,'Foto','2018-05-08','09:18:03'),(704,1,'arquivo704.ret',968,'Arquivo de Retorno.','2018-05-08','10:32:57'),(705,49,'arquivo705.jpg',28062,'Foto','2018-05-08','11:20:35'),(706,49,'arquivo706.jpg',28427,'Foto','2018-05-08','11:43:05'),(707,49,'arquivo707.jpg',21406,'Foto','2018-05-08','12:32:14'),(708,49,'arquivo708.jpg',21406,'Foto','2018-05-08','12:47:43'),(709,49,'arquivo709.jpg',25347,'Foto','2018-05-08','13:06:06'),(710,49,'arquivo710.jpg',28678,'Foto','2018-05-09','08:18:29'),(711,49,'arquivo711.jpg',14626,'Foto','2018-05-09','09:49:53'),(712,1,'arquivo712.ret',2420,'Arquivo de Retorno.','2018-05-10','10:50:25'),(713,1,'arquivo713.ret',4356,'Arquivo de Retorno.','2018-05-10','10:53:54'),(714,49,'arquivo714.jpg',24835,'Foto','2018-05-10','13:18:10'),(715,49,'arquivo715.jpg',25673,'Foto','2018-05-10','13:46:28'),(716,49,'arquivo716.jpg',19981,'Foto','2018-05-11','10:54:25'),(717,49,'arquivo717.jpg',18988,'Foto','2018-05-14','10:35:04'),(718,49,'arquivo718.jpg',14974,'Foto','2018-05-14','10:50:09'),(719,49,'arquivo719.jpg',21987,'Foto','2018-05-14','11:33:01'),(720,49,'arquivo720.jpg',22368,'Foto','2018-05-14','11:56:24'),(721,49,'arquivo721.jpg',26562,'Foto','2018-05-14','12:00:26'),(722,1,'arquivo722.ret',4840,'Arquivo de Retorno.','2018-05-14','12:12:26'),(723,1,'arquivo723.ret',3388,'Arquivo de Retorno.','2018-05-14','12:13:22'),(724,49,'arquivo724.jpg',28233,'Foto','2018-05-14','12:20:16'),(725,1,'arquivo725.ret',1936,'Arquivo de Retorno.','2018-05-16','10:10:51'),(726,1,'arquivo726.ret',968,'Arquivo de Retorno.','2018-05-16','10:11:58'),(727,49,'arquivo727.jpg',36268,'Foto','2018-05-16','12:10:32'),(728,1,'arquivo728.ret',1936,'Arquivo de Retorno.','2018-05-17','09:56:17'),(729,1,'arquivo729.ret',2420,'Arquivo de Retorno.','2018-05-17','10:17:08'),(730,1,'arquivo730.ret',4356,'Arquivo de Retorno.','2018-05-17','10:17:29'),(731,1,'arquivo731.ret',4840,'Arquivo de Retorno.','2018-05-17','10:17:52'),(732,1,'arquivo732.ret',968,'Arquivo de Retorno.','2018-05-17','10:18:20'),(733,49,'arquivo733.jpg',16131,'Foto','2018-05-17','12:40:19'),(734,1,'arquivo734.ret',2904,'Arquivo de Retorno.','2018-05-18','09:02:37'),(735,49,'arquivo735.jpg',20905,'Foto','2018-05-18','09:51:23'),(736,49,'arquivo736.jpg',22784,'Foto','2018-05-18','10:41:34'),(737,49,'arquivo737.jpg',32759,'Foto','2018-05-18','11:53:34'),(738,49,'arquivo738.jpg',22798,'Foto','2018-05-18','12:54:24'),(739,1,'arquivo739.ret',2420,'Arquivo de Retorno.','2018-05-23','12:02:04'),(740,1,'arquivo740.ret',1936,'Arquivo de Retorno.','2018-05-23','12:02:36'),(741,1,'arquivo741.ret',2420,'Arquivo de Retorno.','2018-05-23','12:03:03'),(742,49,'arquivo742.jpg',26029,'Foto','2018-05-24','09:31:44'),(743,49,'arquivo743.jpg',24470,'Foto','2018-05-24','10:03:52'),(744,1,'arquivo744.ret',1936,'Arquivo de Retorno.','2018-05-24','10:44:33'),(745,49,'arquivo745.jpg',19973,'Foto','2018-05-24','10:49:07'),(746,49,'arquivo746.jpg',20424,'Foto','2018-05-24','11:24:04'),(747,49,'arquivo747.jpg',19833,'Foto','2018-05-24','11:48:07'),(748,49,'arquivo748.jpg',22107,'Foto','2018-05-24','11:51:59'),(749,49,'arquivo749.jpg',26170,'Foto','2018-05-24','12:17:25'),(750,49,'arquivo750.jpg',25153,'Foto','2018-05-24','12:26:50'),(751,49,'arquivo751.jpg',25870,'Foto','2018-05-24','12:47:46'),(752,49,'arquivo752.jpg',19716,'Foto','2018-05-28','11:06:48'),(753,49,'arquivo753.jpg',21776,'Foto','2018-05-29','10:20:40'),(754,1,'arquivo754.ret',1936,'Arquivo de Retorno.','2018-05-29','10:48:55'),(755,1,'arquivo755.ret',1452,'Arquivo de Retorno.','2018-05-29','12:41:01'),(756,1,'arquivo756.ret',1936,'Arquivo de Retorno.','2018-05-29','12:41:59'),(757,49,'arquivo757.jpg',21002,'Foto','2018-06-05','10:38:10'),(758,49,'arquivo758.jpg',17778,'Foto','2018-06-07','08:43:40'),(759,1,'arquivo759.ret',1452,'Arquivo de Retorno.','2018-06-07','09:12:26'),(760,1,'arquivo760.ret',1452,'Arquivo de Retorno.','2018-06-07','09:15:22'),(761,49,'arquivo761.jpg',23048,'Foto','2018-06-07','13:53:59'),(762,1,'arquivo762.ret',2904,'Arquivo de Retorno.','2018-06-08','09:51:21'),(763,1,'arquivo763.ret',1936,'Arquivo de Retorno.','2018-06-08','09:51:45'),(764,1,'arquivo764.ret',1936,'Arquivo de Retorno.','2018-06-08','09:52:35'),(765,1,'arquivo765.ret',1452,'Arquivo de Retorno.','2018-06-08','09:53:01'),(766,49,'arquivo766.jpg',21159,'Foto','2018-06-11','10:09:58'),(767,49,'arquivo767.jpg',19614,'Foto','2018-06-11','10:42:33'),(768,1,'arquivo768.ret',1452,'Arquivo de Retorno.','2018-06-11','11:08:13'),(769,49,'arquivo769.jpg',19650,'Foto','2018-06-11','11:33:32'),(770,49,'arquivo770.jpg',28225,'Foto','2018-06-11','11:44:27'),(771,49,'arquivo771.jpg',30130,'Foto','2018-06-11','12:07:04'),(772,49,'arquivo772.jpg',15213,'Foto','2018-06-11','12:25:54'),(773,49,'arquivo773.jpg',21797,'Foto','2018-06-11','12:44:15'),(774,1,'arquivo774.ret',1936,'Arquivo de Retorno.','2018-06-12','10:22:55'),(775,49,'arquivo775.jpg',21699,'Foto','2018-06-12','10:35:41'),(776,49,'arquivo776.jpg',15137,'Foto','2018-06-12','12:31:14'),(777,49,'arquivo777.jpg',22949,'Foto','2018-06-12','13:18:13'),(778,49,'arquivo778.jpg',18919,'Foto','2018-06-13','08:52:35'),(779,49,'arquivo779.jpg',20882,'Foto','2018-06-13','09:05:03'),(780,1,'arquivo780.ret',2904,'Arquivo de Retorno.','2018-06-13','10:06:53'),(781,1,'arquivo781.ret',968,'Arquivo de Retorno.','2018-06-14','13:42:14'),(782,1,'arquivo782.ret',968,'Arquivo de Retorno.','2018-06-20','10:06:10'),(783,1,'arquivo783.ret',1452,'Arquivo de Retorno.','2018-06-20','10:06:39'),(784,1,'arquivo784.ret',1452,'Arquivo de Retorno.','2018-06-20','10:07:10'),(785,1,'arquivo785.ret',2420,'Arquivo de Retorno.','2018-06-20','10:08:52'),(786,49,'arquivo786.jpg',23734,'Foto','2018-06-20','11:36:29'),(787,49,'arquivo787.jpg',15521,'Foto','2018-06-21','10:06:17'),(788,49,'arquivo788.jpg',20370,'Foto','2018-06-21','10:19:09'),(789,1,'arquivo789.ret',2420,'Arquivo de Retorno.','2018-07-03','11:08:44'),(790,1,'arquivo790.ret',2420,'Arquivo de Retorno.','2018-07-03','11:09:11'),(791,1,'arquivo791.ret',968,'Arquivo de Retorno.','2018-07-03','11:09:54'),(792,1,'arquivo792.ret',1452,'Arquivo de Retorno.','2018-07-03','11:10:10'),(793,1,'arquivo793.ret',968,'Arquivo de Retorno.','2018-07-04','11:07:15'),(794,49,'arquivo794.jpg',26614,'Foto','2018-07-04','12:11:42'),(795,49,'arquivo795.jpg',21310,'Foto','2018-07-04','12:59:03'),(796,49,'arquivo796.jpg',23941,'Foto','2018-07-05','08:33:11'),(797,49,'arquivo797.jpg',24582,'Foto','2018-07-05','08:59:19'),(798,1,'arquivo798.ret',2420,'Arquivo de Retorno.','2018-07-05','10:46:12'),(799,49,'arquivo799.jpg',19176,'Foto','2018-07-09','12:08:13'),(800,49,'arquivo800.jpg',29331,'Foto','2018-07-10','09:49:27'),(801,49,'arquivo801.jpg',19238,'Foto','2018-07-10','09:55:02'),(802,49,'arquivo802.jpg',21133,'Foto','2018-07-10','10:03:56'),(803,49,'arquivo803.jpg',25806,'Foto','2018-07-11','09:15:43'),(804,1,'arquivo804.ret',5324,'Arquivo de Retorno.','2018-07-11','12:49:13'),(805,1,'arquivo805.ret',1936,'Arquivo de Retorno.','2018-07-11','12:49:58'),(806,1,'arquivo806.ret',1452,'Arquivo de Retorno.','2018-07-11','12:50:45'),(807,1,'arquivo807.ret',968,'Arquivo de Retorno.','2018-07-11','12:51:09'),(808,49,'arquivo808.jpg',23685,'Foto','2018-07-12','08:42:31'),(809,49,'arquivo809.jpg',24582,'Foto','2018-07-12','09:55:15'),(810,49,'arquivo810.jpg',17150,'Foto','2018-07-12','09:55:39'),(811,49,'arquivo811.jpg',20048,'Foto','2018-07-12','10:20:21'),(812,49,'arquivo812.jpg',23213,'Foto','2018-07-12','10:27:44'),(813,49,'arquivo813.jpg',21990,'Foto','2018-07-12','10:52:50'),(814,49,'arquivo814.jpg',26482,'Foto','2018-07-12','10:54:27'),(815,49,'arquivo815.jpg',25258,'Foto','2018-07-12','11:49:34'),(816,49,'arquivo816.jpg',32598,'Foto','2018-07-12','12:18:21'),(817,49,'arquivo817.jpg',34801,'Foto','2018-07-12','13:10:53'),(818,49,'arquivo818.jpg',18811,'Foto','2018-07-13','12:04:29'),(819,49,'arquivo819.jpg',17281,'Foto','2018-07-13','12:10:56'),(820,1,'arquivo820.ret',4840,'Arquivo de Retorno.','2018-07-17','09:27:50'),(821,1,'arquivo821.ret',9680,'Arquivo de Retorno.','2018-07-17','09:28:35'),(822,1,'arquivo822.ret',3872,'Arquivo de Retorno.','2018-07-17','09:29:36'),(823,1,'arquivo823.ret',3388,'Arquivo de Retorno.','2018-07-17','09:30:16'),(824,49,'arquivo824.jpg',22014,'Foto','2018-07-17','10:05:39'),(825,49,'arquivo825.jpg',36765,'Foto','2018-07-17','10:15:23'),(826,49,NULL,168079,'Foto','2018-07-17','11:27:21'),(827,49,'arquivo827.jpg',25342,'Foto','2018-07-17','11:27:54'),(828,49,'arquivo828.jpg',14311,'Foto','2018-07-17','11:48:41'),(829,49,'arquivo829.jpg',18895,'Foto','2018-07-17','12:00:56'),(830,49,NULL,160710,'Foto','2018-07-17','12:10:59'),(831,49,'arquivo831.jpg',20273,'Foto','2018-07-17','12:11:30'),(832,49,'arquivo832.jpg',18953,'Foto','2018-07-18','10:34:09'),(833,49,'arquivo833.jpg',15007,'Foto','2018-07-18','10:45:47'),(834,49,'arquivo834.jpg',21511,'Foto','2018-07-18','11:34:52'),(835,49,'arquivo835.jpg',21888,'Foto','2018-07-18','11:45:27'),(836,1,'arquivo836.ret',1936,'Arquivo de Retorno.','2018-07-18','11:56:40'),(837,49,'arquivo837.jpg',25272,'Foto','2018-07-18','13:01:26'),(838,49,'arquivo838.jpg',26762,'Foto','2018-07-19','09:02:51'),(839,49,'arquivo839.jpg',22409,'Foto','2018-07-19','11:18:24'),(840,1,'arquivo840.ret',2904,'Arquivo de Retorno.','2018-07-19','11:27:47'),(841,49,'arquivo841.jpg',17988,'Foto','2018-07-19','11:38:38'),(842,49,'arquivo842.jpg',17988,'Foto','2018-07-19','11:40:40'),(843,49,'arquivo843.jpg',22378,'Foto','2018-07-19','11:41:32'),(844,49,'arquivo844.jpg',13251,'Foto','2018-07-19','11:49:39'),(845,49,'arquivo845.jpg',21146,'Foto','2018-07-20','09:27:21'),(846,1,'arquivo846.ret',1936,'Arquivo de Retorno.','2018-07-23','07:57:58'),(847,49,'arquivo847.jpg',18013,'Foto','2018-07-23','08:16:18'),(848,1,'arquivo848.ret',1936,'Arquivo de Retorno.','2018-07-24','08:55:54'),(849,1,'arquivo849.ret',968,'Arquivo de Retorno.','2018-07-24','10:00:26'),(850,49,'arquivo850.jpg',19992,'Foto','2018-07-24','11:38:27'),(852,1,'arquivo852.ret',968,'Arquivo de Retorno.','2018-07-27','12:58:56'),(853,1,'arquivo853.ret',1936,'Arquivo de Retorno.','2018-07-27','12:59:11'),(854,1,'arquivo854.ret',968,'Arquivo de Retorno.','2018-07-27','12:59:35'),(855,49,'arquivo855.jpg',28916,'Foto','2018-07-30','09:27:28'),(856,1,'arquivo856.ret',1452,'Arquivo de Retorno.','2018-07-30','10:11:39'),(857,49,'arquivo857.jpg',26418,'Foto','2018-07-31','11:39:08'),(858,1,'arquivo858.ret',3388,'Arquivo de Retorno.','2018-08-06','10:12:44'),(859,1,'arquivo859.ret',4356,'Arquivo de Retorno.','2018-08-06','10:13:09'),(860,1,'arquivo860.ret',4356,'Arquivo de Retorno.','2018-08-06','10:13:33'),(861,1,'arquivo861.ret',968,'Arquivo de Retorno.','2018-08-06','10:13:53'),(862,1,'arquivo862.ret',1452,'Arquivo de Retorno.','2018-08-06','10:14:08'),(863,49,'arquivo863.jpg',18163,'Foto','2018-08-06','10:48:59'),(864,1,'arquivo864.ret',1452,'Arquivo de Retorno.','2018-08-06','11:29:24'),(865,49,'arquivo865.jpg',20383,'Foto','2018-08-07','11:35:17'),(866,49,'arquivo866.jpg',15446,'Foto','2018-08-07','12:17:34'),(867,49,'arquivo867.jpg',19812,'Foto','2018-08-10','09:53:20'),(868,1,'arquivo868.ret',1452,'Arquivo de Retorno.','2018-08-10','12:22:52'),(869,1,'arquivo869.ret',2420,'Arquivo de Retorno.','2018-08-10','12:23:12'),(870,1,'arquivo870.ret',1936,'Arquivo de Retorno.','2018-08-10','12:25:17'),(871,1,'arquivo871.ret',1452,'Arquivo de Retorno.','2018-08-10','12:25:37'),(872,1,'arquivo872.ret',1452,'Arquivo de Retorno.','2018-08-13','11:33:52'),(873,1,'arquivo873.ret',968,'Arquivo de Retorno.','2018-08-14','10:07:12'),(874,49,'arquivo874.jpg',20043,'Foto','2018-08-14','12:06:18'),(875,49,'arquivo875.jpg',22999,'Foto','2018-08-15','08:57:24'),(876,1,'arquivo876.ret',968,'Arquivo de Retorno.','2018-08-15','10:47:24'),(877,49,'arquivo877.jpg',21426,'Foto','2018-08-15','13:20:23'),(878,49,'arquivo878.jpg',19946,'Foto','2018-08-16','11:20:30'),(879,49,'arquivo879.jpg',25167,'Foto','2018-08-16','13:33:12'),(880,1,'arquivo880.ret',1936,'Arquivo de Retorno.','2018-08-17','07:55:32'),(881,49,'arquivo881.jpg',31329,'Foto','2018-08-17','09:39:55'),(882,1,'arquivo882.ret',2904,'Arquivo de Retorno.','2018-08-20','10:23:22'),(883,1,'arquivo883.ret',1936,'Arquivo de Retorno.','2018-08-20','10:24:05'),(884,1,'arquivo884.ret',968,'Arquivo de Retorno.','2018-08-22','11:18:13'),(885,1,'arquivo885.ret',968,'Arquivo de Retorno.','2018-08-22','11:25:18'),(886,49,'arquivo886.jpg',21590,'Foto','2018-08-23','09:15:26'),(887,49,'arquivo887.jpg',22381,'Foto','2018-08-24','11:02:30'),(888,49,'arquivo888.jpg',20392,'Foto','2018-08-27','09:42:53'),(889,49,'arquivo889.jpg',27027,'Foto','2018-08-27','10:44:56'),(890,49,'arquivo890.jpg',22508,'Foto','2018-08-28','10:55:52'),(891,49,'arquivo891.jpg',20382,'Foto','2018-08-29','10:32:52'),(892,49,'arquivo892.jpg',20887,'Foto','2018-08-29','11:10:02'),(893,49,'arquivo893.jpg',20863,'Foto','2018-08-30','12:16:23'),(894,49,'arquivo894.jpg',18361,'Foto','2018-08-30','12:37:00'),(895,49,'arquivo895.jpg',18990,'Foto','2018-08-30','13:49:49'),(896,49,'arquivo896.jpg',28549,'Foto','2018-08-31','08:41:31'),(897,49,'arquivo897.jpg',22388,'Foto','2018-08-31','08:52:35'),(898,49,'arquivo898.jpg',22403,'Foto','2018-08-31','12:47:38'),(899,49,'arquivo899.jpg',21619,'Foto','2018-08-31','13:56:31'),(900,1,'arquivo900.ret',1452,'Arquivo de Retorno.','2018-08-31','14:06:53'),(901,1,'arquivo901.ret',3388,'Arquivo de Retorno.','2018-08-31','14:07:13'),(902,1,'arquivo902.ret',1452,'Arquivo de Retorno.','2018-08-31','14:07:51'),(903,1,'arquivo903.ret',968,'Arquivo de Retorno.','2018-08-31','14:08:13'),(904,1,'arquivo904.ret',1452,'Arquivo de Retorno.','2018-09-04','10:58:48'),(905,1,'arquivo905.ret',1936,'Arquivo de Retorno.','2018-09-04','10:59:10'),(906,49,'arquivo906.jpg',0,'Foto','2018-09-05','13:41:01'),(907,49,'arquivo907.jpg',0,'Foto','2018-09-05','13:43:15'),(908,49,'arquivo908.jpg',0,'Foto','2018-09-05','13:56:33'),(909,49,'arquivo909.jpg',0,'Foto','2018-09-05','14:01:51'),(910,49,'arquivo910.jpg',0,'Foto','2018-09-05','14:09:07'),(911,49,'arquivo911.jpg',0,'Foto','2018-09-05','14:17:45'),(912,49,'arquivo912.jpg',0,'Foto','2018-09-05','14:56:04'),(913,49,'arquivo913.jpeg',0,'Foto','2018-09-05','15:31:20'),(914,49,'arquivo914.jpeg',0,'Foto','2018-09-05','15:32:55'),(915,49,'arquivo915.jpeg',24762,'Foto','2018-09-05','15:35:01'),(916,49,'arquivo916.jpg',15630,'Foto','2018-09-05','15:40:59'),(917,49,'arquivo917.jpg',26964,'Foto','2018-09-05','15:55:53'),(918,49,'arquivo918.jpg',26596,'Foto','2018-09-05','16:37:08'),(919,49,'arquivo919.jpg',19293,'Foto','2018-09-05','16:55:40'),(920,49,'arquivo920.jpg',26656,'Foto','2018-09-05','17:05:58'),(921,1,'arquivo921.ret',1452,'Arquivo de Retorno.','2018-09-06','11:06:47'),(922,1,'arquivo922.ret',4356,'Arquivo de Retorno.','2018-09-06','11:08:48'),(923,49,'arquivo923.jpg',15772,'Foto','2018-09-10','09:31:45'),(924,49,'arquivo924.jpg',18966,'Foto','2018-09-12','12:15:42'),(925,1,'arquivo925.ret',3872,'Arquivo de Retorno.','2018-09-19','09:45:28'),(926,1,'arquivo926.ret',968,'Arquivo de Retorno.','2018-09-19','09:46:04'),(927,1,'arquivo927.ret',968,'Arquivo de Retorno.','2018-09-19','09:46:25'),(928,1,'arquivo928.ret',2904,'Arquivo de Retorno.','2018-09-19','09:46:41'),(929,49,'arquivo929.jpg',24648,'Foto','2018-09-19','10:27:51'),(930,49,'arquivo930.jpg',21761,'Foto','2018-09-21','15:23:27'),(931,49,'arquivo931.jpg',23531,'Foto','2018-09-21','15:41:34'),(932,49,'arquivo932.jpg',23598,'Foto','2018-09-21','16:08:35'),(933,49,'arquivo933.jpg',21957,'Foto','2018-09-21','16:24:18'),(934,49,'arquivo934.jpg',18236,'Foto','2018-09-21','16:49:20'),(935,49,'arquivo935.jpg',19958,'Foto','2018-09-24','13:40:37'),(936,49,'arquivo936.jpg',18230,'Foto','2018-09-25','12:25:25'),(937,1,'arquivo937.ret',2904,'Arquivo de Retorno.','2018-09-25','13:48:36'),(938,1,'arquivo938.ret',3872,'Arquivo de Retorno.','2018-09-25','13:50:22'),(939,1,'arquivo939.ret',1452,'Arquivo de Retorno.','2018-09-25','13:50:57'),(940,1,'arquivo940.ret',1936,'Arquivo de Retorno.','2018-09-25','14:02:44'),(941,49,'arquivo941.jpg',24182,'Foto','2018-09-26','15:07:21'),(942,49,'arquivo942.jpg',24929,'Foto','2018-09-26','15:21:36'),(943,49,'arquivo943.jpg',22828,'Foto','2018-09-26','15:41:49'),(944,49,'arquivo944.jpg',28121,'Foto','2018-09-26','16:00:42'),(945,49,'arquivo945.jpg',18196,'Foto','2018-09-26','16:41:02'),(946,49,'arquivo946.jpg',28038,'Foto','2018-09-27','12:16:19'),(947,1,'arquivo947.ret',3388,'Arquivo de Retorno.','2018-09-27','12:21:55'),(948,1,'arquivo948.ret',4356,'Arquivo de Retorno.','2018-09-27','12:22:50'),(949,49,'arquivo949.jpg',24833,'Foto','2018-09-27','14:29:50'),(950,49,'arquivo950.jpg',19836,'Foto','2018-09-27','15:16:10'),(951,49,'arquivo951.jpg',17528,'Foto','2018-09-27','15:47:27'),(952,49,'arquivo952.jpg',18657,'Foto','2018-09-27','16:33:16'),(953,49,'arquivo953.jpg',23661,'Foto','2018-10-01','09:11:38'),(954,49,'arquivo954.jpg',19659,'Foto','2018-10-01','09:55:45'),(955,49,'arquivo955.jpg',16073,'Foto','2018-10-01','10:34:07'),(956,49,'arquivo956.jpg',16284,'Foto','2018-10-01','12:05:43'),(957,1,'arquivo957.ret',4356,'Arquivo de Retorno.','2018-10-02','11:09:39'),(958,1,'arquivo958.ret',1452,'Arquivo de Retorno.','2018-10-02','11:10:48'),(959,1,'arquivo959.ret',4840,'Arquivo de Retorno.','2018-10-02','11:36:01'),(960,49,'arquivo960.jpg',21236,'Foto','2018-10-02','11:39:39'),(961,49,'arquivo961.jpg',19165,'Foto','2018-10-02','13:58:44'),(962,49,'arquivo962.jpg',16465,'Foto','2018-10-02','14:23:29'),(963,49,'arquivo963.jpg',19742,'Foto','2018-10-02','14:41:42'),(964,49,'arquivo964.jpg',23017,'Foto','2018-10-02','14:54:14'),(965,49,'arquivo965.jpg',24663,'Foto','2018-10-02','15:11:26'),(966,49,'arquivo966.jpg',19888,'Foto','2018-10-02','15:20:42'),(967,49,'arquivo967.jpg',15441,'Foto','2018-10-02','15:34:48'),(968,49,'arquivo968.jpg',22242,'Foto','2018-10-02','15:44:14'),(969,49,'arquivo969.jpg',21027,'Foto','2018-10-03','13:22:24'),(970,49,'arquivo970.jpg',25414,'Foto','2018-10-09','13:20:23'),(971,49,'arquivo971.jpg',25171,'Foto','2018-10-10','09:14:50'),(972,49,'arquivo972.jpg',22973,'Foto','2018-10-10','09:23:23'),(973,49,'arquivo973.jpg',27969,'Foto','2018-10-10','09:41:10'),(974,49,'arquivo974.jpg',25199,'Foto','2018-10-10','10:22:31'),(975,49,'arquivo975.jpg',17790,'Foto','2018-10-10','11:10:35'),(976,49,'arquivo976.jpg',16625,'Foto','2018-10-10','11:47:14'),(977,1,'arquivo977.ret',7260,'Arquivo de Retorno.','2018-10-11','13:13:36'),(978,1,'arquivo978.ret',5324,'Arquivo de Retorno.','2018-10-11','13:16:35'),(979,1,'arquivo979.ret',4840,'Arquivo de Retorno.','2018-10-11','13:17:23'),(980,49,'arquivo980.jpg',27238,'Foto','2018-10-15','10:55:08'),(981,1,'arquivo981.ret',7260,'Arquivo de Retorno.','2018-10-15','11:40:10'),(982,49,'arquivo982.jpg',24950,'Foto','2018-10-15','13:16:50'),(983,49,'arquivo983.jpg',18547,'Foto','2018-10-15','13:23:26'),(984,49,'arquivo984.jpg',18873,'Foto','2018-10-15','13:41:40'),(985,49,'arquivo985.jpg',26024,'Foto','2018-10-15','13:52:21'),(986,49,'arquivo986.jpg',14055,'Foto','2018-10-15','14:09:21'),(987,49,'arquivo987.jpg',29179,'Foto','2018-10-15','14:44:05'),(988,49,'arquivo988.jpg',24474,'Foto','2018-10-15','14:59:41'),(989,49,'arquivo989.jpg',27270,'Foto','2018-10-16','08:20:55'),(990,49,'arquivo990.jpg',22047,'Foto','2018-10-16','08:33:23'),(991,49,'arquivo991.jpg',17442,'Foto','2018-10-16','08:35:11'),(992,49,'arquivo992.jpg',15449,'Foto','2018-10-16','09:01:32'),(993,49,NULL,159310,'Foto','2018-10-16','09:39:46'),(994,49,'arquivo994.jpg',18348,'Foto','2018-10-16','09:40:50'),(995,49,'arquivo995.jpg',17856,'Foto','2018-10-16','09:55:39'),(996,49,'arquivo996.jpg',18996,'Foto','2018-10-16','10:27:28'),(997,49,'arquivo997.jpg',20339,'Foto','2018-10-16','10:40:34'),(998,49,'arquivo998.jpg',17016,'Foto','2018-10-16','12:40:43'),(999,49,'arquivo999.jpg',22158,'Foto','2018-10-16','13:21:17'),(1000,1,'arquivo1000.ret',3388,'Arquivo de Retorno.','2018-10-16','13:25:13'),(1001,49,'arquivo1001.jpg',22406,'Foto','2018-10-16','14:07:37'),(1002,49,'arquivo1002.jpg',19589,'Foto','2018-10-17','09:21:10'),(1003,49,'arquivo1003.jpg',20334,'Foto','2018-10-17','09:56:06'),(1004,49,'arquivo1004.jpg',17848,'Foto','2018-10-17','10:24:07'),(1005,49,'arquivo1005.jpg',19593,'Foto','2018-10-17','10:39:46'),(1006,49,'arquivo1006.jpg',17873,'Foto','2018-10-17','11:04:02'),(1007,1,'arquivo1007.ret',3388,'Arquivo de Retorno.','2018-10-17','11:06:34'),(1008,1,'arquivo1008.ret',6292,'Arquivo de Retorno.','2018-10-17','12:16:45'),(1009,49,'arquivo1009.jpg',22090,'Foto','2018-10-17','12:22:57'),(1010,49,'arquivo1010.jpg',19805,'Foto','2018-10-17','12:39:47'),(1011,49,'arquivo1011.jpg',22178,'Foto','2018-10-17','13:03:52'),(1012,49,'arquivo1012.jpg',24466,'Foto','2018-10-18','09:06:37'),(1013,1,'arquivo1013.ret',3388,'Arquivo de Retorno.','2018-10-18','12:54:35'),(1014,49,'arquivo1014.jpg',26218,'Foto','2018-10-23','08:59:51'),(1015,49,'arquivo1015.jpg',25172,'Foto','2018-10-23','09:04:42'),(1016,49,'arquivo1016.jpg',15547,'Foto','2018-10-23','09:40:24'),(1017,49,'arquivo1017.jpg',18116,'Foto','2018-10-23','10:12:45'),(1018,49,'arquivo1018.jpg',21591,'Foto','2018-10-23','10:27:15'),(1019,49,'arquivo1019.jpg',17384,'Foto','2018-10-23','10:36:07'),(1020,49,'arquivo1020.jpg',18312,'Foto','2018-10-23','10:41:11'),(1021,49,'arquivo1021.jpg',21838,'Foto','2018-10-23','10:45:12'),(1022,49,'arquivo1022.jpg',27614,'Foto','2018-10-23','10:50:28'),(1023,49,'arquivo1023.jpg',16698,'Foto','2018-10-23','10:53:56'),(1024,49,'arquivo1024.jpg',17090,'Foto','2018-10-23','11:08:19'),(1025,49,'arquivo1025.jpg',18903,'Foto','2018-10-23','11:17:09'),(1026,49,'arquivo1026.jpg',17871,'Foto','2018-10-23','11:26:33'),(1027,49,'arquivo1027.jpg',17401,'Foto','2018-10-23','11:30:05'),(1028,49,'arquivo1028.jpg',23287,'Foto','2018-10-23','11:51:33'),(1029,1,'arquivo1029.ret',10648,'Arquivo de Retorno.','2018-10-23','11:53:22'),(1030,1,'arquivo1030.ret',5808,'Arquivo de Retorno.','2018-10-23','11:55:10'),(1031,1,'arquivo1031.ret',4840,'Arquivo de Retorno.','2018-10-23','11:57:15'),(1032,1,'arquivo1032.ret',5808,'Arquivo de Retorno.','2018-10-23','11:58:21'),(1033,1,'arquivo1033.ret',10648,'Arquivo de Retorno.','2018-10-23','11:58:42'),(1034,49,'arquivo1034.jpg',22731,'Foto','2018-10-23','12:00:33'),(1035,49,'arquivo1035.jpg',18060,'Foto','2018-10-23','12:10:31'),(1036,49,'arquivo1036.jpg',24321,'Foto','2018-10-23','12:18:53'),(1037,49,'arquivo1037.jpg',21300,'Foto','2018-10-23','12:30:44'),(1038,49,'arquivo1038.jpg',23926,'Foto','2018-10-23','12:33:57'),(1039,49,'arquivo1039.jpg',23742,'Foto','2018-10-23','12:39:28'),(1040,49,'arquivo1040.jpg',20715,'Foto','2018-10-23','12:48:13'),(1041,49,'arquivo1041.jpg',24624,'Foto','2018-10-23','13:02:42'),(1042,49,'arquivo1042.jpg',16331,'Foto','2018-10-23','13:05:58'),(1043,49,'arquivo1043.jpg',24301,'Foto','2018-10-23','13:20:12'),(1044,49,'arquivo1044.jpg',22807,'Foto','2018-10-23','13:22:51'),(1045,49,'arquivo1045.jpg',20385,'Foto','2018-10-23','13:38:40'),(1046,49,'arquivo1046.jpg',27470,'Foto','2018-10-23','13:48:07'),(1047,49,'arquivo1047.jpg',21444,'Foto','2018-10-23','14:06:44'),(1048,49,'arquivo1048.jpg',20857,'Foto','2018-10-23','14:27:56'),(1049,49,'arquivo1049.jpg',21852,'Foto','2018-10-23','14:29:15'),(1050,49,'arquivo1050.jpg',21346,'Foto','2018-10-23','14:43:01'),(1051,49,'arquivo1051.jpg',19095,'Foto','2018-10-23','14:53:29'),(1052,49,'arquivo1052.jpg',24249,'Foto','2018-10-23','15:00:08'),(1053,49,'arquivo1053.jpg',15965,'Foto','2018-10-23','15:13:02'),(1054,1,'arquivo1054.ret',3872,'Arquivo de Retorno.','2018-10-24','09:38:55'),(1055,1,'arquivo1055.ret',8228,'Arquivo de Retorno.','2018-10-24','09:39:22'),(1056,1,'arquivo1056.ret',4840,'Arquivo de Retorno.','2018-10-24','09:40:43'),(1057,1,'arquivo1057.ret',5324,'Arquivo de Retorno.','2018-10-24','09:42:22'),(1058,49,'arquivo1058.jpg',23254,'Foto','2018-10-24','10:33:12'),(1059,49,'arquivo1059.jpg',19992,'Foto','2018-10-24','10:48:26'),(1060,49,'arquivo1060.jpg',21024,'Foto','2018-10-24','11:06:35'),(1061,49,'arquivo1061.jpg',27266,'Foto','2018-10-24','11:41:07'),(1062,49,'arquivo1062.jpg',20474,'Foto','2018-10-24','12:05:46'),(1063,49,'arquivo1063.jpg',22919,'Foto','2018-10-24','12:29:40'),(1064,49,'arquivo1064.jpg',15050,'Foto','2018-10-24','12:39:59'),(1065,49,'arquivo1065.jpg',22020,'Foto','2018-10-24','13:13:48'),(1066,49,'arquivo1066.jpg',28155,'Foto','2018-10-24','13:18:53'),(1067,49,NULL,453611,'Foto','2018-10-24','13:31:24'),(1068,49,'arquivo1068.jpg',21780,'Foto','2018-10-24','13:36:23'),(1069,49,'arquivo1069.jpg',16698,'Foto','2018-10-24','13:53:31'),(1070,49,'arquivo1070.jpg',24449,'Foto','2018-10-24','13:54:06'),(1071,1,'arquivo1071.ret',22264,'Arquivo de Retorno.','2018-10-24','13:55:52'),(1072,49,'arquivo1072.jpg',22431,'Foto','2018-10-24','14:25:28'),(1073,49,'arquivo1073.jpg',18047,'Foto','2018-10-24','15:12:17'),(1074,49,'arquivo1074.jpg',29974,'Foto','2018-10-24','15:32:18'),(1075,49,'arquivo1075.jpg',20329,'Foto','2018-10-24','15:42:29'),(1076,49,'arquivo1076.jpg',22669,'Foto','2018-10-24','15:47:46'),(1077,49,'arquivo1077.jpg',19899,'Foto','2018-10-25','09:25:45'),(1078,49,'arquivo1078.jpg',25258,'Foto','2018-10-25','09:33:09'),(1079,49,'arquivo1079.jpg',24425,'Foto','2018-10-25','09:34:02'),(1080,49,'arquivo1080.jpg',24436,'Foto','2018-10-25','11:00:09'),(1081,49,'arquivo1081.jpg',25104,'Foto','2018-10-25','11:07:09'),(1082,49,'arquivo1082.jpg',19617,'Foto','2018-10-25','11:17:20'),(1083,49,'arquivo1083.jpg',12957,'Foto','2018-10-25','11:42:44'),(1084,49,'arquivo1084.jpg',20652,'Foto','2018-10-25','12:00:32'),(1085,49,'arquivo1085.jpg',24747,'Foto','2018-10-25','12:19:08'),(1086,1,'arquivo1086.ret',18876,'Arquivo de Retorno.','2018-10-25','12:45:50'),(1087,49,'arquivo1087.jpg',19468,'Foto','2018-10-25','13:11:17'),(1088,49,NULL,146235,'Foto','2018-10-25','13:14:34'),(1089,49,'arquivo1089.jpg',28456,'Foto','2018-10-25','13:15:51'),(1090,49,'arquivo1090.jpg',24413,'Foto','2018-10-25','13:22:26'),(1091,49,'arquivo1091.jpg',19917,'Foto','2018-10-25','14:41:07'),(1092,49,'arquivo1092.jpg',28894,'Foto','2018-10-25','15:02:08'),(1093,49,'arquivo1093.jpg',26674,'Foto','2018-10-26','10:38:40'),(1094,49,'arquivo1094.jpg',21592,'Foto','2018-10-26','10:57:09'),(1095,49,'arquivo1095.jpg',21563,'Foto','2018-10-26','11:13:21'),(1096,49,'arquivo1096.jpg',21118,'Foto','2018-10-26','11:24:52'),(1097,49,'arquivo1097.jpg',24344,'Foto','2018-10-26','11:35:01'),(1098,49,'arquivo1098.jpg',24917,'Foto','2018-10-26','11:43:46'),(1099,49,'arquivo1099.jpg',25417,'Foto','2018-10-26','11:48:06'),(1100,49,'arquivo1100.jpg',22889,'Foto','2018-10-26','11:57:57'),(1101,49,'arquivo1101.jpg',17150,'Foto','2018-10-26','12:08:14'),(1102,49,'arquivo1102.jpg',19237,'Foto','2018-10-26','12:21:23'),(1103,49,'arquivo1103.jpg',22454,'Foto','2018-10-26','12:30:00'),(1104,49,'arquivo1104.jpg',28447,'Foto','2018-10-26','12:48:34'),(1105,49,'arquivo1105.jpg',25216,'Foto','2018-10-26','12:50:25'),(1106,49,'arquivo1106.jpg',24765,'Foto','2018-10-26','13:01:17'),(1107,1,'arquivo1107.ret',19360,'Arquivo de Retorno.','2018-10-26','13:34:09'),(1108,49,'arquivo1108.jpg',17576,'Foto','2018-10-26','14:21:27'),(1109,49,'arquivo1109.jpg',25694,'Foto','2018-10-29','10:30:21'),(1110,49,'arquivo1110.jpg',23650,'Foto','2018-10-29','10:41:42'),(1111,49,'arquivo1111.jpg',20781,'Foto','2018-10-29','10:52:44'),(1112,49,'arquivo1112.jpg',18154,'Foto','2018-10-29','10:57:20'),(1113,49,'arquivo1113.jpg',18723,'Foto','2018-10-29','11:08:27'),(1114,49,'arquivo1114.jpg',19562,'Foto','2018-10-29','11:26:10'),(1115,49,'arquivo1115.jpg',29350,'Foto','2018-10-29','11:37:33'),(1116,49,'arquivo1116.jpg',22418,'Foto','2018-10-29','11:55:08'),(1117,49,'arquivo1117.jpg',22573,'Foto','2018-10-29','12:46:28'),(1118,49,'arquivo1118.jpg',24539,'Foto','2018-10-29','13:05:52'),(1119,49,'arquivo1119.jpg',22509,'Foto','2018-10-29','13:21:25'),(1120,49,'arquivo1120.jpg',29019,'Foto','2018-10-29','13:28:59'),(1121,49,'arquivo1121.jpg',20585,'Foto','2018-10-29','13:31:13'),(1122,49,'arquivo1122.jpg',21065,'Foto','2018-10-29','14:04:50'),(1123,1,'arquivo1123.ret',15488,'Arquivo de Retorno.','2018-10-29','14:05:53'),(1124,49,'arquivo1124.jpg',24852,'Foto','2018-10-29','14:57:32'),(1125,49,'arquivo1125.jpg',29236,'Foto','2018-10-30','09:38:57'),(1126,49,'arquivo1126.jpg',27316,'Foto','2018-10-30','10:05:20'),(1127,49,'arquivo1127.jpg',20851,'Foto','2018-10-30','11:08:36'),(1128,49,'arquivo1128.jpg',24772,'Foto','2018-10-30','11:18:03'),(1129,49,'arquivo1129.jpg',22189,'Foto','2018-10-30','11:28:52'),(1130,49,'arquivo1130.jpg',19487,'Foto','2018-10-30','11:39:40'),(1131,49,'arquivo1131.jpg',24128,'Foto','2018-10-30','11:48:17'),(1132,49,'arquivo1132.jpg',22341,'Foto','2018-10-30','11:52:11'),(1133,49,'arquivo1133.jpg',19926,'Foto','2018-10-30','11:54:30'),(1134,49,'arquivo1134.jpg',21055,'Foto','2018-10-30','12:20:13'),(1135,49,'arquivo1135.jpg',21764,'Foto','2018-10-30','12:21:04'),(1136,49,'arquivo1136.jpg',23424,'Foto','2018-10-30','12:25:27'),(1137,1,'arquivo1137.ret',18876,'Arquivo de Retorno.','2018-10-30','12:27:44'),(1138,49,'arquivo1138.jpg',30080,'Foto','2018-10-30','12:43:02'),(1139,49,'arquivo1139.jpg',28928,'Foto','2018-10-30','12:44:46'),(1140,49,NULL,147071,'Foto','2018-10-30','12:56:54'),(1141,49,'arquivo1141.jpg',26908,'Foto','2018-10-30','12:57:33'),(1142,49,'arquivo1142.jpg',20738,'Foto','2018-10-30','13:47:22'),(1143,49,'arquivo1143.jpg',26095,'Foto','2018-10-30','13:49:23'),(1144,49,'arquivo1144.jpg',18330,'Foto','2018-10-30','14:17:04'),(1145,49,'arquivo1145.jpg',33592,'Foto','2018-10-30','14:48:02'),(1146,49,'arquivo1146.jpg',17744,'Foto','2018-10-30','15:13:10'),(1147,49,'arquivo1147.jpg',22066,'Foto','2018-10-31','09:59:27'),(1148,49,'arquivo1148.jpg',23493,'Foto','2018-10-31','10:22:50'),(1149,49,'arquivo1149.jpg',24581,'Foto','2018-10-31','10:32:56'),(1150,49,'arquivo1150.jpg',18008,'Foto','2018-10-31','10:46:14'),(1151,1,'arquivo1151.ret',15004,'Arquivo de Retorno.','2018-10-31','10:57:39'),(1152,49,'arquivo1152.jpg',19075,'Foto','2018-10-31','11:08:37'),(1153,49,'arquivo1153.jpg',25870,'Foto','2018-10-31','11:12:28'),(1154,49,'arquivo1154.jpg',24173,'Foto','2018-10-31','11:17:54'),(1155,49,'arquivo1155.jpg',20755,'Foto','2018-10-31','11:28:36'),(1156,49,'arquivo1156.jpg',22083,'Foto','2018-10-31','11:37:38'),(1157,49,'arquivo1157.jpg',17742,'Foto','2018-10-31','11:50:24'),(1158,49,'arquivo1158.jpg',20781,'Foto','2018-10-31','12:01:38'),(1159,49,'arquivo1159.jpg',26696,'Foto','2018-10-31','12:11:02'),(1160,49,'arquivo1160.jpg',23808,'Foto','2018-10-31','12:12:27'),(1161,49,'arquivo1161.jpg',22974,'Foto','2018-10-31','12:23:21'),(1162,49,'arquivo1162.jpg',19275,'Foto','2018-10-31','12:48:48'),(1163,49,'arquivo1163.jpg',21988,'Foto','2018-10-31','12:49:56'),(1164,49,'arquivo1164.jpg',22161,'Foto','2018-10-31','13:18:19'),(1165,49,'arquivo1165.jpg',23411,'Foto','2018-10-31','13:37:17'),(1166,49,'arquivo1166.jpg',24042,'Foto','2018-10-31','13:52:51'),(1167,49,'arquivo1167.jpg',45843,'Foto','2018-10-31','14:30:51'),(1168,49,'arquivo1168.jpg',27397,'Foto','2018-10-31','14:48:08'),(1169,49,'arquivo1169.jpg',28475,'Foto','2018-10-31','14:57:43'),(1170,49,'arquivo1170.jpg',24586,'Foto','2018-11-01','10:23:53'),(1171,49,'arquivo1171.jpg',25220,'Foto','2018-11-01','10:46:47'),(1172,49,'arquivo1172.jpg',22028,'Foto','2018-11-01','10:51:28'),(1173,49,'arquivo1173.jpg',25517,'Foto','2018-11-01','11:00:25'),(1174,49,'arquivo1174.jpg',20955,'Foto','2018-11-01','11:06:51'),(1175,49,'arquivo1175.jpg',22640,'Foto','2018-11-01','11:40:25'),(1176,49,'arquivo1176.jpg',23922,'Foto','2018-11-01','11:43:40'),(1177,49,'arquivo1177.jpg',26412,'Foto','2018-11-01','11:53:59'),(1178,49,'arquivo1178.jpg',22640,'Foto','2018-11-01','12:02:04'),(1179,49,'arquivo1179.jpg',20342,'Foto','2018-11-01','12:02:41'),(1180,49,'arquivo1180.jpg',19882,'Foto','2018-11-01','12:09:32'),(1181,49,'arquivo1181.jpg',27778,'Foto','2018-11-01','12:30:23'),(1182,49,'arquivo1182.jpg',23572,'Foto','2018-11-01','12:35:35'),(1183,49,'arquivo1183.jpg',23984,'Foto','2018-11-01','12:43:30'),(1184,49,'arquivo1184.jpg',27362,'Foto','2018-11-01','12:45:58'),(1185,49,'arquivo1185.jpg',28026,'Foto','2018-11-05','09:55:53'),(1186,49,'arquivo1186.jpg',22937,'Foto','2018-11-05','10:21:46'),(1187,49,'arquivo1187.jpg',19087,'Foto','2018-11-05','10:45:05'),(1188,49,'arquivo1188.jpg',18801,'Foto','2018-11-05','11:19:40'),(1189,49,'arquivo1189.jpg',27532,'Foto','2018-11-05','11:37:14'),(1190,1,'arquivo1190.ret',17424,'Arquivo de Retorno.','2018-11-05','11:37:42'),(1191,1,'arquivo1191.ret',11616,'Arquivo de Retorno.','2018-11-05','11:39:17'),(1192,49,'arquivo1192.jpg',21105,'Foto','2018-11-05','12:04:31'),(1193,49,'arquivo1193.jpg',21877,'Foto','2018-11-05','12:08:14'),(1194,49,'arquivo1194.jpg',30713,'Foto','2018-11-06','10:13:33'),(1195,49,'arquivo1195.jpg',25516,'Foto','2018-11-06','11:08:13'),(1196,49,'arquivo1196.jpg',20282,'Foto','2018-11-06','11:22:04'),(1197,49,'arquivo1197.jpg',33558,'Foto','2018-11-06','11:33:53'),(1198,49,'arquivo1198.jpg',20771,'Foto','2018-11-06','11:52:20'),(1199,49,'arquivo1199.jpg',20812,'Foto','2018-11-06','11:53:59'),(1200,49,'arquivo1200.jpg',29385,'Foto','2018-11-06','12:06:32'),(1201,49,'arquivo1201.jpg',20602,'Foto','2018-11-06','12:21:23'),(1202,49,'arquivo1202.jpg',26878,'Foto','2018-11-06','12:48:32'),(1203,49,'arquivo1203.jpg',24305,'Foto','2018-11-06','13:08:33'),(1204,49,'arquivo1204.jpg',28239,'Foto','2018-11-06','13:19:36'),(1205,1,'arquivo1205.ret',7260,'Arquivo de Retorno.','2018-11-07','11:00:52'),(1206,1,'arquivo1206.ret',1936,'Arquivo de Retorno.','2018-11-07','11:01:43'),(1207,1,'arquivo1207.ret',5324,'Arquivo de Retorno.','2018-11-08','12:39:01'),(1208,49,'arquivo1208.jpg',23598,'Foto','2018-11-08','13:17:50'),(1209,49,'arquivo1209.jpg',34031,'Foto','2018-11-08','13:20:39'),(1210,49,'arquivo1210.jpg',28335,'Foto','2018-11-09','10:54:48'),(1211,49,'arquivo1211.jpg',25826,'Foto','2018-11-09','11:13:45'),(1212,49,'arquivo1212.jpg',23478,'Foto','2018-11-09','11:25:58'),(1213,49,'arquivo1213.jpg',26307,'Foto','2018-11-09','11:38:47'),(1214,49,'arquivo1214.jpg',23111,'Foto','2018-11-09','13:47:25'),(1215,49,'arquivo1215.jpg',23902,'Foto','2018-11-12','09:13:09'),(1216,49,'arquivo1216.jpg',21158,'Foto','2018-11-12','09:32:08'),(1217,49,'arquivo1217.jpg',26492,'Foto','2018-11-12','09:52:52'),(1218,49,'arquivo1218.jpg',24026,'Foto','2018-11-12','10:21:14'),(1219,1,'arquivo1219.ret',12100,'Arquivo de Retorno.','2018-11-12','13:25:23'),(1220,1,'arquivo1220.ret',12100,'Arquivo de Retorno.','2018-11-12','13:26:09'),(1221,1,'arquivo1221.ret',2420,'Arquivo de Retorno.','2018-11-12','13:27:06'),(1222,49,'arquivo1222.jpg',19290,'Foto','2018-11-13','12:45:38'),(1223,49,'arquivo1223.jpg',19994,'Foto','2018-11-13','12:58:17'),(1224,49,'arquivo1224.jpg',24181,'Foto','2018-11-13','13:31:00'),(1225,49,'arquivo1225.jpg',15640,'Foto','2018-11-13','14:03:18'),(1226,49,'arquivo1226.jpg',17061,'Foto','2018-11-13','14:29:01'),(1227,49,'arquivo1227.jpg',28913,'Foto','2018-11-13','14:41:16'),(1228,49,'arquivo1228.jpg',26035,'Foto','2018-11-13','15:00:03'),(1229,49,'arquivo1229.jpg',18512,'Foto','2018-11-13','15:11:22'),(1230,49,'arquivo1230.jpg',20378,'Foto','2018-11-14','11:36:13'),(1231,49,'arquivo1231.jpg',25803,'Foto','2018-11-14','12:47:47'),(1232,49,'arquivo1232.jpg',26057,'Foto','2018-11-14','12:52:54'),(1233,49,'arquivo1233.jpg',26963,'Foto','2018-11-14','14:49:28'),(1234,49,'arquivo1234.jpg',26657,'Foto','2018-11-21','09:26:21'),(1235,49,'arquivo1235.jpg',24980,'Foto','2018-11-21','10:01:32'),(1236,49,'arquivo1236.jpg',25140,'Foto','2018-11-21','11:15:05'),(1237,49,'arquivo1237.jpg',15533,'Foto','2018-11-21','11:39:00'),(1238,49,'arquivo1238.jpg',26889,'Foto','2018-11-21','12:50:25'),(1239,49,'arquivo1239.jpg',15546,'Foto','2018-11-21','14:15:35'),(1240,49,'arquivo1240.jpg',22766,'Foto','2018-11-21','14:38:59'),(1241,49,'arquivo1241.jpg',23458,'Foto','2018-11-21','15:07:39'),(1242,49,'arquivo1242.jpg',25871,'Foto','2018-11-23','11:05:11'),(1243,49,'arquivo1243.jpg',29985,'Foto','2018-11-23','11:19:17'),(1244,49,'arquivo1244.jpg',20765,'Foto','2018-11-23','11:33:31'),(1245,49,'arquivo1245.jpg',30285,'Foto','2018-11-23','13:04:50'),(1246,49,'arquivo1246.jpg',38794,'Foto','2018-11-23','13:23:41'),(1247,49,'arquivo1247.jpg',23134,'Foto','2018-11-23','14:09:44'),(1248,49,'arquivo1248.jpg',28412,'Foto','2018-11-23','15:10:19'),(1249,49,'arquivo1249.jpg',16541,'Foto','2018-11-26','15:25:21'),(1250,49,'arquivo1250.jpg',25953,'Foto','2018-11-26','15:57:26'),(1251,49,'arquivo1251.jpg',21586,'Foto','2018-11-26','16:16:29'),(1252,49,'arquivo1252.jpg',17084,'Foto','2018-11-26','16:34:11'),(1253,49,'arquivo1253.jpg',21261,'Foto','2018-11-26','16:43:33'),(1254,49,'arquivo1254.jpg',15877,'Foto','2018-11-26','16:55:10'),(1255,49,'arquivo1255.jpg',23779,'Foto','2018-11-26','17:09:49'),(1256,49,'arquivo1256.jpg',21602,'Foto','2018-11-27','09:54:18'),(1257,49,'arquivo1257.jpg',21630,'Foto','2018-11-27','10:09:00'),(1258,49,'arquivo1258.jpg',21621,'Foto','2018-11-27','10:35:59'),(1259,49,'arquivo1259.jpg',19712,'Foto','2018-11-27','11:00:01'),(1260,49,'arquivo1260.jpg',24199,'Foto','2018-11-27','11:13:42'),(1261,49,'arquivo1261.jpg',34881,'Foto','2018-11-28','09:23:36'),(1262,49,'arquivo1262.jpg',23718,'Foto','2018-11-28','11:04:04'),(1263,49,'arquivo1263.jpg',23640,'Foto','2018-11-28','11:26:06'),(1264,49,'arquivo1264.jpg',19310,'Foto','2018-11-28','15:43:02'),(1265,49,'arquivo1265.jpg',23395,'Foto','2018-11-28','16:13:51'),(1266,49,'arquivo1266.jpg',21592,'Foto','2018-11-28','16:32:38'),(1267,49,'arquivo1267.jpg',22118,'Foto','2018-11-28','16:38:57'),(1268,49,'arquivo1268.jpg',42581,'Foto','2018-11-28','16:59:16'),(1269,49,'arquivo1269.jpg',23411,'Foto','2018-11-28','17:32:03'),(1270,49,'arquivo1270.jpg',25659,'Foto','2018-11-29','11:25:47'),(1271,49,'arquivo1271.jpg',21638,'Foto','2018-11-29','11:46:30'),(1272,49,'arquivo1272.jpg',26121,'Foto','2018-11-29','12:46:45'),(1273,49,'arquivo1273.jpg',19464,'Foto','2018-11-29','13:27:57'),(1274,49,'arquivo1274.jpg',23334,'Foto','2018-11-29','13:35:43'),(1275,49,'arquivo1275.jpg',26345,'Foto','2018-11-29','15:04:10'),(1276,49,'arquivo1276.jpg',23120,'Foto','2018-11-30','11:09:48'),(1277,49,'arquivo1277.jpg',21068,'Foto','2018-11-30','15:52:26'),(1278,49,'arquivo1278.jpg',28255,'Foto','2018-11-30','16:36:47'),(1279,49,'arquivo1279.jpg',16988,'Foto','2018-11-30','16:53:09'),(1280,49,'arquivo1280.jpg',26685,'Foto','2018-11-30','17:07:20'),(1281,49,'arquivo1281.jpg',20026,'Foto','2018-11-30','17:32:51'),(1282,49,'arquivo1282.jpg',20446,'Foto','2018-11-30','17:59:31'),(1283,49,'arquivo1283.jpg',18990,'Foto','2018-11-30','18:23:06'),(1284,49,'arquivo1284.jpg',26696,'Foto','2018-11-30','18:32:38'),(1285,49,'arquivo1285.jpg',23158,'Foto','2018-11-30','18:47:24'),(1286,49,'arquivo1286.jpg',15976,'Foto','2018-11-30','18:51:13'),(1287,49,'arquivo1287.jpg',22298,'Foto','2018-11-30','18:55:53'),(1288,49,'arquivo1288.jpg',17839,'Foto','2018-11-30','18:59:00'),(1289,49,'arquivo1289.jpg',22059,'Foto','2018-11-30','19:05:26'),(1290,49,'arquivo1290.jpg',29618,'Foto','2018-12-04','10:46:18'),(1291,49,'arquivo1291.jpg',25060,'Foto','2018-12-04','11:04:10'),(1292,49,'arquivo1292.jpg',17545,'Foto','2018-12-04','11:33:55'),(1293,49,'arquivo1293.jpg',21202,'Foto','2018-12-04','13:43:51'),(1294,49,'arquivo1294.jpg',24814,'Foto','2018-12-04','14:14:06'),(1295,49,'arquivo1295.jpg',24605,'Foto','2018-12-05','12:44:43'),(1296,49,NULL,146053,'Foto','2018-12-06','11:56:52'),(1297,49,'arquivo1297.jpg',21469,'Foto','2018-12-06','11:57:25'),(1298,49,'arquivo1298.jpg',40363,'Foto','2018-12-06','13:18:59'),(1299,49,'arquivo1299.jpg',25573,'Foto','2018-12-06','14:11:55'),(1300,49,'arquivo1300.jpg',30995,'Foto','2018-12-06','14:48:20'),(1301,49,'arquivo1301.jpg',27351,'Foto','2018-12-06','14:56:06'),(1302,49,'arquivo1302.jpg',19545,'Foto','2018-12-06','15:14:46'),(1303,49,'arquivo1303.jpg',20312,'Foto','2018-12-06','15:24:17'),(1304,49,'arquivo1304.jpg',23915,'Foto','2018-12-06','15:36:03'),(1305,49,'arquivo1305.jpg',30886,'Foto','2018-12-06','15:45:27'),(1306,49,'arquivo1306.jpg',27243,'Foto','2018-12-06','16:00:12'),(1307,49,'arquivo1307.jpg',28054,'Foto','2018-12-07','12:10:24'),(1308,49,'arquivo1308.jpg',27933,'Foto','2018-12-07','13:42:09'),(1309,1,'arquivo1309.ret',1936,'Arquivo de Retorno.','2018-12-10','09:04:37'),(1310,1,'arquivo1310.ret',3388,'Arquivo de Retorno.','2018-12-10','09:04:51'),(1311,1,'arquivo1311.ret',5324,'Arquivo de Retorno.','2018-12-10','09:05:24'),(1312,1,'arquivo1312.ret',2420,'Arquivo de Retorno.','2018-12-10','09:06:17'),(1313,49,'arquivo1313.jpg',25637,'Foto','2018-12-10','12:13:36'),(1314,49,'arquivo1314.jpg',25466,'Foto','2018-12-11','10:44:43'),(1315,49,'arquivo1315.jpg',25373,'Foto','2018-12-11','11:06:32'),(1316,49,'arquivo1316.jpg',19942,'Foto','2018-12-11','11:09:09'),(1317,49,'arquivo1317.jpg',21965,'Foto','2018-12-11','11:46:25'),(1318,49,'arquivo1318.jpg',26464,'Foto','2018-12-11','11:52:48'),(1319,49,NULL,147376,'Foto','2018-12-11','11:53:18'),(1320,49,'arquivo1320.jpg',20609,'Foto','2018-12-11','11:53:42'),(1321,49,'arquivo1321.jpg',18317,'Foto','2018-12-11','12:46:15'),(1322,49,'arquivo1322.jpg',24272,'Foto','2018-12-11','13:34:24'),(1323,49,'arquivo1323.jpg',18926,'Foto','2018-12-11','14:05:36'),(1324,49,'arquivo1324.jpg',20035,'Foto','2018-12-11','14:31:31'),(1325,49,'arquivo1325.jpg',28083,'Foto','2018-12-12','10:05:55'),(1326,49,'arquivo1326.jpg',23522,'Foto','2018-12-12','10:30:49'),(1327,49,'arquivo1327.jpg',18103,'Foto','2018-12-12','11:12:05'),(1328,49,'arquivo1328.jpg',18305,'Foto','2018-12-12','11:47:08'),(1329,49,'arquivo1329.jpg',20833,'Foto','2018-12-12','12:07:24'),(1330,49,'arquivo1330.jpg',18400,'Foto','2018-12-12','12:28:17'),(1331,49,'arquivo1331.jpg',28105,'Foto','2018-12-12','12:33:54'),(1332,49,'arquivo1332.jpg',25584,'Foto','2018-12-12','12:53:54'),(1333,49,'arquivo1333.jpg',29525,'Foto','2018-12-12','13:18:09'),(1334,49,'arquivo1334.jpg',18559,'Foto','2018-12-12','13:19:44'),(1335,49,'arquivo1335.jpg',27124,'Foto','2018-12-12','14:31:25'),(1336,49,'arquivo1336.jpg',27086,'Foto','2018-12-12','15:10:12'),(1337,49,'arquivo1337.jpg',29711,'Foto','2018-12-13','10:09:21'),(1338,49,'arquivo1338.jpg',33449,'Foto','2018-12-13','10:35:43'),(1339,49,'arquivo1339.jpg',23185,'Foto','2018-12-13','11:09:05'),(1340,49,'arquivo1340.jpg',19653,'Foto','2018-12-13','11:32:43'),(1341,49,'arquivo1341.jpg',24873,'Foto','2018-12-13','12:07:49'),(1342,49,'arquivo1342.jpg',30261,'Foto','2018-12-13','12:57:57'),(1343,49,'arquivo1343.jpg',29094,'Foto','2018-12-13','14:04:28'),(1344,1,'arquivo1344.ret',3388,'Arquivo de Retorno.','2018-12-13','14:05:49'),(1345,1,'arquivo1345.ret',4840,'Arquivo de Retorno.','2018-12-13','14:06:18'),(1346,1,'arquivo1346.ret',4356,'Arquivo de Retorno.','2018-12-13','14:06:59'),(1347,49,'arquivo1347.jpg',24936,'Foto','2018-12-14','09:30:04'),(1348,49,'arquivo1348.jpg',22313,'Foto','2018-12-14','09:59:41'),(1349,49,'arquivo1349.jpg',24859,'Foto','2018-12-14','10:22:13'),(1350,49,'arquivo1350.jpg',19404,'Foto','2018-12-14','12:45:32'),(1351,49,'arquivo1351.jpg',20056,'Foto','2018-12-14','12:54:32'),(1352,49,'arquivo1352.jpg',17981,'Foto','2018-12-14','13:12:06'),(1353,49,'arquivo1353.jpg',23663,'Foto','2018-12-18','12:39:22'),(1354,49,'arquivo1354.jpg',25145,'Foto','2018-12-18','12:53:43'),(1355,49,'arquivo1355.jpg',34926,'Foto','2018-12-18','13:17:31'),(1356,49,'arquivo1356.jpg',27154,'Foto','2018-12-18','14:27:52'),(1357,49,'arquivo1357.jpg',33572,'Foto','2018-12-18','14:47:02'),(1358,49,'arquivo1358.jpg',31608,'Foto','2018-12-19','10:16:42'),(1359,49,'arquivo1359.jpg',32027,'Foto','2018-12-19','10:28:05'),(1360,49,'arquivo1360.jpg',38369,'Foto','2018-12-19','10:42:39'),(1361,49,'arquivo1361.jpg',29958,'Foto','2018-12-19','12:51:50'),(1362,1,'arquivo1362.ret',2420,'Arquivo de Retorno.','2018-12-19','13:28:44'),(1363,1,'arquivo1363.ret',1452,'Arquivo de Retorno.','2018-12-19','13:29:03'),(1364,1,'arquivo1364.ret',1452,'Arquivo de Retorno.','2018-12-19','13:29:20'),(1365,1,'arquivo1365.ret',2904,'Arquivo de Retorno.','2018-12-19','13:29:36'),(1366,49,'arquivo1366.jpg',24306,'Foto','2018-12-19','13:33:37'),(1367,49,'arquivo1367.jpg',17958,'Foto','2018-12-19','13:47:31'),(1368,49,'arquivo1368.jpg',18855,'Foto','2018-12-19','14:18:16'),(1369,49,'arquivo1369.jpg',22702,'Foto','2018-12-19','14:28:05'),(1370,49,'arquivo1370.jpg',24094,'Foto','2018-12-20','09:58:34'),(1371,49,'arquivo1371.jpg',23436,'Foto','2018-12-20','12:47:45'),(1372,49,'arquivo1372.jpg',23757,'Foto','2018-12-20','14:27:22'),(1373,49,'arquivo1373.jpg',30601,'Foto','2018-12-20','14:42:56'),(1374,49,'arquivo1374.jpg',29635,'Foto','2018-12-20','14:46:42'),(1375,49,'arquivo1375.jpg',24902,'Foto','2018-12-27','13:35:49'),(1376,49,'arquivo1376.jpg',27866,'Foto','2018-12-27','13:41:55'),(1377,49,'arquivo1377.jpg',32027,'Foto','2018-12-27','14:19:53'),(1378,49,'arquivo1378.jpg',25728,'Foto','2018-12-28','09:33:44'),(1379,49,'arquivo1379.jpg',34877,'Foto','2018-12-28','12:11:31'),(1380,1,'arquivo1380.ret',3388,'Arquivo de Retorno.','2018-12-28','13:01:59'),(1381,1,'arquivo1381.ret',968,'Arquivo de Retorno.','2018-12-28','13:02:19'),(1382,1,'arquivo1382.ret',1452,'Arquivo de Retorno.','2018-12-28','13:02:34'),(1383,49,'arquivo1383.jpg',35350,'Foto','2018-12-28','15:39:48'),(1384,49,'arquivo1384.jpg',28688,'Foto','2019-01-07','11:23:13'),(1385,49,'arquivo1385.jpg',21072,'Foto','2019-01-07','11:59:39'),(1386,1,'arquivo1386.ret',1936,'Arquivo de Retorno.','2019-01-07','13:11:33'),(1387,1,'arquivo1387.ret',3388,'Arquivo de Retorno.','2019-01-07','13:11:48'),(1388,1,'arquivo1388.ret',968,'Arquivo de Retorno.','2019-01-07','13:12:19'),(1389,49,'arquivo1389.jpg',21833,'Foto','2019-01-08','11:24:53'),(1390,49,'arquivo1390.jpg',22923,'Foto','2019-01-08','11:36:30'),(1391,49,'arquivo1391.jpg',25808,'Foto','2019-01-08','13:13:14'),(1392,49,'arquivo1392.jpg',22270,'Foto','2019-01-08','13:22:05'),(1393,49,'arquivo1393.jpg',26125,'Foto','2019-01-09','13:39:36'),(1394,1,'arquivo1394.ret',2904,'Arquivo de Retorno.','2019-01-10','12:28:41'),(1395,1,'arquivo1395.ret',4840,'Arquivo de Retorno.','2019-01-10','12:29:01'),(1396,1,'arquivo1396.ret',1936,'Arquivo de Retorno.','2019-01-10','12:29:54'),(1397,49,'arquivo1397.jpg',19716,'Foto','2019-01-11','10:38:34'),(1398,49,'arquivo1398.jpg',18942,'Foto','2019-01-11','11:21:50'),(1399,49,'arquivo1399.jpg',18720,'Foto','2019-01-11','12:14:35'),(1400,49,'arquivo1400.jpg',28773,'Foto','2019-01-14','14:29:10'),(1401,49,'arquivo1401.jpg',24794,'Foto','2019-01-15','11:35:30'),(1402,49,NULL,150099,'Foto','2019-01-16','09:50:38'),(1403,49,'arquivo1403.jpg',20323,'Foto','2019-01-16','09:50:52'),(1404,1,'arquivo1404.ret',1452,'Arquivo de Retorno.','2019-01-16','10:08:40'),(1405,1,'arquivo1405.ret',3388,'Arquivo de Retorno.','2019-01-16','10:08:55'),(1406,1,'arquivo1406.ret',2904,'Arquivo de Retorno.','2019-01-16','10:13:05'),(1407,1,'arquivo1407.ret',2904,'Arquivo de Retorno.','2019-01-16','13:34:42'),(1408,49,'arquivo1408.jpg',18504,'Foto','2019-01-21','10:21:43'),(1409,1,'arquivo1409.ret',2420,'Arquivo de Retorno.','2019-01-21','13:16:26'),(1410,1,'arquivo1410.ret',968,'Arquivo de Retorno.','2019-01-21','13:17:04'),(1411,1,'arquivo1411.ret',1936,'Arquivo de Retorno.','2019-01-21','13:19:33'),(1412,49,'arquivo1412.jpg',36507,'Foto','2019-01-22','10:18:59'),(1413,49,NULL,149282,'Foto','2019-01-23','12:02:45'),(1414,49,'arquivo1414.jpg',16956,'Foto','2019-01-23','12:03:00'),(1415,33,NULL,NULL,NULL,'2019-01-23','13:29:45'),(1416,49,'arquivo1416.jpg',19630,'Foto','2019-01-24','10:53:54'),(1417,49,'arquivo1417.jpg',23376,'Foto','2019-01-24','11:20:35'),(1418,49,'arquivo1418.jpg',28637,'Foto','2019-01-25','09:34:02'),(1419,49,'arquivo1419.jpg',42480,'Foto','2019-01-25','14:29:53'),(1420,1,'arquivo1420.ret',4356,'Arquivo de Retorno.','2019-01-25','14:41:59'),(1421,1,'arquivo1421.ret',1936,'Arquivo de Retorno.','2019-01-25','14:42:21'),(1422,1,'arquivo1422.ret',2420,'Arquivo de Retorno.','2019-01-25','14:42:39'),(1423,1,'arquivo1423.ret',2420,'Arquivo de Retorno.','2019-01-25','14:44:04'),(1424,49,'arquivo1424.jpg',29766,'Foto','2019-01-28','14:40:22'),(1425,49,'arquivo1425.jpg',25045,'Foto','2019-01-29','09:45:17'),(1426,49,'arquivo1426.jpg',19221,'Foto','2019-01-29','10:19:06'),(1427,49,'arquivo1427.jpg',21287,'Foto','2019-01-29','14:24:45'),(1428,1,'arquivo1428.ret',3388,'Arquivo de Retorno.','2019-01-31','13:53:14'),(1429,1,'arquivo1429.ret',968,'Arquivo de Retorno.','2019-01-31','13:53:42'),(1430,1,'arquivo1430.ret',968,'Arquivo de Retorno.','2019-01-31','13:57:35'),(1431,1,'arquivo1431.ret',2420,'Arquivo de Retorno.','2019-01-31','13:58:05'),(1432,1,'arquivo1432.ret',2904,'Arquivo de Retorno.','2019-01-31','13:58:38'),(1433,1,'arquivo1433.ret',3388,'Arquivo de Retorno.','2019-01-31','13:59:02'),(1434,1,'arquivo1434.ret',968,'Arquivo de Retorno.','2019-01-31','13:59:44'),(1435,1,'arquivo1435.ret',968,'Arquivo de Retorno.','2019-01-31','14:00:00'),(1436,1,'arquivo1436.ret',968,'Arquivo de Retorno.','2019-01-31','14:00:25'),(1437,1,'arquivo1437.ret',968,'Arquivo de Retorno.','2019-01-31','14:01:11');
/*!40000 ALTER TABLE `arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivo_ref`
--

DROP TABLE IF EXISTS `arquivo_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivo_ref` (
  `id_arquivo_ref` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(1) DEFAULT NULL COMMENT 'I-INFORMAÇÃO\nG-GALERIA\nF-FUNCIONÁRIO\nM-MENU',
  `chave` int(11) DEFAULT NULL,
  `id_arquivo` int(11) NOT NULL,
  PRIMARY KEY (`id_arquivo_ref`),
  KEY `fk_arquivo_ref_arquivo1_idx` (`id_arquivo`),
  CONSTRAINT `fk_arquivo_ref_arquivo1` FOREIGN KEY (`id_arquivo`) REFERENCES `arquivo` (`id_arquivo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivo_ref`
--

LOCK TABLES `arquivo_ref` WRITE;
/*!40000 ALTER TABLE `arquivo_ref` DISABLE KEYS */;
INSERT INTO `arquivo_ref` VALUES (2,'R',2,64),(5,'R',5,67),(7,'R',7,69),(8,'R',8,70),(9,'R',9,71),(18,'R',18,80),(20,'R',20,82),(21,'R',21,83),(22,'R',22,84),(23,'R',23,85),(24,'R',24,86),(25,'R',25,87),(26,'R',26,88),(27,'R',27,89),(28,'R',28,90),(29,'R',29,91),(30,'R',30,92),(32,'R',32,94),(33,'R',33,95),(34,'R',34,96),(38,'R',38,100),(39,'R',39,101),(40,'R',40,102),(41,'R',41,103),(42,'R',42,104),(43,'R',43,105),(44,'R',44,106),(45,'R',45,107),(46,'R',46,108),(47,'R',47,109),(48,'R',48,110),(49,'R',49,111),(50,'R',50,112),(51,'R',51,113),(52,'R',52,114),(53,'R',53,115),(54,'R',54,116),(55,'R',55,123),(56,'R',56,124),(57,'R',57,125),(58,'R',58,126),(59,'R',59,127),(60,'R',60,128),(61,'R',61,129),(62,'R',62,130),(63,'R',63,131),(64,'R',64,132),(66,'R',66,134),(68,'R',68,136),(69,'R',69,137),(70,'R',70,138),(71,'R',71,139),(72,'R',72,140),(73,'R',73,141),(74,'R',74,142),(79,'R',80,214),(80,'R',81,215),(81,'R',82,216),(82,'R',83,217),(83,'R',84,218),(84,'R',85,219),(85,'R',86,220),(86,'R',87,221),(87,'R',88,222),(88,'R',90,223),(89,'R',91,224),(90,'R',92,225),(91,'R',98,226),(92,'R',99,227),(93,'R',100,228),(94,'R',101,229),(95,'R',102,230),(96,'R',105,231),(97,'R',107,232),(98,'R',108,233),(99,'R',110,234),(100,'R',111,235),(101,'R',112,236),(102,'R',113,237),(103,'R',116,238),(104,'R',118,239),(105,'R',119,240),(106,'R',120,241),(107,'R',128,242),(108,'R',129,243),(109,'R',131,244),(110,'R',132,245),(111,'R',133,246),(112,'R',134,247),(113,'R',135,248),(114,'R',136,249),(115,'R',140,250),(116,'R',142,251),(117,'R',143,252),(118,'R',144,253),(119,'R',146,254),(120,'R',147,255),(121,'R',148,256),(122,'R',151,257),(123,'R',152,258),(124,'R',153,259),(125,'R',154,260),(126,'R',155,261),(127,'R',156,262),(128,'R',157,263),(129,'R',159,264),(130,'R',160,265),(131,'R',161,266),(132,'R',165,267),(133,'R',166,268),(134,'R',167,269),(135,'R',175,270),(136,'R',176,271),(137,'R',177,272),(138,'R',179,273),(139,'R',180,274),(140,'R',181,275),(141,'R',182,276),(142,'R',186,277),(143,'R',191,278),(144,'R',192,279),(145,'R',197,280),(146,'R',200,281),(147,'R',204,282),(148,'R',205,283),(149,'R',206,284),(150,'R',207,285),(151,'R',208,286),(152,'R',209,287),(153,'R',210,288),(154,'R',211,289),(155,'R',213,290),(156,'R',216,291),(157,'R',217,292),(158,'R',218,293),(159,'R',219,294),(160,'R',220,295),(161,'R',222,296),(162,'R',224,297),(163,'R',225,298),(164,'R',227,299),(165,'R',228,300),(166,'R',229,301),(167,'R',233,302),(168,'R',234,303),(169,'R',235,304),(170,'R',236,305),(171,'R',237,306),(172,'R',238,307),(173,'R',239,308),(174,'R',241,309),(175,'R',242,310),(176,'R',244,311),(177,'R',246,312),(178,'R',247,313),(179,'R',248,314),(180,'R',249,315),(181,'R',252,316),(182,'R',254,317),(183,'R',255,318),(184,'R',256,319),(185,'R',257,320),(186,'R',258,321),(187,'R',259,322),(188,'R',260,323),(189,'R',261,324),(190,'R',262,325),(191,'R',263,326),(192,'R',264,327),(193,'R',265,328),(194,'R',266,329),(195,'R',267,330),(196,'R',268,331),(197,'R',269,332),(198,'R',270,333),(199,'R',271,334),(200,'R',272,335),(201,'R',273,336),(202,'R',274,337),(203,'R',275,338),(204,'R',281,339),(205,'R',289,340),(206,'R',291,341),(207,'R',302,342),(208,'R',313,343),(209,'R',323,344),(210,'R',343,345),(211,'R',353,346),(212,'R',359,347),(213,'R',370,348),(214,'R',378,349),(215,'R',389,350),(216,'R',397,351),(217,'R',405,352),(218,'R',406,353),(219,'R',418,354),(220,'R',432,355),(221,'R',433,356),(222,'R',434,357),(223,'R',445,358),(224,'R',454,359),(225,'R',468,360),(226,'R',475,361),(227,'R',477,362),(228,'R',478,363),(229,'R',479,364),(230,'R',480,365),(231,'R',481,366),(232,'R',483,367),(233,'R',484,368),(234,'R',485,369),(235,'R',486,370),(236,'R',488,371),(237,'R',491,372),(238,'R',492,373),(239,'R',493,374),(240,'R',497,375),(241,'R',498,376),(242,'R',499,377),(243,'R',500,378),(244,'R',501,379),(245,'R',505,380),(246,'R',506,381),(247,'R',507,382),(248,'R',508,383),(249,'R',509,384),(250,'R',510,385),(251,'R',511,386),(252,'R',512,387),(253,'R',513,388),(254,'R',515,389),(255,'R',516,390),(256,'R',521,391),(257,'R',522,392),(258,'R',524,393),(259,'R',525,394),(260,'R',526,395),(261,'R',527,396),(262,'R',530,397),(263,'R',531,398),(264,'R',532,399),(265,'R',533,400),(266,'R',536,401),(267,'R',537,402),(268,'R',538,403),(269,'R',539,404),(270,'R',540,405),(271,'R',541,406),(272,'R',542,407),(273,'R',544,408),(274,'R',546,409),(275,'R',547,410),(276,'R',550,411),(277,'R',551,412),(278,'R',552,413),(279,'R',553,414),(280,'R',555,415),(281,'R',556,416),(282,'R',557,417),(283,'R',558,418),(284,'R',559,419),(285,'R',560,420),(286,'R',561,421),(287,'R',562,422),(288,'R',563,423),(289,'R',564,424),(290,'R',566,425),(291,'R',568,426),(292,'R',569,427),(293,'R',570,428),(294,'R',571,429),(295,'R',572,430),(296,'R',573,431),(297,'R',574,432),(298,'R',575,433),(299,'R',576,434),(300,'R',577,435),(301,'R',578,436),(302,'R',579,437),(303,'R',580,438),(304,'R',581,439),(305,'R',583,440),(306,'R',584,441),(307,'R',585,442),(308,'R',586,443),(309,'R',587,444),(310,'R',588,445),(311,'R',589,446),(312,'R',590,447),(313,'R',591,448),(314,'R',592,449),(315,'R',593,450),(316,'R',594,451),(317,'R',595,452),(318,'R',596,453),(319,'R',597,454),(320,'R',598,455),(321,'R',599,456),(322,'R',600,457),(323,'R',601,458),(324,'R',602,459),(325,'R',603,460),(326,'R',604,461),(327,'R',605,462),(328,'R',606,463),(329,'R',607,464),(330,'R',608,465),(331,'R',609,466),(332,'R',610,467),(333,'R',611,468),(334,'R',612,469),(335,'R',613,470),(336,'R',614,471),(337,'R',615,472),(338,'R',616,473),(339,'R',617,474),(340,'R',618,475),(341,'R',620,476),(342,'R',621,477),(343,'R',622,478),(344,'R',623,479),(345,'R',624,480),(346,'R',626,481),(347,'R',627,482),(348,'R',628,483),(349,'R',629,484),(350,'R',630,485),(351,'R',631,486),(352,'R',632,487),(353,'R',633,488),(354,'R',634,489),(355,'R',635,490),(356,'R',636,491),(357,'R',637,492),(358,'R',638,493),(359,'R',639,494),(360,'R',640,495),(361,'R',641,496),(362,'R',642,497),(363,'R',643,498),(364,'R',644,499),(365,'R',661,500),(366,'R',662,501),(367,'R',663,502),(368,'R',664,503),(369,'R',665,504),(370,'R',672,506),(371,'R',678,507),(372,'R',681,508),(373,'R',686,509),(374,'R',687,510),(375,'R',699,511),(376,'R',700,512),(377,'R',701,513),(378,'R',720,515),(379,'R',752,519),(380,'R',753,520),(381,'R',757,521),(382,'R',784,557),(383,'R',785,558),(384,'R',793,563),(385,'R',794,564),(386,'R',798,570),(387,'R',799,571),(388,'R',800,573),(389,'R',801,574),(390,'R',802,575),(391,'R',803,576),(392,'R',804,577),(393,'R',805,578),(394,'R',806,579),(395,'R',807,580),(396,'R',808,581),(397,'R',809,582),(398,'R',810,583),(399,'R',811,584),(400,'R',812,585),(401,'R',813,586),(402,'R',814,587),(403,'R',815,588),(404,'R',816,589),(405,'R',817,590),(406,'R',818,591),(407,'R',819,592),(408,'R',820,593),(409,'R',821,594),(410,'R',822,595),(411,'R',823,596),(412,'R',824,597),(413,'R',825,598),(414,'R',826,599),(415,'R',827,600),(416,'R',828,601),(417,'R',829,602),(418,'R',830,604),(419,'R',832,607),(420,'R',833,608),(421,'R',834,609),(422,'R',837,618),(423,'R',844,625),(424,'R',845,626),(425,'R',851,649),(426,'R',852,651),(427,'R',853,652),(428,'R',854,657),(429,'R',859,670),(430,'R',860,671),(431,'R',861,672),(432,'R',874,673),(433,'R',875,674),(434,'R',876,677),(435,'R',877,678),(436,'R',878,679),(437,'R',879,686),(438,'R',882,694),(439,'R',883,695),(440,'R',884,696),(441,'R',889,699),(442,'R',890,700),(443,'R',891,701),(444,'R',892,704),(445,'R',893,712),(446,'R',894,713),(447,'R',897,722),(448,'R',898,723),(449,'R',899,725),(450,'R',900,726),(451,'R',901,728),(452,'R',902,729),(453,'R',903,730),(454,'R',904,731),(455,'R',905,732),(456,'R',906,734),(457,'R',907,739),(458,'R',908,740),(459,'R',909,741),(460,'R',910,744),(461,'R',911,754),(462,'R',912,755),(463,'R',913,756),(464,'R',917,759),(465,'R',918,760),(466,'R',919,762),(467,'R',920,763),(468,'R',921,764),(469,'R',922,765),(470,'R',923,768),(471,'R',924,774),(472,'R',925,780),(473,'R',926,781),(474,'R',927,782),(475,'R',928,783),(476,'R',929,784),(477,'R',930,785),(478,'R',931,789),(479,'R',932,790),(480,'R',933,791),(481,'R',934,792),(482,'R',935,793),(483,'R',936,798),(484,'R',937,804),(485,'R',938,805),(486,'R',939,806),(487,'R',940,807),(488,'R',942,820),(489,'R',943,821),(490,'R',944,822),(491,'R',945,823),(492,'R',946,836),(493,'R',947,840),(494,'R',948,846),(495,'R',949,848),(496,'R',950,849),(498,'R',952,852),(499,'R',953,853),(500,'R',954,854),(501,'R',955,856),(502,'R',956,858),(503,'R',957,859),(504,'R',958,860),(505,'R',959,861),(506,'R',960,862),(507,'R',961,864),(508,'R',963,868),(509,'R',964,869),(510,'R',965,870),(511,'R',966,871),(512,'R',967,872),(513,'R',968,873),(514,'R',969,876),(515,'R',970,880),(516,'R',971,882),(517,'R',972,883),(518,'R',973,884),(519,'R',974,885),(520,'R',978,900),(521,'R',979,901),(522,'R',980,902),(523,'R',981,903),(524,'R',982,904),(525,'R',983,905),(526,'R',985,921),(527,'R',986,922),(528,'R',987,925),(529,'R',988,926),(530,'R',989,927),(531,'R',990,928),(532,'R',992,937),(533,'R',993,938),(534,'R',994,939),(535,'R',995,940),(536,'R',1000,947),(537,'R',1001,948),(538,'R',1006,957),(539,'R',1007,958),(540,'R',1008,959),(541,'R',1014,977),(542,'R',1015,978),(543,'R',1016,979),(544,'R',1017,981),(545,'R',1023,1000),(546,'R',1024,1007),(547,'R',1026,1008),(548,'R',1027,1013),(549,'R',1038,1029),(550,'R',1039,1030),(551,'R',1040,1031),(552,'R',1041,1032),(553,'R',1042,1033),(554,'R',1056,1054),(555,'R',1057,1055),(556,'R',1058,1056),(557,'R',1059,1057),(558,'R',1081,1071),(559,'R',1089,1086),(560,'R',1102,1107),(561,'R',1125,1123),(562,'R',1134,1137),(563,'R',1144,1151),(564,'R',1164,1190),(565,'R',1165,1191),(566,'R',1169,1205),(567,'R',1170,1206),(568,'R',1171,1207),(569,'R',1181,1219),(570,'R',1182,1220),(571,'R',1183,1221),(572,'R',1254,1309),(573,'R',1255,1310),(574,'R',1256,1311),(575,'R',1257,1312),(576,'R',1288,1344),(577,'R',1289,1345),(578,'R',1290,1346),(579,'R',1294,1362),(580,'R',1295,1363),(581,'R',1296,1364),(582,'R',1297,1365),(583,'R',1310,1380),(584,'R',1311,1381),(585,'R',1312,1382),(586,'R',1317,1386),(587,'R',1318,1387),(588,'R',1319,1388),(589,'R',1323,1394),(590,'R',1324,1395),(591,'R',1325,1396),(592,'R',1332,1404),(593,'R',1333,1405),(594,'R',1334,1406),(595,'R',1336,1407),(596,'R',1338,1409),(597,'R',1339,1410),(598,'R',1340,1411),(599,'R',1353,1420),(600,'R',1354,1421),(601,'R',1355,1422),(602,'R',1356,1423),(603,'R',1362,1428),(604,'R',1363,1429),(605,'R',1364,1430),(606,'R',1365,1431),(607,'R',1366,1432),(608,'R',1367,1433),(609,'R',1368,1434),(610,'R',1369,1435),(611,'R',1370,1436),(612,'R',1371,1437);
/*!40000 ALTER TABLE `arquivo_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivo_tipo`
--

DROP TABLE IF EXISTS `arquivo_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivo_tipo` (
  `id_arquivo_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `extensao` varchar(5) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_arquivo_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivo_tipo`
--

LOCK TABLES `arquivo_tipo` WRITE;
/*!40000 ALTER TABLE `arquivo_tipo` DISABLE KEYS */;
INSERT INTO `arquivo_tipo` VALUES (1,'txt','TEXT/PLAIN','text/plain'),(2,'pdf','APPLICATION/PDF','application/pdf'),(3,'doc','APPLICATION/MSWORD','application/msword'),(4,'doc','APPLICATION/VND.OPENXMLFORMATS-OFFICEDOCUMENT.WORD','application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(5,'doc','APPLICATION/RTF','application/rtf'),(6,'doc','APPLICATION/X-RTF','application/x-rtf'),(7,'doc','TEXT/RICHTEXT','text/richtext'),(8,'css','TEXT/CSS','text/css'),(9,'fh','IMAGE/X-FREEHAND','image/x-freehand'),(10,'htm','TEXT/HTML','text/html'),(11,'ini','ZZ-APPLICATION/ZZ-WINASSOC-INI','zz-application/zz-winassoc-ini'),(12,'inf','TEXT/INF','text/inf'),(13,'mov','VIDEO/QUICKTIME','video/quicktime'),(14,'mp3','AUDIO/X-MPEG3','audio/x-mpeg3'),(15,'mp4','VIDEO/MP4V-ES','video/mp4v-es'),(16,'mpg','VIDEO/X-MPEG','video/x-mpeg'),(17,'ogg','AUDIO/X-OGG','audio/x-ogg'),(18,'ppt','APPLICATION/MSPOWERPOINT','application/mspowerpoint'),(19,'ppt','APPLICATION/VND.OPENXMLFORMATS-OFFICEDOCUMENT.PRES','application/vnd.openxmlformats-officedocument.presentationml.presentation'),(20,'ppt','APPLICATION/VND.MS-POWERPOINT','application/vnd.ms-powerpoint'),(21,'ppt','APPLICATION/VND.OPENXMLFORMATS-OFFICEDOCUMENT.PRES','application/vnd.openxmlformats-officedocument.presentationml.slideshow'),(22,'swf','APPLICATION/X-SHOCKWAVE-FLASH','application/x-shockwave-flash'),(23,'tiff','IMAGE/TIFF','image/tiff'),(24,'wav','AUDIO/WAV','audio/wav'),(25,'wma','AUDIO/X-MS-WMA','audio/x-ms-wma'),(26,'wmv','VIDEO/X-MS-WMV','video/x-ms-wmv'),(27,'xls','APPLICATION/MSEXCEL','application/msexcel'),(28,'xls','APPLICATION/VND.OPENXMLFORMATS-OFFICEDOCUMENT.SPRE','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),(29,'xml','TEXT/XML','text/xml'),(30,'zip','APPLICATION/X-ZIP-COMPRESSED','application/x-zip-compressed'),(31,'zip','APPLICATION/ZIP','application/zip'),(32,'rar','APPLICATION/X-RAR-COMPRESSED','application/x-rar-compressed'),(33,'file','APPLICATION/OCTET-STREAM','application/octet-stream'),(34,'7zip','APPLICATION/X-7Z-COMPRESSED','application/x-7z-compressed'),(35,'ace','APPLICATION/X-ACE','application/x-ace'),(36,'ai','APPLICATION/ILLUSTRATOR','application/illustrator'),(37,'aiff','AUDIO/AIFF','audio/aiff'),(38,'asp','TEXT/ASP','text/asp'),(39,'avi','VIDEO/MSVIDEO','video/msvideo'),(40,'bat','APPLICATION/BAT','application/bat'),(41,'bin','APPLICATION/OCTET-STREAM','application/octet-stream'),(42,'dll','APPLICATION/X-MSDOWNLOAD','application/x-msdownload'),(43,'fla','APPLICATION/X-SHOCKWAVE-FLASH','application/x-shockwave-flash'),(44,'hqx','APPLICATION/BINHEX','application/binhex'),(45,'midi','AUDIO/MID','audio/mid'),(46,'php','APPLICATION/X-HTTPD-PHP','application/x-httpd-php'),(47,'sit','APPLICATION/STUFFIT','application/stuffit'),(48,'sitx','APPLICATION/X-SIT','application/x-sit'),(49,'jpg','IMAGE/JPEG','image/jpeg'),(50,'gif','IMAGE/GIF','image/gif'),(51,'jpg','IMAGE/PJPEG','image/pjpeg'),(52,'png','IMAGE/PNG','image/png'),(53,'bmp','IMAGE/X-BITMAP','image/x-bitmap'),(54,'psd','IMAGE/PHOTOSHOP','image/photoshop'),(55,'psp','IMAGE/BMP','image/bmp');
/*!40000 ALTER TABLE `arquivo_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao`
--

DROP TABLE IF EXISTS `auto_infracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao` (
  `id_auto_infracao` int(11) NOT NULL AUTO_INCREMENT,
  `id_auto_infracao_devolucao_status` int(11) DEFAULT NULL,
  `id_auto_infracao_status` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `id_agente` int(11) DEFAULT NULL,
  `alfa` char(1) DEFAULT NULL,
  `id_servico_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao`),
  KEY `fk_auto_infracao_auto_infracao_status1_idx` (`id_auto_infracao_status`),
  KEY `fk_auto_infracao_agente1_idx` (`id_agente`),
  KEY `fk_auto_infracao_auto_infracao_devolucao_status1_idx` (`id_auto_infracao_devolucao_status`),
  CONSTRAINT `fk_auto_infracao_agente1` FOREIGN KEY (`id_agente`) REFERENCES `agente` (`id_agente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_auto_infracao_devolucao_status1` FOREIGN KEY (`id_auto_infracao_devolucao_status`) REFERENCES `auto_infracao_devolucao_status` (`id_auto_infracao_devolucao_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_auto_infracao_status1` FOREIGN KEY (`id_auto_infracao_status`) REFERENCES `auto_infracao_status` (`id_auto_infracao_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2780 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao`
--

LOCK TABLES `auto_infracao` WRITE;
/*!40000 ALTER TABLE `auto_infracao` DISABLE KEYS */;
INSERT INTO `auto_infracao` VALUES (2770,NULL,1,1,NULL,'A',2),(2771,NULL,1,2,NULL,'A',2),(2772,NULL,1,3,NULL,'A',2),(2773,NULL,1,4,NULL,'A',2),(2774,NULL,1,5,NULL,'A',2),(2775,NULL,1,6,NULL,'A',2),(2776,NULL,1,7,NULL,'A',2),(2777,NULL,1,8,NULL,'A',2),(2778,NULL,1,9,NULL,'A',2),(2779,NULL,1,10,NULL,'A',2);
/*!40000 ALTER TABLE `auto_infracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao_devolucao_status`
--

DROP TABLE IF EXISTS `auto_infracao_devolucao_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao_devolucao_status` (
  `id_auto_infracao_devolucao_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao_devolucao_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='O - OK\nR - RASURADO\nC - CANCELADO\nE - EXTRAVIADO\nD - DADOS I';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao_devolucao_status`
--

LOCK TABLES `auto_infracao_devolucao_status` WRITE;
/*!40000 ALTER TABLE `auto_infracao_devolucao_status` DISABLE KEYS */;
INSERT INTO `auto_infracao_devolucao_status` VALUES (1,'O','OK'),(2,'R','RASURADO'),(3,'C','CANCELADO'),(4,'E','EXTRAVIADO'),(5,'D','DADOS INCORRETOS');
/*!40000 ALTER TABLE `auto_infracao_devolucao_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao_notificacao`
--

DROP TABLE IF EXISTS `auto_infracao_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao_notificacao` (
  `id_auto_infracao_notificacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa_fisica` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `local_infracao` text DEFAULT NULL,
  `data_infracao` date DEFAULT NULL,
  `hora_infracao` time DEFAULT NULL,
  `id_arquivo` int(11) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `veiculo_recolhido` char(1) DEFAULT NULL,
  `clandestino` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao_notificacao`),
  KEY `fk_auto_infracao_notificacao_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_auto_infracao_notificacao_veiculo1_idx` (`id_veiculo`),
  CONSTRAINT `fk_auto_infracao_notificacao_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_notificacao_veiculo1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao_notificacao`
--

LOCK TABLES `auto_infracao_notificacao` WRITE;
/*!40000 ALTER TABLE `auto_infracao_notificacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_infracao_notificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao_ocorrencia`
--

DROP TABLE IF EXISTS `auto_infracao_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao_ocorrencia` (
  `id_auto_infracao_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `id_auto_infracao` int(11) NOT NULL,
  `id_auto_infracao_ocorrencia_tipo` int(11) NOT NULL,
  `id_auto_infracao_devolucao_status` int(11) DEFAULT NULL,
  `data_ocorrencia` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `hora_ocorrencia` time DEFAULT NULL,
  `id_auto_infracao_notificacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao_ocorrencia`),
  KEY `fk_auto_infracao_ocorrencia_auto_infracao1_idx` (`id_auto_infracao`),
  KEY `fk_auto_infracao_ocorrencia_funcionario1_idx` (`id_funcionario`),
  KEY `fk_auto_infracao_ocorrencia_auto_infracao_ocorrencia_tipo1_idx` (`id_auto_infracao_ocorrencia_tipo`),
  KEY `fk_auto_infracao_ocorrencia_auto_infracao_devolucao_status1_idx` (`id_auto_infracao_devolucao_status`),
  CONSTRAINT `fk_auto_infracao_ocorrencia_auto_infracao1` FOREIGN KEY (`id_auto_infracao`) REFERENCES `auto_infracao` (`id_auto_infracao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_ocorrencia_auto_infracao_devolucao_status1` FOREIGN KEY (`id_auto_infracao_devolucao_status`) REFERENCES `auto_infracao_devolucao_status` (`id_auto_infracao_devolucao_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_ocorrencia_auto_infracao_ocorrencia_tipo1` FOREIGN KEY (`id_auto_infracao_ocorrencia_tipo`) REFERENCES `auto_infracao_ocorrencia_tipo` (`id_auto_infracao_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_ocorrencia_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao_ocorrencia`
--

LOCK TABLES `auto_infracao_ocorrencia` WRITE;
/*!40000 ALTER TABLE `auto_infracao_ocorrencia` DISABLE KEYS */;
INSERT INTO `auto_infracao_ocorrencia` VALUES (5408,132,2770,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5409,132,2771,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5410,132,2772,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5411,132,2773,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5412,132,2774,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5413,132,2775,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5414,132,2776,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5415,132,2777,1,NULL,'2019-02-14',NULL,'12:50:06',NULL),(5416,132,2778,1,NULL,'2019-02-14',NULL,'12:50:07',NULL),(5417,132,2779,1,NULL,'2019-02-14',NULL,'12:50:07',NULL);
/*!40000 ALTER TABLE `auto_infracao_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `auto_infracao_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao_ocorrencia_tipo` (
  `id_auto_infracao_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='C - CRIAÇÃO\nEN - ENTREGA PARA O AGENTE\nDV - DEVOLUÇÃO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao_ocorrencia_tipo`
--

LOCK TABLES `auto_infracao_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `auto_infracao_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `auto_infracao_ocorrencia_tipo` VALUES (1,'C','CRIAÇÃO'),(2,'EN','ENTREGA PARA O AGENTE'),(3,'DV','DEVOLUÇÃO'),(4,'CE','CANCELAMENTO DE ENTREGA');
/*!40000 ALTER TABLE `auto_infracao_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_infracao_status`
--

DROP TABLE IF EXISTS `auto_infracao_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_infracao_status` (
  `id_auto_infracao_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_auto_infracao_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='DI - DISPONÍVEL\nEN - ENTREGUE PARA O AGENTE\nDV - DEVOLVIDO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_infracao_status`
--

LOCK TABLES `auto_infracao_status` WRITE;
/*!40000 ALTER TABLE `auto_infracao_status` DISABLE KEYS */;
INSERT INTO `auto_infracao_status` VALUES (1,'DI','DISPONÍVEL'),(2,'EN','ENTREGUE PARA O AGENTE'),(3,'DV','DEVOLVIDO');
/*!40000 ALTER TABLE `auto_infracao_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) DEFAULT NULL,
  `id_municipio` int(11) NOT NULL,
  PRIMARY KEY (`id_bairro`),
  KEY `fk_bairro_municipio1_idx` (`id_municipio`),
  CONSTRAINT `fk_bairro_municipio1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3718 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'CENTRAL',1),(3,'NOVO HORIZONTE',248),(4,'CENTRAL',248),(5,'ÁREA PORTUÁRIA',248),(6,'REMÉDIOS 2',248),(7,'COMERCIAL',248),(9,'PARAÍSO',248),(10,'DANIEL',248),(11,'MARABAIXO II',1),(13,'PACOVAL',1),(14,'PANTANAL',1),(15,'LAGUINHO',1),(16,'PERPÉTUO SOCORRO',1),(17,'FONTE NOVA',248),(21,'RAMAL DA UNIFAP',1),(22,'PEDRINHAS',1),(23,'ALVORADA',1),(24,'BEIROL',1),(25,'CABRALZINHO',1),(26,'SANTA RITA',1),(27,'INFRAERO II',1),(28,'JESUS DE NAZARÉ',1),(33,'PALMEIRAS',6),(34,'ÁREA COMERCIAL',248),(35,'BURITIZAL',1),(39,'GLEBA AD 04',1),(41,'BOM JARDIM',1),(42,'PRAINHA',1),(44,'CONGÓS',1),(45,'SÃO LÁZARO',1),(46,'TREM',1),(47,'DISTRITO INDUSTRIAL',248),(49,'NOVO HORIZONTE',1),(53,'UNIVERSIDADE',1),(54,'ZERÃO',1),(55,'VILA AMAZONAS',248),(58,'JARDIM MARCO ZERO',1),(59,'JULIÃO RAMOS',1),(61,'INFRAERO I',1),(62,'RODOVIA JK',1),(63,'NOVA BRASÍLIA',248),(64,'RENASCER II',1),(65,'CANAL DO JANDIA',1),(66,'MALVINAS',6),(67,'ARAXÁ',1),(68,'CONJUNTO LAURINDO BANHA',1),(69,'REMÉDIOS',248),(71,'NOVA ESPERANÇA',1),(73,'DR DANIEL',1),(74,'CJ MONACO / JD EQUATORIAL',1),(75,'VAL-DE-CANS',15),(76,'CENTRO   ',10),(78,'COPALMA',6),(82,'MUCA',1),(83,'NOVO BURITIZAL',1),(86,'CAPILANDIA',1),(87,'PLANALTO',1),(88,'BOM JESUS',1),(89,'RURAL ',6),(91,'CENTRO',13),(93,'JARDIM FELICIDADE I',1),(95,'GOIABAL',1),(97,'PORTO GRANDE',6),(98,'AGRESTE',16),(103,'PERPÉTUO SOCORRO',248),(105,'TRAV L-06187',248),(108,'PLANALTO',13),(110,'SOL NASCENTE',1),(114,'BRASIL NOVO',1),(121,'SAO JOSE DOS PINHAIS',1),(125,'SANTA INÊS',1),(127,'AMAZONAS',1),(129,'KM 09',1),(131,'RAMAL DO LINHAO',1),(133,'SENADOR CANEDO',108),(135,'NOVA MARAMBAIA',93),(136,'IANETAMA',190),(138,'VALE DO RENASCER',1),(140,'HOSPITAL DE BASE',1),(143,'CRUZEIRO',15),(144,'PRAINHA',86),(147,'CRISTO REDENTOR',190),(152,'JARDIM DE DEUS',248),(157,'LOJA F ',222),(159,'CAMPINA',15),(162,'V. DO MATADOURO',1),(167,'VILA NOVA',119),(168,'NOVO ESTRELA',190),(171,'DELTA DO MATAPI',248),(174,'KM 128',311),(176,'MATAPI',248),(183,'SAUDADE I',15),(184,'VILA FACEL',16),(250,'BRASIL NOVO II',1),(457,'CONJUNTO DA EGO',1),(458,'CONJUNTO EMBRAPA',1),(459,'CONJUNTO M. VITÓRIA',1),(470,'CUBA DE ASFALTO',1),(471,'CURIAÚ',1),(473,'JARDIM EQUATORIAL',1),(474,'JARDIM FELICIDADE I',108),(475,'JARDIM FELICIDADE II',1),(540,'LOTEAMENTO AÇAÍ',1),(544,'LT TELEAMAPÁ',1),(546,'MACAPÁ',1),(547,'MARABAIXO I',1),(549,'MARABAIXO III',1),(551,'MURICI',1),(739,'NOVO HORIZONTE II',1),(765,'PARAÍSO',13),(951,'PARAÍSO',1),(988,'PARQUE DOS BURITIS',1),(1057,'PIÇARREIRA',248),(1153,'VALE VERDE',1),(1155,'VITÓRIA DO RENASCER',1),(1236,'CIDADE NOVA I',1),(1237,'CIDADE NOVA I',248),(1243,'DELTA',1),(1244,'DELTA',248),(1247,'DISTRITO INDUSTRIAL',1),(1248,'ELESBÃO',248),(1258,'FAZENDINHA',1),(1282,'HOSPITALIDADE',248),(1341,'ILHA DE SANTANA',248),(1345,'LIBERDADE',248),(1346,'LIBERDADE',1),(1352,'NOVA UNIÃO',248),(1361,'NOVA BRASÍLIA II',248),(1474,'NOVA UNIÃO',13),(1626,'PARQUE DAS LARANJEIRAS',248),(1630,'PROVEDOR I',248),(1631,'PROVEDOR II',248),(1796,'SANTANA',248),(1798,'SERRA DO NAVIO',248),(1799,'VALE DAS BENÇÃOS',248),(1805,'VILA DO MATADOURO',248),(1852,'CENTRO',16),(1853,'CENTRO',44),(1855,'CENTRO',6),(1857,'SAO TIAGO',87),(1860,'MULTIR?O ',248),(1869,'BOM JESUS',87),(1873,'UNI?O',1),(1874,'UNI?O',87),(1888,'LIBERDADE   ',87),(1894,'JARDIM AM?RICA',108),(1896,'MARABA ',109),(1902,'OLARIA',94),(1903,'MAZAG?O',87),(1911,'MANGAN?S',248),(1913,'OLARIA',87),(1919,'DAS PALMEIRAS',91),(1920,'NOSSA SENHORA ASSUN??O',87),(1923,'OURINHOS',92),(1927,' QUISSISANA   ',131),(1928,'NOVA MARABA   ',109),(1929,'TEL?GRAFO',15),(1931,'SALTO GRANDE',92),(1932,'CAL?OENE',91),(1937,'CAMPINAS',92),(1942,'SANTO ANDRE',92),(1996,'CONJUNTO BONÉ AZUL',1),(2007,'CONJUNTO AÇAÍ',1),(2892,'CORAÇÃO',1),(2927,'MAZAGÃO VELHO',87),(2928,'DISTRITO DO CARVÃO',87),(2929,'VILA NOVA',87),(2997,'IGARAPÉ DA FORTALEZA',248),(3568,'CENTRO',92),(3570,'CENTRO',91),(3574,'CENTRO',190),(3575,'CENTRO',15),(3576,'CENTRO',87),(3579,'CENTRO',122),(3580,'CENTRO',103),(3581,'CENTRO',82),(3582,'CENTRO',83),(3583,'CENTRO',84),(3585,'CENTRO',86),(3586,'VILA PRIMÁRIA',44),(3587,'ICUI GUAJARA',93),(3589,'COMERCIARIO',146),(3590,'NOVO MARABA',109),(3592,'CENTRO',148),(3595,'FÉ EM DEUS',248),(3596,'INCONFIDENTES',155),(3597,'JD ELDORADO',159),(3599,'BELLA VILLE',1),(3600,'VILA DANIEL',248),(3602,'CURIO-UTINGA',15),(3606,'COMERCIO',15),(3607,'CONJ.EMBRAPA',1),(3609,'VILA INTERMEDIARIA',44),(3610,'RES BURITI',1),(3611,'CJ.G. MESTRINELLI ',184),(3612,'PARAVIANA',187),(3613,'CENTRO',192),(3614,'DIMIC-DISTRITO MINEROINDUSTRIAL',193),(3615,'IPE',1),(3616,'MORADA DAS PALMEIRAS',1),(3617,'INDEFINIDO',248),(3618,'NOVA PORTO VELHO',200),(3619,'CENTRO CUTIAS',1),(3620,'TELEGRAFO SEM FIO',15),(3621,'ACAI',1),(3623,'NOVA COLINA',207),(3624,'ASSENTAMENTO',87),(3625,'SANTO AGOSTINHO',122),(3628,'SAO VENDELINO',160),(3630,'PLANALTO ',219),(3631,'REVIVER',44),(3632,'UNIAO',222),(3633,'UNIVERSIDADE',13),(3634,'SETE MANGUEIRAS',94),(3636,'CENTRO',226),(3638,'ICOARACI ',15),(3639,'DISTRITO INDUSTRIAL',227),(3641,'ANAUERAPUCU',87),(3642,'LAGOA AZUL',1),(3643,'CENTRO',236),(3645,'JARDIM FLORESTA',248),(3646,'GUANABARA',93),(3647,'COQUEIRO',93),(3648,'SAUDADE I',190),(3649,'SAUDADE II',190),(3650,'MUTIRAO DO PARAISO',248),(3651,'MONTE DAS OLIVEIRA',248),(3652,'JARDIM DE DEUS II',248),(3654,'ACQUAVILE TUCUNARE',248),(3656,'LUCAS DO RIO VERDE',275),(3659,'BONE AZUL',1),(3666,'CUMBICA ',282),(3668,'CORRE AGUA',1),(3671,'CENTRO',288),(3672,'DIAMANTINO',86),(3674,'MACHADO',290),(3675,'SAO JORGE',122),(3676,'SOL NASCENTE',291),(3677,'CIDADE NOVA 1',122),(3678,'REDENCAO',292),(3679,'BELA VISTA',157),(3681,'JARDIM AMERICA',1),(3682,'URBIS II',297),(3685,'ALTO DO CRUZEIRO',302),(3686,'CENTRO',294),(3687,'RENASCER',1),(3688,'AGUAS LINDAS',93),(3689,'CENTRO',186),(3690,'COMPENSA 2',122),(3691,'ANAPOLIS',311),(3692,'VILA DO TREM',1),(3693,'ZONA RURAL',322),(3694,'CENTRO',322),(3695,'SETOR INDUSTRIAL NORTE',327),(3696,'SANTA RITA',328),(3697,'SAO LUIS',328),(3698,'CENTRO',328),(3699,'REMEDIOS II',248),(3700,'ZONA RURAL',1),(3701,'INTERIOR',340),(3702,'JARDIM FELICIDADE',1),(3703,'CENTRO ',272),(3704,'CENTRO',347),(3705,'MUTIRÃO',248),(3706,'DISTRITO ANAUERAPUCÚ',248),(3707,'ANAUERAPUCU',248),(3708,'JARDIM PARAISO',248),(3709,'VILA VIANA',108),(3710,'CACHOEIRINHA',369),(3711,'RODAGEM',86),(3712,'CENTRO',377),(3713,'CARANAZAL',86),(3714,'JD VITORIA',381),(3715,'AEROPORTO',6),(3716,'LAVA PES',386),(3717,'PROVEDOR',248);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baixa_motivo`
--

DROP TABLE IF EXISTS `baixa_motivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baixa_motivo` (
  `id_baixa_motivo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_baixa_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baixa_motivo`
--

LOCK TABLES `baixa_motivo` WRITE;
/*!40000 ALTER TABLE `baixa_motivo` DISABLE KEYS */;
INSERT INTO `baixa_motivo` VALUES (1,'PR','PLACA RETIDA'),(2,'SAV','SUBSTITUIÇAO PARA ENTRADA DE OUTRO VEICULO'),(3,'VD','VENDA'),(4,'S','SOLICITAÇAO DO REQUERENTE');
/*!40000 ALTER TABLE `baixa_motivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id_banco` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'001','BB','BANCO DO BRASIL'),(2,'021','ITAU','ITAÚ'),(3,'237','BRADESCO','BRADESCO'),(4,'104','CEF','CAIXA ECONÔMICA FEDERAL');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco_convenio`
--

DROP TABLE IF EXISTS `banco_convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco_convenio` (
  `id_banco_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `convenio` varchar(10) DEFAULT NULL,
  `contrato` varchar(10) DEFAULT NULL,
  `padrao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_banco_convenio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_convenio`
--

LOCK TABLES `banco_convenio` WRITE;
/*!40000 ALTER TABLE `banco_convenio` DISABLE KEYS */;
INSERT INTO `banco_convenio` VALUES (5,'CONVï¿½NIO BB ','1371892','1371892','S'),(6,'CONVÊNIO CAIXA ÔNIBUS','887277272','665515252','N'),(7,'CONVÊNIO BRADESCO MOTO-TAXI','8383838','99292929','N');
/*!40000 ALTER TABLE `banco_convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto`
--

DROP TABLE IF EXISTS `boleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto` (
  `id_boleto` int(11) NOT NULL AUTO_INCREMENT,
  `data_criacao` date DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_banco_convenio` int(11) NOT NULL,
  `nosso_numero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_boleto`),
  KEY `fk_boleto_pessoa1_idx` (`id_pessoa`),
  KEY `fk_boleto_banco_convenio1_idx` (`id_banco_convenio`),
  CONSTRAINT `fk_boleto_banco_convenio1` FOREIGN KEY (`id_banco_convenio`) REFERENCES `banco_convenio` (`id_banco_convenio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_boleto_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto`
--

LOCK TABLES `boleto` WRITE;
/*!40000 ALTER TABLE `boleto` DISABLE KEYS */;
INSERT INTO `boleto` VALUES (6595,'2019-02-14','2019-02-21',6827,5,'13718920000006595');
/*!40000 ALTER TABLE `boleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto_item`
--

DROP TABLE IF EXISTS `boleto_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_item` (
  `id_boleto_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_boleto_item_tipo` int(11) NOT NULL,
  `id_boleto` int(11) NOT NULL,
  `chave` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id_boleto_item`),
  KEY `fk_boleto_item_boleto_item_tipo1_idx` (`id_boleto_item_tipo`),
  KEY `fk_boleto_item_boleto1_idx` (`id_boleto`),
  CONSTRAINT `fk_boleto_item_boleto1` FOREIGN KEY (`id_boleto`) REFERENCES `boleto` (`id_boleto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_boleto_item_boleto_item_tipo1` FOREIGN KEY (`id_boleto_item_tipo`) REFERENCES `boleto_item_tipo` (`id_boleto_item_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_item`
--

LOCK TABLES `boleto_item` WRITE;
/*!40000 ALTER TABLE `boleto_item` DISABLE KEYS */;
INSERT INTO `boleto_item` VALUES (23284,1,6595,30360,54.1);
/*!40000 ALTER TABLE `boleto_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto_item_tipo`
--

DROP TABLE IF EXISTS `boleto_item_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_item_tipo` (
  `id_boleto_item_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_boleto_item_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='SS - SOLICITAÇÃO DE SERVIÇO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_item_tipo`
--

LOCK TABLES `boleto_item_tipo` WRITE;
/*!40000 ALTER TABLE `boleto_item_tipo` DISABLE KEYS */;
INSERT INTO `boleto_item_tipo` VALUES (1,'SS','SOLICITAÇÃO DE SERVIÇO');
/*!40000 ALTER TABLE `boleto_item_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolsa_tipo`
--

DROP TABLE IF EXISTS `bolsa_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolsa_tipo` (
  `id_bolsa_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_vinculo` int(11) NOT NULL,
  `id_valor` int(11) NOT NULL,
  PRIMARY KEY (`id_bolsa_tipo`),
  KEY `fk_bolsa_tipo_vinculo1_idx` (`id_vinculo`),
  KEY `fk_bolsa_tipo_valor1_idx` (`id_valor`),
  CONSTRAINT `fk_bolsa_tipo_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsa_tipo_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolsa_tipo`
--

LOCK TABLES `bolsa_tipo` WRITE;
/*!40000 ALTER TABLE `bolsa_tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolsa_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolsista`
--

DROP TABLE IF EXISTS `bolsista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolsista` (
  `id_bolsista` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo` int(11) NOT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  `id_bolsa_tipo` int(11) NOT NULL,
  `id_bolsista_status` int(11) NOT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bolsista`),
  KEY `fk_bolsista_vinculo1_idx` (`id_vinculo`),
  KEY `fk_bolsista_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_bolsista_bolsa_tipo1_idx` (`id_bolsa_tipo`),
  KEY `fk_bolsista_bolsista_status1_idx` (`id_bolsista_status`),
  CONSTRAINT `fk_bolsista_bolsa_tipo1` FOREIGN KEY (`id_bolsa_tipo`) REFERENCES `bolsa_tipo` (`id_bolsa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsista_bolsista_status1` FOREIGN KEY (`id_bolsista_status`) REFERENCES `bolsista_status` (`id_bolsista_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsista_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsista_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolsista`
--

LOCK TABLES `bolsista` WRITE;
/*!40000 ALTER TABLE `bolsista` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolsista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolsista_ocorrencia`
--

DROP TABLE IF EXISTS `bolsista_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolsista_ocorrencia` (
  `id_bolsista_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `id_bolsista` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_vinculo_lote_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bolsista_ocorrencia`),
  KEY `fk_bolsista_ocorrencia_bolsista1_idx` (`id_bolsista`),
  KEY `fk_bolsista_ocorrencia_usuario1_idx` (`id_usuario`),
  KEY `fk_bolsista_ocorrencia_vinculo_lote_item1_idx` (`id_vinculo_lote_item`),
  CONSTRAINT `fk_bolsista_ocorrencia_bolsista1` FOREIGN KEY (`id_bolsista`) REFERENCES `bolsista` (`id_bolsista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsista_ocorrencia_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bolsista_ocorrencia_vinculo_lote_item1` FOREIGN KEY (`id_vinculo_lote_item`) REFERENCES `vinculo_lote_item` (`id_vinculo_lote_item`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolsista_ocorrencia`
--

LOCK TABLES `bolsista_ocorrencia` WRITE;
/*!40000 ALTER TABLE `bolsista_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolsista_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolsista_status`
--

DROP TABLE IF EXISTS `bolsista_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolsista_status` (
  `id_bolsista_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_bolsista_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='A - ATIVO \nI - INATIVO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolsista_status`
--

LOCK TABLES `bolsista_status` WRITE;
/*!40000 ALTER TABLE `bolsista_status` DISABLE KEYS */;
INSERT INTO `bolsista_status` VALUES (1,'A','ATIVO'),(2,'I','INATIVO');
/*!40000 ALTER TABLE `bolsista_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `id_cargo_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_cargo`),
  KEY `fk_cargo_cargo_tipo1_idx` (`id_cargo_tipo`),
  CONSTRAINT `fk_cargo_cargo_tipo1` FOREIGN KEY (`id_cargo_tipo`) REFERENCES `cargo_tipo` (`id_cargo_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'PROGRAMADOR',1),(2,'ADMINISTRADOR',1),(4,'AGENTE DE TRÂNSITO',1),(5,'TÉCNICO EM INFORMATICA',1),(6,'COORDENADORA DE TRÂNSITO',1),(7,'ASSISTENTE ADMINISTRATIVO',1),(8,'SERVENTE',2),(9,'DIRETOR',1),(10,'VIGILANTE',2),(11,'COORDENADORA DE EDUCAÇÃO PARA O TRÂNSITO',1),(12,'COORDENADORA DE ADM. RECURSOS HUMANOS',1),(13,'AUXILIAR DE ALMOXARIFADO',1),(14,'SUPERINTENDENTE',1),(15,'PROCURADOR AUTARQUICO',1),(16,'DIRETOR FINANCEIRO',1),(17,'CHEFE DA DIVISÃO DE TRÂNSITO',1),(18,'AGENTE DE FISCALIZAÇÃO',1),(19,'CHEFE DA SEÇÃO DE EDUCAÇÃO',1),(20,'CHEFE DE DIVISÃO DE TRANSPORTE URBANOS',1),(21,'AUXILIAR DE SERVIÇOS GERAIS',1),(22,'AUXILIAR DE PROTOCOLO',1),(23,'FISCAL',1),(24,'CHEFE DE GABINETE',1),(25,'PROFESSOR',2),(26,'DIRETOR DE TRANSPORTE E TRÂNSITO',1),(27,'CHEFE DE RH',1),(28,'CHEFE DA SEÇÃO FINANCEIRA',2),(29,'CHEFE DA SEÇÃO DE ENGENHARIA E FISCALIZAÇÃO DE TRÂ',2),(30,'CHEFE DA DIVISÃO DE TRANSPORTES URBANOS',2),(31,'DIRETOR ADMINISTRATIVO FINANCEIRO',2),(32,'ASSESSORA JURÍDICA',1),(33,'CHEFE DA SEÇÃO DE ADMINISTRATIVO E RECURSOS HUMANO',2);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo_tipo`
--

DROP TABLE IF EXISTS `cargo_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo_tipo` (
  `id_cargo_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cargo_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='técnico, docente ou estágio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo_tipo`
--

LOCK TABLES `cargo_tipo` WRITE;
/*!40000 ALTER TABLE `cargo_tipo` DISABLE KEYS */;
INSERT INTO `cargo_tipo` VALUES (1,'T','TÉCNICO'),(2,'D','DOCENTE'),(3,'E','ESTAGIÁRIO');
/*!40000 ALTER TABLE `cargo_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado`
--

DROP TABLE IF EXISTS `chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado` (
  `id_chamado` int(11) NOT NULL AUTO_INCREMENT,
  `id_chamado_tipo` int(11) NOT NULL,
  `data_criacao` date DEFAULT NULL,
  `hora_criacao` time DEFAULT NULL,
  `descricao_problema` text DEFAULT NULL,
  `id_chamado_status` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_chamado`),
  KEY `fk_chamado_chamado_tipo1_idx` (`id_chamado_tipo`),
  KEY `fk_chamado_chamado_status1_idx` (`id_chamado_status`),
  KEY `fk_chamado_setor1_idx` (`id_setor`),
  KEY `fk_chamado_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_chamado_chamado_status1` FOREIGN KEY (`id_chamado_status`) REFERENCES `chamado_status` (`id_chamado_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_chamado_tipo1` FOREIGN KEY (`id_chamado_tipo`) REFERENCES `chamado_tipo` (`id_chamado_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado`
--

LOCK TABLES `chamado` WRITE;
/*!40000 ALTER TABLE `chamado` DISABLE KEYS */;
/*!40000 ALTER TABLE `chamado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado_ocorrencia`
--

DROP TABLE IF EXISTS `chamado_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado_ocorrencia` (
  `id_chamado_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `data_ocorrencia` date DEFAULT NULL,
  `hora_ocorrencia` time DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `id_chamado` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `id_chamado_ocorrencia_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_chamado_ocorrencia`),
  KEY `fk_chamado_ocorrencia_chamado1_idx` (`id_chamado`),
  KEY `fk_chamado_ocorrencia_funcionario1_idx` (`id_funcionario`),
  KEY `fk_chamado_ocorrencia_setor1_idx` (`id_setor`),
  KEY `fk_chamado_ocorrencia_chamado_ocorrencia_tipo1_idx` (`id_chamado_ocorrencia_tipo`),
  CONSTRAINT `fk_chamado_ocorrencia_chamado1` FOREIGN KEY (`id_chamado`) REFERENCES `chamado` (`id_chamado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_ocorrencia_chamado_ocorrencia_tipo1` FOREIGN KEY (`id_chamado_ocorrencia_tipo`) REFERENCES `chamado_ocorrencia_tipo` (`id_chamado_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_ocorrencia_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chamado_ocorrencia_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado_ocorrencia`
--

LOCK TABLES `chamado_ocorrencia` WRITE;
/*!40000 ALTER TABLE `chamado_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `chamado_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `chamado_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado_ocorrencia_tipo` (
  `id_chamado_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_chamado_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='A - ATENDIMENTO\nT - TRAMITAÇÃO\nF - FINALIZAÇÃO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado_ocorrencia_tipo`
--

LOCK TABLES `chamado_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `chamado_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `chamado_ocorrencia_tipo` VALUES (1,'A','ATENDIMENTO'),(2,'T','TRAMITAÇÃO'),(3,'F','FINALIZAÇÃO');
/*!40000 ALTER TABLE `chamado_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado_status`
--

DROP TABLE IF EXISTS `chamado_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado_status` (
  `id_chamado_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_chamado_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='P - AGUARDANDO ATENDIMENTO\nA - ATENDIDO\nE - EM ATENDIMENTO\nF';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado_status`
--

LOCK TABLES `chamado_status` WRITE;
/*!40000 ALTER TABLE `chamado_status` DISABLE KEYS */;
INSERT INTO `chamado_status` VALUES (1,'P','AGUARDANDO ATENDIMENTO'),(2,'A','ATENDIDO'),(3,'E','EM ATENDIMENTO'),(4,'F','FINALIZADO');
/*!40000 ALTER TABLE `chamado_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado_tipo`
--

DROP TABLE IF EXISTS `chamado_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado_tipo` (
  `id_chamado_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_chamado_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='M - MANUTENÇÃO\nI - INFORMÁTICA\nE - ELÉTRICA\nH - HIDRÁULICA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado_tipo`
--

LOCK TABLES `chamado_tipo` WRITE;
/*!40000 ALTER TABLE `chamado_tipo` DISABLE KEYS */;
INSERT INTO `chamado_tipo` VALUES (1,'INF','INFORMÁTICA');
/*!40000 ALTER TABLE `chamado_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado_tipo_setor`
--

DROP TABLE IF EXISTS `chamado_tipo_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado_tipo_setor` (
  `id_setor` int(11) NOT NULL,
  `id_chamado_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_setor`,`id_chamado_tipo`),
  KEY `fk_setor_has_chamado_tipo_chamado_tipo1_idx` (`id_chamado_tipo`),
  KEY `fk_setor_has_chamado_tipo_setor1_idx` (`id_setor`),
  CONSTRAINT `fk_setor_has_chamado_tipo_chamado_tipo1` FOREIGN KEY (`id_chamado_tipo`) REFERENCES `chamado_tipo` (`id_chamado_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setor_has_chamado_tipo_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado_tipo_setor`
--

LOCK TABLES `chamado_tipo_setor` WRITE;
/*!40000 ALTER TABLE `chamado_tipo_setor` DISABLE KEYS */;
INSERT INTO `chamado_tipo_setor` VALUES (1,1);
/*!40000 ALTER TABLE `chamado_tipo_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnh_categoria`
--

DROP TABLE IF EXISTS `cnh_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cnh_categoria` (
  `id_cnh_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cnh_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnh_categoria`
--

LOCK TABLES `cnh_categoria` WRITE;
/*!40000 ALTER TABLE `cnh_categoria` DISABLE KEYS */;
INSERT INTO `cnh_categoria` VALUES (2,'A','A'),(3,'B','B'),(4,'AB','AB'),(5,'C','C'),(6,'D','D'),(7,'E','E'),(8,'AC','AC'),(9,'AD','AD'),(10,'AE','AE');
/*!40000 ALTER TABLE `cnh_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combustivel`
--

DROP TABLE IF EXISTS `combustivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combustivel` (
  `id_combustivel` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_combustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combustivel`
--

LOCK TABLES `combustivel` WRITE;
/*!40000 ALTER TABLE `combustivel` DISABLE KEYS */;
INSERT INTO `combustivel` VALUES (1,'GS','GASOLINA'),(2,'OD','DIESEL'),(3,'AL','ALCOOL'),(5,'FL','FLEX'),(6,'GA','GAS'),(7,'*****','*********'),(8,'00','ALCO/GASOL'),(9,'01','ETANOL/GASOLINA'),(10,'A/G','ALCOOL/GAS NATURAL'),(11,'E.G.','ETA/GAS');
/*!40000 ALTER TABLE `combustivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_info` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `id_comentario_status` int(11) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentario_info1_idx` (`id_info`),
  KEY `fk_comentario_comentario_status1_idx` (`id_comentario_status`),
  CONSTRAINT `fk_comentario_comentario_status1` FOREIGN KEY (`id_comentario_status`) REFERENCES `comentario_status` (`id_comentario_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_info1` FOREIGN KEY (`id_info`) REFERENCES `info` (`id_info`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario_status`
--

DROP TABLE IF EXISTS `comentario_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario_status` (
  `id_comentario_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_comentario_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_status`
--

LOCK TABLES `comentario_status` WRITE;
/*!40000 ALTER TABLE `comentario_status` DISABLE KEYS */;
INSERT INTO `comentario_status` VALUES (1,'A','AGUARDANDO CONFIRMAÇÃO'),(2,'P','PERMITIDO'),(3,'N','NEGADO');
/*!40000 ALTER TABLE `comentario_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concessao`
--

DROP TABLE IF EXISTS `concessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concessao` (
  `id_concessao` int(11) NOT NULL AUTO_INCREMENT,
  `concessao_data` date DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `decreto` varchar(50) DEFAULT NULL,
  `processo_numero` varchar(50) DEFAULT NULL,
  `processo_ano` int(11) DEFAULT NULL,
  `id_concessao_tipo` int(11) NOT NULL,
  `id_concessao_validade` int(11) NOT NULL,
  PRIMARY KEY (`id_concessao`),
  KEY `fk_concessao_concessao_tipo1_idx` (`id_concessao_tipo`),
  KEY `fk_concessao_concessao_validade1_idx` (`id_concessao_validade`),
  CONSTRAINT `fk_concessao_concessao_tipo1` FOREIGN KEY (`id_concessao_tipo`) REFERENCES `concessao_tipo` (`id_concessao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_concessao_concessao_validade1` FOREIGN KEY (`id_concessao_validade`) REFERENCES `concessao_validade` (`id_concessao_validade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1768 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concessao`
--

LOCK TABLES `concessao` WRITE;
/*!40000 ALTER TABLE `concessao` DISABLE KEYS */;
INSERT INTO `concessao` VALUES (1766,'2019-02-13','00101','00101','001',2010,4,2),(1767,'2019-02-13','001','929292','9911',2018,1,2);
/*!40000 ALTER TABLE `concessao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concessao_tipo`
--

DROP TABLE IF EXISTS `concessao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concessao_tipo` (
  `id_concessao_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_concessao_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='P - PRÓPRIA\nI - INTRANSFERÍVEL\nU - USO DEFINITIVO\nC - CONVEN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concessao_tipo`
--

LOCK TABLES `concessao_tipo` WRITE;
/*!40000 ALTER TABLE `concessao_tipo` DISABLE KEYS */;
INSERT INTO `concessao_tipo` VALUES (1,'P','Própria'),(2,'I','Intransferível'),(3,'U','Uso Definitivo'),(4,'C','Convencional');
/*!40000 ALTER TABLE `concessao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concessao_validade`
--

DROP TABLE IF EXISTS `concessao_validade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concessao_validade` (
  `id_concessao_validade` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `validade_meses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_concessao_validade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concessao_validade`
--

LOCK TABLES `concessao_validade` WRITE;
/*!40000 ALTER TABLE `concessao_validade` DISABLE KEYS */;
INSERT INTO `concessao_validade` VALUES (2,'I','Indeterminada',0),(3,'3A','03 Anos',1095),(4,'1A','01 Ano',365),(5,'2A','20 ANOS',240);
/*!40000 ALTER TABLE `concessao_validade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cor`
--

DROP TABLE IF EXISTS `cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor` (
  `id_cor` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cor`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor`
--

LOCK TABLES `cor` WRITE;
/*!40000 ALTER TABLE `cor` DISABLE KEYS */;
INSERT INTO `cor` VALUES (3,'PRATA'),(4,'Preto'),(5,'MARRON'),(6,'Vermelho'),(7,'BRANCA'),(8,'AZUL'),(9,'CINZA'),(10,'VERDE'),(11,'AMARELO'),(12,'LARANJA'),(13,'BEGE'),(14,'DOURADA'),(15,'VERMELHO ALPINE'),(16,'VERMELHA'),(17,'PRETA'),(18,'BRANCO BANCHISA'),(19,'INDEFINIDA'),(20,'ROXO'),(21,'VERMELHO TORNADO'),(22,'BRANCO CRISTAL'),(23,'CINZA CROMO'),(25,'GRENA'),(26,'BRANCO MAHLER'),(27,'AMARELA'),(28,'VERMELHO LYRA'),(29,'PRATA BARI'),(30,'CINZA SCANDIUM'),(31,'PRATA ENSEADA'),(32,'PRATA POLARIS'),(34,'PRETO NINJA'),(35,'PRETO VULCANO'),(36,'BRANCO GEADA'),(37,'VERMELHO FLASH'),(39,'BRANCO SUMMIT'),(40,'VERMELHO PEPPER'),(41,'ROXA');
/*!40000 ALTER TABLE `cor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial`
--

DROP TABLE IF EXISTS `credencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial` (
  `id_credencial` int(11) NOT NULL AUTO_INCREMENT,
  `id_credencial_tipo` int(11) NOT NULL,
  `credencial_data` date DEFAULT NULL,
  `credencial_hora` time DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `id_credencial_status` int(11) NOT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  `id_pessoa_fisica_responsavel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_credencial`),
  KEY `fk_credencial_credencial_tipo1_idx` (`id_credencial_tipo`),
  KEY `fk_credencial_credencial_status1_idx` (`id_credencial_status`),
  KEY `fk_credencial_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_credencial_pessoa_fisica2_idx` (`id_pessoa_fisica_responsavel`),
  CONSTRAINT `fk_credencial_credencial_status1` FOREIGN KEY (`id_credencial_status`) REFERENCES `credencial_status` (`id_credencial_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_credencial_credencial_tipo1` FOREIGN KEY (`id_credencial_tipo`) REFERENCES `credencial_tipo` (`id_credencial_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_credencial_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_credencial_pessoa_fisica2` FOREIGN KEY (`id_pessoa_fisica_responsavel`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial`
--

LOCK TABLES `credencial` WRITE;
/*!40000 ALTER TABLE `credencial` DISABLE KEYS */;
INSERT INTO `credencial` VALUES (77,1,'2019-02-14','13:00:51',2019,1,'2020-02-14',2,5334,NULL);
/*!40000 ALTER TABLE `credencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial_ocorrencia`
--

DROP TABLE IF EXISTS `credencial_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial_ocorrencia` (
  `id_credencial_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_credencial_ocorrencia_tipo` int(11) NOT NULL,
  `id_credencial` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `ocorrencia_data` date DEFAULT NULL,
  `ocorrencia_hora` time DEFAULT NULL,
  `obs` text DEFAULT NULL,
  PRIMARY KEY (`id_credencial_ocorrencia`),
  KEY `fk_credencial_ocorrencia_credencial_ocorrencia_tipo1_idx` (`id_credencial_ocorrencia_tipo`),
  KEY `fk_credencial_ocorrencia_credencial1_idx` (`id_credencial`),
  KEY `fk_credencial_ocorrencia_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_credencial_ocorrencia_credencial1` FOREIGN KEY (`id_credencial`) REFERENCES `credencial` (`id_credencial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_credencial_ocorrencia_credencial_ocorrencia_tipo1` FOREIGN KEY (`id_credencial_ocorrencia_tipo`) REFERENCES `credencial_ocorrencia_tipo` (`id_credencial_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_credencial_ocorrencia_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial_ocorrencia`
--

LOCK TABLES `credencial_ocorrencia` WRITE;
/*!40000 ALTER TABLE `credencial_ocorrencia` DISABLE KEYS */;
INSERT INTO `credencial_ocorrencia` VALUES (170,1,77,129,'2019-02-14','13:00:51',NULL),(171,2,77,129,'2019-02-14','13:00:51',NULL);
/*!40000 ALTER TABLE `credencial_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `credencial_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial_ocorrencia_tipo` (
  `id_credencial_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_credencial_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial_ocorrencia_tipo`
--

LOCK TABLES `credencial_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `credencial_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `credencial_ocorrencia_tipo` VALUES (1,'C','CRIAÇÃO'),(2,'D','DEFERIMENTO'),(3,'I','INDEFERIMENTO'),(4,'CA','CANCELAMENTO DE ANÁLISE'),(5,'R','RENOVAÇÃO');
/*!40000 ALTER TABLE `credencial_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial_status`
--

DROP TABLE IF EXISTS `credencial_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial_status` (
  `id_credencial_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_credencial_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial_status`
--

LOCK TABLES `credencial_status` WRITE;
/*!40000 ALTER TABLE `credencial_status` DISABLE KEYS */;
INSERT INTO `credencial_status` VALUES (1,'P','PENDENTE'),(2,'D','DEFERIDO'),(3,'I','INDEFERIDO');
/*!40000 ALTER TABLE `credencial_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial_tipo`
--

DROP TABLE IF EXISTS `credencial_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credencial_tipo` (
  `id_credencial_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_credencial_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial_tipo`
--

LOCK TABLES `credencial_tipo` WRITE;
/*!40000 ALTER TABLE `credencial_tipo` DISABLE KEYS */;
INSERT INTO `credencial_tipo` VALUES (1,'I','IDOSO'),(2,'D','DEFICIENTE');
/*!40000 ALTER TABLE `credencial_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_tipo`
--

DROP TABLE IF EXISTS `dia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia_tipo` (
  `id_dia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(1) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_dia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='U - ÚTIL\nS - SÁBADO\nD - DOMINGO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_tipo`
--

LOCK TABLES `dia_tipo` WRITE;
/*!40000 ALTER TABLE `dia_tipo` DISABLE KEYS */;
INSERT INTO `dia_tipo` VALUES (1,'U','UTIL'),(2,'S','SÁBADO'),(3,'D','DOMINGO');
/*!40000 ALTER TABLE `dia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento_tipo` int(11) NOT NULL,
  `data_criacao` date DEFAULT NULL,
  `hora_criacao` time DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `id_documento_status` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `tipo_interessado` char(1) DEFAULT NULL COMMENT 'P - PESSOA FÍSICA\nF - FUNCIONÁRIO\nS - SETOR',
  `id_interessado` int(11) DEFAULT NULL,
  `id_setor_procedencia` int(11) NOT NULL,
  `id_documento_modo` int(11) NOT NULL,
  `id_setor_atual` int(11) DEFAULT NULL,
  `id_prioridade` int(11) NOT NULL,
  `data_setor_atual` date DEFAULT NULL,
  `localizacao_fisica` text DEFAULT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `fk_documento_documento_tipo1_idx` (`id_documento_tipo`),
  KEY `fk_documento_documento_status1_idx` (`id_documento_status`),
  KEY `fk_documento_funcionario1_idx` (`id_funcionario`),
  KEY `fk_documento_setor1_idx` (`id_setor`),
  KEY `fk_documento_setor2_idx` (`id_setor_procedencia`),
  KEY `fk_documento_documento_modo1_idx` (`id_documento_modo`),
  KEY `fk_documento_prioridade1_idx` (`id_prioridade`),
  CONSTRAINT `fk_documento_documento_modo1` FOREIGN KEY (`id_documento_modo`) REFERENCES `documento_modo` (`id_documento_modo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_documento_status1` FOREIGN KEY (`id_documento_status`) REFERENCES `documento_status` (`id_documento_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_documento_tipo1` FOREIGN KEY (`id_documento_tipo`) REFERENCES `documento_tipo` (`id_documento_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_prioridade1` FOREIGN KEY (`id_prioridade`) REFERENCES `prioridade` (`id_prioridade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_documento_setor2` FOREIGN KEY (`id_setor_procedencia`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (33,1,'2019-02-14','12:22:08','001',2019,'teste',1,132,8,'S',8,2,1,8,1,'2019-02-14',NULL);
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_modo`
--

DROP TABLE IF EXISTS `documento_modo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_modo` (
  `id_documento_modo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_documento_modo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='N - NORMAL\nC - CIRCULAR';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_modo`
--

LOCK TABLES `documento_modo` WRITE;
/*!40000 ALTER TABLE `documento_modo` DISABLE KEYS */;
INSERT INTO `documento_modo` VALUES (1,'N','NORMAL'),(2,'C','CIRCULAR');
/*!40000 ALTER TABLE `documento_modo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_ref`
--

DROP TABLE IF EXISTS `documento_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_ref` (
  `id_documento_ref` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(1) DEFAULT NULL COMMENT 'F - FUNCIONÁRIO\nD - DOCUMENTO\nA - ARQUIVO\nN - ANEXO\nO - ORIGINAL',
  `chave` varchar(45) DEFAULT NULL,
  `id_documento` int(11) NOT NULL,
  PRIMARY KEY (`id_documento_ref`),
  KEY `fk_documento_ref_documento1_idx` (`id_documento`),
  CONSTRAINT `fk_documento_ref_documento1` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_ref`
--

LOCK TABLES `documento_ref` WRITE;
/*!40000 ALTER TABLE `documento_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `documento_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_status`
--

DROP TABLE IF EXISTS `documento_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_status` (
  `id_documento_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_documento_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='E - EM TRAMITE\nR - AGUARDANDO RECEBIMENTO\nA - ARQUIVADO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_status`
--

LOCK TABLES `documento_status` WRITE;
/*!40000 ALTER TABLE `documento_status` DISABLE KEYS */;
INSERT INTO `documento_status` VALUES (1,'E','EM TRÂMITE'),(2,'R','AGUARDANDO RECEBIMENTO'),(3,'A','ARQUIVADO'),(4,'V','VINCULADO');
/*!40000 ALTER TABLE `documento_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_tipo`
--

DROP TABLE IF EXISTS `documento_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_tipo` (
  `id_documento_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_documento_tipo_target` int(11) NOT NULL,
  `possui_numero` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_documento_tipo`),
  KEY `fk_documento_tipo_documento_tipo_target1_idx` (`id_documento_tipo_target`),
  CONSTRAINT `fk_documento_tipo_documento_tipo_target1` FOREIGN KEY (`id_documento_tipo_target`) REFERENCES `documento_tipo_target` (`id_documento_tipo_target`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='P - PROCESSO\nM - MEMORANDO\netc...';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_tipo`
--

LOCK TABLES `documento_tipo` WRITE;
/*!40000 ALTER TABLE `documento_tipo` DISABLE KEYS */;
INSERT INTO `documento_tipo` VALUES (1,'M','MEMORANDO',1,'N'),(2,'RG','CARTEIRA DE IDENTIDADE',2,'N'),(3,'O','OFÍCIO',1,'S'),(4,'RJ','REQUERIMENTO JARI',1,'S'),(5,'RR','TRANSFERENCIA DE PLACA',3,'N'),(6,'R','REQUERIMENTO',1,'N');
/*!40000 ALTER TABLE `documento_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_tipo_target`
--

DROP TABLE IF EXISTS `documento_tipo_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_tipo_target` (
  `id_documento_tipo_target` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_documento_tipo_target`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='D - DOCUMENTO NORMAL\nA - DOCUMENTO ADMINISTRATIVO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_tipo_target`
--

LOCK TABLES `documento_tipo_target` WRITE;
/*!40000 ALTER TABLE `documento_tipo_target` DISABLE KEYS */;
INSERT INTO `documento_tipo_target` VALUES (1,'D','DOCUMENTO NORMAL'),(2,'A','DOCUMENTO ADMINISTRATIVO'),(3,'P','DOCUMENTO PESSOAL'),(4,'W','DOCUMENTO PORTAL');
/*!40000 ALTER TABLE `documento_tipo_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_bairro` int(11) NOT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(40) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_endereco_bairro1_idx` (`id_bairro`),
  CONSTRAINT `fk_endereco_bairro1` FOREIGN KEY (`id_bairro`) REFERENCES `bairro` (`id_bairro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6829 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (6828,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (1,'INDEFINIDO'),(2,'SOLTEIRO(A)'),(3,'CASADO(A)'),(4,'UNIÃO ESTÁVEL'),(5,'VIÚVO(A)'),(6,'SEPARADO(A)'),(7,'DIVORCIADO(A)'),(8,'SOLTEIRO'),(9,'TESTANDO'),(10,'TESTE DE ESTADO CIVIL'),(11,'SOLTEIRA'),(12,'ALTAMIRA');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricante` (
  `id_fabricante` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'HONDA'),(3,'FIAT'),(4,'CHEVROLET'),(5,'Yamaha'),(7,'Volkswagem'),(8,'VW'),(9,'GM'),(10,'FORD'),(11,'RENAULT'),(12,'TOYOTA'),(13,'NISSAN'),(14,'KASINSKI'),(15,'IMP'),(16,'SUNDOWN'),(17,'AGRALE'),(18,'MMC'),(19,'MERCEDES BENZ'),(20,'SEAT '),(21,'KIA'),(22,'SCANIA '),(23,'REB'),(24,'OUTROS'),(25,'REB/ RANDON'),(26,'VOLVO'),(27,'SR/NOMA '),(28,'SR/ FACCHINI '),(29,'GURGEL'),(30,'PEUGEOT'),(31,'DODGE'),(32,'SUZUKI'),(33,'X'),(34,'MITSUBISHI'),(35,'TIANJING'),(36,'FACHINNI S/A'),(37,'AUDI'),(38,'IVECO'),(39,'NAVISTAR'),(40,'CITROEN'),(41,'SC'),(42,'GUERRA'),(43,'R/ROSSETTI DOLLY 02'),(44,'DAFRA'),(45,'HYUNDAI'),(46,'MARCOPOLO'),(47,'708400'),(48,'SR'),(49,'I'),(50,'R/ROSSETTI'),(51,'R'),(52,'SR/LIBRELATO SRBA 3E'),(53,'MON'),(54,'MASCARELLO CARROCERIAS E ONIBUS LTDA'),(55,'GENERAL MOTORS DO BRASIL LTDA'),(56,'BETRAL'),(57,'DANFE'),(58,'SPIN 1.8L MT LTZ'),(59,'IVECOFIAT'),(60,'GMC'),(61,'RANDON'),(62,'SINOTRUK'),(63,'INTERNATIONAL'),(64,'EFFA'),(65,'M.B'),(66,'M.BENZ');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) DEFAULT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `data_ingresso` date DEFAULT NULL,
  `id_funcionario_situacao` int(11) NOT NULL,
  `id_funcionario_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `fk_funcionario_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_funcionario_cargo1_idx` (`id_cargo`),
  KEY `fk_funcionario_funcionario_situacao1_idx` (`id_funcionario_situacao`),
  KEY `fk_funcionario_funcionario_tipo1_idx` (`id_funcionario_tipo`),
  CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_funcionario_situacao1` FOREIGN KEY (`id_funcionario_situacao`) REFERENCES `funcionario_situacao` (`id_funcionario_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_funcionario_tipo1` FOREIGN KEY (`id_funcionario_tipo`) REFERENCES `funcionario_tipo` (`id_funcionario_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (132,'00001',6219,2,'2019-02-01',1,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_funcao`
--

DROP TABLE IF EXISTS `funcionario_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_funcao` (
  `id_funcionario_funcao` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `id_funcionario_funcao_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionario_funcao`),
  KEY `fk_funcionario_funcao_funcionario_funcao_tipo1_idx` (`id_funcionario_funcao_tipo`),
  CONSTRAINT `fk_funcionario_funcao_funcionario_funcao_tipo1` FOREIGN KEY (`id_funcionario_funcao_tipo`) REFERENCES `funcionario_funcao_tipo` (`id_funcionario_funcao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_funcao`
--

LOCK TABLES `funcionario_funcao` WRITE;
/*!40000 ALTER TABLE `funcionario_funcao` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_funcao_tipo`
--

DROP TABLE IF EXISTS `funcionario_funcao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_funcao_tipo` (
  `id_funcionario_funcao_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_funcao_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='reitor, presidente, pró-reitor, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_funcao_tipo`
--

LOCK TABLES `funcionario_funcao_tipo` WRITE;
/*!40000 ALTER TABLE `funcionario_funcao_tipo` DISABLE KEYS */;
INSERT INTO `funcionario_funcao_tipo` VALUES (1,'G','GERENTE'),(2,'D','CHEFE DE DEPARTAMENTO'),(3,'I','CHEFE DE DIVISÃO'),(4,'S','CHEFE DE SETOR'),(5,'C','CHEFE DE SEÇÃO');
/*!40000 ALTER TABLE `funcionario_funcao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_ocorrencia`
--

DROP TABLE IF EXISTS `funcionario_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_ocorrencia` (
  `id_funcionario_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario_ocorrencia_tipo` int(11) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `id_funcionario` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionario_ocorrencia`),
  KEY `fk_funcionario_ocorrencia_funcionario_ocorrencia_tipo1_idx` (`id_funcionario_ocorrencia_tipo`),
  KEY `fk_funcionario_ocorrencia_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_funcionario_ocorrencia_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_ocorrencia_funcionario_ocorrencia_tipo1` FOREIGN KEY (`id_funcionario_ocorrencia_tipo`) REFERENCES `funcionario_ocorrencia_tipo` (`id_funcionario_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_ocorrencia`
--

LOCK TABLES `funcionario_ocorrencia` WRITE;
/*!40000 ALTER TABLE `funcionario_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `funcionario_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_ocorrencia_tipo` (
  `id_funcionario_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='F - FÉRIAS \nL - LICENÇA\nE.T.C.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_ocorrencia_tipo`
--

LOCK TABLES `funcionario_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `funcionario_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `funcionario_ocorrencia_tipo` VALUES (1,'F','FÉRIAS'),(2,'L','LICENÇA');
/*!40000 ALTER TABLE `funcionario_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_situacao`
--

DROP TABLE IF EXISTS `funcionario_situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_situacao` (
  `id_funcionario_situacao` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_situacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_situacao`
--

LOCK TABLES `funcionario_situacao` WRITE;
/*!40000 ALTER TABLE `funcionario_situacao` DISABLE KEYS */;
INSERT INTO `funcionario_situacao` VALUES (1,'A','ATIVO'),(2,'I','INATIVO');
/*!40000 ALTER TABLE `funcionario_situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_tipo`
--

DROP TABLE IF EXISTS `funcionario_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_tipo` (
  `id_funcionario_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_tipo`
--

LOCK TABLES `funcionario_tipo` WRITE;
/*!40000 ALTER TABLE `funcionario_tipo` DISABLE KEYS */;
INSERT INTO `funcionario_tipo` VALUES (1,'CONT','CONTRATO'),(2,'EF','EFETIVO'),(3,'CC','CARGO COMISSIONADO');
/*!40000 ALTER TABLE `funcionario_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `padrao` char(1) DEFAULT 'N',
  `id_grupo_inferior` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `fk_grupo_grupo1_idx` (`id_grupo_inferior`),
  CONSTRAINT `fk_grupo_grupo1` FOREIGN KEY (`id_grupo_inferior`) REFERENCES `grupo` (`id_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'ADMINISTRADOR','N',NULL),(2,'USUARIO','S',NULL),(3,'COORDENADOR LOTE','N',NULL),(4,'DTU','N',2),(5,'DIAF','N',2),(6,'FUNCIONÁRIOS','N',2);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icone`
--

DROP TABLE IF EXISTS `icone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icone` (
  `id_icone` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `id_icone_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_icone`),
  KEY `fk_icone_icone_tipo1_idx` (`id_icone_tipo`),
  CONSTRAINT `fk_icone_icone_tipo1` FOREIGN KEY (`id_icone_tipo`) REFERENCES `icone_tipo` (`id_icone_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icone`
--

LOCK TABLES `icone` WRITE;
/*!40000 ALTER TABLE `icone` DISABLE KEYS */;
INSERT INTO `icone` VALUES (1,'icon-angle-left',3),(2,'icon-angle-right',3),(3,'icon-angle-up',3),(4,'icon-angle-down',3),(5,'icon-arrow-down',3),(6,'icon-arrow-left',3),(7,'icon-arrow-right',3),(8,'icon-arrow-up',3),(9,'icon-caret-down',3),(10,'icon-caret-left',3),(11,'icon-caret-right',3),(12,'icon-caret-up',3),(13,'icon-chevron-down',3),(14,'icon-chevron-left',3),(15,'icon-chevron-right',3),(16,'icon-chevron-up',3),(17,'icon-circle-arrow-down',3),(18,'icon-circle-arrow-left',3),(19,'icon-circle-arrow-right',3),(20,'icon-circle-arrow-up',3),(21,'icon-double-angle-left',3),(22,'icon-double-angle-right',3),(23,'icon-double-angle-up',3),(24,'icon-double-angle-down',3),(25,'icon-hand-down',3),(26,'icon-hand-left',3),(27,'icon-hand-right',3),(28,'icon-hand-up',3),(29,'icon-circle',3),(30,'icon-circle-blank',3),(31,'icon-ambulance',6),(32,'icon-beaker',6),(33,'icon-h-sign',6),(34,'icon-hospital',6),(35,'icon-medkit',6),(36,'icon-plus-sign-alt',6),(37,'icon-stethoscope',6),(38,'icon-user-md',6),(39,'icon-phone',5),(40,'icon-phone-sign',5),(41,'icon-facebook',5),(42,'icon-facebook-sign',5),(43,'icon-twitter',5),(44,'icon-twitter-sign',5),(45,'icon-github',5),(46,'icon-github-alt',5),(47,'icon-github-sign',5),(48,'icon-linkedin',5),(49,'icon-linkedin-sign',5),(50,'icon-pinterest',5),(51,'icon-pinterest-sign',5),(52,'icon-google-plus',5),(53,'icon-google-plus-sign',5),(54,'icon-sign-blank',5),(55,'icon-file',2),(56,'icon-file-alt',2),(57,'icon-cut',2),(58,'icon-copy',2),(59,'icon-paste',2),(60,'icon-save',2),(61,'icon-undo',2),(62,'icon-repeat',2),(63,'icon-text-height',2),(64,'icon-text-width',2),(65,'icon-align-left',2),(66,'icon-align-center',2),(67,'icon-align-right',2),(68,'icon-align-justify',2),(69,'icon-indent-left',2),(70,'icon-indent-right',2),(71,'icon-font',2),(72,'icon-bold',2),(73,'icon-italic',2),(74,'icon-strikethrough',2),(75,'icon-underline',2),(76,'icon-link',2),(77,'icon-paper-clip',2),(78,'icon-columns',2),(79,'icon-table',2),(80,'icon-th-large',2),(81,'icon-th',2),(82,'icon-th-list',2),(83,'icon-list',2),(84,'icon-list-ol',2),(85,'icon-list-ul',2),(86,'icon-list-alt',2),(87,'icon-play-circle',4),(88,'icon-play',4),(89,'icon-pause',4),(90,'icon-stop',4),(91,'icon-step-backward',4),(92,'icon-fast-backward',4),(93,'icon-backward',4),(94,'icon-forward',4),(95,'icon-fast-forward',4),(96,'icon-step-forward',4),(97,'icon-eject',4),(98,'icon-fullscreen',4),(99,'icon-resize-full',4),(100,'icon-resize-small',4),(101,'icon-adjust',1),(102,'icon-asterisk',1),(103,'icon-ban-circle',1),(104,'icon-bar-chart',1),(105,'icon-barcode',1),(106,'icon-beer',1),(107,'icon-bell',1),(108,'icon-bell-alt',1),(109,'icon-bolt',1),(110,'icon-book',1),(111,'icon-bookmark',1),(112,'icon-bookmark-empty',1),(113,'icon-briefcase',1),(114,'icon-bullhorn',1),(115,'icon-calendar',1),(116,'icon-camera',1),(117,'icon-camera-retro',1),(118,'icon-certificate',1),(119,'icon-check',1),(120,'icon-check-empty',1),(121,'icon-cloud',1),(122,'icon-cloud-download',1),(123,'icon-cloud-upload',1),(124,'icon-coffee',1),(125,'icon-cog',1),(126,'icon-cogs',1),(127,'icon-comment',1),(128,'icon-comment-alt',1),(129,'icon-comments',1),(130,'icon-comments-alt',1),(131,'icon-credit-card',1),(132,'icon-dashboard',1),(133,'icon-desktop',1),(134,'icon-download',1),(135,'icon-download-alt',1),(136,'icon-edit',1),(137,'icon-envelope',1),(138,'icon-envelope-alt',1),(139,'icon-exchange',1),(140,'icon-exclamation-sign',1),(141,'icon-external-link',1),(142,'icon-eye-close',1),(143,'icon-eye-open',1),(144,'icon-facetime-video',1),(145,'icon-fighter-jet',1),(146,'icon-film',1),(147,'icon-filter',1),(148,'icon-fire',1),(149,'icon-flag',1),(150,'icon-folder-close',1),(151,'icon-folder-open',1),(152,'icon-folder-close-alt',1),(153,'icon-folder-open-alt',1),(154,'icon-food',1),(155,'icon-gift',1),(156,'icon-glass',1),(157,'icon-globe',1),(158,'icon-group',1),(159,'icon-hdd',1),(160,'icon-headphones',1),(161,'icon-heart',1),(162,'icon-heart-empty',1),(163,'icon-home',1),(164,'icon-inbox',1),(165,'icon-info-sign',1),(166,'icon-key',1),(167,'icon-leaf',1),(168,'icon-laptop',1),(169,'icon-legal',1),(170,'icon-lemon',1),(171,'icon-lightbulb',1),(172,'icon-lock',1),(173,'icon-unlock',1),(174,'icon-magic',1),(175,'icon-magnet',1),(176,'icon-map-marker',1),(177,'icon-minus',1),(178,'icon-minus-sign',1),(179,'icon-mobile-phone',1),(180,'icon-money',1),(181,'icon-move',1),(182,'icon-music',1),(183,'icon-off',1),(184,'icon-ok',1),(185,'icon-ok-circle',1),(186,'icon-ok-sign',1),(187,'icon-pencil',1),(188,'icon-picture',1),(189,'icon-plane',1),(190,'icon-plus',1),(191,'icon-plus-sign',1),(192,'icon-print',1),(193,'icon-pushpin',1),(194,'icon-qrcode',1),(195,'icon-question-sign',1),(196,'icon-quote-left',1),(197,'icon-quote-right',1),(198,'icon-random',1),(199,'icon-refresh',1),(200,'icon-remove',1),(201,'icon-remove-circle',1),(202,'icon-remove-sign',1),(203,'icon-reorder',1),(204,'icon-reply',1),(205,'icon-resize-horizontal',1),(206,'icon-resize-vertical',1),(207,'icon-retweet',1),(208,'icon-road',1),(209,'icon-rss',1),(210,'icon-screenshot',1),(211,'icon-search',1),(212,'icon-share',1),(213,'icon-share-alt',1),(214,'icon-shopping-cart',1),(215,'icon-signal',1),(216,'icon-signin',1),(217,'icon-signout',1),(218,'icon-sitemap',1),(219,'icon-sort',1),(220,'icon-sort-down',1),(221,'icon-sort-up',1),(222,'icon-spinner',1),(223,'icon-star',1),(224,'icon-star-empty',1),(225,'icon-star-half',1),(226,'icon-tablet',1),(227,'icon-tag',1),(228,'icon-tags',1),(229,'icon-tasks',1),(230,'icon-thumbs-down',1),(231,'icon-thumbs-up',1),(232,'icon-time',1),(233,'icon-tint',1),(234,'icon-trash',1),(235,'icon-trophy',1),(236,'icon-truck',1),(237,'icon-umbrella',1),(238,'icon-upload',1),(239,'icon-upload-alt',1),(240,'icon-user',1),(241,'icon-volume-off',1),(242,'icon-volume-down',1),(243,'icon-volume-up',1),(244,'icon-warning-sign',1),(245,'icon-wrench',1),(246,'icon-zoom-in',1),(247,'icon-zoom-out',1);
/*!40000 ALTER TABLE `icone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icone_tipo`
--

DROP TABLE IF EXISTS `icone_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icone_tipo` (
  `id_icone_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_icone_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icone_tipo`
--

LOCK TABLES `icone_tipo` WRITE;
/*!40000 ALTER TABLE `icone_tipo` DISABLE KEYS */;
INSERT INTO `icone_tipo` VALUES (1,'WEB','Aplicações Web'),(2,'TEXT','Ícones de Edição de Texto'),(3,'DIRE','Ícones de Direção'),(4,'VIDE','Ícones de Vídeo'),(5,'SOCI','Ícones de Redes Sociais'),(6,'MED','Ícones Médicos');
/*!40000 ALTER TABLE `icone_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `fonte` varchar(100) DEFAULT NULL,
  `id_info_tipo` int(11) NOT NULL,
  `id_info_status` int(11) NOT NULL,
  `id_arquivo` int(11) DEFAULT NULL,
  `destaque` char(1) DEFAULT NULL,
  `comentario` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_info`),
  KEY `fk_info_info_tipo1_idx` (`id_info_tipo`),
  KEY `fk_info_info_status1_idx` (`id_info_status`),
  CONSTRAINT `fk_info_info_status1` FOREIGN KEY (`id_info_status`) REFERENCES `info_status` (`id_info_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_info_info_tipo1` FOREIGN KEY (`id_info_tipo`) REFERENCES `info_tipo` (`id_info_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_bancaria`
--

DROP TABLE IF EXISTS `info_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_bancaria` (
  `id_info_bancaria` int(11) NOT NULL AUTO_INCREMENT,
  `id_banco` int(11) NOT NULL,
  `id_info_bancaria_tipo` int(11) NOT NULL,
  `agencia` varchar(20) DEFAULT NULL,
  `agencia_dv` varchar(3) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `conta_dv` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_info_bancaria`),
  KEY `fk_info_bancaria_banco1_idx` (`id_banco`),
  KEY `fk_info_bancaria_info_bancaria_tipo1_idx` (`id_info_bancaria_tipo`),
  CONSTRAINT `fk_info_bancaria_banco1` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_info_bancaria_info_bancaria_tipo1` FOREIGN KEY (`id_info_bancaria_tipo`) REFERENCES `info_bancaria_tipo` (`id_info_bancaria_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_bancaria`
--

LOCK TABLES `info_bancaria` WRITE;
/*!40000 ALTER TABLE `info_bancaria` DISABLE KEYS */;
INSERT INTO `info_bancaria` VALUES (16,1,1,'2825','8','373737','7');
/*!40000 ALTER TABLE `info_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_bancaria_ref`
--

DROP TABLE IF EXISTS `info_bancaria_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_bancaria_ref` (
  `id_info_bancaria_ref` int(11) NOT NULL AUTO_INCREMENT,
  `id_info_bancaria` int(11) NOT NULL,
  `tipo` varchar(5) DEFAULT NULL COMMENT 'P - PESSOA\nV - VÍNCULO\nB - BOLSISTA',
  `chave` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_info_bancaria_ref`),
  KEY `fk_info_bancaria_ref_info_bancaria1_idx` (`id_info_bancaria`),
  CONSTRAINT `fk_info_bancaria_ref_info_bancaria1` FOREIGN KEY (`id_info_bancaria`) REFERENCES `info_bancaria` (`id_info_bancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_bancaria_ref`
--

LOCK TABLES `info_bancaria_ref` WRITE;
/*!40000 ALTER TABLE `info_bancaria_ref` DISABLE KEYS */;
INSERT INTO `info_bancaria_ref` VALUES (14,16,'C',5);
/*!40000 ALTER TABLE `info_bancaria_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_bancaria_tipo`
--

DROP TABLE IF EXISTS `info_bancaria_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_bancaria_tipo` (
  `id_info_bancaria_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_info_bancaria_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_bancaria_tipo`
--

LOCK TABLES `info_bancaria_tipo` WRITE;
/*!40000 ALTER TABLE `info_bancaria_tipo` DISABLE KEYS */;
INSERT INTO `info_bancaria_tipo` VALUES (1,'C','CONTA CORRENTE'),(2,'P','POUPANÇA');
/*!40000 ALTER TABLE `info_bancaria_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_ref`
--

DROP TABLE IF EXISTS `info_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_ref` (
  `id_info_ref` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  `chave` int(11) DEFAULT NULL,
  `id_info` int(11) NOT NULL,
  PRIMARY KEY (`id_info_ref`),
  KEY `fk_info_ref_info1_idx` (`id_info`),
  CONSTRAINT `fk_info_ref_info1` FOREIGN KEY (`id_info`) REFERENCES `info` (`id_info`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='I-INFO\nM-MENU\nA-ARQUIVO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_ref`
--

LOCK TABLES `info_ref` WRITE;
/*!40000 ALTER TABLE `info_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_status`
--

DROP TABLE IF EXISTS `info_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_status` (
  `id_info_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_info_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='O-OCULTO\nP-PUBLICADO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_status`
--

LOCK TABLES `info_status` WRITE;
/*!40000 ALTER TABLE `info_status` DISABLE KEYS */;
INSERT INTO `info_status` VALUES (1,'O','OCULTO'),(2,'P','PUBLICADO');
/*!40000 ALTER TABLE `info_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_tipo`
--

DROP TABLE IF EXISTS `info_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_tipo` (
  `id_info_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `imagem` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_info_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='E-EVENTO\nN-NOTÍCIA\nI-INFORMACAO\nL-LICITAÇÃO\nG-GALERIA\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_tipo`
--

LOCK TABLES `info_tipo` WRITE;
/*!40000 ALTER TABLE `info_tipo` DISABLE KEYS */;
INSERT INTO `info_tipo` VALUES (1,'E','EVENTO','N'),(2,'N','NOTÍCIA','N'),(3,'I','INFORMAÇÃO','N'),(4,'L','LICITAÇÃO','N'),(5,'G','GALERIA','N');
/*!40000 ALTER TABLE `info_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infracao`
--

DROP TABLE IF EXISTS `infracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infracao` (
  `id_infracao` int(11) NOT NULL AUTO_INCREMENT,
  `id_amparo_legal` int(11) NOT NULL,
  `descricao` text DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  `codigo` varchar(4) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_infracao`),
  KEY `fk_amparo_legal_item_amparo_legal1_idx` (`id_amparo_legal`),
  KEY `fk_infracao_valor1_idx` (`id_valor`),
  CONSTRAINT `fk_amparo_legal_item_amparo_legal1` FOREIGN KEY (`id_amparo_legal`) REFERENCES `amparo_legal` (`id_amparo_legal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_infracao_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infracao`
--

LOCK TABLES `infracao` WRITE;
/*!40000 ALTER TABLE `infracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `infracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interdicao`
--

DROP TABLE IF EXISTS `interdicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interdicao` (
  `id_interdicao` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `informacoes` text DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  `isento` char(1) DEFAULT NULL,
  `isento_motivo` text DEFAULT NULL,
  PRIMARY KEY (`id_interdicao`),
  KEY `fk_interdicao_pessoa1_idx` (`id_pessoa`),
  CONSTRAINT `fk_interdicao_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interdicao`
--

LOCK TABLES `interdicao` WRITE;
/*!40000 ALTER TABLE `interdicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `interdicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linha`
--

DROP TABLE IF EXISTS `linha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linha` (
  `id_linha` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_linha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linha`
--

LOCK TABLES `linha` WRITE;
/*!40000 ALTER TABLE `linha` DISABLE KEYS */;
/*!40000 ALTER TABLE `linha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tabela` varchar(50) DEFAULT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `validador` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `id_log_operacao` int(11) NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `fk_log_log_operacao_idx` (`id_log_operacao`),
  CONSTRAINT `fk_log_log_operacao` FOREIGN KEY (`id_log_operacao`) REFERENCES `intranet_sttrans_log`.`log_operacao` (`id_log_operacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_campo`
--

DROP TABLE IF EXISTS `log_campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_campo` (
  `id_log_campo` int(11) NOT NULL AUTO_INCREMENT,
  `id_log` int(11) NOT NULL,
  `nome_campo` varchar(50) DEFAULT NULL,
  `valor_anterior` varchar(100) DEFAULT NULL,
  `valor_depois` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log_campo`),
  KEY `fk_log_campo_log1_idx` (`id_log`),
  CONSTRAINT `fk_log_campo_log1` FOREIGN KEY (`id_log`) REFERENCES `intranet_sttrans_log`.`log` (`id_log`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_campo`
--

LOCK TABLES `log_campo` WRITE;
/*!40000 ALTER TABLE `log_campo` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_operacao`
--

DROP TABLE IF EXISTS `log_operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_operacao` (
  `id_log_operacao` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(3) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_log_operacao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_operacao`
--

LOCK TABLES `log_operacao` WRITE;
/*!40000 ALTER TABLE `log_operacao` DISABLE KEYS */;
INSERT INTO `log_operacao` VALUES (1,'LOG','LOGIN'),(2,'INS','INSERIR'),(3,'ALT','ALTERAR'),(4,'EXC','EXCLUIR');
/*!40000 ALTER TABLE `log_operacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotacao`
--

DROP TABLE IF EXISTS `lotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotacao` (
  `id_lotacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `id_funcionario_funcao` int(11) DEFAULT NULL,
  `id_lotacao_tipo` int(11) NOT NULL,
  `data_inicial` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `chefe` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_lotacao`),
  KEY `fk_lotacao_funcionario1_idx` (`id_funcionario`),
  KEY `fk_lotacao_setor1_idx` (`id_setor`),
  KEY `fk_lotacao_funcionario_funcao1_idx` (`id_funcionario_funcao`),
  KEY `fk_lotacao_lotacao_tipo1_idx` (`id_lotacao_tipo`),
  CONSTRAINT `fk_lotacao_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lotacao_funcionario_funcao1` FOREIGN KEY (`id_funcionario_funcao`) REFERENCES `funcionario_funcao` (`id_funcionario_funcao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lotacao_lotacao_tipo1` FOREIGN KEY (`id_lotacao_tipo`) REFERENCES `lotacao_tipo` (`id_lotacao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lotacao_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotacao`
--

LOCK TABLES `lotacao` WRITE;
/*!40000 ALTER TABLE `lotacao` DISABLE KEYS */;
INSERT INTO `lotacao` VALUES (126,132,8,NULL,1,'2019-02-14',NULL,'N');
/*!40000 ALTER TABLE `lotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lotacao_tipo`
--

DROP TABLE IF EXISTS `lotacao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotacao_tipo` (
  `id_lotacao_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_lotacao_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='normal e provisória';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotacao_tipo`
--

LOCK TABLES `lotacao_tipo` WRITE;
/*!40000 ALTER TABLE `lotacao_tipo` DISABLE KEYS */;
INSERT INTO `lotacao_tipo` VALUES (1,'N','NORMAL'),(2,'P','PROVIS?RIA');
/*!40000 ALTER TABLE `lotacao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem` (
  `id_mensagem` int(11) NOT NULL AUTO_INCREMENT,
  `id_mensagem_tipo` int(11) NOT NULL,
  `assunto` varchar(60) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `chave_destino` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mensagem`),
  KEY `fk_mensagem_usuario1_idx` (`id_usuario`),
  KEY `fk_mensagem_mensagem_tipo1_idx` (`id_mensagem_tipo`),
  CONSTRAINT `fk_mensagem_mensagem_tipo1` FOREIGN KEY (`id_mensagem_tipo`) REFERENCES `mensagem_tipo` (`id_mensagem_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensagem_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem_tipo`
--

DROP TABLE IF EXISTS `mensagem_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem_tipo` (
  `id_mensagem_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` char(1) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mensagem_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='T - TODOS\nS - SETOR ATUAL E SUBORDINADOS\nA - SOMENTE SETOR A';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem_tipo`
--

LOCK TABLES `mensagem_tipo` WRITE;
/*!40000 ALTER TABLE `mensagem_tipo` DISABLE KEYS */;
INSERT INTO `mensagem_tipo` VALUES (1,'T','TODOS'),(2,'S','SETOR ATUAL E SUBORDINADO'),(3,'A','SOMENTE SETOR ATUAL'),(4,'P','PESSOAL'),(5,'E','SETOR');
/*!40000 ALTER TABLE `mensagem_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu_posicao` int(11) NOT NULL,
  `id_menu_tipo` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `id_menu_superior` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `fk_menu_menu_posicao1_idx` (`id_menu_posicao`),
  KEY `fk_menu_menu_tipo1_idx` (`id_menu_tipo`),
  CONSTRAINT `fk_menu_menu_posicao1` FOREIGN KEY (`id_menu_posicao`) REFERENCES `menu_posicao` (`id_menu_posicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_menu_menu_tipo1` FOREIGN KEY (`id_menu_tipo`) REFERENCES `menu_tipo` (`id_menu_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_posicao`
--

DROP TABLE IF EXISTS `menu_posicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_posicao` (
  `id_menu_posicao` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_menu_posicao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='S-SUPERIOR\nL-LATERAL\nR-RODAPÉ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_posicao`
--

LOCK TABLES `menu_posicao` WRITE;
/*!40000 ALTER TABLE `menu_posicao` DISABLE KEYS */;
INSERT INTO `menu_posicao` VALUES (1,'S','SUPERIOR'),(2,'L','LATERAL'),(3,'R','RODAPÉ');
/*!40000 ALTER TABLE `menu_posicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_tipo`
--

DROP TABLE IF EXISTS `menu_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_tipo` (
  `id_menu_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_menu_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_tipo`
--

LOCK TABLES `menu_tipo` WRITE;
/*!40000 ALTER TABLE `menu_tipo` DISABLE KEYS */;
INSERT INTO `menu_tipo` VALUES (1,'I','INTERNO'),(2,'E','EXTERNO'),(3,'N','INFORMAÇÃO');
/*!40000 ALTER TABLE `menu_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) DEFAULT NULL,
  `controller` varchar(60) DEFAULT NULL,
  `id_modulo_superior` int(11) DEFAULT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_modulo`),
  KEY `fk_modulo_modulo1_idx` (`id_modulo_superior`),
  CONSTRAINT `fk_modulo_modulo1` FOREIGN KEY (`id_modulo_superior`) REFERENCES `modulo` (`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'InÃ­cio','intranet',NULL,'',1,'','A'),(2,'ConfiguraÃ§Ãµes','',NULL,'',2,'','A'),(3,'MÃ³dulos','modulo',2,'icon-sitemap',4,'','A'),(4,'Grupos','grupo',2,'icon-group',5,NULL,'A'),(5,'UsuÃ¡rios','usuario',2,'icon-user',6,'','A'),(6,'Pessoal','',NULL,'',7,NULL,'A'),(7,'Intranet','',NULL,'',8,'','A'),(8,'FuncionÃ¡rios','funcionario',7,'icon-user-md',9,'','A'),(9,'Tabelas Auxiliares','',NULL,'',16,'','A'),(10,'Setores','setor',9,'icon-home',17,NULL,'A'),(11,'Cargos','cargo',9,'icon-stethoscope',18,NULL,'A'),(12,'FunÃ§Ãµes Gratificadas','funcionariofuncao',9,'icon-star-empty',19,'','A'),(13,'Log de OperaÃ§Ãµes','log',2,'icon-ambulance',21,'','A'),(14,'Dados Pessoais','pessoal',6,'icon-credit-card',22,NULL,'A'),(15,'Mensagens','mensagem',6,'icon-comments-alt',23,NULL,'A'),(16,'Documentos Administrativos','docadm',7,'icon-copy',10,NULL,'A'),(17,'Tipos de Documento','documentotipo',9,'icon-paste',30,NULL,'A'),(18,'Protocolo','documento',7,'icon-book',11,NULL,'A'),(19,'Tipo de OcorrÃªncias de FuncionÃ¡rio','funcionarioocorrenciatipo',9,'icon-time',32,'','A'),(20,'Chamados','chamado',7,'icon-ambulance',12,NULL,'A'),(21,'Tipo de Chamado','chamadotipo',9,'icon-warning-sign',33,NULL,'A'),(22,'Prioridades','prioridade',9,'icon-bell',34,NULL,'A'),(23,'ConfiguraÃ§Ãµes','config',2,'icon-adjust',20,'','A'),(24,'Tipos de RelatÃ³rio','relatoriotipo',9,'icon-print',35,'','A'),(25,'RelatÃ³rios','report',9,'icon-print',36,'','A'),(26,'RelatÃ³rios','relatorio',7,'icon-print',13,'','A'),(27,'Pacotes','pacote',2,'icon-folder-open-alt',3,NULL,'A'),(28,'Projetos e ConvÃªnios','',NULL,'',15,'','A'),(29,'VÃ­nculo','vinculo',28,'icon-th',38,'','A'),(31,'Tipos de VÃ­nculo','vinculotipo',9,'icon-list-ul',40,'','A'),(32,'Bancos','banco',9,'icon-money',41,NULL,'A'),(33,'Moedas','moeda',9,'icon-money',42,NULL,'A'),(34,'Ãcones','icone',9,'icon-picture',43,'','A'),(35,'Tipo de FuncionÃ¡rio','funcionariotipo',9,'icon-user-md',31,'','A'),(36,'Lotes','lote',28,'icon-medkit',45,NULL,'A'),(37,'TrÃ¢nsito e Transporte','',NULL,'',14,'','A'),(39,'Categorias de Carteira de HabilitaÃ§Ã£o','cnhcategoria',9,'icon-credit-card',56,'','A'),(40,'Cadastro de Tipos de ServiÃ§o','servicotipo',9,'icon-th',57,'','A'),(41,'Cadastro de Tipo de VÃ­nculo Transporte e Pessoa','transportepessoatipo',9,'icon-cogs',58,'','A'),(42,'Status de SolicitaÃ§Ã£o de ServiÃ§o','servicosolicitacaostatus',9,'icon-list',59,'','A'),(43,'Status de Pagamento de SolicitaÃ§Ã£o de ServiÃ§o','servicosolicitacaopagamentostatus',9,'icon-money',60,'','A'),(44,'Status de VÃ­nculo de Transporte > VeÃ­culo','transporteveiculostatus',9,'icon-truck',61,'','A'),(45,'Cadastro de CombustÃ­vel','combustivel',9,'icon-tint',62,'','A'),(46,'Cadastro de Cor','cor',9,'icon-tint',63,NULL,'A'),(47,'Cadastro de Tipos de VeÃ­culo','veiculotipo',9,'icon-truck',64,'','A'),(48,'Cadastro de Fabricantes','fabricante',9,'icon-wrench',65,NULL,'A'),(49,'Cadastro de Grupo de Transporte','transportegrupo',9,'icon-truck',66,NULL,'A'),(50,'Cadastro de ServiÃ§os','servico',37,'icon-copy',50,'','A'),(51,'Cadastro de Tipos de ConcessÃ£o','concessaotipo',9,'icon-envelope-alt',67,'','A'),(52,'Cadastro de Validade de ConcessÃ£o','concessaovalidade',9,'icon-time',68,'','A'),(53,'VeÃ­culos','veiculo',37,'icon-truck',53,'','A'),(54,'Transporte','transporte',37,'icon-road',54,NULL,'A'),(55,'Status de VÃ­nculo de Transporte > Pessoa','transportepessoastatus',9,'icon-exchange',69,'','A'),(56,'NÃ­vel de Setor','setornivel',9,'icon-list-ol',70,'','A'),(57,'Categorias de VeÃ­culos','veiculocategoria',9,'icon-road',71,'','A'),(58,'Periodicidade','periodicidade',9,'icon-time',72,NULL,'A'),(59,'ConvÃªnios BancÃ¡rios','bancoconvenio',9,'icon-link',73,'','A'),(60,'Pessoas','pessoa',37,'icon-group',51,NULL,'A'),(61,'Agentes de TrÃ¢nsito','agente',37,'icon-group',47,'','A'),(62,'Status de Auto de InfraÃ§Ã£o','autoinfracaostatus',9,'icon-edit',74,'','A'),(63,'Tipo de OcorrÃªncia de Auto de InfraÃ§Ã£o','autoinfracaoocorrenciatipo',9,'icon-list-ul',75,'','A'),(64,'Status de DevoluÃ§Ã£o de Auto de InfraÃ§Ã£o','autoinfracaodevolucaostatus',9,'icon-exchange',76,'','A'),(65,'Auto de InfraÃ§Ã£o','autoinfracao',37,'icon-warning-sign',49,'','A'),(66,'Cadastro de Motivo da Baixa','baixamotivo',9,'icon-ban-circle',77,NULL,'A'),(67,'Cadastro de Motorista','motorista',37,'icon-group',52,NULL,'A'),(68,'Amparo Legal','amparolegal',9,'icon-legal',78,'','A'),(69,'Folha de Ponto','ponto',6,'icon-calendar',79,'','A'),(70,'RelatÃ³rios','',NULL,'',80,'','A'),(71,'RelatÃ³rio de CarÃ¡ter','relatorio',70,'icon-print',81,'carater','A'),(72,'RelatÃ³rio de Placas Retidas','relatorio',70,'icon-print',82,'placasretidas','A'),(73,'Tipo de PrevisÃ£o','previsaotipo',9,'icon-tags',83,'','A'),(74,'RelatÃ³rio de Agente','relatorio',70,'icon-print',84,'agente','A'),(75,'RelatÃ³rio de Motoristas','relatorio',70,'icon-print',85,'motorista','A'),(76,'AutorizaÃ§Ã£o de InterdiÃ§Ã£o','interdicao',37,'icon-road',86,'','A'),(77,'Cadastro de ReferÃªncia de ServiÃ§o','servicoreferencia',9,'icon-list-ol',87,'','A'),(78,'Tipo de Ãtem de Boleto','boletoitemtipo',9,'icon-th',88,'','A'),(79,'Boletos','boleto',37,'icon-credit-card',89,'','A'),(80,'Retorno BancÃ¡rio','retorno',37,'icon-money',90,'','A'),(81,'Tipo de Retorno','retornotipo',9,'icon-money',91,'','A'),(83,'Status do Portal','portalstatus',9,'icon-list-ul',92,'','A'),(84,'Layouts do Portal','portallayout',9,'icon-th',93,'','A'),(85,'Desenvolvimento - Processamento','desenvolvimento',2,'icon-cog',94,'','A'),(86,'RelatÃ³rio de Taxas','relatorio',70,'icon-print',95,'taxas','A'),(87,'RelatÃ³rio de Taxas - Sacado','relatorio',70,'icon-print',96,'taxassacado','A'),(89,'Tipo de Rota','rotatipo',9,'icon-list-ul',98,'','A'),(90,'Tipo de Ponto de Ã”nibus','onibusparadatipo',9,'icon-list',99,'','A'),(91,'Tipo de Dia','diatipo',9,'icon-list',100,'','A'),(92,'Tipo de Tarifa','tarifatipo',9,'icon-list',101,'','A'),(93,'Tarifa','tarifa',9,'icon-money',103,'','A'),(94,'Linha de Ã”nibus','linha',9,'icon-retweet',102,'','A'),(95,'Status do Requerimento JARI','requerimentojaristatus',9,'icon-list-ul',104,'','A'),(96,'NotificaÃ§Ã£o de Auto de InfraÃ§Ã£o','notificacao',37,'icon-bullhorn',105,'','A'),(97,'Requerimento JARI','jari',37,'icon-edit',106,'','A'),(98,'VeÃ­culos Retidos','veiculoretido',37,'icon-ban-circle',107,'','A'),(99,'Pontos de Ã”nibus','onibusparada',9,'icon-list-ul',108,'','A'),(100,'Tipo de Credencial','credencialtipo',9,'icon-list-ul',109,'','A'),(101,'Status da Credencial','credencialstatus',9,'icon-list-ul',110,'','A'),(102,'Credenciais','credencial',37,'icon-user-md',111,'','A'),(103,'Cadastro de EspÃ©cie','veiculoespecie',9,'icon-align-justify',112,'','A');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo_pacote`
--

DROP TABLE IF EXISTS `modulo_pacote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo_pacote` (
  `id_pacote` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  PRIMARY KEY (`id_pacote`,`id_modulo`),
  KEY `fk_pacote_has_modulo_modulo1_idx` (`id_modulo`),
  KEY `fk_pacote_has_modulo_pacote1_idx` (`id_pacote`),
  CONSTRAINT `fk_pacote_has_modulo_modulo1` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacote_has_modulo_pacote1` FOREIGN KEY (`id_pacote`) REFERENCES `pacote` (`id_pacote`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo_pacote`
--

LOCK TABLES `modulo_pacote` WRITE;
/*!40000 ALTER TABLE `modulo_pacote` DISABLE KEYS */;
INSERT INTO `modulo_pacote` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,32),(1,33),(1,34),(1,35),(1,56),(1,69),(1,83),(1,84),(1,85),(2,1),(2,7),(2,9),(2,18),(2,37),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,70),(2,71),(2,72),(2,74),(2,75),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,86),(2,87),(2,89),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,97),(2,98),(2,99),(2,100),(2,101),(2,102),(2,103),(3,1),(3,7),(3,9),(3,18),(3,28),(3,29),(3,31),(3,36),(3,73);
/*!40000 ALTER TABLE `modulo_pacote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moeda`
--

DROP TABLE IF EXISTS `moeda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moeda` (
  `id_moeda` int(11) NOT NULL AUTO_INCREMENT,
  `simbolo` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `padrao` varchar(1) DEFAULT NULL COMMENT 'S - SIM\nN - NÃO',
  `valor_ref` float DEFAULT NULL,
  PRIMARY KEY (`id_moeda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moeda`
--

LOCK TABLES `moeda` WRITE;
/*!40000 ALTER TABLE `moeda` DISABLE KEYS */;
INSERT INTO `moeda` VALUES (1,'R$','Real','S',NULL);
/*!40000 ALTER TABLE `moeda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorista`
--

DROP TABLE IF EXISTS `motorista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motorista` (
  `id_motorista` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) DEFAULT NULL,
  `id_pessoa_motorista` int(11) NOT NULL,
  `id_transporte_grupo` int(11) NOT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_motorista`),
  KEY `fk_motorista_pessoa_motorista1_idx` (`id_pessoa_motorista`),
  KEY `fk_motorista_transporte_grupo1_idx` (`id_transporte_grupo`),
  CONSTRAINT `fk_motorista_pessoa_motorista1` FOREIGN KEY (`id_pessoa_motorista`) REFERENCES `pessoa_motorista` (`id_pessoa_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_motorista_transporte_grupo1` FOREIGN KEY (`id_transporte_grupo`) REFERENCES `transporte_grupo` (`id_transporte_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorista`
--

LOCK TABLES `motorista` WRITE;
/*!40000 ALTER TABLE `motorista` DISABLE KEYS */;
/*!40000 ALTER TABLE `motorista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacao`
--

DROP TABLE IF EXISTS `movimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacao` (
  `id_movimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_movimentacao_tipo` int(11) NOT NULL,
  `data_movimentacao` date DEFAULT NULL,
  `hora_movimentacao` time DEFAULT NULL,
  `id_documento` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `id_movimentacao_recebe` int(11) DEFAULT NULL,
  `tipo_destino` char(1) DEFAULT NULL COMMENT 'F - FUNCIONÁRIO\nS - SETOR\n',
  `id_destino` int(11) DEFAULT NULL,
  `despacho` text DEFAULT NULL,
  PRIMARY KEY (`id_movimentacao`),
  KEY `fk_movimentacao_movimentacao_tipo1_idx` (`id_movimentacao_tipo`),
  KEY `fk_movimentacao_documento1_idx` (`id_documento`),
  KEY `fk_movimentacao_funcionario1_idx` (`id_funcionario`),
  KEY `fk_movimentacao_setor1_idx` (`id_setor`),
  CONSTRAINT `fk_movimentacao_documento1` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimentacao_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimentacao_movimentacao_tipo1` FOREIGN KEY (`id_movimentacao_tipo`) REFERENCES `movimentacao_tipo` (`id_movimentacao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimentacao_setor1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacao`
--

LOCK TABLES `movimentacao` WRITE;
/*!40000 ALTER TABLE `movimentacao` DISABLE KEYS */;
INSERT INTO `movimentacao` VALUES (74,1,'2019-02-14','12:22:08',33,132,8,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `movimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacao_tipo`
--

DROP TABLE IF EXISTS `movimentacao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacao_tipo` (
  `id_movimentacao_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_movimentacao_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='E - ENVIO\nR - RECEBIMENTO\nA - ARQUIVAMENTO\nC - CANCELAMENTO ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacao_tipo`
--

LOCK TABLES `movimentacao_tipo` WRITE;
/*!40000 ALTER TABLE `movimentacao_tipo` DISABLE KEYS */;
INSERT INTO `movimentacao_tipo` VALUES (1,'I','CRIAÇÃO'),(2,'E','ENVIO'),(3,'R','RECEBIMENTO'),(4,'A','ARQUIVAMENTO'),(5,'C','CANCELAMENTO DE ARQUIVAMENTO'),(6,'MO','MOVIMENTAÇÃO DOC ORIGINAL'),(7,'V','VÍNCULO');
/*!40000 ALTER TABLE `movimentacao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `id_uf` int(11) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `fk_municipio_uf1_idx` (`id_uf`),
  CONSTRAINT `fk_municipio_uf1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'MACAPÁ',4),(6,'PORTO GRANDE',4),(10,'CUTIAS',4),(13,'OIAPOQUE',4),(15,'BELEM',14),(16,'LARANJAL DO JARI',4),(44,'SERRA DO NAVIO',4),(82,'CAXIAS DO SUL',4),(83,'FERREIRA GOMES',4),(84,'MOGI DAS CRUZES',4),(86,'SANTAREM',14),(87,'MAZAGAO',4),(88,'TERESINA',4),(91,'CALCOENE',4),(92,'SAO PAULO',26),(93,'ANANINDEUA',14),(94,'AMAPA',4),(95,'TELEGRAFO',4),(97,'FORTALEZA',6),(100,'SAO JOSE DO RIO PRETO',26),(101,'SANTA CATARINA',4),(102,'RONDONOPOLIS',4),(103,'PARAGOMINAS - PA',14),(104,'TOCANTINS',4),(108,'GOIANIA ',9),(109,'MARABA',14),(110,'SANTO ANDRE',26),(111,'CAMPINAS',4),(112,'VITORIA DO JARI',4),(113,'AMPARI',4),(115,'CAJAZEIRAS',4),(118,'NOVA MARAMBAIA',4),(119,'RIO NEGRINHO',24),(121,'SAO MIGUEL DO TOCANTINS',4),(122,'MANAUS',3),(124,'BRASIL NOVO',4),(126,'ASSIS',4),(128,'TABULEIRO DO NORTE',4),(131,'SAO JOSE DOS PINHAIS',18),(133,'RIO DE JANEIRO',4),(134,'SAUDADE',14),(135,'OURINHOS',26),(136,'OURINHOS',4),(138,'SENADOR CANEDO ',4),(142,'FLORIANOPOLIS',4),(144,'SÃO DOMINGOS DO CAPIM',14),(145,'ICARA',24),(146,'CRICIUMA',24),(147,'JOAO PESSOA',15),(148,'JAGUARUANA',6),(149,'AFUÁ',14),(150,'OUREM',14),(151,'ICOARACI',14),(152,'SANTA LUZIA',10),(153,'ORIXIMINA',14),(154,'GURUPÁ',14),(155,'CONTAGEM',11),(156,'BREVES',14),(157,'ALTAMIRA',14),(158,'ALENQUER',14),(159,'APARECIDA DE GOIANIA',9),(160,'BENTO GONÇALVES',23),(161,'MARINGA',18),(162,'BARCARENA',14),(163,'PORTEL',14),(164,'AMPARO',26),(165,'BOA NOVA',5),(166,'FEIRA DE SANTANA',5),(167,'SERRINHA',5),(168,'CAMACARI',5),(169,'CURIO-UTINGA',14),(170,'ARAGUAINA',27),(171,'SAO LUIS',10),(172,'MUCAMBO',6),(173,'REMEDIOS',4),(174,'JOAO LISBOA',10),(175,'ITAITUBA',14),(176,'SANTA INES',15),(177,'SANTANA DO ARAGUAIA',14),(178,'AMAZONIA',30),(179,'AMAZONAS',30),(180,'CAMETÁ',14),(181,'SANTO ANTONIO DO TAUA',14),(182,'ANAJAS',14),(183,'SANTA ISABEL',14),(184,'CATANDUVA',26),(186,'ALMERIM',14),(187,'BOA VISTA',22),(188,'DOURADOS',12),(189,'XINGUARA',14),(190,'CASTANHAL',14),(191,'IMPERATRIZ',10),(192,'ICONHA',8),(193,'CATALÃO',9),(194,'PORTO DE MOZ',14),(195,'PIÇARREIRA',4),(196,'JERUMENHA',17),(197,'CHAVES',14),(198,'CAPANEMA',14),(199,'PEIXOTO DE AZEVEDO',13),(200,'PORTO VELHO',21),(201,'EIRUNEPE',3),(202,'SÃO SEBASTIÃO DA BOA VISTA',14),(203,'ARARI',10),(204,'TELEGRAFO SEM FIO',14),(205,'MAE DO RIO',14),(206,'VIGIA',14),(207,'RORAINOPOLIS',22),(208,'NOVA COLINA',22),(209,'ESPERANTINOPOLIS',10),(210,'ABAETETUBA',14),(211,'TOCANTINOPOLIS',27),(212,'RIBEIRAO BRANCO',26),(213,'SAO JOAO DO RIO DO PEIXE',15),(214,'CODO',10),(215,'BUJARU',14),(216,'TUTOIA',10),(217,'SAO MIGUEL DO GUAMA-PA',14),(218,'MONTE ALEGRE',14),(219,'SAO BERNARDO DO CAMPO ',26),(220,'SANTA HELENA',10),(221,'OEIRAS DO PARA',14),(222,'MARITUBA',14),(223,'SALTO GRANDE',26),(224,'QUATA',26),(225,'CURUCA',14),(226,'MIRACEMA DO TOCANTINS',27),(227,'INDAIATUBA',26),(228,'BRASILIA',7),(229,'SANTO ANTONIO DOS LOPES',10),(230,'BRAGANCA',14),(231,'MONTE SANTO DO TOCANTINS',27),(232,'PINHEIRO',10),(233,'SANTAREM',15),(234,'SANTA INES',10),(235,'SAO JOSE',24),(236,'BASTOS',26),(237,'RECIFE',16),(238,'SANTANA DO IPANEMA',2),(239,'SAO GONCALO DO ABAETE',11),(240,'IGARAPE-MIRI',14),(241,'CAPITAO POCO',14),(242,'CAXIAS',10),(243,'VARZEA ALEGRE',6),(244,'MORRINHOS',6),(245,'FIRMINOPOLIS',4),(246,'PRAINHA',14),(247,'TURIACU',10),(248,'SANTANA',4),(249,'JARDIM DE DEUS II',4),(250,'MATINHA',10),(251,'BURITI DOS LOPES',17),(252,'PRESIDENTE DUTRA',10),(253,'VALENCA DO PIAUI',17),(254,'MELGACO',14),(255,'TUCURUI',14),(256,'VITORIA DO MEARIM',10),(257,'MOJU',14),(258,'SAO BENTO',10),(259,'JARDIM FLORESTA',4),(260,'PETROLINA',16),(261,'AVEIRO',14),(262,'ACARA',14),(263,'ITAPIPOCA',6),(264,'TURIACU',14),(265,'SOURE',14),(266,'CARUTAPERA',10),(267,'CRUZEIRO DO SUL',1),(268,'VISEU',14),(269,'BARRA DA CORDA',14),(271,'SOUSA',15),(272,'TARTARUGALZINHO',4),(273,'SAO JOAO DE MERITI',19),(274,'MONTE ALTO',10),(275,'LUCAS DO RIO VERDE',13),(276,'CUIABA',13),(277,'NOVA MARINGA',13),(278,'GODOFREDO VIANA',10),(279,'TACURU',12),(280,'MINACU',9),(281,'PRESIDENTE PRUDENTE',26),(282,'GUARULHOS',26),(283,'OBIDOS',14),(284,'PARAMBU',6),(285,'PARNAIBA',17),(286,'GUARUJA DO SUL',24),(287,'CRUZEIRO DO SUL',18),(288,'CAMPO VERDE',13),(289,'CATUIPE',13),(290,'MACHADO',11),(291,'PRESIDENTE FIGUEIREDO',3),(292,'REDENCAO',6),(293,'TERRA ROXA',18),(294,'CHOPINZINHO',18),(295,'UBAITABA',13),(297,'VITORIA DA CONQUISTA',5),(298,'ITAITINGA',6),(299,'BENEVIDES',14),(300,'PASSOS',11),(301,'OEIRAS',17),(302,'CORURIPE',2),(303,'FELIZ NATAL',13),(304,'ANDRADAS',11),(305,'COLINAS DO TOCANTINS',27),(306,'ITAARA',12),(307,'SANTA MARIA',23),(308,'GUARAI',27),(309,'TIBAGI',15),(310,'TIBAGI',18),(311,'ANAPOLIS',9),(312,'SALVADOR',5),(313,'VILA MATIAS',11),(314,'HONSHU',32),(315,'ITAPORA DO TOCANTINS',27),(316,'INHANGAPI',14),(317,'ITARARE',26),(318,'CUNHA PORA',24),(319,'FORMOSA DO OESTE',18),(320,'PASSO FUNDO',23),(321,'RIBEIRAO PRETO',26),(322,'ITAUBAL',4),(323,'SETE QUEDAS',12),(324,'TERRA BOA',18),(325,'BAIAO',14),(326,'CAIBI',24),(327,'SINOP',13),(328,'BALSAS',10),(329,'SAO MIGUEL DOESTE',10),(330,'ENCANTADO',10),(331,'CANHOTINHO',16),(332,'CURITIBA',18),(333,'IGARAPE-ACU',14),(334,'SALINOPOLIS',14),(335,'LAGOA GRANDE DO MARANHAO',10),(336,'BANDEIRANTES',18),(337,'TAPURAH',13),(338,'JOACABA',24),(339,'MELEIRO',24),(340,'CACHOEIRA DO SUL',23),(341,'QUIXADA',6),(342,'BURITI BRAVO',10),(343,'FRANCESA',33),(344,'ANAPU',14),(345,'UBIRATA',18),(346,'HUMAITA',3),(347,'CAMPO NOVO',23),(348,'NOVA TIMBOTEUA',14),(349,'MARIA HELENA',18),(350,'RENDENÇÃO',6),(351,'SANTA MARIA',14),(352,'ZÉ DOCA',10),(353,'VIANA',10),(354,'SALTO',26),(355,'URUBURETAMA',6),(356,'ALTA FLORESTA',13),(357,'CHAPADINHA',10),(358,'NATAL',20),(359,'ELESBÃO',4),(360,'URUAÇU',9),(361,'CAICÓ',20),(362,'EVORA',34),(363,'ANGOLA',35),(364,'PENTECOSTE',6),(365,'COROATA',10),(366,'ALAGOA GRANDE',15),(367,'INGAZEIRA',16),(368,'CACHOEIRINHA ',11),(369,'BELO HORIZONTE',11),(370,'CRATEUS',6),(371,'RIO DE JANEIRO',19),(372,'CORRENTINA',5),(373,'DIONISIO CERQUEIRA',24),(374,'TRAIRAO',14),(375,'PARAIPABA',6),(376,'VARGEM GRANDE',10),(377,'PLACAS',14),(378,'ALTANEIRA',6),(379,'VITORINO FREIRE',10),(380,'MOGI DAS CRUZES',26),(381,'ARUJA',26),(382,'GARRAFAO DO NORTE',14),(383,'CREA',26),(384,'PITANGA',18),(385,'GONÇALVES DIAS',10),(386,'PARAIBA DO SUL',19),(387,'ARACUAI',11);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `id_calculador_padrao` int(11) NOT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ensino fundamental, graduação, pós-graduação, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacao_infracao`
--

DROP TABLE IF EXISTS `notificacao_infracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacao_infracao` (
  `id_auto_infracao_notificacao` int(11) NOT NULL,
  `id_infracao` int(11) NOT NULL,
  PRIMARY KEY (`id_auto_infracao_notificacao`,`id_infracao`),
  KEY `fk_auto_infracao_notificacao_has_amparo_legal_item_amparo_l_idx` (`id_infracao`),
  KEY `fk_auto_infracao_notificacao_has_amparo_legal_item_auto_inf_idx` (`id_auto_infracao_notificacao`),
  CONSTRAINT `fk_auto_infracao_notificacao_has_amparo_legal_item_amparo_leg1` FOREIGN KEY (`id_infracao`) REFERENCES `infracao` (`id_infracao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_infracao_notificacao_has_amparo_legal_item_auto_infra1` FOREIGN KEY (`id_auto_infracao_notificacao`) REFERENCES `auto_infracao_notificacao` (`id_auto_infracao_notificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacao_infracao`
--

LOCK TABLES `notificacao_infracao` WRITE;
/*!40000 ALTER TABLE `notificacao_infracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacao_infracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacao_medicao`
--

DROP TABLE IF EXISTS `notificacao_medicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacao_medicao` (
  `id_notificacao_medicao` int(11) NOT NULL AUTO_INCREMENT,
  `id_auto_infracao_notificacao` int(11) NOT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `numero_serie` varchar(100) DEFAULT NULL,
  `numero_teste` varchar(100) DEFAULT NULL,
  `medicao_realizada` varchar(100) DEFAULT NULL,
  `limite_regulamentar` varchar(100) DEFAULT NULL,
  `medicao_considerada` varchar(100) DEFAULT NULL,
  `excesso_verificado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_notificacao_medicao`),
  KEY `fk_notificacao_medicao_auto_infracao_notificacao1_idx` (`id_auto_infracao_notificacao`),
  CONSTRAINT `fk_notificacao_medicao_auto_infracao_notificacao1` FOREIGN KEY (`id_auto_infracao_notificacao`) REFERENCES `auto_infracao_notificacao` (`id_auto_infracao_notificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacao_medicao`
--

LOCK TABLES `notificacao_medicao` WRITE;
/*!40000 ALTER TABLE `notificacao_medicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacao_medicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onibus_bdo`
--

DROP TABLE IF EXISTS `onibus_bdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onibus_bdo` (
  `id_onibus_bdo` int(11) NOT NULL AUTO_INCREMENT,
  `data_bdo` date DEFAULT NULL,
  `bdo` float DEFAULT NULL,
  `id_transporte_veiculo` int(11) NOT NULL,
  `id_rota` int(11) NOT NULL,
  `id_tarifa_ocorrencia` int(11) NOT NULL,
  `hora_saida` time DEFAULT NULL,
  `hora_chegada` time DEFAULT NULL,
  `km_inicial` float DEFAULT NULL,
  `km_final` float DEFAULT NULL,
  `viagens` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_onibus_bdo`),
  KEY `fk_onibus_bdo_transporte_veiculo1_idx` (`id_transporte_veiculo`),
  KEY `fk_onibus_bdo_rota1_idx` (`id_rota`),
  KEY `fk_onibus_bdo_tarifa_ocorrencia1_idx` (`id_tarifa_ocorrencia`),
  CONSTRAINT `fk_onibus_bdo_rota1` FOREIGN KEY (`id_rota`) REFERENCES `rota` (`id_rota`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_onibus_bdo_tarifa_ocorrencia1` FOREIGN KEY (`id_tarifa_ocorrencia`) REFERENCES `tarifa_ocorrencia` (`id_tarifa_ocorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_onibus_bdo_transporte_veiculo1` FOREIGN KEY (`id_transporte_veiculo`) REFERENCES `transporte_veiculo` (`id_transporte_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onibus_bdo`
--

LOCK TABLES `onibus_bdo` WRITE;
/*!40000 ALTER TABLE `onibus_bdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `onibus_bdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onibus_bdo_tarifa`
--

DROP TABLE IF EXISTS `onibus_bdo_tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onibus_bdo_tarifa` (
  `id_onibus_bdo_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `id_onibus_bdo` int(11) NOT NULL,
  `id_tarifa_tipo` int(11) NOT NULL,
  `passageiros` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_onibus_bdo_tarifa`),
  KEY `fk_onibus_bdo_tarifa_onibus_bdo1_idx` (`id_onibus_bdo`),
  KEY `fk_onibus_bdo_tarifa_tarifa_tipo1_idx` (`id_tarifa_tipo`),
  CONSTRAINT `fk_onibus_bdo_tarifa_onibus_bdo1` FOREIGN KEY (`id_onibus_bdo`) REFERENCES `onibus_bdo` (`id_onibus_bdo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_onibus_bdo_tarifa_tarifa_tipo1` FOREIGN KEY (`id_tarifa_tipo`) REFERENCES `tarifa_tipo` (`id_tarifa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onibus_bdo_tarifa`
--

LOCK TABLES `onibus_bdo_tarifa` WRITE;
/*!40000 ALTER TABLE `onibus_bdo_tarifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `onibus_bdo_tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onibus_parada`
--

DROP TABLE IF EXISTS `onibus_parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onibus_parada` (
  `id_onibus_parada` int(11) NOT NULL AUTO_INCREMENT,
  `id_onibus_parada_tipo` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id_onibus_parada`),
  KEY `fk_onibus_parada_onibus_parada_tipo1_idx` (`id_onibus_parada_tipo`),
  CONSTRAINT `fk_onibus_parada_onibus_parada_tipo1` FOREIGN KEY (`id_onibus_parada_tipo`) REFERENCES `onibus_parada_tipo` (`id_onibus_parada_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onibus_parada`
--

LOCK TABLES `onibus_parada` WRITE;
/*!40000 ALTER TABLE `onibus_parada` DISABLE KEYS */;
/*!40000 ALTER TABLE `onibus_parada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onibus_parada_tipo`
--

DROP TABLE IF EXISTS `onibus_parada_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onibus_parada_tipo` (
  `id_onibus_parada_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_onibus_parada_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='TE - TERMINAL\nPA - PARADA DE ÔNIBUS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onibus_parada_tipo`
--

LOCK TABLES `onibus_parada_tipo` WRITE;
/*!40000 ALTER TABLE `onibus_parada_tipo` DISABLE KEYS */;
INSERT INTO `onibus_parada_tipo` VALUES (1,'TE','TERMINAL'),(2,'PA','PARADA DE ÔNIBUS');
/*!40000 ALTER TABLE `onibus_parada_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacote`
--

DROP TABLE IF EXISTS `pacote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacote` (
  `id_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `icone` varchar(20) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacote`
--

LOCK TABLES `pacote` WRITE;
/*!40000 ALTER TABLE `pacote` DISABLE KEYS */;
INSERT INTO `pacote` VALUES (1,'DEF','Principal','Pacote Principal do Sistema','icon-home',1,'A'),(2,'TRA','TrÃ¢nsito e Transporte','Transito e Transporte','icon-truck',2,'A'),(3,'PRO','Projetos e ConvÃªnios','Projetos e ConvÃªnios','icon-book',4,'I');
/*!40000 ALTER TABLE `pacote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'BRASIL'),(2,'MARINGA'),(3,'JAPAO'),(4,'FRANCA'),(5,'PORTUGAL');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodicidade`
--

DROP TABLE IF EXISTS `periodicidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodicidade` (
  `id_periodicidade` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `qtd_meses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_periodicidade`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicidade`
--

LOCK TABLES `periodicidade` WRITE;
/*!40000 ALTER TABLE `periodicidade` DISABLE KEYS */;
INSERT INTO `periodicidade` VALUES (1,'M','MENSAL',1),(2,'S','SEMESTRAL',6),(3,'A','ANUAL',12);
/*!40000 ALTER TABLE `periodicidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao` (
  `cod_permissao` int(11) NOT NULL AUTO_INCREMENT,
  `id_acao` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`cod_permissao`),
  KEY `fk_permissao_acao1_idx` (`id_acao`),
  KEY `fk_permissao_grupo1_idx` (`id_grupo`),
  CONSTRAINT `fk_permissao_acao1` FOREIGN KEY (`id_acao`) REFERENCES `acao` (`id_acao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_permissao_grupo1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

LOCK TABLES `permissao` WRITE;
/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
INSERT INTO `permissao` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(27,27,1),(28,28,1),(29,29,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,1),(59,59,1),(60,60,1),(61,61,1),(62,62,1),(63,63,1),(64,64,1),(65,65,1),(66,66,1),(67,67,1),(68,68,1),(69,69,1),(70,70,1),(71,71,1),(72,72,1),(73,73,1),(74,74,1),(75,75,1),(76,76,1),(77,77,1),(78,78,1),(79,79,1),(80,80,1),(81,81,1),(82,67,4),(83,74,4),(84,71,4),(85,45,4),(86,46,4),(87,48,4),(88,49,4),(89,72,4),(90,73,4),(91,50,4),(92,41,4),(93,52,4),(94,40,4),(95,47,4),(96,53,4),(97,39,4),(98,58,4),(99,65,4),(100,77,4),(101,78,4),(102,80,4),(103,81,4),(104,68,4),(105,70,4),(106,43,4),(107,42,4),(108,56,4),(109,44,4),(110,37,4),(111,55,4),(112,60,4),(113,61,4),(114,62,4),(115,64,4),(116,54,4),(117,27,2),(118,1,2),(119,8,5),(120,16,5),(121,20,6),(122,14,6),(123,75,6),(124,15,6),(125,18,6),(126,82,1),(127,83,1),(128,84,1),(129,85,1),(130,86,1),(131,87,1),(133,89,1),(134,90,1),(135,91,1),(136,92,1),(137,93,1),(139,95,1),(140,96,1),(141,97,1),(142,98,1),(143,99,1),(144,100,1),(145,101,1),(146,102,1),(147,103,1),(148,104,1),(149,105,1),(150,106,1),(151,107,1),(152,108,1),(153,109,1);
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa_tipo` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  KEY `fk_pessoa_pessoa_tipo1_idx` (`id_pessoa_tipo`),
  CONSTRAINT `fk_pessoa_pessoa_tipo1` FOREIGN KEY (`id_pessoa_tipo`) REFERENCES `pessoa_tipo` (`id_pessoa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6828 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,2,'ctmap@ap.gov.br'),(2,1,'zeluis.ap@gmail.com'),(3,2,'rnp@rnp.br'),(4,1,'edicleune@gmail.com'),(5,1,'adailson@gmail.com'),(6,2,'domestilar@domestilar.com.br'),(7,1,'aceniro@email.com.br'),(8,2,'sorrizo@sorriso.com.br'),(9,1,'adamor@gmail.com'),(10,1,'adao@gmail.com'),(11,1,'formigoza@hotmail.com'),(12,1,'adelcio@hotmail.com'),(13,1,'rafaponteslima@gmail.com'),(14,1,'VERA@hotmail.com'),(15,1,'raniere@sttrans.br'),(16,1,'anjinhakaka13@hotmail.com'),(17,1,'lcastelo_ap@hotmail.com'),(18,1,'josimacielpalheta@gmail.com'),(19,1,NULL),(20,1,NULL),(21,1,NULL),(22,1,NULL),(23,1,''),(24,1,NULL),(25,1,NULL),(26,1,NULL),(27,1,NULL),(28,1,NULL),(29,1,''),(30,1,''),(31,1,NULL),(32,1,NULL),(33,1,NULL),(34,1,NULL),(35,1,NULL),(36,1,NULL),(37,1,NULL),(38,1,NULL),(39,2,NULL),(40,1,NULL),(41,1,NULL),(42,1,NULL),(43,1,NULL),(44,2,NULL),(45,2,NULL),(46,1,NULL),(47,1,NULL),(48,1,NULL),(49,1,NULL),(50,1,NULL),(51,1,NULL),(52,1,NULL),(53,1,NULL),(54,1,NULL),(55,1,NULL),(56,2,NULL),(57,1,NULL),(58,1,''),(59,1,NULL),(60,1,NULL),(61,1,''),(62,1,NULL),(63,1,NULL),(64,1,NULL),(65,1,NULL),(66,1,NULL),(67,2,NULL),(68,1,NULL),(69,2,NULL),(70,1,NULL),(71,2,NULL),(72,1,NULL),(73,1,NULL),(74,1,NULL),(75,1,NULL),(76,1,NULL),(77,1,NULL),(78,1,NULL),(79,1,NULL),(80,1,NULL),(81,1,NULL),(82,1,NULL),(83,1,NULL),(84,1,NULL),(85,1,NULL),(86,1,NULL),(87,1,NULL),(88,1,NULL),(89,1,NULL),(90,1,''),(91,1,NULL),(92,1,NULL),(93,1,NULL),(94,2,NULL),(95,1,NULL),(96,1,NULL),(97,2,NULL),(98,1,NULL),(99,1,NULL),(100,1,NULL),(101,1,NULL),(102,1,NULL),(103,1,NULL),(104,2,NULL),(105,2,NULL),(106,1,NULL),(107,1,NULL),(108,1,NULL),(109,1,NULL),(110,1,NULL),(111,1,NULL),(112,2,NULL),(113,1,NULL),(114,2,NULL),(115,1,NULL),(116,1,NULL),(117,1,NULL),(118,1,NULL),(119,1,NULL),(120,2,NULL),(121,1,NULL),(122,1,NULL),(123,1,NULL),(124,2,NULL),(125,1,NULL),(126,1,NULL),(127,2,NULL),(128,1,NULL),(129,1,NULL),(130,1,NULL),(131,1,NULL),(132,1,NULL),(133,1,NULL),(134,1,NULL),(135,1,NULL),(136,1,NULL),(137,1,NULL),(138,1,NULL),(139,1,NULL),(140,1,NULL),(141,2,NULL),(142,1,NULL),(143,1,NULL),(144,1,NULL),(145,1,NULL),(146,1,NULL),(147,1,NULL),(148,1,NULL),(149,1,NULL),(150,1,NULL),(151,1,NULL),(152,1,NULL),(153,1,NULL),(154,1,NULL),(155,1,NULL),(156,1,NULL),(157,1,NULL),(158,1,NULL),(159,1,NULL),(160,1,NULL),(161,1,NULL),(162,1,NULL),(163,1,NULL),(164,1,NULL),(165,1,NULL),(166,1,NULL),(167,1,NULL),(168,1,NULL),(169,1,NULL),(170,1,NULL),(171,1,NULL),(172,1,NULL),(173,1,NULL),(174,1,NULL),(175,1,NULL),(176,1,NULL),(177,1,NULL),(178,1,NULL),(179,1,NULL),(180,1,NULL),(181,1,NULL),(182,1,NULL),(183,1,NULL),(184,1,NULL),(185,1,NULL),(186,1,NULL),(187,1,NULL),(188,1,NULL),(189,1,NULL),(190,1,NULL),(191,1,NULL),(192,1,NULL),(193,1,NULL),(194,1,NULL),(195,1,NULL),(196,1,NULL),(197,1,NULL),(198,1,NULL),(199,1,NULL),(200,1,NULL),(201,1,NULL),(202,1,NULL),(203,1,NULL),(204,1,NULL),(205,1,NULL),(206,1,NULL),(207,1,NULL),(208,1,NULL),(209,1,NULL),(210,1,NULL),(211,1,NULL),(212,1,NULL),(213,1,NULL),(214,1,NULL),(215,1,NULL),(216,1,NULL),(217,1,NULL),(218,2,NULL),(219,2,NULL),(220,1,NULL),(221,2,'sefosan@gmail.com'),(222,1,NULL),(223,1,''),(224,1,NULL),(225,1,NULL),(226,1,NULL),(227,1,NULL),(228,1,NULL),(229,1,NULL),(230,1,NULL),(231,1,NULL),(232,1,NULL),(233,1,NULL),(234,1,NULL),(235,1,NULL),(236,1,NULL),(237,1,NULL),(238,1,NULL),(239,1,NULL),(240,1,NULL),(241,2,NULL),(242,1,NULL),(243,1,NULL),(244,1,NULL),(245,2,NULL),(246,1,NULL),(247,1,NULL),(248,1,NULL),(249,1,NULL),(250,1,NULL),(251,1,NULL),(252,1,NULL),(253,1,NULL),(254,1,NULL),(255,1,NULL),(256,1,NULL),(257,1,NULL),(258,2,NULL),(259,1,NULL),(260,1,NULL),(261,1,NULL),(262,1,NULL),(263,1,NULL),(264,1,NULL),(265,1,NULL),(266,1,NULL),(267,1,NULL),(268,1,NULL),(269,2,NULL),(270,2,NULL),(271,1,NULL),(272,1,NULL),(273,1,NULL),(274,1,NULL),(275,1,NULL),(276,1,NULL),(277,1,NULL),(278,2,NULL),(279,1,NULL),(280,1,NULL),(281,1,NULL),(282,1,NULL),(283,1,NULL),(284,1,NULL),(285,1,NULL),(286,1,NULL),(287,1,NULL),(288,1,NULL),(289,1,NULL),(290,1,NULL),(291,1,NULL),(292,1,NULL),(293,2,NULL),(294,1,NULL),(295,1,NULL),(296,2,NULL),(297,1,NULL),(298,2,NULL),(299,2,NULL),(300,1,NULL),(301,2,NULL),(302,1,NULL),(303,1,NULL),(304,1,NULL),(305,1,NULL),(306,1,''),(307,1,'jmaria@hotmail.com'),(308,1,NULL),(309,1,NULL),(310,1,NULL),(311,1,NULL),(312,1,NULL),(313,1,' antonio@hotmail.com'),(314,1,NULL),(315,1,NULL),(316,1,NULL),(317,1,NULL),(318,1,NULL),(319,1,NULL),(320,2,NULL),(321,2,NULL),(322,1,NULL),(323,1,NULL),(324,1,NULL),(325,2,NULL),(326,1,NULL),(327,1,NULL),(328,1,NULL),(329,1,NULL),(330,1,NULL),(331,1,NULL),(332,1,NULL),(333,1,NULL),(334,2,NULL),(335,1,NULL),(336,1,NULL),(337,1,NULL),(338,1,NULL),(339,1,NULL),(340,1,NULL),(341,2,NULL),(342,1,NULL),(343,1,NULL),(344,1,NULL),(345,1,NULL),(346,1,NULL),(347,1,NULL),(348,1,NULL),(349,2,NULL),(350,2,NULL),(351,2,NULL),(352,1,NULL),(353,1,NULL),(354,1,NULL),(355,2,NULL),(356,2,NULL),(357,1,NULL),(358,1,NULL),(359,1,NULL),(360,2,NULL),(361,2,NULL),(362,2,NULL),(363,1,NULL),(364,1,NULL),(365,1,NULL),(366,1,NULL),(367,1,''),(368,1,NULL),(369,1,NULL),(370,1,''),(371,2,NULL),(372,2,''),(373,1,''),(374,1,NULL),(375,1,NULL),(376,2,'tlb@hotmail.com'),(377,1,''),(378,2,NULL),(379,1,''),(380,1,NULL),(381,2,NULL),(382,1,''),(383,1,''),(384,2,NULL),(385,2,NULL),(386,1,NULL),(387,1,NULL),(388,1,NULL),(389,1,''),(390,2,NULL),(391,1,''),(392,1,''),(393,1,''),(394,2,NULL),(395,2,NULL),(396,2,'bertolini@bertolini.com'),(397,2,NULL),(398,1,NULL),(399,2,NULL),(400,2,''),(401,1,''),(402,1,''),(403,1,''),(404,1,NULL),(405,1,NULL),(406,1,'ALBERTOMATOS5222@GMAIL.COM'),(407,2,NULL),(408,1,NULL),(409,2,NULL),(410,1,''),(411,1,NULL),(412,1,''),(413,1,''),(414,1,NULL),(415,1,NULL),(416,2,NULL),(417,1,NULL),(418,1,NULL),(419,1,NULL),(420,1,NULL),(421,1,NULL),(422,1,NULL),(423,1,NULL),(424,1,NULL),(425,1,NULL),(426,1,NULL),(427,1,NULL),(428,1,NULL),(429,1,NULL),(430,1,NULL),(431,1,NULL),(432,1,NULL),(433,1,NULL),(434,1,NULL),(435,1,NULL),(436,1,NULL),(437,1,NULL),(438,1,NULL),(439,1,NULL),(440,1,NULL),(441,1,NULL),(442,1,NULL),(443,1,NULL),(444,1,NULL),(445,1,NULL),(446,1,NULL),(447,1,NULL),(448,1,NULL),(449,1,NULL),(450,1,NULL),(451,2,NULL),(452,1,NULL),(453,1,NULL),(454,1,NULL),(455,2,NULL),(456,1,NULL),(457,1,NULL),(458,1,NULL),(459,1,NULL),(460,1,NULL),(461,1,NULL),(462,1,NULL),(463,1,NULL),(464,1,NULL),(465,1,''),(466,1,NULL),(467,1,NULL),(468,1,NULL),(469,1,NULL),(470,1,NULL),(471,1,NULL),(472,1,NULL),(473,1,NULL),(474,1,NULL),(475,1,''),(476,1,NULL),(477,1,NULL),(478,1,NULL),(479,1,NULL),(480,1,NULL),(481,1,NULL),(482,1,NULL),(483,1,NULL),(484,1,NULL),(485,1,''),(486,1,NULL),(487,1,NULL),(488,1,NULL),(489,1,'beneditocavalcante@sttrans.com.br'),(490,1,NULL),(491,1,NULL),(492,1,NULL),(493,1,NULL),(494,1,NULL),(495,1,NULL),(496,1,NULL),(497,1,NULL),(498,1,NULL),(499,2,NULL),(500,1,NULL),(501,1,NULL),(502,1,NULL),(503,1,NULL),(504,1,NULL),(505,1,NULL),(506,2,NULL),(507,1,NULL),(508,1,NULL),(509,1,''),(510,1,NULL),(511,1,NULL),(512,1,NULL),(513,1,NULL),(514,1,NULL),(515,1,NULL),(516,1,NULL),(517,1,NULL),(518,1,NULL),(519,1,NULL),(520,1,NULL),(521,1,NULL),(522,1,NULL),(523,1,NULL),(524,1,NULL),(525,1,NULL),(526,1,NULL),(527,1,NULL),(528,1,NULL),(529,1,NULL),(530,2,NULL),(531,1,NULL),(532,1,NULL),(533,1,NULL),(534,1,NULL),(535,1,NULL),(536,1,NULL),(537,1,NULL),(538,1,NULL),(539,1,NULL),(540,1,NULL),(541,1,NULL),(542,1,NULL),(543,1,NULL),(544,1,NULL),(545,1,NULL),(546,1,NULL),(547,1,NULL),(548,1,NULL),(549,1,NULL),(550,1,NULL),(551,1,NULL),(552,1,NULL),(553,1,NULL),(554,1,NULL),(555,1,NULL),(556,1,NULL),(557,1,NULL),(558,1,NULL),(559,1,NULL),(560,1,NULL),(561,1,NULL),(562,1,NULL),(563,1,NULL),(564,1,NULL),(565,1,NULL),(566,1,NULL),(567,1,NULL),(568,1,NULL),(569,1,NULL),(570,1,NULL),(571,2,NULL),(572,1,NULL),(573,1,NULL),(574,1,NULL),(575,2,NULL),(576,1,NULL),(577,1,NULL),(578,1,NULL),(579,1,''),(580,1,NULL),(581,1,NULL),(582,1,NULL),(583,1,NULL),(584,1,NULL),(585,1,NULL),(586,1,NULL),(587,1,NULL),(588,1,NULL),(589,1,NULL),(590,1,NULL),(591,1,NULL),(592,1,NULL),(593,1,NULL),(594,2,''),(595,1,NULL),(596,2,NULL),(597,1,NULL),(598,1,NULL),(599,1,NULL),(600,1,NULL),(601,1,NULL),(602,2,NULL),(603,1,NULL),(604,1,NULL),(605,1,NULL),(606,1,NULL),(607,1,''),(608,1,NULL),(609,1,NULL),(610,1,NULL),(611,1,NULL),(612,1,NULL),(613,1,NULL),(614,1,NULL),(615,1,NULL),(616,1,NULL),(617,1,NULL),(618,1,NULL),(619,1,NULL),(620,1,NULL),(621,1,NULL),(622,1,NULL),(623,1,NULL),(624,1,NULL),(625,1,NULL),(626,1,NULL),(627,1,NULL),(628,2,NULL),(629,1,NULL),(630,1,NULL),(631,1,NULL),(632,1,NULL),(633,1,NULL),(634,1,NULL),(635,2,NULL),(636,1,NULL),(637,1,NULL),(638,1,NULL),(639,1,NULL),(640,1,NULL),(641,2,NULL),(642,1,NULL),(643,1,NULL),(644,1,NULL),(645,1,NULL),(646,1,NULL),(647,1,NULL),(648,1,NULL),(649,1,NULL),(650,2,NULL),(651,1,NULL),(652,1,NULL),(653,1,NULL),(654,1,NULL),(655,1,NULL),(656,1,NULL),(657,1,NULL),(658,2,NULL),(659,1,NULL),(660,1,NULL),(661,1,NULL),(662,1,NULL),(663,1,NULL),(664,1,NULL),(665,1,NULL),(666,2,NULL),(667,2,NULL),(668,1,NULL),(669,1,NULL),(670,1,NULL),(671,1,NULL),(672,1,NULL),(673,1,NULL),(674,1,NULL),(675,2,NULL),(676,1,NULL),(677,1,NULL),(678,1,NULL),(679,2,NULL),(680,1,NULL),(681,1,NULL),(682,1,NULL),(683,1,NULL),(684,1,NULL),(685,1,NULL),(686,1,NULL),(687,1,NULL),(688,1,NULL),(689,1,NULL),(690,1,NULL),(691,2,NULL),(692,1,NULL),(693,1,NULL),(694,1,NULL),(695,1,NULL),(696,1,NULL),(697,2,NULL),(698,1,NULL),(699,1,NULL),(700,1,NULL),(701,1,NULL),(702,1,NULL),(703,1,NULL),(704,1,NULL),(705,1,NULL),(706,1,NULL),(707,1,NULL),(708,1,NULL),(709,1,NULL),(710,1,NULL),(711,1,NULL),(712,1,NULL),(713,1,NULL),(714,1,NULL),(715,1,NULL),(716,1,NULL),(717,1,NULL),(718,1,NULL),(719,1,NULL),(720,2,NULL),(721,1,NULL),(722,2,NULL),(723,1,NULL),(724,1,NULL),(725,1,NULL),(726,1,NULL),(727,1,NULL),(728,1,NULL),(729,1,NULL),(730,1,NULL),(731,1,NULL),(732,1,NULL),(733,1,NULL),(734,2,NULL),(735,1,NULL),(736,1,NULL),(737,1,NULL),(738,1,NULL),(739,1,NULL),(740,1,NULL),(741,1,NULL),(742,1,NULL),(743,1,NULL),(744,2,NULL),(745,1,NULL),(746,1,NULL),(747,2,NULL),(748,1,NULL),(749,1,NULL),(750,1,NULL),(751,1,NULL),(752,1,NULL),(753,1,NULL),(754,1,NULL),(755,2,NULL),(756,1,NULL),(757,1,NULL),(758,1,NULL),(759,1,NULL),(760,1,NULL),(761,1,NULL),(762,1,NULL),(763,1,NULL),(764,1,NULL),(765,1,NULL),(766,1,NULL),(767,1,''),(768,1,NULL),(769,1,NULL),(770,1,NULL),(771,1,NULL),(772,1,NULL),(773,1,NULL),(774,1,NULL),(775,2,NULL),(776,1,NULL),(777,1,NULL),(778,1,NULL),(779,1,NULL),(780,2,NULL),(781,1,NULL),(782,1,NULL),(783,1,NULL),(784,1,NULL),(785,1,NULL),(786,1,NULL),(787,1,NULL),(788,1,NULL),(789,1,NULL),(790,2,NULL),(791,1,NULL),(792,2,NULL),(793,2,NULL),(794,2,NULL),(795,1,NULL),(796,1,NULL),(797,1,NULL),(798,1,NULL),(799,1,NULL),(800,1,NULL),(801,1,NULL),(802,1,NULL),(803,2,NULL),(804,1,NULL),(805,1,NULL),(806,1,NULL),(807,2,NULL),(808,1,NULL),(809,1,NULL),(810,2,NULL),(811,2,NULL),(812,2,NULL),(813,2,NULL),(814,2,NULL),(815,1,NULL),(816,1,NULL),(817,1,NULL),(818,1,NULL),(819,1,NULL),(820,1,NULL),(821,1,NULL),(822,1,NULL),(823,1,NULL),(824,1,NULL),(825,1,NULL),(826,1,NULL),(827,1,NULL),(828,1,NULL),(829,1,NULL),(830,1,NULL),(831,1,NULL),(832,1,NULL),(833,1,NULL),(834,2,NULL),(835,2,NULL),(836,1,NULL),(837,1,NULL),(838,1,NULL),(839,1,NULL),(840,1,NULL),(841,1,NULL),(842,1,NULL),(843,1,NULL),(844,1,NULL),(845,1,NULL),(846,1,NULL),(847,1,NULL),(848,1,NULL),(849,1,NULL),(850,1,NULL),(851,2,NULL),(852,1,NULL),(853,1,NULL),(854,1,NULL),(855,1,NULL),(856,1,NULL),(857,1,NULL),(858,1,NULL),(859,1,NULL),(860,1,NULL),(861,1,NULL),(862,1,NULL),(863,1,NULL),(864,1,NULL),(865,1,NULL),(866,1,NULL),(867,1,NULL),(868,1,NULL),(869,1,NULL),(870,1,NULL),(871,1,NULL),(872,2,NULL),(873,1,''),(874,1,NULL),(875,1,NULL),(876,1,NULL),(877,1,NULL),(878,1,NULL),(879,1,NULL),(880,1,NULL),(881,1,NULL),(882,1,NULL),(883,2,NULL),(884,1,NULL),(885,1,NULL),(886,1,NULL),(887,1,NULL),(888,1,NULL),(889,1,NULL),(890,1,NULL),(891,1,NULL),(892,1,''),(893,1,NULL),(894,2,''),(895,1,NULL),(896,2,NULL),(897,1,NULL),(898,1,NULL),(899,1,NULL),(900,1,NULL),(901,1,NULL),(902,1,NULL),(903,1,NULL),(904,1,NULL),(905,1,NULL),(906,1,NULL),(907,1,NULL),(908,1,NULL),(909,1,NULL),(910,1,NULL),(911,1,NULL),(912,2,NULL),(913,1,''),(914,1,NULL),(915,2,NULL),(916,1,NULL),(917,1,NULL),(918,1,NULL),(919,1,NULL),(920,1,''),(921,1,NULL),(922,1,NULL),(923,1,NULL),(924,1,NULL),(925,1,NULL),(926,1,NULL),(927,1,NULL),(928,1,NULL),(929,1,NULL),(930,1,NULL),(931,1,NULL),(932,1,NULL),(933,1,''),(934,1,''),(935,1,NULL),(936,1,NULL),(937,1,NULL),(938,1,''),(939,2,NULL),(940,1,NULL),(941,1,''),(942,1,NULL),(943,1,''),(944,1,''),(945,1,NULL),(946,1,NULL),(947,1,NULL),(948,2,''),(949,1,NULL),(950,1,''),(951,1,''),(952,2,''),(953,1,NULL),(954,1,''),(955,1,''),(956,1,NULL),(957,1,NULL),(958,1,NULL),(959,1,NULL),(960,1,NULL),(961,1,''),(962,1,'josemarcelo@hotmail.com'),(963,1,''),(964,1,''),(965,1,''),(966,1,''),(967,1,''),(968,1,NULL),(969,1,NULL),(970,1,NULL),(971,1,NULL),(972,1,NULL),(973,1,NULL),(974,1,NULL),(975,1,NULL),(976,1,NULL),(977,1,NULL),(978,1,NULL),(979,1,NULL),(980,1,NULL),(981,1,NULL),(982,1,NULL),(983,1,NULL),(984,1,NULL),(985,1,NULL),(986,1,NULL),(987,1,NULL),(988,1,NULL),(989,1,NULL),(990,1,NULL),(991,1,''),(992,1,NULL),(993,1,NULL),(994,1,NULL),(995,1,NULL),(996,1,NULL),(997,1,NULL),(998,1,NULL),(999,1,NULL),(1000,1,NULL),(1001,1,NULL),(1002,1,NULL),(1003,1,NULL),(1004,1,NULL),(1005,1,NULL),(1006,1,NULL),(1007,1,NULL),(1008,2,NULL),(1009,1,NULL),(1010,1,NULL),(1011,1,NULL),(1012,1,NULL),(1013,1,NULL),(1014,2,NULL),(1015,1,NULL),(1016,1,NULL),(1017,1,NULL),(1018,1,NULL),(1019,1,NULL),(1020,1,NULL),(1021,1,NULL),(1022,1,NULL),(1023,1,NULL),(1024,2,NULL),(1025,2,NULL),(1026,1,NULL),(1027,1,NULL),(1028,1,NULL),(1029,1,NULL),(1030,1,NULL),(1031,1,NULL),(1032,1,NULL),(1033,1,NULL),(1034,1,NULL),(1035,1,NULL),(1036,1,NULL),(1037,1,NULL),(1038,1,NULL),(1039,1,NULL),(1040,1,NULL),(1041,1,NULL),(1042,1,NULL),(1043,1,NULL),(1044,1,NULL),(1045,1,NULL),(1046,1,NULL),(1047,1,NULL),(1048,1,NULL),(1049,1,'adilsom@hotmail.com'),(1050,1,''),(1051,1,NULL),(1052,1,NULL),(1053,1,NULL),(1054,1,NULL),(1055,1,NULL),(1056,1,NULL),(1057,2,NULL),(1058,1,NULL),(1059,1,NULL),(1060,1,NULL),(1061,1,NULL),(1062,1,NULL),(1063,1,NULL),(1064,1,NULL),(1065,1,NULL),(1066,1,NULL),(1067,1,NULL),(1068,1,NULL),(1069,1,NULL),(1070,1,NULL),(1071,1,NULL),(1072,1,NULL),(1073,1,NULL),(1074,1,NULL),(1075,1,NULL),(1076,1,NULL),(1077,1,NULL),(1078,1,NULL),(1079,1,NULL),(1080,1,NULL),(1081,1,NULL),(1082,1,NULL),(1083,1,NULL),(1084,1,NULL),(1085,1,NULL),(1086,1,NULL),(1087,1,NULL),(1088,1,NULL),(1089,2,NULL),(1090,1,NULL),(1091,1,NULL),(1092,1,NULL),(1093,1,NULL),(1094,1,NULL),(1095,1,NULL),(1096,1,'manoelcardoso@hotmail.com'),(1097,1,NULL),(1098,1,NULL),(1099,1,NULL),(1100,1,NULL),(1101,1,NULL),(1102,1,NULL),(1103,1,''),(1104,1,''),(1105,1,NULL),(1106,1,NULL),(1107,1,NULL),(1108,1,NULL),(1109,1,NULL),(1110,1,NULL),(1111,2,NULL),(1112,1,NULL),(1113,1,NULL),(1114,1,NULL),(1115,1,NULL),(1116,1,NULL),(1117,1,NULL),(1118,1,NULL),(1119,1,NULL),(1120,1,''),(1121,1,NULL),(1122,1,NULL),(1123,1,NULL),(1124,1,NULL),(1125,1,NULL),(1126,1,NULL),(1127,1,NULL),(1128,1,NULL),(1129,1,NULL),(1130,1,NULL),(1131,1,NULL),(1132,1,NULL),(1133,1,NULL),(1134,1,NULL),(1135,1,NULL),(1136,1,NULL),(1137,1,NULL),(1138,1,NULL),(1139,1,''),(1140,1,NULL),(1141,1,NULL),(1142,1,NULL),(1143,1,NULL),(1144,1,NULL),(1145,1,NULL),(1146,1,NULL),(1147,1,NULL),(1148,1,NULL),(1149,1,NULL),(1150,1,NULL),(1151,1,NULL),(1152,1,NULL),(1153,1,NULL),(1154,1,NULL),(1155,1,NULL),(1156,1,NULL),(1157,1,NULL),(1158,1,NULL),(1159,1,NULL),(1160,1,NULL),(1161,1,NULL),(1162,1,NULL),(1163,2,NULL),(1164,1,NULL),(1165,1,NULL),(1166,1,NULL),(1167,1,NULL),(1168,1,NULL),(1169,1,NULL),(1170,1,NULL),(1171,1,NULL),(1172,1,NULL),(1173,1,NULL),(1174,1,NULL),(1175,1,NULL),(1176,1,NULL),(1177,1,NULL),(1178,1,NULL),(1179,1,NULL),(1180,1,NULL),(1181,1,NULL),(1182,1,NULL),(1183,1,NULL),(1184,1,NULL),(1185,1,NULL),(1186,1,NULL),(1187,1,NULL),(1188,1,NULL),(1189,1,NULL),(1190,1,NULL),(1191,1,NULL),(1192,1,NULL),(1193,1,NULL),(1194,1,NULL),(1195,1,NULL),(1196,1,NULL),(1197,1,NULL),(1198,1,NULL),(1199,1,NULL),(1200,1,NULL),(1201,1,NULL),(1202,1,NULL),(1203,1,NULL),(1204,1,NULL),(1205,1,''),(1206,1,'josilana_santos@hotmail.com'),(1207,1,NULL),(1208,1,NULL),(1209,1,NULL),(1210,1,''),(1211,1,''),(1212,1,''),(1213,1,NULL),(1214,1,''),(1215,1,NULL),(1216,1,NULL),(1217,1,''),(1218,1,NULL),(1219,1,NULL),(1220,1,''),(1221,1,''),(1222,1,NULL),(1223,1,''),(1224,1,''),(1225,1,NULL),(1226,1,''),(1227,1,''),(1228,1,'rubivaldocosta@hotmail.com'),(1229,1,''),(1230,1,NULL),(1231,1,''),(1232,1,''),(1233,1,''),(1234,1,'alex@hotmail.com'),(1235,1,''),(1236,1,''),(1237,1,''),(1238,1,''),(1239,1,''),(1240,1,NULL),(1241,1,NULL),(1242,1,NULL),(1243,1,NULL),(1244,1,NULL),(1245,1,NULL),(1246,1,NULL),(1247,1,NULL),(1248,1,NULL),(1249,1,NULL),(1250,1,NULL),(1251,1,NULL),(1252,1,NULL),(1253,1,NULL),(1254,1,NULL),(1255,1,NULL),(1256,1,NULL),(1257,1,NULL),(1258,1,NULL),(1259,1,NULL),(1260,1,NULL),(1261,1,NULL),(1262,1,NULL),(1263,1,NULL),(1264,1,NULL),(1265,1,NULL),(1266,1,NULL),(1267,1,NULL),(1268,1,NULL),(1269,1,NULL),(1270,1,NULL),(1271,1,NULL),(1272,1,NULL),(1273,1,NULL),(1274,1,NULL),(1275,1,NULL),(1276,1,NULL),(1277,1,NULL),(1278,1,NULL),(1279,1,NULL),(1280,1,NULL),(1281,1,NULL),(1282,1,NULL),(1283,1,NULL),(1284,1,NULL),(1285,1,NULL),(1286,1,NULL),(1287,1,NULL),(1288,1,NULL),(1289,1,NULL),(1290,1,NULL),(1291,1,NULL),(1292,1,NULL),(1293,1,''),(1294,1,NULL),(1295,1,NULL),(1296,1,NULL),(1297,1,NULL),(1298,1,NULL),(1299,1,NULL),(1300,1,NULL),(1301,1,NULL),(1302,1,NULL),(1303,1,NULL),(1304,1,NULL),(1305,1,NULL),(1306,1,NULL),(1307,1,NULL),(1308,1,NULL),(1309,1,NULL),(1310,1,NULL),(1311,1,NULL),(1312,1,NULL),(1313,1,NULL),(1314,1,NULL),(1315,1,'thiagojbmonteiro@yahoo.com.br'),(1316,1,NULL),(1317,1,NULL),(1318,1,NULL),(1319,2,NULL),(1320,1,NULL),(1321,1,NULL),(1322,1,NULL),(1323,1,NULL),(1324,1,NULL),(1325,1,''),(1326,1,NULL),(1327,1,NULL),(1328,1,NULL),(1329,1,NULL),(1330,1,NULL),(1331,1,NULL),(1332,1,NULL),(1333,1,NULL),(1334,1,NULL),(1335,1,NULL),(1336,1,NULL),(1337,1,NULL),(1338,1,NULL),(1339,1,NULL),(1340,1,NULL),(1341,1,NULL),(1342,1,NULL),(1343,1,NULL),(1344,1,NULL),(1345,1,NULL),(1346,1,NULL),(1347,1,NULL),(1348,1,NULL),(1349,1,NULL),(1350,1,NULL),(1351,1,NULL),(1352,1,NULL),(1353,1,NULL),(1354,1,NULL),(1355,1,NULL),(1356,1,NULL),(1357,1,NULL),(1358,1,NULL),(1359,1,NULL),(1360,1,NULL),(1361,1,NULL),(1362,1,NULL),(1363,1,NULL),(1364,1,NULL),(1365,1,NULL),(1366,1,NULL),(1367,1,NULL),(1368,2,NULL),(1369,1,NULL),(1370,1,NULL),(1371,1,NULL),(1372,1,NULL),(1373,1,NULL),(1374,1,NULL),(1375,1,NULL),(1376,1,NULL),(1377,1,NULL),(1378,1,NULL),(1379,1,NULL),(1380,1,NULL),(1381,2,NULL),(1382,1,NULL),(1383,1,NULL),(1384,1,NULL),(1385,1,NULL),(1386,1,NULL),(1387,2,NULL),(1388,1,NULL),(1389,1,NULL),(1390,1,NULL),(1391,1,NULL),(1392,1,NULL),(1393,1,NULL),(1394,1,NULL),(1395,1,NULL),(1396,1,NULL),(1397,1,NULL),(1398,1,NULL),(1399,1,NULL),(1400,1,NULL),(1401,2,NULL),(1402,1,NULL),(1403,1,NULL),(1404,1,NULL),(1405,1,NULL),(1406,1,NULL),(1407,1,NULL),(1408,1,NULL),(1409,1,NULL),(1410,1,NULL),(1411,1,NULL),(1412,1,NULL),(1413,1,NULL),(1414,1,NULL),(1415,1,NULL),(1416,1,NULL),(1417,1,NULL),(1418,1,NULL),(1419,1,NULL),(1420,1,''),(1421,1,NULL),(1422,1,NULL),(1423,1,NULL),(1424,1,NULL),(1425,1,NULL),(1426,1,NULL),(1427,1,NULL),(1428,1,NULL),(1429,1,NULL),(1430,1,NULL),(1431,1,NULL),(1432,1,NULL),(1433,1,NULL),(1434,1,NULL),(1435,1,NULL),(1436,1,NULL),(1437,1,NULL),(1438,1,NULL),(1439,1,NULL),(1440,1,NULL),(1441,1,NULL),(1442,1,NULL),(1443,1,NULL),(1444,1,NULL),(1445,1,NULL),(1446,1,NULL),(1447,1,NULL),(1448,1,NULL),(1449,1,NULL),(1450,1,NULL),(1451,2,NULL),(1452,1,NULL),(1453,1,NULL),(1454,1,NULL),(1455,1,NULL),(1456,1,''),(1457,1,NULL),(1458,1,NULL),(1459,1,NULL),(1460,1,NULL),(1461,1,NULL),(1462,1,NULL),(1463,1,NULL),(1464,1,NULL),(1465,1,NULL),(1466,1,NULL),(1467,1,NULL),(1468,1,NULL),(1469,1,NULL),(1470,1,NULL),(1471,1,NULL),(1472,1,NULL),(1473,1,NULL),(1474,1,NULL),(1475,1,NULL),(1476,2,NULL),(1477,1,NULL),(1478,1,NULL),(1479,1,NULL),(1480,1,NULL),(1481,1,NULL),(1482,1,NULL),(1483,1,NULL),(1484,1,NULL),(1485,1,NULL),(1486,1,NULL),(1487,1,NULL),(1488,2,NULL),(1489,1,NULL),(1490,1,NULL),(1491,1,NULL),(1492,1,NULL),(1493,1,NULL),(1494,1,NULL),(1495,1,NULL),(1496,1,NULL),(1497,1,NULL),(1498,1,NULL),(1499,1,NULL),(1500,1,NULL),(1501,2,NULL),(1502,1,NULL),(1503,1,NULL),(1504,1,NULL),(1505,1,NULL),(1506,1,NULL),(1507,1,NULL),(1508,1,NULL),(1509,1,NULL),(1510,1,NULL),(1511,1,NULL),(1512,1,NULL),(1513,1,NULL),(1514,1,NULL),(1515,2,NULL),(1516,1,NULL),(1517,1,NULL),(1518,1,NULL),(1519,1,NULL),(1520,1,NULL),(1521,1,NULL),(1522,2,NULL),(1523,1,NULL),(1524,1,NULL),(1525,1,NULL),(1526,1,NULL),(1527,1,NULL),(1528,2,NULL),(1529,1,NULL),(1530,1,NULL),(1531,2,NULL),(1532,1,NULL),(1533,1,NULL),(1534,1,NULL),(1535,2,NULL),(1536,1,NULL),(1537,1,NULL),(1538,1,NULL),(1539,1,NULL),(1540,1,NULL),(1541,1,NULL),(1542,1,NULL),(1543,2,NULL),(1544,1,NULL),(1545,1,NULL),(1546,1,NULL),(1547,1,NULL),(1548,1,NULL),(1549,1,NULL),(1550,1,NULL),(1551,1,NULL),(1552,1,NULL),(1553,1,NULL),(1554,1,NULL),(1555,1,NULL),(1556,1,NULL),(1557,1,NULL),(1558,2,NULL),(1559,2,NULL),(1560,1,NULL),(1561,1,NULL),(1562,2,NULL),(1563,1,NULL),(1564,1,NULL),(1565,1,NULL),(1566,2,NULL),(1567,1,NULL),(1568,1,NULL),(1569,1,NULL),(1570,1,NULL),(1571,1,NULL),(1572,1,NULL),(1573,2,''),(1574,1,NULL),(1575,1,NULL),(1576,1,NULL),(1577,1,NULL),(1578,1,NULL),(1579,1,NULL),(1580,1,NULL),(1581,1,NULL),(1582,1,NULL),(1583,1,NULL),(1584,1,NULL),(1585,1,NULL),(1586,1,NULL),(1587,2,NULL),(1588,1,NULL),(1589,1,NULL),(1590,1,NULL),(1591,1,NULL),(1592,1,NULL),(1593,1,NULL),(1594,1,NULL),(1595,1,NULL),(1596,2,NULL),(1597,1,NULL),(1598,1,NULL),(1599,1,NULL),(1600,1,NULL),(1601,1,NULL),(1602,1,NULL),(1603,1,NULL),(1604,1,NULL),(1605,1,NULL),(1606,1,NULL),(1607,1,NULL),(1608,1,NULL),(1609,1,NULL),(1610,2,NULL),(1611,1,NULL),(1612,1,NULL),(1613,1,NULL),(1614,2,NULL),(1615,1,NULL),(1616,1,NULL),(1617,1,NULL),(1618,1,NULL),(1619,1,NULL),(1620,1,NULL),(1621,1,NULL),(1622,1,NULL),(1623,1,NULL),(1624,1,NULL),(1625,1,NULL),(1626,1,NULL),(1627,1,NULL),(1628,2,NULL),(1629,1,NULL),(1630,1,NULL),(1631,1,NULL),(1632,1,NULL),(1633,1,NULL),(1634,1,NULL),(1635,1,NULL),(1636,1,NULL),(1637,1,NULL),(1638,1,NULL),(1639,1,NULL),(1640,1,NULL),(1641,1,NULL),(1642,1,NULL),(1643,1,NULL),(1644,1,NULL),(1645,1,NULL),(1646,1,NULL),(1647,1,NULL),(1648,1,NULL),(1649,1,NULL),(1650,1,NULL),(1651,2,'JOSIUCHOA@UOL.COM.BR'),(1652,2,NULL),(1653,1,NULL),(1654,1,NULL),(1655,1,NULL),(1656,1,NULL),(1657,2,NULL),(1658,1,NULL),(1659,1,NULL),(1660,1,NULL),(1661,1,NULL),(1662,1,NULL),(1663,1,NULL),(1664,1,NULL),(1665,1,NULL),(1666,1,NULL),(1667,1,NULL),(1668,1,NULL),(1669,1,NULL),(1670,1,NULL),(1671,1,NULL),(1672,1,NULL),(1673,1,NULL),(1674,1,NULL),(1675,2,NULL),(1676,1,NULL),(1677,1,NULL),(1678,1,NULL),(1679,1,NULL),(1680,1,NULL),(1681,1,NULL),(1682,1,NULL),(1683,1,NULL),(1684,1,NULL),(1685,1,NULL),(1686,1,NULL),(1687,1,NULL),(1688,1,NULL),(1689,1,NULL),(1690,1,NULL),(1691,1,NULL),(1692,1,NULL),(1693,1,NULL),(1694,1,NULL),(1695,1,NULL),(1696,1,NULL),(1697,1,NULL),(1698,1,NULL),(1699,1,NULL),(1700,1,NULL),(1701,1,NULL),(1702,2,NULL),(1703,1,NULL),(1704,1,NULL),(1705,1,NULL),(1706,1,NULL),(1707,1,NULL),(1708,1,NULL),(1709,1,NULL),(1710,1,NULL),(1711,1,NULL),(1712,1,NULL),(1713,1,NULL),(1714,1,NULL),(1715,1,NULL),(1716,1,NULL),(1717,1,NULL),(1718,1,NULL),(1719,1,NULL),(1720,1,NULL),(1721,2,NULL),(1722,1,NULL),(1723,1,NULL),(1724,2,NULL),(1725,1,NULL),(1726,1,NULL),(1727,1,NULL),(1728,1,NULL),(1729,1,NULL),(1730,1,NULL),(1731,1,NULL),(1732,1,NULL),(1733,1,NULL),(1734,1,NULL),(1735,1,NULL),(1736,1,'erivandarocha@hotmail.com'),(1737,1,NULL),(1738,1,NULL),(1739,1,NULL),(1740,1,NULL),(1741,1,NULL),(1742,1,NULL),(1743,1,NULL),(1744,1,NULL),(1745,1,NULL),(1746,1,NULL),(1747,1,NULL),(1748,1,NULL),(1749,1,NULL),(1750,1,NULL),(1751,1,NULL),(1752,1,NULL),(1753,1,''),(1754,1,NULL),(1755,1,NULL),(1756,1,NULL),(1757,1,NULL),(1758,1,NULL),(1759,1,NULL),(1760,1,''),(1761,1,NULL),(1762,1,NULL),(1763,1,NULL),(1764,1,NULL),(1765,1,NULL),(1766,1,NULL),(1767,1,NULL),(1768,1,NULL),(1769,1,NULL),(1770,1,NULL),(1771,1,NULL),(1772,1,NULL),(1773,1,NULL),(1774,1,NULL),(1775,1,NULL),(1776,1,NULL),(1777,1,NULL),(1778,1,NULL),(1779,1,NULL),(1780,1,NULL),(1781,1,NULL),(1782,1,NULL),(1783,1,NULL),(1784,1,NULL),(1785,1,NULL),(1786,1,NULL),(1787,1,NULL),(1788,1,NULL),(1789,1,NULL),(1790,1,NULL),(1791,1,NULL),(1792,1,NULL),(1793,1,NULL),(1794,1,NULL),(1795,1,NULL),(1796,1,NULL),(1797,1,NULL),(1798,1,NULL),(1799,1,''),(1800,1,NULL),(1801,1,NULL),(1802,1,NULL),(1803,1,NULL),(1804,1,NULL),(1805,1,NULL),(1806,1,NULL),(1807,1,NULL),(1808,1,NULL),(1809,1,NULL),(1810,1,NULL),(1811,1,NULL),(1812,1,NULL),(1813,1,NULL),(1814,1,NULL),(1815,1,NULL),(1816,1,NULL),(1817,1,NULL),(1818,1,NULL),(1819,1,NULL),(1820,1,NULL),(1821,1,NULL),(1822,1,NULL),(1823,1,NULL),(1824,1,NULL),(1825,1,NULL),(1826,1,NULL),(1827,1,NULL),(1828,1,NULL),(1829,1,''),(1830,1,NULL),(1831,1,NULL),(1832,1,NULL),(1833,1,NULL),(1834,1,NULL),(1835,1,''),(1836,1,NULL),(1837,1,NULL),(1838,1,''),(1839,1,NULL),(1840,1,NULL),(1841,1,NULL),(1842,1,NULL),(1843,1,NULL),(1844,1,NULL),(1845,1,NULL),(1846,1,NULL),(1847,1,NULL),(1848,1,NULL),(1849,1,NULL),(1850,1,NULL),(1851,1,NULL),(1852,1,NULL),(1853,1,NULL),(1854,1,NULL),(1855,1,NULL),(1856,1,NULL),(1857,1,NULL),(1858,1,NULL),(1859,1,NULL),(1860,1,NULL),(1861,1,NULL),(1862,1,NULL),(1863,1,NULL),(1864,1,NULL),(1865,1,NULL),(1866,1,NULL),(1867,1,NULL),(1868,1,NULL),(1869,1,NULL),(1870,1,NULL),(1871,1,NULL),(1872,2,NULL),(1873,1,NULL),(1874,2,NULL),(1875,1,NULL),(1876,1,NULL),(1877,1,NULL),(1878,1,NULL),(1879,1,''),(1880,1,NULL),(1881,1,''),(1882,1,''),(1883,1,NULL),(1884,1,NULL),(1885,1,NULL),(1886,1,''),(1887,1,NULL),(1888,1,''),(1889,1,NULL),(1890,1,NULL),(1891,1,''),(1892,1,NULL),(1893,1,''),(1894,1,'xavier@hotmail.com'),(1895,1,''),(1896,1,''),(1897,2,NULL),(1898,1,NULL),(1899,1,NULL),(1900,1,NULL),(1901,1,NULL),(1902,1,NULL),(1903,1,NULL),(1904,1,NULL),(1905,1,NULL),(1906,1,NULL),(1907,1,NULL),(1908,1,NULL),(1909,1,NULL),(1910,1,NULL),(1911,1,NULL),(1912,1,NULL),(1913,1,NULL),(1914,1,NULL),(1915,1,NULL),(1916,1,NULL),(1917,1,NULL),(1918,1,NULL),(1919,1,NULL),(1920,1,NULL),(1921,1,NULL),(1922,1,NULL),(1923,1,NULL),(1924,1,NULL),(1925,1,NULL),(1926,1,NULL),(1927,1,NULL),(1928,1,NULL),(1929,1,NULL),(1930,1,NULL),(1931,1,NULL),(1932,1,NULL),(1933,1,NULL),(1934,1,NULL),(1935,2,NULL),(1936,1,NULL),(1937,1,NULL),(1938,1,NULL),(1939,1,NULL),(1940,1,NULL),(1941,1,NULL),(1942,1,NULL),(1943,1,NULL),(1944,1,NULL),(1945,1,NULL),(1946,1,NULL),(1947,1,NULL),(1948,1,NULL),(1949,1,NULL),(1950,1,NULL),(1951,1,NULL),(1952,1,NULL),(1953,1,NULL),(1954,1,NULL),(1955,1,NULL),(1956,1,NULL),(1957,1,NULL),(1958,1,NULL),(1959,1,NULL),(1960,1,NULL),(1961,1,NULL),(1962,1,NULL),(1963,2,NULL),(1964,1,NULL),(1965,2,NULL),(1966,1,'jota.gt@.bol.com.br'),(1967,1,NULL),(1968,1,NULL),(1969,1,NULL),(1970,1,NULL),(1971,1,NULL),(1972,1,NULL),(1973,2,NULL),(1974,1,NULL),(1975,1,NULL),(1976,1,NULL),(1977,1,NULL),(1978,1,NULL),(1979,1,NULL),(1980,1,NULL),(1981,1,''),(1982,1,''),(1983,1,NULL),(1984,1,NULL),(1985,1,'vantuiler@hotmail.com'),(1986,1,NULL),(1987,1,NULL),(1988,1,NULL),(1989,1,NULL),(1990,1,''),(1991,1,NULL),(1992,1,''),(1993,1,NULL),(1994,1,NULL),(1995,1,NULL),(1996,1,NULL),(1997,1,NULL),(1998,1,NULL),(1999,1,NULL),(2000,1,NULL),(2001,1,''),(2002,1,NULL),(2003,1,NULL),(2004,2,NULL),(2005,1,NULL),(2006,1,NULL),(2007,1,NULL),(2008,1,NULL),(2009,1,NULL),(2010,1,NULL),(2011,1,NULL),(2012,1,NULL),(2013,1,NULL),(2014,1,NULL),(2015,1,NULL),(2016,1,NULL),(2017,1,NULL),(2018,1,NULL),(2019,1,NULL),(2020,2,NULL),(2021,1,NULL),(2022,1,NULL),(2023,1,NULL),(2024,1,NULL),(2025,1,NULL),(2026,1,NULL),(2027,1,NULL),(2028,1,NULL),(2029,1,NULL),(2030,1,NULL),(2031,1,NULL),(2032,1,NULL),(2033,1,''),(2034,1,NULL),(2035,1,NULL),(2036,1,NULL),(2037,1,NULL),(2038,1,NULL),(2039,1,NULL),(2040,1,NULL),(2041,1,NULL),(2042,1,NULL),(2043,1,''),(2044,1,NULL),(2045,1,NULL),(2046,1,NULL),(2047,1,NULL),(2048,1,NULL),(2049,1,NULL),(2050,1,NULL),(2051,1,NULL),(2052,1,NULL),(2053,1,NULL),(2054,1,NULL),(2055,1,NULL),(2056,1,NULL),(2057,1,NULL),(2058,1,NULL),(2059,2,NULL),(2060,1,NULL),(2061,1,NULL),(2062,1,NULL),(2063,1,NULL),(2064,1,NULL),(2065,1,NULL),(2066,1,NULL),(2067,1,NULL),(2068,1,NULL),(2069,1,NULL),(2070,1,NULL),(2071,1,NULL),(2072,1,NULL),(2073,1,NULL),(2074,1,NULL),(2075,1,NULL),(2076,1,NULL),(2077,1,NULL),(2078,1,NULL),(2079,1,NULL),(2080,1,NULL),(2081,1,NULL),(2082,1,NULL),(2083,1,NULL),(2084,1,NULL),(2085,1,NULL),(2086,1,NULL),(2087,1,NULL),(2088,1,NULL),(2089,1,NULL),(2090,1,NULL),(2091,1,NULL),(2092,1,NULL),(2093,1,NULL),(2094,1,NULL),(2095,1,''),(2096,1,''),(2097,1,NULL),(2098,1,NULL),(2099,1,NULL),(2100,1,NULL),(2101,1,NULL),(2102,1,NULL),(2103,1,NULL),(2104,1,NULL),(2105,1,NULL),(2106,1,NULL),(2107,1,NULL),(2108,1,NULL),(2109,1,NULL),(2110,1,NULL),(2111,1,NULL),(2112,1,NULL),(2113,1,NULL),(2114,1,NULL),(2115,1,NULL),(2116,1,NULL),(2117,1,NULL),(2118,1,NULL),(2119,1,NULL),(2120,1,NULL),(2121,1,NULL),(2122,1,NULL),(2123,1,NULL),(2124,1,NULL),(2125,1,NULL),(2126,1,NULL),(2127,1,NULL),(2128,1,NULL),(2129,1,NULL),(2130,1,NULL),(2131,1,NULL),(2132,1,NULL),(2133,1,NULL),(2134,1,NULL),(2135,1,NULL),(2136,1,NULL),(2137,1,NULL),(2138,1,NULL),(2139,1,NULL),(2140,1,NULL),(2141,1,NULL),(2142,1,NULL),(2143,1,NULL),(2144,1,NULL),(2145,1,NULL),(2146,1,NULL),(2147,1,NULL),(2148,1,''),(2149,1,NULL),(2150,1,NULL),(2151,1,NULL),(2152,1,NULL),(2153,1,NULL),(2154,1,NULL),(2155,1,NULL),(2156,1,NULL),(2157,1,NULL),(2158,1,NULL),(2159,1,NULL),(2160,1,NULL),(2161,1,NULL),(2162,1,NULL),(2163,2,NULL),(2164,1,NULL),(2165,1,NULL),(2166,1,NULL),(2167,1,NULL),(2168,1,NULL),(2169,1,NULL),(2170,1,NULL),(2171,1,NULL),(2172,1,''),(2173,1,NULL),(2174,1,NULL),(2175,1,NULL),(2176,1,NULL),(2177,1,NULL),(2178,1,NULL),(2179,1,''),(2180,1,NULL),(2181,1,NULL),(2182,1,''),(2183,1,NULL),(2184,2,NULL),(2185,1,NULL),(2186,1,NULL),(2187,1,''),(2188,1,NULL),(2189,1,NULL),(2190,1,NULL),(2191,1,NULL),(2192,1,'al@gmail.com'),(2193,1,NULL),(2194,1,NULL),(2195,1,''),(2196,1,NULL),(2197,1,NULL),(2198,1,NULL),(2199,1,NULL),(2200,1,NULL),(2201,1,NULL),(2202,1,NULL),(2203,1,NULL),(2204,2,NULL),(2205,1,NULL),(2206,1,NULL),(2207,1,NULL),(2208,1,NULL),(2209,1,NULL),(2210,1,NULL),(2211,1,NULL),(2212,1,NULL),(2213,1,NULL),(2214,1,NULL),(2215,1,NULL),(2216,1,NULL),(2217,1,NULL),(2218,1,NULL),(2219,1,NULL),(2220,1,NULL),(2221,1,NULL),(2222,1,NULL),(2223,1,NULL),(2224,1,NULL),(2225,1,NULL),(2226,1,NULL),(2227,1,NULL),(2228,1,NULL),(2229,1,NULL),(2230,1,NULL),(2231,1,NULL),(2232,1,NULL),(2233,1,NULL),(2234,1,NULL),(2235,1,NULL),(2236,1,NULL),(2237,1,NULL),(2238,1,NULL),(2239,1,NULL),(2240,1,NULL),(2241,1,NULL),(2242,1,NULL),(2243,1,NULL),(2244,1,NULL),(2245,1,NULL),(2246,1,NULL),(2247,1,NULL),(2248,1,NULL),(2249,1,NULL),(2250,1,NULL),(2251,1,NULL),(2252,1,NULL),(2253,1,NULL),(2254,1,NULL),(2255,1,NULL),(2256,1,NULL),(2257,1,NULL),(2258,1,NULL),(2259,1,NULL),(2260,1,NULL),(2261,1,NULL),(2262,1,NULL),(2263,1,NULL),(2264,1,NULL),(2265,1,NULL),(2266,1,NULL),(2267,1,NULL),(2268,1,NULL),(2269,1,NULL),(2270,1,NULL),(2271,1,NULL),(2272,1,NULL),(2273,1,NULL),(2274,1,NULL),(2275,1,NULL),(2276,1,NULL),(2277,1,NULL),(2278,1,NULL),(2279,1,''),(2280,1,NULL),(2281,1,''),(2282,1,NULL),(2283,1,''),(2284,1,NULL),(2285,1,''),(2286,1,'beneditosilva@hotmail.com'),(2287,1,NULL),(2288,1,NULL),(2289,1,''),(2290,1,''),(2291,1,''),(2292,1,'silas@gmail.com'),(2293,1,NULL),(2294,1,NULL),(2295,1,NULL),(2296,1,NULL),(2297,1,NULL),(2298,1,''),(2299,1,NULL),(2300,1,NULL),(2301,1,NULL),(2302,1,''),(2303,1,''),(2304,1,NULL),(2305,1,''),(2306,1,NULL),(2307,1,NULL),(2308,1,NULL),(2309,1,NULL),(2310,1,NULL),(2311,1,NULL),(2312,1,NULL),(2313,1,NULL),(2314,1,NULL),(2315,1,NULL),(2316,1,''),(2317,1,NULL),(2318,1,NULL),(2319,1,NULL),(2320,1,NULL),(2321,1,NULL),(2322,1,NULL),(2323,1,NULL),(2324,1,NULL),(2325,1,NULL),(2326,1,NULL),(2327,1,NULL),(2328,1,NULL),(2329,1,NULL),(2330,1,NULL),(2331,1,NULL),(2332,2,NULL),(2333,1,NULL),(2334,1,NULL),(2335,1,NULL),(2336,1,NULL),(2337,1,NULL),(2338,1,NULL),(2339,1,NULL),(2340,1,NULL),(2341,1,NULL),(2342,1,NULL),(2343,1,NULL),(2344,1,NULL),(2345,1,NULL),(2346,1,NULL),(2347,1,NULL),(2348,1,NULL),(2349,1,NULL),(2350,1,NULL),(2351,1,NULL),(2352,1,NULL),(2353,2,NULL),(2354,1,NULL),(2355,1,NULL),(2356,1,NULL),(2357,1,NULL),(2358,1,NULL),(2359,1,NULL),(2360,1,NULL),(2361,1,NULL),(2362,1,NULL),(2363,1,NULL),(2364,1,NULL),(2365,1,NULL),(2366,1,NULL),(2367,2,NULL),(2368,1,NULL),(2369,1,NULL),(2370,1,NULL),(2371,1,NULL),(2372,1,NULL),(2373,1,NULL),(2374,1,NULL),(2375,2,''),(2376,1,NULL),(2377,1,NULL),(2378,2,NULL),(2379,1,NULL),(2380,1,NULL),(2381,1,NULL),(2382,2,NULL),(2383,1,NULL),(2384,1,NULL),(2385,1,NULL),(2386,1,NULL),(2387,2,NULL),(2388,1,NULL),(2389,1,NULL),(2390,1,NULL),(2391,1,NULL),(2392,2,NULL),(2393,1,NULL),(2394,1,NULL),(2395,1,NULL),(2396,1,NULL),(2397,1,NULL),(2398,1,NULL),(2399,2,NULL),(2400,2,NULL),(2401,1,NULL),(2402,1,NULL),(2403,1,NULL),(2404,2,NULL),(2405,1,NULL),(2406,2,NULL),(2407,1,NULL),(2408,1,NULL),(2409,1,NULL),(2410,2,NULL),(2411,2,NULL),(2412,1,NULL),(2413,1,NULL),(2414,1,NULL),(2415,1,NULL),(2416,1,NULL),(2417,1,NULL),(2418,2,NULL),(2419,1,NULL),(2420,1,NULL),(2421,1,NULL),(2422,2,NULL),(2423,1,NULL),(2424,1,NULL),(2425,1,NULL),(2426,1,NULL),(2427,1,NULL),(2428,1,NULL),(2429,1,NULL),(2430,1,NULL),(2431,1,NULL),(2432,1,NULL),(2433,1,NULL),(2434,1,NULL),(2435,1,NULL),(2436,1,NULL),(2437,1,NULL),(2438,1,NULL),(2439,1,NULL),(2440,1,NULL),(2441,2,NULL),(2442,1,NULL),(2443,2,NULL),(2444,1,NULL),(2445,1,NULL),(2446,1,NULL),(2447,1,NULL),(2448,1,NULL),(2449,1,NULL),(2450,1,NULL),(2451,2,NULL),(2452,1,NULL),(2453,1,NULL),(2454,1,NULL),(2455,1,NULL),(2456,1,NULL),(2457,1,NULL),(2458,1,NULL),(2459,1,NULL),(2460,2,NULL),(2461,2,NULL),(2462,1,NULL),(2463,2,NULL),(2464,1,NULL),(2465,1,NULL),(2466,1,NULL),(2467,1,NULL),(2468,1,NULL),(2469,1,NULL),(2470,2,NULL),(2471,1,NULL),(2472,1,NULL),(2473,2,NULL),(2474,1,NULL),(2475,1,NULL),(2476,1,NULL),(2477,1,NULL),(2478,1,NULL),(2479,1,NULL),(2480,1,NULL),(2481,1,NULL),(2482,1,NULL),(2483,1,NULL),(2484,1,NULL),(2485,1,NULL),(2486,1,NULL),(2487,1,NULL),(2488,2,NULL),(2489,1,NULL),(2490,1,NULL),(2491,1,NULL),(2492,1,NULL),(2493,1,NULL),(2494,1,NULL),(2495,1,NULL),(2496,1,NULL),(2497,1,NULL),(2498,1,NULL),(2499,1,NULL),(2500,1,NULL),(2501,1,NULL),(2502,1,NULL),(2503,1,NULL),(2504,1,NULL),(2505,2,NULL),(2506,1,NULL),(2507,2,NULL),(2508,1,NULL),(2509,1,NULL),(2510,1,NULL),(2511,2,NULL),(2512,1,NULL),(2513,1,NULL),(2514,1,NULL),(2515,1,NULL),(2516,1,NULL),(2517,1,NULL),(2518,1,NULL),(2519,1,NULL),(2520,1,NULL),(2521,1,NULL),(2522,1,NULL),(2523,1,NULL),(2524,1,NULL),(2525,1,NULL),(2526,1,NULL),(2527,1,NULL),(2528,1,NULL),(2529,2,NULL),(2530,1,NULL),(2531,1,NULL),(2532,1,NULL),(2533,1,NULL),(2534,1,NULL),(2535,1,NULL),(2536,1,NULL),(2537,1,NULL),(2538,1,NULL),(2539,1,NULL),(2540,1,NULL),(2541,1,NULL),(2542,1,NULL),(2543,1,NULL),(2544,1,NULL),(2545,1,NULL),(2546,1,NULL),(2547,1,NULL),(2548,2,NULL),(2549,2,NULL),(2550,2,NULL),(2551,1,NULL),(2552,1,NULL),(2553,2,NULL),(2554,1,NULL),(2555,1,NULL),(2556,1,NULL),(2557,1,NULL),(2558,1,NULL),(2559,1,NULL),(2560,1,NULL),(2561,1,NULL),(2562,1,NULL),(2563,1,NULL),(2564,1,NULL),(2565,1,NULL),(2566,1,NULL),(2567,1,NULL),(2568,1,NULL),(2569,1,NULL),(2570,1,NULL),(2571,1,NULL),(2572,2,NULL),(2573,1,NULL),(2574,1,NULL),(2575,1,NULL),(2576,1,NULL),(2577,1,NULL),(2578,1,NULL),(2579,1,NULL),(2580,1,NULL),(2581,1,NULL),(2582,1,NULL),(2583,1,NULL),(2584,2,NULL),(2585,1,NULL),(2586,1,NULL),(2587,1,NULL),(2588,1,NULL),(2589,1,NULL),(2590,2,NULL),(2591,1,NULL),(2592,1,NULL),(2593,1,NULL),(2594,1,NULL),(2595,1,NULL),(2596,1,NULL),(2597,1,NULL),(2598,1,NULL),(2599,1,NULL),(2600,1,NULL),(2601,1,NULL),(2602,1,NULL),(2603,1,NULL),(2604,1,NULL),(2605,1,NULL),(2606,1,NULL),(2607,1,NULL),(2608,1,NULL),(2609,1,NULL),(2610,1,NULL),(2611,2,NULL),(2612,1,NULL),(2613,1,NULL),(2614,1,NULL),(2615,1,NULL),(2616,1,NULL),(2617,1,NULL),(2618,1,NULL),(2619,1,NULL),(2620,1,NULL),(2621,1,NULL),(2622,1,NULL),(2623,1,''),(2624,1,NULL),(2625,1,NULL),(2626,1,NULL),(2627,1,NULL),(2628,1,NULL),(2629,1,NULL),(2630,1,NULL),(2631,1,NULL),(2632,2,NULL),(2633,1,NULL),(2634,1,NULL),(2635,1,NULL),(2636,1,NULL),(2637,1,NULL),(2638,1,NULL),(2639,1,NULL),(2640,1,NULL),(2641,1,NULL),(2642,1,NULL),(2643,1,NULL),(2644,1,NULL),(2645,1,NULL),(2646,1,NULL),(2647,1,NULL),(2648,1,NULL),(2649,1,NULL),(2650,1,NULL),(2651,1,NULL),(2652,1,NULL),(2653,1,NULL),(2654,1,NULL),(2655,1,NULL),(2656,1,NULL),(2657,1,NULL),(2658,1,NULL),(2659,1,NULL),(2660,1,NULL),(2661,1,NULL),(2662,1,NULL),(2663,1,NULL),(2664,1,NULL),(2665,1,NULL),(2666,2,NULL),(2667,1,NULL),(2668,1,NULL),(2669,2,NULL),(2670,1,NULL),(2671,1,NULL),(2672,1,NULL),(2673,1,NULL),(2674,2,NULL),(2675,1,NULL),(2676,1,NULL),(2677,1,NULL),(2678,1,NULL),(2679,1,NULL),(2680,1,NULL),(2681,1,NULL),(2682,1,NULL),(2683,1,NULL),(2684,1,NULL),(2685,1,NULL),(2686,1,NULL),(2687,1,NULL),(2688,1,NULL),(2689,2,NULL),(2690,1,NULL),(2691,1,NULL),(2692,1,NULL),(2693,1,NULL),(2694,1,NULL),(2695,1,NULL),(2696,1,NULL),(2697,1,NULL),(2698,1,NULL),(2699,1,NULL),(2700,1,NULL),(2701,1,NULL),(2702,1,'luiz@gmail.com'),(2703,1,NULL),(2704,1,NULL),(2705,1,NULL),(2706,2,NULL),(2707,1,NULL),(2708,2,NULL),(2709,1,NULL),(2710,1,NULL),(2711,1,NULL),(2712,1,NULL),(2713,1,NULL),(2714,1,NULL),(2715,1,NULL),(2716,1,NULL),(2717,2,NULL),(2718,1,NULL),(2719,1,''),(2720,1,NULL),(2721,1,NULL),(2722,2,NULL),(2723,1,NULL),(2724,1,''),(2725,1,NULL),(2726,1,NULL),(2727,1,NULL),(2728,1,NULL),(2729,1,NULL),(2730,1,NULL),(2731,1,NULL),(2732,1,NULL),(2733,1,NULL),(2734,1,NULL),(2735,1,NULL),(2736,1,NULL),(2737,1,NULL),(2738,1,NULL),(2739,1,NULL),(2740,1,NULL),(2741,1,NULL),(2742,1,NULL),(2743,1,NULL),(2744,1,NULL),(2745,1,NULL),(2746,1,NULL),(2747,1,NULL),(2748,1,NULL),(2749,1,NULL),(2750,1,NULL),(2751,1,NULL),(2752,1,'adrianocastelo@bol.com.br'),(2753,1,'aldilenebaliriro@hotmail.com'),(2754,1,NULL),(2755,1,NULL),(2756,1,NULL),(2757,1,NULL),(2758,1,NULL),(2759,1,NULL),(2760,1,NULL),(2761,1,NULL),(2762,1,NULL),(2763,1,NULL),(2764,1,NULL),(2765,1,NULL),(2766,1,NULL),(2767,1,NULL),(2768,1,NULL),(2769,1,NULL),(2770,1,NULL),(2771,1,NULL),(2772,1,NULL),(2773,1,NULL),(2774,1,NULL),(2775,1,NULL),(2776,1,NULL),(2777,2,NULL),(2778,1,NULL),(2779,2,NULL),(2780,2,'bertolini@bertolini.com'),(2781,1,NULL),(2782,1,NULL),(2783,1,NULL),(2784,1,NULL),(2785,1,NULL),(2786,1,NULL),(2787,1,NULL),(2788,1,NULL),(2789,1,NULL),(2790,1,NULL),(2791,1,NULL),(2792,1,NULL),(2793,1,NULL),(2794,1,NULL),(2795,1,NULL),(2796,1,NULL),(2797,1,NULL),(2798,1,NULL),(2799,1,NULL),(2800,1,NULL),(2801,1,NULL),(2802,1,NULL),(2803,1,NULL),(2804,1,NULL),(2805,1,''),(2806,1,''),(2807,1,NULL),(2808,2,NULL),(2809,2,NULL),(2810,2,NULL),(2811,2,NULL),(2812,2,NULL),(2813,1,NULL),(2814,2,NULL),(2815,2,NULL),(2816,2,'tbl@hotmail.com'),(2817,1,NULL),(2818,1,NULL),(2819,2,NULL),(2820,2,NULL),(2821,2,NULL),(2822,2,NULL),(2823,2,NULL),(2824,2,''),(2825,2,'marco_gaia1@hotmail.com'),(2826,2,NULL),(2827,2,'contabil@gruporeicon.com.br'),(2828,1,NULL),(2829,2,NULL),(2830,1,NULL),(2831,1,''),(2832,1,''),(2833,1,NULL),(2834,1,NULL),(2835,1,NULL),(2836,1,NULL),(2837,1,NULL),(2838,1,NULL),(2839,1,NULL),(2840,1,NULL),(2841,1,''),(2842,1,NULL),(2843,2,NULL),(2844,1,NULL),(2845,1,NULL),(2846,1,NULL),(2847,1,NULL),(2848,1,NULL),(2849,1,NULL),(2850,1,NULL),(2851,1,NULL),(2852,1,NULL),(2853,1,NULL),(2854,2,NULL),(2855,1,NULL),(2856,1,''),(2857,1,NULL),(2858,1,NULL),(2859,1,NULL),(2860,1,NULL),(2861,1,NULL),(2862,1,NULL),(2863,1,NULL),(2864,1,NULL),(2865,1,NULL),(2866,1,NULL),(2867,1,NULL),(2868,1,NULL),(2869,1,NULL),(2870,1,NULL),(2871,1,NULL),(2872,1,NULL),(2873,1,NULL),(2874,1,NULL),(2875,2,NULL),(2876,1,NULL),(2877,1,NULL),(2878,1,NULL),(2879,1,NULL),(2880,1,NULL),(2881,1,NULL),(2882,1,NULL),(2883,1,NULL),(2884,1,NULL),(2885,1,NULL),(2886,1,'edmilsonmarquesmorreira@bol.com.br'),(2887,1,NULL),(2888,1,'maxsarmento@hotmail.com'),(2889,1,''),(2890,1,NULL),(2891,1,NULL),(2892,1,NULL),(2893,1,NULL),(2894,1,NULL),(2895,1,NULL),(2896,1,NULL),(2897,1,NULL),(2898,1,NULL),(2899,1,NULL),(2900,1,NULL),(2901,1,NULL),(2902,1,''),(2903,1,NULL),(2904,1,NULL),(2905,1,NULL),(2906,1,NULL),(2907,1,'antonio.tavares@hotmail.com'),(2908,1,NULL),(2909,1,NULL),(2910,1,''),(2911,1,NULL),(2912,1,NULL),(2913,1,NULL),(2914,1,NULL),(2915,1,NULL),(2916,1,NULL),(2917,1,NULL),(2918,1,NULL),(2919,1,NULL),(2920,1,NULL),(2921,1,NULL),(2922,1,NULL),(2923,1,NULL),(2924,1,''),(2925,1,NULL),(2926,1,NULL),(2927,1,NULL),(2928,1,NULL),(2929,1,NULL),(2930,1,NULL),(2931,1,NULL),(2932,1,NULL),(2933,1,NULL),(2934,1,NULL),(2935,1,NULL),(2936,1,NULL),(2937,1,NULL),(2938,1,NULL),(2939,1,NULL),(2940,1,NULL),(2941,1,NULL),(2942,1,NULL),(2943,1,NULL),(2944,1,NULL),(2945,1,NULL),(2946,1,NULL),(2947,1,NULL),(2948,1,NULL),(2949,1,NULL),(2950,1,NULL),(2951,1,NULL),(2952,1,NULL),(2953,1,''),(2954,1,NULL),(2955,1,NULL),(2956,1,NULL),(2957,1,NULL),(2958,1,NULL),(2959,1,NULL),(2960,1,NULL),(2961,1,NULL),(2962,1,NULL),(2963,2,NULL),(2964,1,NULL),(2965,1,NULL),(2966,1,NULL),(2967,1,NULL),(2968,1,NULL),(2969,1,NULL),(2970,1,NULL),(2971,1,NULL),(2972,1,NULL),(2973,1,NULL),(2974,1,NULL),(2975,1,NULL),(2976,1,NULL),(2977,1,NULL),(2978,1,NULL),(2979,1,NULL),(2980,1,NULL),(2981,2,NULL),(2982,1,NULL),(2983,1,NULL),(2984,1,NULL),(2985,1,NULL),(2986,1,NULL),(2987,1,''),(2988,1,NULL),(2989,1,NULL),(2990,1,NULL),(2991,1,NULL),(2992,1,NULL),(2993,1,NULL),(2994,1,NULL),(2995,1,NULL),(2996,1,NULL),(2997,1,NULL),(2998,1,NULL),(2999,1,NULL),(3000,1,''),(3001,1,NULL),(3002,1,NULL),(3003,1,NULL),(3004,1,NULL),(3005,1,''),(3006,1,''),(3007,1,NULL),(3008,1,NULL),(3009,1,''),(3010,1,''),(3011,1,'adimilson.gomes@hotmail.com'),(3012,1,''),(3013,1,''),(3014,1,NULL),(3015,1,NULL),(3016,1,NULL),(3017,1,NULL),(3018,1,NULL),(3019,1,NULL),(3020,1,''),(3021,1,NULL),(3022,1,''),(3023,1,''),(3024,1,''),(3025,1,NULL),(3026,1,''),(3027,1,''),(3028,1,''),(3029,1,''),(3030,1,''),(3031,1,NULL),(3032,1,NULL),(3033,1,''),(3034,1,''),(3035,1,NULL),(3036,1,'manoel@sttrans.com.br'),(3037,1,NULL),(3038,1,NULL),(3039,1,NULL),(3040,1,NULL),(3041,1,NULL),(3042,1,''),(3043,1,''),(3044,1,''),(3045,1,'amilton@gmail.com'),(3046,1,''),(3047,1,''),(3048,1,''),(3049,2,NULL),(3050,1,''),(3051,1,NULL),(3052,2,'d3_contabilidade@msn.com'),(3053,1,''),(3054,1,'luiscarlos@hotmail.com'),(3055,1,'adailson@hotmail.com'),(3056,1,''),(3057,1,NULL),(3058,1,'manoelpena@hotmail.com'),(3059,1,NULL),(3060,1,NULL),(3061,1,NULL),(3062,1,NULL),(3063,1,NULL),(3064,1,NULL),(3065,1,NULL),(3066,2,NULL),(3067,1,NULL),(3068,1,NULL),(3069,1,NULL),(3070,1,NULL),(3071,1,NULL),(3072,1,NULL),(3073,1,NULL),(3074,1,NULL),(3075,1,NULL),(3076,1,NULL),(3077,1,NULL),(3078,1,NULL),(3079,1,NULL),(3080,1,NULL),(3081,1,NULL),(3082,1,NULL),(3083,1,NULL),(3084,1,NULL),(3085,1,NULL),(3086,1,NULL),(3087,1,'raimundo.costa@hotmail.com'),(3088,1,NULL),(3089,1,NULL),(3090,1,NULL),(3091,1,NULL),(3092,1,NULL),(3093,1,NULL),(3094,1,NULL),(3095,1,NULL),(3096,1,''),(3097,1,NULL),(3098,1,'pedro@gmail.com'),(3099,1,''),(3100,1,NULL),(3101,1,NULL),(3102,1,NULL),(3103,1,''),(3104,1,''),(3105,1,NULL),(3106,1,NULL),(3107,1,NULL),(3108,1,''),(3109,1,NULL),(3110,1,NULL),(3111,1,NULL),(3112,1,NULL),(3113,1,NULL),(3114,1,''),(3115,1,''),(3116,1,NULL),(3117,1,NULL),(3118,1,NULL),(3119,1,NULL),(3120,1,NULL),(3121,1,NULL),(3122,2,NULL),(3123,1,NULL),(3124,1,NULL),(3125,1,NULL),(3126,1,NULL),(3127,1,NULL),(3128,1,NULL),(3129,1,NULL),(3130,1,NULL),(3131,1,NULL),(3132,2,NULL),(3133,1,NULL),(3134,1,NULL),(3135,1,NULL),(3136,1,NULL),(3137,1,NULL),(3138,1,NULL),(3139,1,NULL),(3140,1,NULL),(3141,1,NULL),(3142,1,NULL),(3143,1,NULL),(3144,1,NULL),(3145,1,NULL),(3146,1,NULL),(3147,2,NULL),(3148,2,NULL),(3149,1,''),(3150,1,NULL),(3151,1,NULL),(3152,1,NULL),(3153,1,NULL),(3154,1,NULL),(3155,1,NULL),(3156,1,NULL),(3157,1,NULL),(3158,1,NULL),(3159,1,NULL),(3160,1,''),(3161,1,NULL),(3162,1,'gilzo@gmail.com'),(3163,1,NULL),(3164,1,NULL),(3165,2,NULL),(3166,1,NULL),(3167,1,NULL),(3168,1,NULL),(3169,1,NULL),(3170,1,NULL),(3171,1,NULL),(3172,1,NULL),(3173,1,NULL),(3174,1,NULL),(3175,1,NULL),(3176,1,NULL),(3177,1,'ismaelpereira@hotmail.com'),(3178,2,NULL),(3179,1,NULL),(3180,1,NULL),(3181,2,NULL),(3182,1,NULL),(3183,1,NULL),(3184,1,NULL),(3185,1,NULL),(3186,1,NULL),(3187,1,NULL),(3188,1,NULL),(3189,1,NULL),(3190,1,'marlon1572003@yahoo.com.br'),(3191,1,NULL),(3192,1,NULL),(3193,1,NULL),(3194,1,NULL),(3195,1,NULL),(3196,1,NULL),(3197,1,NULL),(3198,1,NULL),(3199,1,NULL),(3200,1,NULL),(3201,1,NULL),(3202,1,NULL),(3203,1,NULL),(3204,1,NULL),(3205,2,NULL),(3206,1,NULL),(3207,1,'danicamoraes@bol.com.br'),(3208,1,NULL),(3209,1,NULL),(3210,1,NULL),(3211,1,NULL),(3212,1,''),(3213,1,''),(3214,1,NULL),(3215,1,NULL),(3216,2,NULL),(3217,1,NULL),(3218,1,NULL),(3219,1,NULL),(3220,1,''),(3221,1,''),(3222,1,''),(3223,1,NULL),(3224,1,''),(3225,1,''),(3226,1,''),(3227,1,NULL),(3228,1,''),(3229,1,''),(3230,1,NULL),(3231,1,NULL),(3232,1,''),(3233,1,''),(3234,1,''),(3235,1,''),(3236,1,'jose.antonio@hotmail.com'),(3237,1,''),(3238,1,'david.rodrigues@gmail.com'),(3239,1,NULL),(3240,1,NULL),(3241,1,''),(3242,1,''),(3243,1,''),(3244,1,''),(3245,2,'alestn@bol.com.br'),(3246,1,''),(3247,1,NULL),(3248,1,''),(3249,1,''),(3250,1,''),(3251,1,''),(3252,1,''),(3253,1,''),(3254,1,''),(3255,1,''),(3256,1,''),(3257,1,''),(3258,1,NULL),(3259,1,NULL),(3260,2,NULL),(3261,1,NULL),(3262,1,NULL),(3263,1,NULL),(3264,1,NULL),(3265,1,NULL),(3266,1,NULL),(3267,1,''),(3268,1,NULL),(3269,1,NULL),(3270,1,NULL),(3271,1,NULL),(3272,1,NULL),(3273,1,NULL),(3274,1,NULL),(3275,1,''),(3276,1,NULL),(3277,1,NULL),(3278,1,NULL),(3279,1,''),(3280,1,''),(3281,1,NULL),(3282,1,NULL),(3283,1,NULL),(3284,1,''),(3285,1,NULL),(3286,1,NULL),(3287,1,NULL),(3288,1,NULL),(3289,1,NULL),(3290,2,NULL),(3291,1,NULL),(3292,1,NULL),(3293,1,NULL),(3294,1,NULL),(3295,1,NULL),(3296,2,NULL),(3297,1,NULL),(3298,1,NULL),(3299,1,NULL),(3300,1,NULL),(3301,1,NULL),(3302,1,NULL),(3303,1,NULL),(3304,1,NULL),(3305,1,NULL),(3306,1,NULL),(3307,1,NULL),(3308,1,NULL),(3309,1,NULL),(3310,1,NULL),(3311,1,NULL),(3312,1,'jonasbenjamim123@hotmail.com'),(3313,1,NULL),(3314,1,NULL),(3315,1,NULL),(3316,2,NULL),(3317,1,NULL),(3318,1,NULL),(3319,1,NULL),(3320,1,NULL),(3321,2,NULL),(3322,1,NULL),(3323,1,NULL),(3324,1,NULL),(3325,1,NULL),(3326,1,''),(3327,1,NULL),(3328,1,NULL),(3329,1,NULL),(3330,1,NULL),(3331,1,NULL),(3332,1,NULL),(3333,1,NULL),(3334,1,NULL),(3335,1,NULL),(3336,1,NULL),(3337,1,NULL),(3338,1,NULL),(3339,1,NULL),(3340,1,NULL),(3341,2,NULL),(3342,1,NULL),(3343,1,NULL),(3344,1,NULL),(3345,1,NULL),(3346,1,NULL),(3347,1,NULL),(3348,2,NULL),(3349,1,NULL),(3350,1,NULL),(3351,1,NULL),(3352,1,NULL),(3353,1,NULL),(3354,2,NULL),(3355,1,NULL),(3356,1,NULL),(3357,1,NULL),(3358,1,NULL),(3359,1,NULL),(3360,1,NULL),(3361,1,NULL),(3362,1,NULL),(3363,1,NULL),(3364,1,NULL),(3365,1,NULL),(3366,1,NULL),(3367,2,NULL),(3368,2,NULL),(3369,1,NULL),(3370,1,''),(3371,1,'marcossilva@hotmail.com'),(3372,1,NULL),(3373,1,''),(3374,1,NULL),(3375,1,''),(3376,1,''),(3377,1,''),(3378,1,'raimundo@hotmail.com'),(3379,1,NULL),(3380,1,''),(3381,1,''),(3382,1,NULL),(3383,1,''),(3384,1,'rui@gmail.com'),(3385,1,''),(3386,1,'manuellcorrea@hotmail.com'),(3387,2,'j.a.l.batista@hotmail.com'),(3388,1,NULL),(3389,1,''),(3390,1,NULL),(3391,1,'jose.tiago@hotmail.com'),(3392,1,'antonio.souza@hotmail.com'),(3393,1,'elizetetemonteiro@hotmail.com'),(3394,1,NULL),(3395,1,NULL),(3396,1,''),(3397,1,NULL),(3398,1,NULL),(3399,1,NULL),(3400,1,NULL),(3401,1,NULL),(3402,1,NULL),(3403,1,NULL),(3404,1,NULL),(3405,1,NULL),(3406,1,NULL),(3407,1,NULL),(3408,1,NULL),(3409,1,NULL),(3410,1,NULL),(3411,1,NULL),(3412,2,NULL),(3413,1,NULL),(3414,1,NULL),(3415,1,NULL),(3416,1,NULL),(3417,1,NULL),(3418,1,NULL),(3419,1,NULL),(3420,1,NULL),(3421,1,NULL),(3422,1,NULL),(3423,1,NULL),(3424,1,NULL),(3425,1,NULL),(3426,1,NULL),(3427,1,NULL),(3428,1,NULL),(3429,1,NULL),(3430,1,''),(3431,1,NULL),(3432,1,NULL),(3433,1,NULL),(3434,1,NULL),(3435,1,NULL),(3436,1,NULL),(3437,1,'pratinumx@ig.com.br'),(3438,1,NULL),(3439,1,NULL),(3440,1,NULL),(3441,1,NULL),(3442,1,NULL),(3443,1,NULL),(3444,1,NULL),(3445,1,NULL),(3446,1,'dionesferreira@yahoo.com.br'),(3447,1,'jorgecorrea@hotmail.com'),(3448,1,''),(3449,1,NULL),(3450,1,NULL),(3451,1,NULL),(3452,1,NULL),(3453,1,NULL),(3454,1,NULL),(3455,1,NULL),(3456,1,NULL),(3457,2,NULL),(3458,1,NULL),(3459,1,NULL),(3460,1,'renatorafaels@bol.com.br'),(3461,1,''),(3462,1,NULL),(3463,1,'luizantonio@hotmail.com'),(3464,1,NULL),(3465,1,NULL),(3466,1,NULL),(3467,1,NULL),(3468,1,NULL),(3469,1,NULL),(3470,1,NULL),(3471,1,NULL),(3472,1,NULL),(3473,1,NULL),(3474,1,NULL),(3475,1,NULL),(3476,1,NULL),(3477,2,NULL),(3478,1,NULL),(3479,1,NULL),(3480,1,NULL),(3481,1,NULL),(3482,1,NULL),(3483,1,''),(3484,1,NULL),(3485,1,NULL),(3486,1,NULL),(3487,1,NULL),(3488,1,''),(3489,1,NULL),(3490,1,NULL),(3491,1,NULL),(3492,1,NULL),(3493,1,NULL),(3494,1,NULL),(3495,1,NULL),(3496,1,NULL),(3497,1,NULL),(3498,1,'manoelwilson@gmail.com'),(3499,2,NULL),(3500,1,''),(3501,1,''),(3502,1,'josineypereira@sttrans.com'),(3503,1,''),(3504,1,''),(3505,1,NULL),(3506,1,NULL),(3507,1,NULL),(3508,1,''),(3509,1,''),(3510,1,NULL),(3511,1,''),(3512,1,NULL),(3513,1,''),(3514,1,''),(3515,1,NULL),(3516,1,NULL),(3517,1,''),(3518,1,NULL),(3519,1,''),(3520,1,NULL),(3521,1,''),(3522,1,NULL),(3523,1,''),(3524,1,'paulo@gmail.com'),(3525,1,''),(3526,1,NULL),(3527,1,NULL),(3528,1,'elieser@gmail.com'),(3529,1,NULL),(3530,1,NULL),(3531,1,NULL),(3532,2,''),(3533,1,NULL),(3534,1,''),(3535,1,''),(3536,1,NULL),(3537,1,''),(3538,1,NULL),(3539,1,''),(3540,1,''),(3541,1,''),(3542,1,''),(3543,1,''),(3544,1,''),(3545,1,''),(3546,1,NULL),(3547,1,''),(3548,1,''),(3549,1,''),(3550,1,''),(3551,1,''),(3552,1,NULL),(3553,1,''),(3554,1,NULL),(3555,1,'marclei@gmail.com'),(3556,1,''),(3557,1,''),(3558,1,''),(3559,1,NULL),(3560,1,''),(3561,1,NULL),(3562,1,NULL),(3563,1,''),(3564,1,''),(3565,1,NULL),(3566,1,NULL),(3567,1,NULL),(3568,1,''),(3569,1,NULL),(3570,1,NULL),(3571,1,''),(3572,1,''),(3573,1,NULL),(3574,1,NULL),(3575,1,''),(3576,1,NULL),(3577,1,NULL),(3578,1,NULL),(3579,1,NULL),(3580,1,NULL),(3581,1,NULL),(3582,1,NULL),(3583,1,NULL),(3584,1,NULL),(3585,1,''),(3586,1,NULL),(3587,1,NULL),(3588,1,NULL),(3589,1,NULL),(3590,1,NULL),(3591,1,'marinaldo_ar@bol.com'),(3592,1,NULL),(3593,1,NULL),(3594,1,NULL),(3595,1,NULL),(3596,1,NULL),(3597,1,NULL),(3598,1,NULL),(3599,1,'gilsoncoelho@sttrans.com.br'),(3600,1,NULL),(3601,1,NULL),(3602,1,NULL),(3603,1,NULL),(3604,1,NULL),(3605,1,NULL),(3606,1,NULL),(3607,1,NULL),(3608,1,NULL),(3609,1,NULL),(3610,1,NULL),(3611,1,NULL),(3612,1,NULL),(3613,1,NULL),(3614,1,NULL),(3615,2,NULL),(3616,1,'josejurandir@hotmail.com'),(3617,1,NULL),(3618,1,'alberto@sttrans.com.br'),(3619,1,NULL),(3620,1,NULL),(3621,1,''),(3622,1,NULL),(3623,1,''),(3624,1,NULL),(3625,1,''),(3626,1,''),(3627,1,'josinaldo@sttrans.com.br'),(3628,1,''),(3629,1,''),(3630,1,NULL),(3631,1,''),(3632,1,NULL),(3633,1,NULL),(3634,1,''),(3635,1,NULL),(3636,1,NULL),(3637,1,NULL),(3638,1,NULL),(3639,1,NULL),(3640,1,NULL),(3641,1,NULL),(3642,1,NULL),(3643,1,NULL),(3644,1,NULL),(3645,1,NULL),(3646,1,NULL),(3647,1,NULL),(3648,1,NULL),(3649,1,NULL),(3650,1,NULL),(3651,1,'osvaldo@hotmail.com'),(3652,1,NULL),(3653,1,NULL),(3654,1,NULL),(3655,1,NULL),(3656,1,'luiz@gmail.com'),(3657,1,NULL),(3658,1,NULL),(3659,1,'benedito@gmail.com'),(3660,1,NULL),(3661,1,NULL),(3662,1,NULL),(3663,1,NULL),(3664,1,NULL),(3665,1,NULL),(3666,1,NULL),(3667,1,NULL),(3668,1,NULL),(3669,1,NULL),(3670,1,NULL),(3671,1,NULL),(3672,1,NULL),(3673,1,''),(3674,1,''),(3675,1,NULL),(3676,1,NULL),(3677,1,NULL),(3678,1,''),(3679,1,''),(3680,1,'adrianotorres@hotmail.com'),(3681,1,''),(3682,1,NULL),(3683,1,NULL),(3684,1,''),(3685,1,NULL),(3686,1,''),(3687,1,NULL),(3688,1,''),(3689,1,''),(3690,1,''),(3691,1,NULL),(3692,1,NULL),(3693,1,NULL),(3694,1,NULL),(3695,1,NULL),(3696,1,NULL),(3697,1,NULL),(3698,1,NULL),(3699,1,NULL),(3700,2,NULL),(3701,1,NULL),(3702,1,NULL),(3703,1,NULL),(3704,1,NULL),(3705,1,NULL),(3706,1,NULL),(3707,1,NULL),(3708,1,NULL),(3709,1,NULL),(3710,1,NULL),(3711,1,NULL),(3712,1,NULL),(3713,1,NULL),(3714,2,NULL),(3715,2,NULL),(3716,1,NULL),(3717,1,NULL),(3718,1,''),(3719,1,NULL),(3720,1,''),(3721,1,NULL),(3722,1,NULL),(3723,1,'jhone_dc@hotmail.com'),(3724,1,NULL),(3725,1,'josebarroso@gmail.com '),(3726,1,NULL),(3727,2,''),(3728,2,NULL),(3729,1,NULL),(3730,1,NULL),(3731,1,NULL),(3732,1,NULL),(3733,1,NULL),(3734,1,NULL),(3735,1,NULL),(3736,1,NULL),(3737,1,NULL),(3738,1,NULL),(3739,1,NULL),(3740,1,NULL),(3741,1,NULL),(3742,1,NULL),(3743,1,NULL),(3744,1,NULL),(3745,1,NULL),(3746,1,NULL),(3747,1,NULL),(3748,1,NULL),(3749,1,NULL),(3750,1,NULL),(3751,1,NULL),(3752,1,NULL),(3753,1,NULL),(3754,1,NULL),(3755,1,''),(3756,1,NULL),(3757,1,''),(3758,1,''),(3759,1,NULL),(3760,1,NULL),(3761,1,NULL),(3762,1,NULL),(3763,1,NULL),(3764,1,NULL),(3765,1,NULL),(3766,1,''),(3767,1,NULL),(3768,1,NULL),(3769,1,NULL),(3770,1,NULL),(3771,1,NULL),(3772,1,NULL),(3773,1,NULL),(3774,1,NULL),(3775,1,NULL),(3776,1,NULL),(3777,1,NULL),(3778,1,''),(3779,1,NULL),(3780,1,NULL),(3781,1,NULL),(3782,1,NULL),(3783,1,NULL),(3784,1,NULL),(3785,1,NULL),(3786,1,NULL),(3787,1,NULL),(3788,1,NULL),(3789,1,''),(3790,1,NULL),(3791,1,NULL),(3792,1,''),(3793,1,'gueltonferreira@hotmail.com'),(3794,1,NULL),(3795,1,NULL),(3796,1,NULL),(3797,2,''),(3798,1,'bem@hotmail.com'),(3799,2,NULL),(3800,1,'jozianecoelho@hotmail.com'),(3801,2,NULL),(3802,1,NULL),(3803,1,''),(3804,1,NULL),(3805,1,NULL),(3806,1,NULL),(3807,1,''),(3808,1,NULL),(3809,1,'alecsandropaes@hotmail.com'),(3810,1,NULL),(3811,1,NULL),(3812,1,NULL),(3813,1,NULL),(3814,1,NULL),(3815,1,NULL),(3816,1,NULL),(3817,1,'q'),(3818,2,NULL),(3819,2,NULL),(3820,2,NULL),(3821,1,''),(3822,1,NULL),(3823,1,'eudecortes@hotmail.com'),(3824,1,''),(3825,1,''),(3826,1,''),(3827,1,NULL),(3828,1,NULL),(3829,1,'andre_df@hotmail.com'),(3830,1,''),(3831,1,'sidneisanches@hotmail.com'),(3832,1,'jardsonmarinho@hotmail.com'),(3833,1,NULL),(3834,1,''),(3835,1,''),(3836,1,'v_sosinho@hotmail.com'),(3837,1,NULL),(3838,1,'aluizio@hotmail.com'),(3839,1,''),(3840,1,''),(3841,1,''),(3842,1,NULL),(3843,1,''),(3844,1,''),(3845,1,NULL),(3846,1,NULL),(3847,1,NULL),(3848,1,NULL),(3849,1,NULL),(3850,2,NULL),(3851,1,NULL),(3852,1,NULL),(3853,1,NULL),(3854,1,NULL),(3855,2,NULL),(3856,1,NULL),(3857,1,NULL),(3858,1,NULL),(3859,1,NULL),(3860,1,NULL),(3861,1,NULL),(3862,1,NULL),(3863,2,NULL),(3864,1,NULL),(3865,1,NULL),(3866,1,NULL),(3867,1,NULL),(3868,1,NULL),(3869,2,NULL),(3870,1,NULL),(3871,2,NULL),(3872,1,NULL),(3873,1,NULL),(3874,1,NULL),(3875,1,NULL),(3876,1,NULL),(3877,1,NULL),(3878,1,NULL),(3879,2,NULL),(3880,1,NULL),(3881,1,NULL),(3882,1,NULL),(3883,2,NULL),(3884,2,NULL),(3885,1,NULL),(3886,2,NULL),(3887,1,NULL),(3888,2,NULL),(3889,1,NULL),(3890,1,NULL),(3891,1,NULL),(3892,1,NULL),(3893,1,NULL),(3894,2,NULL),(3895,1,NULL),(3896,1,NULL),(3897,1,NULL),(3898,1,NULL),(3899,1,NULL),(3900,1,NULL),(3901,1,NULL),(3902,1,NULL),(3903,1,','),(3904,1,NULL),(3905,1,NULL),(3906,1,NULL),(3907,1,NULL),(3908,1,NULL),(3909,1,NULL),(3910,1,NULL),(3911,1,NULL),(3912,1,NULL),(3913,1,NULL),(3914,1,NULL),(3915,1,NULL),(3916,1,NULL),(3917,1,NULL),(3918,1,NULL),(3919,1,NULL),(3920,1,NULL),(3921,1,NULL),(3922,1,NULL),(3923,1,NULL),(3924,1,NULL),(3925,2,NULL),(3926,1,NULL),(3927,1,NULL),(3928,1,NULL),(3929,1,NULL),(3930,1,NULL),(3931,1,NULL),(3932,1,NULL),(3933,1,NULL),(3934,2,NULL),(3935,1,NULL),(3936,1,NULL),(3937,1,NULL),(3938,2,NULL),(3939,1,NULL),(3940,2,NULL),(3941,1,NULL),(3942,1,NULL),(3943,1,NULL),(3944,2,NULL),(3945,1,NULL),(3946,2,NULL),(3947,2,NULL),(3948,1,NULL),(3949,1,NULL),(3950,1,NULL),(3951,1,NULL),(3952,1,NULL),(3953,1,NULL),(3954,1,NULL),(3955,1,NULL),(3956,1,NULL),(3957,1,NULL),(3958,1,NULL),(3959,1,NULL),(3960,1,NULL),(3961,1,NULL),(3962,1,NULL),(3963,1,NULL),(3964,1,NULL),(3965,1,NULL),(3966,1,NULL),(3967,1,NULL),(3968,1,NULL),(3969,2,NULL),(3970,1,NULL),(3971,1,NULL),(3972,2,NULL),(3973,1,NULL),(3974,1,NULL),(3975,2,NULL),(3976,1,NULL),(3977,1,NULL),(3978,1,NULL),(3979,1,NULL),(3980,1,NULL),(3981,1,NULL),(3982,1,NULL),(3983,1,NULL),(3984,1,NULL),(3985,1,NULL),(3986,1,NULL),(3987,1,NULL),(3988,2,NULL),(3989,1,NULL),(3990,1,NULL),(3991,1,NULL),(3992,1,NULL),(3993,1,NULL),(3994,1,NULL),(3995,1,NULL),(3996,2,NULL),(3997,2,''),(3998,1,NULL),(3999,1,NULL),(4000,1,NULL),(4001,2,NULL),(4002,2,NULL),(4003,2,NULL),(4004,2,NULL),(4005,1,NULL),(4006,1,NULL),(4007,1,NULL),(4008,1,NULL),(4009,1,NULL),(4010,1,NULL),(4011,2,NULL),(4012,1,NULL),(4013,1,NULL),(4014,1,NULL),(4015,1,NULL),(4016,1,NULL),(4017,1,NULL),(4018,1,NULL),(4019,1,NULL),(4020,1,NULL),(4021,1,NULL),(4022,1,NULL),(4023,1,NULL),(4024,1,NULL),(4025,2,NULL),(4026,1,NULL),(4027,1,NULL),(4028,2,NULL),(4029,1,NULL),(4030,1,NULL),(4031,1,NULL),(4032,1,NULL),(4033,1,NULL),(4034,1,NULL),(4035,1,NULL),(4036,2,NULL),(4037,1,NULL),(4038,1,NULL),(4039,1,NULL),(4040,1,NULL),(4041,2,NULL),(4042,1,NULL),(4043,1,NULL),(4044,1,NULL),(4045,1,NULL),(4046,2,NULL),(4047,1,NULL),(4048,1,NULL),(4049,1,NULL),(4050,1,NULL),(4051,2,NULL),(4052,2,NULL),(4053,1,NULL),(4054,1,NULL),(4055,1,NULL),(4056,1,NULL),(4057,1,NULL),(4058,1,NULL),(4059,1,NULL),(4060,1,NULL),(4061,1,'karlos_trindade_f@hotmail.com'),(4062,1,NULL),(4063,1,NULL),(4064,1,'felibrito@hotmail.com'),(4065,1,NULL),(4066,1,NULL),(4067,1,NULL),(4068,1,NULL),(4069,1,NULL),(4070,1,NULL),(4071,1,NULL),(4072,1,NULL),(4073,1,NULL),(4074,1,NULL),(4075,1,NULL),(4076,1,NULL),(4077,1,NULL),(4078,1,NULL),(4079,1,NULL),(4080,1,NULL),(4081,1,NULL),(4082,1,NULL),(4083,1,NULL),(4084,1,''),(4085,1,NULL),(4086,1,NULL),(4087,1,''),(4088,1,NULL),(4089,1,NULL),(4090,1,NULL),(4091,1,NULL),(4092,1,NULL),(4093,1,NULL),(4094,1,NULL),(4095,1,NULL),(4096,1,''),(4097,1,NULL),(4098,1,NULL),(4099,1,NULL),(4100,1,NULL),(4101,1,NULL),(4102,1,NULL),(4103,1,NULL),(4104,1,NULL),(4105,1,NULL),(4106,1,NULL),(4107,1,NULL),(4108,1,NULL),(4109,1,NULL),(4110,1,NULL),(4111,2,NULL),(4112,1,NULL),(4113,1,NULL),(4114,1,NULL),(4115,1,NULL),(4116,1,NULL),(4117,1,NULL),(4118,1,NULL),(4119,1,NULL),(4120,1,NULL),(4121,1,NULL),(4122,1,NULL),(4123,1,NULL),(4124,1,NULL),(4125,1,NULL),(4126,1,NULL),(4127,1,NULL),(4128,1,NULL),(4129,1,NULL),(4130,1,NULL),(4131,2,NULL),(4132,1,NULL),(4133,1,NULL),(4134,2,NULL),(4135,1,NULL),(4136,1,''),(4137,2,NULL),(4138,1,NULL),(4139,1,NULL),(4140,1,NULL),(4141,1,NULL),(4142,1,NULL),(4143,1,NULL),(4144,1,''),(4145,1,NULL),(4146,1,NULL),(4147,2,NULL),(4148,1,NULL),(4149,2,NULL),(4150,1,''),(4151,1,NULL),(4152,1,NULL),(4153,1,NULL),(4154,1,NULL),(4155,1,NULL),(4156,1,NULL),(4157,1,NULL),(4158,1,NULL),(4159,1,NULL),(4160,1,NULL),(4161,1,NULL),(4162,1,NULL),(4163,1,NULL),(4164,1,NULL),(4165,1,NULL),(4166,1,NULL),(4167,1,NULL),(4168,1,NULL),(4169,2,NULL),(4170,1,NULL),(4171,1,NULL),(4172,1,NULL),(4173,1,NULL),(4174,1,NULL),(4175,1,NULL),(4176,1,NULL),(4177,1,NULL),(4178,1,NULL),(4179,1,NULL),(4180,1,NULL),(4181,1,NULL),(4182,1,NULL),(4183,1,NULL),(4184,1,NULL),(4185,1,NULL),(4186,1,NULL),(4187,1,NULL),(4188,1,NULL),(4189,1,NULL),(4190,1,NULL),(4191,1,''),(4192,1,NULL),(4193,1,NULL),(4194,1,NULL),(4195,1,'carleto@gmail.com'),(4196,1,''),(4197,2,NULL),(4198,1,NULL),(4199,1,NULL),(4200,1,NULL),(4201,1,NULL),(4202,1,NULL),(4203,2,NULL),(4204,1,NULL),(4205,1,NULL),(4206,1,NULL),(4207,1,NULL),(4208,1,NULL),(4209,1,NULL),(4210,1,''),(4211,1,NULL),(4212,1,NULL),(4213,1,NULL),(4214,1,NULL),(4215,1,NULL),(4216,1,''),(4217,1,''),(4218,1,'renato@bol.com.br'),(4219,1,''),(4220,1,''),(4221,1,''),(4222,1,NULL),(4223,1,''),(4224,1,''),(4225,1,''),(4226,1,NULL),(4227,1,''),(4228,1,NULL),(4229,1,''),(4230,1,NULL),(4231,1,''),(4232,1,NULL),(4233,1,NULL),(4234,1,'ronilsonbrasil@ig.com.br'),(4235,1,NULL),(4236,1,NULL),(4237,1,''),(4238,1,NULL),(4239,1,''),(4240,1,NULL),(4241,1,NULL),(4242,1,NULL),(4243,1,NULL),(4244,1,NULL),(4245,1,NULL),(4246,1,''),(4247,1,NULL),(4248,1,NULL),(4249,2,NULL),(4250,1,NULL),(4251,1,NULL),(4252,1,''),(4253,1,''),(4254,2,NULL),(4255,1,NULL),(4256,2,NULL),(4257,1,NULL),(4258,2,NULL),(4259,1,NULL),(4260,1,NULL),(4261,1,NULL),(4262,1,NULL),(4263,1,NULL),(4264,2,NULL),(4265,1,NULL),(4266,1,NULL),(4267,1,NULL),(4268,1,NULL),(4269,1,NULL),(4270,1,NULL),(4271,1,NULL),(4272,2,NULL),(4273,1,NULL),(4274,1,NULL),(4275,1,NULL),(4276,1,NULL),(4277,1,NULL),(4278,1,NULL),(4279,1,NULL),(4280,2,NULL),(4281,1,NULL),(4282,1,NULL),(4283,1,NULL),(4284,1,NULL),(4285,1,NULL),(4286,1,NULL),(4287,1,NULL),(4288,1,NULL),(4289,1,NULL),(4290,1,NULL),(4291,1,NULL),(4292,1,NULL),(4293,1,NULL),(4294,1,NULL),(4295,1,NULL),(4296,1,NULL),(4297,1,NULL),(4298,2,NULL),(4299,2,NULL),(4300,1,NULL),(4301,1,NULL),(4302,1,NULL),(4303,1,NULL),(4304,1,NULL),(4305,1,NULL),(4306,1,NULL),(4307,2,NULL),(4308,1,NULL),(4309,1,NULL),(4310,1,NULL),(4311,2,NULL),(4312,1,NULL),(4313,1,NULL),(4314,2,NULL),(4315,1,NULL),(4316,2,NULL),(4317,1,NULL),(4318,2,NULL),(4319,1,NULL),(4320,1,NULL),(4321,1,NULL),(4322,1,NULL),(4323,2,NULL),(4324,1,NULL),(4325,1,NULL),(4326,1,NULL),(4327,1,NULL),(4328,1,NULL),(4329,1,NULL),(4330,2,NULL),(4331,1,NULL),(4332,1,''),(4333,1,NULL),(4334,1,NULL),(4335,1,NULL),(4336,1,NULL),(4337,1,NULL),(4338,1,NULL),(4339,1,NULL),(4340,1,NULL),(4341,1,NULL),(4342,1,NULL),(4343,1,NULL),(4344,1,NULL),(4345,1,NULL),(4346,1,''),(4347,1,NULL),(4348,1,NULL),(4349,1,NULL),(4350,1,NULL),(4351,1,NULL),(4352,1,NULL),(4353,1,NULL),(4354,1,''),(4355,1,NULL),(4356,1,NULL),(4357,1,NULL),(4358,1,NULL),(4359,1,NULL),(4360,2,NULL),(4361,1,NULL),(4362,1,NULL),(4363,1,NULL),(4364,1,NULL),(4365,1,NULL),(4366,1,NULL),(4367,1,NULL),(4368,1,NULL),(4369,1,NULL),(4370,1,NULL),(4371,1,NULL),(4372,1,NULL),(4373,2,NULL),(4374,1,NULL),(4375,1,NULL),(4376,1,''),(4377,1,NULL),(4378,1,NULL),(4379,1,NULL),(4380,1,NULL),(4381,1,NULL),(4382,1,NULL),(4383,1,NULL),(4384,1,NULL),(4385,2,NULL),(4386,1,NULL),(4387,1,NULL),(4388,1,NULL),(4389,1,NULL),(4390,1,''),(4391,1,NULL),(4392,1,NULL),(4393,1,NULL),(4394,1,NULL),(4395,1,NULL),(4396,1,NULL),(4397,1,NULL),(4398,1,NULL),(4399,2,NULL),(4400,1,NULL),(4401,1,NULL),(4402,1,NULL),(4403,1,NULL),(4404,2,NULL),(4405,1,NULL),(4406,1,NULL),(4407,1,NULL),(4408,1,NULL),(4409,1,NULL),(4410,1,NULL),(4411,1,NULL),(4412,1,NULL),(4413,1,NULL),(4414,2,NULL),(4415,1,NULL),(4416,1,NULL),(4417,2,NULL),(4418,1,NULL),(4419,2,NULL),(4420,1,NULL),(4421,2,NULL),(4422,1,NULL),(4423,1,NULL),(4424,1,NULL),(4425,1,NULL),(4426,1,NULL),(4427,1,NULL),(4428,1,NULL),(4429,1,NULL),(4430,2,NULL),(4431,1,NULL),(4432,1,NULL),(4433,1,NULL),(4434,2,NULL),(4435,1,NULL),(4436,1,NULL),(4437,2,NULL),(4438,2,NULL),(4440,1,NULL),(4441,1,NULL),(4442,1,NULL),(4443,1,''),(4444,1,NULL),(4445,1,NULL),(4446,1,NULL),(4447,1,NULL),(4448,1,'andremelo@sttrans.com.br'),(4449,1,NULL),(4450,1,NULL),(4451,2,NULL),(4452,1,NULL),(4453,1,NULL),(4454,1,NULL),(4455,1,NULL),(4456,1,NULL),(4457,1,NULL),(4458,1,NULL),(4459,1,NULL),(4460,1,NULL),(4461,1,NULL),(4462,1,NULL),(4463,1,NULL),(4464,1,NULL),(4465,1,NULL),(4466,1,NULL),(4467,1,NULL),(4468,1,NULL),(4469,1,NULL),(4470,1,NULL),(4471,1,NULL),(4472,1,NULL),(4473,1,NULL),(4474,1,NULL),(4475,1,NULL),(4476,1,NULL),(4477,2,NULL),(4478,1,NULL),(4479,1,NULL),(4480,1,NULL),(4481,1,NULL),(4482,1,NULL),(4483,2,NULL),(4484,1,NULL),(4485,1,NULL),(4486,1,NULL),(4487,1,NULL),(4488,1,NULL),(4489,1,NULL),(4490,1,NULL),(4491,1,NULL),(4492,1,NULL),(4493,1,NULL),(4494,1,NULL),(4495,1,NULL),(4496,1,NULL),(4497,1,NULL),(4498,1,NULL),(4499,1,NULL),(4500,1,NULL),(4501,2,NULL),(4502,1,NULL),(4503,2,NULL),(4504,1,NULL),(4505,1,NULL),(4506,1,NULL),(4507,1,NULL),(4508,1,NULL),(4509,1,NULL),(4510,1,NULL),(4511,1,NULL),(4512,1,NULL),(4513,1,NULL),(4514,2,NULL),(4515,1,NULL),(4516,1,NULL),(4517,1,NULL),(4518,1,NULL),(4519,1,NULL),(4520,1,NULL),(4521,1,NULL),(4522,1,NULL),(4523,2,NULL),(4524,1,NULL),(4525,1,NULL),(4526,1,NULL),(4527,1,NULL),(4528,1,NULL),(4529,1,NULL),(4530,1,NULL),(4531,1,NULL),(4532,1,NULL),(4533,1,NULL),(4534,1,NULL),(4535,1,NULL),(4536,1,NULL),(4537,2,NULL),(4538,1,NULL),(4539,1,NULL),(4540,1,NULL),(4541,1,NULL),(4542,1,NULL),(4543,1,NULL),(4544,1,NULL),(4545,1,NULL),(4546,1,NULL),(4547,2,NULL),(4548,1,NULL),(4549,1,NULL),(4550,1,NULL),(4551,1,NULL),(4552,1,NULL),(4553,2,NULL),(4554,1,NULL),(4555,1,NULL),(4556,1,NULL),(4557,1,NULL),(4558,1,NULL),(4559,1,NULL),(4560,1,''),(4561,1,NULL),(4562,1,NULL),(4563,1,NULL),(4564,1,NULL),(4565,1,NULL),(4566,2,NULL),(4567,1,NULL),(4568,1,NULL),(4569,1,NULL),(4570,1,NULL),(4571,1,NULL),(4572,1,NULL),(4573,2,''),(4574,1,NULL),(4575,1,NULL),(4576,1,NULL),(4577,1,NULL),(4578,1,NULL),(4579,1,NULL),(4580,1,NULL),(4581,1,NULL),(4582,1,NULL),(4583,1,NULL),(4584,1,NULL),(4585,1,NULL),(4586,2,NULL),(4587,1,NULL),(4588,1,NULL),(4589,1,NULL),(4590,1,NULL),(4591,1,NULL),(4592,1,NULL),(4593,1,NULL),(4594,1,NULL),(4595,1,NULL),(4596,1,''),(4597,1,NULL),(4598,1,NULL),(4599,1,NULL),(4600,1,NULL),(4601,1,NULL),(4602,1,NULL),(4603,2,NULL),(4604,1,NULL),(4605,2,NULL),(4606,2,NULL),(4607,1,NULL),(4608,1,NULL),(4609,1,'psanchesfreires@bol.com.br'),(4610,1,NULL),(4611,1,NULL),(4612,1,NULL),(4613,1,NULL),(4614,1,NULL),(4615,1,NULL),(4616,1,NULL),(4617,2,NULL),(4618,1,NULL),(4619,1,NULL),(4620,1,NULL),(4621,1,NULL),(4622,2,NULL),(4623,1,NULL),(4624,2,NULL),(4625,1,NULL),(4626,1,NULL),(4627,1,NULL),(4628,1,NULL),(4629,1,NULL),(4630,1,NULL),(4631,1,NULL),(4632,1,NULL),(4633,1,NULL),(4634,1,NULL),(4635,1,NULL),(4636,1,NULL),(4637,1,NULL),(4638,1,NULL),(4639,1,NULL),(4640,1,NULL),(4641,1,NULL),(4642,1,NULL),(4643,1,NULL),(4644,2,NULL),(4645,1,NULL),(4646,1,NULL),(4647,1,NULL),(4648,1,NULL),(4649,1,NULL),(4650,1,''),(4651,1,NULL),(4652,1,NULL),(4653,1,NULL),(4654,1,''),(4655,1,NULL),(4656,1,NULL),(4657,1,''),(4658,1,NULL),(4659,1,NULL),(4660,1,NULL),(4661,1,''),(4662,1,NULL),(4663,1,''),(4664,1,NULL),(4665,1,NULL),(4666,1,''),(4667,1,''),(4668,1,''),(4669,1,NULL),(4670,1,NULL),(4671,1,NULL),(4672,1,NULL),(4673,1,NULL),(4674,1,NULL),(4675,1,''),(4676,1,''),(4677,1,'luizantonio@hotmail.com'),(4678,1,NULL),(4679,1,NULL),(4680,1,NULL),(4681,1,NULL),(4682,1,''),(4683,1,''),(4684,1,NULL),(4685,1,''),(4686,2,NULL),(4687,2,NULL),(4688,1,'raimundoprisco@hotmail.com'),(4689,1,''),(4690,2,NULL),(4691,2,NULL),(4692,1,NULL),(4693,1,'alielsonribeiro@hotmail.com'),(4694,1,''),(4695,1,NULL),(4696,1,''),(4697,1,''),(4698,2,''),(4699,1,NULL),(4700,1,''),(4701,1,''),(4702,1,NULL),(4703,1,''),(4704,1,NULL),(4705,2,NULL),(4706,1,NULL),(4707,1,NULL),(4708,1,NULL),(4709,1,''),(4710,1,''),(4711,1,NULL),(4712,1,'valberbrito@hotmail.com'),(4713,1,''),(4714,1,NULL),(4715,1,NULL),(4716,1,NULL),(4717,1,''),(4718,1,''),(4719,1,NULL),(4720,1,NULL),(4721,1,''),(4722,1,NULL),(4723,1,''),(4724,1,NULL),(4725,2,NULL),(4726,1,''),(4727,2,NULL),(4728,2,NULL),(4729,2,NULL),(4730,1,NULL),(4731,1,'afonso@sttrans.com.br'),(4732,1,''),(4733,1,''),(4734,1,NULL),(4735,1,'fernando@gmail.com'),(4736,2,NULL),(4737,1,''),(4738,2,NULL),(4739,1,''),(4740,1,''),(4741,1,NULL),(4742,1,NULL),(4743,1,NULL),(4744,2,NULL),(4745,1,NULL),(4746,1,NULL),(4747,1,NULL),(4748,1,NULL),(4750,1,NULL),(4751,1,''),(4752,1,NULL),(4753,1,NULL),(4754,1,NULL),(4755,1,NULL),(4756,1,NULL),(4757,1,NULL),(4758,1,NULL),(4759,1,NULL),(4760,1,NULL),(4761,1,NULL),(4762,1,NULL),(4763,1,''),(4764,1,NULL),(4765,1,NULL),(4766,2,NULL),(4767,1,NULL),(4768,1,NULL),(4769,1,NULL),(4770,1,NULL),(4771,1,NULL),(4772,1,NULL),(4773,1,NULL),(4774,1,NULL),(4775,2,NULL),(4776,1,NULL),(4777,1,NULL),(4778,2,NULL),(4779,2,''),(4780,2,NULL),(4781,2,NULL),(4782,1,NULL),(4783,2,''),(4784,1,NULL),(4785,2,NULL),(4786,2,NULL),(4787,2,NULL),(4788,2,NULL),(4789,1,NULL),(4790,1,NULL),(4791,1,NULL),(4792,1,NULL),(4793,1,NULL),(4794,1,NULL),(4795,1,NULL),(4796,1,NULL),(4797,1,NULL),(4798,1,NULL),(4799,1,NULL),(4800,2,NULL),(4801,1,NULL),(4802,1,NULL),(4803,1,NULL),(4804,1,NULL),(4805,1,NULL),(4806,1,NULL),(4807,2,NULL),(4808,1,NULL),(4809,1,NULL),(4810,1,NULL),(4811,1,NULL),(4812,1,NULL),(4813,1,NULL),(4814,1,NULL),(4815,1,NULL),(4816,1,NULL),(4817,2,NULL),(4818,2,NULL),(4819,1,NULL),(4820,1,NULL),(4821,1,NULL),(4822,1,NULL),(4823,2,NULL),(4824,1,NULL),(4825,1,NULL),(4826,1,NULL),(4827,1,NULL),(4828,1,NULL),(4829,1,NULL),(4830,1,NULL),(4831,2,NULL),(4832,1,''),(4833,1,NULL),(4834,1,NULL),(4835,1,NULL),(4836,1,NULL),(4837,1,NULL),(4838,1,NULL),(4839,1,NULL),(4840,2,NULL),(4841,1,NULL),(4842,1,''),(4843,1,NULL),(4844,1,NULL),(4845,1,NULL),(4846,1,NULL),(4847,1,NULL),(4848,1,NULL),(4849,1,NULL),(4850,1,NULL),(4851,1,''),(4852,1,NULL),(4853,1,NULL),(4854,1,NULL),(4855,1,NULL),(4856,1,NULL),(4857,1,NULL),(4858,1,NULL),(4859,1,NULL),(4860,1,NULL),(4861,1,NULL),(4862,1,NULL),(4863,1,NULL),(4864,1,''),(4865,1,NULL),(4866,1,NULL),(4867,1,'geodanilo@bol.com.br'),(4868,1,''),(4869,1,NULL),(4870,1,NULL),(4871,1,NULL),(4872,1,NULL),(4873,1,NULL),(4874,1,NULL),(4875,1,NULL),(4876,1,NULL),(4877,1,NULL),(4878,1,NULL),(4879,1,NULL),(4880,1,NULL),(4881,2,NULL),(4882,1,NULL),(4883,1,NULL),(4884,1,NULL),(4885,1,NULL),(4886,1,NULL),(4887,1,NULL),(4888,2,NULL),(4889,1,NULL),(4890,1,NULL),(4891,1,NULL),(4892,1,NULL),(4893,2,NULL),(4894,1,NULL),(4895,1,NULL),(4896,1,NULL),(4897,1,NULL),(4898,1,NULL),(4899,1,NULL),(4900,1,NULL),(4901,1,NULL),(4902,1,NULL),(4903,1,NULL),(4904,1,NULL),(4905,1,NULL),(4906,1,NULL),(4907,1,NULL),(4908,1,NULL),(4909,1,NULL),(4910,1,NULL),(4911,1,NULL),(4912,2,NULL),(4913,1,NULL),(4914,1,NULL),(4915,1,NULL),(4916,1,NULL),(4917,1,NULL),(4918,1,NULL),(4919,1,NULL),(4920,1,NULL),(4921,1,''),(4922,1,NULL),(4923,1,NULL),(4924,1,NULL),(4925,1,NULL),(4926,1,NULL),(4927,1,NULL),(4928,1,NULL),(4929,1,''),(4930,1,NULL),(4931,1,NULL),(4932,1,NULL),(4933,1,NULL),(4934,1,NULL),(4935,1,NULL),(4936,1,NULL),(4937,2,NULL),(4938,1,NULL),(4939,1,NULL),(4940,1,NULL),(4941,2,NULL),(4942,1,NULL),(4943,1,NULL),(4944,1,NULL),(4945,1,NULL),(4946,1,NULL),(4947,1,''),(4948,1,NULL),(4949,1,NULL),(4950,1,NULL),(4951,1,NULL),(4952,1,NULL),(4953,1,NULL),(4954,1,NULL),(4955,1,NULL),(4956,1,NULL),(4957,1,NULL),(4958,2,NULL),(4959,1,NULL),(4960,1,NULL),(4961,1,NULL),(4962,1,NULL),(4963,1,NULL),(4964,1,NULL),(4965,2,NULL),(4966,1,NULL),(4967,1,NULL),(4968,1,NULL),(4969,1,NULL),(4970,1,NULL),(4971,1,NULL),(4972,1,''),(4973,1,NULL),(4974,1,NULL),(4975,1,NULL),(4976,1,NULL),(4977,1,'raimundo@gmail.com'),(4978,1,NULL),(4979,1,NULL),(4980,1,NULL),(4981,1,NULL),(4982,1,NULL),(4983,1,NULL),(4984,1,NULL),(4985,1,NULL),(4986,1,NULL),(4987,1,NULL),(4988,2,NULL),(4989,1,NULL),(4990,1,NULL),(4991,1,NULL),(4992,2,NULL),(4993,1,''),(4994,1,NULL),(4995,1,NULL),(4996,1,NULL),(4997,1,NULL),(4998,2,NULL),(4999,1,NULL),(5000,1,NULL),(5001,2,''),(5002,1,NULL),(5003,2,NULL),(5004,1,NULL),(5005,1,NULL),(5006,1,NULL),(5007,2,NULL),(5008,1,NULL),(5009,1,NULL),(5010,1,NULL),(5011,1,NULL),(5012,1,''),(5013,1,NULL),(5014,1,NULL),(5015,1,NULL),(5016,1,NULL),(5017,1,NULL),(5018,1,NULL),(5019,1,NULL),(5020,1,NULL),(5021,1,''),(5022,1,NULL),(5023,1,NULL),(5024,1,NULL),(5025,2,NULL),(5026,1,NULL),(5027,1,NULL),(5028,1,NULL),(5029,1,NULL),(5030,1,NULL),(5031,1,NULL),(5032,1,NULL),(5033,1,NULL),(5034,1,NULL),(5035,2,NULL),(5036,2,NULL),(5037,1,NULL),(5038,1,NULL),(5039,1,NULL),(5040,1,''),(5041,1,NULL),(5042,1,NULL),(5043,1,NULL),(5044,1,NULL),(5045,1,NULL),(5046,1,''),(5047,1,''),(5048,1,NULL),(5049,1,NULL),(5050,1,NULL),(5051,2,NULL),(5052,1,'jobsonskuyk@hotmail.com'),(5053,1,NULL),(5054,2,NULL),(5055,1,''),(5056,1,'joao.fernandes@hotmail.com'),(5057,1,NULL),(5058,1,''),(5059,1,''),(5060,1,''),(5061,1,''),(5062,1,''),(5063,1,''),(5064,1,NULL),(5065,2,NULL),(5066,1,NULL),(5067,1,NULL),(5068,1,NULL),(5069,2,NULL),(5070,2,NULL),(5071,1,NULL),(5072,1,''),(5073,1,NULL),(5074,1,NULL),(5075,1,NULL),(5076,2,NULL),(5077,1,NULL),(5078,2,NULL),(5079,1,NULL),(5080,1,NULL),(5081,1,NULL),(5082,2,NULL),(5083,1,''),(5084,1,NULL),(5085,1,NULL),(5086,1,NULL),(5087,1,NULL),(5088,1,NULL),(5089,1,NULL),(5090,1,NULL),(5091,1,NULL),(5092,1,NULL),(5093,1,NULL),(5094,1,NULL),(5095,1,NULL),(5096,1,NULL),(5097,2,NULL),(5098,1,NULL),(5099,1,NULL),(5100,1,NULL),(5101,1,NULL),(5102,1,''),(5103,2,NULL),(5104,1,NULL),(5105,1,NULL),(5106,1,NULL),(5107,1,NULL),(5108,1,NULL),(5109,1,NULL),(5110,1,NULL),(5111,2,NULL),(5112,1,''),(5113,1,''),(5114,1,''),(5115,1,NULL),(5116,1,NULL),(5117,1,NULL),(5118,1,NULL),(5119,1,NULL),(5120,1,NULL),(5121,2,NULL),(5122,1,NULL),(5123,1,NULL),(5124,1,NULL),(5125,1,NULL),(5126,1,''),(5127,1,''),(5128,1,''),(5129,1,NULL),(5130,2,NULL),(5131,1,NULL),(5132,1,NULL),(5133,1,''),(5134,1,NULL),(5135,1,NULL),(5136,1,NULL),(5137,1,NULL),(5138,1,NULL),(5139,1,NULL),(5140,1,NULL),(5141,1,NULL),(5142,1,NULL),(5143,1,NULL),(5144,1,NULL),(5145,1,NULL),(5146,1,NULL),(5147,1,NULL),(5148,1,''),(5149,1,NULL),(5150,1,NULL),(5151,1,''),(5152,1,NULL),(5153,1,NULL),(5154,1,NULL),(5155,1,NULL),(5156,1,NULL),(5157,1,NULL),(5158,1,NULL),(5159,1,NULL),(5160,1,NULL),(5161,1,NULL),(5162,1,NULL),(5163,2,NULL),(5164,1,NULL),(5165,1,NULL),(5166,1,''),(5167,1,NULL),(5168,1,NULL),(5169,1,NULL),(5170,1,NULL),(5171,1,NULL),(5172,1,NULL),(5173,2,NULL),(5174,1,NULL),(5175,1,NULL),(5176,1,'maciaped@hotmail.com'),(5177,1,'neliovicente@hotmail.com'),(5178,1,'figueiredoqueila@hotmail.com'),(5179,1,'jjairobatis@bol.com.br'),(5180,1,'cristiano@sttrans.com.br'),(5181,1,'danielrocha@hotmail.com'),(5182,1,'tiagoborges@hotmail.com'),(5183,1,'rogeriosantos@hotmail.com'),(5184,1,'josineyguimbal@hotmail.com'),(5185,1,'magnoazevedo@hotmail.com'),(5186,1,'renato_nog@hotmail.com'),(5187,1,'diegosilva@hotmail.com'),(5188,2,'medefil@hotmail.com'),(5189,2,'med.admin@hotmail.com'),(5190,2,'adert@hotmail.com'),(5191,1,'elizabetemelo.ap@bol.com.br'),(5192,1,'rudi@hotmail.com'),(5193,2,''),(5194,2,'maria@hotmail.com'),(5195,2,''),(5196,1,'renato@hotmail.com'),(5197,2,'arrancadas.clube@gmail.com'),(5198,2,'com.ind@hotmail.com'),(5199,1,'rarison@hotmail.com'),(5200,1,'marcelo_rodrigues@hotmail.com'),(5201,2,'mztransportes@hotmail.com'),(5202,1,'angelabueno@hotmail.com'),(5203,1,'laertesouza@hotmail.com'),(5204,1,'adrinao20@hotmail.com'),(5205,2,'frigorificopacifico@bol.com.br'),(5206,2,'frigorificopacifico@bol.com.br'),(5207,2,'navegacaosion@hotmail.com'),(5208,2,'delimacomercio@hotmail.com'),(5209,1,'jucelinseveriano@hotmail.com'),(5210,1,'luckcley@hotmail.com'),(5211,1,'gilmarferreira@hotmail.com'),(5212,1,'rosimar.silva@hotmail.com'),(5213,1,'jair.rodrigues@hotmail.com'),(5214,1,'jose@hotmail.com'),(5215,1,'joelsouza@hotmail.com'),(5216,1,'francisco@hotmail.com'),(5217,1,'jeffersonnevespalheta@bol.com'),(5218,1,'sanstn.ss@gmail.com'),(5219,1,'erenelson@gmail.com'),(5220,1,'lucivaldo@hotmail.com'),(5221,2,'arizona.transporte@gmail.com'),(5222,1,'evandrodesouza@hotmail.com'),(5223,2,'tbl@hotmail.com'),(5224,1,'marcusrogerio@sttrans.com'),(5225,1,'lucelio@sttrans.com'),(5226,1,''),(5227,1,'maciaped@hotmail.com'),(5228,1,'maxwalace@sttrans.com.br'),(5229,1,'joseelinaldo@sttrans.com.br'),(5230,1,'anderson@hotmail.com.br'),(5231,1,'edinaldo@sttrans.com.br'),(5232,1,'jociannycarla@sttrans.com.br'),(5233,1,'adielson@sttrans.com.br'),(5234,1,'guiomar@sttrans.com.br'),(5235,1,'raimundonunes@hotmail.com'),(5236,2,'zmldasilva@gmail.com'),(5237,1,'benedito@gmail.com'),(5238,1,'fernando@gmail.com'),(5239,1,''),(5240,1,''),(5241,1,'ricardo@gmail.com'),(5242,1,'paulojose@hotmail.com'),(5243,1,''),(5244,1,'josecardoso@hotmail.com'),(5245,1,'zaqueusilva@hotmail.com'),(5246,1,'alessandroteixeira@hotmail.com'),(5247,1,'wellisonoliveira@hotmail.com'),(5248,1,''),(5249,1,'rosiel_mcp@hotmail.com'),(5250,1,'franciscostn@hotmail.com'),(5251,1,'mariaval_ap@hotmail.com'),(5252,1,'robert@gmail.com'),(5253,1,'antonio.oliveira@hotmail.com'),(5254,1,'ednelsonsoares@hotmail.com'),(5255,1,''),(5256,1,'ronberg@hotmail.com'),(5257,1,'rosivaldopedroso@hotmail.com'),(5258,1,'rodrigocarmo@hotmail.com'),(5259,1,'rogerio@gmail.com'),(5260,1,'albertolima34@hotmail.com'),(5261,1,'renato@gmail.com'),(5262,1,'jose@gmail.com'),(5263,1,'ronal_do@hotmail.com'),(5264,1,'daniel@hotmail.com'),(5265,1,'raul@hotmail.com'),(5266,1,'edivaldo@gmail.com'),(5267,1,'josinaldocarvalho@hotmail.com'),(5268,1,'marcelocesar@bol.com.br'),(5269,1,'ancelmobrandao@sttrans.com.br'),(5270,1,''),(5271,1,''),(5272,2,''),(5273,1,''),(5274,1,'jonatasjardim@hotmail'),(5275,1,''),(5276,1,'hiasmini_cavalcante@hotmail.com'),(5277,1,'daniella07@sttrans.com.br'),(5278,1,''),(5279,1,''),(5280,1,''),(5281,1,''),(5282,1,''),(5283,1,''),(5284,1,''),(5285,1,'clebersonsilva@hotmail.com'),(5286,1,''),(5287,1,''),(5288,1,''),(5289,1,'joao@sttrans.br'),(5290,1,''),(5291,1,''),(5292,1,''),(5293,2,''),(5294,1,'debora@fonsecahotmail.com'),(5295,1,''),(5296,2,''),(5297,1,''),(5298,1,''),(5299,1,''),(5300,1,''),(5301,1,''),(5302,1,''),(5303,1,'dara_san@hotmail.com'),(5304,1,'franciscocaninde@hotmail.com'),(5305,1,'franciscocaninde@hotmail.com'),(5306,1,'girleydias@hotamail.com'),(5307,2,''),(5308,1,''),(5309,1,''),(5310,1,''),(5311,1,''),(5312,1,''),(5313,1,''),(5314,2,''),(5315,1,''),(5316,1,''),(5317,1,''),(5318,1,''),(5319,1,''),(5320,1,''),(5321,1,''),(5322,1,''),(5323,1,''),(5324,1,''),(5325,1,''),(5326,1,''),(5327,1,'novaks5@hotmail.com'),(5328,1,''),(5329,1,''),(5330,1,''),(5331,1,''),(5332,1,''),(5333,1,''),(5334,2,''),(5335,2,''),(5336,2,''),(5337,1,''),(5338,1,''),(5339,1,''),(5340,1,''),(5341,1,''),(5342,1,''),(5343,1,''),(5344,1,''),(5345,1,''),(5346,1,''),(5347,1,''),(5348,1,''),(5349,1,''),(5350,1,''),(5351,2,''),(5352,1,''),(5353,1,''),(5354,1,''),(5355,2,''),(5356,1,'lucilene@sttrans.com'),(5357,1,''),(5358,2,''),(5359,2,''),(5360,1,''),(5361,1,''),(5362,1,''),(5363,1,''),(5364,1,''),(5365,2,''),(5366,1,''),(5367,1,''),(5368,1,''),(5369,1,''),(5370,2,''),(5371,1,''),(5372,1,'debbie.araujo94@hotmail.com'),(5373,1,''),(5374,1,''),(5375,2,''),(5376,1,''),(5377,2,''),(5378,2,''),(5379,1,''),(5380,1,''),(5381,1,''),(5382,1,'wando786@gmail.com'),(5383,1,''),(5384,1,''),(5385,1,''),(5386,1,''),(5387,1,''),(5388,1,''),(5389,1,''),(5390,1,''),(5391,2,''),(5392,1,''),(5393,1,''),(5394,1,''),(5395,1,''),(5396,1,''),(5397,1,'andreiaroseliz@bol.com.br'),(5398,1,'paulorop@hotmail.com'),(5399,1,''),(5400,1,'anacelia@sttrans.com.br'),(5401,1,'raimundoneto@sttrans.com.br'),(5402,1,'ramonsilva@sttrans.com.br'),(5403,1,'DINADALVIS@STTRANS.COM.BR'),(5404,1,'lucianabatista.sttrans@bol.com.br'),(5405,1,'andrezaoliveira.sttrans@bol.com.br'),(5406,1,'danieliduarte.sttrans@bol.com.br'),(5407,1,'aldenorbraga.sttrans@bol.com.br'),(5408,1,'adeniltonsena.sttrans@bol.com.br'),(5409,1,'samueloliveira.sttrans@bol.com.br'),(5410,1,'wendellrusso.sttrans@bol.com.br'),(5411,1,'juracyneto.sttrans@bol.com.br'),(5412,1,'isaquecosta.sttrans@bol.com.br'),(5413,1,'odiceliacorrea.sttrans@bol.com.br'),(5414,1,'alexandrooliveira.sttrans@bol.com.br'),(5415,1,'vipgilson@gmail.com'),(5416,2,''),(5417,2,''),(5418,2,''),(5419,2,''),(5420,1,''),(5421,1,''),(5422,1,''),(5423,1,''),(5424,1,''),(5425,1,''),(5426,2,''),(5427,2,''),(5428,1,''),(5429,1,'bruno.correa@bol.com.br'),(5430,1,''),(5431,1,''),(5432,2,''),(5433,1,''),(5434,1,''),(5435,1,''),(5436,1,''),(5437,1,''),(5438,1,''),(5439,1,''),(5440,1,''),(5441,1,''),(5442,1,''),(5443,1,''),(5444,1,''),(5445,1,''),(5446,1,''),(5447,1,''),(5448,1,''),(5449,1,''),(5450,1,''),(5451,1,''),(5452,2,''),(5453,2,''),(5454,1,''),(5455,1,''),(5456,1,''),(5457,1,''),(5458,1,''),(5459,1,'salomao.bat@gmail.com'),(5460,1,''),(5461,1,''),(5462,1,''),(5463,1,'ronalde28ferreira@sttrans.com.br'),(5464,1,''),(5465,1,''),(5466,2,''),(5467,1,''),(5468,1,''),(5469,1,''),(5470,1,''),(5471,1,''),(5472,1,''),(5473,1,''),(5474,1,''),(5475,1,''),(5476,1,''),(5477,1,''),(5478,1,''),(5479,2,''),(5480,1,''),(5481,1,''),(5482,1,''),(5483,2,'reiconju@amazonline.com.br'),(5484,2,''),(5485,1,''),(5486,1,''),(5487,1,''),(5488,1,''),(5489,1,''),(5490,1,''),(5491,1,''),(5492,1,''),(5493,2,''),(5494,2,''),(5495,2,''),(5496,2,''),(5497,2,'eclivane@hotmail.com	'),(5498,1,''),(5499,1,'EVELIN.SC@HOTMAIL.COM'),(5500,1,''),(5501,1,''),(5502,1,''),(5503,1,''),(5504,1,'ELTON@HOTMAIL.COM'),(5505,1,'luiz.otavio@hotmail.com'),(5506,1,''),(5507,1,''),(5508,1,'J.AMORIM.MACHADO@BOL.COM.BR'),(5509,1,'RONALDE@HOTMAIL.COM'),(5510,1,''),(5511,1,'eduardo.sc8@gmail.com'),(5512,1,'lourival_hage@hotmail.com'),(5513,2,''),(5514,1,''),(5515,1,''),(5516,1,'manoeldos@gmail.com'),(5517,1,''),(5518,1,''),(5519,1,''),(5520,1,'mariadenazare@gmail.com'),(5521,1,''),(5522,1,'naasson_rodrigues@gmail.com'),(5523,1,'sebastiaonunes@gmail.com'),(5524,1,'joianemara@gmail.com'),(5525,1,'willison_mourao@gmail.com'),(5526,1,'jonatansousa@gmail.com'),(5527,1,'queila_oliveira@gmail.com'),(5528,1,'jamesmichel@gmail.com'),(5529,1,'janiodamota@gmail.com'),(5530,1,'ismael_barbosa@hotamil.com'),(5531,1,'roniraldosantos@gmail.com'),(5532,1,'michelbelo@gmail.com'),(5533,1,'maria_vilhena@gmail.com'),(5534,1,''),(5535,1,''),(5536,1,'pedro_melo@gmail.com'),(5537,1,'felipearaujo@gamil.com'),(5538,1,'janiamaria@gmail.com'),(5539,1,'concemoreira@gmail.com'),(5540,1,''),(5541,1,'joaogabriel@hotmail.com'),(5542,1,'jucara_cristina@gmail.com'),(5543,1,'arnaldogoncalves@gmail.com'),(5544,1,''),(5545,1,''),(5546,1,''),(5547,1,'honorato_melo@gmail.com'),(5548,1,''),(5549,2,''),(5550,1,''),(5551,1,''),(5552,1,''),(5553,1,''),(5554,1,''),(5555,1,''),(5556,1,'beneditopdeoliveira@gmail.com'),(5557,1,''),(5558,2,''),(5559,2,''),(5560,1,''),(5561,1,''),(5562,1,''),(5563,1,''),(5564,1,''),(5565,1,''),(5566,1,''),(5567,2,''),(5568,2,''),(5569,1,''),(5570,1,''),(5571,1,''),(5572,1,''),(5573,1,''),(5574,2,''),(5575,2,''),(5576,1,''),(5577,1,''),(5578,1,''),(5579,1,''),(5580,1,''),(5581,1,''),(5582,1,''),(5583,1,''),(5584,1,''),(5585,1,''),(5586,1,''),(5587,1,''),(5588,1,''),(5589,1,''),(5590,1,''),(5591,1,''),(5592,1,''),(5593,1,''),(5594,1,''),(5595,1,''),(5596,1,''),(5597,1,'jannemato@hotmail.com'),(5598,1,'lucianaroberta@hotmail.com'),(5599,1,'geremiasdossantos@gmail.com'),(5600,1,''),(5601,2,''),(5602,1,''),(5603,2,''),(5604,1,''),(5605,1,''),(5606,1,''),(5607,2,''),(5608,1,''),(5609,1,''),(5610,1,''),(5611,1,''),(5612,1,''),(5613,2,''),(5614,1,''),(5615,1,''),(5616,1,''),(5617,1,''),(5618,1,'sandrodamon@hotmail.com'),(5619,1,''),(5620,1,''),(5621,1,'jonathan@hotmail.com'),(5622,1,''),(5623,1,''),(5624,1,''),(5625,1,''),(5626,1,''),(5627,1,''),(5628,1,''),(5629,1,''),(5630,1,''),(5631,1,''),(5632,1,''),(5633,1,''),(5634,1,''),(5635,1,''),(5636,1,''),(5637,1,''),(5638,1,''),(5639,1,''),(5640,1,''),(5641,1,''),(5642,1,''),(5643,1,''),(5644,1,''),(5645,1,''),(5646,1,''),(5647,1,''),(5648,1,''),(5649,1,''),(5650,1,''),(5651,1,''),(5652,1,''),(5653,1,''),(5654,1,''),(5655,1,''),(5656,1,''),(5657,1,''),(5658,1,''),(5659,1,''),(5660,1,''),(5661,1,''),(5662,1,''),(5663,1,''),(5664,1,''),(5665,1,''),(5666,1,''),(5667,1,''),(5668,1,''),(5669,1,''),(5670,1,''),(5671,1,''),(5672,1,''),(5673,1,''),(5674,1,''),(5675,1,''),(5676,1,''),(5677,1,''),(5678,1,''),(5679,1,''),(5680,1,''),(5681,1,''),(5682,1,''),(5683,1,''),(5684,1,''),(5685,1,''),(5686,1,''),(5687,1,''),(5688,1,''),(5689,1,''),(5690,1,''),(5691,1,''),(5692,1,''),(5693,1,''),(5694,1,''),(5695,1,''),(5696,1,''),(5697,1,''),(5698,1,''),(5699,1,''),(5700,1,''),(5701,1,''),(5702,1,''),(5703,1,''),(5704,1,''),(5705,1,''),(5706,1,''),(5707,1,''),(5708,1,''),(5709,1,''),(5710,1,''),(5711,1,''),(5712,1,''),(5713,1,'jorgesilvabarrozo@gmail.com'),(5714,1,''),(5715,1,''),(5716,1,''),(5717,1,''),(5718,1,''),(5719,1,''),(5720,1,''),(5721,1,''),(5722,1,''),(5723,1,''),(5724,1,''),(5725,1,''),(5726,1,''),(5727,1,''),(5728,1,''),(5729,1,''),(5730,1,''),(5731,1,''),(5732,1,''),(5733,1,''),(5734,1,''),(5735,1,''),(5736,1,''),(5737,1,''),(5738,1,''),(5739,1,''),(5740,1,''),(5741,1,''),(5742,1,''),(5743,1,''),(5744,1,''),(5745,1,''),(5746,1,''),(5747,1,''),(5748,1,''),(5749,1,''),(5750,1,''),(5751,1,''),(5752,1,''),(5753,1,''),(5754,1,''),(5755,1,''),(5756,1,''),(5757,1,''),(5758,1,''),(5759,1,''),(5760,1,''),(5761,1,''),(5762,1,''),(5763,1,''),(5764,1,''),(5765,1,''),(5766,1,''),(5767,1,''),(5768,1,''),(5769,1,''),(5770,1,''),(5771,1,''),(5772,1,''),(5773,1,''),(5774,1,''),(5775,1,''),(5776,1,''),(5777,1,''),(5778,1,''),(5779,1,''),(5780,1,''),(5781,1,''),(5782,1,''),(5783,1,''),(5784,1,''),(5785,1,''),(5786,1,''),(5787,1,''),(5788,1,''),(5789,1,''),(5790,1,''),(5791,1,''),(5792,1,''),(5793,1,''),(5794,1,''),(5795,1,''),(5796,1,''),(5797,1,''),(5798,1,''),(5799,1,''),(5800,1,''),(5801,1,''),(5802,1,''),(5803,1,''),(5804,1,''),(5805,1,''),(5806,1,''),(5807,1,''),(5808,1,''),(5809,1,''),(5810,1,''),(5811,1,''),(5812,1,''),(5813,1,''),(5814,1,''),(5815,1,''),(5816,1,''),(5817,1,''),(5818,1,''),(5819,1,''),(5820,1,''),(5821,1,''),(5822,1,''),(5823,1,''),(5824,1,''),(5825,1,''),(5826,1,''),(5827,1,''),(5828,1,''),(5829,1,''),(5830,1,''),(5831,1,''),(5832,1,''),(5833,1,''),(5834,1,''),(5835,1,''),(5836,1,''),(5837,1,''),(5838,1,'EDELSONBRITO@GMAIL.COM'),(5839,1,''),(5840,1,''),(5841,1,''),(5842,1,''),(5843,1,''),(5844,1,''),(5845,1,''),(5846,1,''),(5847,1,''),(5848,1,''),(5849,1,''),(5850,1,''),(5851,1,''),(5852,1,''),(5853,1,''),(5854,1,''),(5855,1,''),(5856,1,''),(5857,1,''),(5858,1,''),(5859,1,''),(5860,1,''),(5861,1,''),(5862,1,''),(5863,1,''),(5864,1,''),(5865,1,''),(5866,1,''),(5867,1,''),(5868,1,''),(5869,1,''),(5870,1,''),(5871,1,''),(5872,1,''),(5873,1,''),(5874,1,''),(5875,1,''),(5876,1,''),(5877,1,''),(5878,1,''),(5879,1,''),(5880,1,''),(5881,1,''),(5882,1,''),(5883,1,''),(5884,1,''),(5885,1,''),(5886,1,''),(5887,1,''),(5888,1,''),(5889,1,''),(5890,1,''),(5891,1,''),(5892,1,''),(5893,1,''),(5894,1,''),(5895,1,''),(5896,1,''),(5897,1,''),(5898,1,''),(5899,1,''),(5900,1,''),(5901,1,''),(5902,1,''),(5903,1,''),(5904,1,''),(5905,1,''),(5906,1,''),(5907,1,''),(5908,1,''),(5909,1,''),(5910,1,''),(5911,1,''),(5912,1,''),(5913,1,''),(5914,1,''),(5915,1,''),(5916,1,''),(5917,1,''),(5918,1,''),(5919,1,''),(5920,1,''),(5921,1,''),(5922,1,''),(5923,1,''),(5924,1,''),(5925,1,''),(5926,1,''),(5927,1,''),(5928,1,''),(5929,1,''),(5930,1,''),(5931,1,''),(5932,1,''),(5933,1,''),(5934,1,''),(5935,1,''),(5936,1,''),(5937,1,''),(5938,1,''),(5939,1,''),(5940,1,''),(5941,1,''),(5942,1,''),(5943,1,''),(5944,1,''),(5945,1,''),(5946,1,''),(5947,1,''),(5948,1,''),(5949,1,''),(5950,1,''),(5951,1,''),(5952,1,''),(5953,1,''),(5954,1,''),(5955,1,''),(5956,1,''),(5957,1,''),(5958,1,''),(5959,1,''),(5960,1,''),(5961,1,''),(5962,1,''),(5963,1,''),(5964,1,''),(5965,1,''),(5966,1,''),(5967,1,''),(5968,1,''),(5969,1,''),(5970,1,''),(5971,1,''),(5972,1,''),(5973,1,''),(5974,1,''),(5975,1,''),(5976,1,''),(5977,1,''),(5978,1,''),(5979,1,''),(5980,1,''),(5981,1,''),(5982,1,''),(5983,1,''),(5984,1,''),(5985,1,''),(5986,1,''),(5987,1,''),(5988,1,''),(5989,1,''),(5990,1,''),(5991,1,''),(5992,1,''),(5993,1,''),(5994,1,''),(5995,1,''),(5996,1,''),(5997,1,''),(5998,1,''),(5999,1,''),(6000,1,''),(6001,1,''),(6002,1,''),(6003,1,''),(6004,1,''),(6005,1,''),(6006,1,''),(6007,1,''),(6008,1,''),(6009,1,''),(6010,1,''),(6011,1,''),(6012,1,''),(6013,1,''),(6014,1,''),(6015,1,''),(6016,1,''),(6017,1,''),(6018,1,''),(6019,1,''),(6020,1,''),(6021,1,''),(6022,1,''),(6023,1,''),(6024,1,''),(6025,1,''),(6026,1,''),(6027,1,''),(6028,1,''),(6029,1,''),(6030,1,''),(6031,1,''),(6032,1,''),(6033,1,''),(6034,1,''),(6035,1,''),(6036,1,''),(6037,1,''),(6038,1,''),(6039,1,''),(6040,1,''),(6041,1,''),(6042,1,''),(6043,1,''),(6044,1,''),(6045,1,''),(6046,1,''),(6047,1,''),(6048,1,''),(6049,1,''),(6050,1,''),(6051,1,''),(6052,1,''),(6053,1,''),(6054,1,''),(6055,1,'Oberdanim09@gmail.com'),(6056,1,''),(6057,1,''),(6058,1,''),(6059,1,''),(6060,1,''),(6061,1,''),(6062,1,''),(6063,1,''),(6064,1,''),(6065,1,''),(6066,1,''),(6067,1,''),(6068,1,''),(6069,1,''),(6070,1,''),(6071,1,''),(6072,1,''),(6073,1,''),(6074,1,''),(6075,1,''),(6076,1,''),(6077,1,''),(6078,1,''),(6079,1,''),(6080,1,''),(6081,1,''),(6082,1,''),(6083,1,''),(6084,1,''),(6085,1,''),(6086,1,''),(6087,1,''),(6088,1,''),(6089,1,''),(6090,1,'juarez_ap@hotmail.com'),(6091,1,''),(6092,1,''),(6093,1,''),(6094,1,''),(6095,1,''),(6096,1,''),(6097,1,''),(6098,1,''),(6099,1,''),(6100,1,''),(6101,1,''),(6102,1,''),(6103,1,''),(6104,1,''),(6105,1,''),(6106,1,''),(6107,2,''),(6108,1,''),(6109,1,''),(6110,1,''),(6111,2,''),(6112,1,''),(6113,2,''),(6114,2,''),(6115,2,''),(6116,1,''),(6117,1,''),(6118,2,''),(6119,2,''),(6120,1,''),(6121,1,''),(6122,1,''),(6123,1,''),(6124,1,'dinei_rosario@gmail.com'),(6125,2,''),(6126,2,''),(6127,1,''),(6128,1,''),(6129,2,''),(6130,2,''),(6131,1,''),(6132,2,''),(6133,2,''),(6134,1,''),(6135,1,''),(6136,1,''),(6137,2,''),(6138,1,''),(6139,1,''),(6140,1,''),(6141,1,''),(6142,1,''),(6143,1,''),(6144,1,''),(6145,1,''),(6146,1,''),(6147,2,''),(6148,1,''),(6149,2,''),(6150,1,''),(6151,2,''),(6152,2,''),(6153,1,''),(6154,1,''),(6155,1,''),(6156,1,'marilene-fp@bol.com.br'),(6157,1,'newtondany699@gmail.com'),(6158,1,'elanetavares2020@gmail.com'),(6159,1,'abraaocurtis@sttrans.com'),(6160,1,'wellingtonmendesb01@outlook.com'),(6161,1,'gesiancosta@sttrans.com'),(6162,2,''),(6163,1,''),(6164,2,''),(6165,1,''),(6166,2,''),(6167,1,''),(6168,1,''),(6169,1,''),(6170,2,''),(6171,2,''),(6172,1,''),(6173,2,''),(6174,2,''),(6175,2,''),(6176,1,''),(6177,1,''),(6178,2,''),(6179,1,''),(6180,2,''),(6181,1,''),(6182,1,''),(6183,1,''),(6184,1,''),(6185,2,''),(6186,2,''),(6187,2,''),(6188,2,''),(6189,1,''),(6190,1,''),(6191,1,''),(6192,1,''),(6193,1,''),(6194,1,''),(6195,2,''),(6196,1,''),(6197,1,''),(6198,1,''),(6199,1,''),(6200,1,''),(6201,1,''),(6202,1,''),(6203,1,''),(6204,2,''),(6205,2,''),(6206,1,''),(6207,1,''),(6208,1,''),(6209,1,''),(6210,2,''),(6211,1,''),(6212,2,''),(6213,2,''),(6214,1,''),(6215,1,''),(6216,1,''),(6217,1,''),(6218,1,''),(6219,1,''),(6220,1,''),(6221,1,''),(6222,1,''),(6223,1,''),(6224,1,''),(6225,2,''),(6226,1,''),(6227,2,''),(6228,1,''),(6229,1,''),(6230,2,''),(6231,1,''),(6232,1,''),(6233,1,''),(6234,1,''),(6235,1,''),(6236,1,''),(6237,1,''),(6238,1,''),(6239,1,''),(6240,1,''),(6241,1,''),(6242,1,''),(6251,1,'nnayyara@hotmail.com'),(6252,1,'luizhenrinque@sttrans.com.br'),(6253,2,''),(6254,1,''),(6255,1,''),(6256,1,''),(6257,1,''),(6258,1,''),(6259,1,'ANDERSONPINHEIRO240@HOTMAIL.COM'),(6260,1,'NICEBRAGA05@GMAIL.COM'),(6261,1,'VANILSONCHERMONT@HOTMAIL.COM'),(6262,1,'EVANDRODASILVA278@GMAIL.COM'),(6263,1,'ernestina.ap2017@gmail.com'),(6264,1,'jefferson.oliveira.ap@gmail.com'),(6265,1,'VALERIAGUSTAVO383@GMAIL.COM'),(6266,1,'MADIELSONBRAGA@GMAIL.COM'),(6267,1,''),(6268,1,'GILFRAN2017.AP@GMAIL.COM'),(6269,1,'MARCIOAP.2009@HOTMAIL.COM'),(6270,1,''),(6271,1,'JOSIVALDOTAF@HOTMAIL.COM'),(6272,1,'RONDILONPERNA.AP@GMAIL.COM'),(6273,1,'ZEANTONIO.AP2017@GMAIL.COM'),(6274,1,''),(6275,1,''),(6276,1,''),(6277,1,''),(6278,1,''),(6279,1,''),(6280,1,''),(6281,1,''),(6282,1,''),(6283,1,''),(6284,1,''),(6285,1,''),(6286,1,''),(6287,1,''),(6288,2,''),(6289,1,''),(6290,1,''),(6291,1,''),(6292,1,''),(6293,2,''),(6294,1,''),(6295,1,''),(6296,1,''),(6297,1,''),(6298,1,''),(6299,1,''),(6300,1,''),(6301,1,''),(6302,1,''),(6303,1,''),(6304,1,'lanna-mayra@hotmail.com'),(6305,1,'EDUARDO071277@GMAIL.COM'),(6306,1,''),(6307,1,''),(6308,1,''),(6309,1,''),(6310,1,''),(6311,1,''),(6312,1,''),(6313,1,''),(6314,2,''),(6315,1,''),(6316,1,''),(6317,1,''),(6318,1,''),(6319,1,''),(6320,1,''),(6321,1,''),(6322,1,''),(6323,1,''),(6324,2,''),(6325,1,''),(6326,1,'KATY.MELLO18@GMAIL.COM'),(6327,1,''),(6328,1,'INGRIDSANTOSINGRID08@HOTMAIL.COM'),(6329,1,''),(6330,1,''),(6331,1,''),(6332,1,''),(6333,1,''),(6334,1,''),(6335,2,''),(6336,1,''),(6337,1,''),(6338,1,''),(6339,1,''),(6340,2,''),(6341,1,''),(6342,1,''),(6343,1,''),(6344,1,''),(6345,1,''),(6346,1,''),(6347,1,''),(6348,1,''),(6349,1,''),(6350,1,''),(6351,1,''),(6352,1,''),(6353,2,''),(6354,1,''),(6355,1,''),(6356,2,''),(6357,1,''),(6358,2,''),(6359,1,''),(6360,1,''),(6361,1,''),(6362,1,''),(6363,1,''),(6364,1,''),(6365,1,''),(6366,1,''),(6367,1,''),(6368,1,''),(6369,1,''),(6370,1,''),(6371,1,''),(6372,2,''),(6373,1,''),(6374,1,''),(6375,1,''),(6376,1,''),(6377,1,''),(6378,1,''),(6379,1,''),(6380,1,'DOWGLASMAGNO25@GMAIL.COM'),(6381,1,''),(6382,1,''),(6383,1,''),(6384,1,''),(6385,1,''),(6386,1,''),(6387,1,''),(6388,1,''),(6389,1,''),(6390,1,''),(6391,1,''),(6392,1,''),(6393,1,''),(6394,1,''),(6395,1,''),(6396,1,''),(6397,1,''),(6398,1,''),(6399,1,''),(6400,1,''),(6401,1,''),(6402,1,''),(6403,1,''),(6404,1,''),(6405,1,''),(6406,1,''),(6407,1,''),(6408,1,''),(6409,1,''),(6410,1,''),(6411,1,''),(6412,1,''),(6413,1,''),(6414,1,''),(6415,1,''),(6416,1,''),(6417,1,''),(6418,1,''),(6419,1,''),(6420,1,''),(6421,1,''),(6422,1,''),(6423,1,''),(6424,1,''),(6425,1,''),(6426,1,''),(6427,1,''),(6428,1,''),(6429,1,''),(6430,1,''),(6431,1,''),(6432,1,''),(6433,1,''),(6434,1,''),(6435,1,''),(6436,1,''),(6437,1,''),(6438,1,''),(6439,1,''),(6440,1,''),(6441,1,''),(6442,1,''),(6443,1,''),(6444,1,''),(6445,1,''),(6446,1,''),(6447,1,''),(6448,1,''),(6449,1,''),(6450,1,''),(6451,1,''),(6452,1,''),(6453,1,''),(6454,1,''),(6455,1,''),(6456,1,''),(6457,1,''),(6458,1,''),(6459,1,''),(6460,1,''),(6461,1,''),(6462,1,''),(6463,1,''),(6464,1,''),(6465,1,''),(6466,1,''),(6467,1,''),(6468,1,''),(6469,1,''),(6470,1,''),(6471,1,''),(6472,1,''),(6473,1,''),(6474,1,''),(6475,1,''),(6476,1,''),(6477,1,''),(6478,1,''),(6479,1,''),(6480,1,''),(6481,1,''),(6482,1,''),(6483,1,''),(6484,1,''),(6485,1,''),(6486,1,''),(6487,1,''),(6488,1,''),(6489,1,''),(6490,1,''),(6491,1,''),(6492,1,''),(6493,1,''),(6494,1,''),(6495,1,''),(6496,1,''),(6497,1,'MARLISOMDANTAS@HOTMAIL.COM'),(6498,1,''),(6499,1,''),(6500,1,''),(6501,1,''),(6502,1,''),(6503,1,''),(6504,1,''),(6505,1,''),(6506,1,'ADINEI2512@GMAIL.COM'),(6507,1,''),(6508,1,''),(6509,1,''),(6510,1,''),(6511,1,'DENIS_RAYRON@HOTMAIL.COM'),(6512,1,''),(6513,1,''),(6514,1,''),(6515,1,''),(6516,1,''),(6517,1,''),(6518,1,''),(6519,1,''),(6520,1,''),(6521,1,''),(6522,1,''),(6523,1,''),(6524,1,''),(6525,1,''),(6526,1,''),(6527,1,''),(6528,1,''),(6529,1,''),(6530,1,''),(6531,1,''),(6532,1,''),(6533,1,''),(6534,1,''),(6535,1,''),(6536,1,''),(6537,1,''),(6538,1,''),(6539,1,''),(6540,1,''),(6541,1,''),(6542,1,''),(6543,1,''),(6544,1,''),(6545,1,''),(6546,1,''),(6547,1,''),(6548,1,''),(6549,1,''),(6550,1,''),(6551,1,''),(6552,1,''),(6553,1,'ROGERIOEEYSHILA@GMAIL.COM'),(6554,1,''),(6555,1,''),(6556,1,''),(6557,1,''),(6558,1,''),(6559,1,''),(6560,1,''),(6561,1,''),(6562,1,''),(6563,1,''),(6564,1,''),(6565,1,''),(6566,1,'DIONE_BARROZO@HOTMAIL.COM'),(6567,1,''),(6568,1,''),(6569,1,''),(6570,1,''),(6571,1,''),(6572,1,''),(6573,1,''),(6574,1,''),(6575,1,''),(6576,1,''),(6577,1,''),(6578,1,''),(6579,1,''),(6580,1,''),(6581,1,''),(6582,1,''),(6583,1,''),(6584,1,''),(6585,1,''),(6586,1,''),(6587,1,''),(6588,1,''),(6589,1,''),(6590,1,''),(6591,1,''),(6592,1,''),(6593,1,''),(6594,1,''),(6595,1,''),(6596,1,''),(6597,1,''),(6598,1,''),(6599,1,''),(6600,1,''),(6601,1,''),(6602,1,''),(6603,1,''),(6604,1,''),(6605,1,''),(6606,1,''),(6607,1,''),(6608,1,''),(6609,1,''),(6610,1,''),(6611,1,''),(6612,1,''),(6613,1,''),(6614,1,''),(6615,1,''),(6616,1,''),(6617,1,''),(6618,1,''),(6619,1,''),(6620,1,''),(6621,1,''),(6622,1,''),(6623,1,''),(6624,1,''),(6625,1,''),(6626,1,''),(6627,1,''),(6628,1,''),(6629,1,''),(6630,1,''),(6631,1,''),(6632,1,''),(6633,1,''),(6634,1,''),(6635,1,''),(6636,1,''),(6637,1,''),(6638,1,''),(6639,1,''),(6640,1,''),(6641,1,''),(6642,1,''),(6643,1,''),(6644,1,''),(6645,1,''),(6646,1,''),(6647,1,''),(6648,1,''),(6649,1,''),(6650,1,''),(6651,1,''),(6652,1,''),(6653,1,''),(6654,1,''),(6655,1,''),(6656,1,''),(6657,1,''),(6658,1,''),(6659,1,''),(6660,1,''),(6661,1,''),(6662,1,''),(6663,1,''),(6664,1,''),(6665,1,''),(6666,1,''),(6667,1,''),(6668,1,''),(6669,1,''),(6670,1,''),(6671,1,''),(6672,1,''),(6673,1,''),(6674,1,''),(6675,1,''),(6676,1,''),(6677,1,''),(6678,1,''),(6679,1,''),(6680,1,''),(6681,1,''),(6682,1,''),(6683,1,''),(6684,1,''),(6685,1,''),(6686,1,''),(6687,1,''),(6688,1,''),(6689,1,''),(6690,1,''),(6691,1,''),(6692,1,''),(6693,1,''),(6694,1,''),(6695,1,''),(6696,1,''),(6697,1,''),(6698,1,''),(6699,1,''),(6700,1,''),(6701,1,''),(6702,1,''),(6703,1,''),(6704,2,''),(6705,1,''),(6706,1,''),(6707,1,''),(6708,1,''),(6709,1,''),(6710,1,''),(6711,1,''),(6712,1,''),(6713,1,''),(6714,1,''),(6715,1,''),(6716,1,''),(6717,1,'maria_dolores@gmail.com'),(6718,1,'hanni_yasmin@gmail.com'),(6719,1,'nelma_cassia@gmail.com'),(6720,1,''),(6721,1,''),(6722,1,'raimunda_donilde@gmail.com'),(6723,2,''),(6724,2,''),(6725,1,''),(6726,2,''),(6727,2,''),(6728,1,''),(6729,1,''),(6730,1,''),(6731,1,''),(6732,1,''),(6733,1,''),(6734,1,''),(6735,1,''),(6736,1,''),(6737,1,'lucasvini@yahoo.com.br'),(6738,2,''),(6739,1,''),(6740,1,''),(6741,1,''),(6742,1,''),(6743,1,''),(6744,1,''),(6745,1,''),(6746,1,''),(6747,2,''),(6748,2,''),(6749,2,''),(6750,1,''),(6751,1,''),(6752,1,''),(6753,1,''),(6754,2,''),(6755,1,''),(6756,1,''),(6757,1,''),(6758,1,''),(6759,1,''),(6760,2,''),(6761,2,''),(6762,1,''),(6763,1,''),(6764,1,''),(6765,1,''),(6766,1,''),(6767,1,''),(6768,1,''),(6769,1,''),(6770,1,''),(6771,1,''),(6772,1,''),(6773,1,''),(6774,1,''),(6775,1,''),(6776,1,''),(6777,1,''),(6778,1,''),(6779,1,''),(6780,1,''),(6781,1,''),(6782,1,''),(6783,1,''),(6784,2,''),(6785,1,''),(6786,1,''),(6787,1,''),(6788,1,''),(6789,1,''),(6790,2,''),(6791,1,''),(6792,1,''),(6793,1,''),(6794,1,''),(6795,2,''),(6796,1,''),(6797,1,''),(6798,1,''),(6799,1,''),(6800,1,''),(6801,1,''),(6802,1,''),(6803,1,''),(6804,1,''),(6805,1,''),(6806,1,''),(6807,1,''),(6808,1,''),(6809,1,''),(6810,1,''),(6811,1,''),(6812,1,''),(6813,1,''),(6814,1,''),(6815,1,''),(6816,1,'samuel@gmail.com'),(6817,1,'emanoel@gmail.com'),(6818,1,''),(6819,1,''),(6820,1,''),(6821,1,''),(6822,1,''),(6823,1,''),(6824,1,''),(6825,1,''),(6826,1,''),(6827,1,'fnsantos.ap@gmail.com');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_fisica`
--

DROP TABLE IF EXISTS `pessoa_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_fisica` (
  `id_pessoa_fisica` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `id_estado_civil` int(11) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nascimento_id_municipio` int(11) NOT NULL,
  `identidade_numero` varchar(30) DEFAULT NULL,
  `identidade_orgao_expedidor` varchar(20) DEFAULT NULL,
  `pis_pasep` varchar(11) DEFAULT NULL,
  `identidade_id_uf` int(11) NOT NULL,
  `nome_pai` varchar(100) DEFAULT NULL,
  `nome_mae` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa_fisica`),
  KEY `fk_pessoa_fisica_pessoa1_idx` (`id_pessoa`),
  KEY `fk_pessoa_fisica_estado_civil1_idx` (`id_estado_civil`),
  KEY `fk_pessoa_fisica_municipio1_idx` (`nascimento_id_municipio`),
  KEY `fk_pessoa_fisica_uf1_idx` (`identidade_id_uf`),
  KEY `idx_pessoa_fisica` (`cpf`,`nome`),
  CONSTRAINT `fk_pessoa_fisica_estado_civil1` FOREIGN KEY (`id_estado_civil`) REFERENCES `estado_civil` (`id_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_fisica_municipio1` FOREIGN KEY (`nascimento_id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_fisica_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_fisica_uf1` FOREIGN KEY (`identidade_id_uf`) REFERENCES `uf` (`id_uf`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_fisica`
--

LOCK TABLES `pessoa_fisica` WRITE;
/*!40000 ALTER TABLE `pessoa_fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_juridica`
--

DROP TABLE IF EXISTS `pessoa_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_juridica` (
  `id_pessoa_juridica` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  `razao_social` varchar(60) DEFAULT NULL,
  `nome_fantasia` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa_juridica`),
  KEY `fk_pessoa_juridica_pessoa1_idx` (`id_pessoa`),
  CONSTRAINT `fk_pessoa_juridica_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_juridica`
--

LOCK TABLES `pessoa_juridica` WRITE;
/*!40000 ALTER TABLE `pessoa_juridica` DISABLE KEYS */;
INSERT INTO `pessoa_juridica` VALUES (1,1,'03406029000166','CTMAQ','COMPANHIA DE TRANSPORTES E TRÃ‚NSITO DE MACAPÃ','COMPANHIA DE TRANSPORTES E TRÃ‚NSITO DE MACAPÃ'),(2,3,'00000000000000','RNP','REDE NACIONAL DE PESQUISA','REDE NACIONAL DE PESQUISA'),(3,6,'99832772666267','DOM','DOMESTILAR S/A','DOMESTILAR'),(4,8,'88372772737822','SS','SORRISO SAÚDE','SORRISO SAÚDE'),(5,39,'05983192001350',NULL,'SALOMAO ALCOLUMBRE E CIA LTDA','SALOMAO ALCOLUMBRE E CIA LTDA'),(6,44,'05989918000129',NULL,'TRANSPORTADORA DE COMBUSTIVEL','TRANSPORTADORA DE COMBUSTIVEL'),(7,45,'34941245000135',NULL,'COMERCIAL CASSIPORE LTDA','COMERCIAL CASSIPORE LTDA'),(8,56,'05036039000182',NULL,'M N P CASTRO ME','M N P CASTRO ME'),(9,67,'02232095000102',NULL,'MARTEC CONTRUÇÕES E COM LTDA','MARTEC CONTRUÇÕES E COM LTDA'),(10,69,'05840319000149',NULL,'PARAGÁS DISTRIBUIDORA LTDA.','PARAGÁS DISTRIBUIDORA LTDA.'),(11,71,'84412667000191',NULL,'CONCRETO LTDA','CONCRETO LTDA'),(12,94,'03547602000151',NULL,'GARRA TRANSPORTES E SERVIÇOS LTDA','GARRA TRANSPORTES E SERVIÇOS LTDA'),(13,97,'00394577000125',NULL,'SECRETARIA DE ESTADO DA JUSTICA E SEGURANCA PUBLICA','SECRETARIA DE ESTADO DA JUSTICA E SEGURANCA PUBLICA'),(14,104,'47509120000182',NULL,'M N PEREIRA ME','M N PEREIRA ME'),(15,105,'34865345000200',NULL,'FAUSTO MOURA DE QUEIROZ','FAUSTO MOURA DE QUEIROZ'),(16,112,'06025949000122',NULL,'A D F UBIRAJARA COMERC E REPRESENTAÇÕES','A D F UBIRAJARA COMERC E REPRESENTAÇÕES'),(17,114,'03319527000171',NULL,'R LEAO COSTA ME','R LEAO COSTA ME'),(18,120,'23084643000166',NULL,'ANA CELIA NASCIMENTO SILVA ME','ANA CELIA NASCIMENTO SILVA ME'),(19,124,'02422721000115',NULL,'F A A DE ANDRADE','F A A DE ANDRADE'),(20,127,'06041947000127',NULL,'SOLIDA SIDERURGIA S/A','SOLIDA SIDERURGIA S/A'),(21,141,'34868257000181',NULL,'UNIVERSIDADE FEDERAL DO AMAPÁ','UNIVERSIDADE FEDERAL DO AMAPÁ'),(22,218,'06859930000181',NULL,'MARCEL P PEREIRA ME','MARCEL P PEREIRA ME'),(23,219,'05571812000100',NULL,'LATIR COM. E REP. PROD. ALIMENTÍCIOS LTDA','LATIR COM. E REP. PROD. ALIMENTÍCIOS LTDA'),(24,221,'07823870000100','SEFOSAN','SEFOSAN LTDA - ME','SEFOSAN LTDA - ME'),(25,241,'02837373000147',NULL,'B. NEVES DOS SANTOS ME','B. NEVES DOS SANTOS ME'),(26,245,'04837782000179',NULL,'PONTE E CIA LTDA','PONTE E CIA LTDA'),(27,258,'01514796000163',NULL,'FRIALVO COM DE FRIOS CONG. DO AMAPA LTDA','FRIALVO COM DE FRIOS CONG. DO AMAPA LTDA'),(28,269,'04671245000100',NULL,'R G BELARMINO ME','R G BELARMINO ME'),(29,270,'01021577000142',NULL,'E V ARAUJO','E V ARAUJO'),(30,278,'04416466000123',NULL,'A L DISTRIBUIDORA LTDA','A L DISTRIBUIDORA LTDA'),(31,293,'34265561000134',NULL,'BMG LEASING SA ARREND MERC','BMG LEASING SA ARREND MERC'),(32,296,'01701201000189',NULL,'H S B  C BANK BRASIL SA BCO MULTIPLO','H S B  C BANK BRASIL SA BCO MULTIPLO'),(33,298,'29744778107072',NULL,'IGREJA UNIVERSAL DO REINO DE DEUS','IGREJA UNIVERSAL DO REINO DE DEUS'),(34,299,'59104422010384',NULL,'VOLKSWAGEN DO BRASIL LTDA','VOLKSWAGEN DO BRASIL LTDA'),(35,301,'84418672000101',NULL,'TRANSCACIO DIESEL LTDA','TRANSCACIO DIESEL LTDA'),(36,320,'08587300000120',NULL,'MILENIO VIGILANCIA E SEGURANÇA LTDA','MILENIO VIGILANCIA E SEGURANÇA LTDA'),(37,321,'02816321000194',NULL,'CONSTRUTORA ROBERTO ABRAO LTDA','CONSTRUTORA ROBERTO ABRAO LTDA'),(38,325,'84423797000120',NULL,'MARTINS COMERCIAL LTDA','MARTINS COMERCIAL LTDA'),(39,334,'04921849000230',NULL,'L DA SILVEIRA BALBI ME','L DA SILVEIRA BALBI ME'),(40,341,'08815601000245',NULL,'AMAPARI ENERGIA S/A','AMAPARI ENERGIA S/A'),(41,349,'05150124000177',NULL,'DISTRIBUIDORA POPULAR LTDA','DISTRIBUIDORA POPULAR LTDA'),(42,350,'01121175000110',NULL,'CICOPAL IND. COM. PRO AL- H P LTDA','CICOPAL IND. COM. PRO AL- H P LTDA'),(43,351,'07812091000109',NULL,'J. SOUSA NOGUEIRA - ME','J. SOUSA NOGUEIRA - ME'),(44,355,'07169049000111',NULL,'F C S P GOES ME','F C S P GOES ME'),(45,356,'47193149000106',NULL,'SANTANDER LEASING S A  ARREND MERC','SANTANDER LEASING S A  ARREND MERC'),(46,360,'84410265000158',NULL,'B A R DURANS ME','B A R DURANS ME'),(47,361,'04928297000100',NULL,'CIA PARAENSE DE A. E REFRIGERANTES','CIA PARAENSE DE A. E REFRIGERANTES'),(48,362,'83662080000178',NULL,'NOVO TRIÂNGULO COMÉRCIO DE ALIMENTOS LTDA','NOVO TRIÂNGULO COMÉRCIO DE ALIMENTOS LTDA'),(49,371,'05394674000131',NULL,'TROPICAL NAVEGAÇÃO E TRANSPORTE LTDA EPP','TROPICAL NAVEGAÇÃO E TRANSPORTE LTDA EPP'),(50,372,'83346932000207','','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA'),(51,376,'04503660002270','TBL','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA - TBL CWB'),(52,378,'04373727000507',NULL,'GRUPO NILTON JÚNIOR LTDA','GRUPO NILTON JÚNIOR LTDA'),(53,381,'04233201000270',NULL,'SANAVE TRANSPORTES RODOVIÁRIOS LTDA','SANAVE TRANSPORTES RODOVIÁRIOS LTDA'),(54,384,'09622656000110',NULL,'TRANSPORTES CANEL DE SALTO GRANDE LTDA','TRANSPORTES CANEL DE SALTO GRANDE LTDA'),(55,385,'00877374000190',NULL,'MONTEMAK MONTAGENS E SERVIÇOS LTDA','MONTEMAK MONTAGENS E SERVIÇOS LTDA'),(56,390,'12079856000183',NULL,'SUELEM C CORTES ME','SUELEM C CORTES ME'),(57,394,'58507468000157',NULL,'MULTIEIXO IMPLEMENTOS RODOVIARIOS LTDA','MULTIEIXO IMPLEMENTOS RODOVIARIOS LTDA'),(58,395,'05824316000111',NULL,'TRANSWOOD TRANS  LOGISTICA LTDA','TRANSWOOD TRANS  LOGISTICA LTDA'),(59,396,'04503660000227','TBL','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA'),(60,397,'34927582000178',NULL,'NUTRIAMA LTDA','NUTRIAMA LTDA'),(61,399,'07620120000130',NULL,'AMAZON POLPAS I C DE POLPAS AMAZ LTDA ME','AMAZON POLPAS I C DE POLPAS AMAZ LTDA ME'),(62,400,'83346932000118','','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA'),(63,407,'08381059000189',NULL,'FERREIRA COM DE DERIVADOS DE PETROLEO LTDA','FERREIRA COM DE DERIVADOS DE PETROLEO LTDA'),(64,409,'47868237000152',NULL,'FRIGORÍFICO PACÍFICO LTDA','FRIGORÍFICO PACÍFICO LTDA'),(65,416,'05537475000135',NULL,'REPARMIL COM E DIST DE EQUIP E COMP HIDR','REPARMIL COM E DIST DE EQUIP E COMP HIDR'),(66,451,'09064362000110',NULL,'WM CONSTRUÇOESLTDA','WM CONSTRUÇOESLTDA'),(67,455,'62063177000194',NULL,'SAFRA LEASING S A ARREND. MERCANTIL','SAFRA LEASING S A ARREND. MERCANTIL'),(68,499,'07371153000194',NULL,'UNIMALHAS E COMERCIO LTDA','UNIMALHAS E COMERCIO LTDA'),(69,506,'05968292000174',NULL,'DIOCESE DE MACAPÁ','DIOCESE DE MACAPÁ'),(70,530,'06077072000113',NULL,'MENDES E PENHA LTDA','MENDES E PENHA LTDA'),(71,571,'04393085000176',NULL,'R CAETANO DE ALMEIDA','R CAETANO DE ALMEIDA'),(72,575,'05432463000146',NULL,'DABEL DISTRIBUIDORA AMAPAENSE DE PRODUTOS LTDA','DABEL DISTRIBUIDORA AMAPAENSE DE PRODUTOS LTDA'),(73,594,'05662528000140','','VIACAO MACAPA DE TURISMO LTDA','VIACAO MACAPA DE TURISMO LTDA'),(74,596,'03257882000163',NULL,'M.M.S. SOUZA EMPREENDIMENTOS ME','M.M.S. SOUZA EMPREENDIMENTOS ME'),(75,602,'62868302000133',NULL,'UNIÃO MACAPA DE TRANSPORTES LTDA','UNIÃO MACAPA DE TRANSPORTES LTDA'),(76,628,'04232770000110',NULL,'C D N CENTRAL DIST NORTE LTDA','C D N CENTRAL DIST NORTE LTDA'),(77,635,'04267059000100',NULL,'SERVIÇO NAC DE APR RURAL SENAR','SERVIÇO NAC DE APR RURAL SENAR'),(78,641,'01523172000102',NULL,'J H LOPES TRINDADE ME','J H LOPES TRINDADE ME'),(79,650,'84425321000128',NULL,'RACHEL LOIOLA E CIA LTDA','RACHEL LOIOLA E CIA LTDA'),(80,658,'04658821000170',NULL,'COMERCIO E DIST ESTRELA DO NORTE','COMERCIO E DIST ESTRELA DO NORTE'),(81,666,'01071972000130',NULL,'J W S ROCHA ME','J W S ROCHA ME'),(82,667,'01867364000136',NULL,'J. C. ANTUNES JUNIOR','J. C. ANTUNES JUNIOR'),(83,675,'14536866000126',NULL,'A D JUNIOR EPP','A D JUNIOR EPP'),(84,679,'03370092000190',NULL,'JAIR J S GOMES EPP','JAIR J S GOMES EPP'),(85,691,'03604060000101',NULL,'EMPA CONSTRUÇÕES LTDA','EMPA CONSTRUÇÕES LTDA'),(86,697,'14520829000120',NULL,'DEDETIZADORA ROMAR LTDA EPP','DEDETIZADORA ROMAR LTDA EPP'),(87,720,'05901116000115',NULL,'TERMOCLIMA ENGENHARIA LTDA','TERMOCLIMA ENGENHARIA LTDA'),(88,722,'05320902000129',NULL,'A L COMERCIO E REPRESENTAÇÃO LTDA','A L COMERCIO E REPRESENTAÇÃO LTDA'),(89,734,'05818906000131',NULL,'ML SOUZA NERY ME','ML SOUZA NERY ME'),(90,744,'02281494000155',NULL,'SANTOS E SOARES LTDA','SANTOS E SOARES LTDA'),(91,747,'06582171000152',NULL,'AMAFARMA DISTRIB DE MEDIC E COMESTIC  LTDA','AMAFARMA DISTRIB DE MEDIC E COMESTIC  LTDA'),(92,755,'00310506000105',NULL,'DOMESTILAR LTDA','DOMESTILAR LTDA'),(93,775,'07228698000146',NULL,'COMERCIAL NORTE LTDA','COMERCIAL NORTE LTDA'),(94,780,'04146206000185',NULL,'ARMAZEM SÃO PAULO LTDA','ARMAZEM SÃO PAULO LTDA'),(95,790,'34942193000111',NULL,'S M S COMERCIO LTDA ME','S M S COMERCIO LTDA ME'),(96,792,'84423110000156',NULL,'MARTINS E LOURENCO LTDA','MARTINS E LOURENCO LTDA'),(97,793,'23069651000133',NULL,'TROPICAL MATERIAIS DE CONSTRUÇÃO LTDA','TROPICAL MATERIAIS DE CONSTRUÇÃO LTDA'),(98,794,'05729222000163',NULL,'J C S GUIMARAES ME','J C S GUIMARAES ME'),(99,803,'01126778780282',NULL,'IRENEMAR MARQUES TOURINHO','IRENEMAR MARQUES TOURINHO'),(100,807,'00881907000107',NULL,'BEIJA FLOR RADIODIFUSÃO','BEIJA FLOR RADIODIFUSÃO'),(101,810,'07186311000136',NULL,'O GOMES SERVIÇOS ELETRICOS LTDA','O GOMES SERVIÇOS ELETRICOS LTDA'),(102,811,'05297501000103',NULL,'SEPE TIARAJU EMPREENDIMENTOS LTDA','SEPE TIARAJU EMPREENDIMENTOS LTDA'),(103,812,'05044367000392',NULL,'TERRA ALTA DISTRIBUIDORA LTDA','TERRA ALTA DISTRIBUIDORA LTDA'),(104,813,'03985350000142',NULL,'A.S.G. SANTOS-ME','A.S.G. SANTOS-ME'),(105,814,'02395827000177',NULL,'MANOEL DA ROCHA EPP','MANOEL DA ROCHA EPP'),(106,834,'57561615000104',NULL,'BANCO FINASA S/A','BANCO FINASA S/A'),(107,835,'04895751003866',NULL,'Y YAMADA S/A COMERCIO E INDUSTRIA','Y YAMADA S/A COMERCIO E INDUSTRIA'),(108,851,'02000309000107',NULL,'MOSELLI VEICULOS LTDA','MOSELLI VEICULOS LTDA'),(109,872,'40277592000108',NULL,'ALTO TOCANTINS MINERAÇÃO LTDA','ALTO TOCANTINS MINERAÇÃO LTDA'),(110,883,'67629683000111',NULL,'LA PAZ TRANSP TURISTICA LTDA','LA PAZ TRANSP TURISTICA LTDA'),(111,894,'05208585000153','','VITORIA E VITORIO LTDA ME','VITORIA E VITORIO LTDA ME'),(112,896,'04830006000147',NULL,'IND. COMÉRCIO DE MINÉRIOS SA ICOMI','IND. COMÉRCIO DE MINÉRIOS SA ICOMI'),(113,912,'34932327000113',NULL,'V SARGES ME','V SARGES ME'),(114,915,'04578953000192',NULL,'SARGES E SARGES LTDA ME','SARGES E SARGES LTDA ME'),(115,939,'04661385000270',NULL,'MONTE & CIA LTDA','MONTE & CIA LTDA'),(116,948,'05505378000160','E.R. GOMES','E.R. GOMES','E.R. GOMES'),(117,952,'07716123000172','','VIACAO POLICARPOS LTDA EPP','VIACAO POLICARPOS LTDA EPP'),(118,1008,'07877010000159',NULL,'CLAUDIONOR COSTA DOS SANTOS EPP','CLAUDIONOR COSTA DOS SANTOS EPP'),(119,1014,'04290006000100',NULL,'MARIA DE NAZARE SOARES DE ALMEIDA ME','MARIA DE NAZARE SOARES DE ALMEIDA ME'),(120,1024,'01203721000161',NULL,'R. N. V. DE OLIVEIRA ME','R. N. V. DE OLIVEIRA ME'),(121,1025,'04805919000103',NULL,'A DA SILVA MAIA ME','A DA SILVA MAIA ME'),(122,1057,'01765467000195',NULL,'N. D. A. FREITAS','N. D. A. FREITAS'),(123,1089,'04175444000208',NULL,'M L NOBRE ME','M L NOBRE ME'),(124,1111,'34665257000184',NULL,'VIAÇÃO NOVA SIÃO LTDA','VIAÇÃO NOVA SIÃO LTDA'),(125,1163,'05878178000153',NULL,'SOUZMAR SOUZA SERVIÇOS MARITIMOS LTDA','SOUZMAR SOUZA SERVIÇOS MARITIMOS LTDA'),(126,1319,'03396286000164',NULL,'GECAR AUTO PEÇAS LTDA','GECAR AUTO PEÇAS LTDA'),(127,1368,'01697046000174',NULL,'DISLAP DISTR DE LACTICINIOS DO AMAPA LTDA','DISLAP DISTR DE LACTICINIOS DO AMAPA LTDA'),(128,1381,'34863878000253',NULL,'ROSIANNE BORGES ME','ROSIANNE BORGES ME'),(129,1387,'06286559000106',NULL,'SHALON COMERCIO DE ALIMENTOS','SHALON COMERCIO DE ALIMENTOS'),(130,1401,'03077175000195',NULL,'CONSTRUTORA SANTOS LTDA','CONSTRUTORA SANTOS LTDA'),(131,1451,'01858774000110',NULL,'BV LEASING ARREN MERCANTIL SA','BV LEASING ARREN MERCANTIL SA'),(132,1476,'17192451000170',NULL,'MARIA JOSE GONCALVES RODRIGUES','MARIA JOSE GONCALVES RODRIGUES'),(133,1488,'01827106000126',NULL,'DMX CONSTRUÇÕES LTDA','DMX CONSTRUÇÕES LTDA'),(134,1501,'04857560000118',NULL,'M M CONSTRUCAO LTDA','M M CONSTRUCAO LTDA'),(135,1515,'23087281000167',NULL,'JRT PUBLICIDADE LTDA','JRT PUBLICIDADE LTDA'),(136,1522,'05486456000127',NULL,'C.M. CONSTRUTORA E COMERCIO LTDA EPP','C.M. CONSTRUTORA E COMERCIO LTDA EPP'),(137,1528,'04462949000164',NULL,'ECAP ENGENHARIA','ECAP ENGENHARIA'),(138,1531,'07246592000175',NULL,'H L MOREIRA ME','H L MOREIRA ME'),(139,1535,'05682366000101',NULL,'C E A NASCIMENTO ME','C E A NASCIMENTO ME'),(140,1543,'02954130000199',NULL,'DISTR CERPA DO AMAPA LTDA','DISTR CERPA DO AMAPA LTDA'),(141,1558,'03052852000110',NULL,'C D A CENTRO DE DISTRIBUICAO DO AP LTDA','C D A CENTRO DE DISTRIBUICAO DO AP LTDA'),(142,1559,'14573976000168',NULL,'EMPRESA DE VIGILANCIA ALVO LTDA','EMPRESA DE VIGILANCIA ALVO LTDA'),(143,1562,'04189882000136',NULL,'J R MARECO','J R MARECO'),(144,1566,'05695267000164',NULL,'A N G MONTEIRO','A N G MONTEIRO'),(145,1573,'04709850000114','','DENTAL NORTE COMERCIO E SERVIÇOS LTDA','DENTAL NORTE COMERCIO E SERVIÇOS LTDA'),(146,1587,'06966608000151',NULL,'METALURGICA STATUS LTDA ME','METALURGICA STATUS LTDA ME'),(147,1596,'00394494001370',NULL,'MINISTERIO DA JUSTICA','MINISTERIO DA JUSTICA'),(148,1610,'03243420000197',NULL,'AGENCIA DE PROM DA CIDADANIA','AGENCIA DE PROM DA CIDADANIA'),(149,1614,'07487522000109',NULL,'DURABLE WOOD P BRAZILE CIA LTDA ME','DURABLE WOOD P BRAZILE CIA LTDA ME'),(150,1628,'03569947000297',NULL,'EXPRESSO ALIANÇA MUD. TRANS. SERVIÇO LTDA','EXPRESSO ALIANÇA MUD. TRANS. SERVIÇO LTDA'),(151,1651,'15321375000201','','TRANSMARE - TRANSPORTE MARITIMO DE DERIVADOS DE PETROLEO LTD','TRANSMARE-TRANSPORTE MARITIMO DE DERIVADOS DE PETROLEO '),(152,1652,'84412675000138',NULL,'A M NETO EPP','A M NETO EPP'),(153,1657,'02297111000137',NULL,'LATIN EQUIPAMENT DO BRASIL LTDA','LATIN EQUIPAMENT DO BRASIL LTDA'),(154,1675,'43425008000102',NULL,'BFB LEASING S.A  ARRENDAMENTO MERCANTIL','BFB LEASING S.A  ARRENDAMENTO MERCANTIL'),(155,1702,'00692776000110',NULL,'BENOLIEL E MAIA LTDA','BENOLIEL E MAIA LTDA'),(156,1721,'05582154000233',NULL,'DISBEL DIST SANT DE BEBIDAS LTDA','DISBEL DIST SANT DE BEBIDAS LTDA'),(157,1724,'05748193000187',NULL,'R E PONTES LTDA','R E PONTES LTDA'),(158,1872,'00556206000100',NULL,'SICOL SERVIÇOS INDUSTRIA E COMECIO LTDA','SICOL SERVIÇOS INDUSTRIA E COMECIO LTDA'),(159,1874,'04202539000184',NULL,'T F COELHO ME','T F COELHO ME'),(160,1897,'00162760000103',NULL,'M BENZ LEASING DO BRASIL ARR MERC SA','M BENZ LEASING DO BRASIL ARR MERC SA'),(161,1935,'01744208000188',NULL,'HERNANDES E CIA LTDA','HERNANDES E CIA LTDA'),(162,1963,'05850217000104',NULL,'SPECIAL CAR RENT A CAR LTDA ME','SPECIAL CAR RENT A CAR LTDA ME'),(163,1965,'04420885000139',NULL,'J C DISTRIBUIDORA LTDA','J C DISTRIBUIDORA LTDA'),(164,1973,'01588534000224',NULL,'SAN PALM IMPORTAÇÃO E EXPORTAÇÃO LTADA','SAN PALM IMPORTAÇÃO E EXPORTAÇÃO LTADA'),(165,2004,'01592620000120',NULL,'J A PEREIRA MANCIO ME','J A PEREIRA MANCIO ME'),(166,2020,'04818030000241',NULL,'SOUZA DE SERVIÇO DE PNEUS','SOUZA DE SERVIÇO DE PNEUS'),(167,2059,'34924936000120',NULL,'S Q FERNANDES ME','S Q FERNANDES ME'),(168,2163,'04845165000115',NULL,'CONSTRUNORTE CONSTRUÇÃO E SERVIÇOS LTDA','CONSTRUNORTE CONSTRUÇÃO E SERVIÇOS LTDA'),(169,2184,'03773766000105',NULL,'AMAZÔNIA TRANSPORTES LTDA','AMAZÔNIA TRANSPORTES LTDA'),(170,2204,'03463653000103',NULL,'FABRYCIO VASCONCELOS LESSA E CIA LTDA ME','FABRYCIO VASCONCELOS LESSA E CIA LTDA ME'),(171,2332,'01102982000195',NULL,'S FARIA E SILVA ME','S FARIA E SILVA ME'),(172,2353,'02838531000183',NULL,'D P DISTRIBUIDORA DE BEBIDAS LTDA','D P DISTRIBUIDORA DE BEBIDAS LTDA'),(173,2367,'01499139000194',NULL,'R COSTA DA SILVA ME','R COSTA DA SILVA ME'),(174,2375,'07895773000122','','EDILAM F. DOS SANTOS ME','EDILAM F. DOS SANTOS ME'),(175,2378,'23081896000186',NULL,'SOFRIO COMERC E DISTRIB DE ALIMENTOS LTDA','SOFRIO COMERC E DISTRIB DE ALIMENTOS LTDA'),(176,2382,'04126856000169',NULL,'J E V LTDA','J E V LTDA'),(177,2387,'00375972009036',NULL,'INSTITUTO NAC. COL. REFORMA AGRARIA - INCRA','INSTITUTO NAC. COL. REFORMA AGRARIA - INCRA'),(178,2392,'03557255000229',NULL,'TRANS GOLD LTDA','TRANS GOLD LTDA'),(179,2399,'79851648000121',NULL,'CATTANI TRANSP. E TURISMO','CATTANI TRANSP. E TURISMO'),(180,2400,'34926188000115',NULL,'INST. DE DESENVOLV. RURAL DO AMAPÁ RURAP','INST. DE DESENVOLV. RURAL DO AMAPÁ RURAP'),(181,2404,'03904668000151',NULL,'VIAÇÃO AMAPAENSE LTDA','VIAÇÃO AMAPAENSE LTDA'),(182,2406,'34943480000146',NULL,'POLICIA TECNICO CIENTIFICA - POLITEC','POLICIA TECNICO CIENTIFICA - POLITEC'),(183,2410,'00715901000160',NULL,'JOSEFA LETÍCIA DE CARVALHO FEITOSA','JOSEFA LETÍCIA DE CARVALHO FEITOSA'),(184,2411,'04261230000165',NULL,'POSTO SÃO LÁZARO LTDA','POSTO SÃO LÁZARO LTDA'),(185,2418,'01795798000178',NULL,'PRONORTE INCORP. COM E IMO. LTDA','PRONORTE INCORP. COM E IMO. LTDA'),(186,2422,'04863311000135',NULL,'P D CARDOSO ME','P D CARDOSO ME'),(187,2441,'34927285000122',NULL,'IEPA INST PESQ CIENT TEC DO AMAPA','IEPA INST PESQ CIENT TEC DO AMAPA'),(188,2443,'23085715000190',NULL,'R ESPINDOLA ME','R ESPINDOLA ME'),(189,2451,'03442999000117',NULL,'S T HABER ME','S T HABER ME'),(190,2460,'04988598000120',NULL,'EXPORTADORA DE MADEIRAS DO PARA LTDA','EXPORTADORA DE MADEIRAS DO PARA LTDA'),(191,2461,'34860791000222',NULL,'AV ADM E CORRETORA DE SEGUROS S/S LTDA','AV ADM E CORRETORA DE SEGUROS S/S LTDA'),(192,2463,'05995030000107',NULL,'CICAL COMERCIO INDUSTRIA DE CAFE LTDA','CICAL COMERCIO INDUSTRIA DE CAFE LTDA'),(193,2470,'01350725000172',NULL,'J H S F LIMA ME','J H S F LIMA ME'),(194,2473,'03040635000100',NULL,'ENERGIA COM REP IND SERV DE ENG IMP EXP','ENERGIA COM REP IND SERV DE ENG IMP EXP'),(195,2488,'32396632000889',NULL,'BRAZSHIPPING MARITIMA LTDA','BRAZSHIPPING MARITIMA LTDA'),(196,2505,'07990250000165',NULL,'TOP CONSTRUCOES LTDA','TOP CONSTRUCOES LTDA'),(197,2507,'05694575000175',NULL,'SIND DOS TRAB NAS IND URB DO EST AP','SIND DOS TRAB NAS IND URB DO EST AP'),(198,2511,'84409705000157',NULL,'AUTO TINTAS AMAPAENSE LTDA - ME','AUTO TINTAS AMAPAENSE LTDA - ME'),(199,2529,'02830233000147',NULL,'IRMÃOS ANDRADE LTDA','IRMÃOS ANDRADE LTDA'),(200,2548,'04373727000175',NULL,'GRUPO NILTON JÚNIOR LTDA','GRUPO NILTON JÚNIOR LTDA'),(201,2549,'34925685000107',NULL,'JOSE PEREIRA DOS SANTOS ME','JOSE PEREIRA DOS SANTOS ME'),(202,2550,'05112010000132',NULL,'FARIAS E BENDELAQUE LTDA','FARIAS E BENDELAQUE LTDA'),(203,2553,'01806610000140',NULL,'DISTRIBUIDORA EQUATORIAL LTDA','DISTRIBUIDORA EQUATORIAL LTDA'),(204,2572,'05284200000137',NULL,'VILBE PEREIRA DE SOUSA EPP','VILBE PEREIRA DE SOUSA EPP'),(205,2584,'05982716000155',NULL,'L CASTRO DIAS ME','L CASTRO DIAS ME'),(206,2590,'00348003010000',NULL,'EMBRAPA CPAF AP','EMBRAPA CPAF AP'),(207,2611,'23081649000180',NULL,'CELINO CORDEIRO BASTOS','CELINO CORDEIRO BASTOS'),(208,2632,'02393705000141',NULL,'AMAZONIA INDUSTRIA E COMERCIO','AMAZONIA INDUSTRIA E COMERCIO'),(209,2666,'03679516000100',NULL,'J C CALANDRINI ME','J C CALANDRINI ME'),(210,2669,'04346514000154',NULL,'E M DE OLIVEIRA ME','E M DE OLIVEIRA ME'),(211,2674,'52733631000385',NULL,'VIBA VIAÇÃO BARBARENSE LTDA','VIBA VIAÇÃO BARBARENSE LTDA'),(212,2689,'42593269001302',NULL,'UNAMGEM MINERAÇÃO E METALURGIA S/A','UNAMGEM MINERAÇÃO E METALURGIA S/A'),(213,2706,'23066640000108',NULL,'PREFEITURA MUNICIPAL DE SANTANA','PREFEITURA MUNICIPAL DE SANTANA'),(214,2708,'05979059000197',NULL,'IRMÃOS FLEXAS CIA LTDA','IRMÃOS FLEXAS CIA LTDA'),(215,2717,'06578655000128',NULL,'R J DE OLIVEIRA','R J DE OLIVEIRA'),(216,2722,'07854155000134',NULL,'M M X LOGISTICA DO AMAPA LTDA','M M X LOGISTICA DO AMAPA LTDA'),(217,2777,'02461377000173',NULL,'L C BUENO','L C BUENO'),(218,2779,'03012545000297',NULL,'TRANSREGIONAL TRANSPORTE RODOVIARIOS LTDA','TRANSREGIONAL TRANSPORTE RODOVIARIOS LTDA'),(219,2780,'04503660000146','BERT','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA - TBL MAO'),(220,2808,'04175444000119',NULL,'M L NOBRE ME','M L NOBRE ME'),(221,2809,'02108134000156',NULL,'FAMA FABRICAS DE MOLDURA DO AMAPA LTDA','FAMA FABRICAS DE MOLDURA DO AMAPA LTDA'),(222,2810,'63857262000197',NULL,'SANTAREM GAS LTDA','SANTAREM GAS LTDA'),(223,2811,'47868237000233',NULL,'FRIGORIFICO PACIFICO LTDA','FRIGORIFICO PACIFICO LTDA'),(224,2812,'08939728000195',NULL,'SÃO JOSE INDUSTRIA E COMERCIO LTDA','SÃO JOSE INDUSTRIA E COMERCIO LTDA'),(225,2814,'08803726000255',NULL,'BELNAVE LOGÍSTICA E TRANSPORTE LTDA','BELNAVE LOGÍSTICA E TRANSPORTE LTDA'),(226,2815,'05878442000159',NULL,'REFRIGERANTES DO AMAPÁ S/A REAMA','REFRIGERANTES DO AMAPÁ S/A REAMA'),(227,2816,'04503660001118','TBL','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA'),(228,2819,'05394674000212',NULL,'TROPICAL NAVEGAÇÃO E TRANSPORTE LTDA','TROPICAL NAVEGAÇÃO E TRANSPORTE LTDA'),(229,2820,'34889477000272',NULL,'BELNAVE RODOFLUVIAL E LOGISTICA LTDA-EPP','BELNAVE RODOFLUVIAL E LOGISTICA LTDA-EPP'),(230,2821,'03557255000148',NULL,'TRANS GOLD LTDA','TRANS GOLD LTDA'),(231,2822,'05667025000167',NULL,'TRANS PRATA LTDA','TRANS PRATA LTDA'),(232,2823,'04872156000113',NULL,'SABINO DE OLIVEIRA COMERCIO E NAVEGAÇÃO S.A - SANAVE','SABINO DE OLIVEIRA COMERCIO E NAVEGAÇÃO S.A - SANAVE'),(233,2824,'13861254000227','','NORTE LOG LTDA','NORTE LOG LTDA'),(234,2825,'13492953000166','','GEOCA LOCACAO E TRANSPORTE LTDA EPP','GEOCA LOCACAO E TRANSPORTE LTDA EPP'),(235,2826,'04228987008050',NULL,'PONTE IRMAOS E CIA LTDA','PONTE IRMAOS E CIA LTDA'),(236,2827,'05685961000362','REBELO ','REBELO INDUSTRIA COMERCIO E NAVEGACAO LTDA','REBELO INDUSTRIA COMERCIO E NAVEGACAO LTDA'),(237,2829,'04233201000190',NULL,'SANAVE TRANSPORTES RODOVIARIOS LTDA','SANAVE TRANSPORTES RODOVIARIOS LTDA'),(238,2843,'03665345000152',NULL,'A.LUIZ DE FREITAS CERÂMICA - EPP','A.LUIZ DE FREITAS CERÂMICA - EPP'),(239,2854,'01429410000115',NULL,'RILDO DE CASTRO TEIXEIRA ME','RILDO DE CASTRO TEIXEIRA ME'),(240,2875,'10714621000190',NULL,'PESQUE E PAGUE DA FAZENDINHA LTDA','PESQUE E PAGUE DA FAZENDINHA LTDA'),(241,2963,'07557647000168',NULL,'MICOS IND E COM IMPORTAÇÃO E EXPORTAÇÃO LTDA.','MICOS IND E COM IMPORTAÇÃO E EXPORTAÇÃO LTDA.'),(242,2981,'07217036000170',NULL,'FRIGORIFICO E CONSTRUTORA FB ROCHA LTDA','FRIGORIFICO E CONSTRUTORA FB ROCHA LTDA'),(243,3049,'01766902000104',NULL,'A M M CARVALHO ME','A M M CARVALHO ME'),(244,3052,'09543998000145','','A.S. MAGALHAES-ME','A.S. MAGALHAES-ME - LOURA TRANSPORTES'),(245,3066,'05582154000152',NULL,'DISBEL DIST DE SANTANA DE BEBIDAS LTDA','DISBEL DIST DE SANTANA DE BEBIDAS LTDA'),(246,3122,'07294662000160',NULL,'AÇAI DO AMAPA AGROINDUSTRIAL LTDA','AÇAI DO AMAPA AGROINDUSTRIAL LTDA'),(247,3132,'05771432000110',NULL,'F NEGREIROS DA SILVA ME','F NEGREIROS DA SILVA ME'),(248,3147,'05540926000193',NULL,'AMAPÁ TELHAS INDUSTRIA CERAMICA LTDA','AMAPÁ TELHAS INDUSTRIA CERAMICA LTDA'),(249,3148,'84411826000133',NULL,'POLAR INDÚSTTRIA COM EXP DE PESCADOS LTDA','POLAR INDÚSTTRIA COM EXP DE PESCADOS LTDA'),(250,3165,'04199022000183',NULL,'CONCREAP CONCRETOS DO AMAPA LTDA','CONCREAP CONCRETOS DO AMAPA LTDA'),(251,3178,'23081789000158',NULL,'R G BATISTA ME','R G BATISTA ME'),(252,3181,'04830482000834',NULL,'GEBRA BRASILEIRA GERADORA DE ENERGIA LTDA','GEBRA BRASILEIRA GERADORA DE ENERGIA LTDA'),(253,3205,'03614722000124',NULL,'SOBERANO RODOFLUFIAL LTDA ME','SOBERANO RODOFLUFIAL LTDA ME'),(254,3216,'07207996000150',NULL,'BANCO FINASA BMC SA','BANCO FINASA BMC SA'),(255,3245,'12139915000161','LIGEIRINHO GÁS E ÁGU','M.J. DA S. MENDES-ME','M.J. DA S. MENDES-ME'),(256,3260,'00342372925000',NULL,'VENICIO DO SOCORRO GOMES DOS SANTOS','VENICIO DO SOCORRO GOMES DOS SANTOS'),(257,3290,'07285103000194',NULL,'AMAZON LOGISTICA E MAQUINAS LTDA','AMAZON LOGISTICA E MAQUINAS LTDA'),(258,3296,'02587633000335',NULL,'MINERAIS E METAIS COMERCIO E INDUSTRIA LTDA','MINERAIS E METAIS COMERCIO E INDUSTRIA LTDA'),(259,3316,'04933552000880',NULL,'COMPANHIA DOCAS DO PARA CDP','COMPANHIA DOCAS DO PARA CDP'),(260,3321,'02008461000136',NULL,'MINERAÇÃO VILA NOVA LTADA','MINERAÇÃO VILA NOVA LTADA'),(261,3341,'04756826000136',NULL,'COMPANHIA DAS DOCAS DE SANTANA','COMPANHIA DAS DOCAS DE SANTANA'),(262,3348,'09137451000140',NULL,'M C EDUARDO ME','M C EDUARDO ME'),(263,3354,'07679598000136',NULL,'M S B GAMA ME','M S B GAMA ME'),(264,3367,'08489409000125',NULL,'VIAÇÃO VALE DO AMAZONAS LTDA','VIAÇÃO VALE DO AMAZONAS LTDA'),(265,3368,'03909763000148',NULL,'AMAZONAS TRANS FRET E TURISMO LTDA','AMAZONAS TRANS FRET E TURISMO LTDA'),(266,3387,'11544706000130','','J.A. DE L. BATISTA - ME','J.A. DE L. BATISTA - ME'),(267,3412,'05995840000155',NULL,'AMAPA FLORESTAL E CELULOSE SA','AMAPA FLORESTAL E CELULOSE SA'),(268,3457,'01044061000113',NULL,'CONSTRUTORA MATAPI LTDA','CONSTRUTORA MATAPI LTDA'),(269,3477,'00650764862000',NULL,'NUBIA DOS SANTOS LUZ','NUBIA DOS SANTOS LUZ'),(270,3499,'01814853000120',NULL,'PAMA CONFECÇÕES LTDA ME','PAMA CONFECÇÕES LTDA ME'),(271,3532,'02520966000185','','GRUPO N. J. LTDA - ME ','GRUPO NILTON JUNIOR'),(272,3615,'59274605000113',NULL,'BANCO GMAC S/A','BANCO GMAC S/A'),(273,3700,'04909290000141',NULL,'J SAGICA DE SOUSA ME','J SAGICA DE SOUSA ME'),(274,3714,'61190658000106',NULL,'FIAT LEASING SA ARRENDAMENTO MERCANTIL','FIAT LEASING SA ARRENDAMENTO MERCANTIL'),(275,3715,'01658227000191',NULL,'RAIMUNDO NONATO DA SILVA ME','RAIMUNDO NONATO DA SILVA ME'),(276,3727,'05864988000150','','CHAGAS & CIA LTDA','CHAGAS & CIA LTDA'),(277,3728,'34948083000167',NULL,'POLO NORTE REFRIGERAÇÃO LTDA ME','POLO NORTE REFRIGERAÇÃO LTDA ME'),(278,3797,'09031700000118','','MARIA SUSANA CORREA DA SILVA ME','MARIA SUSANA CORREA DA SILVA ME'),(279,3799,'34944348000159',NULL,'M.A. POSSEBON ME','M.A. POSSEBON ME'),(280,3801,'02646444000124',NULL,'J V DE MORAIS ME','J V DE MORAIS ME'),(281,3818,'08293397000169',NULL,'JOSIMAR FERREIRA DE SOUZA','JOSIMAR FERREIRA DE SOUZA'),(282,3819,'03284559000189',NULL,'GOLDEN BUS LTDA','GOLDEN BUS LTDA'),(283,3820,'04943247000100',NULL,'A O ARAÚJO MOTA','A O ARAÚJO MOTA'),(284,3850,'00357038007200',NULL,'ELETRONORTE CENTRAL ELET. DO N. DO BRASIL','ELETRONORTE CENTRAL ELET. DO N. DO BRASIL'),(285,3855,'04503896000182',NULL,'AUTOMAIS VEICULOS E CONSORCIOS LTDA','AUTOMAIS VEICULOS E CONSORCIOS LTDA'),(286,3863,'34033779000163',NULL,'A B N  AMRO ARREN MERC S/A','A B N  AMRO ARREN MERC S/A'),(287,3869,'06855175001643',NULL,'WOLKSWAGEM LEASING S/A ARREND MERCANTIL','WOLKSWAGEM LEASING S/A ARREND MERCANTIL'),(288,3871,'03659166000536',NULL,'IBAMA SUPERINTENDENCIA ESTADUAL AP','IBAMA SUPERINTENDENCIA ESTADUAL AP'),(289,3879,'04497542000172',NULL,'H G MENDES ME','H G MENDES ME'),(290,3883,'05690554000181',NULL,'GRANITOS DA AMAZONIA LTDA','GRANITOS DA AMAZONIA LTDA'),(291,3884,'05124011000105',NULL,'J R PINHO','J R PINHO'),(292,3886,'04830287000138',NULL,'AIRES E COSTA LTDA','AIRES E COSTA LTDA'),(293,3888,'05005815000187',NULL,'LEAL E BARROSO COMER E SERVICOS LTDA','LEAL E BARROSO COMER E SERVICOS LTDA'),(294,3894,'04405422000106',NULL,'M T S TONGU ME','M T S TONGU ME'),(295,3925,'34873026000166',NULL,'M. M. PENANTE DOS SANTOS','M. M. PENANTE DOS SANTOS'),(296,3934,'83892117000154',NULL,'HENVIL TRANSPORTES LTDA','HENVIL TRANSPORTES LTDA'),(297,3938,'03775690000149',NULL,'SERVICO NAC DE APRENDIZAGEM INDUSTRIAL','SERVICO NAC DE APRENDIZAGEM INDUSTRIAL'),(298,3940,'05053453000108',NULL,'PROTECT SERVICE SERV ESPEC DE SEGUR LTDA','PROTECT SERVICE SERV ESPEC DE SEGUR LTDA'),(299,3944,'03455183000128',NULL,'B F CAMPOS ME','B F CAMPOS ME'),(300,3946,'05494511000120',NULL,'REINALDO LOURENCO','REINALDO LOURENCO'),(301,3947,'42291245000165',NULL,'SANTANDER BANESPA CIA DE ARREND MERCANTI','SANTANDER BANESPA CIA DE ARREND MERCANTI'),(302,3969,'03775620000190',NULL,'SERVIÇO SOCIAL DA INDÚSTRIA','SERVIÇO SOCIAL DA INDÚSTRIA'),(303,3972,'04347133000190',NULL,'M J COMERCIO E TRANSPORTES LTDA ME','M J COMERCIO E TRANSPORTES LTDA ME'),(304,3975,'14540629000139',NULL,'TROPICAL COSNTRUCOES','TROPICAL COSNTRUCOES'),(305,3988,'02552030000136',NULL,'G R DOS SANTOS ME','G R DOS SANTOS ME'),(306,3996,'02954346000154',NULL,'CORPO DE BOMBEIRO MILITAR/AP','CORPO DE BOMBEIRO MILITAR/AP'),(307,3997,'07307290000160','JCM CARDOSO ME','J C M CARDOSO ME','J C M CARDOSO ME'),(308,4001,'01320541000160',NULL,'ELIANA TELMA S PEREIRA ME','ELIANA TELMA S PEREIRA ME'),(309,4002,'34939355000162',NULL,'J H A CARNEIRO ME','J H A CARNEIRO ME'),(310,4003,'34869057000143',NULL,'O.S. GATO','O.S. GATO'),(311,4004,'05544131000153',NULL,'G.D.A. DE AZEVEDO','G.D.A. DE AZEVEDO'),(312,4011,'04962478000153',NULL,'BCN LEASING ARREND MERCANTIL S/A','BCN LEASING ARREND MERCANTIL S/A'),(313,4025,'03236738000140',NULL,'IRMAOS QUIRINO LTDA ME','IRMAOS QUIRINO LTDA ME'),(314,4028,'02448003000118',NULL,'EQUADOR MOTOS LTDA','EQUADOR MOTOS LTDA'),(315,4036,'01620412000197',NULL,'JOAO DA CONCEIÇAO','JOAO DA CONCEIÇAO'),(316,4041,'05025195000148',NULL,'A C DOLIVEIRA WANGHON ME','A C DOLIVEIRA WANGHON ME'),(317,4046,'08020434000165',NULL,'CONQUISTA MOTOS E MOTORES  LTDA','CONQUISTA MOTOS E MOTORES  LTDA'),(318,4051,'04661385000199',NULL,'MONTE E CIA LTDA','MONTE E CIA LTDA'),(319,4052,'01912896000148',NULL,'BETRAL RENT A CAR LTDA','BETRAL RENT A CAR LTDA'),(320,4111,'34862979000129',NULL,'MINERAÇÃO AMAPARI LTDA','MINERAÇÃO AMAPARI LTDA'),(321,4131,'02511537000141',NULL,'DOHO MARTINS E JULIO LTDA ME','DOHO MARTINS E JULIO LTDA ME'),(322,4134,'42150219000117',NULL,'MINERAÇÃO AMAPARI LTDA','MINERAÇÃO AMAPARI LTDA'),(323,4137,'07868356000190',NULL,'F J TEIXEIRA ME','F J TEIXEIRA ME'),(324,4147,'65654303000173',NULL,'DIBENS LEASING SA ARR MERC','DIBENS LEASING SA ARR MERC'),(325,4149,'04538767000120',NULL,'ANDRADE TRANSPORTE LTDA','ANDRADE TRANSPORTE LTDA'),(326,4169,'02920589000171',NULL,'L A G DE PAULA','L A G DE PAULA'),(327,4197,'05995840000406',NULL,'AMAPA FLORESTAL E CELULOSE SA','AMAPA FLORESTAL E CELULOSE SA'),(328,4203,'05543840000114',NULL,'A G SOLANO ME','A G SOLANO ME'),(329,4249,'01509774000105',NULL,'FERNANDES E ALMEIDA LTDA','FERNANDES E ALMEIDA LTDA'),(330,4254,'23086176000103',NULL,'SESA','SESA'),(331,4256,'00394544017827',NULL,'MINISTERIO DA SAUDE','MINISTERIO DA SAUDE'),(332,4258,'00798834000194',NULL,'CIMARCO TRANSPORTES LTDA APP','CIMARCO TRANSPORTES LTDA APP'),(333,4264,'34934489000190',NULL,'F. V. DE LIMA PP','F. V. DE LIMA PP'),(334,4272,'03915807000142',NULL,'MARQUES E SANTOS LTDA','MARQUES E SANTOS LTDA'),(335,4280,'83355784000106',NULL,'J ABARALDO DA SILVA ME','J ABARALDO DA SILVA ME'),(336,4298,'01147901000173',NULL,'GHAMMACHI E GHAMMACHI LTDA ME','GHAMMACHI E GHAMMACHI LTDA ME'),(337,4299,'01674619000144',NULL,'NORTE POLPAS LTDA - ME','NORTE POLPAS LTDA - ME'),(338,4307,'00616765944272',NULL,'RAIMUNDO ROHAN SILVA SARDINHA','RAIMUNDO ROHAN SILVA SARDINHA'),(339,4311,'07048743000180',NULL,'METALFLORA LOGISTICA LTDA ME','METALFLORA LOGISTICA LTDA ME'),(340,4314,'05966007000186',NULL,'M SANTOS','M SANTOS'),(341,4316,'02326586000104',NULL,'S M C DE ARAÚJO','S M C DE ARAÚJO'),(342,4318,'18565382000247',NULL,'SAO BENTO MINERAÇÃO SA','SAO BENTO MINERAÇÃO SA'),(343,4323,'01331740000173',NULL,'VALE VERDE LOCAÇÃO DE VEICULOS','VALE VERDE LOCAÇÃO DE VEICULOS'),(344,4330,'60660719000180',NULL,'BANESPA SA ARR MERCANTIL','BANESPA SA ARR MERCANTIL'),(345,4360,'23071368000227',NULL,'AUTO ESCAPAMENTO MACAPA LTDA','AUTO ESCAPAMENTO MACAPA LTDA'),(346,4373,'34927343000118',NULL,'TRIBUNAL REGIONAL ELEITORAL DO AMAPA','TRIBUNAL REGIONAL ELEITORAL DO AMAPA'),(347,4385,'34870576000121',NULL,'TRIBUNAL DE JUSTIÇA DO ESTADO DO AMAPÁ','TRIBUNAL DE JUSTIÇA DO ESTADO DO AMAPÁ'),(348,4399,'05642709000104',NULL,'MINERAÇÃO PEDRA BRANCA DO AMAPARI LTDA','MINERAÇÃO PEDRA BRANCA DO AMAPARI LTDA'),(349,4404,'23073240000111',NULL,'M C S FLEXA','M C S FLEXA'),(350,4414,'03938427000123',NULL,'COOPERATIVA CENTRAL DOS PRODUTOS DA FLORESTA','COOPERATIVA CENTRAL DOS PRODUTOS DA FLORESTA'),(351,4417,'04892971000144',NULL,'N A DUARTE FAGUNDES ME','N A DUARTE FAGUNDES ME'),(352,4419,'05694567000129',NULL,'ASS DOS PROD DO POLO HORT DE MACAPÁ','ASS DOS PROD DO POLO HORT DE MACAPÁ'),(353,4421,'34028316330162',NULL,'EMPRESA BRASILEIRA DE CORREIOS E TELEGRAFO','EMPRESA BRASILEIRA DE CORREIOS E TELEGRAFO'),(354,4430,'23069438000121',NULL,'I E I CASCAES LTDA ME','I E I CASCAES LTDA ME'),(355,4434,'34928887000102',NULL,'R J A SANTOS ME','R J A SANTOS ME'),(356,4437,'34869826000103',NULL,'J M MOWBRAY ME','J M MOWBRAY ME'),(357,4438,'34869685000129',NULL,'PRODAM PROC DE DADOS DO AMAPA LTDA','PRODAM PROC DE DADOS DO AMAPA LTDA'),(358,4451,'02956283000175',NULL,'GOMES E GURGEL ADVOGADOS ASSOCIADOS S/C','GOMES E GURGEL ADVOGADOS ASSOCIADOS S/C'),(359,4477,'34874248000101',NULL,'OCIR O LOBATO ME','OCIR O LOBATO ME'),(360,4483,'07777919000135',NULL,'RCF DO ROSARIO','RCF DO ROSARIO'),(361,4501,'23081375000129',NULL,'L E CONSTRUTORA E COMERCIO LTDA','L E CONSTRUTORA E COMERCIO LTDA'),(362,4503,'03281768000179',NULL,'FLEXA E CIA LTDA','FLEXA E CIA LTDA'),(363,4514,'33787094003084',NULL,'UNIDADE ESTADUAL DO IBGE NO AMAPA','UNIDADE ESTADUAL DO IBGE NO AMAPA'),(364,4523,'05696802000100',NULL,'CONSTRUTORA E REFLORESTADORA RIO PEDREI','CONSTRUTORA E REFLORESTADORA RIO PEDREI'),(365,4537,'60984473000100',NULL,'CONSELHO FEDERAL DE FARMACIA SASTE','CONSELHO FEDERAL DE FARMACIA SASTE'),(366,4547,'02341895000153',NULL,'MONTEIRO E FILHOS LTDA','MONTEIRO E FILHOS LTDA'),(367,4553,'01470539000177',NULL,'CARLOS REIS DE LIMA ME','CARLOS REIS DE LIMA ME'),(368,4566,'04912292000190',NULL,'TROPNAT-AGROINDUSTRIA COMERCIO E REPRESENTAÇÕES LTDA ME','TROPNAT-AGROINDUSTRIA COMERCIO E REPRESENTAÇÕES LTDA ME'),(369,4573,'23076144000127','','F NOGUEIRA DA SILVA - EPP','F NOGUEIRA DA SILVA - EPP'),(370,4586,'03318944000108',NULL,'J R LEITE DE ARAUJO ME','J R LEITE DE ARAUJO ME'),(371,4603,'05698071000123',NULL,'JM DE ARAUJO EPP','JM DE ARAUJO EPP'),(372,4605,'34929729000169',NULL,'PLASTICOS AMAZONAS COMERCIO LTDA','PLASTICOS AMAZONAS COMERCIO LTDA'),(373,4606,'34869354000199',NULL,'MINISTERIO PUBLICO DO ESTADO DO AMAPA','MINISTERIO PUBLICO DO ESTADO DO AMAPA'),(374,4617,'08632219000115',NULL,'MARIA E N VIANA-ME','MARIA E N VIANA-ME'),(375,4622,'63798490000800',NULL,'LOCAVEL SERV LTDA','LOCAVEL SERV LTDA'),(376,4624,'03253860000125',NULL,'SANEPLAN','SANEPLAN'),(377,4644,'05695036000150',NULL,'AUTOMOTO AUTOMÓVEIS E MOTOS DO A LTDA.','AUTOMOTO AUTOMÓVEIS E MOTOS DO A LTDA.'),(378,4686,'06081318000120',NULL,'MEIO A MEIO MEU GAROTO COMÉRCIO LTDA','MEIO A MEIO MEU GAROTO COMÉRCIO LTDA'),(379,4687,'62063177000275',NULL,'SAFRA LEASING S A ARREND MERCANTIL','SAFRA LEASING S A ARREND MERCANTIL'),(380,4690,'04707212000164',NULL,'POSTO REI DAS SELVAS LTDA','POSTO REI DAS SELVAS LTDA'),(381,4691,'02943152000153',NULL,'A. M. DA CUNHA E SILVA','A. M. DA CUNHA E SILVA'),(382,4698,'03822139000109','','A C R DE SOUZA EPP','A C R DE SOUZA EPP'),(383,4705,'59109165000149',NULL,'BANCO VOLKSWAGEN SA','BANCO VOLKSWAGEN SA'),(384,4725,'05092775000158',NULL,'M.R.G. SANTOS','M.R.G. SANTOS'),(385,4727,'10228674000100',NULL,'CENTER KENNEDY COMÉRCIO LTDA','CENTER KENNEDY COMÉRCIO LTDA'),(386,4728,'31546476000156',NULL,'B.B. LEASING S/A ARR. MERCANTIL','B.B. LEASING S/A ARR. MERCANTIL'),(387,4729,'10331697000137',NULL,'VEIGA EMPREENDIMENTOS LTDA-ME','VEIGA EMPREENDIMENTOS LTDA-ME'),(388,4736,'08897169000106',NULL,'VITORIA COM CONST E SERVICOS LTDA EPP','VITORIA COM CONST E SERVICOS LTDA EPP'),(389,4738,'34943738000104',NULL,'NEONTEC LTDA','NEONTEC LTDA'),(390,4744,'01819850000189',NULL,'VIEIRA E CAVALCANTE MINERAÇÃO LTDA-EPP','VIEIRA E CAVALCANTE MINERAÇÃO LTDA-EPP'),(391,4766,'00353773000151',NULL,'A R UBIRAJARA ME','A R UBIRAJARA ME'),(392,4775,'10731359000192',NULL,'NATALLI FRANCIELLI RIZZO BUENO EPP','NATALLI FRANCIELLI RIZZO BUENO EPP'),(393,4778,'07641914000180',NULL,'TRANS ECLIPSE TRANSPORTES LTDA ME','TRANS ECLIPSE TRANSPORTES LTDA ME'),(394,4779,'13084177000165','','MAIS BRASIL LOGISTICA E SERVICOS LTDA ME','MAIS BRASIL LOGISTICA E SERVICOS LTDA ME'),(395,4780,'34599837000110',NULL,'ESPLANADA I E C DE COLCHÕES LTDA','ESPLANADA I E C DE COLCHÕES LTDA'),(396,4781,'13861254000146',NULL,'NORTE LOG LTDA','NORTE LOG LTDA'),(397,4783,'34889477000191','','BELNAVE RODOFLUVIAL E LOGISTICA LTDA EPP','BELNAVE RODOFLUVIAL E LOGISTICA LTDA EPP'),(398,4785,'15322044000105',NULL,'R A C TERRA PLANAGEM','R A C TERRA PLANAGEM'),(399,4786,'03557255000490',NULL,'TRANS GOLD LTDA','TRANS GOLD LTDA'),(400,4787,'14352991000186',NULL,'CONSELHO NACIONAL DOS SERINGUEIROS REG DO AMAPA','CONSELHO NACIONAL DOS SERINGUEIROS REG DO AMAPA'),(401,4788,'03147787000107',NULL,'E D P EMP E DERV DE PETROLEO LTDA','E D P EMP E DERV DE PETROLEO LTDA'),(402,4800,'34927244000136',NULL,'INSTITUTO DE TERRAS DO AMAPA','INSTITUTO DE TERRAS DO AMAPA'),(403,4807,'26989350051888',NULL,'FUNDAÇÃO NACIONAL DA SAÚDE','FUNDAÇÃO NACIONAL DA SAÚDE'),(404,4817,'05995766000177',NULL,'PREFEITURA MUNICIPAL DE MACAPÁ','PREFEITURA MUNICIPAL DE MACAPÁ'),(405,4818,'05092823000108',NULL,'MUNDIAL CALÇADOS LTDA ME','MUNDIAL CALÇADOS LTDA ME'),(406,4823,'04825481000125',NULL,'ANTONIA R LOIOLA ME','ANTONIA R LOIOLA ME'),(407,4831,'23076037000107',NULL,'T GURGEL EPP','T GURGEL EPP'),(408,4840,'04922306000156',NULL,'AGENCIA DE PESCA DO AMAPA','AGENCIA DE PESCA DO AMAPA'),(409,4881,'23074719000172',NULL,'EDIFICA ENGENHARIA LTDA','EDIFICA ENGENHARIA LTDA'),(410,4888,'00934116000106',NULL,'CONV DOS MINIST DAS IGJ EVANG ASS DE DEU','CONV DOS MINIST DAS IGJ EVANG ASS DE DEU'),(411,4893,'03134703000109',NULL,'TORK SOUZA COMERCIO E REP LTDA ME','TORK SOUZA COMERCIO E REP LTDA ME'),(412,4912,'84413236000140',NULL,'METODO ENGENHARIA E COMERCIO LTDA','METODO ENGENHARIA E COMERCIO LTDA'),(413,4937,'04842563000188',NULL,'A R FILHO E CIA LTDA','A R FILHO E CIA LTDA'),(414,4941,'34940841000109',NULL,'IMPORTADORA NELY MONTE LTDA','IMPORTADORA NELY MONTE LTDA'),(415,4958,'04197810000130',NULL,'AVICAP AVICULTURA DO AMAPA I C LTDA','AVICAP AVICULTURA DO AMAPA I C LTDA'),(416,4965,'02747188000161',NULL,'JOAO BATISTA E SILVA DA SILVA','JOAO BATISTA E SILVA DA SILVA'),(417,4988,'07651954000103',NULL,'JNP DE SOUSA ME','JNP DE SOUSA ME'),(418,4992,'03642837000122',NULL,'VITERBINO E IRMAOS LTDA','VITERBINO E IRMAOS LTDA'),(419,4998,'04782127000160',NULL,'F N CAVALCANTE CONSTRUÇÕES LTDA','F N CAVALCANTE CONSTRUÇÕES LTDA'),(420,5001,'04687708000113','','R D ARAUJO CORREA ME','R D ARAUJO CORREA ME'),(421,5003,'05671910000110',NULL,'K N S ENEIAS','K N S ENEIAS'),(422,5007,'00531263000127',NULL,'A.A.F DA SILVA ME','A.A.F DA SILVA ME'),(423,5025,'03451830000123',NULL,'C M S CORREA','C M S CORREA'),(424,5035,'05983192000389',NULL,'SALOMAO ALCOLUMBRE E CIA LTDA','SALOMAO ALCOLUMBRE E CIA LTDA'),(425,5036,'04243026000111',NULL,'SECRETARIA DE ESTADO DE JUSTIÇA E SEG PULICA','SECRETARIA DE ESTADO DE JUSTIÇA E SEG PULICA'),(426,5051,'05964994000180',NULL,'SILNAVE NAVEGAÇÃO SA','SILNAVE NAVEGAÇÃO SA'),(427,5054,'02020236000115',NULL,'IMPORTADORA GT LTDA','IMPORTADORA GT LTDA'),(428,5065,'04429478000869',NULL,'S B COMERCIO LTDA','S B COMERCIO LTDA'),(429,5069,'03281737000207',NULL,'J C S FARIAS ME','J C S FARIAS ME'),(430,5070,'04193454000187',NULL,'MAGAZINE BRASILIA LTDA','MAGAZINE BRASILIA LTDA'),(431,5076,'07848399000104',NULL,'J C CONSTRUÇÕES LTDA EPP','J C CONSTRUÇÕES LTDA EPP'),(432,5078,'84437557000184',NULL,'SILA LOCADORA LTDA','SILA LOCADORA LTDA'),(433,5082,'01092730000122',NULL,'F A TOBELEM ME','F A TOBELEM ME'),(434,5097,'05128905000165',NULL,'ARMAZEM FORTALEZA LTDA','ARMAZEM FORTALEZA LTDA'),(435,5103,'05857559000156',NULL,'SOLIDA MINERAÇÃO SA','SOLIDA MINERAÇÃO SA'),(436,5111,'04830139000113',NULL,'AMAUTO AMAPA AUTOMOVEIS LTDA','AMAUTO AMAPA AUTOMOVEIS LTDA'),(437,5121,'03147177000103',NULL,'ANTONIO LUIZ PEREIRA MADEIRA M','ANTONIO LUIZ PEREIRA MADEIRA M'),(438,5130,'02682287000102',NULL,'PANAMERICANO ARREN. MERCANTIL S/A','PANAMERICANO ARREN. MERCANTIL S/A'),(439,5163,'49925225000148',NULL,'BANCO ITAU LEASING SA','BANCO ITAU LEASING SA'),(440,5173,'03053905000118',NULL,'FRANGALO IND. E COMERCIO S/A','FRANGALO IND. E COMERCIO S/A'),(441,5188,'01121343000177','MD',' MEDEFIL TRANSPORTES LTDA. ','MEDEFIL TRANSPORTES '),(442,5189,'17861838000172','MED',' M.E.D. ADMINISTRADORA DE BENS LTDA ',' M.E.D. ADMINISTRADORA DE BENS LTDA   '),(443,5190,'03330249000153','ADERT','ASSOCIAÇÃO DESPORTIVA E RECREATIVA TIRADENTES','ASSOCIAÇÃO DESPORTIVA E RECREATIVA TIRADENTES'),(444,5193,'13329936000102','A DA P. M- ME','ANTÔNIO DA PAZ MONTEIRO DE SOUSA - ME ','ANTÔNIO DA PAZ MONTEIRO DE SOUSA - ME '),(445,5194,'03621121000149','EMPRESA','MARIA DE CARVALHO DE ARRUDA ME','MARIA DE CARVALHO DE ARRUDA ME '),(446,5195,'03012764000195','','UNIAO MACAPA DE TRANSPORTES LTDA - ME',' UNIAO MACAPA '),(447,5197,'05700878000153','C.M.ARRANCADAS','CLUBE MACAPAENSE DE ARRANCADAS','CLUBE MACAPAENSE DE  ARRANCADAS'),(448,5198,'07645898000102','COM','COMERCIO E INDUSTRIA DE REDES DURMABEM LTDA-ME','COMERCIO E INDUSTRIA DE REDES DURMABEM LTDA-ME'),(449,5201,'37334455000153','MZ TRANSPORTES E REP','FRETAMENTO E TURISMO','MZ TRANSPORTES COM E REP LTDA'),(450,5206,'01011572000139','LUK','LUK COMERCIO E REPRESENTAÇOES LTDA','LUK COMERCIO E REPRESENTAÇOES LTDA'),(451,5207,'04937694000149','N.SION','NAVEGACAO SION LTDA','NAVEGACAO SION LTDA'),(452,5208,'05089941000833','DLIMACOMERCIO','DELIMA COMERCIO E NAVEGACAO LTDA','DELIMA COMERCIO E NAVEGACAO LTDA'),(453,5221,'06286431000142','ARIZONA','ARIZONA LOGISTICA LTDA','ARIZONA LOGISTICA LTDA'),(454,5223,'04503660001037','TBL','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA'),(455,5236,'12791371000118','Z.M.L DA SILVA-ME','Z.M.L DA SILVA-ME','Z.M.L DA SILVA-ME'),(456,5272,'34638098000129','ROD.VILAÇA LTDA','ROD. VILAÇA LTDA','RODOVIARIA VILAÇA LTDA'),(457,5293,'10911880000101','RB FERNANDES','RB FERNANDES','ROSIVALDO MAT. DE CONSTRUÇÃO'),(458,5296,'13514300000130','0048','AUTO VIAÇÃO SANTA TEREZA LTDA EPP','AUTO VIAÇÃO SANTA TEREZA LTDA EPP'),(459,5307,'02656316000161','EMPRESA','AGA FACTORING FOMENTO LTDA EPP','AGA FACTORING FOMENTO LTDA EPP'),(460,5314,'13062012000192','V.R.J LTDA','VIAÇÃO RIO JORDÃO LTDA','VIAÇÃO RIO JORDÃO LTDA'),(461,5334,'12633907000177','','AMAZONIA TRANSPORTES E SERVICOS LTDA - ME','AMAZONIA TRANSPORTES, SERVICOS E LOCACAO'),(462,5335,'05557558000196','CONAMA','CONAMA COMERCIO E NAVEGACAO DA AMAZONIA LTDA - EPP ','CONAMA COMERCIO E NAVEGACAO DA AMAZONIA LTDA - EPP '),(463,5336,'11645575000188','','LOCATRAM LOCACOES E TRANSPORTES AMAZONIA LTDA. - EPP ','LOCATRAM LOCACOES E TRANSPORTES AMAZONIA'),(464,5351,'19575555000190','BARBOSA MATERIAIS DE','BARBOSA MATERIAIS DE CONSTRUÇÕES LTDA - ME','BARBOSA MATERIAIS DE CONSTRUÇÕES'),(465,5355,'08864617000167','','D P T SOUSA ME','D P T SOUSA ME-SHOPPING DOS UNIFORMES'),(466,5358,'05805717000124','','G L C QUEIROZ ME','G L C QUEIROZ ME-ELE ELA MAGAZINE'),(467,5359,'02829111000130','','VIACAO CIDADE DE CATANDUVA LTDA - EPP ','VIACAO CIDADE DE CATANDUVA LTDA - EPP '),(468,5365,'02947358000151','S V DE SOUZA ME','SILVIO VITORIA DE SOUZA-ME','VITORIA TRANSPORTE'),(469,5370,'03281737000118','J C S FARIAS ME','J.C.S FARIAS','POSTO JULIO FARIAS'),(470,5375,'32438772000104','TRANSPORTADORA JOLIV','TRANSPORTADORA JOLIVAN','TRANSPORTADORA JOLIVAN LTDA'),(471,5377,'04150377000188','TRANSPORTE ICONHA LT','TRANSPORTE ICONHA LTDA','TRANSPORTE ICONHA'),(472,5378,'83346932001351','','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA','UNIRIOS RODOFLUVIAL E LOGISTICA LTDA'),(473,5391,'22876221000160','','F M FONSECA METALURGICA LTDA - ME','F M FONSECA METALURGICA LTDA - ME'),(474,5416,'15321375000120','','TRANSMARE - TRANSPORTE MARITIMO DE DERIVADOS DE PETROLEO LTD','TRANSMARE-TRANSPORTE MARITIMO DE DERIVADOS DE PETROLEO '),(475,5417,'07481452000181','','BELA IACA POLPAS DE FRUTAS INDUSTRIA E COMERCIO LTDA','BELA IACA POLPAS DE FRUTAS INDUSTRIA E COMERCIO LTDA'),(476,5418,'09458668000151','','TOP BUS COMERCIO DE VEICULOS LTDA','TOP BUS COMERCIO DE VEICULOS LTDA'),(477,5419,'05092093000145','','EMPRESA DE TRANSPORTES ESTRELA DO MAR LT','EMPRESA DE TRANSPORTES ESTRELA DO MAR LT'),(478,5426,'05246806000188','','TRANSPORTADORA PARAENSE LTDA','TRANSPORTADORA PARAENSE LTDA'),(479,5427,'83889410000162','','D BARROS E CIA LTDA','D BARROS E CIA LTDA'),(480,5432,'04196093000122','','A M CARVALHO - ME','A M CARVALHO - ME/BAZARLANDIA'),(481,5452,'04503660000308','','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA'),(482,5453,'34936161000103','','BENEDITO AFONSO SILVA DE FARIAS','BENEDITO AFONSO SILVA DE FARIAS - EMPORIO SANTANA'),(483,5466,'07548982000108','','QUALITY BUS COMERCIO DE VEICULOS LTDA','QUALITY BUS COMERCIO DE VEICULOS LTDA'),(484,5479,'13084177000246','','MAIS BRASIL LOGISTICA E SERVICOS LTDA EPP','MAIS BRASIL LOGISTICA E SERVICOS '),(485,5483,'05685961000109','','REBELO INDUSTRIA COMERCIO E NAVEGACAO LTDA','REBELO INDUSTRIA COMERCIO E NAVEGACAO LTDA-REICON'),(486,5484,'23079221000100','QUEIROZ & QUEIROZ IM','QUEIROZ & QUEIROZ IMPORT E EXPORT LTDA M','QUEIROZ & QUEIROZ IMPORT E EXPORT LTDA M'),(487,5493,'34931584000130','','T K B LOCACOES E TRANSPORTES LTDA','T K B LOCACOES E TRANSPORTES LTDA'),(488,5494,'73700791000136','','AGROCOSTA COM DE PROD AGROPEC LTDA','AGROCOSTA COM DE PROD AGROPEC LTDA'),(489,5495,'21773395000135','','REAL ENCOMENDAS E CARGAS LTDA - EPP','REAL ENCOMENDAS E CARGAS LTDA - EPP'),(490,5496,'04719485000129','','ATL - ANDRADE TRANSPORTES LTDA - EPP ','ATL - ANDRADE TRANSPORTES LTDA - EPP '),(491,5497,'10325631000134','','JUVIC LTDA ME','JUVIC LTDA ME'),(492,5513,'02280133000194','P.ICCAR','POSTO ICCAR LTDA','POSTO ICCAR LTDA'),(493,5549,'04124573000188','','C F X EMPREENDIMENTOS LTDA ','C F X EMPREENDIMENTOS LTDA '),(494,5558,'19297663000148','','RICARDO F MAGALHAES EIRELI- ME','RICARDO F MAGALHAES EIRELI- ME '),(495,5559,'04197539000133','','W B ARAUJO - EPP','W B ARAUJO - EPP'),(496,5567,'14726097000129','','ATLANTICA COMERCIO E SERVICOS LTDA - EPP	','ATLANTICA COMERCIO E SERVICOS LTDA - EPP'),(497,5568,'11927796000149','','SUPREMA ENGENHARIA LTDA','SUPREMA ENGENHARIA LTDA'),(498,5575,'14081677000258','','AMERICA DO SUL LEASING SA ARR MERCANTIL','AMERICA DO SUL LEASING SA ARR MERCANTIL'),(499,5601,'15814381000110','','DISTRIBUIDORA DE ALIMENTOS G. V. LTDA','DISTRIBUIDORA DE ALIMENTOS G. V. LTDA'),(500,5603,'09814481000143','','E. COSTA TORRES - EPP','E. COSTA TORRES - EPP'),(501,5607,'14481948000110','','ACAI VITANAT INDUSTRIA E COMERCIO EIRELI ME','ACAI VITANAT INDUSTRIA E COMERCIO EIRELI ME'),(502,5613,'16781414000135','','SIQUEIRA E RAMOS LTDA-EPP','SIQUEIRA E RAMOS LTDA-EPP'),(503,6107,'05229636000123','ZM FERREIRA - ME','ZM FERREIRA - ME','ZM FERREIRA - ME'),(504,6111,'14574214000186','','M S F DOS SANTOS-ME','M S F DOS SANTOS-ME'),(505,6113,'04503660001460','','TRANSPORTES BERTOLINI LTDA','TRANSPORTES BERTOLINI LTDA'),(506,6114,'34867176000167','G E G CONST E SER','GUARDIA E GUARDIA CONST E SERV LTDA EPP','GUARDIA E GUARDIA CONST E SERV LTDA EPP'),(507,6115,'18818707000175','','N R GUARDIA SILVA EIRELI ME','N R GUARDIA SILVA EIRELI ME'),(508,6118,'05126112000107','IND.E COMER.CER PERE','INDUSTRIA E COMERCIO DE CERAMICA PEREIRA','INDUSTRIA E COMERCIO DE CERAMICA PEREIRA'),(509,6119,'12238227000159','TORRES E COR. LTDA -','TORRES & CORDEIRO LTDA-ME','TORRES & CORDEIRO LTDA-ME'),(510,6125,'02612262000132','','MIGUEL CAETANO DE ALMEIDA - EPP','MIGUEL CAETANO DE ALMEIDA - EPP'),(511,6126,'22605159000172','','IND E C CORREA A DO PIRIRIM LTDA ME','IND E C CORREA A DO PIRIRIM LTDA ME'),(512,6129,'03237117000262','','C J RAUBER - ME','C J RAUBER - ME'),(513,6130,'03237117000181','CJ RAUBER','CJ RAUBER - ME','C.J RAUBER - ME'),(514,6132,'04271035000116','','OBRATEC CONSTRUCOES E COMERCIO LTDA ME','OBRATEC CONSTRUCOES E COMERCIO LTDA ME'),(515,6133,'08573573000116','','VEX CONSTRUCOES E INCORPORACOES LTDA','VEX CONSTRUCOES E INCORPORACOES LTDA'),(516,6137,'12596647000107','','R.SOUSA DA ROCHA-ME','R.SOUSA DA ROCHA-ME'),(517,6147,'07929503000195','','REINALDO M DA SILVA - ME ','REINALDO M DA SILVA - ME '),(518,6149,'08750613000158','NILSON DONIZETI NERY','NILSON DONIZETI NERY ME','NILSON DONIZETI NERY ME'),(519,6151,'05275242000101','A GOMES PINHEIRO','A GOMES PINHEIRO','A GOMES PINHEIRO'),(520,6152,'34931824000105','J A C B DA SILVA EIR','J A C B DA SILVA EIRELI ME','J A C B DA SILVA EIRELI ME'),(521,6162,'00531238000143','VIEIRA E CIA LTDA','VIEIRA E CIA LTDA','VIEIRA E CIA LTDA'),(522,6164,'01316377000117','','SIAO MATERIAL DE CONSTRUCAO LTDA - ME ','SIAO MATERIAL DE CONSTRUCAO LTDA - ME '),(523,6166,'03391617000173','',' N.A. RAMOS ME ',' N.A. RAMOS ME '),(524,6170,'10778430000192','C T M COMERCIO DE AL','C T M COMERCIO DE ALIMENTOS LTDA ','C T M COMERCIO DE ALIMENTOS LTDA '),(525,6171,'09686886000143','','FONSECA E FONSECA LTDA','FONSECA E FONSECA LTDA'),(526,6173,'05315678000187','','M J S DE ALMEIDA LTDA-EPP','M J S DE ALMEIDA LTDA-EPP'),(527,6174,'84132604000181','DINAMICA ENGENHARIA ','DINAMICA ENGENHARIA LTDA ','DINAMICA ENGENHARIA LTDA '),(528,6175,'07146906000168','CONSTRUTORA VITORIA ','CONSTRUTORA VITORIA TRANSP E LOC EQUIP L','CONSTRUTORA VITORIA TRANSP E LOC EQUIP L'),(529,6178,'13328038000130','R DA S SANTOS NETO M','R DA S SANTOS NETO ME','R DA S SANTOS NETO ME'),(530,6180,'08655671000100','AMAPA CONSTRUCAO EIR','AMAPA CONSTRUCAO EIRELI ME','AMAPA CONSTRUCAO EIRELI ME'),(531,6185,'11717288000136','L M P DE MORAIS TRAN','L M P DE MORAIS TRANSPORTES EPP ','L M P DE MORAIS TRANSPORTES EPP '),(532,6186,'11935049000152','','M D CONSTRUCOES COM. E SERVICOS LTDA-ME','M D CONSTRUCOES COM. E SERVICOS LTDA-ME'),(533,6187,'10222958000180','','M S CARDOSO DA GAMA-ME','M S CARDOSO DA GAMA-ME'),(534,6188,'03226409000119','','FRANCISCO WEBHESTER RORIZ CAVALCANTE','FRANCISCO WEBHESTER RORIZ CAVALCANTE'),(535,6195,'07985168000142','','COMERCIAL ATHENAS LTDA EPP','COMERCIAL ATHENAS LTDA EPP'),(536,6204,'05157091000197','','TREVISAN COMERCIO DE VEICULOS LTDA ','TREVISAN COMERCIO DE VEICULOS LTDA '),(537,6205,'05026214000150','','M E G DE SOUSA BRINQUEDOS ME ','M E G DE SOUSA BRINQUEDOS ME '),(538,6210,'10631453000170','','P.C SOUZA ME','P.C SOUZA ME'),(539,6212,'02930356000150','','A C DE AGUIAR E CIA LTDA ','A C DE AGUIAR E CIA LTDA '),(540,6213,'05024583000104','','MONACO DIESEL LTDA','MONACO DIESEL LTDA'),(541,6225,'03304241000112','','CERAMICA SARDOS E FILHOS LTDA - ME','CERAMICA SARDOS E FILHOS LTDA - ME'),(542,6227,'08446335000140','','N K A TEIXEIRA ME','N K A TEIXEIRA ME'),(543,6230,'03004654000181','','POSTO ACAI LTDA','POSTO ACAI LTDA'),(544,6253,'04980160000103','','COMETA CONSTRUCOES E SERVICOS LTDA','COMETA CONSTRUCOES E SERVICOS LTDA'),(545,6288,'26192555000176','','ROSILENE DOS SANTOS PRADO - ME','ROSILENE DOS SANTOS PRADO - ME'),(546,6293,'00331323000168','','TRANSPORTADORA NEVADA LTDA','TRANSPORTADORA NEVADA LTDA'),(547,6314,'14287287000278','','C.JOSE DE LIMA-ME','C.JOSE DE LIMA-ME'),(548,6324,'17572473000166','','AGROPECUARIA CERRADO VERDE LTDA - ME','AGROPECUARIA CERRADO VERDE LTDA - ME'),(549,6335,'08608813000170','','M A PINHEIRO CASTRO ME','M A PINHEIRO CASTRO ME'),(550,6340,'07252683000113','','OCA CONSTRUCOES COMERCIO E SERVIÇOS LTDA-ME','OCA CONSTRUCOES COMERCIO E SERVIÇOS LTDA-ME'),(551,6353,'10342739000135','','ANELITA S AMARAL','ANELITA S AMARAL'),(552,6356,'34868422000103','','GALVAO E CIA LTDA','GALVAO E CIA LTDA'),(553,6358,'12282472000163','','K B SARMENTO-ME','K B SARMENTO-ME'),(554,6372,'14399924000117','','M. J. MENUSI TRANSPORTES - ME','M. J. MENUSI TRANSPORTES - ME'),(555,6704,'04699858000147','','E ROCHA DE AZEVEDO-ME','E ROCHA DE AZEVEDO-ME'),(556,6723,'14311143000390','','TCAR LOCACAO DE VEICULOS EIRELI EPP','TCAR LOCACAO DE VEICULOS EIRELI EPP'),(557,6724,'05965546000109','','COMPANHIA DE ELETRICIDADE DO AMAPA - CEA ','COMPANHIA DE ELETRICIDADE DO AMAPA - CEA '),(558,6726,'15675779000112','','ELINSA - ELETROTECNICA INDUSTRIAL E NAVAL DO BRASIL LTDA ','ELINSA - ELETROTECNICA INDUSTRIAL E NAVAL DO BRASIL LTDA '),(559,6727,'16670085000155','','LOCALIZA RENT A CAR SA ','LOCALIZA RENT A CAR SA '),(560,6738,'05004167000144','','JOAO CASTRO MORAES ME','JOAO CASTRO MORAES ME'),(561,6747,'13306391000119','','S MARQUES DE OLIVEIRA ME','S MARQUES DE OLIVEIRA ME'),(562,6748,'09220655000140','','BRASIL MEDICAMENTOS EIRELI EPP','BRASIL MEDICAMENTOS EIRELI EPP'),(563,6749,'19346172000140','','R B TRANSPORTES LTDA - ME','R B TRANSPORTES LTDA - ME'),(564,6754,'02515700000144','','P.R.T.DE AZEVEDO-ME','P.R.T.DE AZEVEDO-ME'),(565,6760,'09620322000108','','FRANCISCO DIONIZIO TORRES OLIVEIRA ME','FRANCISCO DIONIZIO TORRES OLIVEIRA ME'),(566,6761,'08243334000106','','IMABERG IND E COM DE MADEIRAS LTDA','IMABERG IND E COM DE MADEIRAS LTDA'),(567,6784,'09001633000199','','SANTOS MATERIAIS DE CONSTRUCAO LTDA-ME	','SANTOS MATERIAIS DE CONSTRUCAO LTDA-ME	'),(568,6790,'02195456000180','','FRANCISCA MELO BEZERRA EPP','FRANCISCA MELO BEZERRA EPP'),(569,6795,'07865958000194','','AUGE CONTRUCOES E SANEAMENTO LTDA - EPP','AUGE CONTRUCOES E SANEAMENTO LTDA - EPP');
/*!40000 ALTER TABLE `pessoa_juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_motorista`
--

DROP TABLE IF EXISTS `pessoa_motorista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_motorista` (
  `id_pessoa_motorista` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa_fisica` int(11) NOT NULL,
  `cnh_numero` varchar(50) DEFAULT NULL,
  `cnh_validade` date DEFAULT NULL,
  `cnh_primeira_habilitacao` date DEFAULT NULL,
  `id_cnh_categoria` int(11) NOT NULL,
  `id_uf` int(11) NOT NULL,
  `cnh_registro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa_motorista`),
  KEY `fk_pessoa_motorista_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_pessoa_motorista_cnh_categoria1_idx` (`id_cnh_categoria`),
  KEY `fk_pessoa_motorista_uf1_idx` (`id_uf`),
  CONSTRAINT `fk_pessoa_motorista_cnh_categoria1` FOREIGN KEY (`id_cnh_categoria`) REFERENCES `cnh_categoria` (`id_cnh_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_motorista_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_motorista_uf1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_motorista`
--

LOCK TABLES `pessoa_motorista` WRITE;
/*!40000 ALTER TABLE `pessoa_motorista` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa_motorista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_ref`
--

DROP TABLE IF EXISTS `pessoa_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_ref` (
  `id_pessoa_ref` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(1) DEFAULT NULL,
  `chave` int(11) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`id_pessoa_ref`),
  KEY `fk_pessoa_ref_pessoa1_idx` (`id_pessoa`),
  CONSTRAINT `fk_pessoa_ref_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9054 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_ref`
--

LOCK TABLES `pessoa_ref` WRITE;
/*!40000 ALTER TABLE `pessoa_ref` DISABLE KEYS */;
INSERT INTO `pessoa_ref` VALUES (24,'E',1,1),(25,'E',2,2),(27,'E',3,3),(28,'E',4,4),(29,'T',1,4),(30,'E',5,5),(31,'T',2,5),(32,'T',3,5),(38,'E',2,2),(40,'E',13,11),(41,'E',14,6),(42,'T',11,6),(43,'E',15,12),(44,'E',16,13),(47,'T',14,2),(48,'T',15,2),(49,'E',17,14),(50,'E',18,15),(51,'T',16,15),(52,'E',19,16),(53,'E',20,17),(54,'E',21,18),(55,'E',22,19),(56,'E',23,20),(57,'E',24,21),(58,'E',25,22),(59,'E',26,23),(60,'E',27,24),(61,'E',28,25),(62,'E',29,26),(63,'E',30,27),(64,'E',31,28),(65,'E',32,29),(66,'E',33,30),(67,'E',34,31),(68,'E',35,32),(69,'E',36,33),(70,'E',37,34),(71,'E',38,35),(72,'E',39,36),(73,'E',40,37),(74,'E',41,38),(75,'E',42,39),(76,'E',43,40),(77,'E',44,41),(78,'E',45,42),(79,'E',46,43),(80,'E',47,44),(81,'E',48,45),(82,'E',49,46),(83,'E',50,47),(84,'E',51,48),(85,'E',52,49),(86,'E',53,50),(87,'E',54,51),(88,'E',55,52),(89,'E',56,53),(90,'E',57,54),(91,'E',58,55),(92,'E',59,56),(93,'E',60,57),(94,'E',61,58),(95,'T',17,58),(96,'T',18,58),(97,'E',62,59),(98,'E',63,60),(99,'E',64,61),(100,'T',19,61),(101,'T',20,61),(102,'E',65,62),(103,'E',66,63),(104,'E',67,64),(105,'E',68,65),(106,'E',69,66),(107,'E',70,67),(108,'E',71,68),(109,'E',72,69),(110,'E',73,70),(111,'E',74,71),(112,'E',75,72),(113,'E',76,73),(114,'E',77,74),(115,'E',78,75),(116,'E',79,76),(117,'E',80,77),(118,'E',81,78),(119,'E',82,79),(120,'E',83,80),(121,'E',84,81),(122,'E',85,82),(123,'E',86,83),(124,'E',87,84),(125,'E',88,85),(126,'E',89,86),(127,'E',90,87),(128,'E',91,88),(129,'E',92,89),(130,'E',93,90),(131,'E',94,91),(132,'E',95,92),(133,'E',96,93),(134,'E',97,94),(135,'E',98,95),(136,'E',99,96),(137,'E',100,97),(138,'E',101,98),(139,'E',102,99),(140,'E',103,100),(141,'E',104,101),(142,'E',105,102),(143,'E',106,103),(144,'E',107,104),(145,'E',108,105),(146,'E',109,106),(147,'E',110,107),(148,'E',111,108),(149,'E',112,109),(150,'T',21,109),(151,'E',113,110),(152,'E',114,111),(153,'E',115,112),(154,'E',116,113),(155,'E',117,114),(156,'E',118,115),(157,'E',119,116),(158,'E',120,117),(159,'E',121,118),(160,'E',122,119),(161,'E',123,120),(162,'E',124,121),(163,'E',125,122),(164,'E',126,123),(165,'E',127,124),(166,'E',128,125),(167,'E',129,126),(168,'E',130,127),(169,'E',131,128),(170,'E',132,129),(171,'E',133,130),(172,'E',134,131),(173,'E',135,132),(174,'E',136,133),(175,'E',137,134),(176,'E',138,135),(177,'E',139,136),(178,'E',140,137),(179,'E',141,138),(180,'E',142,139),(181,'E',143,140),(182,'E',144,141),(183,'E',145,142),(184,'E',146,143),(185,'E',147,144),(186,'E',148,145),(187,'E',149,146),(188,'E',150,147),(189,'E',151,148),(190,'E',152,149),(191,'E',153,150),(192,'E',154,151),(193,'E',155,152),(194,'E',156,153),(195,'E',157,154),(196,'E',158,155),(197,'E',159,156),(198,'E',160,157),(199,'E',161,158),(200,'E',162,159),(201,'E',163,160),(202,'E',164,161),(203,'E',165,162),(204,'E',166,163),(205,'E',167,164),(206,'E',168,165),(207,'E',169,166),(208,'E',170,167),(209,'E',171,168),(210,'E',172,169),(211,'E',173,170),(212,'E',174,171),(213,'E',175,172),(214,'E',176,173),(215,'E',177,174),(216,'E',178,175),(217,'E',179,176),(218,'E',180,177),(219,'E',181,178),(220,'E',182,179),(221,'E',183,180),(222,'E',184,181),(223,'E',185,182),(224,'E',186,183),(225,'E',187,184),(226,'E',188,185),(227,'E',189,186),(228,'E',190,187),(229,'E',191,188),(230,'E',192,189),(231,'E',193,190),(232,'E',194,191),(233,'E',195,192),(234,'E',196,193),(235,'E',197,194),(236,'E',198,195),(237,'E',199,196),(238,'E',200,197),(239,'E',201,198),(240,'E',202,199),(241,'E',203,200),(242,'E',204,201),(243,'E',205,202),(244,'E',206,203),(245,'E',207,204),(246,'E',208,205),(247,'E',209,206),(248,'E',210,207),(249,'E',211,208),(250,'E',212,209),(251,'E',213,210),(252,'E',214,211),(253,'E',215,212),(254,'E',216,213),(255,'E',217,214),(256,'E',218,215),(257,'E',219,216),(258,'E',220,217),(259,'E',221,218),(260,'E',222,219),(261,'E',223,220),(262,'E',224,221),(263,'E',225,222),(264,'E',226,223),(265,'T',22,223),(266,'T',23,223),(267,'E',227,224),(268,'E',228,225),(269,'E',229,226),(270,'E',230,227),(271,'E',231,228),(272,'E',232,229),(273,'E',233,230),(274,'E',234,231),(275,'E',235,232),(276,'E',236,233),(277,'E',237,234),(278,'E',238,235),(279,'E',239,236),(280,'E',240,237),(281,'E',241,238),(282,'E',242,239),(283,'E',243,240),(284,'E',244,241),(285,'E',245,242),(286,'E',246,243),(287,'E',247,244),(288,'T',24,244),(289,'E',248,245),(290,'E',249,246),(291,'E',250,247),(292,'E',251,248),(293,'E',252,249),(294,'E',253,250),(295,'E',254,251),(296,'E',255,252),(297,'E',256,253),(298,'E',257,254),(299,'E',258,255),(300,'E',259,256),(301,'E',260,257),(302,'E',261,258),(303,'E',262,259),(304,'E',263,260),(305,'E',264,261),(306,'E',265,262),(307,'E',266,263),(308,'E',267,264),(309,'E',268,265),(310,'E',269,266),(311,'E',270,267),(312,'E',271,268),(313,'E',272,269),(314,'E',273,270),(315,'E',274,271),(316,'E',275,272),(317,'E',276,273),(318,'E',277,274),(319,'E',278,275),(320,'E',279,276),(321,'E',280,277),(322,'E',281,278),(323,'E',282,279),(324,'E',283,280),(325,'E',284,281),(326,'E',285,282),(327,'E',286,283),(328,'E',287,284),(329,'E',288,285),(330,'E',289,286),(331,'E',290,287),(332,'E',291,288),(333,'E',292,289),(334,'E',293,290),(335,'E',294,291),(336,'E',295,292),(337,'E',296,293),(338,'E',297,294),(339,'E',298,295),(340,'T',25,295),(341,'E',299,296),(342,'E',300,297),(343,'E',301,298),(344,'E',302,299),(345,'E',303,300),(346,'E',304,301),(347,'E',305,302),(348,'E',306,303),(349,'E',307,304),(350,'E',308,305),(351,'E',309,306),(352,'T',26,306),(353,'T',27,306),(354,'E',310,307),(355,'E',311,308),(356,'E',312,309),(357,'E',313,310),(358,'E',314,311),(359,'E',315,312),(360,'E',316,313),(361,'T',28,313),(362,'T',29,313),(363,'E',317,314),(364,'E',318,315),(365,'E',319,316),(366,'E',320,317),(367,'E',321,318),(368,'E',322,319),(369,'E',323,320),(370,'E',324,321),(371,'E',325,322),(372,'E',326,323),(373,'E',327,324),(374,'E',328,325),(375,'E',329,326),(376,'E',330,327),(377,'E',331,328),(378,'E',332,329),(379,'E',333,330),(380,'E',334,331),(381,'E',335,332),(382,'E',336,333),(383,'E',337,334),(384,'E',338,335),(385,'E',339,336),(386,'E',340,337),(387,'E',341,338),(388,'E',342,339),(389,'E',343,340),(390,'E',344,341),(391,'E',345,342),(392,'E',346,343),(393,'T',30,343),(394,'E',347,344),(395,'E',348,345),(396,'E',349,346),(397,'E',350,347),(398,'E',351,348),(399,'E',352,349),(400,'E',353,350),(401,'E',354,351),(402,'E',355,352),(403,'E',356,353),(404,'T',31,353),(405,'E',357,354),(406,'E',358,355),(407,'E',359,356),(408,'E',360,357),(409,'E',361,358),(410,'T',32,358),(411,'E',362,359),(412,'E',363,360),(413,'E',364,361),(414,'E',365,362),(415,'E',366,363),(416,'T',33,363),(417,'E',367,364),(418,'T',34,364),(419,'E',368,365),(420,'E',369,366),(421,'E',370,367),(422,'T',35,367),(423,'T',36,367),(424,'E',371,368),(425,'E',372,369),(426,'E',373,370),(427,'T',37,370),(428,'E',374,371),(429,'E',375,372),(430,'E',376,373),(431,'T',38,373),(432,'E',377,374),(433,'E',378,375),(434,'E',379,376),(435,'E',380,377),(436,'E',381,378),(437,'E',382,379),(438,'T',39,379),(439,'E',383,380),(440,'T',40,380),(441,'E',384,381),(442,'E',385,382),(443,'E',386,383),(444,'T',41,383),(445,'T',42,383),(446,'E',387,384),(447,'E',388,385),(448,'E',389,386),(449,'T',43,386),(450,'E',390,387),(451,'E',391,388),(452,'E',392,389),(453,'E',393,390),(454,'E',394,391),(455,'T',44,391),(456,'T',45,391),(457,'E',395,392),(458,'T',46,392),(459,'E',396,393),(460,'T',47,393),(461,'E',397,394),(462,'E',398,395),(463,'E',399,396),(464,'E',400,397),(465,'E',401,398),(466,'E',402,399),(467,'E',403,400),(468,'E',404,401),(469,'T',48,401),(470,'E',405,402),(471,'E',406,403),(472,'T',49,403),(473,'T',50,403),(474,'E',407,404),(475,'E',408,405),(476,'T',51,405),(477,'E',409,406),(478,'T',52,406),(479,'T',53,406),(480,'E',410,407),(481,'E',411,408),(482,'T',54,408),(483,'E',412,409),(484,'E',413,410),(485,'E',414,411),(486,'E',415,412),(487,'T',55,412),(488,'E',416,413),(489,'T',56,413),(490,'E',417,414),(491,'E',418,415),(492,'E',419,416),(493,'E',420,417),(494,'E',421,418),(495,'E',422,419),(496,'E',423,420),(497,'E',424,421),(498,'E',425,422),(499,'E',426,423),(500,'E',427,424),(501,'E',428,425),(502,'E',429,426),(503,'E',430,427),(504,'E',431,428),(505,'E',432,429),(506,'E',433,430),(507,'E',434,431),(508,'E',435,432),(509,'E',436,433),(510,'E',437,434),(511,'E',438,435),(512,'E',439,436),(513,'E',440,437),(514,'E',441,438),(515,'E',442,439),(516,'E',443,440),(517,'E',444,441),(518,'E',445,442),(519,'E',446,443),(520,'E',447,444),(521,'E',448,445),(522,'E',449,446),(523,'E',450,447),(524,'E',451,448),(525,'E',452,449),(526,'E',453,450),(527,'E',454,451),(528,'E',455,452),(529,'E',456,453),(530,'E',457,454),(531,'E',458,455),(532,'E',459,456),(533,'E',460,457),(534,'E',461,458),(535,'E',462,459),(536,'E',463,460),(537,'E',464,461),(538,'E',465,462),(539,'E',466,463),(540,'E',467,464),(541,'E',468,465),(542,'E',469,466),(543,'E',470,467),(544,'E',471,468),(545,'E',472,469),(546,'E',473,470),(547,'E',474,471),(548,'E',475,472),(549,'E',476,473),(550,'E',477,474),(551,'E',478,475),(552,'E',479,476),(553,'E',480,477),(554,'E',481,478),(555,'E',482,479),(556,'E',483,480),(557,'E',484,481),(558,'E',485,482),(559,'E',486,483),(560,'E',487,484),(561,'E',488,485),(562,'E',489,486),(563,'E',490,487),(564,'E',491,488),(565,'E',492,489),(566,'E',493,490),(567,'E',494,491),(568,'E',495,492),(569,'E',496,493),(570,'E',497,494),(571,'T',57,494),(572,'E',498,495),(573,'E',499,496),(574,'E',500,497),(575,'E',501,498),(576,'E',502,499),(577,'E',503,500),(578,'E',504,501),(579,'E',505,502),(580,'E',506,503),(581,'E',507,504),(582,'E',508,505),(583,'E',509,506),(584,'E',510,507),(585,'E',511,508),(586,'E',512,509),(587,'T',58,509),(588,'E',513,510),(589,'E',514,511),(590,'E',515,512),(591,'E',516,513),(592,'E',517,514),(593,'E',518,515),(594,'E',519,516),(595,'E',520,517),(596,'E',521,518),(597,'E',522,519),(598,'E',523,520),(599,'E',524,521),(600,'E',525,522),(601,'E',526,523),(602,'E',527,524),(603,'E',528,525),(604,'E',529,526),(605,'E',530,527),(606,'E',531,528),(607,'E',532,529),(608,'E',533,530),(609,'E',534,531),(610,'E',535,532),(611,'E',536,533),(612,'E',537,534),(613,'E',538,535),(614,'E',539,536),(615,'E',540,537),(616,'E',541,538),(617,'E',542,539),(618,'E',543,540),(619,'E',544,541),(620,'E',545,542),(621,'E',546,543),(622,'E',547,544),(623,'E',548,545),(624,'E',549,546),(625,'E',550,547),(626,'E',551,548),(627,'E',552,549),(628,'E',553,550),(629,'E',554,551),(630,'E',555,552),(631,'E',556,553),(632,'E',557,554),(633,'E',558,555),(634,'E',559,556),(635,'E',560,557),(636,'E',561,558),(637,'E',562,559),(638,'E',563,560),(639,'E',564,561),(640,'E',565,562),(641,'E',566,563),(642,'E',567,564),(643,'E',568,565),(644,'E',569,566),(645,'E',570,567),(646,'T',59,567),(647,'E',571,568),(648,'E',572,569),(649,'E',573,570),(650,'E',574,571),(651,'E',575,572),(652,'E',576,573),(653,'E',577,574),(654,'E',578,575),(655,'E',579,576),(656,'E',580,577),(657,'T',60,577),(658,'E',581,578),(659,'T',61,578),(660,'E',582,579),(661,'E',583,580),(662,'E',584,581),(663,'E',585,582),(664,'E',586,583),(665,'E',587,584),(666,'E',588,585),(667,'E',589,586),(668,'E',590,587),(669,'E',591,588),(670,'E',592,589),(671,'E',593,590),(672,'E',594,591),(673,'E',595,592),(674,'E',596,593),(675,'E',597,594),(676,'E',598,595),(677,'E',599,596),(678,'E',600,597),(679,'E',601,598),(680,'E',602,599),(681,'E',603,600),(682,'E',604,601),(683,'E',605,602),(684,'E',606,603),(685,'E',607,604),(686,'E',608,605),(687,'E',609,606),(688,'E',610,607),(689,'E',611,608),(690,'E',612,609),(691,'E',613,610),(692,'E',614,611),(693,'E',615,612),(694,'E',616,613),(695,'E',617,614),(696,'E',618,615),(697,'E',619,616),(698,'E',620,617),(699,'E',621,618),(700,'T',62,618),(701,'T',63,618),(702,'E',622,619),(703,'E',623,620),(704,'E',624,621),(705,'E',625,622),(706,'E',626,623),(707,'E',627,624),(708,'E',628,625),(709,'E',629,626),(710,'E',630,627),(711,'E',631,628),(712,'E',632,629),(713,'E',633,630),(714,'E',634,631),(715,'E',635,632),(716,'E',636,633),(717,'E',637,634),(718,'E',638,635),(719,'E',639,636),(720,'E',640,637),(721,'E',641,638),(722,'E',642,639),(723,'E',643,640),(724,'E',644,641),(725,'E',645,642),(726,'E',646,643),(727,'E',647,644),(728,'E',648,645),(729,'E',649,646),(730,'E',650,647),(731,'E',651,648),(732,'E',652,649),(733,'E',653,650),(734,'E',654,651),(735,'E',655,652),(736,'E',656,653),(737,'E',657,654),(738,'E',658,655),(739,'E',659,656),(740,'E',660,657),(741,'E',661,658),(742,'E',662,659),(743,'E',663,660),(744,'E',664,661),(745,'E',665,662),(746,'E',666,663),(747,'E',667,664),(748,'E',668,665),(749,'E',669,666),(750,'E',670,667),(751,'E',671,668),(752,'E',672,669),(753,'E',673,670),(754,'E',674,671),(755,'E',675,672),(756,'E',676,673),(757,'E',677,674),(758,'E',678,675),(759,'E',679,676),(760,'E',680,677),(761,'E',681,678),(762,'E',682,679),(763,'E',683,680),(764,'E',684,681),(765,'E',685,682),(766,'E',686,683),(767,'E',687,684),(768,'E',688,685),(769,'E',689,686),(770,'E',690,687),(771,'E',691,688),(772,'E',692,689),(773,'E',693,690),(774,'E',694,691),(775,'E',695,692),(776,'E',696,693),(777,'E',697,694),(778,'E',698,695),(779,'E',699,696),(780,'E',700,697),(781,'E',701,698),(782,'E',702,699),(783,'E',703,700),(784,'E',704,701),(785,'E',705,702),(786,'E',706,703),(787,'E',707,704),(788,'E',708,705),(789,'E',709,706),(790,'E',710,707),(791,'E',711,708),(792,'E',712,709),(793,'E',713,710),(794,'E',714,711),(795,'E',715,712),(796,'E',716,713),(797,'E',717,714),(798,'E',718,715),(799,'E',719,716),(800,'E',720,717),(801,'E',721,718),(802,'E',722,719),(803,'E',723,720),(804,'E',724,721),(805,'E',725,722),(806,'E',726,723),(807,'E',727,724),(808,'E',728,725),(809,'E',729,726),(810,'E',730,727),(811,'E',731,728),(812,'E',732,729),(813,'E',733,730),(814,'E',734,731),(815,'E',735,732),(816,'E',736,733),(817,'E',737,734),(818,'E',738,735),(819,'E',739,736),(820,'E',740,737),(821,'E',741,738),(822,'E',742,739),(823,'E',743,740),(824,'E',744,741),(825,'E',745,742),(826,'E',746,743),(827,'E',747,744),(828,'E',748,745),(829,'E',749,746),(830,'E',750,747),(831,'E',751,748),(832,'E',752,749),(833,'E',753,750),(834,'E',754,751),(835,'E',755,752),(836,'E',756,753),(837,'E',757,754),(838,'E',758,755),(839,'E',759,756),(840,'E',760,757),(841,'E',761,758),(842,'E',762,759),(843,'E',763,760),(844,'E',764,761),(845,'E',765,762),(846,'E',766,763),(847,'E',767,764),(848,'E',768,765),(849,'E',769,766),(850,'E',770,767),(851,'E',771,768),(852,'E',772,769),(853,'E',773,770),(854,'E',774,771),(855,'E',775,772),(856,'E',776,773),(857,'E',777,774),(858,'E',778,775),(859,'E',779,776),(860,'E',780,777),(861,'E',781,778),(862,'E',782,779),(863,'E',783,780),(864,'E',784,781),(865,'E',785,782),(866,'E',786,783),(867,'E',787,784),(868,'E',788,785),(869,'E',789,786),(870,'E',790,787),(871,'E',791,788),(872,'E',792,789),(873,'E',793,790),(874,'E',794,791),(875,'E',795,792),(876,'E',796,793),(877,'E',797,794),(878,'E',798,795),(879,'E',799,796),(880,'E',800,797),(881,'E',801,798),(882,'E',802,799),(883,'E',803,800),(884,'E',804,801),(885,'E',805,802),(886,'T',64,802),(887,'E',806,803),(888,'E',807,804),(889,'E',808,805),(890,'E',809,806),(891,'E',810,807),(892,'E',811,808),(893,'E',812,809),(894,'E',813,810),(895,'E',814,811),(896,'E',815,812),(897,'E',816,813),(898,'E',817,814),(899,'E',818,815),(900,'E',819,816),(901,'E',820,817),(902,'E',821,818),(903,'E',822,819),(904,'E',823,820),(905,'E',824,821),(906,'E',825,822),(907,'E',826,823),(908,'E',827,824),(909,'E',828,825),(910,'E',829,826),(911,'E',830,827),(912,'E',831,828),(913,'E',832,829),(914,'E',833,830),(915,'E',834,831),(916,'E',835,832),(917,'E',836,833),(918,'E',837,834),(919,'E',838,835),(920,'E',839,836),(921,'E',840,837),(922,'E',841,838),(923,'E',842,839),(924,'E',843,840),(925,'E',844,841),(926,'E',845,842),(927,'E',846,843),(928,'E',847,844),(929,'E',848,845),(930,'E',849,846),(931,'E',850,847),(932,'E',851,848),(933,'E',852,849),(934,'E',853,850),(935,'E',854,851),(936,'E',855,852),(937,'E',856,853),(938,'E',857,854),(939,'E',858,855),(940,'E',859,856),(941,'E',860,857),(942,'E',861,858),(943,'E',862,859),(944,'E',863,860),(945,'E',864,861),(946,'E',865,862),(947,'E',866,863),(948,'E',867,864),(949,'E',868,865),(950,'E',869,866),(951,'E',870,867),(952,'E',871,868),(953,'E',872,869),(954,'E',873,870),(955,'E',874,871),(956,'E',875,872),(957,'E',876,873),(958,'E',877,874),(959,'E',878,875),(960,'E',879,876),(961,'E',880,877),(962,'E',881,878),(963,'E',882,879),(964,'E',883,880),(965,'E',884,881),(966,'E',885,882),(967,'E',886,883),(968,'E',887,884),(969,'E',888,885),(970,'E',889,886),(971,'E',890,887),(972,'E',891,888),(973,'E',892,889),(974,'E',893,890),(975,'E',894,891),(976,'E',895,892),(977,'E',896,893),(978,'E',897,894),(979,'E',898,895),(980,'E',899,896),(981,'E',900,897),(982,'E',901,898),(983,'E',902,899),(984,'E',903,900),(985,'E',904,901),(986,'E',905,902),(987,'E',906,903),(988,'E',907,904),(989,'E',908,905),(990,'E',909,906),(991,'E',910,907),(992,'E',911,908),(993,'E',912,909),(994,'E',913,910),(995,'E',914,911),(996,'E',915,912),(997,'E',916,913),(998,'E',917,914),(999,'E',918,915),(1000,'E',919,916),(1001,'E',920,917),(1002,'E',921,918),(1003,'E',922,919),(1004,'E',923,920),(1005,'E',924,921),(1006,'E',925,922),(1007,'E',926,923),(1008,'E',927,924),(1009,'E',928,925),(1010,'E',929,926),(1011,'E',930,927),(1012,'E',931,928),(1013,'E',932,929),(1014,'E',933,930),(1015,'E',934,931),(1016,'E',935,932),(1017,'E',936,933),(1018,'E',937,934),(1019,'T',65,934),(1020,'T',66,934),(1021,'E',938,935),(1022,'E',939,936),(1023,'T',67,936),(1024,'E',940,937),(1025,'E',941,938),(1026,'E',942,939),(1027,'T',68,939),(1028,'E',943,940),(1029,'T',69,940),(1030,'E',944,941),(1031,'T',70,941),(1032,'T',71,941),(1033,'E',945,942),(1034,'T',72,942),(1035,'E',946,943),(1036,'T',73,943),(1037,'E',947,944),(1038,'T',74,944),(1039,'T',75,944),(1040,'E',948,945),(1041,'T',76,945),(1042,'T',77,945),(1043,'E',949,946),(1044,'T',78,946),(1045,'T',79,946),(1046,'E',950,947),(1047,'T',80,947),(1048,'E',951,948),(1049,'E',952,949),(1050,'E',953,950),(1051,'T',81,950),(1052,'T',82,950),(1053,'E',954,951),(1054,'T',83,951),(1055,'E',955,952),(1056,'T',84,952),(1057,'E',956,953),(1058,'E',957,954),(1059,'T',85,954),(1060,'T',86,954),(1061,'E',958,955),(1062,'E',959,956),(1063,'T',87,956),(1064,'E',960,957),(1065,'E',961,958),(1066,'E',962,959),(1067,'E',963,960),(1068,'E',964,961),(1069,'T',88,961),(1070,'E',965,962),(1071,'T',89,962),(1072,'T',90,962),(1073,'E',966,963),(1074,'T',91,963),(1075,'T',92,963),(1076,'E',967,964),(1078,'T',94,964),(1079,'E',968,965),(1080,'T',95,965),(1081,'E',969,966),(1082,'T',96,966),(1083,'E',970,967),(1084,'T',97,967),(1085,'E',971,968),(1086,'E',972,969),(1087,'E',973,970),(1088,'E',974,971),(1089,'E',975,972),(1090,'E',976,973),(1091,'E',977,974),(1092,'E',978,975),(1093,'E',979,976),(1094,'E',980,977),(1095,'E',981,978),(1096,'E',982,979),(1097,'E',983,980),(1098,'E',984,981),(1099,'E',985,982),(1100,'E',986,983),(1101,'E',987,984),(1102,'E',988,985),(1103,'E',989,986),(1104,'E',990,987),(1105,'E',991,988),(1106,'E',992,989),(1107,'E',993,990),(1108,'E',994,991),(1109,'E',995,992),(1110,'E',996,993),(1111,'E',997,994),(1112,'E',998,995),(1113,'E',999,996),(1114,'E',1000,997),(1115,'E',1001,998),(1116,'E',1002,999),(1117,'E',1003,1000),(1118,'E',1004,1001),(1119,'E',1005,1002),(1120,'E',1006,1003),(1121,'E',1007,1004),(1122,'E',1008,1005),(1123,'E',1009,1006),(1124,'E',1010,1007),(1125,'E',1011,1008),(1126,'E',1012,1009),(1127,'E',1013,1010),(1128,'E',1014,1011),(1129,'E',1015,1012),(1130,'E',1016,1013),(1131,'E',1017,1014),(1132,'E',1018,1015),(1133,'E',1019,1016),(1134,'E',1020,1017),(1135,'E',1021,1018),(1136,'E',1022,1019),(1137,'E',1023,1020),(1138,'E',1024,1021),(1139,'E',1025,1022),(1140,'E',1026,1023),(1141,'E',1027,1024),(1142,'E',1028,1025),(1143,'E',1029,1026),(1144,'E',1030,1027),(1145,'E',1031,1028),(1146,'E',1032,1029),(1147,'E',1033,1030),(1148,'E',1034,1031),(1149,'E',1035,1032),(1150,'E',1036,1033),(1151,'E',1037,1034),(1152,'E',1038,1035),(1153,'E',1039,1036),(1154,'E',1040,1037),(1155,'E',1041,1038),(1156,'E',1042,1039),(1157,'E',1043,1040),(1158,'E',1044,1041),(1159,'E',1045,1042),(1160,'E',1046,1043),(1161,'E',1047,1044),(1162,'E',1048,1045),(1163,'E',1049,1046),(1164,'E',1050,1047),(1165,'E',1051,1048),(1166,'E',1052,1049),(1167,'T',98,1049),(1168,'E',1053,1050),(1169,'E',1054,1051),(1170,'E',1055,1052),(1171,'E',1056,1053),(1172,'E',1057,1054),(1173,'E',1058,1055),(1174,'E',1059,1056),(1175,'E',1060,1057),(1176,'E',1061,1058),(1177,'E',1062,1059),(1178,'E',1063,1060),(1179,'T',99,1060),(1180,'E',1064,1061),(1181,'E',1065,1062),(1182,'E',1066,1063),(1183,'E',1067,1064),(1184,'E',1068,1065),(1185,'E',1069,1066),(1186,'E',1070,1067),(1187,'E',1071,1068),(1188,'E',1072,1069),(1189,'E',1073,1070),(1190,'E',1074,1071),(1191,'E',1075,1072),(1192,'E',1076,1073),(1193,'E',1077,1074),(1194,'E',1078,1075),(1195,'E',1079,1076),(1196,'E',1080,1077),(1197,'E',1081,1078),(1198,'E',1082,1079),(1199,'E',1083,1080),(1200,'E',1084,1081),(1201,'E',1085,1082),(1202,'E',1086,1083),(1203,'E',1087,1084),(1204,'E',1088,1085),(1205,'T',100,1085),(1206,'E',1089,1086),(1207,'E',1090,1087),(1208,'T',101,1087),(1209,'E',1091,1088),(1210,'E',1092,1089),(1211,'E',1093,1090),(1212,'E',1094,1091),(1213,'E',1095,1092),(1214,'E',1096,1093),(1215,'E',1097,1094),(1216,'E',1098,1095),(1217,'T',102,1095),(1218,'T',103,1095),(1219,'E',1099,1096),(1220,'T',104,1096),(1221,'T',105,1096),(1222,'E',1100,1097),(1223,'E',1101,1098),(1224,'E',1102,1099),(1225,'E',1103,1100),(1226,'E',1104,1101),(1227,'E',1105,1102),(1228,'E',1106,1103),(1229,'E',1107,1104),(1230,'E',1108,1105),(1231,'E',1109,1106),(1232,'E',1110,1107),(1233,'E',1111,1108),(1234,'E',1112,1109),(1235,'E',1113,1110),(1236,'E',1114,1111),(1237,'E',1115,1112),(1238,'E',1116,1113),(1239,'E',1117,1114),(1240,'E',1118,1115),(1241,'E',1119,1116),(1242,'E',1120,1117),(1243,'E',1121,1118),(1244,'E',1122,1119),(1245,'E',1123,1120),(1246,'E',1124,1121),(1247,'E',1125,1122),(1248,'E',1126,1123),(1249,'E',1127,1124),(1250,'E',1128,1125),(1251,'E',1129,1126),(1252,'E',1130,1127),(1253,'E',1131,1128),(1254,'E',1132,1129),(1255,'E',1133,1130),(1256,'E',1134,1131),(1257,'E',1135,1132),(1258,'E',1136,1133),(1259,'E',1137,1134),(1260,'E',1138,1135),(1261,'E',1139,1136),(1262,'E',1140,1137),(1263,'E',1141,1138),(1264,'E',1142,1139),(1265,'E',1143,1140),(1266,'E',1144,1141),(1267,'E',1145,1142),(1268,'E',1146,1143),(1269,'E',1147,1144),(1270,'E',1148,1145),(1271,'E',1149,1146),(1272,'E',1150,1147),(1273,'E',1151,1148),(1274,'E',1152,1149),(1275,'E',1153,1150),(1276,'E',1154,1151),(1277,'E',1155,1152),(1278,'E',1156,1153),(1279,'E',1157,1154),(1280,'E',1158,1155),(1281,'E',1159,1156),(1282,'E',1160,1157),(1283,'E',1161,1158),(1284,'E',1162,1159),(1285,'E',1163,1160),(1286,'E',1164,1161),(1287,'E',1165,1162),(1288,'E',1166,1163),(1289,'E',1167,1164),(1290,'E',1168,1165),(1291,'E',1169,1166),(1292,'E',1170,1167),(1293,'E',1171,1168),(1294,'E',1172,1169),(1295,'E',1173,1170),(1296,'E',1174,1171),(1297,'E',1175,1172),(1298,'E',1176,1173),(1299,'E',1177,1174),(1300,'E',1178,1175),(1301,'E',1179,1176),(1302,'E',1180,1177),(1303,'E',1181,1178),(1304,'E',1182,1179),(1305,'E',1183,1180),(1306,'E',1184,1181),(1307,'E',1185,1182),(1308,'E',1186,1183),(1309,'E',1187,1184),(1310,'E',1188,1185),(1311,'E',1189,1186),(1312,'E',1190,1187),(1313,'E',1191,1188),(1314,'E',1192,1189),(1315,'E',1193,1190),(1316,'E',1194,1191),(1317,'E',1195,1192),(1318,'E',1196,1193),(1319,'T',106,1193),(1320,'E',1197,1194),(1321,'T',107,1194),(1322,'E',1198,1195),(1323,'E',1199,1196),(1324,'E',1200,1197),(1325,'E',1201,1198),(1326,'T',108,1198),(1327,'E',1202,1199),(1328,'E',1203,1200),(1329,'E',1204,1201),(1330,'E',1205,1202),(1331,'T',109,1202),(1332,'E',1206,1203),(1333,'E',1207,1204),(1334,'E',1208,1205),(1335,'T',110,1205),(1336,'T',111,1205),(1337,'E',1209,1206),(1338,'T',112,1206),(1339,'T',113,1206),(1340,'E',1210,1207),(1341,'T',114,1207),(1342,'T',115,1207),(1343,'E',1211,1208),(1344,'T',116,1208),(1345,'T',117,1208),(1346,'E',1212,1209),(1347,'T',118,1209),(1348,'T',119,1101),(1349,'E',1213,1210),(1350,'T',120,1210),(1351,'E',1214,1211),(1352,'T',121,1211),(1353,'T',122,1211),(1354,'E',1215,1212),(1355,'T',123,1212),(1356,'T',124,1212),(1357,'E',1216,1213),(1358,'T',125,1213),(1359,'T',126,1213),(1360,'E',1217,1214),(1361,'T',127,1214),(1362,'E',1218,1215),(1363,'T',128,1215),(1364,'T',129,1215),(1365,'E',1219,1216),(1366,'T',130,1216),(1367,'E',1220,1217),(1368,'T',131,1217),(1369,'E',1221,1218),(1370,'E',1222,1219),(1371,'T',132,1219),(1372,'E',1223,1220),(1373,'T',133,1220),(1374,'T',134,1220),(1375,'E',1224,1221),(1376,'T',135,1221),(1377,'E',1225,1222),(1378,'T',136,1222),(1379,'E',1226,1223),(1380,'E',1227,1224),(1381,'T',137,1224),(1382,'E',1228,1225),(1383,'T',138,1225),(1384,'T',139,1225),(1385,'E',1229,1226),(1386,'E',1230,1227),(1387,'T',140,1227),(1388,'E',1231,1228),(1389,'T',141,1228),(1390,'E',1232,1229),(1391,'T',142,1229),(1392,'T',143,1229),(1393,'E',1233,1230),(1394,'T',144,1230),(1395,'E',1234,1231),(1396,'T',145,1231),(1397,'T',146,1231),(1398,'E',1235,1232),(1399,'T',147,1232),(1400,'E',1236,1233),(1401,'T',148,1233),(1402,'T',149,1233),(1403,'E',1237,1234),(1404,'E',1238,1235),(1405,'T',150,1235),(1406,'T',151,1235),(1407,'E',1239,1236),(1408,'E',1240,1237),(1409,'T',152,1237),(1410,'E',1241,1238),(1411,'T',153,1238),(1412,'T',154,1238),(1413,'E',1242,1239),(1414,'T',155,1239),(1415,'T',156,1239),(1416,'E',1243,1240),(1417,'T',157,1240),(1418,'E',1244,1241),(1419,'E',1245,1242),(1420,'E',1246,1243),(1421,'E',1247,1244),(1422,'E',1248,1245),(1423,'E',1249,1246),(1424,'E',1250,1247),(1425,'E',1251,1248),(1426,'E',1252,1249),(1427,'E',1253,1250),(1428,'E',1254,1251),(1429,'E',1255,1252),(1430,'E',1256,1253),(1431,'E',1257,1254),(1432,'E',1258,1255),(1433,'E',1259,1256),(1434,'E',1260,1257),(1435,'E',1261,1258),(1436,'E',1262,1259),(1437,'E',1263,1260),(1438,'E',1264,1261),(1439,'T',158,1261),(1440,'E',1265,1262),(1441,'E',1266,1263),(1442,'E',1267,1264),(1443,'E',1268,1265),(1444,'T',159,1265),(1445,'E',1269,1266),(1446,'E',1270,1267),(1447,'E',1271,1268),(1448,'E',1272,1269),(1449,'E',1273,1270),(1450,'E',1274,1271),(1451,'E',1275,1272),(1452,'E',1276,1273),(1453,'E',1277,1274),(1454,'E',1278,1275),(1455,'E',1279,1276),(1456,'E',1280,1277),(1457,'E',1281,1278),(1458,'E',1282,1279),(1459,'E',1283,1280),(1460,'E',1284,1281),(1461,'E',1285,1282),(1462,'E',1286,1283),(1463,'E',1287,1284),(1464,'E',1288,1285),(1465,'E',1289,1286),(1466,'E',1290,1287),(1467,'E',1291,1288),(1468,'E',1292,1289),(1469,'E',1293,1290),(1470,'E',1294,1291),(1471,'T',160,1291),(1472,'E',1295,1292),(1473,'T',161,1292),(1474,'E',1296,1293),(1475,'E',1297,1294),(1476,'E',1298,1295),(1477,'E',1299,1296),(1478,'E',1300,1297),(1479,'E',1301,1298),(1480,'E',1302,1299),(1481,'E',1303,1300),(1482,'E',1304,1301),(1483,'E',1305,1302),(1484,'E',1306,1303),(1485,'E',1307,1304),(1486,'E',1308,1305),(1487,'E',1309,1306),(1488,'E',1310,1307),(1489,'E',1311,1308),(1490,'E',1312,1309),(1491,'E',1313,1310),(1492,'E',1314,1311),(1493,'E',1315,1312),(1494,'E',1316,1313),(1495,'E',1317,1314),(1496,'E',1318,1315),(1497,'T',162,1315),(1498,'T',163,1315),(1499,'E',1319,1316),(1500,'E',1320,1317),(1501,'E',1321,1318),(1502,'E',1322,1319),(1503,'E',1323,1320),(1504,'E',1324,1321),(1505,'E',1325,1322),(1506,'E',1326,1323),(1507,'E',1327,1324),(1508,'E',1328,1325),(1509,'T',164,1325),(1510,'E',1329,1326),(1511,'E',1330,1327),(1512,'E',1331,1328),(1513,'E',1332,1329),(1514,'E',1333,1330),(1515,'E',1334,1331),(1516,'E',1335,1332),(1517,'E',1336,1333),(1518,'E',1337,1334),(1519,'E',1338,1335),(1520,'E',1339,1336),(1521,'E',1340,1337),(1522,'E',1341,1338),(1523,'E',1342,1339),(1524,'E',1343,1340),(1525,'E',1344,1341),(1526,'E',1345,1342),(1527,'E',1346,1343),(1528,'E',1347,1344),(1529,'E',1348,1345),(1530,'E',1349,1346),(1531,'E',1350,1347),(1532,'E',1351,1348),(1533,'E',1352,1349),(1534,'E',1353,1350),(1535,'E',1354,1351),(1536,'E',1355,1352),(1537,'E',1356,1353),(1538,'E',1357,1354),(1539,'E',1358,1355),(1540,'E',1359,1356),(1541,'E',1360,1357),(1542,'E',1361,1358),(1543,'E',1362,1359),(1544,'E',1363,1360),(1545,'E',1364,1361),(1546,'E',1365,1362),(1547,'E',1366,1363),(1548,'E',1367,1364),(1549,'E',1368,1365),(1550,'E',1369,1366),(1551,'E',1370,1367),(1552,'E',1371,1368),(1553,'E',1372,1369),(1554,'E',1373,1370),(1555,'E',1374,1371),(1556,'E',1375,1372),(1557,'E',1376,1373),(1558,'E',1377,1374),(1559,'E',1378,1375),(1560,'E',1379,1376),(1561,'E',1380,1377),(1562,'E',1381,1378),(1563,'E',1382,1379),(1564,'E',1383,1380),(1565,'E',1384,1381),(1566,'E',1385,1382),(1567,'E',1386,1383),(1568,'E',1387,1384),(1569,'E',1388,1385),(1570,'E',1389,1386),(1571,'E',1390,1387),(1572,'E',1391,1388),(1573,'E',1392,1389),(1574,'E',1393,1390),(1575,'E',1394,1391),(1576,'E',1395,1392),(1577,'E',1396,1393),(1578,'E',1397,1394),(1579,'E',1398,1395),(1580,'E',1399,1396),(1581,'E',1400,1397),(1582,'E',1401,1398),(1583,'E',1402,1399),(1584,'E',1403,1400),(1585,'E',1404,1401),(1586,'E',1405,1402),(1587,'E',1406,1403),(1588,'E',1407,1404),(1589,'E',1408,1405),(1590,'E',1409,1406),(1591,'E',1410,1407),(1592,'E',1411,1408),(1593,'E',1412,1409),(1594,'E',1413,1410),(1595,'E',1414,1411),(1596,'E',1415,1412),(1597,'E',1416,1413),(1598,'E',1417,1414),(1599,'E',1418,1415),(1600,'E',1419,1416),(1601,'E',1420,1417),(1602,'E',1421,1418),(1603,'E',1422,1419),(1604,'E',1423,1420),(1605,'E',1424,1421),(1606,'E',1425,1422),(1607,'E',1426,1423),(1608,'E',1427,1424),(1609,'E',1428,1425),(1610,'E',1429,1426),(1611,'E',1430,1427),(1612,'E',1431,1428),(1613,'E',1432,1429),(1614,'E',1433,1430),(1615,'E',1434,1431),(1616,'E',1435,1432),(1617,'E',1436,1433),(1618,'E',1437,1434),(1619,'E',1438,1435),(1620,'E',1439,1436),(1621,'E',1440,1437),(1622,'E',1441,1438),(1623,'E',1442,1439),(1624,'E',1443,1440),(1625,'E',1444,1441),(1626,'E',1445,1442),(1627,'E',1446,1443),(1628,'E',1447,1444),(1629,'E',1448,1445),(1630,'E',1449,1446),(1631,'E',1450,1447),(1632,'E',1451,1448),(1633,'E',1452,1449),(1634,'E',1453,1450),(1635,'E',1454,1451),(1636,'E',1455,1452),(1637,'T',165,1452),(1638,'E',1456,1453),(1639,'T',166,1453),(1640,'E',1457,1454),(1641,'T',167,1454),(1642,'E',1458,1455),(1643,'T',168,1455),(1644,'E',1459,1456),(1645,'E',1460,1457),(1646,'E',1461,1458),(1647,'E',1462,1459),(1648,'E',1463,1460),(1649,'E',1464,1461),(1650,'E',1465,1462),(1651,'E',1466,1463),(1652,'E',1467,1464),(1653,'E',1468,1465),(1654,'E',1469,1466),(1655,'E',1470,1467),(1656,'E',1471,1468),(1657,'E',1472,1469),(1658,'E',1473,1470),(1659,'E',1474,1471),(1660,'E',1475,1472),(1661,'E',1476,1473),(1662,'E',1477,1474),(1663,'E',1478,1475),(1664,'E',1479,1476),(1665,'E',1480,1477),(1666,'E',1481,1478),(1667,'E',1482,1479),(1668,'E',1483,1480),(1669,'E',1484,1481),(1670,'E',1485,1482),(1671,'E',1486,1483),(1672,'E',1487,1484),(1673,'E',1488,1485),(1674,'E',1489,1486),(1675,'E',1490,1487),(1676,'E',1491,1488),(1677,'E',1492,1489),(1678,'E',1493,1490),(1679,'E',1494,1491),(1680,'E',1495,1492),(1681,'E',1496,1493),(1682,'E',1497,1494),(1683,'E',1498,1495),(1684,'E',1499,1496),(1685,'E',1500,1497),(1686,'E',1501,1498),(1687,'E',1502,1499),(1688,'E',1503,1500),(1689,'E',1504,1501),(1690,'E',1505,1502),(1691,'E',1506,1503),(1692,'E',1507,1504),(1693,'E',1508,1505),(1694,'E',1509,1506),(1695,'E',1510,1507),(1696,'E',1511,1508),(1697,'E',1512,1509),(1698,'E',1513,1510),(1699,'E',1514,1511),(1700,'E',1515,1512),(1701,'E',1516,1513),(1702,'E',1517,1514),(1703,'E',1518,1515),(1704,'E',1519,1516),(1705,'E',1520,1517),(1706,'E',1521,1518),(1707,'E',1522,1519),(1708,'E',1523,1520),(1709,'E',1524,1521),(1710,'E',1525,1522),(1711,'E',1526,1523),(1712,'E',1527,1524),(1713,'E',1528,1525),(1714,'E',1529,1526),(1715,'E',1530,1527),(1716,'E',1531,1528),(1717,'E',1532,1529),(1718,'E',1533,1530),(1719,'E',1534,1531),(1720,'E',1535,1532),(1721,'E',1536,1533),(1722,'E',1537,1534),(1723,'E',1538,1535),(1724,'E',1539,1536),(1725,'E',1540,1537),(1726,'E',1541,1538),(1727,'E',1542,1539),(1728,'E',1543,1540),(1729,'E',1544,1541),(1730,'E',1545,1542),(1731,'E',1546,1543),(1732,'E',1547,1544),(1733,'E',1548,1545),(1734,'E',1549,1546),(1735,'E',1550,1547),(1736,'E',1551,1548),(1737,'E',1552,1549),(1738,'E',1553,1550),(1739,'E',1554,1551),(1740,'E',1555,1552),(1741,'E',1556,1553),(1742,'E',1557,1554),(1743,'E',1558,1555),(1744,'E',1559,1556),(1745,'E',1560,1557),(1746,'E',1561,1558),(1747,'E',1562,1559),(1748,'E',1563,1560),(1749,'E',1564,1561),(1750,'E',1565,1562),(1751,'E',1566,1563),(1752,'E',1567,1564),(1753,'E',1568,1565),(1754,'E',1569,1566),(1755,'E',1570,1567),(1756,'E',1571,1568),(1757,'E',1572,1569),(1758,'E',1573,1570),(1759,'E',1574,1571),(1760,'E',1575,1572),(1761,'E',1576,1573),(1762,'E',1577,1574),(1763,'E',1578,1575),(1764,'E',1579,1576),(1765,'E',1580,1577),(1766,'E',1581,1578),(1767,'E',1582,1579),(1768,'E',1583,1580),(1769,'E',1584,1581),(1770,'E',1585,1582),(1771,'E',1586,1583),(1772,'E',1587,1584),(1773,'E',1588,1585),(1774,'E',1589,1586),(1775,'E',1590,1587),(1776,'E',1591,1588),(1777,'E',1592,1589),(1778,'E',1593,1590),(1779,'E',1594,1591),(1780,'E',1595,1592),(1781,'E',1596,1593),(1782,'E',1597,1594),(1783,'E',1598,1595),(1784,'E',1599,1596),(1785,'E',1600,1597),(1786,'E',1601,1598),(1787,'E',1602,1599),(1788,'E',1603,1600),(1789,'E',1604,1601),(1790,'E',1605,1602),(1791,'E',1606,1603),(1792,'E',1607,1604),(1793,'E',1608,1605),(1794,'E',1609,1606),(1795,'E',1610,1607),(1796,'T',169,1607),(1797,'E',1611,1608),(1798,'E',1612,1609),(1799,'E',1613,1610),(1800,'E',1614,1611),(1801,'E',1615,1612),(1802,'E',1616,1613),(1803,'E',1617,1614),(1804,'E',1618,1615),(1805,'E',1619,1616),(1806,'E',1620,1617),(1807,'E',1621,1618),(1808,'E',1622,1619),(1809,'E',1623,1620),(1810,'E',1624,1621),(1811,'E',1625,1622),(1812,'E',1626,1623),(1813,'E',1627,1624),(1814,'E',1628,1625),(1815,'E',1629,1626),(1816,'E',1630,1627),(1817,'E',1631,1628),(1818,'E',1632,1629),(1819,'E',1633,1630),(1820,'E',1634,1631),(1821,'E',1635,1632),(1822,'E',1636,1633),(1823,'E',1637,1634),(1824,'E',1638,1635),(1825,'E',1639,1636),(1826,'E',1640,1637),(1827,'E',1641,1638),(1828,'E',1642,1639),(1829,'E',1643,1640),(1830,'E',1644,1641),(1831,'E',1645,1642),(1832,'E',1646,1643),(1833,'E',1647,1644),(1834,'E',1648,1645),(1835,'E',1649,1646),(1836,'E',1650,1647),(1837,'E',1651,1648),(1838,'E',1652,1649),(1839,'E',1653,1650),(1840,'E',1654,1651),(1841,'E',1655,1652),(1842,'E',1656,1653),(1843,'E',1657,1654),(1844,'E',1658,1655),(1845,'E',1659,1656),(1846,'E',1660,1657),(1847,'E',1661,1658),(1848,'E',1662,1659),(1849,'E',1663,1660),(1850,'E',1664,1661),(1851,'E',1665,1662),(1852,'E',1666,1663),(1853,'E',1667,1664),(1854,'E',1668,1665),(1855,'E',1669,1666),(1856,'E',1670,1667),(1857,'E',1671,1668),(1858,'E',1672,1669),(1859,'E',1673,1670),(1860,'E',1674,1671),(1861,'E',1675,1672),(1862,'E',1676,1673),(1863,'E',1677,1674),(1864,'E',1678,1675),(1865,'E',1679,1676),(1866,'E',1680,1677),(1867,'E',1681,1678),(1868,'E',1682,1679),(1869,'E',1683,1680),(1870,'E',1684,1681),(1871,'E',1685,1682),(1872,'E',1686,1683),(1873,'E',1687,1684),(1874,'E',1688,1685),(1875,'E',1689,1686),(1876,'E',1690,1687),(1877,'E',1691,1688),(1878,'E',1692,1689),(1879,'E',1693,1690),(1880,'E',1694,1691),(1881,'E',1695,1692),(1882,'E',1696,1693),(1883,'E',1697,1694),(1884,'E',1698,1695),(1885,'E',1699,1696),(1886,'E',1700,1697),(1887,'E',1701,1698),(1888,'E',1702,1699),(1889,'E',1703,1700),(1890,'E',1704,1701),(1891,'E',1705,1702),(1892,'E',1706,1703),(1893,'E',1707,1704),(1894,'E',1708,1705),(1895,'E',1709,1706),(1896,'E',1710,1707),(1897,'E',1711,1708),(1898,'E',1712,1709),(1899,'E',1713,1710),(1900,'E',1714,1711),(1901,'E',1715,1712),(1902,'E',1716,1713),(1903,'E',1717,1714),(1904,'E',1718,1715),(1905,'E',1719,1716),(1906,'E',1720,1717),(1907,'E',1721,1718),(1908,'E',1722,1719),(1909,'E',1723,1720),(1910,'E',1724,1721),(1911,'E',1725,1722),(1912,'E',1726,1723),(1913,'E',1727,1724),(1914,'E',1728,1725),(1915,'E',1729,1726),(1916,'E',1730,1727),(1917,'E',1731,1728),(1918,'E',1732,1729),(1919,'E',1733,1730),(1920,'E',1734,1731),(1921,'E',1735,1732),(1922,'E',1736,1733),(1923,'E',1737,1734),(1924,'E',1738,1735),(1925,'E',1739,1736),(1926,'T',170,1736),(1927,'E',1740,1737),(1928,'E',1741,1738),(1929,'E',1742,1739),(1930,'E',1743,1740),(1931,'E',1744,1741),(1932,'E',1745,1742),(1933,'E',1746,1743),(1934,'E',1747,1744),(1935,'E',1748,1745),(1936,'E',1749,1746),(1937,'E',1750,1747),(1938,'E',1751,1748),(1939,'E',1752,1749),(1940,'E',1753,1750),(1941,'E',1754,1751),(1942,'E',1755,1752),(1943,'E',1756,1753),(1944,'E',1757,1754),(1945,'E',1758,1755),(1946,'E',1759,1756),(1947,'E',1760,1757),(1948,'E',1761,1758),(1949,'E',1762,1759),(1950,'E',1763,1760),(1951,'E',1764,1761),(1952,'E',1765,1762),(1953,'E',1766,1763),(1954,'E',1767,1764),(1955,'E',1768,1765),(1956,'E',1769,1766),(1957,'E',1770,1767),(1958,'E',1771,1768),(1959,'E',1772,1769),(1960,'E',1773,1770),(1961,'E',1774,1771),(1962,'E',1775,1772),(1963,'E',1776,1773),(1964,'E',1777,1774),(1965,'E',1778,1775),(1966,'E',1779,1776),(1967,'E',1780,1777),(1968,'E',1781,1778),(1969,'E',1782,1779),(1970,'E',1783,1780),(1971,'E',1784,1781),(1972,'E',1785,1782),(1973,'E',1786,1783),(1974,'E',1787,1784),(1975,'E',1788,1785),(1976,'E',1789,1786),(1977,'E',1790,1787),(1978,'E',1791,1788),(1979,'E',1792,1789),(1980,'E',1793,1790),(1981,'E',1794,1791),(1982,'E',1795,1792),(1983,'E',1796,1793),(1984,'E',1797,1794),(1985,'E',1798,1795),(1986,'E',1799,1796),(1987,'E',1800,1797),(1988,'E',1801,1798),(1989,'E',1802,1799),(1990,'T',171,1799),(1991,'T',172,1799),(1992,'E',1803,1800),(1993,'E',1804,1801),(1994,'E',1805,1802),(1995,'E',1806,1803),(1996,'E',1807,1804),(1997,'E',1808,1805),(1998,'E',1809,1806),(1999,'E',1810,1807),(2000,'E',1811,1808),(2001,'E',1812,1809),(2002,'E',1813,1810),(2003,'E',1814,1811),(2004,'E',1815,1812),(2005,'E',1816,1813),(2006,'E',1817,1814),(2007,'E',1818,1815),(2008,'T',173,1815),(2009,'E',1819,1816),(2010,'E',1820,1817),(2011,'E',1821,1818),(2012,'E',1822,1819),(2013,'E',1823,1820),(2014,'E',1824,1821),(2015,'E',1825,1822),(2016,'E',1826,1823),(2017,'E',1827,1824),(2018,'E',1828,1825),(2019,'E',1829,1826),(2020,'E',1830,1827),(2021,'E',1831,1828),(2022,'E',1832,1829),(2023,'E',1833,1830),(2024,'E',1834,1831),(2025,'E',1835,1832),(2026,'E',1836,1833),(2027,'E',1837,1834),(2028,'E',1838,1835),(2029,'E',1839,1836),(2030,'E',1840,1837),(2031,'E',1841,1838),(2032,'E',1842,1839),(2033,'E',1843,1840),(2034,'E',1844,1841),(2035,'E',1845,1842),(2036,'E',1846,1843),(2037,'E',1847,1844),(2038,'E',1848,1845),(2039,'E',1849,1846),(2040,'E',1850,1847),(2041,'E',1851,1848),(2042,'E',1852,1849),(2043,'E',1853,1850),(2044,'E',1854,1851),(2045,'E',1855,1852),(2046,'E',1856,1853),(2047,'E',1857,1854),(2048,'E',1858,1855),(2049,'E',1859,1856),(2050,'E',1860,1857),(2051,'E',1861,1858),(2052,'E',1862,1859),(2053,'E',1863,1860),(2054,'E',1864,1861),(2055,'T',174,1861),(2056,'E',1865,1862),(2057,'E',1866,1863),(2058,'T',175,1863),(2059,'T',176,1863),(2060,'E',1867,1864),(2061,'T',177,1864),(2062,'E',1868,1865),(2063,'E',1869,1866),(2064,'E',1870,1867),(2065,'E',1871,1868),(2066,'E',1872,1869),(2067,'E',1873,1870),(2068,'E',1874,1871),(2069,'E',1875,1872),(2070,'E',1876,1873),(2071,'E',1877,1874),(2072,'E',1878,1875),(2073,'E',1879,1876),(2074,'T',178,1876),(2075,'E',1880,1877),(2076,'T',179,1877),(2077,'T',180,1877),(2078,'E',1881,1878),(2079,'T',181,1878),(2080,'E',1882,1879),(2081,'T',182,1879),(2082,'T',183,1879),(2083,'E',1883,1880),(2084,'T',184,1880),(2085,'T',185,1880),(2086,'E',1884,1881),(2087,'T',186,1881),(2088,'T',187,1881),(2089,'E',1885,1882),(2090,'T',188,1882),(2091,'E',1886,1883),(2092,'T',189,1883),(2093,'E',1887,1884),(2094,'T',190,1884),(2095,'T',191,1884),(2096,'E',1888,1885),(2097,'E',1889,1886),(2098,'E',1890,1887),(2099,'E',1891,1888),(2100,'T',192,1888),(2101,'T',193,1888),(2102,'T',194,1888),(2103,'T',195,1888),(2104,'E',1892,1889),(2105,'E',1893,1890),(2106,'E',1894,1891),(2107,'T',196,1891),(2108,'T',197,1891),(2109,'E',1895,1892),(2110,'E',1896,1893),(2111,'T',198,1893),(2112,'T',199,1893),(2113,'E',1897,1894),(2114,'T',200,1894),(2115,'T',201,1894),(2116,'E',1898,1895),(2117,'T',202,1895),(2118,'T',203,1895),(2119,'E',1899,1896),(2120,'T',204,1896),(2121,'T',205,1896),(2122,'E',1900,1897),(2123,'E',1901,1898),(2124,'E',1902,1899),(2125,'E',1903,1900),(2126,'E',1904,1901),(2127,'E',1905,1902),(2128,'E',1906,1903),(2129,'E',1907,1904),(2130,'E',1908,1905),(2131,'E',1909,1906),(2132,'E',1910,1907),(2133,'E',1911,1908),(2134,'E',1912,1909),(2135,'E',1913,1910),(2136,'E',1914,1911),(2137,'E',1915,1912),(2138,'E',1916,1913),(2139,'E',1917,1914),(2140,'E',1918,1915),(2141,'E',1919,1916),(2142,'E',1920,1917),(2143,'E',1921,1918),(2144,'E',1922,1919),(2145,'E',1923,1920),(2146,'E',1924,1921),(2147,'E',1925,1922),(2148,'E',1926,1923),(2149,'E',1927,1924),(2150,'E',1928,1925),(2151,'E',1929,1926),(2152,'E',1930,1927),(2153,'E',1931,1928),(2154,'E',1932,1929),(2155,'E',1933,1930),(2156,'E',1934,1931),(2157,'E',1935,1932),(2158,'E',1936,1933),(2159,'E',1937,1934),(2160,'E',1938,1935),(2161,'E',1939,1936),(2162,'E',1940,1937),(2163,'E',1941,1938),(2164,'E',1942,1939),(2165,'E',1943,1940),(2166,'E',1944,1941),(2167,'E',1945,1942),(2168,'E',1946,1943),(2169,'E',1947,1944),(2170,'E',1948,1945),(2171,'E',1949,1946),(2172,'T',206,1946),(2173,'E',1950,1947),(2174,'E',1951,1948),(2175,'E',1952,1949),(2176,'E',1953,1950),(2177,'E',1954,1951),(2178,'E',1955,1952),(2179,'E',1956,1953),(2180,'E',1957,1954),(2181,'E',1958,1955),(2182,'E',1959,1956),(2183,'E',1960,1957),(2184,'E',1961,1958),(2185,'E',1962,1959),(2186,'E',1963,1960),(2187,'E',1964,1961),(2188,'E',1965,1962),(2189,'E',1966,1963),(2190,'E',1967,1964),(2191,'E',1968,1965),(2192,'E',1969,1966),(2193,'T',207,1966),(2194,'E',1970,1967),(2195,'E',1971,1968),(2196,'E',1972,1969),(2197,'E',1973,1970),(2198,'E',1974,1971),(2199,'E',1975,1972),(2200,'E',1976,1973),(2201,'E',1977,1974),(2202,'E',1978,1975),(2203,'E',1979,1976),(2204,'E',1980,1977),(2205,'E',1981,1978),(2206,'E',1982,1979),(2207,'E',1983,1980),(2208,'E',1984,1981),(2209,'T',208,1981),(2210,'T',209,1981),(2211,'E',1985,1982),(2212,'E',1986,1983),(2213,'E',1987,1984),(2214,'E',1988,1985),(2215,'E',1989,1986),(2216,'E',1990,1987),(2217,'E',1991,1988),(2218,'E',1992,1989),(2219,'E',1993,1990),(2220,'E',1994,1991),(2221,'E',1995,1992),(2222,'E',1996,1993),(2223,'E',1997,1994),(2224,'E',1998,1995),(2225,'E',1999,1996),(2226,'E',2000,1997),(2227,'E',2001,1998),(2228,'E',2002,1999),(2229,'E',2003,2000),(2230,'E',2004,2001),(2231,'E',2005,2002),(2232,'E',2006,2003),(2233,'E',2007,2004),(2234,'E',2008,2005),(2235,'E',2009,2006),(2236,'E',2010,2007),(2237,'E',2011,2008),(2238,'E',2012,2009),(2239,'E',2013,2010),(2240,'E',2014,2011),(2241,'E',2015,2012),(2242,'E',2016,2013),(2243,'E',2017,2014),(2244,'E',2018,2015),(2245,'E',2019,2016),(2246,'E',2020,2017),(2247,'E',2021,2018),(2248,'E',2022,2019),(2249,'E',2023,2020),(2250,'E',2024,2021),(2251,'E',2025,2022),(2252,'E',2026,2023),(2253,'E',2027,2024),(2254,'E',2028,2025),(2255,'E',2029,2026),(2256,'E',2030,2027),(2257,'E',2031,2028),(2258,'E',2032,2029),(2259,'E',2033,2030),(2260,'E',2034,2031),(2261,'E',2035,2032),(2262,'E',2036,2033),(2263,'E',2037,2034),(2264,'E',2038,2035),(2265,'E',2039,2036),(2266,'E',2040,2037),(2267,'E',2041,2038),(2268,'E',2042,2039),(2269,'E',2043,2040),(2270,'E',2044,2041),(2271,'E',2045,2042),(2272,'E',2046,2043),(2273,'E',2047,2044),(2274,'E',2048,2045),(2275,'E',2049,2046),(2276,'E',2050,2047),(2277,'E',2051,2048),(2278,'E',2052,2049),(2279,'E',2053,2050),(2280,'E',2054,2051),(2281,'E',2055,2052),(2282,'E',2056,2053),(2283,'E',2057,2054),(2284,'E',2058,2055),(2285,'E',2059,2056),(2286,'E',2060,2057),(2287,'E',2061,2058),(2288,'E',2062,2059),(2289,'E',2063,2060),(2290,'E',2064,2061),(2291,'E',2065,2062),(2292,'E',2066,2063),(2293,'E',2067,2064),(2294,'E',2068,2065),(2295,'E',2069,2066),(2296,'E',2070,2067),(2297,'E',2071,2068),(2298,'E',2072,2069),(2299,'E',2073,2070),(2300,'E',2074,2071),(2301,'E',2075,2072),(2302,'E',2076,2073),(2303,'E',2077,2074),(2304,'E',2078,2075),(2305,'E',2079,2076),(2306,'E',2080,2077),(2307,'E',2081,2078),(2308,'E',2082,2079),(2309,'E',2083,2080),(2310,'E',2084,2081),(2311,'E',2085,2082),(2312,'E',2086,2083),(2313,'E',2087,2084),(2314,'E',2088,2085),(2315,'E',2089,2086),(2316,'E',2090,2087),(2317,'E',2091,2088),(2318,'E',2092,2089),(2319,'E',2093,2090),(2320,'E',2094,2091),(2321,'E',2095,2092),(2322,'T',210,2092),(2323,'E',2096,2093),(2324,'E',2097,2094),(2325,'E',2098,2095),(2326,'E',2099,2096),(2327,'E',2100,2097),(2328,'E',2101,2098),(2329,'E',2102,2099),(2330,'E',2103,2100),(2331,'E',2104,2101),(2332,'E',2105,2102),(2333,'E',2106,2103),(2334,'E',2107,2104),(2335,'E',2108,2105),(2336,'E',2109,2106),(2337,'E',2110,2107),(2338,'E',2111,2108),(2339,'E',2112,2109),(2340,'E',2113,2110),(2341,'E',2114,2111),(2342,'E',2115,2112),(2343,'E',2116,2113),(2344,'E',2117,2114),(2345,'E',2118,2115),(2346,'E',2119,2116),(2347,'E',2120,2117),(2348,'E',2121,2118),(2349,'E',2122,2119),(2350,'E',2123,2120),(2351,'E',2124,2121),(2352,'E',2125,2122),(2353,'E',2126,2123),(2354,'E',2127,2124),(2355,'E',2128,2125),(2356,'E',2129,2126),(2357,'E',2130,2127),(2358,'T',211,2127),(2359,'E',2131,2128),(2360,'E',2132,2129),(2361,'E',2133,2130),(2362,'E',2134,2131),(2363,'E',2135,2132),(2364,'E',2136,2133),(2365,'E',2137,2134),(2366,'E',2138,2135),(2367,'E',2139,2136),(2368,'T',212,2136),(2369,'E',2140,2137),(2370,'E',2141,2138),(2371,'E',2142,2139),(2372,'E',2143,2140),(2373,'E',2144,2141),(2374,'E',2145,2142),(2375,'E',2146,2143),(2376,'E',2147,2144),(2377,'E',2148,2145),(2378,'E',2149,2146),(2379,'E',2150,2147),(2380,'E',2151,2148),(2381,'E',2152,2149),(2382,'E',2153,2150),(2383,'E',2154,2151),(2384,'E',2155,2152),(2385,'E',2156,2153),(2386,'E',2157,2154),(2387,'E',2158,2155),(2388,'E',2159,2156),(2389,'E',2160,2157),(2390,'E',2161,2158),(2391,'E',2162,2159),(2392,'E',2163,2160),(2393,'T',213,2160),(2394,'E',2164,2161),(2395,'E',2165,2162),(2396,'E',2166,2163),(2397,'E',2167,2164),(2398,'E',2168,2165),(2399,'E',2169,2166),(2400,'E',2170,2167),(2401,'E',2171,2168),(2402,'E',2172,2169),(2403,'E',2173,2170),(2404,'T',214,2170),(2405,'E',2174,2171),(2406,'E',2175,2172),(2407,'E',2176,2173),(2408,'E',2177,2174),(2409,'E',2178,2175),(2410,'T',215,2175),(2411,'T',216,2175),(2412,'E',2179,2176),(2413,'E',2180,2177),(2414,'T',217,2177),(2415,'E',2181,2178),(2416,'E',2182,2179),(2417,'E',2183,2180),(2418,'E',2184,2181),(2419,'E',2185,2182),(2420,'T',218,2182),(2421,'T',219,2182),(2422,'E',2186,2183),(2423,'T',220,2183),(2424,'T',221,2183),(2425,'E',2187,2184),(2426,'E',2188,2185),(2427,'E',2189,2186),(2428,'E',2190,2187),(2429,'T',222,2187),(2430,'T',223,2187),(2431,'E',2191,2188),(2432,'T',224,2188),(2433,'E',2192,2189),(2434,'E',2193,2190),(2435,'E',2194,2191),(2436,'E',2195,2192),(2437,'T',225,2192),(2438,'E',2196,2193),(2439,'E',2197,2194),(2440,'E',2198,2195),(2441,'T',226,2195),(2442,'E',2199,2196),(2443,'T',227,2196),(2444,'E',2200,2197),(2447,'E',2202,2199),(2448,'E',2203,2200),(2449,'E',2204,2201),(2450,'E',2205,2202),(2451,'E',2206,2203),(2452,'E',2207,2204),(2453,'E',2208,2205),(2454,'E',2209,2206),(2455,'E',2210,2207),(2456,'E',2211,2208),(2457,'E',2212,2209),(2458,'E',2213,2210),(2459,'E',2214,2211),(2460,'E',2215,2212),(2461,'E',2216,2213),(2462,'E',2217,2214),(2463,'E',2218,2215),(2464,'E',2219,2216),(2465,'E',2220,2217),(2466,'E',2221,2218),(2467,'E',2222,2219),(2468,'E',2223,2220),(2469,'E',2224,2221),(2470,'E',2225,2222),(2471,'E',2226,2223),(2472,'E',2227,2224),(2473,'E',2228,2225),(2474,'E',2229,2226),(2475,'E',2230,2227),(2476,'E',2231,2228),(2477,'E',2232,2229),(2478,'E',2233,2230),(2479,'E',2234,2231),(2480,'E',2235,2232),(2481,'E',2236,2233),(2482,'E',2237,2234),(2483,'E',2238,2235),(2484,'E',2239,2236),(2485,'E',2240,2237),(2486,'E',2241,2238),(2487,'E',2242,2239),(2488,'E',2243,2240),(2489,'E',2244,2241),(2490,'E',2245,2242),(2491,'E',2246,2243),(2492,'E',2247,2244),(2493,'E',2248,2245),(2494,'E',2249,2246),(2495,'E',2250,2247),(2496,'E',2251,2248),(2497,'E',2252,2249),(2498,'E',2253,2250),(2499,'E',2254,2251),(2500,'E',2255,2252),(2501,'E',2256,2253),(2502,'E',2257,2254),(2503,'E',2258,2255),(2504,'E',2259,2256),(2505,'E',2260,2257),(2506,'E',2261,2258),(2507,'E',2262,2259),(2508,'E',2263,2260),(2509,'E',2264,2261),(2510,'E',2265,2262),(2511,'E',2266,2263),(2512,'E',2267,2264),(2513,'E',2268,2265),(2514,'E',2269,2266),(2515,'E',2270,2267),(2516,'E',2271,2268),(2517,'E',2272,2269),(2518,'E',2273,2270),(2519,'E',2274,2271),(2520,'E',2275,2272),(2521,'E',2276,2273),(2522,'E',2277,2274),(2523,'E',2278,2275),(2524,'E',2279,2276),(2525,'E',2280,2277),(2526,'E',2281,2278),(2527,'E',2282,2279),(2528,'E',2283,2280),(2529,'T',229,2280),(2530,'T',230,2280),(2531,'E',2284,2281),(2532,'T',231,2281),(2533,'E',2285,2282),(2534,'T',232,2282),(2535,'E',2286,2283),(2536,'T',233,2283),(2537,'T',234,2283),(2538,'E',2287,2284),(2539,'T',235,2284),(2540,'E',2288,2285),(2541,'E',2289,2286),(2542,'T',236,2286),(2543,'E',2290,2287),(2544,'T',237,2287),(2545,'E',2291,2288),(2546,'T',238,2288),(2547,'E',2292,2289),(2548,'E',2293,2290),(2549,'E',2294,2291),(2550,'T',239,2291),(2552,'E',2295,2292),(2553,'T',241,2292),(2554,'T',242,2292),(2555,'E',2296,2293),(2556,'E',2297,2294),(2557,'E',2298,2295),(2558,'E',2299,2296),(2559,'E',2300,2297),(2560,'E',2301,2298),(2561,'E',2302,2299),(2563,'E',2303,2300),(2564,'E',2304,2301),(2565,'T',244,2301),(2566,'E',2305,2302),(2567,'E',2306,2303),(2568,'T',245,2303),(2569,'T',246,2303),(2570,'E',2307,2304),(2571,'E',2308,2305),(2572,'T',247,2305),(2573,'E',2309,2306),(2574,'E',2310,2307),(2575,'E',2311,2308),(2576,'E',2312,2309),(2577,'E',2313,2310),(2578,'E',2314,2311),(2579,'E',2315,2312),(2580,'E',2316,2313),(2581,'E',2317,2314),(2582,'E',2318,2315),(2583,'E',2319,2316),(2584,'E',2320,2317),(2585,'E',2321,2318),(2586,'E',2322,2319),(2587,'E',2323,2320),(2588,'E',2324,2321),(2589,'E',2325,2322),(2590,'E',2326,2323),(2591,'E',2327,2324),(2592,'E',2328,2325),(2593,'E',2329,2326),(2594,'E',2330,2327),(2595,'E',2331,2328),(2596,'E',2332,2329),(2597,'E',2333,2330),(2598,'E',2334,2331),(2599,'E',2335,2332),(2600,'E',2336,2333),(2601,'E',2337,2334),(2602,'E',2338,2335),(2603,'E',2339,2336),(2604,'E',2340,2337),(2605,'E',2341,2338),(2606,'E',2342,2339),(2607,'E',2343,2340),(2608,'E',2344,2341),(2609,'E',2345,2342),(2610,'E',2346,2343),(2611,'E',2347,2344),(2612,'E',2348,2345),(2613,'E',2349,2346),(2614,'E',2350,2347),(2615,'E',2351,2348),(2616,'E',2352,2349),(2617,'E',2353,2350),(2618,'E',2354,2351),(2619,'E',2355,2352),(2620,'E',2356,2353),(2621,'E',2357,2354),(2622,'E',2358,2355),(2623,'E',2359,2356),(2624,'E',2360,2357),(2625,'T',248,2357),(2626,'T',249,2357),(2627,'E',2361,2358),(2628,'E',2362,2359),(2629,'E',2363,2360),(2630,'E',2364,2361),(2631,'E',2365,2362),(2632,'E',2366,2363),(2633,'E',2367,2364),(2634,'E',2368,2365),(2635,'E',2369,2366),(2636,'E',2370,2367),(2637,'E',2371,2368),(2638,'E',2372,2369),(2639,'E',2373,2370),(2640,'E',2374,2371),(2641,'E',2375,2372),(2642,'E',2376,2373),(2643,'E',2377,2374),(2644,'T',250,2374),(2645,'E',2378,2375),(2646,'E',2379,2376),(2647,'E',2380,2377),(2648,'E',2381,2378),(2649,'E',2382,2379),(2650,'E',2383,2380),(2651,'E',2384,2381),(2652,'E',2385,2382),(2653,'E',2386,2383),(2654,'E',2387,2384),(2655,'E',2388,2385),(2656,'E',2389,2386),(2657,'E',2390,2387),(2658,'E',2391,2388),(2659,'E',2392,2389),(2660,'E',2393,2390),(2661,'E',2394,2391),(2662,'E',2395,2392),(2663,'E',2396,2393),(2664,'E',2397,2394),(2665,'E',2398,2395),(2666,'E',2399,2396),(2667,'E',2400,2397),(2668,'E',2401,2398),(2669,'E',2402,2399),(2670,'E',2403,2400),(2671,'E',2404,2401),(2672,'T',251,2401),(2673,'E',2405,2402),(2674,'E',2406,2403),(2675,'E',2407,2404),(2676,'E',2408,2405),(2677,'T',252,2405),(2678,'E',2409,2406),(2679,'E',2410,2407),(2680,'E',2411,2408),(2681,'E',2412,2409),(2682,'E',2413,2410),(2683,'E',2414,2411),(2684,'E',2415,2412),(2685,'E',2416,2413),(2686,'E',2417,2414),(2687,'E',2418,2415),(2688,'E',2419,2416),(2689,'E',2420,2417),(2690,'E',2421,2418),(2691,'E',2422,2419),(2692,'E',2423,2420),(2693,'E',2424,2421),(2694,'E',2425,2422),(2695,'E',2426,2423),(2696,'E',2427,2424),(2697,'E',2428,2425),(2698,'E',2429,2426),(2699,'E',2430,2427),(2700,'E',2431,2428),(2701,'E',2432,2429),(2702,'E',2433,2430),(2703,'E',2434,2431),(2704,'E',2435,2432),(2705,'E',2436,2433),(2706,'E',2437,2434),(2707,'E',2438,2435),(2708,'E',2439,2436),(2709,'E',2440,2437),(2710,'E',2441,2438),(2711,'E',2442,2439),(2712,'E',2443,2440),(2713,'E',2444,2441),(2714,'E',2445,2442),(2715,'E',2446,2443),(2716,'E',2447,2444),(2717,'E',2448,2445),(2718,'E',2449,2446),(2719,'E',2450,2447),(2720,'E',2451,2448),(2721,'E',2452,2449),(2722,'E',2453,2450),(2723,'E',2454,2451),(2724,'E',2455,2452),(2725,'E',2456,2453),(2726,'E',2457,2454),(2727,'E',2458,2455),(2728,'E',2459,2456),(2729,'E',2460,2457),(2730,'E',2461,2458),(2731,'E',2462,2459),(2732,'E',2463,2460),(2733,'E',2464,2461),(2734,'E',2465,2462),(2735,'E',2466,2463),(2736,'E',2467,2464),(2737,'E',2468,2465),(2738,'E',2469,2466),(2739,'E',2470,2467),(2740,'E',2471,2468),(2741,'E',2472,2469),(2742,'E',2473,2470),(2743,'E',2474,2471),(2744,'E',2475,2472),(2745,'E',2476,2473),(2746,'E',2477,2474),(2747,'E',2478,2475),(2748,'E',2479,2476),(2749,'E',2480,2477),(2750,'E',2481,2478),(2751,'E',2482,2479),(2752,'E',2483,2480),(2753,'E',2484,2481),(2754,'E',2485,2482),(2755,'E',2486,2483),(2756,'E',2487,2484),(2757,'E',2488,2485),(2758,'E',2489,2486),(2759,'E',2490,2487),(2760,'E',2491,2488),(2761,'E',2492,2489),(2762,'E',2493,2490),(2763,'E',2494,2491),(2764,'E',2495,2492),(2765,'E',2496,2493),(2766,'E',2497,2494),(2767,'E',2498,2495),(2768,'E',2499,2496),(2769,'E',2500,2497),(2770,'E',2501,2498),(2771,'E',2502,2499),(2772,'E',2503,2500),(2773,'E',2504,2501),(2774,'E',2505,2502),(2775,'E',2506,2503),(2776,'E',2507,2504),(2777,'E',2508,2505),(2778,'E',2509,2506),(2779,'E',2510,2507),(2780,'E',2511,2508),(2781,'E',2512,2509),(2782,'E',2513,2510),(2783,'E',2514,2511),(2784,'E',2515,2512),(2785,'E',2516,2513),(2786,'E',2517,2514),(2787,'E',2518,2515),(2788,'E',2519,2516),(2789,'E',2520,2517),(2790,'E',2521,2518),(2791,'E',2522,2519),(2792,'E',2523,2520),(2793,'E',2524,2521),(2794,'E',2525,2522),(2795,'E',2526,2523),(2796,'E',2527,2524),(2797,'E',2528,2525),(2798,'E',2529,2526),(2799,'E',2530,2527),(2800,'E',2531,2528),(2801,'E',2532,2529),(2802,'E',2533,2530),(2803,'E',2534,2531),(2804,'E',2535,2532),(2805,'E',2536,2533),(2806,'E',2537,2534),(2807,'T',253,2534),(2808,'E',2538,2535),(2809,'T',254,2535),(2810,'E',2539,2536),(2811,'E',2540,2537),(2812,'E',2541,2538),(2813,'E',2542,2539),(2814,'E',2543,2540),(2815,'E',2544,2541),(2816,'E',2545,2542),(2817,'E',2546,2543),(2818,'E',2547,2544),(2819,'E',2548,2545),(2820,'E',2549,2546),(2821,'E',2550,2547),(2822,'E',2551,2548),(2823,'E',2552,2549),(2824,'E',2553,2550),(2825,'E',2554,2551),(2826,'E',2555,2552),(2827,'E',2556,2553),(2828,'E',2557,2554),(2829,'E',2558,2555),(2830,'E',2559,2556),(2831,'E',2560,2557),(2832,'E',2561,2558),(2833,'E',2562,2559),(2834,'E',2563,2560),(2835,'E',2564,2561),(2836,'T',255,2514),(2837,'E',2565,2562),(2838,'E',2566,2563),(2839,'E',2567,2564),(2840,'E',2568,2565),(2841,'E',2569,2566),(2842,'E',2570,2567),(2843,'E',2571,2568),(2844,'E',2572,2569),(2845,'E',2573,2570),(2846,'E',2574,2571),(2847,'E',2575,2572),(2848,'E',2576,2573),(2849,'E',2577,2574),(2850,'E',2578,2575),(2851,'E',2579,2576),(2852,'E',2580,2577),(2853,'E',2581,2578),(2854,'E',2582,2579),(2855,'E',2583,2580),(2856,'E',2584,2581),(2857,'E',2585,2582),(2858,'E',2586,2583),(2859,'E',2587,2584),(2860,'E',2588,2585),(2861,'E',2589,2586),(2862,'E',2590,2587),(2863,'E',2591,2588),(2864,'E',2592,2589),(2865,'E',2593,2590),(2866,'E',2594,2591),(2867,'E',2595,2592),(2868,'E',2596,2593),(2869,'E',2597,2594),(2870,'E',2598,2595),(2871,'E',2599,2596),(2872,'E',2600,2597),(2873,'E',2601,2598),(2874,'E',2602,2599),(2875,'E',2603,2600),(2876,'E',2604,2601),(2877,'E',2605,2602),(2878,'E',2606,2603),(2879,'E',2607,2604),(2880,'E',2608,2605),(2881,'E',2609,2606),(2882,'E',2610,2607),(2883,'E',2611,2608),(2884,'E',2612,2609),(2885,'E',2613,2610),(2886,'E',2614,2611),(2887,'E',2615,2612),(2888,'E',2616,2613),(2889,'E',2617,2614),(2890,'E',2618,2615),(2891,'T',256,2615),(2892,'E',2619,2616),(2893,'E',2620,2617),(2894,'E',2621,2618),(2895,'E',2622,2619),(2896,'E',2623,2620),(2897,'E',2624,2621),(2898,'E',2625,2622),(2899,'E',2626,2623),(2900,'E',2627,2624),(2901,'E',2628,2625),(2902,'E',2629,2626),(2903,'E',2630,2627),(2904,'E',2631,2628),(2905,'E',2632,2629),(2906,'E',2633,2630),(2907,'E',2634,2631),(2908,'E',2635,2632),(2909,'E',2636,2633),(2910,'E',2637,2634),(2911,'E',2638,2635),(2912,'E',2639,2636),(2913,'E',2640,2637),(2914,'E',2641,2638),(2915,'E',2642,2639),(2916,'E',2643,2640),(2917,'E',2644,2641),(2918,'E',2645,2642),(2919,'T',257,2642),(2920,'E',2646,2643),(2921,'T',258,2643),(2922,'T',259,2643),(2923,'E',2647,2644),(2924,'E',2648,2645),(2925,'E',2649,2646),(2926,'E',2650,2647),(2927,'E',2651,2648),(2928,'E',2652,2649),(2929,'E',2653,2650),(2931,'E',2655,2652),(2932,'E',2656,2653),(2933,'E',2657,2654),(2934,'E',2658,2655),(2935,'E',2659,2656),(2936,'E',2660,2657),(2937,'E',2661,2658),(2938,'E',2662,2659),(2939,'E',2663,2660),(2940,'E',2664,2661),(2941,'E',2665,2662),(2942,'E',2666,2663),(2943,'E',2667,2664),(2944,'E',2668,2665),(2945,'E',2669,2666),(2946,'E',2670,2667),(2947,'E',2671,2668),(2948,'E',2672,2669),(2949,'E',2673,2670),(2950,'E',2674,2671),(2951,'E',2675,2672),(2952,'E',2676,2673),(2953,'E',2677,2674),(2954,'E',2678,2675),(2955,'E',2679,2676),(2956,'E',2680,2677),(2957,'E',2681,2678),(2958,'E',2682,2679),(2959,'E',2683,2680),(2960,'E',2684,2681),(2961,'E',2685,2682),(2962,'E',2686,2683),(2963,'E',2687,2684),(2964,'E',2688,2685),(2965,'T',260,2685),(2966,'E',2689,2686),(2967,'T',261,2686),(2968,'E',2690,2687),(2969,'E',2691,2688),(2970,'E',2692,2689),(2971,'T',262,2689),(2972,'E',2693,2690),(2973,'E',2694,2691),(2974,'E',2695,2692),(2975,'E',2696,2693),(2976,'E',2697,2694),(2977,'E',2698,2695),(2978,'E',2699,2696),(2979,'E',2700,2697),(2980,'E',2701,2698),(2981,'E',2702,2699),(2982,'E',2703,2700),(2983,'E',2704,2701),(2984,'E',2705,2702),(2985,'T',263,2702),(2986,'T',264,2702),(2987,'E',2706,2703),(2988,'E',2707,2704),(2989,'E',2708,2705),(2990,'E',2709,2706),(2991,'E',2710,2707),(2992,'E',2711,2708),(2993,'E',2712,2709),(2994,'E',2713,2710),(2995,'E',2714,2711),(2996,'E',2715,2712),(2997,'E',2716,2713),(2998,'E',2717,2714),(2999,'E',2718,2715),(3000,'E',2719,2716),(3001,'E',2720,2717),(3002,'E',2721,2718),(3003,'E',2722,2719),(3004,'T',265,2719),(3005,'E',2723,2720),(3006,'E',2724,2721),(3007,'E',2725,2722),(3008,'E',2726,2723),(3009,'T',266,2723),(3010,'E',2727,2724),(3011,'E',2728,2725),(3012,'E',2729,2726),(3013,'E',2730,2727),(3014,'E',2731,2728),(3015,'E',2732,2729),(3016,'E',2733,2730),(3017,'E',2734,2731),(3018,'E',2735,2732),(3019,'E',2736,2733),(3020,'E',2737,2734),(3021,'E',2738,2735),(3022,'E',2739,2736),(3023,'T',267,2736),(3024,'E',2740,2737),(3025,'E',2741,2738),(3026,'E',2742,2739),(3027,'E',2743,2740),(3028,'E',2744,2741),(3029,'E',2745,2742),(3030,'E',2746,2743),(3031,'E',2747,2744),(3032,'E',2748,2745),(3033,'E',2749,2746),(3034,'T',268,2746),(3035,'E',2750,2747),(3036,'E',2751,2748),(3037,'E',2752,2749),(3038,'E',2753,2750),(3039,'E',2754,2751),(3040,'E',2755,2752),(3041,'T',269,2752),(3042,'T',270,2752),(3043,'E',2756,2753),(3044,'T',271,2753),(3045,'E',2757,2754),(3046,'E',2758,2755),(3047,'E',2759,2756),(3048,'E',2760,2757),(3049,'E',2761,2758),(3050,'E',2762,2759),(3051,'E',2763,2760),(3052,'E',2764,2761),(3053,'E',2765,2762),(3054,'E',2766,2763),(3055,'E',2767,2764),(3056,'E',2768,2765),(3059,'E',2769,2766),(3060,'E',2770,2767),(3061,'E',2771,2768),(3062,'E',2772,2769),(3063,'E',2773,2770),(3064,'T',274,2770),(3065,'E',2774,2771),(3066,'E',2775,2772),(3067,'E',2776,2773),(3068,'E',2777,2774),(3069,'E',2778,2775),(3070,'E',2779,2776),(3071,'E',2780,2777),(3072,'E',2781,2778),(3073,'E',2782,2779),(3074,'E',2783,2780),(3075,'E',2784,2781),(3076,'E',2785,2782),(3077,'E',2786,2783),(3078,'E',2787,2784),(3079,'E',2788,2785),(3080,'E',2789,2786),(3081,'E',2790,2787),(3082,'E',2791,2788),(3083,'E',2792,2789),(3084,'E',2793,2790),(3085,'E',2794,2791),(3086,'E',2795,2792),(3087,'E',2796,2793),(3088,'E',2797,2794),(3089,'E',2798,2795),(3090,'E',2799,2796),(3091,'E',2800,2797),(3092,'E',2801,2798),(3093,'E',2802,2799),(3094,'E',2803,2800),(3095,'E',2804,2801),(3096,'E',2805,2802),(3097,'E',2806,2803),(3098,'E',2807,2804),(3099,'E',2808,2805),(3100,'E',2809,2806),(3101,'E',2810,2807),(3102,'E',2811,2808),(3103,'E',2812,2809),(3104,'E',2813,2810),(3105,'E',2814,2811),(3106,'E',2815,2812),(3107,'E',2816,2813),(3108,'E',2817,2814),(3109,'E',2818,2815),(3110,'E',2819,2816),(3111,'T',275,2816),(3112,'T',276,2816),(3113,'E',2820,2817),(3114,'E',2821,2818),(3115,'E',2822,2819),(3116,'E',2823,2820),(3117,'E',2824,2821),(3118,'E',2825,2822),(3119,'E',2826,2823),(3120,'E',2827,2824),(3121,'T',277,2824),(3122,'T',278,2824),(3123,'E',2828,2825),(3124,'E',2829,2826),(3125,'E',2830,2827),(3126,'E',2831,2828),(3127,'E',2832,2829),(3128,'E',2833,2830),(3129,'E',2834,2831),(3130,'E',2835,2832),(3131,'E',2836,2833),(3132,'E',2837,2834),(3133,'E',2838,2835),(3134,'E',2839,2836),(3135,'E',2840,2837),(3136,'E',2841,2838),(3137,'E',2842,2839),(3138,'E',2843,2840),(3139,'E',2844,2841),(3140,'T',279,2841),(3141,'T',280,2841),(3142,'E',2845,2842),(3143,'T',281,2842),(3144,'T',282,2842),(3145,'E',2846,2843),(3146,'E',2847,2844),(3147,'E',2848,2845),(3148,'E',2849,2846),(3149,'T',283,2846),(3150,'E',2850,2847),(3151,'E',2851,2848),(3152,'E',2852,2849),(3153,'E',2853,2850),(3154,'E',2854,2851),(3155,'E',2855,2852),(3156,'E',2856,2853),(3157,'E',2857,2854),(3158,'E',2858,2855),(3159,'E',2859,2856),(3160,'E',2860,2857),(3161,'E',2861,2858),(3162,'E',2862,2859),(3163,'E',2863,2860),(3164,'E',2864,2861),(3165,'E',2865,2862),(3166,'E',2866,2863),(3167,'E',2867,2864),(3168,'E',2868,2865),(3169,'E',2869,2866),(3170,'E',2870,2867),(3171,'E',2871,2868),(3172,'E',2872,2869),(3173,'E',2873,2870),(3174,'E',2874,2871),(3175,'E',2875,2872),(3176,'E',2876,2873),(3177,'E',2877,2874),(3178,'E',2878,2875),(3179,'E',2879,2876),(3180,'E',2880,2877),(3181,'E',2881,2878),(3182,'E',2882,2879),(3183,'E',2883,2880),(3184,'E',2884,2881),(3185,'E',2885,2882),(3186,'E',2886,2883),(3187,'E',2887,2884),(3188,'E',2888,2885),(3189,'E',2889,2886),(3190,'T',284,2886),(3191,'T',285,2886),(3192,'E',2890,2887),(3193,'T',286,2887),(3194,'T',287,2887),(3195,'E',2891,2888),(3196,'T',288,2888),(3197,'E',2892,2889),(3198,'E',2893,2890),(3199,'E',2894,2891),(3200,'E',2895,2892),(3201,'E',2896,2893),(3202,'E',2897,2894),(3203,'E',2898,2895),(3204,'E',2899,2896),(3205,'E',2900,2897),(3206,'E',2901,2898),(3207,'E',2902,2899),(3208,'E',2903,2900),(3209,'E',2904,2901),(3210,'E',2905,2902),(3211,'T',289,2902),(3212,'T',290,2902),(3213,'E',2906,2903),(3214,'E',2907,2904),(3215,'E',2908,2905),(3216,'E',2909,2906),(3217,'E',2910,2907),(3218,'E',2911,2908),(3219,'E',2912,2909),(3220,'E',2913,2910),(3221,'E',2914,2911),(3222,'E',2915,2912),(3223,'E',2916,2913),(3224,'E',2917,2914),(3225,'E',2918,2915),(3226,'E',2919,2916),(3227,'E',2920,2917),(3228,'E',2921,2918),(3229,'E',2922,2919),(3230,'E',2923,2920),(3231,'E',2924,2921),(3232,'E',2925,2922),(3233,'E',2926,2923),(3234,'E',2927,2924),(3235,'E',2928,2925),(3236,'E',2929,2926),(3237,'E',2930,2927),(3238,'E',2931,2928),(3239,'E',2932,2929),(3240,'E',2933,2930),(3241,'E',2934,2931),(3242,'E',2935,2932),(3243,'E',2936,2933),(3244,'E',2937,2934),(3245,'E',2938,2935),(3246,'E',2939,2936),(3247,'E',2940,2937),(3248,'E',2941,2938),(3249,'E',2942,2939),(3250,'E',2943,2940),(3251,'E',2944,2941),(3252,'E',2945,2942),(3253,'E',2946,2943),(3254,'E',2947,2944),(3255,'E',2948,2945),(3256,'E',2949,2946),(3257,'E',2950,2947),(3258,'E',2951,2948),(3259,'E',2952,2949),(3260,'E',2953,2950),(3261,'E',2954,2951),(3262,'E',2955,2952),(3263,'E',2956,2953),(3264,'E',2957,2954),(3265,'E',2958,2955),(3266,'E',2959,2956),(3267,'E',2960,2957),(3268,'E',2961,2958),(3269,'E',2962,2959),(3270,'E',2963,2960),(3271,'E',2964,2961),(3272,'E',2965,2962),(3273,'E',2966,2963),(3274,'E',2967,2964),(3275,'T',291,2964),(3276,'T',292,2964),(3277,'E',2968,2965),(3278,'T',293,2965),(3279,'T',294,2965),(3280,'E',2969,2966),(3281,'E',2970,2967),(3282,'E',2971,2968),(3283,'E',2972,2969),(3284,'E',2973,2970),(3285,'E',2974,2971),(3286,'E',2975,2972),(3287,'E',2976,2973),(3288,'E',2977,2974),(3289,'E',2978,2975),(3290,'E',2979,2976),(3291,'E',2980,2977),(3292,'E',2981,2978),(3293,'E',2982,2979),(3294,'E',2983,2980),(3295,'E',2984,2981),(3296,'E',2985,2982),(3297,'E',2986,2983),(3298,'E',2987,2984),(3299,'E',2988,2985),(3300,'E',2989,2986),(3301,'E',2990,2987),(3302,'E',2991,2988),(3303,'E',2992,2989),(3304,'E',2993,2990),(3305,'T',295,2990),(3306,'E',2994,2991),(3307,'E',2995,2992),(3308,'E',2996,2993),(3309,'E',2997,2994),(3310,'E',2998,2995),(3311,'E',2999,2996),(3312,'E',3000,2997),(3313,'E',3001,2998),(3314,'E',3002,2999),(3315,'T',296,2999),(3316,'T',297,2999),(3317,'E',3003,3000),(3318,'T',298,3000),(3319,'E',3004,3001),(3320,'T',299,3001),(3321,'T',300,3001),(3322,'E',3005,3002),(3323,'E',3006,3003),(3324,'E',3007,3004),(3325,'E',3008,3005),(3326,'E',3009,3006),(3327,'T',301,3006),(3328,'E',3010,3007),(3329,'T',302,3007),(3330,'T',303,3007),(3331,'E',3011,3008),(3332,'T',304,3008),(3333,'T',305,3008),(3334,'E',3012,3009),(3335,'T',306,3009),(3336,'T',307,3009),(3337,'T',308,3009),(3338,'T',309,3009),(3339,'E',3013,3010),(3340,'T',310,3010),(3341,'T',311,3010),(3342,'T',312,2902),(3343,'T',313,2902),(3344,'E',3014,3011),(3345,'T',314,3011),(3346,'E',3015,3012),(3347,'T',315,3012),(3348,'T',316,3012),(3349,'E',3016,3013),(3350,'T',317,3013),(3351,'E',3017,3014),(3352,'T',318,3014),(3353,'T',319,3014),(3354,'E',3018,3015),(3355,'T',320,3015),(3356,'E',3019,3016),(3357,'T',321,3016),(3358,'T',322,3016),(3359,'E',3020,3017),(3360,'T',323,3017),(3361,'E',3021,3018),(3362,'T',324,3018),(3363,'E',3022,3019),(3364,'T',325,3019),(3365,'E',3023,3020),(3366,'T',326,3020),(3367,'T',327,3020),(3368,'E',3024,3021),(3369,'T',328,3021),(3370,'T',329,3021),(3371,'E',3025,3022),(3372,'T',330,3022),(3373,'E',3026,3023),(3374,'T',331,3023),(3375,'T',332,3023),(3376,'E',3027,3024),(3377,'T',333,3024),(3378,'E',3028,3025),(3379,'E',3029,3026),(3380,'T',334,3026),(3381,'T',335,3026),(3382,'E',3030,3027),(3383,'T',336,3027),(3384,'E',3031,3028),(3385,'T',337,3028),(3386,'E',3032,3029),(3387,'T',338,3029),(3388,'T',339,3029),(3389,'E',3033,3030),(3390,'T',340,3030),(3391,'E',3034,3031),(3392,'T',341,3031),(3393,'E',3035,3032),(3394,'T',342,3032),(3395,'T',343,3032),(3396,'E',3036,3033),(3397,'T',344,3033),(3398,'E',3037,3034),(3399,'T',345,3034),(3400,'E',3038,3035),(3401,'T',346,3035),(3402,'T',347,3035),(3403,'E',3039,3036),(3404,'T',348,3036),(3405,'T',349,3036),(3406,'E',3040,3037),(3407,'T',350,3037),(3408,'T',351,3037),(3409,'E',3041,3038),(3410,'E',3042,3039),(3411,'E',3043,3040),(3412,'E',3044,3041),(3413,'T',352,3041),(3414,'T',353,3041),(3415,'E',3045,3042),(3416,'T',354,3042),(3417,'E',3046,3043),(3418,'T',355,3043),(3419,'E',3047,3044),(3420,'T',356,3044),(3421,'T',357,3044),(3422,'E',3048,3045),(3423,'E',3049,3046),(3424,'E',3050,3047),(3425,'T',358,3047),(3426,'E',3051,3048),(3427,'T',359,3048),(3428,'E',3052,3049),(3429,'E',3053,3050),(3430,'T',360,3050),(3431,'E',3054,3051),(3432,'E',3055,3052),(3433,'E',3056,3053),(3434,'E',3057,3054),(3435,'T',361,3054),(3436,'E',3058,3055),(3437,'T',362,3055),(3438,'T',363,3055),(3439,'E',3059,3056),(3440,'T',364,3056),(3441,'T',365,3056),(3442,'E',3060,3057),(3443,'T',366,3057),(3444,'T',367,3057),(3445,'E',3061,3058),(3446,'T',368,3058),(3447,'E',3062,3059),(3448,'E',3063,3060),(3449,'E',3064,3061),(3450,'E',3065,3062),(3451,'E',3066,3063),(3452,'E',3067,3064),(3453,'E',3068,3065),(3454,'E',3069,3066),(3455,'E',3070,3067),(3456,'E',3071,3068),(3457,'E',3072,3069),(3458,'E',3073,3070),(3459,'E',3074,3071),(3460,'E',3075,3072),(3461,'E',3076,3073),(3462,'E',3077,3074),(3463,'E',3078,3075),(3464,'E',3079,3076),(3465,'E',3080,3077),(3466,'E',3081,3078),(3467,'E',3082,3079),(3468,'E',3083,3080),(3469,'E',3084,3081),(3470,'E',3085,3082),(3471,'E',3086,3083),(3472,'E',3087,3084),(3473,'E',3088,3085),(3474,'E',3089,3086),(3475,'E',3090,3087),(3476,'T',369,3087),(3477,'T',370,3087),(3478,'E',3091,3088),(3479,'E',3092,3089),(3480,'E',3093,3090),(3481,'E',3094,3091),(3482,'E',3095,3092),(3483,'E',3096,3093),(3484,'E',3097,3094),(3485,'E',3098,3095),(3486,'E',3099,3096),(3487,'E',3100,3097),(3488,'E',3101,3098),(3489,'E',3102,3099),(3490,'E',3103,3100),(3491,'E',3104,3101),(3492,'E',3105,3102),(3493,'E',3106,3103),(3494,'E',3107,3104),(3495,'E',3108,3105),(3496,'E',3109,3106),(3497,'E',3110,3107),(3498,'T',371,3107),(3499,'E',3111,3108),(3500,'T',372,3108),(3501,'T',373,3108),(3502,'E',3112,3109),(3503,'E',3113,3110),(3504,'E',3114,3111),(3505,'E',3115,3112),(3506,'E',3116,3113),(3507,'T',374,3113),(3508,'T',375,3113),(3509,'E',3117,3114),(3510,'T',376,3114),(3513,'E',3118,3115),(3514,'T',379,3115),(3515,'T',380,3115),(3516,'E',3119,3116),(3517,'E',3120,3117),(3518,'E',3121,3118),(3519,'E',3122,3119),(3520,'E',3123,3120),(3521,'E',3124,3121),(3522,'E',3125,3122),(3523,'E',3126,3123),(3524,'E',3127,3124),(3525,'E',3128,3125),(3526,'E',3129,3126),(3527,'E',3130,3127),(3528,'E',3131,3128),(3529,'E',3132,3129),(3530,'E',3133,3130),(3531,'E',3134,3131),(3532,'E',3135,3132),(3533,'E',3136,3133),(3534,'E',3137,3134),(3535,'E',3138,3135),(3536,'E',3139,3136),(3537,'E',3140,3137),(3538,'E',3141,3138),(3539,'E',3142,3139),(3540,'E',3143,3140),(3541,'E',3144,3141),(3542,'E',3145,3142),(3543,'E',3146,3143),(3544,'T',381,3143),(3545,'E',3147,3144),(3546,'E',3148,3145),(3547,'E',3149,3146),(3548,'E',3150,3147),(3549,'E',3151,3148),(3550,'E',3152,3149),(3551,'E',3153,3150),(3552,'T',382,3150),(3553,'T',383,3150),(3554,'E',3154,3151),(3555,'T',384,3151),(3556,'E',3155,3152),(3557,'T',385,3152),(3558,'E',3156,3153),(3559,'T',386,3153),(3560,'E',3157,3154),(3561,'E',3158,3155),(3562,'T',387,3155),(3563,'E',3159,3156),(3564,'E',3160,3157),(3565,'E',3161,3158),(3566,'E',3162,3159),(3567,'E',3163,3160),(3568,'E',3164,3161),(3569,'E',3165,3162),(3570,'E',3166,3163),(3571,'E',3167,3164),(3572,'T',388,3164),(3573,'T',389,3164),(3574,'T',390,3162),(3575,'E',3168,3165),(3576,'E',3169,3166),(3577,'E',3170,3167),(3578,'E',3171,3168),(3579,'E',3172,3169),(3580,'E',3173,3170),(3581,'E',3174,3171),(3582,'E',3175,3172),(3583,'E',3176,3173),(3584,'T',391,3173),(3585,'E',3177,3174),(3586,'E',3178,3175),(3587,'E',3179,3176),(3588,'E',3180,3177),(3589,'T',392,3177),(3590,'E',3181,3178),(3591,'E',3182,3179),(3592,'E',3183,3180),(3593,'E',3184,3181),(3594,'E',3185,3182),(3595,'E',3186,3183),(3596,'E',3187,3184),(3597,'E',3188,3185),(3598,'T',393,3185),(3599,'E',3189,3186),(3600,'E',3190,3187),(3601,'E',3191,3188),(3602,'T',394,3188),(3603,'E',3192,3189),(3604,'E',3193,3190),(3605,'T',395,3190),(3606,'T',396,3190),(3607,'E',3194,3191),(3608,'E',3195,3192),(3609,'E',3196,3193),(3610,'E',3197,3194),(3611,'E',3198,3195),(3612,'E',3199,3196),(3613,'E',3200,3197),(3614,'E',3201,3198),(3615,'E',3202,3199),(3616,'E',3203,3200),(3617,'E',3204,3201),(3618,'E',3205,3202),(3619,'E',3206,3203),(3620,'E',3207,3204),(3621,'T',397,3204),(3622,'E',3208,3205),(3623,'E',3209,3206),(3624,'T',398,3206),(3625,'E',3210,3207),(3626,'T',399,3207),(3627,'E',3211,3208),(3628,'E',3212,3209),(3629,'E',3213,3210),(3630,'E',3214,3211),(3631,'E',3215,3212),(3632,'T',400,3212),(3633,'E',3216,3213),(3634,'T',401,3213),(3635,'T',402,3213),(3636,'E',3217,3214),(3637,'E',3218,3215),(3638,'T',403,3215),(3639,'T',404,3215),(3640,'E',3219,3216),(3641,'E',3220,3217),(3642,'E',3221,3218),(3643,'T',405,3218),(3644,'E',3222,3219),(3645,'T',406,3219),(3646,'T',407,3219),(3647,'E',3223,3220),(3648,'T',408,3220),(3649,'T',409,3207),(3650,'E',3224,3221),(3651,'T',410,3221),(3652,'T',411,3221),(3653,'E',3225,3222),(3654,'T',412,3222),(3655,'T',413,3222),(3656,'E',3226,3223),(3657,'T',414,3223),(3658,'T',415,3223),(3659,'E',3227,3224),(3660,'T',416,3224),(3661,'T',417,3224),(3662,'E',3228,3225),(3663,'T',418,3225),(3664,'T',419,3225),(3665,'E',3229,3226),(3666,'T',420,3226),(3667,'T',421,3226),(3668,'E',3230,3227),(3669,'T',422,3227),(3670,'T',423,3227),(3671,'E',3231,3228),(3672,'T',424,3228),(3673,'T',425,3228),(3674,'E',3232,3229),(3675,'T',426,3229),(3676,'T',427,3229),(3677,'E',3233,3230),(3678,'E',3234,3231),(3679,'E',3235,3232),(3680,'T',428,3232),(3681,'T',429,3232),(3682,'E',3236,3233),(3683,'T',430,3233),(3684,'E',3237,3234),(3685,'T',431,3234),(3686,'E',3238,3235),(3687,'E',3239,3236),(3688,'T',432,3236),(3689,'T',433,3236),(3690,'E',3240,3237),(3691,'T',434,3237),(3692,'T',435,3237),(3693,'E',3241,3238),(3694,'T',436,3238),(3695,'T',437,3238),(3696,'E',3242,3239),(3697,'T',438,3239),(3698,'T',439,3239),(3699,'E',3243,3240),(3700,'E',3244,3241),(3701,'T',440,3241),(3702,'T',441,3241),(3703,'E',3245,3242),(3704,'T',442,3242),(3705,'E',3246,3243),(3706,'E',3247,3244),(3707,'T',443,3244),(3708,'T',444,3244),(3709,'E',3248,3245),(3710,'E',3249,3246),(3711,'T',445,3246),(3712,'T',446,3246),(3713,'E',3250,3247),(3714,'T',447,3247),(3715,'T',448,3247),(3716,'E',3251,3248),(3717,'E',3252,3249),(3718,'T',449,3249),(3719,'T',450,3249),(3720,'E',3253,3250),(3721,'T',451,3250),(3722,'E',3254,3251),(3723,'T',452,3251),(3724,'T',453,3251),(3725,'E',3255,3252),(3726,'T',454,3252),(3727,'E',3256,3253),(3728,'E',3257,3254),(3729,'E',3258,3255),(3730,'T',455,3255),(3731,'E',3259,3256),(3732,'T',456,3256),(3733,'T',457,3256),(3734,'E',3260,3257),(3735,'T',458,3257),(3736,'T',459,3257),(3737,'E',3261,3258),(3738,'E',3262,3259),(3739,'E',3263,3260),(3740,'E',3264,3261),(3741,'E',3265,3262),(3742,'E',3266,3263),(3743,'E',3267,3264),(3744,'E',3268,3265),(3745,'E',3269,3266),(3746,'E',3270,3267),(3747,'E',3271,3268),(3748,'E',3272,3269),(3749,'E',3273,3270),(3750,'E',3274,3271),(3751,'E',3275,3272),(3752,'E',3276,3273),(3753,'E',3277,3274),(3754,'E',3278,3275),(3755,'T',460,3275),(3756,'T',461,3275),(3757,'E',3279,3276),(3758,'E',3280,3277),(3759,'E',3281,3278),(3760,'T',462,3278),(3761,'T',463,3278),(3762,'E',3282,3279),(3763,'T',464,3279),(3764,'E',3283,3280),(3765,'T',465,3280),(3766,'T',466,3280),(3767,'E',3284,3281),(3768,'E',3285,3282),(3769,'E',3286,3283),(3770,'E',3287,3284),(3771,'E',3288,3285),(3772,'E',3289,3286),(3773,'E',3290,3287),(3774,'T',467,3287),(3775,'E',3291,3288),(3776,'E',3292,3289),(3777,'E',3293,3290),(3778,'E',3294,3291),(3779,'T',468,3291),(3780,'E',3295,3292),(3781,'E',3296,3293),(3782,'T',469,3293),(3783,'T',470,3293),(3784,'E',3297,3294),(3785,'E',3298,3295),(3786,'E',3299,3296),(3787,'E',3300,3297),(3788,'E',3301,3298),(3789,'E',3302,3299),(3790,'E',3303,3300),(3791,'E',3304,3301),(3792,'E',3305,3302),(3793,'E',3306,3303),(3794,'E',3307,3304),(3795,'E',3308,3305),(3796,'E',3309,3306),(3797,'E',3310,3307),(3798,'E',3311,3308),(3799,'E',3312,3309),(3800,'E',3313,3310),(3801,'E',3314,3311),(3802,'E',3315,3312),(3804,'E',3316,3313),(3805,'E',3317,3314),(3806,'E',3318,3315),(3807,'E',3319,3316),(3808,'E',3320,3317),(3809,'E',3321,3318),(3810,'E',3322,3319),(3811,'E',3323,3320),(3812,'E',3324,3321),(3813,'E',3325,3322),(3814,'E',3326,3323),(3815,'E',3327,3324),(3816,'E',3328,3325),(3817,'E',3329,3326),(3818,'E',3330,3327),(3819,'E',3331,3328),(3820,'E',3332,3329),(3821,'E',3333,3330),(3822,'E',3334,3331),(3823,'E',3335,3332),(3824,'E',3336,3333),(3825,'E',3337,3334),(3826,'E',3338,3335),(3827,'E',3339,3336),(3828,'E',3340,3337),(3829,'E',3341,3338),(3830,'E',3342,3339),(3831,'E',3343,3340),(3832,'E',3344,3341),(3833,'E',3345,3342),(3834,'E',3346,3343),(3835,'E',3347,3344),(3836,'T',472,3344),(3837,'E',3348,3345),(3838,'E',3349,3346),(3839,'E',3350,3347),(3840,'E',3351,3348),(3841,'E',3352,3349),(3842,'E',3353,3350),(3843,'E',3354,3351),(3844,'E',3355,3352),(3845,'E',3356,3353),(3846,'E',3357,3354),(3847,'E',3358,3355),(3848,'E',3359,3356),(3849,'E',3360,3357),(3850,'E',3361,3358),(3851,'E',3362,3359),(3852,'E',3363,3360),(3853,'E',3364,3361),(3854,'E',3365,3362),(3855,'E',3366,3363),(3856,'E',3367,3364),(3857,'E',3368,3365),(3858,'E',3369,3366),(3859,'E',3370,3367),(3860,'E',3371,3368),(3861,'E',3372,3369),(3862,'E',3373,3370),(3863,'T',473,3370),(3864,'T',474,3370),(3865,'E',3374,3371),(3866,'T',475,3371),(3867,'T',476,3371),(3868,'E',3375,3372),(3869,'T',477,3372),(3870,'E',3376,3373),(3871,'T',478,3373),(3872,'E',3377,3374),(3873,'T',479,3374),(3874,'E',3378,3375),(3875,'T',480,3375),(3876,'T',481,3375),(3877,'E',3379,3376),(3878,'T',482,3376),(3879,'E',3380,3377),(3880,'T',483,3377),(3881,'E',3381,3378),(3882,'E',3382,3379),(3883,'E',3383,3380),(3884,'T',484,3380),(3885,'E',3384,3381),(3886,'T',485,3381),(3887,'T',486,3381),(3888,'E',3385,3382),(3889,'T',487,3382),(3890,'T',488,3382),(3891,'E',3386,3383),(3892,'T',489,3383),(3893,'E',3387,3384),(3894,'T',490,3384),(3895,'T',491,3384),(3896,'E',3388,3385),(3897,'T',492,3385),(3898,'T',493,3385),(3899,'E',3389,3386),(3901,'E',3390,3387),(3902,'E',3391,3388),(3903,'E',3392,3389),(3904,'T',495,3389),(3905,'E',3393,3390),(3906,'T',496,3390),(3907,'E',3394,3391),(3908,'T',497,3391),(3909,'E',3395,3392),(3910,'T',498,3392),(3911,'E',3396,3393),(3912,'T',499,3393),(3913,'T',500,3393),(3914,'E',3397,3394),(3915,'E',3398,3395),(3916,'E',3399,3396),(3917,'E',3400,3397),(3918,'E',3401,3398),(3919,'E',3402,3399),(3920,'E',3403,3400),(3921,'E',3404,3401),(3922,'E',3405,3402),(3923,'E',3406,3403),(3924,'E',3407,3404),(3925,'E',3408,3405),(3926,'E',3409,3406),(3927,'E',3410,3407),(3928,'E',3411,3408),(3929,'E',3412,3409),(3930,'E',3413,3410),(3931,'E',3414,3411),(3932,'E',3415,3412),(3933,'E',3416,3413),(3934,'E',3417,3414),(3935,'E',3418,3415),(3936,'E',3419,3416),(3937,'E',3420,3417),(3938,'E',3421,3418),(3939,'E',3422,3419),(3940,'E',3423,3420),(3941,'E',3424,3421),(3942,'E',3425,3422),(3943,'E',3426,3423),(3944,'E',3427,3424),(3945,'E',3428,3425),(3946,'E',3429,3426),(3947,'T',501,3426),(3948,'E',3430,3427),(3949,'E',3431,3428),(3950,'E',3432,3429),(3951,'T',502,3396),(3952,'E',3433,3430),(3953,'E',3434,3431),(3954,'E',3435,3432),(3955,'E',3436,3433),(3956,'E',3437,3434),(3957,'E',3438,3435),(3958,'E',3439,3436),(3959,'E',3440,3437),(3960,'T',503,3437),(3961,'T',504,3437),(3962,'E',3441,3438),(3963,'E',3442,3439),(3964,'E',3443,3440),(3965,'E',3444,3441),(3966,'E',3445,3442),(3967,'E',3446,3443),(3968,'E',3447,3444),(3969,'E',3448,3445),(3970,'E',3449,3446),(3971,'T',505,3446),(3972,'T',506,3446),(3973,'E',3450,3447),(3974,'E',3451,3448),(3975,'E',3452,3449),(3976,'E',3453,3450),(3977,'E',3454,3451),(3978,'E',3455,3452),(3979,'E',3456,3453),(3980,'E',3457,3454),(3981,'E',3458,3455),(3982,'E',3459,3456),(3983,'E',3460,3457),(3984,'E',3461,3458),(3985,'E',3462,3459),(3986,'E',3463,3460),(3987,'T',507,3460),(3988,'E',3464,3461),(3989,'E',3465,3462),(3990,'E',3466,3463),(3991,'E',3467,3464),(3992,'E',3468,3465),(3993,'T',508,3465),(3994,'E',3469,3466),(3995,'E',3470,3467),(3996,'T',509,3467),(3997,'E',3471,3468),(3998,'E',3472,3469),(3999,'E',3473,3470),(4000,'E',3474,3471),(4001,'E',3475,3472),(4002,'E',3476,3473),(4003,'E',3477,3474),(4004,'E',3478,3475),(4005,'E',3479,3476),(4006,'E',3480,3477),(4007,'E',3481,3478),(4008,'E',3482,3479),(4009,'E',3483,3480),(4010,'E',3484,3481),(4011,'T',510,3481),(4012,'E',3485,3482),(4013,'E',3486,3483),(4014,'E',3487,3484),(4015,'E',3488,3485),(4016,'E',3489,3486),(4017,'E',3490,3487),(4018,'E',3491,3488),(4019,'E',3492,3489),(4020,'E',3493,3490),(4021,'E',3494,3491),(4022,'E',3495,3492),(4023,'E',3496,3493),(4024,'E',3497,3494),(4025,'E',3498,3495),(4026,'E',3499,3496),(4027,'T',511,3496),(4028,'T',512,3496),(4029,'E',3500,3497),(4030,'T',513,3497),(4031,'T',514,3497),(4032,'E',3501,3498),(4033,'T',515,3498),(4034,'T',516,3498),(4035,'E',3502,3499),(4036,'T',517,3499),(4037,'T',518,3499),(4038,'E',3503,3500),(4039,'T',519,3500),(4040,'T',520,3500),(4041,'E',3504,3501),(4042,'T',521,3501),(4043,'T',522,3501),(4044,'E',3505,3502),(4045,'E',3506,3503),(4046,'T',523,3503),(4047,'E',3507,3504),(4048,'T',524,3504),(4049,'T',525,3504),(4050,'E',3508,3505),(4051,'E',3509,3506),(4052,'T',526,3506),(4053,'E',3510,3507),(4054,'E',3511,3508),(4055,'T',527,3508),(4056,'E',3512,3509),(4057,'T',528,3509),(4058,'T',529,3509),(4059,'E',3513,3510),(4060,'T',530,3510),(4061,'E',3514,3511),(4062,'T',531,3511),(4063,'T',532,3511),(4064,'E',3515,3512),(4065,'T',533,3512),(4066,'E',3516,3513),(4067,'T',534,3513),(4068,'T',535,3513),(4069,'E',3517,3514),(4070,'E',3518,3515),(4071,'E',3519,3516),(4072,'T',536,3516),(4073,'T',537,3516),(4074,'E',3520,3517),(4075,'T',538,3517),(4076,'E',3521,3518),(4077,'T',539,3518),(4078,'E',3522,3519),(4079,'T',540,3519),(4080,'T',541,3519),(4081,'E',3523,3520),(4082,'E',3524,3521),(4083,'T',542,3521),(4084,'T',543,3521),(4085,'E',3525,3522),(4086,'T',544,3522),(4087,'T',545,3522),(4088,'E',3526,3523),(4089,'E',3527,3524),(4090,'T',546,3524),(4091,'E',3528,3525),(4092,'T',547,3525),(4093,'T',548,3525),(4094,'E',3529,3526),(4095,'T',549,3526),(4096,'T',550,3526),(4097,'E',3530,3527),(4098,'T',551,3527),(4099,'T',552,3527),(4100,'E',3531,3528),(4101,'T',553,3528),(4102,'E',3532,3529),(4103,'T',554,3529),(4104,'E',3533,3530),(4105,'T',555,3530),(4106,'E',3534,3531),(4107,'E',3535,3532),(4108,'T',556,2148),(4109,'E',3536,3533),(4110,'E',3537,3534),(4111,'E',3538,3535),(4112,'T',557,3535),(4113,'T',558,3535),(4114,'E',3539,3536),(4115,'T',559,3536),(4116,'E',3540,3537),(4117,'T',560,3537),(4118,'E',3541,3538),(4119,'T',561,3538),(4120,'T',562,3538),(4121,'E',3542,3539),(4122,'T',563,3539),(4123,'T',564,3539),(4124,'E',3543,3540),(4125,'T',565,3540),(4126,'T',566,3540),(4127,'E',3544,3541),(4128,'T',567,3541),(4129,'E',3545,3542),(4130,'T',568,1982),(4131,'E',3546,3543),(4132,'T',569,3543),(4133,'T',570,3543),(4134,'E',3547,3544),(4135,'T',571,3544),(4136,'T',572,3544),(4137,'E',3548,3545),(4138,'T',573,3545),(4139,'E',3549,3546),(4140,'E',3550,3547),(4141,'T',574,3547),(4142,'E',3551,3548),(4143,'E',3552,3549),(4144,'T',575,3549),(4145,'E',3553,3550),(4146,'T',576,3550),(4147,'E',3554,3551),(4148,'T',577,3551),(4149,'T',578,3551),(4150,'E',3555,3552),(4151,'E',3556,3553),(4152,'T',579,3553),(4153,'T',580,3553),(4154,'E',3557,3554),(4155,'T',581,3554),(4156,'E',3558,3555),(4157,'E',3559,3556),(4158,'T',582,3556),(4159,'T',583,3556),(4160,'E',3560,3557),(4161,'E',3561,3558),(4162,'T',584,3558),(4163,'E',3562,3559),(4164,'T',585,3559),(4165,'E',3563,3560),(4166,'T',586,3560),(4167,'T',587,3560),(4168,'E',3564,3561),(4169,'E',3565,3562),(4170,'E',3566,3563),(4171,'E',3567,3564),(4172,'T',588,3564),(4173,'T',589,3564),(4174,'E',3568,3565),(4175,'E',3569,3566),(4176,'E',3570,3567),(4177,'E',3571,3568),(4178,'T',590,3568),(4179,'E',3572,3569),(4180,'T',591,3569),(4181,'E',3573,3570),(4182,'E',3574,3571),(4183,'T',592,3571),(4184,'T',593,3571),(4185,'E',3575,3572),(4186,'T',594,3572),(4187,'E',3576,3573),(4188,'E',3577,3574),(4189,'E',3578,3575),(4190,'T',595,3575),(4191,'T',596,3575),(4192,'E',3579,3576),(4193,'E',3580,3577),(4194,'E',3581,3578),(4195,'E',3582,3579),(4196,'E',3583,3580),(4197,'E',3584,3581),(4198,'E',3585,3582),(4199,'E',3586,3583),(4200,'E',3587,3584),(4201,'E',3588,3585),(4202,'E',3589,3586),(4203,'E',3590,3587),(4204,'T',597,3587),(4205,'T',598,3587),(4206,'E',3591,3588),(4207,'E',3592,3589),(4208,'E',3593,3590),(4209,'E',3594,3591),(4210,'E',3595,3592),(4211,'E',3596,3593),(4212,'E',3597,3594),(4213,'E',3598,3595),(4214,'E',3599,3596),(4215,'E',3600,3597),(4216,'E',3601,3598),(4217,'E',3602,3599),(4218,'E',3603,3600),(4219,'E',3604,3601),(4220,'E',3605,3602),(4221,'E',3606,3603),(4222,'E',3607,3604),(4223,'E',3608,3605),(4224,'E',3609,3606),(4225,'E',3610,3607),(4226,'E',3611,3608),(4227,'E',3612,3609),(4228,'T',599,3609),(4229,'E',3613,3610),(4230,'E',3614,3611),(4231,'E',3615,3612),(4232,'E',3616,3613),(4233,'E',3617,3614),(4234,'E',3618,3615),(4235,'E',3619,3616),(4236,'E',3620,3617),(4237,'E',3621,3618),(4238,'T',600,3618),(4239,'E',3622,3619),(4240,'T',601,3619),(4241,'E',3623,3620),(4242,'T',602,3620),(4243,'E',3624,3621),(4244,'T',603,3621),(4245,'E',3625,3622),(4246,'T',604,3622),(4247,'T',605,3622),(4248,'E',3626,3623),(4249,'T',606,3623),(4250,'E',3627,3624),(4251,'T',607,3624),(4252,'E',3628,3625),(4253,'T',608,3625),(4254,'T',609,3625),(4255,'E',3629,3626),(4256,'T',610,3626),(4257,'E',3630,3627),(4258,'E',3631,3628),(4259,'T',611,3628),(4260,'T',612,3628),(4261,'E',3632,3629),(4262,'T',613,3629),(4263,'E',3633,3630),(4264,'E',3634,3631),(4265,'E',3635,3632),(4266,'E',3636,3633),(4267,'E',3637,3634),(4268,'E',3638,3635),(4269,'E',3639,3636),(4270,'E',3640,3637),(4271,'E',3641,3638),(4272,'E',3642,3639),(4273,'E',3643,3640),(4274,'E',3644,3641),(4275,'E',3645,3642),(4276,'E',3646,3643),(4277,'E',3647,3644),(4278,'E',3648,3645),(4279,'E',3649,3646),(4280,'T',614,3646),(4281,'E',3650,3647),(4282,'E',3651,3648),(4283,'E',3652,3649),(4284,'E',3653,3650),(4285,'E',3654,3651),(4286,'E',3655,3652),(4287,'E',3656,3653),(4288,'E',3657,3654),(4289,'E',3658,3655),(4290,'E',3659,3656),(4291,'E',3660,3657),(4292,'T',615,3657),(4293,'E',3661,3658),(4294,'E',3662,3659),(4295,'E',3663,3660),(4296,'E',3664,3661),(4297,'E',3665,3662),(4298,'E',3666,3663),(4299,'E',3667,3664),(4300,'E',3668,3665),(4301,'E',3669,3666),(4302,'E',3670,3667),(4303,'E',3671,3668),(4304,'E',3672,3669),(4305,'T',616,3669),(4306,'T',617,3669),(4307,'E',3673,3670),(4308,'T',618,3670),(4309,'E',3674,3671),(4310,'T',619,3671),(4311,'T',620,3671),(4312,'E',3675,3672),(4313,'T',621,3672),(4314,'E',3676,3673),(4315,'T',622,3673),(4316,'T',623,3673),(4317,'E',3677,3674),(4318,'T',624,3674),(4319,'T',625,3674),(4320,'E',3678,3675),(4323,'E',3679,3676),(4324,'T',628,3676),(4325,'E',3680,3677),(4326,'T',629,3677),(4327,'E',3681,3678),(4328,'T',630,3678),(4329,'T',631,3678),(4330,'E',3682,3679),(4331,'T',632,3679),(4332,'T',633,3679),(4333,'E',3683,3680),(4334,'T',634,3680),(4335,'T',635,3680),(4336,'E',3684,3681),(4337,'T',636,3681),(4338,'E',3685,3682),(4339,'T',637,3682),(4340,'T',638,3682),(4341,'E',3686,3683),(4342,'E',3687,3684),(4343,'T',639,3684),(4344,'E',3688,3685),(4345,'E',3689,3686),(4346,'T',640,3686),(4347,'E',3690,3687),(4348,'T',641,3687),(4349,'T',642,3687),(4350,'E',3691,3688),(4351,'T',643,3688),(4352,'T',644,3688),(4353,'E',3692,3689),(4354,'T',645,3689),(4355,'E',3693,3690),(4356,'T',646,3690),(4357,'T',647,3690),(4358,'E',3694,3691),(4359,'E',3695,3692),(4360,'E',3696,3693),(4361,'E',3697,3694),(4362,'E',3698,3695),(4363,'E',3699,3696),(4364,'E',3700,3697),(4365,'E',3701,3698),(4366,'E',3702,3699),(4367,'E',3703,3700),(4368,'E',3704,3701),(4369,'T',648,3701),(4370,'E',3705,3702),(4371,'E',3706,3703),(4372,'E',3707,3704),(4373,'E',3708,3705),(4374,'E',3709,3706),(4375,'E',3710,3707),(4376,'E',3711,3708),(4377,'E',3712,3709),(4378,'E',3713,3710),(4379,'E',3714,3711),(4380,'E',3715,3712),(4381,'E',3716,3713),(4382,'E',3717,3714),(4383,'E',3718,3715),(4384,'E',3719,3716),(4385,'E',3720,3717),(4386,'E',3721,3718),(4387,'E',3722,3719),(4388,'E',3723,3720),(4389,'E',3724,3721),(4390,'E',3725,3722),(4391,'T',649,3722),(4392,'E',3726,3723),(4393,'E',3727,3724),(4394,'E',3728,3725),(4395,'E',3729,3726),(4396,'E',3730,3727),(4397,'E',3731,3728),(4398,'E',3732,3729),(4399,'E',3733,3730),(4400,'E',3734,3731),(4401,'E',3735,3732),(4402,'E',3736,3733),(4403,'E',3737,3734),(4404,'E',3738,3735),(4405,'E',3739,3736),(4406,'E',3740,3737),(4407,'E',3741,3738),(4408,'E',3742,3739),(4409,'E',3743,3740),(4410,'E',3744,3741),(4411,'E',3745,3742),(4412,'E',3746,3743),(4413,'E',3747,3744),(4414,'E',3748,3745),(4415,'E',3749,3746),(4416,'E',3750,3747),(4417,'E',3751,3748),(4418,'E',3752,3749),(4419,'E',3753,3750),(4420,'E',3754,3751),(4421,'E',3755,3752),(4422,'E',3756,3753),(4423,'E',3757,3754),(4424,'E',3758,3755),(4425,'T',650,3755),(4426,'E',3759,3756),(4427,'E',3760,3757),(4428,'E',3761,3758),(4429,'T',651,3758),(4430,'E',3762,3759),(4431,'E',3763,3760),(4432,'E',3764,3761),(4433,'E',3765,3762),(4434,'T',652,3762),(4435,'E',3766,3763),(4436,'E',3767,3764),(4437,'E',3768,3765),(4438,'E',3769,3766),(4439,'E',3770,3767),(4440,'E',3771,3768),(4441,'E',3772,3769),(4442,'E',3773,3770),(4443,'E',3774,3771),(4444,'E',3775,3772),(4445,'E',3776,3773),(4446,'E',3777,3774),(4447,'E',3778,3775),(4448,'E',3779,3776),(4449,'E',3780,3777),(4450,'E',3781,3778),(4451,'E',3782,3779),(4452,'E',3783,3780),(4453,'E',3784,3781),(4454,'E',3785,3782),(4455,'E',3786,3783),(4456,'E',3787,3784),(4457,'E',3788,3785),(4458,'E',3789,3786),(4459,'E',3790,3787),(4460,'T',653,3787),(4461,'E',3791,3788),(4462,'E',3792,3789),(4463,'T',654,3789),(4464,'T',655,3789),(4465,'E',3793,3790),(4466,'E',3794,3791),(4467,'E',3795,3792),(4468,'E',3796,3793),(4469,'T',656,3793),(4470,'E',3797,3794),(4471,'E',3798,3795),(4472,'E',3799,3796),(4473,'E',3800,3797),(4474,'E',3801,3798),(4475,'T',657,3798),(4476,'T',658,3798),(4477,'E',3802,3799),(4478,'E',3803,3800),(4479,'T',659,3800),(4480,'T',660,3800),(4481,'E',3804,3801),(4482,'E',3805,3802),(4483,'E',3806,3803),(4484,'T',661,3803),(4485,'E',3807,3804),(4486,'T',662,3804),(4487,'E',3808,3805),(4488,'E',3809,3806),(4489,'E',3810,3807),(4490,'T',663,3807),(4491,'E',3811,3808),(4492,'E',3812,3809),(4493,'T',664,3809),(4494,'E',3813,3810),(4495,'E',3814,3811),(4496,'E',3815,3812),(4497,'E',3816,3813),(4498,'E',3817,3814),(4499,'E',3818,3815),(4500,'T',665,3815),(4501,'T',666,3815),(4502,'E',3819,3816),(4503,'E',3820,3817),(4504,'E',3821,3818),(4505,'E',3822,3819),(4506,'E',3823,3820),(4507,'E',3824,3821),(4508,'T',667,3821),(4509,'T',668,3821),(4510,'T',669,3821),(4511,'T',670,3821),(4512,'E',3825,3822),(4513,'T',671,3822),(4514,'T',672,3822),(4515,'E',3826,3823),(4516,'T',673,3823),(4517,'T',674,3823),(4518,'T',675,3725),(4519,'T',676,3725),(4520,'E',3827,3824),(4521,'T',677,3824),(4522,'E',3828,3825),(4523,'E',3829,3826),(4524,'T',678,3826),(4526,'T',680,3826),(4528,'E',3830,3827),(4529,'E',3831,3828),(4530,'T',682,3828),(4531,'E',3832,3829),(4532,'T',683,3829),(4533,'T',684,3829),(4534,'E',3833,3830),(4535,'T',685,3830),(4536,'T',686,3830),(4537,'E',3834,3831),(4538,'E',3835,3832),(4539,'T',687,3832),(4540,'E',3836,3833),(4541,'T',688,3833),(4542,'E',3837,3834),(4543,'T',689,3834),(4544,'T',690,3834),(4545,'E',3838,3835),(4546,'E',3839,3836),(4547,'T',691,3836),(4548,'E',3840,3837),(4549,'E',3841,3838),(4550,'T',692,3838),(4551,'T',693,3838),(4552,'E',3842,3839),(4553,'T',694,3839),(4554,'E',3843,3840),(4555,'T',695,3840),(4556,'E',3844,3841),(4557,'T',696,3841),(4558,'T',697,3718),(4559,'E',3845,3842),(4560,'E',3846,3843),(4561,'E',3847,3844),(4562,'T',698,3844),(4563,'E',3848,3845),(4564,'E',3849,3846),(4565,'E',3850,3847),(4566,'E',3851,3848),(4567,'E',3852,3849),(4568,'E',3853,3850),(4569,'E',3854,3851),(4570,'E',3855,3852),(4571,'E',3856,3853),(4572,'E',3857,3854),(4573,'E',3858,3855),(4574,'E',3859,3856),(4575,'E',3860,3857),(4576,'E',3861,3858),(4577,'E',3862,3859),(4578,'E',3863,3860),(4579,'E',3864,3861),(4580,'E',3865,3862),(4581,'E',3866,3863),(4582,'E',3867,3864),(4583,'E',3868,3865),(4584,'E',3869,3866),(4585,'E',3870,3867),(4586,'E',3871,3868),(4587,'E',3872,3869),(4588,'E',3873,3870),(4589,'E',3874,3871),(4590,'E',3875,3872),(4591,'E',3876,3873),(4592,'E',3877,3874),(4593,'E',3878,3875),(4594,'E',3879,3876),(4595,'E',3880,3877),(4596,'E',3881,3878),(4597,'E',3882,3879),(4598,'E',3883,3880),(4599,'E',3884,3881),(4600,'E',3885,3882),(4601,'E',3886,3883),(4602,'E',3887,3884),(4603,'E',3888,3885),(4604,'E',3889,3886),(4605,'E',3890,3887),(4606,'E',3891,3888),(4607,'E',3892,3889),(4608,'E',3893,3890),(4609,'E',3894,3891),(4610,'E',3895,3892),(4611,'E',3896,3893),(4612,'E',3897,3894),(4613,'E',3898,3895),(4614,'E',3899,3896),(4615,'E',3900,3897),(4616,'E',3901,3898),(4617,'E',3902,3899),(4618,'E',3903,3900),(4619,'E',3904,3901),(4620,'E',3905,3902),(4621,'E',3906,3903),(4622,'E',3907,3904),(4623,'E',3908,3905),(4624,'E',3909,3906),(4625,'E',3910,3907),(4626,'E',3911,3908),(4627,'E',3912,3909),(4628,'E',3913,3910),(4629,'E',3914,3911),(4630,'E',3915,3912),(4631,'E',3916,3913),(4632,'E',3917,3914),(4633,'E',3918,3915),(4634,'E',3919,3916),(4635,'E',3920,3917),(4636,'E',3921,3918),(4637,'E',3922,3919),(4638,'E',3923,3920),(4639,'E',3924,3921),(4640,'E',3925,3922),(4641,'E',3926,3923),(4642,'E',3927,3924),(4643,'E',3928,3925),(4644,'E',3929,3926),(4645,'E',3930,3927),(4646,'E',3931,3928),(4647,'E',3932,3929),(4648,'E',3933,3930),(4649,'E',3934,3931),(4650,'T',699,3931),(4651,'E',3935,3932),(4652,'E',3936,3933),(4653,'E',3937,3934),(4654,'E',3938,3935),(4655,'E',3939,3936),(4656,'E',3940,3937),(4657,'E',3941,3938),(4658,'E',3942,3939),(4659,'E',3943,3940),(4660,'E',3944,3941),(4661,'E',3945,3942),(4662,'E',3946,3943),(4663,'E',3947,3944),(4664,'E',3948,3945),(4665,'E',3949,3946),(4666,'E',3950,3947),(4667,'E',3951,3948),(4668,'E',3952,3949),(4669,'E',3953,3950),(4670,'E',3954,3951),(4671,'E',3955,3952),(4672,'E',3956,3953),(4673,'E',3957,3954),(4674,'E',3958,3955),(4675,'E',3959,3956),(4676,'E',3960,3957),(4677,'T',700,3957),(4678,'E',3961,3958),(4679,'E',3962,3959),(4680,'E',3963,3960),(4681,'E',3964,3961),(4682,'E',3965,3962),(4683,'E',3966,3963),(4684,'E',3967,3964),(4685,'E',3968,3965),(4686,'E',3969,3966),(4687,'E',3970,3967),(4688,'E',3971,3968),(4689,'E',3972,3969),(4690,'E',3973,3970),(4691,'E',3974,3971),(4692,'E',3975,3972),(4693,'E',3976,3973),(4694,'E',3977,3974),(4695,'E',3978,3975),(4696,'E',3979,3976),(4697,'E',3980,3977),(4698,'E',3981,3978),(4699,'E',3982,3979),(4700,'E',3983,3980),(4701,'E',3984,3981),(4702,'E',3985,3982),(4703,'E',3986,3983),(4704,'E',3987,3984),(4705,'E',3988,3985),(4706,'E',3989,3986),(4707,'E',3990,3987),(4708,'E',3991,3988),(4709,'E',3992,3989),(4710,'E',3993,3990),(4711,'T',701,3990),(4712,'E',3994,3991),(4713,'E',3995,3992),(4714,'E',3996,3993),(4715,'T',702,3993),(4716,'E',3997,3994),(4717,'E',3998,3995),(4718,'E',3999,3996),(4719,'E',4000,3997),(4720,'E',4001,3998),(4721,'E',4002,3999),(4722,'E',4003,4000),(4723,'T',703,4000),(4724,'E',4004,4001),(4725,'E',4005,4002),(4726,'E',4006,4003),(4727,'E',4007,4004),(4728,'E',4008,4005),(4729,'E',4009,4006),(4730,'E',4010,4007),(4731,'E',4011,4008),(4732,'E',4012,4009),(4733,'E',4013,4010),(4734,'E',4014,4011),(4735,'E',4015,4012),(4736,'E',4016,4013),(4737,'E',4017,4014),(4738,'E',4018,4015),(4739,'E',4019,4016),(4740,'E',4020,4017),(4741,'E',4021,4018),(4742,'E',4022,4019),(4743,'E',4023,4020),(4744,'E',4024,4021),(4745,'E',4025,4022),(4746,'E',4026,4023),(4747,'E',4027,4024),(4748,'E',4028,4025),(4749,'E',4029,4026),(4750,'E',4030,4027),(4751,'E',4031,4028),(4752,'E',4032,4029),(4753,'E',4033,4030),(4754,'E',4034,4031),(4755,'E',4035,4032),(4756,'E',4036,4033),(4757,'E',4037,4034),(4758,'E',4038,4035),(4759,'E',4039,4036),(4760,'E',4040,4037),(4761,'E',4041,4038),(4762,'E',4042,4039),(4763,'E',4043,4040),(4764,'E',4044,4041),(4765,'E',4045,4042),(4766,'E',4046,4043),(4767,'E',4047,4044),(4768,'E',4048,4045),(4769,'E',4049,4046),(4770,'E',4050,4047),(4771,'E',4051,4048),(4772,'E',4052,4049),(4773,'E',4053,4050),(4774,'E',4054,4051),(4775,'E',4055,4052),(4776,'E',4056,4053),(4777,'E',4057,4054),(4778,'E',4058,4055),(4779,'E',4059,4056),(4780,'E',4060,4057),(4781,'E',4061,4058),(4782,'E',4062,4059),(4783,'T',704,4059),(4784,'E',4063,4060),(4785,'E',4064,4061),(4786,'T',705,4061),(4787,'T',706,4061),(4788,'E',4065,4062),(4789,'T',707,4062),(4790,'E',4066,4063),(4791,'E',4067,4064),(4792,'T',708,4064),(4793,'E',4068,4065),(4794,'E',4069,4066),(4795,'E',4070,4067),(4796,'E',4071,4068),(4797,'E',4072,4069),(4798,'E',4073,4070),(4799,'E',4074,4071),(4800,'E',4075,4072),(4801,'E',4076,4073),(4802,'E',4077,4074),(4803,'E',4078,4075),(4804,'E',4079,4076),(4805,'E',4080,4077),(4806,'E',4081,4078),(4807,'E',4082,4079),(4808,'E',4083,4080),(4809,'E',4084,4081),(4810,'E',4085,4082),(4811,'E',4086,4083),(4812,'E',4087,4084),(4813,'E',4088,4085),(4814,'E',4089,4086),(4815,'E',4090,4087),(4816,'E',4091,4088),(4817,'E',4092,4089),(4818,'E',4093,4090),(4819,'E',4094,4091),(4820,'E',4095,4092),(4821,'E',4096,4093),(4822,'E',4097,4094),(4823,'E',4098,4095),(4824,'E',4099,4096),(4825,'E',4100,4097),(4826,'E',4101,4098),(4827,'E',4102,4099),(4828,'E',4103,4100),(4829,'E',4104,4101),(4830,'E',4105,4102),(4831,'E',4106,4103),(4832,'E',4107,4104),(4833,'E',4108,4105),(4834,'E',4109,4106),(4835,'E',4110,4107),(4836,'E',4111,4108),(4837,'E',4112,4109),(4838,'E',4113,4110),(4839,'E',4114,4111),(4840,'E',4115,4112),(4841,'E',4116,4113),(4842,'E',4117,4114),(4843,'E',4118,4115),(4844,'T',709,4115),(4845,'E',4119,4116),(4846,'E',4120,4117),(4847,'E',4121,4118),(4848,'E',4122,4119),(4849,'T',710,4119),(4850,'T',711,4119),(4851,'T',712,4119),(4852,'E',4123,4120),(4853,'E',4124,4121),(4854,'E',4125,4122),(4855,'E',4126,4123),(4856,'E',4127,4124),(4857,'E',4128,4125),(4858,'E',4129,4126),(4859,'E',4130,4127),(4860,'E',4131,4128),(4861,'E',4132,4129),(4862,'E',4133,4130),(4863,'E',4134,4131),(4864,'E',4135,4132),(4865,'E',4136,4133),(4866,'E',4137,4134),(4867,'E',4138,4135),(4868,'E',4139,4136),(4869,'E',4140,4137),(4870,'E',4141,4138),(4871,'E',4142,4139),(4872,'T',713,4139),(4873,'T',714,4139),(4874,'E',4143,4140),(4875,'E',4144,4141),(4876,'T',715,4141),(4877,'E',4145,4142),(4878,'T',716,4142),(4879,'E',4146,4143),(4880,'T',717,4143),(4881,'T',718,4143),(4882,'E',4147,4144),(4883,'E',4148,4145),(4884,'E',4149,4146),(4885,'E',4150,4147),(4886,'E',4151,4148),(4887,'T',719,4148),(4888,'E',4152,4149),(4889,'E',4153,4150),(4890,'T',720,4150),(4891,'E',4154,4151),(4892,'E',4155,4152),(4893,'E',4156,4153),(4894,'E',4157,4154),(4895,'E',4158,4155),(4896,'E',4159,4156),(4897,'E',4160,4157),(4898,'E',4161,4158),(4899,'E',4162,4159),(4900,'E',4163,4160),(4901,'E',4164,4161),(4902,'E',4165,4162),(4903,'E',4166,4163),(4904,'E',4167,4164),(4905,'E',4168,4165),(4906,'E',4169,4166),(4907,'E',4170,4167),(4908,'E',4171,4168),(4909,'E',4172,4169),(4910,'E',4173,4170),(4911,'E',4174,4171),(4912,'E',4175,4172),(4913,'E',4176,4173),(4914,'E',4177,4174),(4915,'E',4178,4175),(4916,'E',4179,4176),(4917,'E',4180,4177),(4918,'E',4181,4178),(4919,'E',4182,4179),(4920,'E',4183,4180),(4921,'E',4184,4181),(4922,'E',4185,4182),(4923,'T',721,4182),(4924,'E',4186,4183),(4925,'T',722,4183),(4926,'E',4187,4184),(4927,'E',4188,4185),(4928,'E',4189,4186),(4929,'E',4190,4187),(4930,'E',4191,4188),(4931,'E',4192,4189),(4932,'E',4193,4190),(4933,'E',4194,4191),(4934,'T',723,4191),(4935,'E',4195,4192),(4936,'T',724,4192),(4937,'E',4196,4193),(4938,'T',725,4193),(4939,'T',726,4193),(4940,'E',4197,4194),(4941,'T',727,4194),(4942,'T',728,4194),(4943,'E',4198,4195),(4944,'T',729,4195),(4945,'T',730,4195),(4946,'E',4199,4196),(4947,'T',731,4196),(4948,'E',4200,4197),(4949,'E',4201,4198),(4950,'E',4202,4199),(4951,'E',4203,4200),(4952,'E',4204,4201),(4953,'E',4205,4202),(4954,'E',4206,4203),(4955,'E',4207,4204),(4956,'E',4208,4205),(4957,'E',4209,4206),(4958,'E',4210,4207),(4959,'E',4211,4208),(4960,'E',4212,4209),(4961,'E',4213,4210),(4962,'E',4214,4211),(4963,'E',4215,4212),(4964,'E',4216,4213),(4965,'E',4217,4214),(4966,'E',4218,4215),(4967,'T',732,4215),(4968,'T',733,4215),(4969,'E',4219,4216),(4970,'T',734,4216),(4971,'E',4220,4217),(4972,'T',735,4217),(4973,'E',4221,4218),(4974,'T',736,4218),(4975,'E',4222,4219),(4976,'T',737,4219),(4977,'T',738,4219),(4978,'E',4223,4220),(4979,'T',739,4220),(4980,'T',740,4220),(4981,'E',4224,4221),(4982,'T',741,4221),(4983,'E',4225,4222),(4984,'T',742,4222),(4985,'T',743,4222),(4986,'E',4226,4223),(4987,'T',744,4223),(4988,'E',4227,4224),(4989,'T',745,4224),(4990,'T',746,4224),(4991,'E',4228,4225),(4992,'T',747,4225),(4993,'T',748,4225),(4994,'E',4229,4226),(4995,'T',749,4226),(4996,'T',750,4226),(4997,'E',4230,4227),(4998,'T',751,4227),(4999,'T',752,4227),(5000,'E',4231,4228),(5001,'E',4232,4229),(5002,'T',753,4229),(5003,'E',4233,4230),(5004,'E',4234,4231),(5005,'T',754,4231),(5006,'T',755,4231),(5007,'E',4235,4232),(5008,'T',756,4232),(5009,'T',757,4232),(5010,'E',4236,4233),(5011,'T',758,4233),(5012,'T',759,4233),(5013,'E',4237,4234),(5014,'T',760,4234),(5015,'T',761,4234),(5016,'E',4238,4235),(5017,'T',762,4235),(5018,'T',763,4235),(5019,'E',4239,4236),(5020,'T',764,4236),(5021,'T',765,4236),(5022,'E',4240,4237),(5023,'T',766,4237),(5024,'E',4241,4238),(5025,'E',4242,4239),(5026,'T',767,4239),(5027,'E',4243,4240),(5028,'E',4244,4241),(5029,'E',4245,4242),(5030,'E',4246,4243),(5031,'E',4247,4244),(5032,'E',4248,4245),(5033,'E',4249,4246),(5034,'T',768,4246),(5035,'E',4250,4247),(5036,'T',769,4247),(5037,'E',4251,4248),(5038,'E',4252,4249),(5039,'E',4253,4250),(5040,'E',4254,4251),(5041,'E',4255,4252),(5042,'E',4256,4253),(5043,'E',4257,4254),(5044,'E',4258,4255),(5045,'E',4259,4256),(5046,'E',4260,4257),(5047,'E',4261,4258),(5048,'E',4262,4259),(5049,'E',4263,4260),(5050,'E',4264,4261),(5051,'E',4265,4262),(5052,'E',4266,4263),(5053,'E',4267,4264),(5054,'T',770,4264),(5055,'E',4268,4265),(5056,'E',4269,4266),(5057,'E',4270,4267),(5058,'E',4271,4268),(5059,'E',4272,4269),(5060,'E',4273,4270),(5061,'E',4274,4271),(5062,'E',4275,4272),(5063,'E',4276,4273),(5064,'E',4277,4274),(5065,'E',4278,4275),(5066,'E',4279,4276),(5067,'E',4280,4277),(5068,'E',4281,4278),(5069,'E',4282,4279),(5070,'E',4283,4280),(5071,'E',4284,4281),(5072,'E',4285,4282),(5073,'E',4286,4283),(5074,'E',4287,4284),(5075,'E',4288,4285),(5076,'E',4289,4286),(5077,'E',4290,4287),(5078,'E',4291,4288),(5079,'E',4292,4289),(5080,'E',4293,4290),(5081,'E',4294,4291),(5082,'E',4295,4292),(5083,'E',4296,4293),(5084,'E',4297,4294),(5085,'E',4298,4295),(5086,'E',4299,4296),(5087,'E',4300,4297),(5088,'E',4301,4298),(5089,'E',4302,4299),(5090,'E',4303,4300),(5091,'E',4304,4301),(5092,'E',4305,4302),(5093,'E',4306,4303),(5094,'E',4307,4304),(5095,'E',4308,4305),(5096,'E',4309,4306),(5097,'E',4310,4307),(5098,'E',4311,4308),(5099,'E',4312,4309),(5100,'E',4313,4310),(5101,'E',4314,4311),(5102,'E',4315,4312),(5103,'E',4316,4313),(5104,'E',4317,4314),(5105,'T',771,4314),(5106,'T',772,4314),(5107,'E',4318,4315),(5108,'E',4319,4316),(5109,'E',4320,4317),(5110,'E',4321,4318),(5111,'E',4322,4319),(5112,'E',4323,4320),(5113,'E',4324,4321),(5114,'E',4325,4322),(5115,'E',4326,4323),(5116,'E',4327,4324),(5117,'E',4328,4325),(5118,'E',4329,4326),(5119,'E',4330,4327),(5120,'E',4331,4328),(5121,'E',4332,4329),(5122,'E',4333,4330),(5123,'E',4334,4331),(5124,'E',4335,4332),(5125,'E',4336,4333),(5126,'E',4337,4334),(5127,'E',4338,4335),(5128,'E',4339,4336),(5129,'E',4340,4337),(5130,'E',4341,4338),(5131,'E',4342,4339),(5132,'E',4343,4340),(5133,'E',4344,4341),(5134,'E',4345,4342),(5135,'E',4346,4343),(5136,'E',4347,4344),(5137,'E',4348,4345),(5138,'E',4349,4346),(5139,'E',4350,4347),(5140,'E',4351,4348),(5141,'E',4352,4349),(5142,'E',4353,4350),(5143,'E',4354,4351),(5144,'E',4355,4352),(5145,'E',4356,4353),(5146,'E',4357,4354),(5147,'E',4358,4355),(5148,'E',4359,4356),(5149,'E',4360,4357),(5150,'E',4361,4358),(5151,'E',4362,4359),(5152,'E',4363,4360),(5153,'E',4364,4361),(5154,'E',4365,4362),(5155,'E',4366,4363),(5156,'E',4367,4364),(5157,'E',4368,4365),(5158,'E',4369,4366),(5159,'E',4370,4367),(5160,'E',4371,4368),(5161,'E',4372,4369),(5162,'E',4373,4370),(5163,'E',4374,4371),(5164,'E',4375,4372),(5165,'E',4376,4373),(5166,'E',4377,4374),(5167,'E',4378,4375),(5168,'E',4379,4376),(5169,'E',4380,4377),(5170,'E',4381,4378),(5171,'E',4382,4379),(5172,'E',4383,4380),(5173,'E',4384,4381),(5174,'E',4385,4382),(5175,'E',4386,4383),(5176,'E',4387,4384),(5177,'E',4388,4385),(5178,'E',4389,4386),(5179,'E',4390,4387),(5180,'E',4391,4388),(5181,'E',4392,4389),(5182,'E',4393,4390),(5183,'E',4394,4391),(5184,'E',4395,4392),(5185,'E',4396,4393),(5186,'E',4397,4394),(5187,'E',4398,4395),(5188,'E',4399,4396),(5189,'E',4400,4397),(5190,'E',4401,4398),(5191,'E',4402,4399),(5192,'E',4403,4400),(5193,'E',4404,4401),(5194,'E',4405,4402),(5195,'E',4406,4403),(5196,'E',4407,4404),(5197,'E',4408,4405),(5198,'E',4409,4406),(5199,'E',4410,4407),(5200,'E',4411,4408),(5201,'E',4412,4409),(5202,'E',4413,4410),(5203,'E',4414,4411),(5204,'E',4415,4412),(5205,'E',4416,4413),(5206,'E',4417,4414),(5207,'E',4418,4415),(5208,'E',4419,4416),(5209,'E',4420,4417),(5210,'E',4421,4418),(5211,'E',4422,4419),(5212,'E',4423,4420),(5213,'E',4424,4421),(5214,'E',4425,4422),(5215,'E',4426,4423),(5216,'E',4427,4424),(5217,'E',4428,4425),(5218,'E',4429,4426),(5219,'E',4430,4427),(5220,'E',4431,4428),(5221,'E',4432,4429),(5222,'E',4433,4430),(5223,'E',4434,4431),(5224,'E',4435,4432),(5225,'E',4436,4433),(5226,'E',4437,4434),(5227,'E',4438,4435),(5228,'E',4439,4436),(5229,'E',4440,4437),(5230,'E',4441,4438),(5232,'E',4443,4440),(5233,'E',4444,4441),(5234,'E',4445,4442),(5235,'E',4446,4443),(5236,'E',4447,4444),(5237,'E',4448,4445),(5238,'E',4449,4446),(5239,'E',4450,4447),(5240,'E',4451,4448),(5241,'E',4452,4449),(5242,'E',4453,4450),(5243,'E',4454,4451),(5244,'E',4455,4452),(5245,'E',4456,4453),(5246,'E',4457,4454),(5247,'E',4458,4455),(5248,'E',4459,4456),(5249,'E',4460,4457),(5250,'E',4461,4458),(5251,'E',4462,4459),(5252,'E',4463,4460),(5253,'E',4464,4461),(5254,'E',4465,4462),(5255,'E',4466,4463),(5256,'E',4467,4464),(5257,'E',4468,4465),(5258,'E',4469,4466),(5259,'E',4470,4467),(5260,'E',4471,4468),(5261,'E',4472,4469),(5262,'E',4473,4470),(5263,'E',4474,4471),(5264,'E',4475,4472),(5265,'E',4476,4473),(5266,'E',4477,4474),(5267,'E',4478,4475),(5268,'E',4479,4476),(5269,'E',4480,4477),(5270,'E',4481,4478),(5271,'E',4482,4479),(5272,'E',4483,4480),(5273,'E',4484,4481),(5274,'E',4485,4482),(5275,'E',4486,4483),(5276,'E',4487,4484),(5277,'E',4488,4485),(5278,'E',4489,4486),(5279,'E',4490,4487),(5280,'E',4491,4488),(5281,'E',4492,4489),(5282,'E',4493,4490),(5283,'E',4494,4491),(5284,'E',4495,4492),(5285,'E',4496,4493),(5286,'E',4497,4494),(5287,'E',4498,4495),(5288,'E',4499,4496),(5289,'E',4500,4497),(5290,'E',4501,4498),(5291,'E',4502,4499),(5292,'E',4503,4500),(5293,'E',4504,4501),(5294,'E',4505,4502),(5295,'E',4506,4503),(5296,'E',4507,4504),(5297,'E',4508,4505),(5298,'E',4509,4506),(5299,'E',4510,4507),(5300,'E',4511,4508),(5301,'E',4512,4509),(5302,'E',4513,4510),(5303,'E',4514,4511),(5304,'E',4515,4512),(5305,'E',4516,4513),(5306,'E',4517,4514),(5307,'E',4518,4515),(5308,'E',4519,4516),(5309,'E',4520,4517),(5310,'E',4521,4518),(5311,'E',4522,4519),(5312,'E',4523,4520),(5313,'E',4524,4521),(5314,'E',4525,4522),(5315,'E',4526,4523),(5316,'E',4527,4524),(5317,'E',4528,4525),(5318,'E',4529,4526),(5319,'E',4530,4527),(5320,'E',4531,4528),(5321,'E',4532,4529),(5322,'E',4533,4530),(5323,'E',4534,4531),(5324,'E',4535,4532),(5325,'E',4536,4533),(5326,'E',4537,4534),(5327,'E',4538,4535),(5328,'E',4539,4536),(5329,'E',4540,4537),(5330,'E',4541,4538),(5331,'E',4542,4539),(5332,'E',4543,4540),(5333,'E',4544,4541),(5334,'E',4545,4542),(5335,'E',4546,4543),(5336,'E',4547,4544),(5337,'E',4548,4545),(5338,'E',4549,4546),(5339,'E',4550,4547),(5340,'E',4551,4548),(5341,'E',4552,4549),(5342,'E',4553,4550),(5343,'E',4554,4551),(5344,'E',4555,4552),(5345,'E',4556,4553),(5346,'E',4557,4554),(5347,'E',4558,4555),(5348,'E',4559,4556),(5349,'E',4560,4557),(5350,'E',4561,4558),(5351,'E',4562,4559),(5352,'E',4563,4560),(5353,'E',4564,4561),(5354,'E',4565,4562),(5355,'E',4566,4563),(5356,'E',4567,4564),(5357,'E',4568,4565),(5358,'E',4569,4566),(5359,'E',4570,4567),(5360,'E',4571,4568),(5361,'E',4572,4569),(5362,'E',4573,4570),(5363,'E',4574,4571),(5364,'E',4575,4572),(5365,'E',4576,4573),(5366,'E',4577,4574),(5367,'E',4578,4575),(5368,'E',4579,4576),(5369,'E',4580,4577),(5370,'E',4581,4578),(5371,'E',4582,4579),(5372,'E',4583,4580),(5373,'E',4584,4581),(5374,'E',4585,4582),(5375,'E',4586,4583),(5376,'E',4587,4584),(5377,'E',4588,4585),(5378,'E',4589,4586),(5379,'E',4590,4587),(5380,'E',4591,4588),(5381,'E',4592,4589),(5382,'E',4593,4590),(5383,'E',4594,4591),(5384,'E',4595,4592),(5385,'E',4596,4593),(5386,'E',4597,4594),(5387,'E',4598,4595),(5388,'E',4599,4596),(5389,'E',4600,4597),(5390,'E',4601,4598),(5391,'E',4602,4599),(5392,'E',4603,4600),(5393,'E',4604,4601),(5394,'E',4605,4602),(5395,'E',4606,4603),(5396,'E',4607,4604),(5397,'E',4608,4605),(5398,'E',4609,4606),(5399,'E',4610,4607),(5400,'T',773,4607),(5401,'E',4611,4608),(5402,'T',774,4608),(5403,'E',4612,4609),(5404,'T',775,4609),(5405,'E',4613,4610),(5406,'E',4614,4611),(5407,'E',4615,4612),(5408,'E',4616,4613),(5409,'E',4617,4614),(5410,'T',776,4614),(5411,'E',4618,4615),(5412,'E',4619,4616),(5413,'E',4620,4617),(5414,'E',4621,4618),(5415,'T',777,4618),(5416,'E',4622,4619),(5417,'E',4623,4620),(5418,'E',4624,4621),(5419,'E',4625,4622),(5420,'E',4626,4623),(5421,'E',4627,4624),(5422,'E',4628,4625),(5423,'E',4629,4626),(5424,'E',4630,4627),(5425,'E',4631,4628),(5426,'E',4632,4629),(5427,'E',4633,4630),(5428,'E',4634,4631),(5429,'E',4635,4632),(5430,'E',4636,4633),(5431,'E',4637,4634),(5432,'E',4638,4635),(5433,'E',4639,4636),(5434,'E',4640,4637),(5435,'E',4641,4638),(5436,'E',4642,4639),(5437,'E',4643,4640),(5438,'E',4644,4641),(5439,'E',4645,4642),(5440,'E',4646,4643),(5441,'E',4647,4644),(5442,'E',4648,4645),(5443,'T',778,4645),(5444,'T',779,4645),(5445,'E',4649,4646),(5446,'E',4650,4647),(5447,'E',4651,4648),(5448,'E',4652,4649),(5449,'E',4653,4650),(5450,'E',4654,4651),(5451,'T',780,4651),(5452,'T',781,4651),(5453,'E',4655,4652),(5454,'E',4656,4653),(5455,'E',4657,4654),(5456,'T',782,4654),(5457,'E',4658,4655),(5458,'T',783,4655),(5459,'T',784,4655),(5460,'E',4659,4656),(5461,'T',785,4656),(5462,'T',786,4656),(5463,'E',4660,4657),(5464,'T',787,4657),(5465,'T',788,4657),(5466,'E',4661,4658),(5467,'E',4662,4659),(5468,'E',4663,4660),(5469,'T',789,4660),(5470,'T',790,4660),(5471,'E',4664,4661),(5472,'T',791,4661),(5473,'E',4665,4662),(5474,'T',792,4662),(5475,'T',793,4662),(5476,'E',4666,4663),(5477,'E',4667,4664),(5478,'T',794,4664),(5479,'E',4668,4665),(5480,'T',795,4665),(5481,'T',796,4665),(5482,'E',4669,4666),(5483,'T',797,4666),(5484,'E',4670,4667),(5485,'T',798,4667),(5486,'T',799,4667),(5487,'E',4671,4668),(5488,'T',800,4668),(5489,'E',4672,4669),(5490,'T',801,4669),(5491,'E',4673,4670),(5492,'T',802,4670),(5493,'T',803,4670),(5494,'E',4674,4671),(5495,'T',804,4671),(5496,'E',4675,4672),(5497,'T',805,4672),(5498,'T',806,4672),(5499,'E',4676,4673),(5500,'T',807,4673),(5501,'E',4677,4674),(5502,'T',808,4674),(5503,'T',809,4674),(5504,'E',4678,4675),(5505,'T',810,4675),(5506,'T',811,4675),(5507,'E',4679,4676),(5508,'T',812,4676),(5509,'T',813,4676),(5510,'E',4680,4677),(5511,'T',814,4677),(5512,'T',815,4677),(5516,'E',4682,4679),(5517,'E',4683,4680),(5518,'T',818,4680),(5519,'E',4684,4681),(5520,'T',819,4681),(5521,'T',820,4681),(5522,'E',4685,4682),(5523,'T',821,4682),(5524,'T',822,4682),(5525,'E',4686,4683),(5526,'T',823,4683),(5527,'E',4687,4684),(5528,'T',824,4684),(5529,'T',825,4684),(5530,'E',4688,4685),(5531,'T',826,4685),(5532,'E',4689,4686),(5533,'E',4690,4687),(5534,'E',4691,4688),(5535,'T',827,4688),(5536,'E',4692,4689),(5537,'T',828,4689),(5538,'T',829,4689),(5539,'E',4693,4690),(5540,'E',4694,4691),(5541,'T',830,4691),(5542,'E',4695,4692),(5543,'E',4696,4693),(5544,'E',4697,4694),(5545,'T',831,4694),(5546,'T',832,4694),(5547,'E',4698,4695),(5548,'T',833,4695),(5549,'E',4699,4696),(5550,'T',834,4696),(5551,'T',835,4696),(5552,'E',4700,4697),(5553,'T',836,4697),(5554,'T',837,4697),(5555,'E',4701,4698),(5556,'E',4702,4699),(5557,'E',4703,4700),(5558,'T',838,4700),(5559,'E',4704,4701),(5560,'T',839,4701),(5561,'E',4705,4702),(5562,'T',840,4702),(5563,'T',841,4702),(5564,'E',4706,4703),(5565,'T',842,4703),(5566,'T',843,4703),(5567,'E',4707,4704),(5568,'E',4708,4705),(5569,'E',4709,4706),(5570,'E',4710,4707),(5571,'E',4711,4708),(5572,'E',4712,4709),(5573,'T',844,4709),(5574,'T',845,4709),(5575,'E',4713,4710),(5576,'T',846,4710),(5577,'E',4714,4711),(5578,'T',847,4711),(5579,'E',4715,4712),(5580,'T',848,4712),(5581,'E',4716,4713),(5584,'E',4717,4714),(5585,'T',851,4714),(5586,'T',852,4714),(5587,'E',4718,4715),(5588,'E',4719,4716),(5589,'T',853,4716),(5590,'E',4720,4717),(5591,'T',854,4717),(5592,'T',855,4717),(5593,'T',856,4717),(5594,'T',857,4717),(5595,'E',4721,4718),(5596,'T',858,4718),(5597,'T',859,4718),(5598,'E',4722,4719),(5599,'T',860,4719),(5600,'E',4723,4720),(5601,'T',861,4720),(5602,'E',4724,4721),(5603,'T',862,4721),(5604,'E',4725,4722),(5605,'E',4726,4723),(5606,'T',863,4723),(5607,'T',864,4723),(5608,'E',4727,4724),(5609,'E',4728,4725),(5610,'E',4729,4726),(5611,'T',865,4726),(5612,'E',4730,4727),(5613,'E',4731,4728),(5614,'E',4732,4729),(5615,'E',4733,4730),(5616,'T',866,4730),(5617,'E',4734,4731),(5619,'T',868,4731),(5620,'E',4735,4732),(5621,'T',869,4732),(5622,'E',4736,4733),(5623,'T',870,4733),(5624,'T',871,4733),(5625,'E',4737,4734),(5626,'E',4738,4735),(5627,'T',872,4735),(5628,'T',873,4735),(5629,'T',874,4735),(5630,'E',4739,4736),(5631,'E',4740,4737),(5632,'E',4741,4738),(5633,'E',4742,4739),(5634,'T',875,4739),(5635,'T',876,4739),(5636,'E',4743,4740),(5637,'E',4744,4741),(5638,'T',877,4741),(5639,'E',4745,4742),(5640,'T',878,4742),(5641,'T',879,4742),(5642,'E',4746,4743),(5643,'E',4747,4744),(5644,'E',4748,4745),(5645,'E',4749,4746),(5646,'E',4750,4747),(5647,'E',4751,4748),(5649,'E',4753,4750),(5650,'E',4754,4751),(5651,'E',4755,4752),(5652,'E',4756,4753),(5653,'E',4757,4754),(5654,'E',4758,4755),(5655,'E',4759,4756),(5656,'E',4760,4757),(5657,'E',4761,4758),(5658,'E',4762,4759),(5659,'E',4763,4760),(5660,'E',4764,4761),(5661,'E',4765,4762),(5662,'E',4766,4763),(5663,'E',4767,4764),(5664,'E',4768,4765),(5665,'E',4769,4766),(5666,'E',4770,4767),(5667,'E',4771,4768),(5668,'E',4772,4769),(5669,'E',4773,4770),(5670,'E',4774,4771),(5671,'E',4775,4772),(5672,'E',4776,4773),(5673,'E',4777,4774),(5674,'E',4778,4775),(5675,'E',4779,4776),(5676,'E',4780,4777),(5677,'E',4781,4778),(5678,'E',4782,4779),(5679,'E',4783,4780),(5680,'E',4784,4781),(5681,'E',4785,4782),(5682,'E',4786,4783),(5683,'E',4787,4784),(5684,'E',4788,4785),(5685,'E',4789,4786),(5686,'E',4790,4787),(5687,'E',4791,4788),(5688,'E',4792,4789),(5689,'E',4793,4790),(5690,'E',4794,4791),(5691,'E',4795,4792),(5692,'E',4796,4793),(5693,'E',4797,4794),(5694,'E',4798,4795),(5695,'E',4799,4796),(5696,'T',880,4796),(5697,'T',881,4796),(5698,'E',4800,4797),(5699,'E',4801,4798),(5700,'E',4802,4799),(5701,'E',4803,4800),(5702,'E',4804,4801),(5703,'E',4805,4802),(5704,'E',4806,4803),(5705,'E',4807,4804),(5706,'E',4808,4805),(5707,'E',4809,4806),(5708,'E',4810,4807),(5709,'E',4811,4808),(5710,'E',4812,4809),(5711,'E',4813,4810),(5712,'E',4814,4811),(5713,'E',4815,4812),(5714,'E',4816,4813),(5715,'E',4817,4814),(5716,'E',4818,4815),(5717,'E',4819,4816),(5718,'E',4820,4817),(5719,'E',4821,4818),(5720,'E',4822,4819),(5721,'E',4823,4820),(5722,'E',4824,4821),(5723,'E',4825,4822),(5724,'E',4826,4823),(5725,'E',4827,4824),(5726,'E',4828,4825),(5727,'E',4829,4826),(5728,'E',4830,4827),(5729,'E',4831,4828),(5730,'E',4832,4829),(5731,'E',4833,4830),(5732,'E',4834,4831),(5733,'E',4835,4832),(5734,'E',4836,4833),(5735,'E',4837,4834),(5736,'E',4838,4835),(5737,'E',4839,4836),(5738,'E',4840,4837),(5739,'E',4841,4838),(5740,'E',4842,4839),(5741,'E',4843,4840),(5742,'E',4844,4841),(5743,'E',4845,4842),(5744,'E',4846,4843),(5745,'E',4847,4844),(5746,'E',4848,4845),(5747,'E',4849,4846),(5748,'E',4850,4847),(5749,'E',4851,4848),(5750,'E',4852,4849),(5751,'E',4853,4850),(5752,'E',4854,4851),(5753,'E',4855,4852),(5754,'E',4856,4853),(5755,'E',4857,4854),(5756,'E',4858,4855),(5757,'E',4859,4856),(5758,'E',4860,4857),(5759,'E',4861,4858),(5760,'E',4862,4859),(5761,'E',4863,4860),(5762,'E',4864,4861),(5763,'E',4865,4862),(5764,'E',4866,4863),(5765,'E',4867,4864),(5766,'E',4868,4865),(5767,'E',4869,4866),(5768,'E',4870,4867),(5769,'T',882,4867),(5770,'E',4871,4868),(5771,'E',4872,4869),(5772,'E',4873,4870),(5773,'E',4874,4871),(5774,'E',4875,4872),(5775,'E',4876,4873),(5776,'E',4877,4874),(5777,'E',4878,4875),(5778,'E',4879,4876),(5779,'E',4880,4877),(5780,'E',4881,4878),(5781,'E',4882,4879),(5782,'E',4883,4880),(5783,'E',4884,4881),(5784,'E',4885,4882),(5785,'E',4886,4883),(5786,'E',4887,4884),(5787,'E',4888,4885),(5788,'E',4889,4886),(5789,'E',4890,4887),(5790,'E',4891,4888),(5791,'E',4892,4889),(5792,'E',4893,4890),(5793,'E',4894,4891),(5794,'E',4895,4892),(5795,'E',4896,4893),(5796,'E',4897,4894),(5797,'E',4898,4895),(5798,'E',4899,4896),(5799,'E',4900,4897),(5800,'E',4901,4898),(5801,'E',4902,4899),(5802,'E',4903,4900),(5803,'E',4904,4901),(5804,'E',4905,4902),(5805,'E',4906,4903),(5806,'E',4907,4904),(5807,'E',4908,4905),(5808,'E',4909,4906),(5809,'E',4910,4907),(5810,'E',4911,4908),(5811,'E',4912,4909),(5812,'E',4913,4910),(5813,'E',4914,4911),(5814,'E',4915,4912),(5815,'E',4916,4913),(5816,'E',4917,4914),(5817,'E',4918,4915),(5818,'E',4919,4916),(5819,'E',4920,4917),(5820,'E',4921,4918),(5821,'E',4922,4919),(5822,'E',4923,4920),(5823,'E',4924,4921),(5824,'E',4925,4922),(5825,'E',4926,4923),(5826,'E',4927,4924),(5827,'E',4928,4925),(5828,'E',4929,4926),(5829,'E',4930,4927),(5830,'E',4931,4928),(5831,'E',4932,4929),(5832,'E',4933,4930),(5833,'E',4934,4931),(5834,'E',4935,4932),(5835,'E',4936,4933),(5836,'E',4937,4934),(5837,'E',4938,4935),(5838,'E',4939,4936),(5839,'E',4940,4937),(5840,'E',4941,4938),(5841,'E',4942,4939),(5842,'E',4943,4940),(5843,'E',4944,4941),(5844,'E',4945,4942),(5845,'E',4946,4943),(5846,'E',4947,4944),(5847,'E',4948,4945),(5848,'E',4949,4946),(5849,'E',4950,4947),(5850,'E',4951,4948),(5851,'E',4952,4949),(5852,'E',4953,4950),(5853,'E',4954,4951),(5854,'E',4955,4952),(5855,'E',4956,4953),(5856,'E',4957,4954),(5857,'E',4958,4955),(5858,'E',4959,4956),(5859,'E',4960,4957),(5860,'E',4961,4958),(5861,'E',4962,4959),(5862,'E',4963,4960),(5863,'E',4964,4961),(5864,'E',4965,4962),(5865,'E',4966,4963),(5866,'E',4967,4964),(5867,'E',4968,4965),(5868,'E',4969,4966),(5869,'E',4970,4967),(5870,'E',4971,4968),(5871,'E',4972,4969),(5872,'E',4973,4970),(5873,'E',4974,4971),(5874,'E',4975,4972),(5875,'E',4976,4973),(5876,'E',4977,4974),(5877,'E',4978,4975),(5878,'E',4979,4976),(5879,'T',883,4976),(5880,'E',4980,4977),(5881,'E',4981,4978),(5882,'E',4982,4979),(5883,'E',4983,4980),(5884,'E',4984,4981),(5885,'E',4985,4982),(5886,'E',4986,4983),(5887,'E',4987,4984),(5888,'E',4988,4985),(5889,'E',4989,4986),(5890,'E',4990,4987),(5891,'E',4991,4988),(5892,'E',4992,4989),(5893,'E',4993,4990),(5894,'E',4994,4991),(5895,'E',4995,4992),(5896,'E',4996,4993),(5897,'E',4997,4994),(5898,'E',4998,4995),(5899,'E',4999,4996),(5900,'E',5000,4997),(5901,'E',5001,4998),(5902,'E',5002,4999),(5903,'E',5003,5000),(5904,'E',5004,5001),(5905,'E',5005,5002),(5906,'E',5006,5003),(5907,'E',5007,5004),(5908,'E',5008,5005),(5909,'E',5009,5006),(5910,'E',5010,5007),(5911,'E',5011,5008),(5912,'E',5012,5009),(5913,'E',5013,5010),(5914,'E',5014,5011),(5915,'E',5015,5012),(5916,'E',5016,5013),(5917,'E',5017,5014),(5918,'E',5018,5015),(5919,'E',5019,5016),(5920,'E',5020,5017),(5921,'E',5021,5018),(5922,'E',5022,5019),(5923,'E',5023,5020),(5924,'E',5024,5021),(5925,'E',5025,5022),(5926,'E',5026,5023),(5927,'E',5027,5024),(5928,'E',5028,5025),(5929,'E',5029,5026),(5930,'E',5030,5027),(5931,'T',884,5027),(5932,'E',5031,5028),(5933,'E',5032,5029),(5934,'E',5033,5030),(5935,'E',5034,5031),(5936,'E',5035,5032),(5937,'E',5036,5033),(5938,'E',5037,5034),(5939,'E',5038,5035),(5940,'E',5039,5036),(5941,'E',5040,5037),(5942,'E',5041,5038),(5943,'E',5042,5039),(5944,'E',5043,5040),(5945,'T',885,5040),(5946,'T',886,5040),(5947,'E',5044,5041),(5948,'T',887,5041),(5949,'T',888,5041),(5950,'E',5045,5042),(5951,'E',5046,5043),(5952,'T',889,5043),(5953,'E',5047,5044),(5954,'T',890,5044),(5955,'T',891,5044),(5956,'E',5048,5045),(5957,'T',892,5045),(5958,'E',5049,5046),(5959,'T',893,5046),(5960,'T',894,5046),(5961,'E',5050,5047),(5962,'T',895,5047),(5963,'T',896,5047),(5964,'E',5051,5048),(5965,'E',5052,5049),(5966,'T',897,5049),(5967,'E',5053,5050),(5968,'E',5054,5051),(5969,'E',5055,5052),(5970,'T',898,5052),(5971,'T',899,5052),(5972,'E',5056,5053),(5973,'T',900,5053),(5974,'E',5057,5054),(5975,'E',5058,5055),(5976,'T',901,5055),(5977,'E',5059,5056),(5978,'T',902,5056),(5979,'T',903,5056),(5980,'E',5060,5057),(5981,'T',904,5057),(5982,'E',5061,5058),(5983,'T',905,5058),(5984,'T',906,5058),(5985,'E',5062,5059),(5986,'T',907,5059),(5987,'T',908,5059),(5988,'T',909,4390),(5989,'T',910,4390),(5990,'E',5063,5060),(5991,'T',911,5060),(5992,'T',912,5060),(5993,'E',5064,5061),(5994,'T',913,5061),(5995,'T',914,5061),(5996,'E',5065,5062),(5997,'T',915,5062),(5998,'T',916,5062),(5999,'E',5066,5063),(6000,'E',5067,5064),(6001,'E',5068,5065),(6002,'E',5069,5066),(6003,'E',5070,5067),(6004,'E',5071,5068),(6005,'E',5072,5069),(6006,'E',5073,5070),(6007,'E',5074,5071),(6008,'E',5075,5072),(6009,'E',5076,5073),(6010,'E',5077,5074),(6011,'E',5078,5075),(6012,'E',5079,5076),(6013,'E',5080,5077),(6014,'E',5081,5078),(6015,'E',5082,5079),(6016,'E',5083,5080),(6017,'E',5084,5081),(6018,'E',5085,5082),(6019,'E',5086,5083),(6020,'E',5087,5084),(6021,'E',5088,5085),(6022,'E',5089,5086),(6023,'E',5090,5087),(6024,'E',5091,5088),(6025,'E',5092,5089),(6026,'E',5093,5090),(6027,'E',5094,5091),(6028,'E',5095,5092),(6029,'E',5096,5093),(6030,'E',5097,5094),(6031,'E',5098,5095),(6032,'E',5099,5096),(6033,'E',5100,5097),(6034,'E',5101,5098),(6035,'E',5102,5099),(6036,'E',5103,5100),(6037,'E',5104,5101),(6038,'E',5105,5102),(6039,'E',5106,5103),(6040,'E',5107,5104),(6041,'E',5108,5105),(6042,'E',5109,5106),(6043,'E',5110,5107),(6044,'E',5111,5108),(6045,'E',5112,5109),(6046,'E',5113,5110),(6047,'E',5114,5111),(6048,'E',5115,5112),(6049,'T',917,5112),(6050,'E',5116,5113),(6051,'T',918,5113),(6052,'T',919,5113),(6053,'E',5117,5114),(6054,'T',920,5114),(6055,'T',921,5114),(6056,'E',5118,5115),(6057,'E',5119,5116),(6058,'E',5120,5117),(6059,'E',5121,5118),(6060,'E',5122,5119),(6061,'E',5123,5120),(6062,'E',5124,5121),(6063,'E',5125,5122),(6064,'E',5126,5123),(6065,'E',5127,5124),(6066,'E',5128,5125),(6067,'E',5129,5126),(6068,'T',922,5126),(6069,'T',923,5126),(6070,'E',5130,5127),(6071,'T',924,5127),(6072,'T',925,5127),(6073,'E',5131,5128),(6074,'T',926,5128),(6075,'E',5132,5129),(6076,'E',5133,5130),(6077,'E',5134,5131),(6078,'E',5135,5132),(6079,'E',5136,5133),(6080,'E',5137,5134),(6081,'E',5138,5135),(6082,'E',5139,5136),(6083,'E',5140,5137),(6084,'E',5141,5138),(6085,'E',5142,5139),(6086,'E',5143,5140),(6087,'E',5144,5141),(6088,'E',5145,5142),(6089,'E',5146,5143),(6090,'E',5147,5144),(6091,'E',5148,5145),(6092,'E',5149,5146),(6093,'E',5150,5147),(6094,'E',5151,5148),(6095,'E',5152,5149),(6096,'E',5153,5150),(6097,'E',5154,5151),(6098,'E',5155,5152),(6099,'E',5156,5153),(6100,'E',5157,5154),(6101,'E',5158,5155),(6102,'E',5159,5156),(6103,'T',927,1677),(6104,'E',5160,5157),(6105,'E',5161,5158),(6106,'E',5162,5159),(6107,'E',5163,5160),(6108,'E',5164,5161),(6109,'E',5165,5162),(6110,'E',5166,5163),(6111,'E',5167,5164),(6112,'E',5168,5165),(6113,'E',5169,5166),(6114,'E',5170,5167),(6115,'E',5171,5168),(6116,'E',5172,5169),(6117,'E',5173,5170),(6118,'E',5174,5171),(6119,'E',5175,5172),(6120,'E',5176,5173),(6121,'E',5177,5174),(6122,'E',5178,5175),(6123,'E',5179,5176),(6124,'E',5180,5177),(6125,'E',5181,5178),(6126,'T',928,5178),(6127,'T',929,4731),(6129,'T',931,18),(6130,'F',59,18),(6131,'E',5182,5179),(6134,'E',5183,5180),(6136,'E',5184,5181),(6137,'E',5185,5182),(6138,'E',5186,5183),(6139,'E',5187,5184),(6140,'T',934,3312),(6142,'E',5188,5185),(6143,'E',5189,5186),(6144,'E',5190,5187),(6149,'T',939,17),(6150,'T',940,17),(6151,'E',5191,5188),(6152,'E',5192,5189),(6153,'E',5193,5190),(6154,'E',5194,5191),(6155,'E',5195,5192),(6156,'E',5196,5193),(6158,'E',5197,5194),(6159,'E',5198,5195),(6160,'E',5199,5196),(6161,'E',5200,5197),(6162,'E',5201,5198),(6163,'E',5202,5199),(6164,'E',5203,5200),(6165,'T',942,5200),(6166,'T',943,3387),(6167,'E',5204,5201),(6168,'E',5205,5202),(6169,'E',5206,5203),(6170,'E',5207,5204),(6171,'E',5208,5205),(6172,'E',5209,5206),(6173,'E',5210,5207),(6174,'E',5211,5208),(6176,'T',945,1210),(6177,'E',5212,5209),(6178,'E',5213,5210),(6179,'E',5214,5211),(6180,'E',5215,5212),(6181,'E',5216,5213),(6182,'E',5217,5214),(6183,'E',5218,5215),(6184,'E',5219,5216),(6185,'T',946,3392),(6186,'E',5220,5217),(6187,'T',947,5217),(6188,'T',948,5217),(6189,'E',5221,5218),(6190,'E',5222,5219),(6191,'T',949,934),(6192,'E',5223,5220),(6193,'E',5224,5221),(6194,'E',5225,5222),(6195,'E',5226,5223),(6197,'T',951,3386),(6198,'E',5227,5224),(6199,'E',5228,5225),(6200,'E',5229,5226),(6201,'E',5230,5227),(6202,'E',5231,5228),(6203,'E',5232,5229),(6204,'E',5233,5230),(6205,'E',5234,5231),(6206,'E',5235,5232),(6207,'E',5236,5233),(6208,'E',5237,5234),(6209,'E',5238,5235),(6212,'E',5239,5236),(6214,'E',5240,5237),(6215,'E',5241,5238),(6216,'E',5242,5239),(6217,'E',5243,5240),(6218,'E',5244,5241),(6219,'E',5245,5242),(6220,'E',5246,5243),(6221,'E',5247,5244),(6222,'E',5248,5245),(6223,'E',5249,5246),(6224,'E',5250,5247),(6225,'E',5251,5248),(6226,'E',5252,5249),(6227,'E',5253,5250),(6228,'E',5254,5251),(6229,'E',5255,5252),(6230,'E',5256,5253),(6231,'E',5257,5254),(6232,'E',5258,5255),(6233,'E',5259,5256),(6234,'E',5260,5257),(6235,'E',5261,5258),(6237,'F',122,16),(6238,'E',5262,5259),(6239,'E',5263,5260),(6240,'E',5264,5261),(6241,'E',5265,5262),(6242,'E',5266,5263),(6243,'E',5267,5264),(6244,'E',5268,5265),(6245,'E',5269,5266),(6246,'E',5270,5267),(6247,'E',5271,5268),(6248,'T',952,5268),(6249,'E',5272,5269),(6250,'E',5273,5270),(6251,'E',5274,5271),(6252,'E',5275,5272),(6256,'E',5276,5273),(6257,'E',5277,5274),(6258,'E',5278,5275),(6259,'E',5279,5276),(6260,'E',5280,5277),(6261,'E',5281,5278),(6262,'E',5282,5279),(6263,'E',5283,5280),(6264,'E',5284,5281),(6265,'E',5285,5282),(6266,'E',5286,5283),(6267,'E',5287,5284),(6268,'E',5288,5285),(6269,'E',5289,5286),(6270,'E',5290,5287),(6271,'E',5291,5288),(6272,'E',5292,5289),(6273,'E',5293,5290),(6274,'E',5294,5291),(6275,'E',5295,5292),(6276,'E',5296,5293),(6277,'E',5297,5294),(6278,'E',5298,5295),(6279,'E',5299,5296),(6282,'E',5300,5297),(6283,'E',5301,5298),(6284,'E',5302,5299),(6285,'E',5303,5300),(6286,'E',5304,5301),(6287,'E',5305,5302),(6288,'E',5306,5303),(6289,'E',5307,5304),(6290,'E',5308,5305),(6291,'E',5309,5306),(6292,'T',991,16),(6293,'E',5310,5307),(6294,'E',5311,5308),(6295,'E',5312,5309),(6296,'E',5313,5310),(6297,'E',5314,5311),(6298,'E',5315,5312),(6300,'F',155,5179),(6301,'E',5316,5313),(6302,'E',5317,5314),(6303,'E',5318,5315),(6304,'E',5319,5316),(6305,'E',5320,5317),(6306,'E',5321,5318),(6307,'E',5322,5319),(6308,'E',5323,5320),(6309,'E',5324,5321),(6310,'E',5325,5322),(6311,'E',5326,5323),(6312,'E',5327,5324),(6313,'E',5328,5325),(6314,'E',5329,5326),(6315,'E',5330,5327),(6316,'E',5331,5328),(6317,'E',5332,5329),(6318,'E',5333,5330),(6319,'E',5334,5331),(6320,'E',5335,5332),(6321,'E',5336,5333),(6322,'E',5337,5334),(6323,'E',5338,5335),(6324,'E',5339,5336),(6325,'E',5340,5337),(6326,'E',5341,5338),(6327,'E',5342,5339),(6328,'E',5343,5340),(6329,'E',5344,5341),(6330,'E',5345,5342),(6331,'E',5346,5343),(6332,'E',5347,5344),(6333,'E',5348,5345),(6334,'E',5349,5346),(6335,'E',5350,5347),(6336,'E',5351,5348),(6337,'E',5352,5349),(6338,'E',5353,5350),(6339,'E',5354,5351),(6340,'E',5355,5352),(6341,'E',5356,5353),(6342,'E',5357,5354),(6343,'E',5358,5355),(6344,'E',5359,5356),(6345,'E',5360,5357),(6346,'E',5361,5358),(6347,'E',5362,5359),(6348,'E',5363,5360),(6349,'E',5364,5361),(6350,'E',5365,5362),(6351,'E',5366,5363),(6352,'E',5367,5364),(6353,'E',5368,5365),(6354,'E',5369,5366),(6355,'E',5370,5367),(6356,'E',5371,5368),(6357,'E',5372,5370),(6358,'E',5373,5371),(6359,'E',5374,5372),(6360,'E',5375,5373),(6361,'E',5376,5374),(6362,'E',5377,5375),(6363,'E',5378,5376),(6364,'E',5379,5377),(6365,'E',5380,5378),(6366,'E',5381,5379),(6367,'E',5382,5380),(6368,'E',5383,5381),(6369,'E',5384,5382),(6370,'E',5385,5383),(6371,'E',5386,5384),(6372,'E',5387,5385),(6373,'E',5388,5386),(6374,'E',5389,5387),(6375,'E',5390,5388),(6376,'E',5391,5389),(6377,'E',5392,5390),(6378,'E',5393,5391),(6379,'E',5394,5392),(6380,'E',5395,5393),(6381,'E',5396,5394),(6382,'E',5397,5395),(6383,'E',5398,5396),(6384,'E',5399,5397),(6385,'E',5400,5398),(6386,'E',5401,5399),(6387,'E',5402,5400),(6388,'E',5403,5401),(6389,'E',5404,5402),(6390,'T',1084,5397),(6391,'T',1085,5397),(6392,'E',5405,5403),(6393,'E',5406,5404),(6394,'E',5407,5405),(6395,'E',5408,5406),(6396,'E',5409,5407),(6397,'E',5410,5408),(6398,'E',5411,5409),(6399,'E',5412,5410),(6400,'E',5413,5411),(6401,'E',5414,5412),(6402,'E',5415,5413),(6403,'E',5416,5414),(6404,'E',5417,5415),(6405,'E',5418,5416),(6406,'E',5419,5417),(6407,'E',5420,5418),(6408,'E',5421,5419),(6409,'E',5422,5420),(6410,'E',5423,5421),(6411,'E',5424,5422),(6412,'E',5425,5423),(6413,'E',5426,5424),(6414,'E',5427,5425),(6415,'E',5428,5426),(6416,'E',5429,5427),(6417,'E',5430,5428),(6418,'E',5431,5429),(6419,'E',5432,5430),(6420,'E',5433,5431),(6421,'E',5434,5432),(6422,'E',5435,5433),(6423,'E',5436,5434),(6424,'E',5437,5435),(6425,'E',5438,5436),(6426,'E',5439,5437),(6427,'E',5440,5438),(6428,'E',5441,5439),(6429,'E',5442,5440),(6430,'E',5443,5441),(6431,'E',5444,5442),(6432,'E',5445,5443),(6433,'E',5446,5444),(6434,'E',5447,5445),(6435,'E',5448,5446),(6436,'E',5449,5447),(6437,'E',5450,5448),(6438,'E',5451,5449),(6439,'E',5452,5450),(6440,'E',5453,5451),(6441,'E',5454,5452),(6442,'E',5455,5453),(6444,'E',5456,5454),(6445,'E',5457,5455),(6446,'E',5458,5456),(6447,'E',5459,5457),(6448,'E',5460,5458),(6449,'E',5461,5459),(6450,'T',1117,5459),(6451,'E',5462,5460),(6452,'E',5463,5461),(6453,'E',5464,5462),(6454,'E',5465,5463),(6455,'E',5466,5464),(6456,'E',5467,5465),(6457,'E',5468,5466),(6458,'E',5469,5467),(6459,'E',5470,5468),(6460,'E',5471,5469),(6461,'E',5472,5470),(6462,'E',5473,5471),(6463,'E',5474,5472),(6464,'E',5475,5473),(6465,'E',5476,5474),(6466,'E',5477,5475),(6467,'E',5478,5476),(6468,'E',5479,5477),(6469,'E',5480,5478),(6470,'E',5481,5479),(6471,'E',5482,5480),(6472,'E',5483,5481),(6473,'E',5484,5482),(6474,'E',5485,5483),(6475,'E',5486,5484),(6476,'E',5487,5485),(6477,'E',5488,5486),(6478,'E',5489,5487),(6479,'E',5490,5488),(6480,'E',5491,5489),(6481,'E',5492,5490),(6482,'E',5493,5491),(6483,'E',5494,5492),(6484,'E',5495,5493),(6485,'E',5496,5494),(6486,'E',5497,5495),(6487,'E',5498,5496),(6488,'E',5499,5497),(6489,'E',5500,5498),(6490,'E',5501,5499),(6491,'E',5502,5500),(6492,'E',5503,5502),(6493,'E',5504,5503),(6494,'E',5505,5504),(6495,'E',5506,5505),(6496,'T',1188,5505),(6497,'E',5507,5506),(6498,'E',5508,5507),(6499,'E',5509,5508),(6500,'E',5510,5509),(6501,'E',5511,5510),(6502,'E',5512,5511),(6503,'E',5513,5512),(6504,'T',1197,5512),(6505,'E',5514,5513),(6506,'E',5515,5514),(6507,'E',5516,5515),(6508,'E',5517,5516),(6509,'E',5518,5517),(6510,'E',5519,5518),(6511,'E',5520,5519),(6512,'E',5521,5520),(6513,'E',5522,5521),(6514,'E',5523,5522),(6515,'T',1212,5522),(6516,'E',5524,5523),(6517,'E',5525,5524),(6518,'E',5526,5525),(6519,'E',5527,5526),(6520,'E',5528,5527),(6521,'T',1214,5527),(6522,'E',5529,5528),(6523,'E',5530,5529),(6524,'E',5531,5530),(6525,'E',5532,5531),(6526,'E',5533,5532),(6527,'E',5534,5533),(6528,'E',5535,5534),(6529,'E',5536,5535),(6530,'E',5537,5536),(6531,'E',5538,5537),(6532,'E',5539,5538),(6533,'E',5540,5539),(6534,'E',5541,5540),(6535,'E',5542,5541),(6536,'E',5543,5542),(6537,'T',1219,5542),(6538,'T',1220,5542),(6539,'E',5544,5543),(6540,'E',5545,5544),(6541,'E',5546,5545),(6542,'E',5547,5546),(6543,'E',5548,5547),(6544,'T',1224,5547),(6545,'E',5549,5548),(6546,'E',5550,5549),(6547,'E',5551,5550),(6548,'E',5552,5551),(6549,'E',5553,5552),(6550,'E',5554,5553),(6551,'E',5555,5554),(6552,'E',5556,5555),(6553,'E',5557,5556),(6554,'E',5558,5557),(6555,'E',5559,5558),(6556,'E',5560,5559),(6557,'E',5561,5560),(6558,'E',5562,5561),(6559,'E',5563,5562),(6560,'E',5564,5563),(6561,'E',5565,5564),(6562,'E',5566,5565),(6563,'E',5567,5566),(6564,'E',5568,5567),(6565,'E',5569,5568),(6567,'E',5571,5570),(6568,'E',5572,5571),(6569,'E',5573,5572),(6570,'E',5574,5573),(6571,'E',5575,5574),(6572,'E',5576,5575),(6573,'E',5577,5576),(6574,'E',5578,5577),(6575,'E',5579,5578),(6576,'E',5580,5579),(6577,'E',5581,5580),(6578,'E',5582,5581),(6579,'E',5583,5582),(6580,'E',5584,5583),(6581,'E',5585,5584),(6582,'E',5586,5585),(6583,'E',5587,5586),(6584,'E',5588,5587),(6585,'E',5589,5588),(6586,'E',5590,5589),(6587,'E',5591,5590),(6588,'E',5592,5591),(6589,'E',5593,5592),(6590,'E',5594,5593),(6591,'E',5595,5594),(6592,'E',5596,5595),(6593,'E',5597,5596),(6594,'E',5598,5597),(6595,'E',5599,5598),(6596,'E',5600,5599),(6597,'E',5601,5600),(6598,'E',5602,5601),(6599,'E',5603,5602),(6600,'E',5604,5603),(6601,'E',5605,5604),(6602,'E',5606,5605),(6603,'E',5607,5606),(6604,'E',5608,5607),(6605,'E',5609,5608),(6606,'E',5610,5609),(6607,'E',5611,5610),(6608,'E',5612,5611),(6609,'E',5613,5612),(6610,'E',5614,5613),(6611,'E',5615,5614),(6612,'E',5616,5615),(6613,'E',5617,5616),(6614,'E',5618,5617),(6615,'E',5619,5618),(6616,'E',5620,5619),(6617,'E',5621,5620),(6618,'E',5622,5621),(6619,'E',5623,5622),(6620,'E',5624,5623),(6621,'E',5625,5624),(6622,'E',5626,5625),(6623,'E',5627,5626),(6624,'E',5628,5627),(6625,'E',5629,5628),(6626,'E',5630,5629),(6627,'E',5631,5630),(6628,'E',5632,5631),(6629,'E',5633,5632),(6630,'E',5634,5633),(6631,'E',5635,5634),(6632,'E',5636,5635),(6633,'E',5637,5636),(6634,'E',5638,5637),(6635,'E',5639,5638),(6636,'E',5640,5639),(6637,'E',5641,5640),(6638,'E',5642,5641),(6639,'E',5643,5642),(6640,'E',5644,5643),(6641,'E',5645,5644),(6642,'E',5646,5645),(6643,'E',5647,5646),(6644,'E',5648,5647),(6645,'E',5649,5648),(6646,'E',5650,5649),(6647,'E',5651,5650),(6648,'E',5652,5651),(6649,'E',5653,5652),(6650,'E',5654,5653),(6651,'E',5655,5654),(6652,'E',5656,5655),(6653,'E',5657,5656),(6654,'E',5658,5657),(6655,'E',5659,5658),(6656,'E',5660,5659),(6657,'E',5661,5660),(6658,'E',5662,5661),(6659,'E',5663,5662),(6660,'E',5664,5663),(6661,'E',5665,5664),(6662,'E',5666,5665),(6663,'E',5667,5666),(6664,'E',5668,5667),(6665,'E',5669,5668),(6666,'E',5670,5669),(6667,'E',5671,5670),(6668,'E',5672,5671),(6669,'E',5673,5672),(6670,'E',5674,5673),(6671,'E',5675,5674),(6672,'E',5676,5675),(6673,'E',5677,5676),(6674,'E',5678,5677),(6675,'E',5679,5678),(6676,'E',5680,5679),(6677,'E',5681,5680),(6678,'E',5682,5681),(6679,'E',5683,5682),(6680,'E',5684,5683),(6681,'E',5685,5684),(6682,'E',5686,5685),(6683,'E',5687,5686),(6684,'E',5688,5687),(6685,'E',5689,5688),(6686,'E',5690,5689),(6687,'E',5691,5690),(6688,'E',5692,5691),(6689,'E',5693,5692),(6690,'E',5694,5693),(6691,'E',5695,5694),(6692,'E',5696,5695),(6693,'E',5697,5696),(6694,'E',5698,5697),(6695,'E',5699,5698),(6696,'E',5700,5699),(6697,'E',5701,5700),(6698,'E',5702,5701),(6699,'E',5703,5702),(6700,'E',5704,5703),(6701,'E',5705,5704),(6702,'E',5706,5705),(6703,'E',5707,5706),(6704,'E',5708,5707),(6705,'E',5709,5708),(6706,'E',5710,5709),(6707,'E',5711,5710),(6708,'E',5712,5711),(6709,'E',5713,5712),(6710,'E',5714,5713),(6711,'E',5715,5714),(6712,'E',5716,5715),(6713,'E',5717,5716),(6714,'E',5718,5717),(6715,'E',5719,5718),(6716,'E',5720,5719),(6717,'E',5721,5720),(6718,'E',5722,5721),(6719,'E',5723,5722),(6720,'E',5724,5723),(6721,'E',5725,5724),(6722,'E',5726,5725),(6723,'E',5727,5726),(6724,'E',5728,5727),(6725,'E',5729,5728),(6726,'E',5730,5729),(6727,'E',5731,5730),(6728,'E',5732,5731),(6729,'E',5733,5732),(6730,'E',5734,5733),(6731,'E',5735,5734),(6732,'E',5736,5735),(6733,'E',5737,5736),(6734,'E',5738,5737),(6735,'E',5739,5738),(6736,'E',5740,5739),(6737,'E',5741,5740),(6738,'E',5742,5741),(6739,'E',5743,5742),(6740,'E',5744,5743),(6741,'E',5745,5744),(6742,'E',5746,5745),(6743,'E',5747,5746),(6744,'E',5748,5747),(6745,'E',5749,5748),(6746,'E',5750,5749),(6747,'E',5751,5750),(6748,'E',5752,5751),(6749,'E',5753,5752),(6750,'E',5754,5753),(6751,'E',5755,5754),(6752,'E',5756,5755),(6753,'E',5757,5756),(6754,'E',5758,5757),(6755,'E',5759,5758),(6756,'E',5760,5759),(6757,'E',5761,5760),(6758,'E',5762,5761),(6759,'E',5763,5762),(6760,'E',5764,5763),(6761,'E',5765,5764),(6762,'E',5766,5765),(6763,'E',5767,5766),(6764,'E',5768,5767),(6765,'E',5769,5768),(6766,'E',5770,5769),(6767,'E',5771,5770),(6768,'E',5772,5771),(6769,'E',5773,5772),(6770,'E',5774,5773),(6771,'E',5775,5774),(6772,'E',5776,5775),(6773,'E',5777,5776),(6774,'E',5778,5777),(6775,'E',5779,5778),(6776,'E',5780,5779),(6777,'E',5781,5780),(6778,'E',5782,5781),(6779,'E',5783,5782),(6780,'E',5784,5783),(6781,'E',5785,5784),(6782,'E',5786,5785),(6783,'E',5787,5786),(6784,'E',5788,5787),(6785,'E',5789,5788),(6786,'E',5790,5789),(6787,'E',5791,5790),(6788,'E',5792,5791),(6789,'E',5793,5792),(6790,'E',5794,5793),(6791,'E',5795,5794),(6792,'E',5796,5795),(6793,'E',5797,5796),(6794,'E',5798,5797),(6795,'E',5799,5798),(6796,'E',5800,5799),(6797,'E',5801,5800),(6798,'E',5802,5801),(6799,'E',5803,5802),(6800,'E',5804,5803),(6801,'E',5805,5804),(6802,'E',5806,5805),(6803,'E',5807,5806),(6804,'E',5808,5807),(6805,'E',5809,5808),(6806,'E',5810,5809),(6807,'E',5811,5810),(6808,'E',5812,5811),(6809,'E',5813,5812),(6810,'E',5814,5813),(6811,'E',5815,5814),(6812,'E',5816,5815),(6813,'E',5817,5816),(6814,'E',5818,5817),(6815,'E',5819,5818),(6816,'E',5820,5819),(6817,'E',5821,5820),(6818,'E',5822,5821),(6819,'E',5823,5822),(6820,'E',5824,5823),(6821,'E',5825,5824),(6822,'E',5826,5825),(6823,'E',5827,5826),(6824,'E',5828,5827),(6825,'E',5829,5828),(6826,'E',5830,5829),(6827,'E',5831,5830),(6828,'E',5832,5831),(6829,'E',5833,5832),(6830,'E',5834,5833),(6831,'E',5835,5834),(6832,'E',5836,5835),(6833,'E',5837,5836),(6834,'E',5838,5837),(6835,'E',5839,5838),(6836,'E',5840,5839),(6837,'E',5841,5840),(6838,'E',5842,5841),(6839,'E',5843,5842),(6840,'E',5844,5843),(6841,'E',5845,5844),(6842,'E',5846,5845),(6843,'E',5847,5846),(6844,'E',5848,5847),(6845,'E',5849,5848),(6846,'E',5850,5849),(6847,'E',5851,5850),(6848,'E',5852,5851),(6849,'E',5853,5852),(6850,'E',5854,5853),(6851,'E',5855,5854),(6852,'E',5856,5855),(6853,'E',5857,5856),(6854,'E',5858,5857),(6855,'E',5859,5858),(6856,'E',5860,5859),(6857,'E',5861,5860),(6858,'E',5862,5861),(6859,'E',5863,5862),(6860,'E',5864,5863),(6861,'E',5865,5864),(6862,'E',5866,5865),(6863,'E',5867,5866),(6864,'E',5868,5867),(6865,'E',5869,5868),(6866,'E',5870,5869),(6867,'E',5871,5870),(6868,'E',5872,5871),(6869,'E',5873,5872),(6870,'E',5874,5873),(6871,'E',5875,5874),(6872,'E',5876,5875),(6873,'E',5877,5876),(6874,'E',5878,5877),(6875,'E',5879,5878),(6876,'E',5880,5879),(6877,'E',5881,5880),(6878,'E',5882,5881),(6879,'E',5883,5882),(6880,'E',5884,5883),(6881,'E',5885,5884),(6882,'E',5886,5885),(6883,'E',5887,5886),(6884,'E',5888,5887),(6885,'E',5889,5888),(6886,'E',5890,5889),(6887,'E',5891,5890),(6888,'E',5892,5891),(6889,'E',5893,5892),(6890,'E',5894,5893),(6891,'E',5895,5894),(6892,'E',5896,5895),(6893,'E',5897,5896),(6894,'E',5898,5897),(6895,'E',5899,5898),(6896,'E',5900,5899),(6897,'E',5901,5900),(6898,'E',5902,5901),(6899,'E',5903,5902),(6900,'E',5904,5903),(6901,'E',5905,5904),(6902,'E',5906,5905),(6903,'E',5907,5906),(6904,'E',5908,5907),(6905,'E',5909,5908),(6906,'E',5910,5909),(6907,'E',5911,5910),(6908,'E',5912,5911),(6909,'E',5913,5912),(6910,'E',5914,5913),(6911,'E',5915,5914),(6912,'E',5916,5915),(6913,'E',5917,5916),(6914,'E',5918,5917),(6915,'E',5919,5918),(6916,'E',5920,5919),(6917,'E',5921,5920),(6918,'E',5922,5921),(6919,'E',5923,5922),(6920,'E',5924,5923),(6921,'E',5925,5924),(6922,'E',5926,5925),(6923,'E',5927,5926),(6924,'E',5928,5927),(6925,'E',5929,5928),(6926,'E',5930,5929),(6927,'E',5931,5930),(6928,'E',5932,5931),(6929,'E',5933,5932),(6930,'E',5934,5933),(6931,'E',5935,5934),(6932,'E',5936,5935),(6933,'E',5937,5936),(6934,'E',5938,5937),(6935,'E',5939,5938),(6936,'E',5940,5939),(6937,'E',5941,5940),(6938,'E',5942,5941),(6939,'E',5943,5942),(6940,'E',5944,5943),(6941,'E',5945,5944),(6942,'E',5946,5945),(6943,'E',5947,5946),(6944,'E',5948,5947),(6945,'E',5949,5948),(6946,'E',5950,5949),(6947,'E',5951,5950),(6948,'E',5952,5951),(6949,'E',5953,5952),(6950,'E',5954,5953),(6951,'E',5955,5954),(6952,'E',5956,5955),(6953,'E',5957,5956),(6954,'E',5958,5957),(6955,'E',5959,5958),(6956,'E',5960,5959),(6957,'E',5961,5960),(6958,'E',5962,5961),(6959,'E',5963,5962),(6960,'E',5964,5963),(6961,'E',5965,5964),(6962,'E',5966,5965),(6963,'E',5967,5966),(6964,'E',5968,5967),(6965,'E',5969,5968),(6966,'E',5970,5969),(6967,'E',5971,5970),(6968,'E',5972,5971),(6969,'E',5973,5972),(6970,'E',5974,5973),(6971,'E',5975,5974),(6972,'E',5976,5975),(6973,'E',5977,5976),(6974,'E',5978,5977),(6975,'E',5979,5978),(6976,'E',5980,5979),(6977,'E',5981,5980),(6978,'E',5982,5981),(6979,'E',5983,5982),(6980,'E',5984,5983),(6981,'E',5985,5984),(6982,'E',5986,5985),(6983,'E',5987,5986),(6984,'E',5988,5987),(6985,'E',5989,5988),(6986,'E',5990,5989),(6987,'E',5991,5990),(6988,'E',5992,5991),(6989,'E',5993,5992),(6990,'E',5994,5993),(6991,'E',5995,5994),(6992,'E',5996,5995),(6993,'E',5997,5996),(6994,'E',5998,5997),(6995,'E',5999,5998),(6996,'E',6000,5999),(6997,'E',6001,6000),(6998,'E',6002,6001),(6999,'E',6003,6002),(7000,'E',6004,6003),(7001,'E',6005,6004),(7002,'E',6006,6005),(7003,'E',6007,6006),(7004,'E',6008,6007),(7005,'E',6009,6008),(7006,'E',6010,6009),(7007,'E',6011,6010),(7008,'E',6012,6011),(7009,'E',6013,6012),(7010,'E',6014,6013),(7011,'E',6015,6014),(7012,'E',6016,6015),(7013,'E',6017,6016),(7014,'E',6018,6017),(7015,'E',6019,6018),(7016,'E',6020,6019),(7017,'E',6021,6020),(7018,'E',6022,6021),(7019,'E',6023,6022),(7020,'E',6024,6023),(7021,'E',6025,6024),(7022,'E',6026,6025),(7023,'E',6027,6026),(7024,'E',6028,6027),(7025,'E',6029,6028),(7026,'E',6030,6029),(7027,'E',6031,6030),(7028,'E',6032,6031),(7029,'E',6033,6032),(7030,'E',6034,6033),(7031,'E',6035,6034),(7032,'E',6036,6035),(7033,'E',6037,6036),(7034,'E',6038,6037),(7035,'E',6039,6038),(7036,'E',6040,6039),(7037,'E',6041,6040),(7038,'E',6042,6041),(7039,'E',6043,6042),(7040,'E',6044,6043),(7041,'E',6045,6044),(7042,'E',6046,6045),(7043,'E',6047,6046),(7044,'E',6048,6047),(7045,'E',6049,6048),(7046,'E',6050,6049),(7047,'E',6051,6050),(7048,'E',6052,6051),(7049,'E',6053,6052),(7050,'E',6054,6053),(7051,'E',6055,6054),(7052,'E',6056,6055),(7053,'E',6057,6056),(7054,'E',6058,6057),(7055,'E',6059,6058),(7056,'E',6060,6059),(7057,'E',6061,6060),(7058,'E',6062,6061),(7059,'E',6063,6062),(7060,'E',6064,6063),(7061,'E',6065,6064),(7062,'E',6066,6065),(7063,'E',6067,6066),(7064,'E',6068,6067),(7065,'E',6069,6068),(7066,'E',6070,6069),(7067,'E',6071,6070),(7068,'E',6072,6071),(7069,'E',6073,6072),(7070,'E',6074,6073),(7071,'E',6075,6074),(7072,'E',6076,6075),(7073,'E',6077,6076),(7074,'E',6078,6077),(7075,'E',6079,6078),(7076,'E',6080,6079),(7077,'E',6081,6080),(7078,'E',6082,6081),(7079,'E',6083,6082),(7080,'E',6084,6083),(7081,'E',6085,6084),(7082,'E',6086,6085),(7083,'E',6087,6086),(7084,'E',6088,6087),(7085,'E',6089,6088),(7086,'E',6090,6089),(7087,'E',6091,6090),(7088,'E',6092,6091),(7089,'E',6093,6092),(7090,'E',6094,6093),(7091,'E',6095,6094),(7092,'E',6096,6095),(7093,'E',6097,6096),(7094,'E',6098,6097),(7095,'E',6099,6098),(7096,'E',6100,6099),(7097,'E',6101,6100),(7098,'E',6102,6101),(7099,'E',6103,6102),(7100,'E',6104,6103),(7101,'E',6105,6104),(7102,'E',6106,6105),(7103,'E',6107,6106),(7104,'E',6108,6107),(7105,'E',6109,6108),(7106,'E',6110,6109),(7107,'E',6111,6110),(7108,'E',6112,6111),(7109,'E',6113,6112),(7110,'E',6114,6113),(7111,'E',6115,6114),(7112,'E',6116,6115),(7113,'E',6117,6116),(7114,'E',6118,6117),(7115,'E',6119,6118),(7116,'E',6120,6119),(7117,'E',6121,6120),(7118,'E',6122,6121),(7119,'E',6123,6122),(7120,'E',6124,6123),(7121,'E',6125,6124),(7122,'E',6126,6125),(7123,'E',6127,6126),(7124,'E',6128,6127),(7125,'E',6129,6128),(7126,'E',6130,6129),(7127,'E',6131,6130),(7128,'E',6132,6131),(7129,'E',6133,6132),(7130,'E',6134,6133),(7131,'E',6135,6134),(7132,'E',6136,6135),(7133,'E',6137,6136),(7134,'E',6138,6137),(7135,'E',6139,6138),(7136,'E',6140,6139),(7137,'E',6141,6140),(7138,'E',6142,6141),(7139,'E',6143,6142),(7140,'E',6144,6143),(7141,'E',6145,6144),(7142,'E',6146,6145),(7143,'E',6147,6146),(7144,'E',6148,6147),(7145,'E',6149,6148),(7146,'E',6150,6149),(7147,'E',6151,6150),(7148,'E',6152,6151),(7149,'E',6153,6152),(7150,'E',6154,6153),(7151,'E',6155,6154),(7152,'E',6156,6155),(7153,'E',6157,6156),(7154,'E',6158,6157),(7155,'E',6159,6158),(7156,'E',6160,6159),(7157,'E',6161,6160),(7158,'E',6162,6161),(7159,'E',6163,6162),(7160,'E',6164,6163),(7161,'E',6165,6164),(7162,'E',6166,6165),(7163,'E',6167,6166),(7164,'E',6168,6167),(7165,'E',6169,6168),(7166,'E',6170,6169),(7167,'E',6171,6170),(7168,'E',6172,6171),(7169,'E',6173,6172),(7170,'E',6174,6173),(7171,'E',6175,6174),(7172,'E',6176,6175),(7173,'E',6177,6176),(7174,'E',6178,6177),(7175,'E',6179,6178),(7176,'E',6180,6179),(7177,'E',6181,6180),(7178,'E',6182,6181),(7179,'E',6183,6182),(7180,'E',6184,6183),(7181,'E',6185,6184),(7182,'E',6186,6185),(7183,'E',6187,6186),(7184,'E',6188,6187),(7185,'E',6189,6188),(7186,'E',6190,6189),(7187,'E',6191,6190),(7188,'E',6192,6191),(7189,'E',6193,6192),(7190,'E',6194,6193),(7191,'E',6195,6194),(7192,'E',6196,6195),(7193,'E',6197,6196),(7194,'E',6198,6197),(7195,'E',6199,6198),(7196,'E',6200,6199),(7197,'E',6201,6200),(7198,'E',6202,6201),(7199,'E',6203,6202),(7200,'E',6204,6203),(7201,'E',6205,6204),(7202,'E',6206,6205),(7203,'E',6207,6206),(7204,'E',6208,6207),(7205,'E',6209,6208),(7206,'E',6210,6209),(7207,'E',6211,6210),(7208,'E',6212,6211),(7209,'E',6213,6212),(7210,'E',6214,6213),(7211,'E',6215,6214),(7212,'E',6216,6215),(7213,'E',6217,6216),(7214,'E',6218,6217),(7215,'E',6219,6218),(7216,'E',6220,6219),(7217,'E',6221,6220),(7218,'E',6222,6221),(7219,'E',6223,6222),(7220,'E',6224,6223),(7221,'E',6225,6224),(7222,'E',6226,6225),(7223,'E',6227,6226),(7224,'E',6228,6227),(7225,'E',6229,6228),(7226,'E',6230,6229),(7227,'E',6231,6230),(7228,'E',6232,6231),(7229,'E',6233,6232),(7230,'E',6234,6233),(7231,'E',6235,6234),(7232,'E',6236,6235),(7233,'E',6237,6236),(7234,'E',6238,6237),(7235,'E',6239,6238),(7236,'E',6240,6239),(7237,'E',6241,6240),(7238,'E',6242,6241),(7239,'E',6243,6242),(7248,'E',6252,6251),(7249,'E',6253,6252),(7250,'E',6254,6253),(7251,'E',6255,6254),(7252,'E',6256,6255),(7253,'E',6257,6256),(7254,'E',6258,6257),(7255,'E',6259,6258),(7256,'E',6260,6259),(7257,'E',6261,6260),(7258,'E',6262,6261),(7259,'E',6263,6262),(7260,'E',6264,6263),(7261,'E',6265,6264),(7262,'E',6266,6265),(7263,'E',6267,6266),(7264,'E',6268,6267),(7265,'E',6269,6268),(7266,'E',6270,6269),(7267,'E',6271,6270),(7268,'E',6272,6271),(7269,'E',6273,6272),(7270,'E',6274,6273),(7271,'E',6275,6274),(7272,'E',6276,6275),(7273,'E',6277,6276),(7274,'E',6278,6277),(7275,'E',6279,6278),(7276,'E',6280,6279),(7277,'E',6281,6280),(7278,'E',6282,6281),(7279,'E',6283,6282),(7280,'E',6284,6283),(7281,'E',6285,6284),(7282,'E',6286,6285),(7283,'E',6287,6286),(7284,'E',6288,6287),(7285,'E',6289,6288),(7286,'E',6290,6289),(7287,'E',6291,6290),(7288,'E',6292,6291),(7289,'E',6293,6292),(7290,'E',6294,6293),(7291,'E',6295,6294),(7292,'E',6296,6295),(7293,'E',6297,6296),(7294,'E',6298,6297),(7295,'E',6299,6298),(7296,'E',6300,6299),(7297,'E',6301,6300),(7298,'E',6302,6301),(7299,'E',6303,6302),(7300,'E',6304,6303),(7301,'E',6305,6304),(7302,'E',6306,6305),(7303,'E',6307,6306),(7304,'E',6308,6307),(7305,'E',6309,6308),(7306,'E',6310,6309),(7307,'E',6311,6310),(7308,'E',6312,6311),(7309,'E',6313,6312),(7310,'E',6314,6313),(7311,'E',6315,6314),(7312,'E',6316,6315),(7313,'E',6317,6316),(7314,'E',6318,6317),(7315,'E',6319,6318),(7316,'E',6320,6319),(7317,'E',6321,6320),(7318,'E',6322,6321),(7319,'E',6323,6322),(7320,'E',6324,6323),(7321,'E',6325,6324),(7322,'E',6326,6325),(7323,'E',6327,6326),(7324,'E',6328,6327),(7325,'E',6329,6328),(7326,'E',6330,6329),(7327,'E',6331,6330),(7328,'E',6332,6331),(7329,'E',6333,6332),(7330,'E',6334,6333),(7331,'E',6335,6334),(7332,'E',6336,6335),(7333,'E',6337,6336),(7334,'E',6338,6337),(7335,'E',6339,6338),(7336,'E',6340,6339),(7337,'E',6341,6340),(7338,'E',6342,6341),(7339,'E',6343,6342),(7340,'E',6344,6343),(7341,'E',6345,6344),(7342,'E',6346,6345),(7343,'E',6347,6346),(7344,'E',6348,6347),(7345,'E',6349,6348),(7346,'E',6350,6349),(7347,'E',6351,6350),(7348,'E',6352,6351),(7349,'E',6353,6352),(7350,'E',6354,6353),(7351,'E',6355,6354),(7352,'E',6356,6355),(7353,'E',6357,6356),(7354,'E',6358,6357),(7355,'E',6359,6358),(7356,'E',6360,6359),(7357,'E',6361,6360),(7358,'E',6362,6361),(7359,'E',6363,6362),(7360,'E',6364,6363),(7361,'E',6365,6364),(7362,'E',6366,6365),(7363,'E',6367,6366),(7364,'E',6368,6367),(7365,'E',6369,6368),(7366,'E',6370,6369),(7367,'E',6371,6370),(7368,'E',6372,6371),(7369,'E',6373,6372),(7370,'E',6374,6373),(7371,'E',6375,6374),(7372,'E',6376,6375),(7373,'E',6377,6376),(7374,'E',6378,6377),(7375,'E',6379,6378),(7376,'E',6380,6379),(7377,'E',6381,6380),(7378,'E',6382,6381),(7379,'E',6383,6382),(7380,'E',6384,6383),(7381,'E',6385,6384),(7382,'E',6386,6385),(7383,'E',6387,6386),(7384,'E',6388,6387),(7385,'E',6389,6388),(7386,'E',6390,6389),(7387,'E',6391,6390),(7388,'E',6392,6391),(7389,'E',6393,6392),(7390,'E',6394,6393),(7391,'E',6395,6394),(7392,'E',6396,6395),(7393,'E',6397,6396),(7394,'E',6398,6397),(7395,'E',6399,6398),(7396,'E',6400,6399),(7397,'E',6401,6400),(7398,'E',6402,6401),(7399,'E',6403,6402),(7400,'E',6404,6403),(7401,'E',6405,6404),(7402,'E',6406,6405),(7403,'E',6407,6406),(7404,'E',6408,6407),(7405,'E',6409,6408),(7406,'E',6410,6409),(7407,'E',6411,6410),(7408,'E',6412,6411),(7409,'E',6413,6412),(7410,'E',6414,6413),(7411,'E',6415,6414),(7412,'E',6416,6415),(7413,'E',6417,6416),(7414,'E',6418,6417),(7415,'E',6419,6418),(7416,'E',6420,6419),(7417,'E',6421,6420),(7418,'E',6422,6421),(7419,'E',6423,6422),(7420,'E',6424,6423),(7421,'E',6425,6424),(7422,'E',6426,6425),(7423,'E',6427,6426),(7424,'E',6428,6427),(7425,'E',6429,6428),(7426,'E',6430,6429),(7427,'E',6431,6430),(7428,'E',6432,6431),(7429,'E',6433,6432),(7430,'E',6434,6433),(7431,'E',6435,6434),(7432,'E',6436,6435),(7433,'E',6437,6436),(7434,'E',6438,6437),(7435,'E',6439,6438),(7436,'E',6440,6439),(7437,'E',6441,6440),(7438,'E',6442,6441),(7439,'E',6443,6442),(7440,'E',6444,6443),(7441,'E',6445,6444),(7442,'E',6446,6445),(7443,'E',6447,6446),(7444,'E',6448,6447),(7445,'E',6449,6448),(7446,'E',6450,6449),(7447,'E',6451,6450),(7448,'E',6452,6451),(7449,'E',6453,6452),(7450,'E',6454,6453),(7451,'E',6455,6454),(7452,'E',6456,6455),(7453,'E',6457,6456),(7454,'E',6458,6457),(7455,'E',6459,6458),(7456,'E',6460,6459),(7457,'E',6461,6460),(7458,'E',6462,6461),(7459,'E',6463,6462),(7460,'E',6464,6463),(7461,'E',6465,6464),(7462,'E',6466,6465),(7463,'E',6467,6466),(7464,'E',6468,6467),(7465,'E',6469,6468),(7466,'E',6470,6469),(7467,'E',6471,6470),(7468,'E',6472,6471),(7469,'E',6473,6472),(7470,'E',6474,6473),(7471,'E',6475,6474),(7472,'E',6476,6475),(7473,'E',6477,6476),(7474,'E',6478,6477),(7475,'E',6479,6478),(7476,'E',6480,6479),(7477,'E',6481,6480),(7478,'E',6482,6481),(7479,'E',6483,6482),(7480,'E',6484,6483),(7481,'E',6485,6484),(7482,'E',6486,6485),(7483,'E',6487,6486),(7484,'E',6488,6487),(7485,'E',6489,6488),(7486,'E',6490,6489),(7487,'E',6491,6490),(7488,'E',6492,6491),(7489,'E',6493,6492),(7490,'E',6494,6493),(7491,'E',6495,6494),(7492,'E',6496,6495),(7493,'E',6497,6496),(7494,'E',6498,6497),(7495,'E',6499,6498),(7496,'E',6500,6499),(7497,'E',6501,6500),(7498,'E',6502,6501),(7499,'E',6503,6502),(7500,'E',6504,6503),(7501,'E',6505,6504),(7502,'E',6506,6505),(7503,'E',6507,6506),(7504,'E',6508,6507),(7505,'E',6509,6508),(7506,'E',6510,6509),(7507,'E',6511,6510),(7508,'E',6512,6511),(7509,'E',6513,6512),(7510,'E',6514,6513),(7511,'E',6515,6514),(7512,'E',6516,6515),(7513,'E',6517,6516),(7514,'E',6518,6517),(7515,'E',6519,6518),(7516,'E',6520,6519),(7517,'E',6521,6520),(7518,'E',6522,6521),(7519,'E',6523,6522),(7520,'E',6524,6523),(7521,'E',6525,6524),(7522,'E',6526,6525),(7523,'E',6527,6526),(7524,'E',6528,6527),(7525,'E',6529,6528),(7526,'E',6530,6529),(7527,'E',6531,6530),(7528,'E',6532,6531),(7529,'E',6533,6532),(7530,'E',6534,6533),(7531,'E',6535,6534),(7532,'E',6536,6535),(7533,'E',6537,6536),(7534,'E',6538,6537),(7535,'E',6539,6538),(7536,'E',6540,6539),(7537,'E',6541,6540),(7538,'E',6542,6541),(7539,'E',6543,6542),(7540,'E',6544,6543),(7541,'E',6545,6544),(7542,'E',6546,6545),(7543,'E',6547,6546),(7544,'E',6548,6547),(7545,'E',6549,6548),(7546,'E',6550,6549),(7547,'E',6551,6550),(7548,'E',6552,6551),(7549,'E',6553,6552),(7550,'E',6554,6553),(7551,'E',6555,6554),(7552,'E',6556,6555),(7553,'E',6557,6556),(7554,'E',6558,6557),(7555,'E',6559,6558),(7556,'E',6560,6559),(7557,'E',6561,6560),(7558,'E',6562,6561),(7559,'E',6563,6562),(7560,'E',6564,6563),(7561,'E',6565,6564),(7562,'E',6566,6565),(7563,'E',6567,6566),(7564,'E',6568,6567),(7565,'E',6569,6568),(7566,'E',6570,6569),(7567,'E',6571,6570),(7568,'E',6572,6571),(7569,'E',6573,6572),(7570,'E',6574,6573),(7571,'E',6575,6574),(7572,'E',6576,6575),(7573,'E',6577,6576),(7574,'E',6578,6577),(7575,'E',6579,6578),(7576,'E',6580,6579),(7577,'E',6581,6580),(7578,'E',6582,6581),(7579,'E',6583,6582),(7580,'E',6584,6583),(7581,'E',6585,6584),(7582,'E',6586,6585),(7583,'E',6587,6586),(7584,'E',6588,6587),(7585,'E',6589,6588),(7586,'E',6590,6589),(7587,'E',6591,6590),(7588,'E',6592,6591),(7589,'E',6593,6592),(7590,'E',6594,6593),(7591,'E',6595,6594),(7592,'E',6596,6595),(7593,'E',6597,6596),(7594,'E',6598,6597),(7595,'E',6599,6598),(7596,'E',6600,6599),(7597,'E',6601,6600),(7598,'E',6602,6601),(7599,'E',6603,6602),(7600,'E',6604,6603),(7601,'E',6605,6604),(7602,'E',6606,6605),(7603,'E',6607,6606),(7604,'E',6608,6607),(7605,'E',6609,6608),(7606,'E',6610,6609),(7607,'E',6611,6610),(7608,'E',6612,6611),(7609,'E',6613,6612),(7610,'E',6614,6613),(7611,'E',6615,6614),(7612,'E',6616,6615),(7613,'E',6617,6616),(7614,'E',6618,6617),(7615,'E',6619,6618),(7616,'E',6620,6619),(7617,'E',6621,6620),(7618,'E',6622,6621),(7619,'E',6623,6622),(7620,'E',6624,6623),(7621,'E',6625,6624),(7622,'E',6626,6625),(7623,'E',6627,6626),(7624,'E',6628,6627),(7625,'E',6629,6628),(7626,'E',6630,6629),(7627,'E',6631,6630),(7628,'E',6632,6631),(7629,'E',6633,6632),(7630,'E',6634,6633),(7631,'E',6635,6634),(7632,'E',6636,6635),(7633,'E',6637,6636),(7634,'E',6638,6637),(7635,'E',6639,6638),(7636,'E',6640,6639),(7637,'E',6641,6640),(7638,'E',6642,6641),(7639,'E',6643,6642),(7640,'E',6644,6643),(7641,'E',6645,6644),(7642,'E',6646,6645),(7643,'E',6647,6646),(7644,'E',6648,6647),(7645,'E',6649,6648),(7646,'E',6650,6649),(7647,'E',6651,6650),(7648,'E',6652,6651),(7649,'E',6653,6652),(7650,'E',6654,6653),(7651,'E',6655,6654),(7652,'E',6656,6655),(7653,'E',6657,6656),(7654,'E',6658,6657),(7655,'E',6659,6658),(7656,'E',6660,6659),(7657,'E',6661,6660),(7658,'E',6662,6661),(7659,'E',6663,6662),(7660,'E',6664,6663),(7661,'E',6665,6664),(7662,'E',6666,6665),(7663,'E',6667,6666),(7664,'E',6668,6667),(7665,'E',6669,6668),(7666,'E',6670,6669),(7667,'E',6671,6670),(7668,'E',6672,6671),(7669,'E',6673,6672),(7670,'E',6674,6673),(7671,'E',6675,6674),(7672,'E',6676,6675),(7673,'E',6677,6676),(7674,'E',6678,6677),(7675,'E',6679,6678),(7676,'E',6680,6679),(7677,'E',6681,6680),(7678,'E',6682,6681),(7679,'E',6683,6682),(7680,'E',6684,6683),(7681,'E',6685,6684),(7682,'E',6686,6685),(7683,'E',6687,6686),(7684,'E',6688,6687),(7685,'E',6689,6688),(7686,'E',6690,6689),(7687,'E',6691,6690),(7688,'E',6692,6691),(7689,'E',6693,6692),(7690,'E',6694,6693),(7691,'E',6695,6694),(7692,'E',6696,6695),(7693,'E',6697,6696),(7694,'E',6698,6697),(7695,'E',6699,6698),(7696,'E',6700,6699),(7697,'E',6701,6700),(7698,'E',6702,6701),(7699,'E',6703,6702),(7700,'E',6704,6703),(7701,'E',6705,6704),(7702,'E',6706,6705),(7703,'E',6707,6706),(7704,'E',6708,6707),(7705,'E',6709,6708),(7706,'E',6710,6709),(7707,'E',6711,6710),(7708,'E',6712,6711),(7709,'E',6713,6712),(7710,'E',6714,6713),(7711,'E',6715,6714),(7712,'E',6716,6715),(7713,'E',6717,6716),(7714,'E',6718,6717),(7715,'T',2818,6717),(7716,'E',6719,6718),(7717,'T',2819,6718),(7718,'E',6720,6719),(7719,'T',2820,6719),(7720,'E',6721,6720),(7721,'E',6722,6721),(7722,'E',6723,6722),(7723,'T',2828,6722),(7724,'E',6724,6723),(7725,'E',6725,6724),(7726,'E',6726,6725),(7727,'E',6727,6726),(7728,'E',6728,6727),(7729,'F',516,944),(7730,'F',517,5676),(7731,'E',6729,6728),(7732,'E',6730,6729),(7733,'E',6731,6730),(7734,'F',518,5061),(7735,'E',6732,6731),(7737,'E',6733,6732),(7738,'E',6734,6733),(7741,'F',526,4713),(7742,'F',527,3513),(7743,'F',528,4718),(7744,'F',529,4685),(7745,'E',6735,6734),(7746,'F',530,5454),(7747,'E',6736,6735),(7748,'F',531,6734),(7750,'F',534,2187),(7751,'F',535,6735),(7753,'E',6737,6736),(7754,'E',6738,6737),(7755,'E',6739,6738),(7756,'F',537,3030),(7757,'F',538,6733),(7759,'F',540,1239),(7760,'F',541,1221),(7761,'F',542,3616),(7762,'F',543,6256),(7763,'F',544,3840),(7764,'F',545,5127),(7765,'F',546,3275),(7766,'F',547,1233),(7767,'F',548,3831),(7768,'E',6740,6739),(7769,'F',549,4676),(7770,'F',550,4666),(7771,'F',551,4993),(7772,'F',552,3104),(7773,'F',553,4682),(7774,'F',554,6739),(7775,'F',555,4663),(7776,'F',556,4751),(7777,'F',559,964),(7778,'E',6741,6740),(7779,'F',560,6740),(7780,'F',561,4216),(7781,'F',562,370),(7782,'F',565,1982),(7783,'F',566,3545),(7784,'F',567,3376),(7785,'F',568,3103),(7786,'F',569,3029),(7787,'F',572,3625),(7788,'F',603,967),(7789,'F',605,4710),(7790,'F',606,3679),(7792,'F',611,962),(7793,'F',612,4225),(7794,'F',613,5243),(7795,'F',614,4390),(7796,'F',616,5566),(7797,'F',617,3537),(7798,'F',619,3237),(7799,'T',2908,6479),(7800,'T',2909,6477),(7801,'T',2910,5843),(7802,'T',2911,6514),(7803,'T',2912,6504),(7804,'T',2913,6391),(7805,'T',2914,6649),(7806,'T',2915,1223),(7807,'T',2916,6540),(7808,'T',2917,6505),(7809,'T',2918,6441),(7810,'T',2919,6386),(7811,'T',2920,6392),(7812,'T',2921,6469),(7813,'T',2922,6395),(7814,'T',2923,5839),(7815,'T',2924,6507),(7816,'T',2925,5706),(7817,'T',2926,6533),(7818,'T',2927,6543),(7819,'T',2928,6482),(7820,'T',2929,6382),(7821,'T',2930,5867),(7822,'F',620,5867),(7823,'F',621,6520),(7824,'F',622,5062),(7825,'F',623,3250),(7826,'T',2931,6306),(7827,'F',624,4376),(7828,'T',2932,4376),(7829,'F',627,5610),(7830,'T',2933,5610),(7831,'E',6742,6741),(7832,'T',2934,6741),(7833,'T',2935,6396),(7834,'F',628,6620),(7835,'T',2936,2096),(7836,'F',629,5502),(7837,'F',630,2096),(7838,'T',2937,5502),(7839,'F',631,3212),(7840,'F',632,5510),(7841,'F',633,3023),(7842,'F',634,6396),(7843,'F',635,3384),(7844,'F',636,3540),(7845,'F',637,3115),(7846,'F',638,3498),(7847,'F',639,6032),(7848,'F',640,3058),(7849,'F',641,3686),(7850,'T',2938,3686),(7851,'F',642,5058),(7852,'F',645,3826),(7853,'F',646,4221),(7854,'F',647,5248),(7855,'F',648,3006),(7856,'T',2939,1236),(7857,'F',650,4721),(7858,'T',2940,6465),(7859,'T',2941,6521),(7860,'E',6743,6742),(7861,'T',2942,6742),(7862,'T',2943,5244),(7863,'F',653,5112),(7864,'F',654,5244),(7865,'F',656,1212),(7866,'F',658,6400),(7867,'F',660,6465),(7869,'F',662,3500),(7870,'T',2944,6677),(7871,'F',665,2623),(7872,'F',666,6677),(7873,'F',668,2095),(7874,'F',669,4237),(7875,'T',2945,6471),(7876,'E',6744,6743),(7878,'T',2946,5642),(7879,'T',2947,5473),(7880,'T',2948,5473),(7881,'F',676,5473),(7882,'E',6745,6744),(7883,'E',6746,6745),(7884,'E',6747,6746),(7885,'E',6748,6747),(7886,'T',2949,5166),(7887,'F',680,5166),(7888,'F',681,3251),(7889,'F',682,3535),(7891,'T',2950,6559),(7893,'T',2951,6604),(7894,'F',685,6604),(7897,'E',6749,6748),(7898,'F',689,392),(7899,'F',690,961),(7900,'F',691,1235),(7901,'F',692,3280),(7902,'F',693,3256),(7903,'F',697,3824),(7904,'F',698,5128),(7905,'E',6750,6749),(7906,'T',2952,6749),(7907,'E',6751,6750),(7908,'T',2953,6750),(7909,'T',2954,5373),(7910,'F',702,5373),(7911,'F',703,3525),(7912,'F',705,3501),(7913,'F',706,58),(7914,'F',707,1265),(7915,'F',708,3504),(7916,'F',709,2303),(7917,'F',710,3226),(7918,'F',711,4234),(7919,'T',2955,5869),(7920,'E',6752,6751),(7921,'E',6753,6752),(7922,'E',6754,6753),(7923,'E',6755,6754),(7924,'E',6756,6755),(7925,'E',6757,6756),(7926,'T',2956,6756),(7927,'E',6758,6757),(7928,'T',2957,6757),(7929,'E',6759,6758),(7930,'T',2958,6758),(7931,'E',6760,6759),(7932,'E',6761,6760),(7933,'E',6762,6761),(7935,'F',715,3621),(7936,'E',6763,6762),(7937,'T',2959,6762),(7939,'F',717,5869),(7940,'F',718,3248),(7941,'F',719,2195),(7942,'T',2960,6397),(7943,'F',720,6397),(7944,'F',721,3255),(7945,'F',724,412),(7946,'T',2961,5550),(7947,'E',6764,6763),(7948,'T',2962,6763),(7949,'F',727,6763),(7950,'T',2963,5243),(7951,'F',733,6081),(7952,'T',2964,6081),(7953,'T',2965,6459),(7954,'E',6765,6764),(7955,'F',735,6764),(7956,'E',6766,6765),(7957,'T',2966,6765),(7958,'F',736,6765),(7959,'T',2967,965),(7960,'F',737,3547),(7961,'F',738,943),(7962,'E',6767,6766),(7963,'T',2968,6766),(7964,'E',6768,6767),(7965,'T',2969,6767),(7966,'E',6769,6768),(7967,'T',2970,6768),(7968,'T',2971,6768),(7969,'F',742,6768),(7970,'F',743,5040),(7971,'T',2972,5226),(7972,'F',745,5882),(7973,'F',746,4220),(7974,'F',747,1220),(7975,'E',6770,6769),(7976,'T',2973,6769),(7977,'F',748,6769),(7978,'F',749,6015),(7979,'F',750,2910),(7980,'F',751,3509),(7981,'F',752,6767),(7982,'F',753,3252),(7983,'E',6771,6770),(7984,'F',757,5704),(7985,'F',758,6766),(7986,'T',2974,4443),(7987,'T',2975,5976),(7988,'T',2976,6571),(7989,'F',761,5837),(7990,'F',766,6641),(7991,'F',767,3236),(7992,'F',769,3375),(7993,'F',770,3087),(7994,'F',771,3114),(7995,'F',772,3249),(7996,'F',773,3370),(7997,'F',775,6464),(7998,'F',776,3572),(7999,'F',777,5998),(8000,'F',778,6571),(8001,'F',779,5976),(8002,'E',6772,6771),(8003,'F',786,5151),(8004,'F',787,4740),(8005,'F',788,4661),(8006,'E',6773,6772),(8007,'E',6774,6773),(8008,'T',2977,6773),(8009,'T',2978,6773),(8010,'T',2979,6438),(8012,'F',795,6438),(8013,'F',796,6338),(8014,'F',797,4689),(8015,'F',799,5363),(8016,'E',6775,6774),(8017,'E',6776,6775),(8018,'T',2980,6775),(8019,'F',800,2831),(8020,'F',801,4252),(8021,'F',802,4726),(8022,'F',803,6773),(8023,'E',6777,6776),(8024,'T',2981,6776),(8025,'E',6778,6777),(8026,'T',2982,6777),(8027,'T',2983,6743),(8028,'E',6779,6778),(8029,'F',808,3099),(8031,'F',810,4723),(8032,'F',811,6290),(8033,'F',812,4654),(8035,'F',814,3396),(8036,'F',815,3725),(8037,'F',816,3689),(8038,'E',6780,6779),(8039,'T',2984,6779),(8040,'E',6781,6780),(8041,'T',2985,6780),(8042,'E',6782,6781),(8043,'T',2986,6781),(8044,'F',817,3539),(8045,'E',6783,6782),(8046,'T',2987,6782),(8047,'E',6784,6783),(8048,'T',2988,6783),(8049,'T',2989,4346),(8050,'E',6785,6784),(8051,'E',6786,6785),(8052,'T',2990,6785),(8053,'E',6787,6786),(8054,'T',2991,6786),(8055,'F',818,6786),(8056,'F',819,6779),(8057,'T',2992,6748),(8058,'T',2993,6748),(8059,'E',6788,6787),(8060,'T',2994,6787),(8061,'E',6789,6788),(8062,'T',2995,6788),(8063,'T',2996,5690),(8064,'F',824,6780),(8065,'F',825,6778),(8066,'E',6790,6789),(8067,'T',2997,6789),(8068,'E',6791,6790),(8069,'F',827,6776),(8070,'T',2998,6069),(8071,'F',828,6069),(8072,'F',829,6781),(8073,'F',831,6782),(8074,'F',832,6775),(8075,'F',833,6146),(8076,'F',834,6787),(8077,'F',835,6788),(8078,'E',6792,6791),(8079,'T',2999,6791),(8080,'F',837,5690),(8081,'F',838,4223),(8082,'F',839,6789),(8083,'F',841,4346),(8085,'F',843,6785),(8086,'F',844,6791),(8087,'F',845,3575),(8088,'F',847,934),(8089,'E',6793,6792),(8090,'T',3000,6792),(8091,'E',6794,6793),(8092,'T',3001,6793),(8093,'E',6795,6794),(8094,'T',3002,6794),(8095,'F',850,6792),(8097,'E',6796,6795),(8098,'E',6797,6796),(8099,'T',3003,6796),(8100,'F',857,6796),(8101,'T',3004,967),(8102,'F',863,3044),(8103,'F',865,6073),(8104,'F',866,4246),(8105,'T',3005,1050),(8106,'T',3006,1050),(8107,'F',867,5012),(8108,'T',3007,5012),(8109,'E',6798,6797),(8110,'T',3008,6797),(8111,'F',874,5462),(8112,'T',3009,5462),(8113,'F',875,2148),(8114,'E',6799,6798),(8115,'T',3010,6798),(8116,'E',6800,6799),(8117,'T',3011,6799),(8118,'T',3012,6418),(8120,'E',6801,6800),(8121,'T',3013,6800),(8122,'F',878,6800),(8123,'F',879,3430),(8124,'T',3014,3430),(8125,'F',881,5059),(8126,'T',3015,6333),(8127,'T',3016,2291),(8128,'F',886,5586),(8129,'F',887,401),(8130,'F',888,5114),(8131,'F',889,373),(8132,'F',890,963),(8133,'E',6802,6801),(8134,'T',3017,6801),(8135,'F',891,6801),(8136,'F',892,5055),(8137,'F',893,3056),(8138,'F',894,6370),(8139,'F',895,1893),(8140,'F',896,5580),(8141,'E',6803,6802),(8142,'F',897,6802),(8143,'F',898,5792),(8144,'F',899,4195),(8145,'T',3018,1104),(8146,'T',3019,5792),(8147,'T',3020,5792),(8152,'T',3021,5768),(8158,'F',915,4667),(8159,'F',916,5768),(8160,'T',3022,5671),(8161,'F',917,5671),(8162,'T',3023,5639),(8163,'F',918,5639),(8164,'T',3024,5753),(8165,'F',919,5753),(8166,'T',3025,5744),(8167,'F',920,5744),(8168,'F',923,5393),(8169,'T',3026,5393),(8170,'T',3027,4144),(8171,'F',924,3673),(8172,'E',6804,6803),(8173,'T',3028,6803),(8174,'F',929,6803),(8175,'T',3029,5800),(8176,'F',930,5800),(8177,'T',3030,5899),(8178,'F',931,5899),(8179,'T',3031,3766),(8180,'F',932,3766),(8181,'T',3032,5652),(8182,'F',933,5652),(8183,'T',3033,5796),(8184,'F',934,5796),(8185,'T',3034,5681),(8186,'F',935,5681),(8187,'F',936,3678),(8188,'E',6805,6804),(8189,'T',3035,6804),(8190,'T',3036,5853),(8191,'F',941,5853),(8192,'T',3037,5717),(8193,'F',942,5717),(8194,'T',3038,5666),(8195,'F',943,5666),(8196,'T',3039,5703),(8197,'F',944,5703),(8198,'T',3040,5775),(8199,'F',945,5775),(8200,'T',3041,4253),(8201,'F',946,4253),(8202,'F',949,5060),(8203,'E',6806,6805),(8204,'T',3042,6805),(8205,'F',950,6805),(8206,'T',3043,5755),(8207,'F',951,5755),(8208,'F',952,5257),(8209,'T',3044,6566),(8210,'T',3045,6388),(8211,'T',3046,6419),(8212,'T',3047,5698),(8213,'F',953,5698),(8214,'T',3048,6413),(8215,'T',3049,5510),(8216,'T',3050,5861),(8217,'T',3051,5641),(8218,'F',954,5641),(8219,'T',3052,5721),(8220,'T',3053,5725),(8221,'F',955,5725),(8222,'T',3054,1120),(8223,'E',6807,6806),(8224,'T',3055,6806),(8225,'E',6808,6807),(8226,'T',3056,6807),(8227,'T',3057,6394),(8228,'T',3058,6398),(8229,'T',3059,6586),(8230,'T',3060,5633),(8231,'F',956,5633),(8232,'T',3061,5880),(8233,'T',3062,5991),(8234,'T',3063,5949),(8235,'T',3064,5667),(8236,'T',3065,6442),(8237,'T',3066,6487),(8238,'T',3067,6445),(8239,'T',3068,6445),(8240,'T',3069,5752),(8241,'T',3070,6389),(8242,'T',3071,6390),(8243,'T',3072,6443),(8244,'T',3073,6476),(8245,'T',3074,5895),(8246,'T',3075,6428),(8247,'T',3076,5782),(8248,'T',3077,6558),(8249,'T',3078,6515),(8250,'F',960,3229),(8251,'T',3079,6405),(8252,'T',3080,5240),(8253,'T',3081,6599),(8254,'T',3082,6556),(8255,'T',3083,3720),(8256,'F',961,3720),(8257,'T',3084,5823),(8258,'F',962,5823),(8259,'T',3085,5822),(8260,'F',963,5822),(8261,'T',3086,5738),(8262,'F',964,5738),(8263,'T',3087,5737),(8264,'F',965,5737),(8265,'T',3088,5668),(8266,'T',3089,5668),(8267,'F',966,5668),(8268,'T',3090,5936),(8269,'F',967,5936),(8270,'T',3091,5684),(8271,'F',968,5684),(8272,'T',3092,5704),(8273,'T',3093,5776),(8274,'T',3094,5635),(8275,'T',3095,90),(8276,'T',3096,5816),(8277,'T',3097,6478),(8278,'T',3098,6078),(8279,'T',3099,6458),(8280,'T',3100,6415),(8281,'T',3101,5832),(8282,'T',3102,6520),(8283,'T',3103,6519),(8284,'T',3104,6373),(8285,'T',3105,5809),(8286,'T',3106,5765),(8287,'F',969,5765),(8288,'T',3107,6641),(8289,'T',3108,6655),(8290,'T',3109,5777),(8291,'T',3110,6409),(8292,'T',3111,5713),(8293,'T',3112,6484),(8294,'T',3113,6036),(8295,'T',3114,6541),(8296,'T',3115,5644),(8297,'T',3116,5761),(8298,'T',3117,6417),(8299,'T',3118,5845),(8300,'T',3119,6689),(8301,'T',3120,6061),(8302,'T',3121,5887),(8303,'T',3122,6004),(8304,'T',3123,6456),(8305,'T',3124,6457),(8306,'T',3125,6457),(8307,'T',3126,5888),(8308,'T',3127,5876),(8309,'T',3128,5151),(8310,'T',3129,5708),(8311,'T',3130,6440),(8312,'T',3131,4560),(8313,'T',3132,5697),(8314,'T',3133,6576),(8315,'T',3134,5674),(8316,'T',3135,6464),(8317,'T',3136,6501),(8318,'T',3137,2910),(8319,'T',3138,6479),(8320,'T',3139,5931),(8321,'T',3140,5778),(8322,'T',3141,6402),(8323,'T',3142,6433),(8324,'T',3143,6485),(8325,'T',3144,1760),(8326,'T',3145,5939),(8327,'T',3146,6455),(8328,'T',3147,5634),(8329,'T',3148,6401),(8330,'T',3149,6368),(8331,'T',3150,6368),(8332,'T',3151,6399),(8333,'T',3152,920),(8334,'T',3153,920),(8335,'T',3154,5850),(8336,'T',3155,6467),(8337,'T',3156,6091),(8338,'T',3157,5927),(8339,'T',3158,5743),(8340,'F',970,5743),(8341,'E',6809,6808),(8342,'T',3159,6808),(8343,'T',3160,5628),(8344,'T',3161,5844),(8345,'T',3162,3284),(8346,'F',971,3284),(8347,'F',972,5670),(8348,'T',3163,5670),(8349,'T',3164,5900),(8350,'T',3165,3267),(8351,'F',973,3267),(8352,'T',3166,6001),(8353,'T',3167,6414),(8354,'T',3168,5637),(8355,'F',974,5637),(8356,'T',3169,5673),(8357,'T',3170,5987),(8358,'F',975,5673),(8359,'T',3171,6427),(8360,'T',3172,6518),(8361,'T',3173,4832),(8362,'F',976,4832),(8363,'T',3174,6021),(8364,'T',3175,6624),(8365,'T',3176,6638),(8366,'T',3177,5819),(8367,'T',3178,5892),(8368,'T',3179,6367),(8369,'T',3180,6598),(8370,'T',3181,6403),(8371,'T',3182,6420),(8372,'T',3183,5701),(8373,'T',3184,5956),(8374,'T',3185,5840),(8375,'T',3186,6594),(8376,'T',3187,6486),(8377,'T',3188,6522),(8378,'T',3189,5245),(8379,'T',3190,5573),(8380,'T',3191,6591),(8381,'T',3192,6555),(8382,'T',3193,3104),(8383,'T',3194,6432),(8384,'T',3195,5811),(8385,'T',3196,6676),(8386,'T',3197,5705),(8387,'T',3198,5907),(8388,'T',3199,5617),(8389,'T',3200,6532),(8390,'T',3201,6561),(8391,'T',3202,6561),(8392,'T',3203,5933),(8393,'T',3204,6528),(8394,'T',3205,5813),(8395,'T',3206,5950),(8396,'T',3207,6411),(8397,'T',3208,6525),(8398,'T',3209,5707),(8399,'T',3210,3841),(8400,'T',3211,6530),(8401,'T',3212,5873),(8402,'F',980,5302),(8403,'T',3213,5302),(8404,'T',3214,6595),(8405,'T',3215,6547),(8406,'T',3216,6490),(8407,'T',3217,5787),(8408,'F',982,5787),(8409,'F',983,5910),(8410,'T',3218,5910),(8411,'T',3219,5910),(8412,'T',3220,5919),(8413,'F',984,5919),(8414,'T',3221,30),(8415,'F',985,30),(8416,'F',986,3034),(8417,'T',3222,5937),(8418,'T',3223,5937),(8419,'F',987,5937),(8420,'T',3224,6044),(8421,'F',988,6044),(8422,'T',3225,5700),(8423,'T',3226,5700),(8424,'F',989,5700),(8425,'T',3227,5726),(8427,'F',991,5726),(8428,'T',3228,6439),(8429,'T',3229,5803),(8430,'T',3230,5803),(8431,'F',992,5803),(8432,'F',994,5968),(8433,'T',3231,5996),(8434,'F',995,5996),(8435,'T',3232,5718),(8436,'T',3233,5718),(8437,'F',996,5718),(8438,'T',3234,5661),(8439,'F',997,5661),(8440,'T',3235,475),(8441,'F',998,475),(8442,'T',3236,4596),(8443,'T',3237,4596),(8444,'F',999,4596),(8445,'T',3238,6074),(8446,'F',1001,6074),(8447,'T',3239,5739),(8448,'F',1002,5739),(8449,'T',3240,5648),(8450,'F',1003,5648),(8451,'T',3241,5620),(8452,'F',1004,5620),(8453,'T',3242,5683),(8454,'F',1005,5683),(8455,'T',3243,5827),(8456,'F',1006,5827),(8457,'T',3244,5627),(8458,'F',1009,5627),(8459,'F',1010,5126),(8460,'E',6810,6809),(8461,'T',3245,6809),(8462,'F',1011,6809),(8463,'F',1012,6806),(8464,'T',3246,6020),(8465,'T',3247,6611),(8466,'T',3248,6549),(8467,'T',3249,5970),(8468,'T',3250,6475),(8469,'F',1014,6445),(8470,'F',1015,6566),(8471,'F',1016,6398),(8472,'F',1017,2719),(8473,'F',1018,6394),(8474,'F',1019,5880),(8475,'F',1020,954),(8476,'F',1021,6586),(8477,'F',1022,1120),(8478,'F',1023,5667),(8479,'F',1024,6413),(8480,'F',1025,6487),(8481,'F',1026,5861),(8482,'F',1027,6388),(8483,'F',1028,5721),(8484,'F',1034,6419),(8485,'F',1035,6442),(8486,'F',1036,6599),(8487,'F',1037,6556),(8488,'F',1038,6476),(8489,'F',1039,6443),(8490,'F',1040,5752),(8491,'F',1041,5240),(8492,'F',1042,6389),(8493,'F',1043,5642),(8494,'F',1044,5895),(8495,'F',1045,6558),(8496,'F',1046,6507),(8497,'F',1047,6428),(8498,'F',1048,6390),(8499,'F',1049,5782),(8500,'F',1050,6515),(8501,'F',1051,6540),(8502,'F',1052,6405),(8503,'F',1053,6501),(8504,'F',1058,5776),(8505,'F',1059,5635),(8506,'F',1060,6441),(8507,'F',1061,90),(8508,'F',1062,6478),(8509,'F',1063,6395),(8510,'F',1064,6078),(8511,'F',1065,5816),(8512,'F',1066,5809),(8513,'F',1068,6519),(8515,'F',1070,6392),(8516,'F',1072,6373),(8517,'F',1073,6415),(8518,'F',1074,5887),(8519,'F',1075,6541),(8520,'F',1076,6061),(8521,'F',1077,5777),(8523,'F',1079,5713),(8524,'F',1080,6409),(8525,'F',1081,6484),(8526,'F',1082,3028),(8527,'F',1083,5845),(8528,'F',1084,5839),(8529,'F',1085,5927),(8530,'F',1087,6689),(8531,'F',1089,5644),(8532,'F',1090,6555),(8533,'T',3251,6524),(8534,'T',3252,5815),(8535,'F',1091,5815),(8536,'F',1092,6637),(8537,'T',3253,6637),(8538,'F',1093,3551),(8539,'F',1094,6456),(8540,'F',1095,5708),(8541,'F',1096,2283),(8542,'F',1097,6440),(8543,'F',1098,4560),(8544,'F',1099,5697),(8545,'F',1100,6576),(8546,'F',1101,5047),(8547,'F',1102,5888),(8548,'F',1103,5674),(8549,'T',3254,6665),(8550,'F',1104,6665),(8551,'F',1105,6457),(8552,'F',1106,3568),(8553,'T',3255,2623),(8554,'F',1108,3392),(8555,'F',1109,6547),(8556,'F',1110,6433),(8557,'F',1111,5761),(8558,'F',1112,5778),(8559,'F',1113,5931),(8560,'F',1114,6469),(8561,'F',1115,3674),(8562,'F',1116,6386),(8563,'F',1117,3681),(8564,'F',1118,1760),(8565,'F',1119,6402),(8566,'F',1120,5939),(8567,'F',1121,6455),(8568,'F',1122,6490),(8569,'T',3256,6491),(8570,'T',3257,6491),(8571,'F',1124,6491),(8572,'F',1125,5634),(8573,'F',1126,6401),(8574,'F',1127,920),(8575,'T',3258,5706),(8576,'F',1128,2305),(8577,'F',1129,6399),(8578,'T',3259,6485),(8579,'F',1130,6485),(8580,'F',1131,6368),(8581,'F',1132,1881),(8582,'F',1133,5843),(8583,'F',1134,6467),(8584,'F',1135,3511),(8585,'F',1136,6676),(8586,'F',1138,5850),(8587,'F',1139,6091),(8588,'F',1141,6521),(8589,'T',3260,5785),(8590,'T',3261,5785),(8591,'F',1142,5785),(8592,'F',1143,6432),(8593,'T',3262,6699),(8594,'T',3263,6699),(8595,'F',1144,6699),(8596,'T',3264,5767),(8597,'F',1145,5767),(8598,'T',3265,5619),(8599,'T',3266,5619),(8600,'F',1146,5619),(8601,'F',1147,6001),(8602,'T',3267,5793),(8603,'F',1148,5793),(8604,'F',1149,6518),(8605,'F',1150,6021),(8606,'F',1152,5245),(8607,'T',3268,6414),(8608,'F',1153,6414),(8609,'F',1154,6486),(8610,'F',1155,6427),(8611,'F',1156,6530),(8612,'F',1157,6549),(8613,'F',1158,5987),(8614,'T',3269,6060),(8615,'F',1159,6060),(8616,'F',1160,5628),(8617,'F',1161,5844),(8618,'T',3270,5831),(8619,'T',3271,5831),(8620,'T',3272,5727),(8621,'T',3273,5727),(8622,'F',1162,5727),(8623,'F',1163,6624),(8624,'F',1164,6649),(8625,'F',1165,6638),(8626,'T',3274,6654),(8627,'F',1166,6654),(8628,'T',3275,6463),(8629,'T',3276,485),(8630,'F',1167,485),(8631,'T',3277,5664),(8632,'T',3278,5664),(8633,'F',1168,5664),(8634,'T',3279,5624),(8635,'F',1169,5624),(8636,'F',1170,3027),(8637,'F',1171,6594),(8638,'F',1172,6367),(8639,'F',1173,6403),(8640,'T',3280,5840),(8641,'F',1174,5840),(8642,'T',3281,6533),(8643,'F',1175,6533),(8644,'F',1176,6598),(8645,'F',1177,1223),(8647,'F',1179,6382),(8648,'F',1180,5956),(8649,'T',3282,3212),(8650,'F',1181,5892),(8651,'F',1182,6522),(8652,'F',1183,5701),(8653,'T',3283,6420),(8654,'F',1184,6420),(8655,'F',1185,6559),(8656,'F',1186,6528),(8657,'F',1187,5811),(8658,'F',1188,6463),(8659,'F',1189,5907),(8660,'T',3284,6532),(8661,'F',1192,6532),(8662,'F',1193,5813),(8663,'E',6811,6810),(8664,'T',3285,6810),(8665,'F',1194,6810),(8666,'F',1195,1214),(8667,'T',3286,5833),(8668,'F',1196,5833),(8669,'T',3287,5693),(8670,'F',1197,5693),(8671,'T',3288,5694),(8672,'T',3289,5694),(8673,'F',1198,6561),(8674,'F',1199,5694),(8675,'T',3290,5720),(8676,'F',1200,5720),(8677,'F',1201,6524),(8678,'T',3291,5630),(8679,'F',1202,5630),(8680,'T',3292,5791),(8681,'F',1203,5791),(8682,'T',3293,5741),(8683,'T',3294,5741),(8684,'F',1204,5741),(8685,'E',6812,6811),(8687,'F',1209,6811),(8688,'T',3295,5707),(8689,'F',1210,5707),(8690,'F',1211,6439),(8691,'F',1212,5873),(8692,'F',1213,5950),(8693,'F',1214,5656),(8694,'T',3296,5656),(8695,'T',3297,6626),(8696,'F',1215,1227),(8697,'T',3298,5997),(8698,'F',1216,5997),(8699,'T',3299,5781),(8700,'F',1217,5781),(8701,'F',1218,5550),(8702,'T',3300,5817),(8703,'T',3301,5817),(8704,'F',1222,5817),(8705,'T',3302,5636),(8706,'T',3303,5636),(8707,'F',1223,5636),(8708,'T',3304,5695),(8709,'T',3305,5695),(8710,'F',1224,5695),(8711,'T',3306,5770),(8712,'F',1225,5770),(8713,'T',3307,5952),(8714,'T',3308,5952),(8715,'F',1226,5952),(8716,'T',3309,5908),(8717,'F',1227,5908),(8718,'T',3310,5762),(8719,'F',1228,5762),(8720,'F',1229,5702),(8721,'T',3311,6595),(8722,'F',1230,6595),(8723,'T',3312,4239),(8724,'F',1231,4239),(8725,'T',3313,6468),(8726,'T',3314,6468),(8727,'F',1232,6468),(8728,'E',6813,6812),(8729,'E',6814,6813),(8730,'T',3315,6813),(8731,'F',1233,6813),(8732,'T',3316,5646),(8733,'T',3317,5646),(8734,'F',1234,5646),(8735,'T',3318,5691),(8736,'F',1235,5691),(8737,'F',1236,5941),(8738,'T',3319,5941),(8739,'T',3320,5941),(8740,'T',3321,5760),(8741,'E',6815,6814),(8742,'T',3322,6814),(8743,'F',1237,5760),(8744,'T',3323,5653),(8745,'F',1238,5653),(8746,'T',3324,6379),(8747,'F',1239,6379),(8748,'F',1240,5970),(8749,'F',1241,4697),(8750,'T',3325,3517),(8751,'T',3326,5715),(8752,'F',1242,5715),(8753,'T',3327,5709),(8754,'F',1243,5709),(8755,'T',3328,3488),(8756,'F',1244,3488),(8757,'T',3329,5631),(8758,'T',3330,5631),(8759,'F',1245,5631),(8760,'T',3331,5984),(8761,'T',3332,5984),(8762,'F',1246,5984),(8763,'T',3333,5871),(8764,'T',3334,5871),(8765,'F',1247,5871),(8766,'T',3335,955),(8767,'T',3336,6626),(8768,'F',1248,6626),(8769,'T',3337,6007),(8770,'T',3338,5864),(8771,'T',3339,5864),(8772,'F',1249,5864),(8773,'T',3340,5692),(8774,'F',1250,5991),(8775,'T',3341,5794),(8776,'T',3342,5794),(8777,'F',1251,5794),(8778,'T',3343,5622),(8779,'T',3344,5622),(8780,'F',1252,5622),(8781,'T',3345,5834),(8782,'F',1253,5834),(8783,'T',3346,5260),(8784,'F',1254,5260),(8785,'F',1255,3807),(8786,'T',3347,5764),(8787,'F',1256,5764),(8788,'T',3348,5654),(8789,'T',3349,5654),(8790,'F',1257,5654),(8791,'T',3350,5911),(8792,'T',3351,5911),(8793,'F',1258,5911),(8794,'T',3352,5710),(8795,'T',3353,5710),(8796,'F',1259,5710),(8797,'T',3354,5961),(8798,'F',1260,5961),(8799,'E',6816,6815),(8800,'T',3355,2033),(8801,'T',3356,5555),(8802,'F',1261,5555),(8803,'F',1262,5933),(8804,'F',1263,3517),(8805,'T',3357,5151),(8806,'E',6817,6816),(8807,'T',3358,6816),(8808,'E',6818,6817),(8809,'T',3359,6817),(8810,'F',1264,5876),(8811,'T',3360,4977),(8812,'F',1265,6391),(8813,'F',1266,5819),(8814,'F',1267,6004),(8815,'F',1268,6591),(8817,'F',1270,3234),(8818,'T',3361,3634),(8819,'T',3362,5638),(8820,'F',1271,6417),(8821,'F',1272,6479),(8822,'F',1273,6458),(8823,'F',1274,6505),(8824,'F',1275,5832),(8825,'F',1276,5617),(8826,'F',1277,5900),(8827,'F',1278,6475),(8828,'F',1279,6525),(8829,'F',1280,6020),(8830,'F',1281,5706),(8831,'F',1282,3841),(8832,'F',1283,4696),(8833,'F',1284,5705),(8834,'F',1285,6411),(8835,'F',1286,5949),(8836,'F',1287,6655),(8837,'F',1288,6611),(8838,'F',1289,6036),(8839,'T',3363,6594),(8840,'F',1290,3634),(8841,'F',1291,5638),(8842,'T',3364,6018),(8843,'F',1292,6018),(8844,'F',1293,5909),(8845,'T',3365,5909),(8846,'F',1294,3241),(8847,'T',3366,5980),(8848,'T',3367,5980),(8849,'F',1295,5980),(8850,'T',3368,3523),(8852,'T',3369,6461),(8854,'T',3370,5802),(8855,'F',1299,5802),(8856,'T',3371,5826),(8857,'T',3372,5826),(8859,'F',1301,5826),(8860,'F',1302,3523),(8861,'T',3373,6057),(8862,'T',3374,6057),(8863,'F',1303,6057),(8864,'T',3375,5722),(8865,'T',3376,5722),(8866,'F',1304,5722),(8867,'F',1305,5790),(8868,'T',3377,5790),(8869,'F',1306,5886),(8870,'T',3378,5886),(8871,'T',3379,5886),(8872,'T',3380,5763),(8873,'F',1307,5763),(8874,'T',3381,5772),(8875,'F',1308,5772),(8876,'F',1313,5692),(8877,'T',3382,5774),(8878,'F',1314,5774),(8879,'T',3383,6410),(8880,'F',1315,6410),(8881,'T',3384,5945),(8882,'F',1316,5945),(8883,'T',3385,6049),(8884,'F',1317,6049),(8885,'T',3386,5944),(8887,'F',1320,5944),(8888,'T',3387,5640),(8889,'F',1321,5640),(8890,'T',3388,5995),(8891,'F',1322,5995),(8892,'T',3389,5688),(8893,'F',1323,5688),(8894,'F',1324,5629),(8895,'T',3390,5660),(8896,'F',1325,5660),(8897,'T',3391,5733),(8898,'F',1326,5733),(8899,'F',1327,5682),(8900,'T',3392,5682),(8901,'T',3393,5920),(8902,'F',1328,5920),(8903,'T',3394,6011),(8904,'F',1329,6011),(8905,'T',3395,6376),(8906,'T',3396,6376),(8907,'F',1330,6376),(8908,'T',3397,5940),(8909,'F',1331,5940),(8910,'T',3398,3825),(8911,'F',1332,3825),(8912,'F',1333,6461),(8913,'F',1334,3553),(8914,'T',3399,6046),(8915,'F',1335,6046),(8916,'F',1336,6477),(8917,'T',3400,5676),(8918,'F',1337,5831),(8919,'T',3401,5930),(8920,'T',3402,5930),(8921,'T',3403,4136),(8922,'F',1338,5930),(8923,'T',3404,5632),(8924,'F',1339,5632),(8925,'T',3405,5699),(8926,'T',3406,5699),(8927,'F',1340,5699),(8928,'T',3407,5735),(8929,'F',1341,5735),(8930,'T',3408,5723),(8931,'F',1342,5723),(8932,'T',3409,5972),(8933,'F',1343,5972),(8934,'T',3410,5686),(8935,'F',1347,5686),(8936,'T',3411,5643),(8937,'F',1348,5643),(8938,'F',1349,5943),(8939,'T',3412,5797),(8940,'T',3413,5863),(8941,'T',3414,5655),(8942,'F',1350,5797),(8943,'F',1351,5863),(8944,'F',1352,5655),(8945,'E',6819,6818),(8946,'T',3415,6818),(8947,'F',1353,6818),(8948,'F',1354,6030),(8949,'T',3416,1753),(8950,'T',3417,1753),(8951,'F',1355,1753),(8952,'T',3418,5867),(8953,'T',3419,6070),(8954,'F',1356,6070),(8955,'T',3420,5649),(8956,'F',1357,5649),(8957,'E',6820,6819),(8958,'T',3421,6819),(8959,'F',1358,6819),(8960,'F',1359,4136),(8961,'E',6821,6820),(8962,'T',3422,6820),(8963,'F',1360,6820),(8964,'T',3423,5623),(8965,'T',3424,5623),(8968,'T',3425,5679),(8969,'F',1367,5679),(8970,'T',3426,5609),(8971,'T',3427,5967),(8972,'T',3428,5967),(8973,'F',1368,5967),(8974,'T',3429,5716),(8975,'F',1369,5716),(8976,'F',1370,5609),(8977,'T',3430,6766),(8978,'F',1371,6471),(8979,'T',3431,5801),(8980,'T',3432,5801),(8981,'F',1372,5801),(8982,'T',3433,6494),(8983,'F',1373,6494),(8984,'T',3434,4229),(8985,'F',1374,4229),(8986,'E',6822,6821),(8987,'T',3435,6821),(8988,'T',3436,5714),(8989,'T',3437,5714),(8991,'F',1376,5714),(8992,'T',3438,3235),(8993,'F',1377,3235),(8994,'T',3439,3050),(8995,'F',1378,3050),(8996,'T',3440,6739),(8997,'T',3441,6739),(8998,'T',3442,6502),(8999,'F',1379,6502),(9000,'F',1383,5848),(9001,'T',3443,5848),(9002,'T',3444,3839),(9003,'F',1384,3839),(9004,'F',1385,3718),(9005,'E',6823,6822),(9006,'T',3445,6822),(9007,'T',3446,5786),(9008,'T',3447,5881),(9009,'T',3448,5881),(9010,'F',1389,5881),(9011,'F',1390,6618),(9012,'T',3449,6012),(9013,'T',3450,6012),(9014,'F',1391,6012),(9015,'F',1392,5756),(9016,'F',1393,5935),(9017,'T',3451,5935),(9018,'F',1397,5786),(9019,'F',1398,3389),(9020,'F',1399,5687),(9021,'T',3452,4993),(9022,'F',1400,6418),(9023,'E',6824,6823),(9024,'F',1401,3684),(9025,'F',1403,6823),(9026,'T',3453,4084),(9027,'F',1408,3108),(9028,'F',1412,5623),(9029,'T',3454,6431),(9030,'F',1414,6431),(9031,'E',6825,6824),(9032,'T',3455,6824),(9033,'E',6826,6825),(9034,'T',3456,6825),(9035,'F',1416,2182),(9036,'F',1417,1211),(9037,'T',3457,6015),(9038,'T',3458,6560),(9039,'F',1418,6560),(9040,'E',6827,6826),(9041,'T',3459,6826),(9042,'F',1419,6826),(9043,'F',1424,6007),(9044,'T',3460,2856),(9045,'T',3461,6523),(9046,'T',3462,6523),(9047,'F',1425,6523),(9048,'F',1426,5712),(9049,'T',3463,6606),(9050,'F',1427,6606),(9051,'T',3464,6652),(9052,'F',1,1),(9053,'E',6828,6827);
/*!40000 ALTER TABLE `pessoa_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_tipo`
--

DROP TABLE IF EXISTS `pessoa_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_tipo` (
  `id_pessoa_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_tipo`
--

LOCK TABLES `pessoa_tipo` WRITE;
/*!40000 ALTER TABLE `pessoa_tipo` DISABLE KEYS */;
INSERT INTO `pessoa_tipo` VALUES (1,'PF','PESSOA FÍSICA'),(2,'PJ','PESSOA JURÍDICA');
/*!40000 ALTER TABLE `pessoa_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_layout`
--

DROP TABLE IF EXISTS `portal_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_layout` (
  `id_portal_layout` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_portal_layout`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_layout`
--

LOCK TABLES `portal_layout` WRITE;
/*!40000 ALTER TABLE `portal_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_status`
--

DROP TABLE IF EXISTS `portal_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_status` (
  `id_portal_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` char(1) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portal_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='A - ATIVO\nI - INATIVO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_status`
--

LOCK TABLES `portal_status` WRITE;
/*!40000 ALTER TABLE `portal_status` DISABLE KEYS */;
INSERT INTO `portal_status` VALUES (1,'A','ATIVO'),(2,'I','INATIVO'),(3,'M','MANUTENÇÃO');
/*!40000 ALTER TABLE `portal_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previsao`
--

DROP TABLE IF EXISTS `previsao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previsao` (
  `id_previsao` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo` int(11) NOT NULL,
  `id_previsao_tipo` int(11) NOT NULL,
  `id_bolsa_tipo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  PRIMARY KEY (`id_previsao`),
  KEY `fk_previsao_vinculo1_idx` (`id_vinculo`),
  KEY `fk_previsao_valor1_idx` (`id_valor`),
  KEY `fk_previsao_bolsa_tipo1_idx` (`id_bolsa_tipo`),
  KEY `fk_previsao_previsao_tipo1_idx` (`id_previsao_tipo`),
  CONSTRAINT `fk_previsao_bolsa_tipo1` FOREIGN KEY (`id_bolsa_tipo`) REFERENCES `bolsa_tipo` (`id_bolsa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_previsao_previsao_tipo1` FOREIGN KEY (`id_previsao_tipo`) REFERENCES `previsao_tipo` (`id_previsao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_previsao_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_previsao_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previsao`
--

LOCK TABLES `previsao` WRITE;
/*!40000 ALTER TABLE `previsao` DISABLE KEYS */;
/*!40000 ALTER TABLE `previsao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previsao_tipo`
--

DROP TABLE IF EXISTS `previsao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previsao_tipo` (
  `id_previsao_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_previsao_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='B - BOLSISTA\nP - PRESTADOR DE SERVIÇOS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previsao_tipo`
--

LOCK TABLES `previsao_tipo` WRITE;
/*!40000 ALTER TABLE `previsao_tipo` DISABLE KEYS */;
INSERT INTO `previsao_tipo` VALUES (1,'BO','BOLSISTA'),(2,'PF','PESSOA FÍSICA'),(3,'PJ','PESSOA JURÍDICA');
/*!40000 ALTER TABLE `previsao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridade`
--

DROP TABLE IF EXISTS `prioridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioridade` (
  `id_prioridade` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `tolerancia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prioridade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridade`
--

LOCK TABLES `prioridade` WRITE;
/*!40000 ALTER TABLE `prioridade` DISABLE KEYS */;
INSERT INTO `prioridade` VALUES (1,'N','NORMAL',5);
/*!40000 ALTER TABLE `prioridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocolo_documento`
--

DROP TABLE IF EXISTS `protocolo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocolo_documento` (
  `id` int(11) NOT NULL,
  `numprotocolo` text DEFAULT NULL,
  `dtprotocolo` text DEFAULT NULL,
  `fktipodocumento` text DEFAULT NULL,
  `fkpessoa` text DEFAULT NULL,
  `procedencia` text DEFAULT NULL,
  `fkorgao` text DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `situacao` text DEFAULT NULL,
  `prioridade` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocolo_documento`
--

LOCK TABLES `protocolo_documento` WRITE;
/*!40000 ALTER TABLE `protocolo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocolo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocolo_documentotipo`
--

DROP TABLE IF EXISTS `protocolo_documentotipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocolo_documentotipo` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocolo_documentotipo`
--

LOCK TABLES `protocolo_documentotipo` WRITE;
/*!40000 ALTER TABLE `protocolo_documentotipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocolo_documentotipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocolo_movimentacao`
--

DROP TABLE IF EXISTS `protocolo_movimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocolo_movimentacao` (
  `id` int(11) NOT NULL,
  `fkorgao` text DEFAULT NULL,
  `fkprotocolo` text DEFAULT NULL,
  `dtentrada` text DEFAULT NULL,
  `usuarioentrada` text DEFAULT NULL,
  `dtsaida` text DEFAULT NULL,
  `usuariosaida` text DEFAULT NULL,
  `despacho` text DEFAULT NULL,
  `fk_tipodespacho` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocolo_movimentacao`
--

LOCK TABLES `protocolo_movimentacao` WRITE;
/*!40000 ALTER TABLE `protocolo_movimentacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocolo_movimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocolo_pessoa`
--

DROP TABLE IF EXISTS `protocolo_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocolo_pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocolo_pessoa`
--

LOCK TABLES `protocolo_pessoa` WRITE;
/*!40000 ALTER TABLE `protocolo_pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocolo_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocolo_setor`
--

DROP TABLE IF EXISTS `protocolo_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocolo_setor` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocolo_setor`
--

LOCK TABLES `protocolo_setor` WRITE;
/*!40000 ALTER TABLE `protocolo_setor` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocolo_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatorio` (
  `id_relatorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_relatorio_tipo` int(11) NOT NULL,
  `chave` varchar(50) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_relatorio`),
  KEY `fk_relatorio_relatorio_tipo1_idx` (`id_relatorio_tipo`),
  CONSTRAINT `fk_relatorio_relatorio_tipo1` FOREIGN KEY (`id_relatorio_tipo`) REFERENCES `relatorio_tipo` (`id_relatorio_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio`
--

LOCK TABLES `relatorio` WRITE;
/*!40000 ALTER TABLE `relatorio` DISABLE KEYS */;
INSERT INTO `relatorio` VALUES (1,1,'EstGed','RELATÓRIO DE DOCUMENTOS DIGITALIZADOS'),(2,2,'Ficha','FICHA DE CADASTRO'),(3,3,'TdMot','TERMO DE DECLARAÇÃO - MOTORISTA'),(4,4,'Carater','RELAÇÃO DE CARÁTER'),(5,4,'Placas','RELAÇÃO DE PLACAS RETIDAS'),(6,4,'Agente','RELATÓRIO DE AGENTES'),(7,4,'Motorista','RELATÓRIO DE MOTORISTAS'),(8,4,'Taxas','RELATÓRIO DE TAXAS'),(9,4,'Taxassacado','RELATÓRIO DE TAXAS - SACADO'),(10,4,'CaraterGrupo','RELAÇÃO DE CARÁTER - AGRUPADO'),(11,5,'FichaMo','FICHA DE CADASTRO - MOTORISTA');
/*!40000 ALTER TABLE `relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio_tipo`
--

DROP TABLE IF EXISTS `relatorio_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatorio_tipo` (
  `id_relatorio_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_relatorio_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio_tipo`
--

LOCK TABLES `relatorio_tipo` WRITE;
/*!40000 ALTER TABLE `relatorio_tipo` DISABLE KEYS */;
INSERT INTO `relatorio_tipo` VALUES (1,'Adm','RELATÓRIOS ADMINISTRATIVOS'),(2,'Tra','RELATÓRIOS DE TRÂNSITO'),(3,'Taxi','RELATÓRIOS DE TAXI'),(4,'Ttr','RELATÓRIOS DE TRÂNSITO E TRANSPORTE'),(5,'Mo','RELATÓRIOS DE MOTORISTAS');
/*!40000 ALTER TABLE `relatorio_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimento_jari`
--

DROP TABLE IF EXISTS `requerimento_jari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimento_jari` (
  `id_requerimento_jari` int(11) NOT NULL AUTO_INCREMENT,
  `id_auto_infracao_notificacao` int(11) NOT NULL,
  `id_documento` int(11) NOT NULL,
  `data_jari` date DEFAULT NULL,
  `hora_jari` time DEFAULT NULL,
  `id_requerimento_jari_status` int(11) NOT NULL,
  PRIMARY KEY (`id_requerimento_jari`),
  KEY `fk_requerimento_jari_auto_infracao_notificacao1_idx` (`id_auto_infracao_notificacao`),
  KEY `fk_requerimento_jari_documento1_idx` (`id_documento`),
  KEY `fk_requerimento_jari_requerimento_jari_status1_idx` (`id_requerimento_jari_status`),
  CONSTRAINT `fk_requerimento_jari_auto_infracao_notificacao1` FOREIGN KEY (`id_auto_infracao_notificacao`) REFERENCES `auto_infracao_notificacao` (`id_auto_infracao_notificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_requerimento_jari_documento1` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_requerimento_jari_requerimento_jari_status1` FOREIGN KEY (`id_requerimento_jari_status`) REFERENCES `requerimento_jari_status` (`id_requerimento_jari_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimento_jari`
--

LOCK TABLES `requerimento_jari` WRITE;
/*!40000 ALTER TABLE `requerimento_jari` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimento_jari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimento_jari_resposta`
--

DROP TABLE IF EXISTS `requerimento_jari_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimento_jari_resposta` (
  `id_requerimento_jari_resposta` int(11) NOT NULL AUTO_INCREMENT,
  `id_requerimento_jari` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `data_resposta` date DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  PRIMARY KEY (`id_requerimento_jari_resposta`),
  KEY `fk_requerimento_jari_resposta_requerimento_jari1_idx` (`id_requerimento_jari`),
  KEY `fk_requerimento_jari_resposta_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_requerimento_jari_resposta_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_requerimento_jari_resposta_requerimento_jari1` FOREIGN KEY (`id_requerimento_jari`) REFERENCES `requerimento_jari` (`id_requerimento_jari`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimento_jari_resposta`
--

LOCK TABLES `requerimento_jari_resposta` WRITE;
/*!40000 ALTER TABLE `requerimento_jari_resposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimento_jari_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimento_jari_resposta_infracao`
--

DROP TABLE IF EXISTS `requerimento_jari_resposta_infracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimento_jari_resposta_infracao` (
  `id_requerimento_jari_resposta` int(11) NOT NULL,
  `id_infracao` int(11) NOT NULL,
  PRIMARY KEY (`id_requerimento_jari_resposta`,`id_infracao`),
  KEY `fk_requerimento_jari_resposta_has_infracao_infracao1_idx` (`id_infracao`),
  KEY `fk_requerimento_jari_resposta_has_infracao_requerimento_jar_idx` (`id_requerimento_jari_resposta`),
  CONSTRAINT `fk_requerimento_jari_resposta_has_infracao_infracao1` FOREIGN KEY (`id_infracao`) REFERENCES `infracao` (`id_infracao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_requerimento_jari_resposta_has_infracao_requerimento_jari_1` FOREIGN KEY (`id_requerimento_jari_resposta`) REFERENCES `requerimento_jari_resposta` (`id_requerimento_jari_resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimento_jari_resposta_infracao`
--

LOCK TABLES `requerimento_jari_resposta_infracao` WRITE;
/*!40000 ALTER TABLE `requerimento_jari_resposta_infracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimento_jari_resposta_infracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimento_jari_status`
--

DROP TABLE IF EXISTS `requerimento_jari_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimento_jari_status` (
  `id_requerimento_jari_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_requerimento_jari_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='AD - AGUARDANDO RESPOSTA\nDT - DEFERIMENTO TOTAL\nDP - DEFERIM /* comment truncated */ /*ENTO PARCIAL\nIN - INDEFERIDO*/';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimento_jari_status`
--

LOCK TABLES `requerimento_jari_status` WRITE;
/*!40000 ALTER TABLE `requerimento_jari_status` DISABLE KEYS */;
INSERT INTO `requerimento_jari_status` VALUES (1,'AR','AGUARDANDO RESPOSTA'),(2,'DT','DEFERIMENTO TOTAL'),(3,'DP','DEFERIMENTO PARCIAL'),(4,'IN','INDEFERIDO');
/*!40000 ALTER TABLE `requerimento_jari_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retorno`
--

DROP TABLE IF EXISTS `retorno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retorno` (
  `id_retorno` int(11) NOT NULL AUTO_INCREMENT,
  `data_importacao` date DEFAULT NULL,
  `hora_importacao` time DEFAULT NULL,
  `convenio` varchar(10) DEFAULT NULL,
  `id_retorno_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_retorno`)
) ENGINE=InnoDB AUTO_INCREMENT=1373 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retorno`
--

LOCK TABLES `retorno` WRITE;
/*!40000 ALTER TABLE `retorno` DISABLE KEYS */;
INSERT INTO `retorno` VALUES (1372,'2019-02-14','12:48:25','1371892',3);
/*!40000 ALTER TABLE `retorno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retorno_item`
--

DROP TABLE IF EXISTS `retorno_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retorno_item` (
  `id_retorno_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_retorno` int(11) NOT NULL,
  `nosso_numero` varchar(100) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor_pago` float DEFAULT NULL,
  `problema` varchar(100) DEFAULT NULL,
  `id_boleto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_retorno_item`),
  KEY `fk_retorno_item_retorno1_idx` (`id_retorno`),
  CONSTRAINT `fk_retorno_item_retorno1` FOREIGN KEY (`id_retorno`) REFERENCES `retorno` (`id_retorno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retorno_item`
--

LOCK TABLES `retorno_item` WRITE;
/*!40000 ALTER TABLE `retorno_item` DISABLE KEYS */;
INSERT INTO `retorno_item` VALUES (3775,1372,'13718920000006595','2019-02-14',54.1,NULL,6595);
/*!40000 ALTER TABLE `retorno_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retorno_item_relatorio`
--

DROP TABLE IF EXISTS `retorno_item_relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retorno_item_relatorio` (
  `id_retorno_item_relatorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_retorno_item` int(11) NOT NULL,
  `id_boleto_item` int(11) NOT NULL,
  `confirmado` char(1) DEFAULT NULL,
  `mensagem` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_retorno_item_relatorio`),
  KEY `fk_retorno_item_relatorio_retorno_item1_idx` (`id_retorno_item`),
  KEY `fk_retorno_item_relatorio_boleto_item1_idx` (`id_boleto_item`),
  CONSTRAINT `fk_retorno_item_relatorio_boleto_item1` FOREIGN KEY (`id_boleto_item`) REFERENCES `boleto_item` (`id_boleto_item`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_retorno_item_relatorio_retorno_item1` FOREIGN KEY (`id_retorno_item`) REFERENCES `retorno_item` (`id_retorno_item`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13512 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retorno_item_relatorio`
--

LOCK TABLES `retorno_item_relatorio` WRITE;
/*!40000 ALTER TABLE `retorno_item_relatorio` DISABLE KEYS */;
INSERT INTO `retorno_item_relatorio` VALUES (13511,3775,23284,'S',NULL);
/*!40000 ALTER TABLE `retorno_item_relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retorno_tipo`
--

DROP TABLE IF EXISTS `retorno_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retorno_tipo` (
  `id_retorno_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_retorno_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retorno_tipo`
--

LOCK TABLES `retorno_tipo` WRITE;
/*!40000 ALTER TABLE `retorno_tipo` DISABLE KEYS */;
INSERT INTO `retorno_tipo` VALUES (1,'CNAB240','RETORNO CNAB 240'),(3,'MANUAL','MANUAL');
/*!40000 ALTER TABLE `retorno_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota` (
  `id_rota` int(11) NOT NULL AUTO_INCREMENT,
  `id_transporte` int(11) NOT NULL,
  `id_linha` int(11) NOT NULL,
  `id_rota_tipo` int(11) NOT NULL,
  `id_tarifa_ocorrencia` int(11) NOT NULL,
  `km` float DEFAULT NULL,
  `tempo_total` time DEFAULT NULL,
  `km_velocidade_media` float DEFAULT NULL,
  PRIMARY KEY (`id_rota`),
  KEY `fk_rota_transporte1_idx` (`id_transporte`),
  KEY `fk_rota_linha1_idx` (`id_linha`),
  KEY `fk_rota_rota_tipo1_idx` (`id_rota_tipo`),
  KEY `fk_rota_tarifa_ocorrencia1_idx` (`id_tarifa_ocorrencia`),
  CONSTRAINT `fk_rota_linha1` FOREIGN KEY (`id_linha`) REFERENCES `linha` (`id_linha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rota_rota_tipo1` FOREIGN KEY (`id_rota_tipo`) REFERENCES `rota_tipo` (`id_rota_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rota_tarifa_ocorrencia1` FOREIGN KEY (`id_tarifa_ocorrencia`) REFERENCES `tarifa_ocorrencia` (`id_tarifa_ocorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rota_transporte1` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota_dia`
--

DROP TABLE IF EXISTS `rota_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota_dia` (
  `id_rota_dia` int(11) NOT NULL AUTO_INCREMENT,
  `id_rota` int(11) NOT NULL,
  `id_dia_tipo` int(11) NOT NULL,
  `veiculos` int(11) DEFAULT NULL,
  `viagens` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rota_dia`),
  KEY `fk_rota_dia_rota1_idx` (`id_rota`),
  KEY `fk_rota_dia_dia_tipo1_idx` (`id_dia_tipo`),
  CONSTRAINT `fk_rota_dia_dia_tipo1` FOREIGN KEY (`id_dia_tipo`) REFERENCES `dia_tipo` (`id_dia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rota_dia_rota1` FOREIGN KEY (`id_rota`) REFERENCES `rota` (`id_rota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota_dia`
--

LOCK TABLES `rota_dia` WRITE;
/*!40000 ALTER TABLE `rota_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `rota_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota_parada`
--

DROP TABLE IF EXISTS `rota_parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota_parada` (
  `id_rota_parada` int(11) NOT NULL AUTO_INCREMENT,
  `id_rota` int(11) NOT NULL,
  `id_onibus_parada` int(11) NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rota_parada`),
  KEY `fk_rota_parada_rota1_idx` (`id_rota`),
  KEY `fk_rota_parada_onibus_parada1_idx` (`id_onibus_parada`),
  CONSTRAINT `fk_rota_parada_onibus_parada1` FOREIGN KEY (`id_onibus_parada`) REFERENCES `onibus_parada` (`id_onibus_parada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rota_parada_rota1` FOREIGN KEY (`id_rota`) REFERENCES `rota` (`id_rota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota_parada`
--

LOCK TABLES `rota_parada` WRITE;
/*!40000 ALTER TABLE `rota_parada` DISABLE KEYS */;
/*!40000 ALTER TABLE `rota_parada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota_tipo`
--

DROP TABLE IF EXISTS `rota_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota_tipo` (
  `id_rota_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rota_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='RA - RADIAL\nDI - DIAMETRAL\nCI - CIRCULAR\nEX - EXPO-FEIRA\nCA  /* comment truncated */ /*- CARNAVAL*/';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota_tipo`
--

LOCK TABLES `rota_tipo` WRITE;
/*!40000 ALTER TABLE `rota_tipo` DISABLE KEYS */;
INSERT INTO `rota_tipo` VALUES (1,'RA','RADIAL'),(2,'DI','DIAMETRAL'),(3,'CI','CIRCULAR');
/*!40000 ALTER TABLE `rota_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota_viagem`
--

DROP TABLE IF EXISTS `rota_viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota_viagem` (
  `id_rota_viagem` int(11) NOT NULL AUTO_INCREMENT,
  `id_rota` int(11) NOT NULL,
  `dia_semana` int(11) DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  PRIMARY KEY (`id_rota_viagem`),
  KEY `fk_rota_viagem_rota1_idx` (`id_rota`),
  CONSTRAINT `fk_rota_viagem_rota1` FOREIGN KEY (`id_rota`) REFERENCES `rota` (`id_rota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota_viagem`
--

LOCK TABLES `rota_viagem` WRITE;
/*!40000 ALTER TABLE `rota_viagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `rota_viagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico_tipo` int(11) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_servico_referencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `fk_servico_servico_tipo1_idx` (`id_servico_tipo`),
  CONSTRAINT `fk_servico_servico_tipo1` FOREIGN KEY (`id_servico_tipo`) REFERENCES `servico_tipo` (`id_servico_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (174,2,'LT','LicenÃ§a de TrÃ¡fego',2);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_referencia`
--

DROP TABLE IF EXISTS `servico_referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_referencia` (
  `id_servico_referencia` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_servico_referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_referencia`
--

LOCK TABLES `servico_referencia` WRITE;
/*!40000 ALTER TABLE `servico_referencia` DISABLE KEYS */;
INSERT INTO `servico_referencia` VALUES (1,'TR','TRANSPORTE'),(2,'TV','VEÍCULO'),(3,'TP','PESSOA');
/*!40000 ALTER TABLE `servico_referencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao`
--

DROP TABLE IF EXISTS `servico_solicitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao` (
  `id_servico_solicitacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_solicitacao` date DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  `id_servico_solicitacao_status` int(11) NOT NULL,
  `id_servico_transporte_grupo` int(11) NOT NULL,
  `data_validade` date DEFAULT NULL,
  `id_transporte` int(11) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `ano_referencia` int(11) DEFAULT NULL,
  `mes_referencia` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `tipo` char(2) NOT NULL,
  `chave` int(11) NOT NULL,
  PRIMARY KEY (`id_servico_solicitacao`),
  KEY `fk_servico_solicitacao_valor1_idx` (`id_valor`),
  KEY `fk_servico_solicitacao_servico_solicitacao_status1_idx` (`id_servico_solicitacao_status`),
  KEY `fk_servico_solicitacao_servico_veiculo_grupo1_idx` (`id_servico_transporte_grupo`),
  KEY `fk_servico_solicitacao_transito1_idx` (`id_transporte`),
  CONSTRAINT `fk_servico_solicitacao_servico_solicitacao_status1` FOREIGN KEY (`id_servico_solicitacao_status`) REFERENCES `servico_solicitacao_status` (`id_servico_solicitacao_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_servico_veiculo_grupo1` FOREIGN KEY (`id_servico_transporte_grupo`) REFERENCES `servico_transporte_grupo` (`id_servico_transporte_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_transito1` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao`
--

LOCK TABLES `servico_solicitacao` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao` DISABLE KEYS */;
INSERT INTO `servico_solicitacao` VALUES (30360,'2019-02-14',87830,2,366,'2019-12-27',2979,'2019-01-01','2019-02-21',2019,NULL,1,'TV',3584);
/*!40000 ALTER TABLE `servico_solicitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_desconto`
--

DROP TABLE IF EXISTS `servico_solicitacao_desconto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_desconto` (
  `id_servico_solicitacao_desconto` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico_solicitacao` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_desconto`),
  KEY `fk_servico_solicitacao_desconto_servico_solicitacao1_idx` (`id_servico_solicitacao`),
  CONSTRAINT `fk_servico_solicitacao_desconto_servico_solicitacao1` FOREIGN KEY (`id_servico_solicitacao`) REFERENCES `servico_solicitacao` (`id_servico_solicitacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_desconto`
--

LOCK TABLES `servico_solicitacao_desconto` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_desconto` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico_solicitacao_desconto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_ocorrencia`
--

DROP TABLE IF EXISTS `servico_solicitacao_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_ocorrencia` (
  `id_servico_solicitacao_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico_solicitacao_ocorrencia_tipo` int(11) NOT NULL,
  `id_servico_solicitacao` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `ocorrencia_data` date DEFAULT NULL,
  `ocorrencia_hora` time DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_ocorrencia`),
  KEY `fk_servico_solicitacao_ocorrencia_servico_solicitacao_ocorr_idx` (`id_servico_solicitacao_ocorrencia_tipo`),
  KEY `fk_servico_solicitacao_ocorrencia_servico_solicitacao1_idx` (`id_servico_solicitacao`),
  KEY `fk_servico_solicitacao_ocorrencia_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_servico_solicitacao_ocorrencia_servico_solicitacao1` FOREIGN KEY (`id_servico_solicitacao`) REFERENCES `servico_solicitacao` (`id_servico_solicitacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_ocorrencia_servico_solicitacao_ocorren1` FOREIGN KEY (`id_servico_solicitacao_ocorrencia_tipo`) REFERENCES `servico_solicitacao_ocorrencia_tipo` (`id_servico_solicitacao_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_ocorrencia_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_ocorrencia`
--

LOCK TABLES `servico_solicitacao_ocorrencia` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_ocorrencia` DISABLE KEYS */;
INSERT INTO `servico_solicitacao_ocorrencia` VALUES (43117,1,30360,129,'2019-02-14','12:41:52',NULL),(43118,3,30360,129,'2019-02-14','12:48:25',NULL),(43119,3,30360,129,'2019-02-14','12:48:25',NULL);
/*!40000 ALTER TABLE `servico_solicitacao_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `servico_solicitacao_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_ocorrencia_tipo` (
  `id_servico_solicitacao_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_ocorrencia_tipo`
--

LOCK TABLES `servico_solicitacao_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `servico_solicitacao_ocorrencia_tipo` VALUES (1,'C','CRIAÇÃO'),(2,'CA','CANCELAMENTO DA SOLICITAÇÃO'),(3,'P','PAGAMENTO'),(4,'CP','CANCELAMENTO DO PAGAMENTO');
/*!40000 ALTER TABLE `servico_solicitacao_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_pagamento`
--

DROP TABLE IF EXISTS `servico_solicitacao_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_pagamento` (
  `id_servico_solicitacao_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico_solicitacao` int(11) NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `id_valor_pago` int(11) NOT NULL,
  `id_valor_desconto` int(11) NOT NULL,
  `id_servico_solicitacao_pagamento_status` int(11) NOT NULL,
  `id_valor_juros` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_pagamento`),
  KEY `fk_servico_solicitacao_pagamento_servico_solicitacao1_idx` (`id_servico_solicitacao`),
  KEY `fk_servico_solicitacao_pagamento_valor1_idx` (`id_valor_pago`),
  KEY `fk_servico_solicitacao_pagamento_valor2_idx` (`id_valor_desconto`),
  KEY `fk_servico_solicitacao_pagamento_servico_solicitacao_pagame_idx` (`id_servico_solicitacao_pagamento_status`),
  CONSTRAINT `fk_servico_solicitacao_pagamento_servico_solicitacao1` FOREIGN KEY (`id_servico_solicitacao`) REFERENCES `servico_solicitacao` (`id_servico_solicitacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_pagamento_servico_solicitacao_pagament1` FOREIGN KEY (`id_servico_solicitacao_pagamento_status`) REFERENCES `servico_solicitacao_pagamento_status` (`id_servico_solicitacao_pagamento_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_pagamento_valor1` FOREIGN KEY (`id_valor_pago`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_solicitacao_pagamento_valor2` FOREIGN KEY (`id_valor_desconto`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18874 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_pagamento`
--

LOCK TABLES `servico_solicitacao_pagamento` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_pagamento` DISABLE KEYS */;
INSERT INTO `servico_solicitacao_pagamento` VALUES (18873,30360,'2019-02-14',87831,87832,1,87833);
/*!40000 ALTER TABLE `servico_solicitacao_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_pagamento_status`
--

DROP TABLE IF EXISTS `servico_solicitacao_pagamento_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_pagamento_status` (
  `id_servico_solicitacao_pagamento_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_pagamento_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='A - ATIVO\nC - CANCELADO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_pagamento_status`
--

LOCK TABLES `servico_solicitacao_pagamento_status` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_pagamento_status` DISABLE KEYS */;
INSERT INTO `servico_solicitacao_pagamento_status` VALUES (1,'A','Ativo'),(2,'C','Cancelado');
/*!40000 ALTER TABLE `servico_solicitacao_pagamento_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_solicitacao_status`
--

DROP TABLE IF EXISTS `servico_solicitacao_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_solicitacao_status` (
  `id_servico_solicitacao_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_servico_solicitacao_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='AG - AGUARDANDO PAGAMENTO\nPG - PAGAMENTO CONFIRMADO\nEM - DOC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_solicitacao_status`
--

LOCK TABLES `servico_solicitacao_status` WRITE;
/*!40000 ALTER TABLE `servico_solicitacao_status` DISABLE KEYS */;
INSERT INTO `servico_solicitacao_status` VALUES (1,'AG','Aguardando Pagamento'),(2,'PG','Pagamento Confirmado'),(4,'DE','Documento Entregue'),(5,'CA','Cancelado');
/*!40000 ALTER TABLE `servico_solicitacao_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_tipo`
--

DROP TABLE IF EXISTS `servico_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_tipo` (
  `id_servico_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_servico_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='TA - TRÂNSITO\nTR - TRANSPORTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_tipo`
--

LOCK TABLES `servico_tipo` WRITE;
/*!40000 ALTER TABLE `servico_tipo` DISABLE KEYS */;
INSERT INTO `servico_tipo` VALUES (1,'TA','TRÂNSITO'),(2,'TR','TRANSPORTE');
/*!40000 ALTER TABLE `servico_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_transporte_grupo`
--

DROP TABLE IF EXISTS `servico_transporte_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico_transporte_grupo` (
  `id_servico_transporte_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `id_servico` int(11) NOT NULL,
  `id_transporte_grupo` int(11) DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  `validade_dias` int(11) DEFAULT NULL,
  `obrigatorio` char(1) DEFAULT NULL COMMENT 'S - SIM\nN - NÃO',
  `juros_dia` float DEFAULT NULL,
  `id_periodicidade` int(11) DEFAULT NULL,
  `mes_referencia` int(11) DEFAULT NULL,
  `vencimento_dias` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_servico_transporte_grupo`),
  KEY `fk_servico_grupo_veiculo_servico1_idx` (`id_servico`),
  KEY `fk_servico_grupo_veiculo_veiculo_grupo1_idx` (`id_transporte_grupo`),
  KEY `fk_servico_veiculo_grupo_valor1_idx` (`id_valor`),
  CONSTRAINT `fk_servico_grupo_veiculo_servico1` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_grupo_veiculo_veiculo_grupo1` FOREIGN KEY (`id_transporte_grupo`) REFERENCES `transporte_grupo` (`id_transporte_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_veiculo_grupo_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_transporte_grupo`
--

LOCK TABLES `servico_transporte_grupo` WRITE;
/*!40000 ALTER TABLE `servico_transporte_grupo` DISABLE KEYS */;
INSERT INTO `servico_transporte_grupo` VALUES (366,174,1,87829,360,'N',0,3,1,7);
/*!40000 ALTER TABLE `servico_transporte_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor` (
  `id_setor` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_setor_superior` int(11) DEFAULT NULL,
  `id_funcionario_funcao_tipo` int(11) DEFAULT NULL,
  `id_setor_nivel` int(11) NOT NULL,
  `id_setor_tipo` int(11) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `protocolo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_setor`),
  KEY `fk_setor_funcionario_funcao_tipo1_idx` (`id_funcionario_funcao_tipo`),
  KEY `fk_setor_setor_nivel1_idx` (`id_setor_nivel`),
  KEY `fk_setor_setor_tipo1_idx` (`id_setor_tipo`),
  CONSTRAINT `fk_setor_funcionario_funcao_tipo1` FOREIGN KEY (`id_funcionario_funcao_tipo`) REFERENCES `funcionario_funcao_tipo` (`id_funcionario_funcao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setor_setor_nivel1` FOREIGN KEY (`id_setor_nivel`) REFERENCES `setor_nivel` (`id_setor_nivel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setor_setor_tipo1` FOREIGN KEY (`id_setor_tipo`) REFERENCES `setor_tipo` (`id_setor_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'INFO','SETOR DE INFORMÁTICA',NULL,4,4,1,NULL,'N'),(2,'STTRANS','SUPERINTENDENCIA DE TRANSPORTES E TRANSITO',NULL,NULL,6,1,NULL,'N'),(3,'PRO','PROTOCOLO CENTRAL',2,4,4,1,NULL,'S'),(4,'DTTRANS','DIRETORIA DE TRANSPORTES E TRÂNSITO',2,2,2,1,NULL,'N'),(5,'DTU','DIVISÃO DE TRANSPORTES URBANOS',4,3,3,1,NULL,'N'),(6,'DITRAN','DIVISÃO DE TRÂNSITO',4,3,3,1,NULL,'N'),(7,'DIAF','DIRETORIA ADMINISTRATIVO E FINANCEIRA',2,4,4,1,NULL,'N'),(8,'CPD','CENTRO PROCESSAMENTO DE DADOS',NULL,1,1,1,NULL,'S');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor_nivel`
--

DROP TABLE IF EXISTS `setor_nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor_nivel` (
  `id_setor_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_setor_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor_nivel`
--

LOCK TABLES `setor_nivel` WRITE;
/*!40000 ALTER TABLE `setor_nivel` DISABLE KEYS */;
INSERT INTO `setor_nivel` VALUES (1,'G','GERÊNCIA'),(2,'D','DEPARTAMENTO'),(3,'I','DIVISÃO'),(4,'S','SETOR'),(5,'C','SEÇÃO'),(6,'T','INSTITUIÇÃO'),(7,'PA','PASSEIO');
/*!40000 ALTER TABLE `setor_nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor_tipo`
--

DROP TABLE IF EXISTS `setor_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor_tipo` (
  `id_setor_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_setor_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='I - INTERNO\nE - EXTERNO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor_tipo`
--

LOCK TABLES `setor_tipo` WRITE;
/*!40000 ALTER TABLE `setor_tipo` DISABLE KEYS */;
INSERT INTO `setor_tipo` VALUES (1,'I','INTERNO'),(2,'E','EXTERNO');
/*!40000 ALTER TABLE `setor_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema` (
  `id_sistema` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(20) DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `versao` varchar(10) DEFAULT NULL,
  `id_pessoa_juridica` int(11) NOT NULL,
  `id_portal_status` int(11) NOT NULL,
  `id_portal_layout` int(11) NOT NULL,
  PRIMARY KEY (`id_sistema`),
  KEY `fk_sistema_pessoa_juridica1_idx` (`id_pessoa_juridica`),
  KEY `fk_sistema_portal_status1_idx` (`id_portal_status`),
  CONSTRAINT `fk_sistema_pessoa_juridica1` FOREIGN KEY (`id_pessoa_juridica`) REFERENCES `pessoa_juridica` (`id_pessoa_juridica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sistema_portal_status1` FOREIGN KEY (`id_portal_status`) REFERENCES `portal_status` (`id_portal_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
INSERT INTO `sistema` VALUES (1,'INTRA','Intranet CTMAQ','sttrans@santana.ap.gov.br','1.0',1,2,0);
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smtp`
--

DROP TABLE IF EXISTS `smtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smtp` (
  `id_smtp` int(11) NOT NULL AUTO_INCREMENT,
  `auth` varchar(10) DEFAULT NULL,
  `security` varchar(10) DEFAULT NULL,
  `host` varchar(20) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_smtp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smtp`
--

LOCK TABLES `smtp` WRITE;
/*!40000 ALTER TABLE `smtp` DISABLE KEYS */;
INSERT INTO `smtp` VALUES (1,'login','','','','','');
/*!40000 ALTER TABLE `smtp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa` (
  `id_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `id_valor_atual` int(11) NOT NULL,
  PRIMARY KEY (`id_tarifa`),
  KEY `fk_tarifa_valor1_idx` (`id_valor_atual`),
  CONSTRAINT `fk_tarifa_valor1` FOREIGN KEY (`id_valor_atual`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa_ocorrencia`
--

DROP TABLE IF EXISTS `tarifa_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa_ocorrencia` (
  `id_tarifa_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_tarifa` int(11) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  PRIMARY KEY (`id_tarifa_ocorrencia`),
  KEY `fk_tarifa_ocorrencia_valor1_idx` (`id_valor`),
  KEY `fk_tarifa_ocorrencia_tarifa1_idx` (`id_tarifa`),
  CONSTRAINT `fk_tarifa_ocorrencia_tarifa1` FOREIGN KEY (`id_tarifa`) REFERENCES `tarifa` (`id_tarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tarifa_ocorrencia_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa_ocorrencia`
--

LOCK TABLES `tarifa_ocorrencia` WRITE;
/*!40000 ALTER TABLE `tarifa_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifa_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa_tipo`
--

DROP TABLE IF EXISTS `tarifa_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa_tipo` (
  `id_tarifa_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tarifa_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='IN - INTEGRAL\nMP - MEIA PASSAGEM\nVP - VALE TRANSPORTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa_tipo`
--

LOCK TABLES `tarifa_tipo` WRITE;
/*!40000 ALTER TABLE `tarifa_tipo` DISABLE KEYS */;
INSERT INTO `tarifa_tipo` VALUES (1,'IN','INTEGRAL'),(2,'MP','MEIA PASSAGEM'),(3,'VP','VALE TRANSPORTE');
/*!40000 ALTER TABLE `tarifa_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `ddd` varchar(3) DEFAULT NULL,
  `numero` varchar(8) DEFAULT NULL,
  `id_telefone_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `fk_telefone_telefone_tipo1_idx` (`id_telefone_tipo`),
  CONSTRAINT `fk_telefone_telefone_tipo1` FOREIGN KEY (`id_telefone_tipo`) REFERENCES `telefone_tipo` (`id_telefone_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3465 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'96','91265139',2),(2,'96','55667788',2),(3,'96','11223344',1),(8,'96','33124567',1),(11,'96','33141601',1),(14,'96','33123374',1),(15,'96','91286618',2),(16,'96','91361692',2),(17,'96','91230286',1),(18,'96','91552229',2),(19,'96','91775790',1),(20,'96','91263127',2),(21,'96','91120373',2),(22,'96','91135833',1),(23,'96','81215412',2),(24,'96','99683044',2),(25,'96','99725081',2),(26,'96','81232233',1),(27,'96','91113645',2),(28,'96','32815002',1),(29,'96','91130026',2),(30,'96','91245763',2),(31,'96','91260604',2),(32,'96','32172313',2),(33,'96','81139746',2),(34,'96','81157930',2),(35,'96','91497609',1),(36,'96','91371623',2),(37,'96','91722660',2),(38,'96','91391020',2),(39,'96','91424435',2),(40,'96','81182861',2),(41,'96','91217111',1),(42,'96','91841178',2),(43,'96','91381501',2),(44,'96','32273510',1),(45,'96','91157230',2),(46,'96','91906613',2),(47,'96','91557512',2),(48,'96','91220670',2),(49,'96','91314605',1),(50,'96','91434794',2),(51,'96','91291812',2),(52,'96','91444885',1),(53,'96','91213386',2),(54,'96','91337842',2),(55,'96','91445228',2),(56,'96','91676771',2),(57,'96','81110432',2),(58,'96','81185251',2),(59,'96','32230777',1),(60,'96','91127368',2),(61,'96','32172423',1),(62,'96','92415244',1),(63,'96','81142013',2),(64,'96','99021022',2),(65,'96','32821203',1),(66,'96','99818460',2),(67,'96','81110432',2),(68,'96','32814100',1),(69,'96','81151085',2),(70,'96','99123400',1),(71,'96','91732164',2),(72,'96','91194029',2),(73,'96','91697545',2),(74,'96','81210642',1),(75,'96','91214404',2),(76,'96','81288304',1),(77,'96','91177967',2),(78,'96','32814838',1),(79,'96','91196222',2),(80,'96','91311605',2),(81,'96','32834235',1),(82,'96','91378769',2),(83,'96','32834235',1),(84,'96','32612116',1),(85,'96','99816783',1),(86,'96','91195080',2),(87,'96','91260647',2),(88,'96','91769663',2),(89,'96','32813778',1),(90,'96','91413386',2),(91,'96','32812273',1),(92,'96','91324600',2),(94,'96','91152391',2),(95,'96','32812743',1),(96,'96','91702699',2),(97,'96','32813778',1),(98,'96','91239058',2),(99,'96','81199472',2),(100,'96','91115489',2),(101,'96','91530247',2),(102,'96','92814344',1),(103,'96','99628423',2),(104,'96','92814344',1),(105,'96','99669376',2),(106,'96','81123909',2),(107,'96','99645170',2),(108,'96','81158687',2),(109,'96','81210981',2),(110,'96','91615338',1),(111,'96','91043329',2),(112,'96','32830431',1),(113,'96','91004893',2),(114,'96','99766970',1),(115,'96','81225764',2),(116,'96','32812952',1),(117,'96','81246151',2),(118,'96','81120517',2),(119,'96','32830431',1),(120,'96','32830431',1),(121,'96','91227207',1),(122,'96','91261878',2),(123,'96','99078727',1),(124,'96','91555511',2),(125,'96','32815531',1),(126,'96','81183624',2),(127,'96','91637734',2),(128,'96','81251709',1),(129,'96','81159605',2),(130,'96','91469957',2),(131,'96','91008336',2),(132,'96','91655348',2),(133,'96','91187526',1),(134,'96','81005871',2),(135,'96','91153135',2),(136,'96','81137689',2),(137,'96','91215896',2),(138,'96','91233295',2),(139,'96','91525934',2),(140,'96','91232356',2),(141,'96','91135225',2),(142,'96','91179193',1),(143,'96','81251715',2),(144,'96','91065994',2),(145,'96','32811002',1),(146,'96','91387153',2),(147,'96','91730342',2),(148,'96','32813562',1),(149,'96','91396829',2),(150,'96','91652276',1),(151,'96','91863157',2),(152,'96','91348374',2),(153,'96','91437153',1),(154,'96','91437153',2),(155,'96','91270264',1),(156,'96','91048885',2),(157,'96','91361692',2),(158,'96','91187194',2),(159,'96','81166862',2),(160,'96','88052172',2),(161,'96','32512561',1),(162,'96','32412696',1),(163,'96','91156661',2),(164,'96','91211252',2),(165,'96','32415781',1),(166,'96','32413046',1),(167,'96','91134179',2),(168,'96','91134179',2),(169,'96','99741911',2),(170,'96','92830528',1),(171,'96','32811831',1),(172,'96','81113930',2),(173,'96','99033232',2),(174,'96','32814122',1),(175,'96','32815396',1),(176,'96','81193640',2),(177,'96','81198732',2),(178,'96','32832460',1),(179,'96','91295391',1),(180,'96','91513454',2),(181,'96','32815542',1),(182,'96','81299225',1),(183,'96','81234138',2),(184,'96','32832864',1),(185,'96','81173212',2),(186,'96','91287745',1),(187,'96','91700015',2),(188,'96','81124366',2),(189,'96','81124366',2),(190,'96','81369542',1),(191,'96','99665307',2),(192,'96','32831134',1),(193,'96','81231614',2),(194,'96','32830938',1),(195,'96','99667195',2),(196,'96','32811081',1),(197,'96','91121260',2),(198,'96','32814899',1),(199,'96','81161510',2),(200,'96','32832645',1),(201,'96','91130606',2),(202,'96','81115640',1),(203,'96','81363042',2),(204,'96','81195595',1),(205,'96','91626419',2),(206,'96','99662410',2),(207,'96','92813450',1),(208,'96','92811232',1),(209,'96','91197540',2),(210,'96','91149348',2),(211,'96','81158337',2),(212,'96','91134879',2),(213,'96','32832009',1),(214,'96','91360211',2),(215,'96','88041214',1),(216,'96','81268972',2),(217,'96','91253608',2),(218,'96','81292830',1),(219,'96','91114648',2),(220,'96','32811252',1),(221,'96','91115329',2),(222,'96','32811786',1),(223,'96','91135773',2),(224,'96','91439840',2),(225,'96','91852418',2),(226,'96','99712296',2),(227,'96','81418757',2),(229,'96','91242903',1),(230,'96','81165729',2),(231,'96','91553140',2),(232,'96','91396836',2),(233,'96','91662976',1),(234,'96','91472202',2),(235,'96','91256404',2),(236,'96','91886173',2),(237,'96','91324514',2),(238,'96','91177973',2),(239,'96','32811373',1),(241,'96','91182142',1),(242,'96','91000694',2),(244,'96','91536920',2),(245,'96','81418131',1),(246,'96','91113246',2),(247,'96','91116666',2),(248,'96','32222780',1),(249,'96','81151111',2),(250,'96','32230777',1),(251,'96','32511137',1),(252,'96','32513383',1),(253,'96','91289988',2),(254,'96','99740117',2),(255,'96','99716665',2),(256,'96','99686753',1),(257,'96','88031781',2),(258,'96','32412854',1),(259,'96','91298357',2),(260,'96','91225733',2),(261,'96','91218086',2),(262,'96','21019450',1),(263,'96','91121721',1),(264,'96','91132235',2),(265,'96','91823683',2),(266,'96','81223843',2),(267,'96','81137782',2),(268,'96','32222445',1),(269,'96','92814914',1),(270,'96','91221269',2),(271,'96','92813048',1),(274,'96','32830926',1),(275,'96','32821300',1),(276,'96','81150765',2),(277,'96','32821122',1),(278,'96','32821333',2),(279,'96','91154740',1),(280,'96','91294559',2),(281,'96','32830979',1),(282,'96','91615831',2),(283,'96','81113745',2),(284,'96','92830233',1),(285,'96','81149310',2),(286,'96','92811410',1),(287,'96','99637337',2),(288,'96','92832684',1),(289,'96','92811786',1),(290,'96','91568852',2),(291,'96','32830793',1),(292,'96','91123482',2),(293,'96','32830793',1),(294,'96','91123482',2),(295,'96','91127882',2),(296,'96','32830793',1),(297,'96','91123482',2),(298,'96','91783734',2),(299,'96','32821492',1),(300,'96','91211428',2),(301,'96','91312668',2),(302,'96','99029256',1),(303,'96','88051609',2),(304,'96','99635247',1),(305,'96','81224493',2),(306,'96','99137392',1),(307,'96','91399570',2),(308,'96','32821300',1),(309,'96','91389570',2),(310,'96','32821300',1),(311,'96','32831595',2),(312,'96','32811786',1),(313,'96','99735904',2),(314,'96','91351318',2),(315,'96','81135037',1),(316,'96','91827555',2),(317,'96','91171972',2),(318,'96','99034427',1),(319,'96','99123219',2),(320,'96','91521461',2),(321,'96','91220173',1),(322,'96','81382939',2),(323,'96','32832151',1),(324,'96','91195173',2),(325,'96','91328406',2),(326,'96','99047188',1),(327,'96','99047188',2),(328,'96','32815005',1),(329,'96','91514842',2),(330,'96','91424777',2),(331,'96','91177799',1),(332,'96','91514141',2),(333,'96','91215513',2),(334,'96','91795674',1),(335,'96','81219228',2),(336,'96','91721540',2),(337,'96','91692359',2),(338,'96','91688678',1),(339,'96','91338471',2),(340,'96','91503485',2),(341,'96','91430091',2),(342,'96','32812274',1),(343,'96','91291558',2),(344,'96','91169054',1),(345,'96','91899930',2),(346,'96','91214092',1),(347,'96','91559286',2),(348,'96','99121492',1),(349,'96','91559286',2),(350,'96','91446383',1),(351,'96','99041315',2),(352,'96','91185927',1),(353,'96','91281788',2),(354,'96','91840054',2),(355,'96','91358663',2),(356,'96','91233640',1),(357,'96','91215398',2),(358,'96','91545601',2),(359,'96','91840054',2),(360,'96','91757908',2),(361,'96','91832221',2),(362,'96','88112930',1),(363,'96','99086734',2),(364,'96','91138205',1),(365,'96','91138205',2),(366,'96','32812470',1),(367,'96','81122695',2),(368,'96','91797848',2),(369,'96','32832082',1),(370,'96','91156181',2),(371,'96','99642764',2),(372,'96','91118213',1),(373,'96','91904106',2),(374,'96','32811408',1),(375,'96','81181696',2),(376,'96','91118289',2),(379,'96','91328712',1),(380,'96','91112789',2),(381,'96','81169904',2),(382,'96','91361838',1),(383,'96','91514048',2),(384,'96','91120208',2),(385,'96','91214601',2),(386,'96','91492650',2),(387,'96','91415908',2),(388,'96','32841119',1),(389,'96','99099549',2),(390,'96','91538814',2),(391,'96','91297300',2),(392,'96','99201491',2),(393,'96','32813919',1),(394,'96','32833251',2),(395,'96','92812797',1),(396,'96','81166136',2),(397,'96','81165631',2),(398,'96','81278678',2),(399,'96','81168876',2),(400,'96','91959481',2),(401,'96','32830953',1),(402,'96','91114332',2),(403,'96','91355396',1),(404,'96','91136478',2),(405,'96','91396867',2),(406,'96','91140272',1),(407,'96','81254211',2),(408,'96','91315884',2),(409,'96','32811411',1),(410,'96','81155489',1),(411,'96','91437233',2),(412,'96','81341318',1),(413,'96','91208051',2),(414,'96','32811081',1),(415,'96','81171655',2),(416,'96','81230308',1),(417,'96','91377676',2),(418,'96','32834491',1),(419,'96','91237770',2),(420,'96','32812826',1),(421,'96','91276182',2),(422,'96','81256034',1),(423,'96','91235381',2),(424,'96','32811786',1),(425,'96','91396678',2),(426,'96','91575826',2),(427,'96','32814122',1),(428,'96','32814988',1),(429,'96','91110466',2),(430,'96','32611816',1),(431,'96','91551913',2),(432,'96','91192409',1),(433,'96','91192409',2),(434,'96','91037750',1),(435,'96','91235429',2),(436,'96','32813992',1),(437,'96','91249360',2),(438,'96','91198265',1),(439,'96','81376965',2),(440,'96','91519347',1),(441,'96','91516499',2),(442,'96','91942175',2),(443,'96','81293006',1),(444,'96','91121260',2),(445,'96','32811391',1),(446,'96','91230014',2),(447,'96','32813267',1),(448,'96','99718917',2),(449,'96','81157766',1),(450,'96','91231777',2),(451,'96','91373605',2),(452,'96','91121167',1),(453,'96','91236314',2),(454,'96','91370405',2),(455,'96','91315088',2),(456,'96','81246412',1),(457,'96','91184443',2),(458,'96','91549932',2),(459,'96','92813854',1),(460,'96','32830528',1),(461,'96','91115120',2),(462,'96','32830158',1),(463,'96','91468960',2),(464,'96','91190198',2),(465,'96','32830158',1),(466,'96','91978195',2),(467,'96','81230979',2),(468,'96','91146990',2),(469,'96','32812159',1),(470,'96','81234138',2),(472,'96','33141205',1),(473,'96','99012081',1),(474,'96','91878646',2),(475,'96','99758051',1),(476,'96','81264380',2),(477,'96','91195486',2),(478,'96','99652791',2),(479,'96','91495524',2),(480,'96','91157563',1),(481,'96','81172711',2),(482,'96','91745756',2),(483,'96','81387592',2),(484,'96','91444710',2),(485,'96','91176522',1),(486,'96','91185040',2),(487,'96','32815053',1),(488,'96','91241430',2),(489,'96','91875273',1),(490,'96','32815053',1),(491,'96','91241430',2),(492,'96','99758051',1),(493,'96','81264380',2),(495,'96','91283201',2),(496,'96','91822696',2),(497,'96','91556565',2),(498,'96','91495465',2),(499,'96','92814772',1),(500,'96','81148604',2),(501,'96','32512956',1),(502,'96','91279659',2),(503,'96','92830515',1),(504,'96','81170514',2),(505,'96','99682330',1),(506,'96','91186891',2),(507,'96','92814209',1),(508,'96','81157841',2),(509,'96','91254848',2),(510,'96','81356340',2),(511,'96','32830378',1),(512,'96','91149922',2),(513,'96','91256609',1),(514,'96','81226673',2),(515,'96','32814439',1),(516,'96','91462430',2),(517,'96','32832777',1),(518,'96','81191327',2),(519,'96','91393076',1),(520,'96','81271407',2),(521,'96','32811506',1),(522,'96','91373580',2),(523,'96','81131688',2),(524,'96','99676576',1),(525,'96','81313960',2),(526,'96','91229965',2),(527,'96','91513649',2),(528,'93','84146684',1),(529,'96','91319319',2),(530,'96','91380370',2),(531,'96','81029598',1),(532,'96','91345515',2),(533,'96','99088985',2),(534,'96','91519149',1),(535,'96','91281499',2),(536,'96','32811019',1),(537,'96','91359675',2),(538,'96','91027066',2),(539,'96','91677785',2),(540,'96','32812692',1),(541,'96','91113366',2),(542,'96','32811685',1),(543,'96','91972984',2),(544,'96','91515566',1),(545,'96','81147654',2),(546,'96','91237660',2),(547,'96','32812624',1),(548,'96','91683522',2),(549,'96','99812691',1),(550,'96','99818460',2),(551,'96','32814410',1),(552,'96','91157156',2),(553,'96','91746673',2),(554,'96','91199030',2),(555,'96','91199330',2),(556,'96','91191050',2),(557,'96','91161645',1),(558,'96','91164273',2),(559,'96','91388823',2),(560,'96','91802625',2),(561,'96','32834250',1),(562,'96','99753874',2),(563,'96','32815602',1),(564,'96','91625484',2),(565,'96','91284089',1),(566,'96','81246684',2),(567,'96','91532331',2),(568,'96','91359104',2),(569,'96','81246684',1),(570,'96','91284089',2),(571,'96','91515116',1),(572,'96','91396956',2),(573,'96','91115841',2),(574,'96','32813382',1),(575,'96','91248751',2),(576,'96','91264298',2),(577,'96','91145669',1),(578,'96','91265622',2),(579,'96','91142933',1),(580,'96','91142933',2),(581,'96','91323701',2),(582,'96','81336913',1),(583,'96','91121493',2),(584,'96','91443759',2),(585,'96','91718360',2),(586,'96','32830743',1),(587,'96','91846162',2),(588,'96','81158587',1),(589,'96','91419728',2),(590,'96','91291923',2),(591,'96','91180355',2),(592,'96','91775757',1),(593,'96','81190620',2),(594,'96','91621165',2),(595,'96','91342549',2),(596,'96','91342549',2),(597,'96','32811823',1),(598,'96','99631829',2),(599,'96','81199194',2),(600,'96','91131521',2),(601,'96','32811990',1),(602,'96','81130492',2),(603,'96','84025662',2),(604,'96','99647826',1),(605,'96','99634134',2),(606,'96','91177770',2),(607,'96','91256086',2),(608,'96','32811755',1),(609,'96','91138264',2),(610,'96','91231335',2),(611,'96','91563542',1),(612,'96','91731906',2),(613,'96','91731906',2),(614,'96','99663663',2),(615,'96','99658624',2),(616,'96','32833915',1),(617,'96','99639036',2),(618,'96','91149922',2),(619,'96','91116535',1),(620,'96','91271428',2),(621,'96','81218791',2),(622,'96','32832399',1),(623,'96','91638876',2),(624,'96','32832399',1),(625,'96','91607220',2),(628,'96','81316628',2),(629,'96','91288701',2),(630,'96','91151052',1),(631,'96','81232316',2),(632,'96','91225001',1),(633,'96','91225001',2),(634,'96','91398385',1),(635,'96','91398385',2),(636,'96','91461730',2),(637,'96','91365028',1),(638,'96','81310767',2),(639,'96','91116535',2),(640,'96','32813941',1),(641,'96','32814222',1),(642,'96','91109148',2),(643,'96','91320926',1),(644,'96','91662850',2),(645,'96','91198619',2),(646,'96','99730265',1),(647,'96','91115972',2),(648,'96','32811939',1),(649,'96','81173383',2),(650,'96','91120997',2),(651,'96','91720923',2),(652,'96','91536888',2),(653,'96','81198716',2),(654,'96','91239666',1),(655,'96','99064613',2),(656,'96','91808956',2),(657,'96','91446529',1),(658,'96','91335696',2),(659,'96','92834146',1),(660,'96','91233804',2),(661,'96','32812058',1),(662,'96','91313342',2),(663,'96','91234463',2),(664,'96','91198264',2),(665,'96','32814808',1),(666,'96','91375397',2),(667,'96','32832766',1),(668,'96','91481206',2),(669,'96','32832766',1),(670,'96','91481206',2),(671,'96','32811095',1),(672,'96','91259537',2),(673,'96','32830108',1),(674,'96','81120635',2),(675,'96','32812093',1),(676,'96','91400909',2),(677,'96','91292517',2),(678,'96','91329389',2),(680,'96','32814808',1),(682,'96','91323833',2),(683,'96','81162891',1),(684,'96','91193176',2),(685,'96','99069555',1),(686,'96','91613968',2),(687,'96','91218594',2),(688,'96','91924942',2),(689,'96','81296126',1),(690,'96','91398984',2),(691,'96','91265301',2),(692,'96','91114210',1),(693,'96','99088540',2),(694,'96','91255594',2),(695,'96','91155734',2),(696,'96','91160691',2),(697,'96','91477234',2),(698,'96','91534131',2),(699,'96','99034036',2),(700,'96','99641147',2),(701,'96','32420154',1),(702,'96','91263013',2),(703,'96','81130515',2),(704,'96','91112660',2),(705,'96','96',1),(706,'96','91129976',2),(707,'96','91418992',2),(708,'96','99634575',2),(709,'96','81233925',2),(710,'96','32831779',1),(711,'96','91125143',2),(712,'96','32813993',1),(713,'96','32813400',1),(714,'96','99023456',2),(715,'96','32814902',1),(716,'96','99736901',2),(717,'96','32813584',1),(718,'96','996368',2),(719,'96','81249337',2),(720,'96','91560052',2),(721,'96','99748989',2),(722,'96','32812035',1),(723,'96','91226358',2),(724,'96','91314200',2),(725,'96','81261127',1),(726,'96','91176755',2),(727,'96','81213814',1),(728,'96','81148702',2),(729,'96','81310852',1),(730,'96','91497605',2),(731,'96','81322133',1),(732,'96','81120933',1),(733,'96','91376207',2),(734,'96','91425074',2),(735,'96','32811786',1),(736,'96','91161741',2),(737,'96','91480118',1),(738,'96','81165632',2),(739,'96','32830470',1),(740,'96','91605210',2),(741,'96','91523076',2),(742,'96','32835298',1),(743,'96','91613589',2),(744,'96','91481454',2),(745,'96','32812744',1),(746,'96','91319550',2),(747,'96','32812933',1),(748,'96','91388787',2),(749,'96','32815089',1),(750,'96','91194055',2),(751,'96','32812933',1),(752,'96','81353191',2),(753,'96','32815511',1),(754,'96','91130910',1),(755,'96','91150856',2),(756,'96','91317349',1),(757,'96','81281889',2),(758,'96','91195284',1),(759,'96','99023332',2),(760,'96','91362942',1),(761,'96','84044365',2),(762,'96','91130910',1),(763,'96','91150856',2),(764,'96','32833039',1),(765,'96','91577714',2),(766,'96','91618829',2),(767,'96','91364462',2),(768,'96','91223974',2),(769,'96','91440829',2),(770,'96','92831313',1),(771,'96','32813193',1),(772,'96','91173466',2),(773,'96','32811263',1),(774,'96','32812487',1),(775,'96','81199355',2),(776,'96','91183664',2),(777,'96','34231197',1),(778,'96','81150658',1),(779,'96','91274363',2),(780,'96','33221181',1),(781,'96','81126721',2),(782,'96','91362749',2),(783,'96','32814790',1),(784,'96','91194125',2),(785,'96','32814790',1),(786,'96','91194125',2),(787,'96','81321541',1),(788,'96','91317664',2),(789,'96','81174233',1),(790,'96','32834281',2),(791,'96','91119816',2),(792,'96','32832862',1),(793,'96','91291248',2),(794,'96','81199287',2),(795,'96','32813881',1),(796,'96','91244428',2),(797,'96','91171751',2),(798,'96','32835381',1),(799,'96','91171416',2),(800,'96','91852486',2),(801,'96','91156136',2),(802,'96','32811348',1),(803,'96','91434525',2),(804,'96','81313661',2),(805,'96','32812842',1),(806,'96','91140481',2),(807,'96','91461752',2),(808,'96','32830911',1),(809,'96','91478648',2),(810,'96','32830911',1),(811,'96','91069800',2),(812,'96','81150658',1),(813,'96','91143404',2),(814,'96','32811137',1),(815,'96','91474443',2),(818,'96','99095773',2),(819,'96','91229264',1),(820,'96','81123970',2),(821,'96','91243285',1),(822,'96','91249061',2),(823,'96','99720114',2),(824,'96','32811582',1),(825,'96','91316264',2),(826,'96','91182436',2),(827,'96','91151013',2),(828,'96','32812609',1),(829,'96','91452670',2),(830,'96','32812300',1),(831,'96','32811250',1),(832,'96','91285383',2),(833,'96','91767646',2),(834,'96','84057748',1),(835,'96','91238080',2),(836,'96','99717045',1),(837,'96','91376093',2),(838,'96','91672757',2),(839,'96','91150500',2),(840,'96','81253800',1),(841,'96','91194682',2),(842,'96','91185965',1),(843,'96','91222225',2),(844,'96','32821300',1),(845,'96','91275804',2),(846,'96','91270272',2),(847,'96','91455681',2),(848,'96','91948101',2),(851,'96','32811464',1),(852,'96','99063776',2),(853,'96','91860575',2),(854,'96','32811252',1),(855,'96','99614712',2),(856,'96','91631623',1),(857,'96','91348345',2),(858,'96','91316426',1),(859,'96','81379077',2),(860,'96','91141063',2),(861,'96','91141063',2),(862,'96','91282640',2),(863,'96','99763279',1),(864,'96','91127625',2),(865,'96','91437141',2),(866,'96','91626210',2),(868,'96','91177202',2),(869,'96','91686600',2),(870,'96','32811143',1),(871,'96','91513770',2),(872,'96','91474854',1),(873,'96','91138264',2),(874,'96','91362749',2),(875,'96','81379793',1),(876,'96','91174229',2),(877,'96','91223193',2),(878,'96','32814821',1),(879,'96','91882307',2),(880,'96','92832975',1),(881,'96','99736496',2),(882,'96','81153117',2),(883,'96','99057385',2),(884,'96','91349909',2),(885,'96','32811844',1),(886,'96','91198850',2),(887,'96','32812300',1),(888,'96','91380670',2),(889,'96','32812046',1),(890,'96','99720321',1),(891,'96','99712344',2),(892,'96','81226673',2),(893,'96','99013244',1),(894,'96','91125883',2),(895,'96','99711337',1),(896,'96','91568862',2),(897,'96','91254428',2),(898,'96','32832995',1),(899,'96','91128025',2),(900,'96','91482363',2),(901,'96','91975429',2),(902,'96','32811948',1),(903,'96','99719684',2),(904,'96','91102876',2),(905,'96','32811440',1),(906,'96','91231023',2),(907,'96','91737703',1),(908,'96','99025290',2),(909,'96','32812528',1),(910,'96','91944933',2),(911,'96','32811348',1),(912,'96','91221362',2),(913,'96','32812830',1),(914,'96','91184517',2),(915,'96','91150260',1),(916,'96','91682171',2),(917,'96','91605144',2),(918,'96','32812612',1),(919,'96','81295020',2),(920,'96','32814947',1),(921,'96','91564714',2),(922,'96','32830911',1),(923,'96','81401582',2),(924,'96','35211753',1),(925,'96','91418050',2),(926,'96','91129248',2),(927,'96','32412284',1),(928,'96','91513473',2),(929,'96','99143004',2),(931,'96','91897070',2),(934,'96','92814595',1),(939,'96','92814914',1),(940,'96','81023075',2),(942,'96','91259930',2),(943,'96','91716254',2),(945,'96','91291395',2),(946,'96','91495465',2),(947,'96','91364494',2),(948,'96','91288701',2),(949,'96','91436609',2),(951,'96','91563737',2),(952,'96','91893204',2),(953,'96','91517161',2),(954,'96','91409875',2),(955,'96','91631997',2),(956,'96','91186872',2),(957,'96','91161554',2),(958,'96','92056515',2),(959,'96','91114231',2),(960,'96','91371166',2),(961,'96','92056515',2),(962,'96','91118289',2),(963,'96','91150903',2),(964,'96','32814967',1),(965,'96','88012643',2),(966,'96','81312349',2),(967,'96','91652702',2),(968,'96','32813036',1),(969,'96','91424730',2),(970,'96','81381385',2),(971,'96','91359825',2),(972,'96','91522084',2),(973,'96','91220545',1),(974,'96','91574354',2),(975,'96','91654287',2),(976,'96','91426909',2),(977,'96','91521630',2),(978,'96','32815038',1),(979,'96','92054271',2),(980,'96','91474443',2),(981,'96','91474443',2),(982,'96','91166334',2),(983,'96','91218774',2),(984,'75','91194112',1),(985,'96','91849359',2),(986,'96','91218774',2),(987,'96','91697194',2),(988,'96','99043827',2),(989,'96','91085317',2),(990,'96','91230871',2),(991,'96','91001626',2),(992,'96','91574354',2),(993,'96','32811786',1),(994,'96','91276940',2),(995,'96','91276940',2),(996,'96','91532511',2),(997,'96','91517462',2),(998,'96','81171154',2),(999,'96','91171094',2),(1000,'96','91511972',2),(1001,'96','32812680',1),(1002,'96','91662572',2),(1003,'96','91153251',2),(1004,'96','91116021',2),(1005,'96','91441595',2),(1006,'96','91132235',2),(1007,'96','91215313',2),(1008,'96','91116021',2),(1009,'96','91897190',2),(1010,'96','91021618',2),(1011,'96','91615920',2),(1012,'96','91560120',2),(1013,'96','91327880',2),(1014,'96','91888776',1),(1015,'96','81128085',2),(1016,'09','69903154',1),(1017,'96','81220446',2),(1018,'96','91448111',2),(1019,'96','91465560',2),(1020,'96','91640699',2),(1021,'96','91411583',2),(1022,'96','32512414',1),(1023,'96','91247476',2),(1024,'96','32813315',1),(1025,'96','32813315',1),(1026,'96','99765177',2),(1027,'96','91167287',2),(1028,'96','91373053',2),(1029,'96','91496575',2),(1030,'96','91211285',2),(1031,'96','91275087',2),(1032,'96','32832849',1),(1033,'96','91780868',2),(1034,'96','99765177',2),(1035,'96','91182817',2),(1036,'96','91322566',2),(1037,'96','32812751',1),(1038,'96','91775704',2),(1039,'96','81244769',1),(1040,'96','32341724',1),(1041,'96','32341724',1),(1042,'96','91467547',2),(1043,'96','91467547',2),(1044,'96','32831674',1),(1045,'96','32831674',1),(1046,'96','91577467',2),(1047,'96','91850237',2),(1048,'96','91979935',2),(1049,'96','91848202',2),(1050,'96','91011810',2),(1051,'96','91136867',2),(1052,'96','91516490',2),(1053,'96','91939739',2),(1054,'96','91141773',2),(1055,'96','91221690',2),(1056,'96','91221690',2),(1057,'96','91575254',2),(1058,'96','91136827',2),(1059,'96','91621997',2),(1060,'96','91015917',2),(1061,'96','91105292',1),(1062,'96','91105292',2),(1063,'96','92054271',2),(1064,'96','91654287',2),(1065,'96','91825727',1),(1066,'96','91152468',2),(1067,'96','91999455',2),(1068,'96','91524539',2),(1069,'96','91214185',2),(1070,'96','91495027',2),(1071,'96','81294085',2),(1072,'96','91464367',2),(1073,'96','91953275',2),(1074,'96','91399303',1),(1075,'96','91272067',2),(1076,'96','32811607',1),(1077,'96','32811359',1),(1078,'96','32811359',1),(1079,'96','32811359',1),(1080,'96','91967883',2),(1081,'96','91907216',2),(1082,'96','91195710',2),(1083,'96','91285114',2),(1084,'96','32811405',1),(1085,'96','91173331',2),(1086,'96','32831313',1),(1087,'96','91666789',1),(1088,'96','91383619',1),(1089,'96','32226561',1),(1090,'96','91141255',2),(1091,'91','32441264',1),(1092,'91','88163534',2),(1093,'96','91238646',1),(1094,'96','81249892',2),(1095,'96','99147372',2),(1096,'96','91238646',1),(1097,'96','91811537',1),(1098,'96','91788944',2),(1099,'96','32234075',1),(1100,'96','91431008',2),(1101,'96','91538262',2),(1102,'96','32830431',1),(1103,'96','81214589',2),(1104,'96','81293119',2),(1105,'96','91568904',2),(1106,'96','91429507',2),(1107,'96','91514432',2),(1108,'96','91144364',1),(1109,'96','91231992',2),(1110,'96','91249823',2),(1111,'96','91167287',2),(1112,'96','91167287',2),(1113,'96','32815193',1),(1114,'96','32812189',1),(1115,'96','91524166',2),(1116,'96','91697545',1),(1117,'96','91348253',2),(1118,'96','32821117',1),(1119,'91','32027021',2),(1120,'96','32821117',1),(1121,'96','32027021',2),(1122,'96','32821117',1),(1123,'91','32027021',2),(1124,'96','91354919',2),(1125,'96','91440127',2),(1126,'96','91440127',2),(1127,'96','91388742',2),(1128,'96','32813778',1),(1129,'96','91267350',2),(1130,'96','32812404',1),(1131,'96','91134415',2),(1132,'96','81194721',1),(1133,'96','81334552',2),(1134,'96','81334552',2),(1135,'96','81120686',2),(1136,'96','81114105',1),(1137,'96','81111989',2),(1138,'96','91284491',2),(1139,'96','91253483',2),(1140,'96','91787436',2),(1141,'96','32812351',1),(1142,'96','32814663',2),(1143,'96','81143981',2),(1144,'96','91407938',1),(1145,'96','91795444',2),(1146,'96','32832849',1),(1147,'96','91686030',2),(1148,'96','32821230',1),(1149,'96','32821230',1),(1150,'96','91860466',2),(1151,'96','91263928',2),(1152,'96','32226561',1),(1153,'96','91230837',1),(1154,'96','91898877',2),(1155,'96','32815371',1),(1156,'96','91349854',2),(1157,'96','32226561',1),(1158,'96','91128329',2),(1159,'96','81151274',1),(1160,'96','91128329',2),(1161,'96','91128329',1),(1162,'96','81151274',2),(1163,'96','91767300',1),(1164,'96','91181147',2),(1165,'96','91377956',2),(1166,'96','91424730',2),(1167,'96','91107744',2),(1168,'96','32811436',1),(1169,'96','91545100',2),(1170,'96','32811853',1),(1171,'96','91158307',2),(1172,'96','32253030',1),(1173,'96','32221764',1),(1174,'96','32812968',1),(1175,'96','91123291',2),(1176,'96','91618760',1),(1177,'96','91053396',1),(1178,'96','81174559',2),(1179,'96','92054271',2),(1180,'96','91228447',2),(1181,'96','91461832',2),(1182,'96','91652702',2),(1183,'96','32813338',1),(1184,'96','91177745',1),(1185,'96','91486787',2),(1186,'96','91265491',2),(1187,'96','91194055',2),(1188,'96','91281866',2),(1189,'96','32833386',1),(1190,'96','912919',2),(1191,'96','32833386',1),(1192,'96','91291970',2),(1193,'96','91825727',2),(1194,'96','91545601',1),(1195,'96','91535474',1),(1196,'96','91291872',2),(1197,'96','91558881',2),(1198,'96','91118289',1),(1199,'96','91189227',2),(1200,'96','32813315',1),(1201,'96','91524539',2),(1202,'96','91112789',2),(1203,'96','91138678',2),(1204,'96','91042159',2),(1205,'96','91087826',2),(1206,'96','91011810',2),(1207,'96','91631871',2),(1208,'96','92064454',2),(1209,'96','91950879',2),(1210,'96','91697545',2),(1211,'96','91571747',2),(1212,'96','81243610',2),(1213,'96','91445711',2),(1214,'96','32811166',1),(1215,'96','91812867',2),(1216,'96','91812867',2),(1217,'96','31162801',1),(1218,'96','81023038',2),(1219,'96','98102303',2),(1220,'96','91396893',1),(1221,'96','91423352',2),(1222,'96','91434857',2),(1223,'96','32832721',1),(1224,'96','91551179',2),(1225,'96','91138824',2),(1226,'96','91138824',2),(1227,'96','91889304',2),(1228,'96','32422601',1),(1229,'96','91212616',2),(1230,'96','32226351',1),(1231,'96','91230880',2),(1232,'96','91115841',2),(1233,'96','91661580',1),(1234,'96','81388279',2),(1235,'96','91359825',2),(1236,'96','91966655',2),(1237,'96','91260552',2),(1238,'96','91889865',2),(1239,'96','91131346',1),(1240,'96','91350353',2),(1241,'96','91652067',2),(1242,'96','99108203',2),(1243,'96','91179757',2),(1244,'96','91157197',2),(1245,'96','91652067',2),(1246,'96','91547713',2),(1247,'96','91581059',1),(1248,'96','91362749',1),(1249,'96','32811377',1),(1250,'96','91048365',1),(1251,'96','32811377',2),(1252,'96','32226351',1),(1253,'96','91133663',2),(1254,'96','32821362',1),(1255,'96','91996476',2),(1256,'99','91616702',2),(1257,'96','91364641',2),(1258,'96','91522084',2),(1259,'96','91375382',2),(1260,'96','91375382',2),(1261,'96','32830767',1),(1262,'96','99161545',2),(1263,'96','91121260',2),(1264,'96','91121260',2),(1265,'96','99716174',2),(1266,'96','91402870',2),(1267,'96','91170185',2),(1268,'96','91170185',2),(1269,'96','92068274',2),(1270,'96','32515981',1),(1271,'96','91581059',1),(1272,'96','91349800',2),(1273,'96','91464473',2),(1274,'96','91167287',2),(1275,'96','91568904',2),(1276,'96','91400042',1),(1277,'96','32811413',1),(1278,'96','91070131',2),(1279,'96','91631496',2),(1280,'96','91453270',2),(1281,'96','91797848',1),(1282,'96','91171094',2),(1283,'96','91133109',2),(1284,'96','91349854',2),(1285,'96','91442474',1),(1286,'96','98145424',2),(1287,'96','32241528',1),(1288,'96','91540846',2),(1289,'96','91797848',1),(1290,'96','91388291',2),(1291,'96','91350353',2),(1292,'96','91129899',2),(1293,'96','91126248',2),(1294,'96','81112277',2),(1295,'96','91369661',2),(1296,'96','32270966',1),(1297,'91','89180743',2),(1298,'96','91333539',2),(1299,'96','91613382',2),(1300,'96','91114231',2),(1301,'96','91030842',2),(1302,'96','91030842',2),(1303,'96','99184915',2),(1304,'96','91832759',2),(1305,'96','91355102',2),(1306,'96','91298800',2),(1307,'96','91298800',2),(1308,'96','92089040',2),(1309,'96','91847965',2),(1310,'96','91042949',2),(1311,'96','91372322',2),(1312,'96','91129131',2),(1313,'96','91647898',2),(1314,'96','91114736',2),(1315,'96','91471249',2),(1316,'96','91711291',2),(1317,'96','91032914',2),(1318,'96','91032914',2),(1319,'96','91677694',2),(1320,'96','91118803',2),(1321,'96','91238646',2),(1322,'96','91315315',2),(1323,'96','91226838',2),(1324,'96','91474531',2),(1325,'96','91907718',2),(1326,'96','92002033',2),(1327,'96','91494810',2),(1328,'96','91100315',2),(1329,'96','91439871',2),(1330,'96','92028185',2),(1331,'96','91449896',2),(1332,'96','91076177',2),(1333,'96','91974172',2),(1334,'96','91526615',2),(1335,'96','91644973',2),(1336,'96','91236742',2),(1337,'96','91559657',2),(1338,'96','91560199',2),(1339,'96','91626243',2),(1340,'96','91457770',2),(1341,'96','91577938',2),(1342,'96','91028851',2),(1343,'96','91796067',2),(1344,'96','91034365',2),(1345,'96','91034365',2),(1346,'96','91360623',2),(1347,'96','91155553',2),(1348,'96','91792082',2),(1349,'96','91112374',2),(1350,'96','91646661',2),(1351,'96','91394585',2),(1352,'96','91119717',2),(1353,'96','91119717',2),(1354,'96','92074606',2),(1355,'96','91175411',2),(1356,'96','91939433',2),(1357,'96','99180100',2),(1358,'96','91223006',2),(1359,'96','91867727',2),(1360,'96','91247199',2),(1361,'96','81183190',2),(1362,'96','91389941',2),(1363,'96','91391069',2),(1364,'96','91763273',2),(1365,'96','91923540',2),(1366,'96','91569902',2),(1367,'96','91299963',2),(1368,'96','91201727',2),(1369,'96','91461832',2),(1370,'96','91626039',2),(1371,'96','91371751',2),(1372,'96','91273401',2),(1373,'96','92066450',2),(1374,'96','91910650',2),(1375,'96','91501379',2),(1376,'96','91835364',2),(1377,'96','91386347',2),(1378,'96','91955961',2),(1379,'96','91145553',2),(1380,'96','91578133',2),(1381,'96','91680548',2),(1382,'96','91781922',2),(1383,'96','91312023',2),(1384,'96','92024302',2),(1385,'96','91550821',2),(1386,'96','91100140',2),(1387,'96','91429064',2),(1388,'96','91182394',2),(1389,'96','91041833',2),(1390,'96','91474570',2),(1391,'96','91136252',2),(1392,'96','91120140',2),(1393,'96','91981931',2),(1394,'96','91930809',2),(1395,'96','91810184',2),(1396,'96','91494187',2),(1397,'96','91714370',2),(1398,'96','91261634',2),(1399,'96','91503411',2),(1400,'96','91515116',2),(1401,'96','91413423',2),(1402,'96','91994635',2),(1403,'96','91572067',2),(1404,'96','91429521',2),(1405,'96','91648929',2),(1406,'96','91727725',2),(1407,'96','91428791',2),(1408,'96','91844800',2),(1409,'96','91836770',2),(1410,'96','91328105',2),(1411,'96','91662885',2),(1412,'96','91744252',2),(1413,'96','91907121',2),(1414,'96','91208008',2),(1415,'96','91580841',2),(1416,'96','91351379',2),(1417,'96','91388398',2),(1418,'96','91168917',2),(1419,'96','91285974',2),(1420,'96','91979216',2),(1421,'96','81038446',2),(1422,'96','91515117',2),(1423,'96','91479601',2),(1424,'96','32830480',1),(1425,'96','91328621',2),(1426,'96','91713419',2),(1427,'96','91647837',2),(1428,'96','91840534',2),(1429,'96','91283324',2),(1430,'96','91195175',2),(1431,'96','91344339',2),(1432,'96','91067793',2),(1433,'96','91361053',2),(1434,'96','91884876',2),(1435,'96','91671809',2),(1436,'96','91815329',2),(1437,'96','91470306',2),(1438,'96','91263415',2),(1439,'96','91518938',2),(1440,'96','91715371',2),(1441,'96','91526910',2),(1442,'96','99176488',2),(1443,'96','91495015',2),(1444,'96','91703380',2),(1445,'96','91319069',2),(1446,'96','91207472',2),(1447,'96','91562675',2),(1448,'96','91233474',2),(1449,'96','91888206',2),(1450,'96','91716384',2),(1451,'96','91170708',2),(1452,'96','91647321',2),(1453,'96','91211210',2),(1454,'96','91432264',2),(1455,'96','91255817',2),(1456,'96','88019592',2),(1457,'96','91424347',2),(1458,'96','91588111',2),(1459,'96','91611613',2),(1460,'96','91841211',2),(1461,'96','91563490',2),(1462,'96','91377351',2),(1463,'96','91233474',1),(1464,'96','91559266',2),(1465,'96','91343609',2),(1466,'96','91319069',2),(1467,'96','91444439',2),(1468,'96','91888206',2),(1469,'96','91272080',2),(1470,'96','91613172',2),(1471,'96','91567465',2),(1472,'96','91830157',2),(1473,'96','91419469',2),(1474,'96','91866310',2),(1475,'96','91563901',2),(1476,'96','91124249',2),(1477,'96','91314037',2),(1478,'96','91495381',2),(1479,'96','91853546',2),(1480,'96','91279150',2),(1481,'96','91213723',2),(1482,'96','91651454',2),(1483,'96','91360032',2),(1484,'96','91788442',2),(1485,'96','91447897',2),(1486,'96','91899664',2),(1487,'96','91129509',2),(1488,'96','91270491',2),(1489,'96','91530133',2),(1490,'96','91349800',2),(1491,'96','91329343',2),(1492,'96','91469231',2),(1493,'96','91755701',2),(1494,'96','91726334',2),(1495,'96','91918622',2),(1496,'96','91726334',2),(1497,'96','91842145',2),(1498,'96','91449982',2),(1499,'96','91967154',2),(1500,'96','91636727',2),(1501,'96','91351475',2),(1502,'96','91857490',2),(1503,'96','91047458',2),(1504,'96','91965458',2),(1505,'96','91614419',2),(1506,'96','91538132',2),(1507,'96','92060868',2),(1508,'96','91852633',2),(1509,'96','91322833',2),(1510,'96','91978269',2),(1511,'96','91368110',2),(1512,'96','91275659',2),(1513,'96','91011863',2),(1514,'96','91011863',2),(1515,'96','91532511',2),(1516,'96','91907107',2),(1517,'96','91232816',2),(1518,'96','91508524',2),(1519,'96','91150133',2),(1520,'96','91679969',2),(1521,'96','91143123',2),(1522,'96','91402974',2),(1523,'96','91717653',2),(1524,'96','91717653',2),(1525,'96','91533313',2),(1526,'96','91874284',2),(1527,'96','91457200',2),(1528,'96','91538047',2),(1529,'96','91538047',2),(1530,'96','91648227',2),(1531,'96','91329892',2),(1532,'96','91463563',2),(1533,'96','91635663',2),(1534,'96','91530372',2),(1535,'96','91424347',1),(1536,'96','91514843',2),(1537,'96','91555506',2),(1538,'96','91171047',2),(1539,'96','91171047',2),(1540,'96','91160878',2),(1541,'96','91487426',2),(1542,'96','91171047',2),(1543,'96','91707205',2),(1544,'96','91965315',2),(1545,'96','91154655',2),(1546,'96','91129057',2),(1547,'96','91646689',2),(1548,'96','91636601',2),(1549,'96','91464367',2),(1550,'96','91522821',2),(1551,'96','91409035',2),(1552,'96','91871573',2),(1553,'96','91676767',2),(1554,'96','91908388',2),(1555,'96','91261942',2),(1556,'96','91467176',2),(1557,'96','91558696',2),(1558,'96','91702194',2),(1559,'96','91360032',1),(1560,'96','91697019',2),(1561,'96','91225422',2),(1562,'96','91038163',2),(1563,'96','91662772',2),(1564,'96','91560838',2),(1565,'96','91611436',2),(1566,'96','91967878',2),(1567,'96','91072446',2),(1568,'96','91129644',2),(1569,'96','91579833',2),(1570,'96','91947768',2),(1571,'96','91675005',2),(1572,'96','91197636',2),(1573,'96','91454622',2),(1574,'96','91548266',2),(1575,'96','91454622',2),(1576,'96','91269934',2),(1577,'96','91527344',2),(1578,'96','91213165',2),(1579,'96','91155250',2),(1580,'96','91737703',2),(1581,'96','91557904',2),(1582,'96','91557904',2),(1583,'96','91853006',2),(1584,'96','91639685',2),(1585,'96','91049172',2),(1586,'96','92074242',2),(1587,'96','91341055',2),(1588,'96','91766300',2),(1589,'96','99024065',2),(1590,'96','91766300',2),(1591,'96','91894282',2),(1592,'96','91467547',2),(1593,'96','91220647',2),(1594,'96','91716774',2),(1595,'96','91165304',2),(1596,'96','91009370',2),(1597,'96','91702137',2),(1598,'96','91953275',2),(1599,'96','91765345',2),(1600,'96','91068056',2),(1601,'96','91638300',2),(1602,'96','91840807',2),(1603,'96','91327929',2),(1604,'96','92012236',2),(1605,'96','91354965',2),(1606,'96','91012668',2),(1607,'96','91293288',2),(1608,'96','81230402',2),(1609,'96','91220360',2),(1610,'96','91512500',2),(1611,'96','91082694',2),(1612,'96','91636300',2),(1613,'96','91187589',2),(1614,'96','81218818',2),(1615,'96','91811686',2),(1616,'96','91894872',2),(1617,'96','91325835',2),(1618,'96','91803244',2),(1619,'96','91961882',2),(1620,'96','91145851',2),(1621,'96','91021020',2),(1622,'96','91548787',2),(1623,'96','91285114',2),(1624,'96','91334973',2),(1625,'96','91528355',2),(1626,'96','92020809',2),(1627,'96','91737281',2),(1628,'96','91312664',2),(1629,'96','92026985',2),(1630,'96','91338590',2),(1631,'96','91042140',2),(1632,'96','91942898',2),(1633,'96','91417836',2),(1634,'96','91361537',2),(1635,'96','91818356',2),(1636,'96','81012528',2),(1637,'96','91696004',2),(1638,'96','91512240',2),(1639,'96','91033472',2),(1640,'96','91033472',2),(1641,'96','91135280',2),(1642,'96','91017210',2),(1643,'96','91286353',2),(1644,'96','91688321',2),(1645,'96','91764685',2),(1646,'96','91113382',2),(1647,'96','91522607',2),(1648,'96','91104093',2),(1649,'96','91185253',2),(1650,'96','91604812',2),(1651,'96','91811301',2),(1652,'96','91129899',2),(1653,'96','91578871',2),(1654,'96','91727695',2),(1655,'96','91726773',2),(1656,'96','91124249',1),(1657,'96','91301148',2),(1658,'96','91089675',2),(1659,'96','91376125',2),(1660,'96','91605504',2),(1661,'96','91638400',2),(1662,'96','91638400',2),(1663,'96','91898822',2),(1664,'96','91530147',2),(1665,'96','91861554',2),(1666,'96','91515572',2),(1667,'96','91850883',2),(1668,'96','91154577',2),(1669,'96','91211570',2),(1670,'96','91600480',2),(1671,'96','32830008',1),(1672,'96','91169444',2),(1673,'96','91585890',2),(1674,'96','91325835',1),(1675,'96','91319319',2),(1676,'96','91773273',2),(1677,'96','91996631',2),(1678,'96','91776697',2),(1679,'96','91293179',2),(1680,'96','91545676',2),(1681,'96','91636789',2),(1682,'96','91521828',2),(1683,'96','91374868',2),(1684,'96','81340456',2),(1685,'96','91756008',2),(1686,'96','91215453',2),(1687,'96','91174397',2),(1688,'96','91256755',2),(1689,'96','91431795',2),(1690,'96','91650072',2),(1691,'96','91440804',2),(1692,'96','91777018',2),(1693,'96','91290998',2),(1694,'96','91192938',2),(1695,'96','91048942',2),(1696,'96','91056822',2),(1697,'96','91229267',2),(1698,'96','91751411',2),(1699,'96','91670175',2),(1700,'96','91461121',2),(1701,'96','91442732',2),(1702,'96','91305837',2),(1703,'96','91282649',2),(1704,'96','91164418',2),(1705,'96','92088227',2),(1706,'96','91457399',2),(1707,'96','91950831',2),(1708,'96','91567507',2),(1709,'96','91511514',2),(1710,'96','91871781',2),(1711,'96','91871781',2),(1712,'96','91655684',2),(1713,'96','91902164',2),(1714,'96','91211378',2),(1715,'96','91718789',2),(1716,'96','91844046',2),(1717,'96','91643840',2),(1718,'96','92018568',2),(1719,'96','91168353',2),(1720,'96','91541470',2),(1721,'96','92054271',2),(1722,'96','91330951',2),(1723,'96','91262811',2),(1724,'96','91956459',2),(1725,'96','91054769',2),(1726,'96','91222845',2),(1727,'96','91338645',2),(1728,'96','91185172',2),(1729,'96','91437336',2),(1730,'96','91328850',2),(1731,'96','91404284',2),(1732,'96','91708826',2),(1733,'96','91204972',2),(1734,'96','91727454',2),(1735,'96','92003783',2),(1736,'96','81825757',2),(1737,'96','91449593',2),(1738,'96','91381583',2),(1739,'96','91175582',2),(1740,'96','91722836',2),(1741,'96','91811686',2),(1742,'96','91185063',2),(1743,'96','91252638',2),(1744,'96','91252638',2),(1745,'96','91761001',2),(1746,'96','91707269',2),(1747,'96','91389921',2),(1748,'96','91197557',2),(1749,'96','91161576',2),(1750,'96','91621990',2),(1751,'96','91760308',2),(1752,'96','91358711',2),(1753,'96','91351066',2),(1754,'96','32812459',1),(1755,'96','91231617',2),(1756,'96','91247518',2),(1757,'96','91299101',2),(1758,'96','91585704',2),(1759,'96','91247562',2),(1760,'96','91165899',2),(1761,'96','91165899',2),(1762,'96','91082069',2),(1763,'96','91082069',2),(1764,'96','91611151',2),(1765,'96','91169711',2),(1766,'96','91089130',2),(1767,'96','32812699',1),(1768,'96','91211754',2),(1769,'96','91170840',2),(1770,'96','91644121',2),(1771,'96','91686145',2),(1772,'96','91774434',2),(1773,'96','91434574',2),(1774,'96','91276226',2),(1775,'96','91316286',2),(1776,'96','91159220',2),(1777,'96','91881437',2),(1778,'96','91408698',2),(1779,'96','91096112',2),(1780,'96','91479696',2),(1781,'96','99123004',2),(1782,'96','91191013',2),(1783,'96','91629706',2),(1784,'96','91079425',2),(1785,'96','91606940',2),(1786,'96','91682697',2),(1787,'96','91927462',2),(1788,'96','91670880',2),(1789,'96','91192404',2),(1790,'96','99147325',2),(1791,'96','91895203',2),(1792,'96','91380736',2),(1793,'96','81169917',2),(1794,'96','81305537',2),(1795,'96','91172816',2),(1796,'96','91267331',2),(1797,'96','91267331',2),(1798,'96','91527027',2),(1799,'96','91075390',2),(1800,'96','91146',2),(1801,'96','91146509',2),(1802,'96','91146509',2),(1803,'96','91888637',2),(1804,'96','92048945',2),(1805,'96','91311577',2),(1806,'96','91122106',2),(1807,'96','91570579',2),(1808,'96','91802474',2),(1809,'96','91605003',2),(1810,'96','91589225',2),(1811,'96','91740877',2),(1812,'96','91808428',2),(1813,'96','97019551',2),(1814,'96','91703721',2),(1815,'96','91127299',2),(1816,'96','91069765',2),(1817,'96','91250602',2),(1818,'96','91154533',2),(1819,'96','91237329',2),(1820,'96','91011461',2),(1821,'96','91654472',2),(1822,'96','91975322',2),(1823,'96','91804803',2),(1824,'96','91919996',2),(1825,'96','31156866',2),(1826,'96','91585460',2),(1827,'96','91977797',2),(1828,'96','91824743',2),(1829,'96','91134950',2),(1830,'96','91087135',2),(1831,'96','91418410',2),(1832,'96','99125328',2),(1833,'96','92043314',2),(1834,'96','92064302',2),(1835,'96','91110974',2),(1836,'96','91393109',2),(1837,'96','91422653',2),(1838,'96','91835770',2),(1839,'96','91621373',2),(1840,'96','91799922',2),(1841,'96','32518291',1),(1842,'96','91894282',2),(1843,'96','91523096',2),(1844,'96','91947551',2),(1845,'96','91164932',2),(1846,'96','91477400',2),(1847,'96','91641820',2),(1848,'96','91384755',2),(1849,'96','32421258',1),(1850,'96','91641820',2),(1851,'96','91655309',2),(1852,'96','32421162',1),(1853,'96','91572544',2),(1854,'96','32235609',2),(1855,'96','32221303',1),(1856,'96','91330819',2),(1857,'96','91093010',2),(1858,'96','91328670',2),(1859,'96','91930383',2),(1860,'96','91930383',2),(1861,'96','91453270',2),(1862,'96','91453270',2),(1863,'96','91448877',2),(1864,'96','91448877',2),(1865,'96','32811777',1),(1866,'96','91066936',2),(1867,'96','91352927',2),(1868,'96','99136271',2),(1869,'96','91822908',2),(1870,'96','91347173',2),(1871,'96','81240225',2),(1872,'96','32821000',1),(1873,'96','91448877',2),(1874,'96','32233507',1),(1875,'96','91180778',2),(1876,'96','32821180',1),(1877,'96','91164694',2),(1878,'96','91394054',2),(1879,'96','91786016',2),(1880,'96','91126251',2),(1881,'96','32830431',1),(1882,'96','91291395',2),(1883,'96','91291395',2),(1884,'96','99193109',2),(1885,'96','91016295',2),(1886,'96','91296545',2),(1887,'96','91296545',2),(1888,'96','91098161',2),(1889,'96','32832579',1),(1890,'96','91292138',2),(1891,'96','91354814',2),(1892,'96','99128623',2),(1893,'96','32234183',1),(1894,'96','99726964',2),(1895,'96','99199373',2),(1896,'96','91199293',2),(1897,'96','91940167',2),(1898,'96','91030402',2),(1899,'96','91577467',2),(1900,'96','91329518',2),(1901,'96','91652067',2),(1902,'96','88011600',2),(1903,'96','99014651',2),(1904,'96','91014651',2),(1905,'96','32425439',1),(1906,'96','91621709',2),(1907,'96','91184178',2),(1908,'96','91823932',2),(1909,'96','91188661',2),(1910,'96','91243429',2),(1911,'96','91616702',2),(1912,'96','91542956',2),(1913,'96','91093498',2),(1914,'96','91375382',2),(1915,'96','91666863',2),(1916,'96','91275996',2),(1917,'96','91351828',2),(1918,'96','99149777',2),(1919,'96','91111567',2),(1920,'96','91224090',2),(1921,'96','91224090',2),(1922,'96','92012599',2),(1923,'96','91808428',2),(1924,'96','91568904',2),(1925,'96','91639884',2),(1926,'96','99199322',2),(1927,'96','99143039',2),(1928,'96','91161546',2),(1929,'96','99113074',2),(1930,'96','91989433',2),(1931,'96','32412955',1),(1932,'96','99145226',2),(1933,'96','91523138',2),(1934,'96','99139408',2),(1935,'96','91996476',2),(1936,'96','91996476',2),(1937,'96','91480758',2),(1938,'96','91271999',2),(1939,'96','99115222',2),(1940,'96','32813338',1),(1941,'96','99143950',2),(1942,'96','91231992',2),(1943,'96','32832074',1),(1944,'96','91432118',2),(1945,'96','99045298',2),(1946,'96','91175310',2),(1947,'96','91112816',2),(1948,'96','92024302',1),(1949,'96','91328621',2),(1950,'96','91802463',2),(1951,'96','91563741',1),(1952,'96','91429064',2),(1953,'96','91802463',2),(1954,'96','91559266',2),(1955,'96','32833552',1),(1956,'96','91866310',2),(1957,'96','91781922',2),(1958,'96','91574463',1),(1959,'96','91319069',2),(1960,'96','91011863',2),(1961,'96','84161878',2),(1962,'96','91130863',2),(1963,'96','91076177',2),(1964,'96','91264248',2),(1965,'96','91328621',2),(1966,'96','91339730',2),(1967,'96','91923540',2),(1968,'96','91394585',2),(1969,'96','91449982',2),(1970,'96','91896256',2),(1971,'96','91255817',2),(1972,'96','91810184',2),(1973,'96','32242708',1),(1974,'96','91374490',2),(1975,'96','91237329',2),(1976,'96','91232816',2),(1977,'96','91703380',2),(1978,'96','84036523',1),(1979,'96','91334265',2),(1980,'96','91792082',2),(1981,'96','91268423',1),(1982,'96','91512607',2),(1983,'96','91226838',2),(1984,'96','91069765',2),(1985,'96','91155250',2),(1986,'96','81084019',1),(1987,'96','91521112',2),(1988,'96','91844800',2),(1989,'96','99817074',1),(1990,'96','91474570',2),(1991,'96','91360623',2),(1992,'96','91174397',2),(1993,'96','91905167',1),(1994,'96','91626039',2),(1995,'96','91941708',2),(1996,'96','92053372',1),(1997,'96','91361537',2),(1998,'96','91112374',2),(1999,'96','81395226',1),(2000,'96','91578133',2),(2001,'96','91979216',2),(2002,'96','91989433',2),(2003,'96','91227182',2),(2004,'96','91941211',1),(2005,'96','91788442',2),(2006,'96','91908388',2),(2007,'96','91285791',2),(2008,'96','91756008',2),(2009,'96','91457770',2),(2010,'96','91150013',1),(2011,'96','91233474',2),(2012,'96','91503485',2),(2013,'96','91756169',2),(2014,'96','91113382',2),(2015,'96','92012236',2),(2016,'96','91298800',2),(2017,'96','99122502',2),(2018,'96','91228551',2),(2019,'96','91842145',2),(2020,'96','99202769',2),(2021,'96','91494187',2),(2022,'96','32813142',1),(2023,'96','91437141',2),(2024,'96','91515116',2),(2025,'96','91893849',2),(2026,'96','91494421',2),(2027,'96','91136252',2),(2028,'96','91328105',2),(2029,'96','91532511',2),(2030,'96','91474683',2),(2031,'96','91389941',2),(2032,'96','91821485',2),(2033,'96','92089040',2),(2034,'96','91041833',2),(2035,'96','91261634',2),(2036,'96','91294282',2),(2037,'96','91930809',2),(2038,'96','91034365',2),(2039,'96','91702035',2),(2040,'96','91428791',2),(2041,'96','91707205',2),(2042,'96','91724947',2),(2043,'96','91252638',1),(2044,'96','91706613',2),(2045,'96','91252638',1),(2046,'96','91706613',2),(2047,'96','91129131',2),(2048,'96','91211745',2),(2049,'96','91247199',2),(2050,'96','91907107',2),(2051,'96','99145205',1),(2052,'96','91474531',2),(2053,'96','91744252',2),(2054,'96','91501379',2),(2055,'96','91881500',2),(2056,'96','91119717',2),(2057,'96','91494421',2),(2058,'96','91358711',2),(2059,'96','91815329',2),(2060,'96','91884965',2),(2061,'96','91279150',2),(2062,'96','91751411',2),(2063,'96','91526910',2),(2064,'96','91802474',2),(2065,'96','91955961',2),(2066,'96','91213723',2),(2067,'96','91145553',2),(2068,'96','91207472',2),(2069,'96','91351379',2),(2070,'96','91315315',2),(2071,'96','91129899',2),(2072,'96','91495381',2),(2073,'96','91197336',2),(2074,'96','91907121',2),(2075,'96','84072090',2),(2076,'96','91424347',2),(2077,'96','91236742',2),(2078,'96','91351475',2),(2079,'96','91272080',2),(2080,'96','91285114',1),(2081,'96','91494421',2),(2082,'96','91489896',2),(2083,'96','91760308',2),(2084,'96','91145851',2),(2085,'96','91285114',2),(2086,'96','91636601',2),(2087,'96','91122106',2),(2088,'96','91471249',2),(2089,'96','91327929',2),(2090,'96','91110974',2),(2091,'96','91192938',2),(2092,'96','91763273',2),(2093,'96','91170840',2),(2094,'96','91518938',2),(2095,'96','91270491',2),(2096,'96','91342549',1),(2097,'96','91724535',1),(2098,'96','91646661',2),(2099,'96','91567465',2),(2100,'96','91852632',2),(2101,'96','92003783',2),(2102,'96','91910480',1),(2103,'96','91028851',2),(2104,'96','91677694',2),(2105,'96','84036523',1),(2106,'96','91334265',2),(2107,'96','91467176',2),(2108,'96','91329343',2),(2109,'96','91767465',1),(2110,'96','91889664',2),(2111,'96','91635663',2),(2112,'96','32815371',1),(2113,'96','91349854',2),(2114,'96','91564141',1),(2115,'96','91487426',2),(2116,'96','91479601',1),(2117,'96','91128216',2),(2118,'96','91155553',2),(2119,'96','91168917',1),(2120,'96','91541327',2),(2121,'96','91869512',2),(2122,'96','91895203',2),(2123,'96','91716774',2),(2124,'96','91114231',2),(2125,'96','91907718',2),(2126,'96','91580841',2),(2127,'96','92072033',2),(2128,'96','99040470',1),(2129,'96','91311577',2),(2130,'96','91312023',2),(2131,'96','92002053',2),(2132,'96','91372322',2),(2133,'96','91153251',2),(2134,'96','91346769',2),(2135,'96','91331082',2),(2136,'96','92028185',2),(2137,'96','91332384',2),(2138,'96','91354780',1),(2139,'96','91867727',2),(2140,'96','91614419',2),(2141,'96','91419469',2),(2142,'96','91671809',2),(2143,'96','91124249',2),(2144,'96','91857490',2),(2145,'96','92074606',2),(2146,'96','91613172',2),(2147,'96','91161576',2),(2148,'96','91688321',2),(2149,'96','91950831',2),(2150,'96','91776692',2),(2151,'96','91204332',2),(2152,'96','91728744',2),(2153,'96','91438737',1),(2154,'96','91252458',2),(2155,'96','91674172',2),(2156,'96','91890711',2),(2157,'96','91495015',2),(2158,'96','91299963',2),(2159,'96','91636727',2),(2160,'96','91316286',2),(2161,'96','91328850',2),(2162,'96','91293179',2),(2163,'96','91541245',1),(2164,'96','91133109',2),(2165,'96','91275659',2),(2166,'96','99208822',2),(2167,'96','91638876',1),(2168,'96','91503411',2),(2169,'96','91764685',2),(2170,'96','91470306',2),(2171,'96','91140242',2),(2172,'96','91289701',1),(2173,'96','91182394',2),(2174,'96','91802474',2),(2175,'96','91611613',2),(2176,'96','91131143',2),(2177,'96','91497572',2),(2178,'96','99723939',2),(2179,'66','99956071',2),(2180,'96','91182436',1),(2181,'96','32812575',1),(2182,'96','32176232',1),(2183,'96','91157047',2),(2184,'96','32251335',1),(2185,'96','91445518',2),(2186,'51','96587627',1),(2187,'51','80110466',2),(2188,'96','91068168',2),(2189,'96','91327106',2),(2190,'96','91478131',2),(2191,'96','99767984',2),(2192,'96','91376125',2),(2193,'96','91563490',2),(2194,'96','91791337',2),(2195,'96','91315088',1),(2196,'96','91748694',1),(2197,'96','91722829',2),(2198,'96','91890556',1),(2199,'96','91060189',2),(2200,'96','91558696',2),(2201,'96','91932443',2),(2202,'96','91530372',2),(2203,'96','91377676',2),(2204,'96','91192106',1),(2205,'96','91134950',2),(2206,'96','81354597',2),(2207,'96','91974549',2),(2208,'96','91344339',1),(2209,'96','91302979',2),(2210,'96','91336111',2),(2211,'96','92043314',2),(2212,'96','91040964',2),(2213,'96','91820265',2),(2214,'96','91743297',2),(2215,'96','91396470',2),(2216,'96','91431556',2),(2217,'96','91286162',2),(2218,'96','92018895',2),(2219,'96','91637800',2),(2220,'96','91859540',2),(2221,'96','91898337',2),(2222,'96','88048158',2),(2223,'96','91555421',2),(2224,'96','91324584',2),(2225,'96','91650252',2),(2226,'96','91660033',2),(2227,'96','91853546',2),(2228,'96','91213165',2),(2229,'96','91600480',2),(2230,'96','91082069',2),(2231,'96','99135292',2),(2232,'96','32420600',1),(2233,'96','91512500',1),(2234,'96','99010217',2),(2235,'96','91233348',2),(2236,'96','91125428',2),(2237,'96','88093672',2),(2238,'96','91388742',2),(2239,'96','32421715',1),(2240,'96','91684941',2),(2241,'96','91195878',2),(2242,'96','91153251',2),(2243,'96','32815371',1),(2244,'96','91349854',2),(2245,'96','91114231',2),(2246,'96','91775790',2),(2247,'96','81227867',2),(2248,'96','81227867',2),(2249,'96','91796067',2),(2250,'96','91470472',2),(2251,'96','91644973',2),(2252,'96','91642758',2),(2253,'96','91726773',2),(2254,'96','91261942',2),(2255,'96','91130675',2),(2256,'96','81136270',2),(2257,'96','91766300',2),(2258,'96','91350353',2),(2259,'96','91012668',2),(2260,'96','91559657',2),(2261,'96','91967001',2),(2262,'96','91294089',2),(2263,'96','91294089',2),(2264,'96','81374697',2),(2265,'96','91079746',2),(2266,'96','91071284',2),(2267,'96','91588111',2),(2268,'96','91713585',2),(2269,'96','91655634',2),(2270,'96','91720718',2),(2271,'96','91761781',2),(2272,'96','91761781',2),(2273,'96','91701388',2),(2274,'96','91214185',2),(2275,'96','91907216',2),(2276,'96','91158307',2),(2277,'96','91891822',2),(2278,'96','92011494',2),(2279,'96','91638300',2),(2280,'96','91448877',2),(2281,'96','91853546',2),(2282,'96','91244876',2),(2283,'96','91917895',2),(2284,'96','88048158',2),(2285,'96','91292960',2),(2286,'96','91461832',2),(2287,'96','91699961',2),(2288,'96','91257027',2),(2289,'96','91694466',2),(2290,'96','91400508',2),(2291,'96','91729757',2),(2292,'96','99172864',2),(2293,'96','91522084',2),(2294,'96','99122734',2),(2295,'96','91220360',2),(2296,'96','91021020',2),(2297,'96','92044025',2),(2298,'96','91982916',2),(2299,'96','91982916',2),(2300,'96','91536842',2),(2301,'96','91070021',2),(2302,'96','91662885',2),(2303,'96','91537993',2),(2304,'96','91251740',2),(2305,'96','91193754',2),(2306,'96','91754009',2),(2307,'96','91152586',2),(2308,'96','91152586',2),(2309,'96','91338590',2),(2310,'96','99140743',2),(2311,'96','91286353',2),(2312,'96','91290998',2),(2313,'96','91643509',2),(2314,'96','91391069',2),(2315,'96','92011494',2),(2316,'96','91289954',2),(2317,'96','91360032',2),(2318,'96','91046648',2),(2319,'96','81042139',2),(2320,'96','91261942',2),(2321,'96','91003857',2),(2322,'96','92018631',2),(2323,'96','91555791',2),(2324,'96','91032653',2),(2325,'96','91470472',2),(2326,'96','91965458',2),(2327,'96','91238525',2),(2328,'96','91921226',2),(2329,'96','91123254',2),(2330,'96','91222845',2),(2331,'96','91429773',2),(2332,'96','91013517',2),(2333,'96','91752881',2),(2334,'96','91887661',2),(2335,'96','91752881',2),(2336,'96','91983403',2),(2337,'96','91408698',2),(2338,'96','91905750',2),(2339,'96','91825279',2),(2340,'96','91099055',2),(2341,'96','91459349',2),(2342,'96','91759809',2),(2343,'96','91796030',2),(2344,'96','91699961',2),(2345,'96','91406245',2),(2346,'96','91650650',2),(2347,'96','91636428',2),(2348,'96','91267166',2),(2349,'96','91520585',1),(2350,'96','91520585',1),(2351,'98','81093013',2),(2352,'96','91275279',2),(2353,'96','91988132',2),(2354,'96','81093013',2),(2355,'96','91275279',2),(2356,'96','91255886',2),(2357,'96','91360642',2),(2358,'96','91789644',2),(2359,'96','91067937',2),(2360,'96','91796067',2),(2361,'96','91067937',2),(2362,'96','91211378',2),(2363,'96','91313035',2),(2364,'96','91313035',2),(2365,'96','91966403',2),(2366,'96','31161935',2),(2367,'96','91655634',2),(2368,'96','91210608',2),(2369,'96','91954702',2),(2370,'96','91514843',2),(2371,'96','91531028',2),(2372,'96','91785600',2),(2373,'96','81344399',2),(2374,'96','91479378',2),(2375,'96','91620191',2),(2376,'96','91305009',2),(2377,'96','91620191',2),(2378,'96','91368928',2),(2379,'96','91916932',2),(2380,'96','91600605',2),(2381,'96','91560135',2),(2382,'96','91158402',2),(2383,'96','91620191',2),(2384,'96','91158403',2),(2385,'96','91620191',2),(2386,'96','91620191',2),(2387,'96','91946242',2),(2388,'96','91913923',2),(2389,'96','91304046',2),(2390,'96','91073853',2),(2391,'96','91129644',2),(2392,'96','91271751',2),(2393,'96','91377401',2),(2394,'96','91252922',2),(2395,'96','91440804',2),(2396,'96','91440804',2),(2397,'96','91708532',2),(2398,'96','91720718',2),(2399,'96','91320934',2),(2400,'96','91217846',2),(2401,'96','91672030',2),(2402,'96','91019303',2),(2403,'96','91692542',2),(2404,'96','91111770',2),(2405,'96','91306335',2),(2406,'96','91996631',2),(2407,'96','91874495',2),(2408,'96','91215150',2),(2409,'96','91215150',2),(2410,'96','91203755',2),(2411,'96','91991083',2),(2412,'96','91261463',2),(2413,'96','91719371',2),(2414,'96','91259864',2),(2415,'96','91789371',2),(2416,'96','91105553',2),(2417,'96','91429521',2),(2418,'96','91087660',2),(2419,'96','91533313',2),(2420,'96','91641820',2),(2421,'96','91717653',2),(2422,'96','91894872',2),(2423,'96','91889060',2),(2424,'96','91906401',2),(2425,'96','91844046',2),(2426,'96','91530133',2),(2427,'96','91191289',2),(2428,'96','91863256',1),(2429,'96','91210816',2),(2430,'96','91841069',2),(2431,'96','91536696',2),(2432,'96','88089288',2),(2433,'96','91516110',2),(2434,'96','91716384',2),(2435,'96','91070808',2),(2436,'96','91443140',2),(2437,'96','91443140',2),(2438,'99','69150717',2),(2439,'96','91737281',2),(2440,'96','91999223',2),(2441,'96','91929283',2),(2442,'96','91476542',2),(2443,'96','91579833',2),(2444,'96','91151021',2),(2445,'96','92074513',2),(2446,'96','91501715',2),(2447,'96','92074513',2),(2448,'96','91460135',2),(2449,'96','91460135',2),(2450,'96','91457399',2),(2451,'96','91158041',2),(2452,'96','91865109',2),(2453,'96','91865109',2),(2454,'96','91175582',2),(2455,'96','91405955',2),(2456,'96','91207916',2),(2457,'96','91950444',2),(2458,'96','91071284',2),(2459,'96','91032914',2),(2460,'96','91579835',2),(2461,'96','91404176',2),(2462,'96','91642758',2),(2463,'96','91170708',2),(2464,'96','91631155',2),(2465,'96','91975322',2),(2466,'96','91585704',2),(2467,'96','91191992',2),(2468,'96','91480196',2),(2469,'96','91492351',2),(2470,'96','32813456',1),(2471,'96','91861731',2),(2472,'96','91480196',2),(2473,'96','91861731',1),(2474,'96','32813456',2),(2475,'96','91648427',2),(2476,'96','91718263',2),(2477,'96','91480196',2),(2478,'96','91766300',2),(2479,'96','91210816',2),(2480,'96','91583348',2),(2481,'96','91818356',2),(2482,'96','91832851',2),(2483,'96','91429117',2),(2484,'96','91827099',2),(2485,'96','91925174',2),(2486,'96','91318480',2),(2487,'96','91982258',2),(2488,'96','91822953',2),(2489,'96','91105784',2),(2490,'96','91770373',2),(2491,'96','92029265',2),(2492,'96','91463563',2),(2493,'96','91687775',2),(2494,'96','91615459',2),(2495,'96','91412107',2),(2496,'96','91230871',2),(2497,'96','91736269',2),(2498,'96','91230871',2),(2499,'96','91997379',2),(2500,'96','91639303',2),(2501,'96','91230871',2),(2502,'96','91615750',2),(2503,'96','91553735',2),(2504,'96','91429940',2),(2505,'96','91225143',2),(2506,'96','91379782',2),(2507,'96','91667885',2),(2508,'96','91644218',2),(2509,'96','91981931',2),(2510,'96','91235544',2),(2511,'96','91305837',2),(2512,'96','91555220',2),(2513,'96','91925176',2),(2514,'96','91180655',2),(2515,'96','91907584',2),(2516,'96','91356206',2),(2517,'96','91727695',2),(2518,'96','91312445',2),(2519,'96','91824745',2),(2520,'96','91737633',2),(2521,'96','91210730',2),(2522,'96','91731561',2),(2523,'96','91890595',2),(2524,'96','91577938',2),(2525,'96','91287423',2),(2526,'96','91027479',2),(2527,'96','91619262',2),(2528,'96','91757710',2),(2529,'96','91772487',2),(2530,'96','91790706',2),(2531,'96','91509580',2),(2532,'96','92010167',2),(2533,'96','91728351',2),(2534,'96','91140318',2),(2535,'96','91001428',2),(2536,'96','92010167',2),(2537,'96','91896433',2),(2538,'96','91613032',2),(2539,'96','91860106',2),(2540,'96','91300664',2),(2541,'96','91718293',2),(2542,'96','91257027',2),(2543,'96','91714370',2),(2544,'96','91247518',2),(2545,'96','91545857',2),(2546,'96','91515117',2),(2547,'96','91075404',2),(2548,'96','92020809',2),(2549,'96','91049602',2),(2550,'96','81040049',2),(2551,'96','91745400',2),(2552,'96','91205112',2),(2553,'96','91228940',2),(2554,'96','91702137',2),(2555,'96','81218818',2),(2556,'96','91737703',2),(2557,'96','91708826',2),(2558,'96','91967001',2),(2559,'96','91415874',2),(2560,'96','91488787',2),(2561,'96','91643890',2),(2562,'96','91531028',2),(2563,'96','91651454',2),(2564,'96','91461832',2),(2565,'96','91497511',2),(2566,'96','91308654',2),(2567,'96','91529570',2),(2568,'96','91798686',2),(2569,'96','91215312',2),(2570,'96','91154991',2),(2571,'96','91104093',2),(2572,'96','91114583',2),(2573,'96','91354588',2),(2574,'96','91079246',2),(2575,'96','91751514',2),(2576,'96','91321624',2),(2577,'96','91692992',2),(2578,'96','91349653',2),(2579,'96','91650482',2),(2580,'96','91624515',2),(2581,'96','91524364',2),(2582,'96','91333133',2),(2583,'96','32812525',1),(2584,'96','91547586',2),(2585,'96','91709948',2),(2586,'96','91819944',2),(2587,'96','91306707',2),(2588,'96','91798563',2),(2589,'96','91221318',2),(2590,'96','91628810',2),(2591,'96','91281188',2),(2592,'96','91285974',2),(2593,'96','91473834',2),(2594,'96','91822820',2),(2595,'96','91119898',2),(2596,'96','91063295',2),(2597,'96','91100876',2),(2598,'96','81245313',2),(2599,'96','91662772',2),(2600,'96','91799922',2),(2601,'96','91538035',2),(2602,'96','91528355',2),(2603,'96','91970297',2),(2604,'96','91647321',2),(2605,'96','91469715',2),(2606,'96','91266060',2),(2607,'96','91625889',2),(2608,'96','91978532',2),(2609,'96','99035298',2),(2610,'96','91129420',2),(2611,'96','91588111',2),(2612,'96','91361508',2),(2613,'96','91528203',2),(2614,'96','91097655',2),(2615,'96','91614534',2),(2616,'96','91512002',2),(2617,'96','91946563',2),(2618,'96','91444186',2),(2619,'96','81170861',2),(2620,'96','91553377',2),(2621,'96','91169814',2),(2622,'96','91350059',2),(2623,'96','91772443',2),(2624,'96','91580415',2),(2625,'96','91039715',2),(2626,'96','91303640',2),(2627,'96','91815941',2),(2628,'96','92062316',2),(2629,'96','91751195',2),(2630,'96','91170775',2),(2631,'96','92006565',2),(2632,'96','91685278',2),(2633,'96','84176654',2),(2634,'96','91422196',2),(2635,'96','91160862',2),(2636,'96','91182416',2),(2637,'96','91201651',2),(2638,'96','91284172',2),(2639,'96','91629785',2),(2640,'96','91622045',2),(2641,'96','91244876',2),(2642,'96','91407784',2),(2643,'96','91139110',2),(2644,'96','81327683',2),(2645,'96','91751514',2),(2646,'96','91837508',2),(2647,'96','91728406',2),(2648,'96','91701611',2),(2649,'96','91214185',2),(2650,'96','91735655',2),(2651,'96','91502218',2),(2652,'96','91684020',2),(2653,'96','91994635',2),(2654,'96','81142944',2),(2655,'96','91170313',2),(2656,'96','91194547',2),(2657,'96','91208415',2),(2658,'96','99089608',2),(2659,'96','81253226',2),(2660,'96','81162899',2),(2661,'96','91538047',2),(2662,'96','91231288',2),(2663,'96','91552794',2),(2664,'96','92047440',2),(2665,'96','91840787',2),(2666,'96','91528174',2),(2667,'96','88065953',2),(2668,'96','91406211',2),(2669,'96','91895589',2),(2670,'96','91281220',2),(2671,'96','91621320',2),(2672,'96','91281220',2),(2673,'96','91281220',2),(2674,'96','91397919',2),(2675,'96','91888079',2),(2676,'96','91559715',2),(2677,'96','91578871',2),(2678,'96','81141025',2),(2679,'96','91644973',2),(2680,'96','91614965',2),(2681,'96','91602772',2),(2682,'96','91678553',2),(2683,'96','91543457',2),(2684,'96','91283676',2),(2685,'96','31162925',1),(2686,'96','91497511',2),(2687,'96','91303490',2),(2688,'96','91916411',2),(2689,'96','81128085',2),(2690,'96','91169444',2),(2691,'96','91203482',2),(2692,'96','91910011',2),(2693,'96','91153394',2),(2694,'96','91154979',2),(2695,'96','99010645',2),(2696,'96','81142911',2),(2697,'96','91271232',2),(2698,'96','92017427',2),(2699,'96','91457793',2),(2700,'96','91519453',2),(2701,'96','91110710',2),(2702,'96','91072446',2),(2703,'96','91288767',2),(2704,'96','91359402',2),(2705,'96','91513314',2),(2706,'96','91606461',2),(2707,'96','91313103',2),(2708,'96','91313103',2),(2709,'96','91559212',2),(2710,'96','91926525',2),(2711,'96','81028866',2),(2712,'96','91476482',2),(2713,'96','91338645',2),(2714,'96','91081250',2),(2715,'96','91807501',2),(2716,'96','91738335',2),(2717,'96','92087301',2),(2718,'96','91953275',2),(2719,'96','91728819',2),(2720,'96','91704387',2),(2721,'96','81017177',2),(2722,'96','81017177',2),(2723,'96','91058086',2),(2724,'96','91137285',2),(2725,'96','91905742',2),(2726,'96','81007900',2),(2727,'96','91362913',2),(2728,'96','91262494',2),(2729,'99','91385892',2),(2730,'96','91211353',2),(2731,'96','91940838',2),(2732,'96','91940838',2),(2733,'96','91981108',2),(2734,'96','91231288',2),(2735,'96','91359428',2),(2736,'96','91722598',2),(2737,'96','91286832',2),(2738,'96','91848733',2),(2739,'96','91464421',2),(2740,'96','91914915',2),(2741,'91','91914915',2),(2742,'96','91577866',2),(2743,'96','91636789',2),(2744,'96','91545676',2),(2745,'96','81162793',2),(2746,'96','91434574',2),(2747,'96','91078618',2),(2748,'96','91696004',2),(2749,'96','91078618',2),(2750,'96','91283851',2),(2751,'96','91244883',2),(2752,'96','91417924',2),(2753,'96','91382579',2),(2754,'96','91938060',2),(2755,'96','91361052',2),(2756,'96','91234008',2),(2757,'96','92082462',2),(2758,'96','91407167',2),(2759,'96','92077370',2),(2760,'96','91291489',2),(2761,'96','91291489',2),(2762,'96','91541722',2),(2763,'96','91834598',2),(2764,'96','91495347',2),(2765,'96','91495347',2),(2766,'96','91312600',2),(2767,'96','81207645',2),(2768,'96','91636300',2),(2769,'96','91540493',2),(2770,'96','91336312',2),(2771,'96','91724045',2),(2772,'96','91174130',2),(2773,'96','91453045',2),(2774,'96','91243594',2),(2775,'96','91120140',2),(2776,'96','91120140',2),(2777,'96','91318480',2),(2778,'96','91824092',2),(2779,'96','91160862',2),(2780,'96','91461662',2),(2781,'96','91982916',2),(2782,'96','91050552',2),(2783,'96','32815666',1),(2784,'96','91237219',2),(2785,'96','91013517',2),(2786,'96','91308654',2),(2787,'96','32815666',2),(2788,'96','91463972',2),(2789,'96','99014354',1),(2790,'96','91191992',2),(2791,'96','91280959',2),(2792,'96','91349854',2),(2793,'96','32815371',1),(2794,'96','91349854',2),(2795,'96','32812933',1),(2796,'96','99043169',2),(2797,'96','91831650',2),(2798,'96','91831650',2),(2799,'96','91412017',2),(2800,'96','91145266',2),(2801,'96','99634773',2),(2802,'96','91296907',2),(2803,'96','81008887',2),(2804,'96','99756396',2),(2805,'96','91888079',2),(2806,'96','91822907',2),(2807,'96','32515454',1),(2808,'96','91497776',2),(2809,'96','91020345',2),(2810,'96','99145771',2),(2811,'96','91482363',1),(2812,'96','92022713',2),(2813,'96','32831858',1),(2814,'96','91677655',2),(2815,'96','91661250',2),(2816,'96','92053114',2),(2817,'96','91185258',2),(2818,'96','91280760',2),(2819,'96','91618953',2),(2820,'96','91618953',2),(2821,'96','91375382',2),(2822,'96','91617109',2),(2823,'96','91755701',2),(2824,'96','32814020',1),(2825,'96','91455081',2),(2826,'96','91616834',2),(2827,'96','91133109',2),(2828,'96','91030265',2),(2829,'96','91661260',2),(2830,'96','32811252',1),(2831,'96','32225196',1),(2832,'96','91702137',2),(2833,'96','91262526',2),(2834,'96','91567993',2),(2835,'96','91652702',2),(2836,'96','32229139',1),(2837,'31','32477915',1),(2838,'96','91116021',2),(2839,'96','81463031',2),(2840,'96','91282645',2),(2841,'96','91153251',2),(2842,'96','91726456',2),(2843,'96','91201450',2),(2844,'96','91471997',2),(2845,'96','91980818',2),(2846,'96','91715455',2),(2847,'96','91118119',2),(2848,'96','91486787',2),(2849,'96','91621320',2),(2850,'91','88723736',2),(2851,'96','91635869',2),(2852,'96','91114231',2),(2853,'96','91524166',2),(2854,'96','91182118',2),(2855,'96','91621427',2),(2856,'96','91114161',1),(2857,'96','91385015',2),(2858,'96','91110466',2),(2859,'96','91577467',2),(2860,'96','91990640',2),(2861,'96','91377676',2),(2862,'96','91375382',2),(2863,'96','99765177',2),(2864,'96','32813315',2),(2865,'96','99765177',2),(2866,'96','91349854',2),(2867,'96','99042634',1),(2868,'96','91047155',2),(2869,'96','91189227',2),(2870,'96','91848202',2),(2871,'96','92022713',2),(2872,'96','91082032',2),(2873,'96','99124428',2),(2874,'96','99124428',2),(2875,'96','91244283',2),(2876,'96','91567993',2),(2877,'96','91361549',2),(2878,'96','91704387',2),(2879,'96','91126248',2),(2880,'96','91158041',2),(2881,'96','91636428',2),(2882,'96','91651454',2),(2883,'96','91672030',2),(2884,'96','91642758',2),(2885,'96','98116026',2),(2886,'96','91643509',2),(2887,'96','91643509',2),(2888,'96','91287423',2),(2889,'96','91548266',2),(2890,'96','91271751',2),(2891,'96','91405955',2),(2892,'96','91408698',2),(2893,'96','91946907',2),(2894,'96','91221318',2),(2895,'96','91543457',2),(2896,'96','91452267',2),(2897,'96','91531028',2),(2898,'96','92062316',2),(2899,'96','91463563',2),(2900,'96','91459349',2),(2901,'96','91712621',2),(2902,'96','91613032',2),(2903,'96','91476542',2),(2904,'96','91129644',2),(2905,'96','91728761',2),(2906,'96','91255886',2),(2907,'96','91981931',2),(2908,'96','91207916',2),(2909,'96','91865109',2),(2910,'96','81010527',2),(2911,'96','91737633',2),(2912,'96','91115823',2),(2913,'96','92044025',2),(2914,'96','91738335',2),(2915,'96','91978269',2),(2916,'96','91529570',2),(2917,'96','91667885',2),(2918,'96','91377401',2),(2919,'96','91917895',2),(2920,'96','99077592',2),(2921,'96','91814242',2),(2922,'96','91754009',2),(2923,'96','91623888',2),(2924,'96','91235544',2),(2925,'96','91252922',2),(2926,'96','91075404',2),(2927,'96','91354588',2),(2928,'96','91480196',2),(2929,'96','91086211',2),(2930,'96','91702137',2),(2931,'96','91324049',2),(2932,'96','91327929',2),(2933,'96','91126248',2),(2934,'96','91133336',2),(2935,'96','91152586',2),(2936,'96','91079425',2),(2937,'96','91486787',2),(2938,'96','91616834',2),(2939,'96','91291395',2),(2940,'96','91070808',2),(2941,'96','91772487',2),(2942,'96','91009989',2),(2943,'96','91661260',2),(2944,'96','91382579',2),(2945,'96','91151021',2),(2946,'96','91806127',2),(2947,'96','99720922',1),(2948,'96','91104211',2),(2949,'96','91652067',2),(2950,'96','91822820',2),(2951,'96','91502218',2),(2952,'96','91448877',2),(2953,'96','91751329',2),(2954,'96','81413478',1),(2955,'96','91765345',2),(2956,'96','91673771',2),(2957,'96','91203951',2),(2958,'96','91465248',2),(2959,'96','81319576',2),(2960,'96','91046648',2),(2961,'96','84193244',2),(2962,'96','91875128',2),(2963,'96','92022713',2),(2964,'96','91799922',2),(2965,'96','91087660',2),(2966,'96','91561242',2),(2967,'96','81217201',2),(2968,'96','91988600',2),(2969,'96','91191286',2),(2970,'96','91765597',1),(2971,'96','81216996',2),(2972,'96','91124033',2),(2973,'96','91422376',2),(2974,'96','91004917',2),(2975,'96','91338645',2),(2976,'96','91467494',2),(2977,'96','32173200',1),(2978,'96','91288084',2),(2979,'96','91304046',2),(2980,'96','91489207',2),(2981,'96','81284659',2),(2982,'96','91368393',2),(2983,'96','91457714',2),(2984,'96','91168272',2),(2985,'96','91679057',2),(2986,'96','91828830',2),(2987,'96','91205493',2),(2988,'96','91368393',2),(2989,'96','91153815',2),(2990,'96','91855895',2),(2991,'96','91154558',2),(2992,'96','91222798',1),(2993,'96','91517608',2),(2994,'96','92041381',2),(2995,'96','91061952',2),(2996,'96','91100140',2),(2997,'96','91186184',2),(2998,'96','91088810',2),(2999,'96','91177127',2),(3000,'96','91347609',2),(3001,'96','91868600',2),(3002,'96','91385775',2),(3003,'96','91464324',2),(3004,'96','91848202',2),(3005,'96','32235293',1),(3006,'96','91144079',2),(3007,'96','91471997',2),(3008,'96','91335541',2),(3009,'96','91388742',2),(3010,'96','91113741',2),(3011,'96','91113741',2),(3012,'96','91988132',2),(3013,'96','91367679',2),(3014,'96','91638300',2),(3015,'96','91377676',2),(3016,'96','92089470',2),(3017,'96','91418050',2),(3018,'96','91122504',2),(3019,'96','91802463',1),(3020,'96','91267744',2),(3021,'96','91866310',2),(3022,'96','91923540',2),(3023,'96','91076177',2),(3024,'96','91255817',2),(3025,'96','91703380',2),(3026,'96','91907216',2),(3027,'96','91212901',2),(3028,'96','81257670',2),(3029,'96','91275659',2),(3030,'96','91361537',2),(3031,'96','91532511',2),(3032,'96','91360623',2),(3033,'96','91893849',2),(3034,'96','91521112',2),(3035,'96','91797857',2),(3036,'96','91155250',2),(3037,'96','91580841',2),(3038,'96','91247199',2),(3039,'96','91515116',2),(3040,'96','91213723',2),(3041,'96','91352927',2),(3042,'96','91812452',2),(3043,'96','91424347',2),(3044,'96','91469715',2),(3045,'96','92015696',2),(3046,'96','91750830',2),(3047,'96','91930809',2),(3048,'96','91650650',2),(3049,'96','91579835',2),(3050,'96','91709089',2),(3051,'96','91556911',2),(3052,'96','91727831',2),(3053,'96','91128216',2),(3054,'96','91361549',2),(3055,'96','91491073',2),(3056,'96','32813442',1),(3057,'96','91946907',2),(3058,'96','91128175',2),(3059,'96','92062316',2),(3060,'96','91905929',2),(3061,'96','91943511',2),(3062,'96','91706613',2),(3063,'96','91290998',2),(3064,'96','91759809',2),(3065,'96','91708532',2),(3066,'96','91429117',2),(3067,'96','91234052',1),(3068,'96','91672030',2),(3069,'96','92011494',2),(3070,'96','81212597',2),(3071,'96','91227340',2),(3072,'96','91320934',2),(3073,'96','91158041',2),(3074,'96','91338590',2),(3075,'96','91785600',2),(3076,'96','91530133',2),(3077,'96','91484696',2),(3078,'96','91731561',2),(3079,'96','91752881',2),(3080,'96','91330707',2),(3081,'96','91766665',2),(3082,'96','91221318',2),(3083,'96','91428791',2),(3084,'96','91707205',2),(3085,'96','91487426',2),(3086,'96','91470306',2),(3087,'96','91815329',2),(3088,'96','88071746',1),(3089,'96','91549696',2),(3090,'96','91776692',2),(3091,'96','91578133',2),(3092,'96','91913923',2),(3093,'96','91651454',2),(3094,'96','91692542',2),(3095,'96','91453448',2),(3096,'96','91463563',2),(3097,'96','91405955',2),(3098,'96','84135110',2),(3099,'96','91105553',2),(3100,'96','91267166',2),(3101,'96','91488562',2),(3102,'96','91757710',2),(3103,'96','91619262',2),(3104,'96','91121281',2),(3105,'96','91717653',2),(3106,'96','91567465',2),(3107,'96','91606461',2),(3108,'96','91137285',2),(3109,'96','91360032',2),(3110,'96','91099055',2),(3111,'96','91662885',2),(3112,'96','91861731',2),(3113,'96','91257027',2),(3114,'96','91154991',2),(3115,'96','91559657',2),(3116,'96','91343609',2),(3117,'96','91275279',2),(3118,'96','91579833',2),(3119,'96','91312600',2),(3120,'96','91160862',2),(3121,'96','91021020',2),(3122,'96','91585704',2),(3123,'96','91789371',2),(3124,'96','91464368',1),(3125,'96','91259864',2),(3126,'96','91536842',2),(3127,'96','91220360',2),(3128,'96','91636789',2),(3129,'96','91536696',2),(3130,'96','91271751',2),(3131,'96','91225143',2),(3132,'96','91981931',2),(3133,'96','91946563',2),(3134,'96','91201727',2),(3135,'96','88089288',2),(3136,'96','91615750',2),(3137,'96','91294089',2),(3138,'96','81317761',1),(3139,'96','91169444',2),(3140,'96','91712621',2),(3141,'96','91238225',2),(3142,'96','91368928',2),(3143,'96','91718263',2),(3144,'96','91289954',2),(3145,'96','91069388',2),(3146,'96','91261463',2),(3147,'96','91494810',2),(3148,'96','91000788',2),(3149,'96','99673809',1),(3150,'96','91642758',2),(3151,'96','91003850',2),(3152,'96','91800154',1),(3153,'96','91244283',2),(3154,'96','84109707',2),(3155,'96','91507176',2),(3156,'96','91409595',2),(3157,'96','91722143',2),(3158,'96','91495015',2),(3159,'96','91387347',2),(3160,'96','91070021',2),(3161,'96','91129644',2),(3162,'96','91316671',2),(3163,'96','91763273',2),(3164,'96','91818356',2),(3165,'96','91404177',2),(3166,'96','91247518',2),(3167,'96','91636428',2),(3168,'96','91049691',2),(3169,'96','91299963',2),(3170,'96','91175582',2),(3171,'96','91531028',2),(3172,'96','91027479',2),(3173,'96','91501379',2),(3174,'96','91408698',2),(3175,'96','91543457',2),(3176,'96','91358816',2),(3177,'96','91514843',2),(3178,'96','91737281',2),(3179,'96','91470472',2),(3180,'96','91974478',2),(3181,'96','91921226',2),(3182,'96','91710053',2),(3183,'96','91714370',2),(3184,'96','91305837',2),(3185,'96','91473834',2),(3186,'96','91026218',2),(3187,'96','91583348',2),(3188,'96','91790706',2),(3189,'96','91230871',2),(3190,'96','91729757',2),(3191,'96','99840947',2),(3192,'96','91798563',2),(3193,'96','91967001',2),(3194,'96','91305009',2),(3195,'96','91874284',2),(3196,'96','91417924',2),(3197,'96','91994635',2),(3198,'96','91286353',2),(3199,'96','91404176',2),(3200,'96','91545857',2),(3201,'96','92011020',1),(3202,'96','99142227',2),(3203,'96','91906922',2),(3204,'96','91613032',2),(3205,'96','91538047',2),(3206,'96','91913109',2),(3207,'96','91796030',2),(3208,'96','91728351',2),(3209,'96','91429521',2),(3210,'96','91231050',1),(3211,'96','91300664',2),(3212,'96','91012668',2),(3213,'96','91030402',2),(3214,'96','91526257',2),(3215,'96','91620482',2),(3216,'96','81376392',2),(3217,'96','91842145',2),(3218,'96','92028187',1),(3219,'96','91113382',2),(3220,'96','91724947',2),(3221,'96','84109617',2),(3222,'96','91899930',1),(3223,'96','91293179',2),(3224,'96','91122106',2),(3225,'96','91026627',1),(3226,'96','91494187',2),(3227,'96','91328621',2),(3228,'96','91073853',2),(3229,'96','91237219',1),(3230,'96','91232816',2),(3231,'96','91760308',2),(3232,'96','91351379',1),(3233,'96','91446958',2),(3234,'96','91175411',2),(3235,'96','91298800',2),(3236,'96','99040470',1),(3237,'96','91311577',2),(3238,'96','92043314',2),(3239,'96','91833162',2),(3240,'96','91028851',2),(3241,'96','91129131',2),(3242,'96','91145553',2),(3243,'96','91545825',2),(3244,'96','91677694',2),(3245,'96','81401582',2),(3246,'96','91678553',2),(3247,'96','91390595',2),(3248,'96','91085583',2),(3249,'96','91933590',2),(3250,'96','91460135',2),(3251,'96','91866497',2),(3252,'96','91648227',2),(3253,'96','91609575',2),(3254,'96','91231288',2),(3255,'96','91341158',2),(3256,'96','91551758',1),(3257,'96','91982258',2),(3258,'96','92019813',1),(3259,'96','84039888',1),(3260,'96','91169565',1),(3261,'96','99030525',2),(3262,'96','88018611',1),(3263,'96','91237219',2),(3264,'96','91419469',2),(3265,'96','91171599',1),(3266,'96','91372322',2),(3267,'96','91965458',2),(3268,'96','91773864',1),(3269,'96','99111874',2),(3270,'96','84100507',1),(3271,'96','91908388',2),(3272,'96','91289132',1),(3273,'96','91713419',2),(3274,'96','91058086',2),(3275,'96','91210816',2),(3276,'96','32811870',1),(3277,'96','91748694',1),(3278,'96','91323134',2),(3279,'96','91941708',2),(3280,'96','81270817',1),(3281,'96','91612395',1),(3282,'96','91701485',1),(3283,'96','91369876',1),(3284,'96','91271088',1),(3285,'96','91880629',2),(3286,'96','91467176',2),(3287,'96','91041833',2),(3288,'96','99817074',1),(3289,'96','99094047',2),(3290,'96','91168917',2),(3291,'96','91226838',2),(3292,'96','91351475',2),(3293,'96','91524695',1),(3294,'96','91911102',2),(3295,'96','91950073',1),(3296,'96','91646661',2),(3297,'96','91497511',2),(3298,'96','91358711',2),(3299,'96','91270491',2),(3300,'96','81005696',1),(3301,'96','91635663',2),(3302,'96','91640508',1),(3303,'96','91884965',2),(3304,'96','91905699',1),(3305,'96','91136252',2),(3306,'96','91124249',2),(3307,'96','91461149',1),(3308,'96','91751846',2),(3309,'96','91688321',2),(3310,'96','91181232',2),(3311,'96','91510157',1),(3312,'96','81349295',1),(3313,'96','91488272',1),(3314,'96','91247625',2),(3315,'96','91114879',2),(3316,'96','88031385',1),(3317,'96','91457770',2),(3318,'96','91429064',2),(3319,'96','91946363',1),(3320,'96','91756008',2),(3321,'96','99559266',2),(3322,'96','91188404',2),(3323,'96','91155553',2),(3324,'96','91701388',2),(3325,'96','91227066',1),(3326,'96','91487248',2),(3327,'96','91714597',2),(3328,'96','91213165',2),(3329,'96','91169565',1),(3330,'96','91474531',2),(3331,'96','32811004',1),(3332,'96','92003783',2),(3333,'96','84144502',1),(3334,'96','92012236',2),(3335,'96','91767615',2),(3336,'96','31162925',1),(3337,'96','91002816',2),(3338,'96','91006525',1),(3339,'96','91227182',2),(3340,'96','91089100',2),(3341,'96','91467335',1),(3342,'96','91614419',2),(3343,'96','84034239',1),(3344,'96','91228551',2),(3345,'96','91558696',2),(3346,'96','91503411',2),(3347,'96','91641534',2),(3348,'96','91789047',1),(3349,'96','91792082',2),(3350,'96','91268423',1),(3351,'96','91512607',2),(3352,'96','91464755',1),(3353,'96','91844800',2),(3354,'96','84120857',2),(3355,'96','91339730',2),(3356,'96','91966655',2),(3357,'96','99142717',1),(3358,'96','91517218',2),(3359,'96','91513213',2),(3360,'96','91531521',2),(3361,'96','91204332',2),(3362,'96','91449896',2),(3363,'96','91076727',1),(3364,'96','91316286',2),(3365,'96','91764685',2),(3366,'96','99139110',1),(3367,'96','91950971',2),(3368,'96','91788442',2),(3369,'96','91107691',2),(3370,'96','91907107',2),(3371,'96','91636605',1),(3372,'96','91636601',2),(3373,'96','91153716',1),(3374,'96','91069765',2),(3375,'96','81222648',1),(3376,'96','91979216',2),(3377,'96','91636727',2),(3378,'96','91054454',1),(3379,'96','91145851',2),(3380,'96','91272080',2),(3381,'96','91495381',2),(3382,'96','91279150',2),(3383,'96','91459349',2),(3384,'96','91414646',2),(3385,'96','91890556',2),(3386,'96','99117439',2),(3387,'96','91674172',2),(3388,'96','91161576',2),(3389,'96','90024302',2),(3390,'96','91635198',2),(3391,'96','92007020',2),(3392,'96','91349860',1),(3393,'96','91376125',2),(3394,'96','81201229',2),(3395,'96','91289199',1),(3396,'96','91655634',2),(3397,'96','91331081',2),(3398,'96','91329976',2),(3399,'96','91802474',2),(3400,'96','91282645',2),(3401,'96','91405060',1),(3402,'96','91288487',2),(3403,'96','99719492',2),(3404,'96','91114981',1),(3405,'96','92008601',1),(3406,'96','84188229',2),(3407,'96','91884876',2),(3408,'96','91869512',2),(3409,'96','91627057',2),(3410,'96','91781922',2),(3411,'96','91638484',2),(3412,'96','91852632',2),(3413,'96','91294282',2),(3414,'96','91400181',2),(3415,'96','91110817',2),(3416,'96','91290936',1),(3417,'96','91269352',2),(3418,'96','84003317',1),(3419,'96','91134950',1),(3420,'96','91380781',2),(3421,'96','88030500',2),(3422,'96','81374280',2),(3423,'96','91818172',1),(3424,'96','91818172',2),(3425,'96','91318695',1),(3426,'96','91129899',1),(3427,'96','91211378',1),(3428,'96','88050700',2),(3429,'96','91208008',1),(3430,'96','91418212',1),(3431,'96','91011863',1),(3432,'96','91147971',2),(3433,'96','91770373',2),(3434,'96','91518938',2),(3435,'96','91006653',2),(3436,'96','91540315',1),(3437,'96','91744252',2),(3438,'96','81463031',2),(3439,'96','91360352',1),(3440,'96','91334691',1),(3441,'96','91685698',2),(3442,'96','91553735',2),(3443,'96','91197636',2),(3444,'96','91289701',1),(3445,'96','88018365',2),(3446,'96','91567993',2),(3447,'96','92027697',1),(3448,'96','99032517',2),(3449,'96','98129302',1),(3450,'96','91170840',2),(3451,'96','91996631',2),(3452,'96','91375382',2),(3453,'96','91293157',2),(3454,'96','91620191',2),(3455,'96','91143121',2),(3456,'99','91955638',2),(3457,'96','91339828',2),(3458,'96','91119898',2),(3459,'96','91152893',2),(3460,'96','84054473',2),(3461,'96','91140177',1),(3462,'96','92010167',2),(3463,'96','91170313',2),(3464,'96','91704387',2);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_tipo`
--

DROP TABLE IF EXISTS `telefone_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_tipo` (
  `id_telefone_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_telefone_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_tipo`
--

LOCK TABLES `telefone_tipo` WRITE;
/*!40000 ALTER TABLE `telefone_tipo` DISABLE KEYS */;
INSERT INTO `telefone_tipo` VALUES (1,'F','FIXO'),(2,'C','CELULAR');
/*!40000 ALTER TABLE `telefone_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte` (
  `id_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_transporte_grupo` int(11) NOT NULL,
  `id_concessao` int(11) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_transporte`),
  KEY `fk_transito_veiculo_grupo1_idx` (`id_transporte_grupo`),
  CONSTRAINT `fk_transito_veiculo_grupo1` FOREIGN KEY (`id_transporte_grupo`) REFERENCES `transporte_grupo` (`id_transporte_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2980 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (2979,1,1767,'RR001');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_grupo`
--

DROP TABLE IF EXISTS `transporte_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_grupo` (
  `id_transporte_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `id_banco_convenio` int(11) DEFAULT NULL,
  `possui_concessao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='TX - TÁXI\nOB - ÔNIBUS\nMT - MOTO-TAXI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_grupo`
--

LOCK TABLES `transporte_grupo` WRITE;
/*!40000 ALTER TABLE `transporte_grupo` DISABLE KEYS */;
INSERT INTO `transporte_grupo` VALUES (1,'TAXI','INDIVIDUAL DE PASSAGEIROS (TÁXI)',5,'S'),(2,'OB','Ônibus',NULL,'S'),(3,'MT','Moto-Taxi',NULL,'S'),(4,'PV','Propaganda Volante',0,'N'),(5,'DTCE','Transporte de Cargas e Veiculos Especiais',5,'S'),(6,'PTF','TRANSPORTE DE PASSAGEIROS - TURISMO FRETAMENTO',5,'N'),(7,'ES','TRANSPORTE ESCOLAR',5,'N'),(8,'CARGA','TRANSPORTE DE CARGA',5,'S'),(9,'TURISMO','TURISMO',5,'S'),(10,'ESCOLAR','TRANSPORTE ESCOLAR',5,'S'),(11,'FRETAMENTO','FRETAMENTO',5,'S'),(12,'P','PROPAGANDA VOLANTE',5,'S'),(13,'T.C.P.','TRANSPORTE COLETIVO DE PASSAGEIROS',5,'N'),(14,'CARGAPERIGOSA','TRANSPORTE DE CARGA - PRODUTOS PERIGOSOS ',5,'N'),(15,'T.C.','TRANSPORTE CLANDESTINO',5,'N'),(16,'TAXI LOTACAO','TRANSPORTE INDIVIDUAL DE PASSAGEIROS-TAXI LOTACAO',5,'N'),(17,'L','LICITACAO-TRANSPORTE INDIVIDUAL DE PASSAGEIROS - T',5,'N'),(18,'L.M.','LICITACAO-TRANSP. INDIVIDUAL DE PASSAGEIROS - MOTO',5,'N'),(19,'CARGA INDIVISIVEL','TRANSPORTE DE CARGA INDIVISIVEL (USO DE ESCADA)',5,'N'),(20,'TMTX','TRANSPORTE INDIVIDUAL DE PASSAGEIROS - MOTOTAXI',5,'S'),(21,'LMT','LICITACAO MOTOTAXI - CONCORRENCIA PUBLICA 003/2017',5,'N');
/*!40000 ALTER TABLE `transporte_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_pessoa`
--

DROP TABLE IF EXISTS `transporte_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_pessoa` (
  `id_transporte_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `id_transporte_pessoa_tipo` int(11) NOT NULL,
  `id_transporte` int(11) NOT NULL,
  `id_transporte_pessoa_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_pessoa`),
  KEY `fk_veiculo_pessoa_pessoa1_idx` (`id_pessoa`),
  KEY `fk_veiculo_pessoa_veiculo_pessoa_tipo1_idx` (`id_transporte_pessoa_tipo`),
  KEY `fk_transito_pessoa_transito1_idx` (`id_transporte`),
  CONSTRAINT `fk_transito_pessoa_transito1` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_pessoa_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_pessoa_veiculo_pessoa_tipo1` FOREIGN KEY (`id_transporte_pessoa_tipo`) REFERENCES `transporte_pessoa_tipo` (`id_transporte_pessoa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3668 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_pessoa`
--

LOCK TABLES `transporte_pessoa` WRITE;
/*!40000 ALTER TABLE `transporte_pessoa` DISABLE KEYS */;
INSERT INTO `transporte_pessoa` VALUES (3667,6827,1,2979,1);
/*!40000 ALTER TABLE `transporte_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_pessoa_status`
--

DROP TABLE IF EXISTS `transporte_pessoa_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_pessoa_status` (
  `id_transporte_pessoa_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_pessoa_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_pessoa_status`
--

LOCK TABLES `transporte_pessoa_status` WRITE;
/*!40000 ALTER TABLE `transporte_pessoa_status` DISABLE KEYS */;
INSERT INTO `transporte_pessoa_status` VALUES (1,'A','Ativo'),(2,'I','Inativo'),(3,'B','BAIXA');
/*!40000 ALTER TABLE `transporte_pessoa_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_pessoa_tipo`
--

DROP TABLE IF EXISTS `transporte_pessoa_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_pessoa_tipo` (
  `id_transporte_pessoa_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_pessoa_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='PR - PROPRIETÁRIO\nMO - MOTORISTA\nAU - AUXILIAR';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_pessoa_tipo`
--

LOCK TABLES `transporte_pessoa_tipo` WRITE;
/*!40000 ALTER TABLE `transporte_pessoa_tipo` DISABLE KEYS */;
INSERT INTO `transporte_pessoa_tipo` VALUES (1,'PR','AUTORIZATARIO'),(2,'MO','AUXILIAR');
/*!40000 ALTER TABLE `transporte_pessoa_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_veiculo`
--

DROP TABLE IF EXISTS `transporte_veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_veiculo` (
  `id_transporte_veiculo` int(11) NOT NULL AUTO_INCREMENT,
  `id_transporte` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `id_transporte_veiculo_status` int(11) NOT NULL,
  `data_cadastro` date DEFAULT NULL,
  `processo` varchar(100) DEFAULT NULL,
  `processo_data` date DEFAULT NULL,
  PRIMARY KEY (`id_transporte_veiculo`),
  KEY `fk_transito_veiculo_transito1_idx` (`id_transporte`),
  KEY `fk_transito_veiculo_veiculo1_idx` (`id_veiculo`),
  KEY `fk_transito_veiculo_transito_veiculo_status1_idx` (`id_transporte_veiculo_status`),
  CONSTRAINT `fk_transito_veiculo_transito1` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transito_veiculo_transito_veiculo_status1` FOREIGN KEY (`id_transporte_veiculo_status`) REFERENCES `transporte_veiculo_status` (`id_transporte_veiculo_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transito_veiculo_veiculo1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3585 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_veiculo`
--

LOCK TABLES `transporte_veiculo` WRITE;
/*!40000 ALTER TABLE `transporte_veiculo` DISABLE KEYS */;
INSERT INTO `transporte_veiculo` VALUES (3584,2979,7635,1,'2019-02-14','28278272','2019-02-13');
/*!40000 ALTER TABLE `transporte_veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_veiculo_baixa`
--

DROP TABLE IF EXISTS `transporte_veiculo_baixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_veiculo_baixa` (
  `id_transporte_veiculo_baixa` int(11) NOT NULL AUTO_INCREMENT,
  `baixa_data` date DEFAULT NULL,
  `id_transporte_veiculo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `motivo` text DEFAULT NULL,
  `id_baixa_motivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_veiculo_baixa`),
  KEY `fk_transporte_veiculo_baixa_transporte_veiculo1_idx` (`id_transporte_veiculo`),
  KEY `fk_transporte_veiculo_baixa_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_transporte_veiculo_baixa_transporte_veiculo1` FOREIGN KEY (`id_transporte_veiculo`) REFERENCES `transporte_veiculo` (`id_transporte_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transporte_veiculo_baixa_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=900 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_veiculo_baixa`
--

LOCK TABLES `transporte_veiculo_baixa` WRITE;
/*!40000 ALTER TABLE `transporte_veiculo_baixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporte_veiculo_baixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte_veiculo_status`
--

DROP TABLE IF EXISTS `transporte_veiculo_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte_veiculo_status` (
  `id_transporte_veiculo_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_transporte_veiculo_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='A - ATIVO\nI - INATIVO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte_veiculo_status`
--

LOCK TABLES `transporte_veiculo_status` WRITE;
/*!40000 ALTER TABLE `transporte_veiculo_status` DISABLE KEYS */;
INSERT INTO `transporte_veiculo_status` VALUES (1,'A','Ativo'),(2,'I','Inativo'),(3,'B','Baixa');
/*!40000 ALTER TABLE `transporte_veiculo_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `id_uf` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(2) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `id_pais` int(11) NOT NULL,
  PRIMARY KEY (`id_uf`),
  KEY `fk_uf_pais1_idx` (`id_pais`),
  CONSTRAINT `fk_uf_pais1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (1,'AC','ACRE',1),(2,'AL','ALAGOAS',1),(3,'AM','AMAZONAS',1),(4,'AP','AMAPÁ',1),(5,'BA','BAHIA',1),(6,'CE','CEARÁ',1),(7,'DF','DISTRITO FEDERAL',1),(8,'ES','ESPÍRITO SANTO',1),(9,'GO','GOIÁS',1),(10,'MA','MARANHÃO',1),(11,'MG','MINAS GERAIS',1),(12,'MS','MATO GROSSO DO SUL',1),(13,'MT','MATO GROSSO',1),(14,'PA','PARÁ',1),(15,'PB','PARAÍBA',1),(16,'PE','PERNAMBUCO',1),(17,'PI','PIAUÍ',1),(18,'PR','PARANÁ',1),(19,'RJ','RIO DE JANEIRO',1),(20,'RN','RIO GRANDE DO NORTE',1),(21,'RO','RONDÔNIA',1),(22,'RR','RORAIMA',1),(23,'RS','RIO GRANDE DO SUL',1),(24,'SC','SANTA CATARINA',1),(25,'SE','SERGIPE',1),(26,'SP','SÃO PAULO',1),(27,'TO','TOCANTINS',1),(28,NULL,'maringa',1),(29,NULL,'santana',1),(30,NULL,'MANAUS',1),(31,NULL,'RECIFE',1),(32,NULL,'NAGANO-KEN',3),(33,NULL,'FRANCA',4),(34,NULL,'EVORA',5),(35,NULL,'ANGOLA',5);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario_situacao` int(11) NOT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_usuario_situacao1_idx` (`id_usuario_situacao`),
  KEY `fk_usuario_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  CONSTRAINT `fk_usuario_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_usuario_situacao1` FOREIGN KEY (`id_usuario_situacao`) REFERENCES `usuario_situacao` (`id_usuario_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,1,'bebb0f485f17d001be57ec44d7f938a7'),(2,1,2,'927e644f7222705190f1233bbe7962ea'),(3,1,7,NULL),(4,1,9,'fb5f2f27be2de104ac2b192f3e874dda'),(7,1,3742,NULL),(8,1,2536,NULL),(9,1,2537,NULL),(10,1,3529,NULL),(11,1,4459,'bd8d1e8fc977b2b2628fdbf0a7aa41a3'),(12,1,3179,NULL),(13,1,2646,NULL),(14,1,3127,NULL),(15,1,4395,NULL),(16,1,1579,NULL),(17,1,972,NULL),(18,1,3374,NULL),(19,1,3745,NULL),(20,1,543,NULL),(21,1,1803,NULL),(22,1,3521,NULL),(23,1,13,'2aa2b3d244fc5034149133e071ac927d'),(24,1,2647,NULL),(25,1,973,NULL),(26,1,2938,NULL),(27,1,2648,NULL),(28,1,3192,NULL),(29,1,3914,NULL),(30,1,3553,NULL),(31,1,3054,'682c62220b1765e8e611ca48d6ef9075'),(32,1,14,'818ddbb721f9245c5986b1095cac9749'),(33,1,4736,'8b8223ecb569e85b0d1737077af5222b'),(34,1,2954,NULL),(35,1,4737,NULL),(36,1,4738,'b32a4bbfa4b41df1caff4f702600a48a'),(37,1,12,'e625239500c7c36543975212e7d6107c'),(38,1,4739,'783405ad55a312769ee5094312fb3a09'),(39,1,4741,NULL),(40,1,4742,NULL),(41,1,4743,NULL),(42,1,4744,NULL),(43,1,4748,NULL),(44,1,4236,NULL),(45,1,4769,NULL),(46,1,4770,NULL),(47,1,4771,NULL),(48,1,4772,NULL),(49,1,4773,NULL),(50,1,3355,NULL),(51,1,4091,NULL),(52,1,4774,NULL),(53,1,3346,NULL),(54,1,4775,NULL),(55,1,4776,NULL),(56,1,4777,NULL),(57,1,4778,NULL),(58,1,4779,NULL),(59,1,4813,NULL),(60,1,4819,NULL),(61,1,4820,NULL),(62,1,4836,NULL),(63,1,4886,NULL),(64,1,4915,'0d2468d58910d2a94fba9758cea05656'),(65,1,3328,'f603814fc22e921e3fa34ad5ffd30dd3'),(66,1,4916,'d961a74dfd36a7f94a1d9fefcaf7cb90'),(67,1,4918,NULL),(68,1,422,NULL),(69,1,4919,NULL),(70,1,4920,'84aaebc336ac4f84ccacc508b0b99f8f'),(71,1,4921,NULL),(72,1,4922,NULL),(73,1,4923,NULL),(74,1,4924,NULL),(75,1,4925,NULL),(76,1,4926,NULL),(77,1,4927,NULL),(78,1,4928,'f66d8b0d09442c0022f6545a1c1f262f'),(79,1,4929,NULL),(80,1,4930,NULL),(81,1,4931,NULL),(82,1,4932,NULL),(83,1,4941,NULL),(84,1,4972,NULL),(85,1,4998,NULL),(86,1,5002,NULL),(87,1,5005,NULL),(88,1,5006,NULL),(89,1,5008,NULL),(90,1,5081,'64f39efda1f240bd5869cf6ac7eb3dcb'),(91,1,5526,NULL),(92,1,5559,NULL),(93,1,5606,'c762fe1a93d5d001acb0b71b3853d6a2'),(94,1,5607,NULL),(95,1,5608,'d2c3d1ebd84e0a9a3260c240f0aac9e7'),(96,1,5609,NULL),(97,1,5610,NULL),(98,1,5611,NULL),(99,1,3232,NULL),(108,1,5676,NULL),(109,1,5677,NULL),(110,1,5683,NULL),(111,1,5684,NULL),(112,1,5685,NULL),(113,1,5686,NULL),(114,1,5687,NULL),(115,1,5688,NULL),(116,1,5689,NULL),(117,1,5690,NULL),(118,1,5692,NULL),(119,1,5693,NULL),(120,1,5695,NULL),(121,1,5696,NULL),(122,1,5697,NULL),(123,1,5726,'83637687ce216b0eda9b7109fee6e332'),(124,1,5727,NULL),(125,1,5746,NULL),(126,1,5748,'0c2d41842a159574e2d5aff05380ab92'),(127,1,5794,NULL),(128,1,6140,'29b7748160ab0d0ffa5b857f892e432d'),(129,1,6219,'21ef05aed5af92469a50b35623d52101');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_grupo`
--

DROP TABLE IF EXISTS `usuario_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_grupo` (
  `id_grupo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`,`id_usuario`),
  KEY `fk_grupo_has_usuario_usuario1_idx` (`id_usuario`),
  KEY `fk_grupo_has_usuario_grupo1_idx` (`id_grupo`),
  CONSTRAINT `fk_grupo_has_usuario_grupo1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo_has_usuario_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_grupo`
--

LOCK TABLES `usuario_grupo` WRITE;
/*!40000 ALTER TABLE `usuario_grupo` DISABLE KEYS */;
INSERT INTO `usuario_grupo` VALUES (1,1),(1,4),(1,11),(1,23),(1,31),(1,32),(1,33),(1,36),(1,37),(1,38),(1,64),(1,65),(1,66),(1,70),(1,78),(1,90),(1,93),(1,95),(1,97),(1,99),(1,123),(1,126),(1,128),(1,129),(2,1),(2,2),(2,3),(2,4),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74),(2,75),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,97),(2,98),(2,99),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,118),(2,119),(2,120),(2,121),(2,122),(2,123),(2,124),(2,125),(2,126),(2,127),(2,128),(2,129),(3,1),(3,4),(3,90),(3,99),(3,123),(3,126),(4,11),(4,65),(4,70),(4,90),(4,97),(4,99),(4,126),(4,128),(5,33),(5,64),(5,66),(5,90),(5,93),(5,95),(5,99),(5,123),(6,1),(6,4),(6,7),(6,9),(6,10),(6,11),(6,12),(6,14),(6,16),(6,19),(6,22),(6,23),(6,25),(6,26),(6,27),(6,28),(6,30),(6,31),(6,32),(6,33),(6,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41),(6,42),(6,43),(6,44),(6,45),(6,46),(6,47),(6,48),(6,49),(6,50),(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(6,61),(6,62),(6,63),(6,64),(6,65),(6,66),(6,67),(6,68),(6,69),(6,70),(6,71),(6,72),(6,73),(6,74),(6,75),(6,76),(6,77),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83),(6,84),(6,85),(6,86),(6,87),(6,88),(6,89),(6,90),(6,91),(6,92),(6,93),(6,94),(6,95),(6,96),(6,97),(6,98),(6,99),(6,108),(6,109),(6,110),(6,111),(6,112),(6,113),(6,114),(6,115),(6,116),(6,117),(6,118),(6,119),(6,120),(6,121),(6,122),(6,123),(6,124),(6,125),(6,126),(6,127),(6,128),(6,129);
/*!40000 ALTER TABLE `usuario_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_mensagem`
--

DROP TABLE IF EXISTS `usuario_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_mensagem` (
  `id_usuario` int(11) NOT NULL,
  `id_mensagem` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_mensagem`),
  KEY `fk_usuario_has_mensagem_mensagem1_idx` (`id_mensagem`),
  KEY `fk_usuario_has_mensagem_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_usuario_has_mensagem_mensagem1` FOREIGN KEY (`id_mensagem`) REFERENCES `mensagem` (`id_mensagem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_mensagem_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_mensagem`
--

LOCK TABLES `usuario_mensagem` WRITE;
/*!40000 ALTER TABLE `usuario_mensagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_senha`
--

DROP TABLE IF EXISTS `usuario_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_senha` (
  `id_usuario_senha` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT 'P - PENDENTE\nC - CONFIRMADO',
  PRIMARY KEY (`id_usuario_senha`),
  KEY `fk_usuario_senha_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_usuario_senha_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_senha`
--

LOCK TABLES `usuario_senha` WRITE;
/*!40000 ALTER TABLE `usuario_senha` DISABLE KEYS */;
INSERT INTO `usuario_senha` VALUES (2,4,'1b6453892473a467d07372d45eb05abc2031647a','C'),(4,4,'1b6453892473a467d07372d45eb05abc2031647a','C'),(7,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(9,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','C'),(11,33,'b6692ea5df920cad691c20319a6fffd7a4a766b8','C'),(14,36,'fc074d501302eb2b93e2554793fcaf50b3bf7291','C'),(16,37,'cb7a1d775e800fd1ee4049f7dca9e041eb9ba083','C'),(18,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','C'),(20,23,'d435a6cdd786300dff204ee7c2ef942d3e9034e2','C'),(21,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','C'),(22,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(23,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(24,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(25,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(26,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(27,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(28,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(29,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(30,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(31,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(32,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(33,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(34,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(35,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(36,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(37,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(38,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(39,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(40,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(41,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(42,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(43,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(44,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(45,38,'5b384ce32d8cdef02bc3a139d4cac0a22bb029e8','P'),(46,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(47,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(48,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(49,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(50,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(51,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','C'),(52,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','P'),(53,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','P'),(54,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','P'),(55,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','P'),(56,32,'cb4e5208b4cd87268b208e49452ed6e89a68e0b8','P'),(57,33,'b6692ea5df920cad691c20319a6fffd7a4a766b8','P'),(58,33,'b6692ea5df920cad691c20319a6fffd7a4a766b8','P'),(59,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(60,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(61,44,'98fbc42faedc02492397cb5962ea3a3ffc0a9243','P'),(62,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(63,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(64,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(65,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(66,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(67,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(68,64,'c66c65175fecc3103b3b587be9b5b230889c8628','C'),(69,59,'5a5b0f9b7d3f8fc84c3cef8fd8efaaa6c70d75ab','P'),(70,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(71,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(72,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(73,64,'c66c65175fecc3103b3b587be9b5b230889c8628','P'),(74,64,'c66c65175fecc3103b3b587be9b5b230889c8628','P'),(75,64,'c66c65175fecc3103b3b587be9b5b230889c8628','P'),(76,66,'59129aacfb6cebbe2c52f30ef3424209f7252e82','C'),(77,66,'59129aacfb6cebbe2c52f30ef3424209f7252e82','P'),(78,70,'b7103ca278a75cad8f7d065acda0c2e80da0b7dc','C'),(79,70,'b7103ca278a75cad8f7d065acda0c2e80da0b7dc','P'),(80,65,'2a459380709e2fe4ac2dae5733c73225ff6cfee1','C'),(81,65,'2a459380709e2fe4ac2dae5733c73225ff6cfee1','P'),(82,78,'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f','C'),(83,78,'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f','P'),(84,78,'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f','P'),(85,78,'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f','P'),(86,23,'d435a6cdd786300dff204ee7c2ef942d3e9034e2','C'),(87,23,'d435a6cdd786300dff204ee7c2ef942d3e9034e2','P'),(88,23,'d435a6cdd786300dff204ee7c2ef942d3e9034e2','P'),(89,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','C'),(90,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','P'),(91,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','P'),(92,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','P'),(93,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','P'),(94,90,'2d0c8af807ef45ac17cafb2973d866ba8f38caa9','P'),(95,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(96,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(97,93,'08a35293e09f508494096c1c1b3819edb9df50db','C'),(98,93,'08a35293e09f508494096c1c1b3819edb9df50db','C'),(99,11,'17ba0791499db908433b80f37c5fbc89b870084b','C'),(100,11,'17ba0791499db908433b80f37c5fbc89b870084b','C'),(101,93,'08a35293e09f508494096c1c1b3819edb9df50db','C'),(102,93,'08a35293e09f508494096c1c1b3819edb9df50db','C'),(103,11,'17ba0791499db908433b80f37c5fbc89b870084b','P'),(104,11,'17ba0791499db908433b80f37c5fbc89b870084b','P'),(105,11,'17ba0791499db908433b80f37c5fbc89b870084b','P'),(106,11,'17ba0791499db908433b80f37c5fbc89b870084b','P'),(107,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(108,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(109,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(110,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(111,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(112,93,'08a35293e09f508494096c1c1b3819edb9df50db','P'),(113,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(114,31,'632667547e7cd3e0466547863e1207a8c0c0c549','C'),(115,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','C'),(116,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','C'),(117,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(118,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(119,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(120,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(121,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','C'),(122,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(123,123,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','C'),(124,123,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','P'),(125,126,'114d4eefde1dae3983e7a79f04c72feb9a3a7efd','C'),(126,126,'114d4eefde1dae3983e7a79f04c72feb9a3a7efd','P'),(127,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(128,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(129,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(130,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(131,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(132,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(133,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(134,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(135,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(136,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(137,128,'b4182bff4b3cf75f9e54f4990f9bd153c0c2973c','C'),(138,128,'b4182bff4b3cf75f9e54f4990f9bd153c0c2973c','P'),(139,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(140,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(141,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(142,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(143,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(144,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(145,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(146,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(147,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(148,126,'114d4eefde1dae3983e7a79f04c72feb9a3a7efd','P'),(149,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(150,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(151,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(152,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(153,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(154,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(155,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(156,1,'356a192b7913b04c54574d18c28d46e6395428ab','P'),(157,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(158,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(159,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(160,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(161,95,'8e63fd3e77796b102589b1ba1e4441c7982e4132','P'),(162,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(163,31,'632667547e7cd3e0466547863e1207a8c0c0c549','P'),(164,129,'8b7471f4ae0bf59f5f0a425068c05d96f4801b9e','C'),(165,129,'8b7471f4ae0bf59f5f0a425068c05d96f4801b9e','P'),(166,129,'8b7471f4ae0bf59f5f0a425068c05d96f4801b9e','P');
/*!40000 ALTER TABLE `usuario_senha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_situacao`
--

DROP TABLE IF EXISTS `usuario_situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_situacao` (
  `id_usuario_situacao` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_situacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_situacao`
--

LOCK TABLES `usuario_situacao` WRITE;
/*!40000 ALTER TABLE `usuario_situacao` DISABLE KEYS */;
INSERT INTO `usuario_situacao` VALUES (1,'A','ATIVO'),(2,'I','INATIVO');
/*!40000 ALTER TABLE `usuario_situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor`
--

DROP TABLE IF EXISTS `valor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL AUTO_INCREMENT,
  `id_moeda` int(11) NOT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id_valor`),
  KEY `fk_valor_moeda1_idx` (`id_moeda`),
  CONSTRAINT `fk_valor_moeda1` FOREIGN KEY (`id_moeda`) REFERENCES `moeda` (`id_moeda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=87834 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor`
--

LOCK TABLES `valor` WRITE;
/*!40000 ALTER TABLE `valor` DISABLE KEYS */;
INSERT INTO `valor` VALUES (87829,1,54.1),(87830,1,54.1),(87831,1,54.1),(87832,1,NULL),(87833,1,NULL);
/*!40000 ALTER TABLE `valor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo` (
  `id_veiculo` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) DEFAULT NULL,
  `id_uf` int(11) NOT NULL,
  `id_combustivel` int(11) NOT NULL,
  `ano_fabricacao` int(11) DEFAULT NULL,
  `ano_modelo` int(11) DEFAULT NULL,
  `id_cor` int(11) NOT NULL,
  `data_aquisicao` date DEFAULT NULL,
  `chassi` varchar(100) DEFAULT NULL,
  `renavan` varchar(100) DEFAULT NULL,
  `dut` varchar(100) DEFAULT NULL,
  `id_fabricante` int(11) NOT NULL,
  `id_veiculo_tipo` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `id_municipio` int(11) NOT NULL,
  `isento` char(1) DEFAULT NULL COMMENT 'S - SIM\nN - NÃO',
  `id_veiculo_categoria` int(11) DEFAULT NULL,
  `tara` float DEFAULT NULL,
  `lotacao` int(11) DEFAULT NULL,
  `proprietario_id_pessoa` int(11) DEFAULT NULL,
  `id_veiculo_especie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo`),
  KEY `fk_veiculo_uf1_idx` (`id_uf`),
  KEY `fk_veiculo_combustivel1_idx` (`id_combustivel`),
  KEY `fk_veiculo_cor1_idx` (`id_cor`),
  KEY `fk_veiculo_fabricante1_idx` (`id_fabricante`),
  KEY `fk_veiculo_veiculo_tipo1_idx` (`id_veiculo_tipo`),
  KEY `fk_veiculo_municipio1_idx` (`id_municipio`),
  CONSTRAINT `fk_veiculo_combustivel1` FOREIGN KEY (`id_combustivel`) REFERENCES `combustivel` (`id_combustivel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_cor1` FOREIGN KEY (`id_cor`) REFERENCES `cor` (`id_cor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_fabricante1` FOREIGN KEY (`id_fabricante`) REFERENCES `fabricante` (`id_fabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_municipio1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_uf1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_veiculo_tipo1` FOREIGN KEY (`id_veiculo_tipo`) REFERENCES `veiculo_tipo` (`id_veiculo_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7636 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (7635,'NEW0101',4,8,2018,2018,8,'2019-02-13','98392839283','0101010101','0101010101',4,1,'TESTE',1,'N',13,0,5,NULL,NULL);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_categoria`
--

DROP TABLE IF EXISTS `veiculo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_categoria` (
  `id_veiculo_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_categoria`
--

LOCK TABLES `veiculo_categoria` WRITE;
/*!40000 ALTER TABLE `veiculo_categoria` DISABLE KEYS */;
INSERT INTO `veiculo_categoria` VALUES (2,'AL','ALUGUEL'),(8,'O','OFICIAL'),(13,'P','PARTICULAR');
/*!40000 ALTER TABLE `veiculo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_especie`
--

DROP TABLE IF EXISTS `veiculo_especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_especie` (
  `id_veiculo_especie` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_especie`
--

LOCK TABLES `veiculo_especie` WRITE;
/*!40000 ALTER TABLE `veiculo_especie` DISABLE KEYS */;
INSERT INTO `veiculo_especie` VALUES (1,'P','PASSAGEIRO'),(2,'C','CARGA'),(3,'E','ESPECIAL'),(4,'M','MISTO'),(5,'T','TRACAO');
/*!40000 ALTER TABLE `veiculo_especie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_retido`
--

DROP TABLE IF EXISTS `veiculo_retido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_retido` (
  `id_veiculo_retido` int(11) NOT NULL AUTO_INCREMENT,
  `data_veiculo_retido` date DEFAULT NULL,
  `hora_veiculo_retido` time DEFAULT NULL,
  `id_veiculo` int(11) NOT NULL,
  `id_auto_infracao_notificacao` int(11) NOT NULL,
  `id_veiculo_retido_status` int(11) NOT NULL,
  PRIMARY KEY (`id_veiculo_retido`),
  KEY `fk_veiculo_retido_veiculo1_idx` (`id_veiculo`),
  KEY `fk_veiculo_retido_auto_infracao_notificacao1_idx` (`id_auto_infracao_notificacao`),
  KEY `fk_veiculo_retido_veiculo_retido_status1_idx` (`id_veiculo_retido_status`),
  CONSTRAINT `fk_veiculo_retido_auto_infracao_notificacao1` FOREIGN KEY (`id_auto_infracao_notificacao`) REFERENCES `auto_infracao_notificacao` (`id_auto_infracao_notificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_retido_veiculo1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_retido_veiculo_retido_status1` FOREIGN KEY (`id_veiculo_retido_status`) REFERENCES `veiculo_retido_status` (`id_veiculo_retido_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_retido`
--

LOCK TABLES `veiculo_retido` WRITE;
/*!40000 ALTER TABLE `veiculo_retido` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculo_retido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_retido_liberacao`
--

DROP TABLE IF EXISTS `veiculo_retido_liberacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_retido_liberacao` (
  `id_veiculo_retido_liberacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_veiculo_retido` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `data_liberacao` date DEFAULT NULL,
  `hora_liberacao` time DEFAULT NULL,
  PRIMARY KEY (`id_veiculo_retido_liberacao`),
  KEY `fk_veiculo_retido_liberacao_veiculo_retido1_idx` (`id_veiculo_retido`),
  KEY `fk_veiculo_retido_liberacao_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_veiculo_retido_liberacao_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculo_retido_liberacao_veiculo_retido1` FOREIGN KEY (`id_veiculo_retido`) REFERENCES `veiculo_retido` (`id_veiculo_retido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_retido_liberacao`
--

LOCK TABLES `veiculo_retido_liberacao` WRITE;
/*!40000 ALTER TABLE `veiculo_retido_liberacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculo_retido_liberacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_retido_status`
--

DROP TABLE IF EXISTS `veiculo_retido_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_retido_status` (
  `id_veiculo_retido_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo_retido_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_retido_status`
--

LOCK TABLES `veiculo_retido_status` WRITE;
/*!40000 ALTER TABLE `veiculo_retido_status` DISABLE KEYS */;
INSERT INTO `veiculo_retido_status` VALUES (1,'AL','AGUARDANDO LIBERAÇAO'),(2,'LI','LIBERADO');
/*!40000 ALTER TABLE `veiculo_retido_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_tipo`
--

DROP TABLE IF EXISTS `veiculo_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo_tipo` (
  `id_veiculo_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_tipo`
--

LOCK TABLES `veiculo_tipo` WRITE;
/*!40000 ALTER TABLE `veiculo_tipo` DISABLE KEYS */;
INSERT INTO `veiculo_tipo` VALUES (1,'CA','AUTOMOVEL'),(2,'MO','MOTO'),(3,'CM','CAMINHAO'),(4,'OB','ONIBUS'),(5,'MISTO','KOMBI'),(6,'CARGA','CAMINHONETE'),(7,'BUS','ÔNIBUS'),(8,'CT','C.TRATOR'),(9,'SR','S.REBOQUE'),(10,'CMT','CAMIONETA'),(12,'PAS','MICROONIBUS'),(13,'00','C.TRATOR'),(14,'12','DOBLO'),(15,'PASSAGEIRO','PASSAGEIRO'),(16,'M','MOTOCICLETA'),(17,'R','REBOQUE'),(18,'C','CAMINHONETA'),(19,'O','OUTROS');
/*!40000 ALTER TABLE `veiculo_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo`
--

DROP TABLE IF EXISTS `vinculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo` (
  `id_vinculo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_vinculo_status` int(11) NOT NULL,
  `id_vinculo_tipo` int(11) NOT NULL,
  `id_pessoa_juridica` int(11) DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `data_inicial` date DEFAULT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  `id_valor` int(11) NOT NULL,
  PRIMARY KEY (`id_vinculo`),
  KEY `fk_convenio_convenio_status1_idx` (`id_vinculo_status`),
  KEY `fk_vinculo_vinculo_tipo1_idx` (`id_vinculo_tipo`),
  KEY `fk_vinculo_pessoa_juridica1_idx` (`id_pessoa_juridica`),
  KEY `fk_vinculo_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_vinculo_valor1_idx` (`id_valor`),
  CONSTRAINT `fk_convenio_convenio_status1` FOREIGN KEY (`id_vinculo_status`) REFERENCES `vinculo_status` (`id_vinculo_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_pessoa_juridica1` FOREIGN KEY (`id_pessoa_juridica`) REFERENCES `pessoa_juridica` (`id_pessoa_juridica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_vinculo_tipo1` FOREIGN KEY (`id_vinculo_tipo`) REFERENCES `vinculo_tipo` (`id_vinculo_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo`
--

LOCK TABLES `vinculo` WRITE;
/*!40000 ALTER TABLE `vinculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote`
--

DROP TABLE IF EXISTS `vinculo_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote` (
  `id_vinculo_lote` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo` int(11) NOT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `id_vinculo_lote_status` int(11) NOT NULL,
  `id_arquivo_pc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_lote`),
  KEY `fk_vinculo_lote_vinculo1_idx` (`id_vinculo`),
  KEY `fk_vinculo_lote_vinculo_lote_status1_idx` (`id_vinculo_lote_status`),
  CONSTRAINT `fk_vinculo_lote_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_lote_vinculo_lote_status1` FOREIGN KEY (`id_vinculo_lote_status`) REFERENCES `vinculo_lote_status` (`id_vinculo_lote_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote`
--

LOCK TABLES `vinculo_lote` WRITE;
/*!40000 ALTER TABLE `vinculo_lote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote_item`
--

DROP TABLE IF EXISTS `vinculo_lote_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote_item` (
  `id_vinculo_lote_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo_lote` int(11) NOT NULL,
  `tipo` varchar(2) DEFAULT NULL COMMENT 'BO - BOLSISTA\nPF - PESSOA FÍSICA\nPJ - PESSOA JURÍDICA',
  `chave` int(11) DEFAULT NULL,
  `id_valor` int(11) NOT NULL,
  `id_vinculo_lote_item_status` int(11) NOT NULL,
  PRIMARY KEY (`id_vinculo_lote_item`),
  KEY `fk_vinculo_lote_item_vinculo_lote1_idx` (`id_vinculo_lote`),
  KEY `fk_vinculo_lote_item_valor1_idx` (`id_valor`),
  KEY `fk_vinculo_lote_item_vinculo_lote_item_status1_idx` (`id_vinculo_lote_item_status`),
  CONSTRAINT `fk_vinculo_lote_item_valor1` FOREIGN KEY (`id_valor`) REFERENCES `valor` (`id_valor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_lote_item_vinculo_lote1` FOREIGN KEY (`id_vinculo_lote`) REFERENCES `vinculo_lote` (`id_vinculo_lote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_lote_item_vinculo_lote_item_status1` FOREIGN KEY (`id_vinculo_lote_item_status`) REFERENCES `vinculo_lote_item_status` (`id_vinculo_lote_item_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote_item`
--

LOCK TABLES `vinculo_lote_item` WRITE;
/*!40000 ALTER TABLE `vinculo_lote_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_lote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote_item_status`
--

DROP TABLE IF EXISTS `vinculo_lote_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote_item_status` (
  `id_vinculo_lote_item_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_lote_item_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='PP - PAGAMENTO PENDENTE\nPG - PAGAMENTO CONFIRMADO\nFL - FALHA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote_item_status`
--

LOCK TABLES `vinculo_lote_item_status` WRITE;
/*!40000 ALTER TABLE `vinculo_lote_item_status` DISABLE KEYS */;
INSERT INTO `vinculo_lote_item_status` VALUES (1,'PP','PAGAMENTO PENDENTE'),(2,'PG','PAGAMENTO CONFIRMADO'),(3,'FL','FALHA NO PAGAMENTO'),(4,'IN','INAPTO');
/*!40000 ALTER TABLE `vinculo_lote_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote_ocorrencia`
--

DROP TABLE IF EXISTS `vinculo_lote_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote_ocorrencia` (
  `id_vinculo_lote_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_vinculo_lote` int(11) NOT NULL,
  `id_vinculo_lote_ocorrencia_tipo` int(11) NOT NULL,
  `id_arquivo_pc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_lote_ocorrencia`),
  KEY `fk_vinculo_lote_ocorrencia_usuario1_idx` (`id_usuario`),
  KEY `fk_vinculo_lote_ocorrencia_vinculo_lote1_idx` (`id_vinculo_lote`),
  KEY `fk_vinculo_lote_ocorrencia_vinculo_lote_ocorrencia_tipo1_idx` (`id_vinculo_lote_ocorrencia_tipo`),
  CONSTRAINT `fk_vinculo_lote_ocorrencia_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_lote_ocorrencia_vinculo_lote1` FOREIGN KEY (`id_vinculo_lote`) REFERENCES `vinculo_lote` (`id_vinculo_lote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_lote_ocorrencia_vinculo_lote_ocorrencia_tipo1` FOREIGN KEY (`id_vinculo_lote_ocorrencia_tipo`) REFERENCES `vinculo_lote_ocorrencia_tipo` (`id_vinculo_lote_ocorrencia_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote_ocorrencia`
--

LOCK TABLES `vinculo_lote_ocorrencia` WRITE;
/*!40000 ALTER TABLE `vinculo_lote_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_lote_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote_ocorrencia_tipo`
--

DROP TABLE IF EXISTS `vinculo_lote_ocorrencia_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote_ocorrencia_tipo` (
  `id_vinculo_lote_ocorrencia_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_lote_ocorrencia_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='LB - LIBERAÇÃO\nAP - APROVAÇÃO\nNF - GERAÇÃO NOTA FISCAL\nPG - ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote_ocorrencia_tipo`
--

LOCK TABLES `vinculo_lote_ocorrencia_tipo` WRITE;
/*!40000 ALTER TABLE `vinculo_lote_ocorrencia_tipo` DISABLE KEYS */;
INSERT INTO `vinculo_lote_ocorrencia_tipo` VALUES (1,'LB','LIBERAÇÃO'),(2,'AP','APROVAÇÃO'),(3,'NF','GERAÇÃO NOTA FISCAL'),(4,'PG','CONFIRMAÇÃO DE PAGAMENTO'),(5,'RC','RECEBIMENTO DE RECURSO'),(6,'EPC','ENVIO PRESTAÇÃO DE CONTAS'),(7,'PCC','CONFIRMAÇÃO DE PRESTAÇÃO DE CONTAS');
/*!40000 ALTER TABLE `vinculo_lote_ocorrencia_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_lote_status`
--

DROP TABLE IF EXISTS `vinculo_lote_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_lote_status` (
  `id_vinculo_lote_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_lote_status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='AL - AGUARDANDO LIBERAÇÃO\nAG - AGUARDANDO APROVAÇÃO\nAP - APR';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_lote_status`
--

LOCK TABLES `vinculo_lote_status` WRITE;
/*!40000 ALTER TABLE `vinculo_lote_status` DISABLE KEYS */;
INSERT INTO `vinculo_lote_status` VALUES (1,'AL','AGUARDANDO LIBERAÇÃO'),(2,'AG','AGUARDANDO APROVAÇÃO'),(3,'AP','APROVADO'),(4,'NF','NOTA FISCAL GERADA'),(5,'PG','PAGAMENTO CONFIRMADO'),(6,'RC','RECURSO RECEBIDO'),(7,'APC','AGUARDANDO PRESTAÇÃO DE CONTAS'),(8,'PCC','PRESTAÇÃO DE CONTAS CONFIRMADA');
/*!40000 ALTER TABLE `vinculo_lote_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_ocorrencia`
--

DROP TABLE IF EXISTS `vinculo_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_ocorrencia` (
  `id_vinculo_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_ocorrencia`),
  KEY `fk_vinculo_ocorrencia_vinculo1_idx` (`id_vinculo`),
  CONSTRAINT `fk_vinculo_ocorrencia_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_ocorrencia`
--

LOCK TABLES `vinculo_ocorrencia` WRITE;
/*!40000 ALTER TABLE `vinculo_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_pessoa`
--

DROP TABLE IF EXISTS `vinculo_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_pessoa` (
  `id_vinculo_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `id_vinculo_pessoa_tipo` int(11) NOT NULL,
  `id_vinculo` int(11) NOT NULL,
  `id_pessoa_fisica` int(11) NOT NULL,
  PRIMARY KEY (`id_vinculo_pessoa`),
  KEY `fk_vinculo_pessoa_vinculo1_idx` (`id_vinculo`),
  KEY `fk_vinculo_pessoa_pessoa_fisica1_idx` (`id_pessoa_fisica`),
  KEY `fk_vinculo_pessoa_vinculo_pessoa_tipo1_idx` (`id_vinculo_pessoa_tipo`),
  CONSTRAINT `fk_vinculo_pessoa_pessoa_fisica1` FOREIGN KEY (`id_pessoa_fisica`) REFERENCES `pessoa_fisica` (`id_pessoa_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_pessoa_vinculo1` FOREIGN KEY (`id_vinculo`) REFERENCES `vinculo` (`id_vinculo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vinculo_pessoa_vinculo_pessoa_tipo1` FOREIGN KEY (`id_vinculo_pessoa_tipo`) REFERENCES `vinculo_pessoa_tipo` (`id_vinculo_pessoa_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_pessoa`
--

LOCK TABLES `vinculo_pessoa` WRITE;
/*!40000 ALTER TABLE `vinculo_pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_pessoa_tipo`
--

DROP TABLE IF EXISTS `vinculo_pessoa_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_pessoa_tipo` (
  `id_vinculo_pessoa_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_pessoa_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='CO - COORDENADOR DO PROJETO\nRF - RESPONSÁVEL FINANCEIRO\nRC - /* comment truncated */ /* RESPONSÁVEL CONTÁBIL\nRT - RESPONSÁVEL TÉCNICO*/';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_pessoa_tipo`
--

LOCK TABLES `vinculo_pessoa_tipo` WRITE;
/*!40000 ALTER TABLE `vinculo_pessoa_tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculo_pessoa_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_status`
--

DROP TABLE IF EXISTS `vinculo_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_status` (
  `id_vinculo_status` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(5) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_status`
--

LOCK TABLES `vinculo_status` WRITE;
/*!40000 ALTER TABLE `vinculo_status` DISABLE KEYS */;
INSERT INTO `vinculo_status` VALUES (1,'A','ATIVO'),(2,'F','FINALIZADO');
/*!40000 ALTER TABLE `vinculo_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculo_tipo`
--

DROP TABLE IF EXISTS `vinculo_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculo_tipo` (
  `id_vinculo_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(5) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_vinculo_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='CO - CONVÊNIO\nCT - CONTRATO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo_tipo`
--

LOCK TABLES `vinculo_tipo` WRITE;
/*!40000 ALTER TABLE `vinculo_tipo` DISABLE KEYS */;
INSERT INTO `vinculo_tipo` VALUES (1,'CO','CONVÊNIO'),(2,'CT','CONTRATO');
/*!40000 ALTER TABLE `vinculo_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-14 16:46:09