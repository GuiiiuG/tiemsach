-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2019 at 05:59 PM
-- Server version: 5.7.26-0ubuntu0.18.10.1
-- PHP Version: 7.2.17-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`) VALUES
('admin', '123456', 'Mai Hong Ngự');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`) VALUES
(15, 'Thám Hiểm'),
(16, 'Tiểu thuyết');

-- --------------------------------------------------------

--
-- Table structure for table `dhchitiet`
--

CREATE TABLE `dhchitiet` (
  `madh` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dhchitiet`
--

INSERT INTO `dhchitiet` (`madh`, `masp`, `soluong`, `dongia`) VALUES
(11, 10, 2, 45000),
(11, 11, 2, 30000),
(11, 16, 1, 35000),
(11, 21, 1, 45000),
(12, 16, 1, 35000),
(12, 29, 1, 40000),
(12, 30, 1, 30000),
(12, 32, 2, 30000),
(12, 33, 1, 30000),
(13, 26, 1, 15000),
(13, 27, 1, 40000),
(14, 10, 1, 45000),
(14, 11, 1, 30000),
(15, 39, 1, 229000);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` date NOT NULL,
  `trangthai` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tendangnhap` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) DEFAULT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tendangnhap`, `matkhau`, `email`, `hoten`, `diachi`, `sdt`, `trangthai`, `ngaytao`) VALUES
(19, 'ngotruonghai', '123', 'assddd@gmail.com', 'Ngô Trường Hải', 'Q7', '1234567897', 0, '2019-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `maph` int(11) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngayph` date NOT NULL,
  `noidung` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`maph`, `hoten`, `email`, `ngayph`, `noidung`) VALUES
(6, 'Tui la ai', 'vjpking5913@gmail.com', '2019-05-24', 'Hay lam dmm'),
(7, 'Stacy', 'stacycao@gmail.com', '2019-05-25', 'Hay quá anh ơi..!!!!! ');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `madm` int(11) NOT NULL,
  `tensp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `giaban` float NOT NULL,
  `giakm` float NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tentg` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `namxb` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `madm`, `tensp`, `giaban`, `giakm`, `hinhanh`, `tentg`, `namxb`, `soluong`, `mota`, `ngaydang`) VALUES
(38, 15, 'Hai Vạn Dặm Dưới Đáy Biển', 70000, 0, 'haivandamduoidaybien.jpg', 'Jules Verne', '1870', 10, '<p>Hai Vạn Dặm Dưới Đ&aacute;y Biển Hai vạn dặm dưới đ&aacute;y biển l&agrave; một trong những t&aacute;c phẩm th&agrave;nh c&ocirc;ng nhất của Jules Verne. Rất nhiều năm đ&atilde; qua, những hiểu biết mọi mặt của con người về biển đ&atilde; tiến những bước d&agrave;i. Nhiều kh&aacute;i niệm đ&atilde; đổi thay về căn bản. Nhưng sự ph&aacute;t triển của khoa học, kỹ thuật kh&ocirc;ng l&agrave;m ch&uacute;ng ta giảm l&ograve;ng y&ecirc;u mến v&agrave; k&iacute;nh phục Jules Verne, v&igrave; cuốn s&aacute;ch n&agrave;y đ&atilde; g&oacute;p phần hướng biết bao thanh thiếu ni&ecirc;n tiến v&agrave;o khoa học, v&agrave; bao người sau n&agrave;y đ&atilde; trở th&agrave;nh những nh&agrave; hải dương học, ngư học v&agrave; chế tạo t&agrave;u ngầm!</p>\r\n', '2019-05-25'),
(39, 16, 'China Rich Girlfriend', 229000, 0, 'dai-tieu-thu-crazy-rich-asians-2-bia-truoc.png', 'Kevin Kwan', '2015', 5, '<p><strong>China Rich Girlfriend (Crazy Rich Asians Trilogy)&nbsp;</strong></p>\r\n\r\n<p>From the bestselling author of Crazy Rich Asians (Soon to be a MAJOR MOTION PICTURE starring Constance Wu, Henry Golding, Michelle Yeoh and Gemma Chan) comes a deliciously fun story of family, fortune, and fame in Mainland China. It&#39;s the eve of Rachel Chu&#39;s wedding, and she should be over the moon. She has a flawless oval-cut diamond, a wedding dress she loves, and a fianc&eacute; willing to give up one of the biggest fortunes in Asia in order to marry her. Still, Rachel mourns the fact that her birth father, a man she never knew, won&#39;t be there to walk her down the aisle. Then a chance accident reveals his identity. Suddenly, Rachel is drawn into a dizzying world of Shanghai splendor, a world where people attend church in a penthouse, where exotic cars race down the boulevard, and where people aren&#39;t just crazy they&#39;re China rich.</p>\r\n', '2019-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anhnen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `dhchitiet`
--
ALTER TABLE `dhchitiet`
  ADD PRIMARY KEY (`madh`,`masp`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`maph`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `maph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
