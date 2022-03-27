-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 05:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
) ;

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
) ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`M_description`, `M_width`, `M_height`, `M_length`, `M_stock`) VALUES
('ไม้แคมปัส', '1', '2', '4', 70),
('ไม้แคมปัส', '1', '2', '5', 70),
('ไม้จำปา', '1', '1', '6', 60),
('ไม้จำปา', '1', '2', '4', 60),
('ไม้จำปา', '1', '2', '5', 60),
('ไม้พลวง', '1', '1', '6', 90),
('ไม้พลวง', '1', '2', '5', 90),
('ไม้สนลาว', '1', '2', '4', 80),
('ไม้สนลาว', '1', '2', '5', 80),
('ไม้สัก', '1', '1', '8', 50),
('ไม้สัก', '1', '2', '5', 50),
('ไม้สัก', '1', '2', '6', 50),
('ไม้เสียดช่อ', '1', '2', '5', 20),
('ไม้เสียดช่อ', '1', '2', '6', 20);

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
) ;

--
-- Dumping data for table `m_supply`
--

INSERT INTO `m_supply` (`Citizen_ID`, `M_description`, `M_width`, `M_height`, `M_length`, `MS_stock`, `MS_total`) VALUES
('3130602392125', 'ไม้แคมปัส', '1', '2', '5', 15, '4500'),
('3130602392125', 'ไม้จำปา', '1', '2', '4', 10, '2500'),
('3130602392125', 'ไม้พลวง', '1', '2', '5', 9, '1250'),
('3130602392125', 'ไม้สนลาว', '1', '2', '5', 8, '1100'),
('3130602392125', 'ไม้สัก', '1', '2', '5', 6, '700'),
('3130602392125', 'ไม้สัก', '1', '2', '6', 7, '600'),
('3130602392125', 'ไม้เสียดช่อ', '1', '2', '6', 2, '500'),
('3130603163815', 'ไม้แคมปัส', '1', '2', '4', 7, '750'),
('3130603163815', 'ไม้จำปา', '1', '1', '6', 6, '550'),
('3130603163815', 'ไม้จำปา', '1', '2', '5', 3, '500'),
('3130603163815', 'ไม้พลวง', '1', '1', '6', 9, '3500'),
('3130603163815', 'ไม้สนลาว', '1', '2', '4', 12, '3500'),
('3130603163815', 'ไม้สัก', '1', '1', '8', 17, '15050'),
('3130603163815', 'ไม้เสียดช่อ', '1', '2', '5', 21, '21000');

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
  `Citizen_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Order_number` varchar(8) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `O_description` varchar(256) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `O_status` varchar(32) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Placing_date` date NOT NULL,
  `Paying_date` date NOT NULL,
  `Payment_method` varchar(8) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `Shipping_address` varchar(256) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `Tax_ID` varchar(13) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Citizen_ID`, `Order_number`, `O_description`, `O_status`, `Placing_date`, `Paying_date`, `Payment_method`, `Shipping_address`, `Tax_ID`) VALUES
