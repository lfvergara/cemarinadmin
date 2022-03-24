-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cemarinadmin
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0+deb9u1

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
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracion` (
  `configuracion_id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` text COLLATE utf8_spanish_ci,
  `domicilio_comercial` text COLLATE utf8_spanish_ci,
  `cuit` bigint(20) DEFAULT NULL,
  `ingresos_brutos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_actividad` date DEFAULT NULL,
  `punto_venta` int(11) NOT NULL,
  PRIMARY KEY (`configuracion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES (1,'VALDEZ JULIO','España 333 - La Rioja - La Rioja',20280565424,'000-044426-6','2018-04-01',4);
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracionmenu`
--

DROP TABLE IF EXISTS `configuracionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracionmenu` (
  `configuracionmenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`configuracionmenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracionmenu`
--

LOCK TABLES `configuracionmenu` WRITE;
/*!40000 ALTER TABLE `configuracionmenu` DISABLE KEYS */;
INSERT INTO `configuracionmenu` VALUES (1,'DESARROLLADOR',9),(2,'ADMINISTRADOR',3),(3,'FACTURADOR',1),(4,'SUPERVISOR',2),(5,'VENDEDOR',1),(6,'LEGUIZAMON CLAUDIO',1),(7,'MARASSO FERNANDO',2);
/*!40000 ALTER TABLE `configuracionmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoinvestigacion`
--

DROP TABLE IF EXISTS `grupoinvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupoinvestigacion` (
  `grupoinvestigacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`grupoinvestigacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoinvestigacion`
--

LOCK TABLES `grupoinvestigacion` WRITE;
/*!40000 ALTER TABLE `grupoinvestigacion` DISABLE KEYS */;
INSERT INTO `grupoinvestigacion` VALUES (1,'GISMAC. Grupo de Investigación en Sistemas Marinos y Costeros'),(2,'Grupo de Investigación Medio Ambiente y Sociedad'),(3,'Grupo de Investigación en Gestión y Modelación Ambiental (GAIA)'),(4,'Limnología Básica y Experimental y Biología y Taxonomía Marina'),(5,'Dinámica y Manejo de Ecosistemas Marino-Costeros'),(6,'Grupo de investigación en Georrecursos, Minería y Medio Ambiente. GEMMA'),(7,'Posgrado en Aprovechamiento de Recursos Hidráulicos'),(8,'Estudio y aprovechamiento de Productos Naturales Marinos y Frutas de Colombia'),(9,'OCEANICOS - Grupo de Oceanografía e Ingeniería Costera de la Universidad Nacional'),(10,'Grupo de Investigación en Ecosistemas Rocosos Intermareales y submareales someros - Lithos'),(11,'Territories Group, Research Group in Water Resources and Soil Engineering - IREHISA, International Collaborator'),(12,'Ingeniería de Procesos y Sistemas industriales'),(13,'Bioprospección y Biotecnología'),(14,'Grupo de Investigación en Ciencias de la Decisión'),(15,'Grupo Estudios del Territorio'),(16,'Grupo de Limnología y Ecología Acuática'),(17,'Productos Naturales Marinos'),(18,'Palinología y Paleoecología Tropical'),(19,'Ecología de arrecifes coralinos'),(20,'Inmunologia Evolutiva e Inmunogenetica'),(21,'Astronomy, Astrophysics and Cosmology - Group of Solar Astrophysics'),(22,'Ecología de estuarios y manglares'),(23,'Fauna Marina Colombiana: Biodiversidad y Usos'),(24,'Recursos Hidrobiológicos'),(25,'Grupo de Ingeniería y Gestión Ambiental GIGA'),(26,'Grupo de Investigación en Energía, Ambiente y Desarrollo (EADE)'),(27,'GENETICA, BIOLOGIA MOLECULAR & BIOINFORMATICA'),(28,'Microbiologia Acuática'),(29,'ELICE-Ecología Lótica: Islas, Costas y Estuarios'),(30,'Biología Molecular Marina BIOMMAR'),(31,'Laboratorio de Ecología Molecular de Vertebrados Acuáticos'),(32,'Grupo de Investigación en Manejo y Agroindustrialización de Productos de Origen Biológico'),(33,'Ecología y Contaminación Acuática ECONACUA'),(34,'Dinámicas Urbano-Regionales'),(35,'Bioprocesos y bioprospección'),(36,'Nación, región y relaciones internacionales en el Caribe y América Latina'),(37,'RNomica teórica y computacional'),(38,'Biodiversidad y Acuicultura'),(39,'Estado y Sociedad del Caribe'),(40,'Cultura, violencia y territorio'),(41,'Sistemas de Liberación Controlada de Moléculas Biológicamente Activas'),(42,'Tecnologías marinas, Oceanografía operacional y costera'),(43,'Microbiomas y Bioenergia - MicroBio'),(44,'Cultura y territorio'),(45,'Percepción y Control Inteligente (PCI)'),(46,'Pensar Ciudad. Tecnologias del Hábitat'),(47,'ESCUELA DEL HÁBITAT-CEHAP'),(48,'Grupo de estudios en geología y geofísica - EGEO'),(49,'Fisiología de Peces'),(50,'ABC Dynamics'),(51,'Grupo de Economia y Medio Ambiente'),(52,'Sistematica Molecular y Biogeografia de Algas Marinas'),(53,'Modelacion de Ecosistemas Costeros'),(54,'Ecología y Conservación de Fauna Silvestre'),(55,'Grupo de Estudios Sobre Desarrollo Económico'),(56,'CMUA - Centro de Microelectrónica Universidad de los Andes'),(57,'Grupo de Materiales y Manufactura CIPP - CIPEM'),(58,'Gestión Cadena de Suministro y Tecnología - CAST'),(59,'Microbiología y Biotecnología Aplicada (MIBIA)'),(60,'Asociación: Centro de Estudios Regionales'),(61,'Desarrollo y Aplicaciones en Resonancia Magnética Nuclear'),(62,'Enfermedades congénitas del metabolismo'),(63,'La Química de la interfase inorganica-organica (QUINORG)'),(64,'Grupo de Diseño de Productos y Procesos'),(65,'Biología de plantas y microorganismos'),(66,'Interacciones Moleculares Microbianas'),(67,'IMAGINE: Computación Visual, I+D+i'),(68,'Biología Computacional y Ecología Microbiana'),(69,'Grupo de Ingeniería Biomédica'),(70,'Ciencias oceanográficas'),(71,'Estudios Ambientales del Caribe'),(72,'POLYGESTA - Política, Legislación y Gestión Ambienta'),(73,'Ciencias de la Decision'),(74,'Modelación de sistemas'),(75,'Grupo de Micología y Fitopatologia'),(76,'GeoLimna'),(77,'Ecología Animal'),(78,'Geotecnologías'),(79,'GRUPO DE GEOTECNIA'),(80,'CENIT'),(81,'Biofísica'),(82,'N/A');
/*!40000 ALTER TABLE `grupoinvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infocontacto`
--

DROP TABLE IF EXISTS `infocontacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infocontacto` (
  `infocontacto_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`infocontacto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infocontacto`
--

LOCK TABLES `infocontacto` WRITE;
/*!40000 ALTER TABLE `infocontacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `infocontacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador`
--

DROP TABLE IF EXISTS `investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigador` (
  `investigador_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish_ci,
  `ciudad_residencia` text COLLATE utf8_spanish_ci,
  `direccion` text COLLATE utf8_spanish_ci,
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correoelectronico` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_web` text COLLATE utf8_spanish_ci,
  `cv_ingles` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autoriza_tratamiento_datos` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `intereses` text COLLATE utf8_spanish_ci,
  `observacion` text COLLATE utf8_spanish_ci,
  `investigadorcategoria` int(11) DEFAULT NULL,
  `lineainvestigacion` int(11) DEFAULT NULL,
  `sublineainvestigacion` int(11) DEFAULT NULL,
  `grupoinvestigacion` int(11) DEFAULT NULL,
  `universidad` int(11) DEFAULT NULL,
  `universidadfacultad` int(11) DEFAULT NULL,
  `universidadarea` int(11) DEFAULT NULL,
  PRIMARY KEY (`investigador_id`),
  KEY `investigadorcategoria` (`investigadorcategoria`),
  KEY `lineainvestigacion` (`lineainvestigacion`),
  KEY `sublineainvestigacion` (`sublineainvestigacion`),
  KEY `grupoinvestigacion` (`grupoinvestigacion`),
  KEY `universidad` (`universidad`),
  KEY `universidadfacultad` (`universidadfacultad`),
  KEY `universidadarea` (`universidadarea`),
  CONSTRAINT `investigador_ibfk_1` FOREIGN KEY (`investigadorcategoria`) REFERENCES `investigadorcategoria` (`investigadorcategoria_id`) ON DELETE SET NULL,
  CONSTRAINT `investigador_ibfk_2` FOREIGN KEY (`lineainvestigacion`) REFERENCES `lineainvestigacion` (`lineainvestigacion_id`) ON DELETE SET NULL,
  CONSTRAINT `investigador_ibfk_3` FOREIGN KEY (`sublineainvestigacion`) REFERENCES `sublineainvestigacion` (`sublineainvestigacion_id`) ON DELETE SET NULL,
  CONSTRAINT `investigador_ibfk_4` FOREIGN KEY (`grupoinvestigacion`) REFERENCES `grupoinvestigacion` (`grupoinvestigacion_id`) ON DELETE SET NULL,
  CONSTRAINT `investigador_ibfk_5` FOREIGN KEY (`universidad`) REFERENCES `universidad` (`universidad_id`) ON DELETE CASCADE,
  CONSTRAINT `investigador_ibfk_6` FOREIGN KEY (`universidadfacultad`) REFERENCES `universidadfacultad` (`universidadfacultad_id`) ON DELETE CASCADE,
  CONSTRAINT `investigador_ibfk_7` FOREIGN KEY (`universidadarea`) REFERENCES `universidadarea` (`universidadarea_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador`
--

LOCK TABLES `investigador` WRITE;
/*!40000 ALTER TABLE `investigador` DISABLE KEYS */;
INSERT INTO `investigador` VALUES (1,'2022-03-23','Federico ','La Rioja','Rosa Argañaraz','3804246712','hu.ce.ro@gmail.com','proyectodharma.com','NO','SI','Prueba de los interes','Prueba de las observaciones',2,3,4,2,2,3,1);
/*!40000 ALTER TABLE `investigador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigadorcategoria`
--

DROP TABLE IF EXISTS `investigadorcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigadorcategoria` (
  `investigadorcategoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`investigadorcategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigadorcategoria`
--

LOCK TABLES `investigadorcategoria` WRITE;
/*!40000 ALTER TABLE `investigadorcategoria` DISABLE KEYS */;
INSERT INTO `investigadorcategoria` VALUES (1,'CEMarin researcher'),(2,'Associated researcher');
/*!40000 ALTER TABLE `investigadorcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `submenu` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `submenu` (`submenu`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`submenu`) REFERENCES `submenu` (`submenu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Panel','Menú','/menu/panel',8),(2,'Agregar Ítems','Agregar Ítems','/menu/agregar',8);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemconfiguracionmenu`
--

DROP TABLE IF EXISTS `itemconfiguracionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemconfiguracionmenu` (
  `itemconfiguracionmenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `compuesto` int(11) DEFAULT NULL,
  `compositor` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemconfiguracionmenu_id`),
  KEY `compuesto` (`compuesto`),
  KEY `compositor` (`compositor`),
  CONSTRAINT `itemconfiguracionmenu_ibfk_1` FOREIGN KEY (`compuesto`) REFERENCES `configuracionmenu` (`configuracionmenu_id`) ON DELETE CASCADE,
  CONSTRAINT `itemconfiguracionmenu_ibfk_2` FOREIGN KEY (`compositor`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemconfiguracionmenu`
--

LOCK TABLES `itemconfiguracionmenu` WRITE;
/*!40000 ALTER TABLE `itemconfiguracionmenu` DISABLE KEYS */;
INSERT INTO `itemconfiguracionmenu` VALUES (153,1,1),(154,1,2);
/*!40000 ALTER TABLE `itemconfiguracionmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineainvestigacion`
--

DROP TABLE IF EXISTS `lineainvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineainvestigacion` (
  `lineainvestigacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `traduccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`lineainvestigacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineainvestigacion`
--

LOCK TABLES `lineainvestigacion` WRITE;
/*!40000 ALTER TABLE `lineainvestigacion` DISABLE KEYS */;
INSERT INTO `lineainvestigacion` VALUES (1,'Recursos marinos','Marine resources'),(2,'Recursos marinos; Bioprospección marina','Marine resources; Marine bioprospecting'),(3,'Datos, modelado, tecnología','Data, modeling and technology'),(4,'Cambio ambiental marino','Marine environmental change'),(5,'Océano y sociedad','Ocean and society'),(6,'Infraestructura, tecnología, modelos y datos','Infrastructure, technology, models and data'),(7,'Cambio ambiental marino; Océano y Sociedad','Marine environmental change; Ocean and society'),(8,'Cambio ambiental marino; Recursos marinos','Marine environmental change; Marine resources'),(9,'Recursos marinos; Datos, modelado y tecnología','Marine resources; Data, modeling and technology');
/*!40000 ALTER TABLE `lineainvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (4,'CONFIGURACIÓN','fa-cogs','#'),(11,'OTROS','fa-cogs','#'),(12,'INVESTIGADORES','fa-users','#'),(13,'UNIVERSIDADES','fa-university','#');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sublineainvestigacion`
--

DROP TABLE IF EXISTS `sublineainvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sublineainvestigacion` (
  `sublineainvestigacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `traduccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`sublineainvestigacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sublineainvestigacion`
--

LOCK TABLES `sublineainvestigacion` WRITE;
/*!40000 ALTER TABLE `sublineainvestigacion` DISABLE KEYS */;
INSERT INTO `sublineainvestigacion` VALUES (1,'Maricultura y pesca del siglo XXI','21st Century Mariculture and Fisheries'),(2,'Funciones del ecosistema marino','Marine ecosystem functions'),(3,'Cambio climático','Global Change Research'),(4,'Oceanografía','Oceanography'),(5,'Hidrología','Hidrology'),(6,'Soberanía y seguridad alimentaria','Food security and sovereignty'),(7,'Zoología y Maricultura','Zoology and Mariculture'),(8,'Evolución y biodiversidad de los organismos marinos','Evolution and Biodiversity Research of Marine Organisms'),(9,'Biotecnología marina','Marine biotechnology'),(10,' Ecogenómica marina','Marine ecogenomics'),(11,'Energías marinas renovables','Marine renewable energies'),(12,'Microbiología marina','Marine Microbiology'),(13,'Bioprospección marina','Marine bioprospection'),(14,'Océano, sociedad y derecho','Ocean, society and law'),(15,'Ictiología','Ichthyology'),(16,'Geología','Geology'),(17,'Evaluación ambiental','Environmental Assessment'),(18,'Habitats costeros','Coastal habitats'),(19,'Interacción Oceano-Armósfera-Terreno','Ocean-Athmosphere-Land Interaction'),(20,'Cambio ambiental en los ecosistemas marinos','Environmental change in marine ecosystems'),(21,'Modelado y simulación','Modeling and simulation'),(22,'Bioprospección y bioprocesos marinos','Bioprospection and bioprocesses'),(23,'Datos','Data'),(24,'Biotecnología','Biotechnology'),(25,'Cambios ambientales pasados','Past environmental changes'),(26,'Desarrollo urbano','Urban development'),(27,'Dinámica costera','Coastal Dynamics'),(28,'Economía institucional y del comportamiento','Institutional and Behavioural Economics'),(29,'Herencia cultural, Antropología del arte, producción musical por cultura','Music and society'),(30,'Bioquímica y Biología Molecular','Biochemistry and molecular biology'),(31,'Mapeo social, conflictos socioambientales y planificación territorial','Social mapping, socio-environmental conflicts and territorial planning'),(32,'Evolución molecular y Biogeografía','Molecular Evolution and Biogeography'),(33,'Estudios ecofisiológicos','Ecophysiological Studies'),(34,'Acuicultura (peces y diferentes phyla de invertebrados)','Aquaculture (fish and different phyla of invertebrates)'),(35,'Cambios ecosistémicos','Changes in key ecosystems'),(36,'Efectos del cambio ambiental en especies marinas clave','Effects on key species'),(37,'Microbiología Ambiental','Ambiental microbiology'),(38,'Ecología de estuarios y manglares','Ecology of Estuaries and Mangroves'),(39,'Ficología','Phycology'),(40,'Componente social e histórico','Social and Historical Component'),(41,'Biología evolutiva','Evolutionary Biology'),(42,'Ecología de los arrecifes de coral','Ecology of Coral Reefs'),(43,'Dinámica de la población de invertebrados marinos','Population Dynamics of Marine Invertebrates'),(44,'Biologia del RNA','RNA biology'),(45,'Estudio de estructura de ácidos nucléicos','Study of nucleic acid structure'),(46,'Análisis de transcriptoma','Transcriptome analysis'),(47,'Exploración con sísmica pasiva','Exploration with passive seismic'),(48,'Geofísica de la subsuperficie somera','Geophysics of the shallow subsurface'),(49,'Dinámica litosférica','Lithospheric dynamics'),(50,'Biología pesquera','Fisheries Biology'),(51,'Gestión de la zona costera','Coastal Zone Management'),(52,'Biología de poblaciones','Biology of Populations'),(53,'Ecología y biodiversidad de ecosistemas rocosos','Ecology and Biodiversity of Rocky Ecosystems'),(54,'Oceanografía biológica','Biological Oceanography'),(55,'Ecología animal','Animal Ecology'),(56,'Recursos naturales, restauración ecológica','Ecology'),(57,'Infraestructura, tecnología, modelos y datos','Infrastructure, technology, models and data'),(58,'Ecología Acuática','Aquatic Ecology'),(59,'Modelado Trófico','Trophic Modelling'),(60,'Gobernanza','Governance'),(61,'Servicios Ecosistémicos','Ecosystem services'),(62,'N/A','N/A');
/*!40000 ALTER TABLE `sublineainvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `menu` int(11) NOT NULL,
  PRIMARY KEY (`submenu_id`),
  KEY `submenu` (`menu`),
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
INSERT INTO `submenu` VALUES (8,'Menú','fa-bars','#','',4),(9,'Usuarios','fa-users','/usuario/agregar','',4),(32,'Configuración','fa-cog','/configuracion/panel','',4),(33,'Panel','fa-cube','/investigador/panel','',12),(34,'Agregar','fa-plus-circle','/investigador/agregar','',12),(35,'Línea de Investigación','fa-folder','/lineainvestigacion/panel','',12),(36,'Sublínea de Investigación','fa-folder','/sublineainvestigacion/panel','',12),(37,'Grupo de Investigación','fa-folder','/grupoinvestigacion/panel','',12),(38,'Categoría Investigador','fa-folder','/investigadorcategoria/panel','',12),(39,'Panel','fa-cube','/universidad/panel','',13),(40,'Facultad','fa-folder','/universidadfacultad/panel','',13),(41,'Área','fa-folder','/universidadarea/panel','',13);
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submenuconfiguracionmenu`
--

DROP TABLE IF EXISTS `submenuconfiguracionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenuconfiguracionmenu` (
  `submenuconfiguracionmenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `compuesto` int(11) DEFAULT NULL,
  `compositor` int(11) DEFAULT NULL,
  PRIMARY KEY (`submenuconfiguracionmenu_id`),
  KEY `compuesto` (`compuesto`),
  KEY `compositor` (`compositor`),
  CONSTRAINT `submenuconfiguracionmenu_ibfk_1` FOREIGN KEY (`compuesto`) REFERENCES `configuracionmenu` (`configuracionmenu_id`) ON DELETE CASCADE,
  CONSTRAINT `submenuconfiguracionmenu_ibfk_2` FOREIGN KEY (`compositor`) REFERENCES `submenu` (`submenu_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10939 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenuconfiguracionmenu`
--

LOCK TABLES `submenuconfiguracionmenu` WRITE;
/*!40000 ALTER TABLE `submenuconfiguracionmenu` DISABLE KEYS */;
INSERT INTO `submenuconfiguracionmenu` VALUES (10797,2,32),(10798,2,9),(10927,1,33),(10928,1,34),(10929,1,35),(10930,1,36),(10931,1,37),(10932,1,38),(10933,1,39),(10934,1,40),(10935,1,41),(10936,1,32),(10937,1,8),(10938,1,9);
/*!40000 ALTER TABLE `submenuconfiguracionmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidad`
--

DROP TABLE IF EXISTS `universidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidad` (
  `universidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`universidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidad`
--

LOCK TABLES `universidad` WRITE;
/*!40000 ALTER TABLE `universidad` DISABLE KEYS */;
INSERT INTO `universidad` VALUES (1,'Universidad de Antioquia'),(2,'Universidad Nacional de Colombia'),(3,'University of Bremen - Leibniz Center for Tropical Marine Research (ZMT)'),(4,'Justus-Liebig Universität Gießen'),(5,'Universidad CES'),(6,'Universidad de Bogotá Jorge Tadeo Lozano'),(7,'Universidad de la Amazonia'),(8,'Universidad de los Andes'),(9,'Universidad del Valle'),(10,'Corales de Paz'),(11,'Pontificia Universidad Javeriana-Cali'),(12,'Instituto Mediterráneo de estudios Avanzados - IMEDEA'),(13,'University of Bremen - Center for Marine Environmental Sciences (MARUM)'),(14,'N/A'),(15,'Pontificia Universidad Bolivariana');
/*!40000 ALTER TABLE `universidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidadarea`
--

DROP TABLE IF EXISTS `universidadarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidadarea` (
  `universidadarea_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`universidadarea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidadarea`
--

LOCK TABLES `universidadarea` WRITE;
/*!40000 ALTER TABLE `universidadarea` DISABLE KEYS */;
INSERT INTO `universidadarea` VALUES (1,'Ingeniería'),(2,'Ciencias exactas'),(3,'Ciencias Sociales y Humanas'),(4,'Ciencias medicas'),(5,'Departamento de Geografía'),(6,'Observatorio Astronómico Nacional de Colombia'),(7,'Departamento de Farmacia'),(8,'Ecología'),(9,'Humanidades'),(10,'Oceanografía'),(11,'N/A');
/*!40000 ALTER TABLE `universidadarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidadfacultad`
--

DROP TABLE IF EXISTS `universidadfacultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidadfacultad` (
  `universidadfacultad_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`universidadfacultad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidadfacultad`
--

LOCK TABLES `universidadfacultad` WRITE;
/*!40000 ALTER TABLE `universidadfacultad` DISABLE KEYS */;
INSERT INTO `universidadfacultad` VALUES (1,'Facultad de Minas'),(2,'Departamento de Fitopatología'),(3,'Departamento de Ecologia y Sistematica Animal'),(4,'Instituto de Biotecnología'),(5,'Facultad de Ingenieria, escuela Ambiental'),(6,'Ciencias Marinas'),(7,'Departamento de Ingenieria Industrial'),(8,'Departamento de Ingeniería Sanitaria'),(9,'Instituto de Biologia'),(10,'Ciencias del mar'),(11,'Facultad de ciencias, programa de biología'),(12,'Facultad de ciencias exactas y naturales'),(13,'Corporación Académica Ambiental, Biología'),(14,'Corporación Académica Ambiental'),(15,'Departamento de Antropologia'),(16,'Faculta de ciencias humanas y sociales'),(17,'Facultad de Ingeniería'),(18,'Departamento de Ciencias Biológicas y Ambientales'),(19,'Facultad de Ciencias Naturales e Ingenierías'),(20,'Departamento de Ciencias Biológicas'),(21,'Departamento de Física'),(22,'Facultad de Economía'),(23,'Departamento de Ingeniería Eléctrica y Electrónica'),(24,'Departamento de Química'),(25,'Departamento de Ingeniería Química'),(26,'Departamento de Ingeniería Mecánica'),(27,'Departamento de Ingeniería de Sistemas y Computación'),(28,'Departamento de Geociencias'),(29,'Facultad de Administración'),(30,'Departamento de Biología'),(31,'Departamento de Historia'),(32,'Departamento de Ciencias Fisiológicas'),(33,'Facultad de Humanidades'),(34,'Departamento de Geociencias y Medio Ambiente'),(35,'sede Caribe, Ciencias'),(36,'Facultad de ciencias, Palmira'),(37,'Facultad de ingenieria , palmira'),(38,'Departamento de Ciencias Forestales'),(39,'Facultad de Ciencias Humanas'),(40,'Facultad de medicina veterinaria y zootecnia'),(41,'sede Caribe, Ciencias Sociales'),(42,'Facultad de leyes, política y ciencias sociales'),(43,'Facultad de Arquitectura'),(44,'Departamento de Matemáticas y estadistica'),(45,'Instituto de estudios regionales'),(46,'Humanidades y Ciencias Sociales'),(47,'Consulado Español de Investigación - CSIC'),(48,'Dirección académica, Universidad de Colombia, sede La Paz'),(49,'Facultad de Ciencias'),(50,'Departamento de Ingeniería'),(51,'N/A');
/*!40000 ALTER TABLE `universidadfacultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` int(1) DEFAULT NULL,
  `actualiza_contrasena` int(11) NOT NULL DEFAULT '0',
  `usuariodetalle` int(11) DEFAULT NULL,
  `configuracionmenu` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `usuariodetalle` (`usuariodetalle`),
  KEY `configuracionmenu` (`configuracionmenu`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuariodetalle`) REFERENCES `usuariodetalle` (`usuariodetalle_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin',3,0,1,2),(2,'desarrollador',9,0,2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariodetalle`
--

DROP TABLE IF EXISTS `usuariodetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariodetalle` (
  `usuariodetalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correoelectronico` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`usuariodetalle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariodetalle`
--

LOCK TABLES `usuariodetalle` WRITE;
/*!40000 ALTER TABLE `usuariodetalle` DISABLE KEYS */;
INSERT INTO `usuariodetalle` VALUES (1,'Admin','admin','admin@admin.com','4850fc35306cb8590e00564f5462e1bb'),(2,'Desarrollador','Admin','infozamba@gmail.com','7ea60ee02f2b59bc8841b2b481c11d68'),(37,'','','','038ba87ded998d73d15f9cfe8d9801c5');
/*!40000 ALTER TABLE `usuariodetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-23 22:15:48
