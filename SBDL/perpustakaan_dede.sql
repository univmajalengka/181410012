-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Apr 2020 pada 06.56
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

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
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(3) NOT NULL,
  `nm_anggota` varchar(32) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ttl_anggota` text DEFAULT NULL,
  `status_anggota` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nm_anggota`, `alamat`, `ttl_anggota`, `status_anggota`) VALUES
(16, 'dede', 'lame', 'majalengka, 21 september 2000', '1'),
(15, 'Dede Riska Amalia', 'Karangasem', 'Majalengka 22 September 1999', '1'),
(17, 'Riska', 'Leuwimunding', 'Cirebon, 24 Oktober 2001', '1'),
(18, 'Amalia', 'Leuwimunding', 'Majalengka, 25 Oktober 2000', '1'),
(19, 'Surya', 'lame', 'Majalengka, 29 Juni 1995', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kd_buku` int(5) NOT NULL,
  `judul_buku` varchar(32) DEFAULT NULL,
  `pengarang` varchar(32) DEFAULT NULL,
  `jenis_buku` varchar(32) DEFAULT NULL,
  `penerbit` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul_buku`, `pengarang`, `jenis_buku`, `penerbit`) VALUES
(1, 'Tutorial Makeup', 'Dede Riska Amalia', 'Novel', 'PT.Sinar Dunia'),
(2, 'Desain Grafis', 'Amalia', 'Komik', 'PT.Segitiga'),
(3, 'Hujan', 'Tere Liye', 'Novel', 'Tere Liye'),
(4, 'Rindu', 'Tere Liye', 'Novel', 'Tere Liye'),
(5, 'Dragon Ball v.5', 'Sasuke', 'Komik', 'PT. Jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meminjam`
--

CREATE TABLE `meminjam` (
  `id_pinjam` int(3) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `jumlah_pinjam` int(2) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_anggota` int(3) DEFAULT NULL,
  `kd_buku` varchar(5) DEFAULT NULL,
  `kembali` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meminjam`
--

INSERT INTO `meminjam` (`id_pinjam`, `tgl_pinjam`, `jumlah_pinjam`, `tgl_kembali`, `id_anggota`, `kd_buku`, `kembali`) VALUES
(36, '2020-04-04', 1, NULL, 19, '4', 1),
(35, '2020-04-04', 1, NULL, 18, '5', 1),
(34, '2020-04-04', 1, '2020-04-04', 17, '3', 2),
(32, '2020-04-04', 1, '2020-04-04', 15, '1', 2),
(33, '2020-04-04', 1, NULL, 16, '2', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id` int(11) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama_penerbit`, `alamat`) VALUES
(1, 'Tere Liye', 'Tanjung Priok, Jakarta Utara'),
(2, 'PT. Jepang', 'Tokyo, Jepang'),
(3, 'PT. Sinar Dunia', 'Cibubur, Jakarta Pusat'),
(4, 'PT. Segitiga', 'Jakarta Barat'),
(5, 'PT. Uno', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `kd_buku` (`kd_buku`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `meminjam`
--
ALTER TABLE `meminjam`
  MODIFY `id_pinjam` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
