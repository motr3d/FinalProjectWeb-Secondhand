-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2021 pada 01.19
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secondhandsell`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `dptkategori` (IN `cid` INT)  SELECT * FROM kategori WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(100) NOT NULL,
  `kategori_barang` int(100) NOT NULL,
  `merek_barang` int(100) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `deskripsi_barang` text NOT NULL,
  `gambar_barang` text NOT NULL,
  `katakunci_barang` text NOT NULL,
  `gambar_barang2` varchar(1000) DEFAULT NULL,
  `gambar_barang3` varchar(1000) DEFAULT NULL,
  `gambar_barang4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kategori_barang`, `merek_barang`, `nama_barang`, `harga_barang`, `deskripsi_barang`, `gambar_barang`, `katakunci_barang`, `gambar_barang2`, `gambar_barang3`, `gambar_barang4`) VALUES
(1, 1, 2, 'Samsung Galaxy S7 Edge ', 3500000, 'Samsung', 's7edge1.jpg\r\n', 'Samsung Galaxy S Series', 's7edge2.jpg', 's7edge3.jpg', 's7edge4.jpg'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'http___pluspng.com_img-png_iphone-hd-png-iphone-apple-png-file-550.png', 'mobile iphone apple', NULL, NULL, NULL),
(3, 1, 3, 'iPad air 2', 30000, 'ipad apple brand', 'da4371ffa192a115f922b1c0dff88193.png', 'apple ipad tablet', NULL, NULL, NULL),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'http___pluspng.com_img-png_iphone-6s-png-iphone-6s-gold-64gb-1000.png', 'iphone apple mobile', NULL, NULL, NULL),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'iPad-air.png', 'ipad tablet samsung', NULL, NULL, NULL),
(6, 1, 1, 'samsung Laptop r series', 35000, 'samsung Black combination Laptop', 'laptop_PNG5939.png', 'samsung laptop ', NULL, NULL, NULL),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', 'laptop_PNG5930.png', 'Laptop Hp Pavillion', NULL, NULL, NULL),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', '530201353846AM_635_sony_xperia_z.png', 'sony mobile', NULL, NULL, NULL),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'iphone-hd-png-iphone-apple-png-file-550.png', 'iphone apple mobile', NULL, NULL, NULL),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress ', NULL, NULL, NULL),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths', NULL, NULL, NULL),
(12, 2, 6, 'Ladies Casual Cloths', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual', NULL, NULL, NULL),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress', NULL, NULL, NULL),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl', NULL, NULL, NULL),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl', NULL, NULL, NULL),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter', NULL, NULL, NULL),
(17, 3, 6, 'Gents formal', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'gents wear cloths', NULL, NULL, NULL),
(19, 3, 6, 'Formal Coat', 3000, 'ad', 'images (1).jpg', 'coat blazer gents', NULL, NULL, NULL),
(20, 3, 6, 'Mens Sweeter', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents ', NULL, NULL, NULL),
(21, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black', NULL, NULL, NULL),
(32, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture', NULL, NULL, NULL),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung', NULL, NULL, NULL),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light', NULL, NULL, NULL),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'images (2).jpg', 'Vaccum Cleaner', NULL, NULL, NULL),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron', NULL, NULL, NULL),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv lg', NULL, NULL, NULL),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven', NULL, NULL, NULL),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder', NULL, NULL, NULL),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies', NULL, NULL, NULL),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo', NULL, NULL, NULL),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo', NULL, NULL, NULL),
(47, 4, 6, 'Laptop', 650, 'nbk', 'product01.png', 'Dell Laptop', NULL, NULL, NULL),
(48, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony', NULL, NULL, NULL),
(49, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony', NULL, NULL, NULL),
(50, 3, 6, 'boys shirts', 350, 'shirts', 'pm1.JPG', 'suit boys shirts', NULL, NULL, NULL),
(51, 3, 6, 'boys shirts', 270, 'shirts', 'pm2.JPG', 'suit boys shirts', NULL, NULL, NULL),
(52, 3, 6, 'boys shirts', 453, 'shirts', 'pm3.JPG', 'suit boys shirts', NULL, NULL, NULL),
(53, 3, 6, 'boys shirts', 220, 'shirts', 'ms1.JPG', 'suit boys shirts', NULL, NULL, NULL),
(54, 3, 6, 'boys shirts', 290, 'shirts', 'ms2.JPG', 'suit boys shirts', NULL, NULL, NULL),
(55, 3, 6, 'boys shirts', 259, 'shirts', 'ms3.JPG', 'suit boys shirts', NULL, NULL, NULL),
(56, 3, 6, 'boys shirts', 299, 'shirts', 'pm7.JPG', 'suit boys shirts', NULL, NULL, NULL),
(57, 3, 6, 'boys shirts', 260, 'shirts', 'i3.JPG', 'suit boys shirts', NULL, NULL, NULL),
(58, 3, 6, 'boys shirts', 350, 'shirts', 'pm9.JPG', 'suit boys shirts', NULL, NULL, NULL),
(59, 3, 6, 'boys shirts', 855, 'shirts', 'a2.JPG', 'suit boys shirts', NULL, NULL, NULL),
(60, 3, 6, 'boys shirts', 150, 'shirts', 'pm11.JPG', 'suit boys shirts', NULL, NULL, NULL),
(61, 3, 6, 'boys shirts', 215, 'shirts', 'pm12.JPG', 'suit boys shirts', NULL, NULL, NULL),
(62, 3, 6, 'boys shirts', 299, 'shirts', 'pm13.JPG', 'suit boys shirts', NULL, NULL, NULL),
(63, 3, 6, 'boys Jeans Pant', 550, 'Pants', 'pt1.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(64, 3, 6, 'boys Jeans Pant', 460, 'pants', 'pt2.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(65, 3, 6, 'boys Jeans Pant', 470, 'pants', 'pt3.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(66, 3, 6, 'boys Jeans Pant', 480, 'pants', 'pt4.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(67, 3, 6, 'boys Jeans Pant', 360, 'pants', 'pt5.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(68, 3, 6, 'boys Jeans Pant', 550, 'pants', 'pt6.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(69, 3, 6, 'boys Jeans Pant', 390, 'pants', 'pt7.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(70, 3, 6, 'boys Jeans Pant', 399, 'pants', 'pt8.JPG', 'boys Jeans Pant', NULL, NULL, NULL),
(71, 1, 2, 'Samsung galaxy s7', 5000, 'Samsung galaxy s7', 'product07.png', 'samsung mobile electronics', NULL, NULL, NULL),
(72, 7, 2, 'sony Headphones', 3500, 'sony Headphones', 'product02.png', 'sony Headphones electronics gadgets', NULL, NULL, NULL),
(73, 7, 2, 'samsung Headphones', 3500, 'samsung Headphones', 'product05.png', 'samsung Headphones electronics gadgets', NULL, NULL, NULL),
(74, 1, 1, 'HP i5 laptop', 5500, 'HP i5 laptop', 'product01.png', 'HP i5 laptop electronics', NULL, NULL, NULL),
(75, 1, 1, 'HP i7 laptop 8gb ram', 5500, 'HP i7 laptop 8gb ram', 'product03.png', 'HP i7 laptop 8gb ram electronics', NULL, NULL, NULL),
(76, 1, 5, 'sony note 6gb ram', 4500, 'sony note 6gb ram', 'product04.png', 'sony note 6gb ram mobile electronics', NULL, NULL, NULL),
(77, 1, 4, 'MSV laptop 16gb ram NVIDEA Graphics', 5499, 'MSV laptop 16gb ram', 'product06.png', 'MSV laptop 16gb ram NVIDEA Graphics electronics', NULL, NULL, NULL),
(78, 1, 5, 'dell laptop 8gb ram intel integerated Graphics', 4579, 'dell laptop 8gb ram intel integerated Graphics', 'product08.png', 'dell laptop 8gb ram intel integerated Graphics electronics', NULL, NULL, NULL),
(79, 7, 2, 'camera with 3D pixels', 2569, 'camera with 3D pixels', 'product09.png', 'camera with 3D pixels camera electronics gadgets', NULL, NULL, NULL),
(80, 1, 1, 'ytrfdkjsd', 12343, 'sdfhgh', '1542455446_thythtf .jpeg', 'dfgh', NULL, NULL, NULL),
(81, 4, 6, 'Kids blue dress', 300, 'blue dress', '1543993724_pg4.jpg', 'kids blue dress', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_pesanan`
--

