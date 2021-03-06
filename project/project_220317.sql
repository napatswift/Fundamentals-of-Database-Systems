-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2022 at 06:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `CONTAINS`
--

CREATE TABLE `CONTAINS` (
  `Order_number` varchar(8) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Model_nb` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Ordered_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Citizen_ID`) VALUES
('1100204742237'),
('1100508234563'),
('1101003423689'),
('1104603408762'),
('1130302343297'),
('3100501345403'),
('3101501422769'),
('3103000989404'),
('3104100909332'),
('3104200763566'),
('3130102546754'),
('3130200795345'),
('3130602392125'),
('3130603163815'),
('3170100803403');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Position` varchar(15) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Citizen_ID`, `Position`, `Salary`) VALUES
('3130200795345', 'delivery', 20000),
('3130602392125', 'carpenter', 30000),
('3130603163815', 'carpenter', 30000),
('3170100803403', 'stock_manager', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `Citizen_id` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `T_ID` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`Citizen_id`, `T_ID`) VALUES
('3130602392125', 'T112'),
('3130602392125', 'T113'),
('3130603163815', 'T114');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Model_nb` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`Citizen_ID`, `Model_nb`) VALUES
('3130602392125', '1001'),
('3130602392125', '1003'),
('3130602392125', '2002'),
('3130602392125', '2003'),
('3130602392125', '3001'),
('3130603163815', '1001'),
('3130603163815', '1003'),
('3130603163815', '2001'),
('3130603163815', '4002'),
('3130603163815', '4003');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `M_description` varchar(256) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `M_width` decimal(10,0) NOT NULL,
  `M_height` decimal(10,0) NOT NULL,
  `M_length` decimal(10,0) NOT NULL,
  `M_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`M_description`, `M_width`, `M_height`, `M_length`, `M_stock`) VALUES
('???????????????????????????', '1', '2', '4', 70),
('???????????????????????????', '1', '2', '5', 70),
('?????????????????????', '1', '1', '6', 60),
('?????????????????????', '1', '2', '4', 60),
('?????????????????????', '1', '2', '5', 60),
('?????????????????????', '1', '1', '6', 90),
('?????????????????????', '1', '2', '5', 90),
('????????????????????????', '1', '2', '4', 80),
('????????????????????????', '1', '2', '5', 80),
('??????????????????', '1', '1', '8', 50),
('??????????????????', '1', '2', '5', 50),
('??????????????????', '1', '2', '6', 50),
('?????????????????????????????????', '1', '2', '5', 20),
('?????????????????????????????????', '1', '2', '6', 20);

-- --------------------------------------------------------

--
-- Table structure for table `m_supply`
--

CREATE TABLE `m_supply` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `M_description` varchar(100) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `M_width` decimal(10,0) NOT NULL,
  `M_height` decimal(10,0) NOT NULL,
  `M_length` decimal(10,0) NOT NULL,
  `MS_stock` int(11) NOT NULL,
  `MS_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `m_supply`
--

INSERT INTO `m_supply` (`Citizen_ID`, `M_description`, `M_width`, `M_height`, `M_length`, `MS_stock`, `MS_total`) VALUES
('3130602392125', '???????????????????????????', '1', '2', '5', 15, '4500'),
('3130602392125', '?????????????????????', '1', '2', '4', 10, '2500'),
('3130602392125', '?????????????????????', '1', '2', '5', 9, '1250'),
('3130602392125', '????????????????????????', '1', '2', '5', 8, '1100'),
('3130602392125', '??????????????????', '1', '2', '5', 6, '700'),
('3130602392125', '??????????????????', '1', '2', '6', 7, '600'),
('3130602392125', '?????????????????????????????????', '1', '2', '6', 2, '500'),
('3130603163815', '???????????????????????????', '1', '2', '4', 7, '750'),
('3130603163815', '?????????????????????', '1', '1', '6', 6, '550'),
('3130603163815', '?????????????????????', '1', '2', '5', 3, '500'),
('3130603163815', '?????????????????????', '1', '1', '6', 9, '3500'),
('3130603163815', '????????????????????????', '1', '2', '4', 12, '3500'),
('3130603163815', '??????????????????', '1', '1', '8', 17, '15050'),
('3130603163815', '?????????????????????????????????', '1', '2', '5', 21, '21000');

-- --------------------------------------------------------

--
-- Table structure for table `operates_tool`
--

CREATE TABLE `operates_tool` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `T_ID` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `operates_tool`
--

INSERT INTO `operates_tool` (`Citizen_ID`, `T_ID`) VALUES
('3130602392125', 'T101'),
('3130602392125', 'T106'),
('3130602392125', 'T110'),
('3130602392125', 'T111'),
('3130602392125', 'T114'),
('3130603163815', 'T102'),
('3130603163815', 'T104'),
('3130603163815', 'T105'),
('3130603163815', 'T108'),
('3130603163815', 'T109'),
('3130603163815', 'T110'),
('3130603163815', 'T111');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_number` varchar(8) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `O_description` varchar(256) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `O_status` varchar(32) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Placing_date` date NOT NULL,
  `Paying_date` date NOT NULL,
  `Payment_method` varchar(8) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Shipping_address` varchar(256) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `Tax_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_number`, `Citizen_ID`, `O_description`, `O_status`, `Placing_date`, `Paying_date`, `Payment_method`, `Shipping_address`, `Tax_ID`) VALUES
