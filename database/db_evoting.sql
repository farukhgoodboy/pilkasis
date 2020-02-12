-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2019 pada 03.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `level` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
('admin', 'admin', 'admin'),
('pengawas', 'pengawas', 'pengawas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemilih`
--

CREATE TABLE `tb_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `ktp` varchar(16) NOT NULL,
  `nama_pemilih` varchar(64) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pass` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pemilih`
--

INSERT INTO `tb_pemilih` (`id_pemilih`, `ktp`, `nama_pemilih`, `alamat`, `pass`) VALUES
(4, '1324657980', 'Around the Horn', '120 Hanover Sq.', '123'),
(7, '1123123123123', '2', '3', '4123123213'),
(8, '123', 'saya', 'jember', '123@');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pencalon`
--

CREATE TABLE `tb_pencalon` (
  `id_pencalon` int(11) NOT NULL,
  `kode_pencalon` varchar(16) NOT NULL,
  `nama_pencalon` varchar(64) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pencalon`
--

INSERT INTO `tb_pencalon` (`id_pencalon`, `kode_pencalon`, `nama_pencalon`, `gambar`, `keterangan`) VALUES
(2, '1', 'Yusuf', '7518ANDIKA-TSM.JPG', '-'),
(5, '2', 'Akbar', '6575IMG_0239.JPG', ''),
(6, '3', 'pertanian', '9910SULTON-HADI.JPG', ''),
(9, '4', 'preti', '2760TRIYASTI.JPG', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pilih`
--

CREATE TABLE `tb_pilih` (
  `ID` int(11) NOT NULL,
  `id_pencalon` int(16) NOT NULL,
  `id_pemilih` int(16) NOT NULL,
  `tanda_terima` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indeks untuk tabel `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  ADD PRIMARY KEY (`id_pemilih`);

--
-- Indeks untuk tabel `tb_pencalon`
--
ALTER TABLE `tb_pencalon`
  ADD PRIMARY KEY (`id_pencalon`,`kode_pencalon`);

--
-- Indeks untuk tabel `tb_pilih`
--
ALTER TABLE `tb_pilih`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_pencalon`
--
ALTER TABLE `tb_pencalon`
  MODIFY `id_pencalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pilih`
--
ALTER TABLE `tb_pilih`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
