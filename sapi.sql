-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 1, 0.2, 0),
(2, 1, 2, 0.2, 0.2),
(3, 1, 3, 0.4, 0),
(4, 1, 4, 0.4, 0.2),
(5, 1, 5, 0.6, 0.2),
(6, 1, 6, 1, 0),
(7, 1, 7, 1, 0),
(8, 1, 8, 1, 0.2),
(9, 2, 9, 0.4, 0),
(10, 2, 10, 0.2, 0.2),
(11, 2, 11, 0.4, 0),
(12, 2, 12, 1, 0.2),
(13, 2, 13, 0.4, 0.2),
(14, 3, 14, 0.4, 0.2),
(15, 3, 15, 0.4, 0.2),
(16, 3, 16, 0.8, 0),
(17, 4, 2, 0.4, 0.2),
(18, 4, 4, 0.6, 0.2),
(19, 4, 5, 0.6, 0.2),
(20, 4, 17, 1, 0.2),
(21, 4, 18, 0.4, 0),
(22, 4, 19, 0.4, 0.2),
(23, 4, 20, 0.8, 0.2),
(24, 5, 21, 0.4, 0.2),
(25, 5, 22, 0.4, 0),
(26, 5, 2, 0.4, 0.2),
(27, 5, 18, 0.6, 0),
(28, 5, 23, 0.4, 0.2),
(29, 6, 24, 0.6, 0),
(30, 6, 25, 0.4, 0.2),
(31, 6, 26, 1, 0),
(32, 6, 27, 0.8, 0),
(33, 6, 28, 0.2, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Pernapasan terganggu'),
(2, 'Demam tinggi'),
(3, 'Ternak terlihat lemah dan tampak  gemetar'),
(4, 'Terjadi pembengkakan kelenjar  limfe'),
(5, 'Kotoran cair dan bercampur darah'),
(6, 'Keluar darah dari hidung, telinga, \r\nmulut, anus, dan vagina\r\n'),
(7, 'Ternak berputar-putar di kandang \r\natau di padang rumput'),
(8, 'Leher ternak bengkok atau seperti  terpelentir'),
(9, 'Keluar lendir dari hidung ternak'),
(10, 'Fisik ternak kurus namun kuat  makan dan minum'),
(11, 'Jalan ternak sempoyongan'),
(12, 'Terdapat luka yang simetris pada\r\nsisi kanan dan kiri ternak'),
(13, 'Ternak demam dan pucat'),
(14, 'Mata ternak berlendir'),
(15, 'Hidung ternak mengalami \r\nperadangan'),
(16, 'Kerusakan pada kulit dan \r\nmengelupas'),
(17, 'Ternak mengeluarkan keringat \r\ndarah atau pori-pori \r\nmengeluarkan darah'),
(18, 'Air liur keluar berlebihan'),
(19, 'Mengalami kepucatan pada \r\nselaput lendir mulut, mata, \r\nmaupun alat kelamin'),
(20, 'Terdapat luka-luka pada kulit \r\nyang tertutup keropeng dan \r\nkelihatan tebal'),
(21, 'Ternak selalu menggosok anggota \r\nbadan yang memiliki keropeng'),
(22, 'Mata membengkak, berair, dan \r\nmerah'),
(23, 'Ternak tidak nafsu makan'),
(24, 'Liur terlihat menggantung, dan \r\nberbusa di lantai kandang'),
(25, 'Ternak lebih sering berbaring'),
(26, 'Luka pada kuku, dan kukunya \r\nterlepas'),
(27, 'Menggertakan gigi, menggosokkan mulut, dan suka menendangkan kaki'),
(28, 'Kehilangan berat badan');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(1, '2023-11-28 20:32:44', 'a:3:{i:1;s:6:\"1.0000\";i:4;s:6:\"0.7120\";i:5;s:6:\"0.2000\";}', 'a:8:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";}', 1, '1.0000'),
(2, '2023-11-28 20:36:36', 'a:1:{i:1;s:6:\"0.0160\";}', 'a:5:{i:1;s:1:\"1\";i:2;s:1:\"9\";i:3;s:1:\"2\";i:4;s:1:\"5\";i:5;s:1:\"9\";}', 1, '0.0160'),
(3, '2023-11-28 20:46:26', 'a:3:{i:1;s:6:\"0.2000\";i:4;s:6:\"0.1600\";i:5;s:6:\"0.1600\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"2\";}', 1, '0.2000'),
(4, '2023-11-28 20:49:59', 'a:3:{i:1;s:6:\"0.2000\";i:4;s:6:\"0.1600\";i:5;s:6:\"0.1600\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"2\";}', 1, '0.2000'),
(5, '2023-11-28 21:57:19', 'a:1:{i:1;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 1, '0.2000'),
(6, '2023-11-30 14:16:54', 'a:2:{i:5;s:6:\"0.5379\";i:4;s:6:\"0.1600\";}', 'a:4:{i:18;s:1:\"4\";i:21;s:1:\"1\";i:22;s:1:\"3\";i:24;s:1:\"5\";}', 5, '0.5379'),
(7, '2023-11-30 14:26:39', 'a:1:{i:6;s:6:\"1.0000\";}', 'a:1:{i:26;s:1:\"1\";}', 6, '1.0000'),
(8, '2023-11-30 14:58:21', 'a:2:{i:1;s:6:\"1.0000\";i:2;s:6:\"0.8320\";}', 'a:3:{i:6;s:1:\"1\";i:9;s:1:\"4\";i:12;s:1:\"1\";}', 1, '1.0000'),
(9, '2023-11-30 14:59:35', 'a:3:{i:1;s:6:\"1.0000\";i:4;s:6:\"0.7120\";i:5;s:6:\"0.2000\";}', 'a:6:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";}', 1, '1.0000'),
(10, '2023-11-30 15:00:45', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"0.9424\";i:4;s:6:\"0.7120\";i:3;s:6:\"0.3600\";i:5;s:6:\"0.2000\";}', 'a:15:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";i:14;s:1:\"1\";i:15;s:1:\"1\";}', 1, '1.0000'),
(11, '2023-11-30 15:01:42', 'a:1:{i:6;s:6:\"1.0000\";}', 'a:1:{i:26;s:1:\"1\";}', 6, '1.0000'),
(12, '2023-11-30 15:32:03', 'a:0:{}', 'a:1:{i:10;s:1:\"1\";}', 0, ''),
(13, '2023-11-30 15:32:34', 'a:1:{i:1;s:6:\"0.4000\";}', 'a:1:{i:3;s:1:\"1\";}', 1, '0.4000'),
(14, '2023-11-30 15:32:51', 'a:1:{i:1;s:6:\"1.0000\";}', 'a:2:{i:3;s:1:\"2\";i:6;s:1:\"1\";}', 1, '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti Iya', ''),
(2, 'Hampir Pasti Iya', ''),
(3, 'Kemungkinan Besar Iya', ''),
(4, 'Mungkin Iya', ''),
(5, 'Tidak Tahu', ''),
(6, 'Mungkin Tidak', ''),
(7, 'Kemungkinan Besar Tidak', ''),
(8, 'Hampir Pasti Tidak', ''),
(9, 'Pasti Tidak', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Antraks', 'Antraks adalah penyakit bakterial bersifat menular akut pada manusia dan hewan yang disebabkan oleh bakteri Bacillus anthracis.  Antraks menyebabkan kulit para korban akan menghitam', 'Pengobatan Antraks viseral dapat dilakukan dengan penisilin G 18-24 juta IU per hari secara intra vena ditambah dengan 1 gram tetrasikin per hari. Pengobatan Antraks nafas hampir sama dengan yang viseral tetapi ditambah streptomicin 1-2 gram/hari sedangkan pengobatan Antraks kulit dapat dilakukan dengan suntikan prokain berdosis 2 x 1,2 juta IU secara intra muskular selama 5-7 hari atau dengan benzyl penilisin berdosis 250.000 IU setiap 6 jam.', '01Antraks.jpeg'),
(2, 'Surra', 'Surra adalah penyakit hewan yang disebabkan oleh infeksi protozoa, yaitu Trypanosoma evansi.', 'Pengobatan peternak menggunakan obat Trypanocidal, seperti surramin, diminazeneacceturate, danisomedium. ', '02Surra.jpeg'),
(3, 'Bali Ziekte', 'Penyakit Bali Ziekte sebenarnya merupakan penyakit metabolisme akibat memakan rumput lantana Camara Sp. Atau di Bali disebut padang Krasi atau padang sere-sere adapun proses hingga menimbulkan penyakit.', 'Solusi bagi peternak menghubungi petugas setelah mendapat penanganan ternak sapi harus diberikan dinding dri kain atau spanduk agar sapi tidak terkena sinar matahari selama masa penyembuhan.', '03BaliZiekte.jpeg'),
(4, 'Jembrana', 'Jembrana adalah penyakit pada sapi Bali yang disebabkan oleh Retrovirus, dari group Lentivirus dan disebut Jembrana disease virus (JDV).', 'Segera hubungi petugas kesehatan hewan untuk memperoleh pengobatan pada ternak, seperti: Pemberian antiradang, antinyeri, penurun demam untuk mengatasi gejala demam dan adanya peradangan di dalam tubuh (Medipiron Injection), Pemberian vitamin untuk meningkatkan daya tahan tubuh dan mempercepat penyembuhan dengan Injekvit B-Plex atau ADE-Plex Inj, dan Pemberian antibiotik untuk mengatasi infeksi sekunder dengan Medoxy-LA, G-Mox 15% LA Inj.', '04Jembrana.jpeg'),
(5, 'Cascado', 'Cascado merupakan salah satu infeksi kulit yang disebabkan oleh jamur Trichophyton Concentricum.', 'Hanya butuh kepatuhan pasien dalam meminum obatnya, penjelasan ke pasien bahwa ini memang harus minum obatnya lama.', '05Cascado.jpeg'),
(6, 'PMK (Penyakit Mulut dan Kuku)', 'Penyakit mulut dan kuku (PMK) adalah penyakit hewan yang serius dan sangat menular. Penyakit yang disebabkan oleh virus ini menyerang semua hewan berkuku belah, termasuk sapi, domba, kambing, unta, rusa dan babi. ', 'Pemberian obat antibiotik, antipiretik dan vitamin.', '06PMK.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` text NOT NULL,
  `sm_post` text NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `sm_post`, `gambar`) VALUES
(2, 'Antraks', '<p>Antraks adalah penyakit bakterial bersifat menular akut pada manusia dan hewan yang disebabkan oleh bakteri Bacillus anthracis.  Antraks bermakna \"batubara\" dalam bahasa Yunani, dan istilah ini digunakan karena kulit para korban akan berubah hitam. Antraks paling sering menyerangherbivora-herbivora liar dan yang telah dijinakkan.Penyakit Antraks bersifat zoonosis yang berarti dapat ditularkan dari hewan ke manusia atau sebaliknya, namun tidak dapat ditularkan antara sesama manusia.\r\n\r\nBacillusanthracis sebagai penyebab penyakit Antraks,bersifat gram positif, berbentuk batang, tidak bergerak dan membentuk spora. Bentuk vegetatifnya dapat tumbuh subur di dalam tubuh dan segera menjadi spora apabila berada di luar tubuh ketika kontak dengan udara luar. Spora ini dengan cepat akan terus menyebar melalui air hujan.</p>\r\n\r\n<p>Ternak dapat terinfeksi penyakit Antraksapabila memakan pakan atau meminum air yang terkontaminasi spora tersebut atau jika spora mengenai bagian tubuh yang luka. Ternak penderita dapat menulari ternak yang lain melalui cairan (eksudat) yang keluar dari tubuhnya. Cairan ini kemudian mencemari tanah sekelilingnya dan dapat menjadi sumber untuk munculnya kembali wabah di masa berikutnya. </p>', '<p>Pengobatan Antraks viseral dapat dilakukan dengan penisilin G 18-24 juta IU per hari secara intra vena ditambah dengan 1 gram tetrasikin per hari. Pengobatan Antraks nafas hampir sama dengan yang viseral tetapi ditambah streptomicin 1-2 gram/hari sedangkan pengobatan Antraks kulit dapat dilakukan dengan suntikan prokain berdosis 2 x 1,2 juta IU secara intra muskular selama 5-7 hari atau dengan benzyl penilisin berdosis 250.000 IU setiap 6 jam.</p>', '01Antraks.jpeg'),
(3, 'Surra', '<p>Penyakit Surra adalah penyakit hewan yang disebabkan oleh infeksi protozoa, yaitu Trypanosoma evansi.  Hewan yang rentan terhadap penyakit ini adalah: unta, kuda, kerbau, sapi, kambing, domba, babi, bahkan anjing.  Hampir semua mamalia reseptif meskipun tidak semuanya rentan, dan burung kemungkinan juga reseptif.  Surra dapat menginfeksi manusia berdasarkan hasil serologi, bahkan pewarnaan Giemsa ulas darah dari pasien di India menunjukkan positif mengandung Trypanosoma. </p>', '<p>Ekstrak herbal dilaporkan mempunyai potensi digunakan sebagai anti Trypanosoma sp.  Kandungan obat herbal yang berpotensi sebagai antiprotozoal adalah flavonoids.  Flavonoid juga dilaporkan mempunyai aktivitas sebagai antiinflamasi. Ekstrak daun tanaman air Khaya senegalensis menunjukkan aktivitas trypanosidal yang lemah sedangkan ekstrak kulit batang menunjukkan aktivitas yang kuat yang dipengaruhi oleh dosis yang digunakan. Namun demikian kulit batang K. senegalensis mempunyai aktifitas anti T. evansi baik secara in-vitro dan in-vivo tetapi tidak dapat mencegah terjadinya anemia yang disebabkan penyakit tersebut.   Upaya pengobatan infeksi Trypanosoma menggunakan ekstrak etanol kipahit (Tithonia diversifolia) dengan dosis 25 mg/BB dilaporkan dapat mengurangi jumlah T. evansi dalam sirkulasi darah.   </p>', '02Surra.jpeg'),
(4, 'Bali Ziekte', '<p>Penyakit Bali Ziekte sebenarnya merupakan penyakit metabolisme akibat memakan rumput lantana Camara Sp. Atau di Bali disebut padang Krasi atau padang sere-sere adapun proses hingga menimbulkan npenyakit sebagai berikut : biasanya tanaman ini muncul dan tumbuh di tegalan umunya dan saat awal musim hujan biasanya tumbuh dan segar, peternak sangat senang memberikan rumput ini karena disukai oleh sapi apalagi baru tumbuh biasanya tanaman ini sangat subur(Lempung,bhs Bali)karena disukai sapi sehingga peternak biar mudah mendapatkan tinggal dikasikan saja.</p>', '<p>Solusi bagi peternak menghubungi petugas setelah mendapat penanganan ternak sapi harus diberikan dinding dri kain atau spanduk agar sapi tidak terkena sinar matahari selama masa penyembuhan</p>', '03BaliZiekte.jpeg'),
(5, 'Jembrana', '<p>Penyakit jembrana merupakan penyakit menular akut pada sapi Bali yang disebabkan oleh Retrovirus, keluarga lentivirinae yang termasuk dalam famili retroviridae, ditandai dengan berbagai gejala seperti depresi, anoreksia, demam, perdarahan ekstensif di bawah kulit, dan kebengkakan kelenjar limfe, terutama limfoglandula prefemoralis dan preskapularis serta adanya diare berdarah, ditemukan juga pada banyak kasus penyakit yang disertai perdarahan kulit, sehingga penyakit ini juga disebut sebagai penyakit keringat darah. Sejauh ini Penyakit Jembrana (JD) hanya terkenal di Indonesia dan hanya menyerang sapi bali.</p>', '<p>Pelaksanaan vaksinasi dan pemberian vitamin untuk menjaga kekebalan tubuh ternak, peternak memastikan ternaknya mendapatkan pakan yang cukup, dan menjaga kebersihan kandang.</p>', '04Jembrana.jpeg'),
(6, 'Kaskado', '<p>Kaskado merupakan salah satu infeksi kulit yang disebabkan oleh jamur Trichophyton Concentricum. Keunikan Kaskado menurut dr. Irene yakni hanya ditemukan di daerah-daerah Indonesia Bagian Timur. Gejalanya sendiri jamur pada kulit ada sisik-sisik yang bentuknya itu seperti ukiran Polycyclic, bentuknya melingkar seperti tersusun konsentris seperti genting. </p>', '<p>Penderita Kaskado bisa sembuh dalam kurun waktu empat minggu jika rutin meminum obat. Jika tidak rutin, Kaskado memang akan hilang tapi kemudian muncul kembali. Kemudian waktu penyembuhan akan lebih lama yakni enam sampai delapan bulan.</p>', '05Cascado.jpeg'),
(7, 'PMK', '<p>PMK disebabkan oleh virus bernama Aphthovirus yang sangat menular. Virus tersebut bisa menyebar melalui cairan dari lepuh dan oleh air liur hewan yang terinfeksi. Hewan bisa terinfeksi bila melakukan kontak dengan hewan yang terinfeksi, bagian hewan yang terkontaminasi atau benda yang terkontaminasi seperti peralatan peternakan.  Virus PMK bisa bertahan dalam pakan, air dan di permukaan hingga satu bulan, tergantung pada suhu dan kondisi tanah. Virus tersebut juga bisa bertahan dalam jaringan hidup dan dalam napas, air liur, urin, dan ekskresi lain dari hewan yang terinfeksi.  </p>', '<p>Tidak ada pengobatan yang bisa diberikan untuk mengatasi penyakit mulut dan kuku. Karena penyakit ini disebabkan oleh virus, PMK biasanya bisa sembuh dengan sendirinya dengan kekuatan imunitas tubuh hewan.</p>', '06PMK.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
