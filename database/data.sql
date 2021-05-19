-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2020 at 08:51 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_image` varchar(600) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `quantity`, `product_image`, `category_id`, `description`) VALUES
(56, 'Poco M2', 10999, 9, 'product_image/poco.jpeg', 6, 'â€¢	6 GB RAM | 64 GB ROM | Expandable Upto 512 GB\r\nâ€¢	16.59 cm (6.53 inch) Full HD+ Display\r\nâ€¢	13MP + 8MP + 5MP + 2MP | 8MP Front Camera\r\nâ€¢	5000 mAh Lithium Polymer Battery\r\nâ€¢	MediaTek Helio G80 Processor\r\n\r\n\r\n \r\nâ€¢	6 GB RAM | 64 GB ROM | Expandable Upto 512 GB\r\nâ€¢	16.59 cm (6.53 inch) Full HD+ Display\r\nâ€¢	13MP + 8MP + 5MP + 2MP | 8MP Front Camera\r\nâ€¢	5000 mAh Lithium Polymer Battery\r\nâ€¢	MediaTek Helio G80 Processor\r\nâ€¢	1 Year for Handset, 6 Months for Accessories\r\n\r\n'),
(57, 'Motorola E7 Plus', 9499, 20, 'product_image/motoe7.jpeg', 6, '\r\nâ€¢	4 GB RAM | 64 GB ROM | Expandable Upto 512 GB\r\nâ€¢	16.51 cm (6.5 inch) HD+ Display\r\nâ€¢	48MP + 2MP | 8MP Front Camera\r\nâ€¢	5000 mAh Battery\r\nâ€¢	Qualcomm Snapdragon 460 Processor\r\nâ€¢	1.8 GHz\r\nâ€¢	Stock Android Experience\r\nâ€¢	1 Year on Handset and 6 Months on Accessories\r\n\r\n'),
(58, 'Apple iPhone 11', 61990, 6, 'product_image/iphone11.jpeg', 6, '\r\nâ€¢	64 GB ROM\r\nâ€¢	15.49 cm (6.1 inch) Liquid Retina HD Display\r\nâ€¢	12MP + 12MP | 12MP Front Camera\r\nâ€¢	A13 Bionic Chip Processor\r\nâ€¢	Brand Warranty for 1 Year\r\nâ€¢      iOS 13 '),
(59, 'One Plus 8 ', 41999, 9, 'product_image/oneplus8.jpg', 6, 'â€¢ 120 Hz Fluid Display\r\nâ€¢ QualcommÂ® Snapdragonâ„¢ 865 and 5G\r\nâ€¢ Warp Chargeâ€¯30 Wireless\r\nâ€¢ 48 MP Quad Camera\r\nâ€¢ 6GB RAM+128GB Storage\r\nâ€¢ 4300mAH lithium-ion battery\r\n'),
(60, 'Samsung Galaxy S20+', 77999, 4, 'product_image/samsunggalaxys20.jpeg', 6, 'â€¢ 8 GB RAM | 128 GB ROM | Expandable Upto 1 TB\r\nâ€¢ 17.02 cm (6.7 inch) Quad HD+ Display\r\nâ€¢ 64 MP + 12 MP +12 MP + VGA Depth Camera | 10MP Front Camera\r\nâ€¢ 4500 mAh Lithium-ion Battery\r\nâ€¢ Exynos 990 Processor\r\nâ€¢ 30X Zoom\r\nâ€¢ 1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories\r\n'),
(61, 'Asus ROG Phone 3', 49999, 7, 'product_image/asusrogphone3.jpeg', 6, 'â€¢ 8 GB RAM | 128 GB ROM\r\nâ€¢ 16.74 cm (6.59 inch) Full HD+ Display\r\nâ€¢ 64MP + 13MP + 5MP | 24MP Front Camera\r\nâ€¢ 6000 mAh Lithium Polymer Battery\r\nâ€¢ Qualcomm Snapdragon 865+ (SM8250) Processor\r\nâ€¢ Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories\r\n\r\n'),
(63, 'Mi 4X 108 cm', 25999, 15, 'product_image/mi4x.jpeg', 7, 'â€¢ Netflix|Prime Video|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: Android\r\nâ€¢ Ultra HD (4K) 3840 x 2160 Pixels\r\nâ€¢ 20 W Speaker Output\r\nâ€¢ 60 Hz Refresh Rate\r\nâ€¢ 3 x HDMI | 2 x USB\r\nâ€¢ 1 Year on TV, 2 years on Panel, 6 Months on Accessories\r\n'),
(64, 'Mi 4A Pro 108 cm', 22499, 6, 'product_image/mi4apro.jpeg', 7, 'â€¢ Netflix|Prime Video|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: Android\r\nâ€¢ Full HD 1920 x 1080 Pixels\r\nâ€¢ 20 W Speaker Output\r\nâ€¢ 60 Hz Refresh Rate\r\nâ€¢ 3 x HDMI | 3 x USB\r\nâ€¢ 1 Year Warranty on Product and 1 Year Additional Warranty for Panel\r\n'),
(65, 'Panasonic 100cm ', 20999, 9, 'product_image/panasonic100.jpeg', 7, 'â€¢ Netflix|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: Android\r\nâ€¢ Full HD 1920 x 1080 Pixels\r\nâ€¢ 16 W Speaker Output\r\nâ€¢ 60 Hz Refresh Rate\r\nâ€¢ 2 x HDMI | 2 x USB\r\nâ€¢ 1 Year Warranty on Product from Date of Purchase\r\n'),
(66, 'Realme 108cm', 22999, 8, 'product_image/realme108.jpeg', 7, 'â€¢ Netflix|Prime Video|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: Android\r\nâ€¢ Full HD 1920 x 1080 Pixels\r\nâ€¢ 24 W Speaker Output\r\nâ€¢ 60 Hz Refresh Rate\r\nâ€¢ 3 x HDMI | 2 x USB\r\nâ€¢ 1 Year Domestic Warranty, 2 Years on Panel\r\n'),
(67, 'LG 108cm', 28999, 13, 'product_image/Lg108.jpeg', 7, 'â€¢ Netflix|Prime Video|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: WebOS\r\nâ€¢ Full HD 1920 x 1080 Pixels\r\nâ€¢ 20 W Speaker Output\r\nâ€¢ 50 Hz Refresh Rate\r\nâ€¢ 2 x HDMI | 1 x USB\r\nâ€¢ IPS\r\nâ€¢ 1 Year LG India Comprehensive Warranty and Additional 1 Year Warranty is Applicable on Panel/Module\r\n'),
(68, 'iFFALCON by TCL AI Powered  ', 34499, 11, 'product_image/iffalcon.jpeg', 7, 'â€¢ Netflix|Prime Video|Disney+Hotstar|Youtube\r\nâ€¢ Operating System: Android\r\nâ€¢ Ultra HD (4K) 3840 x 2160 Pixels\r\nâ€¢ 20 W Speaker Output\r\nâ€¢ 60 Hz Refresh Rate\r\nâ€¢ 3 x HDMI | 2 x USB\r\nâ€¢ A+ Grade UHD 10-bit DLED Panel\r\nâ€¢ 1 Year Warranty on Product\r\n'),
(69, 'Apple MacBook Air Core i3 10th Gen - (8 GB/256 GB SSD/Mac OS Catalina)', 92990, 5, 'product_image/applemaci3.jpeg', 8, 'â€¢ Intel Core i3 Processor (10th Gen)\r\nâ€¢ 8 GB LPDDR4X RAM\r\nâ€¢ Mac OS Operating System\r\nâ€¢ 256 GB SSD\r\nâ€¢ 33.78 cm (13.3 inch) Display\r\nâ€¢ Built-in Apps: Photos, iMovie, GarageBand, Pages, Numbers, Keynote, Siri, Safari, Mail, FaceTime, Messages, Maps, News, Stocks, Home, Voice Memos, Notes, Calendar, Contacts, Reminders, Photo Booth, Preview, Books, App Store, Time Machine, TV, Music, Podcasts, Find My, QuickTime Player\r\nâ€¢ 1 Year Limited Warranty\r\n'),
(70, 'Apple MacBook Air Core i5 10th Gen - (8 GB/512 GB SSD/Mac OS Catalina)', 122990, 2, 'product_image/applemaci3.jpeg', 8, 'â€¢ Intel Core i5 Processor (10th Gen)\r\nâ€¢ 8 GB LPDDR4X RAM\r\nâ€¢ Mac OS Operating System\r\nâ€¢ 512 GB SSD\r\nâ€¢ 33.78 cm (13.3 inch) Display\r\nâ€¢ Built-in Apps: Photos, iMovie, GarageBand, Pages, Numbers, Keynote, Siri, Safari, Mail, FaceTime, Messages, Maps, News, Stocks, Home, Voice Memos, Notes, Calendar, Contacts, Reminders, Photo Booth, Preview, Books, App Store, Time Machine, TV, Music, Podcasts, Find My, QuickTime Player\r\nâ€¢ 1 Year Limited Warranty\r\n'),
(77, 'Lenovo IdeaPad Gaming 3i Core i7 10th Gen - (8 GB/1 TB HDD/256 GB SSD)', 82990, 3, 'product_image/lenovo.jpeg', 8, 'â€¢ Intel Core i7 Processor (10th Gen)\r\nâ€¢ 8 GB DDR4 RAM\r\nâ€¢ 64 bit Windows 10 Operating System\r\nâ€¢ 1 TB HDD|256 GB SSD\r\nâ€¢ 39.62 cm (15.6 inch) Display\r\nâ€¢ 1 Year Onsite Warranty\r\n'),
(79, 'Dell G3 Core i7 10th Gen - (16 GB/1 TB HDD/256 GB SSD/4 GB Graphics)', 91990, 12, 'product_image/dell.jpeg', 8, 'â€¢ Intel Core i7 Processor (10th Gen)\r\nâ€¢ 16 GB DDR4 RAM\r\nâ€¢ 64 bit Windows 10 Operating System\r\nâ€¢ 1 TB HDD|256 GB SSD\r\nâ€¢ 39.62 cm (15.6 inch) Display\r\nâ€¢ Microsoft Office Home and Student 2019\r\nâ€¢ 1 Year Complete Cover Warranty\r\n'),
(80, 'Asus TUF Gaming A17 Ryzen 7 Octa Core (16 GB/1 TB HDD/256 GB SSD)', 91990, 15, 'product_image/asus1.jpeg', 8, 'â€¢ AMD Ryzen 7 Octa Core Processor\r\nâ€¢ 16 GB DDR4 RAM\r\nâ€¢ 64 bit Windows 10 Operating System\r\nâ€¢ 1 TB HDD|256 GB SSD\r\nâ€¢ 43.94 cm (17.3 inch) Display\r\nâ€¢ 1 Year Onsite Warranty\r\n'),
(81, 'HP Spectre x360 Core i5 10th Gen - (8 GB/512 GB SSD)', 102990, 4, 'product_image/hpspectre.jpeg', 8, 'â€¢ Intel Core i5 Processor (10th Gen)\r\nâ€¢ 8 GB DDR4 RAM\r\nâ€¢ 64 bit Windows 10 Operating System\r\nâ€¢ 512 GB SSD\r\nâ€¢ 33.78 cm (13.3 inch) Touchscreen Display\r\nâ€¢ HP Audio Switch, HP ePrint, HP Support Assistant, HP JumpStart, HP Connection Optimizer, HP PC Hardware Diagnostics, HP Command Centre, Microsoft Office Home and Student 2019\r\nâ€¢ 1 Year Onsite Warranty\r\n'),
(82, 'Asus ROG Strix G15 Core i7 10th Gen - (16 GB/1 TB SSD)', 126240, 2, 'product_image/asusrog6.jpeg', 8, 'â€¢ Intel Core i7 Processor (10th Gen)\r\nâ€¢ 16 GB DDR4 RAM\r\nâ€¢ 64 bit Windows 10 Operating System\r\nâ€¢ 1 TB SSD\r\nâ€¢ 39.62 cm (15.6 inch) Display\r\nâ€¢ 1 Year Onsite Warranty\r\n'),
(83, 'Fitbit Versa Special Edition Smartwatch', 15945, 6, 'product_image/fitbitne.jpeg', 9, 'â€¢ Get call, text and smartphone app notifications on your wrist\r\nâ€¢ Two bands in woven and classic\r\nâ€¢ Use 24/7 heart rate to track resting heart rate\r\nâ€¢ Track sleep stages & review your in-app Sleep Score\r\nâ€¢ 4 plus day battery life\r\nâ€¢ Touchscreen\r\nâ€¢ Fitness & Outdoor\r\nâ€¢ Battery Runtime: Upto 4 days\r\nâ€¢ 1 Year Warranty\r\n'),
(84, 'Apple Watch Series 3 GPS - 42 mm Space Grey ', 23900, 8, 'product_image/apple4n.jpeg', 9, 'â€¢ GPS and Altimeter\r\nâ€¢ Swimproof\r\nâ€¢ Voice Based Siri\r\nâ€¢ 3 Activity Rings Tracking - Move, Exercise, Stand\r\nâ€¢ Smart Coaching\r\nâ€¢ Activity Sharing and Achievements\r\nâ€¢ Heart Rate Monitor\r\nâ€¢ Breathe App\r\nâ€¢ Notifications\r\nâ€¢ Touchscreen\r\nâ€¢ Notifier, Fitness & Outdoor\r\nâ€¢ Battery Runtime: Upto 18 hrs\r\nâ€¢ 1 Year Warranty\r\n'),
(85, 'Fossil 4th Gen Explorist HR Smartwatch', 10998, 18, 'product_image/fossil.jpeg', 9, 'â€¢ Heart Rate Monitor\r\nâ€¢ Google Assistant and Microphone\r\nâ€¢ Music Storage and Controls\r\nâ€¢ Customizable Watch Faces\r\nâ€¢ Swim Proof\r\nâ€¢ Touchscreen\r\nâ€¢ Fitness & Outdoor\r\nâ€¢ Battery Runtime: Upto 24 hrs\r\nâ€¢ 2 Years Warranty\r\n'),
(86, 'Apple Watch SE GPS + Cellular 44 mm Space Grey ', 36900, 5, 'product_image/applese.jpeg', 9, 'â€¢ Large Retina OLED display\r\nâ€¢ With the GPS + Cellular model, you can call, text and navigate without using your smartphone\r\nâ€¢ Use fitness app on your iphone to see your daily activity trends\r\nâ€¢ Track your workouts like swimming, cycling, dancing, jogging, running, yoga\r\nâ€¢ Get notified in case of irregular heart rhythms\r\nâ€¢ It has a Swim Proof design\r\nâ€¢ With Call Function\r\nâ€¢ Touchscreen\r\nâ€¢ Fitness & Outdoor\r\nâ€¢ Battery Runtime: Upto 18 hrs\r\nâ€¢ 1 Year Manufacturer Warranty\r\n'),
(90, 'Samsung Galaxy Watch Active 2 Aluminium Smartwatch', 23090, 6, 'product_image/samsungwatch.jpeg', 9, 'â€¢ Timeless design with digital touch bezel Cutting edge activity tracker\r\nâ€¢ Super AMOLED Display\r\nâ€¢ Swim ready-5 ATM water resistant (up to 50 m)\r\nâ€¢ With Call Function\r\nâ€¢ Touchscreen\r\nâ€¢ Fitness & Outdoor\r\nâ€¢ Battery Runtime: Upto 5 days\r\nâ€¢ 1 Year Manufacturer Warranty\r\n'),
(91, 'Fujifilm X Series X-A7  15-45 mm Lens', 39999, 6, 'product_image/fujifilmx.jpeg', 10, 'â€¢ Effective Pixels: 24.2 MP\r\nâ€¢ Sensor Type: CMOS\r\nâ€¢ WiFi Available\r\nâ€¢ 4K\r\nâ€¢ 2 Years Warranty on the Product From the Date of Purchase\r\n'),
(92, 'Sony CyberShot DSC-RX100M6 IN5', 81999, 4, 'product_image/sony81n.jpeg', 10, 'â€¢ Effective Pixels: 20.1 MP\r\nâ€¢ Optical Zoom: 8.0x | Digital Zoom: 32x\r\nâ€¢ Display Size: 7.36\r\nâ€¢ 2 Year Product Warranty\r\n'),
(93, 'Canon PowerShot G1X Mark III', 64999, 7, 'product_image/cannonn.jpeg', 10, 'â€¢ Effective Pixels: 24.2 MP\r\nâ€¢ Optical Zoom: 3x | Digital Zoom: 12x\r\nâ€¢ Auto Focus\r\nâ€¢ Display Size: 3 inch\r\nâ€¢ 2 Years Warranty\r\n'),
(94, 'Canon EOS 80D DSLR ', 85999, 2, 'product_image/cannoneos.jpeg', 10, 'â€¢ Effective Pixels: 24 MP\r\nâ€¢ Sensor Type: CMOS\r\nâ€¢ WiFi Available\r\nâ€¢ 1080p at 60p + Time-Lapse\r\nâ€¢ Product is covered under one-year standard warranty and one-year additional warranty from the date of Product purchased by the customer. Warranty validation / Warranty period confirmation would be done through either Online Warranty Serial No. Tracking system (Service Edge) or Warranty Card and Customer Invoice date.\r\n'),
(95, 'Nikon COOLPIX P1000', 69950, 8, 'product_image/nikon.jpeg', 10, 'â€¢ Effective Pixels: 16 MP\r\nâ€¢ Optical Zoom: 125x | Digital Zoom: 4x\r\nâ€¢ Display Size: 3.2 inch\r\nâ€¢ 2 Years Warranty\r\n'),
(96, 'Nikon D7500 DSLR ', 74999, 7, 'product_image/nikonnew.jpeg', 10, 'â€¢  Effective Pixels: 20.9 MP\r\nâ€¢  Sensor Type: CMOS\r\nâ€¢  WiFi Available\r\nâ€¢  4K\r\nâ€¢  2 Years Domestic Warranty\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `users_items`;
CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

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
