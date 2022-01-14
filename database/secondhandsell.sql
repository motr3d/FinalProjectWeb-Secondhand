-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2022 pada 23.42
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

INSERT INTO `barang` (`id_barang`, `kategori_barang`, `nama_barang`, `harga_barang`, `deskripsi_barang`, `gambar_barang`, `katakunci_barang`, `gambar_barang2`, `gambar_barang3`, `gambar_barang4`) VALUES
(1, 1, 'Toyota Cayla', 120000000, 'Mobil', 'toyotacayla.jpg\r\n', 'Mobil', '', 'toyotacayla', 'toyotacayla'),
(2, 1, 'Honda Crv', 450000000, 'Honda Crv', 'hondacrv1.jpg', 'hondacrv1.jpg', 'hondacrv1.jpg', 'hondacrv1.jpg', 'hondacrv1.jpg'),
(3, 1, 'BMW x1', 500000000, 'BMW x1', 'bmw x1.jpg', 'BMW X1', 'bmw x1.jpg', 'bmw x1.jpg', 'bmw x1.jpg'),
(4, 1, 'SUZUKI xl7', 200000000, 'suzuki xl7', 'suzuki xl7.jpg', 'suzuki xl7', 'suzuki xl7.jpg', 'suzuki xl7.jpg', 'suzuki xl7.jpg'),
(5, 1, 'ktm 250 fx', 100000000, 'ktm 250 fx', 'ktm 250 fx.jpg', 'ktm 250 fx.jpg', 'ktm 250 fx.jpg', 'ktm 250 fx.jpg', 'ktm 250 fx.jpg'),
(6, 1, 'Selis Eoi', 3000000, 'Selis Eoi', 'Selis Eoi.jpg', 'Selis Eoi', 'Selis Eoi.jpg', 'Selis Eoi.jpg', 'Selis Eoi.jpg'),
(7, 1, 'Exotic 2651', 1000000, 'Exotic 2651', 'Exotic 2651.jpg', 'Exotic 2651', 'Exotic 2651.jpg', 'Exotic 2651.jpg', 'Exotic 2651.jpg'),
(8, 1, 'Polygon Maze', 1000000, 'Polygon Maze', 'Polygon Maze.jpg', 'Polygon Maze', 'Polygon Maze.jpg', 'Polygon Maze.jpg', 'Polygon Maze.jpg'),
(9, 1, 'Honda CRF450RX', 100000000, 'Honda CRF450RX', 'Honda CRF450RX.jpg', 'Honda CRF450RX', 'Honda CRF450RX.jpg', 'Honda CRF450RX.jpg', 'Honda CRF450RX.jpg'),
(10, 2, 'Msi GF63', 10000000, 'Msi GF63', 'Msi GF63.jpg', 'Msi GF63', 'Msi GF63.jpg', 'Msi GF63.jpg', 'Msi GF63.jpg'),
(11, 2, 'PS 3', 1600000, 'PS 3', 'PS 3.jpg', 'PS 3', NULL, NULL, NULL),
(12, 2, 'Samsung Led TV 32 Inch', 1400000, 'Samsung Led TV 32 Inch', 'Samsung Led TV 32 Inch.jpg', 'Samsung Led TV 32 Inch', NULL, NULL, NULL),
(13, 2, 'Nikon D3100', 2200000, 'Nikon D3100', 'Nikon D3100.jpg', '', NULL, NULL, NULL),
(14, 3, 'Lemari', 3200000, 'Nolden Lemari', 'Lemari.jpg', '', NULL, NULL, NULL),
(15, 3, 'Lemari 3 Pintu', 1200000, 'Lemari 3 Pintu', 'Lemari 3 Pintu.jpg', '', NULL, NULL, NULL),
(16, 3, 'Rak Tv Kayu', 4000000, 'Rak Tv Kayu', 'Rak Tv Kayu.jpg', '', NULL, NULL, NULL),
(17, 4, 'Gitar', 700000, 'Gitar', 'Gitar.jpg', '', NULL, NULL, NULL),
(18, 4, 'Biola', 800000, 'Biola', 'Biola.jpg', '', NULL, NULL, NULL),
(19, 4, 'Drum Rolling', 3500000, 'Drum Rolling', 'Drum Rolling.jpg', '', NULL, NULL, NULL),
(20, 4, 'Klarinet', 2000000, 'Klarinet', 'Klarinet.jpg', '', NULL, NULL, NULL),
(21, 5, 'Aku', 30000, 'Aku', 'Aku.jpg', '', NULL, NULL, NULL),
(22, 5, 'The Tale Of Genji', 130000, 'The Tale Of Genji', 'The Tale Of Genji.jpg', '', NULL, NULL, NULL),
(23, 5, 'Buku Python Pemula', 50000, 'Buku Python Pemula', 'Buku Python Pemula.jpg', '', NULL, NULL, NULL),
(24, 5, 'Dunia Sophie', 140000, 'Dunia Sophie', 'Dunia Sophie.jpg', '', NULL, NULL, NULL),
(25, 6, 'Tali Skipping', 150000, 'Tali Skipping', 'Tali Skipping.jpg', '', NULL, NULL, NULL),
(26, 6, 'Sepeda Statis', 1100000, 'Sepeda Statis', 'Sepeda Statis.jpg', '', NULL, NULL, NULL),
(27, 7, 'Mobil Dorong AU-663', 230000, 'Mobil Dorong AU-663', 'Mobil Dorong AU-663.jpg', '', NULL, NULL, NULL);

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
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(51, 'sakasaka', 'saka', 'sakasaka@gmail.com', 'leonkers28', '1234567890', 'asdasdsda', 'asdsadasdas');

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
(42, 'fahren', 'ridho', 'fahren@ridho.com', 'genossclass', '1234567890', 'jln buton', 'jogja'),
(43, 'Wesley', 'C Porter', 'obsesion@gmail.com', 'LEONKERS28', '1234567890', '2145 Hill Haven Drive', 'Seattle'),
(44, 'Wesley', 'C Porter', 'obsesion@gmail.com', 'leonkers28', '1234567890', '2145 Hill Haven Drive', 'Seattle'),
(45, 'Sasangka', 'Prataka', 'sasangka@gmail.com', 'leonkers28', '1234567890', 'Yogyakarta', 'Yogyakarta'),
(46, 'qqqqqq', 'qqqqq', 'aasdsasd@gmail.com', 'leonkers28', '123121122', '2145 Hill Haven Drive', 'Seattle'),
(47, 'qqqqqq', 'qqqqq', 'aasdsasd@gmail.com', '12345678', '123121122', '2145 Hill Haven Drive', 'Seattle'),
(48, 'qqqqqq', 'qqqqq', 'aasdsasd@gmail.com', '12345678', '123121122', '2145 Hill Haven Drive', 'Seattle'),
(49, 'Wesley', 'C Porter', 'obsesion@gmail.com', 'leonkers28', 'Wesley C P', '2145 Hill Haven Drive', 'Seattle'),
(50, 'Wesley', 'C Porter', 'obsesion@gmail.com', 'leonkers28', 'Wesley C P', '2145 Hill Haven Drive', 'Seattle'),
(51, 'sakasaka', 'saka', 'sakasaka@gmail.com', 'leonkers28', '1234567890', 'asdasdsda', 'asdsadasdas');

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
(1, 'Kendaraan', NULL),
(2, 'Elektronik', ''),
(3, 'Alat Rumah Tangga', ''),
(4, 'Alat Musik', ''),
(5, 'Buku', ''),
(6, 'Olahraga', ''),
(7, 'Mainan', '');

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
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(198, 1, '::1', 42, 1),
(216, 72, '::1', 45, 1),
(221, 1, '::1', 51, 1),
(227, 32, '::1', 44, 1);

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
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `barang_pesanan`
--
ALTER TABLE `barang_pesanan`
  MODIFY `id_barang_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `data_pesanan`
--
ALTER TABLE `data_pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `data_user_backup`
--
ALTER TABLE `data_user_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
