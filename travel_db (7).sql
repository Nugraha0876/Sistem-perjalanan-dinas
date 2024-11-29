-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 04:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id_perjalanan` int(11) NOT NULL,
  `transport_darat` varchar(11) DEFAULT '0',
  `tiket` varchar(11) DEFAULT '0',
  `uang_harian` int(11) DEFAULT 0,
  `hotel` varchar(255) DEFAULT '0',
  `taksi` varchar(255) DEFAULT '0',
  `uang_presentatif` int(11) DEFAULT 0,
  `jumlah` int(11) DEFAULT 0,
  `no_rekening` varchar(20) DEFAULT NULL,
  `biaya` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id_perjalanan`, `transport_darat`, `tiket`, `uang_harian`, `hotel`, `taksi`, `uang_presentatif`, `jumlah`, `no_rekening`, `biaya`) VALUES
(1, 'Mobil', 'FFGH', 1000, 'Bandung', 'Online', 10, 10, '123456789', 0),
(2, 'Motor', 'CCVB', 1000, 'Bandung', 'Online', 10, 10, '123456789', 0);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pangkat` varchar(255) DEFAULT NULL,
  `nip_karyawan` int(50) NOT NULL,
  `no_rekening` int(255) DEFAULT NULL,
  `id_sopir` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `password`, `jabatan`, `no_hp`, `ttl`, `unit`, `alamat`, `pangkat`, `nip_karyawan`, `no_rekening`, `id_sopir`) VALUES
(141, 'arsyl', '0', 'siswa', '089765672188', '5674-12-31', 'A', 'citereup', 'S5', 43422324, 0, 0),
(142, 'aldi', '0', 'siswa', '07854782372', '5744-12-31', 'B', 'cipada', 'warior', 43422324, 0, 0),
(143, 'ilham', '0', 'siswa', '089765672188', '5654-12-31', 'A', 'cikuda', 'S1', 74937483, 0, 0),
(144, 'fajar ', '12345', 'siswa', '0876543456', '5432-12-31', 'A', 'pasirsalam', 'S3', 2323221, 0, 0),
(145, 'Kanigia', '0', 'siswa', '07854782372', '5654-12-31', 'B', 'bandung', 'S2', 74937483, 0, 0),
(170, 'Daus', '0', 'siswa', '089765672188', '2024-09-13', 'A', 'cisarua', 'S2', 43422324, 87453475, NULL),
(172, 'asep', '0', 'siswa', '089765672188', '1212-12-12', 'K', 'cihampelas', 'S3', 2323221, 2147483647, NULL),
(173, 'zola', '12345', 'siswa', '089765672188', '2024-09-05', 'K', 'BNDNG', 'S4', 43422324, 1823263664, NULL),
(174, 'aldi', '25f9e794323b453885f5181f1b624d0b', 'siswa', '0876543456', '2024-09-03', 'A', 'D', 'warior', 123456, 0, NULL),
(175, 'susi', '12345', 'User', '08986357346', '2007-07-19', 'G', 'BDG', 'S5', 2147483647, 55555555, NULL),
(177, 'hanip', '12345', 'op', '08466464', '2024-10-09', 'f', '4r', '4', 435353, 4, NULL),
(178, 'udin', '12345', 'user', '0853453', '2024-10-24', 'r', 'r', 'r', 54345, 0, NULL),
(179, 'qq', '12345', '23423', '3424', '2024-10-15', '324324', '34', 'r', 23424, 2147483647, NULL),
(180, 'dudung', '12345', 'User', '08986357346', '2024-01-17', 'S', 'hgsdfash', 'S3', 2147483647, 2147483647, NULL),
(181, 'dadang', '12345', '6345283265', '08986357346', '2024-10-18', '324324', 'sdfsdf', 'S6', 2147483647, 2222222, NULL),
(182, 'susan', '12345', '6345283265', '08986357346', '2024-10-02', '324324', 'hasgdf', '4', 2147483647, 2147483647, NULL),
(183, 'Budi Santoso', 'password123', 'Manager', '081234567890', '1985-01-01', 'Marketing', 'Jl. Merdeka No.1, Jakarta', 'III/a', 0, 1234567890, NULL),
(184, 'Siti Nurhaliza', 'password123', 'Staff', '081234567891', '1990-02-15', 'Finance', 'Jl. Cendana No.5, Bandung', 'II/b', 0, 2147483647, NULL),
(185, 'Andi Wijaya', 'password123', 'Supervisor', '081234567892', '1987-03-20', 'HRD', 'Jl. Raya No.7, Surabaya', 'III/b', 0, 2147483647, NULL),
(186, 'Rina Oktaviani', 'password123', 'Manager', '081234567893', '1980-04-10', 'IT', 'Jl. Sate No.10, Bali', 'IV/a', 0, 2147483647, NULL),
(187, 'Yusuf Baharuddin', 'password123', 'Staff', '081234567894', '1992-05-25', 'Marketing', 'Jl. Sudirman No.3, Medan', 'II/a', 0, 2147483647, NULL),
(188, 'Lina Asri', 'password123', 'Supervisor', '081234567895', '1986-06-30', 'Finance', 'Jl. Elang No.8, Makassar', 'III/c', 0, 2147483647, NULL),
(189, 'Ferry Kusuma', 'password123', 'Manager', '081234567896', '1983-07-05', 'IT', 'Jl. Pahlawan No.9, Palembang', 'IV/b', 0, 2147483647, NULL),
(190, 'Dewi Kartika', 'password123', 'Staff', '081234567897', '1991-08-12', 'HRD', 'Jl. Mutiara No.4, Malang', 'II/c', 0, 2147483647, NULL),
(191, 'Rudi Hartono', 'password123', 'Supervisor', '081234567898', '1989-09-15', 'Marketing', 'Jl. Kemuning No.2, Solo', 'III/a', 0, 2147483647, NULL),
(192, 'Nina Putri', 'password123', 'Manager', '081234567899', '1984-10-25', 'Finance', 'Jl. Alam No.6, Yogyakarta', 'IV/a', 0, 123456789, NULL),
(193, 'Taufik Hidayat', 'password123', 'Manager', '081234567900', '1980-01-12', 'HRD', 'Jl. Raya No.5, Bandung', 'III/a', 0, 2147483647, NULL),
(194, 'Kiki Wahyuni', 'password123', 'Staff', '081234567901', '1995-02-03', 'Finance', 'Jl. Taman No.3, Jakarta', 'II/b', 0, 2147483647, NULL),
(195, 'Ali Ramadhan', 'password123', 'Supervisor', '081234567902', '1990-03-15', 'IT', 'Jl. Merpati No.9, Bali', 'III/b', 0, 2147483647, NULL),
(196, 'Hendra Setiawan', 'password123', 'Staff', '081234567903', '1993-04-21', 'Marketing', 'Jl. Anggrek No.8, Medan', 'II/a', 0, 2147483647, NULL),
(197, 'Maya Arief', 'password123', 'Manager', '081234567904', '1988-05-16', 'HRD', 'Jl. Cempaka No.4, Makassar', 'IV/a', 0, 2147483647, NULL),
(198, 'Tomi Adi', 'password123', 'Supervisor', '081234567905', '1987-06-25', 'Finance', 'Jl. Bunga No.11, Surabaya', 'III/c', 0, 2147483647, NULL),
(199, 'Reza Denny', 'password123', 'Staff', '081234567906', '1991-07-30', 'IT', 'Jl. Merdeka No.12, Solo', 'II/c', 0, 2147483647, NULL),
(200, 'Joko Danang', 'password123', 'Manager', '081234567907', '1985-08-18', 'Marketing', 'Jl. Sempurna No.15, Yogyakarta', 'III/a', 0, 2147483647, NULL),
(201, 'Ali Hadi', 'password123', 'Supervisor', '081234567908', '1992-09-03', 'HRD', 'Jl. Taman No.6, Bali', 'III/b', 0, 1011123345, NULL),
(202, 'Sandi Wira', 'password123', 'Staff', '081234567909', '1990-10-28', 'Finance', 'Jl. Angsoka No.2, Jakarta', 'II/a', 0, 2022234456, NULL),
(203, 'Arief Setiawan', 'password123', 'Manager', '081234567910', '1984-12-17', 'HRD', 'Jl. Merpati No.7, Medan', 'IV/a', 0, 1234567890, NULL),
(204, 'Aldo Pratama', 'password123', 'Manager', '081234567890', '1985-01-01', 'Marketing', 'Jl. Merdeka No.1, Jakarta', 'III/a', 0, 1234567890, NULL),
(205, 'Nina Paramitha', 'password123', 'Staff', '081234567891', '1990-02-15', 'Finance', 'Jl. Cendana No.5, Bandung', 'II/b', 0, 2147483647, NULL),
(206, 'Gilang Kurniawan', 'password123', 'Supervisor', '081234567892', '1987-03-20', 'HRD', 'Jl. Raya No.7, Surabaya', 'III/b', 0, 2147483647, NULL),
(207, 'Adinda Wulansari', 'password123', 'Manager', '081234567893', '1980-04-10', 'IT', 'Jl. Sate No.10, Bali', 'IV/a', 0, 2147483647, NULL),
(208, 'Januar Budianto', 'password123', 'Staff', '081234567894', '1992-05-25', 'Marketing', 'Jl. Sudirman No.3, Medan', 'II/a', 0, 2147483647, NULL),
(209, 'Faisal Rahman', 'password123', 'Supervisor', '081234567895', '1986-06-30', 'Finance', 'Jl. Elang No.8, Makassar', 'III/c', 0, 2147483647, NULL),
(210, 'Zara Putri', 'password123', 'Manager', '081234567896', '1983-07-05', 'IT', 'Jl. Pahlawan No.9, Palembang', 'IV/b', 0, 2147483647, NULL),
(211, 'Dina Fitria', 'password123', 'Staff', '081234567897', '1991-08-12', 'HRD', 'Jl. Mutiara No.4, Malang', 'II/c', 0, 2147483647, NULL),
(212, 'Rizal Prasetyo', 'password123', 'Supervisor', '081234567898', '1989-09-15', 'Marketing', 'Jl. Kemuning No.2, Solo', 'III/a', 0, 2147483647, NULL),
(213, 'Vera Oktaviani', 'password123', 'Manager', '081234567899', '1984-10-25', 'Finance', 'Jl. Alam No.6, Yogyakarta', 'IV/a', 0, 123456789, NULL),
(214, 'Rangga Suryawan', 'password123', 'Manager', '081234567900', '1980-01-12', 'HRD', 'Jl. Raya No.5, Bandung', 'III/a', 0, 2147483647, NULL),
(215, 'Putri Wulandari', 'password123', 'Staff', '081234567901', '1995-02-03', 'Finance', 'Jl. Taman No.3, Jakarta', 'II/b', 0, 2147483647, NULL),
(216, 'Sandi Aryanto', 'password123', 'Supervisor', '081234567902', '1990-03-15', 'IT', 'Jl. Merpati No.9, Bali', 'III/b', 0, 2147483647, NULL),
(217, 'Indra Satria', 'password123', 'Staff', '081234567903', '1993-04-21', 'Marketing', 'Jl. Anggrek No.8, Medan', 'II/a', 0, 2147483647, NULL),
(218, 'Mia Cahyani', 'password123', 'Manager', '081234567904', '1988-05-16', 'HRD', 'Jl. Cempaka No.4, Makassar', 'IV/a', 0, 2147483647, NULL),
(219, 'Tomi Setiawan', 'password123', 'Supervisor', '081234567905', '1987-06-25', 'Finance', 'Jl. Bunga No.11, Surabaya', 'III/c', 0, 2147483647, NULL),
(220, 'Reza Kusuma', 'password123', 'Staff', '081234567906', '1991-07-30', 'IT', 'Jl. Merdeka No.12, Solo', 'II/c', 0, 2147483647, NULL),
(221, 'Syafira Mulyani', 'password123', 'Manager', '081234567907', '1985-08-18', 'Marketing', 'Jl. Sempurna No.15, Yogyakarta', 'III/a', 0, 2147483647, NULL),
(222, 'Aulia Sari', 'password123', 'Supervisor', '081234567908', '1992-09-03', 'HRD', 'Jl. Taman No.6, Bali', 'III/b', 0, 1011123345, NULL),
(223, 'Cinta Lestari', 'password123', 'Staff', '081234567909', '1990-10-28', 'Finance', 'Jl. Angsoka No.2, Jakarta', 'II/a', 0, 2022234456, NULL),
(224, 'Siti Najwa', 'password123', 'Manager', '081234567910', '1984-12-17', 'HRD', 'Jl. Merpati No.7, Medan', 'IV/a', 0, 1234567890, NULL),
(225, 'Roni Setiyawan', 'password123', 'Supervisor', '081234567911', '1987-11-10', 'Marketing', 'Jl. Hutan No.5, Jakarta', 'III/a', 0, 2147483647, NULL),
(226, 'Gita Maharani', 'password123', 'Manager', '081234567912', '1985-07-25', 'Finance', 'Jl. Mangga No.3, Yogyakarta', 'IV/b', 0, 2147483647, NULL),
(227, 'Budi Santoso', 'password123', 'Staff', '081234567913', '1990-04-13', 'HRD', 'Jl. Pahlawan No.8, Surabaya', 'II/a', 0, 2147483647, NULL),
(228, 'Pramudya Yanto', 'password123', 'Supervisor', '081234567914', '1986-03-05', 'IT', 'Jl. Cemara No.6, Malang', 'III/c', 0, 2147483647, NULL),
(229, 'Dina Anggiani', 'password123', 'Manager', '081234567915', '1984-06-18', 'Marketing', 'Jl. Gunung No.4, Bali', 'IV/a', 0, 2147483647, NULL),
(230, 'Zahra Puspita', 'password123', 'Supervisor', '081234567916', '1992-12-05', 'Finance', 'Jl. Subur No.12, Palembang', 'III/b', 0, 2147483647, NULL),
(231, 'Niko Prabowo', 'password123', 'Staff', '081234567917', '1991-10-23', 'HRD', 'Jl. Kencana No.2, Bandung', 'II/a', 0, 2147483647, NULL),
(232, 'Nabila Yuliana', 'password123', 'Manager', '081234567918', '1983-11-13', 'IT', 'Jl. Langit No.7, Medan', 'IV/a', 0, 2147483647, NULL),
(233, 'Denny Raharjo', 'password123', 'Staff', '081234567919', '1990-09-09', 'Marketing', 'Jl. Melati No.4, Yogyakarta', 'II/b', 0, 123456789, NULL),
(234, 'Hanafi Reza', 'password123', 'Supervisor', '081234567920', '1988-05-30', 'Finance', 'Jl. Citra No.3, Surabaya', 'III/a', 0, 1234567890, NULL),
(235, 'Desi Larasati', 'password123', 'Staff', '081234567921', '1991-01-05', 'HRD', 'Jl. Harapan No.1, Jakarta', 'II/c', 0, 2147483647, NULL),
(236, 'Mukti Aprianto', 'password123', 'Supervisor', '081234567922', '1987-04-17', 'Marketing', 'Jl. Raya No.9, Bali', 'III/c', 0, 2147483647, NULL),
(237, 'Dina Putri', 'password123', 'Manager', '081234567923', '1984-12-12', 'Finance', 'Jl. Alun-alun No.7, Surabaya', 'IV/a', 0, 2147483647, NULL),
(238, 'Irma Yuliana', 'password123', 'Supervisor', '081234567924', '1992-06-14', 'IT', 'Jl. Raya No.10, Palembang', 'III/b', 0, 2147483647, NULL),
(239, 'Maya Anggraeni', 'password123', 'Staff', '081234567925', '1993-09-29', 'HRD', 'Jl. Merdeka No.2, Makassar', 'II/a', 0, 2147483647, NULL),
(240, 'Rendi Wijaya', 'password123', 'Manager', '081234567926', '1985-10-01', 'Marketing', 'Jl. Anggrek No.13, Bandung', 'IV/b', 0, 2147483647, NULL),
(241, 'Vita Anindya', 'password123', 'Staff', '081234567927', '1994-08-22', 'Finance', 'Jl. Senja No.8, Jakarta', 'II/c', 0, 2147483647, NULL),
(242, 'Teguh Permana', 'password123', 'Supervisor', '081234567928', '1987-12-07', 'HRD', 'Jl. Wibawa No.6, Medan', 'III/a', 0, 2147483647, NULL),
(243, 'Fajar Kusuma', 'password123', 'Manager', '081234567929', '1986-07-19', 'IT', 'Jl. Kenangan No.2, Bali', 'IV/a', 0, 123456789, NULL),
(244, 'Citra Wulandari', 'password123', 'Staff', '081234567930', '1991-03-09', 'Finance', 'Jl. Sejahtera No.5, Solo', 'II/a', 0, 2147483647, NULL),
(245, 'Rina Amalia', 'password123', 'Manager', '081234567890', '1984-01-15', 'Finance', 'Jl. Merdeka No.1, Jakarta', 'III/a', 0, 1234567890, NULL),
(246, 'Faisal Kurniawan', 'password123', 'Staff', '081234567891', '1990-02-25', 'HRD', 'Jl. Cendana No.4, Bandung', 'II/b', 0, 2147483647, NULL),
(247, 'Tania Safira', 'password123', 'Supervisor', '081234567892', '1987-03-05', 'Marketing', 'Jl. Raya No.9, Surabaya', 'III/b', 0, 2147483647, NULL),
(248, 'Donny Pratama', 'password123', 'Manager', '081234567893', '1981-04-11', 'IT', 'Jl. Sate No.10, Bali', 'IV/a', 0, 2147483647, NULL),
(249, 'Vira Rachmawati', 'password123', 'Staff', '081234567894', '1992-05-17', 'Finance', 'Jl. Sudirman No.5, Medan', 'II/a', 0, 2147483647, NULL),
(250, 'Benny Ardianto', 'password123', 'Supervisor', '081234567895', '1986-06-30', 'HRD', 'Jl. Anggrek No.7, Makassar', 'III/c', 0, 2147483647, NULL),
(251, 'Winda Cahyani', 'password123', 'Manager', '081234567896', '1983-07-05', 'Marketing', 'Jl. Pahlawan No.8, Palembang', 'IV/b', 0, 2147483647, NULL),
(252, 'Melya Farah', 'password123', 'Staff', '081234567897', '1991-08-12', 'IT', 'Jl. Mutiara No.4, Malang', 'II/c', 0, 2147483647, NULL),
(253, 'Rudy Chandra', 'password123', 'Supervisor', '081234567898', '1989-09-05', 'HRD', 'Jl. Kemuning No.2, Solo', 'III/a', 0, 2147483647, NULL),
(254, 'Alma Indriani', 'password123', 'Manager', '081234567899', '1984-10-01', 'Finance', 'Jl. Alam No.6, Yogyakarta', 'IV/a', 0, 123456789, NULL),
(255, 'Budi Santoso', 'password123', 'Manager', '081234567900', '1982-01-05', 'Marketing', 'Jl. Raya No.5, Jakarta', 'III/a', 0, 2147483647, NULL),
(256, 'Lina Nurani', 'password123', 'Staff', '081234567901', '1995-02-18', 'Finance', 'Jl. Taman No.3, Bandung', 'II/b', 0, 2147483647, NULL),
(257, 'Arman Wijaya', 'password123', 'Supervisor', '081234567902', '1990-03-10', 'IT', 'Jl. Merpati No.9, Bali', 'III/b', 0, 2147483647, NULL),
(258, 'Eka Hadi', 'password123', 'Staff', '081234567903', '1993-04-13', 'Marketing', 'Jl. Anggrek No.8, Medan', 'II/a', 0, 2147483647, NULL),
(259, 'Siti Suryani', 'password123', 'Manager', '081234567904', '1987-05-22', 'HRD', 'Jl. Cempaka No.4, Makassar', 'IV/a', 0, 2147483647, NULL),
(260, 'Rian Setiawan', 'password123', 'Supervisor', '081234567905', '1987-06-11', 'Finance', 'Jl. Bunga No.11, Surabaya', 'III/c', 0, 2147483647, NULL),
(261, 'Aulia Dea', 'password123', 'Staff', '081234567906', '1990-07-21', 'IT', 'Jl. Merdeka No.10, Solo', 'II/c', 0, 2147483647, NULL),
(262, 'Alvin Prabowo', 'password123', 'Manager', '081234567907', '1985-08-02', 'Marketing', 'Jl. Sempurna No.15, Yogyakarta', 'III/a', 0, 2147483647, NULL),
(263, 'Larasati Purnama', 'password123', 'Supervisor', '081234567908', '1992-09-03', 'HRD', 'Jl. Taman No.6, Bali', 'III/b', 0, 1011123345, NULL),
(264, 'Triyana Damayanti', 'password123', 'Staff', '081234567909', '1991-10-09', 'Finance', 'Jl. Angsoka No.2, Jakarta', 'II/a', 0, 2022234456, NULL),
(265, 'Dewi Susanti', 'password123', 'Manager', '081234567910', '1984-12-12', 'HRD', 'Jl. Merpati No.7, Medan', 'IV/a', 0, 1234567890, NULL),
(266, 'Iwan Subrata', 'password123', 'Supervisor', '081234567911', '1987-11-03', 'Marketing', 'Jl. Hutan No.5, Jakarta', 'III/a', 0, 2147483647, NULL),
(267, 'Maya Vania', 'password123', 'Manager', '081234567912', '1985-06-15', 'Finance', 'Jl. Mangga No.3, Yogyakarta', 'IV/b', 0, 2147483647, NULL),
(268, 'Yuliana Mahendra', 'password123', 'Staff', '081234567913', '1990-04-18', 'HRD', 'Jl. Pahlawan No.8, Surabaya', 'II/a', 0, 2147483647, NULL),
(269, 'Bima Rasmana', 'password123', 'Supervisor', '081234567914', '1986-03-01', 'IT', 'Jl. Cemara No.6, Malang', 'III/c', 0, 2147483647, NULL),
(270, 'Teguh Ramadhan', 'password123', 'Manager', '081234567915', '1984-06-25', 'Marketing', 'Jl. Gunung No.4, Bali', 'IV/a', 0, 2147483647, NULL),
(271, 'Sarah Handayani', 'password123', 'Supervisor', '081234567916', '1992-12-02', 'Finance', 'Jl. Subur No.12, Palembang', 'III/b', 0, 2147483647, NULL),
(272, 'Dina Putri', 'password123', 'Staff', '081234567917', '1991-10-21', 'HRD', 'Jl. Kencana No.2, Bandung', 'II/a', 0, 2147483647, NULL),
(273, 'Joko Prasetyo', 'password123', 'Manager', '081234567918', '1983-11-14', 'IT', 'Jl. Langit No.7, Medan', 'IV/a', 0, 2147483647, NULL),
(274, 'Fahrul Basri', 'password123', 'Staff', '081234567919', '1990-09-30', 'Marketing', 'Jl. Melati No.4, Yogyakarta', 'II/b', 0, 123456789, NULL),
(275, 'Irma Nurfadilah', 'password123', 'Supervisor', '081234567920', '1988-06-10', 'Finance', 'Jl. Citra No.3, Surabaya', 'III/a', 0, 1234567890, NULL),
(276, 'Riko Yudistira', 'password123', 'Staff', '081234567921', '1991-02-05', 'HRD', 'Jl. Harapan No.1, Jakarta', 'II/c', 0, 2147483647, NULL),
(277, 'Nina Amalia', 'password123', 'Supervisor', '081234567922', '1987-07-25', 'Marketing', 'Jl. Raya No.9, Bali', 'III/c', 0, 2147483647, NULL),
(278, 'Yusuf Handoko', 'password123', 'Manager', '081234567923', '1984-12-30', 'Finance', 'Jl. Alun-alun No.7, Surabaya', 'IV/a', 0, 2147483647, NULL),
(279, 'Vina Rahayu', 'password123', 'Supervisor', '081234567924', '1992-06-15', 'IT', 'Jl. Raya No.10, Palembang', 'III/b', 0, 2147483647, NULL),
(280, 'Gita Salsabila', 'password123', 'Staff', '081234567925', '1993-09-29', 'HRD', 'Jl. Merdeka No.2, Makassar', 'II/a', 0, 2147483647, NULL),
(281, 'Adrian Syah', 'password123', 'Manager', '081234567926', '1985-11-02', 'Marketing', 'Jl. Anggrek No.13, Bandung', 'IV/b', 0, 2147483647, NULL),
(282, 'Fira Natalia', 'password123', 'Staff', '081234567927', '1994-09-22', 'Finance', 'Jl. Senja No.8, Jakarta', 'II/c', 0, 2147483647, NULL),
(283, 'Anto Kusnadi', 'password123', 'Supervisor', '081234567928', '1987-12-15', 'HRD', 'Jl. Wibawa No.6, Medan', 'III/a', 0, 2147483647, NULL),
(284, 'Ika Paramita', 'password123', 'Manager', '081234567929', '1986-07-19', 'IT', 'Jl. Kenangan No.2, Bali', 'IV/a', 0, 123456789, NULL),
(285, 'Maya Zahra', 'password123', 'Staff', '081234567930', '1991-03-09', 'Finance', 'Jl. Sejahtera No.5, Solo', 'II/a', 0, 2147483647, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `nama_acara` varchar(255) NOT NULL,
  `materi` varchar(255) NOT NULL,
  `hasil_pelaksanaan` varchar(255) NOT NULL,
  `manfaat` varchar(255) NOT NULL,
  `galeri` varchar(255) NOT NULL,
  `id_pengajuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nama_acara`, `materi`, `hasil_pelaksanaan`, `manfaat`, `galeri`, `id_pengajuan`) VALUES
(0, 'DIAM', 'A', 'A', 'A', '1732606765_2c8943ad2242e7de90be.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_histori`
--

