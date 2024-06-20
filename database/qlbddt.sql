-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2023 lúc 12:20 PM
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
-- Cơ sở dữ liệu: `qlbddt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Samsung'),
(2, 'Iphone'),
(3, 'Oppo'),
(4, 'Dell'),
(5, 'MacBook'),
(6, 'Asus'),
(7, 'iPad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'phone'),
(3, 'equipment'),
(4, 'Tablet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietmagiamgia`
--

CREATE TABLE `chitietmagiamgia` (
  `id` int(255) NOT NULL,
  `id_magiamgia` int(255) NOT NULL,
  `id_sanphamchinh` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietmagiamgia`
--

INSERT INTO `chitietmagiamgia` (`id`, `id_magiamgia`, `id_sanphamchinh`) VALUES
(1, 1, 2),
(2, 2, 4),
(3, 3, 1),
(4, 6, 1),
(5, 2, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctbrand`
--

CREATE TABLE `ctbrand` (
  `id` int(255) NOT NULL,
  `id_brand` int(255) NOT NULL,
  `id_category` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctbrand`
--

INSERT INTO `ctbrand` (`id`, `id_brand`, `id_category`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 4),
(8, 3, 4),
(9, 7, 4),
(10, 1, 3),
(11, 2, 3),
(12, 6, 3),
(13, 2, 1),
(14, 2, 1),
(15, 1, 1),
(16, 4, 4),
(17, 3, 1),
(18, 3, 1),
(19, 1, 2),
(20, 2, 2),
(21, 2, 2),
(22, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthd`
--

CREATE TABLE `cthd` (
  `id` int(255) NOT NULL,
  `id_hoadon` int(255) NOT NULL,
  `id_spc` int(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cthd`
--

INSERT INTO `cthd` (`id`, `id_hoadon`, `id_spc`, `id_user`, `quantity`, `price`) VALUES
(1, 1, 1, 2, 2, 500000),
(2, 1, 4, 2, 10, 800000),
(3, 2, 1, 3, 1, 5000000),
(4, 2, 4, 3, 4, 1800000),
(5, 3, 7, 5, 11, 2000000),
(6, 4, 6, 1, 2, 20000000),
(7, 5, 8, 1, 2, 31000000),
(8, 6, 5, 1, 2, 25990000),
(9, 6, 1, 1, 1, 21790000),
(10, 7, 12, 1, 1, 3490000),
(11, 7, 5, 1, 1, 25990000),
(12, 8, 5, 3, 1, 25990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctpn`
--

CREATE TABLE `ctpn` (
  `id` int(255) NOT NULL,
  `id_phieunhap` int(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctpn`
--

INSERT INTO `ctpn` (`id`, `id_phieunhap`, `quantity`, `price`) VALUES
(1, 1, 20, 300000000),
(2, 2, 123, 123),
(3, 3, 123, 123),
(4, 4, 12, 12),
(5, 5, 123, 123),
(6, 6, 123, 12333),
(7, 7, 1234, 1234),
(8, 8, 123, 123123),
(9, 9, 123, 123),
(10, 10, 123, 555555),
(11, 11, 123, 333333);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctpx`
--

CREATE TABLE `ctpx` (
  `id` int(255) NOT NULL,
  `id_phieuxuat` int(255) NOT NULL,
  `id_spncc` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctpx`
--

INSERT INTO `ctpx` (`id`, `id_phieuxuat`, `id_spncc`, `quantity`, `price`) VALUES
(1, 1, 1, 10, 5000000),
(2, 2, 2, 5, 15000000),
(3, 3, 10, 8, 14390000),
(4, 4, 20, 6, 123),
(5, 5, 1, 6, 17890000),
(6, 6, 21, 3, 1234),
(7, 7, 21, 1, 55555),
(8, 8, 21, 2, 55555),
(9, 9, 21, 1, 55555),
(10, 10, 21, -4, 55555),
(11, 11, 21, 1227, 55555),
(12, 12, 20, -5, 123),
(13, 13, 1, 3, 21790000),
(14, 14, 1, -1, 21790000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `phone`, `address`, `createdAt`, `updatedAt`, `status`) VALUES
(1, '0327037177', 'ABC/123456', '2023-10-20 18:16:12.000000', '2023-09-22 14:53:33.000000', 4),
(2, '0357977736', 'BCD/455', '2023-09-27 18:16:12.000000', '2023-10-13 14:53:38.000000', 4),
(3, '0523716041', '123ABC', '2023-10-12 20:46:34.000000', '2023-11-09 14:53:43.000000', 4),
(4, '0789123782', '123a nguyễn lâm', '2023-11-21 12:57:40.000000', '2023-11-21 12:57:40.000000', 1),
(5, '0789123782', '123A Hải', '2023-11-21 17:18:11.000000', '2023-11-21 17:18:11.000000', 1),
(6, '0789123782', 'DCMM Hưng ơi check ẩu quá', '2023-11-21 17:22:28.000000', '2023-11-21 17:22:28.000000', 1),
(7, '0789123782', 'abc', '2023-11-24 21:57:15.000000', '2023-11-24 21:57:15.000000', 1),
(8, '0357977738', 'ccccc', '2023-11-24 22:14:26.000000', '2023-11-24 22:14:26.000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `discount`, `code`) VALUES
(1, 20, 'MAGIAM20'),
(2, 15, 'MAGIAM15'),
(3, 50, 'MAGIAM50'),
(4, 47, 'MAGIAM47'),
(5, 17, 'MAGIAM17'),
(6, 45, 'MAGIAM45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `status` int(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `name`, `phone`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Samsung', '357845612', 1, '2023-09-27 18:21:43.000000', '2023-09-27 18:21:43.000000'),
(2, 'Apple', '478944541', 1, '2023-09-27 18:22:36.000000', '2023-09-27 18:22:36.000000'),
(3, 'ncc', '0328321810', 0, '2023-11-07 09:12:00.000000', '2023-11-07 09:12:00.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Nhân viên', 1),
(3, 'Khách hàng', 1),
(4, 'ccc', 1),
(5, 'hehee', 0),
(6, 'delivery', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` int(11) NOT NULL,
  `id_ncc` int(255) NOT NULL,
  `createdAT` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `id_ncc`, `createdAT`) VALUES
(1, 1, '2023-10-22 20:51:14.000000'),
(2, 2, '2023-09-27 18:25:10.000000'),
(3, 1, '2023-09-27 18:25:24.000000'),
(4, 2, '2023-09-27 18:25:35.000000'),
(5, 1, '2023-11-07 09:01:39.000000'),
(6, 2, '2023-11-07 09:02:24.000000'),
(7, 2, '2023-11-07 09:03:05.000000'),
(8, 1, '2023-11-23 18:51:30.000000'),
(9, 2, '2023-11-23 18:53:43.000000'),
(10, 2, '2023-11-23 18:53:53.000000'),
(11, 2, '2023-11-23 18:55:28.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` int(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`id`, `createdAt`) VALUES
(1, '2023-09-27 18:25:52.000000'),
(2, '2023-09-27 18:25:59.000000'),
(3, '2023-09-27 18:26:09.000000'),
(4, '2023-11-07 09:04:18.000000'),
(5, '2023-11-23 18:35:05.000000'),
(6, '2023-11-23 18:38:43.000000'),
(7, '2023-11-23 18:39:04.000000'),
(8, '2023-11-23 18:41:57.000000'),
(9, '2023-11-23 18:42:35.000000'),
(10, '2023-11-23 18:45:03.000000'),
(11, '2023-11-23 18:49:55.000000'),
(12, '2023-11-23 19:11:51.000000'),
(13, '2023-11-24 22:38:03.000000'),
(14, '2023-11-24 22:38:23.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamchinh`
--

CREATE TABLE `sanphamchinh` (
  `id` int(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(255) NOT NULL,
  `id_spncc` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamchinh`
--

INSERT INTO `sanphamchinh` (`id`, `quantity`, `price`, `id_spncc`, `rating`, `discount`) VALUES
(2, 30, 17000000, '2', 9.5, 10),
(3, 10, 26990000, '3', 9.5, 5),
(4, 10, 20000000, '4', 8, 5),
(5, 4, 25990000, '5', 8.5, 3),
(6, 3, 20000000, '6', 8.5, 3),
(7, 10, 23990000, '7', 8.5, 5),
(8, 3, 31000000, '8', 9, 3),
(9, 10, 7490000, '9', 8, 10),
(10, 10, 14390000, '10', 9.5, 6),
(11, 10, 9790000, '11', 8.5, 30),
(12, 4, 3490000, '12', 8.5, 30),
(13, 10, 1190000, '13', 8.5, 20),
(14, 10, 5700000, '14', 9.5, 7),
(15, 5, 3100000, '15', 8.5, 20),
(16, 5, 2485000, '16', 9.5, 10),
(17, 5, 890000, '17', 8.5, 10),
(18, 10, 24190000, '18', 9.5, 10),
(19, 10, 14490000, '19', 8.5, 0),
(20, 1, 123, '20', 0, 0),
(21, 1230, 55555, '21', 10, 20),
(22, 2, 21790000, '1', 10, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spncc`
--

CREATE TABLE `spncc` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_ctbrand` int(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_producer` int(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `spncc`
--

INSERT INTO `spncc` (`id`, `name`, `id_ctbrand`, `description`, `updatedAt`, `origin`, `quantity`, `price`, `image`, `id_producer`, `image1`, `image2`, `image3`) VALUES
(1, 'Samsung Galaxy S23 Ultra 5G 256GB', 1, 'ngon bổ rẻ', '2023-09-27 18:27:53.000000', 'South Korea', 7, 21790000, 'https://promart.vteximg.com.br/arquivos/ids/7284532-1000-1000/image-2744b4b532e343529b324ea78202d435.jpg?v=638248775702800000\r\n', 1, 'https://d1rlzxa98cyc61.cloudfront.net/catalog/product/cache/1801c418208f9607a371e61f8d9184d9/d/m/dm3_s23_ultra_green_2023_4_1.jpg\r\n\r\n', 'https://media-cdn.bnn.in.th/269587/Samsung-Smartphone-Galaxy-S23-Ultra-5G-7-square_medium.jpg', 'https://csdam.net/digitalcontent/0/4973/49736201.jpg'),
(2, 'Iphone 11 pro max', 2, 'ngon bổ rẻ', '2023-09-27 18:32:00.000000', 'USA', 15, 15000000, 'https://www.icentre.hu/userfiles/termekek/9463-iphone-11-pro-max-sg-2.jpg', 2, 'https://www.certifiedtechdirect.com/assets/alt_3/IPHA2218GRN64GBN.jpg?20220808112321', 'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-11-pro-max/iphone-11-pro-max-space-gray-front.jpg', 'https://i.ebayimg.com/images/g/7h0AAOSwL8lkUmH6/s-l1200.webp'),
(3, 'Iphone 13 pro max', 2, 'ngon bổ rẻ', '2023-10-02 11:37:56.000000', 'USA', 20, 25000000, 'https://www.labtech.dk/image.php?mwidth=1000&mheight=1000&filename=/upload/globalicecat/APPLE/MLLF3QN_A/93841439_3439300548.jpg&type=jpg', 2, 'https://mrcellular.co.il/wp-content/uploads/2022/05/3CUfbE75ZA6CLoYTE49vvzE29effXchDx8k7S6TJ.jpg', 'https://media-cdn.bnn.in.th/140559/iPhone_13_Pro_Max_Graphite_2-square_medium.jpg', 'https://media-cdn.bnn.in.th/140562/iPhone_13_Pro_Max_Graphite_5-square_medium.jpg'),
(4, 'Oppo Find X3 Pro', 3, 'ngon bổ rẻ', '2023-10-01 11:52:20.000000', 'USA', 20, 21490000, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_27526/oppo-find-x3-pr_multi_5_523_450.png.webp', 2, 'https://www.negoce.ci/974-large_default/oppo-find-x3-pro-12256gb.jpg', 'https://product.hstatic.net/200000458129/product/upload_8ae1620283964f5881f7191947261e75.jpg', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/7/18/8889bda2-1660-441f-9dc7-0a72ee093c67.jpg'),
(5, 'Dell Vostro 5620 i7', 4, 'ngon bổ rẻ', '2023-10-01 12:00:20.000000', 'USA', 6, 27990000, 'https://kimlongcenter.com/upload/product/dell-vostro-5620-v6i5001w1-1.jpg', 2, 'https://chinhnhan.vn/uploads/product/laptop/Dell/dell-vostro-5620-p117f001agr.jpg', 'https://songphuong.vn/Content/uploads/2022/07/Laptop-Dell-Vostro-5620-P117F001AGR-songphuong.vn-04.jpg', 'https://product.hstatic.net/200000710483/product/22143_laptop_dell_vostro_5620_70296963_3_890c2fe74fd249b4b91918d969c2c25d.jpg'),
(6, 'Asus TUF Gaming F15 FX506LHB i5', 6, 'ngon bổ rẻ', '2023-10-01 12:01:12.000000', 'USA', 8, 20990000, 'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/07/18/image-removebg-preview-2_637937503478936645.png', 2, 'https://file.hstatic.net/1000026716/file/gearvn-laptop-asus-tuf-gaming-f15-fx506lhb-hn188w-3_372926b825b14dbd9baebac3b273c60b.png', 'https://img1.datcart.com/wp-content/uploads/2021/01/ASUS_TUF_Gaming_F15_FX506LU-HN146T_FX506LU-HN146T_image_5-510x510.jpg', 'https://www.tncstore.vn/image/cache/catalog/laptop/asus/TUF%20A17/laptop-asus-tuf-a17-1-500x500.jpg'),
(7, 'Samsung Galaxy S21', 1, 'ngon bổ rẻ', '2023-10-01 12:05:00.000000', 'South Korea', 20, 25990000, 'https://mobileworld.com.vn/uploads/product/12_2020/galaxy-s21-ultra-5g-128gb-moi-100-fullbox-ban-my-2sim-chip-snapdragon-888-1.png', 1, 'https://www.samsungshop.tn/18105-large_default/galaxy-s21-ultra-5g-prix-tunisie.jpg', 'https://hd2.tudocdn.net/952960?w=550&h=550', 'https://www.mobhi.it/23156-home_default/Array.jpg'),
(8, 'MacBook Ari M2', 5, 'ngon bổ rẻ', '2023-10-01 12:07:14.000000', 'USA', 8, 32990000, 'https://st1.myideasoft.com/idea/dw/66/myassets/products/368/apple-macbook-air-13-m1-8gb-256gb-ssd-silver-52056.jpeg?revision=1695022850', 2, 'https://futureworld.com.vn/media/catalog/product/cache/4dbf4504e0d2fdef53ffcd9886d02b04/m/a/macbook_air_m2_silver_pdp_image_position-3__vn_1_1.jpg', 'https://img2.cgtrader.com/items/3906966/0a392fe230/large/apple-macbook-air-m2-silver-2022-3d-model-max-obj-3ds-fbx-blend-dae.jpg', 'https://i.pinimg.com/736x/05/b8/d5/05b8d552c1e280fc830acada5d353e94.jpg'),
(9, 'iPad 9 WiFi 64GB', 9, 'MÃ n hÃ¬nh: 10.2\"Retina IPS LCD%%Há»‡ Ä‘iá»u hÃ nh: iPadOS 15%%Chip: Apple A13 Bionic%%RAM: 3 GB%%Dung lÆ°á»£ng lÆ°u trá»¯: 64 GB%%Káº¿t ná»‘i: Nghe gá»i qua FaceTime%%Camera sau: 8 MP%%Camera trÆ°á»›c: 12 MP%%Pin, Sáº¡c: 32.4 Wh (~ 8600 mAh)20 W', '2023-10-09 18:50:13.000000', 'USA', 15, 7490000, 'https://songtuanmobile.vn/uploads/Ipad/GEN_9/ipad-gen-9-wifi-gray.jpg', 2, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_32081/may-tinh-bang-i_multi_2_942_450.png.webp', 'https://d2j6dbq0eux0bg.cloudfront.net/images/20081222/2409988304.jpg', 'https://buytec.it/cdn/shop/files/apple-apple-ipad-pro-2020-11-wi-fi-cell-4g-256-gb-space-gray-mxe42ty-a-b-mxe42ty-a-b2-50258298437961_1200x1200.jpg?v=1689612236'),
(10, 'iPad Air 5 M1 WiFi 64GB', 9, 'MÃ n hÃ¬nh: 10.9\"Retina IPS LCD%%Há»‡ Ä‘iá»u hÃ nh: iPadOS 15%%Chip: Apple M1%%RAM: 8 GB%%Dung lÆ°á»£ng lÆ°u trá»¯: 64 GB%%Káº¿t ná»‘i: Nghe gá»i qua FaceTime%%Camera sau: 12 MP%%Camera trÆ°á»›c: 12 MP%%Pin, Sáº¡c: 28.6 Wh (~ 7587 mAh)20 W', '2023-10-09 19:00:46.000000', 'USA', 15, 14390000, 'https://phucanhcdn.com/media/product/46977_tab_app_ip109w_2021_64g_gr.jpg', 2, 'https://cdn-ipoint.waugi.com.ar/20993-thickbox_default/109-inch-ipad-air-wi-fi-cellular-64gb-space-grey.jpg', 'https://api.shopdx.vn/file//Upload/Images/Orther/Orther637989168314840004.png', 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92483345/mobile_786_587_png/APPLE-5.-Nesil-10.9%22-256GB-iPad-Air-Wi-Fi-Tablet-Uzay-Grisi-MM9L3TU-A'),
(11, 'Samsung Galaxy Tab S7 FE 4G', 7, 'MÃ n hÃ¬nh:12.4\"TFT LCD%%Há»‡ Ä‘iá»u hÃ nh:Android 11\r\n%%Chip:Snapdragon 750G%%RAM:4 GB%%Dung lÆ°á»£ng lÆ°u trá»¯:64 GB%%Káº¿t ná»‘i:Há»— trá»£ 4G, CÃ³ nghe gá»i%%SIM:1 Nano SIM%%Camera sau:8 MP%%Camera trÆ°á»›c:5 MP\r\n%%Pin, Sáº¡c:10090 mAh45 W', '2023-10-09 19:12:36.000000', 'South Korea', 10, 9790000, 'https://img.ws.mms.shopee.vn/72148edd9f65a97b93a9c049a74e45e1', 2, 'https://www.anhkhoamobile.vn/Uploads/images/Product/2022/11/Tab%20S7%20FE%202_1113.jpg', 'https://cdn.tgdd.vn/Products/Images/2102/251693/bao-da-khong-ban-phim-samsung-galaxy-tab-s7-fe-600x600.jpg', 'https://media.ldlc.com/r1600/ld/products/00/05/85/68/LD0005856861_1_0005856866.jpg'),
(12, 'Bluetooth Samsung Galaxy Buds 2 \r\nPro R510N', 10, 'Thá»i gian tai nghe: DÃ¹ng 5 giá» - Sáº¡c Khoáº£ng 70 phÃºt%%Thá»i gian há»™p sáº¡c: DÃ¹ng 23 giá» - Sáº¡c Khoáº£ng 130 phÃºt%%Cá»•ng sáº¡c: Type-CSáº¡c khÃ´ng dÃ¢y%%CÃ´ng nghá»‡ Ã¢m thanh: Active Noise Cancelling, 360 Reality Audio, Ambient Sound, Ã‚m thanh Hi-Fi%%TÆ°Æ¡ng thÃ­ch: Android, iOS(iPhone), Windows%%á»¨ng dá»¥ng káº¿t ná»‘i: SmartThings%%Tiá»‡n Ã­ch: Chá»‘ng nÆ°á»›c IPX7, Há»— trá»£ sáº¡c khÃ´ng dÃ¢y Qi, Sáº¡c nhanh, Chá»‘ng á»“n chá»§ Ä‘á»™ng ANC, 3 Micro chá»‘ng á»“n%5Há»— trá»£ káº¿t ná»‘i: Bluetooth 5.3%%Äiá»u khiá»ƒn báº±ng: Cáº£m á»©ng cháº¡m', '2023-10-09 19:28:36.000000', 'South Korea', 4, 3490000, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_31576/tai-nghe-blueto_main_617_1020.png.webp', 1, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_31576/tai-nghe-blueto_multi_5_706_450.png.webp', 'https://cf.shopee.vn/file/vn-11134207-7qukw-ljl61l3rc050ea', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/344/561/products/tai-nghe-bluetooth-true-wireless-galaxy-buds2-pro-tim-5.jpg?v=1668763402670'),
(13, 'Adapter USB Type C PD 65W Samsung EP-T6530', 10, 'Model: EP-T6530%%Chá»©c nÄƒng: Sáº¡c%%Äáº§u vÃ o: AC 100-240V%%Äáº§u ra: USB (5V - 2A, 9V - 1.67A (Max 15W)), Type-C1 - PDO (5V - 3A, 9V - 3A, 15V - 3A, 20V - 3.25A (Max 65W)), Type-C1 - PPS (SFC 2.0 - Max 45W)), Type-C2 - PDO (5V - 3A, 9V - 2.77A (Max 25W)), Type-C2 - PPS (SFC 25W)%%DÃ²ng sáº¡c tá»‘i Ä‘a: 65 W%%KÃ­ch thÆ°á»›c: DÃ i 10.8 cm - Ngang 5.2 cm - Cao 3 cm%%CÃ´ng nghá»‡/Tiá»‡n Ã­ch: Power Delivery%Sáº£n xuáº¥t táº¡i: Viá»‡t Nam', '2023-10-09 19:36:16.000000', 'South Korea', 10, 1190000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/ep-t6530nbegww/gallery/vn-65w-power-adapter-trio-ep-t6530-ep-t6530nbegww-531251127?$720_576_JPG$', 1, 'https://images.samsung.com/is/image/samsung/p6pim/vn/ep-t6530nbegww/gallery/vn-65w-power-adapter-trio-ep-t6530-ep-t6530nbegww-531250724?$650_519_PNG$', 'https://tabletplaza.vn/images/thumbnails/1125/800/detailed/21/adapter-sac-nhanh-65w-samsung-trio-ep-t6530n-3.jpg', 'https://bachlongmobile.com/media/catalog/product/cache/2/image/040ec09b1e35df139433887a97daa66f/s/a/sac-samsung-chinh-hang-65-w-1.jpg'),
(14, 'Bluetooth AirPods Pro (2nd Gen)', 11, 'Thá»i gian tai nghe: DÃ¹ng 6 giá»%%Thá»i gian há»™p sáº¡c: DÃ¹ng 30 giá»%%Cá»•ng sáº¡c: Lightning, Sáº¡c khÃ´ng dÃ¢y Qi, Sáº¡c MagSafe%%CÃ´ng nghá»‡ Ã¢m thanh: Adaptive EQ, Active Noise Cancellation, Chip Apple H2%%TÆ°Æ¡ng thÃ­ch: Android, iOS, Windows%%Tiá»‡n Ã­ch: Chá»‘ng nÆ°á»›c IPX4, Sáº¡c khÃ´ng dÃ¢y, CÃ³ mic thoáº¡i, Sáº¡c nhanh, Chá»‘ng á»“n chá»§ Ä‘á»™ng ANC, Trá»£ lÃ½ áº£o Siri%%Há»— trá»£ káº¿t ná»‘i: Bluetooth 5.3%%Äiá»u khiá»ƒn báº±ng: Cáº£m á»©ng cháº¡m', '2023-10-09 19:48:57.000000', 'USA', 10, 5700000, 'https://cdn.mediamart.vn/images/product/apple-tai-nghe-bluetooth-airpod-pro-2-mqd83---chinh-hang_f6cb28f6.jpg', 2, 'https://ducnguyenstore.com/assets/shops/2021_11/airpods-pro-2-600x600.jpeg', 'https://cdn2.cellphones.com.vn/x/media/catalog/product/5/_/5_167.jpg', 'https://didongthongminh.vn/upload_images/images/2022/09/13/6(1).jpg'),
(15, 'Apple Pencil (gen 2)', 11, 'Thá»i gian sáº¡c Ä‘áº§y: Khoáº£ng 45 phÃºt%%KÃ­ch thÆ°á»›c: DÃ i 16.6 cm - ÄÆ°á»ng kÃ­nh 0.89 cm%%Khá»‘i lÆ°á»£ng: Khoáº£ng 20.7 g%%Thá»i gian sá»­ dá»¥ng pin: Khoáº£ng 4 tiáº¿ng%%TÆ°Æ¡ng thÃ­ch thiáº¿t bá»‹: iPad mini 6, iPad Pro 12.9 inch (Gen 3,4,5,6), iPad Pro 11 inch (Gen 1,2,3,4), iPad Air (Gen 4,5)%%Bluetooth: CoÌ%%CÃ¡ch káº¿t ná»‘i: Sáº¡c nam chÃ¢m vá»›i iPad Pro', '2023-10-09 19:55:19.000000', 'USA', 5, 3100000, 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MK0C2?wid=4000&hei=4000&fmt=jpeg&qlt=95&.v=1564075356758', 2, 'https://m.media-amazon.com/images/I/51c1l--SS0L._AC_UF894,1000_QL80_.jpg', 'https://macstore.id/wp-content/uploads/2017/08/orig.jpeg', 'https://easymac.co/wp-content/uploads/2021/06/Apple-Pencil-primera-generacion-3.jpg'),
(16, 'Chuá»™t Bluetooth Gaming ASUS ROG Gladius III', 12, 'TÆ°Æ¡ng thÃ­ch: Windows%%Äá»™ phÃ¢n giáº£i: 26000 DPI\r\nCÃ¡ch káº¿t ná»‘i: Äáº§u thu USB Receiver, Bluetooth, DÃ¢y cáº¯m USB%%Äá»™ dÃ i dÃ¢y / Khoáº£ng cÃ¡ch káº¿t ná»‘i: 10 m%%ÄÃ¨n LED: RGB%%á»¨ng dá»¥ng Ä‘iá»u khiá»ƒn: Armoury Crate%%Loáº¡i pin: Pin sáº¡c%%Thá»i gian: DÃ¹ng 85 giá»%%Cá»•ng sáº¡c: USB Type-C%%Trá»ng lÆ°á»£ng: 89 g', '2023-10-09 20:00:59.000000', 'USA', 5, 2485000, 'https://cdn.tgdd.vn/Products/Images/86/309762/chuot-bluetooth-gaming-asus-rog-gladius-iii-1.jpg', 2, 'https://gearshop.vn/upload/images/Product/Asus/Chu%E1%BB%99t/ROG%20GLADIUS%20II%20CORE/ROG-GLADIUS-II-CORE-(3).png', 'https://product.hstatic.net/1000333506/product/h732__2__1e9c0550507a41e9a7f3d2959c19a615_e25a9adc294d47cb993b5e494e65bbc0.png', 'https://www.tncstore.vn/image/cache/catalog/chu%E1%BB%99t/Asus/ROG%20Gladius%20III%20Wireless%20Aimpoint%20Black/chuot-khong-day-asus-rog-gladius-iii-wireless-aimpoint-black-3-500x500.jpg'),
(17, 'BÃ n PhÃ­m Gaming Asus TUF K1', 12, 'TÆ°Æ¡ng thÃ­ch: Windows%%CÃ¡ch káº¿t ná»‘i: DÃ¢y cáº¯m USB%%Äá»™ dÃ i dÃ¢y / Khoáº£ng cÃ¡ch káº¿t ná»‘i: 1.8 m%%Loáº¡i switch: KhÃ´ng%%Kiá»ƒu bÃ n phÃ­m: Full size%%Sá»‘ phÃ­m: 104 PhÃ­m%%ÄÃ¨n LED: RGB%%Pháº§n má»m há»— trá»£ : Armoury Crate%%KÃ­ch thÆ°á»›c: Náº·ng 810 g (bÃ n phÃ­m)', '2023-10-09 20:06:22.000000', 'USA', 5, 890000, 'https://cdn.tgdd.vn/Products/Images/4547/279466/co-day-gaming-asus-tuf-k1-1.jpg', 2, 'https://cdn.tgdd.vn/Products/Images/4547/279466/co-day-gaming-asus-tuf-k1-2.jpg', 'https://www.asus.com/media/global/gallery/eba7pwpyylqszfhv_setting_xxx_0_90_end_2000.png', 'https://bizweb.dktcdn.net/thumb/grande/100/410/941/products/3-1f66664d-2c22-4888-9d7a-653ed655bd7d.jpg?v=1634717135340'),
(18, 'Dell Inspiron 16 5620 i7', 4, 'CPU: i71255U1.7GHz%%RAM: 8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rá»i)3200 MHz%%á»” cá»©ng: 512 GB SSD NVMe PCIe%%MÃ n hÃ¬nh: 16\"Full HD+ (1920 x 1200)%%Card mÃ n hÃ¬nh: Card tÃ­ch há»£pIntel UHD%%Cá»•ng káº¿t ná»‘i: HDMIJack tai nghe 3.5 mmUSB Type-C (Power Delivery and DisplayPort)2 x USB 3.2%%Äáº·c biá»‡t: CÃ³ Ä‘Ã¨n bÃ n phÃ­m%%Há»‡ Ä‘iá»u hÃ nh: Windows 11 Home SL + Office Home & Student vÄ©nh viá»…n%%Thiáº¿t káº¿: Vá» kim loáº¡i%%KÃ­ch thÆ°á»›c, khá»‘i lÆ°á»£ng: DÃ i 356.7 mm - Rá»™ng 251.9 mm - DÃ y 17.95 mm - Náº·ng 1.87 kg%%Thá»i Ä‘iá»ƒm ra máº¯t: 2022', '2023-10-09 09:20:29.000000', 'USA', 10, 24190000, 'https://www.dellonline.co.za/cdn/shop/products/D3C18545-0E93-44D1-BDD9-41C8678DD81B_124966_800x.jpg?v=1664196836', 2, 'https://lh3.googleusercontent.com/9zAUmOdErwl-D-QEtk1SVF-ac9a33LQqhAKFIBEvDccPZg12j4rLZrs84k4q6BCXy8VzVRo55gstTuUhOnw3twhxnZg3wC5o=rw\r\n', 'https://images.thinkgroup.vn/unsafe/686x686/https://media-api-beta.thinkpro.vn/media/core/products/2022/5/27/Dell%20Inspiron%2016%205620%204.png', 'https://bizweb.dktcdn.net/thumb/large/100/362/971/products/odinn516adl2301-6009-m2c-traditional-laptops-34933317304484-800x-8555db49-3bbd-4b06-950e-e688b442e38d.webp?v=1679110759233'),
(19, 'Samsung Galaxy S23 FE 5G', 1, 'MÃ n hÃ¬nh: Dynamic AMOLED 2X6.4\"Full HD+%%Há»‡ Ä‘iá»u hÃ nh: Android 13%%Camera sau: ChÃ­nh 50 MP & Phá»¥ 12 MP, 8 MP%%Camera trÆ°á»›c: 10 MP\r\nChip: Exynos 2200 8 nhÃ¢n%%RAM: 8 GB%%Dung lÆ°á»£ng lÆ°u trá»¯: 128 GB%%SIM: 2 Nano SIM hoáº·c 1 Nano SIM + 1 eSIM, Há»— trá»£ 5G%%Pin, Sáº¡c: 4500 mAh25 W', '2023-10-09 09:31:14.000000', 'South Korea', 10, 14490000, 'https://lequanmobile.com/wp-content/uploads/2023/08/Samsung-Tab-S9-Plus-5G-4.png', 1, 'https://images.frandroid.com/wp-content/uploads/2023/06/galaxy-s23-fe-2.jpeg', 'https://www.journaldugeek.com/content/uploads/2023/06/galaxy-s23-fe-3.jpg', 'https://congngheviet.com/wp-content/uploads/2023/06/Galaxy-S23-FE-render-02.webp'),
(20, 'kha', 16, 'edfgh', '2023-11-07 09:01:40.000000', 'Ã¡d', 122, 123, 'gff', 1, 'dfsdg', 'dfg', 'dfdg'),
(21, 'nccc', 18, '1234', '2023-11-07 09:03:05.000000', 'nccc', 4, 1234, '1234', 2, '1234', '1234', '1234'),
(24, 'cc', 19, '123', '2023-11-23 18:51:30.000000', 'cc', 123, 123123, '123', 1, '123', '123', '123'),
(25, 'hhhh', 22, 'hhhhh', '2023-11-23 18:55:28.000000', 'hhhh', 123, 333333, '123', 2, '123', '123', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`id`, `name`) VALUES
(0, 'Khóa'),
(1, 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`id`, `name`) VALUES
(1, 'Đang xác nhận'),
(2, 'Đang chuẩn bị'),
(3, 'Đang giao'),
(4, 'Đã giao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `phone`, `pass`, `name`, `createdAt`, `updatedAt`, `status`, `type`) VALUES
(1, '0789123782', 'namhai1617', 'Kha top 1', '2023-09-27 09:57:44.000000', '2023-11-24 21:56:20.000000', 1, 1),
(2, '0327037176', 'hai1234', 'aaaaa', '2023-09-27 09:57:44.000000', '2023-11-09 11:14:44.000000', 1, 1),
(3, '0357977738', 'Kha123', 'Hải', '2023-09-27 09:59:44.000000', '2023-09-27 09:59:44.000000', 1, 2),
(4, '4', '4', '4', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 2),
(5, '1234567890', 'password123', 'Hải', '2023-10-22 16:08:09.000000', '2023-10-22 16:08:09.000000', 1, 1),
(6, 'a', 'a', 'Hải', '2023-10-22 16:41:57.000000', '2023-10-22 16:41:57.000000', 1, 1),
(7, 'cc', 'c', 'Hải', '2023-10-22 16:48:13.000000', '2023-10-29 21:44:56.000000', 1, 3),
(8, 'c', 'c', 'Hải', '2023-10-22 16:48:46.000000', '2023-10-22 16:48:46.000000', 1, 3),
(9, 'd', 'd', 'Hải', '2023-10-22 16:59:10.000000', '2023-10-22 16:59:10.000000', 1, 1),
(10, 'en', 'bbb', 'Háº£i', '2023-10-22 20:03:29.000000', '2023-11-01 23:43:03.000000', 0, 1),
(11, '0523716043', 'aa', 'Hải', '2023-10-23 16:03:12.000000', '2023-10-29 21:41:50.000000', 1, 3),
(12, 'ccc', 'vcdammit', 'e', '2023-10-23 16:05:02.000000', '2023-10-23 22:05:52.000000', 0, 3),
(13, '123', '123', 'Hải', '2023-10-30 21:05:45.000000', '2023-10-30 21:05:45.000000', 1, 1),
(14, 'khatop', 'khatop', 'khaa', '2023-11-01 14:34:29.000000', '2023-11-01 14:34:47.000000', 0, 1),
(15, '0523716041', 'hhha', 'hhh', '2023-11-03 10:09:50.000000', '2023-11-03 10:09:50.000000', 1, 1),
(16, '0978643342', 'namhai1617', 'nam háº£i', '2023-11-03 10:22:49.000000', '2023-11-03 10:22:49.000000', 1, 1),
(17, '0978643348', '123', 'kha8', '2023-11-07 09:15:51.000000', '2023-11-07 09:15:51.000000', 1, 1),
(18, '0978643340', 'namhai1617', 'nnnnnn', '2023-11-09 10:52:07.000000', '2023-11-09 10:52:07.000000', 1, 1),
(19, '0327037172', 'namhai1777', 'hải', '2023-11-09 10:58:14.000000', '2023-11-09 10:58:14.000000', 1, 1),
(22, '0983852614', '123123', 'aaaaa', '2023-11-13 22:31:36.000000', '2023-11-13 22:31:36.000000', 1, 3),
(23, '0789123789', 'hung12', 'nam hai', '2023-11-19 22:25:29.000000', '2023-11-20 21:58:01.000000', 1, 3),
(24, '0789123786', '123456', 'aaaaa', '2023-11-19 22:27:07.000000', '2023-11-19 22:27:07.000000', 1, 3),
(25, '0983852617', 'namhai1617', 'hải', '2023-11-20 11:39:25.000000', '2023-11-20 11:43:48.000000', 1, 3),
(26, '0983852666', 'namhai1617', 'hai', '2023-11-23 22:40:58.000000', '2023-11-23 22:40:58.000000', 1, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietmagiamgia`
--
ALTER TABLE `chitietmagiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ctbrand`
--
ALTER TABLE `ctbrand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ctpn`
--
ALTER TABLE `ctpn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ctpx`
--
ALTER TABLE `ctpx`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphamchinh`
--
ALTER TABLE `sanphamchinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `spncc`
--
ALTER TABLE `spncc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
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
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chitietmagiamgia`
--
ALTER TABLE `chitietmagiamgia`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ctbrand`
--
ALTER TABLE `ctbrand`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `cthd`
--
ALTER TABLE `cthd`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `ctpn`
--
ALTER TABLE `ctpn`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `ctpx`
--
ALTER TABLE `ctpx`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `sanphamchinh`
--
ALTER TABLE `sanphamchinh`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `spncc`
--
ALTER TABLE `spncc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