('0076581', '3104100909332', '??????????????????????????????????????????????????????', '????????????????????????????????????????????????', '2564-12-15', '2564-12-20', '?????????????????????', '??????????????????????????????', '3104100909332'),
('0076582', '3101501422769', '????????????????????????????????????????????? 3 ???????????? ??????????????????????????????????????????????????? ??????????????????????????????????????????', '????????????????????????????????????????????????', '2564-12-20', '2565-01-01', '??????????????????', '??????????????????????????????', '3101501422769'),
('0076583', '3101501422769', '????????????????????????????????????????????? ???????????????????????????????????????????????????', '????????????????????????????????????????????????', '2565-01-05', '2565-01-12', '??????????????????', '??????????????????????????? ????????????????????????????????????????????????????????? ?????????????????????????????? ?????????????????????????????????????????????', '3104200763566'),
('0076584', '3100501345403', '??????????????????????????????????????????', '????????????????????????????????????????????????', '2565-01-10', '2565-01-24', '????????????', '???????????????????????????????????????????????? 258/145 ?????????????????????????????????????????????????????? ???????????????????????????????????? ????????????????????????????????????????????????', '3100501345403'),
('0076585', '3100501345403', '??????????????????????????????????????? ???????????????????????? ?????????????????????????????? 18 x 18 ??????????????????????????? ????????????????????????????????????????????? (????????????????????????????????????????????????)', '????????????????????????????????????????????????', '2565-01-18', '2565-01-25', '??????????????????', '???????????????????????????????????????????????? 258/145 ?????????????????????????????????????????????????????? ???????????????????????????????????? ????????????????????????????????????????????????', '3100501345403'),
('0076586', '1101003423689', '???????????????????????????????????????????????? 8 ????????? ??????????????????????????????????????? ??????????????????????????????', '????????????????????????????????????????????????', '2565-01-24', '2565-02-03', '??????????????????', '????????????????????????????????????????????????????????? 75/123 ???????????????????????????????????????????????????????????? ?????????????????????????????? ?????????????????????', '1101003423689'),
('0076587', '1104603408762', '????????????????????????????????????????????? ????????????????????? 6 ????????????', '????????????????????????????????????????????????', '2565-02-04', '2565-02-14', '?????????????????????', '??????????????????????????????', '1104603408762'),
('0076588', '1100508234563', '?????????????????????????????????????????? ??????????????????????????? ??????????????? ???????????????????????????', '????????????????????????????????????????????????', '2565-02-09', '2565-02-16', '?????????????????????', '??????????????????????????????', '1100508234563'),
('0076589', '3103000989404', '?????????????????????????????????????????? ???????????????????????? (????????? 4)', '????????????????????????????????????????????????', '2565-02-18', '2565-02-25', '????????????', '????????????????????????????????????????????????????????? 147 ?????????????????????????????????????????? ?????????????????????????????? ??????????????????????????????????????????', '3103000989404'),
('0076590', '3130102546754', '????????????????????????????????????????????????5???????????????????????????????????????1????????????????????????????????? ????????????????????????????????????????????????????????? ????????????????????????????????????????????????', '????????????????????????????????????????????????????????????????????????', '2565-02-25', '2565-03-04', '?????????????????????', '????????????????????????????????????????????????????????? 12 ???????????? 4 ??????????????????????????????????????? ?????????????????????????????????????????? ??????????????????????????????????????????', '3130102546754'),
('0076591', '3101501422769', '?????????????????????????????????????????? ??????????????????????????????????????????????????????????????? ??????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????????????????????', '????????????????????????????????????????????????', '2565-03-02', '2565-03-07', '????????????', '????????????????????????????????????????????????????????? 99 ???????????????????????????????????????????????? ????????????????????????????????? ??????????????????????????? ?????????????????????', '3101501422769'),
('0076592', '1100204742237', '??????????????????????????????????????? 6 ????????? ????????????????????????', '????????????????????????????????????????????????????????????????????????', '2565-03-06', '2565-03-06', '?????????????????????', '??????????????????????????????', '1100204742237'),
('0076593', '1130302343297', '???????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????', '????????????????????????????????????????????????????????????????????????', '2565-03-10', '2565-03-10', '??????????????????', '??????????????????????????? ???????????????????????????????????????????????? ?????????????????????????????????????????? ?????????????????????????????????????????? ??????????????????????????????????????????', '1130302343297'),
('0076594', '1130302343297', '????????????????????????????????? ?????????????????? ????????????A', '????????????????????????????????????????????????????????????????????????', '2565-03-11', '2565-03-11', '?????????????????????', '??????????????????????????? ???????????????????????????????????????????????? ?????????????????????????????????????????? ?????????????????????????????????????????? ??????????????????????????????????????????', '1130302343297');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Phone_number` varchar(10) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Citizen_ID`, `Name`, `Phone_number`, `Email`) VALUES
('1100204742237', 'Weerada Wongdee', '0873659080', 'weerada.wwd@gmail.com'),
('1100508234563', 'Nirut Boonpasert', '0902931142', 'nutt_nirut@hotmail.com'),
('1101003423689', 'Preyakorn Sittisak', '0634838578', 'preyakornsittisak@gmail.com'),
('1104603408762', 'Kanabadee Lertlam', '0933914561', 'kanabadeell@gmail.com'),
('1130302343297', 'Bhoorames Tungtong', '0663892381', 'bhooramestt@gmail.com'),
('3100501345403', 'Sansanee Jaipijit', '0800703040', 'ssn_sansanee@hotmail.com'),
('3101501422769', 'Oraithai Jaiseema', '0823247766', 'jibb.ortjsm@gmail.com'),
('3103000989404', 'Kingkaew Buadang', '0846582493', 'kingkaew.kkbd@gmail.com'),
('3104100909332', 'Rattiphat Seepao', '0849001256', 'chyseepao.rtp@gmail.com'),
('3104200763566', 'Thichanon Tantragoon', '0938887911', 'thichanon.ttg@gmail.com'),
('3130102546754', 'Jiratchaya Hwangkaofao', '0924226258', 'jiratchaya2514@gmail.com'),
('3130200795345', 'Chaiwat Aimnan', '0853328212', 'chaiwat1971@gmail.com'),
('3130602392125', 'Aekkarat Sinkorn', '0834615846', 'piaekkubphom@gmail.com'),
('3130603163815', 'Sirichai Sinkorn', '0824476831', 'sirikorn.sinchai@gmail.com'),
('3170100803403', 'Manoch Singkham', '0887713641', 'peenoch_bansing@hotmai.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Model_nb` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `P_description` varchar(256) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `P_status` varchar(32) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`P_status` in ('??????????????????????????????????????????????????????????????????????????????','?????????????????????????????????????????????????????????')),
  `Price` double NOT NULL,
  `Wood_type` varchar(16) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Wood_type` in ('??????????????????','?????????????????????','????????????????????????','?????????????????????????????????','?????????????????????','???????????????????????????')),
  `P_width` double NOT NULL,
  `P_height` double NOT NULL,
  `Type` varchar(16) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Type` in ('????????????','???????????????','????????????????????????','????????????????????????')),
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Model_nb`, `P_description`, `P_status`, `Price`, `Wood_type`, `P_width`, `P_height`, `Type`, `Quantity`) VALUES
('1001', '??????????????????????????????????????????????????????', '?????????????????????????????????????????????????????????', 798, '???????????????????????????', 36, 79, '????????????', 3),
('1002', '????????????????????????????????????????????? 3 ????????????', '?????????????????????????????????????????????????????????', 2200, '??????????????????', 71, 40, '????????????', 2),
('1003', '?????????????????????????????????????????????', '?????????????????????????????????????????????????????????', 1050, '???????????????????????????', 48, 40, '????????????', 1),
('2001', '????????????????????????????????????????????????????????????', '??????????????????????????????????????????????????????????????????????????????', 2150, '?????????????????????', 32, 80, '???????????????', 4),
('2002', '??????????????????????????????????????? ????????????????????????', '?????????????????????????????????????????????????????????', 1690, '????????????????????????', 32, 80, '???????????????', 1),
('2003', '??????????????????????????????????????? 6 ????????? ????????????????????????', '??????????????????????????????????????????????????????????????????????????????', 1850, '????????????????????????', 32, 80, '???????????????', 1),
('2004', '???????????????????????????????????????????????? 8 ?????????', '?????????????????????????????????????????????????????????', 2590, '?????????????????????????????????', 36, 87, '???????????????', 2),
('2005', '????????????????????????????????????????????????5???????????????????????????????????????1?????????????????????????????????', '??????????????????????????????????????????????????????????????????????????????', 2500, '?????????????????????????????????', 32, 80, '???????????????', 2),
('3001', '????????????????????????????????????????????? ????????????????????? 6 ????????????', '?????????????????????????????????????????????????????????', 363, '?????????????????????', 24, 44, '????????????????????????', 5),
('3002', '?????????????????????????????????????????? ???????????????????????????', '?????????????????????????????????????????????????????????', 413, '??????????????????', 24, 40, '????????????????????????', 2),
('3003', '?????????????????????????????????????????? ???????????????????????? (????????? 4 )', '?????????????????????????????????????????????????????????', 650, '??????????????????', 24, 60, '????????????????????????', 2),
('4001', '??????????????????????????????????????????', '?????????????????????????????????????????????????????????', 900, '??????????????????', 25, 104, '????????????????????????', 10),
('4002', '???????????????????????????????????????????????????', '?????????????????????????????????????????????????????????', 1690, '??????????????????', 28.5, 86, '????????????????????????', 8),
('4003', '????????????????????????????????? ?????????????????? ????????????A', '??????????????????????????????????????????????????????????????????????????????', 4670, '??????????????????', 20, 70, '????????????????????????', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `T_ID` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `T_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`T_ID`, `T_stock`) VALUES
('T101', 2),
('T102', 2),
('T103', 2),
('T104', 1),
('T105', 4),
('T106', 2),
('T107', 8),
('T108', 3),
('T109', 1),
('T110', 20),
('T111', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `T_ID` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Working_Condition` varchar(20) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Working_Condition` in ('????????????','?????????????????????','??????????????????????????????????????????????????????')),
  `Last_check_WC` date NOT NULL,
  `T_description` varchar(1000) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `T_type` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`T_ID`, `Working_Condition`, `Last_check_WC`, `T_description`, `T_type`) VALUES
