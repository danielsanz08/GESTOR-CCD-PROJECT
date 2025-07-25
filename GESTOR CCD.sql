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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add custom user',6,'add_customuser'),(22,'Can change custom user',6,'change_customuser'),(23,'Can delete custom user',6,'delete_customuser'),(24,'Can view custom user',6,'view_customuser'),(25,'Can add articulo',7,'add_articulo'),(26,'Can change articulo',7,'change_articulo'),(27,'Can delete articulo',7,'delete_articulo'),(28,'Can view articulo',7,'view_articulo'),(29,'Can add pedido articulo',8,'add_pedidoarticulo'),(30,'Can change pedido articulo',8,'change_pedidoarticulo'),(31,'Can delete pedido articulo',8,'delete_pedidoarticulo'),(32,'Can view pedido articulo',8,'view_pedidoarticulo'),(33,'Can add pedido',9,'add_pedido'),(34,'Can change pedido',9,'change_pedido'),(35,'Can delete pedido',9,'delete_pedido'),(36,'Can view pedido',9,'view_pedido'),(37,'Can add devolucion',10,'add_devolucion'),(38,'Can change devolucion',10,'change_devolucion'),(39,'Can delete devolucion',10,'delete_devolucion'),(40,'Can view devolucion',10,'view_devolucion'),(41,'Can add productos',11,'add_productos'),(42,'Can change productos',11,'change_productos'),(43,'Can delete productos',11,'delete_productos'),(44,'Can view productos',11,'view_productos'),(45,'Can add pedido',12,'add_pedido'),(46,'Can change pedido',12,'change_pedido'),(47,'Can delete pedido',12,'delete_pedido'),(48,'Can view pedido',12,'view_pedido'),(49,'Can add pedido producto',13,'add_pedidoproducto'),(50,'Can change pedido producto',13,'change_pedidoproducto'),(51,'Can delete pedido producto',13,'delete_pedidoproducto'),(52,'Can view pedido producto',13,'view_pedidoproducto'),(53,'Can add devolucion caf',14,'add_devolucioncaf'),(54,'Can change devolucion caf',14,'change_devolucioncaf'),(55,'Can delete devolucion caf',14,'delete_devolucioncaf'),(56,'Can view devolucion caf',14,'view_devolucioncaf'),(57,'Can add pedido cde',15,'add_pedidocde'),(58,'Can change pedido cde',15,'change_pedidocde'),(59,'Can delete pedido cde',15,'delete_pedidocde'),(60,'Can view pedido cde',15,'view_pedidocde'),(61,'Can add pedido producto cde',16,'add_pedidoproductocde'),(62,'Can change pedido producto cde',16,'change_pedidoproductocde'),(63,'Can delete pedido producto cde',16,'delete_pedidoproductocde'),(64,'Can view pedido producto cde',16,'view_pedidoproductocde'),(65,'Can add devolucion cde',17,'add_devolucioncde'),(66,'Can change devolucion cde',17,'change_devolucioncde'),(67,'Can delete devolucion cde',17,'delete_devolucioncde'),(68,'Can view devolucion cde',17,'view_devolucioncde'),(69,'Can add backup',18,'add_backup'),(70,'Can change backup',18,'change_backup'),(71,'Can delete backup',18,'delete_backup'),(72,'Can view backup',18,'view_backup'),(73,'Can add crontab',19,'add_crontabschedule'),(74,'Can change crontab',19,'change_crontabschedule'),(75,'Can delete crontab',19,'delete_crontabschedule'),(76,'Can view crontab',19,'view_crontabschedule'),(77,'Can add interval',20,'add_intervalschedule'),(78,'Can change interval',20,'change_intervalschedule'),(79,'Can delete interval',20,'delete_intervalschedule'),(80,'Can view interval',20,'view_intervalschedule'),(81,'Can add periodic task',21,'add_periodictask'),(82,'Can change periodic task',21,'change_periodictask'),(83,'Can delete periodic task',21,'delete_periodictask'),(84,'Can view periodic task',21,'view_periodictask'),(85,'Can add periodic task track',22,'add_periodictasks'),(86,'Can change periodic task track',22,'change_periodictasks'),(87,'Can delete periodic task track',22,'delete_periodictasks'),(88,'Can view periodic task track',22,'view_periodictasks'),(89,'Can add solar event',23,'add_solarschedule'),(90,'Can change solar event',23,'change_solarschedule'),(91,'Can delete solar event',23,'delete_solarschedule'),(92,'Can view solar event',23,'view_solarschedule'),(93,'Can add clocked',24,'add_clockedschedule'),(94,'Can change clocked',24,'change_clockedschedule'),(95,'Can delete clocked',24,'delete_clockedschedule'),(96,'Can view clocked',24,'view_clockedschedule'),(97,'Can add task result',25,'add_taskresult'),(98,'Can change task result',25,'change_taskresult'),(99,'Can delete task result',25,'delete_taskresult'),(100,'Can view task result',25,'view_taskresult'),(101,'Can add chord counter',26,'add_chordcounter'),(102,'Can change chord counter',26,'change_chordcounter'),(103,'Can delete chord counter',26,'delete_chordcounter'),(104,'Can view chord counter',26,'view_chordcounter'),(105,'Can add group result',27,'add_groupresult'),(106,'Can change group result',27,'change_groupresult'),(107,'Can delete group result',27,'delete_groupresult'),(108,'Can view group result',27,'view_groupresult');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_backup`
--

