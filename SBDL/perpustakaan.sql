-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 06:23 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jenis_pengenal` tinyint(1) NOT NULL,
  `no_pengenal` varchar(20) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` varchar(5) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `jml_halaman` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detil transaksi`
--

CREATE TABLE `detil transaksi` (
  `no_peminjaman` varchar(5) NOT NULL,
  `id_buku` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `username` varchar(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(15) NOT NULL,
  `kontak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_peminjaman` varchar(5) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_batas` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` int(11) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detil transaksi`
--
ALTER TABLE `detil transaksi`
  ADD PRIMARY KEY (`no_peminjaman`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_peminjaman`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detil transaksi`
--
ALTER TABLE `detil transaksi`
  ADD CONSTRAINT `detil transaksi_ibfk_1` FOREIGN KEY (`no_peminjaman`) REFERENCES `transaksi` (`no_peminjaman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
