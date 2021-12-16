-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2021 pada 06.29
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

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
  `harga_barang` int(100) NOT NULL,
  `deskripsi_barang` text NOT NULL,
  `gambar_barang` text NOT NULL,
  `katakunci_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kategori_barang`, `merek_barang`, `nama_barang`, `harga_barang`, `deskripsi_barang`, `gambar_barang`, `katakunci_barang`) VALUES
(1, 1, 2, 'Samsung galaxy s7 edge', 5000, 'Samsung galaxy s7 edge', 'product07.png', 'samsung mobile electronics'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'http___pluspng.com_img-png_iphone-hd-png-iphone-apple-png-file-550.png', 'mobile iphone apple'),
(3, 1, 3, 'iPad air 2', 30000, 'ipad apple brand', 'da4371ffa192a115f922b1c0dff88193.png', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'http___pluspng.com_img-png_iphone-6s-png-iphone-6s-gold-64gb-1000.png', 'iphone apple mobile'),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'iPad-air.png', 'ipad tablet samsung'),
(6, 1, 1, 'samsung Laptop r series', 35000, 'samsung Black combination Laptop', 'laptop_PNG5939.png', 'samsung laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', 'laptop_PNG5930.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', '530201353846AM_635_sony_xperia_z.png', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'iphone-hd-png-iphone-apple-png-file-550.png', 'iphone apple mobile'),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress '),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths'),
(12, 2, 6, 'Ladies Casual Cloths', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress'),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl'),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter'),
(17, 3, 6, 'Gents formal', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'gents wear cloths'),
(19, 3, 6, 'Formal Coat', 3000, 'ad', 'images (1).jpg', 'coat blazer gents'),
(20, 3, 6, 'Mens Sweeter', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents '),
(21, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black'),
(22, 4, 6, 'Yellow T shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Girls cloths', 1900, 'sadsf', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Blue T shirt', 700, 'g', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Yellow girls dress', 750, 'as', 'images (3).jpg', 'yellow kids dress'),
(32, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'images (2).jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv lg'),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven'),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo'),
(47, 4, 6, 'Laptop', 650, 'nbk', 'product01.png', 'Dell Laptop'),
(48, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony'),
(49, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony'),
(50, 3, 6, 'boys shirts', 350, 'shirts', 'pm1.JPG', 'suit boys shirts'),
(51, 3, 6, 'boys shirts', 270, 'shirts', 'pm2.JPG', 'suit boys shirts'),
(52, 3, 6, 'boys shirts', 453, 'shirts', 'pm3.JPG', 'suit boys shirts'),
(53, 3, 6, 'boys shirts', 220, 'shirts', 'ms1.JPG', 'suit boys shirts'),
(54, 3, 6, 'boys shirts', 290, 'shirts', 'ms2.JPG', 'suit boys shirts'),
(55, 3, 6, 'boys shirts', 259, 'shirts', 'ms3.JPG', 'suit boys shirts'),
(56, 3, 6, 'boys shirts', 299, 'shirts', 'pm7.JPG', 'suit boys shirts'),
(57, 3, 6, 'boys shirts', 260, 'shirts', 'i3.JPG', 'suit boys shirts'),
(58, 3, 6, 'boys shirts', 350, 'shirts', 'pm9.JPG', 'suit boys shirts'),
(59, 3, 6, 'boys shirts', 855, 'shirts', 'a2.JPG', 'suit boys shirts'),
(60, 3, 6, 'boys shirts', 150, 'shirts', 'pm11.JPG', 'suit boys shirts'),
(61, 3, 6, 'boys shirts', 215, 'shirts', 'pm12.JPG', 'suit boys shirts'),
(62, 3, 6, 'boys shirts', 299, 'shirts', 'pm13.JPG', 'suit boys shirts'),
(63, 3, 6, 'boys Jeans Pant', 550, 'Pants', 'pt1.JPG', 'boys Jeans Pant'),
(64, 3, 6, 'boys Jeans Pant', 460, 'pants', 'pt2.JPG', 'boys Jeans Pant'),
(65, 3, 6, 'boys Jeans Pant', 470, 'pants', 'pt3.JPG', 'boys Jeans Pant'),
(66, 3, 6, 'boys Jeans Pant', 480, 'pants', 'pt4.JPG', 'boys Jeans Pant'),
(67, 3, 6, 'boys Jeans Pant', 360, 'pants', 'pt5.JPG', 'boys Jeans Pant'),
(68, 3, 6, 'boys Jeans Pant', 550, 'pants', 'pt6.JPG', 'boys Jeans Pant'),
(69, 3, 6, 'boys Jeans Pant', 390, 'pants', 'pt7.JPG', 'boys Jeans Pant'),
(70, 3, 6, 'boys Jeans Pant', 399, 'pants', 'pt8.JPG', 'boys Jeans Pant'),
(71, 1, 2, 'Samsung galaxy s7', 5000, 'Samsung galaxy s7', 'product07.png', 'samsung mobile electronics'),
(72, 7, 2, 'sony Headphones', 3500, 'sony Headphones', 'product02.png', 'sony Headphones electronics gadgets'),
(73, 7, 2, 'samsung Headphones', 3500, 'samsung Headphones', 'product05.png', 'samsung Headphones electronics gadgets'),
(74, 1, 1, 'HP i5 laptop', 5500, 'HP i5 laptop', 'product01.png', 'HP i5 laptop electronics'),
(75, 1, 1, 'HP i7 laptop 8gb ram', 5500, 'HP i7 laptop 8gb ram', 'product03.png', 'HP i7 laptop 8gb ram electronics'),
(76, 1, 5, 'sony note 6gb ram', 4500, 'sony note 6gb ram', 'product04.png', 'sony note 6gb ram mobile electronics'),
(77, 1, 4, 'MSV laptop 16gb ram NVIDEA Graphics', 5499, 'MSV laptop 16gb ram', 'product06.png', 'MSV laptop 16gb ram NVIDEA Graphics electronics'),
(78, 1, 5, 'dell laptop 8gb ram intel integerated Graphics', 4579, 'dell laptop 8gb ram intel integerated Graphics', 'product08.png', 'dell laptop 8gb ram intel integerated Graphics electronics'),
(79, 7, 2, 'camera with 3D pixels', 2569, 'camera with 3D pixels', 'product09.png', 'camera with 3D pixels camera electronics gadgets'),
(80, 1, 1, 'ytrfdkjsd', 12343, 'sdfhgh', '1542455446_thythtf .jpeg', 'dfgh'),
(81, 4, 6, 'Kids blue dress', 300, 'blue dress', '1543993724_pg4.jpg', 'kids blue dress');

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
  `kode_pos` int(10) NOT NULL,
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

INSERT INTO `data_pesanan` (`id_pesanan`, `user_id`, `f_name`, `email`, `alamat`, `kota`, `negara`, `kode_pos`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(2, 46, 'obsesion obs', 'obsesion@gmail.com', '', '', '', 123341, 'ggg', '12312233223', '11/22', 3, 60000, 1223),
(3, 46, 'obsesion obs', 'obsesion@gmail.com', '', '', '', 123444, 'sadsdasda', '12123121232112', '11/22', 4, 107000, 1213);

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
(46, 'obsesion', 'obs', 'obsesion@gmail.com', 'operator123', '123123123', 'asddasds', 'sasdadsa');

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
(42, 'asd', 'asd', 'asda@gmail.com', 'qwerty123123', '1234567890', 'asdsa', 'sasdadsa'),
(43, 'novandi', 'qwerty', 'novandi@gmail.com', 'jelasin12', '1234567890', 'asddasds', 'assdasda'),
(44, 'ostarion', 'king', 'ostarionking@gmail.com', '', '1234567890', 'asdsa', 'sasdadsa'),
(45, 'ostarion', 'queen', 'ostarionqueen@gmail.com', '', '1234567890', '1111111saddas', 'sadsdsa'),
(46, 'obsesion', 'obs', 'obsesion@gmail.com', 'operator123', '123123123', 'asddasds', 'sasdadsa');

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
(5, 'E', '<i class=\"fas fa-dot-circle\"></i>'),
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
(172, 2, '::1', 38, 1);

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
  MODIFY `id_barang_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `data_user_backup`
--
ALTER TABLE `data_user_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

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
  ADD CONSTRAINT `barang_pesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `data_pesanan` (`id_pesanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `data_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
