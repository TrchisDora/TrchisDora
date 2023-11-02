-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2023 lúc 02:13 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `testweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `User` varchar(100) NOT NULL,
  `Pass` varchar(100) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Sdt` varchar(10) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `LoaiTK` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`User`, `Pass`, `HoTen`, `Email`, `Sdt`, `DiaChi`, `LoaiTK`) VALUES
('', 'abc@123', '', '', '', '', 0),
('NgocCam', '456', 'Đinh Thị Ngọc Cầm', 'nc2015@gmail.com', '0788781119', 'Sóc Trăng', 0),
('ViThanhNga', '123', 'Vi Thanh Ngà', 'vinga2015@gmail.com', '0788781116', 'Cần Thơ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaCTDH` int(11) NOT NULL,
  `MaDH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TenSP` varchar(1000) NOT NULL,
  `Hinh` varchar(500) NOT NULL,
  `NgayDatDon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaCTDH`, `MaDH`, `MaSP`, `SoLuong`, `TenSP`, `Hinh`, `NgayDatDon`, `Gia`) VALUES
(247, 7744, 6, 1, 'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su', 'apple-watch-se-2022.jpg', '2023-05-01 17:18:00', 3990000),
(248, 7744, 8, 2, 'iPhone 12', 'ip_12.png', '2023-05-01 17:18:00', 19980000),
(249, 810, 8, 1, 'iPhone 12', 'ip_12.png', '2023-05-02 00:44:00', 9990000),
(250, 9752, 7, 1, 'Apple Watch Ultra GPS + Cellular 49mm Titanium Alpine Loop Medium', 'apple-watch-ultra-alpine-m-xanh.jpg', '2023-05-02 02:26:22', 18990000),
(251, 9752, 8, 1, 'iPhone 12', 'ip_12.png', '2023-05-02 02:26:22', 9990000),
(252, 6244, 6, 1, 'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su', 'apple-watch-se-2022.jpg', '2023-05-02 10:03:34', 3990000),
(253, 6244, 8, 1, 'iPhone 12', 'ip_12.png', '2023-05-02 10:03:34', 9990000),
(254, 5639, 8, 2, 'iPhone 12', 'ip_12.png', '2023-05-03 15:05:35', 19980000),
(255, 5639, 11, 1, 'Apple Watch SE GPS + Cellular 44mm viền nhôm dây Sport Loop ', 'dong-ho-pple-watch-den.jpeg', '2023-05-03 15:05:35', 6490000),
(256, 6088, 6, 1, 'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su', 'apple-watch-se-2022.jpg', '2023-05-04 06:55:42', 3990000),
(257, 6088, 8, 1, 'iPhone 12', 'ip_12.png', '2023-05-04 06:55:42', 9990000),
(258, 6088, 20, 1, 'MacBook Air 13', 'MacbookAirM12022.jpg', '2023-05-04 06:55:42', 26990000),
(259, 3949, 15, 0, 'iPad Pro 12.9 2022 M2 WiFi 5G 128GB ', 'ipad-pro-m2-11.jpg', '2023-05-04 06:58:07', 31990000),
(260, 7666, 8, 1, 'iPhone 12', 'ip_12.png', '2023-05-05 03:04:43', 9990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `MaCM` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `User` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Sdt` varchar(10) NOT NULL,
  `Comment` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`MaCM`, `HoTen`, `User`, `Email`, `Sdt`, `Comment`) VALUES
(685, 'Bảo Quỳnh', '', 'BaoQuynh@gmail.com', '099856714', 'Shop rất nhiệt tình ạ'),
(686, 'Vi Thanh Ngà', 'ViThanhNga', 'vinga2015@gmail.com', '0788781116', 'Tôi là ad'),
(687, 'Khải Minh', '', 'KM@gmail.com', '0998865234', 'Shop đỉnh quá ạ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `User` varchar(100) NOT NULL,
  `MaSp` int(11) NOT NULL,
  `NoiDung` varchar(250) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_product`
--

INSERT INTO `comment_product` (`id`, `HoTen`, `User`, `MaSp`, `NoiDung`, `Date`) VALUES
(1, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Đỉnh quá', '2023-05-03 14:41:22'),
(2, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Đỉnh quá', '2023-05-03 14:41:24'),
(4, 'Vi Thanh Ngà', 'ViThanhNga', 8, 'Shop nhiệt tình quá', '2023-05-03 14:47:35'),
(5, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Hmm', '2023-05-03 14:53:23'),
(6, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Hmm', '2023-05-03 14:53:26'),
(7, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Alo', '2023-05-03 15:02:43'),
(8, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'ChÀO', '2023-05-03 15:03:00'),
(10, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Rẻ thế\r\n', '2023-05-03 15:14:18'),
(11, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Rẻ thế\r\n', '2023-05-03 15:14:22'),
(12, 'Vi Thanh Ngà', 'ViThanhNga', 8, 'Xin thế', '2023-05-04 01:55:45'),
(13, 'Vi Thanh Ngà', 'ViThanhNga', 8, 'Xin thế', '2023-05-04 01:56:30'),
(14, 'Vi Thanh Ngà', 'ViThanhNga', 8, 'Sale nhiều hơn đi ạ\r\n', '2023-05-04 01:56:43'),
(15, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Rẻ hơn xíu mới mua', '2023-05-04 01:58:26'),
(16, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Sao z', '2023-05-04 05:20:33'),
(17, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'rẻ không', '2023-05-04 05:21:01'),
(18, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'rẻ không', '2023-05-04 05:21:50'),
(19, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:23:58'),
(20, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:24:02'),
(21, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:07'),
(22, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:08'),
(23, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:24'),
(24, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:24'),
(25, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:32'),
(26, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:33'),
(27, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:42'),
(29, 'Đinh Thị Ngọc Cầm', 'NgocCam', 8, 'Thật á', '2023-05-04 05:30:58'),
(37, 'Đinh Thị Ngọc Cầm', 'NgocCam', 17, 'Alo sản đẹp quá', '2023-05-04 06:58:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `TongSoLuong` int(11) NOT NULL,
  `User` varchar(100) NOT NULL,
  `TinhTrang` varchar(20) NOT NULL,
  `NgayTao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TongHD` int(11) NOT NULL,
  `YeuCauHuy` tinyint(1) NOT NULL,
  `ChapThuan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `TongSoLuong`, `User`, `TinhTrang`, `NgayTao`, `TongHD`, `YeuCauHuy`, `ChapThuan`) VALUES
(810, 1, 'NgocCam', 'Đã hủy', '2023-05-04 06:56:38', 9990000, 0, 1),
(3949, 1, 'NgocCam', 'Đang xử lý', '2023-05-04 06:58:07', 31990000, 0, 0),
(5639, 3, 'NgocCam', 'Đã hủy', '2023-05-04 06:56:39', 26470000, 0, 1),
(6088, 3, 'NgocCam', 'Đang giao hàng', '2023-05-04 06:56:42', 40970000, 0, 2),
(6244, 2, 'ViThanhNga', 'Đang xử lý', '2023-05-02 10:03:34', 13980000, 0, 0),
(7666, 1, 'ViThanhNga', 'Đang xử lý', '2023-05-05 03:04:43', 9990000, 0, 0),
(7744, 3, 'ViThanhNga', 'Đã hủy', '2023-05-02 02:42:24', 23970000, 0, 1),
(9752, 2, 'NgocCam', 'Đang xử lý', '2023-05-04 06:57:16', 28980000, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGioHang` int(11) NOT NULL,
  `TenSP` varchar(1000) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `GiaCu` int(11) NOT NULL,
  `GiaMoi` int(11) NOT NULL,
  `Hinh` varchar(500) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(100) NOT NULL,
  `NgayTao` date NOT NULL,
  `thuTu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `NgayTao`, `thuTu`) VALUES
(1, 'Điện Thoai', '2023-04-10', 1),
(2, 'LapTop', '2023-04-10', 2),
(3, 'Tablet', '2023-04-10', 3),
(4, 'Iwatch', '2023-04-10', 4),
(5, 'Airpod', '2023-04-10', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(1000) NOT NULL,
  `GiaCu` int(11) NOT NULL,
  `GiaMoi` int(11) NOT NULL,
  `Hinh` varchar(500) NOT NULL,
  `NoiDung` varchar(5000) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `NgayTao` date NOT NULL,
  `NoiBat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `GiaCu`, `GiaMoi`, `Hinh`, `NoiDung`, `MaLoai`, `NgayTao`, `NoiBat`) VALUES
(1, 'iPhone 14 Vàng', 34990000, 28000000, 'ip-14-vang.jpg', 'Màn hình: OLED 6.1\"Super Retina XDR\r\nHệ điều hành: iOS 16\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 6 GB\r\nDung lượng lưu trữ: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 3279 mAh20 W', 1, '2023-04-14', 1),
(2, 'iPhone 14 Pro Max', 30990000, 24990000, 'ip14-pro-max.jpg', 'Màn hình: OLED 6.7\"Super Retina XDR\r\nHệ điều hành: iOS 16\r\nCamera sau: Chính 48 MP & Phụ 12 MP, 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A16 Bionic\r\nRAM: 6 GB\r\nDung lượng lưu trữ: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 4323 mAh20 W', 1, '2023-04-14', 1),
(3, 'iPhone 13 Pro 1TB', 29990000, 25990000, 'ip-13-pro-1TB.jpg', 'Màn hình: OLED 6.1\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A15 Bionic\r\nRAM: 6 GB\r\nDung lượng lưu trữ: 1 TB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 3095 mAh20 W', 1, '2023-04-14', 0),
(4, 'iPhone 11', 14990000, 11990000, 'ip11.jpg', 'Màn hình: IPS LCD6.1\"Liquid Retina\r\nHệ điều hành: iOS 15\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A13 Bionic\r\nRAM: 4 GB\r\nDung lượng lưu trữ: 64 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 4G\r\nPin, Sạc: 3110 mAh18 W', 1, '2023-04-14', 0),
(5, 'iPhone 14 Pro', 30990000, 25990000, 'ip14-pro.jpg', 'Màn hình: OLED 6.1\"Super Retina XDR\r\nHệ điều hành: iOS 16\r\nCamera sau: Chính 48 MP & Phụ 12 MP, 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A16 Bionic\r\nRAM: 6 GB\r\nDung lượng lưu trữ: 512 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 3200 mAh20 W', 1, '2023-04-14', 1),
(6, 'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su', 7990000, 3990000, 'apple-watch-se-2022.jpg', 'Màn hình	OLED\r\nThời lượng pin	Khoảng 1.5 ngày (ở chế độ tiết kiệm pin)Khoảng 18 giờ (ở chế độ sử dụng thông thường)\r\nKết nối với hệ điều hành	iPhone 8 trở lên với iOS phiên bản mới nhất\r\nMặt	Ion-X strengthened glass40 mm\r\nTính năng cho sức khỏe:	Cảm biến nhiệt độ Chế độ luyện tập, Nhắc nhở nhịp tim cao thấp, Gửi thông báo khi có tai nạn, Đo nhịp tim, Theo dõi mức độ stress, Tính quãng đường chạy, Đếm số bước chân, Theo dõi giấc ngủ, Tính lượng calories tiêu thụ, Theo dõi chu kì kinh nguyệt', 4, '2023-04-15', 0),
(7, 'Apple Watch Ultra GPS + Cellular 49mm Titanium Alpine Loop Medium', 23990000, 18990000, 'apple-watch-ultra-alpine-m-xanh.jpg', 'Màn hình: OLED 1.92 inch\r\nThời lượng pin: Khoảng 36 giờ (ở chế độ sử dụng thông thường) Khoảng 60 giờ (ở chế độ tiết kiệm pin)\r\nKết nối với hệ điều hành: iPhone 8 trở lên với iOS phiên bản mới nhất\r\nMặt: Kính Sapphire49 mm\r\nTính năng cho sức khỏe: Cảm biến nhiệt độ, Chấm điểm giấc ngủ, Nhắc nhở nhịp tim cao thấp, Gửi thông báo khi có tai nạn, Ước tính ngày rụng trứng, Đo nhịp tim, Tính quãng đường chạy, Đếm số bước chân, Điện tâm đồ, Đo nồng độ oxy (SpO2)Theo dõi giấc ngủ, Tính lượng calories tiêu thụ, Theo dõi chu kì kinh nguyệt', 4, '2023-04-15', 1),
(8, 'iPhone 12', 19990000, 9990000, 'ip_12.png', 'Màn hình: OLED 6.1\"Super Retina XDR\r\nHệ điều hành: iOS 15\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A14 Bionic\r\nRAM: 4 GB\r\nDung lượng lưu trữ: 256 GB\r\nSIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G\r\nPin, Sạc: 2815 mAh20 W', 1, '2023-04-04', 0),
(9, 'Apple Watch Ultra GPS + Cellular 49mm Titanium Alpine Loop Large ', 23990000, 18990000, 'apple-watch-ultra-cao-su-trang.jpg', 'Màn hình: OLED 1.92 inch\r\nThời lượng pin: Khoảng 36 giờ (ở chế độ sử dụng thông thường) Khoảng 60 giờ (ở chế độ tiết kiệm pin)\r\nKết nối với hệ điều hành: iPhone 8 trở lên với iOS phiên bản mới nhất\r\nMặt: Kính Sapphire49 mm\r\nTính năng cho sức khỏe: Cảm biến nhiệt độ, Chấm điểm giấc ngủ, Nhắc nhở nhịp tim cao thấp, Gửi thông báo khi có tai nạn, Ước tính ngày rụng trứng, Đo nhịp tim, Tính quãng đường chạy, Đếm số bước chân, Điện tâm đồ, Đo nồng độ oxy (SpO2)Theo dõi giấc ngủ, Tính lượng calories tiêu thụ, Theo dõi chu kì kinh nguyệt', 4, '2023-04-16', 1),
(10, 'Apple Watch Series 7 GPS 41mm viền nhôm dây cao su ', 11990000, 7490000, 'dong-ho-apple-watch-series-7.jpeg', 'Màn hình: OLED 1.61 inch\r\nThời lượng pin: Khoảng 1.5 ngày (ở chế độ tiết kiệm pin) Khoảng 18 giờ (ở chế độ sử dụng thông thường)\r\nKết nối với hệ điều hành: iPhone 8 trở lên với iOS phiên bản mới nhất\r\nMặt: Ion-X strengthened glass41 mm\r\nTính năng cho sức khỏe: Chế độ luyện tập, Đo nhịp tim, Tính quãng đường chạy, Đếm số bước chân, Điện tâm đồ, Đo nồng độ oxy (SpO2)Theo dõi giấc ngủ, Tính lượng calories tiêu thụ', 4, '2023-04-03', 0),
(11, 'Apple Watch SE GPS + Cellular 44mm viền nhôm dây Sport Loop ', 11990000, 6490000, 'dong-ho-pple-watch-den.jpeg', 'Màn hình: OLED\r\nThời lượng pin: Khoảng 1.5 ngày (ở chế độ tiết kiệm pin) Khoảng 18 giờ (ở chế độ sử dụng thông thường)\r\nKết nối với hệ điều hành: iPhone 8 trở lên với iOS phiên bản mới nhất\r\nMặt: Ion-X strengthened glass44 mm\r\nTính năng cho sức khỏe: Cảm biến nhiệt độ, Chế độ luyện tập, Nhắc nhở nhịp tim cao thấp, Gửi thông báo khi có tai nạn, Đo nhịp tim, Theo dõi mức độ stress, Tính quãng đường chạy, Đếm số bước chân, Theo dõi giấc ngủ, Tính lượng calories tiêu thụ, Theo dõi chu kì kinh nguyệt\r\nHãng Apple. ', 4, '2023-04-15', 0),
(12, 'iPad Gen 10 2022 10.9 inch WiFi 5G 64GB ', 18990000, 14290000, 'iPad-Gen-10.jpg', 'Màn hình: 10.9\"Retina IPS LCD\r\nHệ điều hành: iPadOS 16\r\nChip: Apple A14 Bionic\r\nRAM: 4 GB\r\nDung lượng lưu trữ: 64 GB\r\nKết nối: Nghe gọi qua FaceTime\r\nCamera sau: 12 MP\r\nCamera trước: 12 MP\r\nPin, Sạc: 28.6 Wh (~ 7587 mAh)20 W', 3, '2023-04-18', 0),
(13, 'iPad mini 6 2021 8.3 inch WiFi 5G 64GB', 19990000, 15290000, 'ipad-mini-6.jpg', 'Màn hình: 8.3\"LED-backlit IPS LCD\r\nHệ điều hành: iPadOS 15\r\nChip: Apple A15 Bionic\r\nRAM: 4 GB\r\nDung lượng lưu trữ: 64 GB\r\nKết nối: 5G Nghe gọi qua FaceTime\r\nSIM: 1 Nano SIM & 1 eSIM\r\nCamera sau: 12 MP\r\nCamera trước: 12 MP\r\nPin, Sạc: 19.3 Wh (~ 5175 mAh)20 W', 3, '2023-04-13', 0),
(14, 'iPad Pro 11 2022 M2 WiFi 128GB', 2399000, 20990000, 'ipad-pro-m1.jpg', 'Màn hình: 11\"Liquid Retina\r\nHệ điều hành: iPadOS 16\r\nChip: Apple M2 8 nhân\r\nRAM: 8 GB\r\nDung lượng lưu trữ: 128 GB\r\nKết nối: Nghe gọi qua FaceTime\r\nCamera sau: Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR\r\nCamera trước: 12 MP\r\nPin, Sạc: 28.65 Wh (~ 7538 mAh)20 W', 3, '2023-04-22', 1),
(15, 'iPad Pro 12.9 2022 M2 WiFi 5G 128GB ', 35990000, 31990000, 'ipad-pro-m2-11.jpg', 'Màn hình: 12.9\"Liquid Retina XDR\r\nHệ điều hành: iPadOS 16\r\nChip: Apple M2 8 nhân\r\nRAM: 16 GB\r\nDung lượng lưu trữ: 2 TB\r\nKết nối: 5G Nghe gọi qua FaceTime\r\nSIM: 1 Nano SIM hoặc 1 eSIM\r\nCamera sau: Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR\r\nCamera trước: 12 MP\r\nPin, Sạc: 40.88 Wh (~ 10.835 mAh)20 W', 3, '2023-04-22', 1),
(16, 'iPad 9 WiFi 64GB', 9990000, 7990000, 'ipad-9-wifi-trang-1.jpg', 'Màn hình: 10.2\"Retina IPS LCD\r\nHệ điều hành: iPadOS 15\r\nChip: Apple A13 Bionic\r\nRAM: 3 GB\r\nDung lượng lưu trữ: 64 GB\r\nKết nối: Hỗ trợ 4G Nghe gọi qua FaceTime\r\nSIM: 1 Nano SIM & 1 eSIM\r\nCamera sau: 8 MP\r\nCamera trước: 12 MP\r\nPin, Sạc: 32.4 Wh (~ 8600 mAh)20 W', 3, '2023-04-18', 1),
(17, 'MacBook Pro 16\" 2021 M1 Pro Ram 32GB', 76990000, 63990000, 'MacBookPro162023.jpg', 'CPU: Apple M1 Pro200GB/s\r\nRAM: 32 GB\r\nỔ cứng: 1 TB SSD\r\nMàn hình: 16.2\"Liquid Retina XDR display (3456 x 2234)120Hz\r\nCard màn hình: Card tích hợp 16 nhân GPU\r\nCổng kết nối: HDMI3 x Thunderbolt 4 USB-CJack tai nghe 3.5 mm\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối\r\nKích thước, khối lượng: Dài 355.7 mm - Rộng 248.1 mm - Dày 16.8 mm - Nặng 2.1 kg\r\nThời điểm ra mắt: 10/2021', 2, '2023-04-22', 1),
(18, 'MacBook Pro 14 2023 M2 Pro 10CPU 16GPU 16GB/512GB', 52990000, 48290000, 'MacBookPro2023.jpg', 'CPU: Apple M2 Pro200GB/s\r\nRAM: 16 GB\r\nỔ cứng: 512 GB SSD\r\nMàn hình: 14.2\"Liquid Retina XDR display (3024 x 1964)120Hz\r\nCard màn hình: Card tích hợp16 nhân GPU\r\nCổng kết nối: HDMIJack tai nghe 3.5 mmMagSafe 33 x Thunderbolt 4\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại\r\nKích thước, khối lượng: Dài 312.6 mm - Rộng 221.2 mm - Dày 15.5 mm - Nặng 1.6 kg\r\nThời điểm ra mắt: 2023', 2, '2023-04-22', 1),
(19, 'MacBook Air M2 2022 13 inch 8CPU 8GPU 8GB 256GB', 32990000, 27590000, 'MacbookAirM22022.jpg', 'CPU: Apple M2100GB/s\r\nRAM: 8 GB\r\nỔ cứng: 256 GB SSD\r\nMàn hình: 13.6\"Liquid Retina (2560 x 1664)\r\nCard màn hình: Card tích hợp8 nhân GPU\r\nCổng kết nối: Jack tai nghe 3.5 mmMagSafe 32 x Thunderbolt 3\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại\r\nKích thước, khối lượng: Dài 304.1 mm - Rộng 215 mm - Dày 11.3 mm - Nặng 1.24 kg\r\nThời điểm ra mắt: 6/2022', 2, '2023-04-22', 1),
(20, 'MacBook Air 13\" 2020 M1 256GB', 155990000, 26990000, 'MacbookAirM12022.jpg', 'CPU: Apple M1\r\nRAM: 8 GB\r\nỔ cứng: 512 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp 8 nhân GPU\r\nCổng kết nối: Jack tai nghe 3.5 mm2 x Thunderbolt 3 (USB-C)\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối\r\nKích thước, khối lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg\r\nThời điểm ra mắt: 2020', 2, '2023-04-15', 0),
(21, 'MacBook Pro M2 2022 13 inch 8CPU 10GPU 8GB 256GB', 34590000, 28790000, 'MacBookProM22022jpg.jpg', 'CPU: Apple M2100GB/s\r\nRAM: 8 GB\r\nỔ cứng: 256 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp 10 nhân GPU\r\nCổng kết nối: Jack tai nghe 3.5 mm2 x Thunderbolt 3\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại\r\nKích thước, khối lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 15.6 mm - Nặng 1.4 kg\r\nThời điểm ra mắt: 6/2022', 2, '2023-04-15', 0),
(22, 'Tai nghe AirPods 3 2022 Hộp sạc dây', 4790000, 4190000, 'airpods-3.jpeg', 'Thời gian tai nghe: Dùng 6 giờ\r\nThời gian hộp sạc: Dùng 30 giờ\r\nCổng sạc: Lightning\r\nCông nghệ âm thanh: Adaptive EQSpatial AudioCustom High Dynamic Range AmplifierCustom high-excursion Apple driverChip Apple H1\r\nTương thích: iOS (iPhone)AndroidiPadOS (iPad)macOS (Macbook, iMac)\r\nTiện ích: Chống nước IPX4, Có mic thoại\r\nHỗ trợ kết nối: Bluetooth 5.0\r\nĐiều khiển bằng: Cảm ứng lực\r\nHãng Apple', 5, '2023-04-15', 0),
(23, 'Tai nghe AirPods 2 2021 Hộp sạc dây', 4790000, 3890000, 'bluetooth-airpods-2-apple.jpg', 'Thời gian tai nghe: Dùng 5 giờ - Sạc 2 giờ\r\nThời gian hộp sạc: Dùng 24 giờ - Sạc 2 giờ\r\nCổng sạc: Lightning\r\nCông nghệ âm thanh: Chip Apple H1\r\nTương thích: iOS (iPhone)Android\r\nTiện ích: Có mic thoại, Sạc nhanh\r\nHỗ trợ kết nối: Bluetooth 5.0\r\nĐiều khiển bằng: Cảm ứng chạm\r\nHãng Apple', 5, '2023-04-15', 0),
(24, 'Tai nghe AirPods 2021 Hộp sạc dây', 4590000, 2990000, 'tai-nghe-bluetooth-airpods-3.jpeg', 'Thời gian tai nghe: Dùng 5 giờ - Sạc 3 giờ\r\nThời gian hộp sạc: Dùng 24 giờ - Sạc 4 giờ\r\nCổng sạc: Lightning\r\nCông nghệ âm thanh: Adaptive EQActive Noise CancellationTransparency ModeSpatial AudioCustom High Dynamic Range AmplifierCustom high-excursion Apple driverChip Apple H1\r\nTương thích: iOS (iPhone)AndroidiPadOS (iPad)macOS (Macbook, iMac)\r\nTiện ích: Chống nước IPX4, Có mic thoại, Chống ồn chủ động\r\nHỗ trợ kết nối: Bluetooth 5.0\r\nĐiều khiển bằng: Cảm ứng lực\r\nHãng Apple.', 5, '2023-04-15', 0),
(25, 'Tai nghe AirPods Pro 2022', 6190000, 6990000, 'tai-nghe-bluetooth-airpods-pro-2.jpeg', 'Thời gian tai nghe: Dùng 6 giờ\r\nThời gian hộp sạc: Dùng 30 giờ\r\nCổng sạc: Sạc Lightning\r\nCông nghệ âm thanh: Adaptive EQActive Noise CancellationChip Apple H2\r\nTương thích: Android, iOS, Windows\r\nTiện ích: Chống nước IPX4, Có mic thoại, Sạc nhanh, Chống ồn chủ động ANC, Trợ lý ảo Siri\r\nHỗ trợ kết nối: Bluetooth 5.3\r\nĐiều khiển bằng: Cảm ứng chạm\r\nHãng Apple.', 5, '2023-04-22', 1),
(26, 'Tai nghe AirPods 3 2021 Hộp sạc không dây', 4999000, 4599000, 'tai-nghe-bluetooth.jpg', 'Thời gian tai nghe: Dùng 5 giờ - Sạc 2 giờ\r\nThời gian hộp sạc: Dùng 24 giờ - Sạc 3 giờ\r\nCổng sạc: Sạc không dâySạc MagSafeLightning\r\nCông nghệ âm thanh: Adaptive EQActive Noise CancellationTransparency ModeSpatial AudioCustom High Dynamic Range AmplifierCustom high-excursion Apple driverChip Apple H1\r\nTương thích: iOS (iPhone)AndroidiPadOS (iPad)macOS (Macbook, iMac)\r\nTiện ích: Chống nước IPX4, Sạc không dây, Có mic thoại, Chống ồn chủ động\r\nHỗ trợ kết nối: Bluetooth 5.0\r\nĐiều khiển bằng: Cảm ứng lực\r\nHãng Apple.', 5, '2023-04-16', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`User`) USING BTREE;

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaCTDH`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`MaCM`),
  ADD KEY `comment_ibfk_1` (`HoTen`),
  ADD KEY `User` (`User`);

--
-- Chỉ mục cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSp` (`MaSp`),
  ADD KEY `User` (`User`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `User` (`User`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGioHang`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `MaCM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `MaGioHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`User`) REFERENCES `account` (`User`);

--
-- Các ràng buộc cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment-produce_ibfk_1` FOREIGN KEY (`MaSp`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `comment-produce_ibfk_2` FOREIGN KEY (`User`) REFERENCES `account` (`User`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`User`) REFERENCES `account` (`User`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `loai`
--
ALTER TABLE `loai`
  ADD CONSTRAINT `loai_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `sanpham` (`MaLoai`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