('T101', '????????????', '0000-00-00', '??????????????????????????????', '????????????'),
('T102', '????????????', '0000-00-00', '?????????????????????', '????????????'),
('T103', '????????????', '0000-00-00', '????????????????????????', '????????????'),
('T104', '????????????', '0000-00-00', '???????????????????????????', '????????????'),
('T105', '????????????', '0000-00-00', '????????????????????????????????? (???????????????????????????)', '?????????'),
('T106', '????????????', '0000-00-00', '?????????????????? (????????? ???????????????)', '?????????'),
('T107', '????????????', '0000-00-00', '????????????????????????????????? (????????? ???????????????)', '?????????'),
('T108', '????????????', '0000-00-00', '????????????????????????????????? (????????? ??????????????????)', '?????????'),
('T109', '????????????', '0000-00-00', '??????????????? (????????? ????????????????????????)', '?????????'),
('T110', '????????????', '0000-00-00', '?????????????????????????????? 2.5 * 12 ????????????', '????????????'),
('T111', '????????????', '0000-00-00', '?????????????????????????????? 7 * 1 ????????????', '????????????'),
('T112', '????????????', '0000-00-00', '???????????????????????????????????????????????????????????? 10 ????????????', '???????????????????????????????????????????????????????????????'),
('T113', '?????????????????????', '0000-00-00', '?????????????????????????????????', '???????????????????????????????????????????????????'),
('T114', '????????????', '0000-00-00', '????????????????????????????????????', '???????????????????????????????????????????????????');

