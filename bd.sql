-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ccd
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add custom user',6,'add_customuser'),(22,'Can change custom user',6,'change_customuser'),(23,'Can delete custom user',6,'delete_customuser'),(24,'Can view custom user',6,'view_customuser'),(25,'Can add articulo',7,'add_articulo'),(26,'Can change articulo',7,'change_articulo'),(27,'Can delete articulo',7,'delete_articulo'),(28,'Can view articulo',7,'view_articulo'),(29,'Can add pedido articulo',8,'add_pedidoarticulo'),(30,'Can change pedido articulo',8,'change_pedidoarticulo'),(31,'Can delete pedido articulo',8,'delete_pedidoarticulo'),(32,'Can view pedido articulo',8,'view_pedidoarticulo'),(33,'Can add pedido',9,'add_pedido'),(34,'Can change pedido',9,'change_pedido'),(35,'Can delete pedido',9,'delete_pedido'),(36,'Can view pedido',9,'view_pedido'),(37,'Can add devolucion',10,'add_devolucion'),(38,'Can change devolucion',10,'change_devolucion'),(39,'Can delete devolucion',10,'delete_devolucion'),(40,'Can view devolucion',10,'view_devolucion'),(41,'Can add productos',11,'add_productos'),(42,'Can change productos',11,'change_productos'),(43,'Can delete productos',11,'delete_productos'),(44,'Can view productos',11,'view_productos'),(45,'Can add pedido',12,'add_pedido'),(46,'Can change pedido',12,'change_pedido'),(47,'Can delete pedido',12,'delete_pedido'),(48,'Can view pedido',12,'view_pedido'),(49,'Can add pedido producto',13,'add_pedidoproducto'),(50,'Can change pedido producto',13,'change_pedidoproducto'),(51,'Can delete pedido producto',13,'delete_pedidoproducto'),(52,'Can view pedido producto',13,'view_pedidoproducto'),(53,'Can add devolucion caf',14,'add_devolucioncaf'),(54,'Can change devolucion caf',14,'change_devolucioncaf'),(55,'Can delete devolucion caf',14,'delete_devolucioncaf'),(56,'Can view devolucion caf',14,'view_devolucioncaf'),(57,'Can add pedido cde',15,'add_pedidocde'),(58,'Can change pedido cde',15,'change_pedidocde'),(59,'Can delete pedido cde',15,'delete_pedidocde'),(60,'Can view pedido cde',15,'view_pedidocde'),(61,'Can add pedido producto cde',16,'add_pedidoproductocde'),(62,'Can change pedido producto cde',16,'change_pedidoproductocde'),(63,'Can delete pedido producto cde',16,'delete_pedidoproductocde'),(64,'Can view pedido producto cde',16,'view_pedidoproductocde'),(65,'Can add devolucion cde',17,'add_devolucioncde'),(66,'Can change devolucion cde',17,'change_devolucioncde'),(67,'Can delete devolucion cde',17,'delete_devolucioncde'),(68,'Can view devolucion cde',17,'view_devolucioncde'),(69,'Can add backup',18,'add_backup'),(70,'Can change backup',18,'change_backup'),(71,'Can delete backup',18,'delete_backup'),(72,'Can view backup',18,'view_backup');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_backup`
--

