-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: tecnologico
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_alumno` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `direccion_alumno` varchar(120) NOT NULL,
  `carrera` enum('Arquitectura','Ingenieria industrial','Ingenieria informatica','Ingenieria en gestion empresarial','Ingenieria en sistemas computacionales','Licenciatura en administracion','Ingenieria en dise¤o industrial') NOT NULL,
  `semestre` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`alumno_id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `carrera_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` enum('Arquitectura','Ingenieria industrial','Ingenieria informatica','ingenieria en gestion empresarial','ingenieria en sistemas computacionales','licenciatura en administracion','ingenieria en dise¤o industrial') NOT NULL,
  `abreviatura` varchar(50) NOT NULL,
  PRIMARY KEY (`carrera_id`),
  UNIQUE KEY `abreviatura` (`abreviatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_instituto`
--

DROP TABLE IF EXISTS `datos_instituto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_instituto` (
  `nombre_instituto` varchar(50) NOT NULL,
  `direccion_instituto` varchar(120) NOT NULL,
  `contacto_instituto` int(11) NOT NULL,
  `carreras_ofrecidas` varchar(120) NOT NULL,
  PRIMARY KEY (`nombre_instituto`),
  UNIQUE KEY `contacto_instituto` (`contacto_instituto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_instituto`
--

LOCK TABLES `datos_instituto` WRITE;
/*!40000 ALTER TABLE `datos_instituto` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_instituto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `departamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(50) NOT NULL,
  `jefe_departamento` varchar(100) NOT NULL,
  `presupuesto` int(11) DEFAULT '20000',
  `numero_empleados` int(11) DEFAULT '5',
  PRIMARY KEY (`departamento_id`),
  UNIQUE KEY `nombre_departamento` (`nombre_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleado_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_empleado` enum('soporte','docente') NOT NULL,
  `nombre_empleado` varchar(50) NOT NULL,
  `apellido_pat_empleado` varchar(50) NOT NULL,
  `apellido_mat_empleado` varchar(50) NOT NULL,
  `direccion_empleado` varchar(120) NOT NULL,
  `correo_empleado` varchar(50) NOT NULL,
  `plaza_empleado` varchar(50) NOT NULL,
  `horas_trabajo` int(11) NOT NULL,
  `salario_min` int(11) DEFAULT '10000',
  `salario_max` int(11) NOT NULL,
  `referencias_empleado` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`empleado_id`),
  UNIQUE KEY `correo_empleado` (`correo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_arq`
--

DROP TABLE IF EXISTS `materias_arq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_arq` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_arq`
--

LOCK TABLES `materias_arq` WRITE;
/*!40000 ALTER TABLE `materias_arq` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_arq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_idi`
--

DROP TABLE IF EXISTS `materias_idi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_idi` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_idi`
--

LOCK TABLES `materias_idi` WRITE;
/*!40000 ALTER TABLE `materias_idi` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_idi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_ige`
--

DROP TABLE IF EXISTS `materias_ige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_ige` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_ige`
--

LOCK TABLES `materias_ige` WRITE;
/*!40000 ALTER TABLE `materias_ige` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_ige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_iind`
--

DROP TABLE IF EXISTS `materias_iind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_iind` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_iind`
--

LOCK TABLES `materias_iind` WRITE;
/*!40000 ALTER TABLE `materias_iind` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_iind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_iinf`
--

DROP TABLE IF EXISTS `materias_iinf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_iinf` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_iinf`
--

LOCK TABLES `materias_iinf` WRITE;
/*!40000 ALTER TABLE `materias_iinf` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_iinf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_isc`
--

DROP TABLE IF EXISTS `materias_isc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_isc` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_isc`
--

LOCK TABLES `materias_isc` WRITE;
/*!40000 ALTER TABLE `materias_isc` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_isc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_la`
--

DROP TABLE IF EXISTS `materias_la`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_la` (
  `materia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(70) NOT NULL,
  `creditos_materia` int(11) NOT NULL,
  `horarios_materia` varchar(25) NOT NULL,
  `calificacion_materia` int(11) NOT NULL,
  PRIMARY KEY (`materia_id`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_la`
--

LOCK TABLES `materias_la` WRITE;
/*!40000 ALTER TABLE `materias_la` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias_la` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 17:53:53
