-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 07:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_chain`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `email`, `password`, `date`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', 'Admin123=', '2022-07-26 15:19:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(20) NOT NULL,
  `cart_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `p_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `b_date` datetime NOT NULL DEFAULT current_timestamp(),
  `b_status` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `add1` varchar(100) NOT NULL,
  `add2` varchar(100) NOT NULL,
  `pin_code` int(7) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `cart_id`, `c_id`, `p_id`, `s_id`, `qty`, `price`, `b_date`, `b_status`, `name`, `add1`, `add2`, `pin_code`, `phone_no`, `total`) VALUES
(22, 17, 8, 6, 0, 2, 1499, '2022-08-22 21:09:18', 'pending', 'Sharukh', 'Mumbai', 'Maharashtra', 564231, 6786768908, 2998),
(23, 18, 8, 8, 0, 2, 33500, '2022-08-22 21:10:40', 'Approved', 'Sharukh', 'Mumbai', 'Maharashtra', 564231, 8976554323, 67000),
(24, 0, 8, 0, 4, 0, 700, '2022-08-22 21:14:00', 'pending', 'Sharukh', 'Mumbai', 'Maharashtra', 564231, 9874563210, 0),
(25, 0, 8, 0, 5, 0, 1500, '2022-08-22 21:14:40', 'Completed', 'Sharukh', 'Mumbai', 'Maharashtra', 564231, 6786768908, 0),
(26, 0, 3, 0, 5, 0, 1500, '2022-08-22 21:16:05', 'paid', 'Seetha', 'Hampankatta', 'Mangalore', 575017, 8776556789, 0),
(33, 25, 7, 8, 0, 1, 33500, '2022-08-23 06:45:14', 'pending', 'Salman', 'Mumbai', 'Maharashtra', 564231, 9898787868, 33500),
(35, 0, 7, 0, 5, 0, 1500, '2022-08-23 06:46:26', 'paid', 'Salman', 'Mumbai', 'maharashtra', 564231, 9898787868, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL,
  `p_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `c_id`, `qty`, `price`, `date`, `status`) VALUES
(24, 4, 5, 1, 220, '2022-08-22 22:39:23', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`, `date`, `status`) VALUES
(18, 'Hardware', '2022-08-22 12:18:31', ''),
(19, 'Cleaning', '2022-08-22 12:18:38', ''),
(20, 'Electronics', '2022-08-22 12:18:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `addy` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cust_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `cust_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `email`, `phone_no`, `address`, `addy`, `password`, `cust_date`, `cust_status`) VALUES
(5, 'Sinchan', 'sinchan@gmail.com', 9876543210, 'Kavoor 575013', 'Mangalore', 'Sinchan123=', '2022-08-22 12:03:24.837390', ''),
(6, 'Doraemon', 'doraemon@gmail.com', 8907678978, 'Kushalnagar 575401', 'Madikeri', 'Doraemon123=', '2022-08-22 12:05:02.761325', ''),
(7, 'Salman', 'salman@gmail.com', 9898787868, 'Konaje 575016', 'Mangalore', 'Salman123-', '2022-08-22 12:07:16.346753', ''),
(8, 'Sharukh', 'sharukh@gmail.com', 6786768908, 'Mumbai', 'Maharashtra', 'Sharukh123=', '2022-08-22 12:08:28.090089', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(20) NOT NULL,
  `sp_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `p_id` bigint(20) NOT NULL,
  `s_id` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `sp_id`, `c_id`, `p_id`, `s_id`, `message`, `date`, `status`) VALUES
(5, 14, 8, 0, 0, 'Good Service', '2022-08-22 16:58:15', ''),
(6, 14, 3, 0, 0, 'Good Product', '2022-08-22 17:27:59', ''),
(10, 18, 7, 0, 5, 'Excellent service', '2022-08-23 06:51:50', ''),
(11, 18, 7, 0, 5, 'Good one', '2022-08-23 07:16:45', ''),
(12, 18, 8, 8, 0, 'Good product', '2022-08-23 07:19:37', ''),
(13, 14, 8, 6, 0, 'G\r\nood Product', '2022-08-25 09:57:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `b_id` int(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `card_holder_name` varchar(50) NOT NULL,
  `card_number` bigint(16) NOT NULL,
  `exp_date` date NOT NULL,
  `cvv` int(3) NOT NULL,
  `g_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `c_id`, `b_id`, `payment_type`, `date`, `status`, `card_holder_name`, `card_number`, `exp_date`, `cvv`, `g_total`) VALUES