DROP TABLE IF EXISTS `backup_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_backup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `tamano` varchar(100) NOT NULL,
  `modelos_incluidos` longtext NOT NULL,
  `creado_por_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backup_backup_creado_por_id_217c3075_fk_libreria_customuser_id` (`creado_por_id`),
  CONSTRAINT `backup_backup_creado_por_id_217c3075_fk_libreria_customuser_id` FOREIGN KEY (`creado_por_id`) REFERENCES `libreria_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_backup`
--

LOCK TABLES `backup_backup` WRITE;
/*!40000 ALTER TABLE `backup_backup` DISABLE KEYS */;
INSERT INTO `backup_backup` VALUES (2,'Backup123','backups/backup_db_20250727_162529.json','2025-07-27','0.02 MB','libreria.CustomUser, papeleria.Articulo, papeleria.Pedido, papeleria.PedidoArticulo, cafeteria.Productos, cafeteria.Pedido, cafeteria.PedidoProducto, cde.PedidoCde, cde.PedidoProductoCde (con relaciones)',1);
/*!40000 ALTER TABLE `backup_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafeteria_devolucioncaf`
--

DROP TABLE IF EXISTS `cafeteria_devolucioncaf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafeteria_devolucioncaf` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad_devuelta` int unsigned NOT NULL,
  `motivo` varchar(40) NOT NULL,
  `fecha_devolucion` datetime(6) NOT NULL,
  `devuelto_por_id` bigint NOT NULL,
  `pedido_producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cafeteria_devolucion_devuelto_por_id_3d494b51_fk_libreria_` (`devuelto_por_id`),
  KEY `cafeteria_devolucion_pedido_producto_id_8bb794b9_fk_cafeteria` (`pedido_producto_id`),
  CONSTRAINT `cafeteria_devolucion_devuelto_por_id_3d494b51_fk_libreria_` FOREIGN KEY (`devuelto_por_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `cafeteria_devolucion_pedido_producto_id_8bb794b9_fk_cafeteria` FOREIGN KEY (`pedido_producto_id`) REFERENCES `cafeteria_pedidoproducto` (`id`),
  CONSTRAINT `cafeteria_devolucioncaf_chk_1` CHECK ((`cantidad_devuelta` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_devolucioncaf`
--

LOCK TABLES `cafeteria_devolucioncaf` WRITE;
/*!40000 ALTER TABLE `cafeteria_devolucioncaf` DISABLE KEYS */;
/*!40000 ALTER TABLE `cafeteria_devolucioncaf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafeteria_pedido`
--

DROP TABLE IF EXISTS `cafeteria_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafeteria_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `registrado_por_id` bigint NOT NULL,
  `fecha_estado` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cafeteria_pedido_registrado_por_id_e4db4d2b_fk_libreria_` (`registrado_por_id`),
  CONSTRAINT `cafeteria_pedido_registrado_por_id_e4db4d2b_fk_libreria_` FOREIGN KEY (`registrado_por_id`) REFERENCES `libreria_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_pedido`
--

LOCK TABLES `cafeteria_pedido` WRITE;
/*!40000 ALTER TABLE `cafeteria_pedido` DISABLE KEYS */;
INSERT INTO `cafeteria_pedido` VALUES (1,'2025-07-26 23:17:02.415803','Confirmado',1,'2025-07-26 23:17:02.416800'),(2,'2025-07-26 23:18:18.510966','Confirmado',1,'2025-07-26 23:18:18.512941'),(3,'2025-07-26 23:18:58.281352','Confirmado',1,'2025-07-26 23:18:58.285352'),(4,'2025-07-27 21:54:07.680245','Cancelado',6,'2025-07-27 21:54:59.557373'),(5,'2025-07-27 21:54:40.336658','Confirmado',1,'2025-07-27 21:54:40.338657');
/*!40000 ALTER TABLE `cafeteria_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafeteria_pedidoproducto`
--

DROP TABLE IF EXISTS `cafeteria_pedidoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafeteria_pedidoproducto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `producto_id` bigint NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cafeteria_pedidoprod_producto_id_53398573_fk_cafeteria` (`producto_id`),
  KEY `cafeteria_pedidoprod_pedido_id_cf5da2ef_fk_cafeteria` (`pedido_id`),
  CONSTRAINT `cafeteria_pedidoprod_pedido_id_cf5da2ef_fk_cafeteria` FOREIGN KEY (`pedido_id`) REFERENCES `cafeteria_pedido` (`id`),
  CONSTRAINT `cafeteria_pedidoprod_producto_id_53398573_fk_cafeteria` FOREIGN KEY (`producto_id`) REFERENCES `cafeteria_productos` (`id`),
  CONSTRAINT `cafeteria_pedidoproducto_chk_1` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_pedidoproducto`
--

LOCK TABLES `cafeteria_pedidoproducto` WRITE;
/*!40000 ALTER TABLE `cafeteria_pedidoproducto` DISABLE KEYS */;
INSERT INTO `cafeteria_pedidoproducto` VALUES (1,1,'Administrativa',1,'cafeteria',1),(2,1,'Administrativa',1,'cafeteria',2),(3,50,'Administrativa',2,'cafeteria',2),(4,1,'Administrativa',2,'cafeteria',3),(5,1,'Administrativa',4,'cafeteria',3),(6,40,'Financiera',3,'cde',4),(7,40,'Administrativa',3,'ccde',5);
/*!40000 ALTER TABLE `cafeteria_pedidoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafeteria_productos`
--

DROP TABLE IF EXISTS `cafeteria_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafeteria_productos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precio` bigint unsigned NOT NULL,
  `cantidad` int unsigned NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  `unidad_medida` varchar(15) NOT NULL,
  `registrado_por_id` bigint NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cafeteria_productos_registrado_por_id_26864eb8_fk_libreria_` (`registrado_por_id`),
  CONSTRAINT `cafeteria_productos_registrado_por_id_26864eb8_fk_libreria_` FOREIGN KEY (`registrado_por_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `cafeteria_productos_chk_1` CHECK ((`precio` >= 0)),
  CONSTRAINT `cafeteria_productos_chk_2` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_productos`
--

LOCK TABLES `cafeteria_productos` WRITE;
/*!40000 ALTER TABLE `cafeteria_productos` DISABLE KEYS */;
INSERT INTO `cafeteria_productos` VALUES (1,'Café','Tostao',2000,9,'Javeriana','2025-07-26','Kilogramos',1,'No Hay'),(2,'Vasos','Vasos Ltda',6000,488,'Javeriana','2025-07-26','Onzas',1,'Paquete X12'),(3,'Palillos Mezcladores','Palillos Ltda',5000,0,'Javeriana','2025-07-26','Unidad',1,'Paquete X 50'),(4,'Leche En Polvo','Alqueria',1000000000,0,'Javeriana','2025-07-26','Kilogramos',1,'Paquete'),(5,'Toallas','Toallas Ltda',5000,45,'Javeriana','2025-07-26','Unidad',1,'Unidad');
/*!40000 ALTER TABLE `cafeteria_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cde_devolucioncde`
--

DROP TABLE IF EXISTS `cde_devolucioncde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cde_devolucioncde` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad_devuelta` int unsigned NOT NULL,
  `motivo` varchar(40) NOT NULL,
  `fecha_devolucion` datetime(6) NOT NULL,
  `devuelto_por_id` bigint NOT NULL,
  `pedido_producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cde_devolucioncde_devuelto_por_id_7fc311ea_fk_libreria_` (`devuelto_por_id`),
  KEY `cde_devolucioncde_pedido_producto_id_ce4d5009_fk_cde_pedid` (`pedido_producto_id`),
  CONSTRAINT `cde_devolucioncde_devuelto_por_id_7fc311ea_fk_libreria_` FOREIGN KEY (`devuelto_por_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `cde_devolucioncde_pedido_producto_id_ce4d5009_fk_cde_pedid` FOREIGN KEY (`pedido_producto_id`) REFERENCES `cde_pedidoproductocde` (`id`),
  CONSTRAINT `cde_devolucioncde_chk_1` CHECK ((`cantidad_devuelta` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cde_devolucioncde`
--

LOCK TABLES `cde_devolucioncde` WRITE;
/*!40000 ALTER TABLE `cde_devolucioncde` DISABLE KEYS */;
/*!40000 ALTER TABLE `cde_devolucioncde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cde_pedidocde`
--

DROP TABLE IF EXISTS `cde_pedidocde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cde_pedidocde` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `registrado_por_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cde_pedidocde_registrado_por_id_dba5a62f_fk_libreria_` (`registrado_por_id`),
  CONSTRAINT `cde_pedidocde_registrado_por_id_dba5a62f_fk_libreria_` FOREIGN KEY (`registrado_por_id`) REFERENCES `libreria_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cde_pedidocde`
--

LOCK TABLES `cde_pedidocde` WRITE;
/*!40000 ALTER TABLE `cde_pedidocde` DISABLE KEYS */;
INSERT INTO `cde_pedidocde` VALUES (1,'2025-07-26 23:20:13.145633','Confirmado',1),(2,'2025-07-26 23:24:49.926432','Confirmado',1),(3,'2025-07-27 21:56:34.553059','Cancelado',6),(4,'2025-07-27 21:57:04.428691','Confirmado',1);
/*!40000 ALTER TABLE `cde_pedidocde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cde_pedidoproductocde`
--

DROP TABLE IF EXISTS `cde_pedidoproductocde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cde_pedidoproductocde` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `pedido_id` bigint NOT NULL,
  `producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cde_pedidoproductocd_producto_id_650e0030_fk_cafeteria` (`producto_id`),
  KEY `cde_pedidoproductocde_pedido_id_edac6f17_fk_cde_pedidocde_id` (`pedido_id`),
  CONSTRAINT `cde_pedidoproductocd_producto_id_650e0030_fk_cafeteria` FOREIGN KEY (`producto_id`) REFERENCES `cafeteria_productos` (`id`),
  CONSTRAINT `cde_pedidoproductocde_pedido_id_edac6f17_fk_cde_pedidocde_id` FOREIGN KEY (`pedido_id`) REFERENCES `cde_pedidocde` (`id`),
  CONSTRAINT `cde_pedidoproductocde_chk_1` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cde_pedidoproductocde`
--

LOCK TABLES `cde_pedidoproductocde` WRITE;
/*!40000 ALTER TABLE `cde_pedidoproductocde` DISABLE KEYS */;
INSERT INTO `cde_pedidoproductocde` VALUES (1,1,'Administrativa','competitividad',1,1),(2,15,'Administrativa','competitividad',1,2),(3,15,'Administrativa','competitividad',1,3),(4,1,'Administrativa','cde',2,4),(5,52,'Financiera','ccd',3,4),(6,52,'Administrativa','ccd',4,4);
/*!40000 ALTER TABLE `cde_pedidoproductocde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_libreria_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_libreria_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(18,'backup','backup'),(14,'cafeteria','devolucioncaf'),(12,'cafeteria','pedido'),(13,'cafeteria','pedidoproducto'),(11,'cafeteria','productos'),(17,'cde','devolucioncde'),(15,'cde','pedidocde'),(16,'cde','pedidoproductocde'),(4,'contenttypes','contenttype'),(6,'libreria','customuser'),(7,'papeleria','articulo'),(10,'papeleria','devolucion'),(9,'papeleria','pedido'),(8,'papeleria','pedidoarticulo'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-26 22:25:40.906985'),(2,'contenttypes','0002_remove_content_type_name','2025-07-26 22:25:41.047466'),(3,'auth','0001_initial','2025-07-26 22:25:41.633399'),(4,'auth','0002_alter_permission_name_max_length','2025-07-26 22:25:41.773854'),(5,'auth','0003_alter_user_email_max_length','2025-07-26 22:25:41.784752'),(6,'auth','0004_alter_user_username_opts','2025-07-26 22:25:41.795727'),(7,'auth','0005_alter_user_last_login_null','2025-07-26 22:25:41.807927'),(8,'auth','0006_require_contenttypes_0002','2025-07-26 22:25:41.816711'),(9,'auth','0007_alter_validators_add_error_messages','2025-07-26 22:25:41.826997'),(10,'auth','0008_alter_user_username_max_length','2025-07-26 22:25:41.839873'),(11,'auth','0009_alter_user_last_name_max_length','2025-07-26 22:25:41.858025'),(12,'auth','0010_alter_group_name_max_length','2025-07-26 22:25:41.892909'),(13,'auth','0011_update_proxy_permissions','2025-07-26 22:25:41.908169'),(14,'auth','0012_alter_user_first_name_max_length','2025-07-26 22:25:41.922618'),(15,'libreria','0001_initial','2025-07-26 22:25:42.640981'),(16,'admin','0001_initial','2025-07-26 22:25:42.979618'),(17,'admin','0002_logentry_remove_auto_add','2025-07-26 22:25:42.997123'),(18,'admin','0003_logentry_add_action_flag_choices','2025-07-26 22:25:43.021874'),(19,'backup','0001_initial','2025-07-26 22:25:43.093427'),(20,'backup','0002_backup_creado_por_alter_backup_modelos_incluidos_and_more','2025-07-26 22:25:43.390304'),(21,'backup','0003_alter_backup_fecha_creacion','2025-07-26 22:25:43.523497'),(22,'cafeteria','0001_initial','2025-07-26 22:25:43.736429'),(23,'cafeteria','0002_remove_productos_observacion_productos_presentacion','2025-07-26 22:25:43.851991'),(24,'cafeteria','0003_alter_productos_unidad_medida_pedido_pedidoproducto','2025-07-26 22:25:44.242639'),(25,'cafeteria','0004_pedidoproducto_lugar','2025-07-26 22:25:44.309116'),(26,'cafeteria','0005_remove_pedidoproducto_tipo_pedidoproducto_pedido','2025-07-26 22:25:44.522958'),(27,'cafeteria','0006_alter_productos_nombre','2025-07-26 22:25:44.628494'),(28,'cafeteria','0007_alter_pedido_registrado_por_and_more','2025-07-26 22:25:45.819738'),(29,'cafeteria','0008_pedido_fecha_estado','2025-07-26 22:25:45.905686'),(30,'cafeteria','0009_alter_pedidoproducto_producto','2025-07-26 22:25:45.933261'),(31,'cafeteria','0010_alter_pedido_fecha_pedido','2025-07-26 22:25:45.970655'),(32,'cafeteria','0011_devolucioncaf','2025-07-26 22:25:46.328739'),(33,'cafeteria','0012_alter_devolucioncaf_motivo','2025-07-26 22:25:46.487837'),(34,'cafeteria','0013_alter_productos_fecha_registro','2025-07-26 22:25:46.505784'),(35,'cde','0001_initial','2025-07-26 22:25:47.085208'),(36,'cde','0002_alter_pedidocde_registrado_por_and_more','2025-07-26 22:25:47.948775'),(37,'cde','0003_pedidocde_fecha_estado','2025-07-26 22:25:48.008123'),(38,'cde','0004_alter_pedidoproductocde_producto','2025-07-26 22:25:48.040202'),(39,'cde','0005_remove_pedidocde_fecha_estado_and_more','2025-07-26 22:25:48.108064'),(40,'cde','0006_devolucioncde','2025-07-26 22:25:48.465754'),(41,'cde','0007_alter_devolucioncde_motivo','2025-07-26 22:25:48.701494'),(42,'libreria','0002_alter_customuser_cargo','2025-07-26 22:25:48.896131'),(43,'libreria','0003_customuser_area','2025-07-26 22:25:49.172526'),(44,'libreria','0004_customuser_fecha_registro','2025-07-26 22:25:49.400766'),(45,'libreria','0005_remove_customuser_module_customuser_acceso_caf_and_more','2025-07-26 22:25:49.975579'),(46,'libreria','0006_alter_customuser_area','2025-07-26 22:25:50.010175'),(47,'libreria','0007_alter_customuser_username','2025-07-26 22:25:50.225473'),(48,'libreria','0008_alter_customuser_fecha_registro','2025-07-26 22:25:50.251088'),(49,'libreria','0009_alter_customuser_cargo_alter_customuser_username','2025-07-26 22:25:50.626194'),(50,'libreria','0010_customuser_session_key','2025-07-26 22:25:50.730963'),(51,'libreria','0011_customuser_session_token','2025-07-26 22:25:50.836436'),(52,'papeleria','0001_initial','2025-07-26 22:25:51.163937'),(53,'papeleria','0002_alter_articulo_tipo','2025-07-26 22:25:51.294236'),(54,'papeleria','0003_pedido_articulo','2025-07-26 22:25:51.761379'),(55,'papeleria','0004_rename_pedido_articulo_pedidoarticulo','2025-07-26 22:25:51.840381'),(56,'papeleria','0005_alter_pedidoarticulo_tipo','2025-07-26 22:25:52.249226'),(57,'papeleria','0006_alter_pedidoarticulo_articulo_and_more','2025-07-26 22:25:52.716293'),(58,'papeleria','0007_alter_pedidoarticulo_tipo','2025-07-26 22:25:52.973788'),(59,'papeleria','0008_remove_pedidoarticulo_cliente_and_more','2025-07-26 22:25:53.792960'),(60,'papeleria','0009_alter_articulo_observacion','2025-07-26 22:25:53.816887'),(61,'papeleria','0010_articulo_proveedor_pedidoarticulo_area','2025-07-26 22:25:54.053322'),(62,'papeleria','0011_alter_pedido_estado','2025-07-26 22:25:54.073858'),(63,'papeleria','0012_alter_pedidoarticulo_tipo','2025-07-26 22:25:54.492953'),(64,'papeleria','0013_alter_pedidoarticulo_tipo','2025-07-26 22:25:54.743085'),(65,'papeleria','0014_alter_articulo_nombre','2025-07-26 22:25:54.824942'),(66,'papeleria','0015_alter_articulo_marca_alter_articulo_nombre_and_more','2025-07-26 22:25:55.475496'),(67,'papeleria','0016_alter_articulo_marca_alter_articulo_nombre_and_more','2025-07-26 22:25:55.791126'),(68,'papeleria','0017_alter_articulo_cantidad','2025-07-26 22:25:55.819629'),(69,'papeleria','0018_alter_articulo_cantidad','2025-07-26 22:25:55.842738'),(70,'papeleria','0019_alter_articulo_cantidad_alter_articulo_observacion','2025-07-26 22:25:55.909530'),(71,'papeleria','0020_pedido_fecha_estado','2025-07-26 22:25:55.969886'),(72,'papeleria','0021_alter_pedido_fecha_pedido_devolucion','2025-07-26 22:25:56.297468'),(73,'papeleria','0022_alter_devolucion_razon','2025-07-26 22:25:56.452214'),(74,'papeleria','0023_alter_devolucion_razon','2025-07-26 22:25:56.485356'),(75,'papeleria','0024_alter_articulo_fecha_registro','2025-07-26 22:25:56.512334'),(76,'sessions','0001_initial','2025-07-26 22:25:56.594208');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ghl3lagm31zp8w8l17zyajuq13kwqwfr','.eJxVjsGuwiAQRf-FtTUwUyi8pYnfQaYwtcQqCdCV8d_lPV34tufOuXcewtPeVr9XLj5F8SOUOHyzmcKV77_BlubCJdHxg-rxfKO0nT4H_6yV6toVcEEqhdNEaGGWBhUZo41hZSfUBBEcytnaJSDKqDsBQ5M1oANbCdhLK9ea8t233Fd65aKdA3Q0LMHKYWSFA7HkYRyDJQlu0Qxd-_tiy5cLR5-618rOB0Ebl0a-thyu_pZrKxTpHT5fhb9VHw:1ugCWU:Q1aqEOCVu9McrTJZAN8nyxwSolhwdby8Rl9TN5Sdbgk','2025-07-28 01:29:26.602027');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreria_customuser`
--

DROP TABLE IF EXISTS `libreria_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libreria_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(254) NOT NULL,
  `role` varchar(13) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `area` varchar(30) NOT NULL,
  `fecha_registro` date NOT NULL,
  `acceso_caf` tinyint(1) NOT NULL,
  `acceso_cde` tinyint(1) NOT NULL,
  `acceso_pap` tinyint(1) NOT NULL,
  `session_key` varchar(40) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreria_customuser`
--

LOCK TABLES `libreria_customuser` WRITE;
/*!40000 ALTER TABLE `libreria_customuser` DISABLE KEYS */;
INSERT INTO `libreria_customuser` VALUES (1,'pbkdf2_sha256$870000$CE6EFjoB4eWcRXZcSqQ0zr$LG5QTXBMBktaLpdKBOgdPyRru+nphNwwpKigqd8Utqg=','2025-07-28 01:18:47.033803',0,'Daniel Sanchez','jonnathansz73@gmail.com','Administrador','Aprendiz Sena',1,0,'Administrativa','2025-07-26',1,1,1,'ghl3lagm31zp8w8l17zyajuq13kwqwfr','f599239a-fc80-4e13-ae0e-44c8a029f5e2'),(2,'pbkdf2_sha256$870000$k6WkSbmrKJJHM40MCQwOip$cBgWH2vRuKixdv64xxILeACVarQe1jpHFWd9HlX+RX4=','2025-07-27 21:26:49.886356',0,'Carlos Andres Orozco','carlos@gmail.com','Empleado','Auxiliar En Gestion Documental',1,0,'Registros públicos','2025-07-26',1,1,1,'swerhyevam437drm55h69bp1ysibq68m','f38c1a0c-fe4e-4a54-9c95-87cd7a770aa0'),(3,'pbkdf2_sha256$870000$1ehYrTA8VhN1fQ1WsWD3T9$X02o5DkuC99YU1t6M9T7PO6rcHWHnIrSTSSvqNfdS/c=','2025-07-27 21:30:41.265084',0,'Viviana Rodriguez','viviana@gmail.com','Empleado','Asistente En Gestion Documental',1,0,'Gestión empresarial','2025-07-26',1,1,1,'5qejf8dv7pgwrmxf3gjb2vlbhk46m7i7','158e91b0-3aff-4958-88ed-f8a31c0a74a2'),(4,'pbkdf2_sha256$870000$Rfhv4fdTqGyJgPS0VLS6C2$V9Us2n9lf/ZkiHSJFE+TOs+HpEM+mjzw2xpCERxUaq4=','2025-07-27 21:31:47.075489',0,'Sonia Parra','sonia@gmail.com','Empleado','Supernumeraria De Gestion Documental',1,0,'Competitividad','2025-07-26',1,1,1,'vhronoe7rs6dlm7mlbxze9cjkll4mlmc','616c1145-39bf-43be-bc12-182bcc66a228'),(5,'pbkdf2_sha256$870000$UOmB5BVTl5YU36QiYDDJER$lqlEb8FqottfnoC0SZYJTTzeNBagQ2/vYHIWWRWUDaA=','2025-07-27 21:32:49.957407',0,'Valentina Casallas','valentinacasallas@gmail.com','Empleado','Auxiliar En Gestion Documental',1,0,'Presidencia','2025-07-26',1,1,1,'hj42eb6xsaqpmn29qasiyu1cql28mmmy','ec3ef167-36de-45db-aa4b-c2c34de1b72f'),(6,'pbkdf2_sha256$870000$bosMCdfF70UmQVoYyD6UwQ$C5+LJ3HTg3tR9FYgdEr053R+tQ4IChuQQc7cPRqL3fc=','2025-07-28 01:18:20.756319',0,'Diego Ortiz','diego@gmail.com','Empleado','Aprendiz Sena',1,0,'Financiera','2025-07-26',1,1,1,'3uf34pa1sy1wx31slu02pjkz227ymdz0','e6592f6d-dc02-44f5-b2cd-62f772383897'),(7,'pbkdf2_sha256$870000$SwCaDnGkBl6zaDRZdCD76U$D6Ic1FGVSrtqBvoEfY2FwGmL/caG9dKL27FR8WVmF78=',NULL,0,'Freddy Monsalve','freddymonsalvegestionempresarial@gmail.com','Empleado','Asistente En Gestión Empresarial',1,0,'Gestión empresarial','2025-07-27',0,0,0,NULL,NULL),(8,'pbkdf2_sha256$870000$Sv9lumvwnwdlkvdHNQ7vqa$ki5FvS12CSkN9n6C0zxOC6Rs8wg2Pa56zcRCx2oCxhM=',NULL,0,'Alejandro Moreno','alejandromorenorues@gmail.com','Empleado','Abogado Jurídico',1,0,'Registros públicos','2025-07-27',0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `libreria_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreria_customuser_groups`
--

DROP TABLE IF EXISTS `libreria_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libreria_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libreria_customuser_groups_customuser_id_group_id_00351eff_uniq` (`customuser_id`,`group_id`),
  KEY `libreria_customuser_groups_group_id_071f7f88_fk_auth_group_id` (`group_id`),
  CONSTRAINT `libreria_customuser__customuser_id_3af84ce6_fk_libreria_` FOREIGN KEY (`customuser_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `libreria_customuser_groups_group_id_071f7f88_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreria_customuser_groups`
--

LOCK TABLES `libreria_customuser_groups` WRITE;
/*!40000 ALTER TABLE `libreria_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `libreria_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreria_customuser_user_permissions`
--

DROP TABLE IF EXISTS `libreria_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libreria_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libreria_customuser_user_customuser_id_permission_e5838e6e_uniq` (`customuser_id`,`permission_id`),
  KEY `libreria_customuser__permission_id_1ff0bbce_fk_auth_perm` (`permission_id`),
  CONSTRAINT `libreria_customuser__customuser_id_4221e7cc_fk_libreria_` FOREIGN KEY (`customuser_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `libreria_customuser__permission_id_1ff0bbce_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreria_customuser_user_permissions`
--

LOCK TABLES `libreria_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `libreria_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `libreria_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papeleria_articulo`
--

DROP TABLE IF EXISTS `papeleria_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papeleria_articulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `precio` bigint unsigned NOT NULL,
  `cantidad` int unsigned NOT NULL,
  `fecha_registro` date NOT NULL,
  `registrado_por_id` bigint DEFAULT NULL,
  `proveedor` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `papeleria_articulo_registrado_por_id_0c2be10e_fk_libreria_` (`registrado_por_id`),
  CONSTRAINT `papeleria_articulo_registrado_por_id_0c2be10e_fk_libreria_` FOREIGN KEY (`registrado_por_id`) REFERENCES `libreria_customuser` (`id`),
  CONSTRAINT `papeleria_articulo_chk_1` CHECK ((`precio` >= 0)),
  CONSTRAINT `papeleria_articulo_chk_2` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_articulo`
--

LOCK TABLES `papeleria_articulo` WRITE;
/*!40000 ALTER TABLE `papeleria_articulo` DISABLE KEYS */;
INSERT INTO `papeleria_articulo` VALUES (1,'Resma de papel membreteada','Reprograf','No hay','Oficio',2000,1,'2025-07-26',1,'Javeriana'),(2,'Calculadora','Casio','No hay','Científica',2000,0,'2025-07-26',1,'Casio'),(3,'Juegos de tapas','Tapas ltda','No hay','No establecido',5000,0,'2025-07-26',1,'Javeriana'),(4,'Lapiz','Bic','No hay','Rojo',3000,0,'2025-07-26',1,'Javeriana'),(5,'Post - its','Offi - esco','No hay','Medianas',3000,0,'2025-07-26',1,'Javeriana'),(6,'Ganchos plasticos','Offi - esco','No hay','Legajadores',32000,0,'2025-07-27',1,'Javeriana'),(7,'Separadores','Offi - esco','No hay','Plástico',3000,0,'2025-07-27',1,'Javeriana'),(8,'Esferos','Bic','No hay','Punta fina',3000,0,'2025-07-27',1,'Javeriana');
/*!40000 ALTER TABLE `papeleria_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papeleria_devolucion`
--

DROP TABLE IF EXISTS `papeleria_devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papeleria_devolucion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad_devuelta` int unsigned NOT NULL,
  `razon` varchar(40) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `articulo_id` bigint NOT NULL,
  `pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `papeleria_devolucion_articulo_id_0979b3c5_fk_papeleria` (`articulo_id`),
  KEY `papeleria_devolucion_pedido_id_cad9f812_fk_papeleria_pedido_id` (`pedido_id`),
  CONSTRAINT `papeleria_devolucion_articulo_id_0979b3c5_fk_papeleria` FOREIGN KEY (`articulo_id`) REFERENCES `papeleria_articulo` (`id`),
  CONSTRAINT `papeleria_devolucion_pedido_id_cad9f812_fk_papeleria_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `papeleria_pedido` (`id`),
  CONSTRAINT `papeleria_devolucion_chk_1` CHECK ((`cantidad_devuelta` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_devolucion`
--

LOCK TABLES `papeleria_devolucion` WRITE;
/*!40000 ALTER TABLE `papeleria_devolucion` DISABLE KEYS */;
INSERT INTO `papeleria_devolucion` VALUES (1,1,'fin de contrato','2025-07-26 23:06:31.084881',2,1),(2,10,'fin de contrato','2025-07-27 21:52:25.068613',4,16),(3,10,'fin de contrato','2025-07-27 21:52:49.471174',4,15);
/*!40000 ALTER TABLE `papeleria_devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papeleria_pedido`
--

DROP TABLE IF EXISTS `papeleria_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papeleria_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `registrado_por_id` bigint DEFAULT NULL,
  `fecha_estado` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `papeleria_pedido_registrado_por_id_b6a945d7_fk_libreria_` (`registrado_por_id`),
  CONSTRAINT `papeleria_pedido_registrado_por_id_b6a945d7_fk_libreria_` FOREIGN KEY (`registrado_por_id`) REFERENCES `libreria_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_pedido`
--

LOCK TABLES `papeleria_pedido` WRITE;
/*!40000 ALTER TABLE `papeleria_pedido` DISABLE KEYS */;
INSERT INTO `papeleria_pedido` VALUES (1,'2021-01-01 23:04:00.000000','Confirmado',1,'2025-07-26 23:04:57.747652'),(2,'2025-07-26 23:07:45.046391','Confirmado',1,'2025-07-26 23:07:45.046391'),(3,'2025-07-26 23:08:20.893488','Confirmado',1,'2025-07-26 23:08:20.893488'),(4,'2025-07-26 23:08:59.910764','Confirmado',1,'2025-07-26 23:08:59.910764'),(5,'2025-07-27 21:22:23.803747','Confirmado',1,'2025-07-27 21:22:23.803747'),(6,'2025-07-27 21:26:56.827132','Confirmado',2,NULL),(7,'2025-07-27 21:30:53.566427','Pendiente',3,NULL),(8,'2025-07-27 21:32:21.960717','Cancelado',4,NULL),(9,'2025-07-27 21:32:59.638765','Pendiente',5,NULL),(10,'2025-07-27 21:33:56.033327','Confirmado',6,NULL),(11,'2025-07-27 21:34:36.207908','Confirmado',1,'2025-07-27 21:34:36.207908'),(12,'2025-07-27 21:46:07.487848','Confirmado',6,NULL),(13,'2025-07-27 21:46:50.289612','Confirmado',6,NULL),(14,'2025-07-27 21:47:26.976317','Confirmado',1,'2025-07-27 21:47:26.976317'),(15,'2025-07-27 21:50:52.318700','Confirmado',6,NULL),(16,'2025-07-27 21:51:21.060161','Confirmado',1,'2025-07-27 21:51:21.060161'),(17,'2025-07-27 21:58:20.316812','Confirmado',6,NULL),(18,'2025-07-27 21:58:47.041443','Confirmado',1,'2025-07-27 21:58:47.041443'),(19,'2025-07-27 22:01:04.788673','Confirmado',6,NULL),(20,'2025-07-27 22:01:33.375155','Confirmado',1,'2025-07-27 22:01:33.375155'),(21,'2025-07-27 22:02:48.384173','Confirmado',1,'2025-07-27 22:02:48.384173'),(22,'2025-07-28 01:07:39.654071','Confirmado',6,NULL),(23,'2025-07-28 01:08:17.968098','Confirmado',1,'2025-07-28 01:08:17.968098'),(24,'2025-07-28 01:13:20.809839','Confirmado',6,NULL),(25,'2025-07-28 01:14:03.032161','Confirmado',1,'2025-07-28 01:14:03.032735'),(26,'2025-07-28 01:18:30.101575','Cancelado',6,'2025-07-28 01:19:16.256532'),(27,'2025-07-28 01:18:58.269081','Confirmado',1,'2025-07-28 01:18:58.269081');
/*!40000 ALTER TABLE `papeleria_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papeleria_pedidoarticulo`
--

DROP TABLE IF EXISTS `papeleria_pedidoarticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papeleria_pedidoarticulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int unsigned NOT NULL,
  `articulo_id` bigint NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `papeleria_pedido_art_articulo_id_e54f5ecb_fk_papeleria` (`articulo_id`),
  KEY `papeleria_pedidoarti_pedido_id_636b9164_fk_papeleria` (`pedido_id`),
  CONSTRAINT `papeleria_pedido_art_articulo_id_e54f5ecb_fk_papeleria` FOREIGN KEY (`articulo_id`) REFERENCES `papeleria_articulo` (`id`),
  CONSTRAINT `papeleria_pedidoarti_pedido_id_636b9164_fk_papeleria` FOREIGN KEY (`pedido_id`) REFERENCES `papeleria_pedido` (`id`),
  CONSTRAINT `papeleria_pedidoarticulo_chk_1` CHECK ((`cantidad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_pedidoarticulo`
--

LOCK TABLES `papeleria_pedidoarticulo` WRITE;
/*!40000 ALTER TABLE `papeleria_pedidoarticulo` DISABLE KEYS */;
INSERT INTO `papeleria_pedidoarticulo` VALUES (1,1,2,'Científica',1,'Administrativa'),(2,1,1,'Oficio',2,'Administrativa'),(3,1,2,'Científica',2,'Administrativa'),(4,1,2,'Científica',3,'Administrativa'),(5,1,3,'No establecido',3,'Administrativa'),(6,1,4,'Rojo',3,'Administrativa'),(7,1,5,'Medianas',4,'Administrativa'),(8,1,2,'Científica',4,'Administrativa'),(9,1,3,'No establecido',4,'Administrativa'),(10,1,4,'Rojo',4,'Administrativa'),(11,1,3,'No establecido',5,'Administrativa'),(12,11,7,'Plástico',5,'Administrativa'),(13,1,2,'Científica',6,'Registros públicos'),(14,1,1,'Oficio',7,'Gestión empresarial'),(15,1,2,'Científica',7,'Gestión empresarial'),(16,1,3,'No establecido',7,'Gestión empresarial'),(17,1,3,'No establecido',8,'Competitividad'),(18,1,5,'Medianas',8,'Competitividad'),(19,1,4,'Rojo',8,'Competitividad'),(20,1,4,'Rojo',9,'Presidencia'),(21,74,7,'Plástico',10,'Financiera'),(22,32,5,'Medianas',10,'Financiera'),(23,74,7,'Plástico',11,'Administrativa'),(24,19,2,'Científica',12,'Financiera'),(25,1,3,'No establecido',12,'Financiera'),(26,300,6,'Legajadores',13,'Financiera'),(27,300,6,'Legajadores',14,'Administrativa'),(28,10,4,'Rojo',15,'Financiera'),(29,10,4,'Rojo',16,'Administrativa'),(30,20,4,'Rojo',17,'Financiera'),(31,20,4,'Rojo',18,'Administrativa'),(32,197,3,'No establecido',19,'Financiera'),(33,197,3,'No establecido',20,'Administrativa'),(34,19,2,'Científica',21,'Administrativa'),(35,32,5,'Medianas',22,'Financiera'),(36,32,5,'Medianas',23,'Administrativa'),(37,10,2,'Científica',24,'Financiera'),(38,10,2,'Científica',25,'Administrativa'),(39,12,8,'Punta fina',26,'Financiera'),(40,12,8,'Punta fina',27,'Administrativa');
/*!40000 ALTER TABLE `papeleria_pedidoarticulo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 20:21:13
