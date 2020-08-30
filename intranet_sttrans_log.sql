-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: intranet_sttrans_log
-- ------------------------------------------------------
-- Server version	5.5.47-0+deb7u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `intranet_sttrans_log`
--

/*!40000 DROP DATABASE IF EXISTS `intranet_sttrans_log`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `intranet_sttrans_log` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `intranet_sttrans_log`;

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
  `tabela` varchar(50) DEFAULT NULL,
  `id_log_operacao` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `validador` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `fk_log_operacao1_idx` (`id_log_operacao`),
  KEY `idx_log` (`ip`,`cpf`,`tabela`,`id_log_operacao`,`data`),
  CONSTRAINT `fk_log_operacao1` FOREIGN KEY (`id_log_operacao`) REFERENCES `log_operacao` (`id_log_operacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=442182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `valor_anterior` varchar(1000) DEFAULT NULL,
  `valor_depois` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_log_campo`),
  KEY `fk_log_campo_log1_idx` (`id_log`),
  CONSTRAINT `fk_log_campo_log1` FOREIGN KEY (`id_log`) REFERENCES `log` (`id_log`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2003854 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_operacao`
--

DROP TABLE IF EXISTS `log_operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_operacao` (
  `id_log_operacao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `chave` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_log_operacao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 20:49:45
