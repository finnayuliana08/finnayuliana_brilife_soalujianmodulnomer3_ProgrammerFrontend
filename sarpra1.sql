-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jan 2020 pada 10.57
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarpra1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `kode_kategori` int(11) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `kondisi` varchar(30) NOT NULL,
  `id_ruang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `kode_kategori`, `cover`, `stok`, `kondisi`, `id_ruang`) VALUES
(29, 'Tang Crimping', 6, 'cr.jpg', 16, 'cacat 3', 2),
(30, 'Kabel HDMI', 11, 'hdmi.jpg', 20, 'sempurna semua', 2),
(31, 'LCD Proyektor', 9, 'lcd.jpg', 4, 'rusak 2', 2),
(32, 'Sound Speaker', 9, 'spea.jpg', 3, 'sempurna semua', 2),
(34, 'Kabel UTP', 11, 'utp.jpg', 22, 'rusak 1', 2),
(35, 'Layar Proyektor', 9, 'layar_proyektor.jpg', 4, 'sempurna semua', 2),
(37, 'Hehehe', 9, 'buku322.png', 11, 'cacat 2', 2),
(38, 'mmm', 9, 'buku34.png', 9, 'cacat 2', 2),
(40, 'halo', 9, NULL, 1, 'cacat 4', 2),
(41, 'mmm', 11, NULL, 28, 'sempurna semua', 2),
(45, 'AAA', 13, NULL, 4, 'rusak 1', 2),
(46, 'eee', 6, NULL, 21, 'rusak 2', 2),
(47, 'penggaris', 6, 'dashboard_manager.PNG', 4, 'sempurna semua', 2),
(48, 'ttttt', 13, NULL, 44, 'rusak 1', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `kode_detail_transaksi` int(11) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`kode_detail_transaksi`, `kode_transaksi`, `kode_barang`, `jumlah`) VALUES
(48, 72, 29, 1),
(49, 73, 29, 1),
(52, 75, 37, 1),
(53, 75, 35, 1),
(54, 76, 31, 1),
(55, 76, 47, 1),
(56, 76, 46, 1),
(57, 77, 46, 1),
(58, 77, 29, 1),
(59, 78, 29, 1),
(60, 78, 46, 1),
(61, 78, 47, 1),
(62, 79, 46, 1),
(63, 80, 46, 5),
(64, 81, 29, 1),
(65, 82, 46, 1),
(66, 83, 46, 1),
(67, 84, 29, 1),
(68, 84, 46, 2),
(69, 84, 31, 1),
(70, 85, 46, 1),
(71, 85, 29, 1),
(72, 85, 41, 1),
(73, 86, 29, 1),
(74, 86, 46, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
(6, 'Besi'),
(7, 'kayu'),
(9, 'alumunium'),
(11, 'tembaga'),
(13, 'Plastik'),
(14, 'tyhhh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'kasir'),
(3, 'peminjam'),
(5, 'Penjaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `alamat`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(25) DEFAULT NULL,
  `kode_ruang` int(11) NOT NULL,
  `ket_ruang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`, `ket_ruang`) VALUES
(2, 'Ruang 1', 44, 'Masih Bisa Menampung 10 Barang'),
(3, 'Ruang 2', 46, 'Masih Bisa Menampung 15 Barang'),
(4, 'Ruang 3', 47, 'Ruangan Penuhh'),
(5, 'Ruang 4', 48, 'Masih Bisa Menampung 5 Barang'),
(6, 'Ruang 5', 49, 'jkljkh'),
(7, 'Ruang 5', 50, 'kosong'),
(8, 'Ruang 3', 56, 'hh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `kode_user` int(11) DEFAULT NULL,
  `nama_pembeli` varchar(50) DEFAULT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `guru_pengajar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_user`, `nama_pembeli`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status`, `guru_pengajar`) VALUES
(72, 7, 'Sayaaaaaaa', '2019-04-29', '2019-04-30', 'Belum Kembali', 'Ekooooo'),
(73, 6, 'Asaaaa', '2019-04-29', '2019-04-30', 'Belum Kembali', 'Airaaaa'),
(75, 7, 'farhan', '2019-07-01', '2019-07-01', 'Sudah Kembali', 'Pak Didik '),
(76, 1, 'jeje anak rumahan', '2019-07-01', '2019-07-01', 'Sudah Kembali', 'Pak Didik '),
(77, 7, 'Hendik', '2019-07-01', '2019-07-01', 'Sudah Kembali', 'Pak Hari'),
(78, 1, 'jeje anak rumahan', '2019-07-01', '2019-07-02', 'Belum Kembali', 'Pak Didik '),
(79, 7, 'Finna', '2019-07-02', '2019-07-02', 'Sudah Kembali', 'Pak Hari'),
(80, 1, 'Zihni', '2019-07-02', '2019-07-02', 'Belum Kembali', 'Pak Chusni'),
(81, 1, 'farhan', '2019-07-04', '2019-07-04', 'Belum Kembali', 'Pak Chusni'),
(82, 7, 'farhan', '2019-07-04', '2019-07-04', 'Belum Kembali', 'Pak Chusni'),
(83, 7, 'farhan', '2019-07-04', '2019-07-04', 'Belum Kembali', 'Pak Chusni'),
(84, 1, 'farhan', '2019-07-08', '2019-07-08', 'Belum Kembali', 'Pak Chusni'),
(85, 1, 'farhan', '2019-07-08', '2019-07-08', 'Belum Kembali', 'Pak Chusni'),
(86, 1, 'Suho', '2019-08-21', '2019-08-21', 'Belum Kembali', 'Pak Firdausa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kode_user` int(11) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kode_user`, `nama_user`, `username`, `password`, `id_level`) VALUES
(1, 'Admin', 'admin1', 'admin1', 5),
(6, 'rani', 'rani', 'rani123', 5),
(7, 'wesa', 'kasir1', 'kasir1', 2),
(8, 'rere', 'rere', 'rere', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_rak` (`id_ruang`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`kode_detail_transaksi`),
  ADD KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `kode_buku` (`kode_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode_user` (`kode_user`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kode_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `kode_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kode_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `kode_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`kode_transaksi`) REFERENCES `transaksi` (`kode_transaksi`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_user`) REFERENCES `user` (`kode_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