-- --------------------------------------------------------

--
-- Table structure for table `tools_make`
--

CREATE TABLE `tools_make` (
  `T_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Model_nb` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `tools_make`
--

INSERT INTO `tools_make` (`T_ID`, `Model_nb`) VALUES
('T101', '1001'),
('T102', '1001'),
('T102', '3001'),
('T104', '3001'),
('T104', '3003'),
('T104', '4002'),
('T105', '1001'),
('T106', '3001'),
('T108', '3003'),
('T108', '4002'),
('T109', '3003'),
('T109', '4002'),
('T110', '1001'),
('T111', '3001'),
('T111', '4002'),
('T112', '3003'),
('T113', '1001'),
('T114', '3001');

-- --------------------------------------------------------

--
-- Table structure for table `t_supply`
--

CREATE TABLE `t_supply` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `T_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `TS_stock` int(11) NOT NULL,
  `TS_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `t_supply`
--

INSERT INTO `t_supply` (`Citizen_ID`, `T_ID`, `TS_stock`, `TS_total`) VALUES
('3130602392125', 'T110', 2, '1380'),
('3130602392125', 'T111', 4, '1648'),
('3130603163815', 'T105', 2, '1200'),
('3130603163815', 'T106', 7, '840'),
('3130603163815', 'T108', 9, '800'),
('3130603163815', 'T109', 5, '1200'),
('3170100803403', 'T105', 5, '3000'),
('3170100803403', 'T106', 10, '1200'),
('3170100803403', 'T108', 10, '890'),
('3170100803403', 'T109', 9, '2160'),
('3170100803403', 'T110', 2, '1380'),
('3170100803403', 'T111', 4, '1648');

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `M_description` varchar(100) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `M_width` decimal(10,0) NOT NULL,
  `M_height` decimal(10,0) NOT NULL,
  `M_length` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`Citizen_ID`, `M_description`, `M_width`, `M_height`, `M_length`) VALUES
