CREATE DATABASE  IF NOT EXISTS `parkplatz` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `parkplatz`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: parkplatz
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset` (
  `idasset` int(11) NOT NULL,
  `idTipoAsset` int(11) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idasset`),
  KEY `asset` (`idTipoAsset`),
  CONSTRAINT `asset_ibfk_1` FOREIGN KEY (`idTipoAsset`) REFERENCES `cattipoasset` (`idcattipoasset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogomodolugares`
--

DROP TABLE IF EXISTS `catalogomodolugares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogomodolugares` (
  `idcatalogomodolugares` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcatalogomodolugares`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogomodolugares`
--

LOCK TABLES `catalogomodolugares` WRITE;
/*!40000 ALTER TABLE `catalogomodolugares` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogomodolugares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catprioridades`
--

DROP TABLE IF EXISTS `catprioridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catprioridades` (
  `idcatprioridades` int(11) NOT NULL,
  `prioridad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcatprioridades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catprioridades`
--

LOCK TABLES `catprioridades` WRITE;
/*!40000 ALTER TABLE `catprioridades` DISABLE KEYS */;
/*!40000 ALTER TABLE `catprioridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cattipoasset`
--

DROP TABLE IF EXISTS `cattipoasset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cattipoasset` (
  `idcattipoasset` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcattipoasset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cattipoasset`
--

LOCK TABLES `cattipoasset` WRITE;
/*!40000 ALTER TABLE `cattipoasset` DISABLE KEYS */;
/*!40000 ALTER TABLE `cattipoasset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cattipocoordenadas`
--

DROP TABLE IF EXISTS `cattipocoordenadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cattipocoordenadas` (
  `idcattipocoordenadas` int(11) NOT NULL,
  `proposito` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcattipocoordenadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cattipocoordenadas`
--

LOCK TABLES `cattipocoordenadas` WRITE;
/*!40000 ALTER TABLE `cattipocoordenadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cattipocoordenadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catubicacionesestacionamiento`
--

DROP TABLE IF EXISTS `catubicacionesestacionamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catubicacionesestacionamiento` (
  `idcatubicacionesestacionamiento` int(11) NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `delegacionMunicipio` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `idCoordenadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcatubicacionesestacionamiento`),
  KEY `idCoordenadas` (`idCoordenadas`),
  CONSTRAINT `catubicacionesestacionamiento_ibfk_1` FOREIGN KEY (`idCoordenadas`) REFERENCES `coordenadas` (`idcoordenadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catubicacionesestacionamiento`
--

LOCK TABLES `catubicacionesestacionamiento` WRITE;
/*!40000 ALTER TABLE `catubicacionesestacionamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `catubicacionesestacionamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordenadas`
--

DROP TABLE IF EXISTS `coordenadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordenadas` (
  `idcoordenadas` int(11) NOT NULL,
  `cordenadaX` varchar(45) DEFAULT NULL,
  `coordenadaY` varchar(45) DEFAULT NULL,
  `idTipoCoordenadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcoordenadas`),
  KEY `idTipoCoordenadas` (`idTipoCoordenadas`),
  CONSTRAINT `coordenadas_ibfk_1` FOREIGN KEY (`idTipoCoordenadas`) REFERENCES `cattipocoordenadas` (`idcattipocoordenadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordenadas`
--

LOCK TABLES `coordenadas` WRITE;
/*!40000 ALTER TABLE `coordenadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordenadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos`
--

DROP TABLE IF EXISTS `datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos` (
  `iddatos` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `aPaterno` varchar(45) NOT NULL,
  `aMaterno` varchar(45) NOT NULL,
  `idCordenadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddatos`),
  KEY `idCordenadas` (`idCordenadas`),
  CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`idCordenadas`) REFERENCES `coordenadas` (`idcoordenadas`),
  CONSTRAINT `datos_ibfk_2` FOREIGN KEY (`idCordenadas`) REFERENCES `coordenadas` (`idcoordenadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos`
--

LOCK TABLES `datos` WRITE;
/*!40000 ALTER TABLE `datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosestacionamientos`
--

DROP TABLE IF EXISTS `datosestacionamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datosestacionamientos` (
  `iddatosestacionamientos` int(11) NOT NULL,
  `nombreEstacionamiento` varchar(45) DEFAULT NULL,
  `idUbicacion` int(11) DEFAULT NULL,
  `horarios` longtext,
  `tarifa` float DEFAULT NULL,
  `alturaMaxima` float DEFAULT NULL,
  `descripcion` varchar(275) DEFAULT NULL,
  `idAsset` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddatosestacionamientos`),
  KEY `datosestacionamientos` (`idUbicacion`),
  KEY `idAsset` (`idAsset`),
  CONSTRAINT `datosestacionamientos_ibfk_1` FOREIGN KEY (`idUbicacion`) REFERENCES `catubicacionesestacionamiento` (`idcatubicacionesestacionamiento`),
  CONSTRAINT `datosestacionamientos_ibfk_2` FOREIGN KEY (`idAsset`) REFERENCES `asset` (`idasset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosestacionamientos`
--

LOCK TABLES `datosestacionamientos` WRITE;
/*!40000 ALTER TABLE `datosestacionamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosestacionamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estacionamientos`
--

DROP TABLE IF EXISTS `estacionamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estacionamientos` (
  `idestacionamientos` int(11) NOT NULL,
  `idDatosEstacionamiento` int(11) DEFAULT NULL,
  `idDatos` int(11) DEFAULT NULL,
  `idServicios` int(11) DEFAULT NULL,
  PRIMARY KEY (`idestacionamientos`),
  KEY `estacionamientos` (`idDatosEstacionamiento`),
  KEY `idDatos` (`idDatos`),
  KEY `idServicios` (`idServicios`),
  CONSTRAINT `estacionamientos_ibfk_1` FOREIGN KEY (`idDatosEstacionamiento`) REFERENCES `datosestacionamientos` (`iddatosestacionamientos`),
  CONSTRAINT `estacionamientos_ibfk_2` FOREIGN KEY (`idDatos`) REFERENCES `datos` (`iddatos`),
  CONSTRAINT `estacionamientos_ibfk_3` FOREIGN KEY (`idServicios`) REFERENCES `servicios` (`idservicios`),
  CONSTRAINT `estacionamientos_ibfk_4` FOREIGN KEY (`idServicios`) REFERENCES `servicios` (`idservicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacionamientos`
--

LOCK TABLES `estacionamientos` WRITE;
/*!40000 ALTER TABLE `estacionamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `estacionamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritos` (
  `idFavoritos` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEstacionamiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFavoritos`),
  KEY `favoritos` (`idUsuario`),
  KEY `idEstacionamiento` (`idEstacionamiento`),
  CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`idEstacionamiento`) REFERENCES `estacionamientos` (`idestacionamientos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `idfeedback` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idPrioridad` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idfeedback`),
  KEY `feedback` (`idUsuario`),
  KEY `idPrioridad` (`idPrioridad`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`idPrioridad`) REFERENCES `catprioridades` (`idcatprioridades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugares`
--

DROP TABLE IF EXISTS `lugares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugares` (
  `idlugares` int(11) NOT NULL,
  `idModoLugar` int(11) DEFAULT NULL,
  `idCoordenadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlugares`),
  KEY `lugares` (`idModoLugar`),
  KEY `idCoordenadas` (`idCoordenadas`),
  CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`idModoLugar`) REFERENCES `catalogomodolugares` (`idcatalogomodolugares`),
  CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`idCoordenadas`) REFERENCES `coordenadas` (`idcoordenadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugares`
--

LOCK TABLES `lugares` WRITE;
/*!40000 ALTER TABLE `lugares` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recientes`
--

DROP TABLE IF EXISTS `recientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recientes` (
  `idrecientes` int(11) NOT NULL,
  `idEstacionamientos` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idrecientes`),
  KEY `recientes` (`idEstacionamientos`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `recientes_ibfk_1` FOREIGN KEY (`idEstacionamientos`) REFERENCES `estacionamientos` (`idestacionamientos`),
  CONSTRAINT `recientes_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recientes`
--

LOCK TABLES `recientes` WRITE;
/*!40000 ALTER TABLE `recientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relestalugar`
--

DROP TABLE IF EXISTS `relestalugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relestalugar` (
  `idrelEstaLugar` int(11) NOT NULL,
  `idEstacionamiento` int(11) NOT NULL,
  `idLugar` int(11) NOT NULL,
  PRIMARY KEY (`idrelEstaLugar`,`idEstacionamiento`,`idLugar`),
  KEY `relestalugar` (`idEstacionamiento`),
  KEY `idLugar` (`idLugar`),
  CONSTRAINT `relestalugar_ibfk_1` FOREIGN KEY (`idEstacionamiento`) REFERENCES `estacionamientos` (`idestacionamientos`),
  CONSTRAINT `relestalugar_ibfk_2` FOREIGN KEY (`idLugar`) REFERENCES `lugares` (`idlugares`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relestalugar`
--

LOCK TABLES `relestalugar` WRITE;
/*!40000 ALTER TABLE `relestalugar` DISABLE KEYS */;
/*!40000 ALTER TABLE `relestalugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `idservicios` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`idservicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idtipoUsuario` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `idDatos` int(11) DEFAULT NULL,
  `idTipoUsuario` int(11) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `usuario` (`idDatos`),
  KEY `idTipoUsuario` (`idTipoUsuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idDatos`) REFERENCES `datos` (`iddatos`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idDatos`) REFERENCES `datos` (`iddatos`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idtipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parkplatz'
--
/*!50003 DROP PROCEDURE IF EXISTS `borrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_usuario`(in correo varchar(45))
begin
	delete from datos where iddatos = (select idDatos from usuarios where usuarios.correo = correo);
    delete from usuario where usuario.correo = correo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiar_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiar_pass`(in correo varchar(45), in pass varchar(500), in nvo_pass varchar(500))
begin
	if pass = (select password from usuario where usuario.correo = correo) then
	update usuario set usuario.password = nvo_pass where usuario.correo=correo;
    else
    select 'Contraseña actual incorrecta' as 'Error';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editar_datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editar_datos`(in nuo_Nombre varchar(45), in nvo_aPaterno varchar(45), in nvo_aMaterno varchar(45), in correo varchar(45))
begin
	update datos set nombre = nvo_Nombre, aPaterno = nvo_aPaterno, aMaterno = nvo_aMaterno where iddatos = (select idDatos from usuario where usuario.correo = correo);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_usuario`(in Nombre varchar(45), in aPaterno varchar(45), in aMaterno varchar(45), in tipoUsuario int, in correo varchar(45), in contra varchar(500))
begin
	declare idDatos int;
    set idDatos = (select count(*) from datos);
    insert into datos values (idDatos, Nombre, aPaterno, aMaterno, null);
    insert into usuario( select count(*) from usuario, idDatos, tipoUsuario, contra, correo);
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_datos`(in correo varchar(45))
begin
	select * from datos where iddatos = (select idDatos from usuario where usuario.correo = correo);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ver_cordenadasEst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_cordenadasEst`(in idEstacionamiento int)
begin
	select cordenadaX as 'X', cordenadaX as 'Y' from coordenadas
    inner join `catubicacionesestacionamiento` on `catubicacionesestacionamiento`.idCoordenadas = coordenadas.idcoordenadas
    inner join `datosestacionamientos` on `datosestacionamientos`.idUbicacion = catubicacionesestacionamiento.idcatubicacionesestacionamiento
    inner join estacionamientos on estacionamientos.idDatosEstacionamiento = datosestacionamientos.iddatosestacionamientos
    where estacionamientos.idestacionamientos = idEstacionamiento;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ver_datosEstacionamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_datosEstacionamiento`(in nombre varchar(100))
begin
	select datosestacionamientos.nombreEstacionamiento as 'Nombre', 
    datosestacionamientos.horarios as 'Horario', datosestacionamientos.tarifa as 'Tarifa',
    datosestacionamientos.alturaMaxima as 'Altura Máxima', datosestacionamientos.descripcion as 'Descripcion', catubicacionesestacionamiento.calle as 'Calle',
    catubicacionesestacionamiento.colonia as 'Colonia', catubicacionesestacionamiento.`delegacionMunicipio` as 'Delegacion o Municipio', 
    catubicacionesestacionamiento.estado as 'Estado', asset.url from datosestacionamientos
    inner join asset on datosestacionamientos.idAsset = asset.idasset 
    inner join catubicacionesestacionamiento on catubicacionesestacionamiento.idcatubicacionesestacionamiento = datosestacionamientos.idUbicacion
    where datosestacionamientos.nombreEstacionamiento like concat('%', nombre,'%')  order by `datosestacionamientos`.`nombreEstacionamiento` desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-22 21:52:57
