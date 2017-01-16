-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.18 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for AnnabelleTest
DROP DATABASE IF EXISTS `AnnabelleTest`;
CREATE DATABASE IF NOT EXISTS `annabelletest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `AnnabelleTest`;


-- Dumping structure for table AnnabelleTest.allergies
DROP TABLE IF EXISTS `allergies`;
CREATE TABLE IF NOT EXISTS `allergies` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Allergy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.allergies: ~1 rows (approximately)
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
REPLACE INTO `allergies` (`PatientId`, `Allergy`) VALUES
	('pramod', 'khgjgjg');
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.billingaddress
DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE IF NOT EXISTS `billingaddress` (
  `Id` varchar(50) NOT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.billingaddress: ~1 rows (approximately)
/*!40000 ALTER TABLE `billingaddress` DISABLE KEYS */;
REPLACE INTO `billingaddress` (`Id`, `Address1`, `Address2`, `City`, `State`, `ZipCode`) VALUES
	('pramod', 'Balkuve', 'shirpur', 'Dhule', 'Maharastra', 1234);
/*!40000 ALTER TABLE `billingaddress` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.emergencycontect
DROP TABLE IF EXISTS `emergencycontect`;
CREATE TABLE IF NOT EXISTS `emergencycontect` (
  `Id` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `ZipCode` int(11) DEFAULT NULL,
  `Home Phone` bigint(20) DEFAULT NULL,
  `Cell Phone` bigint(20) DEFAULT NULL,
  `Work Phone` bigint(20) DEFAULT NULL,
  `Reletionshippatient` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.emergencycontect: ~3 rows (approximately)
/*!40000 ALTER TABLE `emergencycontect` DISABLE KEYS */;
REPLACE INTO `emergencycontect` (`Id`, `Name`, `Address1`, `Address2`, `City`, `State`, `ZipCode`, `Home Phone`, `Cell Phone`, `Work Phone`, `Reletionshippatient`) VALUES
	('pramod', 'vinod', 'Balkuve', 'shirpur', 'Dhule', 'Maharastra', 1234, 69857458, 458555, 585522, 'Father'),
	('pramod', 'Pramod', 'Balkuve', 'shirpur', 'Dhule', 'Maharastra', 1234, 25, 855, 58966, 'Brother'),
	('pramod', 'sdfa', 'Balkuve', 'shirpur', 'Dhule', 'Maharastra', 1234, 4125265897, 9877874596, 4785955557, 'Father');
/*!40000 ALTER TABLE `emergencycontect` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.employer
DROP TABLE IF EXISTS `employer`;
CREATE TABLE IF NOT EXISTS `employer` (
  `Id` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.employer: ~1 rows (approximately)
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
REPLACE INTO `employer` (`Id`, `Name`, `Address1`, `Address2`, `City`, `State`, `ZipCode`) VALUES
	('pramod', 'manoj', 'Arthe', 'asdf', 'pune', 'Maharastra', 55);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.familymedicalhistory
DROP TABLE IF EXISTS `familymedicalhistory`;
CREATE TABLE IF NOT EXISTS `familymedicalhistory` (
  `Id` varchar(50) DEFAULT NULL,
  `familymember` varchar(50) DEFAULT NULL,
  `disease` varchar(50) DEFAULT NULL,
  KEY `FK_familymedicalhistory_patientlogin` (`Id`),
  CONSTRAINT `FK_familymedicalhistory_patientlogin` FOREIGN KEY (`Id`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.familymedicalhistory: ~73 rows (approximately)
/*!40000 ALTER TABLE `familymedicalhistory` DISABLE KEYS */;
REPLACE INTO `familymedicalhistory` (`Id`, `familymember`, `disease`) VALUES
	('pramod', 'Mother', 'AAA'),
	('pramod', 'Sister', 'ADHD'),
	('pramod', 'Mother', 'Alcohol / Substance Abuse'),
	('pramod', 'Mother', 'Alcohol Dependent'),
	('pramod', 'Mother', 'Allergies'),
	('pramod', 'Mother', 'Alzheimer'),
	('pramod', 'Mother', 'Anxiety'),
	('pramod', 'Mother', 'Arthritis'),
	('pramod', 'Mother', 'Asthma'),
	('pramod', 'Mother', 'Atrial Fibrillation'),
	('pramod', 'Mother', 'Back Pain, Chronic'),
	('pramod', 'Mother', 'Bleeding Problems'),
	('pramod', 'Mother', 'CAD'),
	('pramod', 'Mother', 'Cancer'),
	('pramod', 'Mother', 'Cancer-Breast'),
	('pramod', 'Mother', 'Cancer-Colon'),
	('pramod', 'Mother', 'Cancer- Prostate'),
	('pramod', 'Mother', 'Cancer- Skin'),
	('pramod', 'Mother', 'Cancer -Thyroid'),
	('pramod', 'Mother', 'CHF'),
	('pramod', 'Mother', 'COPD'),
	('pramod', 'Mother', 'Crohns disease'),
	('pramod', 'Mother', 'CVA '),
	('pramod', 'Mother', 'Dementia'),
	('pramod', 'Mother', 'Depression'),
	('pramod', 'Sister', 'Diabetes'),
	('pramod', 'Mother', 'Epilepsy'),
	('pramod', 'Mother', 'Erectile Dysfunction'),
	('pramod', 'Mother', 'Fibromyalgia'),
	('pramod', 'Mother', 'GI Bleeding'),
	('pramod', 'Mother', 'Gout'),
	('pramod', 'Mother', 'Head Concussion /Injury'),
	('pramod', 'Mother', 'Headaches, Chronic'),
	('pramod', 'Mother', 'Hearing Loss'),
	('pramod', 'Mother', 'Heart Attack'),
	('pramod', 'Mother', 'Heartburn'),
	('pramod', 'Mother', 'Heart Disease'),
	('pramod', 'Mother', 'High Cholestrol'),
	('pramod', 'Mother', 'HTV'),
	('pramod', 'Mother', 'Hyperlipidemia'),
	('pramod', 'Mother', 'Hyperthyroidism'),
	('pramod', 'Mother', 'Hypothyroidism'),
	('pramod', 'Mother', 'IDDM'),
	('pramod', 'Mother', 'Insomnia'),
	('pramod', 'Mother', 'Irritable Bowel Syndrome'),
	('pramod', 'Mother', 'MI'),
	('pramod', 'Mother', 'NIDDM'),
	('pramod', 'Mother', 'Obesity'),
	('pramod', 'Mother', 'Osteoprosis'),
	('pramod', 'Mother', 'PID'),
	('pramod', 'Mother', 'Reflux'),
	('pramod', 'Mother', 'Seizures'),
	('pramod', 'Mother', 'Sickle Cell'),
	('pramod', 'Mother', 'Stroke'),
	('pramod', 'Mother', 'Surgery, Appendectomy'),
	('pramod', 'Mother', 'Surgery,Bypass'),
	('pramod', 'Mother', 'Surgery,CABG'),
	('pramod', 'Mother', 'Surgery, Cholecystectomy'),
	('pramod', 'Mother', 'Surgery,coronary Artery Bypass Grafting'),
	('pramod', 'Mother', 'Surgery,Hysterctomy'),
	('pramod', 'Mother', 'Surgery,joint Replacement'),
	('pramod', 'Mother', 'Surgery,Mustectomy'),
	('pramod', 'Mother', 'Surgery,Sinus Surgery'),
	('pramod', 'Mother', 'Surgery, Thyroidectomy'),
	('pramod', 'Mother', 'Thyriod Condition'),
	('pramod', 'Mother', 'TIA'),
	('pramod', 'Mother', 'Tonsilitis'),
	('pramod', 'Mother', 'Tuberculosis Exposure'),
	('pramod', 'Mother', 'Ulcer'),
	('pramod', 'Mother', 'Ulcers'),
	('pramod', 'Mother', 'UTI ,Chronic'),
	('pramod', 'Mother', 'Vision Loss'),
	('pramod', 'Mother', 'High Blood Pressure');
/*!40000 ALTER TABLE `familymedicalhistory` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.medications
DROP TABLE IF EXISTS `medications`;
CREATE TABLE IF NOT EXISTS `medications` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Medication` varchar(50) DEFAULT NULL,
  `Stringth` varchar(50) DEFAULT NULL,
  `DoseFrom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.medications: ~1 rows (approximately)
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
REPLACE INTO `medications` (`PatientId`, `Medication`, `Stringth`, `DoseFrom`) VALUES
	('pramod', 'kbkbj', 'bmhjhjlk', 'iuoiupoiil');
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.patientdetails
DROP TABLE IF EXISTS `patientdetails`;
CREATE TABLE IF NOT EXISTS `patientdetails` (
  `Id` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Race` varchar(200) NOT NULL,
  `Ethnicity` varchar(50) NOT NULL,
  `PrefferedLanguage` varchar(50) NOT NULL,
  `HomePhone` bigint(20) NOT NULL,
  `CellPhone` bigint(20) NOT NULL,
  `WorkPhone` bigint(20) NOT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `DirectAddress` varchar(50) NOT NULL,
  `Insurance` varchar(50) NOT NULL,
  `HowdidyouHearAboutUs` varchar(50) NOT NULL,
  `ReferingProviderNmae` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `FK_patientdetails_patientlogin` FOREIGN KEY (`Id`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.patientdetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `patientdetails` DISABLE KEYS */;
REPLACE INTO `patientdetails` (`Id`, `Gender`, `Race`, `Ethnicity`, `PrefferedLanguage`, `HomePhone`, `CellPhone`, `WorkPhone`, `EmailAddress`, `DirectAddress`, `Insurance`, `HowdidyouHearAboutUs`, `ReferingProviderNmae`) VALUES
	('pramod', 'Male', '12', 'Indian', 'Marathi', 9685685742, 96885555555, 6988855556, 'dorik1993@gamil.com', 'balkuve', ' World Health care Center', 'Employer', 'asdf');
/*!40000 ALTER TABLE `patientdetails` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.patientdisease
DROP TABLE IF EXISTS `patientdisease`;
CREATE TABLE IF NOT EXISTS `patientdisease` (
  `Id` varchar(50) DEFAULT NULL,
  `AAA` varchar(50) DEFAULT NULL,
  `ADHD` varchar(50) DEFAULT NULL,
  `Alcohol` varchar(50) DEFAULT NULL,
  `AlcoholDependent` varchar(50) DEFAULT NULL,
  `Allergies` varchar(50) DEFAULT NULL,
  `Alzheimers` varchar(50) DEFAULT NULL,
  `Anxiety` varchar(50) DEFAULT NULL,
  `Arthritis` varchar(50) DEFAULT NULL,
  `Asthma` varchar(50) DEFAULT NULL,
  `AtrialFibrillation` varchar(50) DEFAULT NULL,
  `BackPainChronic` varchar(50) DEFAULT NULL,
  `BleedingProblems` varchar(50) DEFAULT NULL,
  `CAD` varchar(50) DEFAULT NULL,
  `Cancer` varchar(50) DEFAULT NULL,
  `CancerBreast` varchar(50) DEFAULT NULL,
  `CancerColon` varchar(50) DEFAULT NULL,
  `CancerProstate` varchar(50) DEFAULT NULL,
  `CancerSkin` varchar(50) DEFAULT NULL,
  `CancerThyroid` varchar(50) DEFAULT NULL,
  `CHF` varchar(50) DEFAULT NULL,
  `COPD` varchar(50) DEFAULT NULL,
  `Crohnsdisease` varchar(50) DEFAULT NULL,
  `CVA` varchar(50) DEFAULT NULL,
  `Dementia` varchar(50) DEFAULT NULL,
  `Depression` varchar(50) DEFAULT NULL,
  `Diabetes` varchar(50) DEFAULT NULL,
  `Epilepsy` varchar(50) DEFAULT NULL,
  `ErectileDysfunction` varchar(50) DEFAULT NULL,
  `Fibromyalgia` varchar(50) DEFAULT NULL,
  `GIBleeding` varchar(50) DEFAULT NULL,
  `Gout` varchar(50) DEFAULT NULL,
  `HeadConcussionInjury` varchar(50) DEFAULT NULL,
  `HeadachesChronic` varchar(50) DEFAULT NULL,
  `HearingLoss` varchar(50) DEFAULT NULL,
  `HeartAttack` varchar(50) DEFAULT NULL,
  `HeartDisease` varchar(50) DEFAULT NULL,
  `Heartburn` varchar(50) DEFAULT NULL,
  `HighCholestrol` varchar(50) DEFAULT NULL,
  `HTV` varchar(50) DEFAULT NULL,
  `Hyperlipidemia` varchar(50) DEFAULT NULL,
  `Hyperthyroidism` varchar(50) DEFAULT NULL,
  `Hypothyroidism` varchar(50) DEFAULT NULL,
  `IDDM` varchar(50) DEFAULT NULL,
  `Insomnia` varchar(50) DEFAULT NULL,
  `IrritableBowel` varchar(50) DEFAULT NULL,
  `MI` varchar(50) DEFAULT NULL,
  `NIDDM` varchar(50) DEFAULT NULL,
  `Obesity` varchar(50) DEFAULT NULL,
  `Osteoporosis` varchar(50) DEFAULT NULL,
  `PID` varchar(50) DEFAULT NULL,
  `Reflux` varchar(50) DEFAULT NULL,
  `Seizures` varchar(50) DEFAULT NULL,
  `SickleCell` varchar(50) DEFAULT NULL,
  `Stroke` varchar(50) DEFAULT NULL,
  `SurgeryAppendectomy` varchar(50) DEFAULT NULL,
  `SurgeryBypass` varchar(50) DEFAULT NULL,
  `SurgeryCABG` varchar(50) DEFAULT NULL,
  `SurgeryCholecystectomy` varchar(50) DEFAULT NULL,
  `SurgeryCoronary` varchar(50) DEFAULT NULL,
  `SurgeryHysterctomy` varchar(50) DEFAULT NULL,
  `SurgeryJointReplacement` varchar(50) DEFAULT NULL,
  `SurgeryMastectomy` varchar(50) DEFAULT NULL,
  `SurgerySinusSurgery` varchar(50) DEFAULT NULL,
  `SurgeryThyroidectomy` varchar(50) DEFAULT NULL,
  `ThyriodCondition` varchar(50) DEFAULT NULL,
  `TIA` varchar(50) DEFAULT NULL,
  `Tonsilifis` varchar(50) DEFAULT NULL,
  `TuberculosisExposure` varchar(50) DEFAULT NULL,
  `Ulcer` varchar(50) DEFAULT NULL,
  `Ulcers` varchar(50) DEFAULT NULL,
  `UTIChronic` varchar(50) DEFAULT NULL,
  `VisionLoss` varchar(50) DEFAULT NULL,
  `HighBloodPressure` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.patientdisease: ~1 rows (approximately)
/*!40000 ALTER TABLE `patientdisease` DISABLE KEYS */;
REPLACE INTO `patientdisease` (`Id`, `AAA`, `ADHD`, `Alcohol`, `AlcoholDependent`, `Allergies`, `Alzheimers`, `Anxiety`, `Arthritis`, `Asthma`, `AtrialFibrillation`, `BackPainChronic`, `BleedingProblems`, `CAD`, `Cancer`, `CancerBreast`, `CancerColon`, `CancerProstate`, `CancerSkin`, `CancerThyroid`, `CHF`, `COPD`, `Crohnsdisease`, `CVA`, `Dementia`, `Depression`, `Diabetes`, `Epilepsy`, `ErectileDysfunction`, `Fibromyalgia`, `GIBleeding`, `Gout`, `HeadConcussionInjury`, `HeadachesChronic`, `HearingLoss`, `HeartAttack`, `HeartDisease`, `Heartburn`, `HighCholestrol`, `HTV`, `Hyperlipidemia`, `Hyperthyroidism`, `Hypothyroidism`, `IDDM`, `Insomnia`, `IrritableBowel`, `MI`, `NIDDM`, `Obesity`, `Osteoporosis`, `PID`, `Reflux`, `Seizures`, `SickleCell`, `Stroke`, `SurgeryAppendectomy`, `SurgeryBypass`, `SurgeryCABG`, `SurgeryCholecystectomy`, `SurgeryCoronary`, `SurgeryHysterctomy`, `SurgeryJointReplacement`, `SurgeryMastectomy`, `SurgerySinusSurgery`, `SurgeryThyroidectomy`, `ThyriodCondition`, `TIA`, `Tonsilifis`, `TuberculosisExposure`, `Ulcer`, `Ulcers`, `UTIChronic`, `VisionLoss`, `HighBloodPressure`) VALUES
	('pramod', 'False', 'False', 'False', 'False', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'False', 'False', 'False', 'False', 'False', 'False', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True', 'True');
/*!40000 ALTER TABLE `patientdisease` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.patienthabits
DROP TABLE IF EXISTS `patienthabits`;
CREATE TABLE IF NOT EXISTS `patienthabits` (
  `Id` varchar(50) DEFAULT NULL,
  `SmokingStatus` varchar(50) DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `StartingSmokingDates` varchar(50) DEFAULT NULL,
  `QuitSmokingDate` varchar(50) DEFAULT NULL,
  `Averagediet` varchar(50) DEFAULT NULL,
  `MilkUsage` varchar(50) DEFAULT NULL,
  `NumberofozDayorofbf` varchar(50) DEFAULT NULL,
  `WaterUsage` varchar(50) DEFAULT NULL,
  `SleepingLocation` varchar(50) DEFAULT NULL,
  `SleepingFrequency` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.patienthabits: ~0 rows (approximately)
/*!40000 ALTER TABLE `patienthabits` DISABLE KEYS */;
REPLACE INTO `patienthabits` (`Id`, `SmokingStatus`, `Comments`, `StartingSmokingDates`, `QuitSmokingDate`, `Averagediet`, `MilkUsage`, `NumberofozDayorofbf`, `WaterUsage`, `SleepingLocation`, `SleepingFrequency`) VALUES
	('pramod', 'Yes', 'wdgfsdfsffafsssssssssssssssssss', '12-5-5455', '4-9-5744', 'Normal', 'Every Day', 'hkhkuhkhkh', 'Normal', 'Bed', 'Normal');
/*!40000 ALTER TABLE `patienthabits` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.patientlogin
DROP TABLE IF EXISTS `patientlogin`;
CREATE TABLE IF NOT EXISTS `patientlogin` (
  `PatientId` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`PatientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.patientlogin: ~1 rows (approximately)
/*!40000 ALTER TABLE `patientlogin` DISABLE KEYS */;
REPLACE INTO `patientlogin` (`PatientId`, `Password`) VALUES
	('pramod', 'pramod');
/*!40000 ALTER TABLE `patientlogin` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.personaldetails
DROP TABLE IF EXISTS `personaldetails`;
CREATE TABLE IF NOT EXISTS `personaldetails` (
  `Id` varchar(50) DEFAULT NULL,
  `parentmaritalstatus` varchar(50) DEFAULT NULL,
  `Livewith` varchar(50) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `pets` varchar(50) DEFAULT NULL,
  `Smokedetector` varchar(50) DEFAULT NULL,
  `SmokeExposure` varchar(50) DEFAULT NULL,
  `CoDetector` varchar(50) DEFAULT NULL,
  `Activities` varchar(50) DEFAULT NULL,
  `BikeHelmetusage` varchar(50) DEFAULT NULL,
  `seatbeltusage` varchar(50) DEFAULT NULL,
  `Carseatusage` varchar(50) DEFAULT NULL,
  `FireArmsPresent` varchar(50) DEFAULT NULL,
  `FireArmsSecured` varchar(50) DEFAULT NULL,
  `TypeofDayCare` varchar(50) DEFAULT NULL,
  `DayCareDayperWeek` varchar(50) DEFAULT NULL,
  `CurrentSchoollevel` varchar(50) DEFAULT NULL,
  `AverageGrade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.personaldetails: ~1 rows (approximately)
/*!40000 ALTER TABLE `personaldetails` DISABLE KEYS */;
REPLACE INTO `personaldetails` (`Id`, `parentmaritalstatus`, `Livewith`, `Occupation`, `pets`, `Smokedetector`, `SmokeExposure`, `CoDetector`, `Activities`, `BikeHelmetusage`, `seatbeltusage`, `Carseatusage`, `FireArmsPresent`, `FireArmsSecured`, `TypeofDayCare`, `DayCareDayperWeek`, `CurrentSchoollevel`, `AverageGrade`) VALUES
	('pramod', 'Divorced', 'Son', 'parent', 'Yes', 'Yes', 'Yes', 'Yes', 'polknb', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Residentian Care Facility', '1', 'Secondary School', 'A+');
/*!40000 ALTER TABLE `personaldetails` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.pharmacies
DROP TABLE IF EXISTS `pharmacies`;
CREATE TABLE IF NOT EXISTS `pharmacies` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Pharmacy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.pharmacies: ~1 rows (approximately)
/*!40000 ALTER TABLE `pharmacies` DISABLE KEYS */;
REPLACE INTO `pharmacies` (`PatientId`, `Pharmacy`) VALUES
	('pramod', 'zdffsdfasfas');
/*!40000 ALTER TABLE `pharmacies` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.physicaladdress
DROP TABLE IF EXISTS `physicaladdress`;
CREATE TABLE IF NOT EXISTS `physicaladdress` (
  `Id` varchar(50) NOT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.physicaladdress: ~1 rows (approximately)
/*!40000 ALTER TABLE `physicaladdress` DISABLE KEYS */;
REPLACE INTO `physicaladdress` (`Id`, `Address1`, `Address2`, `City`, `State`, `ZipCode`) VALUES
	('pramod', 'Balkuve', 'shirpur', 'Dhule', 'Maharastra', 1234);
/*!40000 ALTER TABLE `physicaladdress` ENABLE KEYS */;


-- Dumping structure for table AnnabelleTest.surgery
DROP TABLE IF EXISTS `surgery`;
CREATE TABLE IF NOT EXISTS `surgery` (
  `PatientId` varchar(50) DEFAULT NULL,
  `YearOfSurgery` varchar(50) DEFAULT NULL,
  `Surgery` varchar(50) DEFAULT NULL,
  `LocationOfSurgery` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table AnnabelleTest.surgery: ~1 rows (approximately)
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
REPLACE INTO `surgery` (`PatientId`, `YearOfSurgery`, `Surgery`, `LocationOfSurgery`) VALUES
	('pramod', '1980', 'hgjgj', 'hjgh'),
	('pramod', '1980', 'blkl', 'pune');
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
