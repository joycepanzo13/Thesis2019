-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for thesis
CREATE DATABASE IF NOT EXISTS `thesis` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `thesis`;

-- Dumping structure for table thesis.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `Per_ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Per_Name` varchar(50) NOT NULL DEFAULT '0',
  `Per_User` varchar(50) NOT NULL DEFAULT '0',
  `Per_Pass` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Per_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table thesis.admin: ~4 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`Per_ID`, `Per_Name`, `Per_User`, `Per_Pass`) VALUES
	(00001, 'Joyce', 'admin', 'admin'),
	(00002, 'Junjay', 'admin', 'admin'),
	(00003, 'altea', 'admin', 'admin'),
	(00004, 'altea', 'delapena', 'altea');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table thesis.adminlogs
CREATE TABLE IF NOT EXISTS `adminlogs` (
  `ad_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Per_ID` int(5) unsigned zerofill NOT NULL,
  `Date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `FK_adminlogs_admin` (`Per_ID`),
  CONSTRAINT `FK_adminlogs_admin` FOREIGN KEY (`Per_ID`) REFERENCES `admin` (`Per_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table thesis.adminlogs: ~11 rows (approximately)
/*!40000 ALTER TABLE `adminlogs` DISABLE KEYS */;
INSERT INTO `adminlogs` (`ad_id`, `Per_ID`, `Date`, `status`) VALUES
	(00001, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00002, 00004, '2019-03-12 00:00:00', 'Loggedin'),
	(00003, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00004, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00005, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00006, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00007, 00001, '2019-03-12 00:00:00', 'Loggedin'),
	(00008, 00001, '2019-03-13 00:00:00', 'Loggedin'),
	(00009, 00001, '2019-03-13 21:09:34', 'Loggedin'),
	(00010, 00001, '2019-03-13 21:25:04', 'Loggedin'),
	(00011, 00001, '2019-03-13 21:30:35', 'Loggedin');
/*!40000 ALTER TABLE `adminlogs` ENABLE KEYS */;

-- Dumping structure for table thesis.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `Prisoner_ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Prisoner` varchar(50) DEFAULT NULL,
  `Detainee` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int(50) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `Alias` varchar(50) DEFAULT NULL,
  `Bday` date DEFAULT NULL,
  `Bplace` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `EducAttain` varchar(50) DEFAULT NULL,
  `Height` varchar(50) DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `Build` varchar(50) DEFAULT NULL,
  `Eye` varchar(50) DEFAULT NULL,
  `Hair` varchar(50) DEFAULT NULL,
  `Complexion` varchar(50) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Marks` varchar(50) DEFAULT NULL,
  `FathersName` varchar(50) DEFAULT NULL,
  `MothersName` varchar(50) DEFAULT NULL,
  `WifeORHusband` varchar(50) DEFAULT NULL,
  `Children` varchar(50) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `PersonNotify` varchar(50) DEFAULT NULL,
  `ACRno` varchar(50) DEFAULT NULL,
  `CrimeCom` varchar(50) DEFAULT NULL,
  `DateCom` varchar(50) DEFAULT NULL,
  `CaseNo` varchar(50) DEFAULT NULL,
  `TrialCrt` varchar(50) DEFAULT NULL,
  `Term` varchar(50) DEFAULT NULL,
  `DateSen` varchar(50) DEFAULT NULL,
  `Counsel` varchar(50) DEFAULT NULL,
  `CAddress` varchar(50) DEFAULT NULL,
  `PrevRec` varchar(50) DEFAULT NULL,
  `PrevTri` varchar(50) DEFAULT NULL,
  `Sentenced` varchar(50) DEFAULT NULL,
  `DateRel` varchar(50) DEFAULT NULL,
  `Image` longblob,
  PRIMARY KEY (`Prisoner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table thesis.profiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table thesis.visitor
CREATE TABLE IF NOT EXISTS `visitor` (
  `Visitors_ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `VName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `case` varchar(50) DEFAULT NULL,
  `barID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Visitors_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table thesis.visitor: ~2 rows (approximately)
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` (`Visitors_ID`, `VName`, `address`, `sex`, `who`, `relationship`, `case`, `barID`) VALUES
	(00001, 'joyce', 'hsdhsjh', 'hj', 'hjh', 'jh', 'jhj', ''),
	(00002, 'mk', 'k', 'kjk', 'jk', 'jk', 'jk', '');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;

-- Dumping structure for table thesis.visitorlogs
CREATE TABLE IF NOT EXISTS `visitorlogs` (
  `ID` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Time in` datetime DEFAULT NULL,
  `Time out` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table thesis.visitorlogs: ~0 rows (approximately)
/*!40000 ALTER TABLE `visitorlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitorlogs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
