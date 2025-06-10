CREATE DATABASE  IF NOT EXISTS `solo_deportes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `solo_deportes`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: solo_deportes
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT 'Buenos_Aires',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Santiago','Dinner','santiago@gmail.com','Buenos Aires','2025-03-02'),(2,'Florencia','Bossio','florencia@gmail.com','Entre Rios','2025-01-02'),(3,'Andrea','Ormeño','andrea@gmail.com','Corrientes','2025-02-05'),(4,'Wanda','Plaza','wanda@gmail.com','Jujuy','2025-04-01'),(5,'Mateo','Escudero','mateo@hotmail.com','Formosa','2025-04-01'),(6,'Julia','Mora','julia@gmail.com','Buenos Aires','2025-04-01'),(7,'Juan','Anselmo','juan@hotmail.com','Buenos Aires','2025-03-31'),(8,'Leonardo','Ronchetti','leonardo@gmail.com','Buenos Aires','2025-04-20'),(9,'Alicia','Leston','alicia@gmail.com','Mendoza','2025-02-01'),(10,'Lucía','Fernández','lucia.fernandez@gmail.com','Buenos Aires','2025-05-10'),(11,'Pedro','Alonso','pedro.alonso@yahoo.com','Córdoba','2025-04-22'),(12,'Valentina','López','valentina.lopez@hotmail.com','Santa Fe','2025-03-30'),(13,'Julián','Martínez','julian.martinez@gmail.com','Mendoza','2025-06-01'),(14,'Camila','Gómez','camila.gomez@outlook.com','Tucumán','2025-05-15'),(15,'Bruno','Sánchez','bruno.sanchez@gmail.com','Salta','2025-04-12'),(16,'Martina','Díaz','martina.diaz@hotmail.com','Entre Ríos','2025-05-28'),(17,'Santiago','Romero','santiago.romero@gmail.com','Chubut','2025-03-18'),(18,'Emilia','Torres','emilia.torres@yahoo.com','Neuquén','2025-04-30'),(19,'Mateo','Silva','mateo.silva@gmail.com','Misiones','2025-05-05'),(20,'Renata','Acosta','renata.acosta@outlook.com','Jujuy','2025-04-09'),(21,'Thiago','Pérez','thiago.perez@gmail.com','La Pampa','2025-06-03'),(22,'Isabela','Luna','isabela.luna@hotmail.com','San Luis','2025-05-27'),(23,'Benjamín','Ibarra','benjamin.ibarra@gmail.com','San Juan','2025-04-20'),(24,'Mía','Ríos','mia.rios@gmail.com','Catamarca','2025-05-08'),(25,'Facundo','Molina','facundo.molina@yahoo.com','Formosa','2025-03-25'),(26,'Juana','Leiva','juana.leiva@gmail.com','Corrientes','2025-05-11'),(27,'Tomás','Castro','tomas.castro@gmail.com','Río Negro','2025-04-16'),(28,'Florencia','Moreno','florencia.moreno@hotmail.com','Santa Cruz','2025-05-30'),(29,'Agustín','Vega','agustin.vega@gmail.com','Tierra del Fuego','2025-06-05');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados1`
--