LOCK TABLES `backup_backup` WRITE;
/*!40000 ALTER TABLE `backup_backup` DISABLE KEYS */;
INSERT INTO `backup_backup` VALUES (1,'Cde','backups/backup_db_20250724_204444.json','2025-07-24','0.0 MB','libreria.CustomUser, papeleria.Articulo, papeleria.Pedido, papeleria.PedidoArticulo, cafeteria.Productos, cafeteria.Pedido, cafeteria.PedidoProducto, cde.PedidoCde, cde.PedidoProductoCde (con relaciones)',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_pedido`
--

LOCK TABLES `cafeteria_pedido` WRITE;
/*!40000 ALTER TABLE `cafeteria_pedido` DISABLE KEYS */;
INSERT INTO `cafeteria_pedido` VALUES (1,'2025-07-25 02:28:54.347014','Confirmado',1,'2025-07-25 02:28:54.347014'),(2,'2021-01-02 02:29:00.000000','Confirmado',1,'2025-07-25 02:29:49.345510'),(3,'2020-01-02 02:32:00.000000','Confirmado',1,'2025-07-25 02:32:31.962057'),(4,'2025-07-25 02:33:19.072633','Cancelado',3,'2025-07-25 02:38:10.895666'),(5,'2025-07-25 02:34:36.911931','Pendiente',3,NULL),(6,'2025-07-25 02:35:39.434702','Confirmado',3,'2025-07-25 02:37:57.201019'),(7,'2025-07-25 02:36:14.500699','Cancelado',3,'2025-07-25 02:36:44.148274');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_pedidoproducto`
--

LOCK TABLES `cafeteria_pedidoproducto` WRITE;
/*!40000 ALTER TABLE `cafeteria_pedidoproducto` DISABLE KEYS */;
INSERT INTO `cafeteria_pedidoproducto` VALUES (1,1,'Administrativa',1,'cafeteria',1),(2,1,'Administrativa',1,'cafeteria',2),(3,1,'Administrativa',2,'cafeteria',2),(4,1,'Administrativa',7,'baño rues',3),(5,1,'Administrativa',6,'baño rues',3),(6,1,'Administrativa',4,'cafeteria',4),(7,1,'Administrativa',1,'cafeteria',4),(8,1,'Administrativa',1,'cde',5),(9,1,'Administrativa',2,'ccd',5),(10,1,'Administrativa',3,'cafeteria',5),(11,1,'Administrativa',4,'cde',5),(12,1,'Administrativa',5,'cde',5),(13,1,'Administrativa',6,'bodega archivo',6),(14,1,'Administrativa',7,'bodega archivo',6),(15,1,'Administrativa',4,'cafeteria',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria_productos`
--

LOCK TABLES `cafeteria_productos` WRITE;
/*!40000 ALTER TABLE `cafeteria_productos` DISABLE KEYS */;
INSERT INTO `cafeteria_productos` VALUES (1,'Café','Tostao',2000,19,'Javeriana','2025-07-24','Kilogramos',1,'No Hay'),(2,'Azúcar','Riopaila',2000,210,'Javeriana','2025-07-24','Kilogramos',1,'Paquetes'),(3,'Palillos Mezcladores','Palillos Ltd',3666,44,'Javeriana','2025-07-24','Unidad',1,'Paquetes'),(4,'Vasos','Vasos Ltda',300,33,'Javeriana','2025-07-24','Onzas',1,'Paquetes'),(5,'Leche En Polvo','Alqueria',4000,20,'Javeriana','2025-07-24','Kilogramos',1,'Paquete'),(6,'Limpia Pisos','Fabuloso',4000,30,'Javeriana','2025-07-24','Litros',1,'Botella'),(7,'Trapero','No Hay',4000,20,'Javeriana','2025-07-24','Unidad',1,'Unidad'),(8,'Cloro','Blacox',4000,33,'Javeriana','2025-07-24','Litros',1,'Garrafón'),(9,'Escoba','No Hay',4656,5,'Javeriana','2025-07-24','Unidad',1,'Unidad'),(10,'Guantes','No Hay',4000,10,'Javeriana','2025-07-24','Unidad',1,'Paquetes'),(11,'Panelitas','Panelitas S.a.s',30000,4,'Javeriana','2025-07-24','Gramos',1,'Caja');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cde_pedidocde`
--

LOCK TABLES `cde_pedidocde` WRITE;
/*!40000 ALTER TABLE `cde_pedidocde` DISABLE KEYS */;
INSERT INTO `cde_pedidocde` VALUES (1,'2025-07-25 02:47:05.028551','Confirmado',1),(2,'2025-07-25 02:47:53.795770','Confirmado',1),(3,'2025-07-25 02:48:29.909223','Confirmado',1),(4,'2025-07-02 02:52:00.000000','Confirmado',1),(5,'2025-07-25 02:52:58.650866','Cancelado',3),(6,'2025-07-25 02:55:09.471987','Confirmado',3),(7,'2025-07-25 02:56:26.947202','Cancelado',3),(8,'2025-07-25 02:57:05.925191','Cancelado',3),(9,'2025-07-25 03:01:42.220422','Cancelado',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cde_pedidoproductocde`
--

LOCK TABLES `cde_pedidoproductocde` WRITE;
/*!40000 ALTER TABLE `cde_pedidoproductocde` DISABLE KEYS */;
INSERT INTO `cde_pedidoproductocde` VALUES (1,1,'Administrativa','7 feria queso y el vino',1,9),(2,1,'Administrativa','noticamara',2,1),(3,1,'Administrativa','noticamara',2,2),(4,1,'Administrativa','cde',3,6),(5,1,'Administrativa','cde',4,5),(6,1,'Administrativa','cde',5,1),(7,1,'Administrativa','ccd',5,4),(8,1,'Administrativa','cd',5,9),(9,1,'Administrativa','ccd',6,5),(10,12,'Administrativa','noticamara',6,10),(11,33,'Administrativa','noticamara',7,4),(12,1,'Administrativa','feria del queso y del vino',8,2),(13,1,'Administrativa','feria',8,4),(14,1,'Administrativa','feria',8,10),(15,1,'Administrativa','cde',9,2);
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
-- Table structure for table `django_celery_beat_clockedschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_clockedschedule`
--

LOCK TABLES `django_celery_beat_clockedschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

LOCK TABLES `django_celery_beat_crontabschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `every` int NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

LOCK TABLES `django_celery_beat_intervalschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictask`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int DEFAULT NULL,
  `interval_id` int DEFAULT NULL,
  `solar_id` int DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int unsigned DEFAULT NULL,
  `headers` longtext NOT NULL DEFAULT (_utf8mb3'{}'),
  `clocked_id` int DEFAULT NULL,
  `expire_seconds` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`),
  CONSTRAINT `django_celery_beat_periodictask_chk_1` CHECK ((`total_run_count` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_2` CHECK ((`priority` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_3` CHECK ((`expire_seconds` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

LOCK TABLES `django_celery_beat_periodictask` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictasks`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

LOCK TABLES `django_celery_beat_periodictasks` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_solarschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_solarschedule`
--

LOCK TABLES `django_celery_beat_solarschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_chordcounter`
--

DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_chordcounter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `sub_tasks` longtext NOT NULL,
  `count` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  CONSTRAINT `django_celery_results_chordcounter_chk_1` CHECK ((`count` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_chordcounter`
--

LOCK TABLES `django_celery_results_chordcounter` WRITE;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_groupresult`
--

DROP TABLE IF EXISTS `django_celery_results_groupresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_groupresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  KEY `django_cele_date_cr_bd6c1d_idx` (`date_created`),
  KEY `django_cele_date_do_caae0e_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_groupresult`
--

LOCK TABLES `django_celery_results_groupresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_groupresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_groupresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_taskresult`
--

DROP TABLE IF EXISTS `django_celery_results_taskresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) DEFAULT NULL,
  `date_started` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  KEY `django_cele_status_9b6201_idx` (`status`),
  KEY `django_cele_worker_d54dd8_idx` (`worker`),
  KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  KEY `django_cele_date_do_f59aad_idx` (`date_done`),
  KEY `django_cele_periodi_1993cf_idx` (`periodic_task_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(18,'backup','backup'),(14,'cafeteria','devolucioncaf'),(12,'cafeteria','pedido'),(13,'cafeteria','pedidoproducto'),(11,'cafeteria','productos'),(17,'cde','devolucioncde'),(15,'cde','pedidocde'),(16,'cde','pedidoproductocde'),(4,'contenttypes','contenttype'),(24,'django_celery_beat','clockedschedule'),(19,'django_celery_beat','crontabschedule'),(20,'django_celery_beat','intervalschedule'),(21,'django_celery_beat','periodictask'),(22,'django_celery_beat','periodictasks'),(23,'django_celery_beat','solarschedule'),(26,'django_celery_results','chordcounter'),(27,'django_celery_results','groupresult'),(25,'django_celery_results','taskresult'),(6,'libreria','customuser'),(7,'papeleria','articulo'),(10,'papeleria','devolucion'),(9,'papeleria','pedido'),(8,'papeleria','pedidoarticulo'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-25 01:30:50.823175'),(2,'contenttypes','0002_remove_content_type_name','2025-07-25 01:30:51.071792'),(3,'auth','0001_initial','2025-07-25 01:30:51.995148'),(4,'auth','0002_alter_permission_name_max_length','2025-07-25 01:30:52.198752'),(5,'auth','0003_alter_user_email_max_length','2025-07-25 01:30:52.229998'),(6,'auth','0004_alter_user_username_opts','2025-07-25 01:30:52.248333'),(7,'auth','0005_alter_user_last_login_null','2025-07-25 01:30:52.254968'),(8,'auth','0006_require_contenttypes_0002','2025-07-25 01:30:52.272698'),(9,'auth','0007_alter_validators_add_error_messages','2025-07-25 01:30:52.301812'),(10,'auth','0008_alter_user_username_max_length','2025-07-25 01:30:52.305305'),(11,'auth','0009_alter_user_last_name_max_length','2025-07-25 01:30:52.332168'),(12,'auth','0010_alter_group_name_max_length','2025-07-25 01:30:52.388690'),(13,'auth','0011_update_proxy_permissions','2025-07-25 01:30:52.405253'),(14,'auth','0012_alter_user_first_name_max_length','2025-07-25 01:30:52.444524'),(15,'libreria','0001_initial','2025-07-25 01:30:53.736687'),(16,'admin','0001_initial','2025-07-25 01:30:54.182019'),(17,'admin','0002_logentry_remove_auto_add','2025-07-25 01:30:54.197605'),(18,'admin','0003_logentry_add_action_flag_choices','2025-07-25 01:30:54.232179'),(19,'backup','0001_initial','2025-07-25 01:30:54.288669'),(20,'backup','0002_backup_creado_por_alter_backup_modelos_incluidos_and_more','2025-07-25 01:30:54.748219'),(21,'backup','0003_alter_backup_fecha_creacion','2025-07-25 01:30:54.932891'),(22,'cafeteria','0001_initial','2025-07-25 01:30:55.257298'),(23,'cafeteria','0002_remove_productos_observacion_productos_presentacion','2025-07-25 01:30:55.395467'),(24,'cafeteria','0003_alter_productos_unidad_medida_pedido_pedidoproducto','2025-07-25 01:30:55.927019'),(25,'cafeteria','0004_pedidoproducto_lugar','2025-07-25 01:30:56.012590'),(26,'cafeteria','0005_remove_pedidoproducto_tipo_pedidoproducto_pedido','2025-07-25 01:30:56.289642'),(27,'cafeteria','0006_alter_productos_nombre','2025-07-25 01:30:56.450306'),(28,'cafeteria','0007_alter_pedido_registrado_por_and_more','2025-07-25 01:30:58.120721'),(29,'cafeteria','0008_pedido_fecha_estado','2025-07-25 01:30:58.215222'),(30,'cafeteria','0009_alter_pedidoproducto_producto','2025-07-25 01:30:58.237491'),(31,'cafeteria','0010_alter_pedido_fecha_pedido','2025-07-25 01:30:58.266150'),(32,'cafeteria','0011_devolucioncaf','2025-07-25 01:30:58.700380'),(33,'cafeteria','0012_alter_devolucioncaf_motivo','2025-07-25 01:30:58.925546'),(34,'cafeteria','0013_alter_productos_fecha_registro','2025-07-25 01:30:58.963629'),(35,'cde','0001_initial','2025-07-25 01:30:59.641225'),(36,'cde','0002_alter_pedidocde_registrado_por_and_more','2025-07-25 01:31:01.129589'),(37,'cde','0003_pedidocde_fecha_estado','2025-07-25 01:31:01.203448'),(38,'cde','0004_alter_pedidoproductocde_producto','2025-07-25 01:31:01.239357'),(39,'cde','0005_remove_pedidocde_fecha_estado_and_more','2025-07-25 01:31:01.313734'),(40,'cde','0006_devolucioncde','2025-07-25 01:31:01.802928'),(41,'cde','0007_alter_devolucioncde_motivo','2025-07-25 01:31:02.021970'),(42,'django_celery_beat','0001_initial','2025-07-25 01:31:02.744594'),(43,'django_celery_beat','0002_auto_20161118_0346','2025-07-25 01:31:03.064640'),(44,'django_celery_beat','0003_auto_20161209_0049','2025-07-25 01:31:03.129250'),(45,'django_celery_beat','0004_auto_20170221_0000','2025-07-25 01:31:03.152494'),(46,'django_celery_beat','0005_add_solarschedule_events_choices','2025-07-25 01:31:03.165213'),(47,'django_celery_beat','0006_auto_20180322_0932','2025-07-25 01:31:03.417611'),(48,'django_celery_beat','0007_auto_20180521_0826','2025-07-25 01:31:03.574563'),(49,'django_celery_beat','0008_auto_20180914_1922','2025-07-25 01:31:03.660778'),(50,'django_celery_beat','0006_auto_20180210_1226','2025-07-25 01:31:03.712370'),(51,'django_celery_beat','0006_periodictask_priority','2025-07-25 01:31:03.999287'),(52,'django_celery_beat','0009_periodictask_headers','2025-07-25 01:31:04.574979'),(53,'django_celery_beat','0010_auto_20190429_0326','2025-07-25 01:31:05.029517'),(54,'django_celery_beat','0011_auto_20190508_0153','2025-07-25 01:31:05.421898'),(55,'django_celery_beat','0012_periodictask_expire_seconds','2025-07-25 01:31:05.714501'),(56,'django_celery_beat','0013_auto_20200609_0727','2025-07-25 01:31:05.761353'),(57,'django_celery_beat','0014_remove_clockedschedule_enabled','2025-07-25 01:31:05.809516'),(58,'django_celery_beat','0015_edit_solarschedule_events_choices','2025-07-25 01:31:05.842352'),(59,'django_celery_beat','0016_alter_crontabschedule_timezone','2025-07-25 01:31:05.869628'),(60,'django_celery_beat','0017_alter_crontabschedule_month_of_year','2025-07-25 01:31:05.889813'),(61,'django_celery_beat','0018_improve_crontab_helptext','2025-07-25 01:31:05.915827'),(62,'django_celery_beat','0019_alter_periodictasks_options','2025-07-25 01:31:05.934132'),(63,'django_celery_results','0001_initial','2025-07-25 01:31:06.058273'),(64,'django_celery_results','0002_add_task_name_args_kwargs','2025-07-25 01:31:06.241002'),(65,'django_celery_results','0003_auto_20181106_1101','2025-07-25 01:31:06.256627'),(66,'django_celery_results','0004_auto_20190516_0412','2025-07-25 01:31:06.422060'),(67,'django_celery_results','0005_taskresult_worker','2025-07-25 01:31:06.525270'),(68,'django_celery_results','0006_taskresult_date_created','2025-07-25 01:31:06.672552'),(69,'django_celery_results','0007_remove_taskresult_hidden','2025-07-25 01:31:06.870213'),(70,'django_celery_results','0008_chordcounter','2025-07-25 01:31:07.007590'),(71,'django_celery_results','0009_groupresult','2025-07-25 01:31:07.802195'),(72,'django_celery_results','0010_remove_duplicate_indices','2025-07-25 01:31:07.856312'),(73,'django_celery_results','0011_taskresult_periodic_task_name','2025-07-25 01:31:07.918093'),(74,'django_celery_results','0012_taskresult_date_started','2025-07-25 01:31:07.980661'),(75,'django_celery_results','0013_taskresult_django_cele_periodi_1993cf_idx','2025-07-25 01:31:08.043005'),(76,'django_celery_results','0014_alter_taskresult_status','2025-07-25 01:31:08.056535'),(77,'libreria','0002_alter_customuser_cargo','2025-07-25 01:31:08.143293'),(78,'libreria','0003_customuser_area','2025-07-25 01:31:08.287502'),(79,'libreria','0004_customuser_fecha_registro','2025-07-25 01:31:08.422936'),(80,'libreria','0005_remove_customuser_module_customuser_acceso_caf_and_more','2025-07-25 01:31:09.023812'),(81,'libreria','0006_alter_customuser_area','2025-07-25 01:31:09.055080'),(82,'libreria','0007_alter_customuser_username','2025-07-25 01:31:09.561333'),(83,'libreria','0008_alter_customuser_fecha_registro','2025-07-25 01:31:09.611669'),(84,'libreria','0009_alter_customuser_cargo_alter_customuser_username','2025-07-25 01:31:10.050535'),(85,'libreria','0010_customuser_session_key','2025-07-25 01:31:10.156970'),(86,'libreria','0011_customuser_session_token','2025-07-25 01:31:10.260099'),(87,'papeleria','0001_initial','2025-07-25 01:31:10.558354'),(88,'papeleria','0002_alter_articulo_tipo','2025-07-25 01:31:10.764571'),(89,'papeleria','0003_pedido_articulo','2025-07-25 01:31:11.485272'),(90,'papeleria','0004_rename_pedido_articulo_pedidoarticulo','2025-07-25 01:31:11.596723'),(91,'papeleria','0005_alter_pedidoarticulo_tipo','2025-07-25 01:31:12.125979'),(92,'papeleria','0006_alter_pedidoarticulo_articulo_and_more','2025-07-25 01:31:12.705244'),(93,'papeleria','0007_alter_pedidoarticulo_tipo','2025-07-25 01:31:13.019722'),(94,'papeleria','0008_remove_pedidoarticulo_cliente_and_more','2025-07-25 01:31:14.648388'),(95,'papeleria','0009_alter_articulo_observacion','2025-07-25 01:31:14.684152'),(96,'papeleria','0010_articulo_proveedor_pedidoarticulo_area','2025-07-25 01:31:14.865018'),(97,'papeleria','0011_alter_pedido_estado','2025-07-25 01:31:14.895298'),(98,'papeleria','0012_alter_pedidoarticulo_tipo','2025-07-25 01:31:15.619374'),(99,'papeleria','0013_alter_pedidoarticulo_tipo','2025-07-25 01:31:16.073953'),(100,'papeleria','0014_alter_articulo_nombre','2025-07-25 01:31:16.215144'),(101,'papeleria','0015_alter_articulo_marca_alter_articulo_nombre_and_more','2025-07-25 01:31:17.264455'),(102,'papeleria','0016_alter_articulo_marca_alter_articulo_nombre_and_more','2025-07-25 01:31:17.781279'),(103,'papeleria','0017_alter_articulo_cantidad','2025-07-25 01:31:17.804638'),(104,'papeleria','0018_alter_articulo_cantidad','2025-07-25 01:31:17.834781'),(105,'papeleria','0019_alter_articulo_cantidad_alter_articulo_observacion','2025-07-25 01:31:17.914306'),(106,'papeleria','0020_pedido_fecha_estado','2025-07-25 01:31:18.158575'),(107,'papeleria','0021_alter_pedido_fecha_pedido_devolucion','2025-07-25 01:31:18.740454'),(108,'papeleria','0022_alter_devolucion_razon','2025-07-25 01:31:19.020571'),(109,'papeleria','0023_alter_devolucion_razon','2025-07-25 01:31:19.082950'),(110,'papeleria','0024_alter_articulo_fecha_registro','2025-07-25 01:31:19.145362'),(111,'sessions','0001_initial','2025-07-25 01:31:19.590509');
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
INSERT INTO `django_session` VALUES ('8suxs5b07dwxwold9fnflqrhdytz055f','.eJxVjMsOgyAUBf-FtTEC5eWyid9BLnBVImoCuGr677Wti3Y7c-Y8iIWjzvYomG0MpCeUNL_MgV9we4sUXcYcob1QaYcVYrpfg79qhjKfCUpz6xgaHwRVSuCoKNNSeuGMkMYz4YTWWkhmeKDIJXIdRs045Z1xTsF5-rlL-zRhsHEjfc0HNgQS5gq21N0vdt1LzRDgK58vFH1F-Q:1uf8hV:ek7iNVcReTA1Bt2CQZZvStWvLtkuUClSOlLJ1yEfFPU','2025-07-25 03:12:25.824870');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreria_customuser`
--

LOCK TABLES `libreria_customuser` WRITE;
/*!40000 ALTER TABLE `libreria_customuser` DISABLE KEYS */;
INSERT INTO `libreria_customuser` VALUES (1,'pbkdf2_sha256$870000$SQAaPJcXswlFpCkHH8X9Iu$hFCf8ZxQW25uL9+KDRtJP5Zdv8ANUzgvQgGv4wTWhs8=','2025-07-25 03:02:19.830326',0,'Daniel Sanchez','jonnathansz73@gmail.com','Administrador','Aprendiz Sena',1,0,'Administrativa','2025-07-24',1,1,1,'8suxs5b07dwxwold9fnflqrhdytz055f','3965882c-59d4-484e-a3ea-744b05160060'),(2,'pbkdf2_sha256$870000$0GUEYK6tvbaFf95aFwNpOJ$jO+S7oMGNpyZMpnLLn7gvH6NvE4OMcorEMPn9d+eUUw=',NULL,0,'Diego Ortiz','danielmolanoestudio@gmail.com','Empleado','Aprendiz Sena',1,0,'Administrativa','2025-07-24',0,0,0,NULL,NULL),(3,'pbkdf2_sha256$870000$uRHGQw2DdDGQTv2C5ZZfnf$iHl00uapH0uEREvxA5PCQLSfIrmEK4eYvAHkq2nNh4Y=','2025-07-25 03:01:35.207702',0,'Viviana Orozco','viviana@gmail.com','Empleado','Asistente En Gestion Documental',1,0,'Administrativa','2025-07-24',1,1,1,'rr8anmtn5qdznpy9b8qhl55gh1xj5fg9','540c13b2-4fb1-487d-ba43-f5207486a61c'),(4,'pbkdf2_sha256$870000$DAZugFY67X43kE6zQFPUg6$Os4Sohp6WWV0dj8UgsWiLkymH5Mi9GaeYbyoFftmLMg=',NULL,0,'Carlos Orozco','carlos@gmail.com','Empleado','Auxiliar En Gestion Documental',1,0,'Registros públicos','2025-07-24',0,0,0,NULL,NULL),(5,'pbkdf2_sha256$870000$m09muLCuXRPKKo4CD2ZLpa$DMTNUnYAL3Nlp9Ob0fr5r8QyODIyMOSgc5Cn3c6yTwM=',NULL,0,'Sonia Parra','sonia@gmail.com','Empleado','Supernumeraria En Gestion Documental',1,0,'Administrativa','2025-07-24',0,0,0,NULL,NULL),(6,'pbkdf2_sha256$870000$icEH4qReUN6Jz6pNBJIsLA$Q8UR8OSVcSNrSn5JpM2udk+mvoKIzSKMkSP2GLiZi+w=',NULL,0,'Valentina Casallas','valentina@gmail.com','Empleado','Auxiliar En Gestion Empresarial',1,0,'Administrativa','2025-07-24',0,0,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_articulo`
--

LOCK TABLES `papeleria_articulo` WRITE;
/*!40000 ALTER TABLE `papeleria_articulo` DISABLE KEYS */;
INSERT INTO `papeleria_articulo` VALUES (1,'Resma de papel membreteada','Norma','No hay','Oficio',2000,20,'2025-07-24',1,'Javeriana'),(2,'Lapiz','Bic','No hay','Rojo',2000,31,'2025-07-24',1,'Javeriana'),(3,'Juegos de tapas','No hay','No hay','Reciclables',2000,21,'2025-07-24',1,'Javeriana'),(4,'Post-its','Offi - esco','No hay','Medianas',2000,22,'2025-07-24',1,'Javeriana'),(5,'Banderitas','Offi - esco','Recicladas','Pequeñas',2000,23,'2025-07-24',1,'Javeriana');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_devolucion`
--

LOCK TABLES `papeleria_devolucion` WRITE;
/*!40000 ALTER TABLE `papeleria_devolucion` DISABLE KEYS */;
INSERT INTO `papeleria_devolucion` VALUES (1,1,'fin de contrato','2025-07-25 02:22:47.522534',2,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_pedido`
--

LOCK TABLES `papeleria_pedido` WRITE;
/*!40000 ALTER TABLE `papeleria_pedido` DISABLE KEYS */;
INSERT INTO `papeleria_pedido` VALUES (1,'2025-07-25 02:08:30.378232','Confirmado',1,'2025-07-25 02:08:30.378232'),(2,'2020-01-02 02:09:00.000000','Confirmado',1,'2025-07-25 02:09:45.175941'),(3,'2025-07-25 02:10:31.129548','Confirmado',1,'2025-07-25 02:10:31.129548'),(4,'2025-07-25 02:12:56.852900','Confirmado',3,NULL),(5,'2025-07-25 02:13:28.786635','Cancelado',3,NULL),(6,'2025-07-25 02:14:16.044003','Cancelado',3,NULL),(7,'2025-07-25 02:20:26.012686','Pendiente',3,NULL),(8,'2025-07-25 02:20:49.074145','Confirmado',3,NULL),(9,'2025-07-25 02:23:02.290026','Confirmado',1,'2025-07-25 02:23:02.290026');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papeleria_pedidoarticulo`
--

LOCK TABLES `papeleria_pedidoarticulo` WRITE;
/*!40000 ALTER TABLE `papeleria_pedidoarticulo` DISABLE KEYS */;
INSERT INTO `papeleria_pedidoarticulo` VALUES (1,1,1,'Oficio',1,'Administrativa'),(2,1,2,'Rojo',2,'Administrativa'),(3,1,1,'Oficio',2,'Administrativa'),(4,1,1,'Oficio',3,'Administrativa'),(5,1,2,'Rojo',3,'Administrativa'),(6,1,3,'Reciclables',3,'Administrativa'),(7,1,5,'Pequeñas',4,'Administrativa'),(8,1,4,'Medianas',5,'Administrativa'),(9,1,2,'Rojo',5,'Administrativa'),(10,1,1,'Oficio',6,'Administrativa'),(11,1,2,'Rojo',6,'Administrativa'),(12,1,3,'Reciclables',6,'Administrativa'),(13,1,4,'Medianas',6,'Administrativa'),(14,1,5,'Pequeñas',6,'Administrativa'),(15,1,1,'Oficio',7,'Administrativa'),(16,1,2,'Rojo',7,'Administrativa'),(17,1,3,'Reciclables',8,'Administrativa'),(18,1,5,'Pequeñas',8,'Administrativa'),(19,1,2,'Rojo',8,'Administrativa'),(20,1,4,'Medianas',8,'Administrativa'),(21,1,2,'Rojo',9,'Administrativa');
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

-- Dump completed on 2025-07-24 22:04:39
