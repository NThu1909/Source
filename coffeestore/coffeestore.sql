-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 07:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Seller', 'thu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(7, 'Coffee', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Equipment and accessories', '', 1, 2, '2017-04-22 05:37:36'),
(10, 'Robusta', '', 7, 1, '2017-04-22 09:08:19'),
(11, ' Arabica', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Culi', '', 7, 4, '2017-04-22 09:09:01'),
(15, 'Cherry', '', 7, 3, '2017-04-22 09:09:46'),
(16, 'Moka', '', 7, 5, '2017-04-22 09:10:10'),
(17, 'Green coffee', '', 7, 6, '2017-04-22 09:23:39'),
(18, 'Coffee maker', '', 8, 1, '2017-04-22 09:23:57'),
(35, 'Roasted coffee', '', 7, 7, '0000-00-00 00:00:00'),
(36, 'Fin for coffee', '', 8, 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(33, 22, 17, 1, '17000.00', 0),
(32, 22, 52, 1, '15000.00', 0),
(34, 23, 52, 1, '15000.00', 0),
(35, 23, 51, 1, '17000.00', 0),
(36, 24, 51, 1, '17000.00', 0),
(37, 25, 57, 1, '450.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(56, 36, 'Legend Coffee Maker', '<p>Trung Nguyen Coffee filter is now known for 3 types of filter: Simple patterned filter (Printed with Trung Nguyen logo)</p>\r\n', '20.00', 5, 'legend11.jpg', '[\"legend21.jpg\",\"lengend31.jpg\"]', 0, 0, 4, 1, 1651043758),
(57, 18, 'Coffee machine Philips HD7447', '<p>1000W power operation for quick coffee making<br />\r\nThe Philips HD7447 coffee machine works with a capacity of 1000W to help you make coffee quickly in just a few minutes. You don&#39;t have to wait to buy coffee from outside anymore, you can make it yourself quickly and ensure that it is pure coffee.</p>\r\n', '500.00', 50, 'philip21.jpg', '[\"philip22.jpg\",\"philip31.jpg\",\"philip41.jpg\"]', 0, 0, 4, 1, 1651044187),
(6, 20, 'Stainless steel coffee pot', '<p>T&ecirc;n sản phẩm: Lọ inox chứa c&agrave; ph&ecirc; Akira M520a &ndash; Bạc<br />\r\nXuất xứ: Trung Quốc<br />\r\nChất liệu: Th&eacute;p kh&ocirc;ng gỉ<br />\r\nLọ inox chứa c&agrave; ph&ecirc; Akira M520a &ndash; Bạc c&oacute; thể sử dụng cho nhiều loại m&aacute;y xay do n&oacute; c&oacute; lớp m&agrave;ng lọc b&ecirc;n trong cốc, lọc c&agrave; ph&ecirc; vừa phải v&agrave; ph&ugrave; hợp với nhiều loại c&agrave; ph&ecirc; kh&aacute;c nhau khi xay.</p>\r\n', '625000.00', 5000, 'coc-dung-ca-phe-may-akira.jpg', '[\"coc-dung-ca-phe-may-akira-6.jpg\",\"coc-dung-ca-phe-may-akira-7.jpg\",\"coc-dung-ca-phe-may-akira1.jpg\"]', 4, 1, 4, 1, 1493983674),
(58, 10, 'Robusta Coffee', '<p>Robusta coffee is a type of coffee made from the beans (seeds) of the Coffea canephora plant.<br />\r\nRobusta originated in central and western sub-Saharan Africa. It is the second most popular coffee in the world, making up 40% of the worlds coffee production.<br />\r\nIt comes second only to arabica (from the Coffea arabica plant) which makes up the remaining 60% (or more) of coffee production worldwide.</p>\r\n', '350.00', 50, 'No11.jpg', '[\"ros21.jpg\",\"ros41.jpg\"]', 0, 0, 4, 1, 1651045334),
(59, 11, ' Arabica Coffee', '<p>Coffee tea is the Vietnamese name for the Arabica coffee species whose scientific name is according to the two-part nomenclature: Coffea arabica, because this species of coffee has small leaves, the tree has some morphological characteristics similar to the tea tree - a common industrial plant species in Vietnam. There are two types of tea coffee: moka coffee and catimor coffee.</p>\r\n', '400.00', 20, 'a11.png', '[\"a41.jpg\",\"ros211.jpg\"]', 0, 0, 4, 1, 1651045564),
(53, 19, 'Faema Auto blender', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Thương hiệu</th>\r\n			<td>\r\n			<p>FAEMA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>C&ocirc;ng suất</th>\r\n			<td>\r\n			<p>6.5 kg/h</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Hộp đựng c&agrave; ph&ecirc;</th>\r\n			<td>\r\n			<p>1.5 kg</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>\r\n			<p>19.4 x 42.8 x 51.0 (cm)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bảo h&agrave;nh</th>\r\n			<td>\r\n			<p>12 th&aacute;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Khu vực b&aacute;n h&agrave;ng</th>\r\n			<td>\r\n			<p>To&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1500000.00', 200000, 'may-pha-ca-phe-faema-auto-001.jpg', '[\"may-pha-ca-phe-faema-auto-0011.jpg\"]', 2, 0, 4, 1, 1611401349);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'download_(2).jpg', '#', 1, '2017-04-26 15:24:43'),
(4, '2', '360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg', '#', 4, '2017-04-25 15:36:41'),
(5, '3', 'images_(3).jpg', '#', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(24, 0, 13, 'nmt', 't@gmail.com', '03422619', 'can tho', 'w', '17000.00', '', 1650995384),
(23, 1, 0, 'thu', 'thu@gmail.com', '03422619', 'can tho', 'no', '32000.00', '', 1650883134),
(25, 0, 0, 'sfsdgdg', 'thu@gmail.com', '25225', 'eyed5yd', 'ý', '450.00', '', 1651162123);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(13, 'nmt', 't@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '03422619', 'can tho', 2022),
(14, 'anhkim', 'k@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '5666666621', 'can tho', 2022),
(15, 'ttt', 'e@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '451544', 'cantho', 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
