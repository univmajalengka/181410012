-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 03:17 AM
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
-- Database: `perpustakaan dede`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_pengenal` int(10) NOT NULL,
  `kontak` int(20) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama_anggota`, `alamat`, `no_pengenal`, `kontak`, `tgl_daftar`) VALUES
(1222, 'fellicya', 'majalengka', 9999, 2147483647, '2020-03-12'),
(1234, 'dede riska', 'leuwimunding', 7777, 2147483647, '2020-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `tahun_terbit` varchar(10) NOT NULL,
  `jml_halaman` int(10) NOT NULL,
  `status` enum('ada','dipinjam') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jml_halaman`, `status`) VALUES
(45555, 'saya pamit', 'ria ricis', 'diva center', '2019', 165, 'ada'),
(75557, 'ketika tuhan jatuh cinta', 'wahyu sujani', 'bandung collection', '2013', 320, 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `detail transaksi`
--

CREATE TABLE `detail transaksi` (
  `no_peminjaman` int(20) NOT NULL,
  `id_buku` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail transaksi`
--

INSERT INTO `detail transaksi` (`no_peminjaman`, `id_buku`) VALUES
(1997, 75557),
(1999, 45555);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `username` int(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kontak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`username`, `password`, `nama_petugas`, `alamat`, `kontak`) VALUES
(123477, 'dede222', 'amalia', 'karangasem', '2147483647');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(20) NOT NULL,
  `no_peminjaman` int(20) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `nama_anggota` varchar(20) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_batas` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_peminjaman`, `nama_petugas`, `nama_anggota`, `tgl_peminjaman`, `tgl_batas`, `tgl_kembali`) VALUES
(1222, 1997, 'amalia', 'fellicya', '2020-03-04', '2020-03-07', '2020-03-07'),
(1234, 1999, 'amalia', 'dede riska', '2020-03-19', '2020-03-24', '2020-03-24');

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
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `detail transaksi`
--
ALTER TABLE `detail transaksi`
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
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
