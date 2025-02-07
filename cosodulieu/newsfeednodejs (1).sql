-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2024 lúc 04:04 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newsfeednodejs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` varchar(10000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `ngay` date NOT NULL,
  `danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `noidung`, `hinhanh`, `ngay`, `danhmuc`) VALUES
(7, 'khanh', 'okokok', '1715220193067-1342977.jpeg', '2024-05-09', '1687'),
(8, 'Tác động của gói viện trợ Mỹ với chiến trường Ukraine', 'Gói viện trợ gần 61 tỷ USD sau nhiều tháng mắc kẹt được cho là sẽ giúp Ukraine củng cố lực lượng, vực dậy sĩ khí và cản bước kế hoạch tấn công của Nga.  Trung úy Oleksandr đang chỉ huy đơn vị pháo binh Ukraine chống Nga ở mặt trận miền đông. Vũ khí họ có là lựu pháo M777 mà Mỹ cung cấp cùng các loại pháo khác. Khi trở về căn cứ tối 20/4, Oleksandr nhận được thông tin mà anh và hàng triệu người Ukraine mong đợi.  \"Tôi vừa bước vào căn cứ sau khi thay ca thì mọi người thông báo rằng gói viện trợ cuối cùng đã được Hạ viện Mỹ thông qua. Chúng tôi hy vọng nó sẽ đến tay càng sớm càng tốt\", anh nói.', '1715220011155-370605.jpg', '2024-05-09', '1688');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sodienthoai` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `ten`, `diachi`, `sodienthoai`, `email`, `facebook`, `youtube`) VALUES
(1, 'newsfeed', 'New York, NY 10012, US', '03333333333', 'info@example.com', 'https://web.facebook.com/', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(100) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1686, 'Nodejs'),
(1687, 'GG'),
(1688, 'Phim');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sodienthoai` varchar(100) NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `sodienthoai`, `trangthai`) VALUES
(1, 'khanh@gmail.com', '1234', 'Trần Quốc Khánh', '0334280017', 1),
(2, 'huudung@gmail.com', '1234', 'Tran Thien Huu Dung', '098787222', 1),
(3, 'lehoangkhang@gmail.com', '1234', 'Khang le', '022222222', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1691;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
