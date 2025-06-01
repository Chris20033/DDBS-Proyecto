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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAQUETE`
--

LOCK TABLES `PAQUETE` WRITE;
/*!40000 ALTER TABLE `PAQUETE` DISABLE KEYS */;
INSERT INTO `PAQUETE` VALUES (1,'Combo Pizza','Pizza con bebida','http://example.com/pizza.jpg',20.99,34,'2025-12-31',1,1),(2,'Combo Burger','Hamburguesa con papas','http://example.com/burger.jpg',15.50,25,'2025-06-30',2,1),(3,'Combo Taco','Tacos con salsa','http://example.com/taco.jpg',10.99,35,'2025-11-30',3,1),(4,'Combo Pasta','Pasta con carne','http://example.com/pasta.jpg',25.00,35,'2025-08-15',4,1),(5,'Combo Sushi','Sushi con arroz','http://example.com/sushi.jpg',30.99,44,'2025-07-20',5,1),(6,'Combo Sandwich','Sándwich con bebida','http://example.com/sandwich.jpg',12.50,40,'2025-05-10',6,1),(7,'Combo Salad','Ensalada de pollo','http://example.com/salad.jpg',18.00,45,'2025-09-25',7,1),(8,'Combo Ribs','Costillas a la parrilla','http://example.com/ribs.jpg',40.99,29,'2025-10-01',8,1),(9,'Combo Burrito','Burrito con guacamole','http://example.com/burrito.jpg',14.50,60,'2025-04-10',9,1),(10,'Combo Chicken','Pollo frito con papas','http://example.com/chicken.jpg',22.00,50,'2025-06-05',10,1),(11,'Combo Fish','Pescado frito con arroz','http://example.com/fish.jpg',20.99,30,'2025-07-01',11,1),(12,'Combo Fries','Papas fritas con salsa','http://example.com/fries.jpg',6.99,70,'2025-03-25',12,1),(13,'Combo Veggie','Ensalada vegetariana','http://example.com/veggie.jpg',15.00,40,'2025-09-15',13,1),(14,'Combo Hotdog','Hotdog con cebolla caramelizada','http://example.com/hotdog.jpg',8.99,50,'2025-11-01',14,1),(15,'Combo Wrap','Wrap de pollo y vegetales','http://example.com/wrap.jpg',13.50,40,'2025-07-20',15,1),(16,'Combo Donuts','Donas rellenas','http://example.com/donuts.jpg',9.99,58,'2025-05-05',16,1),(17,'Combo Ice Cream','Helado con chocolate','http://example.com/icecream.jpg',5.99,80,'2025-08-10',17,1),(18,'Combo BBQ','Barbacoa con papas fritas','http://example.com/bbq.jpg',24.99,25,'2025-06-25',18,1),(19,'Combo Steak','Filete a la parrilla','http://example.com/steak.jpg',35.99,20,'2025-09-01',19,1),(20,'Combo Fries & Shake','Papas fritas con batido','http://example.com/fries_shake.jpg',12.00,45,'2025-07-15',20,1),(21,'Combo Nachos','Nachos con queso y carne','http://example.com/nachos.jpg',18.50,60,'2025-06-10',21,1),(22,'Combo Tofu','Tofu a la parrilla','http://example.com/tofu.jpg',17.00,35,'2025-10-20',22,1),(23,'Combo Wings','Alitas de pollo con salsa','http://example.com/wings.jpg',25.50,40,'2025-11-05',23,1),(24,'Combo Veggie Burger','Hamburguesa vegetariana','http://example.com/veggie_burger.jpg',14.00,50,'2025-12-01',24,1),(25,'Combo Poke','Poke bowl de atún','http://example.com/poke.jpg',19.99,30,'2025-08-25',25,1),(26,'Combo BBQ Chicken','Pollo a la barbacoa','http://example.com/bbq_chicken.jpg',22.99,40,'2025-07-30',26,1),(27,'Combo Chicken Wings','Alitas de pollo con papas','http://example.com/chicken_wings.jpg',16.50,55,'2025-09-10',27,1),(28,'Combo Veggie Pizza','Pizza vegetariana','http://example.com/veggie_pizza.jpg',20.00,60,'2025-12-10',28,1),(29,'Combo Beef','Carne con papas y ensalada','http://example.com/beef.jpg',28.99,30,'2025-11-20',29,1),(30,'Combo Sausage','Salchichas con mostaza','http://example.com/sausage.jpg',13.50,40,'2025-10-15',30,1),(31,'Combo Tacos','Tacos al pastor','http://example.com/tacos.jpg',12.99,45,'2025-08-05',31,1),(32,'Combo Shrimp','Camarones al ajillo','http://example.com/shrimp.jpg',27.00,30,'2025-09-30',32,1),(33,'Combo Burger Deluxe','Hamburguesa deluxe','http://example.com/burger_deluxe.jpg',18.99,60,'2025-12-05',33,1),(34,'Combo Falafel','Falafel con hummus','http://example.com/falafel.jpg',14.00,50,'2025-11-10',34,1),(35,'Combo Quesadilla','Quesadilla de pollo','http://example.com/quesadilla.jpg',13.00,50,'2025-07-01',35,1),(36,'Combo Grilled Cheese','Sándwich de queso','http://example.com/grilled_cheese.jpg',7.99,70,'2025-05-20',36,1),(37,'Combo Chicken Tenders','Tiras de pollo','http://example.com/chicken_tenders.jpg',15.00,60,'2025-09-05',37,1),(38,'Combo Philly','Philly cheesesteak','http://example.com/philly.jpg',22.00,40,'2025-08-20',38,1),(39,'Combo Sausage Pizza','Pizza de salchicha','http://example.com/sausage_pizza.jpg',24.50,35,'2025-12-01',39,1),(40,'Combo Fish & Chips','Pescado con papas fritas','http://example.com/fish_chips.jpg',19.99,50,'2025-07-15',40,1),(41,'Combo Meatball','Albóndigas con espagueti','http://example.com/meatball.jpg',23.00,30,'2025-06-05',41,1),(42,'Combo Pita','Pita de pollo','http://example.com/pita.jpg',12.00,45,'2025-09-10',42,1),(43,'Combo Caesar Salad','Ensalada César','http://example.com/caesar.jpg',9.99,60,'2025-07-30',43,1),(44,'Combo Mediterranean','Ensalada mediterránea','http://example.com/mediterranean.jpg',16.00,50,'2025-08-10',44,1),(45,'Combo Veggie Wrap','Wrap vegetariano','http://example.com/veggie_wrap.jpg',13.99,40,'2025-10-05',45,1),(46,'Combo Roast Beef','Roast beef con papas','http://example.com/roast_beef.jpg',28.00,30,'2025-09-15',46,1),(47,'Combo Meatball Sandwich','Sándwich de albóndigas','http://example.com/meatball_sandwich.jpg',14.50,40,'2025-12-20',47,1),(48,'Combo Seafood','Mariscos con arroz','http://example.com/seafood.jpg',26.50,30,'2025-06-15',48,1),(49,'Combo BBQ Ribs','Costillas BBQ','http://example.com/bbq_ribs.jpg',32.99,25,'2025-11-10',49,1),(50,'Combo Chicken Parmesan','Pollo parmesano','http://example.com/chicken_parmesan.jpg',22.50,35,'2025-08-25',50,1),(51,'Paktkses','3 Pizzas','/uploads/1748650062824.jpeg',399.00,7,'2025-05-31',52,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESTAURANTE`
--

