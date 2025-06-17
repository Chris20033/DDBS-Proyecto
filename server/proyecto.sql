-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `DETALLE_PEDIDO`
--

DROP TABLE IF EXISTS `DETALLE_PEDIDO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DETALLE_PEDIDO` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int DEFAULT NULL,
  `paquete_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `paquete_id` (`paquete_id`),
  CONSTRAINT `DETALLE_PEDIDO_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `PEDIDO` (`id`),
  CONSTRAINT `DETALLE_PEDIDO_ibfk_2` FOREIGN KEY (`paquete_id`) REFERENCES `PAQUETE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETALLE_PEDIDO`
--

LOCK TABLES `DETALLE_PEDIDO` WRITE;
/*!40000 ALTER TABLE `DETALLE_PEDIDO` DISABLE KEYS */;
INSERT INTO `DETALLE_PEDIDO` VALUES (1,1,1,2,20.99),(2,2,2,3,15.50),(3,3,3,1,10.99),(4,4,4,2,25.00),(5,5,5,3,30.99),(6,6,6,1,17.75),(7,7,7,4,15.50),(8,8,8,2,27.00),(9,9,9,1,10.99),(10,10,10,3,20.00),(11,11,11,1,25.75),(12,12,12,2,19.50),(13,13,13,3,23.00),(14,14,14,4,12.50),(15,15,15,3,35.00),(16,16,16,2,28.99),(17,17,17,1,24.99),(18,18,18,2,16.00),(19,19,19,3,30.25),(20,20,20,1,25.75),(21,21,21,2,13.50),(22,22,22,1,18.25),(23,23,23,2,30.00),(24,24,24,3,22.99),(25,25,25,1,19.99),(26,26,26,4,26.00),(27,27,27,2,21.50),(28,28,28,1,17.75),(29,29,29,3,23.99),(30,30,30,2,24.00),(31,31,31,1,22.50),(32,32,32,3,15.75),(33,33,33,1,19.00),(34,34,34,2,27.99),(35,35,35,3,30.50),(36,36,36,1,22.25),(37,37,37,2,24.75),(38,38,38,3,21.99),(39,39,39,1,18.50),(40,40,40,2,25.99),(41,41,41,1,12.75),(42,42,42,3,22.25),(43,43,43,2,17.50),(44,44,44,3,30.99),(45,45,45,1,19.99),(46,46,46,4,28.00),(47,47,47,2,20.75),(48,48,48,3,24.50),(49,49,49,1,23.00),(50,50,50,2,18.25),(51,51,1,1,20.99),(52,52,1,1,20.99),(53,53,1,8,20.99),(54,54,1,1,20.99),(55,55,2,4,15.50),(56,56,5,1,30.99),(57,57,2,1,15.50),(58,58,16,2,9.99),(59,59,1,4,20.99),(60,60,3,5,10.99),(61,61,13,5,15.00),(62,62,5,4,30.99),(63,63,1,1,20.99),(64,64,8,1,40.99),(65,65,51,2,399.00),(66,66,5,1,30.99),(67,67,51,1,399.00);
/*!40000 ALTER TABLE `DETALLE_PEDIDO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `DETALLE_PEDIDO1`
--

DROP TABLE IF EXISTS `DETALLE_PEDIDO1`;
/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DETALLE_PEDIDO1` AS SELECT 
 1 AS `id`,
 1 AS `pedido_id`,
 1 AS `paquete_id`,
 1 AS `cantidad`,
 1 AS `precio_unitario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DETALLE_PEDIDO2`
--

DROP TABLE IF EXISTS `DETALLE_PEDIDO2`;
/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DETALLE_PEDIDO2` AS SELECT 
 1 AS `id`,
 1 AS `pedido_id`,
 1 AS `paquete_id`,
 1 AS `cantidad`,
 1 AS `precio_unitario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DETALLE_PEDIDO3`
--

DROP TABLE IF EXISTS `DETALLE_PEDIDO3`;
/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DETALLE_PEDIDO3` AS SELECT 
 1 AS `id`,
 1 AS `pedido_id`,
 1 AS `paquete_id`,
 1 AS `cantidad`,
 1 AS `precio_unitario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DIRECCION`
--

DROP TABLE IF EXISTS `DIRECCION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIRECCION` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `colonia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `latitud` decimal(10,8) DEFAULT NULL,
  `longitud` decimal(11,8) DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `DIRECCION_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `USUARIO` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIRECCION`
--

LOCK TABLES `DIRECCION` WRITE;
/*!40000 ALTER TABLE `DIRECCION` DISABLE KEYS */;
INSERT INTO `DIRECCION` VALUES (1,1,'Main St','123','Downtown','New York','NY','10001',40.71280000,-74.00600000,1),(2,2,'Second Ave','456','Uptown','Los Angeles','CA','90001',34.05220000,-118.24370000,1),(3,3,'Elm St','789','Suburbia','Chicago','IL','60601',41.87810000,-87.62980000,1),(4,4,'Oak St','101','Westside','Houston','TX','77001',29.76040000,-95.36980000,1),(5,5,'Pine St','202','Eastside','Phoenix','AZ','85001',33.44840000,-112.07400000,1),(6,6,'Maple Ave','303','Central','Philadelphia','PA','19103',39.95260000,-75.16520000,1),(7,7,'Cedar Blvd','404','North End','San Antonio','TX','78205',29.42410000,-98.49360000,1),(8,8,'Birch Ln','505','South Park','San Diego','CA','92101',32.71570000,-117.16110000,1),(9,9,'Cherry St','606','Hilltop','Dallas','TX','75201',32.77670000,-96.79700000,1),(10,10,'Willow Dr','707','Greenfield','San Jose','CA','95113',37.77490000,-122.41940000,1),(11,11,'Spruce St','808','Old Town','Austin','TX','73301',30.26720000,-97.74310000,1),(12,12,'Poplar St','909','Mountain View','Seattle','WA','98101',47.60620000,-122.33210000,1),(13,13,'Chestnut Ave','1010','Lakeside','Denver','CO','80202',39.73920000,-104.99030000,1),(14,14,'Acacia Rd','1111','Parkside','Miami','FL','33101',25.76170000,-80.19180000,1),(15,15,'Cypress Dr','1212','Hillcrest','Las Vegas','NV','89101',36.16990000,-115.13980000,1),(16,16,'Redwood Blvd','1313','Riverside','Boston','MA','02108',42.36010000,-71.05890000,1),(17,17,'Sycamore Ln','1414','Lakeshore','Chicago','IL','60606',41.87810000,-87.62980000,1),(18,18,'Fir St','1515','Shady Grove','Indianapolis','IN','46201',39.76840000,-86.15800000,1),(19,19,'Ash Dr','1616','Silver Valley','Portland','OR','97201',45.50510000,-122.67500000,1),(20,20,'Palm Ave','1717','Sunnydale','San Francisco','CA','94110',37.77490000,-122.41940000,1),(21,21,'Hickory Blvd','1818','Green Oaks','Sacramento','CA','95814',38.58160000,-121.49440000,1),(22,22,'Laurel Ln','1919','Bayside','Tucson','AZ','85701',32.22260000,-110.97470000,1),(23,23,'Magnolia St','2020','Crescent Hill','Nashville','TN','37201',36.16270000,-86.78160000,1),(24,24,'Juniper Rd','2121','Forest Glen','Cleveland','OH','44101',41.49930000,-81.69440000,1),(25,25,'Willowbrook Rd','2222','Riverdale','Kansas City','MO','64101',39.09970000,-94.57860000,1),(26,26,'Cottonwood Ln','2323','Breezewood','Salt Lake City','UT','84101',40.76080000,-111.89100000,1),(27,27,'Evergreen St','2424','Mountain Ridge','Milwaukee','WI','53202',43.03890000,-87.90650000,1),(28,28,'Pecan Ave','2525','Eastwood','New Orleans','LA','70112',29.95840000,-90.06260000,1),(29,29,'Laurel Dr','2626','Brookside','Detroit','MI','48226',42.33140000,-83.04580000,1),(30,30,'Wisteria Way','2727','Sunnybrook','Minneapolis','MN','55101',44.97780000,-93.26500000,1),(31,31,'Linden Ln','2828','Windy Hills','Omaha','NE','68102',41.25650000,-95.93450000,1),(32,32,'Magnolia Ave','2929','Riverbank','St. Louis','MO','63101',38.62700000,-90.19940000,1),(33,33,'Bamboo Blvd','3030','Pinecrest','Baltimore','MD','21201',39.29040000,-76.61220000,1),(34,34,'Freesia St','3131','Brooklyn Heights','Columbus','OH','43201',39.96120000,-82.99880000,1),(35,35,'Acorn Dr','3232','Golden Gate','Phoenix','AZ','85004',33.44840000,-112.07400000,1),(36,36,'Tamarind Rd','3333','Clearview','Las Vegas','NV','89109',36.16990000,-115.13980000,1),(37,37,'Grape St','3434','Sunset Ridge','Chicago','IL','60611',41.87810000,-87.62980000,1),(38,38,'Cedarwood Ave','3535','Maplewood','Denver','CO','80203',39.73920000,-104.99030000,1),(39,39,'Holly St','3636','Sunshine Valley','San Diego','CA','92101',32.71570000,-117.16110000,1),(40,40,'Bamboo Dr','3737','Blue Ridge','Los Angeles','CA','90001',34.05220000,-118.24370000,1),(41,41,'Cypress Rd','3838','Silver Springs','Austin','TX','73301',30.26720000,-97.74310000,1),(42,42,'Mulberry Ln','3939','Cedar Valley','New York','NY','10001',40.71280000,-74.00600000,1),(43,43,'Peach Ave','4040','Eastlake','Houston','TX','77001',29.76040000,-95.36980000,1),(44,44,'Ivy St','4141','Riverside Park','San Francisco','CA','94111',37.77490000,-122.41940000,1),(45,45,'Rose Blvd','4242','Lakeshore Estates','Dallas','TX','75201',32.77670000,-96.79700000,1),(46,46,'Thorn Ave','4343','Golden Gate Heights','Seattle','WA','98101',47.60620000,-122.33210000,1),(47,47,'Lily Dr','4444','Riverwood','San Jose','CA','95113',37.77490000,-122.41940000,1),(48,48,'Lilac St','4545','Shady Acres','Phoenix','AZ','85001',33.44840000,-112.07400000,1),(49,49,'Tulip Rd','4646','Sunnybrook Hills','Miami','FL','33101',25.76170000,-80.19180000,1),(50,50,'Orchid Ln','4747','Woodland Heights','Los Angeles','CA','90001',34.05220000,-118.24370000,1),(59,52,'Circuito El Capulín','197','Residencial del Parque','Aguascalientes','Aguascalientes','20277',21.85145193,-102.28029763,1),(61,53,'Calle Acacia','516','Las Arboledas','Aguascalientes','Aguascalientes','20020',21.89761921,-102.30123013,1),(63,52,'Circuito El Capulín','198','Residencial del Parque ','Aguascalientes City','Aguascalientes','20277',21.85147926,-102.28053772,1),(64,55,'Carretera Villa Garcia','123','Col. Nueva','Villa García','Zacatecas','98900',22.15690306,-101.95571065,1);
/*!40000 ALTER TABLE `DIRECCION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `DIRECCION1`
--

DROP TABLE IF EXISTS `DIRECCION1`;
/*!50001 DROP VIEW IF EXISTS `DIRECCION1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DIRECCION1` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `calle`,
 1 AS `numero`,
 1 AS `colonia`,
 1 AS `ciudad`,
 1 AS `estado`,
 1 AS `codigo_postal`,
 1 AS `latitud`,
 1 AS `longitud`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DIRECCION2`
--

DROP TABLE IF EXISTS `DIRECCION2`;
/*!50001 DROP VIEW IF EXISTS `DIRECCION2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DIRECCION2` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `calle`,
 1 AS `numero`,
 1 AS `colonia`,
 1 AS `ciudad`,
 1 AS `estado`,
 1 AS `codigo_postal`,
 1 AS `latitud`,
 1 AS `longitud`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DIRECCION3`
--

DROP TABLE IF EXISTS `DIRECCION3`;
/*!50001 DROP VIEW IF EXISTS `DIRECCION3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DIRECCION3` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `calle`,
 1 AS `numero`,
 1 AS `colonia`,
 1 AS `ciudad`,
 1 AS `estado`,
 1 AS `codigo_postal`,
 1 AS `latitud`,
 1 AS `longitud`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `METODO_PAGO`
--

DROP TABLE IF EXISTS `METODO_PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METODO_PAGO` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `numero_tarjeta` varchar(100) DEFAULT NULL,
  `fecha_expiracion` varchar(10) DEFAULT NULL,
  `codigo_seguridad` varchar(10) DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `METODO_PAGO_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `USUARIO` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METODO_PAGO`
--

LOCK TABLES `METODO_PAGO` WRITE;
/*!40000 ALTER TABLE `METODO_PAGO` DISABLE KEYS */;
INSERT INTO `METODO_PAGO` VALUES (1,1,'tarjeta de crédito','1234567812345678','2025-12-01','123',1),(2,2,'paypal','N/A','2025-12-01','N/A',1),(3,3,'tarjeta de débito','2345678923456789','2026-01-01','456',1),(4,4,'tarjeta de crédito','3456789034567890','2025-05-01','789',1),(5,5,'paypal','N/A','2025-10-01','N/A',1),(6,6,'tarjeta de débito','4567890145678901','2026-03-01','012',1),(7,7,'tarjeta de crédito','5678901256789012','2025-09-01','345',1),(8,8,'paypal','N/A','2025-07-01','N/A',1),(9,9,'tarjeta de débito','6789012367890123','2026-02-01','678',1),(10,10,'tarjeta de crédito','7890123478901234','2025-08-01','901',1),(11,11,'tarjeta de débito','8901234589012345','2026-05-01','234',1),(12,12,'paypal','N/A','2025-11-01','N/A',1),(13,13,'tarjeta de crédito','9012345690123456','2025-06-01','567',1),(14,14,'tarjeta de débito','1234567812345678','2026-08-01','890',1),(15,15,'paypal','N/A','2025-03-01','N/A',1),(16,16,'tarjeta de crédito','2345678923456789','2025-04-01','123',1),(17,17,'tarjeta de débito','3456789034567890','2026-06-01','234',1),(18,18,'paypal','N/A','2025-02-01','N/A',1),(19,19,'tarjeta de crédito','4567890145678901','2026-07-01','345',1),(20,20,'tarjeta de débito','5678901256789012','2026-09-01','456',1),(21,21,'paypal','N/A','2025-04-01','N/A',1),(22,22,'tarjeta de crédito','6789012367890123','2025-06-01','567',1),(23,23,'tarjeta de débito','7890123478901234','2026-10-01','678',1),(24,24,'paypal','N/A','2025-12-01','N/A',1),(25,25,'tarjeta de crédito','8901234589012345','2026-03-01','789',1),(26,26,'tarjeta de débito','9012345690123456','2026-11-01','012',1),(27,27,'paypal','N/A','2025-07-01','N/A',1),(28,28,'tarjeta de crédito','1234567812345678','2026-12-01','345',1),(29,29,'tarjeta de débito','2345678923456789','2025-10-01','456',1),(30,30,'paypal','N/A','2025-09-01','N/A',1),(31,31,'tarjeta de crédito','3456789034567890','2026-04-01','567',1),(32,32,'tarjeta de débito','4567890145678901','2025-06-01','678',1),(33,33,'paypal','N/A','2025-12-01','N/A',1),(34,34,'tarjeta de crédito','5678901256789012','2026-01-01','789',1),(35,35,'tarjeta de débito','6789012367890123','2026-05-01','234',1),(36,36,'paypal','N/A','2025-02-01','N/A',1),(37,37,'tarjeta de crédito','7890123478901234','2026-08-01','345',1),(38,38,'tarjeta de débito','8901234589012345','2026-10-01','456',1),(39,39,'paypal','N/A','2025-03-01','N/A',1),(40,40,'tarjeta de crédito','9012345690123456','2026-07-01','567',1),(41,41,'tarjeta de débito','1234567812345678','2026-12-01','678',1),(42,42,'paypal','N/A','2025-01-01','N/A',1),(43,43,'tarjeta de crédito','2345678923456789','2025-04-01','789',1),(44,44,'tarjeta de débito','3456789034567890','2026-03-01','012',1),(45,45,'paypal','N/A','2025-10-01','N/A',1),(46,46,'tarjeta de crédito','4567890145678901','2026-09-01','345',1),(47,47,'tarjeta de débito','5678901256789012','2025-08-01','456',1),(48,48,'paypal','N/A','2025-07-01','N/A',1),(49,49,'tarjeta de crédito','6789012367890123','2026-05-01','567',1),(50,50,'tarjeta de débito','7890123478901234','2026-12-01','678',1),(56,52,'paypal','N/A','07/26','N/A',1),(58,53,'credito','7547785425483524','05/35','548',0),(60,53,'paypal','N/A','10/25','N/A',1),(61,55,'paypal','N/A','05/24','N/A',1);
/*!40000 ALTER TABLE `METODO_PAGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `METODO_PAGO1`
--

DROP TABLE IF EXISTS `METODO_PAGO1`;
/*!50001 DROP VIEW IF EXISTS `METODO_PAGO1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `METODO_PAGO1` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `tipo`,
 1 AS `numero_tarjeta`,
 1 AS `fecha_expiracion`,
 1 AS `codigo_seguridad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `METODO_PAGO2`
--

DROP TABLE IF EXISTS `METODO_PAGO2`;
/*!50001 DROP VIEW IF EXISTS `METODO_PAGO2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `METODO_PAGO2` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `tipo`,
 1 AS `numero_tarjeta`,
 1 AS `fecha_expiracion`,
 1 AS `codigo_seguridad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `METODO_PAGO3`
--

DROP TABLE IF EXISTS `METODO_PAGO3`;
/*!50001 DROP VIEW IF EXISTS `METODO_PAGO3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `METODO_PAGO3` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `tipo`,
 1 AS `numero_tarjeta`,
 1 AS `fecha_expiracion`,
 1 AS `codigo_seguridad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PAQUETE`
--

DROP TABLE IF EXISTS `PAQUETE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAQUETE` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_paquete` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `restaurante_id` int DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `restaurante_id` (`restaurante_id`),
  CONSTRAINT `PAQUETE_ibfk_1` FOREIGN KEY (`restaurante_id`) REFERENCES `RESTAURANTE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAQUETE`
--

LOCK TABLES `PAQUETE` WRITE;
/*!40000 ALTER TABLE `PAQUETE` DISABLE KEYS */;
INSERT INTO `PAQUETE` VALUES (1,'Combo Pizza','Pizza con bebida','http://example.com/pizza.jpg',20.99,34,'2025-12-31',1,1),(2,'Combo Burger','Hamburguesa con papas','http://example.com/burger.jpg',15.50,25,'2025-06-30',2,1),(3,'Combo Taco','Tacos con salsa','http://example.com/taco.jpg',10.99,35,'2025-11-30',3,1),(4,'Combo Pasta','Pasta con carne','http://example.com/pasta.jpg',25.00,35,'2025-08-15',4,1),(5,'Combo Sushi','Sushi con arroz','http://example.com/sushi.jpg',30.99,44,'2025-07-20',5,1),(6,'Combo Sandwich','Sándwich con bebida','http://example.com/sandwich.jpg',12.50,40,'2025-05-10',6,1),(7,'Combo Salad','Ensalada de pollo','http://example.com/salad.jpg',18.00,45,'2025-09-25',7,1),(8,'Combo Ribs','Costillas a la parrilla','http://example.com/ribs.jpg',40.99,29,'2025-10-01',8,1),(9,'Combo Burrito','Burrito con guacamole','http://example.com/burrito.jpg',14.50,60,'2025-04-10',9,1),(10,'Combo Chicken','Pollo frito con papas','http://example.com/chicken.jpg',22.00,50,'2025-06-05',10,1),(11,'Combo Fish','Pescado frito con arroz','http://example.com/fish.jpg',20.99,30,'2025-07-01',11,1),(12,'Combo Fries','Papas fritas con salsa','http://example.com/fries.jpg',6.99,70,'2025-03-25',12,1),(13,'Combo Veggie','Ensalada vegetariana','http://example.com/veggie.jpg',15.00,40,'2025-09-15',13,1),(14,'Combo Hotdog','Hotdog con cebolla caramelizada','http://example.com/hotdog.jpg',8.99,50,'2025-11-01',14,1),(15,'Combo Wrap','Wrap de pollo y vegetales','http://example.com/wrap.jpg',13.50,40,'2025-07-20',15,1),(16,'Combo Donuts','Donas rellenas','http://example.com/donuts.jpg',9.99,58,'2025-05-05',16,1),(17,'Combo Ice Cream','Helado con chocolate','http://example.com/icecream.jpg',5.99,80,'2025-08-10',17,1),(18,'Combo BBQ','Barbacoa con papas fritas','http://example.com/bbq.jpg',24.99,25,'2025-06-25',18,1),(19,'Combo Steak','Filete a la parrilla','http://example.com/steak.jpg',35.99,20,'2025-09-01',19,1),(20,'Combo Fries & Shake','Papas fritas con batido','http://example.com/fries_shake.jpg',12.00,45,'2025-07-15',20,1),(21,'Combo Nachos','Nachos con queso y carne','http://example.com/nachos.jpg',18.50,60,'2025-06-10',21,1),(22,'Combo Tofu','Tofu a la parrilla','http://example.com/tofu.jpg',17.00,35,'2025-10-20',22,1),(23,'Combo Wings','Alitas de pollo con salsa','http://example.com/wings.jpg',25.50,40,'2025-11-05',23,1),(24,'Combo Veggie Burger','Hamburguesa vegetariana','http://example.com/veggie_burger.jpg',14.00,50,'2025-12-01',24,1),(25,'Combo Poke','Poke bowl de atún','http://example.com/poke.jpg',19.99,30,'2025-08-25',25,1),(26,'Combo BBQ Chicken','Pollo a la barbacoa','http://example.com/bbq_chicken.jpg',22.99,40,'2025-07-30',26,1),(27,'Combo Chicken Wings','Alitas de pollo con papas','http://example.com/chicken_wings.jpg',16.50,55,'2025-09-10',27,1),(28,'Combo Veggie Pizza','Pizza vegetariana','http://example.com/veggie_pizza.jpg',20.00,60,'2025-12-10',28,1),(29,'Combo Beef','Carne con papas y ensalada','http://example.com/beef.jpg',28.99,30,'2025-11-20',29,1),(30,'Combo Sausage','Salchichas con mostaza','http://example.com/sausage.jpg',13.50,40,'2025-10-15',30,1),(31,'Combo Tacos','Tacos al pastor','http://example.com/tacos.jpg',12.99,45,'2025-08-05',31,1),(32,'Combo Shrimp','Camarones al ajillo','http://example.com/shrimp.jpg',27.00,30,'2025-09-30',32,1),(33,'Combo Burger Deluxe','Hamburguesa deluxe','http://example.com/burger_deluxe.jpg',18.99,60,'2025-12-05',33,1),(34,'Combo Falafel','Falafel con hummus','http://example.com/falafel.jpg',14.00,50,'2025-11-10',34,1),(35,'Combo Quesadilla','Quesadilla de pollo','http://example.com/quesadilla.jpg',13.00,50,'2025-07-01',35,1),(36,'Combo Grilled Cheese','Sándwich de queso','http://example.com/grilled_cheese.jpg',7.99,70,'2025-05-20',36,1),(37,'Combo Chicken Tenders','Tiras de pollo','http://example.com/chicken_tenders.jpg',15.00,60,'2025-09-05',37,1),(38,'Combo Philly','Philly cheesesteak','http://example.com/philly.jpg',22.00,40,'2025-08-20',38,1),(39,'Combo Sausage Pizza','Pizza de salchicha','http://example.com/sausage_pizza.jpg',24.50,35,'2025-12-01',39,1),(40,'Combo Fish & Chips','Pescado con papas fritas','http://example.com/fish_chips.jpg',19.99,50,'2025-07-15',40,1),(41,'Combo Meatball','Albóndigas con espagueti','http://example.com/meatball.jpg',23.00,30,'2025-06-05',41,1),(42,'Combo Pita','Pita de pollo','http://example.com/pita.jpg',12.00,45,'2025-09-10',42,1),(43,'Combo Caesar Salad','Ensalada César','http://example.com/caesar.jpg',9.99,60,'2025-07-30',43,1),(44,'Combo Mediterranean','Ensalada mediterránea','http://example.com/mediterranean.jpg',16.00,50,'2025-08-10',44,1),(45,'Combo Veggie Wrap','Wrap vegetariano','http://example.com/veggie_wrap.jpg',13.99,40,'2025-10-05',45,1),(46,'Combo Roast Beef','Roast beef con papas','http://example.com/roast_beef.jpg',28.00,30,'2025-09-15',46,1),(47,'Combo Meatball Sandwich','Sándwich de albóndigas','http://example.com/meatball_sandwich.jpg',14.50,40,'2025-12-20',47,1),(48,'Combo Seafood','Mariscos con arroz','http://example.com/seafood.jpg',26.50,30,'2025-06-15',48,1),(49,'Combo BBQ Ribs','Costillas BBQ','http://example.com/bbq_ribs.jpg',32.99,25,'2025-11-10',49,1),(50,'Combo Chicken Parmesan','Pollo parmesano','http://example.com/chicken_parmesan.jpg',22.50,35,'2025-08-25',50,1),(51,'Paktkses','3 Pizzas','/uploads/1748650062824.jpeg',399.00,7,'2025-05-31',52,1),(227,'Paquete Familiar Fogón','Incluye 4 platillos tradicionales, postre y bebidas','fogon_familiar.jpg',299.99,20,'2024-12-31',1,1),(228,'Menú Degustación Terraza','5 tiempos de especialidades del mar','terraza_degustacion.jpg',499.50,15,'2024-11-30',2,1),(229,'Comida Tradicional para 2','Platillos típicos para dos personas','tradicional_2p.jpg',199.00,30,'2025-01-15',3,1),(230,'Parrillada Completa','Carnes selectas, guarniciones y salsas','parrillada_completa.jpg',349.99,25,'2024-12-15',4,1),(231,'Experiencia Oriental','Selección de los mejores platillos asiáticos','experiencia_oriental.jpg',279.50,18,'2025-02-28',5,1),(232,'Café y Postres','Selección de cafés especiales con postres','cafe_postres.jpg',149.99,40,'2025-03-31',6,1),(233,'Pizza Familiar Napoli','2 pizzas grandes + bebidas','pizza_familiar.jpg',229.00,35,'2024-11-20',7,1),(234,'Sushi Party','40 piezas de sushi variado','sushi_party.jpg',399.00,12,'2024-12-10',8,1),(235,'Taco Lover','12 tacos surtidos con guarniciones','taco_lover.jpg',159.99,50,'2025-01-10',9,1),(236,'Helado x4','4 helados artesanales de sabores','helado_x4.jpg',129.50,60,'2024-10-31',10,1),(237,'Mariscada Especial','Variedad de mariscos frescos para 4 personas','mariscada_especial.jpg',599.00,10,'2024-11-15',11,1),(238,'Corte Premium + Vino','Corte de carne premium con botella de vino','corte_vino.jpg',449.99,15,'2025-02-15',12,1),(239,'Menú Vegano Completo','3 tiempos de comida 100% vegetal','vegano_completo.jpg',229.50,25,'2025-03-15',13,1),(240,'Panadería en Casa','Selección de panes y pasteles','panaderia_casa.jpg',179.00,30,'2024-12-05',14,1),(241,'Cata de Cervezas','5 cervezas artesanales con botanas','cata_cervezas.jpg',249.99,20,'2025-01-31',15,1),(242,'Postres Gourmet','Selección de 4 postres finos','postres_gourmet.jpg',199.50,25,'2024-11-25',16,1),(243,'Combo Rápido','Hamburguesa, papas y refresco','combo_rapido.jpg',99.99,100,'2025-04-30',17,1),(244,'Sabores de la Infancia','Platillos tradicionales como los hacía la abuela','sabores_infancia.jpg',179.00,40,'2025-02-20',18,1),(245,'Pasta x2','2 pastas seleccionadas con bebidas','pasta_x2.jpg',219.50,30,'2024-12-20',19,1),(246,'Wok para Compartir','Gran wok con ingredientes surtidos','wok_compartir.jpg',259.99,20,'2025-01-05',20,1),(247,'Experiencia Cafetera','Cafés del mundo con acompañamientos','experiencia_cafetera.jpg',179.00,35,'2025-03-20',21,1),(248,'Burger Extravaganza','Hamburguesa gourmet con extras','burger_extravaganza.jpg',159.99,45,'2024-11-10',22,1),(249,'Pollo Completo','Pollo entero con guarniciones','pollo_completo.jpg',189.50,30,'2025-02-10',23,1),(250,'Antojitos Mexicanos','Variedad de antojitos para 4 personas','antojitos_mexicanos.jpg',249.99,25,'2024-12-25',24,1),(251,'Sandwich Club','3 tipos de sandwich premium','sandwich_club.jpg',169.00,40,'2025-01-20',25,1),(252,'Ensalada Fresca','Ensalada grande con proteína','ensalada_fresca.jpg',139.50,50,'2025-04-15',26,1),(253,'Crepes Dulces','4 crepes de sabores dulces','crepes_dulces.jpg',149.99,35,'2024-11-30',27,1),(254,'Té del Mundo','Selección de tés internacionales','te_mundo.jpg',129.00,30,'2025-03-10',28,1),(255,'Asado Argentino','Cortes argentinos con chimichurri','asado_argentino.jpg',379.99,15,'2024-12-18',29,1),(256,'Sushi Deluxe','Piezas premium de sushi y sashimi','sushi_deluxe.jpg',459.50,12,'2025-02-05',30,1),(257,'Tapas Españolas','Selección de 6 tapas tradicionales','tapas_espanolas.jpg',279.99,20,'2024-11-20',31,1),(258,'Café y Pan','Café especial con pan recién horneado','cafe_pan.jpg',119.00,60,'2025-03-05',32,1),(259,'Pizza al Carbón','Pizza grande estilo tradicional','pizza_carbon.jpg',199.50,40,'2024-12-08',33,1),(260,'Tacos Variados','10 tacos de diferentes guisos','tacos_variados.jpg',179.99,50,'2025-01-15',34,1),(261,'Helado Artesanal','3 bolas de helado artesanal','helado_artesanal.jpg',109.00,80,'2024-10-20',35,1),(262,'Mariscos Frescos','Selección del día de mariscos','mariscos_frescos.jpg',349.50,15,'2024-11-25',36,1),(263,'Carnes Selectas','3 cortes premium con guarniciones','carnes_selectas.jpg',429.99,18,'2025-02-28',37,1),(264,'Menú Vegano','Platillos 100% vegetales balanceados','menu_vegano.jpg',209.00,30,'2025-03-31',38,1),(265,'Pan Integral','Selección de panes integrales y saludables','pan_integral.jpg',139.50,45,'2024-12-31',39,1),(266,'Cerveza Artesanal','6 cervezas artesanales diferentes','cerveza_artesanal.jpg',299.99,25,'2025-01-31',40,1),(267,'Postres Clásicos','3 postres tradicionales','postres_clasicos.jpg',169.00,35,'2024-11-15',41,1),(268,'Combo Express','Comida rápida completa','combo_express.jpg',129.50,70,'2025-04-20',42,1),(269,'Comida Casera','Platillos como en casa','comida_casera.jpg',189.99,40,'2025-02-15',43,1),(270,'Pasta Italiana','Pasta fresca con salsa tradicional','pasta_italiana.jpg',219.00,30,'2024-12-22',44,1),(271,'Wok Oriental','Wok con ingredientes orientales','wok_oriental.jpg',239.50,25,'2025-01-25',45,1),(272,'Café Especial','Café gourmet con acompañamiento','cafe_especial.jpg',149.99,50,'2025-03-15',46,1),(273,'Hamburguesa Gourmet','Hamburguesa premium con extras','hamburguesa_gourmet.jpg',179.00,45,'2024-11-05',47,1),(274,'Pollo Crujiente','Pollo estilo original con papas','pollo_crujiente.jpg',199.50,35,'2025-02-25',48,1),(275,'Mexican Fiesta','Variedad de platillos mexicanos','mexican_fiesta.jpg',299.99,20,'2024-12-28',49,1),(276,'Sandwich Gourmet','Sandwich premium con ingredientes selectos','sandwich_gourmet.jpg',159.00,40,'2025-01-10',50,1),(277,'Ensalada Premium','Ensalada con ingredientes gourmet','ensalada_premium.jpg',169.50,30,'2025-04-10',51,1),(278,'Crepes Salados','3 crepes de sabores salados','crepes_salados.jpg',179.99,25,'2024-11-18',52,1),(279,'Té Premium','Selección de tés de alta calidad','te_premium.jpg',139.00,35,'2025-03-25',53,1),(280,'Asado Premium','Cortes selectos al carbón','asado_premium.jpg',499.50,12,'2024-12-12',54,1),(281,'Sushi Experience','Experiencia completa de sushi','sushi_experience.jpg',529.99,10,'2025-02-08',55,1),(282,'Tapas Gourmet','Tapas elaboradas con ingredientes finos','tapas_gourmet.jpg',329.00,18,'2024-11-22',56,1),(283,'Café Premium','Café de especialidad con postre','cafe_premium.jpg',159.50,40,'2025-03-08',57,1),(284,'Pizza Gourmet','Pizza con ingredientes selectos','pizza_gourmet.jpg',249.99,30,'2024-12-05',58,1),(285,'Tacos Gourmet','Tacos con ingredientes premium','tacos_gourmet.jpg',219.00,35,'2025-01-18',59,1),(286,'Helado Gourmet','Helado artesanal premium','helado_gourmet.jpg',149.50,50,'2024-10-25',60,1),(287,'Mariscos Premium','Selección de los mejores mariscos','mariscos_premium.jpg',449.99,12,'2024-11-28',61,1),(288,'Carnes Nobles','Cortes de primera calidad','carnes_nobles.jpg',479.00,15,'2025-02-20',62,1),(289,'Veggie Delight','Platillos vegetarianos gourmet','veggie_delight.jpg',239.50,25,'2025-03-28',63,1),(290,'Pan de Autor','Panes artesanales especiales','pan_autor.jpg',169.99,40,'2024-12-15',64,1),(291,'Cerveza Premium','Selección de cervezas importadas','cerveza_premium.jpg',349.00,20,'2025-01-28',65,1),(292,'Postres de Autor','Postres creados por nuestro chef','postres_autor.jpg',199.50,30,'2024-11-12',66,1),(293,'Combo Familiar','Comida para toda la familia','combo_familiar.jpg',379.99,25,'2025-04-05',67,1),(294,'Sabores Tradicionales','Platillos tradicionales completos','sabores_tradicionales.jpg',229.00,35,'2025-02-18',68,1),(295,'Pasta Casera','Pasta como la hacía la nonna','pasta_casera.jpg',209.50,30,'2024-12-24',69,1),(296,'Wok Especial','Wok con ingredientes especiales','wok_especial.jpg',269.99,20,'2025-01-08',70,1),(297,'Café del Mundo','Variedad de cafés internacionales','cafe_mundo.jpg',179.00,45,'2025-03-18',71,1),(298,'Burger Especial','Hamburguesa con ingredientes exclusivos','burger_especial.jpg',189.50,40,'2024-11-08',72,1),(299,'Pollo Especial','Pollo con receta secreta','pollo_especial.jpg',219.99,30,'2025-02-12',73,1),(300,'Mexican Especial','Platillos mexicanos gourmet','mexican_especial.jpg',279.00,22,'2024-12-30',74,1),(301,'Sandwich Especial','Sandwich con ingredientes selectos','sandwich_especial.jpg',169.50,38,'2025-01-12',75,1),(302,'Ensalada Especial','Ensalada con ingredientes exclusivos','ensalada_especial.jpg',179.99,32,'2025-04-08',76,1),(303,'Crepes Especiales','Crepes con rellenos gourmet','crepes_especiales.jpg',189.00,28,'2024-11-15',77,1),(304,'Té Especial','Blend exclusivo de tés','te_especial.jpg',149.50,35,'2025-03-22',78,1),(305,'Asado Especial','Cortes premium al carbón','asado_especial.jpg',429.99,14,'2024-12-10',79,1),(306,'Sushi Especial','Piezas de sushi exclusivas','sushi_especial.jpg',489.00,10,'2025-02-03',80,1),(307,'Tapas Especiales','Selección de tapas gourmet','tapas_especiales.jpg',299.50,18,'2024-11-25',81,1),(308,'Café Exclusivo','Café de edición limitada','cafe_exclusivo.jpg',169.99,30,'2025-03-12',82,1),(309,'Pizza Exclusiva','Pizza con ingredientes únicos','pizza_exclusiva.jpg',269.00,25,'2024-12-03',83,1),(310,'Tacos Exclusivos','Tacos con ingredientes premium','tacos_exclusivos.jpg',239.50,30,'2025-01-22',84,1),(311,'Helado Exclusivo','Helado con sabores únicos','helado_exclusivo.jpg',159.99,45,'2024-10-30',85,1),(312,'Mariscos Exclusivos','Selección de mariscos raros','mariscos_exclusivos.jpg',499.00,8,'2024-11-30',86,1),(313,'Carnes Exclusivas','Cortes de res exclusivos','carnes_exclusivas.jpg',549.50,10,'2025-02-22',87,1),(314,'Veggie Exclusivo','Platillos vegetarianos únicos','veggie_exclusivo.jpg',259.99,20,'2025-03-30',88,1),(315,'Pan Exclusivo','Panes de edición limitada','pan_exclusivo.jpg',189.00,35,'2024-12-18',89,1),(316,'Cerveza Exclusiva','Cervezas de edición especial','cerveza_exclusiva.jpg',379.50,15,'2025-01-30',90,1),(317,'Postres Exclusivos','Postres creados para gourmets','postres_exclusivos.jpg',219.99,25,'2024-11-10',91,1),(318,'Combo Exclusivo','Experiencia culinaria completa','combo_exclusivo.jpg',429.00,12,'2025-04-12',92,1),(319,'Sabores Exclusivos','Platillos con sabores únicos','sabores_exclusivos.jpg',279.50,18,'2025-02-14',93,1),(320,'Pasta Exclusiva','Pasta con ingredientes raros','pasta_exclusiva.jpg',249.99,22,'2024-12-26',94,1),(321,'Wok Exclusivo','Wok con ingredientes premium','wok_exclusivo.jpg',299.00,15,'2025-01-05',95,1),(322,'Café Superior','Los mejores granos del mundo','cafe_superior.jpg',189.50,40,'2025-03-14',96,1),(323,'Burger Superior','Hamburguesa con los mejores ingredientes','burger_superior.jpg',209.99,35,'2024-11-03',97,1),(324,'Pollo Superior','Pollo con técnica gourmet','pollo_superior.jpg',239.00,28,'2025-02-07',98,1),(325,'Mexican Superior','Alta cocina mexicana','mexican_superior.jpg',329.50,15,'2024-12-31',99,1),(326,'Sandwich Superior','Sandwich con técnica gourmet','sandwich_superior.jpg',179.99,32,'2025-01-14',100,1),(327,'Ensalada Superior','Ensalada con ingredientes gourmet','ensalada_superior.jpg',189.00,30,'2025-04-03',101,1),(328,'Crepes Superiores','Crepes con técnica profesional','crepes_superiores.jpg',199.50,25,'2024-11-17',102,1),(329,'Té Superior','Los mejores tés del mundo','te_superior.jpg',159.99,35,'2025-03-24',103,1),(330,'Asado Superior','Cortes de primera al carbón','asado_superior.jpg',479.00,12,'2024-12-08',104,1),(331,'Sushi Superior','Sushi con los mejores ingredientes','sushi_superior.jpg',549.50,8,'2025-02-01',105,1),(332,'Tapas Superiores','Tapas de alta cocina','tapas_superiores.jpg',349.99,15,'2024-11-28',106,1),(333,'Café de Lujo','Experiencia cafetera premium','cafe_lujo.jpg',199.00,30,'2025-03-10',107,1),(334,'Pizza de Lujo','Pizza con ingredientes de lujo','pizza_lujo.jpg',299.50,20,'2024-12-01',108,1),(335,'Tacos de Lujo','Tacos con ingredientes premium','tacos_lujo.jpg',259.99,25,'2025-01-24',109,1),(336,'Helado de Lujo','Helado con ingredientes exclusivos','helado_lujo.jpg',169.00,40,'2024-10-28',110,1),(337,'Mariscos de Lujo','Los mariscos más finos','mariscos_lujo.jpg',529.50,10,'2024-11-27',111,1),(338,'Carnes de Lujo','Cortes de primera calidad','carnes_lujo.jpg',579.99,8,'2025-02-24',112,1),(339,'Veggie de Lujo','Gastronomía vegetariana gourmet','veggie_lujo.jpg',279.00,18,'2025-03-29',113,1),(340,'Pan de Lujo','Panes gourmet artesanales','pan_lujo.jpg',199.50,30,'2024-12-20',114,1),(341,'Cerveza de Lujo','Cervezas premium internacionales','cerveza_lujo.jpg',399.99,12,'2025-01-29',115,1),(342,'Postres de Lujo','Postres de alta repostería','postres_lujo.jpg',229.00,22,'2024-11-08',116,1),(343,'Combo de Lujo','Experiencia gastronómica completa','combo_lujo.jpg',479.50,10,'2025-04-10',117,1),(344,'Sabores de Lujo','Platillos gourmet exclusivos','sabores_lujo.jpg',329.99,15,'2025-02-16',118,1),(345,'Pasta de Lujo','Pasta con ingredientes premium','pasta_lujo.jpg',269.00,20,'2024-12-28',119,1),(346,'Wok de Lujo','Wok con ingredientes gourmet','wok_lujo.jpg',319.50,12,'2025-01-03',120,1),(347,'Café Distinguido','Café para conocedores','cafe_distinguido.jpg',209.99,35,'2025-03-16',121,1),(348,'Burger Distinguido','Hamburguesa para gourmets','burger_distinguido.jpg',229.00,30,'2024-11-01',122,1),(349,'Pollo Distinguido','Pollo con técnica profesional','pollo_distinguido.jpg',249.50,25,'2025-02-05',123,1),(350,'Mexican Distinguido','Cocina mexicana gourmet','mexican_distinguido.jpg',349.99,12,'2024-12-25',124,1),(351,'Sandwich Distinguido','Sandwich con ingredientes selectos','sandwich_distinguido.jpg',189.00,30,'2025-01-16',125,1),(352,'Ensalada Distinguida','Ensalada con ingredientes gourmet','ensalada_distinguida.jpg',199.50,28,'2025-04-01',126,1),(353,'Crepes Distinguidos','Crepes con técnica profesional','crepes_distinguidos.jpg',209.99,22,'2024-11-19',127,1),(354,'Té Distinguido','Tés para conocedores','te_distinguido.jpg',169.00,32,'2025-03-26',128,1),(355,'Asado Distinguido','Cortes selectos al carbón','asado_distinguido.jpg',499.50,10,'2024-12-06',129,1),(356,'Sushi Distinguido','Sushi para paladares exigentes','sushi_distinguido.jpg',569.99,8,'2025-01-31',130,1),(357,'Tapas Distinguidas','Tapas de alta cocina','tapas_distinguidas.jpg',369.00,14,'2024-11-30',131,1),(358,'Café Excepcional','Café de edición especial','cafe_excepcional.jpg',219.50,30,'2025-03-08',132,1),(359,'Pizza Excepcional','Pizza con ingredientes únicos','pizza_excepcional.jpg',319.99,18,'2024-12-02',133,1),(360,'Tacos Excepcionales','Tacos gourmet','tacos_excepcionales.jpg',279.00,22,'2025-01-26',134,1),(361,'Helado Excepcional','Helado artesanal premium','helado_excepcional.jpg',179.50,38,'2024-10-27',135,1),(362,'Mariscos Excepcionales','Los mejores productos del mar','mariscos_excepcionales.jpg',549.99,9,'2024-11-26',136,1),(363,'Carnes Excepcionales','Cortes de res excepcionales','carnes_excepcionales.jpg',599.00,7,'2025-02-26',137,1),(364,'Veggie Excepcional','Gastronomía vegetariana fina','veggie_excepcional.jpg',289.50,16,'2025-03-27',138,1),(365,'Pan Excepcional','Panes artesanales especiales','pan_excepcional.jpg',209.99,28,'2024-12-22',139,1),(366,'Cerveza Excepcional','Cervezas de edición limitada','cerveza_excepcional.jpg',429.00,10,'2025-01-27',140,1),(367,'Postres Excepcionales','Postres de alta repostería','postres_excepcionales.jpg',239.50,20,'2024-11-06',141,1),(368,'Combo Excepcional','Menú degustación completo','combo_excepcional.jpg',499.99,8,'2025-04-14',142,1),(369,'Sabores Excepcionales','Platillos con sabores únicos','sabores_excepcionales.jpg',339.00,12,'2025-02-17',143,1),(370,'Pasta Excepcional','Pasta con ingredientes gourmet','pasta_excepcional.jpg',279.50,18,'2024-12-30',144,1),(371,'Wok Excepcional','Wok con ingredientes selectos','wok_excepcional.jpg',329.99,10,'2025-01-02',145,1),(372,'Café Elegante','Café para ocasiones especiales','cafe_elegante.jpg',229.00,32,'2025-03-17',146,1),(373,'Burger Elegante','Hamburguesa gourmet','burger_elegante.jpg',249.50,28,'2024-11-04',147,1),(374,'Pollo Elegante','Pollo con técnica gourmet','pollo_elegante.jpg',269.99,22,'2025-02-09',148,1),(375,'Mexican Elegante','Alta cocina mexicana','mexican_elegante.jpg',379.00,10,'2024-12-27',149,1),(376,'Sandwich Elegante','Sandwich con ingredientes finos','sandwich_elegante.jpg',199.50,30,'2025-01-17',150,1),(377,'Ensalada Elegante','Ensalada gourmet','ensalada_elegante.jpg',209.99,25,'2025-04-02',151,1),(378,'Crepes Elegantes','Crepes con rellenos gourmet','crepes_elegantes.jpg',219.00,20,'2024-11-21',152,1),(379,'Té Elegante','Tés finos seleccionados','te_elegante.jpg',179.50,30,'2025-03-28',153,1),(380,'Asado Elegante','Cortes premium al carbón','asado_elegante.jpg',519.99,9,'2024-12-07',154,1),(381,'Sushi Elegante','Sushi con ingredientes selectos','sushi_elegante.jpg',589.00,7,'2025-02-02',155,1),(382,'Tapas Elegantes','Tapas de alta cocina','tapas_elegantes.jpg',389.50,12,'2024-12-01',156,1),(383,'Café Distinguido','Café para paladares exigentes','cafe_distinguido.jpg',239.99,28,'2025-03-09',157,1),(384,'Pizza Distinguida','Pizza con ingredientes gourmet','pizza_distinguida.jpg',339.00,15,'2024-12-04',158,1),(385,'Tacos Distinguidos','Tacos con ingredientes premium','tacos_distinguidos.jpg',299.50,20,'2025-01-27',159,1),(386,'Helado Distinguido','Helado artesanal gourmet','helado_distinguido.jpg',189.99,35,'2024-10-26',160,1),(387,'Mariscos Distinguidos','Selección de mariscos gourmet','mariscos_distinguidos.jpg',569.00,8,'2024-11-29',161,1),(388,'Carnes Distinguidas','Cortes de res premium','carnes_distinguidas.jpg',619.50,6,'2025-02-27',162,1),(389,'Veggie Distinguido','Gastronomía vegetariana gourmet','veggie_distinguido.jpg',309.99,14,'2025-03-31',163,1),(390,'Pan Distinguido','Panes artesanales gourmet','pan_distinguido.jpg',219.00,25,'2024-12-23',164,1),(391,'Cerveza Distinguida','Cervezas premium selectas','cerveza_distinguida.jpg',449.50,9,'2025-01-26',165,1),(392,'Postres Distinguidos','Postres de alta repostería','postres_distinguidos.jpg',249.99,18,'2024-11-07',166,1),(393,'Combo Distinguido','Experiencia gastronómica premium','combo_distinguido.jpg',529.00,7,'2025-04-16',167,1),(394,'Sabores Distinguidos','Platillos gourmet exclusivos','sabores_distinguidos.jpg',359.50,10,'2025-02-19',168,1),(395,'Pasta Distinguida','Pasta con ingredientes selectos','pasta_distinguida.jpg',289.99,15,'2024-12-29',169,1),(396,'Wok Distinguido','Wok con ingredientes gourmet','wok_distinguido.jpg',349.00,8,'2025-01-04',170,1),(397,'Café Superior','Los mejores granos del mundo','cafe_superior.jpg',249.50,30,'2025-03-19',171,1),(398,'Burger Superior','Hamburguesa con ingredientes premium','burger_superior.jpg',269.99,25,'2024-11-02',172,1),(399,'Pollo Superior','Pollo con técnica profesional','pollo_superior.jpg',289.00,20,'2025-02-11',173,1),(400,'Mexican Superior','Cocina mexicana gourmet','mexican_superior.jpg',399.50,9,'2024-12-24',174,1),(401,'Sandwich Superior','Sandwich con ingredientes selectos','sandwich_superior.jpg',209.99,28,'2025-01-19',175,1),(402,'Paquete Brunch','Desayuno y almuerzo combinado perfecto','brunch_package.jpg',229.99,25,'2025-06-15',176,1),(403,'Especial Chef','Selección personalizada del chef','chef_special.jpg',349.50,15,'2025-07-20',177,1),(404,'Menú Degustación','Pequeñas porciones de varios platillos','tasting_menu.jpg',429.99,12,'2025-08-10',178,1),(405,'Paquete Picnic','Todo lo necesario para un día al aire libre','picnic_set.jpg',279.00,20,'2025-05-30',179,1),(406,'Comida Rápida Saludable','Opciones rápidas pero nutritivas','healthy_fast.jpg',189.50,35,'2025-06-25',180,1),(407,'Especial Vegetariano','Deliciosas opciones sin carne','vegetarian_special.jpg',239.99,28,'2025-07-15',181,1),(408,'Paquete Familiar Económico','Comida para toda la familia a buen precio','family_economy.jpg',199.00,40,'2025-08-05',182,1),(409,'Menú Ejecutivo Ligero','Opciones ligeras para el almuerzo','light_executive.jpg',179.50,30,'2025-05-20',183,1),(410,'Cena Gourmet','Experiencia culinaria de alta gama','gourmet_dinner.jpg',499.99,10,'2025-06-30',184,1),(411,'Paquete Desayuno Continental','Desayuno clásico estilo europeo','continental.jpg',159.00,50,'2025-07-25',185,1),(412,'Especial Mariscos','Lo mejor del mar fresco','seafood_special.jpg',379.50,15,'2025-08-15',186,1),(413,'Menú Infantil Divertido','Comida atractiva para niños','kids_fun.jpg',149.99,45,'2025-05-25',187,1),(414,'Paquete Romántico','Cena para dos con ambiente especial','romantic_set.jpg',349.00,12,'2025-06-20',188,1),(415,'Comida Para Llevar','Pide y recoge fácilmente','takeaway.jpg',169.50,60,'2025-07-10',189,1),(416,'Especial de Temporada','Ingredientes frescos de temporada','seasonal.jpg',259.99,22,'2025-08-20',190,1),(417,'Paquete Fitness','Comida balanceada para deportistas','fitness.jpg',209.50,30,'2025-05-15',191,1),(418,'Menú Saludable','Opciones bajas en calorías','healthy.jpg',199.00,35,'2025-06-10',192,1),(419,'Cena Familiar','Reúne a toda la familia','family_dinner.jpg',299.50,25,'2025-07-05',193,1),(420,'Paquete Desayuno Americano','Desayuno abundante estilo americano','american_breakfast.jpg',179.99,40,'2025-08-10',194,1),(421,'Especial Carnes','Los mejores cortes de carne','meat_special.jpg',329.50,18,'2025-05-30',195,1),(422,'Menú Express','Comida rápida de calidad','express.jpg',159.00,55,'2025-06-25',196,1),(423,'Paquete Vegano','Delicias 100% vegetales','vegan.jpg',229.99,25,'2025-07-20',197,1),(424,'Comida Tradicional','Platillos clásicos de la región','traditional.jpg',189.50,38,'2025-08-15',198,1),(425,'Especial Internacional','Sabores de todo el mundo','international.jpg',279.00,20,'2025-05-20',199,1),(426,'Paquete Light','Opciones bajas en calorías','light.jpg',169.99,42,'2025-06-15',200,1),(427,'Menú Ejecutivo Premium','Almuerzo de negocios mejorado','executive_premium.jpg',249.50,25,'2025-07-10',201,1),(428,'Cena de Lujo','Experiencia gastronómica exclusiva','luxury_dinner.jpg',599.00,8,'2025-08-05',202,1),(429,'Paquete Desayuno Saludable','Energía para empezar el día','healthy_breakfast.jpg',149.99,50,'2025-05-25',203,1),(430,'Especial Pasta','Variedad de pastas artesanales','pasta_special.jpg',239.50,30,'2025-06-20',204,1),(431,'Menú Familiar Económico','Comida para todos sin gastar mucho','family_economy.jpg',219.00,35,'2025-07-15',205,1),(432,'Paquete Asiático','Sabores orientales auténticos','asian.jpg',269.99,22,'2025-08-10',206,1),(433,'Comida Rápida Gourmet','Fast food con ingredientes premium','gourmet_fast.jpg',199.50,40,'2025-05-15',207,1),(434,'Especial Mediterráneo','Sabores frescos del mediterráneo','mediterranean.jpg',289.00,20,'2025-06-10',208,1),(435,'Menú Vegetariano','Delicias sin carne','vegetarian.jpg',209.99,32,'2025-07-05',209,1),(436,'Paquete BBQ','Carnes a la parrilla con acompañamientos','bbq.jpg',319.50,18,'2025-08-20',210,1),(437,'Cena Ejecutiva','Perfecta para reuniones de negocios','business_dinner.jpg',279.00,25,'2025-05-30',211,1),(438,'Especial Sushi','Variedad de rolls japoneses','sushi_special.jpg',349.99,15,'2025-06-25',212,1),(439,'Paquete Desayuno Express','Desayuno rápido y nutritivo','breakfast_express.jpg',129.50,60,'2025-07-20',213,1),(440,'Menú Light Ejecutivo','Almuerzo ligero para el trabajo','light_exec.jpg',189.00,35,'2025-08-15',214,1),(441,'Comida Casera','Sabores como en casa','homestyle.jpg',179.99,45,'2025-05-20',215,1),(442,'Especial Mexicano','Auténticos sabores mexicanos','mexican.jpg',229.50,28,'2025-06-15',216,1),(443,'Paquete Italiano','Pastas, pizzas y más','italian.jpg',259.00,25,'2025-07-10',217,1),(444,'Menú de Temporada','Ingredientes frescos de temporada','seasonal_menu.jpg',239.99,22,'2025-08-05',218,1),(445,'Cena Familiar Grande','Para reuniones familiares','big_family.jpg',379.50,20,'2025-05-25',219,1),(446,'Especial Parrilla','Carnes a la parrilla premium','grill.jpg',299.00,25,'2025-06-20',220,1),(447,'Paquete Saludable','Comida balanceada y nutritiva','healthy_pack.jpg',199.99,40,'2025-07-15',221,1),(448,'Menú Express Ejecutivo','Almuerzo rápido para ejecutivos','exec_express.jpg',179.50,45,'2025-08-10',222,1),(449,'Comida Tradicional Mexicana','Platillos típicos mexicanos','mexican_trad.jpg',209.00,35,'2025-05-15',223,1),(450,'Especial Mariscos Frescos','Del mar a tu mesa','fresh_seafood.jpg',359.99,15,'2025-06-10',224,1),(451,'Paquete Desayuno Completo','Todo lo que necesitas por la mañana','full_breakfast.jpg',169.50,55,'2025-07-05',225,1),(452,'Menú Vegano Ejecutivo','Opciones vegetales para el trabajo','vegan_exec.jpg',219.00,30,'2025-08-20',226,1),(453,'Cena Íntima','Perfecta para una velada especial','intimate.jpg',329.99,12,'2025-05-30',227,1),(454,'Especial Pasta Casera','Pastas hechas a mano','homemade_pasta.jpg',249.50,28,'2025-06-25',228,1),(455,'Paquete Asiático Fusion','Sabores orientales con toque moderno','asian_fusion.jpg',279.00,22,'2025-07-20',229,1),(456,'Menú Light Familiar','Opciones saludables para todos','family_light.jpg',229.99,35,'2025-08-15',230,1),(457,'Comida Rápida Saludable','Fast food con ingredientes sanos','healthy_fastfood.jpg',189.50,50,'2025-05-20',231,1),(458,'Especial Carnes Premium','Los mejores cortes de la región','premium_meat.jpg',399.00,15,'2025-06-15',232,1),(459,'Paquete Desayuno Nutritivo','Energía para todo el día','nutritious_breakfast.jpg',159.99,60,'2025-07-10',233,1),(460,'Menú Ejecutivo Vegetariano','Almuerzo vegetal para negocios','veg_exec.jpg',199.50,32,'2025-08-05',234,1),(461,'Cena Gourmet Familiar','Experiencia gourmet para compartir','family_gourmet.jpg',449.00,18,'2025-05-25',235,1),(462,'Especial Sushi Deluxe','Los mejores rolls japoneses','sushi_deluxe.jpg',379.99,12,'2025-06-20',236,1),(463,'Paquete Mediterráneo','Sabores frescos y saludables','mediterranean_pack.jpg',269.50,25,'2025-07-15',237,1),(464,'Menú Express Saludable','Comida rápida pero nutritiva','healthy_express.jpg',179.00,45,'2025-08-10',238,1),(465,'Comida Casera Tradicional','Como la hacía la abuela','homestyle_trad.jpg',199.99,38,'2025-05-15',239,1),(466,'Especial Parrilla Argentina','Auténticas carnes argentinas','argentinian_grill.jpg',349.50,20,'2025-06-10',240,1),(467,'Paquete Desayuno Energético','Perfecto para días activos','energy_breakfast.jpg',149.00,65,'2025-07-05',241,1),(468,'Menú Ejecutivo Ligero','Almuerzo bajo en calorías','light_exec_menu.jpg',189.99,40,'2025-08-20',242,1),(469,'Cena Romántica Premium','Velada especial gourmet','premium_romantic.jpg',529.00,10,'2025-05-30',243,1),(470,'Especial Pasta Gourmet','Pastas con ingredientes selectos','gourmet_pasta.jpg',259.50,28,'2025-06-25',244,1),(471,'Paquete Asiático Deluxe','Lo mejor de la cocina oriental','asian_deluxe.jpg',299.99,20,'2025-07-20',245,1),(472,'Menú Familiar Saludable','Comida balanceada para todos','healthy_family.jpg',249.00,35,'2025-08-15',246,1),(473,'Comida Rápida Premium','Fast food con ingredientes gourmet','premium_fast.jpg',219.50,45,'2025-05-20',247,1),(474,'Especial Carnes Selectas','Cortes de primera calidad','select_meats.jpg',369.99,18,'2025-06-15',248,1),(475,'Paquete Desayuno Continental Plus','Desayuno europeo mejorado','continental_plus.jpg',179.50,55,'2025-07-10',249,1),(476,'Menú Ejecutivo Express','Almuerzo rápido para ejecutivos','exec_express_menu.jpg',169.00,50,'2025-08-05',250,1),(477,'Cena Familiar Económica','Para disfrutar sin gastar mucho','economy_family.jpg',279.99,30,'2025-05-25',176,1),(478,'Especial Sushi Premium','Piezas exclusivas de sushi','premium_sushi.jpg',329.50,15,'2025-06-20',177,1),(479,'Paquete Mediterráneo Light','Sabores ligeros del mediterráneo','med_light.jpg',239.00,28,'2025-07-15',178,1),(480,'Menú Express Vegetariano','Comida vegetal rápida','veg_express.jpg',189.99,42,'2025-08-10',179,1),(481,'Comida Casera Premium','Recetas caseras con ingredientes gourmet','premium_homestyle.jpg',229.50,35,'2025-05-15',180,1),(482,'Especial Parrilla Brasileña','Carnes estilo brasileño','brazilian_grill.jpg',319.99,20,'2025-06-10',181,1),(483,'Paquete Desayuno Americano Plus','Desayuno abundante mejorado','american_plus.jpg',199.00,50,'2025-07-05',182,1),(484,'Menú Ejecutivo Saludable','Almuerzo balanceado para el trabajo','healthy_exec.jpg',209.50,38,'2025-08-20',183,1),(485,'Cena Gourmet Íntima','Experiencia culinaria para dos','intimate_gourmet.jpg',479.00,12,'2025-05-30',184,1),(486,'Especial Pasta Artesanal','Pastas hechas a mano con amor','artisan_pasta.jpg',269.99,25,'2025-06-25',185,1),(487,'Paquete Asiático Fusion Deluxe','Lo mejor de Asia con toque moderno','asian_fusion_deluxe.jpg',349.50,18,'2025-07-20',186,1),(488,'Menú Familiar Ligero','Opciones saludables para compartir','light_family.jpg',259.00,32,'2025-08-15',187,1),(489,'Comida Rápida Gourmet Plus','Fast food con ingredientes premium','gourmet_fast_plus.jpg',239.99,40,'2025-05-20',188,1),(490,'Especial Carnes Maduradas','Cortes con proceso especial','aged_meats.jpg',389.50,15,'2025-06-15',189,1),(491,'Paquete Desayuno Power','Energía máxima por la mañana','power_breakfast.jpg',179.00,60,'2025-07-10',190,1),(492,'Menú Ejecutivo Premium Plus','Almuerzo de negocios exclusivo','exec_premium_plus.jpg',279.99,25,'2025-08-05',191,1),(493,'Cena Familiar Gourmet','Experiencia gourmet para compartir','family_gourmet_dinner.jpg',399.50,22,'2025-05-25',192,1),(494,'Especial Sushi del Chef','Creaciones exclusivas del chef','chef_sushi.jpg',359.00,12,'2025-06-20',193,1),(495,'Paquete Mediterráneo Gourmet','Sabores gourmet del mediterráneo','med_gourmet.jpg',299.99,20,'2025-07-15',194,1),(496,'Menú Express Ejecutivo Plus','Almuerzo rápido y sofisticado','exec_express_plus.jpg',199.50,45,'2025-08-10',195,1),(497,'Comida Casera Tradicional Plus','Recetas de la abuela mejoradas','homestyle_trad_plus.jpg',219.00,38,'2025-05-15',196,1),(498,'Especial Parrilla Uruguaya','Auténticas carnes uruguayas','uruguayan_grill.jpg',339.50,18,'2025-06-10',197,1),(499,'Paquete Desayuno Completo Plus','Todo lo necesario para empezar el día','full_breakfast_plus.jpg',189.99,55,'2025-07-05',198,1),(500,'Menú Ejecutivo Light Plus','Almuerzo ligero y sofisticado','light_exec_plus.jpg',219.50,35,'2025-08-20',199,1),(501,'Cena Romántica Deluxe','La mejor experiencia para parejas','romantic_deluxe.jpg',549.00,10,'2025-05-30',200,1),(502,'Especial Pasta Gourmet Plus','Pastas con los mejores ingredientes','gourmet_pasta_plus.jpg',289.99,25,'2025-06-25',201,1),(503,'Paquete Asiático Premium','Lo más selecto de la cocina asiática','asian_premium.jpg',329.50,20,'2025-07-20',202,1),(504,'Menú Familiar Saludable Plus','Comida balanceada mejorada','healthy_family_plus.jpg',269.00,32,'2025-08-15',203,1),(505,'Comida Rápida Premium Plus','Fast food con ingredientes gourmet','premium_fast_plus.jpg',249.99,42,'2025-05-20',204,1),(506,'Especial Carnes Selectas Plus','Los mejores cortes disponibles','select_meats_plus.jpg',399.50,15,'2025-06-15',205,1),(507,'Paquete Desayuno Continental Deluxe','Desayuno europeo de lujo','continental_deluxe.jpg',209.00,50,'2025-07-10',206,1),(508,'Menú Ejecutivo Express Deluxe','Almuerzo rápido pero gourmet','exec_express_deluxe.jpg',229.99,40,'2025-08-05',207,1),(509,'Cena Familiar Económica Plus','Para disfrutar en familia sin gastar mucho','economy_family_plus.jpg',299.50,35,'2025-05-25',208,1),(510,'Especial Sushi Premium Plus','Las piezas más exclusivas de sushi','premium_sushi_plus.jpg',379.00,12,'2025-06-20',209,1),(511,'Paquete Mediterráneo Light Plus','Sabores ligeros mejorados','med_light_plus.jpg',259.99,28,'2025-07-15',210,1),(512,'Menú Express Vegetariano Plus','Comida vegetal rápida y deliciosa','veg_express_plus.jpg',209.50,45,'2025-08-10',211,1),(513,'Comida Casera Premium Plus','Recetas caseras con ingredientes gourmet','premium_homestyle_plus.jpg',249.00,38,'2025-05-15',212,1),(514,'Especial Parrilla Internacional','Carnes de todo el mundo','international_grill.jpg',359.50,18,'2025-06-10',213,1),(515,'Paquete Desayuno Americano Deluxe','Desayuno abundante mejorado','american_deluxe.jpg',229.99,55,'2025-07-05',214,1),(516,'Menú Ejecutivo Saludable Plus','Almuerzo balanceado gourmet','healthy_exec_plus.jpg',239.50,35,'2025-08-20',215,1),(517,'Cena Gourmet Íntima Plus','Experiencia culinaria exclusiva','intimate_gourmet_plus.jpg',529.00,10,'2025-05-30',216,1),(518,'Especial Pasta Artesanal Plus','Pastas hechas a mano con ingredientes selectos','artisan_pasta_plus.jpg',299.99,25,'2025-06-25',217,1),(519,'Paquete Asiático Fusion Premium','Lo mejor de Asia con toque gourmet','asian_fusion_premium.jpg',379.50,15,'2025-07-20',218,1),(520,'Menú Familiar Ligero Plus','Opciones saludables gourmet','light_family_plus.jpg',289.00,30,'2025-08-15',219,1),(521,'Comida Rápida Gourmet Deluxe','Fast food con ingredientes premium','gourmet_fast_deluxe.jpg',269.99,42,'2025-05-20',220,1),(522,'Especial Carnes Maduradas Plus','Cortes con proceso especial mejorado','aged_meats_plus.jpg',429.00,12,'2025-06-15',221,1),(523,'Paquete Desayuno Power Plus','Máxima energía por la mañana','power_breakfast_plus.jpg',209.50,60,'2025-07-10',222,1),(524,'Menú Ejecutivo Premium Deluxe','Almuerzo de negocios exclusivo','exec_premium_deluxe.jpg',319.99,20,'2025-08-05',223,1),(525,'Cena Familiar Gourmet Plus','Experiencia gourmet para toda la familia','family_gourmet_dinner_plus.jpg',449.50,18,'2025-05-25',224,1),(526,'Especial Sushi del Chef Plus','Creaciones exclusivas mejoradas','chef_sushi_plus.jpg',399.00,10,'2025-06-20',225,1),(527,'Piñaronni Bacon','Pizza de pepperoni con piña y Tocino','/uploads/1748877795004.jpeg',149.00,25,'2025-06-11',52,1),(528,'Creamy quatro','Pizza de cuatro sabores','/uploads/1748877977652.jpeg',149.00,10,'2025-06-18',52,1),(529,'Pizza & Stick','Pizza mitad pepperoni mitad queso','/uploads/1748878112398.jpeg',109.00,15,'2025-06-25',52,1),(530,'Crunchy Crunch 4','pizza 4 estaciones','/uploads/1748878606092.jpeg',119.00,15,'2025-06-25',52,1),(531,'Cheesy Top Pepperoni','Pizza de pepperoni con parmesano','/uploads/1748879240846.jpeg',139.00,15,'2025-06-30',52,1);
/*!40000 ALTER TABLE `PAQUETE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PAQUETE1`
--

DROP TABLE IF EXISTS `PAQUETE1`;
/*!50001 DROP VIEW IF EXISTS `PAQUETE1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PAQUETE1` AS SELECT 
 1 AS `id`,
 1 AS `nombre_paquete`,
 1 AS `descripcion`,
 1 AS `imagen`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `fecha_vencimiento`,
 1 AS `restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PAQUETE2`
--

DROP TABLE IF EXISTS `PAQUETE2`;
/*!50001 DROP VIEW IF EXISTS `PAQUETE2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PAQUETE2` AS SELECT 
 1 AS `id`,
 1 AS `nombre_paquete`,
 1 AS `descripcion`,
 1 AS `imagen`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `fecha_vencimiento`,
 1 AS `restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PAQUETE3`
--

DROP TABLE IF EXISTS `PAQUETE3`;
/*!50001 DROP VIEW IF EXISTS `PAQUETE3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PAQUETE3` AS SELECT 
 1 AS `id`,
 1 AS `nombre_paquete`,
 1 AS `descripcion`,
 1 AS `imagen`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `fecha_vencimiento`,
 1 AS `restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PEDIDO`
--

DROP TABLE IF EXISTS `PEDIDO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PEDIDO` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  `metodo_pago_id` int DEFAULT NULL,
  `tipo_entrega` enum('domicilio','pickup') DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `direccion_id` (`direccion_id`),
  KEY `metodo_pago_id` (`metodo_pago_id`),
  CONSTRAINT `PEDIDO_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `USUARIO` (`id`),
  CONSTRAINT `PEDIDO_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `DIRECCION` (`id`),
  CONSTRAINT `PEDIDO_ibfk_3` FOREIGN KEY (`metodo_pago_id`) REFERENCES `METODO_PAGO` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PEDIDO`
--

LOCK TABLES `PEDIDO` WRITE;
/*!40000 ALTER TABLE `PEDIDO` DISABLE KEYS */;
INSERT INTO `PEDIDO` VALUES (1,1,'2025-04-17 14:30:00',1,1,'domicilio',25.99,'pendiente'),(2,2,'2025-04-17 15:00:00',2,2,'pickup',18.50,'confirmado'),(3,3,'2025-04-17 16:00:00',3,3,'domicilio',12.99,'entregado'),(4,4,'2025-04-17 17:00:00',4,4,'pickup',30.00,'pendiente'),(5,5,'2025-04-17 18:00:00',5,5,'domicilio',22.50,'confirmado'),(6,6,'2025-04-17 19:00:00',6,6,'pickup',17.75,'entregado'),(7,7,'2025-04-17 20:00:00',7,7,'domicilio',15.50,'pendiente'),(8,8,'2025-04-17 21:00:00',8,8,'pickup',27.00,'confirmado'),(9,9,'2025-04-17 22:00:00',9,9,'domicilio',10.99,'entregado'),(10,10,'2025-04-17 23:00:00',10,10,'pickup',20.00,'pendiente'),(11,11,'2025-04-18 14:00:00',11,11,'domicilio',25.75,'confirmado'),(12,12,'2025-04-18 15:30:00',12,12,'pickup',19.50,'entregado'),(13,13,'2025-04-18 16:30:00',13,13,'domicilio',23.00,'pendiente'),(14,14,'2025-04-18 17:30:00',14,14,'pickup',12.50,'confirmado'),(15,15,'2025-04-18 18:30:00',15,15,'domicilio',35.00,'entregado'),(16,16,'2025-04-18 19:30:00',16,16,'pickup',28.99,'pendiente'),(17,17,'2025-04-18 20:30:00',17,17,'domicilio',24.99,'confirmado'),(18,18,'2025-04-18 21:30:00',18,18,'pickup',16.00,'entregado'),(19,19,'2025-04-18 22:30:00',19,19,'domicilio',30.25,'pendiente'),(20,20,'2025-04-19 14:30:00',20,20,'pickup',25.75,'confirmado'),(21,21,'2025-04-19 15:00:00',21,21,'domicilio',13.50,'entregado'),(22,22,'2025-04-19 16:00:00',22,22,'pickup',18.25,'pendiente'),(23,23,'2025-04-19 17:00:00',23,23,'domicilio',30.00,'confirmado'),(24,24,'2025-04-19 18:00:00',24,24,'pickup',22.99,'entregado'),(25,25,'2025-04-19 19:00:00',25,25,'domicilio',19.99,'pendiente'),(26,26,'2025-04-19 20:00:00',26,26,'pickup',26.00,'confirmado'),(27,27,'2025-04-19 21:00:00',27,27,'domicilio',21.50,'entregado'),(28,28,'2025-04-19 22:00:00',28,28,'pickup',17.75,'pendiente'),(29,29,'2025-04-19 23:00:00',29,29,'domicilio',23.99,'confirmado'),(30,30,'2025-04-20 14:00:00',30,30,'pickup',24.00,'entregado'),(31,31,'2025-04-20 15:30:00',31,31,'domicilio',22.50,'pendiente'),(32,32,'2025-04-20 16:30:00',32,32,'pickup',15.75,'confirmado'),(33,33,'2025-04-20 17:30:00',33,33,'domicilio',19.00,'entregado'),(34,34,'2025-04-20 18:30:00',34,34,'pickup',27.99,'pendiente'),(35,35,'2025-04-20 19:30:00',35,35,'domicilio',30.50,'confirmado'),(36,36,'2025-04-20 20:30:00',36,36,'pickup',22.25,'entregado'),(37,37,'2025-04-20 21:30:00',37,37,'domicilio',24.75,'pendiente'),(38,38,'2025-04-20 22:30:00',38,38,'pickup',21.99,'confirmado'),(39,39,'2025-04-20 23:30:00',39,39,'domicilio',18.50,'entregado'),(40,40,'2025-04-21 14:30:00',40,40,'pickup',25.99,'pendiente'),(41,41,'2025-04-21 15:00:00',41,41,'domicilio',12.75,'confirmado'),(42,42,'2025-04-21 16:00:00',42,42,'pickup',22.25,'entregado'),(43,43,'2025-04-21 17:00:00',43,43,'domicilio',17.50,'pendiente'),(44,44,'2025-04-21 18:00:00',44,44,'pickup',30.99,'confirmado'),(45,45,'2025-04-21 19:00:00',45,45,'domicilio',19.99,'entregado'),(46,46,'2025-04-21 20:00:00',46,46,'pickup',28.00,'pendiente'),(47,47,'2025-04-21 21:00:00',47,47,'domicilio',20.75,'confirmado'),(48,48,'2025-04-21 22:00:00',48,48,'pickup',24.50,'entregado'),(49,49,'2025-04-21 23:00:00',49,49,'domicilio',23.00,'pendiente'),(50,50,'2025-04-22 14:00:00',50,50,'pickup',18.25,'confirmado'),(51,52,'2025-04-28 23:36:51',59,56,'domicilio',62.97,'En proceso'),(52,52,'2025-04-28 23:39:04',59,56,'domicilio',83.96,'En proceso'),(53,52,'2025-04-28 23:46:38',59,56,'domicilio',167.92,'En proceso'),(54,52,'2025-04-30 23:52:17',59,56,'domicilio',20.99,'En proceso'),(55,52,'2025-05-01 00:16:46',59,56,'domicilio',62.00,'En proceso'),(56,52,'2025-05-01 00:24:57',59,56,'domicilio',30.99,'En proceso'),(57,52,'2025-04-30 12:26:59',59,56,'domicilio',15.50,'En proceso'),(58,52,'2025-05-01 06:26:04',59,56,'domicilio',19.98,'En proceso'),(59,52,'2025-05-01 06:27:56',59,56,'domicilio',83.96,'En proceso'),(60,52,'2025-05-01 06:29:47',59,56,'domicilio',54.95,'En proceso'),(61,52,'2025-05-01 06:36:55',59,56,'domicilio',75.00,'En proceso'),(62,53,'2025-05-01 07:21:05',61,58,'domicilio',123.96,'En proceso'),(63,55,'2025-05-29 02:28:39',64,61,'domicilio',20.99,'En proceso'),(64,53,'2025-05-29 19:49:41',61,60,'pickup',40.99,'En proceso'),(65,52,'2025-05-30 19:11:33',59,56,'pickup',798.00,'Confirmado'),(66,52,'2025-05-30 19:54:05',59,56,'domicilio',30.99,'pendiente'),(67,52,'2025-05-30 19:55:20',59,56,'domicilio',399.00,'Confirmado');
/*!40000 ALTER TABLE `PEDIDO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PEDIDO1`
--

DROP TABLE IF EXISTS `PEDIDO1`;
/*!50001 DROP VIEW IF EXISTS `PEDIDO1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PEDIDO1` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `fecha_pedido`,
 1 AS `direccion_id`,
 1 AS `metodo_pago_id`,
 1 AS `tipo_entrega`,
 1 AS `total`,
 1 AS `estatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PEDIDO2`
--

DROP TABLE IF EXISTS `PEDIDO2`;
/*!50001 DROP VIEW IF EXISTS `PEDIDO2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PEDIDO2` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `fecha_pedido`,
 1 AS `direccion_id`,
 1 AS `metodo_pago_id`,
 1 AS `tipo_entrega`,
 1 AS `total`,
 1 AS `estatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PEDIDO3`
--

DROP TABLE IF EXISTS `PEDIDO3`;
/*!50001 DROP VIEW IF EXISTS `PEDIDO3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PEDIDO3` AS SELECT 
 1 AS `id`,
 1 AS `usuario_id`,
 1 AS `fecha_pedido`,
 1 AS `direccion_id`,
 1 AS `metodo_pago_id`,
 1 AS `tipo_entrega`,
 1 AS `total`,
 1 AS `estatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `RESTAURANTE`
--

DROP TABLE IF EXISTS `RESTAURANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESTAURANTE` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_sucursal` varchar(100) DEFAULT NULL,
  `direccion` text,
  `latitud` decimal(10,8) DEFAULT NULL,
  `longitud` decimal(11,8) DEFAULT NULL,
  `google_place_id` varchar(100) DEFAULT NULL,
  `rating_google` decimal(3,2) DEFAULT NULL,
  `admin_restaurante_id` int DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `admin_restaurante_id` (`admin_restaurante_id`),
  CONSTRAINT `RESTAURANTE_ibfk_1` FOREIGN KEY (`admin_restaurante_id`) REFERENCES `USUARIO` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESTAURANTE`
--

LOCK TABLES `RESTAURANTE` WRITE;
/*!40000 ALTER TABLE `RESTAURANTE` DISABLE KEYS */;
INSERT INTO `RESTAURANTE` VALUES (1,'Pizza Hut','123 Pizza St, New York, NY 10001',40.71280000,-74.00600000,'abcd1234',4.50,1,1),(2,'Burger King','456 Burger Ave, Los Angeles, CA 90001',34.05220000,-118.24370000,'efgh5678',4.00,2,1),(3,'Taco Bell','789 Taco Rd, Chicago, IL 60601',41.87810000,-87.62980000,'ijkl91011',3.80,3,1),(4,'Dominos Pizza','101 Pizza Blvd, Houston, TX 77001',29.76040000,-95.36980000,'mnop1213',4.20,4,1),(5,'Subway','202 Sub Rd, Phoenix, AZ 85001',33.44840000,-112.07400000,'qrst1415',3.90,5,1),(6,'Papa Johns','303 Papa St, Philadelphia, PA 19103',39.95260000,-75.16520000,'uvwx1617',4.30,6,1),(7,'Chipotle','404 Burrito Ln, San Antonio, TX 78205',29.42410000,-98.49360000,'yzab1819',4.00,7,1),(8,'KFC','505 Fried St, San Diego, CA 92101',32.71570000,-117.16110000,'cdfe2021',4.10,8,1),(9,'Wendys','606 Fast Ave, Dallas, TX 75201',32.77670000,-96.79700000,'ghij2223',3.90,9,1),(10,'Arbys','707 Roast Rd, San Jose, CA 95113',37.77490000,-122.41940000,'klmn2425',3.70,10,1),(11,'Panda Express','808 Fortune St, Austin, TX 73301',30.26720000,-97.74310000,'opqr2627',4.20,11,1),(12,'Shake Shack','909 Burger Blvd, Charlotte, NC 28202',35.22710000,-80.84310000,'stuv2829',4.50,12,1),(13,'Five Guys','1010 Fry Rd, Seattle, WA 98101',47.60620000,-122.33210000,'wxyz3031',4.40,13,1),(14,'Dennys','1111 Pancake Ln, Denver, CO 80202',39.73920000,-104.99030000,'abcd3233',3.80,14,1),(15,'Hardees','1212 Biscuit St, Portland, OR 97201',45.50510000,-122.67500000,'efgh3435',3.60,15,1),(16,'Jack in the Box','1313 Taco St, Indianapolis, IN 46201',39.76840000,-86.15800000,'ijkl3637',4.00,16,1),(17,'Sonic Drive-In','1414 Route 66, Louisville, KY 40202',38.25270000,-85.75850000,'mnop3839',3.70,17,1),(18,'Chick-fil-A','1515 Chicken Rd, Columbus, OH 43215',39.96120000,-82.99880000,'qrst4041',4.60,18,1),(19,'In-N-Out Burger','1616 Burger Ln, Sacramento, CA 95814',38.58160000,-121.49440000,'uvwx4243',4.50,19,1),(20,'Zaxbys','1717 Chicken St, Orlando, FL 32801',28.53830000,-81.37920000,'yzab4445',4.10,20,1),(21,'Culvers','1818 Butter Rd, Jacksonville, FL 32202',30.33220000,-81.65570000,'abcd4647',4.30,21,1),(22,'Wingstop','1919 Wing Rd, Kansas City, MO 64101',39.09970000,-94.57860000,'efgh4849',3.90,22,1),(23,'Bojangles\'','2020 Biscuit Blvd, Memphis, TN 38103',35.14950000,-90.04900000,'ijkl5051',4.00,23,1),(24,'El Pollo Loco','2121 Pollo St, Las Vegas, NV 89101',36.16990000,-115.13980000,'mnop5253',3.80,24,1),(25,'Whataburger','2222 Burger Rd, Tucson, AZ 85701',32.22260000,-110.97470000,'qrst5455',4.20,25,1),(26,'Jimmy Johns','2323 Sandwich St, Omaha, NE 68102',41.25650000,-95.93450000,'uvwx5657',4.10,26,1),(27,'Papa Murphys','2424 Pizza Ave, Minneapolis, MN 55101',44.97780000,-93.26500000,'yzab5859',4.00,27,1),(28,'Carls Jr.','2525 Burger Ln, Fresno, CA 93721',36.73780000,-119.78710000,'abcd6061',3.60,28,1),(29,'Café Rio','2626 Mexican St, Salt Lake City, UT 84101',40.76080000,-111.89100000,'efgh6263',4.40,29,1),(30,'Noodles & Company','2727 Noodle St, Madison, WI 53703',43.07310000,-89.40120000,'ijkl6465',4.20,30,1),(31,'Pei Wei','2828 Asian Blvd, Boise, ID 83702',43.61500000,-116.20230000,'mnop6667',3.90,31,1),(32,'Café Gratitude','2929 Gratitude Rd, Berkeley, CA 94704',37.87160000,-122.27270000,'qrst6869',4.50,32,1),(33,'Firehouse Subs','3030 Sub St, Tallahassee, FL 32301',30.43830000,-84.28070000,'uvwx7071',4.30,33,1),(34,'Smashburger','3131 Smash Blvd, Richmond, VA 23220',37.54070000,-77.43600000,'yzab7273',4.20,34,1),(35,'The Habit Burger Grill','3232 Grill Rd, Raleigh, NC 27601',35.77960000,-78.63820000,'abcd7475',4.10,35,1),(36,'Crisp & Green','3333 Fresh St, Boise, ID 83705',43.61760000,-116.20670000,'efgh7677',4.20,36,1),(37,'Steak n Shake','3434 Steak St, Cincinnati, OH 45202',39.10310000,-84.51200000,'ijkl7879',3.80,37,1),(38,'Moes Southwest Grill','3535 Southwest Rd, Richmond, VA 23223',37.55340000,-77.46030000,'mnop8081',4.00,38,1),(39,'Raising Canes','3636 Chicken Blvd, Atlanta, GA 30303',33.74900000,-84.38800000,'qrst8283',4.30,39,1),(40,'Taco Bueno','3737 Taco Blvd, Dallas, TX 75202',32.77670000,-96.79700000,'uvwx8485',3.90,40,1),(41,'Café du Monde','3838 Café St, New Orleans, LA 70112',29.95840000,-90.06260000,'yzab8687',4.60,41,1),(42,'Gordon Ramsay Burger','3939 Burger Ave, Las Vegas, NV 89109',36.16990000,-115.13980000,'abcd8889',4.50,42,1),(43,'Salt Bae','4040 Salt Blvd, Chicago, IL 60603',41.87810000,-87.62980000,'efgh9091',4.70,43,1),(44,'The Cheesecake Factory','4141 Cheesecake Rd, Los Angeles, CA 90024',34.06960000,-118.44100000,'ijkl9293',4.20,44,1),(45,'P.F. Chang\'s','4242 Asian Blvd, Phoenix, AZ 85004',33.44840000,-112.07400000,'mnop9495',4.30,45,1),(46,'Bubba Gump Shrimp Co.','4343 Shrimp Rd, Myrtle Beach, SC 29577',33.68970000,-78.88670000,'qrst9697',4.00,46,1),(47,'Ruths Chris Steak House','4444 Steak Blvd, Tampa, FL 33602',27.95060000,-82.45720000,'uvwx9899',4.40,47,1),(48,'The Olive Garden','4545 Olive Ave, Miami, FL 33101',25.76170000,-80.19180000,'yzab0001',4.10,48,1),(49,'Olive Garden','4646 Olive Blvd, Portland, OR 97201',45.50510000,-122.67500000,'abcd0102',4.20,49,1),(50,'Cheddars Scratch Kitchen','4747 Cheddar Rd, Denver, CO 80205',39.73920000,-104.99030000,'efgh0203',4.00,50,1),(51,'Kapital Sushi',' Av de la Convención de 1914 Sur 1112-Loc. 1, Jardines de la Asunción, 20270 Aguascalientes, Ags., México',21.86529090,-102.29420840,'LtDERdxR',4.00,57,1),(52,'Little Caesar\'s','Av Héroe de Nacozari 2408-A-2408-A, Residencial del Parque, 20277 Aguascalientes, Ags., México',21.85584610,-102.28300500,'G1WojR0b',4.00,59,1),(53,'El Fogón Principal','Avenida Central 123, Ciudad',19.43260770,-99.13320800,'ChIJ12tZv',4.35,60,1),(54,'La Terraza del Mar','Calle Marina 45, Zona Costera',19.43360770,-99.13420800,'ChIJ34tZv',4.20,61,1),(55,'Sabores Tradicionales','Boulevard Cultural 67',19.43460770,-99.13520800,'ChIJ56tZv',4.50,62,1),(56,'Parrilla Maestra','Avenida Carnes 89',19.43560770,-99.13620800,'ChIJ78tZv',4.10,63,1),(57,'Delicias Orientales','Calle Asia 101',19.43660770,-99.13720800,'ChIJ90tZv',4.25,64,1),(58,'Café Bohemio','Plaza Artes 23',19.43760770,-99.13820800,'ChIJ12uZv',4.60,65,1),(59,'Pizzería Napoli','Avenida Italia 34',19.43860770,-99.13920800,'ChIJ34uZv',4.30,66,1),(60,'Sushi Express','Pasaje Japón 56',19.43960770,-99.14020800,'ChIJ56uZv',4.15,67,1),(61,'Tacos Callejeros','Rinconada Popular 78',19.44060770,-99.14120800,'ChIJ78uZv',4.70,68,1),(62,'Helados Artesanales','Avenida Dulce 90',19.44160770,-99.14220800,'ChIJ90uZv',4.40,69,1),(63,'Mariscos Frescos','Muelle Pesquero 12',19.44260770,-99.14320800,'ChIJ12vZv',4.25,70,1),(64,'Carnes Selectas','Boulevard Grill 34',19.44360770,-99.14420800,'ChIJ34vZv',4.55,71,1),(65,'Vegetariano Natural','Jardín Ecológico 56',19.44460770,-99.14520800,'ChIJ56vZv',4.30,72,1),(66,'Panadería Tradicional','Calle Harina 78',19.44560770,-99.14620800,'ChIJ78vZv',4.65,73,1),(67,'Cervecería Artesanal','Avenida Lúpulo 90',19.44660770,-99.14720800,'ChIJ90vZv',4.20,74,1),(68,'Postres Exquisitos','Plaza Azúcar 13',19.44760770,-99.14820800,'ChIJ12wZv',4.75,75,1),(69,'Comida Rápida King','Bulevar Veloz 35',19.44860770,-99.14920800,'ChIJ34wZv',3.90,76,1),(70,'Sabores de la Abuela','Rincón Familiar 57',19.44960770,-99.15020800,'ChIJ56wZv',4.80,77,1),(71,'Pasta Casera','Avenida Italiana 79',19.45060770,-99.15120800,'ChIJ78wZv',4.35,78,1),(72,'Wok Express','Pasaje Oriental 91',19.45160770,-99.15220800,'ChIJ90wZv',4.15,79,1),(73,'El Rincón del Café','Plaza Aromas 24',19.45260770,-99.15320800,'ChIJ12xZv',4.50,80,1),(74,'Hamburguesas Gourmet','Avenida Jugosa 46',19.45360770,-99.15420800,'ChIJ34xZv',4.25,81,1),(75,'Pollo a la Brasa','Calle Dorada 68',19.45460770,-99.15520800,'ChIJ56xZv',4.60,82,1),(76,'Antojitos Mexicanos','Patio Picante 80',19.45560770,-99.15620800,'ChIJ78xZv',4.30,83,1),(77,'Sándwiches Premium','Boulevard Pan 92',19.45660770,-99.15720800,'ChIJ90xZv',4.10,84,1),(78,'El Jardín de las Ensaladas','Avenida Verde 15',19.45760770,-99.15820800,'ChIJ12yZv',4.45,85,1),(79,'Crepería Francesa','Rinconada Parisina 37',19.45860770,-99.15920800,'ChIJ34yZv',4.20,86,1),(80,'Tetería Oriental','Pasaje Exótico 59',19.45960770,-99.16020800,'ChIJ56yZv',4.65,87,1),(81,'Parrilla Argentina','Avenida Gaucha 71',19.46060770,-99.16120800,'ChIJ78yZv',4.40,88,1),(82,'Sushi Bar','Boulevard Japón 93',19.46160770,-99.16220800,'ChIJ90yZv',4.25,89,1),(83,'El Mesón Español','Plaza Ibérica 26',19.46260770,-99.16320800,'ChIJ12zZv',4.55,90,1),(84,'Cafetería Moderna','Avenida Aroma 48',19.46360770,-99.16420800,'ChIJ34zZv',4.30,91,1),(85,'Pizzería al Carbón','Calle Leña 60',19.46460770,-99.16520800,'ChIJ56zZv',4.15,92,1),(86,'Tacos de Barrio','Rincón Popular 82',19.46560770,-99.16620800,'ChIJ78zZv',4.70,93,1),(87,'Heladería Italiana','Avenida Gelato 94',19.46660770,-99.16720800,'ChIJ90zZv',4.45,94,1),(88,'Marisquería del Puerto','Muelle Comercial 17',19.46760770,-99.16820800,'ChIJ12Aa0',4.20,95,1),(89,'Carnicería Selecta','Boulevard Carne 39',19.46860770,-99.16920800,'ChIJ34Aa0',4.60,96,1),(90,'Veggie Power','Jardín Orgánico 51',19.46960770,-99.17020800,'ChIJ56Aa0',4.35,97,1),(91,'Pan Integral','Calle Saludable 73',19.47060770,-99.17120800,'ChIJ78Aa0',4.50,98,1),(92,'Cerveza Premium','Avenida Malta 95',19.47160770,-99.17220800,'ChIJ90Aa0',4.25,99,1),(93,'Postres Finos','Plaza Delicia 18',19.47260770,-99.17320800,'ChIJ12Ba0',4.80,100,1),(94,'Fast Food Express','Bulevar Rápido 30',19.47360770,-99.17420800,'ChIJ34Ba0',3.95,101,1),(95,'Cocina Casera','Rincón Hogareño 52',19.47460770,-99.17520800,'ChIJ56Ba0',4.65,102,1),(96,'Pasta Fresca','Avenida Noodle 74',19.47560770,-99.17620800,'ChIJ78Ba0',4.40,103,1),(97,'Wok Master','Pasaje Asia 96',19.47660770,-99.17720800,'ChIJ90Ba0',4.20,104,1),(98,'Café Aromático','Plaza Grano 29',19.47760770,-99.17820800,'ChIJ12Ca0',4.55,105,1),(99,'Burger House','Avenida Hamburguesa 41',19.47860770,-99.17920800,'ChIJ34Ca0',4.30,106,1),(100,'Pollo Asado','Calle Crujiente 63',19.47960770,-99.18020800,'ChIJ56Ca0',4.45,107,1),(101,'Mexican Flavors','Patio Especiado 85',19.48060770,-99.18120800,'ChIJ78Ca0',4.25,108,1),(102,'Sandwich Club','Boulevard Rebanada 97',19.48160770,-99.18220800,'ChIJ90Ca0',4.15,109,1),(103,'Ensaladas Frescas','Avenida Lechuga 20',19.48260770,-99.18320800,'ChIJ12Da0',4.50,110,1),(104,'Crepes Deluxe','Rinconada Francesa 42',19.48360770,-99.18420800,'ChIJ34Da0',4.35,111,1),(105,'Té & Más','Pasaje Infusión 64',19.48460770,-99.18520800,'ChIJ56Da0',4.60,112,1),(106,'Carne Argentina','Avenida Asado 86',19.48560770,-99.18620800,'ChIJ78Da0',4.40,113,1),(107,'Sushi Premium','Boulevard Nipón 98',19.48660770,-99.18720800,'ChIJ90Da0',4.30,114,1),(108,'Tapas Españolas','Plaza Mediterránea 31',19.48760770,-99.18820800,'ChIJ12Ea0',4.55,115,1),(109,'Café Contemporáneo','Avenida Especial 43',19.48860770,-99.18920800,'ChIJ34Ea0',4.25,116,1),(110,'Pizza Artesanal','Calle Horno 65',19.48960770,-99.19020800,'ChIJ56Ea0',4.45,117,1),(111,'Tacos Auténticos','Rincón Mexicano 87',19.49060770,-99.19120800,'ChIJ78Ea0',4.70,118,1),(112,'Gelato Italiano','Avenida Crema 99',19.49160770,-99.19220800,'ChIJ90Ea0',4.50,119,1),(113,'Mariscos del Día','Muelle Fresco 22',19.49260770,-99.19320800,'ChIJ12Fa0',4.35,120,1),(114,'Cortes Selectos','Boulevard Jugoso 44',19.49360770,-99.19420800,'ChIJ34Fa0',4.60,121,1),(115,'Vegetariano Gourmet','Jardín Natural 66',19.49460770,-99.19520800,'ChIJ56Fa0',4.40,122,1),(116,'Pan Artesanal','Calle Masa 88',19.49560770,-99.19620800,'ChIJ78Fa0',4.55,123,1),(117,'Cerveza Local','Avenida Cebada 10',19.49660770,-99.19720800,'ChIJ90Fa0',4.25,124,1),(118,'Postres Elegantes','Plaza Postre 33',19.49760770,-99.19820800,'ChIJ12Ga0',4.75,125,1),(119,'Comida Express','Bulevar Velocidad 55',19.49860770,-99.19920800,'ChIJ34Ga0',3.90,126,1),(120,'Sabores Hogareños','Rincón Casero 77',19.49960770,-99.20020800,'ChIJ56Ga0',4.65,127,1),(121,'Pasta Deliciosa','Avenida Italiana 99',19.50060770,-99.20120800,'ChIJ78Ga0',4.35,128,1),(122,'Wok Veloz','Pasaje Chino 21',19.50160770,-99.20220800,'ChIJ90Ga0',4.20,129,1),(123,'Café Especial','Plaza Aromática 43',19.50260770,-99.20320800,'ChIJ12Ha0',4.50,130,1),(124,'Hamburguesas Premium','Avenida Carne 65',19.50360770,-99.20420800,'ChIJ34Ha0',4.30,131,1),(125,'Pollo Perfecto','Calle Oro 87',19.50460770,-99.20520800,'ChIJ56Ha0',4.55,132,1),(126,'Mexican Taste','Patio Caliente 9',19.50560770,-99.20620800,'ChIJ78Ha0',4.40,133,1),(127,'Sandwich Gourmet','Boulevard Panini 32',19.50660770,-99.20720800,'ChIJ90Ha0',4.15,134,1),(128,'Ensaladas Creativas','Avenida Fresca 54',19.50760770,-99.20820800,'ChIJ12Ia0',4.45,135,1),(129,'Crepes Fantasía','Rinconada Dulce 76',19.50860770,-99.20920800,'ChIJ34Ia0',4.25,136,1),(130,'Té Selecto','Pasaje Aromático 98',19.50960770,-99.21020800,'ChIJ56Ia0',4.60,137,1),(131,'Asados Argentinos','Avenida Parrilla 11',19.51060770,-99.21120800,'ChIJ78Ia0',4.35,138,1),(132,'Sushi Experience','Boulevard Sashimi 34',19.51160770,-99.21220800,'ChIJ90Ia0',4.25,139,1),(133,'Tapas del Sol','Plaza Española 56',19.51260770,-99.21320800,'ChIJ12Ja0',4.50,140,1),(134,'Café de Autor','Avenida Especial 78',19.51360770,-99.21420800,'ChIJ34Ja0',4.30,141,1),(135,'Pizza Gourmet','Calle Mozzarella 90',19.51460770,-99.21520800,'ChIJ56Ja0',4.40,142,1),(136,'Tacos Tradicionales','Rincón Picante 13',19.51560770,-99.21620800,'ChIJ78Ja0',4.65,143,1),(137,'Helados Fantasía','Avenida Sabor 35',19.51660770,-99.21720800,'ChIJ90Ja0',4.50,144,1),(138,'Mariscos Selectos','Muelle Gourmet 57',19.51760770,-99.21820800,'ChIJ12Ka0',4.30,145,1),(139,'Carnes Nobles','Boulevard Premium 79',19.51860770,-99.21920800,'ChIJ34Ka0',4.55,146,1),(140,'Veggie Delight','Jardín Saludable 91',19.51960770,-99.22020800,'ChIJ56Ka0',4.40,147,1),(141,'Pan de Campo','Calle Rústica 24',19.52060770,-99.22120800,'ChIJ78Ka0',4.50,148,1),(142,'Cerveza Artesana','Avenida Lúpulo 46',19.52160770,-99.22220800,'ChIJ90Ka0',4.25,149,1),(143,'Postres de Ensueño','Plaza Dulzura 68',19.52260770,-99.22320800,'ChIJ12La0',4.70,150,1),(144,'Fast & Fresh','Bulevar Moderno 80',19.52360770,-99.22420800,'ChIJ34La0',4.00,151,1),(145,'Cocina de Mamá','Rincón Familiar 2',19.52460770,-99.22520800,'ChIJ56La0',4.60,152,1),(146,'Pasta Italiana','Avenida Al dente 25',19.52560770,-99.22620800,'ChIJ78La0',4.35,153,1),(147,'Wok Profesional','Pasaje Oriental 47',19.52660770,-99.22720800,'ChIJ90La0',4.20,154,1),(148,'Café Selecto','Plaza Especial 69',19.52760770,-99.22820800,'ChIJ12Ma0',4.45,155,1),(149,'Burger Master','Avenida Hamburguesa 81',19.52860770,-99.22920800,'ChIJ34Ma0',4.30,156,1),(150,'Pollo Dorado','Calle Crujiente 3',19.52960770,-99.23020800,'ChIJ56Ma0',4.50,157,1),(151,'Mexican Essence','Patio Tradicional 26',19.53060770,-99.23120800,'ChIJ78Ma0',4.25,158,1),(152,'Sandwich Artesanal','Boulevard Integral 48',19.53160770,-99.23220800,'ChIJ90Ma0',4.15,159,1),(153,'Ensaladas Premium','Avenida Orgánica 70',19.53260770,-99.23320800,'ChIJ12Na0',4.40,160,1),(154,'Crepes Exquisitos','Rinconada Francesa 92',19.53360770,-99.23420800,'ChIJ34Na0',4.30,161,1),(155,'Té Superior','Pasaje Selecto 15',19.53460770,-99.23520800,'ChIJ56Na0',4.55,162,1),(156,'Asado Premium','Avenida Argentina 37',19.53560770,-99.23620800,'ChIJ78Na0',4.35,163,1),(157,'Sushi Selecto','Boulevard Japón 59',19.53660770,-99.23720800,'ChIJ90Na0',4.25,164,1),(158,'Tapas Auténticas','Plaza España 71',19.53760770,-99.23820800,'ChIJ12Oa0',4.50,165,1),(159,'Café Premium','Avenida Calidad 93',19.53860770,-99.23920800,'ChIJ34Oa0',4.30,166,1),(160,'Pizza Selecta','Calle Premium 16',19.53960770,-99.24020800,'ChIJ56Oa0',4.40,167,1),(161,'Tacos Premium','Rincón Mexicano 38',19.54060770,-99.24120800,'ChIJ78Oa0',4.60,168,1),(162,'Helados Selectos','Avenida Crema 50',19.54160770,-99.24220800,'ChIJ90Oa0',4.45,169,1),(163,'Mariscos Premium','Muelle Selecto 72',19.54260770,-99.24320800,'ChIJ12Pa0',4.30,170,1),(164,'Carnes Excelentes','Boulevard Jugoso 94',19.54360770,-99.24420800,'ChIJ34Pa0',4.55,171,1),(165,'Veggie Premium','Jardín Selecto 17',19.54460770,-99.24520800,'ChIJ56Pa0',4.40,172,1),(166,'Pan Premium','Calle Selecta 39',19.54560770,-99.24620800,'ChIJ78Pa0',4.50,173,1),(167,'Cerveza Premium','Avenida Especial 61',19.54660770,-99.24720800,'ChIJ90Pa0',4.25,174,1),(168,'Postres Premium','Plaza Exclusiva 83',19.54760770,-99.24820800,'ChIJ12Qa0',4.70,175,1),(169,'Comida Premium','Bulevar Selecto 5',19.54860770,-99.24920800,'ChIJ34Qa0',4.00,176,1),(170,'Cocina Premium','Rincón Exclusivo 28',19.54960770,-99.25020800,'ChIJ56Qa0',4.60,177,1),(171,'Pasta Premium','Avenida Selecta 40',19.55060770,-99.25120800,'ChIJ78Qa0',4.35,178,1),(172,'Wok Premium','Pasaje Exclusivo 62',19.55160770,-99.25220800,'ChIJ90Qa0',4.20,179,1),(173,'Café Exclusivo','Plaza Premium 84',19.55260770,-99.25320800,'ChIJ12Ra0',4.45,180,1),(174,'Burger Exclusivo','Avenida Selecta 6',19.55360770,-99.25420800,'ChIJ34Ra0',4.30,181,1),(175,'Pollo Exclusivo','Calle Premium 29',19.55460770,-99.25520800,'ChIJ56Ra0',4.50,182,1),(176,'Mexican Exclusivo','Patio Selecto 51',19.55560770,-99.25620800,'ChIJ78Ra0',4.25,183,1),(177,'Sandwich Exclusivo','Boulevard Premium 73',19.55660770,-99.25720800,'ChIJ90Ra0',4.15,184,1),(178,'Ensaladas Exclusivas','Avenida Selecta 95',19.55760770,-99.25820800,'ChIJ12Sa0',4.40,185,1),(179,'Crepes Exclusivos','Rinconada Premium 18',19.55860770,-99.25920800,'ChIJ34Sa0',4.30,186,1),(180,'Té Exclusivo','Pasaje Selecto 30',19.55960770,-99.26020800,'ChIJ56Sa0',4.55,187,1),(181,'Asado Exclusivo','Avenida Premium 52',19.56060770,-99.26120800,'ChIJ78Sa0',4.35,188,1),(182,'Sushi Exclusivo','Boulevard Selecto 74',19.56160770,-99.26220800,'ChIJ90Sa0',4.25,189,1),(183,'Tapas Exclusivas','Plaza Premium 96',19.56260770,-99.26320800,'ChIJ12Ta0',4.50,190,1),(184,'Café de Lujo','Avenida Exclusiva 19',19.56360770,-99.26420800,'ChIJ34Ta0',4.30,191,1),(185,'Pizza de Lujo','Calle Premium 41',19.56460770,-99.26520800,'ChIJ56Ta0',4.40,192,1),(186,'Tacos de Lujo','Rincón Selecto 63',19.56560770,-99.26620800,'ChIJ78Ta0',4.60,193,1),(187,'Helados de Lujo','Avenida Exclusiva 85',19.56660770,-99.26720800,'ChIJ90Ta0',4.45,194,1),(188,'Mariscos de Lujo','Muelle Premium 7',19.56760770,-99.26820800,'ChIJ12Ua0',4.30,195,1),(189,'Carnes de Lujo','Boulevard Exclusivo 30',19.56860770,-99.26920800,'ChIJ34Ua0',4.55,196,1),(190,'Veggie de Lujo','Jardín Premium 52',19.56960770,-99.27020800,'ChIJ56Ua0',4.40,197,1),(191,'Pan de Lujo','Calle Selecta 74',19.57060770,-99.27120800,'ChIJ78Ua0',4.50,198,1),(192,'Cerveza de Lujo','Avenida Premium 96',19.57160770,-99.27220800,'ChIJ90Ua0',4.25,199,1),(193,'Postres de Lujo','Plaza Exclusiva 9',19.57260770,-99.27320800,'ChIJ12Va0',4.70,200,1),(194,'Comida de Lujo','Bulevar Premium 31',19.57360770,-99.27420800,'ChIJ34Va0',4.00,201,1),(195,'Cocina de Lujo','Rincón Selecto 53',19.57460770,-99.27520800,'ChIJ56Va0',4.60,202,1),(196,'Pasta de Lujo','Avenida Exclusiva 75',19.57560770,-99.27620800,'ChIJ78Va0',4.35,203,1),(197,'Wok de Lujo','Pasaje Premium 97',19.57660770,-99.27720800,'ChIJ90Va0',4.20,204,1),(198,'Café Superior','Plaza Selecta 20',19.57760770,-99.27820800,'ChIJ12Wa0',4.45,205,1),(199,'Burger Superior','Avenida Premium 42',19.57860770,-99.27920800,'ChIJ34Wa0',4.30,206,1),(200,'Pollo Superior','Calle Selecta 64',19.57960770,-99.28020800,'ChIJ56Wa0',4.50,207,1),(201,'Mexican Superior','Patio Premium 86',19.58060770,-99.28120800,'ChIJ78Wa0',4.25,208,1),(202,'Sandwich Superior','Boulevard Exclusivo 8',19.58160770,-99.28220800,'ChIJ90Wa0',4.15,209,1),(203,'Ensaladas Superiores','Avenida Selecta 21',19.58260770,-99.28320800,'ChIJ12Xa0',4.40,210,1),(204,'Crepes Superiores','Rinconada Premium 43',19.58360770,-99.28420800,'ChIJ34Xa0',4.30,211,1),(205,'Té Superior','Pasaje Selecto 65',19.58460770,-99.28520800,'ChIJ56Xa0',4.55,212,1),(206,'Asado Superior','Avenida Exclusiva 87',19.58560770,-99.28620800,'ChIJ78Xa0',4.35,213,1),(207,'Sushi Superior','Boulevard Premium 9',19.58660770,-99.28720800,'ChIJ90Xa0',4.25,214,1),(208,'Tapas Superiores','Plaza Selecta 32',19.58760770,-99.28820800,'ChIJ12Ya0',4.50,215,1),(209,'Café Elegante','Avenida Premium 54',19.58860770,-99.28920800,'ChIJ34Ya0',4.30,216,1),(210,'Pizza Elegante','Calle Selecta 76',19.58960770,-99.29020800,'ChIJ56Ya0',4.40,217,1),(211,'Tacos Elegantes','Rincón Exclusivo 98',19.59060770,-99.29120800,'ChIJ78Ya0',4.60,218,1),(212,'Helados Elegantes','Avenida Premium 11',19.59160770,-99.29220800,'ChIJ90Ya0',4.45,219,1),(213,'Mariscos Elegantes','Muelle Selecto 33',19.59260770,-99.29320800,'ChIJ12Za0',4.30,220,1),(214,'Carnes Elegantes','Boulevard Exclusivo 55',19.59360770,-99.29420800,'ChIJ34Za0',4.55,221,1),(215,'Veggie Elegante','Jardín Premium 77',19.59460770,-99.29520800,'ChIJ56Za0',4.40,222,1),(216,'Pan Elegante','Calle Selecta 99',19.59560770,-99.29620800,'ChIJ78Za0',4.50,223,1),(217,'Cerveza Elegante','Avenida Exclusiva 22',19.59660770,-99.29720800,'ChIJ90Za0',4.25,224,1),(218,'Postres Elegantes','Plaza Premium 44',19.59760770,-99.29820800,'ChIJ12ab0',4.70,225,1),(219,'Comida Elegante','Bulevar Selecto 66',19.59860770,-99.29920800,'ChIJ34ab0',4.00,226,1),(220,'Cocina Elegante','Rincón Exclusivo 88',19.59960770,-99.30020800,'ChIJ56ab0',4.60,227,1),(221,'Pasta Elegante','Avenida Premium 10',19.60060770,-99.30120800,'ChIJ78ab0',4.35,228,1),(222,'Wok Elegante','Pasaje Selecto 23',19.60160770,-99.30220800,'ChIJ90ab0',4.20,229,1),(223,'Café Distinguido','Plaza Exclusiva 45',19.60260770,-99.30320800,'ChIJ12bb0',4.45,230,1),(224,'Burger Distinguido','Avenida Premium 67',19.60360770,-99.30420800,'ChIJ34bb0',4.30,231,1),(225,'Pollo Distinguido','Calle Selecta 89',19.60460770,-99.30520800,'ChIJ56bb0',4.50,232,1),(226,'Mexican Distinguido','Patio Exclusivo 1',19.60560770,-99.30620800,'ChIJ78bb0',4.25,233,1),(227,'Sandwich Distinguido','Boulevard Premium 34',19.60660770,-99.30720800,'ChIJ90bb0',4.15,234,1),(228,'Ensaladas Distinguidas','Avenida Selecta 56',19.60760770,-99.30820800,'ChIJ12cb0',4.40,235,1),(229,'Crepes Distinguidos','Rinconada Exclusiva 78',19.60860770,-99.30920800,'ChIJ34cb0',4.30,236,1),(230,'Té Distinguido','Pasaje Premium 90',19.60960770,-99.31020800,'ChIJ56cb0',4.55,237,1),(231,'Asado Distinguido','Avenida Selecta 13',19.61060770,-99.31120800,'ChIJ78cb0',4.35,238,1),(232,'Sushi Distinguido','Boulevard Exclusivo 35',19.61160770,-99.31220800,'ChIJ90cb0',4.25,239,1),(233,'Tapas Distinguidas','Plaza Premium 57',19.61260770,-99.31320800,'ChIJ12db0',4.50,240,1),(234,'Café Excepcional','Avenida Selecta 79',19.61360770,-99.31420800,'ChIJ34db0',4.30,241,1),(235,'Pizza Excepcional','Calle Exclusiva 91',19.61460770,-99.31520800,'ChIJ56db0',4.40,242,1),(236,'Tacos Excepcionales','Rincón Premium 24',19.61560770,-99.31620800,'ChIJ78db0',4.60,243,1),(237,'Helados Excepcionales','Avenida Selecta 46',19.61660770,-99.31720800,'ChIJ90db0',4.45,244,1),(238,'Mariscos Excepcionales','Muelle Exclusivo 68',19.61760770,-99.31820800,'ChIJ12eb0',4.30,245,1),(239,'Carnes Excepcionales','Boulevard Premium 80',19.61860770,-99.31920800,'ChIJ34eb0',4.55,246,1),(240,'Veggie Excepcional','Jardín Selecto 2',19.61960770,-99.32020800,'ChIJ56eb0',4.40,247,1),(241,'Pan Excepcional','Calle Exclusiva 25',19.62060770,-99.32120800,'ChIJ78eb0',4.50,248,1),(242,'Cerveza Excepcional','Avenida Premium 47',19.62160770,-99.32220800,'ChIJ90eb0',4.25,249,1),(243,'Postres Excepcionales','Plaza Selecta 69',19.62260770,-99.32320800,'ChIJ12fb0',4.70,250,1),(244,'El Rincón Gaucho','Avenida Carnes 251',-34.60372200,-58.38159200,'ChIJ251abc',4.45,251,1),(245,'Sushi Masters','Calle Japón 252',-34.60472200,-58.38259200,'ChIJ252abc',4.60,252,1),(246,'Parrilla Don Julio','Boulevard Asado 253',-34.60572200,-58.38359200,'ChIJ253abc',4.80,253,1),(247,'La Pizzería de Napoli','Avenida Italia 254',-34.60672200,-58.38459200,'ChIJ254abc',4.35,254,1),(248,'Tacos Locos','Rincón Mexicano 255',-34.60772200,-58.38559200,'ChIJ255abc',4.25,255,1),(249,'Heladería Artesanal','Calle Dulce 256',-34.60872200,-58.38659200,'ChIJ256abc',4.70,256,1),(250,'Mariscos del Puerto','Muelle Pesquero 257',-34.60972200,-58.38759200,'ChIJ257abc',4.30,257,1),(251,'Carnes Premium','Boulevard Carnicero 258',-34.61072200,-58.38859200,'ChIJ258abc',4.55,258,1),(252,'Veggie Planet','Jardín Ecológico 259',-34.61172200,-58.38959200,'ChIJ259abc',4.40,259,1),(253,'Panadería Francesa','Calle Harina 260',-34.61272200,-58.39059200,'ChIJ260abc',4.65,260,1),(254,'Cervecería Artesanal','Avenida Lúpulo 261',-34.61372200,-58.39159200,'ChIJ261abc',4.20,261,1),(255,'Postres Exquisitos','Plaza Azúcar 262',-34.61472200,-58.39259200,'ChIJ262abc',4.75,262,1),(256,'Burger Factory','Bulevar Hamburguesa 263',-34.61572200,-58.39359200,'ChIJ263abc',4.15,263,1),(257,'Sabores de la Abuela','Rincón Familiar 264',-34.61672200,-58.39459200,'ChIJ264abc',4.85,264,1),(258,'Pasta Casera','Avenida Italiana 265',-34.61772200,-58.39559200,'ChIJ265abc',4.30,265,1),(259,'Wok Express','Pasaje Oriental 266',-34.61872200,-58.39659200,'ChIJ266abc',4.10,266,1),(260,'Café Literario','Plaza Libros 267',-34.61972200,-58.39759200,'ChIJ267abc',4.50,267,1),(261,'Pollo al Spiedo','Calle Dorada 268',-34.62072200,-58.39859200,'ChIJ268abc',4.25,268,1),(262,'Antojitos Mexicanos','Patio Picante 269',-34.62172200,-58.39959200,'ChIJ269abc',4.35,269,1),(263,'Sándwiches Gourmet','Boulevard Pan 270',-34.62272200,-58.40059200,'ChIJ270abc',4.20,270,1),(264,'Ensaladas Frescas','Avenida Verde 271',-34.62372200,-58.40159200,'ChIJ271abc',4.45,271,1),(265,'Crepería Bretona','Rinconada Francesa 272',-34.62472200,-58.40259200,'ChIJ272abc',4.30,272,1),(266,'Tetería Árabe','Pasaje Exótico 273',-34.62572200,-58.40359200,'ChIJ273abc',4.60,273,1),(267,'Parrilla Uruguaya','Avenida Gaucha 274',-34.62672200,-58.40459200,'ChIJ274abc',4.40,274,1),(268,'Sushi Bar Premium','Boulevard Japón 275',-34.62772200,-58.40559200,'ChIJ275abc',4.25,275,1),(269,'Taberna Española','Plaza Ibérica 276',-34.62872200,-58.40659200,'ChIJ276abc',4.55,276,1),(270,'Cafetería Moderna','Avenida Aroma 277',-34.62972200,-58.40759200,'ChIJ277abc',4.30,277,1),(271,'Pizzería al Horno','Calle Leña 278',-34.63072200,-58.40859200,'ChIJ278abc',4.15,278,1),(272,'Tacos de Barrio','Rincón Popular 279',-34.63172200,-58.40959200,'ChIJ279abc',4.70,279,1),(273,'Gelateria Italiana','Avenida Gelato 280',-34.63272200,-58.41059200,'ChIJ280abc',4.45,280,1),(274,'Marisquería Fina','Muelle Comercial 281',-34.63372200,-58.41159200,'ChIJ281abc',4.20,281,1),(275,'Carnicería Selecta','Boulevard Carne 282',-34.63472200,-58.41259200,'ChIJ282abc',4.60,282,1),(276,'Veggie Power','Jardín Orgánico 283',-34.63572200,-58.41359200,'ChIJ283abc',4.35,283,1),(277,'Pan Integral','Calle Saludable 284',-34.63672200,-58.41459200,'ChIJ284abc',4.50,284,1),(278,'Cerveza Premium','Avenida Malta 285',-34.63772200,-58.41559200,'ChIJ285abc',4.25,285,1),(279,'Postres Finos','Plaza Delicia 286',-34.63872200,-58.41659200,'ChIJ286abc',4.80,286,1),(280,'Fast Food Express','Bulevar Rápido 287',-34.63972200,-58.41759200,'ChIJ287abc',3.95,287,1),(281,'Cocina Casera','Rincón Hogareño 288',-34.64072200,-58.41859200,'ChIJ288abc',4.65,288,1),(282,'Pasta Fresca','Avenida Noodle 289',-34.64172200,-58.41959200,'ChIJ289abc',4.40,289,1),(283,'Wok Master','Pasaje Asia 290',-34.64272200,-58.42059200,'ChIJ290abc',4.20,290,1),(284,'Café Aromático','Plaza Grano 291',-34.64372200,-58.42159200,'ChIJ291abc',4.55,291,1),(285,'Burger House','Avenida Hamburguesa 292',-34.64472200,-58.42259200,'ChIJ292abc',4.30,292,1),(286,'Pollo Asado','Calle Crujiente 293',-34.64572200,-58.42359200,'ChIJ293abc',4.45,293,1),(287,'Mexican Flavors','Patio Especiado 294',-34.64672200,-58.42459200,'ChIJ294abc',4.25,294,1),(288,'Sandwich Club','Boulevard Rebanada 295',-34.64772200,-58.42559200,'ChIJ295abc',4.15,295,1),(289,'Ensaladas Frescas','Avenida Lechuga 296',-34.64872200,-58.42659200,'ChIJ296abc',4.50,296,1),(290,'Crepes Deluxe','Rinconada Francesa 297',-34.64972200,-58.42759200,'ChIJ297abc',4.35,297,1),(291,'Té & Más','Pasaje Infusión 298',-34.65072200,-58.42859200,'ChIJ298abc',4.60,298,1),(292,'Carne Argentina','Avenida Asado 299',-34.65172200,-58.42959200,'ChIJ299abc',4.40,299,1),(293,'Sushi Premium','Boulevard Nipón 300',-34.65272200,-58.43059200,'ChIJ300abc',4.30,300,1),(294,'Tapas Españolas','Plaza Mediterránea 301',-34.65372200,-58.43159200,'ChIJ301abc',4.55,301,1),(295,'Café Contemporáneo','Avenida Especial 302',-34.65472200,-58.43259200,'ChIJ302abc',4.25,302,1),(296,'Pizza Artesanal','Calle Horno 303',-34.65572200,-58.43359200,'ChIJ303abc',4.45,303,1),(297,'Tacos Auténticos','Rincón Mexicano 304',-34.65672200,-58.43459200,'ChIJ304abc',4.70,304,1),(298,'Gelato Italiano','Avenida Crema 305',-34.65772200,-58.43559200,'ChIJ305abc',4.50,305,1),(299,'Mariscos del Día','Muelle Fresco 306',-34.65872200,-58.43659200,'ChIJ306abc',4.35,306,1),(300,'Cortes Selectos','Boulevard Jugoso 307',-34.65972200,-58.43759200,'ChIJ307abc',4.60,307,1),(301,'Vegetariano Gourmet','Jardín Natural 308',-34.66072200,-58.43859200,'ChIJ308abc',4.40,308,1),(302,'Pan Artesanal','Calle Masa 309',-34.66172200,-58.43959200,'ChIJ309abc',4.55,309,1),(303,'Cerveza Local','Avenida Cebada 310',-34.66272200,-58.44059200,'ChIJ310abc',4.25,310,1),(304,'Postres Elegantes','Plaza Postre 311',-34.66372200,-58.44159200,'ChIJ311abc',4.75,311,1),(305,'Comida Express','Bulevar Velocidad 312',-34.66472200,-58.44259200,'ChIJ312abc',3.90,312,1),(306,'Sabores Hogareños','Rincón Casero 313',-34.66572200,-58.44359200,'ChIJ313abc',4.65,313,1),(307,'Pasta Deliciosa','Avenida Italiana 314',-34.66672200,-58.44459200,'ChIJ314abc',4.35,314,1),(308,'Wok Veloz','Pasaje Chino 315',-34.66772200,-58.44559200,'ChIJ315abc',4.20,315,1),(309,'Café Especial','Plaza Aromática 316',-34.66872200,-58.44659200,'ChIJ316abc',4.50,316,1),(310,'Hamburguesas Premium','Avenida Carne 317',-34.66972200,-58.44759200,'ChIJ317abc',4.30,317,1),(311,'Pollo Perfecto','Calle Oro 318',-34.67072200,-58.44859200,'ChIJ318abc',4.55,318,1),(312,'Mexican Taste','Patio Caliente 319',-34.67172200,-58.44959200,'ChIJ319abc',4.40,319,1),(313,'Sandwich Gourmet','Boulevard Panini 320',-34.67272200,-58.45059200,'ChIJ320abc',4.15,320,1),(314,'Ensaladas Creativas','Avenida Fresca 321',-34.67372200,-58.45159200,'ChIJ321abc',4.45,321,1),(315,'Crepes Fantasía','Rinconada Dulce 322',-34.67472200,-58.45259200,'ChIJ322abc',4.25,322,1),(316,'Té Selecto','Pasaje Aromático 323',-34.67572200,-58.45359200,'ChIJ323abc',4.60,323,1),(317,'Asados Argentinos','Avenida Parrilla 324',-34.67672200,-58.45459200,'ChIJ324abc',4.35,324,1),(318,'Sushi Experience','Boulevard Sashimi 325',-34.67772200,-58.45559200,'ChIJ325abc',4.25,325,1),(319,'Tapas del Sol','Plaza Española 326',-34.67872200,-58.45659200,'ChIJ326abc',4.50,326,1),(320,'Café de Autor','Avenida Especial 327',-34.67972200,-58.45759200,'ChIJ327abc',4.30,327,1),(321,'Pizza Gourmet','Calle Mozzarella 328',-34.68072200,-58.45859200,'ChIJ328abc',4.40,328,1),(322,'Tacos Tradicionales','Rincón Picante 329',-34.68172200,-58.45959200,'ChIJ329abc',4.65,329,1),(323,'Helados Fantasía','Avenida Sabor 330',-34.68272200,-58.46059200,'ChIJ330abc',4.50,330,1),(324,'Mariscos Selectos','Muelle Gourmet 331',-34.68372200,-58.46159200,'ChIJ331abc',4.30,331,1),(325,'Carnes Nobles','Boulevard Premium 332',-34.68472200,-58.46259200,'ChIJ332abc',4.55,332,1),(326,'Veggie Delight','Jardín Saludable 333',-34.68572200,-58.46359200,'ChIJ333abc',4.40,333,1),(327,'Pan de Campo','Calle Rústica 334',-34.68672200,-58.46459200,'ChIJ334abc',4.50,334,1),(328,'Cerveza Artesana','Avenida Lúpulo 335',-34.68772200,-58.46559200,'ChIJ335abc',4.25,335,1),(329,'Postres de Ensueño','Plaza Dulzura 336',-34.68872200,-58.46659200,'ChIJ336abc',4.70,336,1),(330,'Fast & Fresh','Bulevar Moderno 337',-34.68972200,-58.46759200,'ChIJ337abc',4.00,337,1),(331,'Cocina de Mamá','Rincón Familiar 338',-34.69072200,-58.46859200,'ChIJ338abc',4.60,338,1),(332,'Pasta Italiana','Avenida Al dente 339',-34.69172200,-58.46959200,'ChIJ339abc',4.35,339,1),(333,'Wok Profesional','Pasaje Oriental 340',-34.69272200,-58.47059200,'ChIJ340abc',4.20,340,1),(334,'Café Selecto','Plaza Especial 341',-34.69372200,-58.47159200,'ChIJ341abc',4.45,341,1),(335,'Burger Master','Avenida Hamburguesa 342',-34.69472200,-58.47259200,'ChIJ342abc',4.30,342,1),(336,'Pollo Dorado','Calle Crujiente 343',-34.69572200,-58.47359200,'ChIJ343abc',4.50,343,1),(337,'Mexican Essence','Patio Tradicional 344',-34.69672200,-58.47459200,'ChIJ344abc',4.25,344,1),(338,'Sandwich Artesanal','Boulevard Integral 345',-34.69772200,-58.47559200,'ChIJ345abc',4.15,345,1),(339,'El Jardín de las Ensaladas','Avenida Orgánica 346',-34.69872200,-58.47659200,'ChIJ346abc',4.40,346,1),(340,'Crepería Parisina','Rinconada Francesa 347',-34.69972200,-58.47759200,'ChIJ347abc',4.30,347,1),(341,'Tetería Imperial','Pasaje Exótico 348',-34.70072200,-58.47859200,'ChIJ348abc',4.55,348,1),(342,'Parrilla Maestra','Avenida Gaucha 349',-34.70172200,-58.47959200,'ChIJ349abc',4.35,349,1),(343,'Sushi Bar Deluxe','Boulevard Japón 350',-34.70272200,-58.48059200,'ChIJ350abc',4.25,350,1),(344,'Taberna Medieval','Plaza Ibérica 351',-34.70372200,-58.48159200,'ChIJ351abc',4.50,351,1),(345,'Cafetería Vintage','Avenida Aroma 352',-34.70472200,-58.48259200,'ChIJ352abc',4.30,352,1),(346,'Pizzería Tradicional','Calle Leña 353',-34.70572200,-58.48359200,'ChIJ353abc',4.15,353,1),(347,'Tacos de la Abuela','Rincón Popular 354',-34.70672200,-58.48459200,'ChIJ354abc',4.65,354,1),(348,'Heladería Europea','Avenida Gelato 355',-34.70772200,-58.48559200,'ChIJ355abc',4.45,355,1),(349,'Marisquería Real','Muelle Comercial 356',-34.70872200,-58.48659200,'ChIJ356abc',4.20,356,1),(350,'Carnicería Real','Boulevard Carne 357',-34.70972200,-58.48759200,'ChIJ357abc',4.60,357,1),(351,'Veggie Life','Jardín Orgánico 358',-34.71072200,-58.48859200,'ChIJ358abc',4.35,358,1),(352,'Panadería Artesana','Calle Saludable 359',-34.71172200,-58.48959200,'ChIJ359abc',4.50,359,1),(353,'Cervecería Real','Avenida Malta 360',-34.71272200,-58.49059200,'ChIJ360abc',4.25,360,1),(354,'Postres Reales','Plaza Delicia 361',-34.71372200,-58.49159200,'ChIJ361abc',4.75,361,1),(355,'Fast Food King','Bulevar Rápido 362',-34.71472200,-58.49259200,'ChIJ362abc',3.95,362,1),(356,'Cocina de la Abuela','Rincón Hogareño 363',-34.71572200,-58.49359200,'ChIJ363abc',4.65,363,1),(357,'Pasta Fresca Italiana','Avenida Noodle 364',-34.71672200,-58.49459200,'ChIJ364abc',4.40,364,1),(358,'Wok Asiático','Pasaje Asia 365',-34.71772200,-58.49559200,'ChIJ365abc',4.20,365,1),(359,'Café Especial','Plaza Grano 366',-34.71872200,-58.49659200,'ChIJ366abc',4.55,366,1),(360,'Burger Supreme','Avenida Hamburguesa 367',-34.71972200,-58.49759200,'ChIJ367abc',4.30,367,1),(361,'Pollo Especial','Calle Crujiente 368',-34.72072200,-58.49859200,'ChIJ368abc',4.45,368,1),(362,'Mexican Delight','Patio Especiado 369',-34.72172200,-58.49959200,'ChIJ369abc',4.25,369,1),(363,'Sandwich Premium','Boulevard Rebanada 370',-34.72272200,-58.50059200,'ChIJ370abc',4.15,370,1),(364,'Ensaladas Premium','Avenida Lechuga 371',-34.72372200,-58.50159200,'ChIJ371abc',4.50,371,1),(365,'Crepes Premium','Rinconada Francesa 372',-34.72472200,-58.50259200,'ChIJ372abc',4.35,372,1),(366,'Té Premium','Pasaje Infusión 373',-34.72572200,-58.50359200,'ChIJ373abc',4.60,373,1),(367,'Asado Premium','Avenida Asado 374',-34.72672200,-58.50459200,'ChIJ374abc',4.40,374,1),(368,'Sushi Premium Plus','Boulevard Nipón 375',-34.72772200,-58.50559200,'ChIJ375abc',4.30,375,1),(369,'Tapas Premium','Plaza Mediterránea 376',-34.72872200,-58.50659200,'ChIJ376abc',4.55,376,1),(370,'Café Premium','Avenida Especial 377',-34.72972200,-58.50759200,'ChIJ377abc',4.25,377,1),(371,'Café Rio','2626 Mexican St, Salt Lake City, UT 84101',40.76080000,-111.89100000,'efgh6263',4.40,29,1),(372,'Noodles & Company','2727 Noodle St, Madison, WI 53703',43.07310000,-89.40120000,'ijkl6465',4.20,30,1),(373,'Pei Wei','2828 Asian Blvd, Boise, ID 83702',43.61500000,-116.20230000,'mnop6667',3.90,31,1),(374,'Café Gratitude','2929 Gratitude Rd, Berkeley, CA 94704',37.87160000,-122.27270000,'qrst6869',4.50,32,1),(375,'Firehouse Subs','3030 Sub St, Tallahassee, FL 32301',30.43830000,-84.28070000,'uvwx7071',4.30,33,1),(376,'Smashburger','3131 Smash Blvd, Richmond, VA 23220',37.54070000,-77.43600000,'yzab7273',4.20,34,1),(377,'The Habit Burger Grill','3232 Grill Rd, Raleigh, NC 27601',35.77960000,-78.63820000,'abcd7475',4.10,35,1),(378,'Crisp & Green','3333 Fresh St, Boise, ID 83705',43.61760000,-116.20670000,'efgh7677',4.20,36,1),(379,'Steak n Shake','3434 Steak St, Cincinnati, OH 45202',39.10310000,-84.51200000,'ijkl7879',3.80,37,1),(380,'Moes Southwest Grill','3535 Southwest Rd, Richmond, VA 23223',37.55340000,-77.46030000,'mnop8081',4.00,38,1),(381,'Raising Canes','3636 Chicken Blvd, Atlanta, GA 30303',33.74900000,-84.38800000,'qrst8283',4.30,39,1),(382,'Taco Bueno','3737 Taco Blvd, Dallas, TX 75202',32.77670000,-96.79700000,'uvwx8485',3.90,40,1),(383,'Café du Monde','3838 Café St, New Orleans, LA 70112',29.95840000,-90.06260000,'yzab8687',4.60,41,1),(384,'Gordon Ramsay Burger','3939 Burger Ave, Las Vegas, NV 89109',36.16990000,-115.13980000,'abcd8889',4.50,42,1),(385,'Salt Bae','4040 Salt Blvd, Chicago, IL 60603',41.87810000,-87.62980000,'efgh9091',4.70,43,1),(386,'The Cheesecake Factory','4141 Cheesecake Rd, Los Angeles, CA 90024',34.06960000,-118.44100000,'ijkl9293',4.20,44,1),(387,'P.F. Chang\'s','4242 Asian Blvd, Phoenix, AZ 85004',33.44840000,-112.07400000,'mnop9495',4.30,45,1),(388,'Bubba Gump Shrimp Co.','4343 Shrimp Rd, Myrtle Beach, SC 29577',33.68970000,-78.88670000,'qrst9697',4.00,46,1),(389,'Ruths Chris Steak House','4444 Steak Blvd, Tampa, FL 33602',27.95060000,-82.45720000,'uvwx9899',4.40,47,1),(390,'The Olive Garden','4545 Olive Ave, Miami, FL 33101',25.76170000,-80.19180000,'yzab0001',4.10,48,1),(391,'Olive Garden','4646 Olive Blvd, Portland, OR 97201',45.50510000,-122.67500000,'abcd0102',4.20,49,1),(392,'Café Aurora','Calle 392 Centro, Guadalajara, JAL, México',20.66000000,-103.34960000,'gdl392',4.00,392,1),(393,'Tacos El Herradero','Calle 393 Centro, Guadalajara, JAL, México',20.66100000,-103.35060000,'gdl393',4.07,393,1),(394,'Parrilla Tlaquepaque','Calle 394 Centro, Guadalajara, JAL, México',20.66200000,-103.35160000,'gdl394',4.14,394,1),(395,'Mariscos Vallarta','Calle 395 Centro, Guadalajara, JAL, México',20.66300000,-103.35260000,'gdl395',4.21,395,1),(396,'Café Colibrí','Calle 396 Centro, Guadalajara, JAL, México',20.66400000,-103.35360000,'gdl396',4.28,396,1),(397,'Panadería La Espiga','Calle 397 Centro, Guadalajara, JAL, México',20.66500000,-103.35460000,'gdl397',4.35,397,1),(398,'Pizza al Fuego','Calle 398 Centro, Guadalajara, JAL, México',20.66600000,-103.35560000,'gdl398',4.42,398,1),(399,'Burritos La Estación','Calle 399 Centro, Guadalajara, JAL, México',20.66700000,-103.35660000,'gdl399',4.49,399,1),(400,'Helados Nieve Viva','Calle 400 Centro, Guadalajara, JAL, México',20.66800000,-103.35760000,'gdl400',4.56,400,1),(401,'Sushi Sakura','Calle 401 Centro, Guadalajara, JAL, México',20.66900000,-103.35860000,'gdl401',4.63,401,1),(402,'Carnes El Rancho','Calle 402 Centro, Guadalajara, JAL, México',20.67000000,-103.35960000,'gdl402',4.70,402,1),(403,'Pollo Campestre','Calle 403 Centro, Guadalajara, JAL, México',20.67100000,-103.36060000,'gdl403',4.00,403,1),(404,'Wok Guadalajara','Calle 404 Centro, Guadalajara, JAL, México',20.67200000,-103.36160000,'gdl404',4.07,404,1),(405,'Ensaladas Vital','Calle 405 Centro, Guadalajara, JAL, México',20.67300000,-103.36260000,'gdl405',4.14,405,1),(406,'Crepas Dulce Luna','Calle 406 Centro, Guadalajara, JAL, México',20.67400000,-103.36360000,'gdl406',4.21,406,1),(407,'Tetería Jazmín','Calle 407 Centro, Guadalajara, JAL, México',20.67500000,-103.36460000,'gdl407',4.28,407,1),(408,'Hamburguesas Plaza','Calle 408 Centro, Guadalajara, JAL, México',20.67600000,-103.36560000,'gdl408',4.35,408,1),(409,'Veggie Verde','Calle 409 Centro, Guadalajara, JAL, México',20.67700000,-103.36660000,'gdl409',4.42,409,1),(410,'Café Horizonte','Calle 410 Centro, Guadalajara, JAL, México',20.67800000,-103.36760000,'gdl410',4.49,410,1),(411,'Pastas Italia Viva','Calle 411 Centro, Guadalajara, JAL, México',20.67900000,-103.36860000,'gdl411',4.56,411,1),(412,'Tapas La Fuente','Calle 412 Centro, Guadalajara, JAL, México',20.68000000,-103.36960000,'gdl412',4.63,412,1),(413,'Cerveza Brava','Calle 413 Centro, Guadalajara, JAL, México',20.68100000,-103.37060000,'gdl413',4.70,413,1),(414,'Postres Encanto','Calle 414 Centro, Guadalajara, JAL, México',20.68200000,-103.37160000,'gdl414',4.00,414,1),(415,'Comida de Patio','Calle 415 Centro, Guadalajara, JAL, México',20.68300000,-103.37260000,'gdl415',4.07,415,1),(416,'Cocina Colonial','Calle 416 Centro, Guadalajara, JAL, México',20.68400000,-103.37360000,'gdl416',4.14,416,1),(417,'Pizzería La Roca','Calle 417 Centro, Guadalajara, JAL, México',20.68500000,-103.37460000,'gdl417',4.21,417,1),(418,'Tacos del Bosque','Calle 418 Centro, Guadalajara, JAL, México',20.68600000,-103.37560000,'gdl418',4.28,418,1),(419,'Gelato Fior','Calle 419 Centro, Guadalajara, JAL, México',20.68700000,-103.37660000,'gdl419',4.35,419,1),(420,'Marisquería Bahía','Calle 420 Centro, Guadalajara, JAL, México',20.68800000,-103.37760000,'gdl420',4.42,420,1),(421,'Asador Los Altos','Calle 421 Centro, Guadalajara, JAL, México',20.68900000,-103.37860000,'gdl421',4.49,421,1),(422,'Sándwich Urban','Calle 422 Centro, Guadalajara, JAL, México',20.69000000,-103.37960000,'gdl422',4.56,422,1),(423,'Salads & More','Calle 423 Centro, Guadalajara, JAL, México',20.69100000,-103.38060000,'gdl423',4.63,423,1),(424,'Café Solar','Calle 424 Centro, Guadalajara, JAL, México',20.69200000,-103.38160000,'gdl424',4.70,424,1),(425,'Burgers GDL','Calle 425 Centro, Guadalajara, JAL, México',20.69300000,-103.38260000,'gdl425',4.00,425,1),(426,'Pollo Dorado JAL','Calle 426 Centro, Guadalajara, JAL, México',20.69400000,-103.38360000,'gdl426',4.07,426,1),(427,'Sazón Mexicano','Calle 427 Centro, Guadalajara, JAL, México',20.69500000,-103.38460000,'gdl427',4.14,427,1),(428,'Pan Artesanal Centro','Calle 428 Centro, Guadalajara, JAL, México',20.69600000,-103.38560000,'gdl428',4.21,428,1),(429,'Cerveza del Tapatío','Calle 429 Centro, Guadalajara, JAL, México',20.69700000,-103.38660000,'gdl429',4.28,429,1),(430,'Dulcería Azteca','Calle 430 Centro, Guadalajara, JAL, México',20.69800000,-103.38760000,'gdl430',4.35,430,1),(431,'Brasa Latina','Calle 431 Centro, Guadalajara, JAL, México',20.69900000,-103.38860000,'gdl431',4.42,431,1),(432,'Rinconcito Gourmet','Calle 432 Centro, Guadalajara, JAL, México',20.70000000,-103.38960000,'gdl432',4.49,432,1),(433,'Pizza Express JAL','Calle 433 Centro, Guadalajara, JAL, México',20.70100000,-103.39060000,'gdl433',4.56,433,1),(434,'Sushi Nippon','Calle 434 Centro, Guadalajara, JAL, México',20.70200000,-103.39160000,'gdl434',4.63,434,1),(435,'Fonda Tradición','Calle 435 Centro, Guadalajara, JAL, México',20.70300000,-103.39260000,'gdl435',4.70,435,1),(436,'Ensaladas del Lago','Calle 436 Centro, Guadalajara, JAL, México',20.70400000,-103.39360000,'gdl436',4.00,436,1),(437,'Crepas de Oro','Calle 437 Centro, Guadalajara, JAL, México',20.70500000,-103.39460000,'gdl437',4.07,437,1),(438,'Té Verde','Calle 438 Centro, Guadalajara, JAL, México',20.70600000,-103.39560000,'gdl438',4.14,438,1),(439,'Parrilla del Parque','Calle 439 Centro, Guadalajara, JAL, México',20.70700000,-103.39660000,'gdl439',4.21,439,1),(440,'Tacos de Mercado','Calle 440 Centro, Guadalajara, JAL, México',20.70800000,-103.39760000,'gdl440',4.28,440,1),(441,'Café Estación','Calle 441 Centro, Guadalajara, JAL, México',20.70900000,-103.39860000,'gdl441',4.35,441,1),(442,'Pasta Primavera','Calle 442 Centro, Guadalajara, JAL, México',20.71000000,-103.39960000,'gdl442',4.42,442,1),(443,'Taberna Jalisco','Calle 443 Centro, Guadalajara, JAL, México',20.71100000,-103.40060000,'gdl443',4.49,443,1),(444,'Heladería Colón','Calle 444 Centro, Guadalajara, JAL, México',20.71200000,-103.40160000,'gdl444',4.56,444,1),(445,'Mariscos del Pacífico','Calle 445 Centro, Guadalajara, JAL, México',20.71300000,-103.40260000,'gdl445',4.63,445,1),(446,'Carnes Finas','Calle 446 Centro, Guadalajara, JAL, México',20.71400000,-103.40360000,'gdl446',4.70,446,1),(447,'Veggie Roots','Calle 447 Centro, Guadalajara, JAL, México',20.71500000,-103.40460000,'gdl447',4.00,447,1),(448,'Pan del Barrio','Calle 448 Centro, Guadalajara, JAL, México',20.71600000,-103.40560000,'gdl448',4.07,448,1),(449,'Cerveza Artesanal GDL','Calle 449 Centro, Guadalajara, JAL, México',20.71700000,-103.40660000,'gdl449',4.14,449,1),(450,'Postres Delirio','Calle 450 Centro, Guadalajara, JAL, México',20.71800000,-103.40760000,'gdl450',4.21,450,1),(451,'Comida Express JAL','Calle 451 Centro, Guadalajara, JAL, México',20.71900000,-103.40860000,'gdl451',4.28,451,1),(452,'Cocina de la Abuela','Calle 452 Centro, Guadalajara, JAL, México',20.72000000,-103.40960000,'gdl452',4.35,452,1),(453,'Pizzería Forno','Calle 453 Centro, Guadalajara, JAL, México',20.72100000,-103.41060000,'gdl453',4.42,453,1),(454,'Tacos Revolución','Calle 454 Centro, Guadalajara, JAL, México',20.72200000,-103.41160000,'gdl454',4.49,454,1),(455,'Gelato Cielo','Calle 455 Centro, Guadalajara, JAL, México',20.72300000,-103.41260000,'gdl455',4.56,455,1),(456,'Marisquería Coral','Calle 456 Centro, Guadalajara, JAL, México',20.72400000,-103.41360000,'gdl456',4.63,456,1),(457,'Asador del Sol','Calle 457 Centro, Guadalajara, JAL, México',20.72500000,-103.41460000,'gdl457',4.70,457,1),(458,'Sándwich Capital','Calle 458 Centro, Guadalajara, JAL, México',20.72600000,-103.41560000,'gdl458',4.00,458,1),(459,'Salad Factory','Calle 459 Centro, Guadalajara, JAL, México',20.72700000,-103.41660000,'gdl459',4.07,459,1),(460,'Café Luz','Calle 460 Centro, Guadalajara, JAL, México',20.72800000,-103.41760000,'gdl460',4.14,460,1),(461,'Burger Station','Calle 461 Centro, Guadalajara, JAL, México',20.72900000,-103.41860000,'gdl461',4.21,461,1),(462,'Pollo Pibil','Calle 462 Centro, Guadalajara, JAL, México',20.73000000,-103.41960000,'gdl462',4.28,462,1),(463,'Sazón del Valle','Calle 463 Centro, Guadalajara, JAL, México',20.73100000,-103.42060000,'gdl463',4.35,463,1),(464,'Pan Dulce','Calle 464 Centro, Guadalajara, JAL, México',20.73200000,-103.42160000,'gdl464',4.42,464,1),(465,'Cervecería Tepatitlán','Calle 465 Centro, Guadalajara, JAL, México',20.73300000,-103.42260000,'gdl465',4.49,465,1),(466,'Dulce Tentación','Calle 466 Centro, Guadalajara, JAL, México',20.73400000,-103.42360000,'gdl466',4.56,466,1),(467,'Brasa Brava','Calle 467 Centro, Guadalajara, JAL, México',20.73500000,-103.42460000,'gdl467',4.63,467,1),(468,'Rincón del Chef','Calle 468 Centro, Guadalajara, JAL, México',20.73600000,-103.42560000,'gdl468',4.70,468,1),(469,'Pizza Urbana','Calle 469 Centro, Guadalajara, JAL, México',20.73700000,-103.42660000,'gdl469',4.00,469,1),(470,'Sushi Zen','Calle 470 Centro, Guadalajara, JAL, México',20.73800000,-103.42760000,'gdl470',4.07,470,1),(471,'Fonda de la Rosa','Calle 471 Centro, Guadalajara, JAL, México',20.73900000,-103.42860000,'gdl471',4.14,471,1),(472,'Ensaladas Frescura','Calle 472 Centro, Guadalajara, JAL, México',20.74000000,-103.42960000,'gdl472',4.21,472,1),(473,'Crepas Caramelo','Calle 473 Centro, Guadalajara, JAL, México',20.74100000,-103.43060000,'gdl473',4.28,473,1),(474,'Té Chai House','Calle 474 Centro, Guadalajara, JAL, México',20.74200000,-103.43160000,'gdl474',4.35,474,1),(475,'Parrilla Río','Calle 475 Centro, Guadalajara, JAL, México',20.74300000,-103.43260000,'gdl475',4.42,475,1),(476,'Tacos Santa','Calle 476 Centro, Guadalajara, JAL, México',20.74400000,-103.43360000,'gdl476',4.49,476,1),(477,'Café Bohío','Calle 477 Centro, Guadalajara, JAL, México',20.74500000,-103.43460000,'gdl477',4.56,477,1),(478,'Pasta d\'Oro','Calle 478 Centro, Guadalajara, JAL, México',20.74600000,-103.43560000,'gdl478',4.63,478,1),(479,'Taberna Vieja','Calle 479 Centro, Guadalajara, JAL, México',20.74700000,-103.43660000,'gdl479',4.70,479,1),(480,'Helados Tropical','Calle 480 Centro, Guadalajara, JAL, México',20.74800000,-103.43760000,'gdl480',4.00,480,1),(481,'Mariscos Oro Negro','Calle 481 Centro, Guadalajara, JAL, México',20.74900000,-103.43860000,'gdl481',4.07,481,1),(482,'Carnes del Campo','Calle 482 Centro, Guadalajara, JAL, México',20.75000000,-103.43960000,'gdl482',4.14,482,1),(483,'Veggie Life GDL','Calle 483 Centro, Guadalajara, JAL, México',20.75100000,-103.44060000,'gdl483',4.21,483,1),(484,'Pan del Cielo','Calle 484 Centro, Guadalajara, JAL, México',20.75200000,-103.44160000,'gdl484',4.28,484,1),(485,'Cerveza Azul','Calle 485 Centro, Guadalajara, JAL, México',20.75300000,-103.44260000,'gdl485',4.35,485,1),(486,'Postres Sublime','Calle 486 Centro, Guadalajara, JAL, México',20.75400000,-103.44360000,'gdl486',4.42,486,1),(487,'Comida Rápida Plus','Calle 487 Centro, Guadalajara, JAL, México',20.75500000,-103.44460000,'gdl487',4.49,487,1),(488,'Cocina Moderna','Calle 488 Centro, Guadalajara, JAL, México',20.75600000,-103.44560000,'gdl488',4.56,488,1),(489,'Pizzería Dolci','Calle 489 Centro, Guadalajara, JAL, México',20.75700000,-103.44660000,'gdl489',4.63,489,1),(490,'Tacos La Ruta','Calle 490 Centro, Guadalajara, JAL, México',20.75800000,-103.44760000,'gdl490',4.70,490,1),(491,'Gelato Sole','Calle 491 Centro, Guadalajara, JAL, México',20.75900000,-103.44860000,'gdl491',4.00,491,1),(492,'Marisquería Salitre','Calle 492 Centro, Guadalajara, JAL, México',20.76000000,-103.44960000,'gdl492',4.07,492,1),(493,'Asador Plaza','Calle 493 Centro, Guadalajara, JAL, México',20.76100000,-103.45060000,'gdl493',4.14,493,1),(494,'Sándwich Brood','Calle 494 Centro, Guadalajara, JAL, México',20.76200000,-103.45160000,'gdl494',4.21,494,1),(495,'Salad Garden','Calle 495 Centro, Guadalajara, JAL, México',20.76300000,-103.45260000,'gdl495',4.28,495,1),(496,'Café Pórtico','Calle 496 Centro, Guadalajara, JAL, México',20.76400000,-103.45360000,'gdl496',4.35,496,1),(497,'Burger Republic','Calle 497 Centro, Guadalajara, JAL, México',20.76500000,-103.45460000,'gdl497',4.42,497,1),(498,'Pollo Fuego','Calle 498 Centro, Guadalajara, JAL, México',20.76600000,-103.45560000,'gdl498',4.49,498,1),(499,'Sazón Jalisciense','Calle 499 Centro, Guadalajara, JAL, México',20.76700000,-103.45660000,'gdl499',4.56,499,1),(500,'Pan Tostado','Calle 500 Centro, Guadalajara, JAL, México',20.76800000,-103.45760000,'gdl500',4.63,500,1);
/*!40000 ALTER TABLE `RESTAURANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `RESTAURANTE1`
--

DROP TABLE IF EXISTS `RESTAURANTE1`;
/*!50001 DROP VIEW IF EXISTS `RESTAURANTE1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RESTAURANTE1` AS SELECT 
 1 AS `id`,
 1 AS `nombre_sucursal`,
 1 AS `direccion`,
 1 AS `latitud`,
 1 AS `longitud`,
 1 AS `google_place_id`,
 1 AS `rating_google`,
 1 AS `admin_restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RESTAURANTE2`
--

DROP TABLE IF EXISTS `RESTAURANTE2`;
/*!50001 DROP VIEW IF EXISTS `RESTAURANTE2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RESTAURANTE2` AS SELECT 
 1 AS `id`,
 1 AS `nombre_sucursal`,
 1 AS `direccion`,
 1 AS `latitud`,
 1 AS `longitud`,
 1 AS `google_place_id`,
 1 AS `rating_google`,
 1 AS `admin_restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RESTAURANTE3`
--

DROP TABLE IF EXISTS `RESTAURANTE3`;
/*!50001 DROP VIEW IF EXISTS `RESTAURANTE3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RESTAURANTE3` AS SELECT 
 1 AS `id`,
 1 AS `nombre_sucursal`,
 1 AS `direccion`,
 1 AS `latitud`,
 1 AS `longitud`,
 1 AS `google_place_id`,
 1 AS `rating_google`,
 1 AS `admin_restaurante_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `USUARIO`
--

DROP TABLE IF EXISTS `USUARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USUARIO` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `rol` enum('admin','cliente','restaurante') NOT NULL,
  `activo` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIO`
--

LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
INSERT INTO `USUARIO` VALUES (1,'John','Doe','john.doe@gmail.com','555-1234','password123','cliente',1),(2,'Jane','Smith','jane.smith@hotmail.com','555-5678','password456','restaurante',1),(3,'Michael','Johnson','michael.johnson@yahoo.com','555-8765','password789','cliente',1),(4,'Emily','Davis','emily.davis@gmail.com','555-2345','password321','restaurante',1),(5,'James','Miller','james.miller@outlook.com','555-6789','password654','cliente',1),(6,'Mary','Wilson','mary.wilson@gmail.com','555-1357','password987','cliente',1),(7,'David','Moore','david.moore@hotmail.com','555-2468','password1234','restaurante',1),(8,'Linda','Taylor','linda.taylor@yahoo.com','555-3579','password4321','cliente',1),(9,'Robert','Anderson','robert.anderson@gmail.com','555-8642','password8765','cliente',1),(10,'Jennifer','Thomas','jennifer.thomas@outlook.com','555-9753','password5432','restaurante',1),(11,'William','Jackson','william.jackson@yahoo.com','555-1593','password2134','cliente',1),(12,'Patricia','White','patricia.white@gmail.com','555-7531','password6543','cliente',1),(13,'Joseph','Harris','joseph.harris@hotmail.com','555-1598','password9876','cliente',1),(14,'Elizabeth','Martin','elizabeth.martin@outlook.com','555-8529','password6789','restaurante',1),(15,'Charles','Garcia','charles.garcia@yahoo.com','555-9632','password4321','cliente',1),(16,'Susan','Rodriguez','susan.rodriguez@gmail.com','555-2583','password8765','cliente',1),(17,'Christopher','Martinez','christopher.martinez@hotmail.com','555-6472','password12345','restaurante',1),(18,'Jessica','Clark','jessica.clark@outlook.com','555-7416','password54321','cliente',1),(19,'Daniel','Lewis','daniel.lewis@gmail.com','555-9637','password23456','cliente',1),(20,'Sarah','Young','sarah.young@yahoo.com','555-8943','password87654','restaurante',1),(21,'Brian','King','brian.king@outlook.com','555-3587','password45678','cliente',1),(22,'Nancy','Scott','nancy.scott@gmail.com','555-9472','password98765','cliente',1),(23,'Kevin','Green','kevin.green@hotmail.com','555-3584','password34567','restaurante',1),(24,'Betty','Adams','betty.adams@outlook.com','555-2874','password87654','cliente',1),(25,'Mark','Baker','mark.baker@yahoo.com','555-6573','password456789','cliente',1),(26,'Helen','Gonzalez','helen.gonzalez@gmail.com','555-9248','password123456','restaurante',1),(27,'Steven','Nelson','steven.nelson@hotmail.com','555-6732','password234567','cliente',1),(28,'Karen','Carter','karen.carter@outlook.com','555-3847','password345678','cliente',1),(29,'Edward','Mitchell','edward.mitchell@yahoo.com','555-9865','password2345678','restaurante',1),(30,'Sandra','Perez','sandra.perez@gmail.com','555-4729','password7654321','cliente',1),(31,'George','Roberts','george.roberts@hotmail.com','555-2398','password123987','cliente',1),(32,'Ruth','Walker','ruth.walker@outlook.com','555-7632','password765432','restaurante',1),(33,'Andrew','Hall','andrew.hall@yahoo.com','555-9123','password1234','cliente',1),(34,'Frances','Allen','frances.allen@gmail.com','555-6384','password987654','cliente',1),(35,'Jason','Young','jason.young@hotmail.com','555-1594','password2345','restaurante',1),(36,'Dorothy','King','dorothy.king@outlook.com','555-7458','password654321','cliente',1),(37,'Henry','Wright','henry.wright@yahoo.com','555-3587','password1234567','cliente',1),(38,'Marilyn','Lopez','marilyn.lopez@gmail.com','555-1239','password54321','restaurante',1),(39,'Thomas','Hill','thomas.hill@hotmail.com','555-5289','password12321','cliente',1),(40,'Deborah','Green','deborah.green@outlook.com','555-4873','password78901','cliente',1),(41,'Gary','Adams','gary.adams@yahoo.com','555-9832','password23456','restaurante',1),(42,'Kimberly','Baker','kimberly.baker@gmail.com','555-8376','password65432','cliente',1),(43,'Ryan','Gonzalez','ryan.gonzalez@hotmail.com','555-4923','password876543','cliente',1),(44,'Angela','Nelson','angela.nelson@outlook.com','555-7641','password1234567','restaurante',1),(45,'Jack','Scott','jack.scott@yahoo.com','555-8274','password2345678','cliente',1),(46,'Shirley','Perez','shirley.perez@gmail.com','555-9584','password2345','cliente',1),(47,'Scott','Roberts','scott.roberts@hotmail.com','555-2638','password76543','restaurante',1),(48,'Laura','Martinez','laura.martinez@outlook.com','555-4723','password12345','cliente',1),(49,'Steven','White','steven.white@yahoo.com','555-8593','password54321','restaurante',1),(50,'Rachel','Harris','rachel.harris@gmail.com','555-6714','password98765','cliente',1),(52,'Christian','Escamilla','capimarquez23@gmail.com','4494673952','123456','cliente',1),(53,'Aaron','Raygoza','raygoza@gmail.com','1234567890','123456','admin',1),(54,'Michelle','Gomez','mich@gmail.com','7894561230','123456','cliente',1),(55,'Juan ','Esparza','juan@inadaptados.mx','1234567890','123456','cliente',1),(56,'Salvador','Raya','chavaraya@gmail.com','1234567890','123456','restaurante',1),(57,'Salvador','Iglesias','chavaiglesias@hotmail.com','1234567890','123456','restaurante',1),(58,'Carlos','Bremer','charly@hotmail.com','1234567890','123456','restaurante',1),(59,'Diego','Macias','emma@gmail.com','1234567890','123456','restaurante',1),(60,'Juan','Pérez','juan.perez@example.com','5551234567','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(61,'María','Gómez','maria.gomez@example.com','5552345678','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(62,'Carlos','López','carlos.lopez@example.com','5553456789','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(63,'Ana','Martínez','ana.martinez@example.com','5554567890','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(64,'Luis','Rodríguez','luis.rodriguez@example.com','5555678901','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(65,'Laura','Hernández','laura.hernandez@example.com','5556789012','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(66,'Pedro','Sánchez','pedro.sanchez@example.com','5557890123','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(67,'Sofía','Ramírez','sofia.ramirez@example.com','5558901234','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(68,'Jorge','Flores','jorge.flores@example.com','5559012345','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(69,'Elena','Torres','elena.torres@example.com','5550123456','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(70,'Ricardo','Vargas','ricardo.vargas@example.com','5551234501','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(71,'Patricia','Castro','patricia.castro@example.com','5552345601','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(72,'Fernando','Mendoza','fernando.mendoza@example.com','5553456701','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(73,'Gabriela','Ríos','gabriela.rios@example.com','5554567801','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(74,'Diego','Ortega','diego.ortega@example.com','5555678901','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(75,'Adriana','Guerrero','adriana.guerrero@example.com','5556789001','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(76,'Roberto','Paredes','roberto.paredes@example.com','5557890101','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(77,'Isabel','Cortés','isabel.cortes@example.com','5558901201','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(78,'Héctor','Núñez','hector.nunez@example.com','5559012301','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(79,'Lucía','Medina','lucia.medina@example.com','5550123401','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(80,'Oscar','Silva','oscar.silva@example.com','5551234502','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(81,'Claudia','Rojas','claudia.rojas@example.com','5552345602','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(82,'Raúl','Miranda','raul.miranda@example.com','5553456702','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(83,'Carmen','Santos','carmen.santos@example.com','5554567802','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(84,'Arturo','Delgado','arturo.delgado@example.com','5555678902','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(85,'Verónica','Cruz','veronica.cruz@example.com','5556789002','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(86,'Manuel','Reyes','manuel.reyes@example.com','5557890102','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(87,'Diana','Aguilar','diana.aguilar@example.com','5558901202','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(88,'Javier','Fuentes','javier.fuentes@example.com','5559012302','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(89,'Teresa','Márquez','teresa.marquez@example.com','5550123402','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(90,'Alejandro','Campos','alejandro.campos@example.com','5551234503','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(91,'Silvia','Vega','silvia.vega@example.com','5552345603','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(92,'Francisco','Valdez','francisco.valdez@example.com','5553456703','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(93,'Beatriz','Salazar','beatriz.salazar@example.com','5554567803','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(94,'Eduardo','Orozco','eduardo.orozco@example.com','5555678903','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(95,'Rosa','Mejía','rosa.mejia@example.com','5556789003','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(96,'Alberto','Cervantes','alberto.cervantes@example.com','5557890103','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(97,'Mónica','Gallegos','monica.gallegos@example.com','5558901203','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(98,'Sergio','Velázquez','sergio.velazquez@example.com','5559012303','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(99,'Alicia','Navarro','alicia.navarro@example.com','5550123403','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(100,'José','Espinoza','jose.espinoza@example.com','5551234504','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(101,'Margarita','Montes','margarita.montes@example.com','5552345604','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(102,'Miguel','Rosales','miguel.rosales@example.com','5553456704','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(103,'Daniela','Acosta','daniela.acosta@example.com','5554567804','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(104,'Raúl','Padilla','raul.padilla@example.com','5555678904','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(105,'Lourdes','Carrillo','lourdes.carrillo@example.com','5556789004','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(106,'Guillermo','Franco','guillermo.franco@example.com','5557890104','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(107,'Norma','Barrera','norma.barrera@example.com','5558901204','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(108,'Rubén','Maldonado','ruben.maldonado@example.com','5559012304','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(109,'Irma','Castillo','irma.castillo@example.com','5550123404','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(110,'Rodrigo','Tapia','rodrigo.tapia@example.com','5551234505','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(111,'Marisol','Juárez','marisol.juarez@example.com','5552345605','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(112,'Felipe','Zúñiga','felipe.zuniga@example.com','5553456705','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(113,'Leticia','Sosa','leticia.sosa@example.com','5554567805','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(114,'Hugo','Ibarra','hugo.ibarra@example.com','5555678905','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(115,'Yolanda','Quintero','yolanda.quintero@example.com','5556789005','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(116,'Gerardo','Rangel','gerardo.rangel@example.com','5557890105','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(117,'Sara','Villarreal','sara.villarreal@example.com','5558901205','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(118,'Martín','Zamora','martin.zamora@example.com','5559012305','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(119,'Paulina','Olvera','paulina.olvera@example.com','5550123405','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(120,'César','Ponce','cesar.ponce@example.com','5551234506','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(121,'Alejandra','Valencia','alejandra.valencia@example.com','5552345606','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(122,'Rafael','Corona','rafael.corona@example.com','5553456706','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(123,'Adrián','Lozano','adrian.lozano@example.com','5554567806','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(124,'Olivia','Magaña','olivia.magana@example.com','5555678906','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(125,'Salvador','Aguirre','salvador.aguirre@example.com','5556789006','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(126,'Victoria','Andrade','victoria.andrade@example.com','5557890106','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(127,'Emilio','Castañeda','emilio.castaneda@example.com','5558901206','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(128,'Natalia','Cabrera','natalia.cabrera@example.com','5559012306','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(129,'René','Trejo','rene.trejo@example.com','5550123406','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(130,'Mariana','Bernal','mariana.bernal@example.com','5551234507','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(131,'Joaquín','Palacios','joaquin.palacios@example.com','5552345607','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(132,'Xóchitl','Galván','xochitl.galvan@example.com','5553456707','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(133,'Federico','Cárdenas','federico.cardenas@example.com','5554567807','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(134,'Aurora','Robles','aurora.robles@example.com','5555678907','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(135,'Ernesto','De La Cruz','ernesto.delacruz@example.com','5556789007','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(136,'Esperanza','Camacho','esperanza.camacho@example.com','5557890107','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(137,'Leonardo','Rivas','leonardo.rivas@example.com','5558901207','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(138,'Carolina','Salinas','carolina.salinas@example.com','5559012307','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(139,'Mauricio','Vera','mauricio.vera@example.com','5550123407','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(140,'Rocío','Téllez','rocio.tellez@example.com','5551234508','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(141,'Alfonso','Colín','alfonso.colin@example.com','5552345608','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(142,'Luz','Bustamante','luz.bustamante@example.com','5553456708','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(143,'Humberto','Ávila','humberto.avila@example.com','5554567808','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(144,'Consuelo','Arroyo','consuelo.arroyo@example.com','5555678908','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(145,'Reynaldo','Cordero','reynaldo.cordero@example.com','5556789008','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(146,'Estela','León','estela.leon@example.com','5557890108','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(147,'Fabián','Mireles','fabian.mireles@example.com','5558901208','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(148,'Yesenia','Alvarado','yesenia.alvarado@example.com','5559012308','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(149,'Saúl','Zavala','saul.zavala@example.com','5550123408','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(150,'Guadalupe','Valenzuela','guadalupe.valenzuela@example.com','5551234509','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(151,'Marcela','Escobar','marcela.escobar@example.com','5552345609','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(152,'Rodolfo','Duarte','rodolfo.duarte@example.com','5553456709','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(153,'Araceli','Contreras','araceli.contreras@example.com','5554567809','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(154,'Erick','Méndez','erick.mendez@example.com','5555678909','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(155,'Brenda','Cuevas','brenda.cuevas@example.com','5556789009','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(156,'Omar','Barajas','omar.barajas@example.com','5557890109','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(157,'Cecilia','Cisneros','cecilia.cisneros@example.com','5558901209','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(158,'Félix','Villanueva','felix.villanueva@example.com','5559012309','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(159,'Liliana','Lara','liliana.lara@example.com','5550123409','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(160,'Agustín','Zepeda','agustin.zepeda@example.com','5551234510','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(161,'Ruth','Romo','ruth.romo@example.com','5552345610','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(162,'Hilda','Benítez','hilda.benitez@example.com','5553456710','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(163,'Alfredo','Pineda','alfredo.pineda@example.com','5554567810','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(164,'Susana','Calderón','susana.calderon@example.com','5555678910','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(165,'Jaime','Reséndiz','jaime.resendiz@example.com','5556789010','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(166,'Nora','Tovar','nora.tovar@example.com','5557890110','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(167,'Juan','Guzmán','enrique.guzman@gmail.com','5558901210','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(168,'Julia','Serrano','julia.serrano@hotmail.com','5559012310','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(169,'Pablo','Rocha','pablo.rocha@gmail.com','5550123410','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(170,'Maribel','Ochoa','maribel.ochoa@hotmail.com','5551234511','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(171,'Samuel','Castaño','samuel.castano@gmail.com','5552345611','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(172,'Katia','Peralta','katia.peralta@hotmail.com','5553456711','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(173,'Octavio','Carranza','octavio.carranza@gmail.com','5554567811','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(174,'Lorenzo','Varela','lorenzo.varela@hotmail.com','5555678911','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(175,'Esteban','Perales','esteban.perales@gmail.com','5556789011','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(176,'Rosario','Solís','rosario.solis@hotmail.com','5557890111','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(177,'Marcos','Velasco','marcos.velasco@gmail.com','5558901211','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(178,'Jimena','Lozada','jimena.lozada@hotmail.com','5559012311','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(179,'Rogelio','Gamez','rogelio.gamez@gmail.com','5550123411','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(180,'Magdalena','Tirado','magdalena.tirado@hotmail.com','5551234512','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(181,'Fermín','Arredondo','fermin.arredondo@gmail.com','5552345612','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(182,'Anabel','Montoya','anabel.montoya@hotmail.com','5553456712','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(183,'Baltazar','Collado','baltazar.collado@gmail.com','5554567812','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(184,'Candelaria','Rosa','candelaria.rosa@hotmail.com','5555678912','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(185,'Teodoro','Cepeda','teodoro.cepeda@gmail.com','5556789012','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(186,'Vanesa','Mesa','vanesa.mesa@hotmail.com','5557890112','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(187,'Gregorio','Polanco','gregorio.polanco@gmail.com','5558901212','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(188,'Nadia','Barrientos','nadia.barrientos@hotmail.com','5559012312','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(189,'Severo','Rueda','severo.rueda@gmail.com','5550123412','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(190,'Gisela','Paz','gisela.paz@hotmail.com','5551234513','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(191,'Florentino','Sotelo','florentino.sotelo@gmail.com','5552345613','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(192,'Pilar','Alcaraz','pilar.alcaraz@hotmail.com','5553456713','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(193,'Bonifacio','Arteaga','bonifacio.arteaga@gmail.com','5554567813','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(194,'Rita','Vallejo','rita.vallejo@hotmail.com','5555678913','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(195,'Valentín','Coria','valentin.coria@gmail.com','5556789013','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(196,'Lidia','Del Valle','lidia.delvalle@hotmail.com','5557890113','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(197,'Cirilo','Carrasco','cirilo.carrasco@gmail.com','5558901213','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(198,'Eugenia','Castañón','eugenia.castanon@hotmail.com','5559012313','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(199,'Celestino','Barragán','celestino.barragan@gmail.com','5550123413','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(200,'Asunción','Gallardo','asuncion.gallardo@hotmail.com','5551234514','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(201,'Ezequiel','Oliva','ezequiel.oliva@gmail.com','5552345614','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(202,'Dorotea','Mena','dorotea.mena@hotmail.com','5553456714','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(203,'Leopoldo','Arriaga','leopoldo.arriaga@gmail.com','5554567814','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(204,'Ester','Vergara','ester.vergara@hotmail.com','5555678914','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(205,'Amador','Zaragoza','amador.zaragoza@gmail.com','5556789014','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(206,'Benita','Trujillo','benita.trujillo@hotmail.com','5557890114','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(207,'Casimiro','Salgado','casimiro.salgado@gmail.com','5558901214','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(208,'Rosalía','Pacheco','rosalia.pacheco@hotmail.com','5559012314','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(209,'Gumersindo','Leyva','gumersindo.leyva@gmail.com','5550123414','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(210,'Filomena','Márques','filomena.marques@hotmail.com','5551234515','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(211,'Heriberto','Cervántez','heriberto.cervantez@gmail.com','5552345615','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(212,'Jacinta','Villalobos','jacinta.villalobos@hotmail.com','5553456715','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(213,'Nicanor','Zamudio','nicanor.zamudio@gmail.com','5554567815','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(214,'Prudencia','Yáñez','prudencia.yanez@hotmail.com','5555678915','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(215,'Remedios','Quiñones','remedios.quinones@gmail.com','5556789015','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(216,'Saturnino','Zambrano','saturnino.zambrano@hotmail.com','5557890115','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(217,'Tomasa','Uribe','tomasa.uribe@gmail.com','5558901215','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(218,'Vicenta','Xicoténcatl','vicenta.xicotencatl@hotmail.com','5559012315','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(219,'Zenón','Wong','zenon.wong@gmail.com','5550123415','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(220,'Amalia','Vázquez','amalia.vazquez@hotmail.com','5551234516','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(221,'Bernabé','Urías','bernabe.urias@gmail.com','5552345616','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(222,'Custodia','Tapia','custodia.tapia@hotmail.com','5553456716','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(223,'Donato','Sosa','donato.sosa@gmail.com','5554567816','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(224,'Elvira','Roldán','elvira.roldan@hotmail.com','5555678916','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(225,'Froilán','Peña','froilan.pena@gmail.com','5556789016','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(226,'Gertrudis','Ocampo','gertrudis.ocampo@hotmail.com','5557890116','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(227,'Hilario','Nava','hilario.nava@gmail.com','5558901216','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(228,'Inocencio','Munguía','inocencio.munguia@hotmail.com','5559012316','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(229,'Jovita','Luevano','jovita.luevano@gmail.com','5550123416','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(230,'Lorenza','Kuri','lorenza.kuri@hotmail.com','5551234517','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(231,'Macario','Jasso','macario.jasso@gmail.com','5552345617','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(232,'Narcisa','Ibarra','narcisa.ibarra@hotmail.com','5553456717','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(233,'Otilia','Hurtado','otilia.hurtado@gmail.com','5554567817','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(234,'Pascual','Griego','pascual.griego@hotmail.com','5555678917','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(235,'Quirino','Fierro','quirino.fierro@gmail.com','5556789017','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(236,'Raimunda','Escamilla','raimunda.escamilla@hotmail.com','5557890117','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(237,'Sabino','Dávila','sabino.davila@gmail.com','5558901217','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(238,'Timoteo','Cisneros','timoteo.cisneros@hotmail.com','5559012317','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(239,'Úrsula','Bustos','ursula.bustos@gmail.com','5550123417','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(240,'Vidal','Águila','vidal.aguila@hotmail.com','5551234518','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(241,'Wenceslao','Zúñiga','wenceslao.zuniga@gmail.com','5552345618','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(242,'Yolanda','Yáñez','yolanda.yanez@hotmail.com','5553456718','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(243,'Zacarías','Xolalpa','zacarias.xolalpa@gmail.com','5554567818','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(244,'Abigail','Varela','abigail.varela@hotmail.com','5555678918','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(245,'Bartolo','Téllez','bartolo.tellez@gmail.com','5556789018','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(246,'Cleotilde','Saucedo','cleotilde.saucedo@hotmail.com','5557890118','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(247,'Demetrio','Ríos','demetrio.rios@gmail.com','5558901218','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(248,'Eusebia','Quintana','eusebia.quintana@hotmail.com','5559012318','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(249,'Fausto','Ponce','fausto.ponce@gmail.com','5550123418','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(250,'Genoveva','Olmos','genoveva.olmos@hotmail.com','5551234519','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(251,'Herminio','Nieto','herminio.nieto@gmail.com','5552345619','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(252,'Ifigenia','Muro','ifigenia.muro@hotmail.com','5553456719','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(253,'Jacinto','Luevano','jacinto.luevano@gmail.com','5554567819','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(254,'Karina','Kuri','karina.kuri@hotmail.com','5555678919','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(255,'Leocadia','Jaramillo','leocadia.jaramillo@gmail.com','5556789019','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(256,'Máximo','Infante','maximo.infante@hotmail.com','5557890119','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(257,'Nereida','Haro','nereida.haro@gmail.com','5558901219','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(258,'Olegario','Gálvez','olegario.galvez@hotmail.com','5559012319','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(259,'Petronila','Fabela','petronila.fabela@gmail.com','5550123419','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(260,'Querubín','Escobedo','querubin.escobedo@hotmail.com','5551234520','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(261,'Rosendo','Dominguez','rosendo.dominguez@gmail.com','5552345620','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(262,'Soledad','Coria','soledad.coria@hotmail.com','5553456720','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(263,'Tadeo','Bustamante','tadeo.bustamante@gmail.com','5554567820','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(264,'Úbeda','Álvarez','ubeda.alvarez@hotmail.com','5555678920','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(265,'Venancio','Zambrano','venancio.zambrano@gmail.com','5556789020','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(266,'Waldino','Yáñez','waldino.yanez@hotmail.com','5557890120','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(267,'Ximena','Xicoténcatl','ximena.xicotencatl@gmail.com','5558901220','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(268,'Yago','Wong','yago.wong@hotmail.com','5559012320','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(269,'Zenaida','Villa','zenaida.villa@gmail.com','5550123420','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(270,'Aarón','Valdivia','aaron.valdivia@gmail.com','5551234521','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(271,'Bárbara','Ugalde','barbara.ugalde@hotmail.com','5552345621','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(272,'Cándido','Tovar','candido.tovar@gmail.com','5553456721','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(273,'Dolores','Sarmiento','dolores.sarmiento@hotmail.com','5554567821','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(274,'Eligio','Ruelas','eligio.ruelas@gmail.com','5555678921','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(275,'Fabiola','Quintero','fabiola.quintero@hotmail.com','5556789021','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(276,'Gervasio','Pantoja','gervasio.pantoja@gmail.com','5557890121','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(277,'Herminia','Olea','herminia.olea@hotmail.com','5558901221','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(278,'Ignacio','Narváez','ignacio.narvaez@gmail.com','5559012321','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(279,'Julieta','Mireles','julieta.mireles@hotmail.com','5550123421','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(280,'Kristian','Llanos','kristian.llanos@gmail.com','5551234522','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(281,'Leonor','Kuri','leonor.kuri@hotmail.com','5552345622','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(282,'Moisés','Jasso','moises.jasso@gmail.com','5553456722','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(283,'Noemí','Ibarra','noemi.ibarra@hotmail.com','5554567822','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(284,'Oswaldo','Hurtado','oswaldo.hurtado@gmail.com','5555678922','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(285,'Perla','Gómez','perla.gomez@hotmail.com','5556789022','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(286,'Quintín','Fierro','quintin.fierro@gmail.com','5557890122','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(287,'Rosalba','Escalante','rosalba.escalante@hotmail.com','5558901222','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(288,'Salomón','Dueñas','salomon.duenas@gmail.com','5559012322','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(289,'Teresita','Cisneros','teresita.cisneros@hotmail.com','5550123422','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(290,'Urbano','Bustos','urbano.bustos@gmail.com','5551234523','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(291,'Violeta','Ávila','violeta.avila@hotmail.com','5552345623','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(292,'Wilfrido','Zúñiga','wilfrido.zuniga@gmail.com','5553456723','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(293,'Ximena','Yáñez','ximena.yanez@hotmail.com','5554567823','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(294,'Yahir','Xolalpa','yahir.xolalpa@gmail.com','5555678923','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(295,'Zulema','Wong','zulema.wong@hotmail.com','5556789023','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(296,'Abelardo','Varela','abelardo.varela@gmail.com','5557890123','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(297,'Brígida','Téllez','brigida.tellez@hotmail.com','5558901223','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(298,'Cipriano','Saucedo','cipriano.saucedo@gmail.com','5559012323','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(299,'Débora','Ríos','debora.rios@hotmail.com','5550123423','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(300,'Efraín','Quintana','efrain.quintana@gmail.com','5551234524','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(301,'Flavia','Ponce','flavia.ponce@hotmail.com','5552345624','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(302,'Gregoria','Olmos','gregoria.olmos@gmail.com','5553456724','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(303,'Homero','Nieto','homero.nieto@hotmail.com','5554567824','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(304,'Iliana','Muro','iliana.muro@gmail.com','5555678924','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(305,'Jeremías','Luevano','jeremias.luevano@hotmail.com','5556789024','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(306,'Karina','Kuri','karina.kuri@gmail.com','5557890124','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(307,'Lázaro','Jaramillo','lazaro.jaramillo@hotmail.com','5558901224','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(308,'Mireya','Infante','mireya.infante@gmail.com','5559012324','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(309,'Néstor','Haro','nestor.haro@hotmail.com','5550123424','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(310,'Otilio','Gálvez','otilio.galvez@gmail.com','5551234525','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(311,'Palmira','Fabela','palmira.fabela@hotmail.com','5552345625','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(312,'Quirino','Escobedo','quirino.escobedo@gmail.com','5553456725','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(313,'Rocío','Dominguez','rocio.dominguez@hotmail.com','5554567825','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(314,'Sabas','Coria','sabas.coria@gmail.com','5555678925','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(315,'Teófila','Bustamante','teofila.bustamante@hotmail.com','5556789025','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(316,'Ubaldo','Álvarez','ubaldo.alvarez@gmail.com','5557890125','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(317,'Venancia','Zambrano','venancia.zambrano@hotmail.com','5558901225','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(318,'Wálter','Yáñez','walter.yanez@gmail.com','5559012325','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(319,'Xóchitl','Xicoténcatl','xochitl.xicotencatl@hotmail.com','5550123425','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(320,'Yolotzin','Wong','yolotzin.wong@gmail.com','5551234526','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(321,'Zeferino','Villa','zeferino.villa@hotmail.com','5552345626','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(322,'Amadeo','Valdivia','amadeo.valdivia@gmail.com','5553456726','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(323,'Berenice','Ugalde','berenice.ugalde@hotmail.com','5554567826','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(324,'Cirino','Tovar','cirino.tovar@gmail.com','5555678926','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(325,'Dulce','Sarmiento','dulce.sarmiento@hotmail.com','5556789026','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(326,'Eleazar','Ruelas','eleazar.ruelas@gmail.com','5557890126','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(327,'Fidencia','Quintero','fidencia.quintero@hotmail.com','5558901226','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(328,'Gumaro','Pantoja','gumaro.pantoja@gmail.com','5559012326','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(329,'Herlinda','Olea','herlinda.olea@hotmail.com','5550123426','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(330,'Isidoro','Narváez','isidoro.narvaez@gmail.com','5551234527','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(331,'Jovita','Mireles','jovita.mireles@hotmail.com','5552345627','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(332,'Leobardo','Llanos','leobardo.llanos@gmail.com','5553456727','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(333,'Marcelina','Kuri','marcelina.kuri@hotmail.com','5554567827','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(334,'Norberto','Jasso','norberto.jasso@gmail.com','5555678927','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(335,'Odelia','Ibarra','odelia.ibarra@hotmail.com','5556789027','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(336,'Pánfilo','Hurtado','panfilo.hurtado@gmail.com','5557890127','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(337,'Querubina','Gómez','querubina.gomez@hotmail.com','5558901227','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(338,'Rosalino','Fierro','rosalino.fierro@gmail.com','5559012327','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(339,'Simona','Escalante','simona.escalante@hotmail.com','5550123427','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(340,'Tiburcio','Dueñas','tiburcio.duenas@gmail.com','5551234528','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(341,'Úrsula','Cisneros','ursula.cisneros@hotmail.com','5552345628','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(342,'Vicente','Bustos','vicente.bustos@gmail.com','5553456728','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(343,'Wilfredo','Ávila','wilfredo.avila@hotmail.com','5554567828','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(344,'Xavier','Zúñiga','xavier.zuniga@gmail.com','5555678928','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(345,'Yadira','Yáñez','yadira.yanez@hotmail.com','5556789028','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(346,'Adelaida','Wong','adelaida.wong@hotmail.com','5558901228','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(347,'Bonifacio','Varela','bonifacio.varela@gmail.com','5559012328','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(348,'Celerina','Téllez','celerina.tellez@hotmail.com','5550123428','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(349,'Donaciano','Saucedo','donaciano.saucedo@gmail.com','5551234529','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(350,'Esperanza','Ríos','esperanza.rios@hotmail.com','5552345629','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(351,'Froylán','Quintana','froylan.quintana@gmail.com','5553456729','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(352,'Griselda','Ponce','griselda.ponce@hotmail.com','5554567829','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(353,'Honorio','Olmos','honorio.olmos@gmail.com','5555678929','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(354,'Ildefonso','Nieto','ildefonso.nieto@hotmail.com','5556789029','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(355,'Jacinta','Muro','jacinta.muro@gmail.com','5557890129','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(356,'Leocadio','Luevano','leocadio.luevano@hotmail.com','5558901229','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(357,'Micaela','Kuri','micaela.kuri@gmail.com','5559012329','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(358,'Nabor','Jaramillo','nabor.jaramillo@hotmail.com','5550123429','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(359,'Otilia','Infante','otilia.infante@gmail.com','5551234530','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(360,'Pascuala','Haro','pascuala.haro@hotmail.com','5552345630','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(361,'Quirino','Gálvez','quirino.galvez@gmail.com','5553456730','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(362,'Rafaela','Fabela','rafaela.fabela@hotmail.com','5554567830','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(363,'Salvador','Escobedo','salvador.escobedo@gmail.com','5555678930','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(364,'Tiburcia','Dominguez','tiburcia.dominguez@hotmail.com','5556789030','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(365,'Ubaldo','Coria','ubaldo.coria@gmail.com','5557890130','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(366,'Vianey','Bustamante','vianey.bustamante@hotmail.com','5558901230','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(367,'Wendy','Álvarez','wendy.alvarez@gmail.com','5559012330','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(368,'Xóchitl','Zambrano','xochitl.zambrano@hotmail.com','5550123430','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(369,'Yolanda','Yáñez','yolanda.yanez@gmail.com','5551234531','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(370,'Zeferina','Xicoténcatl','zeferina.xicotencatl@hotmail.com','5552345631','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(371,'Abundio','Wong','abundio.wong@gmail.com','5553456731','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(372,'Baldomero','Villa','baldomero.villa@hotmail.com','5554567831','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(373,'Carmelita','Valdivia','carmelita.valdivia@gmail.com','5555678931','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(374,'Demetrio','Ugalde','demetrio.ugalde@hotmail.com','5556789031','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(375,'Eligia','Tovar','eligia.tovar@gmail.com','5557890131','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(376,'Fidencio','Sarmiento','fidencio.sarmiento@hotmail.com','5558901231','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(377,'Gudelia','Ruelas','gudelia.ruelas@gmail.com','5559012331','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(378,'Heriberto','Quintero','heriberto.quintero@hotmail.com','5550123431','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(379,'Inocencia','Pantoja','inocencia.pantoja@gmail.com','5551234532','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(380,'Jeronimo','Olea','jeronimo.olea@hotmail.com','5552345632','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(381,'Librada','Narváez','librada.narvaez@gmail.com','5553456732','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(382,'Macaria','Mireles','macaria.mireles@hotmail.com','5554567832','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(383,'Natalio','Llanos','natalio.llanos@gmail.com','5555678932','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(384,'Otilio','Kuri','otilio.kuri@hotmail.com','5556789032','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(385,'Pánfilo','Jasso','panfilo.jasso@gmail.com','5557890132','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(386,'Quirina','Ibarra','quirina.ibarra@hotmail.com','5558901232','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(387,'Rosendo','Hurtado','rosendo.hurtado@gmail.com','5559012332','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(388,'Santos','Gómez','santos.gomez@hotmail.com','5550123432','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(389,'Teodosia','Fierro','teodosia.fierro@gmail.com','5551234533','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(390,'Uriel','Escalante','uriel.escalante@hotmail.com','5552345633','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(391,'Vianney','Dueñas','vianney.duenas@gmail.com','5553456733','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(392,'Wilfredo','Cisneros','wilfredo.cisneros@hotmail.com','5554567833','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(393,'Xicoténcatl','Bustos','xicotencatl.bustos@gmail.com','5555678933','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(394,'Yajaira','Ávila','yajaira.avila@hotmail.com','5556789033','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(395,'Zenaido','Zúñiga','zenaido.zuniga@gmail.com','5557890133','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(396,'Adán','Yáñez','adan.yanez@hotmail.com','5558901233','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(397,'Berta','Xolalpa','berta.xolalpa@gmail.com','5559012333','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(398,'Celerino','Wong','celerino.wong@hotmail.com','5550123433','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(399,'Doroteo','Varela','doroteo.varela@gmail.com','5551234534','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(400,'Eulogio','Téllez','eulogio.tellez@hotmail.com','5552345634','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(401,'Felícitas','Saucedo','felicitas.saucedo@gmail.com','5553456734','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(402,'Gonzalo','Ríos','gonzalo.rios@hotmail.com','5554567834','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(403,'Hildegarda','Quintana','hildegarda.quintana@gmail.com','5555678934','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(404,'Isauro','Ponce','isauro.ponce@hotmail.com','5556789034','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(405,'Jovita','Olmos','jovita.olmos@gmail.com','5557890134','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(406,'Leandro','Nieto','leandro.nieto@hotmail.com','5558901234','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(407,'Marcelino','Muro','marcelino.muro@gmail.com','5559012334','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(408,'Nicasio','Luevano','nicasio.luevano@hotmail.com','5550123434','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(409,'Otilia','Kuri','otilia.kuri@gmail.com','5551234535','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(410,'Pascual','Jaramillo','pascual.jaramillo@hotmail.com','5552345635','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(411,'Quirina','Infante','quirina.infante@gmail.com','5553456735','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(412,'Ruperta','Haro','ruperta.haro@hotmail.com','5554567835','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(413,'Salomé','Gálvez','salome.galvez@gmail.com','5555678935','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(414,'Tiburcio','Fabela','tiburcio.fabela@hotmail.com','5556789035','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(415,'Úrsula','Escobedo','ursula.escobedo@gmail.com','5557890135','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(416,'Zane','Morris','zane.morris@example.com','5551234567','password123','cliente',1),(417,'Kevin','Williams','kevin.williams@example.com','5552345678','password123','restaurante',1),(418,'Paula','Rodgers','paula.rodgers@example.com','5553456789','password123','cliente',1),(419,'Elijah','Rodriguez','elijah.rodriguez@example.com','5554567890','password123','cliente',1),(420,'Steven','Carter','steven.carter@example.com','5555678901','password123','restaurante',1),(421,'Neil','Harris','neil.harris@example.com','5556789012','password123','cliente',1),(422,'Zara','Brown','zara.brown@example.com','5557890123','password123','restaurante',1),(423,'Wade','Morris','wade.morris@example.com','5558901234','password123','cliente',1),(424,'Maria','Jones','maria.jones@example.com','5559012345','password123','cliente',1),(425,'Xander','Martin','xander.martin@example.com','5550123456','password123','restaurante',1),(426,'Rachel','Roberts','rachel.roberts@example.com','5551234567','password123','cliente',1),(427,'George','Green','george.green@example.com','5552345678','password123','restaurante',1),(428,'Paul','Williams','paul.williams@example.com','5553456789','password123','cliente',1),(429,'Julia','Wilson','julia.wilson@example.com','5554567890','password123','cliente',1),(430,'Diana','Pratt','diana.pratt@example.com','5555678901','password123','restaurante',1),(431,'Frankie','Jones','frankie.jones@example.com','5556789012','password123','cliente',1),(432,'Rachel','Williams','rachel.williams@example.com','5557890123','password123','restaurante',1),(433,'Fiona','Matthews','fiona.matthews@example.com','5558901234','password123','cliente',1),(434,'Hilda','Martinez','hilda.martinez@example.com','5559012345','password123','restaurante',1),(435,'Bella','Harris','bella.harris@example.com','5550123456','password123','cliente',1),(436,'Quincy','Smith','quincy.smith@example.com','5551234567','password123','cliente',1),(437,'Zachary','Cole','zachary.cole@example.com','5552345678','password123','restaurante',1),(438,'David','Ortega','david.ortega@example.com','5553456789','password123','cliente',1),(439,'Carla','Morris','carla.morris@example.com','5554567890','password123','restaurante',1),(440,'Ian','Davis','ian.davis@example.com','5555678901','password123','cliente',1),(441,'Alice','Smith','alice.smith@example.com','5556789012','password123','restaurante',1),(442,'Quentin','Roberts','quentin.roberts@example.com','5557890123','password123','cliente',1),(443,'Fay','Davis','fay.davis@example.com','5558901234','password123','restaurante',1),(444,'Tracy','Johnson','tracy.johnson@example.com','5559012345','password123','cliente',1),(445,'Bob','Jones','bob.jones@example.com','5550123456','password123','restaurante',1),(446,'Ursula','Jones','ursula.jones@example.com','5551234567','password123','cliente',1),(447,'Quinn','White','quinn.white@example.com','5552345678','password123','restaurante',1),(448,'Ursula','Davis','ursula.davis@example.com','5553456789','password123','cliente',1),(449,'Kevin','Moore','kevin.moore@example.com','5554567890','password123','restaurante',1),(450,'Oliver','Brown','oliver.brown@example.com','5555678901','password123','cliente',1),(451,'Jasmine','Lee','jasmine.lee@example.com','5556789012','password123','restaurante',1),(452,'Ian','Perez','ian.perez@example.com','5557890123','password123','cliente',1),(453,'Aiden','Sanchez','aiden.sanchez@example.com','5558901234','password123','restaurante',1),(454,'Brianna','Carter','brianna.carter@example.com','5559012345','password123','cliente',1),(455,'Julian','Davis','julian.davis@example.com','5550123456','password123','restaurante',1),(456,'Ella','Walker','ella.walker@example.com','5551234567','password123','cliente',1),(457,'Hannah','Jones','hannah.jones@example.com','5552345678','password123','restaurante',1),(458,'Yvette','Jackson','yvette.jackson@example.com','5553456789','password123','cliente',1),(459,'Wendy','Brown','wendy.brown@example.com','5554567890','password123','restaurante',1),(460,'Mason','Ortega','mason.ortega@example.com','5555678901','password123','cliente',1),(461,'Harry','Morris','harry.morris@example.com','5556789012','password123','restaurante',1),(462,'Cedric','Walker','cedric.walker@example.com','5557890123','password123','cliente',1),(463,'Luna','Martinez','luna.martinez@example.com','5558901234','password123','restaurante',1),(464,'Lena','Walker','lena.walker@example.com','5559012345','password123','cliente',1),(465,'Frank','Smith','frank.smith@example.com','5550123456','password123','restaurante',1),(466,'Ian','Lee','ian.lee@example.com','5551234567','password123','cliente',1),(467,'Tina','Davis','tina.davis@example.com','5552345678','password123','restaurante',1),(468,'Grace','Jones','grace.jones@example.com','5553456789','password123','cliente',1),(469,'Bella','Smith','bella.smith@example.com','5554567890','password123','restaurante',1),(470,'Eliza','Carter','eliza.carter@example.com','5555678901','password123','cliente',1),(471,'Ursula','White','ursula.white@example.com','5556789012','password123','restaurante',1),(472,'Tina','Lee','tina.lee@example.com','5557890123','password123','cliente',1),(473,'Victor','Smith','victor.smith@example.com','5558901234','password123','restaurante',1),(474,'Alex','Williams','alex.williams@example.com','5559012345','password123','cliente',1),(475,'Rachel','Jackson','rachel.jackson@example.com','5550123456','password123','restaurante',1),(476,'Jane','Moore','jane.moore@example.com','5551234567','password123','cliente',1),(477,'Xander','Harris','xander.harris@example.com','5552345678','password123','restaurante',1),(478,'Oliver','Carter','oliver.carter@example.com','5553456789','password123','cliente',1),(479,'Aaron','Lee','aaron.lee@example.com','5554567890','password123','restaurante',1),(480,'Nancy','Smith','nancy.smith@example.com','5555678901','password123','cliente',1),(481,'Ian','White','ian.white@example.com','5556789012','password123','restaurante',1),(482,'Nina','Walker','nina.walker@example.com','5557890123','password123','cliente',1),(483,'Gabe','Evans','gabe.evans@example.com','5558901234','password123','restaurante',1),(484,'Charlie','Brown','charlie.brown@example.com','5559012345','password123','cliente',1),(485,'Xander','Mitchell','xander.mitchell@example.com','5550123456','password123','restaurante',1),(486,'Violet','Green','violet.green@example.com','5551234567','password123','cliente',1),(487,'Samantha','Young','samantha.young@example.com','5555678926','password123','restaurante',1),(488,'Fernando','Hernandez','fernando.hernandez@example.com','5556789036','password123','cliente',1),(489,'Iris','Wang','iris.wang@example.com','5557890136','password123','restaurante',1),(490,'Liam','Gonzalez','liam.gonzalez@example.com','5558901236','password123','cliente',1),(491,'Olivia','Hernandez','olivia.hernandez@example.com','5559012336','password123','restaurante',1),(492,'Toby','Martinez','toby.martinez@example.com','5550123436','password123','cliente',1),(493,'Maya','Lopez','maya.lopez@example.com','5551234536','password123','restaurante',1),(494,'Xander','Rodriguez','xander.rodriguez@example.com','5552345636','password123','cliente',1),(495,'Max','Taylor','max.taylor@example.com','5553456736','password123','restaurante',1),(496,'Nicole','Reyes','nicole.reyes@example.com','5554567836','password123','cliente',1),(497,'Evan','Green','evan.green@example.com','5555678936','password123','restaurante',1),(498,'Emma','Garcia','emma.garcia@example.com','5556789037','password123','cliente',1),(499,'Daniel','White','daniel.white@example.com','5557890137','password123','restaurante',1),(500,'Ella','Carter','ella.carter@example.com','5558901237','password123','cliente',1);
/*!40000 ALTER TABLE `USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `USUARIO1`
--

DROP TABLE IF EXISTS `USUARIO1`;
/*!50001 DROP VIEW IF EXISTS `USUARIO1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `USUARIO1` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `correo`,
 1 AS `telefono`,
 1 AS `contrasena`,
 1 AS `rol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `USUARIO2`
--

DROP TABLE IF EXISTS `USUARIO2`;
/*!50001 DROP VIEW IF EXISTS `USUARIO2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `USUARIO2` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `correo`,
 1 AS `telefono`,
 1 AS `contrasena`,
 1 AS `rol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `USUARIO3`
--

DROP TABLE IF EXISTS `USUARIO3`;
/*!50001 DROP VIEW IF EXISTS `USUARIO3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `USUARIO3` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `correo`,
 1 AS `telefono`,
 1 AS `contrasena`,
 1 AS `rol`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `DETALLE_PEDIDO1`
--

/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DETALLE_PEDIDO1` AS select `DETALLE_PEDIDO`.`id` AS `id`,`DETALLE_PEDIDO`.`pedido_id` AS `pedido_id`,`DETALLE_PEDIDO`.`paquete_id` AS `paquete_id`,`DETALLE_PEDIDO`.`cantidad` AS `cantidad`,`DETALLE_PEDIDO`.`precio_unitario` AS `precio_unitario` from `DETALLE_PEDIDO` where (`DETALLE_PEDIDO`.`cantidad` <= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DETALLE_PEDIDO2`
--

/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DETALLE_PEDIDO2` AS select `DETALLE_PEDIDO`.`id` AS `id`,`DETALLE_PEDIDO`.`pedido_id` AS `pedido_id`,`DETALLE_PEDIDO`.`paquete_id` AS `paquete_id`,`DETALLE_PEDIDO`.`cantidad` AS `cantidad`,`DETALLE_PEDIDO`.`precio_unitario` AS `precio_unitario` from `DETALLE_PEDIDO` where (`DETALLE_PEDIDO`.`cantidad` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DETALLE_PEDIDO3`
--

/*!50001 DROP VIEW IF EXISTS `DETALLE_PEDIDO3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DETALLE_PEDIDO3` AS select `DETALLE_PEDIDO`.`id` AS `id`,`DETALLE_PEDIDO`.`pedido_id` AS `pedido_id`,`DETALLE_PEDIDO`.`paquete_id` AS `paquete_id`,`DETALLE_PEDIDO`.`cantidad` AS `cantidad`,`DETALLE_PEDIDO`.`precio_unitario` AS `precio_unitario` from `DETALLE_PEDIDO` where (`DETALLE_PEDIDO`.`precio_unitario` < 20.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIRECCION1`
--

/*!50001 DROP VIEW IF EXISTS `DIRECCION1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DIRECCION1` AS select `DIRECCION`.`id` AS `id`,`DIRECCION`.`usuario_id` AS `usuario_id`,`DIRECCION`.`calle` AS `calle`,`DIRECCION`.`numero` AS `numero`,`DIRECCION`.`colonia` AS `colonia`,`DIRECCION`.`ciudad` AS `ciudad`,`DIRECCION`.`estado` AS `estado`,`DIRECCION`.`codigo_postal` AS `codigo_postal`,`DIRECCION`.`latitud` AS `latitud`,`DIRECCION`.`longitud` AS `longitud` from `DIRECCION` where (`DIRECCION`.`ciudad` = 'New York') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIRECCION2`
--

/*!50001 DROP VIEW IF EXISTS `DIRECCION2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DIRECCION2` AS select `DIRECCION`.`id` AS `id`,`DIRECCION`.`usuario_id` AS `usuario_id`,`DIRECCION`.`calle` AS `calle`,`DIRECCION`.`numero` AS `numero`,`DIRECCION`.`colonia` AS `colonia`,`DIRECCION`.`ciudad` AS `ciudad`,`DIRECCION`.`estado` AS `estado`,`DIRECCION`.`codigo_postal` AS `codigo_postal`,`DIRECCION`.`latitud` AS `latitud`,`DIRECCION`.`longitud` AS `longitud` from `DIRECCION` where (`DIRECCION`.`ciudad` = 'Los Angeles') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIRECCION3`
--

/*!50001 DROP VIEW IF EXISTS `DIRECCION3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DIRECCION3` AS select `DIRECCION`.`id` AS `id`,`DIRECCION`.`usuario_id` AS `usuario_id`,`DIRECCION`.`calle` AS `calle`,`DIRECCION`.`numero` AS `numero`,`DIRECCION`.`colonia` AS `colonia`,`DIRECCION`.`ciudad` AS `ciudad`,`DIRECCION`.`estado` AS `estado`,`DIRECCION`.`codigo_postal` AS `codigo_postal`,`DIRECCION`.`latitud` AS `latitud`,`DIRECCION`.`longitud` AS `longitud` from `DIRECCION` where (`DIRECCION`.`usuario_id` <= 25) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `METODO_PAGO1`
--

/*!50001 DROP VIEW IF EXISTS `METODO_PAGO1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `METODO_PAGO1` AS select `METODO_PAGO`.`id` AS `id`,`METODO_PAGO`.`usuario_id` AS `usuario_id`,`METODO_PAGO`.`tipo` AS `tipo`,`METODO_PAGO`.`numero_tarjeta` AS `numero_tarjeta`,`METODO_PAGO`.`fecha_expiracion` AS `fecha_expiracion`,`METODO_PAGO`.`codigo_seguridad` AS `codigo_seguridad` from `METODO_PAGO` where (`METODO_PAGO`.`tipo` = 'tarjeta de crédito') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `METODO_PAGO2`
--

/*!50001 DROP VIEW IF EXISTS `METODO_PAGO2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `METODO_PAGO2` AS select `METODO_PAGO`.`id` AS `id`,`METODO_PAGO`.`usuario_id` AS `usuario_id`,`METODO_PAGO`.`tipo` AS `tipo`,`METODO_PAGO`.`numero_tarjeta` AS `numero_tarjeta`,`METODO_PAGO`.`fecha_expiracion` AS `fecha_expiracion`,`METODO_PAGO`.`codigo_seguridad` AS `codigo_seguridad` from `METODO_PAGO` where (`METODO_PAGO`.`tipo` = 'paypal') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `METODO_PAGO3`
--

/*!50001 DROP VIEW IF EXISTS `METODO_PAGO3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `METODO_PAGO3` AS select `METODO_PAGO`.`id` AS `id`,`METODO_PAGO`.`usuario_id` AS `usuario_id`,`METODO_PAGO`.`tipo` AS `tipo`,`METODO_PAGO`.`numero_tarjeta` AS `numero_tarjeta`,`METODO_PAGO`.`fecha_expiracion` AS `fecha_expiracion`,`METODO_PAGO`.`codigo_seguridad` AS `codigo_seguridad` from `METODO_PAGO` where (`METODO_PAGO`.`usuario_id` between 1 and 25) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PAQUETE1`
--

/*!50001 DROP VIEW IF EXISTS `PAQUETE1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PAQUETE1` AS select `PAQUETE`.`id` AS `id`,`PAQUETE`.`nombre_paquete` AS `nombre_paquete`,`PAQUETE`.`descripcion` AS `descripcion`,`PAQUETE`.`imagen` AS `imagen`,`PAQUETE`.`precio` AS `precio`,`PAQUETE`.`stock` AS `stock`,`PAQUETE`.`fecha_vencimiento` AS `fecha_vencimiento`,`PAQUETE`.`restaurante_id` AS `restaurante_id` from `PAQUETE` where (`PAQUETE`.`precio` < 20.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PAQUETE2`
--

/*!50001 DROP VIEW IF EXISTS `PAQUETE2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PAQUETE2` AS select `PAQUETE`.`id` AS `id`,`PAQUETE`.`nombre_paquete` AS `nombre_paquete`,`PAQUETE`.`descripcion` AS `descripcion`,`PAQUETE`.`imagen` AS `imagen`,`PAQUETE`.`precio` AS `precio`,`PAQUETE`.`stock` AS `stock`,`PAQUETE`.`fecha_vencimiento` AS `fecha_vencimiento`,`PAQUETE`.`restaurante_id` AS `restaurante_id` from `PAQUETE` where (`PAQUETE`.`precio` >= 20.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PAQUETE3`
--

/*!50001 DROP VIEW IF EXISTS `PAQUETE3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PAQUETE3` AS select `PAQUETE`.`id` AS `id`,`PAQUETE`.`nombre_paquete` AS `nombre_paquete`,`PAQUETE`.`descripcion` AS `descripcion`,`PAQUETE`.`imagen` AS `imagen`,`PAQUETE`.`precio` AS `precio`,`PAQUETE`.`stock` AS `stock`,`PAQUETE`.`fecha_vencimiento` AS `fecha_vencimiento`,`PAQUETE`.`restaurante_id` AS `restaurante_id` from `PAQUETE` where (`PAQUETE`.`stock` > 50) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PEDIDO1`
--

/*!50001 DROP VIEW IF EXISTS `PEDIDO1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PEDIDO1` AS select `PEDIDO`.`id` AS `id`,`PEDIDO`.`usuario_id` AS `usuario_id`,`PEDIDO`.`fecha_pedido` AS `fecha_pedido`,`PEDIDO`.`direccion_id` AS `direccion_id`,`PEDIDO`.`metodo_pago_id` AS `metodo_pago_id`,`PEDIDO`.`tipo_entrega` AS `tipo_entrega`,`PEDIDO`.`total` AS `total`,`PEDIDO`.`estatus` AS `estatus` from `PEDIDO` where (`PEDIDO`.`estatus` = 'pendiente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PEDIDO2`
--

/*!50001 DROP VIEW IF EXISTS `PEDIDO2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PEDIDO2` AS select `PEDIDO`.`id` AS `id`,`PEDIDO`.`usuario_id` AS `usuario_id`,`PEDIDO`.`fecha_pedido` AS `fecha_pedido`,`PEDIDO`.`direccion_id` AS `direccion_id`,`PEDIDO`.`metodo_pago_id` AS `metodo_pago_id`,`PEDIDO`.`tipo_entrega` AS `tipo_entrega`,`PEDIDO`.`total` AS `total`,`PEDIDO`.`estatus` AS `estatus` from `PEDIDO` where (`PEDIDO`.`estatus` = 'entregado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PEDIDO3`
--

/*!50001 DROP VIEW IF EXISTS `PEDIDO3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PEDIDO3` AS select `PEDIDO`.`id` AS `id`,`PEDIDO`.`usuario_id` AS `usuario_id`,`PEDIDO`.`fecha_pedido` AS `fecha_pedido`,`PEDIDO`.`direccion_id` AS `direccion_id`,`PEDIDO`.`metodo_pago_id` AS `metodo_pago_id`,`PEDIDO`.`tipo_entrega` AS `tipo_entrega`,`PEDIDO`.`total` AS `total`,`PEDIDO`.`estatus` AS `estatus` from `PEDIDO` where (`PEDIDO`.`total` < 15.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RESTAURANTE1`
--

/*!50001 DROP VIEW IF EXISTS `RESTAURANTE1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `RESTAURANTE1` AS select `RESTAURANTE`.`id` AS `id`,`RESTAURANTE`.`nombre_sucursal` AS `nombre_sucursal`,`RESTAURANTE`.`direccion` AS `direccion`,`RESTAURANTE`.`latitud` AS `latitud`,`RESTAURANTE`.`longitud` AS `longitud`,`RESTAURANTE`.`google_place_id` AS `google_place_id`,`RESTAURANTE`.`rating_google` AS `rating_google`,`RESTAURANTE`.`admin_restaurante_id` AS `admin_restaurante_id` from `RESTAURANTE` where (`RESTAURANTE`.`rating_google` >= 4.0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RESTAURANTE2`
--

/*!50001 DROP VIEW IF EXISTS `RESTAURANTE2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `RESTAURANTE2` AS select `RESTAURANTE`.`id` AS `id`,`RESTAURANTE`.`nombre_sucursal` AS `nombre_sucursal`,`RESTAURANTE`.`direccion` AS `direccion`,`RESTAURANTE`.`latitud` AS `latitud`,`RESTAURANTE`.`longitud` AS `longitud`,`RESTAURANTE`.`google_place_id` AS `google_place_id`,`RESTAURANTE`.`rating_google` AS `rating_google`,`RESTAURANTE`.`admin_restaurante_id` AS `admin_restaurante_id` from `RESTAURANTE` where (`RESTAURANTE`.`rating_google` < 4.0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RESTAURANTE3`
--

/*!50001 DROP VIEW IF EXISTS `RESTAURANTE3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `RESTAURANTE3` AS select `RESTAURANTE`.`id` AS `id`,`RESTAURANTE`.`nombre_sucursal` AS `nombre_sucursal`,`RESTAURANTE`.`direccion` AS `direccion`,`RESTAURANTE`.`latitud` AS `latitud`,`RESTAURANTE`.`longitud` AS `longitud`,`RESTAURANTE`.`google_place_id` AS `google_place_id`,`RESTAURANTE`.`rating_google` AS `rating_google`,`RESTAURANTE`.`admin_restaurante_id` AS `admin_restaurante_id` from `RESTAURANTE` where (`RESTAURANTE`.`admin_restaurante_id` <= 25) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `USUARIO1`
--

/*!50001 DROP VIEW IF EXISTS `USUARIO1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `USUARIO1` AS select `USUARIO`.`id` AS `id`,`USUARIO`.`nombre` AS `nombre`,`USUARIO`.`apellido` AS `apellido`,`USUARIO`.`correo` AS `correo`,`USUARIO`.`telefono` AS `telefono`,`USUARIO`.`contrasena` AS `contrasena`,`USUARIO`.`rol` AS `rol` from `USUARIO` where (`USUARIO`.`rol` = 'cliente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `USUARIO2`
--

/*!50001 DROP VIEW IF EXISTS `USUARIO2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `USUARIO2` AS select `USUARIO`.`id` AS `id`,`USUARIO`.`nombre` AS `nombre`,`USUARIO`.`apellido` AS `apellido`,`USUARIO`.`correo` AS `correo`,`USUARIO`.`telefono` AS `telefono`,`USUARIO`.`contrasena` AS `contrasena`,`USUARIO`.`rol` AS `rol` from `USUARIO` where (`USUARIO`.`rol` = 'admin') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `USUARIO3`
--

/*!50001 DROP VIEW IF EXISTS `USUARIO3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lnxarchitect`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `USUARIO3` AS select `USUARIO`.`id` AS `id`,`USUARIO`.`nombre` AS `nombre`,`USUARIO`.`apellido` AS `apellido`,`USUARIO`.`correo` AS `correo`,`USUARIO`.`telefono` AS `telefono`,`USUARIO`.`contrasena` AS `contrasena`,`USUARIO`.`rol` AS `rol` from `USUARIO` where (`USUARIO`.`correo` like '%@gmail.com') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 19:09:07