DROP TABLE IF EXISTS `empleados1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados1` (
  `Id_empleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `fecha_de_ingreso` date NOT NULL,
  `nivel_educativo` varchar(50) NOT NULL,
  `sueldo_bruto` decimal(10,2) NOT NULL,
  `afiliacion_gremial` varchar(50) NOT NULL,
  `departamento_laboral` varchar(80) NOT NULL,
  PRIMARY KEY (`Id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados1`
--

LOCK TABLES `empleados1` WRITE;
/*!40000 ALTER TABLE `empleados1` DISABLE KEYS */;
INSERT INTO `empleados1` VALUES (1000,'Pablo','Gómez','1990-05-12','2020-06-01','Secundario',120000.00,'Si','Ventas'),(1001,'Laura','Fernández','1985-03-22','2018-02-15','Universitario',150000.00,'Si','Administración'),(1002,'Diego','Rodríguez','1993-07-14','2021-09-10','Secundario',110000.00,'No','Depósito'),(1003,'Sofía','Martínez','1988-11-30','2017-05-20','Universitario',160000.00,'Si','Ventas'),(1004,'Mariano','López','1995-09-08','2022-01-05','Terciario',115000.00,'No','Atención al Cliente'),(1005,'Néstor','Cuiule','1969-09-08','2006-01-05','Terciario',115000.00,'si','Logistica'),(1006,'Gabriel','Torres','1994-04-25','2020-11-30','Universitario',140000.00,'Si','Marketing'),(1007,'Valeria','García','1987-12-02','2015-07-22','Universitario',170000.00,'Si','Recursos Humanos'),(1008,'Ezequiel','Pérez','1996-02-14','2023-03-18','Terciario',105000.00,'No','Mantenimiento');
/*!40000 ALTER TABLE `empleados1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestas`
--

DROP TABLE IF EXISTS `encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuestas` (
  `Id_encuesta` int NOT NULL AUTO_INCREMENT,
  `Id_cliente` int NOT NULL,
  `puntaje` int NOT NULL,
  `comentarios` text,
  PRIMARY KEY (`Id_encuesta`),
  KEY `Id_cliente` (`Id_cliente`),
  CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
INSERT INTO `encuestas` VALUES (1,1,5,'Excelente calidad'),(2,9,4,'Buena compra, lo recomiendo '),(3,1,3,'El producto no era como esperaba.'),(4,4,5,'Excelente calidad.'),(5,5,2,'Tardó mucho en llegar.'),(6,9,4,'Buena compra, lo recomiendo.'),(7,7,5,'Excelente calidad'),(8,1,3,'Regular, esperaba más.'),(9,9,4,'Buena relación calidad-precio.');
/*!40000 ALTER TABLE `encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_ventas`
--

DROP TABLE IF EXISTS `log_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_ventas` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `empleado_nombre` varchar(100) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_ventas`
--

LOCK TABLES `log_ventas` WRITE;
/*!40000 ALTER TABLE `log_ventas` DISABLE KEYS */;
INSERT INTO `log_ventas` VALUES (1,143,'Pablo Gómez','2025-06-09 00:15:25'),(2,144,'Laura Fernández','2025-06-09 00:15:25'),(3,145,'Diego Rodríguez','2025-06-09 00:15:25'),(4,146,'Sofía Martínez','2025-06-09 00:15:25'),(5,147,'Mariano López','2025-06-09 00:15:25'),(6,148,'Néstor Cuiule','2025-06-09 00:15:25'),(7,149,'Gabriel Torres','2025-06-09 00:15:25'),(8,150,'Valeria García','2025-06-09 00:15:25'),(9,151,'Ezequiel Pérez','2025-06-09 00:15:25'),(10,152,'Laura Fernández','2025-06-09 00:15:25'),(11,153,'Laura Fernández','2025-06-09 00:15:25'),(12,154,'Laura Fernández','2025-06-09 00:15:25'),(13,155,'Pablo Gómez','2025-06-09 17:17:28'),(14,156,'Laura Fernández','2025-06-09 17:17:28'),(15,157,'Diego Rodríguez','2025-06-09 17:17:28'),(16,158,'Sofía Martínez','2025-06-09 17:17:28'),(17,159,'Mariano López','2025-06-09 17:17:28'),(18,160,'Néstor Cuiule','2025-06-09 17:17:28'),(19,161,'Gabriel Torres','2025-06-09 17:17:28'),(20,162,'Valeria García','2025-06-09 17:17:28'),(21,163,'Ezequiel Pérez','2025-06-09 17:17:28'),(22,164,'Ezequiel Pérez','2025-06-09 17:17:28'),(23,165,'Ezequiel Pérez','2025-06-09 17:17:28'),(24,166,'Valeria García','2025-06-09 17:17:28');
/*!40000 ALTER TABLE `log_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `categoría` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Pelota de fútbol','Deportes',12000.00),(2,'Raqueta de tenis','Tenis',45000.50),(3,'Botines de fútbol','Calzado',38000.99),(4,'Mancuernas 5kg','Fitness',15000.75),(5,'Camiseta de básquet','Indumentaria',22000.00),(6,'Guantes de boxeo','Boxeo',30000.00),(7,'Bicicleta de montaña','Ciclismo',150000.00),(8,'Gorra deportiva','Accesorios',8000.00),(9,'Reloj deportivo','Tecnología',55000.00);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `Id_ventas` int NOT NULL AUTO_INCREMENT,
  `Id_cliente` int NOT NULL,
  `Id_producto` int NOT NULL,
  `Id_empleado` int NOT NULL,
  `fecha` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Id_ventas`),
  KEY `Id_cliente` (`Id_cliente`),
  KEY `Id_producto` (`Id_producto`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados1` (`Id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1000,'2025-04-04',12000.00),(2,2,2,1001,'2025-04-04',45000.50),(3,3,3,1002,'2025-04-04',38000.99),(4,4,4,1003,'2025-04-04',15000.75),(5,5,5,1004,'2025-04-04',22000.00),(6,6,6,1005,'2025-04-04',80000.00),(7,7,7,1006,'2025-04-04',150000.00),(8,8,8,1007,'2025-04-04',8000.00),(9,9,9,1008,'2025-04-04',55000.00),(11,2,2,1001,'2025-05-21',45000.00),(12,3,3,1000,'2025-05-02',163000.00),(13,4,4,1003,'2025-05-20',45000.00),(14,5,5,1008,'2025-04-30',45000.00),(15,6,6,1007,'2025-05-10',45000.00),(16,1,7,1005,'2025-05-03',155000.00),(17,9,9,1008,'2025-05-22',150000.00),(19,8,3,1000,'2025-05-22',68000.00),(20,9,7,1005,'2025-05-22',888000.00),(21,1,4,1003,'2025-05-22',50000.00),(143,1,1,1000,'2025-06-09',89000.00),(144,2,1,1001,'2025-06-09',94000.00),(145,3,2,1002,'2025-06-09',103000.00),(146,4,3,1003,'2025-06-09',81000.00),(147,5,4,1004,'2025-06-09',99000.00),(148,6,5,1005,'2025-06-09',77000.00),(149,7,6,1006,'2025-06-09',88000.00),(150,8,7,1007,'2025-06-09',95000.00),(151,9,8,1008,'2025-06-09',101000.00),(152,9,9,1001,'2025-06-09',89000.00),(153,9,9,1001,'2025-06-09',91000.00),(154,9,9,1001,'2025-06-09',86000.00),(155,1,1,1000,'2025-06-09',150000.00),(156,2,1,1001,'2025-06-09',200000.00),(157,3,2,1002,'2025-06-09',130000.00),(158,4,7,1003,'2025-06-09',89000.00),(159,5,7,1004,'2025-06-09',145000.00),(160,6,2,1005,'2025-06-09',25000.00),(161,7,2,1006,'2025-06-09',90000.00),(162,8,7,1007,'2025-06-09',30000.00),(163,9,1,1008,'2025-06-09',12500.00),(164,9,1,1008,'2025-06-09',101000.00),(165,9,9,1008,'2025-06-09',50000.00),(166,9,9,1007,'2025-06-09',35000.00);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_clientes_activos`
--

DROP TABLE IF EXISTS `vista_clientes_activos`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes_activos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes_activos` AS SELECT 
 1 AS `Id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `fecha_ultima_compra`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_clientes_top`
--

DROP TABLE IF EXISTS `vista_clientes_top`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes_top`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes_top` AS SELECT 
 1 AS `Id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `cantidad_compras`,
 1 AS `monto_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_descuentos_aplicados`
--

DROP TABLE IF EXISTS `vista_descuentos_aplicados`;
/*!50001 DROP VIEW IF EXISTS `vista_descuentos_aplicados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_descuentos_aplicados` AS SELECT 
 1 AS `Id_ventas`,
 1 AS `Nombre_del_cliente`,
 1 AS `Apellido_del_cliente`,
 1 AS `Producto`,
 1 AS `monto`,
 1 AS `Descuento_Aplicado`,
 1 AS `Total_con_descuento`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_satisfaccion_de_clientes`
--

DROP TABLE IF EXISTS `vista_satisfaccion_de_clientes`;
/*!50001 DROP VIEW IF EXISTS `vista_satisfaccion_de_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_satisfaccion_de_clientes` AS SELECT 
 1 AS `Id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `puntaje_promedio`,
 1 AS `cantidad_encuestas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_por_categoria`
--

DROP TABLE IF EXISTS `vista_ventas_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_por_categoria` AS SELECT 
 1 AS `categoría`,
 1 AS `cantidad_ventas`,
 1 AS `total_facturado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_clientes_activos`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes_activos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes_activos` AS select distinct `c`.`Id_cliente` AS `Id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`v`.`fecha` AS `fecha_ultima_compra` from (`clientes` `c` join `ventas` `v` on((`c`.`Id_cliente` = `v`.`Id_cliente`))) where (`v`.`fecha` >= (curdate() - interval 30 day)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_clientes_top`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes_top`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes_top` AS select `c`.`Id_cliente` AS `Id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,count(`v`.`Id_ventas`) AS `cantidad_compras`,sum(`v`.`monto`) AS `monto_total` from (`clientes` `c` join `ventas` `v` on((`c`.`Id_cliente` = `v`.`Id_cliente`))) group by `c`.`Id_cliente` order by `cantidad_compras` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_descuentos_aplicados`
--

/*!50001 DROP VIEW IF EXISTS `vista_descuentos_aplicados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_descuentos_aplicados` AS select `v`.`Id_ventas` AS `Id_ventas`,`c`.`nombre` AS `Nombre_del_cliente`,`c`.`apellido` AS `Apellido_del_cliente`,`p`.`nombre` AS `Producto`,`v`.`monto` AS `monto`,`calcular_descuento`(`v`.`monto`) AS `Descuento_Aplicado`,(`v`.`monto` - `calcular_descuento`(`v`.`monto`)) AS `Total_con_descuento`,`v`.`fecha` AS `fecha` from ((`ventas` `v` join `clientes` `c` on((`v`.`Id_cliente` = `c`.`Id_cliente`))) join `productos` `p` on((`v`.`Id_producto` = `p`.`id_producto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_satisfaccion_de_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_satisfaccion_de_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_satisfaccion_de_clientes` AS select `c`.`Id_cliente` AS `Id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,avg(`e`.`puntaje`) AS `puntaje_promedio`,count(`e`.`Id_encuesta`) AS `cantidad_encuestas` from (`clientes` `c` join `encuestas` `e` on((`c`.`Id_cliente` = `e`.`Id_cliente`))) group by `c`.`Id_cliente`,`c`.`nombre`,`c`.`apellido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_por_categoria`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_por_categoria` AS select `p`.`categoría` AS `categoría`,count(`v`.`Id_ventas`) AS `cantidad_ventas`,sum(`v`.`monto`) AS `total_facturado` from (`ventas` `v` join `productos` `p` on((`v`.`Id_producto` = `p`.`id_producto`))) group by `p`.`categoría` */;
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

-- Dump completed on 2025-06-09 19:11:26