CREATE TABLE `barang_pesanan` (
  `id_barang_pesanan` int(10) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `kapasitas` int(15) DEFAULT NULL,
  `harga` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_pesanan`
--

INSERT INTO `barang_pesanan` (`id_barang_pesanan`, `id_pesanan`, `id_barang`, `kapasitas`, `harga`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(91, 2, 1, 1, 5000),
(92, 2, 3, 1, 30000),
(93, 2, 2, 1, 25000),
(94, 2, 32, 1, 2500),
(95, 3, 36, 1, 1500),
(96, 4, 3, 1, 30000),
(97, 4, 72, 1, 3500),
(98, 5, 1, 1, 5000),
(99, 5, 73, 1, 3500),
(100, 6, 3, 1, 30000),
(101, 6, 2, 1, 25000),
(102, 10, 2, 1, 25000),
(103, 11, 3, 1, 30000),
(104, 11, 2, 1, 25000),
(105, 11, 1, 1, 5000),
(106, 12, 3, 1, 30000),
(107, 13, 3, 1, 30000),
(108, 13, 2, 1, 25000),
(109, 13, 1, 1, 5000),
(110, 13, 5, 1, 10000),
(111, 14, 72, 1, 3500),
(112, 14, 73, 1, 3500),
(113, 15, 3, 1, 30000),
(114, 15, 2, 1, 25000),
(115, 15, 72, 1, 3500),
(116, 16, 1, 1, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pesanan`
--

CREATE TABLE `data_pesanan` (
  `id_pesanan` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pesanan`
--

INSERT INTO `data_pesanan` (`id_pesanan`, `user_id`, `f_name`, `email`, `alamat`, `kota`, `negara`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'gsaka', 'gsaka@gmail.com', 'Yogyakarta', 'Yogyakarta', 'Yogyakarta', 560074, 'asdefg', '4321 2345 6788 7654', '12/22', 3, 77000, 1234),
(2, 26, 'gg gg', 'gg@gmail.com', '2145 Hill Haven Drive', 'assd', 'asdaasd', 123445, 'gg', '1234123412341234', '11/22', 4, 62500, 1112),
(3, 26, 'gg gg', 'gg@gmail.com', '2145 Hill Haven Drive', 'assd', 'daad', 124544, 'ggg', '123345667', '11/22', 1, 1500, 1234),
(4, 27, 'aaaa aaaa', 'aaaa@gmail.com', '2145 Hill Haven Drive', 'aaaaaa', 'aaaaa', 123455, 'asdas', '123134324', '12/22', 2, 33500, 1122),
(5, 26, 'gg gg', 'gg@gmail.com', '2145 Hill Haven Drive', 'assd', 'aaaa', 122132, 'asdsdasa', '1222121213', '11/22', 2, 8500, 3322),
(6, 12, 'Vargen Reddy', 'gatotsasangkataka@gmail.com', '123456789', 'asdsadasds', 'asdas', 550481, 'asdas', '1233213', '12/22', 2, 55000, 2222),
(7, 12, 'Vargen Reddy', 'gatotsasangkataka@gmail.com', '123456789', 'sqwwwsq', 'dfsfew', 122333, 'asdsa', '1231231', '12/22', 5, 47399, 1231),
(8, 12, 'Vargen Reddy', 'gatotsasangkataka@gmail.com', '123456789', 'sqwwwsq', 'dfsfew', 122333, 'asdsa', '1231231', '12/22', 5, 47399, 1231),
(9, 40, 'asdasdas saddsads', 'daasdsdas@gmail.com', 'asasddas', 'sdaasdsd', 'asddsds', 121132, 'qwewewqewq', '121122223132111', '11/22', 1, 25000, 2123),
(10, 40, 'asdasdas saddsads', 'daasdsdas@gmail.com', 'asasddas', 'sdaasdsd', 'asddsds', 121132, 'qwewewqewq', '121122223132111', '11/22', 1, 25000, 2123),
(11, 40, 'asdasdas saddsads', 'daasdsdas@gmail.com', 'asasddas', 'sdaasdsd', 'aaaa', 122132, 'asdsdasa', '123322', '11/22', 3, 60000, 1232),
(12, 40, 'asdasdas saddsads', 'daasdsdas@gmail.com', '', '', '', 122132, 'dssdfdsdf', '13122122', '11/22', 1, 30000, 2222),
(13, 40, 'asdasdas saddsads', 'daasdsdas@gmail.com', '', '', '', 122132, 'asdsdasa', '12112212113212', '11/22', 4, 70000, 1221),
(14, 41, 'ostarion king', 'ostarion@gmail.com', '', '', '', 123445, 'sadsadsad', '1111111111111111', '11/22', 2, 7000, 1212),
(15, 26, 'Wesley C Porter', 'gg@gmail.com', '', '', '', 123445, 'gg', '11221', '11/22', 3, 58500, 1223),
(16, 42, 'Fahren Ridho Septiawan', 'fahren@ridho.com', '', '', '', 123456, 'fahren', '89123912313', '11/22', 1, 5000, 123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `user_id` int(10) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `no_telp` varchar(10) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `kota` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`user_id`, `nama_depan`, `nama_belakang`, `email`, `password`, `no_telp`, `alamat`, `kota`) VALUES
(12, 'Vargen', 'Reddy', 'gg@gmail.com', 'qwerty28', '9448121558', '123456789', 'sdcjns,djc'),
(26, 'gg', 'gg', 'gg@gmail.com', 'leonkers28', '1234567890', '2145 Hill Haven Drive', 'assd'),
(27, 'aaaa', 'aaaa', 'aaaa@gmail.com', 'leonkers28', '1234567890', '2145 Hill Haven Drive', 'aaaaaa'),
(28, 'vargen', 'vaugh', 'vargenvaugh@gmail.com', 'leonkers28', '1234567890', 'Wolfstein', 'Wolfstein'),
(31, 'adsdsads', 'sdaasdds', 'sadsads@gmail.com', 'leonkers28', '1234567890', 'sadasds', 'saddssd'),
(35, 'asd', 'asd', 'asd@gmail.com', 'leonkers28', '1234567890', 'adassda', 'sadsdd'),
(36, 'taka', 'jiro', 'takajiro@gmail.com', 'leonkers28', '1234567893', 'asdassd', 'sasadsd'),
(38, 'saka', 'asaka', 'sakaasak@gmail.com', 'qwerty123', '1234567890', 'sdadsds', 'addsadsa'),
(39, 'ASDSASDA', 'ASDSDASAD', 'adasd@gmail.com', 'leonkers28', '1234567890', 'asdsdasda', 'dsdadsa'),
(40, 'asdasdas', 'saddsads', 'daasdsdas@gmail.com', 'leonkers28', '1234567890', 'asasddas', 'sdaasdsd'),
(41, 'ostarion', 'king', 'ostarion@gmail.com', 'leonkers28', '1234567890', 'asdasd', 'asdasddas'),
(42, 'fahren', 'ridho', 'fahren@ridho.com', 'genossclass', '1234567890', 'jln buton', 'jogja');

--
-- Trigger `data_user`
--
DELIMITER $$
CREATE TRIGGER `after_data_user_insert` AFTER INSERT ON `data_user` FOR EACH ROW BEGIN 
INSERT INTO data_user_backup VALUES(new.user_id,new.nama_depan,new.nama_belakang,new.email,new.password,new.no_telp,new.alamat,new.kota);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user_backup`
--

CREATE TABLE `data_user_backup` (
  `user_id` int(10) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `no_telp` varchar(10) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `kota` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_user_backup`
--

INSERT INTO `data_user_backup` (`user_id`, `nama_depan`, `nama_belakang`, `email`, `password`, `no_telp`, `alamat`, `kota`) VALUES
(26, 'gg', 'gg', 'gg@gmail.com', 'qwerty28', '1234567890', '2145 Hill Haven Drive', 'assd'),
(42, 'fahren', 'ridho', 'fahren@ridho.com', 'genossclass', '1234567890', 'jln buton', 'jogja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(6, 'aaaa@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `icons` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`cat_id`, `cat_title`, `icons`) VALUES
(1, 'APA SAJA', NULL),
(2, 'B', '<i class=\"fab fa-accusoft\"></i>'),
(3, 'C', '<i class=\"fas fa-adjust\"></i>'),
(4, 'D', '<i class=\"fas fa-dot-circle\"></i>'),
(5, 'E', '\'fa-glass\''),
(6, 'F', '\'fa-glass\''),
(7, 'G', '\'fa-glass\'');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `kapasitas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `p_id`, `ip_add`, `user_id`, `kapasitas`) VALUES
(6, 26, '::1', 4, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(159, 72, '::1', 28, 1),
(172, 2, '::1', 38, 1),
(197, 2, '::1', 42, 1),
(198, 1, '::1', 42, 1),
(199, 3, '::1', -1, 1),
(200, 1, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `brand_id` int(100) NOT NULL,
  `nama_brand` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`brand_id`, `nama_brand`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'motorolla'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `barang_pesanan`
--
ALTER TABLE `barang_pesanan`
  ADD PRIMARY KEY (`id_barang_pesanan`),
  ADD KEY `barang_pesanan` (`id_barang`) USING BTREE,
  ADD KEY `id_barang` (`id_pesanan`) USING BTREE;

--
-- Indeks untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `data_user_backup`
--
ALTER TABLE `data_user_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `barang_pesanan`
--
ALTER TABLE `barang_pesanan`
  MODIFY `id_barang_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `data_user_backup`
--
ALTER TABLE `data_user_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `merek`
--
ALTER TABLE `merek`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang_pesanan`
--
ALTER TABLE `barang_pesanan`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`id_pesanan`) REFERENCES `data_pesanan` (`id_pesanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `data_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