(10, 8, 19, 'card', '2022-08-22 20:05:00', '', 'Seetha', 1234567890098765, '2023-03-23', 323, 1347),
(11, 8, 22, 'card', '2022-08-22 21:09:43', '', 'Sharukh', 2345678901123456, '2024-04-12', 123, 2998),
(12, 8, 23, 'card', '2022-08-22 21:11:14', '', 'Sharukh', 1234321234567890, '2023-01-12', 221, 67000),
(16, 5, 31, 'card', '2022-08-22 21:53:44', '', 'Sinchan', 1223344567876666, '2024-02-02', 456, 3409),
(18, 7, 36, 'card', '2022-08-23 06:47:18', '', 'Salman', 9090877665564546, '2024-02-01', 233, 1499),
(19, 7, 35, 'card', '2022-08-23 06:49:45', '', 'Salman', 9879798797977879, '2023-08-06', 122, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(20) NOT NULL,
  `sp_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `descr` varchar(150) NOT NULL,
  `p_qty` bigint(255) NOT NULL,
  `price` int(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `p_status` varchar(50) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `sp_id`, `name`, `image`, `descr`, `p_qty`, `price`, `date`, `p_status`, `category`) VALUES
(4, 14, 'Latch Bolt Lock', 'uploads/', 'PRYKCS Zinc Rotary Latch, SuperBolt', 100, 220, '2022-08-22 16:23:07', '', 18),
(5, 14, 'Wireless Keyboard and Mouse', 'uploads/key.jpeg', 'Anti-Fade & Spill-Resistant Keys, up to 36 Month Battery Life', 99, 1347, '2022-08-22 16:26:22', '', 20),
(6, 14, 'Headphones', 'uploads/head.jpeg', '  Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, Integrated Controls and Dual Modes(Luscious Black)', 146, 1499, '2022-08-22 16:29:11', '', 20),
(7, 14, 'Bucket Mop', 'uploads/mop1.jpeg', 'Power Rinse Bucket, Easy to Use', 72, 955, '2022-08-22 16:33:10', '', 19),
(8, 18, 'Laptop', 'uploads/laptop.jpeg', 'Windows 11  Home single language, 12th Gen Intel Core processor', 21, 33500, '2022-08-22 17:18:17', '', 20),
(9, 18, 'Refrigerator', 'uploads/ref.jpeg', '345L Twin cooling Plus, Double Door refrigerator', 23, 50000, '2022-08-22 17:21:02', '', 20);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `s_id` int(20) NOT NULL,
  `sp_id` int(20) NOT NULL,
  `s_name` text NOT NULL,
  `s_img` varchar(255) NOT NULL,
  `s_descr` varchar(150) NOT NULL,
  `price` int(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `s_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `sp_id`, `s_name`, `s_img`, `s_descr`, `price`, `date`, `s_status`) VALUES
(3, 14, 'Fixing of water purifier', 'uploads/purifier sv.jpeg', 'Includes fixing of water purifier on wall', 500, '2022-08-22 16:39:34', ''),
(4, 14, 'Laptop cleaning', 'uploads/comp sv.jpeg', 'Chemical cleaning of the internal parts including motherboard, processor etc', 700, '2022-08-22 16:46:40', ''),
(5, 18, 'Refrigerator Service', 'uploads/frigde sv.jpeg', 'Check and properly adjust the thermostat and air dampers etc', 1500, '2022-08-22 17:24:03', ''),
(6, 18, 'Fan service', 'uploads/fan sv.jpeg', 'Fixing, repair', 7000, '2022-08-22 21:05:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `sp_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `sp_image` varchar(255) NOT NULL,
  `address` varchar(150) NOT NULL,
  `addy` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sp_date` datetime NOT NULL DEFAULT current_timestamp(),
  `sp_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`sp_id`, `name`, `email`, `phone_no`, `sp_image`, `address`, `addy`, `password`, `sp_date`, `sp_status`) VALUES
(14, 'Raj', 'raj@gmail.com', 9090909090, 'uploads/p5.jpeg', 'Deralakatte 575018', 'Mangalore', 'Raj123=', '2022-08-22 11:50:32', 'Approved'),
(15, 'Ram', 'ram@gmail.com', 8989898989, 'uploads/p13.jpeg', 'Natekal 575018', 'Mangalore', 'Ram123=', '2022-08-22 11:51:31', 'pending'),
(16, 'Nobita', 'nobita@gmail.com', 7878787878, 'uploads/p4.jpeg', 'Thumbe 575019', 'Bantwal', 'Nobita123=', '2022-08-22 11:52:57', 'Approved'),
(17, 'Bheem', 'bheem@gmail.com', 8908908908, 'uploads/p12.jpeg', 'BC road 575019', 'Bantwal', 'Bheem123=', '2022-08-22 11:53:51', 'pending'),
(18, 'Mohammed', 'mohd@gmail.com', 9999900000, 'uploads/p6.jpeg', 'Kankanady 575020', 'Mangalore', 'Mohd123=', '2022-08-22 11:55:11', 'pending'),
(19, 'Abdul', 'abdul@gmail.com', 7890789078, 'uploads/p16.jpeg', 'Balmata 575021', 'Mangalore', 'Abdul123=', '2022-08-22 11:56:08', 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `UC` (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `sp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
