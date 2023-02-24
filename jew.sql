-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2022 at 10:21 AM
-- Server version: 5.7.15-log
-- PHP Version: 7.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jew`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(10) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_usr` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_usr`, `a_pwd`) VALUES
(1, 'thanyalak', 'admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'bow', 'admin2', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `mem`
--

CREATE TABLE `mem` (
  `id_mem` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสมาชิก',
  `name` varchar(100) NOT NULL COMMENT 'ชื่อ',
  `user` varchar(40) NOT NULL COMMENT 'username',
  `password` varchar(20) NOT NULL COMMENT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `j_id` int(5) NOT NULL,
  `j_name` varchar(250) NOT NULL,
  `j_detail` text NOT NULL,
  `j_price` int(7) NOT NULL,
  `j_type` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`j_id`, `j_name`, `j_detail`, `j_price`, `j_type`) VALUES
(101, 'สร้อยคอผีเสื้อ', 'สร้อยคอ Fairy Wings Necklace \r\n\r\nSize: ความยาวสร้อย 39 cm ปรับยาวเพิ่มได้อีก 4 cm\r\nขนาดของตัวจี้ Fairy Wings 1 * 1.3 cm', 289, 1),
(102, 'สร้อยเดซี่', 'สไตล์: แฟชั่น\r\nสี: แสดงในภาพ\r\nวัสดุ: โลหะผสม\r\nความยาว: 1,2 ประมาณ 70.5 ซม. 3 ประมาณ 60 ซม\r\nโอกาส: วันเกิด, ปาร์ตี้, งานเลี้ยง, ออกเดท, งานแต่งงาน ฯลฯ', 250, 1),
(103, 'สร้อยหงส์เงิน', 'สร้อยคอ Fairy Wings Necklace \r\nสร้อยคอผีเสื้อ เครื่องประดับ สไตล์เกาหลี คุณภาพดี ทนทาน และใช้งานสะดวก เสริมสร้างเสน่ห์และบุคลิกภาพ', 199, 1),
(104, 'สร้อยหัวใจคู่', 'สร้อยคอจี้รูปหัวใจ 2 ดวงคล้องกัน ประดับเพชร สร้อย สร้อยเงิน สร้อยแฟชั่น เครื่องประดับของผู้หญิง สไตล์ญี่ปุ่นเกาหลี สินค้าใหม่  สินค้าแฟชั่น ดีไซน์สวย คุณภาพดี ทนทาน และใช้งานสะดวก เครื่องประดับ  เสริมสร้างเสน่ห์และบุคลิกภาพ', 279, 1),
(105, 'สร้อยคอแห่งความรัก', 'สร้อยข้อมือหัวใจ 2 ดวงคล้องกัน กำไลข้อมือ  เครื่องประดับสำหรับผู้หญิง สไตล์เกาหลี สินค้าใหม่  สินค้าแฟชั่น ดีไซน์สวย คุณภาพดี ทนทาน และใช้งานสะดวก\r\nเครื่องประดับ  เสริมสร้างเสน่ห์และบุคลิกภาพ', 199, 1),
(106, 'สร้อยเพชรรูปหัวใจ', 'สร้อยข้อมือมุก จี้รูปหัวใจประดับเพชร กำไลข้อมือ สร้อยข้อมือไข่มุก เครื่องประดับผู้หญิง สไตล์เกาหลี\r\nสินค้าใหม่  สินค้าแฟชั่น ดีไซน์สวย น่ารัก\r\nคุณภาพดี ทนทาน และใช้งานสะดวก\r\nเครื่องประดับ  เสริมสร้างเสน่ห์และบุคลิกภาพ', 599, 1),
(201, 'แหวนเพชร ', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48 - 67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ)\r\n- น้ำหนัก : 1.8 ', 599, 2),
(202, 'แหวนคู่', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ) 7 มม.\r\n- น้ำหนัก : 1.7 g.', 269, 2),
(203, 'แหวนเพชรห้าเม็ด', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ)\r\n- น้ำหนัก : 1.0 g.', 399, 2),
(204, 'แหวนโลหะจี้หัวใจ', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ)\r\n- ชุบ : ทองขาว', 199, 2),
(205, 'แหวนสวีท', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ) 6 มม.\r\n- น้ำหนัก : 1.5 g.', 159, 2),
(206, 'แหวนเพชรน้ำหนึ่ง', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ) 7 มม.\r\n- น้ำหนัก : 1.7 g.', 699, 2),
(301, 'กำไลข้อมือผีเสื้อทอง', 'ประเภทสร้อยข้อมือ: สร้อยข้อมือแบบโซ่และลิงก์\r\nเพศ: ผู้หญิง\r\nโลหะประเภท: โลหะผสมสังกะสี\r\nประเภทโซ่: อื่น ๆ\r\nประเภทสินค้า: สร้อยข้อมือ\r\n', 459, 3),
(302, 'กำไลจี้หัวใจ', 'สร้อยข้อมือหัวใจ กำไลข้อมือ สร้อยข้อมือเงิน  เครื่องประดับ สำหรับผู้หญิง สไตล์เกาหลี\r\nสินค้าใหม่  สไตล์เกาหลี สินค้าแฟชั่น ดีไซน์ สวย น่ารัก เก๋ๆ\r\nคุณภาพดี ทนทาน และใช้งานสะดวก\r\nเครื่องประดับสร้างเสน่ห์ให้กับผู้หญิง', 199, 3),
(303, 'กำไลหัวใจรักนิรันดร์', 'ชื่อสินค้า: สร้อยข้อมือ\r\n วัสดุ: โลหะผสม\r\n เพศ: ผู้หญิง เด็กผู้หญิง\r\n สไตล์: แฟชั่น\r\n สี: ทอง / โรสโกลด์ / เงิน\r\n ขนาด: ตามรูป\r\n โอกาสในการใช้งาน: ปาร์ตี้ คลับ งานแต่งงาน รายวัน หมั้น ครบรอบ ของขวัญ ฯลฯ', 199, 3),
(304, 'กำไลข้อมือสลักคำพูด', 'Specifications\r\n- วัสดุ : เงินแท้ 925 Sterling Silver\r\n- Size : 48-67 (โปรดระบุ)\r\n- ฝัง : เพชรสวิส (CZ)\r\n- ชุบ : ทองขาว\r\n- น้ำหนัก : 2.0 g.\r\nเขียนถึง \r\n', 399, 3),
(305, 'กำไลข้อมือคู่', 'รายละเอียด :สร้อยข้อมือ 2 ชั้น สร้อยข้อมือ เส้นบาง สไตล์มินิมอล สีทอง สําหรับผู้หญิง \r\nสินค้าใหม่  สินค้าแฟชั่น ดีไซน์สวย \r\nคุณภาพดี ทนทาน และใช้งานสะดวกเครื่องประดับ  เสริมสร้างเสน่ห์และบุคลิกภาพ\r\n\r\n', 429, 3),
(306, 'กำไลข้อมือกําไลข้อมือจี้เพชรรูปดาว', 'สี: โรสโกลด์，เงิน\r\nน้ำหนัก: 16.4 กรัม \r\nขนาดเส้นผ่านศูนย์กลาง: 6.5 ซม\r\nวัสดุ: โลหะผสม\r\n\r\n', 159, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_type`
--

