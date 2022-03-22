-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2022 pada 19.06
-- Versi server: 10.1.38-MariaDB
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
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Membuat Web dengan Framework Codeignter; Studi Kasus Sistem Informasi\r\nPerpustakaan', 1, 'Gunawan Budi Sulistyo; Pudji Widodo', 'Graha Ilmu', 2020, '978-623-228-403-6', 7, 3, -2, 'img1557401465.jpg'),
(2, 'Web Programing Membangun Aplikasi Perpustakaan dengan Framework CodeIgniter', 1, 'Maruloh, Nining Suryani, Evy Priyanti', 'Graha Ilmu', 2020, '978-623-228-220-9', 11, 1, -1, 'img1557402397.jpg'),
(3, 'Aplikasi Basis Data; Mahir Menggunakan SQL', 1, 'M. Nandi S, Rahayu N, Widiarina, Suharyanto', 'Graha Ilmu', 2020, '978-623-228-180-6', 13, 1, 0, 'img1557402455.jpg'),
(4, 'Analisa Perancangan Sistem Informasi', 1, 'Fintri Indriyani, Yunita, Dinda AM, Artika ', 'Graha Ilmu', 2020, '978-623-228-179-0', 15, 0, -1, 'img1557402703.jpg'),
(5, 'Belajar Mudah Pemrograman Web Backend Programming; Studi Kasus Membangun Aplikasi Reservasi\r\nPerpustakaan', 1, 'Imam Nawawi, Adriansah', 'Graha Ilmu', 2020, '978-623-228-212-4', 11, 2, 1, 'img1555522493.jpg'),
(15, 'Dasar Pemrograman', 1, 'Ruhul Amin, Fernando', 'Published', 2020, '978-623-228-194-3', 18, 3, -2, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 9, 0, 1, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 8, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 13, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 13, 0, 0, 'img1557404689.jpg'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 13, 0, 0, 'img1557404775.jpg'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 11, 0, 0, 'img1557404853.jpg'),
(22, 'Belajar Mudah Pemrograman Web dengan Framework Codeigniter', 1, 'Imam Nawawi, Frans ', 'Graha Ilmu', 2019, '12314213432', 13, 0, 0, 'img1564635420.PNG'),
(23, 'Web Programming IV', 1, 'Maruloh', 'Graha Ilmu', 2021, '9786232282209', 5, 0, 0, 'img12334566.jpg'),
(24, 'Kopi', 2, 'Maruloh', 'Graha Ilmu', 2021, '1323443', 5, 0, 0, 'img1606838725.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('17042021001', 15, 5000),
('26042021002', 1, 5000),
('26042021003', 5, 5000),
('24092021004', 2, 5000),
('24092021004', 3, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Dewasa'),
(12, 'Kids'),
(14, 'Ekonomise'),
(15, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('17042021001', '2021-04-17', '17042021001', 7, '2021-04-20', '2021-04-17', 'Kembali', 0),
('24092021004', '2021-09-24', '24092021001', 24, '2021-09-27', '0000-00-00', 'Pinjam', 0),
('26042021002', '2021-04-26', '26042021001', 9, '2021-04-29', '0000-00-00', 'Pinjam', 0),
('26042021003', '2021-04-26', '26042021001', 9, '2021-04-29', '0000-00-00', 'Pinjam', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Salman Alfarisi', '', 'salmanalfa8884@gmail.com', 'xecbe965ce.jpg', '$2y$10$fTb.b8xBF.sEBMg.Md/Xjulg.xnoUw8LmpEnFebFlBADWDLU5mvlW', 1, 1, 1647965926),
(2, 'Maruloh', 'Cengkareng', 'maruloh.mru@bsi.ac.id', 'pro1579684727.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 2, 1, 1554219788),
(3, 'Andriansah', 'Tangerang', 'andriansah.aiy@bsi.ac.id', 'pro1579677270.jpg', '$2y$10$Aa2soOYCyttqpIa1m8/79uc6Psz563XlTPcs0E4TuOji/UiKGox4i', 2, 1, 1579677270),
(4, 'Mochamad Nandi Susila', 'Tangerang Selatan', 'mochamad.mnl@bsi.ac.id', 'pro1579677559.jpg', '$2y$10$N6itMt2sWT1dPXwedtmhsOFC/2eYoQ9k.MI5t1jNwGPE06oVv5Oqm', 2, 1, 1579677559),
(5, 'Momammed Salah', 'Pedongkelan', 'salah.mo@gmail.com', 'pro1587023509.png', '$2y$10$MdIYpduGOCE.X/Mf2XvKM./v8KtLh6ic8/GO370UK2hyrfFoSFeDK', 2, 1, 1587020346),
(6, 'Mohammed Salah', 'Jakarta', 'mo.salah@gmail.com', 'default.jpg', '$2y$10$HhbykKC.BygEvbk1JfRM5eMbuZWMitPXehGZJfAm2Wj15iP7sXqbC', 2, 1, 1587027324),
(7, 'maruloh', 'jkt', 'mru@gmail.com', 'default.jpg', '$2y$10$6aC9yDPsKWRxJcl.HgooYugcFRNmSa7thPP2KnKpDuftZSl9hK5UW', 2, 1, 1587112573),
(8, 'Puspita Dewi', 'Jl. Kampung Baca Blok B1', 'puspitadewi.airbus7@gmail.com', 'default.jpg', '$2y$10$s0XGCiWVJ9kN5ssbDhcXa.fFwvgbiG9gesb/5AMq9OHXG0ThaFfqS', 2, 1, 1601975762),
(9, 'azka', 'pedongkelan', 'azka@gmail.com', 'default.jpg', '$2y$10$SZ99oVKusw0Q896ESdqGmuC9OcBTo4rpN2BOTPexHwlZgn7/PVQha', 2, 1, 1602034568),
(10, 'abizar', '', 'abizar@gmail.com', 'default.jpg', '$2y$10$Wcy/BmDgIQDmbnBoaSfLCOHCtLKwksN/aRLBdXTWdX9nN0Y1PY8Fu', 2, 1, 1605518524),
(11, 'rafasya abizar', '', 'rafasya@gmail.com', 'default.jpg', '$2y$10$orF39ITX5fin6pduMUSDqudj33ecCGBUuiBrQcV60u7Q/dI7u9Eke', 2, 1, 1605862818),
(12, 'Joko', '', 'zoko@gmail.com', 'pro1606122468.jpg', '$2y$10$4r1jskfTMv9hwGonx/xEw.Dwp3/cg.oAWCRkhUWK2OwXjMiVGhWr2', 2, 1, 1606121736),
(13, 'syilaaaaaa', '', 'syila@gmail.com', 'default.jpg', '$2y$10$jc9sIykBcwBz.lPHI5Dd6O2P.1FBTsxdkCcreaNnJHP.3OYoV3ZPm', 2, 1, 1606744055),
(14, 'greekma', 'jkt', 'greek@gmail.com', 'default.jpg', '$2y$10$1zajMs6iaWHY0PONwPg4sOm2WDCE1ZlbSmsar2ZHHA6A.txAc/jUa', 2, 1, 1610423557),
(15, 'Maruloh', 'Jakarta', 'maru.mr2@gmail.com', 'pro1616695730.png', '$2y$10$Z2yMDWBp8WGpdt6yBG6UMuQAV4RQCwdZouqv9303l6p66OabQyK.G', 2, 1, 1616694818),
(16, 'Imam Nawawi', 'Tangerang Selatan', 'imam.imw@gmail.com', 'default.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983),
(23, 'mru', 'jkt', 'jkt@gmail.com', 'default.jpg', '$2y$10$Iic4DGbb/Xsg7.OfRqX6IOLAonaTRiR4vN6Ym3yV6gzElMgNGdCza', 2, 1, 1617864647),
(24, 'Maru', 'Jakarta', 'maru@gmail.com', 'default.jpg', '$2y$10$A1hYUgDItZW9/trcLbPQi.rn1jm1nDM7JnTWY8Grkr/pplG90XkPe', 2, 1, 1632474791),
(26, 'didi', 'jakarta', 'didi@gmail.com', 'default.jpg', '$2y$10$w2wgWRpq8kNz3WYrEvwhQe1o8i6F69gS0fM2uMpC/vKROZyUbHLyG', 2, 1, 1632558855),
(28, 'Dodi', '', 'dodiferra@gmail.com', 'default.jpg', '$2y$10$.VZUx9h/bpD0NmaapZDWmOK7CxXSU1TSAVa1yr/.a2p2b5HN.KRWK', 2, 1, 1647967462);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
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
-- AUTO_INCREMENT untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