CREATE TABLE `login_histori` (
  `id` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `login_time` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_histori`
--

INSERT INTO `login_histori` (`id`, `id_user`, `login_time`, `ip_address`) VALUES
(1, 1, '2024-10-10 09:20:29', '192.168.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `plat_nomor` varchar(20) NOT NULL,
  `nomor_polisi` varchar(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `tahun_pembuatan` int(11) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `plat_nomor`, `nomor_polisi`, `tipe`, `tahun_pembuatan`, `warna`, `created_at`, `updated_at`, `status`) VALUES
(17, 'E 5555 EE', '55555', 'yamaha', 2007, 'hitam', '2024-08-26 04:02:55', '2024-09-03 08:14:59', 'Tidak Dipakai'),
(18, 'D 4444 DD', '44444', 'honda', 2008, 'putih', '2024-08-26 04:03:19', '2024-09-03 08:14:48', 'Tidak Dipakai'),
(19, 'C 3333 CC', '33333', 'suzuki', 2009, 'hijau', '2024-09-03 01:51:43', '2024-09-03 08:14:36', 'Tidak Dipakai'),
(20, 'B 2222 BB', '22222', 'honda', 2010, 'hiitam', '2024-09-03 02:49:09', '2024-09-03 08:14:23', 'Tidak Dipakai'),
(21, 'A  1111 AA', '11111', 'honda', 2007, 'putih', '2024-09-03 02:49:55', '2024-09-03 08:14:13', 'Tidak Dipakai'),
(22, 'F 6666 FF', '666666', 'ducati', 2024, 'hiitam', '2024-09-03 08:15:40', '2024-09-03 08:15:40', 'Tidak Dipakai'),
(23, 'Z 1234 EE', '5657', 'AVANZOT', 17980, 'Hitam', '2024-10-23 05:34:17', '2024-10-23 05:34:17', 'Tidak Dipakai');

-- --------------------------------------------------------

--
-- Table structure for table `perjadin_detail`
--

CREATE TABLE `perjadin_detail` (
  `id_pd` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_karyawan` varchar(11) NOT NULL,
  `id_sopir` int(11) DEFAULT NULL,
  `id_mobil` int(11) NOT NULL,
  `transport_darat` int(255) NOT NULL,
  `tiket` int(255) NOT NULL,
  `uang_harian` int(11) NOT NULL,
  `hotel` int(255) NOT NULL,
  `taksi` int(255) NOT NULL,
  `uang_presentatif` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `no_rekening` int(255) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perjadin_detail`
--

INSERT INTO `perjadin_detail` (`id_pd`, `id_pengajuan`, `id_karyawan`, `id_sopir`, `id_mobil`, `transport_darat`, `tiket`, `uang_harian`, `hotel`, `taksi`, `uang_presentatif`, `jumlah`, `no_rekening`, `kategori`) VALUES
(541, 434, '173', 63, 1000000, 1000000000, 10000000, 1000, 100000000, 300000000, 3000000, 300000, 20000000, '90000000000000000'),
(543, 431, '172', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(544, 435, '175', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(545, 430, '172', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(546, 436, '143', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(547, 436, '144', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(548, 437, '143', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(549, 438, '145', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(550, 439, '179', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(551, 440, '177', 64, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(552, 441, '143', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(553, 442, '181', 64, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(554, 443, '177', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(555, 444, '141', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(556, 445, '142', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(557, 446, '143', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(558, 447, '144', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(559, 448, '145', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(560, 449, '170', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(561, 450, '142', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(562, 451, '145', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(563, 452, '143', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(564, 453, '170', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(565, 454, '180', 64, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(566, 455, '177', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(567, 456, '142', 64, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(568, 457, '180', 64, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(569, 458, '170', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(570, 459, '142', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(571, 460, '179', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(574, 551, '141', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(575, 548, '190', 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(576, 555, '225', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(577, 550, '141', 62, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(579, 549, '142', 63, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan_dinas`
--

CREATE TABLE `perjalanan_dinas` (
  `id_pengajuan` int(11) NOT NULL,
  `tanggal_pengajuan` datetime NOT NULL,
  `surat_tugas` varchar(100) DEFAULT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `jumlah_hari` varchar(25) NOT NULL,
  `tempat_tujuan` varchar(255) NOT NULL,
  `tempat_berangkat` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keperluan` varchar(255) NOT NULL,
  `no_surat` int(255) DEFAULT NULL,
  `biaya` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perjalanan_dinas`
--

INSERT INTO `perjalanan_dinas` (`id_pengajuan`, `tanggal_pengajuan`, `surat_tugas`, `tanggal_awal`, `tanggal_akhir`, `jumlah_hari`, `tempat_tujuan`, `tempat_berangkat`, `created_at`, `updated_at`, `keperluan`, `no_surat`, `biaya`) VALUES
(430, '2024-11-11 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2024-10-01', '2024-10-30', '30', 'UPI', 'UI', '2024-10-30 10:03:21', '2024-11-11 09:38:59', 'AA', 2, 0),
(431, '2024-11-01 00:00:00', 'Bab 8 pabp.pdf', '2024-11-01', '2024-11-08', '8', 'UI', 'Briwajaya', '2024-10-30 14:21:50', '2024-11-01 10:34:04', '0', 3, 0),
(432, '2024-10-30 00:00:00', 'Bab 10 pabp.pdf', '2024-11-11', '2024-11-13', '3', 'UPI', 'UI', '2024-10-30 14:44:07', '2024-10-30 14:44:07', 'AA', 6, 0),
(433, '2024-10-30 00:00:00', 'Bab 10 pabp.pdf', '2024-11-18', '2024-11-27', '10', 'UPI', 'UI', '2024-10-30 15:05:38', '2024-10-30 15:05:38', 'AA', 7, 0),
(434, '2024-10-31 00:00:00', 'Bab 9 pabp.pdf', '2024-11-01', '2024-11-11', '11', 'UPI', 'UI', '2024-10-31 09:07:49', '2024-10-31 09:07:49', 'AA', 5, 0),
(435, '2024-11-05 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2025-01-01', '2025-01-31', '31', 'UPI', 'POLBAN', '2024-11-05 13:37:33', '2024-11-05 13:37:33', 'a', 1, 0),
(436, '2024-11-12 00:00:00', 'Bab 8 pabp.pdf', '2025-02-06', '2025-03-07', '30', 'G', 'WERWE', '2024-11-12 12:50:00', '2024-11-12 12:50:00', 'ghdf', 3, 0),
(437, '2024-11-14 00:00:00', 'Bab 10 pabp.pdf', '2025-04-01', '2025-04-03', '3', 'BRIWIJAYA', 'POLBAN', '2024-11-14 14:33:40', '2024-11-14 14:33:40', 'jsdgjshd', 9, 0),
(438, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2025-04-04', '2025-04-05', '2', 'bandung', 'a', '2024-11-14 14:34:30', '2024-11-14 14:34:30', 'shds', 9, 0),
(439, '2024-11-14 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2025-04-07', '2025-04-09', '3', 'bandng', 'POLBAN', '2024-11-14 14:35:12', '2024-11-14 14:35:12', 'jdhshsd', 9, 0),
(440, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2025-04-10', '2025-04-12', '3', 'UGM', 'indo', '2024-11-14 14:36:40', '2024-11-14 14:36:40', 'dsifjdsf', 9, 0),
(441, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2025-04-14', '2025-04-16', '3', 'UI', 'belitung', '2024-11-14 14:38:03', '2024-11-14 14:38:03', 'ahsdgsds', 9, 0),
(442, '2024-11-14 00:00:00', 'Bab 10 pabp.pdf', '2025-04-18', '2025-04-23', '6', 'bandung', 'belitung', '2024-11-14 14:38:45', '2024-11-14 14:38:45', 'uehwey', 9, 0),
(443, '2024-11-14 00:00:00', 'Bab 8 pabp.pdf', '2025-04-24', '2025-04-26', '3', 'UGM', 'belitung', '2024-11-14 14:39:27', '2024-11-14 14:39:27', 'shdshgh', 9, 0),
(444, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2024-12-01', '2024-12-02', '2', 'UGM', 'POLBAN', '2024-11-14 14:43:35', '2024-11-14 14:43:35', 'A', 2, 0),
(445, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2024-12-03', '2024-12-04', '2', 'UGM', 'belitung', '2024-11-14 14:44:10', '2024-11-14 14:44:10', 'Z', 3, 0),
(446, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2024-12-05', '2024-12-06', '2', 'BRIWIJAYA', 'UI', '2024-11-14 14:44:51', '2024-11-14 14:44:51', 'X', 4, 0),
(447, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2024-12-07', '2024-12-08', '2', 'UI', 'POLBAN', '2024-11-14 14:45:34', '2024-11-14 14:45:34', 'D', 5, 0),
(448, '2024-11-14 00:00:00', 'Bab 9 pabp.pdf', '2024-12-09', '2024-12-10', '2', 'UGM', 'KAIST', '2024-11-14 14:46:18', '2024-11-14 14:46:18', 'Q', 6, 0),
(449, '2024-11-14 00:00:00', 'Bab 10 pabp.pdf', '2024-12-11', '2024-12-12', '2', 'BRIWIJAYA', 'KAIST', '2024-11-14 14:47:11', '2024-11-14 14:47:11', 'H', 7, 0),
(450, '2024-11-14 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2024-12-13', '2024-12-14', '2', 'UGM', 'belitung', '2024-11-14 14:48:43', '2024-11-14 14:48:43', 'n', 9, 0),
(451, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2024-12-15', '2024-12-16', '2', 'm', 'b', '2024-11-14 14:49:14', '2024-11-14 14:49:14', 'n', 9, 0),
(452, '2024-11-14 00:00:00', 'Bab 8 pabp.pdf', '2024-12-27', '2024-12-28', '2', 't', 'b', '2024-11-14 14:50:34', '2024-11-14 14:50:34', 'b', 9, 0),
(453, '2024-11-14 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2024-12-19', '2024-12-20', '2', '2', 'e', '2024-11-14 14:51:07', '2024-11-14 14:51:07', 'r', 1, 0),
(454, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2024-12-20', '2024-12-21', '2', 'j', 'k', '2024-11-14 14:51:44', '2024-11-14 14:51:44', 'l', 9, 0),
(455, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2024-12-22', '2024-12-23', '2', 'g', 'h', '2024-11-14 14:52:20', '2024-11-14 14:52:20', 'i', 9, 0),
(456, '2024-11-14 00:00:00', 'Bab 10 pabp.pdf', '2025-01-01', '2025-01-02', '2', 'w', 'w', '2024-11-14 14:53:42', '2024-11-14 14:53:42', 'w\r\n', 1, 0),
(457, '2024-11-14 00:00:00', 'Pengenalan-CodeIgniter-4.pdf', '2025-01-03', '2025-01-04', '2', 'w', 'e', '2024-11-14 14:54:14', '2024-11-14 14:54:14', 'r\r\n', 3, 0),
(458, '2024-11-14 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2025-01-06', '2025-01-07', '2', 'r', 't', '2024-11-14 14:55:06', '2024-11-14 14:55:06', 'y\r\n', 3, 0),
(459, '2024-11-14 00:00:00', 'PKK ANGGI.pdf', '2025-01-08', '2025-01-09', '2', 'u', 't', '2024-11-14 14:55:50', '2024-11-14 14:55:50', 'f', 4, 0),
(460, '2024-11-18 00:00:00', 'Bab 7 pabp.pdf', '2025-04-18', '2025-04-18', '1', 'A', 'WERWE', '2024-11-18 14:10:50', '2024-11-18 14:10:50', 'vbfdbfd', 9, 0),
(461, '2026-01-01 00:00:00', NULL, '2026-01-05', '2026-01-10', '5', 'Jakarta', 'Bandung', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk rapat koordinasi', 0, 0),
(462, '2026-01-02 00:00:00', NULL, '2026-01-07', '2026-01-09', '2', 'Surabaya', 'Malang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kunjungan ke cabang', 0, 0),
(463, '2026-01-03 00:00:00', NULL, '2026-01-06', '2026-01-08', '2', 'Semarang', 'Yogyakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan untuk pelatihan', 0, 0),
(464, '2026-01-04 00:00:00', NULL, '2026-01-09', '2026-01-11', '2', 'Bandung', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Peninjauan lokasi proyek', 0, 0),
(465, '2026-01-05 00:00:00', NULL, '2026-01-10', '2026-01-15', '5', 'Bali', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan untuk seminar', 0, 0),
(466, '2026-01-06 00:00:00', NULL, '2026-01-11', '2026-01-14', '3', 'Medan', 'Aceh', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kunjungan untuk kerjasama bisnis', 0, 0),
(467, '2026-01-07 00:00:00', NULL, '2026-01-12', '2026-01-15', '3', 'Yogyakarta', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas ke kantor pusat', 0, 0),
(468, '2026-01-08 00:00:00', NULL, '2026-01-13', '2026-01-17', '4', 'Bandung', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Rapat koordinasi dengan mitra kerja', 0, 0),
(469, '2026-01-09 00:00:00', NULL, '2026-01-14', '2026-01-18', '4', 'Surabaya', 'Malang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan internal perusahaan', 0, 0),
(470, '2026-01-10 00:00:00', NULL, '2026-01-15', '2026-01-20', '5', 'Bali', 'Denpasar', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk evaluasi proyek', 0, 0),
(471, '2026-01-11 00:00:00', NULL, '2026-01-16', '2026-01-18', '2', 'Jakarta', 'Bandung', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Rapat dengan klien', 0, 0),
(472, '2026-01-12 00:00:00', NULL, '2026-01-17', '2026-01-22', '5', 'Malang', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kegiatan pelatihan bagi staf', 0, 0),
(473, '2026-01-13 00:00:00', NULL, '2026-01-18', '2026-01-21', '3', 'Medan', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Penyusunan laporan tahunan', 0, 0),
(474, '2026-01-14 00:00:00', NULL, '2026-01-19', '2026-01-22', '3', 'Yogyakarta', 'Solo', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kunjungan untuk pengecekan lokasi', 0, 0),
(475, '2026-01-15 00:00:00', NULL, '2026-01-20', '2026-01-24', '4', 'Surabaya', 'Semarang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan dan pengembangan staf', 0, 0),
(476, '2026-01-16 00:00:00', NULL, '2026-01-21', '2026-01-25', '4', 'Jakarta', 'Bandung', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk presentasi', 0, 0),
(477, '2026-01-17 00:00:00', NULL, '2026-01-22', '2026-01-27', '5', 'Palembang', 'Bandung', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kegiatan workshop perusahaan', 0, 0),
(478, '2026-01-18 00:00:00', NULL, '2026-01-23', '2026-01-28', '5', 'Bali', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk rapat', 0, 0),
(479, '2026-01-19 00:00:00', NULL, '2026-01-24', '2026-01-29', '5', 'Jakarta', 'Medan', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Audit internal perusahaan', 0, 0),
(480, '2026-01-20 00:00:00', NULL, '2026-01-25', '2026-01-30', '5', 'Makassar', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kunjungan untuk evaluasi proyek', 0, 0),
(481, '2026-01-21 00:00:00', NULL, '2026-01-26', '2026-01-29', '3', 'Semarang', 'Yogyakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan bagi karyawan baru', 0, 0),
(482, '2026-01-22 00:00:00', NULL, '2026-01-27', '2026-02-01', '5', 'Bandung', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Rapat koordinasi dengan tim proyek', 0, 0),
(483, '2026-01-23 00:00:00', NULL, '2026-01-28', '2026-02-02', '5', 'Surabaya', 'Bali', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan sistem baru', 0, 0),
(484, '2026-01-24 00:00:00', NULL, '2026-01-29', '2026-02-03', '5', 'Bali', 'Semarang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Penyusunan laporan tahunan', 0, 0),
(485, '2026-01-25 00:00:00', NULL, '2026-01-30', '2026-02-04', '5', 'Makassar', 'Medan', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Koordinasi proyek bersama mitra', 0, 0),
(486, '2026-01-26 00:00:00', NULL, '2026-01-31', '2026-02-05', '5', 'Yogyakarta', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Evaluasi proyek', 0, 0),
(487, '2026-01-27 00:00:00', NULL, '2026-02-01', '2026-02-06', '5', 'Palembang', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan untuk audit internal', 0, 0),
(488, '2026-01-28 00:00:00', NULL, '2026-02-02', '2026-02-07', '5', 'Bandung', 'Bali', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Rapat koordinasi perusahaan', 0, 0),
(489, '2026-01-29 00:00:00', NULL, '2026-02-03', '2026-02-08', '5', 'Jakarta', 'Makassar', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Presentasi produk terbaru', 0, 0),
(490, '2026-01-30 00:00:00', NULL, '2026-02-04', '2026-02-09', '5', 'Surabaya', 'Yogyakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pengembangan bisnis baru', 0, 0),
(491, '2026-01-31 00:00:00', NULL, '2026-02-05', '2026-02-10', '5', 'Medan', 'Bandung', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan untuk pemeriksaan lokasi', 0, 0),
(492, '2026-02-01 00:00:00', NULL, '2026-02-06', '2026-02-11', '5', 'Jakarta', 'Palembang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk evaluasi proyek', 0, 0),
(493, '2026-02-02 00:00:00', NULL, '2026-02-07', '2026-02-12', '5', 'Bali', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan teknis untuk staf', 0, 0),
(494, '2026-02-03 00:00:00', NULL, '2026-02-08', '2026-02-13', '5', 'Bali', 'Medan', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Rapat koordinasi dengan partner', 0, 0),
(495, '2026-02-04 00:00:00', NULL, '2026-02-09', '2026-02-14', '5', 'Makassar', 'Semarang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Evaluasi performa tim', 0, 0),
(496, '2026-02-05 00:00:00', NULL, '2026-02-10', '2026-02-15', '5', 'Surabaya', 'Solo', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Koordinasi pengembangan produk', 0, 0),
(497, '2026-02-06 00:00:00', NULL, '2026-02-11', '2026-02-16', '5', 'Medan', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk audit', 0, 0),
(498, '2026-02-07 00:00:00', NULL, '2026-02-12', '2026-02-17', '5', 'Bandung', 'Yogyakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Penyusunan strategi perusahaan', 0, 0),
(499, '2026-02-08 00:00:00', NULL, '2026-02-13', '2026-02-18', '5', 'Makassar', 'Palembang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan untuk karyawan baru', 0, 0),
(500, '2026-02-09 00:00:00', NULL, '2026-02-14', '2026-02-19', '5', 'Solo', 'Jakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Penyusunan laporan keuangan tahunan', 0, 0),
(501, '2026-02-10 00:00:00', NULL, '2026-02-15', '2026-02-20', '5', 'Medan', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Koordinasi program kerja tahunan', 0, 0),
(502, '2026-02-11 00:00:00', NULL, '2026-02-16', '2026-02-21', '5', 'Bandung', 'Malang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Evaluasi sistem operasi perusahaan', 0, 0),
(503, '2026-02-12 00:00:00', NULL, '2026-02-17', '2026-02-22', '5', 'Jakarta', 'Yogyakarta', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Perjalanan dinas untuk seminar', 0, 0),
(504, '2026-02-13 00:00:00', NULL, '2026-02-18', '2026-02-23', '5', 'Bali', 'Surabaya', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pengembangan pasar dan strategi baru', 0, 0),
(505, '2026-02-14 00:00:00', NULL, '2026-02-19', '2026-02-24', '5', 'Makassar', 'Medan', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Kunjungan lapangan dan evaluasi', 0, 0),
(506, '2026-02-15 00:00:00', NULL, '2026-02-20', '2026-02-25', '5', 'Solo', 'Palembang', '2024-11-18 14:32:09', '2024-11-18 14:32:09', 'Pelatihan manajerial perusahaan', 0, 0),
(507, '2026-02-16 00:00:00', NULL, '2026-02-20', '2026-02-25', '5', 'Medan', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi program baru', 0, 0),
(508, '2026-02-17 00:00:00', NULL, '2026-02-21', '2026-02-26', '5', 'Yogyakarta', 'Solo', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kunjungan ke cabang dan evaluasi', 0, 0),
(509, '2026-02-18 00:00:00', NULL, '2026-02-22', '2026-02-27', '5', 'Palembang', 'Makassar', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan dinas untuk workshop', 0, 0),
(510, '2026-02-19 00:00:00', NULL, '2026-02-23', '2026-02-28', '5', 'Surabaya', 'Bandung', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan staf baru', 0, 0),
(511, '2026-02-20 00:00:00', NULL, '2026-02-24', '0000-00-00', '5', 'Bali', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat koordinasi tahunan', 0, 0),
(512, '2026-02-21 00:00:00', NULL, '2026-02-25', '2026-03-02', '5', 'Semarang', 'Surabaya', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Penyusunan laporan tahunan', 0, 0),
(513, '2026-02-22 00:00:00', NULL, '2026-02-26', '2026-03-03', '5', 'Bandung', 'Yogyakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan bagi manajer', 0, 0),
(514, '2026-02-23 00:00:00', NULL, '2026-02-27', '2026-03-04', '5', 'Medan', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kunjungan kerja ke kantor pusat', 0, 0),
(515, '2026-02-24 00:00:00', NULL, '2026-02-28', '2026-03-05', '5', 'Surabaya', 'Makassar', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi dengan mitra kerja', 0, 0),
(516, '2026-02-25 00:00:00', NULL, '2026-03-01', '2026-03-06', '5', 'Yogyakarta', 'Palembang', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan sistem terbaru', 0, 0),
(517, '2026-02-26 00:00:00', NULL, '2026-03-02', '2026-03-07', '5', 'Jakarta', 'Bali', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan dinas untuk evaluasi proyek', 0, 0),
(518, '2026-02-27 00:00:00', NULL, '2026-03-03', '2026-03-08', '5', 'Bali', 'Surabaya', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kunjungan lokasi proyek', 0, 0),
(519, '2026-02-28 00:00:00', NULL, '2026-03-04', '2026-03-09', '5', 'Surabaya', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat untuk persiapan proyek baru', 0, 0),
(520, '2026-03-01 00:00:00', NULL, '2026-03-05', '2026-03-10', '5', 'Medan', 'Bali', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan untuk pengembangan bisnis', 0, 0),
(521, '2026-03-02 00:00:00', NULL, '2026-03-06', '2026-03-11', '5', 'Makassar', 'Solo', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Evaluasi dan pemeriksaan lokasi', 0, 0),
(522, '2026-03-03 00:00:00', NULL, '2026-03-07', '2026-03-12', '5', 'Palembang', 'Medan', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan bagi seluruh karyawan', 0, 0),
(523, '2026-03-04 00:00:00', NULL, '2026-03-08', '2026-03-13', '5', 'Bandung', 'Yogyakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan untuk pemeriksaan lapangan', 0, 0),
(524, '2026-03-05 00:00:00', NULL, '2026-03-09', '2026-03-14', '5', 'Surabaya', 'Bali', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat tahunan dengan tim proyek', 0, 0),
(525, '2026-03-06 00:00:00', NULL, '2026-03-10', '2026-03-15', '5', 'Jakarta', 'Semarang', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kegiatan untuk presentasi hasil proyek', 0, 0),
(526, '2026-03-07 00:00:00', NULL, '2026-03-11', '2026-03-16', '5', 'Medan', 'Makassar', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat koordinasi untuk pembaruan sistem', 0, 0),
(527, '2026-03-08 00:00:00', NULL, '2026-03-12', '2026-03-17', '5', 'Yogyakarta', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan dinas untuk pelatihan', 0, 0),
(528, '2026-03-09 00:00:00', NULL, '2026-03-13', '2026-03-18', '5', 'Bali', 'Medan', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi internal dan evaluasi tim', 0, 0),
(529, '2026-03-10 00:00:00', NULL, '2026-03-14', '2026-03-19', '5', 'Semarang', 'Yogyakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan bagi karyawan baru', 0, 0),
(530, '2026-03-11 00:00:00', NULL, '2026-03-15', '2026-03-20', '5', 'Surabaya', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan dinas untuk rapat kerja', 0, 0),
(531, '2026-03-12 00:00:00', NULL, '2026-03-16', '2026-03-21', '5', 'Palembang', 'Solo', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat koordinasi untuk pengembangan proyek', 0, 0),
(532, '2026-03-13 00:00:00', NULL, '2026-03-17', '2026-03-22', '5', 'Makassar', 'Medan', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Evaluasi dan pelatihan manajemen', 0, 0),
(533, '2026-03-14 00:00:00', NULL, '2026-03-18', '2026-03-23', '5', 'Bali', 'Bandung', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Rapat tahunan dan penyusunan laporan', 0, 0),
(534, '2026-03-15 00:00:00', NULL, '2026-03-19', '2026-03-24', '5', 'Surabaya', 'Yogyakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan teknis bagi staf', 0, 0),
(535, '2026-03-16 00:00:00', NULL, '2026-03-20', '2026-03-25', '5', 'Medan', 'Solo', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi dan presentasi proyek', 0, 0),
(536, '2026-03-17 00:00:00', NULL, '2026-03-21', '2026-03-26', '5', 'Makassar', 'Palembang', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pengembangan tim dan evaluasi proyek', 0, 0),
(537, '2026-03-18 00:00:00', NULL, '2026-03-22', '2026-03-27', '5', 'Jakarta', 'Surabaya', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan dan pembekalan bagi manajer', 0, 0),
(538, '2026-03-19 00:00:00', NULL, '2026-03-23', '2026-03-28', '5', 'Bali', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Penyusunan strategi dan evaluasi proyek', 0, 0),
(539, '2026-03-20 00:00:00', NULL, '2026-03-24', '2026-03-29', '5', 'Surabaya', 'Medan', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi antar departemen', 0, 0),
(540, '2026-03-21 00:00:00', NULL, '2026-03-25', '2026-03-30', '5', 'Semarang', 'Bali', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kunjungan kerja dan pertemuan dengan mitra', 0, 0),
(541, '2026-03-22 00:00:00', NULL, '2026-03-26', '2026-03-31', '5', 'Makassar', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Evaluasi proyek dan pengembangan bisnis', 0, 0),
(542, '2026-03-23 00:00:00', NULL, '2026-03-27', '2026-04-01', '5', 'Medan', 'Surabaya', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Pelatihan manajemen dan pengembangan tim', 0, 0),
(543, '2026-03-24 00:00:00', NULL, '2026-03-28', '2026-04-02', '5', 'Yogyakarta', 'Palembang', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi dan peninjauan lokasi proyek', 0, 0),
(544, '2026-03-25 00:00:00', NULL, '2026-03-29', '2026-04-03', '5', 'Bali', 'Makassar', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Perjalanan dinas untuk evaluasi kinerja', 0, 0),
(545, '2026-03-26 00:00:00', NULL, '2026-03-30', '2026-04-04', '5', 'Semarang', 'Medan', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Penyusunan laporan tahunan dan strategis', 0, 0),
(546, '2026-03-27 00:00:00', NULL, '2026-03-31', '2026-04-05', '5', 'Surabaya', 'Jakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Koordinasi dengan pihak mitra dan supplier', 0, 0),
(547, '2026-03-28 00:00:00', NULL, '2026-04-01', '2026-04-06', '5', 'Bali', 'Yogyakarta', '2024-11-18 14:34:00', '2024-11-18 14:34:00', 'Kegiatan internal dan evaluasi progres', 0, 0),
(548, '2024-11-20 00:00:00', NULL, '2026-04-02', '2026-04-07', '5', 'Jakarta', 'Solo', '2024-11-18 14:34:00', '2024-11-20 09:14:14', 'Pengembangan dan koordinasi proyek', 0, 0),
(549, '2024-11-26 00:00:00', NULL, '2024-11-24', '2024-11-25', '2', 'Makassar', 'Surabaya', '2024-11-18 14:34:00', '2024-11-26 09:08:46', 'Pelatihan manajerial dan koordinasi tim', 0, 0),
(550, '2024-11-26 00:00:00', NULL, '2024-11-25', '2024-11-28', '4', 'Semarang', 'Medan', '2024-11-18 14:34:00', '2024-11-26 08:59:08', 'Pelatihan dan pengembangan tim internal', 0, 0),
(551, '2024-11-20 00:00:00', 'PEMETAAN PKL 2024 SERTA PEMBIMBING SESUAI JAMPEL - 17 OKTOBER 2024.pdf', '2024-11-20', '2024-11-21', '2', 'A', '2', '2024-11-20 09:02:46', '2024-11-20 09:02:46', 'y', 4, 0),
(552, '2024-11-25 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2023-03-18', '2023-04-25', '39', 'A', 'WERWE', '2024-11-25 11:13:13', '2024-11-25 11:13:13', 'dfgf', 4, 0),
(553, '2024-11-25 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2023-03-18', '2023-04-25', '39', 'A', 'WERWE', '2024-11-25 11:13:54', '2024-11-25 11:13:54', 'dfgf', 4, 0),
(554, '2024-11-25 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2023-03-18', '2023-04-25', '39', 'A', 'WERWE', '2024-11-25 11:14:03', '2024-11-25 11:14:03', 'dfgf', 4, 0),
(555, '2024-11-25 00:00:00', 'Keberagaman-Jawa-Barat.pdf', '2023-03-18', '2023-04-25', '39', 'A', 'WERWE', '2024-11-25 11:14:12', '2024-11-25 11:14:12', 'dfgf', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id_sopir` int(11) NOT NULL,
  `nama_sopir` varchar(255) NOT NULL,
  `password` int(25) NOT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT 1,
  `keterangan` text NOT NULL,
  `tujuan` text NOT NULL,
  `jadwal` datetime NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `plat_nomor` varchar(20) DEFAULT NULL,
  `bukti_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id_sopir`, `nama_sopir`, `password`, `no_telepon`, `alamat`, `status_aktif`, `keterangan`, `tujuan`, `jadwal`, `role`, `created_at`, `updated_at`, `plat_nomor`, `bukti_gambar`) VALUES
(42, 'Anggi Nugraha', 12345, '089765672188', 'sdfghj', 1, 'h', 'm', '2024-08-12 12:17:00', '', 0, 2024, NULL, ''),
(43, 'arsyl', 12345, '089765672188', 'citereup', 1, 'mengantar bos', 'jakarta', '2024-08-23 12:35:00', '', 0, 2024, NULL, ''),
(45, 'aldi', 12345, '07854782372', 'cipada', 1, 'A', 'B', '2024-08-12 15:50:00', '', 0, 2024, NULL, ''),
(62, 'udin', 0, '0853453', 'r', 1, 'd', 'd', '2024-10-10 08:42:00', '', 2024, 2024, NULL, ''),
(63, 'dadang', 0, '08986357346', 'sdfsdf', 1, 'sehat', 'polres', '2024-04-18 08:13:00', '', 2024, 2024, NULL, ''),
(64, 'dudung', 0, '08986357346', 'hgsdfash', 1, 'baik', 'polsek', '2023-10-04 08:14:00', '', 2024, 2024, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sppd`
--

CREATE TABLE `sppd` (
  `id_pengajuan` int(11) NOT NULL,
  `nama_sopir` varchar(255) NOT NULL,
  `tempat_tujuan` varchar(255) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `foto` longblob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`id_pengajuan`, `nama_sopir`, `tempat_tujuan`, `tanggal_awal`, `tanggal_akhir`, `foto`, `created_at`, `updated_at`) VALUES
(16, '62', 'A', '2024-11-20', '2024-11-21', 0x75706c6f6164732f666f746f2f363734393165346161306632332e706e67, '2024-11-28 18:52:10', '2024-11-28 18:52:10'),
(17, '62', 'A', '2024-11-20', '2024-11-21', 0x75706c6f6164732f666f746f2f363734393165653063306230372e6a7067, '2024-11-28 18:54:40', '2024-11-28 18:54:40'),
(18, 'Sopir Tidak Ditemukan', 'A', '2024-11-20', '2024-11-21', 0x75706c6f6164732f666f746f2f53637265656e73686f74202831292e706e67, '2024-11-28 18:59:54', '2024-11-28 18:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `surat_pengajuan`
--

CREATE TABLE `surat_pengajuan` (
  `id` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `surat_tugas` varchar(255) DEFAULT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `tempat_tujuan` varchar(255) NOT NULL,
  `tempat_berangkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `unit` varchar(15) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `id_karyawan` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `unit`, `keterangan`, `id_karyawan`, `role`, `status`) VALUES
(37, 'gia', '$2y$10$UsnvCEldPK0vUs9WLaO7peHkEl/wEgFNye9ATVmngf8RcRL.L4UrG', 'gia', 'gia123@gmail.com', 'K', 'SEHAT', 127, 'admin', 'active'),
(38, 'user', '$2y$10$pN7kxopMnrWub1FiNguO4OtnHr9hLkyWtTn/ZeVv73ZF2m5eIAxkC', 'user', 'user123@gmail.com', 'U', 'SEHAT', 323232, 'user', 'active'),
(42, 'anggi', '$2y$10$QtNE5NKpG2rdEEdRmAKpA.27P55iAto2aFfoDIdqFO2YuEXRBpFp2', 'Anggi Nugraha ', 'nugrahaanggi328@gmail.com', 'A', NULL, 147, 'user', 'active'),
(43, 'sopir', '$2y$10$93sviS2Qdw2sfkGKVfatVuSIdd2gJsLsJ41TThykrtmw5cH8dy3/y', 'sopir', 'sopir123@gmail.com', 'L', 'SEHAT', 23131, 'sopir', 'active'),
(45, 'fajar', '$2y$10$mfopgyJ1Lk7XgDLN2ArghuFNTBxvME5DX6Mjeh3yvFhl61Si0tjFG', 'Fajar Z', 'fajar@gmail.com', 'A', NULL, 144, 'pejabat', 'active'),
(47, 'bendahara', '$2y$10$JG/YV6MEBYEqOq6FEB58depkd5d3MvWZcpxE50JCu/q0wot2nvJMm', 'bendahara', 'bendahara@gmail.com', 'b', 'SEHAT', 3456789, 'bendahara', 'active'),
(49, 'anggi', '$2y$10$QWLCIXmX98cWEvmbFdn2YOWDIV1yDcdGGMdmGJUPK6ky0q/h8w7aK', 'Anggi Nugraha ', 'nugrahaanggi328@gmail.com', 'B', NULL, 141, 'user', 'active'),
(50, 'susi', '$2y$10$BaIk1vW5H7DyIZsJYyFAjee/tDt.rms/QtSaSEULXARMrQO/r7Io.', 'susi', 'susi12@gmail.com', '', NULL, 175, 'user', 'active'),
(51, 'hanip', '$2y$10$TmLI/az6TEbE3PuGReE5wujSEALfElnl9k0Vb6gqCpJpAikEnSlGa', 'hanip', 'sabir@gmail.com', '', NULL, 177, 'user', 'active'),
(52, 'udin', '$2y$10$Ub7qb5lBZqlNR6POShSe9.pfHxjSrbfa35Tt.8fkWNGOkEhkXmCrm', 'udin', 'adit32@gmail.com', '', NULL, 178, 'user', 'active'),
(62, 'dadang', '$2y$10$p9QlS7/wQl3gHkmlSxMH9.ZPp7kAGMQHG0slM5CCu0toAVBA0jzm6', 'dadang', 'sabir@gmail.com', '', NULL, 181, 'sopir', 'active'),
(63, 'dudung', '$2y$10$3jAZ3d9X/Ojadxxpu2JthuNbr8ZlzZO7s0iQuEfphVZTEiVYbvezq', 'dudung', 'dudung@gmail.com', '', NULL, 180, 'sopir', 'active'),
(64, 'qq', '$2y$10$6d.w3K12Lwmet/D3T/9oZuQwkWUl.5Mvr1BfforlYCdironuucOD6', 'qq', 'qq@gmail.com', '', NULL, 179, 'sopir', 'active'),
(65, 'arsyl', '$2y$10$Wj87anTsBg4MtwGAc7feOenSpDiekRrAg0Ut4hEcvM3NOX6/bFuFy', 'arsyl', 'arsyl@gmai.com', '', NULL, 141, 'user', 'active'),
(66, 'Dewi Kartika', '$2y$10$hC1cWzvPDF016M.3Kdm1MevGccJ6VQ/oIsC88rJqo7PlzAUNJJm72', 'Dewi Kartika', 'dewi@gmail.com', '', NULL, 190, 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_perjalanan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `login_histori`
--
ALTER TABLE `login_histori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `perjadin_detail`
--
ALTER TABLE `perjadin_detail`
  ADD PRIMARY KEY (`id_pd`);

--
-- Indexes for table `perjalanan_dinas`
--
ALTER TABLE `perjalanan_dinas`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id_sopir`);

--
-- Indexes for table `sppd`
--
ALTER TABLE `sppd`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `surat_pengajuan`
--
ALTER TABLE `surat_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_perjalanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `login_histori`
--
ALTER TABLE `login_histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `perjadin_detail`
--
ALTER TABLE `perjadin_detail`
  MODIFY `id_pd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `perjalanan_dinas`
--
ALTER TABLE `perjalanan_dinas`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id_sopir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sppd`
--
ALTER TABLE `sppd`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `surat_pengajuan`
--
ALTER TABLE `surat_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
