-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table db_toko.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_toko.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_description`) VALUES
	(1, 'Budi', NULL),
	(2, 'Doni', NULL),
	(3, 'Dono', NULL),
	(4, 'Dona', NULL),
	(5, 'Dion', NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table db_toko.customer_alamat
DROP TABLE IF EXISTS `customer_alamat`;
CREATE TABLE IF NOT EXISTS `customer_alamat` (
  `id_customer_alamat` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_alamat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_customer_alamat`),
  KEY `FK_customer_alamat_customer` (`customer_id`),
  CONSTRAINT `FK_customer_alamat_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_toko.customer_alamat: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_alamat` DISABLE KEYS */;
INSERT INTO `customer_alamat` (`id_customer_alamat`, `customer_id`, `customer_alamat`) VALUES
	(1, 1, 'malang'),
	(2, 2, 'blitar'),
	(3, 3, 'surabaya'),
	(4, 4, 'kediri'),
	(5, 5, 'bandung');
/*!40000 ALTER TABLE `customer_alamat` ENABLE KEYS */;

-- Dumping structure for table db_toko.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id_struck` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `total_sales` int(11) NOT NULL,
  PRIMARY KEY (`id_struck`),
  KEY `FK_sales_customer` (`customer_id`),
  CONSTRAINT `FK_sales_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_toko.sales: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id_struck`, `customer_id`, `total_sales`) VALUES
	(1, 1, 1000000),
	(2, 2, 2000000),
	(3, 3, 3000000),
	(4, 4, 4000000),
	(5, 5, 5000000);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
