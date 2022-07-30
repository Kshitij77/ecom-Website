-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 01:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `contact`) VALUES
(1, 'Kshitij Jaiswal', 'kshitijjaiswal87159@gmail.com', 'c8df4a42221813273670c0df65150e7f', '6394621806'),
(2, 'Harsh Jaiswal', 'cu.18bcs2158@gmail.com', '8a750bc2113991b4f7537f32592cc847', '8400590126'),
(3, 'Yuvraj Singh', '18bcs2158@cuchd.in', '232d9526f27b67ecac487604a430f7a0', '9919757493');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(6, 'Mobiles'),
(7, 'Television'),
(8, 'Laptop'),
(9, 'Smart Watch'),
(10, 'Camera');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_image` varchar(600) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `quantity`, `product_image`, `category_id`, `description`) VALUES
(56, 'Poco M2', 10999, 9, 'product_image/poco.jpeg', 6, '6 GB RAM | 64 GB ROM | Expandable Upto 512 GB | 16.59 cm (6.53 inch) Full HD+ Display | 13MP + 8MP + 5MP + 2MP | 8MP Front Camera | 5000 mAh Lithium Polymer Battery | MediaTek Helio G80 Processor'),
(57, 'Motorola E7 Plus', 9499, 20, 'product_image/motoe7.jpeg', 6, '4 GB RAM | 64 GB ROM | Expandable Upto 512 GB | 16.51 cm (6.5 inch) HD+ Display | 48MP + 2MP | 8MP Front Camera |5000 mAh Battery |Qualcomm Snapdragon 460 Processor 1.8 GHz |  Stock Android Experience | 1 Year on Handset and 6 Months on Accessories'),
(58, 'Apple iPhone 11', 61990, 6, 'product_image/iphone11.jpeg', 6, '64 GB ROM | 15.49 cm (6.1 inch) Liquid Retina HD Display | 12MP + 12MP | 12MP Front Camera | A13 Bionic Chip Processor | Brand Warranty for 1 Year'),
(59, 'One Plus 8 ', 41999, 9, 'product_image/oneplus8.jpg', 6, '120 Hz Fluid Display | Qualcomm Snapdragon 865 | \r\nWireless Charger | 48 MP Quad Camera | 6GB RAM+128GB Storage and 4300mAH lithium-ion battery'),
(60, 'Samsung Galaxy S20+', 77999, 4, 'product_image/samsunggalaxys20.jpeg', 6, '8 GB RAM | 128 GB ROM | Expandable Upto 1 TB | 17.02 cm (6.7 inch) Quad HD+ Display | 64 MP + 12 MP +12 MP + VGA Depth Camera | 10MP Front Camera 4500 mAh Lithium-ion Battery | Exynos 990 Processor | 1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories\r\n'),
(61, 'Asus ROG Phone 3', 49999, 7, 'product_image/asusrogphone3.jpeg', 6, '8 GB RAM | 128 GB ROM | 16.74 cm (6.59 inch) Full HD+ Display | 64MP + 13MP + 5MP | 24MP Front Camera | 6000 mAh Lithium Polymer Battery\r\nâ€¢ Qualcomm Snapdragon 865+ (SM8250) Processor | Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories'),
(63, 'Mi 4X 108 cm', 25999, 15, 'product_image/mi4x.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(64, 'Mi 4A Pro 108 cm', 22499, 6, 'product_image/mi4apro.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(65, 'Panasonic 100cm ', 20999, 9, 'product_image/panasonic100.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(66, 'Realme 108cm', 22999, 8, 'product_image/realme108.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(67, 'LG 108cm', 28999, 13, 'product_image/Lg108.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(68, 'iFFALCON by TCL AI Powered  ', 34499, 11, 'product_image/iffalcon.jpeg', 7, 'Netflix | Prime Video | Disney+Hotstar | Youtube | Operating System: Android | Ultra HD (4K) 3840 x 2160 Pixels | 20 W Speaker Output | 60 Hz Refresh Rate | 3 x HDMI | 2 x USB | 1 Year on TV, 2 years on Panel, 6 Months on Accessories'),
(69, 'Apple MacBook Air Core i3 10th Gen - (8 GB/256 GB SSD/Mac OS Catalina)', 92990, 5, 'product_image/applemaci3.jpeg', 8, 'Intel Core i3 Processor (10th Gen) | 8 GB LPDDR4X RAM | Mac OS Operating System | 256 GB SSD | 33.78 cm (13.3 inch) Display |\r\n1 Year Limited Warranty'),
(70, 'Apple MacBook Air Core i5 10th Gen - (8 GB/512 GB SSD/Mac OS Catalina)', 122990, 2, 'product_image/applemaci3.jpeg', 8, 'Intel Core i5 Processor (10th Gen) | 8 GB LPDDR4X RAM | Mac OS Operating System | 512 GB SSD | 33.78 cm (13.3 inch) Display | 1 Year Limited Warranty'),
(77, 'Lenovo IdeaPad Gaming 3i Core i7 10th Gen - (8 GB/1 TB HDD/256 GB SSD)', 82990, 3, 'product_image/lenovo.jpeg', 8, 'Intel Core i7 Processor (10th Gen) | 8 GB DDR4 RAM | 64 bit Windows 10 Operating System | 1 TB HDD | 256 GB SSD | 39.62 cm (15.6 inch) Display | 1 Year Onsite Warranty'),
(79, 'Dell G3 Core i7 10th Gen - (16 GB/1 TB HDD/256 GB SSD/4 GB Graphics)', 91990, 12, 'product_image/dell.jpeg', 8, 'Intel Core i7 Processor (10th Gen) | 16 GB DDR4 RAM | 64 bit Windows 10 Operating System | 1 TB HDD | 256 GB SSD | 39.62 cm (15.6 inch) Display | Microsoft Office Home and Student 2019 | 1 Year Complete Cover Warranty'),
(80, 'Asus TUF Gaming A17 Ryzen 7 Octa Core (16 GB/1 TB HDD/256 GB SSD)', 91990, 15, 'product_image/asus1.jpeg', 8, 'AMD Ryzen 7 Octa Core Processor | 16 GB DDR4 RAM | 64 bit Windows 10 Operating System | 1 TB HDD | 256 GB SSD | 43.94 cm (17.3 inch) Display | 1 Year Onsite Warranty'),
(81, 'HP Spectre x360 Core i5 10th Gen - (8 GB/512 GB SSD)', 102990, 4, 'product_image/hpspectre.jpeg', 8, 'Intel Core i5 Processor (10th Gen) | 8 GB DDR4 RAM | 64 bit Windows 10 Operating System | 512 GB SSD | 33.78 cm (13.3 inch) Touchscreen Display | HP Audio Switch, HP ePrint, HP Support Assistant, HP JumpStart, HP Connection Optimizer, HP PC Hardware Diagnostics, HP Command Centre, Microsoft Office Home and Student 2019 | 1 Year Onsite Warranty'),
(82, 'Asus ROG Strix G15 Core i7 10th Gen - (16 GB/1 TB SSD)', 126240, 2, 'product_image/asusrog6.jpeg', 8, 'Intel Core i7 Processor (10th Gen) | 16 GB DDR4 RAM | 64 bit Windows 10 Operating System | 1 TB SSD | 39.62 cm (15.6 inch) Display | 1 Year Onsite Warranty'),
(83, 'Fitbit Versa Special Edition Smartwatch', 15945, 6, 'product_image/fitbitne.jpeg', 9, 'Get call, text and smartphone app notifications on your wrist | Two bands in woven and classic | Use 24/7 heart rate to track resting heart rate | Track sleep stages & review your in-app Sleep Score | 4 plus day battery life | Touchscreen | Fitness & Outdoor | Battery Runtime: Upto 4 days | 1 Year Warranty'),
(84, 'Apple Watch Series 3 GPS - 42 mm Space Grey ', 23900, 8, 'product_image/apple4n.jpeg', 9, 'GPS and Altimeter | Swimproof | Voice Based Siri | 3 Activity Rings Tracking - Move, Exercise, Stand | Smart Coaching | Activity Sharing and Achievements | Heart Rate Monitor | Breathe App | Notifications | Touchscreen | Notifier, Fitness & Outdoor | Battery Runtime: Upto 18 hrs | 1 Year Warranty'),
(85, 'Fossil 4th Gen Explorist HR Smartwatch', 10998, 18, 'product_image/fossil.jpeg', 9, 'Heart Rate Monitor | Google Assistant and Microphone | Music Storage and Controls | Customizable Watch Faces | Swim Proof | Touchscreen | Fitness & Outdoor | Battery Runtime: Upto 24 hrs | 2 Years Warranty'),
(86, 'Apple Watch SE GPS + Cellular 44 mm Space Grey ', 36900, 5, 'product_image/applese.jpeg', 9, 'Large Retina OLED display | With the GPS + Cellular model, you can call, text and navigate without using your smartphone | Use fitness app on your iphone to see your daily activity trends | Track your workouts like swimming, cycling, dancing, jogging, running, yoga | Get notified in case of irregular heart rhythms | It has a Swim Proof design | With Call Function | Touchscreen | Fitness & Outdoor | Battery Runtime: Upto 18 hrs | 1 Year Manufacturer Warranty'),
(90, 'Samsung Galaxy Watch Active 2 Aluminium Smartwatch', 23090, 6, 'product_image/samsungwatch.jpeg', 9, 'Timeless design with digital touch bezel Cutting edge activity tracker | Super AMOLED Display | Swim ready-5 ATM water resistant (up to 50 m) | With Call Function | Touchscreen | Fitness & Outdoor | Battery Runtime: Upto 5 days | 1 Year Manufacturer Warranty'),
(91, 'Fujifilm X Series X-A7  15-45 mm Lens', 39999, 6, 'product_image/fujifilmx.jpeg', 10, 'Effective Pixels: 24.2 MP | Sensor Type: CMOS | WiFi Available | 4K |2 Years Warranty on the Product From the Date of Purchase'),
(92, 'Sony CyberShot DSC-RX100M6 IN5', 81999, 4, 'product_image/sony81n.jpeg', 10, 'Effective Pixels: 20.1 MP | Optical Zoom: 8.0x | Digital Zoom: 32x | Display Size: 7.36 | 2 Year Product Warranty'),
(93, 'Canon PowerShot G1X Mark III', 64999, 7, 'product_image/cannonn.jpeg', 10, 'Effective Pixels: 24.2 MP | Optical Zoom: 3x | Digital Zoom: 12x | Auto Focus | Display Size: 3 inch | 2 Years Warranty'),
(94, 'Canon EOS 80D DSLR ', 85999, 2, 'product_image/cannoneos.jpeg', 10, 'Effective Pixels: 24 MP | Sensor Type: CMOS | WiFi Available | 1080p at 60p + Time-Lapse | Product is covered under one-year standard warranty and one-year additional warranty from the date of Product purchased by the customer. Warranty validation / Warranty period confirmation would be done through either Online Warranty Serial No. Tracking system (Service Edge) or Warranty Card and Customer Invoice date.'),
(95, 'Nikon COOLPIX P1000', 69950, 8, 'product_image/nikon.jpeg', 10, 'Effective Pixels: 16 MP | Optical Zoom: 125x | Digital Zoom: 4x | Display Size: 3.2 inch | 2 Years Warranty'),
(96, 'Nikon D7500 DSLR ', 74999, 7, 'product_image/nikonnew.jpeg', 10, 'Effective Pixels: 16 MP | Optical Zoom: 125x | Digital Zoom: 4x | Display Size: 3.2 inch | 2 Years Warranty');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(5, 'Kshitij jaiswal', 'kshitijjaiswal87159@gmail.com', 'c8df4a42221813273670c0df65150e7f', '6394621806', 'Varanasi', 'Chetganj'),
(6, 'Harsh jaiswal', 'cu.18bcs2158@gmail.com', '8a750bc2113991b4f7537f32592cc847', '8400590126', 'Varanasi', 'Room No.1, 2nd Floor, Sector â€“ 1, Chandigarh'),
(8, 'Ajit Jaiswal', '18bcs2158@cuchd.in', '232d9526f27b67ecac487604a430f7a0', '9919757493', 'Chandigarh', 'Senpura');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(186, 5, 56, 'Confirmed'),
(187, 5, 60, 'Confirmed'),
(188, 6, 77, 'Confirmed'),
(189, 6, 56, 'Confirmed'),
(190, 6, 96, 'Confirmed'),
(191, 6, 56, 'Confirmed'),
(193, 8, 70, 'Confirmed'),
(195, 8, 84, 'Confirmed'),
(196, 8, 65, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `item_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