CREATE TABLE `products_type` (
  `pt_id` int(5) NOT NULL,
  `pt_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_type`
--

INSERT INTO `products_type` (`pt_id`, `pt_name`) VALUES
(1, 'สร้อย'),
(2, 'กำไรข้อมือ'),
(3, 'แหวน');

-- --------------------------------------------------------

--
-- Table structure for table `product_bangle`
--

CREATE TABLE `product_bangle` (
  `j_id` int(11) NOT NULL,
  `j_name` varchar(250) NOT NULL,
  `j_detail` varchar(250) NOT NULL,
  `j_price` int(11) NOT NULL,
  `j_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_bangle`
--

INSERT INTO `product_bangle` (`j_id`, `j_name`, `j_detail`, `j_price`, `j_type`) VALUES
(301, 'กำไลข้อมือผีเสื้อทอง', 'ประเภทสร้อยข้อมือ: สร้อยข้อมือแบบโซ่และลิงก์ เพศ: ผู้หญิง โลหะประเภท: โลหะผสมสังกะสี ประเภทโซ่: อื่น ๆ ประเภทสินค้า: สร้อยข้อมือ', 459, 3),
(302, 'กำไลจี้หัวใจ', 'สร้อยข้อมือหัวใจ กำไลข้อมือ สร้อยข้อมือเงิน เครื่องประดับ สำหรับผู้หญิง สไตล์เกาหลี สินค้าใหม่ สไตล์เกาหลี สินค้าแฟชั่น ดีไซน์ สวย น่ารัก เก๋ๆ คุณภาพดี ทนทาน และใช้งานสะดวก เครื่องประดับสร้างเสน่ห์ให้กับผู้หญิง', 199, 3),
(303, 'กำไลหัวใจรักนิรันดร์', 'ชื่อสินค้า: สร้อยข้อมือ วัสดุ: โลหะผสม เพศ: ผู้หญิง เด็กผู้หญิง สไตล์: แฟชั่น สี: ทอง / โรสโกลด์ / เงิน ขนาด: ตามรูป โอกาสในการใช้งาน: ปาร์ตี้ คลับ งานแต่งงาน รายวัน หมั้น ครบรอบ ของขวัญ ฯลฯ', 199, 3),
(304, 'กำไลข้อมือสลักคำพูด', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) - ชุบ : ทองขาว - น้ำหนัก : 2.0 g. เขียนถึง', 399, 3),
(305, 'กำไลข้อมือคู่', 'รายละเอียด :สร้อยข้อมือ 2 ชั้น สร้อยข้อมือ เส้นบาง สไตล์มินิมอล สีทอง สําหรับผู้หญิง สินค้าใหม่ สินค้าแฟชั่น ดีไซน์สวย คุณภาพดี ทนทาน และใช้งานสะดวกเครื่องประดับ เสริมสร้างเสน่ห์และบุคลิกภาพ', 429, 3),
(306, 'กำไลข้อมือกําไลข้อมือจี้เพชรรูปดาว', 'สี: โรสโกลด์，เงิน น้ำหนัก: 16.4 กรัม ขนาดเส้นผ่านศูนย์กลาง: 6.5 ซม วัสดุ: โลหะผสม', 159, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_neck`
--

CREATE TABLE `product_neck` (
  `j_id` int(5) NOT NULL,
  `j_name` varchar(250) NOT NULL,
  `j_detail` varchar(250) NOT NULL,
  `j_price` int(11) NOT NULL,
  `j_type` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_neck`
--

INSERT INTO `product_neck` (`j_id`, `j_name`, `j_detail`, `j_price`, `j_type`) VALUES
(101, 'สร้อยคอผีเสื้อ', 'สร้อยคอ Fairy Wings Necklace Size: ความยาวสร้อย 39 cm ปรับยาวเพิ่มได้อีก 4 cm ขนาดของตัวจี้ Fairy Wings 1 * 1.3 cm', 289, 1),
(102, 'สร้อยเดซี่', 'สไตล์: แฟชั่น สี: แสดงในภาพ วัสดุ: โลหะผสม ความยาว: 1,2 ประมาณ 70.5 ซม. 3 ประมาณ 60 ซม โอกาส: วันเกิด, ปาร์ตี้, งานเลี้ยง, ออกเดท, งานแต่งงาน ฯลฯ\r\n\r\n', 250, 1),
(103, 'สร้อยหงส์เงิน', 'สร้อยคอ Fairy Wings Necklace สร้อยคอผีเสื้อ เครื่องประดับ สไตล์เกาหลี คุณภาพดี ทนทาน และใช้งานสะดวก เสริมสร้างเสน่ห์และบุคลิกภาพ', 199, 1),
(104, 'สร้อยหัวใจคู่', 'สร้อยคอจี้รูปหัวใจ 2 ดวงคล้องกัน ประดับเพชร สร้อย สร้อยเงิน สร้อยแฟชั่น เครื่องประดับของผู้หญิง สไตล์ญี่ปุ่นเกาหลี สินค้าใหม่ สินค้าแฟชั่น ดีไซน์สวย คุณภาพดี ทนทาน และใช้งานสะดวก เครื่องประดับ เสริมสร้างเสน่ห์และบุคลิกภาพ', 279, 1),
(105, 'สร้อยคอแห่งความรัก', 'สร้อยข้อมือหัวใจ 2 ดวงคล้องกัน กำไลข้อมือ เครื่องประดับสำหรับผู้หญิง สไตล์เกาหลี สินค้าใหม่ สินค้าแฟชั่น ดีไซน์สวย คุณภาพดี ทนทาน และใช้งานสะดวก เครื่องประดับ เสริมสร้างเสน่ห์และบุคลิกภาพ', 199, 1),
(106, 'สร้อยเพชรรูปหัวใจ', 'สร้อยข้อมือมุก จี้รูปหัวใจประดับเพชร กำไลข้อมือ สร้อยข้อมือไข่มุก เครื่องประดับผู้หญิง สไตล์เกาหลี สินค้าใหม่ สินค้าแฟชั่น ดีไซน์สวย น่ารัก คุณภาพดี ทนทาน และใช้งานสะดวก เครื่องประดับ เสริมสร้างเสน่ห์และบุคลิกภาพ\r\n\r\n', 599, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_ring`
--

CREATE TABLE `product_ring` (
  `j_id` int(11) NOT NULL,
  `j_name` varchar(250) NOT NULL,
  `j_detail` varchar(250) NOT NULL,
  `j_price` int(11) NOT NULL,
  `j_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_ring`
--

INSERT INTO `product_ring` (`j_id`, `j_name`, `j_detail`, `j_price`, `j_type`) VALUES
(201, 'แหวนเพชร', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48 - 67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) - น้ำหนัก : 1.8\r\n\r\n', 599, 2),
(202, 'แหวนคู่', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) 7 มม. - น้ำหนัก : 1.7 g.', 269, 2),
(203, 'แหวนเพชรห้าเม็ด', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) - น้ำหนัก : 1.0 g.\r\n\r\n', 399, 2),
(204, 'แหวนโลหะจี้หัวใจ', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) - ชุบ : ทองขาว\r\n\r\n', 199, 2),
(205, 'แหวนสวีท', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) 6 มม. - น้ำหนัก : 1.5 g.', 159, 2),
(206, 'แหวนเพชรน้ำหนึ่ง', 'Specifications - วัสดุ : เงินแท้ 925 Sterling Silver - Size : 48-67 (โปรดระบุ) - ฝัง : เพชรสวิส (CZ) 7 มม. - น้ำหนัก : 1.7 g.', 699, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `mem`
--
ALTER TABLE `mem`
  ADD PRIMARY KEY (`id_mem`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `products_type`
--
ALTER TABLE `products_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `product_bangle`
--
ALTER TABLE `product_bangle`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `product_neck`
--
ALTER TABLE `product_neck`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `product_ring`
--
ALTER TABLE `product_ring`
  ADD PRIMARY KEY (`j_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mem`
--
ALTER TABLE `mem`
  MODIFY `id_mem` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก';
--
-- AUTO_INCREMENT for table `products_type`
--
ALTER TABLE `products_type`
  MODIFY `pt_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