('3130602392125', '?????????????????????', '1', '1', '6'),
('3130602392125', '?????????????????????', '1', '2', '4'),
('3130602392125', '?????????????????????', '1', '2', '5'),
('3130602392125', '????????????????????????', '1', '2', '4'),
('3130602392125', '??????????????????', '1', '1', '8'),
('3130602392125', '??????????????????', '1', '2', '5'),
('3130603163815', '???????????????????????????', '1', '2', '4'),
('3130603163815', '???????????????????????????', '1', '2', '5'),
('3130603163815', '?????????????????????', '1', '2', '5'),
('3130603163815', '?????????????????????', '1', '1', '6'),
('3130603163815', '????????????????????????', '1', '2', '5'),
('3130603163815', '??????????????????', '1', '2', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CONTAINS`
--
ALTER TABLE `CONTAINS`
  ADD PRIMARY KEY (`Order_number`,`Model_nb`),
  ADD KEY `Model_nb` (`Model_nb`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Citizen_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Citizen_ID`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`Citizen_id`,`T_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`Citizen_ID`,`Model_nb`),
  ADD KEY `Model_nb` (`Model_nb`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`M_description`,`M_width`,`M_height`,`M_length`);

--
-- Indexes for table `m_supply`
--
ALTER TABLE `m_supply`
  ADD PRIMARY KEY (`Citizen_ID`,`M_description`,`M_width`,`M_height`,`M_length`),
  ADD KEY `M_description` (`M_description`,`M_width`,`M_height`,`M_length`);

--
-- Indexes for table `operates_tool`
--
ALTER TABLE `operates_tool`
  ADD PRIMARY KEY (`Citizen_ID`,`T_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_number`,`Citizen_ID`),
  ADD KEY `order_ibfk_1` (`Citizen_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Citizen_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Model_nb`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tools_make`
--
ALTER TABLE `tools_make`
  ADD PRIMARY KEY (`T_ID`,`Model_nb`),
  ADD KEY `Model_nb` (`Model_nb`);

--
-- Indexes for table `t_supply`
--
ALTER TABLE `t_supply`
  ADD PRIMARY KEY (`Citizen_ID`,`T_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`Citizen_ID`,`M_description`,`M_width`,`M_height`,`M_length`),
  ADD KEY `M_description` (`M_description`,`M_width`,`M_height`,`M_length`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CONTAINS`
--
ALTER TABLE `CONTAINS`
  ADD CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`Order_number`) REFERENCES `order` (`Order_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`Model_nb`) REFERENCES `product` (`Model_nb`) ON DELETE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE;

--
-- Constraints for table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `machine_ibfk_1` FOREIGN KEY (`Citizen_id`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `machine_ibfk_2` FOREIGN KEY (`T_ID`) REFERENCES `tools` (`T_ID`) ON DELETE CASCADE;

--
-- Constraints for table `makes`
--
ALTER TABLE `makes`
  ADD CONSTRAINT `makes_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `makes_ibfk_2` FOREIGN KEY (`Model_nb`) REFERENCES `product` (`Model_nb`) ON DELETE CASCADE;

--
-- Constraints for table `m_supply`
--
ALTER TABLE `m_supply`
  ADD CONSTRAINT `m_supply_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `m_supply_ibfk_2` FOREIGN KEY (`M_description`,`M_width`,`M_height`,`M_length`) REFERENCES `material` (`M_description`, `M_width`, `M_height`, `M_length`) ON DELETE CASCADE;

--
-- Constraints for table `operates_tool`
--
ALTER TABLE `operates_tool`
  ADD CONSTRAINT `operates_tool_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `operates_tool_ibfk_2` FOREIGN KEY (`T_ID`) REFERENCES `tools` (`T_ID`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`);

--
-- Constraints for table `tool`
--
ALTER TABLE `tool`
  ADD CONSTRAINT `tool_ibfk_1` FOREIGN KEY (`T_ID`) REFERENCES `tools` (`T_ID`) ON DELETE CASCADE;

--
-- Constraints for table `tools_make`
--
ALTER TABLE `tools_make`
  ADD CONSTRAINT `tools_make_ibfk_1` FOREIGN KEY (`T_ID`) REFERENCES `tools` (`T_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tools_make_ibfk_2` FOREIGN KEY (`Model_nb`) REFERENCES `product` (`Model_nb`) ON DELETE CASCADE;

--
-- Constraints for table `t_supply`
--
ALTER TABLE `t_supply`
  ADD CONSTRAINT `t_supply_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_supply_ibfk_2` FOREIGN KEY (`T_ID`) REFERENCES `tools` (`T_ID`) ON DELETE CASCADE;

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`Citizen_ID`) REFERENCES `person` (`Citizen_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`M_description`,`M_width`,`M_height`,`M_length`) REFERENCES `material` (`M_description`, `M_width`, `M_height`, `M_length`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