LOCK TABLES `RESTAURANTE` WRITE;
/*!40000 ALTER TABLE `RESTAURANTE` DISABLE KEYS */;
INSERT INTO `RESTAURANTE` VALUES (1,'Pizza Hut','123 Pizza St, New York, NY 10001',40.71280000,-74.00600000,'abcd1234',4.50,1,1),(2,'Burger King','456 Burger Ave, Los Angeles, CA 90001',34.05220000,-118.24370000,'efgh5678',4.00,2,1),(3,'Taco Bell','789 Taco Rd, Chicago, IL 60601',41.87810000,-87.62980000,'ijkl91011',3.80,3,1),(4,'Dominos Pizza','101 Pizza Blvd, Houston, TX 77001',29.76040000,-95.36980000,'mnop1213',4.20,4,1),(5,'Subway','202 Sub Rd, Phoenix, AZ 85001',33.44840000,-112.07400000,'qrst1415',3.90,5,1),(6,'Papa Johns','303 Papa St, Philadelphia, PA 19103',39.95260000,-75.16520000,'uvwx1617',4.30,6,1),(7,'Chipotle','404 Burrito Ln, San Antonio, TX 78205',29.42410000,-98.49360000,'yzab1819',4.00,7,1),(8,'KFC','505 Fried St, San Diego, CA 92101',32.71570000,-117.16110000,'cdfe2021',4.10,8,1),(9,'Wendys','606 Fast Ave, Dallas, TX 75201',32.77670000,-96.79700000,'ghij2223',3.90,9,1),(10,'Arbys','707 Roast Rd, San Jose, CA 95113',37.77490000,-122.41940000,'klmn2425',3.70,10,1),(11,'Panda Express','808 Fortune St, Austin, TX 73301',30.26720000,-97.74310000,'opqr2627',4.20,11,1),(12,'Shake Shack','909 Burger Blvd, Charlotte, NC 28202',35.22710000,-80.84310000,'stuv2829',4.50,12,1),(13,'Five Guys','1010 Fry Rd, Seattle, WA 98101',47.60620000,-122.33210000,'wxyz3031',4.40,13,1),(14,'Dennys','1111 Pancake Ln, Denver, CO 80202',39.73920000,-104.99030000,'abcd3233',3.80,14,1),(15,'Hardees','1212 Biscuit St, Portland, OR 97201',45.50510000,-122.67500000,'efgh3435',3.60,15,1),(16,'Jack in the Box','1313 Taco St, Indianapolis, IN 46201',39.76840000,-86.15800000,'ijkl3637',4.00,16,1),(17,'Sonic Drive-In','1414 Route 66, Louisville, KY 40202',38.25270000,-85.75850000,'mnop3839',3.70,17,1),(18,'Chick-fil-A','1515 Chicken Rd, Columbus, OH 43215',39.96120000,-82.99880000,'qrst4041',4.60,18,1),(19,'In-N-Out Burger','1616 Burger Ln, Sacramento, CA 95814',38.58160000,-121.49440000,'uvwx4243',4.50,19,1),(20,'Zaxbys','1717 Chicken St, Orlando, FL 32801',28.53830000,-81.37920000,'yzab4445',4.10,20,1),(21,'Culvers','1818 Butter Rd, Jacksonville, FL 32202',30.33220000,-81.65570000,'abcd4647',4.30,21,1),(22,'Wingstop','1919 Wing Rd, Kansas City, MO 64101',39.09970000,-94.57860000,'efgh4849',3.90,22,1),(23,'Bojangles\'','2020 Biscuit Blvd, Memphis, TN 38103',35.14950000,-90.04900000,'ijkl5051',4.00,23,1),(24,'El Pollo Loco','2121 Pollo St, Las Vegas, NV 89101',36.16990000,-115.13980000,'mnop5253',3.80,24,1),(25,'Whataburger','2222 Burger Rd, Tucson, AZ 85701',32.22260000,-110.97470000,'qrst5455',4.20,25,1),(26,'Jimmy Johns','2323 Sandwich St, Omaha, NE 68102',41.25650000,-95.93450000,'uvwx5657',4.10,26,1),(27,'Papa Murphys','2424 Pizza Ave, Minneapolis, MN 55101',44.97780000,-93.26500000,'yzab5859',4.00,27,1),(28,'Carls Jr.','2525 Burger Ln, Fresno, CA 93721',36.73780000,-119.78710000,'abcd6061',3.60,28,1),(29,'Café Rio','2626 Mexican St, Salt Lake City, UT 84101',40.76080000,-111.89100000,'efgh6263',4.40,29,1),(30,'Noodles & Company','2727 Noodle St, Madison, WI 53703',43.07310000,-89.40120000,'ijkl6465',4.20,30,1),(31,'Pei Wei','2828 Asian Blvd, Boise, ID 83702',43.61500000,-116.20230000,'mnop6667',3.90,31,1),(32,'Café Gratitude','2929 Gratitude Rd, Berkeley, CA 94704',37.87160000,-122.27270000,'qrst6869',4.50,32,1),(33,'Firehouse Subs','3030 Sub St, Tallahassee, FL 32301',30.43830000,-84.28070000,'uvwx7071',4.30,33,1),(34,'Smashburger','3131 Smash Blvd, Richmond, VA 23220',37.54070000,-77.43600000,'yzab7273',4.20,34,1),(35,'The Habit Burger Grill','3232 Grill Rd, Raleigh, NC 27601',35.77960000,-78.63820000,'abcd7475',4.10,35,1),(36,'Crisp & Green','3333 Fresh St, Boise, ID 83705',43.61760000,-116.20670000,'efgh7677',4.20,36,1),(37,'Steak n Shake','3434 Steak St, Cincinnati, OH 45202',39.10310000,-84.51200000,'ijkl7879',3.80,37,1),(38,'Moes Southwest Grill','3535 Southwest Rd, Richmond, VA 23223',37.55340000,-77.46030000,'mnop8081',4.00,38,1),(39,'Raising Canes','3636 Chicken Blvd, Atlanta, GA 30303',33.74900000,-84.38800000,'qrst8283',4.30,39,1),(40,'Taco Bueno','3737 Taco Blvd, Dallas, TX 75202',32.77670000,-96.79700000,'uvwx8485',3.90,40,1),(41,'Café du Monde','3838 Café St, New Orleans, LA 70112',29.95840000,-90.06260000,'yzab8687',4.60,41,1),(42,'Gordon Ramsay Burger','3939 Burger Ave, Las Vegas, NV 89109',36.16990000,-115.13980000,'abcd8889',4.50,42,1),(43,'Salt Bae','4040 Salt Blvd, Chicago, IL 60603',41.87810000,-87.62980000,'efgh9091',4.70,43,1),(44,'The Cheesecake Factory','4141 Cheesecake Rd, Los Angeles, CA 90024',34.06960000,-118.44100000,'ijkl9293',4.20,44,1),(45,'P.F. Chang\'s','4242 Asian Blvd, Phoenix, AZ 85004',33.44840000,-112.07400000,'mnop9495',4.30,45,1),(46,'Bubba Gump Shrimp Co.','4343 Shrimp Rd, Myrtle Beach, SC 29577',33.68970000,-78.88670000,'qrst9697',4.00,46,1),(47,'Ruths Chris Steak House','4444 Steak Blvd, Tampa, FL 33602',27.95060000,-82.45720000,'uvwx9899',4.40,47,1),(48,'The Olive Garden','4545 Olive Ave, Miami, FL 33101',25.76170000,-80.19180000,'yzab0001',4.10,48,1),(49,'Olive Garden','4646 Olive Blvd, Portland, OR 97201',45.50510000,-122.67500000,'abcd0102',4.20,49,1),(50,'Cheddars Scratch Kitchen','4747 Cheddar Rd, Denver, CO 80205',39.73920000,-104.99030000,'efgh0203',4.00,50,1),(51,'Kapital Sushi',' Av de la Convención de 1914 Sur 1112-Loc. 1, Jardines de la Asunción, 20270 Aguascalientes, Ags., México',21.86529090,-102.29420840,'LtDERdxR',4.00,57,1),(52,'Little Caesar\'s','Av Héroe de Nacozari 2408-A-2408-A, Residencial del Parque, 20277 Aguascalientes, Ags., México',21.85584610,-102.28300500,'G1WojR0b',4.00,59,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIO`
--

LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
INSERT INTO `USUARIO` VALUES (1,'John','Doe','john.doe@gmail.com','555-1234','password123','cliente',1),(2,'Jane','Smith','jane.smith@hotmail.com','555-5678','password456','restaurante',1),(3,'Michael','Johnson','michael.johnson@yahoo.com','555-8765','password789','cliente',1),(4,'Emily','Davis','emily.davis@gmail.com','555-2345','password321','restaurante',1),(5,'James','Miller','james.miller@outlook.com','555-6789','password654','cliente',1),(6,'Mary','Wilson','mary.wilson@gmail.com','555-1357','password987','cliente',1),(7,'David','Moore','david.moore@hotmail.com','555-2468','password1234','restaurante',1),(8,'Linda','Taylor','linda.taylor@yahoo.com','555-3579','password4321','cliente',1),(9,'Robert','Anderson','robert.anderson@gmail.com','555-8642','password8765','cliente',1),(10,'Jennifer','Thomas','jennifer.thomas@outlook.com','555-9753','password5432','restaurante',1),(11,'William','Jackson','william.jackson@yahoo.com','555-1593','password2134','cliente',1),(12,'Patricia','White','patricia.white@gmail.com','555-7531','password6543','cliente',1),(13,'Joseph','Harris','joseph.harris@hotmail.com','555-1598','password9876','cliente',1),(14,'Elizabeth','Martin','elizabeth.martin@outlook.com','555-8529','password6789','restaurante',1),(15,'Charles','Garcia','charles.garcia@yahoo.com','555-9632','password4321','cliente',1),(16,'Susan','Rodriguez','susan.rodriguez@gmail.com','555-2583','password8765','cliente',1),(17,'Christopher','Martinez','christopher.martinez@hotmail.com','555-6472','password12345','restaurante',1),(18,'Jessica','Clark','jessica.clark@outlook.com','555-7416','password54321','cliente',1),(19,'Daniel','Lewis','daniel.lewis@gmail.com','555-9637','password23456','cliente',1),(20,'Sarah','Young','sarah.young@yahoo.com','555-8943','password87654','restaurante',1),(21,'Brian','King','brian.king@outlook.com','555-3587','password45678','cliente',1),(22,'Nancy','Scott','nancy.scott@gmail.com','555-9472','password98765','cliente',1),(23,'Kevin','Green','kevin.green@hotmail.com','555-3584','password34567','restaurante',1),(24,'Betty','Adams','betty.adams@outlook.com','555-2874','password87654','cliente',1),(25,'Mark','Baker','mark.baker@yahoo.com','555-6573','password456789','cliente',1),(26,'Helen','Gonzalez','helen.gonzalez@gmail.com','555-9248','password123456','restaurante',1),(27,'Steven','Nelson','steven.nelson@hotmail.com','555-6732','password234567','cliente',1),(28,'Karen','Carter','karen.carter@outlook.com','555-3847','password345678','cliente',1),(29,'Edward','Mitchell','edward.mitchell@yahoo.com','555-9865','password2345678','restaurante',1),(30,'Sandra','Perez','sandra.perez@gmail.com','555-4729','password7654321','cliente',1),(31,'George','Roberts','george.roberts@hotmail.com','555-2398','password123987','cliente',1),(32,'Ruth','Walker','ruth.walker@outlook.com','555-7632','password765432','restaurante',1),(33,'Andrew','Hall','andrew.hall@yahoo.com','555-9123','password1234','cliente',1),(34,'Frances','Allen','frances.allen@gmail.com','555-6384','password987654','cliente',1),(35,'Jason','Young','jason.young@hotmail.com','555-1594','password2345','restaurante',1),(36,'Dorothy','King','dorothy.king@outlook.com','555-7458','password654321','cliente',1),(37,'Henry','Wright','henry.wright@yahoo.com','555-3587','password1234567','cliente',1),(38,'Marilyn','Lopez','marilyn.lopez@gmail.com','555-1239','password54321','restaurante',1),(39,'Thomas','Hill','thomas.hill@hotmail.com','555-5289','password12321','cliente',1),(40,'Deborah','Green','deborah.green@outlook.com','555-4873','password78901','cliente',1),(41,'Gary','Adams','gary.adams@yahoo.com','555-9832','password23456','restaurante',1),(42,'Kimberly','Baker','kimberly.baker@gmail.com','555-8376','password65432','cliente',1),(43,'Ryan','Gonzalez','ryan.gonzalez@hotmail.com','555-4923','password876543','cliente',1),(44,'Angela','Nelson','angela.nelson@outlook.com','555-7641','password1234567','restaurante',1),(45,'Jack','Scott','jack.scott@yahoo.com','555-8274','password2345678','cliente',1),(46,'Shirley','Perez','shirley.perez@gmail.com','555-9584','password2345','cliente',1),(47,'Scott','Roberts','scott.roberts@hotmail.com','555-2638','password76543','restaurante',1),(48,'Laura','Martinez','laura.martinez@outlook.com','555-4723','password12345','cliente',1),(49,'Steven','White','steven.white@yahoo.com','555-8593','password54321','restaurante',1),(50,'Rachel','Harris','rachel.harris@gmail.com','555-6714','password98765','cliente',1),(52,'Christian','Escamilla','capimarquez23@gmail.com','4494673952','123456','cliente',1),(53,'Aaron','Raygoza','raygoza@gmail.com','1234567890','123456','admin',1),(54,'Michelle','Gomez','mich@gmail.com','7894561230','123456','cliente',1),(55,'Juan ','Esparza','juan@inadaptados.mx','1234567890','123456','cliente',1),(56,'Salvador','Raya','chavaraya@gmail.com','1234567890','123456','restaurante',1),(57,'Salvador','Iglesias','chavaiglesias@hotmail.com','1234567890','123456','restaurante',1),(58,'Carlos','Bremer','charly@hotmail.com','1234567890','123456','restaurante',1),(59,'Diego','Macias','emma@gmail.com','1234567890','123456','restaurante',1),(60,'Juan','Pérez','juan.perez@example.com','5551234567','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(61,'María','Gómez','maria.gomez@example.com','5552345678','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(62,'Carlos','López','carlos.lopez@example.com','5553456789','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(63,'Ana','Martínez','ana.martinez@example.com','5554567890','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(64,'Luis','Rodríguez','luis.rodriguez@example.com','5555678901','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(65,'Laura','Hernández','laura.hernandez@example.com','5556789012','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(66,'Pedro','Sánchez','pedro.sanchez@example.com','5557890123','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(67,'Sofía','Ramírez','sofia.ramirez@example.com','5558901234','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(68,'Jorge','Flores','jorge.flores@example.com','5559012345','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(69,'Elena','Torres','elena.torres@example.com','5550123456','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(70,'Ricardo','Vargas','ricardo.vargas@example.com','5551234501','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(71,'Patricia','Castro','patricia.castro@example.com','5552345601','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(72,'Fernando','Mendoza','fernando.mendoza@example.com','5553456701','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(73,'Gabriela','Ríos','gabriela.rios@example.com','5554567801','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(74,'Diego','Ortega','diego.ortega@example.com','5555678901','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(75,'Adriana','Guerrero','adriana.guerrero@example.com','5556789001','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(76,'Roberto','Paredes','roberto.paredes@example.com','5557890101','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(77,'Isabel','Cortés','isabel.cortes@example.com','5558901201','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(78,'Héctor','Núñez','hector.nunez@example.com','5559012301','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(79,'Lucía','Medina','lucia.medina@example.com','5550123401','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(80,'Oscar','Silva','oscar.silva@example.com','5551234502','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(81,'Claudia','Rojas','claudia.rojas@example.com','5552345602','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(82,'Raúl','Miranda','raul.miranda@example.com','5553456702','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(83,'Carmen','Santos','carmen.santos@example.com','5554567802','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(84,'Arturo','Delgado','arturo.delgado@example.com','5555678902','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(85,'Verónica','Cruz','veronica.cruz@example.com','5556789002','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(86,'Manuel','Reyes','manuel.reyes@example.com','5557890102','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(87,'Diana','Aguilar','diana.aguilar@example.com','5558901202','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(88,'Javier','Fuentes','javier.fuentes@example.com','5559012302','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(89,'Teresa','Márquez','teresa.marquez@example.com','5550123402','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(90,'Alejandro','Campos','alejandro.campos@example.com','5551234503','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(91,'Silvia','Vega','silvia.vega@example.com','5552345603','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(92,'Francisco','Valdez','francisco.valdez@example.com','5553456703','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(93,'Beatriz','Salazar','beatriz.salazar@example.com','5554567803','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(94,'Eduardo','Orozco','eduardo.orozco@example.com','5555678903','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(95,'Rosa','Mejía','rosa.mejia@example.com','5556789003','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(96,'Alberto','Cervantes','alberto.cervantes@example.com','5557890103','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(97,'Mónica','Gallegos','monica.gallegos@example.com','5558901203','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(98,'Sergio','Velázquez','sergio.velazquez@example.com','5559012303','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(99,'Alicia','Navarro','alicia.navarro@example.com','5550123403','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(100,'José','Espinoza','jose.espinoza@example.com','5551234504','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(101,'Margarita','Montes','margarita.montes@example.com','5552345604','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(102,'Miguel','Rosales','miguel.rosales@example.com','5553456704','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(103,'Daniela','Acosta','daniela.acosta@example.com','5554567804','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(104,'Raúl','Padilla','raul.padilla@example.com','5555678904','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(105,'Lourdes','Carrillo','lourdes.carrillo@example.com','5556789004','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(106,'Guillermo','Franco','guillermo.franco@example.com','5557890104','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(107,'Norma','Barrera','norma.barrera@example.com','5558901204','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(108,'Rubén','Maldonado','ruben.maldonado@example.com','5559012304','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(109,'Irma','Castillo','irma.castillo@example.com','5550123404','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(110,'Rodrigo','Tapia','rodrigo.tapia@example.com','5551234505','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(111,'Marisol','Juárez','marisol.juarez@example.com','5552345605','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(112,'Felipe','Zúñiga','felipe.zuniga@example.com','5553456705','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(113,'Leticia','Sosa','leticia.sosa@example.com','5554567805','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(114,'Hugo','Ibarra','hugo.ibarra@example.com','5555678905','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(115,'Yolanda','Quintero','yolanda.quintero@example.com','5556789005','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(116,'Gerardo','Rangel','gerardo.rangel@example.com','5557890105','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(117,'Sara','Villarreal','sara.villarreal@example.com','5558901205','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(118,'Martín','Zamora','martin.zamora@example.com','5559012305','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(119,'Paulina','Olvera','paulina.olvera@example.com','5550123405','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(120,'César','Ponce','cesar.ponce@example.com','5551234506','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(121,'Alejandra','Valencia','alejandra.valencia@example.com','5552345606','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(122,'Rafael','Corona','rafael.corona@example.com','5553456706','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(123,'Adrián','Lozano','adrian.lozano@example.com','5554567806','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(124,'Olivia','Magaña','olivia.magana@example.com','5555678906','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(125,'Salvador','Aguirre','salvador.aguirre@example.com','5556789006','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(126,'Victoria','Andrade','victoria.andrade@example.com','5557890106','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(127,'Emilio','Castañeda','emilio.castaneda@example.com','5558901206','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(128,'Natalia','Cabrera','natalia.cabrera@example.com','5559012306','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(129,'René','Trejo','rene.trejo@example.com','5550123406','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(130,'Mariana','Bernal','mariana.bernal@example.com','5551234507','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(131,'Joaquín','Palacios','joaquin.palacios@example.com','5552345607','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(132,'Xóchitl','Galván','xochitl.galvan@example.com','5553456707','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(133,'Federico','Cárdenas','federico.cardenas@example.com','5554567807','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(134,'Aurora','Robles','aurora.robles@example.com','5555678907','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(135,'Ernesto','De La Cruz','ernesto.delacruz@example.com','5556789007','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(136,'Esperanza','Camacho','esperanza.camacho@example.com','5557890107','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(137,'Leonardo','Rivas','leonardo.rivas@example.com','5558901207','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(138,'Carolina','Salinas','carolina.salinas@example.com','5559012307','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(139,'Mauricio','Vera','mauricio.vera@example.com','5550123407','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(140,'Rocío','Téllez','rocio.tellez@example.com','5551234508','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(141,'Alfonso','Colín','alfonso.colin@example.com','5552345608','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(142,'Luz','Bustamante','luz.bustamante@example.com','5553456708','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(143,'Humberto','Ávila','humberto.avila@example.com','5554567808','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(144,'Consuelo','Arroyo','consuelo.arroyo@example.com','5555678908','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(145,'Reynaldo','Cordero','reynaldo.cordero@example.com','5556789008','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(146,'Estela','León','estela.leon@example.com','5557890108','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(147,'Fabián','Mireles','fabian.mireles@example.com','5558901208','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(148,'Yesenia','Alvarado','yesenia.alvarado@example.com','5559012308','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(149,'Saúl','Zavala','saul.zavala@example.com','5550123408','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(150,'Guadalupe','Valenzuela','guadalupe.valenzuela@example.com','5551234509','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(151,'Marcela','Escobar','marcela.escobar@example.com','5552345609','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(152,'Rodolfo','Duarte','rodolfo.duarte@example.com','5553456709','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(153,'Araceli','Contreras','araceli.contreras@example.com','5554567809','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(154,'Erick','Méndez','erick.mendez@example.com','5555678909','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(155,'Brenda','Cuevas','brenda.cuevas@example.com','5556789009','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(156,'Omar','Barajas','omar.barajas@example.com','5557890109','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(157,'Cecilia','Cisneros','cecilia.cisneros@example.com','5558901209','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(158,'Félix','Villanueva','felix.villanueva@example.com','5559012309','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(159,'Liliana','Lara','liliana.lara@example.com','5550123409','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(160,'Agustín','Zepeda','agustin.zepeda@example.com','5551234510','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(161,'Ruth','Romo','ruth.romo@example.com','5552345610','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(162,'Hilda','Benítez','hilda.benitez@example.com','5553456710','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(163,'Alfredo','Pineda','alfredo.pineda@example.com','5554567810','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(164,'Susana','Calderón','susana.calderon@example.com','5555678910','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(165,'Jaime','Reséndiz','jaime.resendiz@example.com','5556789010','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(166,'Nora','Tovar','nora.tovar@example.com','5557890110','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(167,'Juan','Guzmán','enrique.guzman@gmail.com','5558901210','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(168,'Julia','Serrano','julia.serrano@hotmail.com','5559012310','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(169,'Pablo','Rocha','pablo.rocha@gmail.com','5550123410','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(170,'Maribel','Ochoa','maribel.ochoa@hotmail.com','5551234511','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(171,'Samuel','Castaño','samuel.castano@gmail.com','5552345611','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(172,'Katia','Peralta','katia.peralta@hotmail.com','5553456711','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(173,'Octavio','Carranza','octavio.carranza@gmail.com','5554567811','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(174,'Lorenzo','Varela','lorenzo.varela@hotmail.com','5555678911','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(175,'Esteban','Perales','esteban.perales@gmail.com','5556789011','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(176,'Rosario','Solís','rosario.solis@hotmail.com','5557890111','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',0),(177,'Marcos','Velasco','marcos.velasco@gmail.com','5558901211','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(178,'Jimena','Lozada','jimena.lozada@hotmail.com','5559012311','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(179,'Rogelio','Gamez','rogelio.gamez@gmail.com','5550123411','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(180,'Magdalena','Tirado','magdalena.tirado@hotmail.com','5551234512','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(181,'Fermín','Arredondo','fermin.arredondo@gmail.com','5552345612','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(182,'Anabel','Montoya','anabel.montoya@hotmail.com','5553456712','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(183,'Baltazar','Collado','baltazar.collado@gmail.com','5554567812','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(184,'Candelaria','Rosa','candelaria.rosa@hotmail.com','5555678912','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(185,'Teodoro','Cepeda','teodoro.cepeda@gmail.com','5556789012','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(186,'Vanesa','Mesa','vanesa.mesa@hotmail.com','5557890112','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(187,'Gregorio','Polanco','gregorio.polanco@gmail.com','5558901212','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(188,'Nadia','Barrientos','nadia.barrientos@hotmail.com','5559012312','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(189,'Severo','Rueda','severo.rueda@gmail.com','5550123412','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(190,'Gisela','Paz','gisela.paz@hotmail.com','5551234513','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(191,'Florentino','Sotelo','florentino.sotelo@gmail.com','5552345613','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(192,'Pilar','Alcaraz','pilar.alcaraz@hotmail.com','5553456713','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(193,'Bonifacio','Arteaga','bonifacio.arteaga@gmail.com','5554567813','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(194,'Rita','Vallejo','rita.vallejo@hotmail.com','5555678913','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(195,'Valentín','Coria','valentin.coria@gmail.com','5556789013','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(196,'Lidia','Del Valle','lidia.delvalle@hotmail.com','5557890113','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(197,'Cirilo','Carrasco','cirilo.carrasco@gmail.com','5558901213','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(198,'Eugenia','Castañón','eugenia.castanon@hotmail.com','5559012313','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(199,'Celestino','Barragán','celestino.barragan@gmail.com','5550123413','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(200,'Asunción','Gallardo','asuncion.gallardo@hotmail.com','5551234514','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(201,'Ezequiel','Oliva','ezequiel.oliva@gmail.com','5552345614','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(202,'Dorotea','Mena','dorotea.mena@hotmail.com','5553456714','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(203,'Leopoldo','Arriaga','leopoldo.arriaga@gmail.com','5554567814','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(204,'Ester','Vergara','ester.vergara@hotmail.com','5555678914','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(205,'Amador','Zaragoza','amador.zaragoza@gmail.com','5556789014','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(206,'Benita','Trujillo','benita.trujillo@hotmail.com','5557890114','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(207,'Casimiro','Salgado','casimiro.salgado@gmail.com','5558901214','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(208,'Rosalía','Pacheco','rosalia.pacheco@hotmail.com','5559012314','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(209,'Gumersindo','Leyva','gumersindo.leyva@gmail.com','5550123414','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(210,'Filomena','Márques','filomena.marques@hotmail.com','5551234515','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(211,'Heriberto','Cervántez','heriberto.cervantez@gmail.com','5552345615','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(212,'Jacinta','Villalobos','jacinta.villalobos@hotmail.com','5553456715','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(213,'Nicanor','Zamudio','nicanor.zamudio@gmail.com','5554567815','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(214,'Prudencia','Yáñez','prudencia.yanez@hotmail.com','5555678915','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(215,'Remedios','Quiñones','remedios.quinones@gmail.com','5556789015','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(216,'Saturnino','Zambrano','saturnino.zambrano@hotmail.com','5557890115','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(217,'Tomasa','Uribe','tomasa.uribe@gmail.com','5558901215','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(218,'Vicenta','Xicoténcatl','vicenta.xicotencatl@hotmail.com','5559012315','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(219,'Zenón','Wong','zenon.wong@gmail.com','5550123415','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(220,'Amalia','Vázquez','amalia.vazquez@hotmail.com','5551234516','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(221,'Bernabé','Urías','bernabe.urias@gmail.com','5552345616','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(222,'Custodia','Tapia','custodia.tapia@hotmail.com','5553456716','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(223,'Donato','Sosa','donato.sosa@gmail.com','5554567816','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(224,'Elvira','Roldán','elvira.roldan@hotmail.com','5555678916','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(225,'Froilán','Peña','froilan.pena@gmail.com','5556789016','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(226,'Gertrudis','Ocampo','gertrudis.ocampo@hotmail.com','5557890116','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(227,'Hilario','Nava','hilario.nava@gmail.com','5558901216','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(228,'Inocencio','Munguía','inocencio.munguia@hotmail.com','5559012316','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(229,'Jovita','Luevano','jovita.luevano@gmail.com','5550123416','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(230,'Lorenza','Kuri','lorenza.kuri@hotmail.com','5551234517','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(231,'Macario','Jasso','macario.jasso@gmail.com','5552345617','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(232,'Narcisa','Ibarra','narcisa.ibarra@hotmail.com','5553456717','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(233,'Otilia','Hurtado','otilia.hurtado@gmail.com','5554567817','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(234,'Pascual','Griego','pascual.griego@hotmail.com','5555678917','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(235,'Quirino','Fierro','quirino.fierro@gmail.com','5556789017','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(236,'Raimunda','Escamilla','raimunda.escamilla@hotmail.com','5557890117','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(237,'Sabino','Dávila','sabino.davila@gmail.com','5558901217','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(238,'Timoteo','Cisneros','timoteo.cisneros@hotmail.com','5559012317','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(239,'Úrsula','Bustos','ursula.bustos@gmail.com','5550123417','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(240,'Vidal','Águila','vidal.aguila@hotmail.com','5551234518','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(241,'Wenceslao','Zúñiga','wenceslao.zuniga@gmail.com','5552345618','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(242,'Yolanda','Yáñez','yolanda.yanez@hotmail.com','5553456718','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(243,'Zacarías','Xolalpa','zacarias.xolalpa@gmail.com','5554567818','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(244,'Abigail','Varela','abigail.varela@hotmail.com','5555678918','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(245,'Bartolo','Téllez','bartolo.tellez@gmail.com','5556789018','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(246,'Cleotilde','Saucedo','cleotilde.saucedo@hotmail.com','5557890118','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(247,'Demetrio','Ríos','demetrio.rios@gmail.com','5558901218','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(248,'Eusebia','Quintana','eusebia.quintana@hotmail.com','5559012318','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(249,'Fausto','Ponce','fausto.ponce@gmail.com','5550123418','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(250,'Genoveva','Olmos','genoveva.olmos@hotmail.com','5551234519','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(251,'Herminio','Nieto','herminio.nieto@gmail.com','5552345619','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(252,'Ifigenia','Muro','ifigenia.muro@hotmail.com','5553456719','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(253,'Jacinto','Luevano','jacinto.luevano@gmail.com','5554567819','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(254,'Karina','Kuri','karina.kuri@hotmail.com','5555678919','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(255,'Leocadia','Jaramillo','leocadia.jaramillo@gmail.com','5556789019','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(256,'Máximo','Infante','maximo.infante@hotmail.com','5557890119','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(257,'Nereida','Haro','nereida.haro@gmail.com','5558901219','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(258,'Olegario','Gálvez','olegario.galvez@hotmail.com','5559012319','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(259,'Petronila','Fabela','petronila.fabela@gmail.com','5550123419','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(260,'Querubín','Escobedo','querubin.escobedo@hotmail.com','5551234520','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(261,'Rosendo','Dominguez','rosendo.dominguez@gmail.com','5552345620','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(262,'Soledad','Coria','soledad.coria@hotmail.com','5553456720','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(263,'Tadeo','Bustamante','tadeo.bustamante@gmail.com','5554567820','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',0),(264,'Úbeda','Álvarez','ubeda.alvarez@hotmail.com','5555678920','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(265,'Venancio','Zambrano','venancio.zambrano@gmail.com','5556789020','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1),(266,'Waldino','Yáñez','waldino.yanez@hotmail.com','5557890120','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','admin',1),(267,'Ximena','Xicoténcatl','ximena.xicotencatl@gmail.com','5558901220','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(268,'Yago','Wong','yago.wong@hotmail.com','5559012320','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','cliente',1),(269,'Zenaida','Villa','zenaida.villa@gmail.com','5550123420','$2a$10$xJwL5v5Jz5U5Z5U5Z5U5Ze','restaurante',1);
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

-- Dump completed on 2025-05-31 18:06:44