('1100204742237', '0076592', 'ประตูไม้สนลาว 6 ฟัก โมเดิร์น', 'คำสั่งซื้อกำลังดำเนินการ', '2565-03-06', '2565-03-06', 'โอนเงิน', 'รับที่ร้าน', '1100204742237'),
('1100508234563', '0076588', 'หน้าต่างไม้สัก บันได้ลิง มุมมน ไม้สีเข้ม', 'คำสั่งซื้อสำเร็จ', '2565-02-09', '2565-02-16', 'โอนเงิน', 'รับที่ร้าน', '1100508234563'),
('1101003423689', '0076586', 'ประตูไม้เสียดช่อ 8 ฟัก เป็นไม้สีอ่อน ทำมุมให้มน', 'คำสั่งซื้อสำเร็จ', '2565-01-24', '2565-02-03', 'เงินสด', 'จัดส่งที่บ้านเลขที่ 75/123 หมู่บ้านรวยรวยเฮงเฮง ถนนข้าวสาร กรุงเทพ', '1101003423689'),
('1104603408762', '0076587', 'หน้าต่างไม้พลวง สเปนตรง 6 ช่อง', 'คำสั่งซื้อสำเร็จ', '2565-02-04', '2565-02-14', 'โอนเงิน', 'รับที่ร้าน', '1104603408762'),
('1130302343297', '0076593', 'ประตูไม้จำปาฟักปีกนก ครึ่งบนเป็นไม้สีเข้ม ครึ่งล่างเป็นไม้สีอ่อน', 'คำสั่งซื้อกำลังดำเนินการ', '2565-03-10', '2565-03-10', 'เงินสด', 'จัดส่งที่ อพาร์ทเม้นท์ชะบา ถนนบางรักพัฒนา อำเภอบางบัวทอง จังหวัดนนทบุรี', '1130302343297'),
('1130302343297', '0076594', 'ลูกบันไดไม้ ไม้สัก เกรดA', 'คำสั่งซื้อกำลังดำเนินการ', '2565-03-11', '2565-03-11', 'โอนเงิน', 'จัดส่งที่ อพาร์ทเม้นท์ชะบา ถนนบางรักพัฒนา อำเภอบางบัวทอง จังหวัดนนทบุรี', '1130302343297'),
('3100501345403', '0076584', 'ลูกบันไดไม้สัก', 'คำสั่งซื้อสำเร็จ', '2565-01-10', '2565-01-24', 'เช็ค', 'จัดส่งบ้านเลขที่ 258/145 หมู่บ้านสูงสุดในใจ ถนนเชียงใหม่ จังหวัดเชียงใหม่', '3100501345403'),
('3100501345403', '0076585', 'ประตูไม้สนลาว โมเดิร์น มีช่องขนาด 18 x 18 เซนติเมตร อยู่ที่ด้านล่าง (เอาไว้ให้แมวเข้า)', 'คำสั่งซื้อสำเร็จ', '2565-01-18', '2565-01-25', 'เงินสด', 'จัดส่งบ้านเลขที่ 258/145 หมู่บ้านสูงสุดในใจ ถนนเชียงใหม่ จังหวัดเชียงใหม่', '3100501345403'),
('3101501422769', '0076582', 'วงกบหน้าต่างบาน 3 ช่อง ใช้ไม้สักเท่านั้น เนื้อไม้สีเข้ม', 'คำสั่งซื้อสำเร็จ', '2564-12-20', '2565-01-01', 'เงินสด', 'รับที่ร้าน', '3101501422769'),
('3101501422769', '0076583', 'วงกบหน้าต่างคู่ ไม้แคมปัสเท่านั้น', 'คำสั่งซื้อสำเร็จ', '2565-01-05', '2565-01-12', 'เงินสด', 'จัดส่งที่ อพาร์ทเม้นท์เพ็ญศรี ถนนวิภาวดี จังหวัดปทุมธานี', '3104200763566'),
('3101501422769', '0076591', 'ลูกบันไดไม้สัก ทำตามแบบที่วาดมาเป๊ะๆ เน้นไม้สีอ่อน ทำช่องข้างล่างให้หมาชิวาว่าเข้าได้', 'คำสั่งซื้อสำเร็จ', '2565-03-02', '2565-03-07', 'เช็ค', 'จัดส่งที่บ้านเลขที่ 99 หมู่บ้านยันหว่าง ถนนกิ่งแก้ว ลาดกระบัง กรุงเทพ', '3101501422769'),
('3103000989404', '0076589', 'หน้าต่างไม้สัก บันไดลิง (ขอบ 4)', 'คำสั่งซื้อสำเร็จ', '2565-02-18', '2565-02-25', 'เช็ค', 'จัดส่งที่บ้านเลขที่ 147 หมู่บ้านหงส์ดำ อำเภอเมือง จังหวัดนนทบุรี', '3103000989404'),
('3104100909332', '0076581', 'วงกบประตูไม้แคมปัส', 'คำสั่งซื้อสำเร็จ', '2564-12-15', '2564-12-20', 'โอนเงิน', 'รับที่ร้าน', '3104100909332'),
('3130102546754', '0076590', 'ประตูไม้เสียดช่อ5ลูกฟักใหญ่หนา1นิ้วเสมอขอบ ไม้เสียดช่อเท่านั้น ตัวไม้ต้องสีเข้ม', 'คำสั่งซื้อกำลังดำเนินการ', '2565-02-25', '2565-03-04', 'โอนเงิน', 'จัดส่งที่บ้านเลขที่ 12 หมู่ 4 หมู่บ้านแสนดี ถนนบางรักพัฒนา จังหวัดนนทบุรี', '3130102546754');

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
  `P_status` varchar(32) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`P_status` in ('สินค้าอยู่ในขั้นตอนการผลิต','สินค้าผลิตเสร็จแล้ว')),
  `Price` double NOT NULL,
  `Wood_type` varchar(16) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Wood_type` in ('ไม้สัก','ไม้จำปา','ไม้สนลาว','ไม้เสียดช่อ','ไม้พลวง','ไม้แคมปัส')),
  `P_width` double NOT NULL,
  `P_height` double NOT NULL,
  `Type` varchar(16) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Type` in ('วงกบ','ประตู','หน้าต่าง','ลูกบันได')),
  `Quantity` int(11) NOT NULL
) ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Model_nb`, `P_description`, `P_status`, `Price`, `Wood_type`, `P_width`, `P_height`, `Type`, `Quantity`) VALUES
('1001', 'วงกบประตูไม้แคมปัส', 'สินค้าผลิตเสร็จแล้ว', 798, 'ไม้แคมปัส', 36, 79, 'วงกบ', 3),
('1002', 'วงกบหน้าต่างบาน 3 ช่อง', 'สินค้าผลิตเสร็จแล้ว', 2200, 'ไม้สัก', 71, 40, 'วงกบ', 2),
('1003', 'วงกบหน้าต่างคู่', 'สินค้าผลิตเสร็จแล้ว', 1050, 'ไม้แคมปัส', 48, 40, 'วงกบ', 1),
('2001', 'ประตูไม้จำปาฟักปีกนก', 'สินค้าอยู่ในขั้นตอนการผลิต', 2150, 'ไม้จำปา', 32, 80, 'ประตู', 4),
('2002', 'ประตูไม้สนลาว โมเดิร์น', 'สินค้าผลิตเสร็จแล้ว', 1690, 'ไม้สนลาว', 32, 80, 'ประตู', 1),
('2003', 'ประตูไม้สนลาว 6 ฟัก โมเดิร์น', 'สินค้าอยู่ในขั้นตอนการผลิต', 1850, 'ไม้สนลาว', 32, 80, 'ประตู', 1),
('2004', 'ประตูไม้เสียดช่อ 8 ฟัก', 'สินค้าผลิตเสร็จแล้ว', 2590, 'ไม้เสียดช่อ', 36, 87, 'ประตู', 2),
('2005', 'ประตูไม้เสียดช่อ5ลูกฟักใหญ่หนา1นิ้วเสมอขอบ', 'สินค้าอยู่ในขั้นตอนการผลิต', 2500, 'ไม้เสียดช่อ', 32, 80, 'ประตู', 2),
('3001', 'หน้าต่างไม้พลวง สเปนตรง 6 ช่อง', 'สินค้าผลิตเสร็จแล้ว', 363, 'ไม้พลวง', 24, 44, 'หน้าต่าง', 5),
('3002', 'หน้าต่างไม้สัก บันได้ลิง', 'สินค้าผลิตเสร็จแล้ว', 413, 'ไม้สัก', 24, 40, 'หน้าต่าง', 2),
('3003', 'หน้าต่างไม้สัก บันไดลิง (ขอบ 4 )', 'สินค้าผลิตเสร็จแล้ว', 650, 'ไม้สัก', 24, 60, 'หน้าต่าง', 2),
('4001', 'ลูกบันไดไม้สัก', 'สินค้าผลิตเสร็จแล้ว', 900, 'ไม้สัก', 25, 104, 'ลูกบันได', 10),
('4002', 'ลูกบันไดไม้ไม้สัก', 'สินค้าผลิตเสร็จแล้ว', 1690, 'ไม้สัก', 28.5, 86, 'ลูกบันได', 8),
('4003', 'ลูกบันไดไม้ ไม้สัก เกรดA', 'สินค้าอยู่ในขั้นตอนการผลิต', 4670, 'ไม้สัก', 20, 70, 'ลูกบันได', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `T_ID` varchar(4) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `T_stock` int(11) NOT NULL
) ;

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
  `Working_Condition` varchar(20) COLLATE utf8mb4_thai_520_w2 NOT NULL CHECK (`Working_Condition` in ('ปกติ','ซ่อมแซม','ไม่สามารถใช้งานได้')),
  `Last_check_WC` date NOT NULL,
  `T_description` varchar(1000) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `T_type` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`T_ID`, `Working_Condition`, `Last_check_WC`, `T_description`, `T_type`) VALUES
('T101', 'ปกติ', '0000-00-00', 'ค้อนหัวกลม', 'ค้อน'),
('T102', 'ปกติ', '0000-00-00', 'ค้อนยาง', 'ค้อน'),
('T103', 'ปกติ', '0000-00-00', 'ค้อนหงอน', 'ค้อน'),
('T104', 'ปกติ', '0000-00-00', 'ค้อนปอนด์', 'ค้อน'),
('T105', 'ปกติ', '0000-00-00', 'กาวอิพ๊อกซี (ตราจระเข้)', 'กาว'),
('T106', 'ปกติ', '0000-00-00', 'กาวยาง (ตรา สก๊อต)', 'กาว'),
('T107', 'ปกติ', '0000-00-00', 'กาวร้อนเหลว (ตรา ไดโก้)', 'กาว'),
('T108', 'ปกติ', '0000-00-00', 'กาวลาเท็กซ์ (ตรา ทีโอเอ)', 'กาว'),
('T109', 'ปกติ', '0000-00-00', 'กาวผง (ตรา ร๊อควู๊ด)', 'กาว'),
('T110', 'ปกติ', '0000-00-00', 'ตะปูตอกไม้ 2.5 * 12 นิ้ว', 'ตะปู'),
('T111', 'ปกติ', '0000-00-00', 'ตะปูเกลียว 7 * 1 นิ้ว', 'ตะปู'),
('T112', 'ปกติ', '0000-00-00', 'ใช้กับโต๊ะเลื่อยขนาด 10 นิ้ว', 'โต๊ะงานไม้เอนกประสงค์'),
('T113', 'ซ่อมแซม', '0000-00-00', 'เครื่องหลัก', 'เครื่องขึ้นรูปไม้'),
('T114', 'ปกติ', '0000-00-00', 'เครื่องสำรอง', 'เครื่องขึ้นรูปไม้');

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
) ;

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
('3130602392125', 'ไม้จำปา', '1', '1', '6'),
('3130602392125', 'ไม้จำปา', '1', '2', '4'),
('3130602392125', 'ไม้พลวง', '1', '2', '5'),
('3130602392125', 'ไม้สนลาว', '1', '2', '4'),
('3130602392125', 'ไม้สัก', '1', '1', '8'),
('3130602392125', 'ไม้สัก', '1', '2', '5'),
('3130603163815', 'ไม้แคมปัส', '1', '2', '4'),
('3130603163815', 'ไม้แคมปัส', '1', '2', '5'),
('3130603163815', 'ไม้จำปา', '1', '2', '5'),
('3130603163815', 'ไม้พลวง', '1', '1', '6'),
('3130603163815', 'ไม้สนลาว', '1', '2', '5'),
('3130603163815', 'ไม้สัก', '1', '2', '6');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`Citizen_ID`,`Order_number`);

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
