-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Agu 2016 pada 11.45
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `h71721_dmsinew`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator_m`
--

CREATE TABLE IF NOT EXISTS `administrator_m` (
  `id_user` int(11) unsigned NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `id_asosiasi` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `no_telp` varchar(30) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `administrator_m`
--

INSERT INTO `administrator_m` (`id_user`, `admin_name`, `id_asosiasi`, `jenis_kelamin`, `jabatan`, `no_telp`, `photo`, `mdb`, `mdd`) VALUES
(1, 'Developer Web', 100, 'L', 'Web Developer', '089698016569', '1_7451317dmsi2.jpg', 2, '2016-07-21 10:43:45'),
(2, 'saepul bahri', 100, 'L', 'Developer hebat', '089698016565', NULL, 1, '2016-07-28 06:13:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_m`
--

CREATE TABLE IF NOT EXISTS `agenda_m` (
`id_agenda` int(10) unsigned NOT NULL,
  `id_asosiasi` int(11) NOT NULL,
  `judul_agenda` varchar(200) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `lokasi` varchar(150) DEFAULT NULL,
  `keterangan` text,
  `image_agenda` varchar(200) DEFAULT NULL,
  `file_agenda` varchar(200) DEFAULT NULL,
  `judul_english` varchar(255) NOT NULL,
  `keterangan_english` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `agenda_m`
--

INSERT INTO `agenda_m` (`id_agenda`, `id_asosiasi`, `judul_agenda`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`, `keterangan`, `image_agenda`, `file_agenda`, `judul_english`, `keterangan_english`) VALUES
(6, 100, 'Sesuatu banget a\r\n', '2016-06-01', '2016-06-02', 'Bogor\r\n', 'Sesuatu banget a', '6_1_POIDEC.JPG', '1_POIDEC.JPG', 'Very Something  a', 'Very Something a'),
(7, 8, 'Kegiatan Anggota', '2016-07-01', '2016-07-31', 'Jakarta', 'Datang dan saksikan acara serunya!!!\r\n', '7_2_POIDEC_LOGO.PNG', '2_POIDEC_LOGO.PNG', 'Member Event', 'Come and see the show thrill !!!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album_m`
--

CREATE TABLE IF NOT EXISTS `album_m` (
`id_album` int(11) NOT NULL,
  `nama_album` varchar(200) NOT NULL,
  `image_album` varchar(200) NOT NULL,
  `nama_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `album_m`
--

INSERT INTO `album_m` (`id_album`, `nama_album`, `image_album`, `nama_english`) VALUES
(1, 'album bersama', '1_063209500_1457408008-20160308-Ilustrasi-Kelapa-Sawit-iStockphoto2.jpg', 'Album Us'),
(2, 'Album DMSI', '2_054718200_1444804559-20151014-_Ilustrasi_Kelapa_Sawit-3.jpg', 'DMSI Album');

-- --------------------------------------------------------

--
-- Struktur dari tabel `asosiasi_m`
--

CREATE TABLE IF NOT EXISTS `asosiasi_m` (
`id_asosiasi` int(11) unsigned NOT NULL,
  `id_kota` int(11) unsigned NOT NULL,
  `nama_asosiasi` varchar(150) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `kodepos` varchar(20) DEFAULT NULL,
  `telepon` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo_asosiasi` varchar(200) DEFAULT NULL,
  `profil` text,
  `profil_english` text NOT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asosiasi_m`
--

INSERT INTO `asosiasi_m` (`id_asosiasi`, `id_kota`, `nama_asosiasi`, `alamat`, `kodepos`, `telepon`, `fax`, `website`, `email`, `logo_asosiasi`, `profil`, `profil_english`, `mdb`, `mdd`) VALUES
(1, 1271, 'Asosiasi Petani Kelapa Sawit Indonesia (APKASINDO)', 'Jl. Setia Budi, Komplek Setia Budi Point B-6', '-', '061 - 8225828', '061 - 8225827', '-', '-', '1_155467ce-4e21-44f2-a95a-6293565407f4.png', 'Profil APKASINDOAsosiasi Petani Kelapa Sawit Indonesia (APKASINDO) didirikan pada tanggal 28 Oktober 2000 di Palembang, oleh utusan-utusan petani kelapa sawit dari seluruh Indonesia. APKASINDO adalah satu-satunya organisasi profesi petani…', '', 1, '2016-06-27 14:20:47'),
(2, 3174, 'Gabungan Perusahaan Perkebunan Indonesia (GPPI)', 'Jl. Iskandarsyah 2 No.62 Kebayoran Baru', '', '+6221 7250515', '+6221 7210752', '-', '-', '2_06e8360f-3d7f-4eda-b88e-816ceef06ae9.png', '', '', 1, '2016-06-27 14:25:56'),
(3, 3174, 'Asosiasi Industri Minyak Makan Indonesia (AIMMI)', 'Jl. Karet Pedurenan No.25', '', '+6221 5253600', '+6221 5250928 - 29', '', '', '3_ENDORSER_8.png', '', '', 1, '2016-05-19 18:30:28'),
(4, 3174, 'Asosiasi Produsen Biofuels Indonesia (APROBI)', 'Plaza Dua Mutiara (DM), Lt.3Jl. Jend. Sudirman Kav.24-25', '', ' +6221 5278921 - 23', '-', '-', '-', '4_20647a67-c71e-4730-b127-6ee47114284c.png', '', '', 1, '2016-06-27 14:29:27'),
(5, 3171, 'Gabungan Industri Minyak Nabati Indonesia (GIMNI)', 'Wisma BNI 46, Lt.15 R03Jl. Jend. Sudirman Kav.1', '', '+6221 5745678', '+6221 5724878', '-', '-', '5_gimni.png', '', '', 1, '2016-06-27 14:31:53'),
(6, 3201, 'Masyarakat Perkelapa-sawitan Indonesia (MAKSI)', 'Gedung PAU IPB, Lt.2 Kampus IPB Darmaga Bogor', '-', '+62251 8621560', '+62251 8621560', '-', '-', '6_maksi.png', 'Kelapa sawit merupakan komoditas unggulan dalam pembangunan ekonomi pada umumnya, dan dalam pembangunan agro-industri di Indonesia pada khususnya. Dalam mengantisipasi perkembangan industri sawit diperlukan kerjasama yang baik antar stakeholder, baik pemerintah, swasta, maupun peneliti, peminat dan pemerhati lainnya. Hal ini penting untuk menjamin perkembangan dan keberlanjutan perkelapasawitan di Indonesia, secara terpadu dari sektor hulu sampai sektor hilir. Selanjutnya, nilai tambah industri hilir pengolahan sawit dapat dinikmati oleh bangsa Indonesia.\r\nMenyadari hal tersebut diatas, atas prakarsa 7 Pusat Antar Universitas (PAU) Biosains (PAU Bioteknologi ITB, PAU Ilmu Hayati ITB, PAU Pangan dan Gizi UGM, PAU Bioteknologi IPB, PAU Pangan dan Gizi IPB, PAU Bioteknologi IPB, PAU Ilmu Hayati IPB), Pusat Studi Pembangunan IPB dan Pusat Penelitian Kelapa Sawit Medan, para pakar kelapa sawit menganggap perlu berhimpun dalam suatu wadah organisasi yang disebut Masyarakat Perkelapa Sawitan Indonesia (MAKSI).\r\n\r\nTujuan Organisasi\r\nMengusahakan keterpaduan pengelolaan sumber daya dan program dari berbagai stakeholder perkelapa sawitan; sehingga produksi dan nilai tambah sistem agrobisnis kelapa sawit dapat dinikmati oleh bangsa Indonesia semaksimal.\r\nMenjadi wadah kerjasama antara pelaku perkelapa sawitan Indonesia dari hulu sampai hilir (pemerintah, swasta, perguruan tinggi dan pelaku lainnya).\r\nRuang Lingkup dan Kegiatan\r\nMenghimpun, mengembangkan dan mengkoordinasikan, mempromosikan kegiatan perkelapa sawitan\r\nInventarisasi/dokumentasi karya ilmiah, laporan perkembangan industri dan ipteks perkelapa sawitan\r\nMengusahakan kerjasama kegiatan penelitian dan pengembangan, pelatihan, konsultasi dan advokasi perkelapa sawitan\r\nMenyelenggarakan seminar, penerbitan, diskusi ilmiah perkelapa sawitan dan iptek terkait lainnya\r\nMengusahakan kerjasama dengan perhimpunan ilmiah dan profesi relevan dalam negeri dan luar negeri\r\nMenyampaikan masukan kepada pemerintah dalam arah pembangunan perkelapa sawitan di Indonesia', '', 1, '2016-06-27 14:32:16'),
(7, 1271, 'Asosiasi Produsen Oleochemical Indonesia (APOLIN)', 'Jl. Pulau Irian No.2Kawasan Industri', '20371', '+6261 6851582', '+6261 6859371', '-', '-', '7_apolin.png', '', '', 1, '2016-06-27 14:32:31'),
(8, 3171, 'Gabungan Pengusaha Kelapa Sawit Indonesia (GAPKI)', 'Sudirman Park Rukan Blok B No.18 Jl. K.H. Mas Mansyur Kav.35 ', '10220', '+6221-57943871', '+6221-57943872', '-', '-', '8_gapki.png', 'GAPKI atau Gabungan Pengusaha Kelapa Sawit Indonesia didirikan pada 27 Februari 1981 karena para enterpreneur minyak sawit sadar bahwa mereka mesti dipersatukan di satu organisasi serta timbulnya perusahaan industri minyak sawit baru. Memulai GAPKI terdiri atas dua pembagian, Jenderal (Pengurus) dan Komisi Teknik. Ketua pertama GAPKI (Komisi Pengurus) adalah Manap Nasution yang mengebawahkan tiga orang kepala, tiga orang sekretaris, dua harta dan seorang komisaris. Sedangkan Komisi Teknik, yang bertanggung jawab dalam membantu pengurus untuk merumuskan mengangkat persoalan dan mengantarkan masukan, yang diketuai oleh Mohd. Yahya Rowter, MA. \r\n\r\nPada mulanya, GAPKI hanya mempunyai 23 perusahaan perkebunan sebagai anggotanya yang terdiri nasional dan asing pribadi perkebunan, dan dimiliki oleh pemerintah perkebunan. Di waktu sekarang, keanggotaan GAPKI sudah menjadi 382 perkebunan, dengan 34 orang anggota pusat, 16 anggota dari Sumatra Barat cabang, 22 anggota dari Jambi cabang, 9 anggota dari Sulawesi cabang, 49 anggota dari Kalimantan Tengah, 59 anggota dari Riau cabang, 30 anggota dari Kalimantan Selatan , Kalimantan Timur 35 anggota, Sumatera Utara 61 anggota, Sumatera Selatan 46 anggota. Cabang Kalimantan Barat 21\r\n\r\nDewasa ini, pentingnya minyak sawit agribusiness mendesak GAPKI untuk mengelola organisasinya secara profesional dan efektif untuk menambah sumbangannya sampai perkembangan nasional yang keseluruhan. ', '', 1, '2016-06-27 14:32:46'),
(100, 3101, 'Dewan Minyak Sawit Indonesia', 'Jakarta', '', '', '', '', '', '100_dmsi.png', '', '', 1, '2016-07-21 09:45:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspirasi_m`
--

CREATE TABLE IF NOT EXISTS `aspirasi_m` (
`id_aspirasi` int(11) NOT NULL,
  `id_asosiasi` int(11) NOT NULL,
  `nama_pengirim` varchar(250) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `isi_aspirasi` text NOT NULL,
  `tanggal` date NOT NULL,
  `publish` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `jawaban` text NOT NULL,
  `status_jawab` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `aspirasi_m`
--

INSERT INTO `aspirasi_m` (`id_aspirasi`, `id_asosiasi`, `nama_pengirim`, `pekerjaan`, `email`, `judul`, `isi_aspirasi`, `tanggal`, `publish`, `jawaban`, `status_jawab`, `foto`) VALUES
(11, 100, 'M. Saepul Bahri', 'Programmer', 'bachrisaiful6@gmail.com', 'Sangat Membantu', 'Web DMSI ini sangat membantu', '0000-00-00', 'ya', '', 'tidak', '11_13445764_1053371498084095_2065887088560297463_n.jpg'),
(13, 100, 'M. Saepul Bahri', 'Programmer', 'bachrisaiful6@gmail.com', 'Perbaiki Bug ', 'Tolong perbaiki bug yang terjadi pada halaman page home utama', '2016-07-01', 'ya', 'ok sip', 'ya', '13_13445764_1053371498084095_2065887088560297463_n.jpg'),
(16, 100, 'b', 'b', 'b', 'b', 'b', '2016-07-02', 'tidak', '', 'tidak', '16_117752.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagan_m`
--

CREATE TABLE IF NOT EXISTS `bagan_m` (
`id_bagan` int(11) NOT NULL,
  `judul_bagan` varchar(250) NOT NULL,
  `image` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `judul_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bagan_m`
--

INSERT INTO `bagan_m` (`id_bagan`, `judul_bagan`, `image`, `tanggal`, `judul_english`) VALUES
(1, 'abc ', 'Koala.jpg', '1900-12-01', 'sbc ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner_m`
--

CREATE TABLE IF NOT EXISTS `banner_m` (
`id_banner` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nama_english` varchar(200) NOT NULL,
  `banner` varchar(300) NOT NULL,
  `banner_english` varchar(300) NOT NULL,
  `masa_aktif` enum('sementara','tetap') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `urutan` int(11) NOT NULL,
  `status` enum('active','nonactive') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `banner_m`
--

INSERT INTO `banner_m` (`id_banner`, `nama`, `nama_english`, `banner`, `banner_english`, `masa_aktif`, `tanggal_mulai`, `tanggal_berakhir`, `urutan`, `status`) VALUES
(7, 'ab', 'ab', '7_baner-1.jpg', '7_baner-1_english.jpg', 'sementara', '2016-07-26', '2016-07-30', 1, 'active'),
(8, 'b', 'b', '8_baner-2.jpg', '8_baner-2_english.jpg', 'tetap', '2000-01-01', '9999-12-31', 2, 'active'),
(9, 'cd', 'cd', '9_baner-3.jpg', '9_baner-3_english.jpg', 'sementara', '2016-07-27', '2016-07-30', 4, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bantas_m`
--

CREATE TABLE IF NOT EXISTS `bantas_m` (
  `id_bantas` int(11) NOT NULL,
  `bantas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bantas_m`
--

INSERT INTO `bantas_m` (`id_bantas`, `bantas`) VALUES
(1, 'baner-4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_m`
--

CREATE TABLE IF NOT EXISTS `berita_m` (
`id_berita` int(11) unsigned NOT NULL,
  `id_asosiasi` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `keterangan_gambar` varchar(200) DEFAULT NULL,
  `file_berita` varchar(200) DEFAULT NULL,
  `judul_english` varchar(255) NOT NULL,
  `content_english` text NOT NULL,
  `caption_picture` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita_m`
--

INSERT INTO `berita_m` (`id_berita`, `id_asosiasi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_berita`, `judul_english`, `content_english`, `caption_picture`) VALUES
(18, 100, 'BKPM Minta Malaysia Investasi Industri Pengolahan Sawit di RI', '<p><b>Liputan6.com, Jakarta -&nbsp;</b>Kunjungan yang dilakukan oleh Kepala Badan Koordinasi Penanaman Modal/<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2485655/bkpm-rayu-investor-jerman-tanam-modal-di-sektor-farmasi">BKPM&nbsp;</a>Franky Sibarani di Malaysia, dimanfaatkan untuk bertemu dengan perusahaan-perusahaan&nbsp;<em>existing&nbsp;</em>maupun yang berminat menanamkan modalnya di Indonesia.</p><p>Salah satunya adalah perusahaan sektor perkebunan terkemuka&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2496038/ri-malaysia-sepakat-tak-ada-penangkapan-nelayan-kecil">Malaysia</a>&nbsp;yang telah menanamkan modalnya melalui anak perusahaannya di Indonesia.</p><p>Perusahaan didorong untuk memperluas bidang usahanya tidak hanya sektor perkebunan kelapa sawit namun juga industri pengolahannya juga dilakukan di Indonesia.</p><p>Franky menyampaikan investasi di bidang industri pengolahan&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2447856/pemerintah-siapkan-strategi-hadapi-pajak-sawit-prancis">kelapa sawit</a>&nbsp;akan positif bagi perkembangan perusahaan.</p><p>&nbsp;</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2489165/di-belgia-kepala-bkpm-temui-15-pimpinan-perusahaan">Di Belgia, Kepala BKPM Temui 15 Pimpinan Perusahaan</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2483205/gaet-investor-jerman-bkpm-akan-fokus-6-sektor">Gaet Investor Jerman, BKPM Akan Fokus 6 Sektor</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2481557/bkpm-minta-denmark-tingkatkan-investasi-di-ri">BKPM Minta Denmark Tingkatkan Investasi di RI</a></li></ul></div><p>"Investor sebenarnya memiliki minat untuk mengembangkan usaha perkebunan di Indonesia, namun memiliki&nbsp;<em>concern</em>&nbsp;dengan ketentuan maksimum 100 ribu hektar sesuai dengan Peraturan Menteri Pertanian Nomor 26 Tahun 2007," ujar Franky dalam keterangan tertulis, Sabtu (30/4/2016).</p><p>Franky menuturkan, pemerintah mendorong tumbuhnya industri bernilai tambah, termasuk hilirisasi sektor agro. Untuk itu dirinya mengundang investor Malaysia untuk masuk di sektor industri pengolahan CPO dan industri turunan lainnya.</p><p>Investasi itu Franky memastikan akan lebih mudah, karena pemerintah telah melaksanakan reformasi layanan izin investasi.</p><p>"Terbaru dengan layanan izin 3 jam, di mana terdapat 3 perusahaan Malaysia sudah memanfaatkan dengan total nilai investasi US$ 2,7 miliar," lanjutnya.</p><p>Franky menambahkan dalam pertemuan ini BKPM juga menyambut baik apabila terdapat hal yang bisa didukung oleh&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2487951/rayu-300-pengusaha-inggris-berinvestasi-begini-cara-kepala-bkpm">BKPM&nbsp;</a>bagi investor dalam merealisasikan investasi di Indonesia.</p><p>Tahun lalu, Malaysia tercatat sebagai peringkat kedua teratas sebagai asal negara investasi atau dalam enam tahun terakhir periode 2010-2015 tercatat di peringkat kelima dengan nilai investasi US$ 7,2 miliar.</p><p><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2496020/senasib-dengan-ri-ikan-malaysia-banyak-dicuri-3-negara-ini">Malaysia</a>&nbsp;merupakan salah satu negara prioritas pemasaran investasi Indonesia. Dari data BKPM periode kuartal I tahun 2016, realisasi investasi dari Malaysia berada di peringkat 9 asal negara investasi.</p><p>Realisasi investasi yang masuk dari Malaysia tercatat US$ 101 juta dengan jumlah proyek 207 dan menyerap tenaga kerja 10.467.? (Yas/Ahm)</p>', '2016-06-28', '18_063209500_1457408008-20160308-Ilustrasi-Kelapa-Sawit-iStockphoto2.jpg', 'Ilustrasi Kelapa Sawit (iStockphoto)', '063209500_1457408008-20160308-Ilustrasi-Kelapa-Sawit-iStockphoto2.jpg', 'Ask BKPM Investment Malaysia Oil Processing Industry in RI', '<div><b>Liputan6.com, Jakarta</b> - Visits conducted by the Head of the Investment Coordinating Board / BKPM Franky Sibarani in Malaysia, used to meet with the companies existing as well as those interested in investing in Indonesia.</div><div><br></div><div>One of them is leading Malaysia''s plantation sector companies having invested through its subsidiary in Indonesia.</div><div><br></div><div>Companies are encouraged to expand its business not only palm oil sector but also the processing industry is also conducted in Indonesia.</div><div><br></div><div>Franky deliver investment in palm oil processing industry will be positive for the company''s development.</div><div><br></div><div>&nbsp;</div><div><br></div><div>READ ALSO</div><div><br></div><div>In Belgium, the Head of BKPM Meet 15 Company Leadership</div><div>Attract Investors Germany, BKPM Will Focus 6 Sector</div><div>Ask Denmark BKPM Increase Investment in RI</div><div>"Investors actually have the interest to develop plantation business in Indonesia, but has a concern with a maximum of 100 thousand hectares in accordance with the Regulation of the Minister of Agriculture Number 26 Year 2007," Franky said in a written statement on Saturday (04/30/2016).</div><div><br></div><div>Franky said, the government is encouraging the growth of value-added industry, including downstream agro sector. Therefore, he invited Malaysian investors to enter in the manufacturing sector CPO and other derivatives industry.</div><div><br></div><div>Franky ensure that investment will be easier, because the government has been implementing the investment license-care reform.</div><div><br></div><div>Recent "with the service permission 3 hours, where there are three Malaysian companies are already using with a total investment of US $ 2.7 billion," he added.</div><div><br></div><div>Franky added in this meeting the agency also welcomed if there are things that can be supported by BKPM for investors in the realization of investment in Indonesia.</div><div><br></div><div>Last year, Malaysia recorded as the second ranked as the top country of origin of investment or six-year period 2010-2015 was recorded in the fifth with an investment of US $ 7.2 billion.</div><div><br></div><div>Malaysia is one of the priority investment marketing Indonesia. BKPM data from the first quarter of 2016, investment realization of Malaysia is ranked 9th national origin of investment.</div><div><br></div><div>Realized investment coming from Malaysia reached US $ 101 million with a number of 207 projects and created employment 10 467. (Yas / Ahm)</div>', 'Illustration Palm Oil (Stock photo)'),
(16, 100, 'Rusia Buka Pintu Lebar untuk Produk Minyak Sawit Asal RI', '<p>Liputan6.com, Jakarta -&nbsp;Hubungan perdagangan Indonesia dengan Rusia semakin erat. Rusia membuka pintu lebar-lebar bagi produk Indonesia. Bahkan untuk beberapa produk&nbsp;yang ditolak oleh negara lain di Eropa, seperti&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2429408/mendag-minta-pemerintah-prancis-batalkan-pajak-cpo">minyak sawit</a>, Rusia tak segan-segan untuk membuka pintu.<br><br>Ketua Umum Kamar Dagang dan Industri (Kadin) Indonesia Rosan Perkasa Roeslani mengatakan, Rusia merupakan salah satu mitra dagang utama Republik Indonesia (RI) di Kawasan Eropa Timur dan Tengah.<br><br>Dikatakan Rosan, salah satu kebijakan positif Presiden Republik Federasi Rusia PresidenVladimirPutin yang menjadi peluang bisnis di Rusia cukup potensial adalah mengenai pemasaran minyak sawit.</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2510297/rizal-ramli-ri-malaysia-dapat-kuasai-pasokan-cpo-dunia">Rizal Ramli: RI-Malaysia Dapat Kuasai Pasokan CPO Dunia</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2429408/mendag-minta-pemerintah-prancis-batalkan-pajak-cpo">Mendag Minta Pemerintah Prancis Batalkan Pajak CPO</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422076/ri-incar-china-jadi-konsumen-minyak-sawit">RI Incar China Jadi Konsumen Minyak Sawit</a></li></ul></div><p>“Kadin mengapresiasi kebijakan Presiden Putin yang tetap membuka akses pasar&nbsp;untuk minyak sawit mentah. Indonesia adalah pengekspor minyak sawit terbesar di dunia,” kata Rosan di sela kunjungan kerja Presiden Joko Widodo (Jokowi) di Sochi, Republik Federasi Rusia dalam keterangannya, Jumat (20/5/2016).<br><br>Rosan mengungkapkan ekspor&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2429408/mendag-minta-pemerintah-prancis-batalkan-pajak-cpo">minyak sawit</a>mentah Indonesia ke Rusia mencapai US$ 480 juta atau sekitar 50 persen dari total perdagangan bilateral senilai US$ 1,98 miliar, pada tahun 2015. Menurutnya, minyak sawit menjadi primadona di Rusia. Kesempatan ini jelas akan memberikan manfaat nyata bagi petani kelapa sawit di Indonesia.<br><br>Selain&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422076/ri-incar-china-jadi-konsumen-minyak-sawit">minyak sawit</a>, ekspor Indonesia ke Rusia terdiri atas perabotan, ikan, cokelat, mentega, teh, dan kopi. Sebaliknya, produk yang diimpor Indonesia dari Rusia mencakup alat utama sistem persenjataan (Alutsista), besi baja, pupuk, logam, karet sintetis, dan aluminium.<br><br>Berdasarkan data Badan Koordinasi dan Penanaman Modal (BKPM), Rusia termasuk salah satu investor asing cukup besar di Indonesia dengan total investasi sebesar US$ 1,01 juta pada tahun 2015.<br><br>Sektor unggulan investasi Rusia di Indonesia adalah perhotelan dan restoran. Turis Rusia yang berkunjung ke Indonesia menempati posisi lima terbesar bagi turis asal Eropa. Pada 2015, sebanyak 100 ribu wisatawan Rusia mengunjungi Indonesia.<br><br>“Pengusaha Rusia menunjukkan minat untuk berinvestasi di bidang pembangunan infrastruktur, pertambangan, dan energi. Investasi langsung Rusia perlu ditingkatkan karena mengalami penurunan dalam beberapa tahun terakhir,” terang Rosan.?&nbsp;</p>', '2016-06-28', '16_089965200_1457408007-20160308-Ilustrasi-Kelapa-Sawit-iStockphoto3.jpg', 'Ilustrasi Kelapa Sawit (iStockphoto)', '089965200_1457408007-20160308-Ilustrasi-Kelapa-Sawit-iStockphoto3.jpg', 'Russia Open Door Width of Palm Oil Products Origin RI', '<div>Liputan6.com, Jakarta - Indonesia''s trade relations with Russia more closely. Russia opened the door wide for Indonesian products. Even for some of the products that were rejected by other countries in Europe, such as palm oil, Russia did not hesitate to open the door.</div><div><br></div><div>Chairman of the Chamber of Commerce and Industry (Kadin) Indonesia Rosan Perkasa Roeslani said, Russia is one of the major trading partners of the Republic of Indonesia (RI) in the Central and Eastern European Region.</div><div><br></div><div>Rosan is said, one positive policy of the President of the Russian Federation PresidenVladimirPutin that into a business opportunity in Russia is about the marketing potential of palm oil.</div><div><br></div><div>READ ALSO</div><div><br></div><div>Rizal Ramli: RI-Malaysia CPO supply to Rule the World</div><div>French Trade Minister Asks the Government to Cancel Tax CPO</div><div>RI eyeing China''s so Consumer Palm Oil</div><div>"Kadin appreciates the policies of President Putin who keep open access to the market for crude palm oil. Indonesia is the largest exporter of palm oil in the world, "Rosan said on the sidelines of a working visit of President Joko Widodo (Jokowi) in Sochi, Republic of the Russian Federation in a statement on Friday (20/05/2016).</div><div><br></div><div>Rosan revealed sawitmentah Indonesia''s oil exports to Russia reached US $ 480 million, or about 50 percent of the total bilateral trade valued at US $ 1.98 billion, in 2015. According to him, the palm oil to be excellent in Russia. This opportunity will clearly provide real benefits to growers of palm oil in Indonesia.</div><div><br></div><div>Besides palm oil, Indonesia''s exports to Russia consist of furniture, fish, chocolate, butter, tea, and coffee. In contrast, Indonesia products imported from Russia include main weaponry system (Alutsista), iron and steel, fertilizers, metals, synthetic rubber, and aluminum.</div><div><br></div><div>Based on data from the Investment Coordinating Board (BKPM), Russia is one of the foreign investors is quite large in Indonesia with a total investment of US $ 1.01 million in 2015.</div><div><br></div><div>Russia''s dominant sector investment in Indonesia is a hotel and restaurant. Russian tourists who visited Indonesia''s five largest positions for tourists from Europe. In 2015, about 100 thousand Russian tourists visiting Indonesia.</div><div><br></div><div>"Russian entrepreneurs show interest to invest in infrastructure development, mining, and energy. Russian direct investment needs to be increased due to decline in recent years, "said Rosan.</div>', 'Illustration Palm Oil (Stock photo)'),
(30, 100, 'DMSI : TPP TIDAK MEMBERIKAN PENGARUH BESAR SAWIT INDONESIA', '<p>INFO SAWIT, JAKARTA&nbsp;- Dewan Minyak Sawit Indonesia (DMSI) menilai kerja sama dengan TPP tidak akan memberikan pengaruh yang bersar bagi produk minyak sawit dan turunannya asal Indonesia.</p><p>Pasalnya, kata Wakil Ketua Umum DMSI Sahat Sinaga, anggota Perjanjian Kerjasama Trans-Pasifik (TPPA) bukan negara yang mendominasi produk kelapa sawit. “Kalau untuk sawit relatif kecil,” ujarnya, Rabu.</p><p>&nbsp;Namun demikian, dirinya tidak memungkiri, nantinya akan ada perbedaan tarif masuk antara Indonesia dengan Malaysia sebagai kompetitor eksportir produk sawit dan turunannya.</p><p>Ia menyebutkan, tahun 2015 ekspor minyak sawit dan produk turunannya Indonesia ke Amerika hanya US$ 300,99 juta, atau jauh bila dibandingkan dengan negara tujuan ekspor utama yakni &nbsp;India dan Cina yang masing-masing mencapai US$ 3,63 miliar serta US$ 1,78 miliar.&nbsp;(T3)</p>', '2016-06-29', '30_dmsi---tpp-tidak-memberikan-pengaruh-besar-sawit-indonesia.jpg', 'Kelapa Sawit', 'dmsi---tpp-tidak-memberikan-pengaruh-besar-sawit-indonesia.jpg', 'DMSI: TPP NOT GIVE EFFECT OF OIL INDONESIA', '<div>INFO OIL, JAKARTA - The Indonesian Palm Oil Board (DMSI) assess cooperation with the TPP will not give effect bersar for palm oil products and derivatives from Indonesia.</div><div><br></div><div>The reason, said Vice Chairman DMSI Sahat Sinaga, a member of the Trans-Pacific Partnership Agreement (TPPA) is not a country that dominates palm oil products. "If for oil is relatively small," he said on Wednesday.</div><div><br></div><div>&nbsp; However, he did not deny that there will be differences in admission rates between Indonesia and Malaysia as a competitor exporter of oil products and derivatives.</div><div><br></div><div>He mentioned, in 2015 exports of palm oil and its derivatives Indonesia to the United States only US $ 300.99 million, or far when compared with the main export destination countries, namely India and China, each of which reached US $ 3.63 billion and US $ 1 , 78 billion. (T3)</div>', 'Palm Oil'),
(29, 100, 'Derom Bangun Pimpin DMSI', '<p>JAKARTA, SAWITINDONESIA – Derom Bangun kembali menakhodai Dewan Minyak Sawit Indonesia (DMSI) untuk periode 2015-2018. Lulusan Institut Teknologi Bandung ini dipilih lima organisasi yang tergabung dalam DMSI.</p><p>Mustafa Daulay, Pengurus DMSI, menjelaskan Derom unggul lima suara dari kandidat lain yaitu Mahendra Siregar. Lima suara ini berasal dari GAPKI, Gabungan Industri Minyak Nabati&nbsp; Indonesia (GIMNI), Asosiasi Produsen Oleochemical Indonesia ( APOLIN),&nbsp; Gabungan Pengusaha Perkebunan Indonesia (GPPI, dan Masyarakat Kelapa Sawit Indonesia (MAKSI).</p><p>Sementara itu, tiga asosiasi lain memberikan suara kepada Mahendra Siregar, Mantan Kepala BKPM. Mereka adalah Asosiasi Produsen Biofuels Indonesia (APROBI), Asosiasi Industri Minyak Makan Indonesia (AIMMI), dan Asosiasi Petani Kelapa Sawit Indonesia (APKASINDO).</p><p>Mekanisme pemilihan suara, satu asosiasi berhak memberikan satu suarat kepada calon kandidat ketua umum.</p><p>Sebagai informasi, Derom Bangun merupakan Ketua Umum DMSI incumbent. Pengalamannya di dunia sawit lebih dari 30 tahun dan telah malang melintang dalam berbagai asosiasi. Tak heran, dirinya selalu diposisikan sebagai Duta Besar Sawit. Pasalnya, ayah tiga anak ini&nbsp; punya rekam jejak bagus di dunia internasional dan sering menjadi pembicara &nbsp;forum internasional kelapa sawit.</p><p>&nbsp;</p><p>Sumber foto: RSPO</p>', '2016-06-29', '29_f77d553c52fa954c4cb29f5292f015ef.jpg', 'Derom Bangun', 'f77d553c52fa954c4cb29f5292f015ef.jpg', 'Derom Bangun Lead DMSI', '<div>JAKARTA, SAWITINDONESIA - Derom Bangun back menakhodai Indonesian Palm Oil Board (DMSI) for the period 2015-2018. Bandung Institute of Technology graduates have been five organizations joined in DMSI.</div><div><br></div><div>Mustafa Daulay, DMSI Board, explains the superior Bangun five votes from other candidates, Mahendra Siregar. Five sound comes from GAPKI, Indonesian Vegetable Oil Industry Association (GIMNI), Indonesian Oleochemical Manufacturers Association (APOLIN), Planters'' Association of Indonesia (GPPI, and the Society of Indonesian Palm Oil (MAKSI).</div><div><br></div><div>Meanwhile, three other association gives voice to Mahendra Siregar, former Head of BKPM. They are the Biofuels Association of Indonesia (APROBI), Indonesian Cooking Oil Industry Association (AIMMI), and the Association of Indonesian Oil Palm Farmers (Apkasindo).</div><div><br></div><div>The mechanism of voting, the association is entitled to one suarat to prospective candidates chairman.</div><div><br></div><div>For information, Derom Bangun is DMSI incumbent Chairman. His experience in the world of oil over 30 years and has been in existence in various associations. Not surprisingly, he was always positioned as Ambassador Oil. Because the father of three children has a good track record in the international community and is a frequent international speaker palm forum.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Source photos: RSPO</div>', 'Derom Bangun'),
(15, 100, 'Ini Alasan Pemerintah Ingin Moratorium Izin Lahan Kelapa Sawit', '<p>Liputan6.com, Jakarta -&nbsp;Pemerintah menggulirkan wacana penundaan sementara (moratorium) izin pembukaan lahan&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516294/pengusaha-sawit-harus-waspadai-kenaikan-harga-minyak-fosil">kelapa sawit</a>. Moratorium ini dilakukan agar para pelaku usaha kelapa sawit fokus membenahi produksinya dari lahan yang sudah ada.<br><br>Menteri Perdagangan Thomas Lembong mengatakan, wacana moratorium sawit tersebut sebenarnya memiliki tujuan yang baik. Selama ini pelaku usaha terus melakukan perluasan (ekstensifikasi) lahan kelapa sawit. Namun produksi sawit di lahan yang sudah ada tidak dimaksimalkan.</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516294/pengusaha-sawit-harus-waspadai-kenaikan-harga-minyak-fosil">Pengusaha Sawit Harus Waspadai Kenaikan Harga Minyak Fosil</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516257/ada-sistem-baru-administrasi-ekspor-sawit-hanya-30-menit">Ada Sistem Baru, Administrasi Ekspor Sawit Hanya 30 Menit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516252/hingga-april-dana-pungutan-sawit-tembus-rp-4-triliun">Hingga April Dana Pungutan Sawit Tembus Rp 4 Triliun</a></li></ul></div><p>"Salah satu tujuannya adalah soal produktivitas, yang dimaksud oleh Pak Presiden melontarkan moratorium itu. Ini supaya&nbsp;kita tidak lagi melakukan perluasan atau ekstensifikasi lahan baru," ujar dia di Jakarta, Kamis (26/5/2016).<br><br>Thomas mengatakan, saat ini total lahan untuk perkebunan&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516257/ada-sistem-baru-administrasi-ekspor-sawit-hanya-30-menit">kelapa sawit</a>&nbsp;telah mencapai 11 juta hektar (ha). Dari jumlah tersebut, 55 persen&nbsp;digarap perusahaan besar (inti) dan 45 persen oleh petani plasma.<br><br>"Ini lumayan banyak, tapi 40 persen dari luasan tersebut produktivitasnya rendah?. Saya khawatir kalau dengan ekstensifikasi kita sulit disiplin untuk meningkatkan produktivitas di lahan yang sudah digarap. Kalau stop ekstensifikasi kita akan fokus pada produktifitas?," kata dia.<br><br>Thomas menyatakan, saat ini wacana tersebut masih terus dibahas di Kementerian Koordinator Bidang Perekonomian. Dia berharap jika telah disahkan menjadi kebijakan nantinya, moratorium perluasan lahan&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2516252/hingga-april-dana-pungutan-sawit-tembus-rp-4-triliun">kelapa sawit</a>&nbsp;ini bisa diterima oleh para pelaku usaha.<br><br>"Saya tidak mau mendahului atasan saya, Pak Presiden. Ini masih digodok di kantor Menko. Mari kita tunggu pengumuman resmi Presiden dan Pak Menko," tandas dia.</p>', '2016-05-26', '15_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'Ilustrasi Kelapa Sawit (iStockphoto)', '021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'The reason this Government Wants Moratorium Land Permit Palm Oil', '<div>Liputan6.com, Jakarta - The government is rolling discourse temporary suspension (moratorium) of oil palm land clearing permits. The moratorium is done so that the perpetrators of palm oil business focus reorganize its production from existing fields.</div><div><br></div><div>Trade Minister Thomas Lembong say, the discourse of the oil moratorium actually have good aim. During these businesses continue to expand (extension) of oil palm plantations. However, oil production in existing fields is not maximized.</div><div><br></div><div>READ ALSO</div><div><br></div><div>Employers Should Beware Oil Fossil Oil Price Increase</div><div>There is a new system, the Export Administration Oil Only 30 Minutes</div><div>Until April Penetrating Oil Fund levy Rp 4 trillion</div><div>"One of the goals is a matter of productivity, mentioned by Mr. President catapult moratorium that. It''s so that we are no longer expanding or extending the new land," he said in Jakarta, Thursday (26/05/2016).</div><div><br></div><div>Thomas said the current total land for oil palm plantations has reached 11 million hectares (ha). Of these, 55 percent worked on big companies (nucleus) and 45 percent by smallholders.</div><div><br></div><div>"It''s quite a lot, but 40 percent of the area is low productivity. I am concerned that by extending our difficult discipline to improve productivity on land already cultivated. If you stop we will focus on extending the productivity," he said.</div><div><br></div><div>Thomas stated, the current discourse is still being discussed at the Coordinating Ministry for Economic Affairs. He hopes that if had passed into the policy later, the moratorium on the expansion of oil palm plantations can be accepted by operators.</div><div><br></div><div>"I do not want to precede my boss, Mr. President. This is still brewing in the office of Coordinating Minister. Let us wait for the official announcement of the President and the Coordinating Minister," he asserted.</div>', 'Illustration Palm Oil (Stock photo)'),
(19, 100, 'Pemerintah Siapkan Strategi Hadapi Pajak Sawit Prancis', '<div><div><p>Liputan6.com, Jakarta -&nbsp;Pemerintah Indonesia sedang menyiapkan strategi untuk menggagalkan upaya Prancis menerapkan pajak super tinggi kepada produk sawit mulai 2017. Pasalnya, Negara ini menjadi salah satu korban jika pemerintah Prancis memberlakukan kebijakan tersebut, mengingat Indonesia adalah produsen minyak kelapa sawit atau&nbsp;crude palm oil (CPO).<br><br>Menteri Koordinator Bidang Perekonomian, Darmin Nasution mengungkapkan, Kementerian Koordinator Bidang Perekonomian sedang membahas strategi ini bersama Kementerian terkait. Sebab, dari sisi internal pun, produk maupun pengelolaan kelapa sawit Indonesia perlu mendapat perhatian untuk diperbaiki sebagai komoditas ekspor.<br><br>"Kami memang sedang membicarakan dan menyiapkan langkah-langkah di eksternal, seperti Prancis, Eropa dan lainnya. Tapi saya tidak mau menjelaskan dulu apa yang mau dilakukan, karena kita masih perlu memperbaiki standar pengelolaan kelapa sawit, dan lainnya," ucap Darmin diJakarta, Senin (29/2/2016).</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2440223/perjuangan-ri-gagalkan-prancis-terapkan-pajak-tinggi-sawit">Perjuangan RI Gagalkan Prancis Terapkan Pajak Tinggi Sawit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2428794/rizal-ramli-ingat-prancis-punya-banyak-kepentingan-di-ri">?Rizal Ramli: Ingat, Prancis Punya Banyak Kepentingan di RI</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2428053/prancis-bakal-kenakan-pajak-impor-cpo-ini-tanggapan-rizal-ramli">Prancis Bakal Kenakan Pajak Impor CPO, Ini Tanggapan Rizal Ramli</a></li></ul></div><p>Direktur Utama Badan Pengelola Dana Perkebunan (BPDP) Kelapa Sawit Bayu Krisnamurthi pernah mengatakan, Indonesia sedang terbelit masalah pajak progresif dari pemerintah Prancis. Itu karena ekspor CPO yang selama ini menjadi andalan Indonesia bakal terganggu dengan kebijakan pajak tersebut.<br><br>"Prancis akan menerapkan pajak super, karena pungutan secara berkala naik dari mulai 300 Euro per ton sampai 900 Euro per ton. Ini belum ada sejarahnya, makanya kita bilang super tax," tegas Bayu.<br><br>Terkait ini, pemerintah, asosiasi sampai Lembaga Swadaya Masyarakat (LSM) melakukan berbagai upaya mulai dari melayangkan surat, bertolak ke Prancis untuk bernegosiasi dan lobi agar pemerintah setempat membatalkan rencana pungutan pajak tinggi itu.&nbsp;<br><br>Lebih jauh, Bayu mengatakan, penerapan pajak super ini tidak konsisten dengan Deklarasi Amsterdam yang diinisiasi Uni Eropa guna mendukung keberlanjutan CPO. Salah satu negara Uni Eropa yang menandatangani deklarasi tersebut adalah Prancis.<br><br>"Sudah tandatangan kok malah ngasih pajak super sebesar itu. Kalau memang ini disetujui, bisa disebut tindakan diskriminatif. Karena argumentasi teknis yang mereka ajukan, kita bisa bantah dan informasinya sama sekali tidak benar," terang Mantan Wakil Menteri Perdagangan itu.<br><br>Jika rencana ini benar terealisasi, tambah Bayu, justru akan merugikan pengusaha Prancis dan Eropa mengingat produk minyak sawit dari Indonesia dan negara produsen lain sangat berdampak positif bagi pelaku usaha di Eropa.<br><br>Dari catatannya, ekspor CPO Indonesia ke Prancis masih kecil. Tujuan utama ekspor CPO paling besar ke Belanda, Italia dan Spanyol. Namun Prancis membeli CPO Indonesia sebagian besar dari Belanda, karena kedua negara ini berbatasan langsung.<br><br>"Kita sangat konsen dengan hal-hal tersebut, karena ini menyangkut nasib petani dan kegiatan usaha produk sawit di RI. Kalau itu diterapkan, tidak&nbsp;<em>fair&nbsp;</em>buat kita. Tapi kita masih terus melobi sampai batas waktu 15 Maret 2016 supaya proposal pajak super tidak jadi diundangkan," dia menjelaskan.<br><br>Bayu menilai, pajak progresif diterapkan pemerintah sebuah negara karena kurangnya pemahaman dunia internasional terhadap sawit. Kebanyakan dari mereka, membayangkan hal-hal negatif terhadap asal muasal produk sawit dihasilkan, mulai dari penebangan pohon yang merusak lingkungan dan alasan lain.<br><br>Menurut dia, bukan hanya Prancis yang menjegal perdagangan kelapa sawit. Indikasi lain datang dari Rusia, Polandia, dan Republik Ceko dengan berbagai upaya ingin menghambat perdagangan sawit asal Indonesia dan negara lain.<br><br>"Sangat penting buat kita mempromosikan sawit secara objektif. Kita harus tunjukkan secara ilmiah bahwa sawit itu adalah&nbsp;<em>a blessing to the world,</em>&nbsp;anugerah bagi manusia, bukan musibah," kata Bayu. (Fik/Gdn)</p></div></div><div></div><div><ul><li></li></ul></div>', '2016-06-28', '19_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'Ilustrasi CPO 1 (Liputan6.com/M.Iqbal)', '021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'Government Prepares to Face Tax Strategies Oil France', '<div>Liputan6.com, Jakarta - The Indonesian government is preparing a strategy to thwart the efforts of France to apply a super high tax to oil products began in 2017. Because the country is becoming one of the victims if the French government enforce the policy, considering that Indonesia is a producer of palm oil or palm oil oil (CPO).</div><div><br></div><div>Coordinating Minister for Economic Affairs, Nasution said the Coordinating Ministry for Economic Affairs is discussing this strategy with the Ministry concerned. Because, from the internal side of the matter, the products and the management of oil palm Indonesia need attention to be improved as export commodity.</div><div><br></div><div>"We are currently discussing and preparing the steps externally, such as France, Europe and others. But I do not want to explain first what you want to do, because we still need to improve management standards palm oil, and others," said Nasution diJakarta Monday (29/02/2016).</div><div><br></div><div>READ ALSO</div><div><br></div><div>RI struggles thwarted France High Taxes Apply Oil</div><div>Rizal Ramli: Remember, France Have Many Interests in RI</div><div>France Will Wear the CPO import tax, this response Rizal Ramli</div><div>Director of Fund Management Board Plantation (BPDP) Oil Palm Krisnamurthi once said, Indonesia was tangled problems of progressive taxation of the French government. That''s because CPO exports which has been the mainstay of Indonesia would be disrupted by the tax policy.</div><div><br></div><div>"France will implement a super tax, for fees ranging periodically rise from 300 euros per tonne to 900 euros per ton. This is no history, so we say super tax," said Bayu.</div><div><br></div><div>Related to this, the government, the association until Governmental Organization (NGO) made various efforts ranging from a letter, flew to France to negotiate and lobby for local government cancel a planned high taxation.</div><div><br></div><div>Furthermore, Bayu said, the application of the super tax is not consistent with the Declaration of Amsterdam who initiated the European Union to support the sustainability of CPO. One of the EU countries that signed the Declaration is French.</div><div><br></div><div>"It''s why even give tax signature super big. If it is approved, could be called discriminatory act. Because of the technical arguments that they put forward, we can argue and the information is not at all true," said former Deputy Minister of Trade.</div><div><br></div><div>If this plan is realized, Bayu added, would prejudice the French and European businesses considering palm oil products from Indonesia and other producing countries have a positive impact for businesses in Europe.</div><div><br></div><div>From his notes, Indonesia''s CPO exports to France are still small. The main purpose biggest CPO exports to the Netherlands, Italy and Spain. But France buy CPO Indonesia mostly from the Netherlands, as the two countries is directly adjacent.</div><div><br></div><div>"We are very concerned with these things, because it concerns the fate of the farmers and the business activities of palm products in Indonesia. If it is applied, it is not fair for us. But we still continue to lobby until the deadline of March 15, 2016 so that a proposal of tax super not be enacted , "he explained.</div><div><br></div><div>Bayu rate, progressive tax applied by the government of a country due to lack of understanding of the international community towards the palm. Most of them, imagine the negative things towards the origin of the oil products produced, ranging from environmentally destructive logging and other reasons.</div><div><br></div><div>According to him, not only the French who tackle the palm oil trade. Another indication came from Russia, Poland, and the Czech Republic with various efforts to want to curb the trade in palm oil from Indonesia and other countries.</div><div><br></div><div>"It''s important for us to promote palm objectively. We must show scientifically that the oil is a blessing to the world, a boon for man, not a disaster," said Bayu. (Fik / Gdn)</div>', 'Illustration CPO 1 (Liputan6.com/M.Iqbal)'),
(20, 100, 'Buka Pasar Sawit, Mendag Lembong Terus Lobi Uni Eropa', '<div><div><p>Liputan6.com, Jakarta -&nbsp;Menteri Perdagangan Thomas Lembong melobi senator Prancis dan Uni Eropa untuk menjaga keberlangsungan pasar minyak sawit Indonesia di Eropa. Dalam lobi tersebut Lembong&nbsp;ingin agar rencana amandemen no. 367 yang berisi soal pajak progresif bagi kelapa sawit dibatalkan.<br><br>Dalam upaya melobi,&nbsp;Lembong telah melakukan pertemuan dengan Senator Fraksi Ekologi Prancis Ronan Dantec. Dari pertemuan tersebut tersirat sebuah harapan positif bagi kelangsungan akses pasar minyak kelapa sawit Indonesia di Prancis dan Uni Eropa.&nbsp;<br><br>SInyal&nbsp;positif tersebut didapat dari adanya tanggapan yang baik atas pengajuan pembatalan draf Amandemen No. 367 yang berisi mengenai pemberlakuan&nbsp;pajak progresif. "Saya secara khusus bertemu dengan anggota senat dari Fraksi Ekologi, Senator Ronan Dantec, dan responnya positif,” kata Lembong, dalam keterangan tertulis, di Jakarta, Minggu (14/2/2016).</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2429408/mendag-minta-pemerintah-prancis-batalkan-pajak-cpo">Mendag Minta Pemerintah Prancis Batalkan Pajak CPO</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2428794/rizal-ramli-ingat-prancis-punya-banyak-kepentingan-di-ri">?Rizal Ramli: Ingat, Prancis Punya Banyak Kepentingan di RI</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422012/produk-turunan-sawit-dapat-jadikan-ri-negara-maju">Produk Turunan Sawit Dapat Jadikan RI Negara Maju</a></li></ul></div><p>Lembong juga melakukan pertemuan dengan Rapporteur RUU Keanekaragaman Hayati, Jerome Bignon. Menurut Lembong, Jerome menegaskan bahwa rencana pemberlakuan pajak secara progresif pada minyak sawit masih dalam tahap pembahasan di parlemen.<br><br>"Draf ini baru akan diputuskan Majelis Nasional Prancis pada Maret 2016," tuturnya.&nbsp;Lembong mengungkapkan, respon positif ini melegakan Pemerintah Indonesia. Oleh karena itu, Lembong&nbsp;berkomitmen akan melakukan komunikasi secara terus-menerus dengan Pemerintah maupun Parlemen Prancis.<br><br>“Proses pengesahan draf amandemen masih akan melalui beberapa tahapan, di tingkat Komisi Lingkungan Hidup, selanjutnya ke Majelis Nasional. Rentang waktu yang ada akan saya gunakan sebaik-baiknya untuk terus berkomunikasi dan melobi ke sejumlah pihak, terutama Fraksi Ekologi,” terang Lembong.<br><br>Lembong memandang, pajak progresif bukan solusi yang tepat. Perlu dipikirkan langkah kreatif menjembatani kepentingan pelestarian lingkungan hidup yang sejalan dengan perdagangan yang berkeadilan (<em>fairness of trade</em>). Selain itu, Indonesia meminta Prancis tetap menerapkan prinsip-prinsip WTO dalam menyusun kebijakannya.<br><br>“Melalui koridor bilateral Indonesia-Prancis, kita giatkan dialog kedua negara. Saya yakin kedua pihak akan mencapai titik temu,” ujar Lembong.<br><br>Lembong menambahkan, faktor kunci kasus ini adalah informasi yang minim tentang minyak kelapa sawit yang dipahami baik oleh pemerintah, parlemen, maupun masyarakat Prancis. Hal ini menyebabkan semua informasi tentang produk minyak sawit kurang akurat. Akhirnya keputusan yang diambil pun menjadi kurang baik. Karena itu, ke depan pemerintah akan melakukan kampanye publik secara intensif.<br><br>"Saya mengajak semua pihak, tidak hanya pemerintah saja, untuk turut mendukung keberhasilan kampanye publik ini,” pungkas Lembong. (Pew/Gdn)</p></div></div><div></div><div><ul><li></li></ul></div>', '2016-06-28', '20_090156200_1454488091-20160203-MENDAG-JT-2.jpg', 'Menteri Perdagangan,Thomas Trikasih Lembong mengikuti Raker dengan Komisi VI DPR di Kompleks Parlemen,Jakarta, (3/2). Lembong menyebut program revitalisasi sangat penting agar pasar tradisional bisa b', '090156200_1454488091-20160203-MENDAG-JT-2.jpg', 'Open Markets Oil, Minister of Trade Lembong Continue to lobby the European Union', '<div>Liputan6.com, Jakarta - Trade Minister Thomas Lembong lobbied senators France and the European Union to maintain the continuity of Indonesian palm oil market in Europe. In the lobby Lembong wants a plan amendment no. 367 which contains about a progressive tax for oil palm canceled.</div><div><br></div><div>In an effort to lobby, Lembong had a meeting with French Ecology Party Senator Ronan Dantec. From the meeting implied a positive expectation for the continuation of market access of Indonesian palm oil in France and the European Union.</div><div><br></div><div>The positive signals obtained from their good response to the filing of the cancellation of the draft Amendment No. 367 which contains the imposition of progressive taxation. "I specifically met with members of the senate faction Ecology, Senator Ronan Dantec, and the response was positive," said Lembong, in a written statement, in Jakarta, Sunday (02/14/2016).</div><div><br></div><div>READ ALSO</div><div><br></div><div>French Trade Minister Asks the Government to Cancel Tax CPO</div><div>Rizal Ramli: Remember, France Have Many Interests in RI</div><div>Oil Derivative Products Can Make RI Developed Countries</div><div>Lembong also met with Rapporteur of the Biodiversity Bill, Jerome Bignon. According Lembong, Jerome insists that plans to implement a progressive tax on palm oil are still being discussed in parliament.</div><div><br></div><div>"This draft will be decided the French National Assembly in March 2016," he said. Lembong revealed, this positive response to relieve the Government of Indonesia. Therefore, Lembong committed to communicate continuously with the Government and Parliament of France.</div><div><br></div><div>"The process of ratification of the draft amendments are still going through several stages, at the level of the Commission on Environmental, next to the National Assembly. No time frame I will use my best to continue to communicate and lobby to a number of parties, especially the faction Ecology, "explained Lembong.</div><div><br></div><div>Lembong looking, progressive tax is not the right solution. Creative measures are needed to bridge the interests of environmental preservation in line with fair trade (fairness of trade). In addition, Indonesia requested France continue to apply the principles of the WTO in drafting policies.</div><div><br></div><div>"Through the bilateral Indonesia-France corridor, we giatkan dialogue between the two countries. I believe both sides will reach common ground, "said Lembong.</div><div><br></div><div>Lembong added, the key factor this case is minimal information on palm oil that are understood by the government, parliament, and the people of France. This causes all information on palm oil products are less accurate. Finally, decisions could become less good. Therefore, in the future the government will conduct an intensive public campaign.</div><div><br></div><div>"I invite all parties, not only the government, to contribute to the success of this public campaign," added Lembong. (Pew / Gdn)</div>', 'Minister of Commerce, Thomas Trikasih Lembong followed Meeting with Commission VI at the Parliament Complex, Jakarta, (3/2). Lembong call revitalization program is very important that the traditional ');
INSERT INTO `berita_m` (`id_berita`, `id_asosiasi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_berita`, `judul_english`, `content_english`, `caption_picture`) VALUES
(21, 100, 'Mendag Minta Pemerintah Prancis Batalkan Pajak CPO', '<div><div><p>Liputan6.com, Jakarta -&nbsp;Menteri Perdagangan Thomas Trikasih Lembong telah mengirimkan surat secara khusus kepada pemerintahPrancis. Surat tersebut berisi permintaan agar pemerintah Prancis membantu membatalkan rencana Parlemen Prancis memberlakukan pajak (tax) minyak kelapa sawit mulai 2017 yang dinaikkan secara progresif.<br><br>Dia mengatakan, pajak minyak kelapa sawit yang diatur dalam Amandemen Nomor 367 seperti yang diadopsi oleh Majelis Tinggi Legislatif Prancis pada 21 Januari 2016 dianggap telah melanggar prinsip-prinsip World Trade Organization (WTO) dan General Agrement on Tariff and Trade (GATT) Tahun 1994.<br><br>"Saya paham, ini adalah wewenang Parlemen Prancis, namun saya meminta pemerintah Prancis untuk tidak mengadopsi Amandemen Nomor 367. Sebaliknya, saya meminta Pemerintah Prancis agar dapat bekerja sama dengan Indonesia untuk mengatasi masalah yang terjadi di Prancis yang berkaitan dengan minyak kelapa sawit," ujarnya di Jakarta, Jumat (5/2/2016).<br><br>Menurut Thomas, selain melanggar prinsip perlakuan nasional dan nondiskriminasi WTO dan GATT Tahun 1994, pengenaan pajak ini juga dianggap sebagai bentuk diskriminasi terhadap produk CPO, khususnya dari Indonesia.<br><br>"Hal ini akan menciptakan diskriminasi harga dan akan merugikan Indonesia. Saya kirim surat agar Pemerintah Prancis dapat membantu membatalkan rencana tersebut," katanya.<br><br>Denganpembelakuan pajak ini, lanjutThomas, maka akan membuat harga minyak kelapa sawit Indonesia tidak akan kompetitif jika dibandingkan minyak nabati lain seperti minyak kedelai dan minyak biji bunga matahari.</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2428830/gara-gara-prancis-petani-sawit-indonesia-menjerit">Gara-gara Prancis, Petani Sawit Indonesia Menjerit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422076/ri-incar-china-jadi-konsumen-minyak-sawit">RI Incar China Jadi Konsumen Minyak Sawit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422012/produk-turunan-sawit-dapat-jadikan-ri-negara-maju">Produk Turunan Sawit Dapat Jadikan RI Negara Maju</a></li></ul></div><p>"Pada akhirnya industri makanan di Prancis dan negara-negara Uni Eropa akan mengganti minyak kelapa sawit dengan minyak nabati lainnya yang harganya lebih murah," ungkapnya.<br><br>Minyak kelapa sawit merupakan salah satu komoditas strategis dalam perekonomian Indonesia. Secara langsung dan tidak langsung, sektor kelapa sawit menyerap 16 juta tenaga kerja di Indonesia dan memberikan kontribusi sebesar 1,6 persen terhadap PDB Indonesia.<br><br>Saat ini, sekitar 61 kota di Indonesia, termasuk kota-kota kecil, hidup dari sektor minyak kelapa sawit. Selain itu, pendapatan ekspor Indonesia dari komoditas ini mencapai sekitar USD 19 miliar per tahun.<br><br>"Mengingat peran strategis sektor minyak kelapa sawit dalam perekonomian, perlakuan diskriminatif di pasar ekspor akan berdampak buruk pada stabilitas ekonomi, sosial dan politik yang telah dibangun dan dipertahankan dengan susah payah sejak awal 2000-an," jelasnya.<br><br>Thomas menjelaskan, pada Undang-Undang Keanekaragaman Hayati yang akan berlaku di awal 2017, Pemerintah Prancis akan mengenakan pajak atas minyak kelapa sawit dan turunannya sebesar EUR 300 per ton pada 2017, kemudian naik menjadi € 500 per ton pada 2018, meningkat menjadi € 700 per ton pada 2019, serta naik menjadi $ 900 per ton pada 2020.<br><br>Padahal The General Agreement on Tariffs and Trade (GATT) 1994 Artikel III:2 telah mengatur bahwa produk impor, baik secara langsung maupun tidak langsung, tidak dapat dikenakan pajak internal atau biaya internal lainnya seperti produk dalam negeri.<br><br>Sementara itu, pada GATT Artikel XX memungkinkan negara anggota WTO untuk mengadopsi langkah-langkah yang diperlukan untuk melindungi kehidupan atau kesehatan manusia, hewan, dan tanaman, namun penerapannya tidak boleh memberikan pembenaran terhadap diskriminasi, atau pun pembatasan perdagangan internasional.<br><br>Menurut Thomas, jika penerapan amandemen tersebut disebabkan oleh faktor lingkungan, langkah ini juga dinilai tidak tepat. Pasalnya Indonesia telah menerapkan kebijakan minyak kelapa sawit yang berkelanjutan (The Indonesian Sustainable Palm Oil/ISPO) untuk memastikan minyak kelapa sawit diproduksi dengan cara yang ramah lingkungan dan tidak memberikan kontribusi terhadap deforestasi dan perubahan iklim.<br><br></p><blockquote>Industri minyak kelapa sawit Indonesia juga berpartisipasi dalam Roundtable on Sustainable Palm Oil (RSPO) untuk memastikan minyak kelapa sawit Indonesia diproduksi sesuai standar untuk keberlanjutan.</blockquote><p><br>Sedangkan jika terkait dengan isu kesehatan, Thomas memastikan hal itu tidak tepat. Studi terbaru menunjukkan bahwa konsumsi asam lemak jenuh dari minyak kelapa sawit tidak menyebabkan peningkatan risiko penyakit kardiovaskular.<br><br>"Jika ada pengaturan terkait konsumsi lemak jenuh, maka harus ditargetkan pada seluruh produk makanan yang mengandung lemak jenuh, baik minyak kelapa sawit, minyak nabati lainnya, atau lemak hewan," imbuh Mendag.<br><br>Thomas menegaskan, pemerintah akan selalu berupaya untuk melindungi akses pasar produk Indonesia. "Pemerintah Indonesia akan melakukan segala upaya untuk melindungi dan menjaga kepentingan akses pasar produk Indonesia di luar agar tidak mendapat hambatan," tandasnya. (Dny/Gdn)</p></div></div><div></div><div><ul><li></li></ul></div>', '2016-06-28', '21_070148300_1444804540-20151014-_Ilustrasi_Kelapa_Sawit-2.jpg', 'Ilustrasi Kelapa Sawit', '070148300_1444804540-20151014-_Ilustrasi_Kelapa_Sawit-2.jpg', 'French Trade Minister Asks the Government to Cancel Tax CPO', '<div>Liputan6.com, Jakarta - Trade Minister Thomas Trikasih Lembong has sent a letter specifically to pemerintahPrancis. The letter contains a request to the French government to cancel plans to help the French Parliament imposed a tax (tax) palm oil started in 2017 which increased progressively.</div><div><br></div><div>He said the tax palm oil set out in Amendment No. 367 as adopted by the Supreme Council for Legislative France on January 21, 2016, violating the principles of the World Trade Organization (WTO) and the General Agrement on Tariffs and Trade (GATT) of 1994.</div><div><br></div><div>"I understand, this is the authority of the French Parliament, but I ask the French government not to adopt Amendment No. 367. Instead, I ask the French government to work together with Indonesia to address the problems that occurred in France related to palm oil," he said in Jakarta, Friday (05/02/2016).</div><div><br></div><div>According to Thomas, in addition to violating the principle of national treatment and non-discrimination WTO and GATT 1994, the tax is also considered a form of discrimination against palm oil products, especially from Indonesia.</div><div><br></div><div>"This will create price discrimination and will harm Indonesia. I sent a letter to the French government to help cancel the plan," he said.</div><div><br></div><div>Denganpembelakuan this tax, lanjutThomas, it will make the price of Indonesian crude palm oil would not be competitive when compared to other vegetable oils such as soybean oil and sunflower seed oil.</div><div><br></div><div>READ ALSO</div><div><br></div><div>Because French, Indonesian Smallholders Screaming</div><div>RI eyeing China''s so Consumer Palm Oil</div><div>Oil Derivative Products Can Make RI Developed Countries</div><div>"At the end of the food industry in France and countries of the European Union would replace palm oil with other vegetable oils, which are cheaper," he said.</div><div><br></div><div>Palm oil is a strategic commodity in Indonesia''s economy. Directly and indirectly, the palm oil sector to absorb 16 million workers in Indonesia and contributes 1.6 percent to GDP Indonesia.</div><div><br></div><div>At present, about 61 cities in Indonesia, including small towns, live from the palm oil sector. In addition, Indonesia''s export earnings from these commodities reached about USD 19 billion per year.</div><div><br></div><div>"Given the strategic role of the palm oil sector in the economy, discriminatory treatment in export markets will have a negative impact on the stability of the economic, social and political factors that have built and sustained with difficulty since the early 2000s," he explained.</div><div><br></div><div>Thomas explained, the Law on Biological Diversity which will take effect in early 2017, the French government will impose a tax on crude palm oil and its derivatives amounted to EUR 300 per tonne in 2017, then rose to € 500 per tonne in 2018, rising to € 700 per tons in 2019, and rose to $ 900 per ton in 2020.</div><div><br></div><div>Whereas the General Agreement on Tariffs and Trade (GATT) 1994 Articles III: 2 has been arranged that the imported products, either directly or indirectly, can not be taxed internal or other internal charges such as domestic products.</div><div><br></div><div>Meanwhile, on GATT Article XX allows WTO member states to adopt measures necessary to protect the life or health of humans, animals, and plants, but its application should not give justification for discrimination, or restrictions on international trade.</div><div><br></div><div>According to Thomas, if the application of the amendment is caused by environmental factors, this step is also not appropriate. Because Indonesia has implemented a policy of sustainable palm oil (The Indonesian Sustainable Palm Oil / ISPO) to ensure that palm oil is produced in a way that is environmentally friendly and does not contribute to deforestation and climate change.</div><div><br></div><div><br></div><div>Indonesia''s palm oil industry also participated in the Roundtable on Sustainable Palm Oil (RSPO) to ensure Indonesia''s palm oil is produced according to standards for sustainability.</div><div><br></div><div>Meanwhile, if related to health issues, Thomas made sure it was not right. Recent studies have shown that consumption of saturated fatty acids of palm oil does not cause an increased risk of cardiovascular disease.</div><div><br></div><div>"If there is a setting related to the consumption of saturated fats, it should be targeted at the whole foods that contain saturated fats, both palm oil, other vegetable oils or animal fats," added Minister of Trade.</div><div><br></div><div>Thomas emphasized that the government will always try to protect market access for Indonesian products. "The Indonesian government will make every effort to protect and safeguard the interests of market access for Indonesian products outside so as not obstructed," he said. (Dny / Gdn)</div>', 'Illustration Palm Oil'),
(22, 100, 'Gara-gara Prancis, Petani Sawit Indonesia Menjerit', '<p>Liputan6.com, Jakarta -&nbsp;Asosiasi Petani Kelapa Sawit Indonesia (Apkasindo)&nbsp;menganggap Pemerintah Prancis sudah kelewatan apabila bersikukuh memberlakukan peraturan terkait pungutan pajak regresif terhadap Crude Palm Oil (CPO).<br><br>Ketua Umum&nbsp;Apkasindo, Anizar Simanjuntak mengatakan, pengenaan pajak regresif tersebut tidak masuk akal karena dianggap mengada-ada dan bentuk neokolonialisme atau penjajahan gaya baru.<br><br>“Ini neokolonialisme berbentuk persaingan dagang, agar CPO kita lebih mahal dari minyak nabati yang diproduksi negara Prancis,” tegas Anizar dalam keterangannya, Kamis (4/2/2016).<br><br>Oleh karenanya Anizar mendorong agar pemerintah mengadakan negosiasi dengan pihak pemerintah Prancis untuk membatalkan aturan pungutan pajak regresif tersebut. Pasalnya aturan pajak baru ini berdampak sangat merugikan petani sawit di Indonesia.<br><br>“Apabila tidak ada pembatalan terkait aturan tersebut, kami para petani sawit siap turun ke jalan untuk menyampaikan aspirasi ke kedutaan Prancis di Indonesia,” kata Anizar.</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2421981/ri-negara-pertama-yang-campurkan-20-minyak-sawit-dengan-solar">RI Negara Pertama yang Campurkan 20% Minyak Sawit dengan Solar</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422012/produk-turunan-sawit-dapat-jadikan-ri-negara-maju">Produk Turunan Sawit Dapat Jadikan RI Negara Maju</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2422076/ri-incar-china-jadi-konsumen-minyak-sawit">RI Incar China Jadi Konsumen Minyak Sawit</a></li></ul></div><p>Di lain sisi, menurut ekonom Drajad Wibowo, Indonesia perlu menyiapkan langkah retaliasi atau tindakan balasan dengan mengenakan pajak yang tinggi juga terhadap produk-produk Prancis yang masuk di Indonesia seperti pesawat Airbus yang banyak dipesan oleh lion air dan produk di toko departmen store Galleries Lafayatte atau produk kecantikan L Occitane dan lain-lain.&nbsp;<br><br>“Kita paksa orang Prancis yang punya kepentingan bisnis di Indonesia untuk jadi juru lobi kita,” ujar Drajad.<br><br>Lebih lanjut Drajad menjelaskan, Prancis memang dikenal sangat protektif terhadap produk pertanian dan beberapa sektor produksi lainnya oleh karenannya pemerintah Indonesia harus tegas menghadapi mereka.<br><br>Sementara itu, Sekjen Apkasindo&nbsp;Asmar Arsjad menambahkan, Pemerintah Prancis sudah keterlaluan apabila pungutan pajak regresif terhadap produk CPO bertujuan untuk membiayai kesehatan masyarakat dan petani di sana.<br><br></p><blockquote>“Masa kita, petani sawit disuruh memfasilitasi kesehatan masyarakat dan petani Prancis,”</blockquote><p><br>Lebih lanjut Asmar mengusulkan agar pemerintah membuka pasar ekspor baru untuk CPO dan menyetop ekspor ke Uni Eropa. Asmar beralasan apabila Prancis jadi menerapkan aturan pungutan pajak regresif tersebut maka akan menular ke negara eropa lainnya.<br><br>“Kita buka pasar baru ke negara-negara seperti Uzbekiztan, Turki dan negara Balkan lainnya," Kata Asmar. (Yas/Gdn)</p>', '2016-06-28', '22_045297700_1444804579-20151014-_Ilustrasi_Kelapa_Sawit-4.jpg', 'Ilustrasi Kelapa Sawit', '045297700_1444804579-20151014-_Ilustrasi_Kelapa_Sawit-4.jpg', 'Because French, Indonesian Smallholders Screaming', '<div>Liputan6.com, Jakarta - Indonesian Palm Oil Growers Association (Apkasindo) considers the French government insisted gone too far when enforcing rules related to the regressive tax levy Crude Palm Oil (CPO).</div><div><br></div><div>Chairman Apkasindo, Anizar Simanjuntak said that the imposition of a regressive tax that does not make sense because they are making it up and form a new neocolonialism or colonial style.</div><div><br></div><div>"This neo-shaped trade competition, so that our CPO more expensive than vegetable oils, produced by France," said Anizar in a statement, Thursday (02/04/2016).</div><div><br></div><div>Therefore Anizar urges the government to hold negotiations with the French government to cancel the regressive taxation rules. Because the new tax rule is very costly oil palm farmers in Indonesia.</div><div><br></div><div>"If there is no cancellation related to these rules, we smallholders ready to take to the streets to express their aspirations to the French embassy in Indonesia," said Anizar.</div><div><br></div><div>READ ALSO</div><div><br></div><div>RI State First the Palm Oil Mix 20% with Solar</div><div>Oil Derivative Products Can Make RI Developed Countries</div><div>RI eyeing China''s so Consumer Palm Oil</div><div>On the other hand, according to economists Drajad Wibowo, Indonesia needs to prepare measures of retaliation or retribution by imposing high taxes are also the products of French entry in Indonesia such as Airbus are widely booked by lion water and the product in the store department store Galleries Lafayatte or L Occitane beauty products and others.</div><div><br></div><div>"We forced the Frenchman who has business interests in Indonesia to be a lobbyist for us," said Drajad.</div><div><br></div><div>Furthermore Drajad explained, France is known to be very protective of agricultural products and some other production sectors by karenannya Indonesian government must be firm against them.</div><div><br></div><div>Meanwhile, Secretary General Apkasindo Arsjad Asmar added that the French government has gone too far when a regressive tax levied on palm oil products intended to finance public health and farmers there.</div><div><br></div><div><br></div><div>"The period we, oil palm farmers were told to facilitate public health and of French farmers,"</div><div><br></div><div>Further Asmar suggested that the government open up new export markets for CPO and stop exports to the European Union. Asmar reasonable to France so applying the rules of regressive taxation that it will spread to other European countries.</div><div><br></div><div>"We open new markets to countries like Uzbekiztan, Turkey and other Balkan countries," said Asmar. (Yas / Gdn)</div>', 'Illustration Palm Oil'),
(23, 100, '?Rizal Ramli: Ingat, Prancis Punya Banyak Kepentingan di RI', '<div><div><p>Liputan6.com, Jakarta -&nbsp;Menteri Koordinator Bidang Kemaritiman Rizal Ramli mengaku kecewa dengan adanya ?rancanganan&nbsp;amandemen Undang-undang Nomor 367 tentang Keanekaragaman Hayati yang diputuskan senat Prancis pada 21 Januari. Dalam RUU tersebut, ditempelkan pajak progresif untuk produksi sawit yang mulai berlaku pada 2017.<br><br>Rizal mengaku sudah menyurati seluruh duta besar yang ada di beberapa negara eropa untuk melakukan tindak protes kepada pemerintah Prancis. Jika itu diterapkan maka akan mematikan pasar ekspor CPO Indonesia ke Eropa, terutama Prancis.<br><br>"Jangan sampai hubungan Indonesia dengan Prancis yang sudah kita jalin selama ini rusak hanya karena persoalan ini," kataRizalRamli di kantor, Kamis (4/2/2016).</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2427017/ri-protes-prancis-berlakukan-bea-masuk-cpo">RI Protes Prancis Berlakukan Bea Masuk CPO</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2421478/pemerintah-diminta-hapuskan-pungutan-ekspor-cpo">Pemerintah Diminta Hapuskan Pungutan Ekspor CPO</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2428053/prancis-bakal-kenakan-pajak-impor-cpo-ini-tanggapan-rizal-ramli">Prancis Bakal Kenakan Pajak Impor CPO, Ini Tanggapan Rizal Ramli</a></li></ul></div><p>Rizal menambahkan walau&nbsp;ekspor CPO Indonesia ke Paris tidak dalam jumlah besar, namun keputusan senat Prancis tersebut mampu mempengaruhi negara-negara lain untuk menggunakan produk CPO asal Indonesia.<br><br>Selain menyurati Duta Besar Indonesia di Paris, Rizal juga meminta para duta besar untuk melakukan pembicaraan dengan para pebisnis yang memiliki kepentingan di bidang CPO ini. Hal ini dilakukan untuk menjaga kedaulatan Indonesia.&nbsp;"Ingat, Prancis juga punya banyak kepentingan di Indonesia, jangan lupa itu," tegas Rizal.<br><br>Rencana penetapan pajak tersebut terdapat dalam rancangan amandemen Undang-undang Nomor 367 tentang Keanekaragaman Hayati yang diputuskan senat Prancis pada 21 Januari. Dalam RUU tersebut, ditempelkan pajak progresif untuk produksi sawit yang mulai berlaku pada 2017.<br><br>Rinciannya, pajak sebesar 300 euro per ton pada 2017, 500 euro per ton tahun 2018, dan 700 euro per ton untuk 2019 . Pajak itu naik lagi menjadi 900 euro per ton pada 2020. Setelah 2020, pajak&nbsp;akan ditetapkan oleh Kementerian Keuangan Prancis.<br><br>Khusus untuk minyak kelapa sawit yang digunakan untuk produk makanan, RUU tersebut menetapkan adanya tambahan bea masuk sebesar 3,8 persen.<br><br>Sedangkan untuk minyak kernel yang digunakan untuk produk makanan akan bea masuknya 4,6 persen. Anehnya, pajak itu tidak ditetapkan pada biji rapa, bunga matahari, dan kedelai atau minyak nabati yang diproduksi di Prancis. (Yas/Gdn)</p></div></div><div></div><div><ul><li></li></ul></div>', '2016-06-28', '23_079790600_1454590060-20160204-Rizal-Ramli-dan-HE.-Dato-Sri-Douglas-Jakarta-Angga-Yuniar-0-4.jpg', 'Menteri Koordinator Kemaritiman Rizal Ramli (kanan) bersama Menteri Penanaman Industri dan Komoditas Malaysia HE. Dato Sri Douglas meresmikan kantor Council of Palm Oil Producing Country (CPOPC) di Ja', '079790600_1454590060-20160204-Rizal-Ramli-dan-HE.-Dato-Sri-Douglas-Jakarta-Angga-Yuniar-0-4.jpg', 'Rizal Ramli: Remember, France Have Lots of self-interest', '<div><p>Liputan6.com, Jakarta - Coordinating Minister for maritime Rizal Ramli said he was disappointed with their rancanganan amendments to Law No. 367 on Biological Diversity decided French Senate on January 21. In the Bill, affixed to a progressive tax on oil production that went into effect in 2017.</p><p><br></p><p>Rizal admitted that he had sent a letter to the entire ambassador in several European countries to commit acts of protest to the French government. If it is applied then it will turn off Indonesia''s CPO export market to Europe, especially France.</p><p><br></p><p>"Do not let relations between Indonesia and France that we intertwine during this broken simply because of this issue," kataRizalRamli in office, Thursday (04/02/2016).</p><p><br></p><p>READ ALSO</p><p><br></p><p>RI Protest France Enforce Duty CPO</p><p>Government Asked to Eliminate CPO export levy</p><p>France Will Wear the CPO import tax, this response Rizal Ramli</p><p>Rizal added despite Indonesia''s CPO exports to Paris not in large numbers, but the decision of the French Senate is able to influence other countries to use palm oil products from Indonesia.</p><p><br></p><p>Besides wrote to the Indonesian ambassador in Paris, Rizal also asked the ambassador for talks with business people who have an interest in this CPO. This is done to maintain the sovereignty of Indonesia. "Remember, France also has a lot of interest in Indonesia, do not forget it," said Rizal.</p><p><br></p><p>The tax assessment plan contained in the draft amendment to Act No. 367 on Biological Diversity decided French Senate on January 21. In the Bill, affixed to a progressive tax on oil production that went into effect in 2017.</p><p><br></p><p>In detail, a tax of 300 euros per tonne in 2017, to 500 euros per tonne in 2018, and 700 euro per tonne for 2019. Taxes were increased again to 900 euros per tonne by 2020. After 2020, the tax will be determined by the Ministry of Finance of France.</p><p><br></p><p>Especially for palm oil is used for food products, the bill establishing the existence of an additional import duty of 3.8 per cent.</p><p><br></p><p>As for the kernel oil is used for food products will be 4.6 percent import duty. Surprisingly, the tax was not specified in the few seeds, sunflower, and soybean or vegetable oil produced in France. (Yas / Gdn)</p></div><div><br></div><div></div><div><ul></ul></div>', 'Maritime Coordinating Minister Rizal Ramli (right) with Minister of Investment Industries and Commodities of Malaysia HE. Dato Sri Douglas inaugurated the office of Council of Palm Oil Producing Count'),
(24, 100, 'Produk Turunan Sawit Dapat Jadikan RI Negara Maju', '<p>Liputan6.com, Jakarta -&nbsp;Menteri Keuangan Bambang Brodjonegoro menginginkan<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2378661/jurus-jokowi-agar-kelapa-sawit-ri-masuk-eropa">kelapa sawit</a>&nbsp;menjadi pendorong Indonesia menjadi negara maju, dengan menggalakkan ?peningkatan nilai tambah produk sawit.</p><p>Bambang mengatakan, sebuah negara bisa menjadi negara maju karena hilirisasi, dan komoditas sawit menjadi salah satu andalan Indonesia, untuk meningkatkan nilai tambah produk sawit.</p><p>"Hilirisasi sawit adalah kebutuhan ekonomi kita, supaya Indonesia jadi negara maju," kata Bambang, dalam ajang pertemuan nasional sawit Indonesia 2016, di Kantor Kementerian Keuangan Jakarta, Rabu (27/1/2016).</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2421902/menko-darmin-targetkan-48-persen-pasokan-sawit-dunia-dari-ri">Menko Darmin Targetkan 48 Persen Pasokan Sawit Dunia dari RI</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420609/pemerintah-turunkan-bea-keluar-ekspor-cangkang-sawit">Pemerintah Turunkan Bea Keluar Ekspor Cangkang Sawit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420557/petani-kelapa-sawit-bisa-manfaatkan-kur">Petani Kelapa Sawit Bisa Manfaatkan KUR</a></li></ul></div><p>Bambang menambahkan, ?produk yang dihasilkan dari peningkatan nilai tambah sawit harus diperbanyak, jika ingin menjadikan sawit sebagai komoditas yang dapat mendorong Indonesia sebagai negara maju.<br>?</p><p>"Basisnya harus ada nilai tambah olahan dan industri itu bisa dari sawit sebagai tumbuhan yang menghasilkan produk banyak," ujar Bambang.</p><p>Bambang menuturkan, pengembangan dan penelitian perlu digalakkan untuk menciptakan produk turunan&nbsp;<a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2342806/sawit-jadi-komoditas-primadona-indonesia">kelapa sawit</a>&nbsp;yang lebih beragam dan mampu bersaing di kancah internasional.</p><p>"Kalau punya R&amp;D yang kuat,&nbsp; kita bisa menciptakan lebih banyak lagi produk yang dihasilkan berbasis sawit," ujar Bambang. (Pew/Ahm)</p>', '2016-06-28', '24_021280400_1441101577-kelapa-sawit.jpg', 'Kelapa sawit (AFP PHOTO/CHAIDEER MAHYUDDIN)', '021280400_1441101577-kelapa-sawit.jpg', 'Oil Derivative Products Can Make RI Developed Countries', '<div>Liputan6.com, Jakarta - Finance Minister Bambang Brodjonegoro palm menginginkankelapa be advocates Indonesia into developed countries, by encouraging an increase in the added value of oil products.</div><div><br></div><div>Bambang said, a country may be a developed country because of downstream and oil commodities into one of Indonesia, to increase the added value of oil products.</div><div><br></div><div>"Downstream oil is a necessity of our economy, so that Indonesia so the developed world," he said, in the event of a national meeting of Indonesian palm oil in 2016, at the Ministry of Finance in Jakarta, Wednesday (01/27/2016).</div><div><br></div><div>READ ALSO</div><div><br></div><div>Coordinating Minister Nasution Targets 48 Percent of World Oil Supply of RI</div><div>Lower government Shells Oil Export Duty</div><div>Palm Oil Growers Could Benefit from KUR</div><div>Bambang added, the product resulting from the increase in value-added oil must be propagated, if you want to make oil as a commodity that can be pushed Indonesia as developed countries.</div><div><br></div><div><br></div><div>"Their premises there must be value-added processed and it can be of the oil industry as a plant that produces a lot of," said Bambang.</div><div><br></div><div>Bambang said, the development and research should be encouraged to create a palm oil derivative products are more diverse and able to compete internationally.</div><div><br></div><div>"If you have a strong R &amp; D, we can create more palm-based products produced," said Bambang. (Pew / Ahm)</div>', 'Kelapa sawit (AFP PHOTO/CHAIDEER MAHYUDDIN)'),
(25, 100, 'Menko Darmin Targetkan 48 Persen Pasokan Sawit Dunia dari RI', '<p>Liputan6.com, Jakarta&nbsp;Menteri ?Kordinator Bidang Perekonomian Darmin Nasution menargetkan Indonesia sebagai pemasok minyak sawit terbesar di dunia, dengan porsi 48 persen pada 2020.</p><p>Darmin mengatakan, ke depan konsumsi ?minyak sawit meningkat dari 56 juta metrik ton (MT) menjadi 80 juta MT, dengan pertumbuhan setiap tahun 8,5 persen.</p><p>"Pertumbuhan sawit di atas 8,5 persen akan berlanjut setelah 2020,"kata Darmin, dalam ajang pertemuan nasional sawit Indonesia 2016, di Kantor Kementerian Keuangan Jakarta, Rabu (27/1/2016).</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420609/pemerintah-turunkan-bea-keluar-ekspor-cangkang-sawit">Pemerintah Turunkan Bea Keluar Ekspor Cangkang Sawit</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420557/petani-kelapa-sawit-bisa-manfaatkan-kur">Petani Kelapa Sawit Bisa Manfaatkan KUR</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420554/bpdp-sawit-siapkan-dana-rp-15-triliun-dukung-program-b20">BPDP Sawit Siapkan Dana Rp 15 Triliun Dukung Program B20</a></li></ul></div><p>Melihat potensi tersebut, Darmin menargetkan Indonesia akan tetap menjadi produsen minyak sawit di dunia, dengan porsi produksi mencapai? 48 persen. Minyak sawit tersebut berasal dari perkebunan besar dan petani mandiri.</p><p>"Kita akan tetap jadi produsen terbesar dengan 48 persen pasokan dunia. dari perkebunan besar dan petani mandiri," ungkap Darmin.</p><p>Menurut Darmin, untuk mencapai target tersebut harus ada perbaikan pola tanam sawit ?dengan mengacu sistem pertanian keberlanjutan. Saat ini produksi sawit berasal dari perkebunan rakyat mencapai 44 persen dari total lahan 10 juta hektar.</p><p>"Dari kebun rakyat 44 persen dari total luas lahan sawit saat ini mencapai 10 juta hektar. Perusahaan besar nggak banyak, dan seharusnya sudah dapat dilakukan dengan baik," tutup Darmin.</p>', '2016-06-28', '25_056783500_1444215122-asap-pembakaran-tandan-kosong-sawit-ganggu-warga-.jpg', 'Kelapa Sawit', '056783500_1444215122-asap-pembakaran-tandan-kosong-sawit-ganggu-warga-.jpg', 'Coordinating Minister Nasution Targets 48 Percent of World Oil Supply of RI', '<div>Liputan6.com, Jakarta, Coordinating Minister for Economic Affairs Nasution targeting Indonesia as a supplier of palm oil in the world, with a share of 48 percent in 2020.</div><div><br></div><div>Nasution said the future of palm oil consumption increased from 56 million metric tons (MT) to 80 million MT, with growth of 8.5 percent each year.</div><div><br></div><div>"Growth of oil above 8.5 percent will continue after 2020," Nasution said, in the event of a national meeting of Indonesian palm oil in 2016, at the Ministry of Finance in Jakarta, Wednesday (01/27/2016).</div><div><br></div><div>READ ALSO</div><div><br></div><div>Lower government Shells Oil Export Duty</div><div>Palm Oil Growers Could Benefit from KUR</div><div>BPDP Palm Prepares Rp 15 Trillion Program for B20</div><div>Seeing this potential, targeting Nasution Indonesia will remain a producer of palm oil in the world, with a portion of production to reach 48 percent. Palm oil is derived from large plantations and independent farmers.</div><div><br></div><div>"We will remain the largest producer with 48 percent of the world supply. Of large plantations and independent farmers," said Nasution.</div><div><br></div><div>According to Nasution, to achieve these targets should be improvements palm planting patterns with reference to sustainability of agricultural systems. Currently oil production comes from smallholder plantations reaches 44 percent of the total land area of ??10 million hectares.</div><div><br></div><div>"From the people''s farms 44 percent of the total land area of ??oil today reached 10 million hectares. Large enterprises not much, and should be able to do well," Nasution lid.</div>', 'Kelapa Sawit'),
(26, 100, 'Pemerintah Turunkan Bea Keluar Ekspor Cangkang Sawit', '<p>Liputan6.com, Jakarta&nbsp;Pemerintah akan menurunkan pungutan bea keluar ekspor cangkang sawit yang selama ini dikenakan sebesar US$ 10 ton. Penurunan bea keluar ini dimaksudkan agar pengusaha sawit di dalam negeri mulai melirik pemanfaatan cangkang sawit tersebut untuk pembangkit listrik ramah lingkungan atau biomassa.</p><p>Menteri Perindustrian Saleh Husin mengatakan, permintaan akan usulan penurunan bea keluar cangkang sawit ini berasal dari Himpunan Pengusaha Pribumi Indonesia (HIPPI) yang anggotanya menjadi pengekspor cangkang sawit ke negara lain.</p><p>Besaran tersebut bukan serta merta turun, melainkan dikenakan secara bertahap. Rapat koordinasi yang digelar di Kantor Kementerian Koordinator Bidang Perekonomian, disepakati pungutan bea keluar tersebut akan dikurangi hingga sebesar US$ 3 per ton dan akan kembali mengalami kenaikan secara bertahap hingga kembali ke ?US$ 10 per ton.</p><div><p>BACA JUGA</p><ul><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2420255/harga-anjlok-pengusaha-minta-pungutan-ekspor-sawit-dikurangi">Harga Anjlok, Pengusaha Minta Pungutan Ekspor Sawit Dikurangi</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2417716/subsidi-program-campuran-minyak-sawit-ke-solar-membengkak">Subsidi Program Campuran Minyak Sawit ke Solar Membengkak</a></li><li><a target="_blank" rel="nofollow" href="http://bisnis.liputan6.com/read/2416748/badan-restorasi-gambut-dibentuk-ini-kata-pengusaha-sawit">Badan Restorasi Gambut Dibentuk, Ini Kata Pengusaha Sawit</a></li></ul></div><p>?"Permintaan HIPPI untuk di 0 persen, tapi dalam rapat tadi diputuskan untuk dibuat bertahap untuk tahun per pertama nanti US$ 3, tahun kedua naik jadi US$ 5, dan tahun ketiga kembali US$ 10 per ton. Mereka minta nggak ada pungutan karena dianggap sampah jadi tidak perlu ada pungutan," ujarnya di Jakarta, Senin (25/1/2016).</p><p>Dia menjelaskan, selama ini belum ada inisiatif di dalam negeri untuk membangun pembangkit listrik dengan memanfaatkan limbah sawit. Padahal di negara lain, cangkang sawit yang dianggap tidak berguna ini dimanfaatkan sebagai bahan bakar pembangkit pengganti batubara. Bahkan cangkang sawit ini dianggap lebih ramah lingkungan.</p><p>"Iya tujuannya untuk pembangkit biomassa. Jadi biar tahun ketiga mulai membangun. Kan bangun power plant butuh 2 tahun. Biar pada tahun ketiga sudah bisa kembali sudah harus terbangun?. Tapi potensi saya belum tahu, kan limbahnya besar. Selama ini kita ekspor dan yang mendapatkan manfaat di sana (negara lain)," jelas dia.</p><p>Sementara itu, Menteri Perencanaan Pembangunan Nasional (PPN)/Kepala Bappenas Sofyan Djalil mengatakan, sejumlah daerah sebenarnya sudah memanfaatkan limbah sawit ini sebagai pembangkit listrik, namun dengan kapasitas yang relatif kecil.</p><p>Namun menurut Sofyan, jika dikembangkan secara serius,? cangkang sawit ini sebenarnya bisa membantu mencapai target energi ramah lingkungan (bioenergi) sebesar 23 persen pada 2025.</p><p>"Saya tidak punya datanya. Tapi di beberapa daerah sudah berkembang tenaga listrik biomassa. Kecil-kecil memang.Tapi sekarang ini di beberapa negara biomas ini digunakan untuk mendapatkan kredit energi. Maka kita harus mencapai target bioenergi 23 persen 2025, biomassa itu sumber dari bioenergi," tandasnya. (Dny/Zul)</p>', '2016-06-28', '26_021280400_1441101577-kelapa-sawit.jpg', 'Kelapa Sawit', NULL, 'Lower government Shells Oil Export Duty', '<p>Liputan6.com, Jakarta government plans to lower levies export duties palm shells that had been charged $ 10 a ton. The decline in export duties is intended for entrepreneurs of oil in the country began to look at the utilization of palm shells for environmentally friendly power generation or biomass.</p><p><br></p><p>Minister of Industry Saleh Husin said the demand for the proposed reduction in export duty palm shell is derived from the Native Indonesian Entrepreneurs Association (Hippi) whose members into an exporter of palm shell to another country.</p><p><br></p><p>Magnitude is not necessarily down, but gradually imposed. The coordination meeting was held at the Coordinating Ministry for Economic Affairs, agreed levy export duty will be reduced to US $ 3 per tonne and will be again increased gradually until returning to the US $ 10 per ton.</p><p><br></p><p>READ ALSO</p><p><br></p><p>Price Drops, Employers Have Reduced Oil export levy</p><p>Subsidy Program to Solar Palm Oil Mixed swell</p><p>Formed Peat Restoration Agency, this Kata Palm Entrepreneurs</p><p>"Demand for the hippie in the 0 percent, but the last meeting was decided to be phased for the first year per US $ 3 later, a second year rose to US $ 5, and the third year back US $ 10 per ton. They asked not no charges for considered trash so there should be no charges, "he said in Jakarta, Monday (01/25/2016).</p><p><br></p><p>He explained that there had been no initiative in the country to build the power plant by using waste oil. Whereas in other countries, palm shells are considered useless was used as a substitute fuel for coal. Even palm shells are considered more environmentally friendly.</p><p><br></p><p>"Yeah goal to plant biomass. So let the third year began to build. Kan wake power plant takes two years. Let the third year was able to return had to be woken up. But I do not know the potential, the huge waste. During this time we export and that benefit there (other countries), "he explained.</p><p><br></p><p>Meanwhile, Minister of National Development Planning (PPN) / Head of Bappenas Sofyan Djalil said, some areas actually using waste oil as power plants, but with a relatively small capacity.</p><p><br></p><p>However, according to Sofyan, if developed seriously, palm shells could actually help achieve the target of environmentally friendly energy (bioenergy) by 23 percent by 2025.</p><p><br></p><p>"I do not have that data. But in some areas had grown biomass power. Small pieces memang.Tapi today in some countries biomass is used to obtain energy credits. So we have to achieve the target of 23 percent biofuel by 2025, biomass was the source of bioenergy , "he said. (Dny / Zul)</p>', 'Illustration Palm Oil'),
(27, 8, 'Gapki Akui Izin Perusahaan Anggotanya Dicabut akibat Kebakaran Hutan', '<div><div><strong>JAKARTA&nbsp;</strong>-&nbsp;<a target="_blank" rel="nofollow" href="http://economy.okezone.com/topic/24234/menteri-bumn-rini-soemarno"><strong>Gabungan Pengusaha Kelapa Sawit Indonesia (Gapki)</strong></a>mengakui ada salah satu anggotanya yang izin usahanya dicabut Kementerian Lingkungan Hidup dan Kehutanan (LHK). Hal ini terkait kasus pembakaran hutan yang terjadi belakangan ini.<p>Sebelumnya, Kementerian LHK telah menetapkan sanksi kepada empat peusahaan. Antara lain, PT Tempirai Palm Resources di Padamaran, Kabupaten Oki, Sumatera Selatan, PT Waringin Argo Jaya di Sumetera Selatan, PT Langgap Inti Hibrindo di Riau dan PT Hutani Solalestari.</p><p>"Yang Langga Inti, iya (perusahaan itu)&nbsp;<a target="_blank" rel="nofollow" href="http://economy.okezone.com/topic/5652/gapki"><strong>anggota Gapki</strong></a>," jelas Ketua Umum Gapki Joko Supriyono di Kantornya, Selasa (22/9/2015).</p><p>Namun Joko menjelaskan, berdasarkan laporan, PT Langgap mengaku sudah berusaha memadamkan kebun perusahaan yang terbakar. Dan yang terjadi adalah kebun PT Langgap menjadi korban kebakaran, bukan yang membakar, sehingga secara SOP sudah dilakukan dengan benar.</p><p>"Mereka kena kebakaran kebun sekitar, mereka sudah padamkan sendiri, dia sudah buat BAP, mustinya secara SOP sudah ditempuh dengan benar," imbuh Joko.</p><p>Untuk itu, lanjut Joko, penegakkan hukum wajib bagi yang terbukti benar-benar dengan sengaja membakar. Tapi kalau tidak sengaja terbakar berarti tidak melanggar.</p><p>"Ini yang mestinya jadi perhatian pemerintah," sebutnya.</p></div></div><strong>(rzk)</strong>', '2016-06-28', '27_gapki-akui-izin-perusahaan-anggotanya-dicabut-akibat-kebakaran-hutan-mJlUjx0oaS.jpg', 'Ilustrasi: Okezone', 'gapki-akui-izin-perusahaan-anggotanya-dicabut-akibat-kebakaran-hutan-mJlUjx0oaS.jpg', 'Acknowledge Gapki Company Permit Revoked members due to Forest Fires', '<div>JAKARTA - The Indonesian Palm Oil Association (Gapki) admitted there was one of its members their business licenses revoked Ministry of Environment and Forests (LHK). This is related to the case of forest fires that occurred lately.</div><div>Previously, the Ministry LHK has set sanctions on four Vendor. Among others, PT Tempirai Palm Resources in Padamaran, Oki District, South Sumatra, PT K. Argo Jaya in South Sumatera, PT Inti Langgap Hibrindo in Riau and PT Hutani Solalestari.</div><div><br></div><div>"The Langga essence, yes (the company) Gapki members," explained Chairman Joko Gapki Supriyono in his office, Tuesday (09/22/2015).</div><div><br></div><div>However Joko explained, based on the report, PT Langgap admitted that he had tried to extinguish the burning plantation company. And what happens is the garden PT Langgap become victims of fire, not burning, so that SOP was done properly.</div><div><br></div><div>"They conflagrate garden around, they''ve put out his own, he has created BAP, mustinya in SOP has been taken correctly," said Joko.</div><div><br></div><div>Therefore, said Joko, law enforcement mandatory for proven absolutely deliberately set fire. But if accidentally burned means not violated.</div><div><br></div><div>"This is what should be the government''s attention," he said.</div><div><br></div><div>(RZK)</div>', 'Okezone');
INSERT INTO `berita_m` (`id_berita`, `id_asosiasi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_berita`, `judul_english`, `content_english`, `caption_picture`) VALUES
(32, 100, ' Butuh 160 Pabrik Kelapa Sawit', '<div><p>MEDAN- Industri kelapa sawit dan produk turunannya diyakini masih akan terus berkembang. Namun, dari 7,5 juta hektare (ha) kebun sawit di Indonesia, ketersediaan Pabrik Kelapa Sawit (PKS) hanya 700 unit. Idealnya, ada satu PKS untuk 7.500 ha. Di Sumut, dengan luas kebun sawit 1,2 juta ha, sedikitnya dibutuhkan 160 PKS.</p></div><p>Untuk itu, diperlukan inovasi teknologi dan kemampuan manajerial untuk terus meningkatkan efisiensi industri dan menghasilkan produk-produk turunan minyak sawit (CPO) dan minyak inti (PKO). Asisten Ekonomi Pembangunan Provinsi Sumatera Utara (Provsu) Sabrina menegaskan, industri kelapa sawit merupakan penopang pertumbuhan ekonomi yang utama di Sumut dan Indonesia.</p><p>Mestinya, sumbangan kelapa sawit untuk perkembangan ekonomi Sumut dan Indonesia bisa berlipat dibanding kondisi sekarang. Caranya, dengan meningkatkan nilai ekonomi melalui pengurangan ekspor CPO dan PKO dan memperbanyak industri untuk menghasilkan produk turunannya.</p><p>Sumut sebagai sentra utama penghasil kelapa sawit dan produk olahannya masih sangat perlu menumbuhkan sektor hilir. Pasalnya, peran sektor ini masih rendah.</p><p>“Produk turunan minyak sawit (CPO) dan minyak inti sawit (PKO) akan memberikan nilai tambah cukup tinggi,” kata Sabrina saat membuka Palmex Indonesia, pameran terbesar industri kelapa sawit di Indonesia dan kawasan Asia Tenggara di Santika Premiere Dyanda Hotel dan Convention, Selasa (10/10).</p><p>Sabrina yang didampingi Wali Kota Medan Rahudman berharap, Even menjadi momentum bangkitnya industri kelapa sawit di Sumut. “Melalui even ini, selain memberikan informasi tentang teknologi baru, bisa juga mendorong pertumbuhan industri kelapa sawit,” harapnya.</p><p>Data Palmex memperlihatkan, saat ini jumlah pabrik sawit di Indonesia hanya sekitar 700 unit dengan luas lahan 7,5 juta hektare (ha). Kebanyakan pabrik kelapa sawit yang mengolah tandan buah segar (TBS) menjadi minyak sawit (crude palm oil, CPO) dan minyak inti sawit (palm kernel oil, PKO). Padahal, idealnya jumlah pabrik kelapa sawit minimal 1.000 unit dengan perkiraan setiap 7.500 ha lahan sawit harus terdapat satu pabrik.</p><p>Sabrina mengatakan, pemerintah provinsi sedang mengupayakan mendorong peningkatan industri sawit di daerah ini dengan membatasi pembukaan lahan sawit baru namun memberikan rekomendasi terhadap perusahaan yang ingin membangun industri hilir. “Kalau mau bangun industri hilir, pemerintah sangat terbuka tapi jika cari lahan, kami tidak merekomendasikan karena lahannya sudah tidak ada lagi,” ucapnya.</p><p>600 Ha di Seimangke untuk Industri Sawit</p><p>Selain itu, pemerintah provinsi juga terus mendorong percepatan realisasi kawasan industri Seimangke yang disiapkan sebagai pusat industrialisasi kelapa sawit. Saat ini sudah ada infrastruktur jalan, industri oleochemical dengan tenaga listrik dari limbah kelapa sawit sebesar 2×3,5 MW dan lainnya. Seluruhnya berdiri pada lahan seluas 140 ha. “Selanjutnya pada 2013 disiapkan lahan seluas 600 ha sebagai lokasi pembangunan industri sawit lainnya. Master plan sudah siap, selanjutnya tinggal pengerjaan sarana dan prasarana,” jelasnya.</p><p>Karenanya, dia berharap even ini bisa memberikan informasi jelas mengenai perkembangan teknologi baru dan terbarukan kepada stakeholder kelapa sawit untuk meningkatkan produksi turunan kelapa sawit. “Peningkatan produksi tidak terlepas dari teknologi tinggi,” ujarnya.</p><p>Di sisi lain, Ketua Gabungan Pengusaha Kepala Sawit (Gapki) Sumut Ir Balaman Tarigan membeberkan, saat ini luas areal perkebunan kepala sawit di Sumut mencapai 1,2 juta hektar.</p><p>Rinciannya 200 ribu hektar lahan perkebunan negara, 500 ribu lahan perkebunan swasta dan 500 ribu lagi lahan perkebunan rakyat. Balaman mengakui, saat ini pengusahaan industry sawit di Sumut umumnya masih berkutat di pengolahan TBS menjadi CPO dan PKO.</p><p>“Kita kan tidak tahu bagaimana perkembangan teknologi di PKS saat ini. Jika ada mesin yang canggih, dapat mengolah TBS dengan jumlah yang besar dan bisa menghasilkan rendeman yang bagus. Ini kan sebuah teknologi yang sedang ditunggu-tunggu,” sebut Balaman.</p><p>Intinya sebut Balaman inovasi-inovasi terutama dalam hal teknologi pengolahan TBS serta produk turunannya masih sangat dibutuhkan semua pihak. “Secara bisnis jika ada teknologi yang canggih bisa diterapkan tentunya dapat mengurangi biaya pengolahan sehingga harga beli TBS pun akan semakin membaik,” ujarnya.</p><p>Hal yang sama juga dikatakan Ketua Asosiasi Petani Kelapa Sawit Indonesia (Apkasindo) Anizar Simanjuntak. Menurut dia, teknologi di PKS sangat dibutuhkan, terutama di kalangan petani kelapa sawit (kebun rakyat).</p><p>“Ya kalau ada teknologi canggih dan ada investor yang mau menanamkan modalnya untuk membangun PKS, tentunya kami akan terbantu dan harganya akan bersaing,” sebut Anizar.</p><p>Dia menjelaskan selama ini petani-petani kelapa sawit menjual TBS nya ke PKS swasta dan pemerintah. “Jadi kalau ada investor lain dengan teknologi PKS yang lebih maju lagi kenapa tidak,” kata Anizar.</p><p>Saat ini saja rata-rata produksi TBS kebun rakyat 21 ton per hektar per tahun, sementara kebun swasta dan pemerintah bisa mencapai 24 ton per hektar per tahun. Dengan demikian kata Anizar produksi TBS masih melimpah dan dibutuhkan teknologi yang canggih untuk mengolahnya.</p><p>Lalu, berapa jumlah PKS yang ada di Sumut? Ditanya begitu Anizar menjawab tidak tahu persis. Tapi lanjut dia, berapakah itu pastilah membutuhkan teknologi-teknologi yang canggih.</p><p>Industri Minyak Sawit Indonesia dan Dunia Pameran di Medan</p><p>Sementara itu, Direktur Utama Fireworks Indonesia selaku penyelenggara Palmex Indonesia, Susan Tricia mengatakan prospek industri kelapa sawit Indonesia yang diprediksi semakin cerah di masa mendatang. Itu pula alas an pihaknya menggelar even tahunan ini kembali.</p><p>Melalui even ini diharapkan ada transformasi informasi teknologi yang meningkatkan efektivitas dan efisiensi kerja pabrik kelapa sawit untuk menambah produksi dalam waktu bersamaan serta ramah lingkungan. “Sejumlah nama besar di industri minyak sawit di Indonesia maupun mancanegara hadir memamerkan produk dan teknologi masing-masing kepada stakeholder sawit khususnya. Jumlah perusahaan yang ikut ini ada 100 perusahaan, naik 25 persen dari tahun lalu,” katanya.</p><p>Selain jumlah perusahaan, transaksi penjualan juga meningkat terus. Pada 2010 transaksi tercatat USD100 juta, kemudian pada 2011 naik menjadi USD150 juta dan pada tahun ini ditargetkan bisa mencapai USD250 juta. “Even ini tepat bagi purchaser dan engineer untuk mengupdate teknologi terbaru yang mampu meningkatkan kinerja serta menjalin hubungan bisnis diantara pelaku industri sawit,” ucapnya.</p><p>Branch Manager Northern Sumatera Schneider Electric Indonesia, Wahyu Permadi menilai even ini penting untuk memamerkan teknologi-teknologi terbaru produk yang dihasilkan perusahaan ini. “Tahun ini merupakan tahun kedua kami berpartisipasi pada even ini. Kami berharap industri sawit dapat memaksimalkan produksi menggunakan solusi dan sistem automasi dari Schneider Electric,” katanya.</p><p>Schneider Electric bergerak dalam pengelolaan energi dengan menghadirkan solusi HMI, VSD dan sistem automasi. Solusi tersebut memberikan perlindungan terhadap mesin motor dan membantu mempermudah sistem kerja sehingga tercipta efisiensi dan efektifitas untuk produksi maksimal.</p><p>Diakuinya, untuk saat ini belum banyak pengusaha yang memiliki industri pengolahan sawit dan produk turunannya yang baik karena alat teknologinya terus berkembang. “Teknologi (pengolahan) sawit juga tahan lama. Jadi tidak semua dalam jangka waktu tertentu mereka dapat melakukan transformasi alat teknologi,” ungkapnya. (ram/dra)</p>Oleh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Sabrina, (Provsu)Sumber : jpnn.com<span><br><br>Read more:<a target="_blank" rel="nofollow" href="http://www.kpbptpn.co.id/news-8006-0-butuh-160-pabrik-kelapa-sawit.html#ixzz4Cv4djdjM">http://www.kpbptpn.co.id/news-8006-0-butuh-160-pabrik-kelapa-sawit.html#ixzz4Cv4djdjM</a></span>', '2016-06-29', '32_20121011185424PKS.jpg', 'Pabrik Sawit', '20121011185424PKS.jpg', 'It took 160 mills', '<div>MEDAN palm oil industry and its derivatives are believed to still be evolving. However, of the 7.5 million hectares (ha) of oil palm plantations in Indonesia, the availability of palm oil mill (MCC) only 700 units. Ideally, there is one MCC to 7,500 ha. In North Sumatra, with an area of ??1.2 million hectares of oil palm plantations, it takes at least 160 PKS.</div><div><br></div><div>This requires technological innovation and managerial skills to continue to improve industrial efficiency and produce derivative products of palm oil (CPO) and kernel oil (PKO). Assistant Economic Development of North Sumatra Province (Provsu) Sabrina asserted, the palm oil industry is the main supporting economic growth in North Sumatra and Indonesia.</div><div><br></div><div>Properly, the contribution of palm oil for the economic development of North Sumatra and Indonesia can be a multiple compared to current conditions. How, by increasing economic value by reducing the export of CPO and PKO and expand the industry to produce derivative products.</div><div><br></div><div>North Sumatra as the center of a major producer of palm oil and processed products still need to grow the downstream sector. Because the role of this sector is still low.</div><div><br></div><div>"Products derived crude palm oil (CPO) and palm kernel oil (PKO) will provide added value is quite high," said Sabrina when opening Palmex Indonesia, the largest exhibition of the palm oil industry in Indonesia and Southeast Asia in the Santika Premiere Dyanda Hotel and Convention Tuesday (10/10).</div><div><br></div><div>Sabrina who was accompanied by the Mayor of Medan Rahudman hope, Even a momentum of rise of the palm oil industry in North Sumatra. "Through this event, in addition to providing information about the new technology, it can also encourage the growth of the palm oil industry," he hoped.</div><div><br></div><div>Palmex Data show that the current number of oil mills in Indonesia is only about 700 units with a total area of ??7.5 million hectares (ha). Most palm oil mill processing fresh fruit bunches (FFB) into palm oil (crude palm oil, CPO) and palm kernel oil (palm kernel oil, PKO). Ideally, the number of palm oil mills with an estimated minimum of 1,000 units every 7,500 ha of oil must contain one factory.</div><div><br></div><div>Sabrina said, the provincial government is trying to encourage an increase in the oil industry in this area by limiting the opening of new oil fields, but provides recommendations on companies that want to build downstream industries. "If you want to wake up the downstream industry, the government is very open but if looking for land, we do not recommend because the land is not there anymore," he said.</div><div><br></div><div>600 Ha in Seimangke for Oil Industry</div><div><br></div><div>In addition, the provincial government also continues to accelerate the realization of the industrial area Seimangke prepared as a center for industrialization of palm oil. Currently existing road infrastructure, the oleochemical industry with electric power from palm oil waste by 2 × 3.5 MW and more. Total stands in an area of ??140 ha. "Furthermore, in 2013 set up an area of ??600 ha as the location of other oil industry. The master plan is ready, then just execution facilities and infrastructure, "he explained.</div><div><br></div><div>Therefore, he hopes this event can provide clear information on the development of new and renewable technologies to the stakeholders of palm oil to increase the production of palm oil derivative. "Increased production can not be separated from high-tech," he said.</div><div><br></div><div>On the other hand, Chairman of the Association of Chief Oil (Gapki) of North Sumatra revealed Ir Balaman Tarin, the current acreage of oil palm plantations in North Sumatra reached 1.2 million hectares.</div><div><br></div><div>The details of 200 thousand hectares of state plantations, 500 thousand private plantations and 500 thousand more people''s estates. Balaman admitted that the exploitation of the oil industry in general is still struggling in North Sumatra TBS processing into CPO and PKO.</div><div><br></div><div>"We do not know how the development of technology in the current MCC. If there is a sophisticated machine, TBS can process large amounts and can produce great rendemen. It''s a technology that is being eagerly awaited, "said Balaman.</div><div><br></div><div>Essentially call Balaman innovations, especially in terms of processing technology TBS and derivatives products are still desperately needed by all parties. "In business if there is a sophisticated technology that can be applied of course, can reduce processing costs so that TBS purchase price would be even better," he said.</div><div><br></div><div>The same is said to Chairman of the Indonesian Palm Oil Growers Association (Apkasindo) Anizar Simanjuntak. According to him, the technology in the MCC is needed, especially among smallholders (their fields).</div><div><br></div><div>"Yes, if there are advanced technology and there are investors willing to invest to build the MCC, of ??course we will be helped and the price will be competitive," said Anizar.</div><div><br></div><div>He explained that during these oil palm farmers sell its TBS MCC to private and government. "So if there are other investors with more advanced technology PKS again why not," said Anizar.</div><div><br></div><div>At this moment, the average production of smallholder TBS 21 tonnes per hectare per year, while the private garden and the government could reach 24 tonnes per hectare per year. Thus said Anizar FFB production is abundant and sophisticated technology is needed to process it.</div><div><br></div><div>Then, how many MCC in North Sumatra? Asked once Anizar not know the exact answer. But he added, what it must require sophisticated technologies.</div><div><br></div><div>Indonesian Palm Oil Industry and the World Exhibition in Medan</div><div><br></div><div>Meanwhile, President Director of Indonesia as the organizer Palmex Fireworks Indonesia, Susan Tricia said the outlook for Indonesia''s palm oil industry is predicted to be even brighter future. It is also the reason it was held this annual event is back.</div><div><br></div><div>Through this event is expected no information transformation technology that improve the effectiveness and efficiency of palm oil mills to increase production at the same time as well as environmentally friendly. "A number of big names in the palm oil industry in Indonesia and foreign countries showcased products and technologies present each of the stakeholders, especially oil. The number of participating companies there are 100 companies, up 25 percent from a year ago, "he said.</div><div><br></div><div>In addition to a number of companies, sales transactions also increased steadily. In 2010, $ 100 million recorded transactions, then in 2011 rose to $ 150 million and this year is targeted to reach USD250 million. "Even this is appropriate for the Purchaser and engineer to update the latest technology that can improve performance and establish business relations between the oil industry," he said.</div><div><br></div><div>Branch Manager of Schneider Electric Northern Sumatra, Indonesia, Rev. Permadi assess this important event to showcase the latest technology products produced by this company. "This year is the second year we participated in this event. We expect the oil industry to maximize the use of production and automation system solutions from Schneider Electric, "he said.</div><div><br></div><div>Schneider Electric is engaged in energy management by presenting solutions HMI, VSD and automation system. The solution provides protection against engine and help facilitate the work system so as to create efficiency and effectiveness for maximum production.</div><div><br></div><div>Admittedly, for the moment not many entrepreneurs who have the oil processing industry and its derivatives, which is good because the technology is constantly evolving tool. "The technology (processing) palm also durable. So it is not all in a certain time they can perform the transformation of technological tools, "he said. (Ram / dra)</div><div><br></div><div>By: Sabrina, (Provsu) Source: jpnn.com</div><div><br></div><div>Read more: http: //<a target="_blank" rel="nofollow" href="http://www.kpbptpn.co.id/news-8006-0-butuh-160-pabrik-kelapa-sawit.html#ixzz4Cv4djdjM">www.kpbptpn.co.id/news-8006-0-butuh-160-pabrik-kelapa-sawit.html#ixzz4Cv4djdjM</a></div>', 'sawit Factory'),
(33, 7, 'APOLIN: Prospek Industri Oleokimia Sangat Baik', '<span>MedanBisnis Ã¢?? Jakarta. Asosiasi Produsen Oleochemical Indonesia (APOLIN) menilai prospek industri oleokimia Indonesia sangat baik mengingat permintaan dunia terus meningkat antara 3,6 sampai empat persen pertahun, seiring naiknya pendapatan perkapita dan perubahan gaya hidup masyarakat dunia.<span>"Walaupun kondisi infrastruktur Indonesia belum cukup memadai, prospek industri oleokimia masih sangat baik, mengingat permintaan pasar dunia masih membaik," ujar Ketua APOLIN Steve Goei King An, di Jakarta, Minggu (5/12).<br><br>Dengan kondisi permintaan dunia yang terus membaik itu, ia berharap ada kebijakan yang menjamin ketersediaan bahan baku berupa minyak sawit mentah (CPO) dan palm kernel oil (PKO) di dalam negeri. "Artinya ekspor CPO dan PKO haruslah dibatasi sehingga ''refinery'' berjalan dengan baik dan (industri) oleokimia berkembang," katanya.<br><br>Tanpa kebijakan pemerintah yang membatasi ekspor CPO, Steve khawatir, Indonesia sebagai negara produsen terbesar CPO akan menjadi pengimpor oleokimia yang berkembang di negara lain.<br><br>Sementara itu Dirut Flora Sawita Chemindo, M Iqbal Zainuddin, yang mengelola pabrik oleokimia Domba Mas di Sumatra Utara yang diakuisi PT Bakrie Sumatra Plantation Tbk, mengatakan bahwa nilai tambah produk oleokimia sangat tinggi dibandingkan CPO. Nilai tambah produk itu mencapai US$ 400 sampai US$ 1.200. Namun sayangnya, belum banyak perusahaan di Indonesia masuk ke industri tersebut.<br><br>Saat ini ada enam produsen besar yang memproduksi oleokimia baik untuk "fatty acid" maupun "fatty alcohol" dengan total kapasitas terpasang mencapai 1,1 juta ton pertahun. Industri nasional yang masuk ke industri hilir CPO itu adalah PT Bakrie Sumatra Plantation Tbk (BSP), PT Cisadene Raya, PT Nubika Jaya, SOCI, Bumi Asih, dan Musim Mas.<br><br>"Industri oleokimia nasional, termasuk kami masih bermain di industri oleokimia dasar yang memasok produksinya ke berbagai industri barang konsumsi di dalam negeri seperti Wings maupun di dunia seperti Unilever dan P&amp;G," katanya.<br><br>Diakuinya, untuk masuk ke industri oleokimia lebih hilir baik berupa derivatifnya maupun sampai ke barang konsumsi seperti produk kosmetik, detergen, obat-obatan, agrokimia, plastik, tekstil, ban, zat tambahan pangan, pelumas, dan lain-lain butuh investasi yang besar. "Saat ini kami masih akan konsentrasi memproduksi oleokimia dasar," ujarnya.<br><br>Senada dengan Steve, Iqbal berharap pemerintah serius mengembangkan industri hilir CPO, terutama oleokimia dengan membatasi ekspor CPO nasional. "Jangan sampai keuntungan komparatif kita sebagai produsen CPO dinikmati negara lain," ujarnya.<br><br>Kebijakan Hilirisasi<br>Menteri Perindustrian MS Hidayat mengatakan awal tahun depan Indonesia akan memiliki kebijakan hilirisasi industri agro terutama untuk CPO, karet dan kakao. "Secara bertahap ekspor barang mentah seperti CPO, kakao, dan karet, akan dikurangi," ujarnya.<br><br>Ia mengatakan dengan kebijakan itu, pemerintah berharap produsen barang konsumsi akan masuk ke Indonesia, karena bahan bakunya ada di negeri ini dan industri hilir dari barang mentah, termasuk CPO, terus berkembang. "Jangan sampai kita menghidupkan mesin industri di negara lain, tapi industri di dalam negeri tidak berkembang," katanya. (ant)</span></span>', '2016-06-29', '33_20121011185424PKS.jpg', 'Apolin', '20121011185424PKS.jpg', 'APOLIN: Prospect Industrial Oleochemicals Very Good', '<div>MedanBisnis Ã ¢ ?? Jakarta. Oleochemical Manufacturers Association of Indonesia (APOLIN) assess the prospects for the oleochemical industry Indonesia is very good considering the world demand continues to rise between 3.6 to four percent per year, as rising per capita income and changing lifestyle of the world community. "Although the condition of Indonesia''s infrastructure is not sufficient, the industry outlook oleochemical still very good, considering the world market demand is still improving, "said Chairman Steve Goei APOLIN King An, in Jakarta, Sunday (5/12).</div><div><br></div><div>With world demand conditions continued to improve, he hoped there was a policy that guarantees the availability of raw material such as crude palm oil (CPO) and palm kernel oil (PKO) in the country. "This means that exports of CPO and PKO should be restricted so that ''refinery'' going well and (industrial) oleochemical growing," he said.</div><div><br></div><div>Without government policies that restrict the export of CPO, Steve worry, Indonesia as the country''s largest producer of oleochemicals importer of CPO will be developed in other countries.</div><div><br></div><div>Meanwhile Director of Flora Sawita Chemindo, M Iqbal Zainuddin, who manages the oleochemical plant in North Sumatra Mas Sheep were acquired PT Bakrie Sumatra Plantation Tbk, said that the added value of oleochemical products is very high compared to CPO. Value-added products reached US $ 400 to US $ 1,200. But unfortunately, not many companies in Indonesia entered the industry.</div><div><br></div><div>Today there are six major manufacturers who produce oleochemicals good for "fatty acid" or "fatty alcohol" with a total installed capacity of 1.1 million tons per year. National industry that went into downstream palm oil industry are PT Bakrie Sumatra Plantation Tbk (BSP), PT Cisadene Raya, PT Nubika Jaya, SOCI, Bumi Asih, and Musim Mas.</div><div><br></div><div>"The oleochemical industry nationwide, including us still play in the oleochemical industry that supplies the basic production to various consumer goods industry in the country as well as the world''s Wings like Unilever and P &amp; G," he said.</div><div><br></div><div>Admittedly, to get into the oleochemical industry further downstream in the form of derivatives as well as to consumer goods such as cosmetics, detergents, pharmaceuticals, agrochemicals, plastics, textiles, tires, substance food additive, lubricant, and others need a large investment. "We''re still going to concentrate manufacture of basic oleochemicals," he said.</div><div><br></div><div>In line with Steve, Iqbal hopes that the government is serious about developing downstream palm oil industry, mainly oleochemical by limiting national CPO exports. "Do not let our comparative advantage as a manufacturer CPO enjoyed by other countries," he said.</div><div><br></div><div>Downstream Policy</div><div>Industry Minister MS Hidayat said Indonesia early next year will have a policy downstream agro industry, especially for palm oil, rubber and cocoa. "Gradually export of raw materials such as oil palm, cocoa and rubber, will be reduced," he said.</div><div><br></div><div>He said with that policy, the government hopes that consumer goods manufacturers will go to Indonesia, since the raw material in the country and the downstream industry of raw materials, including CPO, continues to grow. "Do not let us turn the machine industry in other countries, but the domestic industry is not growing," he said. (Ant)</div>', 'Apolin'),
(34, 6, 'Maksi Akan Buka Cabang di Daerah Sentra Sawit', '<div><p>JAKARTA, SAWIT INDONESIA - Masyarakat Perkelapasawitan Indonesia (MAKSI) berencana membuka cabang di daerah-daerah sentra perkebunan sawit. Hal ini diungkapkan oleh Darmono Taniwiryono, Ketua Umum MAKSI periode 20015-2018&nbsp;&nbsp;sebagai program kerja MAKSI dalam kepengurusan baru ini.</p><p>Darmono yang baru saja terpilih kembali sebagai Ketua Umum MAKSI mengatakan bahwa &nbsp;MAKS akan mengembangkan cabang organisasi di&nbsp; daerah sentra sawit dilakukkan guna meningkatkan riset sawit, khususnya di setra-sentra produksi sawit.</p><p>“Kami akan mengembangkan jejaring keanggotaan. Jadi nanti nanti akan kita upayakan agar bisa sentra sawit itu ada perwakilan MAKSI entah nanti bentuknya cabang atau apa,” kata Darmono ketika dihubungi&nbsp;<em>Sawit Indonesia</em>&nbsp;melalui telepon pada Selasa (15/12).</p><p>Untuk membangun cabang keanggotaan ini, MAKSI akan bekerjasama dengan universitas-universitas di daerah seperti Pekanbaru, Jambi, Palembang, Kalteng, Kalsel.</p><p>Darmono menambahkan bahwa selain sebagai memperkuat riset, cabang keanggotaan ini akan berguna untuk merespon kondisi industri sawit kekinian. Ia mencontohkan dengan adanya cabang keanggotaan ini akan berguna ketika ada kejadian kebarkan lahan seperti yang terjadi belum lama ini.</p><p>“Seperti kejadian kemarin itu, apakah benar yang dikatakan LSM anti sawit soal kebakaran? Tapi kemarin kita sulit juga kalau tidak ada data. Tapi kalau sudah ada perwakilan kita bisa menjawab apa yang sebenarnya terjadi,” kata Darmono.</p><p>Saat ini MAKSI juga telah dipercaya membantu BPDP Sawit untuk menyeleksi program pendanaan riset dari CPO Fund. Darmono sendiri merupakan salah satu komite<em>research grant</em>&nbsp;di BPDP Sawit.</p><p>Selain membangun jaringan penelitian, MAKSI juga akan lebih intensif untuk mengadakan sosialisasi mengenai sawit kepada masyarakat. Sebab, menurut Darmono saat ini masih banyak masyarakat yang belum mengetahui peran besar sawit.</p><p>Salah satu kegiatan yang akan diselenggarakan MAKSI dalam rangka sosialisasi tersebut adalah dengan mengadakan&nbsp;<em>Sawit Farmer Off Road</em>&nbsp;April hingga Mei 2016 dan akan memiliki rute dari Aceh hingga Bandung. Acara ini akan mengundang 15 pengendara off road profesional yang akan didampingi 10 orang offical terdiri dari peneliti, kru film, koki.</p><p>“Selama perjalanan nanti offroader akan menuju dua atau tiga perkebunan rakyat, di sana akan ada coaching clinic untuk maintenance mobil 4WD yang biasa dipergunakan di kebun. Kemudian akan ada acara memasak yang menggunakan minyak sawit, dan tentunya karena peneliti ada misi penelitian juga di sana. Dan terakhir juga akan dibuat film dengan judul Jelajah Sawit Nusantara,” jelas Darmono.</p><p>Selain&nbsp;<em>Sawit Farmer Off Road</em>, MAKSI juga akan menggelar Festival Sawit sebagai sarana sosialisasi industri sawit kepada masyarakat. Darmono memperkirakan Festival Sawit ini akan digelar pada Agustus mendatang.</p><div><br></div></div>', '2016-06-29', '34_22507_620.jpg', 'Maksi', '22507_620.jpg', 'Maxi Will Open Branch in the Regional Center of Oil', '<div>JAKARTA, INDONESIA PALM - perkelapasawitan Indonesia Society (MAKSI) plans to open branches in regions that are oil palm plantations. This was disclosed by Darmono Taniwiryono, Chairman MAKSI 20015-2018 period as MAKSI work program in new management.</div><div><br></div><div>Darmono who recently re-elected as Chairman of MAKSI said that MAKS would grow the organization in the central areas of oil palm research dilakukkan to improve, especially in Setra centers of oil production.</div><div><br></div><div>"We will develop a network of membership. So later on we shall try to be the center of the palm are no representatives MAKSI either later form a branch or something, "said the Indonesian Palm Darmono when contacted by phone on Tuesday (15/12).</div><div><br></div><div>To build a branch of this membership, MAKSI will cooperate with universities in areas such as Pekanbaru, Jambi, Palembang, Central Kalimantan, South Kalimantan.</div><div><br></div><div>Darmono added that besides serving as strengthening research, the branch''s membership would be useful to respond to the oil industry nowadays. He pointed to the existence of the branch''s membership would be useful when there are events kebarkan land as happened recently.</div><div><br></div><div>"Like what happened yesterday, is it true that anti-palm NGO said about the fire? But yesterday it is difficult even when there is no data. But if there are our representatives can answer what actually happened, "said Darmono.</div><div><br></div><div>Currently MAKSI also believed to help BPDP Oil for selecting research funding program of CPO Fund. Darmono itself is one komiteresearch grant in BPDP Sawit.</div><div><br></div><div>In addition to building a network of research, will also be more intensive MAKSI to arrange the socialization of oil to the community. Because, according to Darmono today there are many people who do not know the role of big oil.</div><div><br></div><div>One of the activities that will be held in the framework of the socialization MAKSI is to conduct Farmer Oil Off Road April to May 2016 and will have a route from Aceh to Bandung. This event will invite 15 professional off road riders who will be accompanied by 10 people Offical comprised of researchers, film crews, cooks.</div><div><br></div><div>"During the trip later offroader will go two or three estates of the people, there will be a coaching clinic for the maintenance of a 4WD car which is used in the garden. Then there will be a cooking show that use palm oil, and of course because researchers there are also research missions there. And the latter will also be made a movie with the title Exploration Oil Nusantara, "said Darmono.</div><div><br></div><div>In addition to Farmer Oil Off Road, MAKSI Festival will also hold the palm oil industry as a means of socialization to the community. Darmono estimate Palm Festival will be held in August.</div>', 'Maksi'),
(35, 5, 'Berita Seputar  GIMNI', '<p><strong>Bisnis.com,&nbsp;</strong>JAKARTA – Pergerakan harga CPO terpantau menguat pada awal perdagangan hari ini, Jumat (17/6/2016).</p><p>Kontrak berjangka CPO untuk September 2016, kontrak teraktif di Bursa Malaysia, menguat sebesar 0,66% atau 16 poin ke posisi 2.431 ringgit per ton pada pukul 10.29 WIB.</p><p>Harga minyak sawit pagi tadi dibuka dengan pelemahan sebesar 0,17% atau 4 poin ke level 2.411 ringgit per ton.</p><p>Pada perdagangan kemarin (15/6/2016), pergerakan harga CPO kontrak September juga ditutup dengan pelemahan sebesar 1,83% atau 45 poin ke posisi 2.415 ringgit per ton.</p><p>Penguatan harga CPO pada awal perdagangan hari ini sejalan dengan penguatan harga minyak mentah global yang dapat memacu pergerakan sawit sebagai bahan bakar alternatif.</p><p>Harga minyak WTI kontrak Juli menguat sebesar 0,84% atau 0,39 poin ke US$46,60 per barel pada pukul 10.35 WIB, setelah dibuka dengan pelemahan sebesar 0,48% atau 0,22 poin ke US$45,99 per barel.</p><p>Di saat yang sama, patokan Eropa minyak Brent untuk kontrak Agustus terpantau menanjak sebesar 1,12% ke US$47,72 per barel, setelah dibuka di posisi 47,28.</p><p>Sumber : Bisnis.com</p>', '2016-06-29', '35_sawit-6-1.jpg', 'Gimni', 'sawit-6-1.jpg', 'Regarding news GMNI', '<div>Bisnis.com, JAKARTA - CPO price movements observed rose in early trading today, Friday (17/06/2016).</div><div><br></div><div>CPO futures contract for September 2016, the most active contract on the Bursa Malaysia, rose by 0.66% or 16 points to the position of 2,431 ringgit per ton at 10:29 pm.</div><div><br></div><div>Palm oil prices this morning opened with weakening by 0.17% or 4 points to 2,411 ringgit per tonne.</div><div><br></div><div>In trading yesterday (06/15/2016), CPO price movements in September contracts also closed with a weakening by 1.83% or 45 points to 2,415 ringgit per tonne position.</div><div><br></div><div>Strengthening the CPO price in early trading today in line with the strengthening of global crude prices that can stimulate the movement of oil as an alternative fuel.</div><div><br></div><div>WTI oil price July contract rose by 0.84% ??or 0.39 points to US $ 46.60 a barrel at 10:35 pm, after opening with a weakening by 0.48% or 0.22 points to US $ 45.99 per barrel.</div><div><br></div><div>At the same time, the European benchmark Brent oil for August delivery was observed to climb by 1.12% to US $ 47.72 a barrel, after opening in 47,28.</div><div><br></div><div>Source: Bisnis.com</div>', 'Gimni'),
(36, 4, 'Pajak Impor Tinggi, Eksportir Biodiesel Mulai Tinggalkan Pasar Eropa', '<p><strong>TRIBUNNEWS.COM, JAKARTA</strong>&nbsp;- Eksportir&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;mulai berpikir dua kali untuk menjual produknya kepada pembeli dari negara-negara Uni Eropa. Pasalnya, hal itu bakal berbenturan dengan kebijakan otoritas Uni Eropa yang mempersulit masuknya<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;dari Indonesia.</p><p>Togar Sitanggang, Sekretaris Jenderal&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/asosiasi-produsen-biofuels-indonesia/">Asosiasi Produsen Biofuels Indonesia</a>&nbsp;(APROBI), menyebutkan secara perlahan-lahan ekspor<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;ke Uni Eropa akan dikurangi secara bertahap mulai tahun ini.</p><p>Merujuk kepada data APROBI, ekspor&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;ke Uni Eropa tahun lalu mencapai satu juta Kilo Liter (KL). Namun, kata&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/togar-sitanggang/">Togar Sitanggang</a>, diperkirakan tahun ini akan turun di bawah 500 ribu KL. Lebih lanjut lagi, pengurangan volume ekspor ini ditopang kebijakan mandatori&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;sebesar 10 persen (B10) yang mulai berjalan pada tahun ini.</p><p>“Seperti saya bilang pada tahun lalu kalau B-10 telah direalisasikan, maka lupakan Eropa. Sekarang ini sudah terbukti kami tidak akan kirim lagi ekspor&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;ke sana,” ujar Togar, akhir pekan lalu.</p><p>Dalam kesempatan terpisah, Paulus Tjakrawan, Ketua Harian APROBI, mengakui pengenaan pajak impor&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;di Uni Eropa yang sangat tinggi menjadi pertimbangan utama untuk mengalihkan pasar Uni Eropa kepada negara lain.</p><p>Kalangan eksportir membidik pembeli dari negara lain di kawasan Asia seperti Cina, Korea Selatan. Selain itu, kata&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/togar-sitanggang/">Togar Sitanggang</a>, sudah ada permintaan dari Amerika Serikat pada tahun ini yang kebutuhannya diperkirakan 200 ribu KL per tahun.</p><p>“Saat ini, beberapa eksportir lebih memilih penjualan&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>untuk pasar dalam negeri ketimbang ekspor. Karena pemerintah berencana meningkatkan campuran&nbsp;<a target="_blank" rel="nofollow" href="http://www.tribunnews.com/tag/biodiesel/">biodiesel</a>&nbsp;sebesar 20 persen atau B20 pada tahun depan,” jelas Togar.</p>', '2016-06-29', '36_20140724_012844_biodiesel-besar.jpg', 'Illustrasi', '20140724_012844_biodiesel-besar.jpg', 'High import taxes, Exporter Leave Biodiesel From European Market', '<div>TRIBUNNEWS.COM, JAKARTA - Exporter biodiesel began to think twice to sell to buyers from countries of the European Union. The reason, it would be in conflict with the policy of the EU authorities that complicates masuknyabiodiesel of Indonesia.</div><div><br></div><div>Togar Sitanggang, the Secretary General of the Association Biofuels Indonesia (APROBI), said slowly eksporbiodiesel to the EU will be reduced in stages starting this year.</div><div><br></div><div>Referring to the data APROBI, biodiesel exports to the EU last year reached one million Kilo Litre (KL). However, said Togar Sitanggang, predicted this year would fall below 500 thousand KL. Furthermore, the reduction in export volumes is supported mandatory policy of 10 percent biodiesel (B10) which starts this year.</div><div><br></div><div>"As I said last year that the B-10 had been realized, then forget about Europe. Now it has been proved we are not going to send it to biodiesel exports there, "said Togar, last weekend.</div><div><br></div><div>In a separate occasion, Paul Tjakrawan, Chief Executive APROBI, recognizes the taxation of imported biodiesel in the EU are very high of the key considerations to shift the EU market to other countries.</div><div><br></div><div>Exporters are targeting buyers from other countries in Asia such as China, South Korea. In addition, said Togar Sitanggang, there have been requests from the United States this year which needs an estimated 200 thousand kiloliters per year.</div><div><br></div><div>"Currently, some exporters prefer biodieseluntuk sales in domestic market rather than export. Because the government plans to increase biodiesel blends of 20 percent or B20 in the next year, "said Togar.</div>', 'Illustration ');
INSERT INTO `berita_m` (`id_berita`, `id_asosiasi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_berita`, `judul_english`, `content_english`, `caption_picture`) VALUES
(37, 4, 'Paulus Tjakrawan, Sekretaris Jenderal Asosiasi Produsen Biofuels Indonesia (Aprobi) : “Pemakaian Biofuel Wajib Campur Tangan Pemerintah”', '<h4>Indonesia beruntung menjadi produsen terbesar minyak sawit dunia. Kalau tidak, pemerintah akan kelimpungan mencari bahan baku bagi pengembangan industri biofuel khususnya biodiesel. Ditengah defisit neraca perdagangan Indonesia, produsen biodiesel siap membantu pemerintah dalam menyuplai produksinya sebagai pengganti impor minyak bumi.&nbsp;</h4><p>Kebijakan ini diharapkan tidak bersifat sementara namun lebih jauh lagi ditetapkan menjadi program nasional pemerintah. Dengan pertimbangan, biofuel mempunyai peranan vital dalam memperkuat ketahanan nasional di sektor ekonomi dan ketahanan negara. Paulus Tjakrawan, Sekjen APROBI, yang telah malang melintang di dunia biofuel ini, menerima kedatangan tim redaksi SAWIT INDONESIA untuk berdiskusi terkait kebijakan mandatori biofuel yang masuk ke dalam paket penyelamatan ekonomi negara. Di bawah ini, petikan wawancara yang berlangsung di kantornya, di kawasan Casablanca, Jakarta Selatan: &nbsp;</p><p>Pemerintah akan meningkatkan penggunaan biodiesel sampai 10% bagi sektor transportasi, industri, dan pembangkit listrik. Dengan harapan akan menekan impor BBM jenis solar dan membantu penyelamatan ekonomi negara.</p><h4>Bagaimana tanggapan Bapak selaku pengurus APROBI?</h4><p>Dari kami sebagai produsen biofuel siap untuk memenuhi kebutuhan pemerintah dalam melaksanakan &nbsp;program ini.Teorinya, apabila biodiesel menggantikan 10 % pemakaian solar akan dibutuhkan antara 3,2 juta sampai 3,3 juta kiloliter. Kapasitas &nbsp;produksi anggota kami sudah mencapai &nbsp;lebih dari 4 juta kiloliter bahkan hampir 5 juta kiloliter.&nbsp;</p><h4>Menurut Bapak, apakah konversi dari impor solar ke biodiesel mampu mencapai target 10%?</h4><p>Jadi begini, solar yang bersubsidi ini telah dijual ke SPBU Pertamina mulai September ini dapat dikatakan sudah masuk mandatori 10%. Walaupun yang baru berjalan di SPBU daerah sekitar Sumatera dan Jawa, sedangkan Kalimantan dan Sulawesi baru sebagian. Pertamina yang paling besar memegang subidi &nbsp;yang nanti akan diperluas ke pulau-pulau lain dengan proses &nbsp;bertahap. Sebab, harus dipersiapkan juga &nbsp; aspek teknis, angkutan, dan infrastruktur. &nbsp;</p><p>Dukungan pemerintah cukup bagus lewat sosialisasi kepada pelaku industri dan sektor transportasi lain. Kementerian Perindustrian pada September ini berkoordinasi dengan industri untuk pemakaian biofuel. Di sektor migas untuk transportasi non subsidi, kementeriannya bertemu dengan pemegang ijin niaga bahan bakar minyak untuk berkoordinasi.&nbsp;</p><p>Di sektor tenaga pembangkit listrik, PLN sudah berkomitmen dalam penggunaan mesin dieselnya dengan &nbsp;Pure Plant Oil (PPO) – subtitusi BBM untuk pembangkit listrik &nbsp;berbasis bahan bakar minyak – &nbsp;sehingga dapat menekan pemakaian solar. Walaupun tergantung mesinnya karena volume pencampurannya itu berbeda-beda di setiap tempat.&nbsp;</p><h4>Boleh dikatakan paket kebijakan penyelamatan ekonomi negara ini dapat menjadi momentum kebangkitan industri biofuel dalam negeri ?</h4><p>Biodiesel sudah mulai diproduksi semenjak 2005, nah tahun ini dapat menjadi &nbsp;momentum lain yang ikut mendorong penggunaan biodiesel untuk domestik. Pemerintah sendiri memang sudah memiliki program dan sudah mendorong itu, hingga tahun kemarin juga sudah memproduksi sampai 2 juta ton biodiesel. Konsumsi dalam negeri yang digunakan &nbsp;sekitar 700 ribu ton sisanya diekspor.&nbsp;</p><p>Kebijakan hilirisasi sawit ini sudah mulai berjalan dimana kebutuhan domestik biofuel terjadi kenaikan meskipun tidak terlalu signifikan. Sekarang ini, krisis ekonomi dapat menjadi momentum &nbsp;untuk pemakaian &nbsp;energi baru terbarukan &nbsp;dan harapannya energi ini cepat berkembang, bukan hanya biodiesel. Namun, energi terbarukan lain seperti methane capture, biomass, bioetanol, dan energi dari sampah kota.&nbsp;</p><p>Jangan sampai bahan baku energi terbarukan seperti tandan kosong diekspor langsung tanpa diolah dulu. Padahal, tandan kosong sudah terbukti dapat dijadikan bahan baku boiler untuk listrik. Kami harapkan pemerintah dapat &nbsp;mendorong pemakaian biomassa untuk kepentingan energi dalam negeri. Langkah ini lebih baik daripada ekspor sebab yang menikmati bukan masyarakat kita.</p><h4>Indonesia mempunyai biofuel yang belum optimal digunakan. Sayangnya, impor migas ini belum ada rencana jangka panjang untuk dikurangi. Sebenarnya, sejauh mana kemampuan kita dalam pemanfaatan energi terbarukan ?</h4><p>Semakin maju negara akan berbanding lurus dengan kebutuhan energi, artinya konsumsi energi kian &nbsp;meningkat. Di Indonesia, rata-rata konsumsi BBM pen duduknya sebanyak 0,8 liter per orang per hari, Malaysia sudah 3,2 liter per orang per hari, Thailand 2,4 liter per orang per hari. Bayangkan produksi otomotif &nbsp;tiap tahun berapa di Indonesia, belum lagi dari segi pabrik, pembangkit listrik. Boleh dikatakan, Indonesia ini akan tetap impor minyak tiap tahun, tetapi apabila mampu biofuel berkontribusi sekian persen akan lebih baik dibandingkan impor total.&nbsp;</p><p>Sebagai gambaran, Amerika Serikat impor minyak sebesar 9 juta barel dan produksi nya sekitar 11 juta sehingga total konsumsi 20 juta barel. Bagusnya pemerintah Obama ini berani menjamin bahwa dalam 20 tahun ke depan dapat mengurangi impor sebesar 15 %, lalu &nbsp;30 tahun mendatang sudah dapat berhenti &nbsp;impor.</p><p>Saya berkeinginan Indonesia meniru langkah yang diambil Amerika Serikat. Jangan cuma menghitung &nbsp; kebutuhannya berapa dan yang harus diimpor berapa tapi tidak punya tujuan akhir. Misalnya Indonesia berani menyatakan 30 tahun lagi mengurangi &nbsp;impor sekian persen, lalu dalam rentang waktu 30 tahun tersebut perlu diwujudkan dengan benar. Misalnya tahun depan mobil Indonesia harus siap menggunakan bahan bakar biofuel &nbsp;sampai 50% sehingga kita tidak terlalu bergantung.</p><p>Masalah minyak dan gas ini punya peranan vital bagi bangsa ini. Apakah pernah terpikirkan seandainya terjadi perang di Timur Tengah, bencana alam, terorisme, dan konflik politik lain yang dapat mengganggu pengiriman BBM. Perlu dipikirkan ketika satu waktu ada uang tetapi kita tidak bisa beli minyak. &nbsp;</p><h4>Artinya, biofuel ini berpotensi untuk menjaga ketahanan negara?</h4><p>Iya, masalah ketahanan nasional itu bukan berarti &nbsp;perang, melainkan ekonomi dan sosial. Secara garis besar, energi ini penting untuk menjaga keamanan setiap-tiap negara, dan posisi biofuel itu yang mampu diharapkan sebagai subtitusi dari energi konvensional. Harus diingat setiap negara itu &nbsp;harus &nbsp;melindungi sumber dan kebutuhan energinya masing-masing.&nbsp;</p><h4>Kalau menyangkut keamanan negara, idealnya pemerintah mulai prioritaskan pemakaian biofuel. Jika mandatori diterapkan, dibutuhkan ketegasan pemerintah ?</h4><p>Energi itu merupakan keamanan bagi tiap negara sama seperti pangan. Di dunia ini, &nbsp;tidak ada satu pun negara yang tidak mengatur kebutuhan energinya jadi energi itu diatur secara ketat. Makanya untuk biofuel ini bisa berkembang tentunya pemerintah yang harus mendorong lewat berbagai cara. Peranan pemerintah memiliki peranan penting &nbsp;dalam &nbsp;membuat kebijakan, swasta hanya mengikuti saja.&nbsp;</p><p>Market biofuel itu juga diciptakan oleh pemerintah untuk bahan bakar, meskipun harga biodiesel ini murah tapi banyak juga pabrik mobil yang belum &nbsp;adaptasi teknologinya. Kalau berani, pemerintah &nbsp;wajibkan semua pabrikan mobil,mesinnya harus bisa pakai biodiesel. &nbsp;Jika menolak, &nbsp;jangan buka perusahaan di Indonesia.&nbsp;</p><h4>Dengan kebijakan mandatori biofuel oleh pemerintah Indonesia, apakah dapat mempengaruhi pasar biodiesel di luar negeri?</h4><p>Kalau dari segi volume tidak perlu khawatir, misal ada kebutuhan luar negeri perusahaan besar juga harus produksi dengan kesiapan mesin juga. Hanya saja dengan kebijakan baru ini artinya &nbsp;semua pabrik biodiesel ini telah berkomitmen untuk menjamin kebutuhan dalam negeri, itu yang penting. Misalnya mesin &nbsp;belum siap ternyata kebutuhan dalam negeri sangat besar terpaksa perusahaan harus mau mengurangi ekspor. Namun, &nbsp;perusahaan sepertinya akan meningkatkan produksi lewat penambahan mesin ini berarti terjadi tambahan investasi. Setiap perusahaan pasti punya strateginya sendiri untukmeningkatkan produksi.</p><h4>Pelaku industri hulu sawit berkeinginan Bea Keluar CPO direvisi supaya meningkatkan perdagangan ekspor dan membantu defisit neraca perdagangan. Tanggapan Bapak apakah perlu BK CPO direvisi sekarang ini?</h4><p>Saya setuju saja bea keluar itu direviu besaran tarifnya kendati keputusan revisi belum tentu dijalankan. &nbsp;Misalkan, reviu ini dilihat dari tujuan pemberlakuan bea ekspor CPO &nbsp;untuk mendorong industri hilir dan menjamin ketersediaan minyak goreng dalam negeri, apakah sudah tercapai tujuan ini?</p><p>Dalam pandangan saya, seandainya pun bea keluar CPO jadi direvisi sejauh mana pengaruhnya kepada peningkatan ekspor. Karena, beberapa negara pembeli CPO masih lesu permintaannya.&nbsp;</p><h4>Upaya apa yang dapat dilakukan pemerintah untuk &nbsp;mendorong ekspor biodiesel?</h4><p>Kampanye, namanya jualan harus memiliki strategi marketing yang baik. Pemerintah juga harus bantu untuk marketing ini. Pasar terbesar itu ada di Eropa. Makanya pemerintah bersama swasta juga harus berusaha agar tidak terkena dumping seperti banyak dilakukan negara di Eropa, tuduhan-tuduhan itu harus dilawan. &nbsp;Dari 11 juta ton kebutuhan biodiesel di Eropa, Indonesia mampu mengisi 1,5 juta ton per tahun.&nbsp;</p><h4>Di luar Eropa, apakah ekspor biodiesel mempunyai pasar alternatif lainnya?</h4><p>&nbsp;Ada sebenarnya potensial itu negara-negara Eropa Timur misalnya Serbia, Ukraina. Tapi harus diingat juga Eropa timur itu produsen minyak terbesar.</p><p>Sebenarnya, Amerika Serikat adalah pasar besar biodiesel. Sayang, ada masalah EPA itu yang saya bilang harus mati-matian harus bertarung supay dapat mendorong ekspor. Karena menurut saya hambatan perdagangan itu tujuan utama &nbsp;melindungi produk dalam negeri mereka dan ini adalah keputusan-keputusan politik. Nah, karena mereka memakai pendekatan politik sudah sepantasnya pemerintah Indonesia yang bernegosiasi .</p><h4>Harapan Bapak dengan kebijakan mandatori biofuel ini?</h4><p>Harapan kita pemerintah harus bisa konsisten menjaganya. Bukan hanya reaksi dari krisis yang terjadi sekarang ini. Karena kita harus melihat jangka panjangnya, Indonesia ini akan terus impor yang semakin besar. Oleh karena itu, ketimbang &nbsp;impor bahan bakar minyak yang demikian besar jumlahnya lebih baik pakai produk Indonesia untuk lingkungan yang lebih baik juga.</p><p>Dalam satu hari, impor BBM Indonesia ini mencapai 400 ribu barel. Jumlah ini kalau dikali dengan harga minyak bumi sekarang , sudah berapa? Lebih baik devisa yang sekarang dipakai beli BBM impor digunakan untuk industri biofuel kita, karena uangnya kembali ke dalam negeri. Jadi masalah ini dari berbagai segi harus diperhitungkan, kita tidak hanya bisa melihat harga yang murah dan mahal karena untuk ekspor minyak uangnya itu kan hilang begitu saja, karena beli pakai dollar. &nbsp;(Anggar Septiadi/Qayuum)</p>', '2016-06-29', '37_e4695529e9bbf8b60b6165d76397876b.jpg', 'Paulus Tjakrawan', 'e4695529e9bbf8b60b6165d76397876b.jpg', 'Paul Tjakrawan, Secretary General of the Association Biofuels Indonesia (APROBI): "Biofuel Usage Mandatory Government Interference"', '<div>Indonesia fortunate to be the largest producer of palm oil. Otherwise, the government would dither looking for raw materials for the industrial development of biofuels, especially biodiesel. Amid the trade deficit Indonesia, biodiesel producers are ready to assist the government in supplying its production as a substitute for oil imports.</div><div><br></div><div>This policy is not expected to be temporary but further more determined to be a national program of the government. In consideration, the biofuel has a vital role in strengthening national resilience in the economy and the resilience of the country. Paul Tjakrawan, APROBI Secretary General, who had been poor across the world this biofuel, to welcome OIL INDONESIA editorial team to discuss policies related to mandatory biofuel into the country''s economic rescue package. Below, excerpts of an interview that took place in his office, in the heart of Casablanca, South Jakarta:</div><div><br></div><div>The Government will increase the use of biodiesel to 10% for the transport sector, industry, and power plants. Hopefully, it will reduce imports of diesel fuel and help rescue the country''s economy.</div><div><br></div><div>How is your reaction as caretaker APROBI?</div><div><br></div><div>Of us as a biofuel is ready to meet the needs of the government in implementing the program ini.Teorinya, if the 10% usage of biodiesel replaces diesel fuel will be needed between 3.2 million to 3.3 million kiloliters. The production capacity of our members has reached more than 4 million kiloliters of almost 5 million kiloliters.</div><div><br></div><div>According to you, what is the conversion from diesel to biodiesel imports capable of achieving the target of 10%?</div><div><br></div><div>So here goes, subsidized diesel fuel has been sold to Pertamina gas stations begin this September can be said to have entered the mandatory 10%. Although the new run at the pump area around Sumatra and Java, Kalimantan and Sulawesi while only partially. Pertamina is a large holding subidi which will later be expanded to other islands with a gradual process. Therefore, be prepared also technical, transportation, and infrastructure.</div><div><br></div><div>Good enough government support through socialization to the industry players and other transportation sectors. The Ministry of Industry on this September in coordination with the industry for the use of biofuels. In the oil and gas sector for the transportation of non-subsidized, the ministry met with commercial license holders to coordinate fuel.</div><div><br></div><div>In the power sector power plants, PLN has been committed in the use of diesel engines with Pure Plant Oil (PPO) - a substitute fuel for power generation based on fossil fuels - so as to reduce the use of diesel fuel. Although depending on the engine due to the volume of mixing is different in each place.</div><div><br></div><div>Arguably the country''s economic rescue package of measures can be momentum of rise of the biofuels industry in the country?</div><div><br></div><div>Biodiesel is already being produced since 2005, this year could well be another momentum that help drive the use of biodiesel for domestic. The government itself is own program and have been pushing it, until the last year has also been producing up to 2 million tons of biodiesel. Domestic consumption used about 700 thousand tons were exported.</div><div><br></div><div>The oil downstream policy has started to walk where domestic biofuels needs an increase, although not too significant. Now, the economic crisis can be a momentum for the use of renewable energy and energy hopes is a fast growing, not just biodiesel. However, other renewable energies such as methane capture, biomass, ethanol, and energy from municipal waste.</div><div><br></div><div>Do not let the raw materials of renewable energy such as empty fruit bunches exported directly without being processed first. In fact, empty fruit bunches already proven to be a raw material for electric boiler. We hope the government can encourage the use of biomass for energy interests in the country. This step is better than that enjoyed not export because our society.</div><div><br></div><div>Indonesia has not yet optimal biofuel use. Unfortunately, oil imports have been no long-term plan to reduce. Actually, the extent of our abilities in the utilization of renewable energy?</div><div><br></div><div>The more developed countries will be directly proportional to the energy needs, which means that energy consumption is increasing. In Indonesia, the average fuel consumption of 0.8 liters pen seat per person per day, Malaysia has 3.2 liters per person per day, Thailand 2.4 liters per person per day. Imagine how automotive production each year in Indonesia, not to mention in terms of factories, power plants. Arguably, Indonesia will keep oil imports every year, but if it is able to contribute a certain percentage of biofuel will be better than total imports.</div><div><br></div><div>As an illustration, the United States imports amounted to 9 million barrels of oil and its production of around 11 million, bringing the total consumption of 20 million barrels. The good news is the Obama administration can guarantee that in the next 20 years could reduce imports by 15%, then the next 30 years has been able to stop imports.</div><div><br></div><div>I wish Indonesia emulate the steps taken by the United States. Do not just calculate how much needs to be imported and how but do not have a final goal. For example Indonesia boldly declared 30 years reduce the import of a percentage, and then in the span of 30 years must be expressed correctly. For example, in front of the car Indonesia must be ready to use biofuels to 50% so we are not so dependent.</div><div><br></div><div>Oil and gas issues have had a vital role for the nation. Do unthinkable in case of a war in the Middle East, natural disasters, terrorism, and other political conflicts that could disrupt the delivery of fuel. Keep in mind when the time is no money but we can not buy oil.</div><div><br></div><div>That is, biofuels have the potential to maintain the resilience of the country?</div><div><br></div><div>Yes, national security issues does not mean war, but economic and social. Broadly speaking, this energy is important to maintain the security of each and every country, and the position of the biofuels which are able to substitute conventional energy. It must be remembered that every country must protect sources and energy needs respectively.</div><div><br></div><div>When it comes to the security of the state, ideally the government began to prioritize the use of biofuels. If mandatory is applied, it takes decisiveness government?</div><div><br></div><div>Energy security was the same for each country as food. In this world, no one country that does not regulate its energy needs so that energy is strictly regulated. So for this biofuel could evolve of course the government must push through a variety of ways. The role of government has an important role in making policies, the private sector only followed.</div><div><br></div><div>Market biofuels was also created by the government for fuel, even though the price of biodiesel is cheap but many automobile factories that have not adaptation technologies. If you dare, enjoined all government car manufacturer, the engine should be able to use biodiesel. If they refuse, do not open the company in Indonesia.</div><div><br></div><div>With the policy of mandatory biofuel by the Indonesian government, whether it can affect biodiesel markets abroad?</div><div><br></div><div>If in terms of volume need not worry, for example, there is need for large foreign companies also need production readiness of the machine as well. Only with this new policy means that all of the biodiesel plant has been committed to ensure domestic needs, it''s important. For example the machine is not ready turned out very large domestic demand forced the company should be willing to reduce exports. However, the company is likely to increase production through the addition of this machine means an additional investment. Every company has its own strategy toimprove production.</div><div><br></div><div>Upstream oil industry players eager CPO export duty was revised in order to increase export trade and help the trade deficit. The response from Mr. BK CPO if necessary revised now?</div><div><br></div><div>I agree it''s only duties direviu decision despite massive tariff revision is not necessarily executed. For example, the Review is seen from the objective of the CPO export duty to encourage downstream industries and ensure the availability of domestic cooking oil, whether it has achieved this goal?</div><div><br></div><div>In my view, even if CPO export tax be revised extent of its influence to the increase in exports. Because some states CPO buyers still sluggish demand.</div><div><br></div><div>Efforts to what the government can do to encourage the export of biodiesel?</div><div><br></div><div>Campaign, selling his name should have a good marketing strategy. The government should also help to marketing it. The largest market in Europe. So the government together with the private sector should also be trying to avoid being exposed to dumping as do many countries in Europe, the charges must be resisted. Of the 11 million tonnes of biodiesel requirements in Europe, Indonesia was able to fill 1.5 million tons per year.</div><div><br></div><div>Outside of Europe, whether exporting biodiesel market have other alternatives?</div><div><br></div><div>&nbsp;There is actually a potential that Eastern European countries eg Serbia, Ukraine. But it must be remembered also that eastern Europe''s largest oil producer.</div><div><br></div><div>Actually, the United States is a huge market of biodiesel. Unfortunately, there is a problem that the EPA must say that I have to fight desperately to urge him to encourage exports. Because I think that the main purpose of trade barriers to protect their domestic product and this is a political decisions. Well, because they put on a political approach is appropriate that the Indonesian government is negotiating.</div><div><br></div><div>Mr. Hope''s policy of mandatory biofuel?</div><div><br></div><div>Hope we can be consistent government should keep it. Not only the reaction from this current crisis. Because we have to see the long term, Indonesia will continue to import increasingly large. Therefore, rather than fuel oil imports such a large number of better-made products from Indonesia for a better environment as well.</div><div><br></div><div>In one day, Indonesia''s oil imports reached 400 thousand barrels. This number when multiplied by the price of oil right now, how many? Better foreign exchange which is now used to buy imported fuel is used for our biofuels industry, because of the money back into the country. So the issue from various aspects to be taken into account, we can not only see the price of cheap and expensive due to the export of oil money that''s being lost, because buying disposable dollars. (Fencing Septiadi / Qayuum)</div>', 'Paulus Tjakrawan'),
(38, 3, 'AIMMI siap ekspor minyak goreng kemasan ke China', '<div><p>JAKARTA: Asosiasi Industri Minyak Makan Indonesia (AIMMI) menyatakan siap untuk mengekspor minyak goreng kemasan bermerek ke China menyusul mulai diterapkannya bea masuk 0% di negara tersebut, sehingga tidak mengekspor dalam bentuk bahan baku semata.</p></div><p>Ketua Umum AIMMI Adiwisoko Kasman mengatakan melalui kesepakatan perjanjian kerja sama perdagangan bebas Asean-China (ACFTA), maka perlakuan terhadap produk sawit dan turunannya di China sama dengan produk sejenis asal Malaysia. Hal itu, kata dia, akan membuat produk minyak goreng asal Indonesia mampu bersaing di Negeri Tirai Bambu itu.</p><p>&nbsp;</p><p>"Kami masih butuh bantuan promosi dari pemerintah mengenai sawit di luar negeri seperti dari sisi kesehatan. Jika dibantu lagi, maka akan semakin mudah menembus China," ujarnya kemarin.</p><p>&nbsp;</p><p>Sebelum kerja sama Asean-China tersebut diberlakukan, produk sawit dan turunan yang berasal dari Malaysia lebih kompetitif di pasar China dibandingkan dengan produk asal Indonesia.</p><p>&nbsp;</p><p>"Ekspor minyak goreng sudah bisa kompetitif. Namun minyak goreng branded (bermerek), kalau perlu kami akan membuat minyak goreng yang sesuai dengan selera konsumen di China."</p><p>&nbsp;</p><p>Dia menegaskan minyak goreng merek pemerintah -Minyakita- tidak akan diekspor, karena hanya digunakan di dalam negeri guna mendorong penggunaan komoditas berkemasan sehingga konsumsi dalam bentuk curah akan berkurang.</p><p>&nbsp;</p><p>Minyak goreng kemasan, kata dia, relatif lebih stabil dari sisi harga dibandingkan dengan harga minyak goreng curah. Selain itu, dari sisi kesehatan, kata dia, juga lebih higienis.</p><p>&nbsp;</p><p>Melalui Minyakita, kata dia, maka dapat ditingkatkan konsumsi minyak goreng kemasan dengan harga berada di bawah produk kemasan merek lain.</p><p>&nbsp;</p><p>Dia menuturkan produsen Minyakita akan segera memasarkan jenis itu ke dalam pasar tradisional dalam waktu dekat, tetapi perlu bantuan pemerintah untuk mempromosikan merek tersebut.</p><p>&nbsp;</p><p>Kendati DPR menilai pasar murah bukan kebijakan tepat untuk stabilisasi harga, kata dia, produsen masih menggelar pasar murah minyak goreng sebagai bentuk kepedulian kepada masyarakat.</p><p>&nbsp;</p><p>Selama 2009, produksi sawit mencapai 20 juta ton dengan perincian untuk ekspor 15,5 juta ton dan untuk kebutuhan dalam negeri sebanyak 4,5 juta ton.</p><p>&nbsp;</p><p></p><span><p><b>Struktur biaya minyak goreng</b></p><span><p><b>Uraian</b></p><p><b>%</b></p></span><span><p>Bahan Baku</p><p>87</p></span><span><p>Kemasan dan bahan pembantu</p><p>7</p></span><span><p>Biaya produksi lainnya</p><p>6</p></span></span><p></p><p>Sumber : AIMMI, 2010</p><p>&nbsp;</p><p>Oleh Sepudin Zuhri</p><p>Sumber : Bisnis Indonesia</p><p>------------------------</p><p>&nbsp;</p><p>15 Desember&nbsp;2009</p><span><p><b>Minyakita gagal turunkan harga minyak goreng</b></p><p>&nbsp;</p><p>Harga minyak goreng rata-rata sepanjang tahun ini, walau relatif stabil, masih terlalu tinggi yaitu pada level Rp8.000-an per kg (sekitar Rp7.800 per liter).Saat ini di pasaran malah sekitar Rp8.500 per liter. Harga itu jauh lebih tinggi dari target pemerintah saat peluncuran Minyakita, yaitu Rp6.000 per liter.</p><p>&nbsp;</p><p>Stabilitas harga di level Rp8.000 , per kg itu lebih dipengaruhi oleh faktor harga bahan baku produk tersebut yakni minyak kelapa sawit mentah (.crude palm oil/CPO) yang juga relatif stabil sepanjang tahun ini di kisaran US$600 per ton.Harga itu memang jauh lebih rendah dibandingkan dengan harga tahun lalu yang sempat mencapai Rpl2.000 per liter, terdongkrak dengan melonjaknya harga CPO di pasar internasional.</p><p>&nbsp;</p><p>Tingginya harga minyak goreng saat itulah yang memacu Departemen Perdagangan untuk meluncurkan minyak goreng kemasan murah dengan merek Minyakita yang harga jualnya dipatok sedikit di atas minyak curah dan di bawah harga minyak kemasan.Target Depdag, Minyakita dapat memenuhi kebutuhan 11%-14% dari konsumsi minyak curah masyarakat, sehingga menekan harga rata-rata nasional dengan harapan harga minyak goreng akan turun ke level Rp6.000 per liter seiring dengan penurunan harga minyak sawit mentah di pasar internasional.</p><p>&nbsp;</p><p>Pada tahun lalu, pemerintah memberikan subsidi minyak goreng sebesar Rp2.5OO per liter dengan jatah 2 liter per rumah tangga miskin per bulan. Alokasi anggaran subsidi minyak goreng 2008 tersebut sebesar RpSOO miliar, tetapi jumlah itu baru terserap separuhnya.Adapun, Minyakita pada awalnya diupayakan ada subsidi sebesar Rp 1.000 per liter yang disalurkan melalui program tanggung jawab sosial perusahaan (CSR) yang totalnya sebesar Rp200 miliar, selain pajak penjualan ditanggung pemerintah (PpnOTP). Diharapkan peluncuran Minyakita mampu menekan harga minyak goreng rata-rata nasional dari Rp7.00O-Rp8.000 per liter menjadi Rp6.000 per liter.</p><p>&nbsp;</p><p>Namun, DPR tidak menyetujui dana subsidi Rp200 miliar tersebut, sehingga akhirnya subsidi Minyakita hanya berupa PpnDTP sebesar Rp800 miliar.</p><p>Direktur Bina Pasar dan Distribusi Ditjen Perdagangan Dalam Negeri Departemen Perdagangan Jimmy Bella mengatakan masih ada beberapa produsen yang menjalankan CSR dengan Minyakita dan hanya beberapa produsen yang menjual dengan merek tersebut secara komersial ke pasar.</p><p>&nbsp;</p><p>Kegiatan CSR produsen minyak goreng melalui penjualan dengan merek Minyakita, lanjutnya, bertujuan agar warga miskin dapat membeli minyak goreng dengan harga murah. Program CSR, katanya, bukan untuk menurunkan harga. "Adapun, Minyakita yang dijual ke pasar secara komersial mengikuti harga pasar sehingga tidak diatur."Namun, Jimmy tidak dapat menyebutkan data realisasi penyaluran Minyakita hingga saat ini. Dia tidak menyebutkan secara tegas apakah produk itu telah tersalurkan sesuai dengan target sebanyak 10 juta ton atau 11%-14% dari total konsumsi produk itu di dalam negeri.</p><p>&nbsp;</p><p><b>Malah naik</b></p><p>&nbsp;</p><p>Sementara itu, produsen minyak goreng memperkirakan harga pro* duk tersebut akan kembali naik menjelang Natal dan Tahun Baru 2010 yang disebabkan oleh peningkatan permintaan dari konsumen.Managing Director Sinar Mas Group Gandhi Sulistiyanto mengatakan harga minyak goreng dipengaruhi permintaan dan pasokan terutama pada akhir dan awal tahun serta pada saat hari raya keagamaan seperti menjelang Idul ftri dan Natal.</p><p>&nbsp;</p><p>"Menjelang Lebaran lalu, harga minyak goreng juga naik, nanti menjelang Natal dan akhir tahun kemungkinan akan bergerak naik. Semua dipengaruhi pasokan dan permintaan," ujarnya.</p><p>&nbsp;</p><p>Ketua Umum Asosiasi Industri Minyak Makan Indonesia (AIMMI) Adiwisoko Kasman mengatakan penjualan Minyakita masih berlangsung, tetapi dalam jumlah kecil. "Saya tidak tahu berapa pencapaian penyaluran Minyakita. Menjelang Iduladha lalu, ada beberapa produsen yang melakukan CSR dengan menjual Minyakita," ujarnya. Menurut dia, saat ini harga minyak goreng cenderung stabil pada harga Rp7.000-an per liter. Namun, kemungkinan pada Januari 2010, ekspor minyak kelapa sawit akan dikenakan bea keluar (BK) sebesar 1,5%, sehingga harga sawit di dalam negeri cenderung turun.</p><p>&nbsp;</p><p>Dia memperkirakan harga minyak goreng pada awal tahun akan cenderung tetap dan kemungkinan akan turun jika dikenakan BK 1,5%.Faktanya, Minyakita belum mampu menurunkan harga minyak goreng curah pada kisaran Rpfi.OOO per liter seperti yang dijanjikan pemerintan saat peluncuran produk tersebut pada awal tahun ini. Selain itu, minyak merek pemerintah yang sempat ramai dan sering disosialisasikan Menteri Perdagangan tersebut kini sudah tidak bergema lagi.</p><p>&nbsp;</p><p>Lalu, bagaimana jika tiba-tiba harga minyak sawit pada 2010 kembali melonjak, apakah pemerintah kembali beramai-ramai menyosialisasikan Minyakita?Dirjen Perdagangan Dalam Negeri Depdag Subagyo mengatakan pelaksanaan CSR secara terprogram oleh produsen minyak goreng dengan merek Minyakita akan dimulai lagi awal 2010.</p><p>&nbsp;</p><p>"Dalam waktu dekat, kami akan salurkan Minyakita bersamaan dengan pasar murah yang diselenggarakan pemerintah daerah dalam menghadapi Natal dan Tahun Baru [20I0|," ujarnya. Di sinilah perlunya kebijakan yang tidak bersifat sementara agar munculnya kebijakan selalu tidak bersifat reaktif, sehingga target yang dibidik pun bisa tercapai.</p><p>&nbsp;</p><p>Oleh SEPUDIN ZUHRI</p><p>Sumber : Bisnis Indonesia</p></span><span><br><br>Read more:<a target="_blank" rel="nofollow" href="http://kpbptpn.co.id/news-4450-0-aimmi-siap-ekspor-minyak-goreng-kemasan-ke-china-.html#ixzz4CvsN9NRf">http://kpbptpn.co.id/news-4450-0-aimmi-siap-ekspor-minyak-goreng-kemasan-ke-china-.html#ixzz4CvsN9NRf</a></span>', '2016-06-29', '38_ID_732.jpg', 'minyak goreng', 'ID_732.jpg', 'AIMMI ready packaged cooking oil exports to China', '<div>JAKARTA: Indonesian Cooking Oil Industry Association (AIMMI) expressed readiness to export branded bottled cooking oil to China following the start of a duty of 0% in the country, so it is not exported in the form of raw materials alone.</div><div><br></div><div>Chairman AIMMI Adiwisoko Kasman said through an agreement cooperation agreement Asean-China free trade (ACFTA), the treatment of oil products and derivatives in China together with similar products from Malaysia. It was, he said, will make cooking oil products from Indonesia can compete in the Bamboo Curtain country.</div><div><br></div><div>&nbsp;</div><div><br></div><div>"We still need help from the government on the sale of oil abroad such as in terms of health. If assisted again, it will be easier to penetrate China," he said yesterday.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Before the Asean-China cooperation is implemented, oil and derived products originating from Malaysia more competitive in the Chinese market compared to products from Indonesia.</div><div><br></div><div>&nbsp;</div><div><br></div><div>"Exports of cooking oil can already competitive. But branded cooking oil (branded), if necessary, we will make cooking oil according to the tastes of consumers in China."</div><div><br></div><div>&nbsp;</div><div><br></div><div>He reiterated the government -Minyakita- brand cooking oil will not be exported, because it is only used in the country in order to encourage the use of commodities berkemasan so that consumption will be reduced in bulk form.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Bottled cooking oil, he said, the relatively more stable in terms of price compared with the price of bulk cooking oil. Moreover, in terms of health, he said, is also more hygienic.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Through Minyakita, he said, it can be increased consumption of bottled cooking oil at a price of packaging products are under other brands.</div><div><br></div><div>&nbsp;</div><div><br></div><div>He said Minyakita manufacturers will soon market the type that into the traditional market in the near future, but it needs government support to promote the brand.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Although the Parliament assessing the market''s not right for price stabilization policies, he said, manufacturers still hold cost of cooking oil market as a concern to the community.</div><div><br></div><div>&nbsp;</div><div><br></div><div>During 2009, oil production reached 20 million tons, comprising 15.5 million tonnes for export and for the domestic demand of 4.5 million tons.</div><div><br></div><div>&nbsp;</div><div><br></div><div>The cost structure of cooking oil</div><div><br></div><div>commentary</div><div><br></div><div>%</div><div><br></div><div>Raw material</div><div><br></div><div>87</div><div><br></div><div>Packaging and adjuvant</div><div><br></div><div>7</div><div><br></div><div>Other production costs</div><div><br></div><div>6</div><div><br></div><div>Source: AIMMI 2010</div><div><br></div><div>&nbsp;</div><div><br></div><div>By Sepudin Zuhri</div><div><br></div><div>Source: Bisnis Indonesia</div><div><br></div><div>------------------------</div><div><br></div><div>&nbsp;</div><div><br></div><div>December 15, 2009</div><div><br></div><div>Minyakita failed to lower the price of cooking oil</div><div><br></div><div>&nbsp;</div><div><br></div><div>Cooking oil prices averaged over the year, although relatively stable, are still too high, ie at the level of the late Rp8.000 per kg (approximately Rp7.800 per liter) .At present in the market instead around Rp8,500 per liter. The price was far higher than the government''s target at launch Minyakita, namely Rp6,000 per liter.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Price stability in the level of Rp8,000, per kg was more influenced by the price of raw materials such products namely crude palm oil (.crude palm oil / CPO) were also relatively stable throughout the year at around US $ 600 per ton.Harga was indeed much lower than the price last year which reached Rpl2.000 per liter, fueled by soaring prices of CPO in the international market.</div><div><br></div><div>&nbsp;</div><div><br></div><div>The high price of cooking oil when that''s what spurred the Department of Commerce to launch a cheap bottled cooking oil with the brand Minyakita that the selling price is set slightly above the bulk oil and oil prices kemasan.Target under the Ministry of Trade, Minyakita can meet the needs of 11% -14% of oil consumption the bulk of society, so that pressing national average price in the hope the price of oil will drop to the level of Rp6,000 per liter due to lower crude palm oil prices in the international market.</div><div><br></div><div>&nbsp;</div><div><br></div><div>In the past year, the government subsidized cooking oil for Rp2.5OO per liter with a quota of 2 liters per poor household per month. Cooking oil subsidy budget in 2008 amounted RpSOO billion, but the number of new absorbed separuhnya.Adapun, Minyakita initially sought no subsidy at Rp 1,000 per liter channeled through programs of corporate social responsibility (CSR), which totaled 200 billion, in addition to taxes sales paid by the government (PpnOTP). Expected launch of Minyakita able to suppress the price of cooking oil nationwide average of Rp7.00O-Rp8,000 per liter to Rp6,000 per liter.</div><div><br></div><div>&nbsp;</div><div><br></div><div>However, Parliament does not approve the 200 billion subsidy funds, so that eventually only a PpnDTP Minyakita subsidy of Rp800 billion.</div><div><br></div><div>Director of Market and Distribution Directorate General of Domestic Trade Department of Commerce Jimmy Bella said there are still some manufacturers are implementing CSR with Minyakita and only a few producers who sell to the commercial brand to market.</div><div><br></div><div>&nbsp;</div><div><br></div><div>CSR activities through the sale of oil producers with Minyakita brand, he added, aims to enable the poor can buy cooking oil at a low price. CSR program, he said, is not to reduce prices. "Meanwhile, Minyakita sold to commercial markets to follow market prices that are not regulated." However, Jimmy can not mention the actual distribution of the data Minyakita until today. He did not say explicitly whether the product has been distributed in accordance with a target of 10 million tons, or 11% -14% of the total consumption of the product in the country.</div><div><br></div><div>&nbsp;</div><div><br></div><div>actually rose</div><div><br></div><div>&nbsp;</div><div><br></div><div>Meanwhile, oil producers predict the price of the pro * duk will go up ahead of the Christmas and New Year 2010 due to increased demand from konsumen.Managing Director of Sinar Mas Group Gandhi Sulistiyanto said cooking oil prices influenced by demand and supply, especially at the end and beginning of the year as well as during religious holidays such as Idul ftri and Christmas.</div><div><br></div><div>&nbsp;</div><div><br></div><div>"Lebaran ago, the price of cooking oil also rose, later before Christmas and the end of the year is likely to move up. All the affected supply and demand," he said.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Chairman of the Indonesian Cooking Oil Industry Association (AIMMI) Adiwisoko Kasman said sales Minyakita still ongoing, but in small quantities. "I do not know how achievement Minyakita distribution. By Iduladha ago, there are some manufacturers who do CSR by selling Minyakita," he said. According to him, the current price of oil tends to stabilize the price of 7,000''s per liter. However, it is likely in January 2010, exports of palm oil export duty will be charged (BK) was 1.5%, so the price of oil in the country tends to fall.</div><div><br></div><div>&nbsp;</div><div><br></div><div>He expects the price of oil at the beginning of the year will tend to remain and will likely go down if charged BK 1.5% .Faktanya, Minyakita not been able to lower the price of cooking oil in the range Rpfi.OOO per liter as promised pemerintan time of the product launch in early This year. Moreover, the government oil brand that got crowded and often socialized the Commerce Minister is now no longer resonates.</div><div><br></div><div>&nbsp;</div><div><br></div><div>Then, what if suddenly palm oil prices in 2010 jumped back, whether the government again abuzz socialize Minyakita? Director General of Domestic Trade Ministry of Trade Subagyo said CSR activities programmed by the manufacturer of cooking oil with the brand Minyakita will begin again in early 2010.</div><div><br></div><div>&nbsp;</div><div><br></div><div>"In the near future, we will be distributed along with the market''s Minyakita organized local government in the face of Christmas and New Year [20I0 |," he said. This is where the need for policies that are not temporary in order advent policy has always been not reactive, so the target can be achieved target.</div><div><br></div><div>&nbsp;</div><div><br></div><div>By SEPUDIN Zuhri</div><div><br></div><div>Source: Bisnis Indonesia</div><div><br></div><div><br></div><div><br></div><div>Read more:<a target="_blank" rel="nofollow" href="http://kpbptpn.co.id/news-4450-0-aimmi-siap-ekspor-minyak-goreng-kemasan-ke-china-.html#ixzz4CvsN9NRf">http://kpbptpn.co.id/news-4450-0-aimmi-siap-ekspor-minyak-goreng-kemasan-ke-china-.html#ixzz4CvsN9NR...</a></div>', 'cooking oil'),
(39, 2, 'ICEPO, Gabungan Perusahaan Perkebunan (GPPI) Kembali Gelar Konferensi', '<div><p>Bisnis.com,&nbsp;JAKARTA – Gabungan Perusaan Perkebunan Indonesia (GPPI) kembali menggelat International Conference and Exhibition on Palm Oil (ICEPO) tahun ini, bertempat di Jakarta Convention Centre (JCC) Senayan selama Rabu-Jumat (6-8/5/2015).</p><p>ICEPO tahun ini mengusung tema&nbsp;<em>Indonesuan Palm Oil : Important Contribution to Convergence Food and Energy and Sustainability</em>. Hadir sebagai pembicara sejumlah pemangku kebijakan dari pihak pemerintah dan perusahaan kelapa sawit dalam negeri.</p><p>Ketua Pengarah ICEPO Soedjai Kartasasmita menyampaikan penyelenggaraan ICEPO tahun inu akan fokus membahas perkembangan industri kelapa sawit dan beberapa kebijakan baru yang dikeluarkan pemerinta terkait industri tersebut.</p><p>“Misalnya ada kebijakan CPO Supporting Fund (CSF) yang baru saja ditetapkan pemerintah. Pasar dan pelaku industri menunggu terobosan-terobosan dari pemerintah baru,” ungkap Soedjai dalam kata sambutannya pada pembukaan ICEPO di Jakarta, Rabu (6/5/2015).</p><p>Selain konferensi, ICEPO 2015 pun menjadi sarana peresmian (<em>launching)&nbsp;</em>pembangunan Museum Perkebunan Indonesia (MUSPERIN), yang akhirnya terealisasi setelah 10 tahun terus berada di level wacana. Pembangunan ini dikoordinasi oleh Yayasan Museum Perkebunan Indonesia yang berdiri 27 April lalu di Medan.</p><p>Menteri Koordinator Bidang Perekonomian Sofyan Djalil menyampaikan saat ini industri kelapa sawit Indonesia harus fokus memperbaiki kualitas, terutama dalam praktik-praktik penanaman hingga produksi.</p><p>“Produktivitas kelapa sawit kalau bisa kita naikkan menjadi rata-rata 7-8 ton per hektare dengan praktik-praktik yang baik dalam pengelolaan kelapa sawit,” kata Sofyan saat membuka acara ICEPO.</p></div><div><p></p><p></p></div><div><div><div></div></div><div>Editor : Fatkhul Maskur</div></div>', '2016-06-29', '39_dorong-pertumbuhan-industri-sawit--petani-swasta-pemerintah-diajak-kerjasama.jpg', 'Industri kelapa sawit Indonesia harus fokus memperbaiki kualitas, terutama dalam praktik-praktik penanaman hingga produksi.', 'konferensi-sawit.jpg', 'ICEPO, Joint Plantation (GPPI) Back Holds Conference', '<div>Bisnis.com, JAKARTA - The Association of Indonesian Plantation Perusaan (GPPI) back menggelat International Conference and Exhibition on Palm Oil (ICEPO) this year, at the Jakarta Convention Centre (JCC), Senayan during Wednesday-Friday (6-8 / 5/2015) ,</div><div><br></div><div>The theme of this year ICEPO Indonesuan Palm Oil: Important Contribution to the Convergence Food and Energy and Sustainability. Present as speakers some stakeholders from the government and palm oil companies in the country.</div><div><br></div><div>Chairman of the Steering ICEPO Soedjai Kartasasmita convey implementation inu ICEPO year will focus on the development of the palm oil industry and several new policies issued pemerinta related to the industry.</div><div><br></div><div>"For example, there is a policy CPO Supporting Fund (CSF) newly set by the government. Market and industry players await breakthroughs of the new government, "said Soedjai in his speech at the opening ICEPO in Jakarta, Wednesday (05/06/2015).</div><div><br></div><div>In addition to the conference, ICEPO 2015 became the opening means (launching) the development of Indonesian Plantation Museum (MUSPERIN), who finally realized after 10 years continues to be at the level of discourse. This development is coordinated by the Foundation for the Indonesian Forestry Museum that stands April 27 in Medan.</div><div><br></div><div>Coordinating Economic Minister Sofyan Djalil said that at present Indonesia''s palm oil industry should focus on improving the quality, especially in the practices of planting and production.</div><div><br></div><div>"The productivity of palm oil if we can raise an average of 7-8 tonnes per hectare with good practices in the management of oil palm," the minister said at the opening ceremony ICEPO.</div><div><br></div><div>Editor: Fatkhul Maskur</div>', 'Indonesian palm oil industry should focus on improving the quality, especially in the practices of planting and production.'),
(40, 1, 'Apkasindo: Petani agar Jaga Produktifitas Sawit', '<strong>TRIBUNJAMBI.COM, JAMBI</strong>&nbsp;- Ketua&nbsp;<a target="_blank" rel="nofollow" href="http://jambi.tribunnews.com/tag/apkasindo-jambi/">Apkasindo Jambi</a>, Roy&nbsp; Asnawi menyampaikan berdasarkan harga Tandan buah segar (TBS) Jambi priode 4-10&nbsp; Desember 2015 sawit umur tanaman 10-20 tahun yang menjadi acuan Rp 1.208,91 per Kg. Demikian untuk harga crude palm oil (CPO) juga mengalami kenaikan menjadi Rp5.519,96 per Kg. Dikuti lagi dengan kenaikan harga kernel oil menjadi Rp3.766,13 per kg. Menurut tim Pokja naiknya harga TBS, CPO maupun kernel oil sawit seiring dengan naiknya harga crude palm oil (CPO) dan kernel di pasaran dunia. Sesuai hukum pasar global yakni antara suplay dan demand. Menurut Apkasindo sebesar apapun kenaikan harga sawit tentunya akan berimbas pada penghasilan petani jambi yang mayoritas mengandalkan sawit. Ia juga&nbsp; mengajak para petani untuk selalu merawat sawit dengan baik agar produktifitas nisa meningkat. "Kepada petani diharapkan meningkatkan produksi sawit dengan rajin memberikan pupuk," ujarnya hari ini (3/12).<br><br>Sementara menurut Gapki Jambi harga CPO yang merupakan dominan di ekspor ke negara Malaysia, Thailand, Tiongkok dan beberapa negara lainnya. Menurut Tidar M Bagaskara Ketua bidang pemasaran dan tata niaga TBS, Gabungan Pengusaha Kelapa Sawit Indonesia (Gapki) Jambi, penentuan harga TBS sangat erat dengan penentuan harga CPO dan kernel, disamping faktor lain seperti indeks K. Apabila harga CPO dipasaran global naik, maka secara otomatis nanti penentuan harga TBS akan mengalami kenaikan. (Hdp)', '2016-06-29', '40_Kelapa-Sawit-Indonesia-681x454_(27).jpg', 'Apkasindo', 'Kelapa-Sawit-Indonesia-681x454_(27).jpg', 'Apkasindo: Farmers in order to Keep Oil Productivity', '<div>TRIBUNJAMBI.COM, JAMBI - Chairman Apkasindo Jambi, Roy Asnawi expressed by the price of fresh fruit bunches (FFB) Jambi period of 4-10 December 2015 palm plant age 10-20 years is the reference USD 1208.91 per Kg. Similarly, prices of crude palm oil (CPO) also increased to Rp5.519,96 per Kg. Followed again by the rising prices of oil into Rp3.766,13 kernel per kg. According to the Working Group of the rising price of FFB, CPO and palm kernel oil in line with the rising price of crude palm oil (CPO) and kernel in the world market. As per the law the global market between supply and demand. According Apkasindo of any oil price increase will certainly impact on farmers'' income jambi the majority rely on oil. He also invited the farmers to always take care of the oil well in order to increase productivity Nisa. "To the farmers are expected to increase oil production by diligently provide fertilizer," he said today (3/12).</div><div><br></div><div>Meanwhile, according to Gapki Jambi CPO price which is dominant in the country of export to Malaysia, Thailand, China and other countries. According Tidar M Bagaskara Chairman of the areas of marketing and administration TBS, Indonesian Palm Oil Association (Gapki) Jambi, pricing TBS very closely to the pricing of CPO and kernel, in addition to other factors such as the index K. If the global market price of CPO rose, then the TBS later automatic pricing will increase. (HDP)</div>', 'Apkasindo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan_m`
--

CREATE TABLE IF NOT EXISTS `bulan_m` (
`id_bulan` int(11) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bulan_m`
--

INSERT INTO `bulan_m` (`id_bulan`, `bulan`, `lengkap`) VALUES
(1, 'Jan', 'Januari'),
(2, 'Feb', 'Februari'),
(3, 'Mar', 'Maret'),
(4, 'Apr', 'April'),
(5, 'Mei', 'Mei'),
(6, 'Jun', 'Juni'),
(7, 'Jul', 'Juli'),
(8, 'Agu', 'Agustus'),
(9, 'Sep', 'Sepetember'),
(10, 'Okt', 'Oktober'),
(11, 'Nov', 'November'),
(12, 'Des', 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download_m`
--

CREATE TABLE IF NOT EXISTS `download_m` (
`id_download` int(10) unsigned NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file_download` varchar(255) DEFAULT NULL,
  `judul_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `download_m`
--

INSERT INTO `download_m` (`id_download`, `judul`, `file_download`, `judul_english`) VALUES
(1, 'PROGRAM DAN STRATEGY MAP DMSI', 'DMSI.pdf', 'PROGRAM AND STRATEGY MAP DMSI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_m`
--

CREATE TABLE IF NOT EXISTS `foto_m` (
`id_foto` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `judul_foto` varchar(200) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `urutan` int(11) NOT NULL,
  `judul_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `foto_m`
--

INSERT INTO `foto_m` (`id_foto`, `id_album`, `judul_foto`, `foto`, `urutan`, `judul_english`) VALUES
(5, 1, 'd', '1_5_4_1513218625p_(18).jpg', 4, 'd eng'),
(6, 1, 'e', '1_6_5_pekerja-di-kawasan-perkebunan-kelapa-sawit-cikidang-sukabumi-sabtu-3-4-_150212210035-725.jpg', 5, 'e eng'),
(7, 1, 'f', '1_7_6_1513218625p_(18).jpg', 6, 'f eng'),
(8, 2, 'a', '2_8_1_1513218625p_(18).jpg', 1, 'a'),
(9, 2, 'b', '2_9_2_pekerja-di-kawasan-perkebunan-kelapa-sawit-cikidang-sukabumi-sabtu-3-4-_150212210035-725.jpg', 2, 'b'),
(10, 2, 'c', '2_10_3_77panensawit-yus.jpg', 3, 'c'),
(11, 2, 'd', '2_11_4_77panensawit-yus.jpg', 4, 'd'),
(12, 2, 'e', '2_12_5_77panensawit-yus.jpg', 5, 'e'),
(13, 2, 'f', '2_13_6_13936337821293320679.jpg', 6, 'f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_m`
--

CREATE TABLE IF NOT EXISTS `harga_m` (
`id_harga` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_bulan` varchar(50) NOT NULL,
  `id_katharga` int(11) NOT NULL,
  `harga_rupiah` varchar(100) NOT NULL,
  `harga_dolar` varchar(100) NOT NULL,
  `sumber` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `harga_m`
--

INSERT INTO `harga_m` (`id_harga`, `tahun`, `id_bulan`, `id_katharga`, `harga_rupiah`, `harga_dolar`, `sumber`) VALUES
(1, 2009, '1', 1, '10000', '0.75', 'http://www.sahamok.com/'),
(2, 2009, '2', 1, '11000', '0.82', 'http://www.sahamok.com/'),
(3, 2009, '3', 1, '13000', '0.97', 'http://www.sahamok.com/'),
(4, 2009, '4', 1, '14000', '1.05', 'http://www.makemak.com/833/harga-kelapa-sawit-terbaru.html'),
(5, 2009, '5', 1, '15000', '1.12', 'http://www.sahamok.com/'),
(6, 2009, '6', 1, '16000', '1.20', 'http://www.sahamok.com/'),
(7, 2009, '7', 1, '17000', '1.27', 'http://www.sahamok.com/'),
(8, 2009, '8', 1, '17000', '1.27', 'http://www.sahamok.com/'),
(9, 2009, '9', 1, '18000', '1.35', 'http://www.sahamok.com/'),
(10, 2009, '10', 1, '19000', '1.42', 'http://www.sahamok.com/'),
(11, 2009, '11', 1, '17000', '1.27', 'http://www.sahamok.com/'),
(12, 2009, '12', 1, '14000', '1.05', 'http://www.sahamok.com/'),
(13, 2009, '1', 2, '15000', '1.12', 'http://www.sahamok.com/'),
(14, 2009, '2', 2, '17000', '1.27', 'http://www.sahamok.com/'),
(15, 2009, '3', 2, '15000', '1.12', 'http://www.sahamok.com/'),
(16, 2009, '4', 2, '11000', '0.82', 'http://www.sahamok.com/'),
(17, 2009, '5', 2, '10000', '0.75', 'http://www.sahamok.com/'),
(18, 2009, '6', 2, '14000', '1.05', 'http://www.sahamok.com/'),
(19, 2009, '7', 2, '14000', '1.05', 'http://www.sahamok.com/'),
(20, 2009, '8', 2, '14000', '1.05', 'http://www.sahamok.com/'),
(21, 2009, '9', 2, '14000', '1.05', 'http://www.sahamok.com/'),
(22, 2009, '10', 2, '14000', '1.05', 'http://www.sahamok.com/'),
(23, 2009, '11', 2, '13350', '1.00', 'http://www.sahamok.com/'),
(24, 2009, '12', 2, '10000', '0.75', 'http://www.sahamok.com/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_m`
--

CREATE TABLE IF NOT EXISTS `informasi_m` (
`id_informasi` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tanggal` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `keterangan_gambar` varchar(200) NOT NULL,
  `judul_english` varchar(255) NOT NULL,
  `content_english` text NOT NULL,
  `caption_picture` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `informasi_m`
--

INSERT INTO `informasi_m` (`id_informasi`, `id_kategori`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `judul_english`, `content_english`, `caption_picture`) VALUES
(19, 1, 'Permasalahan Perkebunan Sawit di Morowali Tak Kunjung Usai, Ini Penyebabnya', '<p>Sejak diperkenalkan perkebunan kelapa sawit oleh PT. Perkebunan Nusantara XIV yang kini berganti menjadi PT. Sinergi Perkebunan Nusantara (PT. SPN) pada 1999, masyarakat di Desa Mayumba, Kecamatan Mori Atas, Kabupaten Morowali Utara, Sulawesi Tengah, telah menentangnya. Mereka protes, karena lahan yang digunakan untuk perkebunan itu mencaplok tanah adat mereka.</p><p>Kini, polemik perkebunan sawit di Kabupaten Morowali Utara pun bertambah, seiring bertambahnya jumlah perusahaan.&nbsp;<span><a target="_blank" rel="nofollow" href="http://mongabaydotorg.wpengine.com/2015/01/28/walah-hampir-semua-perusahaan-sawit-di-morowali-utara-bermasalah/">Apa latar masalahnya</a>?&nbsp;</span></p><p>Deputi Direktur Perkumpulan Evergreen Indonesia Sulteng, Agustam Nome, mengatakan masyarakat sampai saat ini terus melakukan perlawanan. Warga menuntut kembali lahan mereka yang telah diambil alih oleh perusahaan. Sebagaimana yang dilakukan terhadap PT. SPN, masyarakat juga menuntut PT. Agro Nusa Abadi (PT. ANA) yang berada dibawah payung grup PT. Astra Agro Lestari.</p><p>Perkebunan PT. ANA seluas kurang lebih 7.000 hektar saat ini seluruhnya berada di atas lahan masyarakat tanpa proses pelepasan hak atau jual beli. Padahal, sebagian besar lahan-lahan tersebut memiliki bukti surat keterangan pendaftaran tanah (SKPT), surat keterangan terdaftar (SKT), dan sertifikat hak milik (SHM).</p><p>“Sekarang, banyak SKPT yang keluar, dan terjadi tumpang tindih lahan. Karena di atas SKPT ada lagi SKPT yang keluar. Sehingga, diperlukan uji keabsahan SKPT. Rencananya, kami akan serahkan berkas kasus yang kami damping ini ke tim sengketa lahan yang dibentuk oleh pemerintah daerah,” kata Agustam kepada<i>Mongabay Indonesia</i>, Sabtu (28/03/2015).</p><p>Perkumpulan Evergreen bersama dengan Walhi Sulteng sejak Oktober 2014 telah melakukan pendampingan dan pengorganisasian masyarakat di Desa Bunta, Tompira, Bungin Timbe, Malino, Peboa, Toara, dan Desa Toara Pantai, yang berkonflik dengan perusahaan PT. ANA.</p><p>“Masyarakat di sana sering kali melakukan penghadangan aktivitas masyarakat ketika menuntut hak-hak mereka. Tak jarang aksi ini berujung konflik.”</p><p>Ahmad Pelor, Direktur Walhi Sulteng menjelaskan, jika dipetakan ada empat persoalan mendasar yang menyebabkan mengapa persoalan sawit di Morowali Utara tak kunjung usai. Masalah itu adalah konversi kawasan hutan, perampasan tanah, petani plasma, dan eksploitasi buruh.</p><p>Untuk konversi kawasan hutan, diperkirakan kelompok perusahaan Kencana Agri melalui anak perusahaannya PT. Kurnia Alam Makmur telah melakukan konversi ribuan hektar kawasan hutan menjadi perkebunan kelapa sawit secara illegal. Beberapa hasil investigasi sementara oleh Walhi menguatkan dugaan perusahaan milik Wilmar International Ltd itu, telah melakukan konversi lebih dari 1.000 hektar kawasan hutan di Kecamatan Mamosalato, Morowali Utara.</p><p>“Untuk perampasan tanah, perusahaan mengambil alihan lahan masyarakat dan dilakukan secara paksa, diintimidasi, bahkan tidak jarang dengan menggunakan aparat negara seperti polisi, pemerintah kecamatan. Modus yang lain adalah dengan memberikan ganti rugi tanaman tumbuh (GRTT) dan janji akan disertakan sebagai petani plasma,” ungkap Pelor.</p><p>Sementara yang terkait dengan plasma atau pola kemitraan, selalu menjadi pintu masuk perusahaan saat ingin beroperasi disebuah wilayah. Namun mayoritas perusahaan tidak mengimplementasikan pola kemitraaan atau tidak membangun kebun plasma. Hasil investigasi menunjukan bahwa hingga saat ini perusahaan-perusahaan dibawah bendera Kencana Agri dan PT. Astra Agro Lestari sama sekali tidak membangun kebun plasma yang merupakan kewajiban mereka. Namun, kedua grup perusahaan tersebut, dan mayoritas perusahaan perkebunan sawit lainnya menipu pemerintah dengan melaporkan bahwa mereka telah merealisasikan pembangunan kebun plasma.</p><p>“Masyarakat tidak paham tentang mekanisme kemitraan atau plasma, karena sejak awal tidak ada informasi yang detil dan jelas yang disajikan pihak perusahaan maupun pemerintah terkait dengan pola kemitraan yang bisa diterapkan.”</p><p>“Mayoritas perusahaan perkebunan kelapa sawit di Sulawesi Tengah (Sulteng) tidak melaksanakan kewajibannya untuk membangun kebun plasma minimal 20 persen sebagaimana diatur dalam Peraturan Menteri Pertanian Nomor 26 tahun 2007 dan telah diubah dengan Peraturan Menteri Pertanian Nomor 98 tahunn 2013 tentang Pedoman Perizinan Usaha Perkebunan,” kata Pelor.</p>', '2016-06-28', '19_sabah_1042.jpg', 'Perkebunan kelapa sawit di Morowali Utara, Sulawesi Tengah, hampir semuanya bermasalah. Bagaimana dengan daerah lain? Foto: Rhett Butler', 'Problems Palm plantation in Morowali Tak Kunjung After, It Causes', '<div>Since the introduction of oil palm plantation by PT. Perkebunan Nusantara XIV which has now changed into PT. Synergies Perkebunan Nusantara (PT. SPN) in 1999, people in the village of Mayumba, District Mori Atas, North Morowali Regency, Central Sulawesi, have opposed it. They protested, because the land is used for the plantation annexing their ancestral lands.</div><div><br></div><div>Now, polemic palm plantations in North Morowali Regency was increased, with increasing number of companies. What is the background of the problem?</div><div><br></div><div>Deputy Director of the Association Evergreen Indonesia Sulawesi, Agustam Nome, said the public until now have resisted. Residents claim back their land which has been taken over by the company. As committed against PT. SPN, society is also demanding PT. Agro Nusa Abadi (PT. ANA) under the umbrella of the group PT. Astra Agro Lestari.</div><div><br></div><div>Plantation PT. ANA covering an area of ​​approximately 7,000 hectares is now entirely located on an area of ​​society without the waiver or purchase. In fact, most of these lands have proof of registration of land (SKPT), a registered letter (SKT), and a certificate of ownership (SHM).</div><div><br></div><div>"Now, many SKPT coming out, and overlapping land. Because over there again SKPT SKPT that out. Thus, the validity of the test is required SKPT. According to the plan, we will submit our case file to the damping land disputes team formed by the local government, "said Agustam kepadaMongabay Indonesia, Saturday (28/03/2015).</div><div><br></div><div>Evergreen Society along with WALHI Central Sulawesi since October 2014 has been mentoring and community organizing in Bunta village, Tompira, Bungin timbe, Malino, Peboa, Toara and Toara Beach Village, which is in conflict with the company PT. ANA.</div><div><br></div><div>"People there frequently blocking activity of the public when demanding their rights. Not infrequently, this action led to the conflict. "</div><div><br></div><div>Ahmad bullets, Director of WALHI Central Sulawesi explain, if mapped there are four fundamental problems that cause why the issue of oil in the North Morowali endless. That problem is the conversion of forest areas, confiscation of land, farmers, and the exploitation of labor.</div><div><br></div><div>For the conversion of forest area, estimated the group of companies Kencana Agri through its subsidiary PT. Kurnia Alam Makmur already converted thousands of hectares of forest to oil palm plantations illegally. Some results of the investigation while by WALHI reinforces the notion of companies owned by Wilmar International Ltd, the already converted more than 1,000 hectares of forest area in the district Mamosalato, North Morowali.</div><div><br></div><div>"For the confiscation of land, the company took the public land grabs and forcible, intimidated, even less so by using the state apparatus such as the police, the government district. The other mode is to provide compensation plants grow (GRTT) and promises to be included as farmers, "said bullet.</div><div><br></div><div>While related to plasma or a partnership, has always been the company''s entrance when they want to operate disebuah region. However, the majority of companies do not implement or not to build partnerships pattern smallholdings. Results of the investigation showed that until now the companies under the banner of Kencana Agri and PT. Astra Agro Lestari did not build smallholdings which is their obligation. However, the two group companies, and the majority of other palm plantation companies to cheat the government by reporting that they had executed the construction of smallholdings.</div><div><br></div><div>"People do not understand about the mechanisms of partnership or plasma, because from the beginning there is no detailed information and clearly presented the company nor the government associated with a partnership that is feasible."</div><div><br></div><div>"The majority of the company''s oil palm plantations in Central Sulawesi (Sulawesi) did not carry out its obligation to establish smallholdings at least 20 percent as stipulated in the Regulation of the Minister of Agriculture No. 26 of 2007 and amended by the Decree of the Minister of Agriculture No. 98 tahunn 2013 on Guidelines for Licensing of Commercial Plantation," said bullet.</div>', 'Oil palm plantations in North Morowali, Central Sulawesi, almost all of them problematic. What about the other areas? Photo by Rhett Butler'),
(20, 1, '3 Solusi Atasi Permasalahan Sawit', '<i>Ada 3 solusi yang ditawarkan oleh pembicara untuk mengatasi permasalahan sawit yang kian terpuruk. Solusi tersebut diharapkan akan dapat mengatasi kondisi persawitan di Indonesia.&nbsp;</i><span><br><br></span>Riauterkini-PEKANBARU-Pengamat Ekonomi Nasional, Fasial Basri pada kegiatan diskusi ekonomi tentang sawit yang ditaja Gabungan Pengusaha Kelapa Sawit Riau (Gapki) di Ibis Pekanbaru Rabu (22/10) menawarkan 3 solusi untuk mengatasi masalah sawit di Indonesia.<span><br><br></span>3 Solusi tersebut adalah menawarkan kerjasama antara Malaysia dengan Indonesia. Tujuannya adalah untuk menjaga pasar sawit Indonesia. Kemudian dana pajak ekspor yang ditarik pemerintah diharapkan kembali ke komunitas sawit. Khususnya di kalangan petani sebagai dana jejaring pengaman. Terakhir adalah menggeliatkan industri pengolahan product tanaman sawit.<span><br><br></span>"3 solusi tersebut diharapkan akan dapat menjadi jalan keluar bagi permasalahan sawit yang harganya semakin terpuruk akibat turunnya harga minyak mentah dunia hingga ke level 80 USD perbarel. Turunnya minyak mentah dunia membuat importir CPO untuk biofeul mengalihkan ke minyak mentah," kata Faisal Basri.<span><br><br></span>Mengenai kapan harga sawit kembali normal, Faisal Basri tidak memastikan waktunya. Namun ia menyatakan tidak akan lama. Pasalnya, dengan naiknya level China dan India di elit ekonomi dunia dan masih baiknya kondisi ekonomi di negara-negara berkembang dapat memperkecil pengaruh resesi Amerika yang memporak-porandakan ekonomi negara-negara Eropa terutama Inggris.<span><br><br></span>Sementara itu, Ketua Gapki Riau, Wisnu Oriza Suharto menyatakan bahwa perusahaan perkebunan tidak begitu terkendala dengan terpuruknya harga sawit. Karena perusahaan memiliki sistem management yang ''mewajibkan'' safety financial saat harga naik tajam.<span><br><br></span>" Sehingga saat harga turun tajam, masalah financial akan dapat diatasi dengan safety dana saat harga masih tinggi," terangnya.<span><br><br></span>Sementara itu, Sekretaris Gapki Riau, Zulbahri mengatakan bahwa dengan menurunnya permintaan dunia akan CPO membuat perusahaan industri perkebunan termasuk PKS inti-plasma maupun PKS non kebun menahan pembelian TBS petani sawit swadaya.<span><br><br></span>"Saat ini banyak PKS non kebun dan PKS inti-plasma yang menghentikan pembelian TBS petani sawit swadaya karena tanki-tanki CPO mereka sudah penuh dan belum ''terjual''," terangnya. ***(H-we)', '2016-06-28', '20_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'Sawit', '3 Solutions Resolve Oil Issues', '<div>There are three solutions offered by the speaker to address issues of oil frustrations. The solution is expected to be able to cope with the conditions persawitan in Indonesia.</div><div><br></div><div>Riauterkini-Pekanbaru-National Economic Observer, Facial Basri in economic discussions about oil activity sponsored Riau Palm Oil Association (Gapki) in Ibis Pekanbaru on Wednesday (22/10) offers three solutions to overcome the problem of palm oil in Indonesia.</div><div><br></div><div>The third solution is to offer the cooperation between Malaysia and Indonesia. The goal is to keep the oil market in Indonesia. Then export tax funds are withdrawn governments are expected to return to the oil community. Especially among farmers as a safety net funds. Lastly is stretched palm plant product processing industry.</div><div><br></div><div>"3 The solution is expected to be a solution to the oil problem that is getting worse due to falling crude oil prices up to a level of 80 USD a barrel. The fall in global crude oil makes for biofeul CPO importers shift to crude oil," said Faisal Basri.</div><div><br></div><div>As to when oil prices return to normal, Faisal Basri was not ascertain the time. But he said would not be long. Because, with an increased level of China and India in the elite of the world economy and is still good economic conditions in developing countries can minimize the influence of the US recession that devastated the economies of European countries, especially Britain.</div><div><br></div><div>Meanwhile, Chairman of the Riau Gapki, Vishnu Oryza Suharto stated that the plantation companies are not so constrained by the decline of oil prices. Because the company has a management system which ''require'' financial safety when prices rise sharply.</div><div><br></div><div>"So when prices fall sharply, financial problems will be solved with a safety fund when prices are high," he explained.</div><div><br></div><div>Meanwhile, Secretary of Gapki Riau, Zulbahri said that with declining world demand for palm oil plantations making industrial enterprises including plasma core PKS and PKS are non gardens resist purchasing TBS self smallholders.</div><div><br></div><div>"Today many non gardens PKS and PKS nucleus-plasma stop buying palm oil farmers self TBS for their CPO tanks are already full and have not ''sold''," he explained. *** (H-we)</div>', 'Sawit'),
(21, 1, 'TEKNOLOGI TERBARU YANG ADA DI INDUSTRI KELAPA SAWIT', '<p>Di dalam sebuah bidang bisnis, baik itu bidang pertanian dan perkebunan maupun bidang lainnya di dunia pasti membutuhkan teknologi mutakhir yang kelak membantu berkembanganya beragam bisnis ini ke jenjang yang lebih tinggi. Oleh karena itu, industri kelapa sawit juga tak mau ketinggalan dalam menerapkan ilmu terapan terbaru yang dapat membantu para pengusaha dan pebisnis menjalankan usaha mereka sehingga berjalan lebih lancar. Teknologi bergerak di berbagai aspek. Ada yang merupakan pengolahan limbah, ada juga pengurangan emisi gas dan lain sebagainya yang mencakup proses produksi di tanaman sawit-sawit ini. Apa saja teknologi terbaru yang ada di industri kelapa sawit? Berikut beberapa di antaranya.</p><p>Methane Capture</p><p>Salah satu teknologi yang sudah mulai banyak dipakai para pengelola dan pebisnis&nbsp;<em>palm oil&nbsp;</em>adalah&nbsp;<em>methane capture.&nbsp;</em>Metode canggih yang satu ini adalah angin segar untuk para pebisnis industri kelapa sawit yang menginginkan bisnisnya lebih ramah lingkungan.<em>Methane capture&nbsp;</em>sendiri berfungsi untuk mengurangi emisi gas rumah kaca yang timbul dari pengelolaan pabrik kelapa sawit. Meskipun untuk menginvestasi&nbsp;<em>methane capture&nbsp;</em>ini tidaklah murah dan membutuhkan nominal biaya yang tak sedikit, namun kehadirannya disambut sangat baik. Dikatakan jika setiap pabrik yang ada di Indonesia menggunakan&nbsp;<em>methane capture&nbsp;</em>ini maka akan berefek sangat baik bagi kelangsungan lingkungan hidup karena dinilai mendukung gerakan&nbsp;<em>go-green.</em></p><p>Teknologi POME</p><p>Sejak digalakkannya metode pengelolaan POME di seluruh dunia, maka pengelolaan kolam terbuka yang merupakan cara lama perlahan mulai disingkirkan. Sebelum adanya teknik POME, emisi gas metana dengan bebas memuai hingga menyentuh atmosfer yang tentunya berbahaya karena atmosfer bisa menipis dan dalam kurun waktu tertentu bisa memengaruhi kelangsungan makhluk hidup di bumi. Teknologi POME berguna untuk sebuah pebisnis kelapa sawit yang memerhatikan lingkungan hidup di sekitarnya.</p><p>Teknologi Bioproduk</p><p>Kehadiran bioproduk juga merupakan berita baik dalam perkembangan industri kelapa sawit. Hal ini dibuktikan dengan hasil panen yang lebih maksimal jika tanaman menggunakan bioproduk dan pupuk organik yang juga baik untuk tanah dan tanaman itu sendiri. Seperti pupuk organik PT Propadu Konair Tarahubun (Plantation Key Technology/PKT) yang mengusung bahan-bahan non kimia untuk mengembangkan perkebunan dengan hasil panen yang sungguh maksimal. Kini bioproduk menjamin hasil buah yang banyak dengan kualitas daging buah terbaik yang bisa membuat minyak atau CPO berkualitas tinggi sesuai standar yang ada. Bioproduk adalah jawaban tepat untuk para pengelola industri sawit-sawit terkemuka.</p>', '2016-06-28', '21_Teknologi-yang-Menyelamatkan-Lingkungan.png', 'TEKNOLOGI TERBARU YANG ADA DI INDUSTRI KELAPA SAWIT', 'LATEST TECHNOLOGY AVAILABLE ON PALM OIL INDUSTRY', '<div>In a field of business, be it in agriculture and plantations as well as other areas in the world would require cutting-edge technology that would help berkembanganya''s diverse businesses to a higher level. Therefore, the palm oil industry also did not want to miss in applying the latest applied science that can help entrepreneurs and businessmen to run their businesses so that it runs more smoothly. Technology moves in various aspects. There are a waste treatment, there is also a reduction in gas emissions and others that include the production process in the plant''s oil-palm. What are the latest technology in the palm oil industry? Here are some of them.</div><div><br></div><div>Methane Capture</div><div><br></div><div>One technology that is already widely used by managers and businessmen palm oil is methane capture. Advanced methods this one is a fresh breeze for the palm oil industry businessmen who want a more friendly business lingkungan.Methane capture itself serves to reduce greenhouse gas emissions arising from the management of palm oil mills. Although to invest methane capture is not cheap and requires a nominal fee that is not small, but his presence was welcomed very well. It said if any existing plant in Indonesia using methane capture then this will have an effect is very good for environmental sustainability as it is considered to support the movement of go-green.</div><div><br></div><div>technology POME</div><div><br></div><div>Since digalakkannya POME management method in the world, therefore the management of the pool that is an old way slowly started to be removed. Before their POME techniques, emissions of methane gas freely expands up to touch the atmosphere that is certainly dangerous because it wears thin atmosphere and in a certain period of time can affect the survival of life on earth. POME technology useful for a palm oil businessman who watched on the surrounding environment.</div><div><br></div><div>bioproduct technology</div><div><br></div><div>Bioproduct presence is also good news in the development of the palm oil industry. This is evidenced by the maximum crop yields if the plant uses bioproduct and organic fertilizers are also good for the soil and the plant itself. Such as organic fertilizer PT Propadu Konair Tarahubun (Plantation Key Technology / PKT) that carries non-chemical materials to develop plantations with crops that really maximized. Now bioproduct fruit that guarantee results with the best quality fruit pulp that can make high-quality oil or CPO appropriate existing standards. Bioproduct is the right answer to the managers of industry-leading palm oil.</div>', 'Sawit'),
(22, 1, 'Hingga Tahun Depan, Industri Sawit Hadapi Tantangan Berat', '<strong>TEMPO.CO</strong>,&nbsp;<strong>Jakarta</strong>&nbsp;- Industri kelapa sawit hingga tahun depan masih menghadapi tantangan berat sebagai akibat dampak El Nino sejak 2015 sehingga akan memengaruhi kinerja perusahaan dan produksi.<br><br>"Untuk menekan kerugian akibat dampak alam tersebut perusahaan akan terus meningkatkan efisiensi serta utilitas dalam usahanya, agar indikator finansial memperlihatkan perkembangan dan kemajuan positif," kata Direktur Utama PT Sawit Sumbermas Sarana (SSMS) Rimbun Situmorang kepada pers, di Jakarta, Selasa, (28 Juni 2016)<br><br>Menurutnya, kesulitan yang dihadapi industri sawit akibat dampak El Nino serta penurunan harga CPO di pasar global bukan hanya dialami perseroan tapi juga semua industri serupa secara nasional.<br><br>Meskipun akan menghadapi tantangan berat, katanya, namun tanda-tanda perbaikan seperti dengan makin meningkatnya harga minyak kelapa sawit mentah (CPO) mulai menunjukkan tren positif.<br><br>Sekali pun harga CPO saat ini sudah semakin baik dalam beberapa bulan terakhir, dia menambahkan, penurunan harga komoditas tersebut masih akan berdampak pada kinerja perseroan tahun 2016, apalagi El Nino yang berlangsung sejak 2015 masih berlangsung dan diperkirakan masih akan berdampak hingga akhir 2017.<br><br>"Tahun lalu El Nino menyebabkan produksi kelapa sawit perseroan turun hingga 16 persen, dan kami memperkirakan hingga akhir 2016 produksi CPO perseroan bakal terkoreksi antara 15 hingga 20 persen," katanya.<br><br>Rimbun memperkirakan produksi minyak kelapa sawit akan membaik lagi pada 2017 atau 2018. Sedangkan harga CPO di pasar dunia pada April-Mei rata-rata mencapai 600 hingga 630 dolar AS per matrik ton.<br><br>Meskipun menghadapi kesulitan, katanya, perseroan masih bisa membagikan dividen tunai kepada pemegang saham sebesar Rp168,27 miliar atau 30 persen dari laba bersih perseroan tahun buku 2015.<br><br>Dia menyatakan, perseroan masih mampu melakukan pembagian saham di tengah kelesuan industri sawit disebabkan peningkatan kinerja perseroan yang mencatatkan saham di pasar modal sejak Desember 2013 terlihat signifikan.<br><br>Luas areal tanam perseroan saat ini mencapai 69.841 hektare, naik 105 persen dibandingkan 2014, sementara hingga akhir 2015 jumlah tandan buah segar (TBS) yang diproses di pabrik milik perseroan mencapai 1,35 juta ton yang menghasilkan 321.238 ton CPO.<br><br>Rata-rata usia tanaman sawit perseroan mencapai tujuh tahun dan sebagian besar tanaman akan masuk tahun puncak produksi dalam kurun waktu tiga hingga lima tahun mendatang.<br><br>Manajemen perseroan tahun ini telah mengalokasikan belanja modal (capex) sebesar Rp450 miliar, dan dalam tiga bulan pertama dana yang diambil dari kas terserap 20 persen yang digunakan untuk pemupukan dan penanaman pohon kelapa sawit.<br><br>ANTARA', '2016-06-29', '22_22507_620.jpg', 'Kelapa Sawit', 'Until next year, Oil Industry Face Serious Challenges', '<div>TEMPO.CO, Jakarta - The palm oil industry until next year still faces severe challenges as a result of the impact of El Nino since 2015 that will affect the company''s performance and production.</div><div><br></div><div>"To reduce losses due to the impact of natural company will continue to improve the efficiency and utility in business, so that the financial indicators show the development and positive progress," said President Director of PT Sawit Sumbermas Facility (SSMS) Rimbun Situmorang told the press in Jakarta, Tuesday (28 June 2016)</div><div><br></div><div>According to him, the difficulties facing the oil industry due to the impact of El Nino and the drop in CPO prices in the global market the company is not only experienced but also all similar industries nationwide.</div><div><br></div><div>Although it will present a challenge, he said, but signs of improvement as the ever increasing price of crude palm oil (CPO) started to show a positive trend.</div><div><br></div><div>Even if the price of CPO is now getting better in recent months, he added, the decline in commodity prices will still have an impact on the company''s performance in 2016, especially El Nino, which lasted from 2015 is still in progress and expected to have an impact until the end of 2017.</div><div><br></div><div>"Last year El Nino led to the company''s production of palm oil decreased by 16 percent, and we expect until the end of 2016, the company''s CPO production will be corrected between 15 to 20 percent," he said.</div><div><br></div><div>Lush palm oil production estimates will improve again in 2017 or 2018. While the price of CPO in the world market in April-May average of 600 to 630 dollars per matric ton.</div><div><br></div><div>Despite facing difficulties, he said, the company is still able to distribute cash dividends to shareholders amounting to Rp168,27 billion, or 30 percent of the company''s net profit in 2015 fiscal year.</div><div><br></div><div>He said the company is still able to carry out distribution of shares in the oil industry downturn due to the increased performance of the company''s listed shares in the stock market since December 2013 was significant.</div><div><br></div><div>The planting area the company currently reaches 69 841 hectares, up 105 percent compared to 2014, while until the end of 2015 the amount of fresh fruit bunches (FFB) processed at the plant owned by the company reached 1.35 million tons, which produces 321 238 tons of CPO.</div><div><br></div><div>The average age of plantations of the company reached seven years and most of the plants will enter the peak years of production over the next three to five years.</div><div><br></div><div>Management of the company this year has allocated capital expenditure (capex) of Rp 450 billion, and in the first three months of the funds taken from the cash absorbed 20 percent are used for fertilizing and planting oil palm trees.</div><div><br></div><div>BETWEEN</div>', 'Palm Oil'),
(23, 1, 'Perkebunan kelapa sawit. REUTERS/Roni Bintang', '<strong>TEMPO.CO</strong>,&nbsp;<strong>Palangkaraya -&nbsp;</strong>Ratusan warga Desa Tumbang Kalang, Kecamatan Antang Kalang, Kabupaten Kotawaringin Timur, Kalimantan Tengah memprotes perusahaan kelapa sawit PT Bangkitgiat Usaha Mandiri&nbsp; karena dianggap merusak situs budaya mereka. Situs budaya itu berupa hutan adat Bukit Talali yang dubah jadi kebun kelapa sawit.&nbsp;<br><br>Bukit Talali dikeramatkan oleh pemeluk agama Hindu Kaharingan (agama asli suku Dayak). Sebelumnya Bulit Talali merupakan hutan lebat seluas 10 hektare yang didalamnya terdapat<em>sandung</em>&nbsp;(tempat menaruh tulang belulang leluhur). Namun kawasan bukit itu diubah menjadi kebun sawit dan hanya menyisakan&nbsp;<em>sandung</em>&nbsp;seluas 15 meter x 15 meter.<br><br>Menurut Ketua Dewan Adat Dayak Kecamatan Antang Kalang, Hardy, perusakan situs budaya pemeluk Hindu kaharingan telah dilaporkan ke aparat berwajib namun tidak direspons.<br><br>"Perusahaan pernah berjanji&nbsp; memberi program plasma kepada 488&nbsp; masyarakat Tumbang Kalang namun tidak terealisasi. PT Bangkitgiat&nbsp; juga berjanji memberdayakannya penduduk lokal bekerja diperusahan," ujar Hardy, Rabu kemarin.<br><br>Sebelumnya, Selasa, 26 April 2916, ratusan warga Tumbang Kalang berunjuk rasa ke kantor&nbsp; Dewan Perwakilan Rakyat Daerah&nbsp; Kotawaringin Timur. Mereka menuntut perusahaan yang telah beroperasi sejak 1996 itu menepati janjinya. Warga juga menuntut agar pemerintah perduli pada rusaknya hutan adat.&nbsp;<br><br>Heri Gunawan Lindu, salah satu&nbsp; pimpinan PT Bangkitgiat&nbsp; menolak&nbsp; menjawab saat dikonfirmasi. "Saya tidak mengenal Anda, jadi lain kali saja saya menjawabnya," ucapnya.<br><br>Ketua DPRD Kabupaten Kotawaringin Timur John Krisli menuturkan masih terdapat sengketa antara masyarakat Tumbang Kalang dengan PT Bangkitgiat dalam berbagai hal, mulai soal dugaan pengerusakan hutan adat hingga program plasma kelapa sawit yang tak dijalankan perusahaan.<br><br>Ihwal masalah hutan keramat, ucap John,&nbsp; perusahaan mengatakan bahwa dari lahan 10 hektare hanya 6 hektare yang digarap untuk&nbsp; kebun sawit. "Dari bukti yang ditunjukan perusahaan kepada kami,&nbsp; tanah&nbsp; di bukit itu memang dibeli oleh perusahaan," tutur John, Kamis, 28 April 2016.<br><br>Soal program plasma, pihak perusahaan sudah menyatakan siap menyalurkan. Hanya saja saat ini masih terkendala masalah pembebasan lahan. "Karena dari total 440 hektare lahan yang akan digunakan untuk plasma baru 109 hektare yang telah siap. Kendalanya, masyarakat meminta ganti rugi atas tanah mereka yang akan dijadikan program olasam. Padahal program itu untuk masyarakat juga," ujarnya.<br><br><strong>KARANA WIJAYA W.</strong>', '2016-06-29', '23_161548_620.jpg', 'Perkebunan kelapa sawit. REUTERS/Roni Bintang', 'Oil palm plantation. REUTERS / Roni Bintang', '<div>TEMPO.CO, Palangkaraya - Hundreds of Tumbang Kalang, District Antang Kalang, Kotawaringin East, Central Kalimantan protesting palm oil company PT Usaha Mandiri Bangkitgiat because they undermine their cultural sites. The cultural sites such as indigenous forest hill so dubah Talali that oil palm plantations.</div><div><br></div><div>Talali hill sacred by Hindus Kaharingan (Dayak indigenous religion). Previous Bulit Talali a dense forest of 10 hectares which includes terdapatsandung (whereupon the bones of ancestors). But the hill area was converted into oil palm plantations, leaving only stumbling measuring 15 meters x 15 meters.</div><div><br></div><div>According to the Chairman of the District Dayak Customary Council Antang Kalang, Hardy, destruction of cultural sites Kaharingan Hindus have been reported to the authorities but the authorities did not respond.</div><div><br></div><div>"The company had promised to give plasma program to 488 people tumbles Kalang but not realized. PT Bangkitgiat also promised to empower local people to work diperusahan," Hardy said Wednesday.</div><div><br></div><div>Previously, Tuesday, April 26, 2916, hundreds of people rallied Kalang tumbles to the office of the Regional Representatives Council Kotawaringin East. They demanded that the company has been operating since 1996 to keep its promise. Residents also demanded that the government concerned at the destruction of indigenous forests.</div><div><br></div><div>Heri Gunawan Lindu, one of the leaders of the PT Bangkitgiat refused to answer when confirmed. "I do not know you, so another time I answer that," he said.</div><div><br></div><div>Chairman of the Legislative East Kotawaringin John Krisli said there is still a dispute between the people of Tumbang Kalang with PT Bangkitgiat in various ways, ranging about the alleged destruction of indigenous forests to oil palm plasma program that does not run the company.</div><div><br></div><div>On the issue of sacred forests, said John, the company said that 10 hectares of land under cultivation only 6 hectares for oil palm plantations. "From the evidence shown to us by the company, the soil on the hill was bought by the company," said John, Thursday, April 28, 2016.</div><div><br></div><div>Problem plasma program, the company has been declared ready to distribute. Only this time still hampered by land acquisition problems. "Because of a total of 440 hectares of land that will be used for new plasma 109 hectares that have been set. The obstacles, the people demanded compensation for their land to be used as olasam program. Though the program for the community as well," he said.</div><div><br></div><div>Karana WIJAYA W.</div>', 'Illustration Palm Oil'),
(24, 1, 'LSM Dituduh Hancurkan Pasar Sawit Indonesia  ', '<strong>TEMPO.CO</strong>,&nbsp;<strong>Bengkulu</strong>&nbsp;- Gubernur Bengkulu Ridwan Mukti menuding para lembaga swadaya masyarakat (LSM) yang kerap mengkritik keberadaan perusahaan perkebunan sawit adalah pengganggu.<br><br>Gangguan tersebut berupa berbagai pernyataan negatif terkait perkebunan sawit. Sehingga ia meminta perusahaan perkebunan sawit tidak terusik akan hal tersebut.<br><br>"Isu itu bahkan diekspos dunia internasional. Tujuannya agar sawit di Indonesia hancur," kata Gubernur Bengkulu Ridwan Mukti, Jumat, 29 April 2016.<br><br>Padahal, menurut dia, yang merambah gambut itu rata-rata adalah perusahaan asing dalam negeri sehingga jangan tertipu. Sebab, ini adalah sentimen pasar yang dimainkan dunia, yang sekarang sedang bersaing untuk membuat komoditas substitusi sawit di dunia.<br><br>Ridwan Mukti justru melihat komoditas sawit adalah kekuatan nasional. Seharusnya, menurut dia, semua elemen masyarakat, termasuk LSM, menjaga komoditas tersebut untuk dapat memajukan industri sawit di Bengkulu. "Sawit itu kekuatan nasional. Komoditas ini adalah berkah yang dapat tumbuh dan berproduksi dengan baik di Indonesia. Ini harus kita jaga," ujarnya.<br><br>Ridwan menjelaskan, isu utama yang kerap dijadikan komoditas oleh LSM terkait isu perambahan hutan yang mengakibatkan lahan gambut habis dibabat untuk ditanami sawit. Isu ini, kata dia, juga menjadi isu internasional yang disengaja sebagai propaganda agar pasar sawit menjadi buruk.<br><br>Menurut Ridwan, propaganda itu dilakukan karena sawit mengancam industri komoditas lain. Salah satunya industri minyak nabati dari bunga matahari di Eropa yang sebagian besar gulung tikar karena kalah bersaing dengan sawit.<br><br>Karena itu, Ridwan Mukti meyakinkan para pengusaha sawit jika pemerintahan yang dia pimpin akan menjaga kemitraan yang baik dengan perusahaan perkebunan sawit di Provinsi Bengkulu.<br><br>Salah satu penggiat lingkungan di Bengkulu, Direktur Genesis Barlian menyatakan jika kritikan yang selama ini mereka sampaikan sesuai dengan fakta yang selama ini terjadi di masyarakat. "Kita juga tidak sembarangan mengkritik, tapi sesuai dengan data yang kita dapat di masyarakat," kata Barlian menanggapi pernyataan Ridwan Mukti.<br><br><strong>PHESI ESTER JULIKAWATI</strong>', '2016-06-29', '24_476070_620.jpg', 'Sejumlah massa yang tergabung dalam Aliansi Masyarakat Adat Nusantara membentangkan spanduk berisi tuntutan saat melakukan aksi damai di kawasan Bunderan Hotel Indonesia, Jakarta, 24 Januari 2016. Beb', 'Destroy Accused NGO Sawit Indonesia Market', '<div>TEMPO.CO, Bengkulu - Bengkulu governor Ridwan Mukti accused the non-governmental organizations (NGOs) who often criticized the presence of oil palm plantation company is a bully.</div><div><br></div><div>The disorder in the form of various negative statements related to oil palm plantations. So he asked the oil palm plantation company does not bother about it.</div><div><br></div><div>"The issue was even exposed internationally. The goal is that the oil in Indonesia were destroyed," said Governor of Bengkulu Ridwan Mukti, Friday, April 29, 2016.</div><div><br></div><div>In fact, according to him, that penetrated the peat was on average is a foreign company in the country, so do not be fooled. Because, this is a sentiment that is played the world, who are now competing to make a substitution commodity of oil in the world.</div><div><br></div><div>Ridwan Mukti actually see is the power of national oil commodities. Supposedly, according to him, all the elements of society, including NGOs, keeping the commodity in order to promote the oil industry in Bengkulu. "Oil was a national force. This commodity is a blessing that can grow and produce well in Indonesia. It should we keep," he said.</div><div><br></div><div>Ridwan explained, the main issue is often used as a commodity by NGOs related to issues of encroachment that resulted in peat cut down to plant oil palms. This issue, he said, is also an international issue that is intentional as the propaganda that the oil market for the worse.</div><div><br></div><div>According to Ridwan, propaganda was done because the oil industry threaten other commodities. One of them is the edible oil industry of sunflower in Europe were largely out of business due to competition from oil.</div><div><br></div><div>Therefore, Ridwan Mukti convince employers oil if the government he leads will maintain a good partnership with the oil palm plantation company in the province of Bengkulu.</div><div><br></div><div>One environmental activist in Bengkulu, Director of Genesis Barlian states if criticism which they convey in accordance with the fact that has been happening in the community. "We also do not carelessly criticize, but according to the data that we can in the community," said Ridwan statement Barlian respond Mukti.</div><div><br></div><div>ESTER PHESI JULIKAWATI</div>', 'A number of mass incorporated in the Indigenous Peoples Alliance of the Archipelago unfurled a banner containing the current demands of peaceful protest in the Roundabout Hotel Indonesia, Jakarta, Jan'),
(25, 2, 'GENERASI 2 BIODIESEL GUNAKAN LIMBAH KELAPA SAWIT', '<p><strong><em>Upaya pengurangan ketergantungan terhadap penggunaan bahan bakar fosil perlu diimbangi dengan peningkatan pengembangan energi baru terbarukan seperti Bahan Bakar Nabati (BBN). Berkaitan dengan pengembangan teknologi biomassa tersebut, BPPT telah berhasil mengembangkan biodiesel generasi 1, 1,5 dan 2. Biodiesel dipilih karena merupakan alternatif baru mengganti BBM yang lebih ramah lingkungan, mengurangi polusi dan dampak polusi.</em></strong></p><p>Pengembangan teknologi biodiesel BPPT berawal dari biodiesel generasi 1 sejak tahun 2000, yang dibuat dengan mengkonversi minyak nabati menjadi menjadi biodiesel dengan&nbsp;<em>by product gliserol</em>&nbsp;yang pabriknya sudah diaplikasikan di sejumlah lokasi seperti Pulau Jawa, Kalimantan dan Sumatera. Sejauh ini kami telah berhasil mengembangkan biodiesel yang berasal dari minyak kelapa sawit sebanyak 20.000 kiloliter per tahun. Untuk bisa mengkomersialisasikannya sebagai percontohan hingga menghasilkan lebih dari 40.000 kiloliter per tahun butuh dukungan pemerintah dan swasta. Tantangannya ada di sisi industrialisasi, teknologi karya anak bangsa sudah bagus, hanya ada keterbatasan dukungan, ungkap Direktur Pusat Teknologi Pengembangan Sumberdaya Energi (PTPSE) BPPT, MAM Oktaufik pada acara Lokakarya II Pengembangan dan Perekayasaan Teknologi Biodiesel 2011, di Jakarta, Rabu (16/11).</p><p><a target="_blank" rel="nofollow" href="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%204.jpg"><img width="149" alt="" src="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%204.jpg" height="104"></a><a target="_blank" rel="nofollow" href="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%201.jpg"><img width="153" alt="" src="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%201.jpg" height="102"></a>Selain biodiesel generasi 1, lanjut Oktaufik, BPPT juga telah mengembangkan biodiesel melalui jalur&nbsp;<em>hydrotreating</em>&nbsp;yang menjadi bagian dari teknologi biodiesel generasi 1,5 dan generasi 2 yang lebih mengarah pada pemanfaatan biomassa melalui berbagai proses seperti liquifaksi dan gasifikasi untuk menghasilkan produk seperti bahan bakar diesel, kerosin dan premium.</p><p>Menambah pernyataan Oktaufik, Kepala Balai Rekayasa Desain dan Sistem Teknologi (BRDST) BPPT, Adiarso mengatakan bahwa alasan pengembangan biodiesel generasi 2 karena rendahnya harga jual biodiesel generasi 1 dibanding bahan bakunya, minyak kelapa sawit. "Harga minyak sawit mentah (CPO), per liternya mencapai Rp 8.000-Rp 9.000 per liter sementara biodiesel dijual dengan harga Rp 4.500. Karena kondisi ini menyebabkan pengusaha sawit lebih memilih ekspor mentah, ujarnya.<br><br>"Biodiesel generasi II akan menggunakan limbah sawit seperti tandan buah kosong sawit, pelepah, limbah kayu dan limbah pertanian lainnya seperti sekam padi. Selain itu keunggulan generasi kedua, teknologi katalis yang dipakai bisa menghasilkan beragam jenis produk seperti solar, bensin, kerosin (minyak tanah) dan tinggal memilih jenis mana yang lebih dominan. Dengan demikian, diharapkan tidak ada lagi hambatan mengembangkan biodiesel," terangnya.</p><p>BPPT berperan secara signifikan dalam proses pembuatan kebijakan energi nasional melalui kompetensinya di bidang riset dan teknologi. Peran BPPT sangat diperlukan untuk bisa memberikan solusi teknologi melalui pengembangan teknologi proses, produk2 USE WASTE GENERATION BIODIESEL PALM OIL yang sesuai dan analisa kebijakan, tutup Oktaufik.</p><p>Sebelumnya telah dilakukan terlebih dahulu Lokakarya I Pengembangan dan Perekayasaan Teknologi Biodiesel tahun 2010 yang menitikberatkan pembahasan pada kebijakan biodiesel nasional, tinjauan proses produksi biodiesel generasi 1 dan oengembangan kontrol kualitas hingga tujuan operasional oleh para praktisi dan pihak swasta. Sementara dalam Lokakarya II kali ini, dibahas lebih mendetail mengenai rekayasa teknologi produksi biodiesel dari generasi 1 hingga generasi 2. Beberapa pembicara yang hadir berasal dari kalangan praktisi, industri, peneliti dan akademisi. Diharapkan melalui lokakarya tersebut berbagai ilmu dan teknologi produksi biodiesel akan berkembang dan berkolaborasi menciptakan suatu teknologi tepat guna untuk menyelesaikan masalah energi nasional. &nbsp;<em>(TSYRA/humas)</em>&nbsp;</p>', '2016-06-29', '25_lokakaryabiodiesel_2.jpg', 'GENERASI 2 BIODIESEL GUNAKAN LIMBAH KELAPA SAWIT', '2 USE WASTE GENERATION BIODIESEL PALM OIL', '<p><strong><em>Upaya pengurangan ketergantungan terhadap penggunaan bahan bakar fosil perlu diimbangi dengan peningkatan pengembangan energi baru terbarukan seperti Bahan Bakar Nabati (BBN). Berkaitan dengan pengembangan teknologi biomassa tersebut, BPPT telah berhasil mengembangkan biodiesel generasi 1, 1,5 dan 2. Biodiesel dipilih karena merupakan alternatif baru mengganti BBM yang lebih ramah lingkungan, mengurangi polusi dan dampak polusi.</em></strong></p><p>Pengembangan teknologi biodiesel BPPT berawal dari biodiesel generasi 1 sejak tahun 2000, yang dibuat dengan mengkonversi minyak nabati menjadi menjadi biodiesel dengan&nbsp;<em>by product gliserol</em>&nbsp;yang pabriknya sudah diaplikasikan di sejumlah lokasi seperti Pulau Jawa, Kalimantan dan Sumatera. Sejauh ini kami telah berhasil mengembangkan biodiesel yang berasal dari minyak kelapa sawit sebanyak 20.000 kiloliter per tahun. Untuk bisa mengkomersialisasikannya sebagai percontohan hingga menghasilkan lebih dari 40.000 kiloliter per tahun butuh dukungan pemerintah dan swasta. Tantangannya ada di sisi industrialisasi, teknologi karya anak bangsa sudah bagus, hanya ada keterbatasan dukungan, ungkap Direktur Pusat Teknologi Pengembangan Sumberdaya Energi (PTPSE) BPPT, MAM Oktaufik pada acara Lokakarya II Pengembangan dan Perekayasaan Teknologi Biodiesel 2011, di Jakarta, Rabu (16/11).</p><p><a target="_blank" rel="nofollow" href="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%204.jpg"><img width="149" alt="" src="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%204.jpg" height="104"></a><a target="_blank" rel="nofollow" href="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%201.jpg"><img width="153" alt="" src="http://www.bppt.go.id/images/stories/lokakaryabiodiesel%201.jpg" height="102"></a>Selain biodiesel generasi 1, lanjut Oktaufik, BPPT juga telah mengembangkan biodiesel melalui jalur&nbsp;<em>hydrotreating</em>&nbsp;yang menjadi bagian dari teknologi biodiesel generasi 1,5 dan generasi 2 yang lebih mengarah pada pemanfaatan biomassa melalui berbagai proses seperti liquifaksi dan gasifikasi untuk menghasilkan produk seperti bahan bakar diesel, kerosin dan premium.</p><p>Menambah pernyataan Oktaufik, Kepala Balai Rekayasa Desain dan Sistem Teknologi (BRDST) BPPT, Adiarso mengatakan bahwa alasan pengembangan biodiesel generasi 2 karena rendahnya harga jual biodiesel generasi 1 dibanding bahan bakunya, minyak kelapa sawit. "Harga minyak sawit mentah (CPO), per liternya mencapai Rp 8.000-Rp 9.000 per liter sementara biodiesel dijual dengan harga Rp 4.500. Karena kondisi ini menyebabkan pengusaha sawit lebih memilih ekspor mentah, ujarnya.<br><br>"Biodiesel generasi II akan menggunakan limbah sawit seperti tandan buah kosong sawit, pelepah, limbah kayu dan limbah pertanian lainnya seperti sekam padi. Selain itu keunggulan generasi kedua, teknologi katalis yang dipakai bisa menghasilkan beragam jenis produk seperti solar, bensin, kerosin (minyak tanah) dan tinggal memilih jenis mana yang lebih dominan. Dengan demikian, diharapkan tidak ada lagi hambatan mengembangkan biodiesel," terangnya.</p><p>BPPT berperan secara signifikan dalam proses pembuatan kebijakan energi nasional melalui kompetensinya di bidang riset dan teknologi. Peran BPPT sangat diperlukan untuk bisa memberikan solusi teknologi melalui pengembangan teknologi proses, produk2 USE WASTE GENERATION BIODIESEL PALM OIL yang sesuai dan analisa kebijakan, tutup Oktaufik.</p><p>Sebelumnya telah dilakukan terlebih dahulu Lokakarya I Pengembangan dan Perekayasaan Teknologi Biodiesel tahun 2010 yang menitikberatkan pembahasan pada kebijakan biodiesel nasional, tinjauan proses produksi biodiesel generasi 1 dan oengembangan kontrol kualitas hingga tujuan operasional oleh para praktisi dan pihak swasta. Sementara dalam Lokakarya II kali ini, dibahas lebih mendetail mengenai rekayasa teknologi produksi biodiesel dari generasi 1 hingga generasi 2. Beberapa pembicara yang hadir berasal dari kalangan praktisi, industri, peneliti dan akademisi. Diharapkan melalui lokakarya tersebut berbagai ilmu dan teknologi produksi biodiesel akan berkembang dan berkolaborasi menciptakan suatu teknologi tepat guna untuk menyelesaikan masalah energi nasional. &nbsp;<em>(TSYRA/humas)</em>&nbsp;</p>', '2 USE WASTE GENERATION BIODIESEL PALM OIL'),
(26, 3, 'Mandiri Layani Pembayaran Elekronik Pungutan Kelapa Sawit', '<span><div><br></div><span>MedanBisnis - Jakarta. Bank&nbsp;<a target="_blank" rel="nofollow" href="http://www.medanbisnisdaily.com/news/tag/mandiri/">Mandiri</a>&nbsp;akan menambah layanan untuk pembayaran pungutan ekspor industri kelapa sawit (crude palm oil/CPO) melalui jaringan elektronik di Anjungan Tunai<a target="_blank" rel="nofollow" href="http://www.medanbisnisdaily.com/news/tag/mandiri/">Mandiri</a>&nbsp;(ATM), perbankan daring serta layanan pengelolaan kas.<br></span><span>Wakil Direktur Utama Bank Mandiri Sulaiman A Arianto, dalam keterangan tertulis di Jakarta, Kamis (26/5), mengatakan, melalui pembayaran eletronik, Badan Pengelola Dana Pungutan Kelapa Sawit (BPDPKS) akan dimudahkan untuk verifikasi data.<br><br>Sulaiman mengatakan, layanan elektronik (e-channel) ini juga akan membantu kinerja para pengusaha dan seluruh pemangku kepentingan industri kelapa sawit.<br>"Pengembangan alat pembayaran ini agar kami mampu memberikan nilai tambah bagi para eksportir serta pemerintah sebagai regulator di sektor industri ini," kata Sulaiman yang disampaikan di sela-sela peluncuran Layanan Elektronik<br>Pembayaran Pungutan Dana Sawit oleh perbankan. Sebelumnya, Mandiri melayani pembayaran pungutan ekspor CPO melalui sistem manual. Pada 2015, pembayaran pungutan ekspor CPO secara manual itu mencapai Rp 5,2 triliun atau sekitar 75% dari total pungutan ekspor CPO di perbankan. Selain melalui sistem pembayaran, Mandiri juga telah menyalurkan pembiayaan ke industri CPO sebesar Rp 58,32 triliun hingga Maret 2016.<br><br>Rinciannya, pembiayaan untuk pengembangan perkebunan kelapa sawit (on farm) mencapai Rp 49,15 triliun. Sedangkan pembiayaan pada sektor "off farm", yang meliputi produk turunan kelapa sawit mencapai Rp 9,16 triliun. (ant)</span></span>', '2016-06-29', '26_AVQr1YVk.jpg', 'Bank Mandiri', 'Serve standalone Electronic Payment Levy Palm Oil', '<div>MedanBisnis - Jakarta. Bank Mandiri will add the service to payment of export levies palm oil (crude palm oil / CPO) through electronic networks in Pavilion TunaiMandiri (ATM), online banking and cash management services.</div><div>Vice President Director of Bank Mandiri Sulaiman A Arianto, in a written statement in Jakarta, Thursday (26/5), said that, through electronic payment, Levy Fund Management Board (oil palm BPDPKS) will be permitted to verify the data.</div><div><br></div><div>Sulaiman said electronic services (e-channel) is also going to help the performance of businesses and the entire palm oil industry stakeholders.</div><div>"The development of means of payment so that we can provide added value to exporters and government as regulator in this sector," said Sulaiman delivered on the sidelines of the launch of the Electronic Service</div><div>Oil Fund levy payments by banks. Previously, Mandiri serves CPO export tax payments through the system manually. In 2015, payments may be manually CPO exports reached Rp 5.2 trillion, or about 75% of total CPO export levy on banks. In addition through the payment system, Mandiri has disbursed loans to the palm oil industry to Rp 58.32 trillion as of March 2016.</div><div><br></div><div>In detail, the financing for the development of oil palm plantations (on farm) reached Rp 49.15 trillion. While the financing of the sector "off farm", which includes palm oil derivative products reached Rp 9.16 trillion. (Ant)</div>', 'Bank Mandiri');
INSERT INTO `informasi_m` (`id_informasi`, `id_kategori`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `judul_english`, `content_english`, `caption_picture`) VALUES
(27, 4, 'KERJASAMA KELAPA SAWIT INDONESIA-MALAYSIA SIAPA LEBIH DIUNTUNGKAN', '<p><em>AWAL OKTOBER 2015 LALU, INDONESIA DAN MALAYSIA KEMBALI BERSEPAKAT BERSAMA-SAMA MEMPERJUANGKAN INDUSTRI KELAPA SAWIT. HASILNYA, SEDERET KEPENTINGAN KEDUA NEGARA DISINERGIKAN. APAKAH INDONESIA DIUNTUNGKAN?</em></p><p>Lantaran belum ada tanda-tandanya harga minyak sawit kembali naik semenjak pertengahan 2014 silam, kedua negara produsen minyak sawit (CPO) dunia pun bersepakat untuk bekerjasama.</p><p>Awal Oktober 2015 silam, delegasi Indonesia yang diwakili Menteri Koordinator Bidang Kemaritiman dan Sumber Daya, Rizal Ramli bertemu dengan&nbsp; Menteri Industri Perkebunan dan Komoditas, Datuk Amar Douglas Uggah Embas, membahas kesepakatan dua negara terkait industri kelapa sawit.</p><p>Dari siaran pers yang diterima&nbsp;<em>InfoSAWIT</em>, pertemuan itu merupakan tindak lanjut dari pertemuan yang diadakan pada 27 Agustus 2015 di Kuala Lumpur seperti yang telah diarahkan oleh kedua Kepala Pemerintahan.</p><p>Kedua negara pun bersepakat, bakal membentuk Dewan Produsen Minyak Sawit (CPOPC), menyelaraskan standar Indonesian Sustainable Palm Oil (ISPO) dengan Malaysian Sustainable Palm Oil (MSPO). Melakukan promosi bersama minyak sawit berkelanjutan.</p><p>Kemudian membentuk zona ekonomi hijau serta membentuk komite kerja, yang terdiri dari pejabat senior dan pemimpin asosiasi dari kedua negara, guna membuat&nbsp;<em>roadmap</em>&nbsp;dan implementasinya.</p><p>Tentu saja kerjasama ini diharapkan sebagai langkah strategis dan bakal menguntungkan Indonesia.&nbsp;<em>(Baca: InfoSAWIT edisi Juli 2015, Negara Produsen Minyak Sawit Butuh Bersepakat)</em></p><p>Namun apakah demikian benar adanya? Sebab jika menilik sebelumnya, kerjasama kedua negara terkait sawit telah dilakukan semenjak 2008 silam, kala itu Indonesia-Malaysia melakukan kerjasama menangkal tudingan miring sawit.</p><p>Diawali dengan membuat kegiatan World Sustainable Palm Oil Conference di London pada September 2008. Dimana kegiatan ini diikuti dua menteri wakil masing-masing negara, yang diakhiri dengan joint press conference.</p><p>Sayangnya kerjasama ini sempat tersendat dan tidak ada kabar selanjutnya, lantas kembali muncul pada awal Maret 2010 yang dimana kedua negara sepakat menandatangani nota kesepahaman (Mou), yang mengamanatkan pembuatan gugus tugas yang bekerja untuk menyuarakan kepentingan bersama, bahwa produsen sawit telah melakukan praktik terbaik dalam pengembangan industri sawit berkelanjutan.</p><p>Dua tahun berikutnya &nbsp;. . .</p>', '2016-06-29', '27_kerjasama-kelapa-sawit-indonesia-malaysia-siapa-lebih-diuntungkan.jpg', 'DOK. SETKAB RI', 'PALM PARTNERSHIP INDONESIA-MALAYSIA WHO ARE MORE BENEFITS', '<div>THE BEGINNING OF OCTOBER 2015, INDONESIA AND MALAYSIA agreed BACK TOGETHER STRIVING PALM OIL INDUSTRY. OUTCOME, a series INTERESTS BOTH COUNTRIES synergized. INDONESIA WHAT BENEFITS?</div><div><br></div><div>Because there are no signs of palm oil price rise since mid-2014 back in the past, both countries producers of palm oil (CPO) also agreed to cooperate.</div><div><br></div><div>Beginning in October 2015 ago, the Indonesian delegation is represented by the Coordinating Minister for maritime and Resources, Rizal Ramli met with the Minister of Plantation Industries and Commodities, Datuk Amar douglas uggah embas, discussing bilateral agreement related to the palm oil industry.</div><div><br></div><div>From a press release received InfoSAWIT, the meeting was a follow up of a meeting held on August 27, 2015 in Kuala Lumpur as it has been directed by the Head of Government.</div><div><br></div><div>The two countries also agreed, will form the Council of Palm Oil Producers (CPOPC), harmonize standards Indonesian Sustainable Palm Oil (ISPO) with Malaysian Sustainable Palm Oil (MSPO). Conducting joint promotion of sustainable palm oil.</div><div><br></div><div>Then form a green economic zone and form a working committee, which is composed of senior officials and association leaders from both countries, in order to create a roadmap and implementation.</div><div><br></div><div>Of course, this cooperation as a strategic move and would benefit Indonesia. (Read: InfoSAWIT edition of July 2015, the Palm Oil Producing Countries in Need in the agreement)</div><div><br></div><div>But if so true? For if you view the previous cooperation between the two countries related to oil have been conducted since 2008 ago, when the Indonesia-Malaysia cooperation to ward off palm oblique accusations.</div><div><br></div><div>Beginning with making activities of the World Sustainable Palm Oil Conference in London in September 2008. Where the activity was followed two deputy ministers of each country, which ended with a joint press conference.</div><div><br></div><div>Unfortunately this cooperation had faltered and there is no further news, then re-emerged in early March 2010 in which the two countries agreed to sign a memorandum of understanding (MoU), which mandates the manufacture of a task force working to voice the common interest, that the oil producers have done best practices the development of a sustainable palm oil industry.</div><div><br></div><div>The next two years. , ,</div>', 'DOK. SETKAB RI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_m`
--

CREATE TABLE IF NOT EXISTS `kategori_m` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `kategori_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori_m`
--

INSERT INTO `kategori_m` (`id_kategori`, `kategori`, `kategori_english`) VALUES
(1, 'Permasalahan Sawit Nasional', 'National Oil Issues'),
(2, 'Perkembangan Teknologi dan Industri\r\n', 'Technology and Industry Developments'),
(3, 'Keuangan dan Perbankan\r\n', 'Finance and Banking'),
(4, 'Kerjasama dan Partnership', 'Cooperation and Partnership');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katharga_m`
--

CREATE TABLE IF NOT EXISTS `katharga_m` (
`id_katharga` int(11) NOT NULL,
  `katharga` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `katharga_m`
--

INSERT INTO `katharga_m` (`id_katharga`, `katharga`) VALUES
(1, 'domestik'),
(2, 'ekspor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_m`
--

CREATE TABLE IF NOT EXISTS `kontak_m` (
`id_kontak` int(11) unsigned NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak_m`
--

INSERT INTO `kontak_m` (`id_kontak`, `email`, `alamat`, `telp`, `fax`, `website`) VALUES
(1, 'dewan.sawit@gmail.com', 'Pusat Bisnis Thamrin City Lt.7 No.729-730\r\nJl. Thamrin Boulevard\r\nJakarta Pusat 10230\r\nIndonesia', '+62 21 29625788', '+62 21 29625789', 'http://www.dmsi.or.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo_sosmed_m`
--

CREATE TABLE IF NOT EXISTS `logo_sosmed_m` (
`id_logo` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `logo_sosmed_m`
--

INSERT INTO `logo_sosmed_m` (`id_logo`, `logo`) VALUES
(1, 'fa fa-facebook'),
(2, 'fa fa-twitter'),
(3, 'fa fa-linkedin-square');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_m`
--

CREATE TABLE IF NOT EXISTS `log_m` (
`id_log` bigint(20) unsigned NOT NULL,
  `nama_data` varchar(100) DEFAULT NULL,
  `aksi` enum('add','edit','delete','upload') DEFAULT NULL,
  `id_instansi` int(11) DEFAULT NULL,
  `id_data` varchar(200) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_m`
--

INSERT INTO `log_m` (`id_log`, `nama_data`, `aksi`, `id_instansi`, `id_data`, `id_user`, `nama_user`, `tanggal`, `keterangan`) VALUES
(1, 'berita', 'add', NULL, '9', 1, 'Super Administrator', '2016-05-31 02:25:47', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : ab;'),
(2, 'berita', 'delete', NULL, '9', 1, 'Super Administrator', '2016-05-31 02:25:59', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : ;'),
(3, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-05-31 09:14:41', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : a;'),
(4, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-05-31 09:16:12', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : a;'),
(5, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-05-31 09:29:03', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : a;'),
(6, 'informasi', 'add', NULL, '11', 1, 'Super Administrator', '2016-05-31 10:33:02', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : Amazing post with all the goodies;'),
(7, 'informasi', 'add', NULL, '12', 1, 'Super Administrator', '2016-05-31 11:10:46', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : Amazing post with all the goodies;'),
(8, 'berita', 'add', NULL, '9', 1, 'Super Administrator', '2016-05-31 14:24:20', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : Lorem ipsum;'),
(9, 'berita', 'add', NULL, '10', 1, 'Super Administrator', '2016-05-31 15:38:39', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : a;'),
(10, 'berita', 'add', NULL, '4', 1, 'Super Administrator', '2016-05-31 15:40:24', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 4; Nama Judul : b;'),
(11, 'berita', 'add', NULL, '5', 1, 'Super Administrator', '2016-05-31 15:41:41', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 5; Nama Judul : c;'),
(12, 'berita', 'add', NULL, '6', 1, 'Super Administrator', '2016-05-31 15:42:57', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 6; Nama Judul : e;'),
(13, 'berita', 'add', NULL, '7', 1, 'Super Administrator', '2016-05-31 15:55:35', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : g;'),
(14, 'berita', 'add', NULL, '11', 1, 'Super Administrator', '2016-05-31 15:56:49', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : g;'),
(15, 'berita', 'add', NULL, '8', 1, 'Super Administrator', '2016-05-31 15:59:12', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : a;'),
(16, 'berita', 'delete', NULL, '1', 1, 'Super Administrator', '2016-05-31 16:17:42', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 1; Nama Judul : a;'),
(17, 'berita', 'delete', NULL, '2', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 2; Nama Judul : a;'),
(18, 'berita', 'delete', NULL, '3', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 3; Nama Judul : b;'),
(19, 'berita', 'delete', NULL, '4', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 4; Nama Judul : b;'),
(20, 'berita', 'delete', NULL, '5', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 5; Nama Judul : c;'),
(21, 'berita', 'delete', NULL, '6', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 6; Nama Judul : e;'),
(22, 'berita', 'delete', NULL, '7', 1, 'Super Administrator', '2016-05-31 16:17:54', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : g;'),
(23, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-05-31 17:01:13', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ab;'),
(24, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-05-31 17:03:14', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ab;'),
(25, 'berita', 'delete', NULL, '9', 1, 'Super Administrator', '2016-05-31 17:03:37', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : ;'),
(26, 'berita', 'delete', NULL, '10', 1, 'Super Administrator', '2016-05-31 17:03:37', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : ;'),
(27, 'berita', 'delete', NULL, '11', 1, 'Super Administrator', '2016-05-31 17:03:37', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : ;'),
(28, 'berita', 'delete', NULL, '8', 1, 'Super Administrator', '2016-05-31 17:03:37', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : ;'),
(29, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-05-31 17:03:50', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ab;'),
(30, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:28:19', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ab;'),
(31, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:32:36', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : a;'),
(32, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:34:42', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ab;'),
(33, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:40:12', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : a;'),
(34, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:41:25', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : a;'),
(35, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:41:46', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : a;'),
(36, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:44:29', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : c;'),
(37, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 04:45:31', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : b;'),
(38, 'berita', 'edit', NULL, NULL, 1, 'Super Administrator', '2016-06-01 05:06:35', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : d;'),
(39, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-01 05:08:03', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : d;'),
(40, 'berita', 'add', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:10:16', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 1; Nama Judul : b;'),
(41, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:10:34', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : c;'),
(42, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:10:54', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : b;'),
(43, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-01 05:18:39', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : d;'),
(44, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-01 05:23:12', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : d;'),
(45, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-01 05:23:39', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : d;'),
(46, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:24:13', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : opini;'),
(47, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:25:22', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : opinia;'),
(48, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:25:34', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : opinia;'),
(49, 'berita', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:27:11', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : opiniav;'),
(50, 'berita', 'delete', NULL, '8', 1, 'Super Administrator', '2016-06-01 05:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : d;'),
(51, 'berita', 'delete', NULL, '1', 1, 'Super Administrator', '2016-06-01 05:30:28', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 1; Nama Judul : ;'),
(52, 'berita', 'add', NULL, '2', 1, 'Super Administrator', '2016-06-01 05:31:02', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 2; Nama Judul : a;'),
(53, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-01 05:32:24', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : ab;'),
(54, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-01 05:38:13', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : ab;'),
(55, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-01 05:39:03', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : ab;'),
(56, 'berita', 'add', NULL, '9', 1, 'Super Administrator', '2016-06-01 05:40:55', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : b;'),
(57, 'berita', 'edit', NULL, '9', 1, 'Super Administrator', '2016-06-01 05:46:45', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 9; Judul : bc;'),
(58, 'berita', 'edit', NULL, '9', 1, 'Super Administrator', '2016-06-01 05:46:58', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 9; Judul : bc;'),
(59, 'berita', 'edit', NULL, '9', 1, 'Super Administrator', '2016-06-01 05:50:32', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 9; Judul : bcd;'),
(60, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-01 09:47:22', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : ab;'),
(61, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-01 09:51:31', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : Kenapa Produk Turunan Kelapa Sawit Kita Mandeg?;'),
(62, 'berita', 'add', NULL, '3', 1, 'Super Administrator', '2016-06-01 09:54:14', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 3; Nama Judul : Kelapa Sawit, Kisah Tanpa Akhir;'),
(63, 'berita', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-01 09:54:50', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 3; Judul : Kelapa Sawit, Kisah Tanpa Akhir;'),
(64, 'berita', 'edit', NULL, '9', 1, 'Super Administrator', '2016-06-01 13:42:39', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 9; Judul : Budi Daya Kelapa Sawit;'),
(65, 'berita', 'add', NULL, '10', 1, 'Super Administrator', '2016-06-01 13:51:24', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : Ingin Membeli Kebun Sawit, Baca Tips Ini Agar Tidak Nyesal !;'),
(66, 'video', 'add', NULL, '2', 1, 'Super Administrator', '2016-06-01 14:47:08', 'Tambah Data Video Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Video : DMSI;'),
(67, 'informasi', 'add', NULL, '10', 1, 'Super Administrator', '2016-06-02 06:39:10', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : ;'),
(68, 'informasi', 'add', NULL, '11', 1, 'Super Administrator', '2016-06-02 07:00:36', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : ;'),
(69, 'informasi', 'add', NULL, '12', 1, 'Super Administrator', '2016-06-02 07:01:36', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : ;'),
(70, 'informasi', 'add', NULL, '13', 1, 'Super Administrator', '2016-06-02 07:05:59', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 13; Nama Judul : ;'),
(71, 'informasi', 'add', NULL, '14', 1, 'Super Administrator', '2016-06-02 09:38:55', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 14; Nama Judul : ;'),
(72, 'informasi', 'add', NULL, '15', 1, 'Super Administrator', '2016-06-02 09:50:35', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 15; Nama Judul : ;'),
(73, 'informasi', 'add', NULL, '16', 1, 'Super Administrator', '2016-06-02 10:14:04', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : ;'),
(74, 'berita', 'delete', NULL, '10', 1, 'Super Administrator', '2016-06-02 10:28:50', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : ;'),
(75, 'berita', 'delete', NULL, '11', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : ;'),
(76, 'berita', 'delete', NULL, '12', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : ;'),
(77, 'berita', 'delete', NULL, '13', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 13; Nama Judul : ;'),
(78, 'berita', 'delete', NULL, '14', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 14; Nama Judul : ;'),
(79, 'berita', 'delete', NULL, '15', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 15; Nama Judul : ;'),
(80, 'berita', 'delete', NULL, '16', 1, 'Super Administrator', '2016-06-02 10:30:16', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : ;'),
(81, 'informasi', 'add', NULL, '17', 1, 'Super Administrator', '2016-06-02 10:30:42', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 17; Nama Judul : ;'),
(82, 'informasi', 'add', NULL, '18', 1, 'Super Administrator', '2016-06-02 16:32:45', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 18; Nama Judul : ;'),
(83, 'informasi', 'edit', NULL, '0', 1, 'Super Administrator', '2016-06-02 18:15:04', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ;'),
(84, 'informasi', 'edit', NULL, '0', 1, 'Super Administrator', '2016-06-02 18:16:03', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ;'),
(85, 'informasi', 'edit', NULL, '0', 1, 'Super Administrator', '2016-06-02 18:53:55', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : ;'),
(86, 'informasi', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-02 18:55:32', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : ;'),
(87, 'informasi', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-02 18:56:19', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : ;'),
(88, 'informasi', 'add', NULL, '19', 1, 'Super Administrator', '2016-06-02 18:58:19', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 19; Nama Judul : ;'),
(89, 'informasi', 'add', NULL, '20', 1, 'Super Administrator', '2016-06-02 19:03:05', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 20; Nama Judul : ;'),
(90, 'berita', 'delete', NULL, '17', 1, 'Super Administrator', '2016-06-02 20:07:36', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 17; Nama Judul : ;'),
(91, 'berita', 'delete', NULL, '18', 1, 'Super Administrator', '2016-06-02 20:07:36', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 18; Nama Judul : ;'),
(92, 'berita', 'delete', NULL, '19', 1, 'Super Administrator', '2016-06-02 20:07:36', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 19; Nama Judul : ;'),
(93, 'berita', 'delete', NULL, '20', 1, 'Super Administrator', '2016-06-02 20:07:36', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 20; Nama Judul : ;'),
(94, 'informasi', 'add', NULL, '21', 1, 'Super Administrator', '2016-06-02 20:08:01', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 21; Nama Judul : ;'),
(95, 'informasi', 'edit', NULL, '21', 1, 'Super Administrator', '2016-06-03 05:48:45', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 21; Judul : ;'),
(96, 'berita', 'delete', NULL, '21', 1, 'Super Administrator', '2016-06-03 05:50:00', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 21; Nama Judul : ;'),
(97, 'informasi', 'add', NULL, '22', 1, 'Super Administrator', '2016-06-03 05:54:36', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 22; Nama Judul : ;'),
(98, 'berita', 'delete', NULL, '22', 1, 'Super Administrator', '2016-06-03 05:59:32', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 22; Nama Judul : ;'),
(99, 'informasi', 'add', NULL, '23', 1, 'Super Administrator', '2016-06-03 06:02:13', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 23; Nama Judul : ;'),
(100, 'informasi', 'edit', NULL, '23', 1, 'Super Administrator', '2016-06-03 07:30:53', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 23; Judul : ;'),
(101, 'video', 'add', NULL, '1', 1, 'Super Administrator', '2016-06-03 09:45:22', 'Tambah Data Video Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Video : Coba;'),
(102, 'video', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-03 09:45:36', 'Edit Data Video Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Video : Coba;'),
(103, 'informasi', 'edit', NULL, '11', 1, 'Super Administrator', '2016-06-03 10:37:37', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 11; Judul : Amazing post with all the goodies;'),
(104, 'informasi', 'edit', NULL, '12', 1, 'Super Administrator', '2016-06-03 10:38:04', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 12; Judul : Amazing post with all the goodies;'),
(105, 'agenda', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-03 11:00:37', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2016;'),
(106, 'informasi', 'add', NULL, '24', 1, 'Super Administrator', '2016-06-03 23:52:38', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 24; Nama Judul : ;'),
(107, 'informasi', 'edit', NULL, '24', 1, 'Super Administrator', '2016-06-03 23:53:18', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 24; Judul : ;'),
(108, 'berita', 'add', NULL, '10', 1, 'Super Administrator', '2016-06-07 17:36:17', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : TES;'),
(109, 'berita', 'edit', NULL, '10', 1, 'Super Administrator', '2016-06-07 17:38:13', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 10; Judul : TES;'),
(110, 'berita', 'edit', NULL, '10', 1, 'Super Administrator', '2016-06-07 17:39:15', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 10; Judul : TES EDIT;'),
(111, 'berita', 'delete', NULL, '10', 1, 'Super Administrator', '2016-06-07 17:39:32', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : TES EDIT;'),
(112, 'agenda', 'add', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:02:00', 'Tambah Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES;'),
(113, 'agenda', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:02:37', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES;'),
(114, 'agenda', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:02:51', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES;'),
(115, 'agenda', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:03:05', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES;'),
(116, 'agenda', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:04:13', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES;'),
(117, 'agenda', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-07 19:04:37', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Kegiatan : TES EDIT;'),
(118, 'agenda', 'delete', NULL, '', 1, 'Super Administrator', '2016-06-07 19:04:51', 'Hapus Data Kegiatan Oleh Super Administrator dengan rincian, ID : ; Nama Judul Kegiatan : ;'),
(119, 'agenda', 'delete', NULL, '', 1, 'Super Administrator', '2016-06-07 19:04:59', 'Hapus Data Kegiatan Oleh Super Administrator dengan rincian, ID : ; Nama Judul Kegiatan : ;'),
(120, 'agenda', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-07 21:32:04', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2016;'),
(121, 'agenda', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-07 21:32:37', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2015;'),
(122, 'agenda', 'add', NULL, '4', 1, 'Super Administrator', '2016-06-07 21:33:35', 'Tambah Data Kegiatan Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Kegiatan : TES;'),
(123, 'berita', 'delete', NULL, '13', 1, 'Super Administrator', '2016-06-07 21:36:51', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 13; Nama Judul : a;'),
(124, 'berita', 'delete', NULL, '14', 1, 'Super Administrator', '2016-06-07 21:36:51', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 14; Nama Judul : g;'),
(125, 'informasi', 'add', NULL, '15', 1, 'Super Administrator', '2016-06-07 21:55:12', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 15; Nama Judul : TES;'),
(126, 'agenda', 'add', NULL, '5', 1, 'Super Administrator', '2016-06-07 22:15:51', 'Tambah Data Kegiatan Oleh Super Administrator dengan rincian, ID : 5; Nama Judul Kegiatan : a;'),
(127, 'agenda', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-07 22:33:16', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Kegiatan : TES;'),
(128, 'agenda', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-07 22:33:34', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2016;'),
(129, 'agenda', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-07 22:38:49', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2016;'),
(130, 'agenda', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-07 22:39:02', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2015;'),
(131, 'agenda', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-07 22:39:22', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Kegiatan : TES;'),
(132, 'agenda', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-07 22:44:46', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Kegiatan : TES;'),
(133, 'agenda', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-07 22:46:26', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Kegiatan : TES;'),
(134, 'berita', 'add', NULL, '11', 1, 'Super Administrator', '2016-06-07 23:11:50', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : TES;'),
(135, 'berita', 'delete', NULL, '11', 1, 'Super Administrator', '2016-06-07 23:14:29', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : TES;'),
(136, 'berita', 'add', NULL, '12', 1, 'Super Administrator', '2016-06-07 23:14:53', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : TES;'),
(137, 'berita', 'delete', NULL, '12', 1, 'Super Administrator', '2016-06-07 23:15:36', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : TES;'),
(138, 'berita', 'add', NULL, '13', 1, 'Super Administrator', '2016-06-07 23:15:58', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 13; Nama Judul : TES;'),
(139, 'berita', 'edit', NULL, '13', 1, 'Super Administrator', '2016-06-07 23:20:43', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 13; Judul : TES;'),
(140, 'berita', 'edit', NULL, '9', 1, 'Super Administrator', '2016-06-07 23:21:02', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 9; Judul : Mengenal Lebih Dekat dengan Kalimantan Utara;'),
(141, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-07 23:21:28', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : 2016, Goncangan Sawit Semakin Dasyat;'),
(142, 'berita', 'edit', NULL, '13', 1, 'Super Administrator', '2016-06-07 23:28:03', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 13; Judul : TES;'),
(143, 'informasi', 'edit', NULL, '15', 1, 'Super Administrator', '2016-06-07 23:35:14', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 15; Judul : TES;'),
(144, 'informasi', 'edit', NULL, '15', 1, 'Super Administrator', '2016-06-07 23:37:42', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 15; Judul : TES;'),
(145, 'informasi', 'add', NULL, '16', 1, 'Super Administrator', '2016-06-08 04:36:58', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : a;'),
(146, 'berita', 'delete', NULL, '16', 1, 'Super Administrator', '2016-06-08 04:37:11', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : a;'),
(147, 'berita', 'add', NULL, '4', 1, 'Super Administrator', '2016-06-08 05:16:51', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 4; Nama Judul : TES;'),
(148, 'berita', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-08 05:17:59', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 4; Judul : TES;'),
(149, 'berita', 'delete', NULL, '4', 1, 'Super Administrator', '2016-06-08 05:18:12', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 4; Nama Judul : ;'),
(150, 'berita', 'add', NULL, '5', 1, 'Super Administrator', '2016-06-08 05:33:05', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 5; Nama Judul : TES;'),
(151, 'berita', 'delete', NULL, '5', 1, 'Super Administrator', '2016-06-08 05:40:43', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 5; Nama Judul : ;'),
(152, 'berita', 'add', NULL, '6', 1, 'Super Administrator', '2016-06-08 05:41:14', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 6; Nama Judul : TES;'),
(153, 'berita', 'delete', NULL, '6', 1, 'Super Administrator', '2016-06-08 05:41:27', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 6; Nama Judul : ;'),
(154, 'berita', 'add', NULL, '7', 1, 'Super Administrator', '2016-06-08 05:41:57', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : TES;'),
(155, 'berita', 'edit', NULL, '7', 1, 'Super Administrator', '2016-06-08 05:42:33', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 7; Judul : TES;'),
(156, 'berita', 'edit', NULL, '7', 1, 'Super Administrator', '2016-06-08 05:42:52', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 7; Judul : TES EDIT;'),
(157, 'berita', 'edit', NULL, '7', 1, 'Super Administrator', '2016-06-08 05:43:09', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 7; Judul : TES EDIT;'),
(158, 'berita', 'edit', NULL, '7', 1, 'Super Administrator', '2016-06-08 05:43:24', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 7; Judul : TES EDIT;'),
(159, 'informasi', 'edit', NULL, '25', 1, 'Super Administrator', '2016-06-08 06:00:06', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 25; Judul : ;'),
(160, 'berita', 'delete', NULL, '13', 1, 'Super Administrator', '2016-06-08 06:32:41', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 13; Nama Judul : TES;'),
(161, 'download', 'delete', NULL, '2', 1, 'Super Administrator', '2016-06-13 09:57:42', 'Hapus Data File Download Oleh Super Administrator dengan rincian, ID : 2; Nama Judul : coba;'),
(162, 'berita', 'delete', NULL, '23', 1, 'Super Administrator', '2016-06-13 10:04:06', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 23; Nama Judul : ;'),
(163, 'berita', 'delete', NULL, '24', 1, 'Super Administrator', '2016-06-13 10:04:06', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 24; Nama Judul : ;'),
(164, 'berita', 'delete', NULL, '25', 1, 'Super Administrator', '2016-06-13 10:04:06', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 25; Nama Judul : ;'),
(165, 'agenda', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-13 11:50:35', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 1; Nama Judul Kegiatan : Palm Oil Industry Development Conference (POIDEC) 2016;'),
(166, 'berita', 'edit', NULL, '0', 1, 'Super Administrator', '2016-06-14 15:21:52', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : Berita Terbaru 2;'),
(167, 'berita', 'edit', NULL, '0', 1, 'Super Administrator', '2016-06-14 15:25:14', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : ; Judul : Berita Terbaru 2;'),
(168, 'berita', 'edit', NULL, '14', 1, 'Super Administrator', '2016-06-14 15:29:26', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 14; Judul : Berita Terbaru 2;'),
(169, 'berita', 'edit', NULL, '14', 1, 'Super Administrator', '2016-06-15 09:08:17', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 14; Judul : Berita Terbaru 2;'),
(170, 'agenda', 'edit', NULL, '6', 1, 'Super Administrator', '2016-06-15 09:46:38', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 6; Nama Judul Kegiatan : Sesuatu banget;'),
(171, 'informasi', 'add', NULL, '16', 1, 'Super Administrator', '2016-06-15 10:31:41', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : Sesuatu;'),
(172, 'berita', 'add', NULL, '8', 1, 'Super Administrator', '2016-06-15 11:53:22', 'Tambah Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : coba;'),
(173, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-15 12:13:13', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : coba lagi;'),
(174, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-15 12:15:02', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : coba lagi;'),
(175, 'berita', 'edit', NULL, '8', 1, 'Super Administrator', '2016-06-15 12:15:53', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 8; Judul : coba lagi;'),
(176, 'berita', 'delete', NULL, '7', 1, 'Super Administrator', '2016-06-15 12:18:02', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : ;'),
(177, 'berita', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-15 12:19:26', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 3; Judul : Kelapa Sawit, Kisah Tanpa Akhir;'),
(178, 'berita', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-15 12:20:38', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 2; Judul : Kenapa Produk Turunan Kelapa Sawit Kita Mandeg?;'),
(179, 'berita', 'delete', NULL, '11', 1, 'Super Administrator', '2016-06-15 12:21:43', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : TES;'),
(180, 'informasi', 'edit', NULL, '27', 1, 'Super Administrator', '2016-06-16 09:25:58', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 27; Judul : ;'),
(181, 'informasi', 'edit', NULL, '26', 1, 'Super Administrator', '2016-06-16 09:36:01', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 26; Judul : ;'),
(182, 'berita', 'delete', NULL, '26', 1, 'Super Administrator', '2016-06-16 09:57:08', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 26; Nama Judul : ;'),
(183, 'berita', 'delete', NULL, '27', 1, 'Super Administrator', '2016-06-16 09:57:08', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 27; Nama Judul : ;'),
(184, 'berita', 'delete', NULL, '28', 1, 'Super Administrator', '2016-06-16 10:01:49', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 28; Nama Judul : ;'),
(185, 'berita', 'delete', NULL, '29', 1, 'Super Administrator', '2016-06-16 10:04:41', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 29; Nama Judul : ;'),
(186, 'video', 'add', NULL, '2', 1, 'Super Administrator', '2016-06-16 12:36:27', 'Tambah Data Video Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Video : tes;'),
(187, 'video', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-16 13:30:39', 'Edit Data Video Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Video : tes;'),
(188, 'video', 'edit', NULL, '2', 1, 'Super Administrator', '2016-06-16 13:31:14', 'Edit Data Video Oleh Super Administrator dengan rincian, ID : 2; Nama Judul Video : tes 2;'),
(189, 'video', 'add', NULL, '3', 1, 'Super Administrator', '2016-06-16 13:53:42', 'Tambah Data Video Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Video : tes 2;'),
(190, 'video', 'edit', NULL, '3', 1, 'Super Administrator', '2016-06-16 13:55:56', 'Edit Data Video Oleh Super Administrator dengan rincian, ID : 3; Nama Judul Video : tes 2;'),
(191, 'berita', 'delete', NULL, '14', 1, 'Super Administrator', '2016-06-27 21:53:32', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 14; Nama Judul : Berita Terbaru 2;'),
(192, 'berita', 'delete', NULL, '15', 1, 'Super Administrator', '2016-06-27 22:01:35', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 15; Nama Judul : TES;'),
(193, 'berita', 'delete', NULL, '16', 1, 'Super Administrator', '2016-06-27 22:01:35', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 16; Nama Judul : Sesuatu yang lain;'),
(194, 'berita', 'delete', NULL, '8', 1, 'Super Administrator', '2016-06-27 22:03:41', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : Teknologi Pengolahan Limbah Pabrik Kelapa Sawit;'),
(195, 'berita', 'delete', NULL, '12', 1, 'Super Administrator', '2016-06-27 22:03:57', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : Amazing post with all the goodies;'),
(196, 'berita', 'delete', NULL, '9', 1, 'Super Administrator', '2016-06-27 22:03:57', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : Mandiri Layani Pembayaran Elekronik Pungutan Kelapa Sawit;'),
(197, 'berita', 'delete', NULL, '10', 1, 'Super Administrator', '2016-06-27 22:03:57', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 10; Nama Judul : Investor: KERJASAMA PEMBANGUNAN PABRIK KELAPA SAWIT POLA;'),
(198, 'berita', 'delete', NULL, '11', 1, 'Super Administrator', '2016-06-27 22:03:57', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 11; Nama Judul : Amazing post with all the goodies;'),
(199, 'berita', 'delete', NULL, '7', 1, 'Super Administrator', '2016-06-27 22:03:57', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : Masalah Sawit Indonesia: Lingkungan, Ketahanan Pangan dan Konflik Agraria;'),
(200, 'berita', 'delete', NULL, '5', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 5; Nama Judul : Biodiesel Sawit Efektif Mengurangi Emisi Gas Rumah Kaca dari Mesin Diesel;'),
(201, 'berita', 'delete', NULL, '9', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 9; Nama Judul : Mengenal Lebih Dekat dengan Kalimantan Utara;'),
(202, 'berita', 'delete', NULL, '6', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 6; Nama Judul : Kebun Sawit “Pabrik” Minyak Nabati Paling Hemat Lahan;'),
(203, 'berita', 'delete', NULL, '2', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 2; Nama Judul : 2016, Goncangan Sawit Semakin Dasyat;'),
(204, 'berita', 'delete', NULL, '3', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 3; Nama Judul : DMSI Khawatir Pengenaan Pajak Progresif Impor Minyak Sawit;'),
(205, 'berita', 'delete', NULL, '1', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 1; Nama Judul : Harga Sawit Diprediksi Melorot Tahun Ini  aaa;'),
(206, 'berita', 'delete', NULL, '4', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 4; Nama Judul : Ekspor Minyak Sawit Indonesia Akan Jatuh karena Program Biodiesel;'),
(207, 'berita', 'delete', NULL, '7', 1, 'Super Administrator', '2016-06-27 22:04:24', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 7; Nama Judul : PRESIDEN DUKUNG PENUH PENGEMBANGAN SAWIT NASIONAL;'),
(208, 'berita', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-28 12:39:42', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : Petualangan Buronan Polda Riau Berakhir di Tangan Teman;'),
(209, 'berita', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-28 12:40:07', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : Petualangan Buronan Polda Riau Berakhir di Tangan Teman;'),
(210, 'berita', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-28 12:42:35', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : Petualangan Buronan Polda Riau Berakhir di Tangan Teman;'),
(211, 'berita', 'edit', NULL, '17', 1, 'Super Administrator', '2016-06-28 12:42:39', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 17; Judul : Petualangan Buronan Polda Riau Berakhir di Tangan Teman;'),
(212, 'berita', 'delete', NULL, '17', 1, 'Super Administrator', '2016-06-28 12:55:25', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 17; Nama Judul : Petualangan Buronan Polda Riau Berakhir di Tangan Teman;'),
(213, 'berita', 'delete', NULL, '17', 1, 'Super Administrator', '2016-06-28 15:09:56', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 17; Nama Judul : a;'),
(214, 'berita', 'delete', NULL, '8', 1, 'Super Administrator', '2016-06-28 16:13:19', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 8; Nama Judul : ;'),
(215, 'agenda', 'edit', NULL, '6', 1, 'Super Administrator', '2016-06-28 16:51:36', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 6; Nama Judul Kegiatan : Sesuatu banget;'),
(216, 'agenda', 'edit', NULL, '6', 1, 'Super Administrator', '2016-06-28 16:52:23', 'Edit Data Kegiatan Oleh Super Administrator dengan rincian, ID : 6; Nama Judul Kegiatan : Sesuatu banget;'),
(217, 'download', 'delete', NULL, '2', 1, 'Super Administrator', '2016-06-29 10:31:54', 'Hapus Data File Download Oleh Super Administrator dengan rincian, ID : 2; Nama Judul : abc;'),
(218, 'video', 'edit', NULL, '4', 1, 'Super Administrator', '2016-06-29 12:49:55', 'Edit Data Video Oleh Super Administrator dengan rincian, ID : 4; Nama Judul Video : Video Clip Lagu DMSI - Ari Lasso Feat Audy;'),
(219, 'informasi', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-29 13:00:07', 'Edit Data Berita Oleh Super Administrator dengan rincian, ID : 1; Judul : ;'),
(220, 'profil', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-30 09:52:40', 'Update Foto Profil User Oleh Super Administrator dengan rincian, ID : 1; Nama  : Super Administrator;'),
(221, 'profil', 'edit', NULL, '1', 1, 'Super Administrator', '2016-06-30 09:54:27', 'Update Foto Profil User Oleh Super Administrator dengan rincian, ID : 1; Nama  : Super Administrator;'),
(222, 'berita', 'delete', NULL, '12', 1, 'Super Administrator', '2016-07-14 16:02:03', 'Hapus Data Berita Oleh Super Administrator dengan rincian, ID : 12; Nama Judul : Sesuatu yang lain;'),
(223, 'provinsi', 'add', NULL, '93', 1, 'Developer Web', '2016-07-28 06:13:40', 'Tambah Data Propinsi Oleh Developer Web dengan rincian, ID : 93; Nama Provinsi : a;'),
(224, 'provinsi', 'edit', NULL, '93', 1, 'Developer Web', '2016-07-28 06:14:17', 'Update Data Negara Oleh Developer Web dengan rincian, ID : 93; Nama Provinsi : ab;'),
(225, 'provinsi', 'add', NULL, '94', 1, 'Developer Web', '2016-07-28 06:17:11', 'Tambah Data Propinsi Oleh Developer Web dengan rincian, ID : 94; Nama Provinsi : a;'),
(226, 'kota', 'add', NULL, '16720', 1, 'Developer Web', '2016-07-28 06:18:33', 'Tambah Data Kota Oleh Developer Web dengan rincian, ID : 16720; Nama Kota : ab;'),
(227, 'kota', 'edit', NULL, '16720', 1, 'Developer Web', '2016-07-28 06:19:10', 'Update Data Kota Oleh Developer Web dengan rincian, ID : 16720; Nama Kota : abv;'),
(228, 'kota', 'delete', NULL, '16720', 1, 'Developer Web', '2016-07-28 06:19:26', 'Hapus Data Kota Oleh Developer Web dengan rincian, ID : 16720; Nama Kota : ;'),
(229, 'kota', 'edit', NULL, '1101', 1, 'Developer Web', '2016-08-09 07:29:31', 'Update Data Kota Oleh Developer Web dengan rincian, ID : 1101; Nama Kota : Kab. Aceh Selatan;'),
(230, 'kota', 'edit', NULL, '1101', 1, 'Developer Web', '2016-08-09 07:30:15', 'Update Data Kota Oleh Developer Web dengan rincian, ID : 1101; Nama Kota : Kab. Aceh Selatan 2;'),
(231, 'kota', 'edit', NULL, '1101', 1, 'Developer Web', '2016-08-09 07:30:25', 'Update Data Kota Oleh Developer Web dengan rincian, ID : 1101; Nama Kota : Kab. Aceh Selatan;'),
(232, 'kota', 'add', NULL, '5436', 1, 'Developer Web', '2016-08-09 07:31:40', 'Tambah Data Kota Oleh Developer Web dengan rincian, ID : 5436; Nama Kota : tes;'),
(233, 'kota', 'delete', NULL, '5436', 1, 'Developer Web', '2016-08-09 07:31:51', 'Hapus Data Kota Oleh Developer Web dengan rincian, ID : 5436; Nama Kota : ;');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opini_m`
--

CREATE TABLE IF NOT EXISTS `opini_m` (
`id_opini` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tanggal` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `keterangan_gambar` varchar(200) NOT NULL,
  `file_lampiran` varchar(200) NOT NULL,
  `judul_english` varchar(255) NOT NULL,
  `content_english` text NOT NULL,
  `caption_picture` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `opini_m`
--

INSERT INTO `opini_m` (`id_opini`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_lampiran`, `judul_english`, `content_english`, `caption_picture`) VALUES
(2, 'Kenapa Produk Turunan Kelapa Sawit Kita Mandeg?', '<p>Kelapa sawit adalah tanaman perkebunan penting di dunia yang dapat menghasilkan berbagai produk industri makanan, kimia, kosmetik, bahan dasar industri berat dan ringan, biodiesel, dan lain-lain. Tanaman sawit yang diduga berasal dari Afrika didatangkan ke Indonesia oleh pemerintah Hindia Belanda pada tahun 1848. Beberapa bijinya ditanam di Kebun Raya Bogor, sementara sisa benihnya ditanam di tepi-tepi jalan sebagai tanaman hias di Deli Sumatera Utara pada tahun 1870-an. Berkembangnya perkebunan&nbsp; sawit di dunia bersamaan meningkatnya permintaan minyak nabati akibat Revolusi Industri pertengahan abad ke-19.</p><p>Di Indonesia pengembangan perkebunan sawit dimulai &nbsp;di pulau Sumatera yaitu di Deli dan Aceh, bahkan di zaman pendudukan Hindia Belanda sekitar pada 1940 pernah menjadi daerah pemasok utama minyak sawit dunia. Akan tetapi pada masa pendudukan Jepang terjadi berbagai kekacauan yang menyebabkan terbengkalainya pemeliharan kebun sawit dan akhirnya produksi sawit mengalami penurunan yang drastis. Pada saat yang sama di Malaya (Malaysia) perkebunan sawit sudah berkembang dengan baik sehingga pemasok utama minyak sawit dunia diambil alih oleh Malaysia</p><p>Kelapa sawit merupakan tanaman penghasil minyak nabati yang dapat diandalkan karena minyak yang dihasilkan memiliki berbagai keunggulan dibandingkan dengan minyak yang dihasilkan oleh tanaman lain. Salah satu keunggulannya adalah memiliki kadar kolesterol rendah, bahkan tanpa kolesterol. Minyak kelapa sawit mengandung kadar kolesterol yang rendah, yaitu sekitar 3 mg/kg. Sementara, lemak hewani mengandung kadar kolesterol lebih tinggi, 50-100 kali dari minyak kelapa sawit.</p><p>Pengolahan kelapa sawit pada dasarnya merupakan suatu proses pengolahan terhadap tandan buah segar (TBS) menjadi minyak kelapa sawit (CPO) dan minyak inti sawit (KPO). Minyak nabati yang dihasilkan dari pengolahan buah kelapa sawit berupa minyak sawit mentah (CPO) yang berwarna kuning dan minyak inti sawit (PKO) yang tidak berwarna (jernih). CPO atau PKO banyak digunakan sebagai bahan industri pangan (minyak goreng dan margarin), industry sabun (bahan penghasil busa), industri baja (bahan pelumas), industri tekstil, kosmetik, dan sebagai bahan bakar alternatif (biodisel). Pada dasarnya, CPO dapat diolah menjadi tiga macam bahan kimia, yaitu methyl ester, asam lemak (fatty acid), dan gliserin (glycerine).</p><p>Bangkitnya kembali perkebunan sawit di Indonesia dimulai sejak era 1970-an dengan luas&nbsp; 250 ribu hektar, dan pada tahun 2008 telah meningkat menjadi 7,0 juta hektar, tahun 2009 meningkat menjadi 7,3 juta hektar dan pada tahun 2010 luas kebun sawit di Indonesia sudah mencapai 7,9 juta hektar dan menyebar hampir di seluruh wilayah Indonesia. Menurut data Ditjen Perkebunan, areal perkebunan kelapa sawit tersebar di 17 provinsi meliputi wilayah Sumatera, Jawa, Kalimantan, Sulawesi, Maluku dan Papua. Meningkatnya luas perkebunan sawit juga diikuti dengan naiknya produksi CPO, dimana pada tahun 2008 produksinya 19,2 juta ton, pada tahun 2009 produksinya 19,4 juta ton, dan menurut Oil World tahun 2010 produksi CPO Indonesia sebesar 21,8 juta ton, tumbuh sebesar 3,8 persen, sedangkan produksi CPO Malaysia di 2010 mengalami penurunan sebesar 3,3 persen, yaitu dari 17,6 juta ton di 2009 menjadi 17 juta ton. Pada tahun 2011 ini menurut Kementerian Pertanian&nbsp; Indonesia dapat memproduksi CPO mencapai 22-23 juta ton.</p><p>Secara internasional kebangkitan Indonesia sebagai produsen utama dunia cukup lama pulihnya, sejak pendudukan Jepang, maka baru pada tahun 2006 Indonesia sebagai negara produsen kelapa sawit nomor satu di dunia. dimana memberikan kontribusi sebanyak 47 persen dari produksi minyak kelapa sawit yang dihasilkan oleh perkebunan kelapa sawit di seluruh dunia. Di dalam negeri, industri kelapa sawit nasional berkontribusi sebesar 10% terhadap pendapatan pemerintah dari sektor non migas, dan sebagai menyerap tenaga kerja. Namun sayangnya industri pengolahan produk turunan CPO Indonesia belum berkembang dengan baik, dimana Indonesia masih tetap mengandalkan ekspor minyak sawit mentah ke pasar dunia dan mengandalkan penjualan Tandan Buah Segar (TBS) yang nilainya relatif kecil dibandingkan nilai tambah penjualan produk turunan CPO.</p>', '2016-06-02', '2_13936337821293320679.jpg', 'abf', '13936337821293320679.jpg', 'Why Palm Oil Derivative Products We stagnant?', '<div>Oil palm plantations are an important crop in the world that can produce a variety of food industry, chemicals, cosmetics, basic materials industry and light weight, biodiesel, and others. Palm plants thought to have come from Africa were brought to Indonesia by the Dutch in 1848. Some of the seeds planted in the Bogor Botanical Gardens, while the rest of the seeds planted by the roadside as an ornamental plant in North Sumatra Deli in the 1870s. The development of oil palm plantations in the world simultaneously increased demand for vegetable oils as a result of the Industrial Revolution mid-19th century.</div><div><br></div><div>In Indonesia the development of oil palm plantations in Sumatra which started in Deli and Aceh, even in the days of the occupation of the Dutch East Indies around in 1940 was once a major supplier of the world''s palm oil. But during the Japanese occupation occurred chaos that led to the abandonment of the maintenance of oil palm plantations and palm oil production finally experienced a drastic decline. At the same time in Malaya (Malaysia) oil palm plantations is already well developed so that the main supplier of the world''s palm oil is taken over by Malaysia</div><div><br></div><div>Coconut oil is a vegetable oil crops that can be relied upon because of the oil produced has many advantages compared to oil produced by other plants. One advantage is to have lower cholesterol levels, even without cholesterol. Palm oil contains cholesterol levels are low, around 3 mg / kg. Meanwhile, animal fats containing higher cholesterol levels, 50-100 times of palm oil.</div><div><br></div><div>Palm oil processing is basically a process of the processing of fresh fruit bunches (FFB) into crude palm oil (CPO) and palm kernel oil (KPO). Vegetable oil produced from oil palm fruit processing in the form of crude palm oil (CPO) and yellow palm kernel oil (PKO) colorless (clear). CPO or PKO widely used as food industry (cooking oil and margarine), industry soap (foam-producing material), the steel industry (lubricants), textiles, cosmetics, and as an alternative fuel (biodiesel). Basically, the CPO can be processed into three kinds of chemicals, ie methyl esters, fatty acids (FAs), and glycerol (glycerine).</div><div><br></div><div>The revival of oil palm plantations in Indonesia began in the 1970s with an area of ​​250 thousand hectares, and in 2008 has increased to 7.0 million hectares in 2009 increased to 7.3 million hectares and in 2010 the area of ​​oil palm plantations in Indonesia has been 7.9 million hectares and spread almost all over Indonesia. According to data from the Directorate General of plantations, oil palm plantations are scattered in 17 provinces covering an area of ​​Sumatra, Java, Kalimantan, Sulawesi, Maluku and Papua. Increased oil palm plantation area is also followed by the increase in CPO production, which in 2008 production of 19.2 million tons, in 2009 production of 19.4 million tons, according to Oil World 2010. Indonesia''s CPO production at 21.8 million tons, growing by 3.8 percent, while Malaysia''s CPO production in 2010 decreased by 3.3 percent, from 17.6 million tons in 2009 to 17 million tons. In 2011, according to the Ministry of Agriculture of Indonesia can produce 22-23 million tons of CPO reached.</div><div><br></div><div>Internationally resurrection Indonesia as the world''s top producer for a long time recovery, since the Japanese occupation, it is only in 2006 that Indonesia as the country''s number one palm oil producer in the world. which contributes as much as 47 percent of the production of palm oil produced by oil palm plantations around the world. Domestically, the national oil palm industry accounted for 10% of government revenues from non-oil sector, and as to absorb labor. But unfortunately derivative products processing industry Indonesia is not well developed, of which Indonesia is still relying on crude palm oil exports to the world market and relying on the sale of fresh fruit bunches (FFB) is relatively small compared to the value-added sales of derivative products.</div>', 'Why Palm Oil Derivative Products We stagnant?'),
(3, 'Kelapa Sawit, Kisah Tanpa Akhir', 'Mentawai adalah bagian dari serangkaian Non-Vulkanik yang membentuk gugusan menjadi puncak-puncak dari suatu punggung pegunungan bawah Laut. Letaknya sekitar 100 km dari sebelah Barat pantai pulau Sumatera dan terdiri dari 40 pulau kecil &amp; besar serta dikelilingi oleh Samudera Hindia(Laut Lepas). Luas Kepulauan Mentawai hanya 6.700 km2. Kepulauan Mentawai tak bergunung, tapi berbukit sekitar 500 meter tingginya. Tipologi orang Mentawai umumnya berbadan kuat, kekar, sehat. Sifat orang Mentawai baik, ramah, kreatif, berjiwa seni dan mampu menciptakan sesuatu yang berdaya guna, lepas dari itu semua orang Mentawai adalah Pribadi yang sangat Religi terhadap alam. Hidup mati mereka berasal dari alam (mone). Makanan khas mentawai adalah sagu, talas/keladi dan sejenisnya, pisang, ubi kayu/ubi jalar yang semuanya itu berasal dari ladang, menu tambahan lainnya dari laut dan sungai.', '2016-06-01', '3_13936337821293320679.jpg', 'Kelapa Sawit, Kisah Tanpa Akhir', '13936337821293320679.jpg', 'Palm Oil, Story Without End', 'Mentawai is part of a series of Non-Volcanic form a cluster into the tops of the ridges of an Under the Sea. It is located about 100 km from the west coast of Sumatra island and consists of 40 small and large islands and surrounded by the Indian Ocean (the high seas). Size Mentawai Islands only 6,700 km2. Mentawai Islands is not mountainous, but the hilly approximately 500 meters in height. The typology of the Mentawai generally strong bodied, muscular, healthy. The nature of the Mentawai nice, friendly, creative, artistic and capable of creating something useful, apart from that everyone is a private Mentawai highly Religion of nature. They lived or died of natural origin (mone). Mentawai typical food is sago, taro / taro and the like, bananas, cassava / sweet potato, all of which came from the field, other additional menu of sea and river.', 'Palm Oil, Story Without End');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman_m`
--

CREATE TABLE IF NOT EXISTS `pengumuman_m` (
`id_pengumuman` int(11) unsigned NOT NULL,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file_pengumuman` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengumuman_m`
--

INSERT INTO `pengumuman_m` (`id_pengumuman`, `judul`, `content`, `tanggal`, `image`, `file_pengumuman`) VALUES
(37, 'Perubahan Jadwal Workshop Sistem Registrasi Koleksi Museum', 'Sehubungan dengan adanya pekan budaya nasional, maka jadwal workshop Sistem Registrasi Koleksi Museum yang  seharusnya di laksanakan pada tanggal 18 April 2015 di undur menjadi tanggal 27 April 2015 di tempat yang sama.<br><br>Untuk informasi lebih lanjut mengenai kegiatan ini harap&nbsp; hubungi langsung panitia kegiatan.<br><br><br>', '2015-04-15', '37_workshops_147488846.jpg', 'Jadwal_Kegiatan_Workshop_Resertifikasi_2015.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_m`
--

CREATE TABLE IF NOT EXISTS `profil_m` (
`id_info` int(11) unsigned NOT NULL,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `judul_english` varchar(255) NOT NULL,
  `content_english` text NOT NULL,
  `order_num` int(4) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_m`
--

INSERT INTO `profil_m` (`id_info`, `judul`, `content`, `judul_english`, `content_english`, `order_num`) VALUES
(1, 'DEWAN MINYAK SAWIT INDONESIA', '<p>Pembangunan kelapa sawit nasional memerlukan adanya sebuah lembaga yang mampu mengakomodasikan seluruh kepentingan bersama dari para pelaku usaha kelapa sawit nasional.</p><p><br></p><p>Lembaga termaksud harus berfungsi sebagai himpunan seluruh kekuatan nasional, baik unsur pemerintah maupun seluruh pelaku usaha, untuk membangun industri kelapa sawit nasional yang tangguh.</p><p><br></p><p>Bahwa atas dasar hal-hal tersebut diatas dan sebagai pelaksanaan Pasal 19 Undang-Undang Nomor 18 Tahun 2004 tentang Perkebunan, maka segenap pemangku kepentingan dalam industri kelapa sawit nasional mulai dari perbenihan, perkebunan sampai dengan penghasil produk turunannya memandang perlu untuk membentuk Dewan Minyak Sawit Indonesia (DMSI) melalui deklarasi pada tanggal 7 Desember 2006 di Nusa Dua Bali, oleh:</p><p>Gabungan Pengusaha Kelapa Sawit Indonesia (GAPKI), diwakili Oleh H. Akmaluddin Hasibuan) (Ketua Umum);</p><p>Asosiasi Industri Minyak Makan Indonesia (AIMMI), diwakili oleh Adiwisoko Kasman (Ketua Umum);</p><p>Asosiasi Produsen Oleochemical Indonesia (APOLIN), diwakili oleh Stefanus Goei King (Ketua Umum);</p><p>Asosiasi Petani Kelapa Sawit Indonesia (APKASINDO), diwakili oleh Sumardi Syarief (Ketua Umum);</p><p>Gabungan Pengusaha Perkebunan Indonesia (GPPI), diwakili oleh Soedjai Kartasasmita (Ketua Umum);</p><p>Masyarakat Perkelapa-sawitan Indonesia (MAKSI), diwakili oleh Gardjito (atas nama Masyarakat Perkelapa-sawitan Indonesia);</p><p>Direktorat Jenderal Pengolahan dan Pemasaran Hasil Pertanian, diwakili oleh Djoko Said Damardjati;&nbsp;</p><p>Direktorat Jenderal Perkebunan, diwakili oleh Achmad Mangga Barani.</p><p>DMSI bertujuan untuk meningkatkan kerjasama dan koordinasi antar pelaku usaha serta memfasilitasi perumusan regulasi dan kebijakan perkelapa sawitan nasional yang mampu membawa pelaku usaha untuk bersaing, tangguh dipasar Internasional dengan tetap memperhatikan kelestarian lingkungan.</p><p><br></p><p>DMSI sebagai pusat koordinasi program dan kebijakan perkelapa-sawitan nasional &nbsp;bertugas memfasilitasi secara aktif: &nbsp;</p><p>Perumusan program pembangunan industri kelapa sawit nasional.</p><p>Perumusan regulasi dan kebijakan pembangunan industri kelapa sawit nasional yang berdayasaing, tangguh di pasar internasioal dan berkelanjutan untuk dilaksanakan oleh seluruh instansi yang berwenang dan pihak-pihak terkait.</p><p>Perumusan pedoman jangka panjang program pembangunan kelapa sawit nasional.</p><p>Pemantauan dan evaluasi implementasi regulasi dan kebijakan pembangunan industri kelapa sawit nasional.</p><p>DMSI menyelenggarakan kegiatan:</p><p>Penyiapan saran pertimbangan kepada pemerintah dalam merumuskan kebijakan agribisnis perkelapa-sawitan;</p><p>Pengupayaan peningkatan produktivitas dan efisiensi, melakukan penelitian, dan pengembangan yang berorientasi pasar, serta pengembangan sumberdaya manusia;</p><p>Pelaksanaan inventarisasi, monitoring dan evaluasi produksi kebun dan pabrik serta industri;</p><p>Fasilitasi pelaksanaan ekspor dan promosi, mengembangkan pasar baru yang potensial serta memelihara dan memperluas pasar yang sudah ada;</p><p>Pelaksanaan advokasi usaha dan jasa pendukung lainnya serta mengatasi masalah dampak lingkungan dalam rangka membangun bidang usaha kelapa sawit dan produk turunannya yang lestari;</p><p>Penyediaan data dan informasi melalui kerjasama dengan Badan Pusat Statistik;</p><p>Pelaksanaan koordinasi dengan instansi, baik di pusat maupun daerah dalam mewujudkan iklim usaha yang kondusif, khususnya dibidang hukum dan keamanan, serta bekerjasama dengan organisasi terkait baik didalam maupun di luar negeri;</p><p>Pemberian masukan dan alternatif dalam stabilisasi harga dan pasokan minyak goreng kelapa sawit di pasar dalam negeri;</p><p>Pengusulan percepatan pembangunan sarana dan prasarana.</p><div>\r\n</div>', 'DEWAN MINYAK SAWIT INDONESIA', '<div>National oil palm development requires the existence of an institution that is able to accommodate all the common interests of the national oil palm businesses.</div><div><br></div><div><br></div><div><br></div><div>The said institutions should serve as the set of all national forces, both elements of the government and the whole business, to build national oil palm industry is tough.</div><div><br></div><div><br></div><div><br></div><div>That based on the above matters and the implementation of Article 19 of Law No. 18 of 2004 on Plantations, then all stakeholders in the national palm oil industry started from seed, plantation up to producing derivatives deems it necessary to form the Indonesian Palm Oil Board (DMSI) through a declaration on December 7, 2006 in Nusa Dua Bali, by:</div><div><br></div><div>Indonesian Palm Oil Association (GAPKI), represented by H. Akmaluddin Hasibuan) (Chairman);</div><div><br></div><div>Indonesian Cooking Oil Industry Association (AIMMI), represented by Adiwisoko Kasman (Chairman);</div><div><br></div><div>Oleochemical Manufacturers Association of Indonesia (APOLIN), represented by Goei Stephen King (Chairman);</div><div><br></div><div>Indonesian Palm Oil Growers Association (Apkasindo), represented by Sumardi Syarief (Chairman);</div><div><br></div><div>Association of Indonesian Plantation (GPPI), represented by Soedjai Kartasasmita (Chairman);</div><div><br></div><div>Perkelapa-Indonesia Society of the oil (MAKSI), represented by Gardjito (on behalf of the oil community-Perkelapa Indonesia);</div><div><br></div><div>Directorate General of Processing and Marketing of Agricultural Products, represented by Djoko Said Damardjati;</div><div><br></div><div>Directorate General of Plantation, represented by Achmad Mangga Barani.</div><div><br></div><div>DMSI aims to improve cooperation and coordination between businesses and facilitate the formulation of regulations and national policies of the oil palm are able to bring businesses to compete, tough International market with regard to environmental sustainability.</div><div><br></div><div><br></div><div><br></div><div>DMSI as program and policy coordination center of the oil perkelapa-national task is to facilitate active:</div><div><br></div><div>Formulation development program of national palm oil industry.</div><div><br></div><div>Formulation of regulatory and policy development of national palm oil industry is energized, tough in the international market and continuing to be implemented by all authorized institutions and stakeholders.</div><div><br></div><div>The formulation of guidelines for long-term national development programs of oil palm.</div><div><br></div><div>Monitoring and evaluation of the implementation of the regulatory and policy development of national palm oil industry.</div><div><br></div><div>DMSI organizes:</div><div><br></div><div>Preparation of advice and judgment to the government in formulating policies perkelapa agri-of the oil;</div><div><br></div><div>The insistence on increasing productivity and efficiency, conduct research, and market-oriented development, as well as the development of human resources;</div><div><br></div><div>Implementation of inventory, monitoring and evaluation of the estate and mill production industry;</div><div><br></div><div>Facilitation of the implementation and promotion of exports, developing new market potential as well as maintaining and expanding existing markets;</div><div><br></div><div>Implementation of business advocacy and other support services as well as address the issue of environmental impact in order to build the business field of palm oil and its derivatives, which sustainably;</div><div><br></div><div>Provision of data and information through cooperation with the Central Bureau of Statistics;</div><div><br></div><div>Coordination with the agencies, both at central and local levels in creating a conducive business climate, especially in the field of law and security, as well as in cooperation with relevant organizations both within and outside the country;</div><div><br></div><div>Giving feedback and alternatives in the stabilization of prices and supplies of cooking oil palm in the domestic market;</div><div><br></div><div>Proposing the accelerated development of facilities and infrastructure.</div>', 1),
(3, 'Visi dan Misi', '<p><b>VISI DMSI</b><br><br></p><ul><li>Mendorong pengembangan industri minyak sawit yang berkelanjutan sebagai salah satu pilar pembangunan nasional</li><li>Menjadikan Indonesia Sebagai <i>World Leader</i> industri minyak sawit yang berwawasan lingkungan</li></ul>', 'VISION AND MISION', '<p><b>VISION DMSI</b><br><br></p><ul><li>Encouraging the development of a sustainable palm oil industry as one of the pillars of national development</li><li>As the World Leader Making Indonesia''s palm oil industry of environmentally sound</li></ul>', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_m`
--

CREATE TABLE IF NOT EXISTS `program_m` (
`id_program` int(11) NOT NULL,
  `judul_program` varchar(250) NOT NULL,
  `image` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `judul_english` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `program_m`
--

INSERT INTO `program_m` (`id_program`, `judul_program`, `image`, `tanggal`, `judul_english`) VALUES
(1, 'sesuatu ', 'Lighthouse.jpg', '2016-06-02', 'Something ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi_m`
--

CREATE TABLE IF NOT EXISTS `registrasi_m` (
`id_registrasi` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pekerjaan` varchar(200) NOT NULL,
  `id_asosiasi` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `perusahaan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `web` varchar(200) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `telepon` varchar(200) NOT NULL,
  `fax` varchar(200) NOT NULL,
  `no_ktp` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `user_key` varchar(100) NOT NULL,
  `user_status` varchar(100) NOT NULL,
  `disetujui` enum('ya','tidak') NOT NULL DEFAULT 'tidak'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `registrasi_m`
--

INSERT INTO `registrasi_m` (`id_registrasi`, `nama`, `pekerjaan`, `id_asosiasi`, `email`, `username`, `password`, `perusahaan`, `alamat`, `web`, `id_propinsi`, `id_kota`, `kode_pos`, `id_negara`, `telepon`, `fax`, `no_ktp`, `image`, `user_key`, `user_status`, `disetujui`) VALUES
(1, 'M Saepu Bahri', 'Programmer', 100, 'bachrisaiful6@gmail.com', 'bachri95', 'gabelpo95', 'PT Tunas Andalan Abadi', 'Bogor', 'fulbacktosharing95.wordpress.com', 32, 3201, '16720', 360, '089698016569', '1234567', '1234567', '1_117752.jpg', 'OUJDC', 'nonaktif', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regulasi_m`
--

CREATE TABLE IF NOT EXISTS `regulasi_m` (
`id_regulasi` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `file_regulasi` varchar(255) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `judul_english` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `regulasi_m`
--

INSERT INTO `regulasi_m` (`id_regulasi`, `judul`, `file_regulasi`, `tahun`, `judul_english`) VALUES
(11, 'asdasd', 'Permentan_11-2015_ISPO.pdf', ' 2020', 'asdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `serbaserbi_m`
--

CREATE TABLE IF NOT EXISTS `serbaserbi_m` (
`id_sesebi` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tanggal` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `keterangan_gambar` varchar(200) NOT NULL,
  `file_lampiran` varchar(200) NOT NULL,
  `judul_english` varchar(255) NOT NULL,
  `content_english` text NOT NULL,
  `caption_picture` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `serbaserbi_m`
--

INSERT INTO `serbaserbi_m` (`id_sesebi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_lampiran`, `judul_english`, `content_english`, `caption_picture`) VALUES
(9, 'Budi Daya Kelapa Sawit', '<span>dalam artikel kali ini akan dibahas tetang cara menanam kelapa sawit&nbsp;secara efisien sehingga biaya yang diperlukan akan semakin rendah. Saat ini agribisnis kelapa sawit (Elaeis guineensis Jacq.), baik yang berorientasi pasar lokal maupun global akan berhadapan dengan tuntutan kualitas produk dan kelestarian lingkungan selain tentunya kuantitas produksi.&nbsp;<br></span><div>Untuk dapat tumbuh dengan baik maka sawit membutuhkan Lama penyinaran matahari rata-rata 5-7 jam/hari. Curah hujan tahunan 1.500-4.000 mm. Temperatur optimal 24-280C. Ketinggian tempat yang ideal antara 1-500 m dpl. Kecepatan angin 5-6 km/jam untuk membantu proses penyerbukan.</div><div><br></div><div>Tanah yang baik mengandung banyak lempung, beraerasi baik dan subur. Berdrainase baik, permukaan air tanah cukup dalam, solum cukup dalam (80 cm), pH tanah 4-6, dan tanah tidak berbatu. Tanah Latosol, Ultisol dan Aluvial, tanah gambut saprik, dataran pantai dan muara sungai dapat dijadikan perkebunan kelapa sawit.</div><div><br></div><div>Berikut akan diuraikan cara menanam kelapa sawit yang efektif.</div><div><br></div><div>Pertama yang harus kita ketahui adalah&nbsp;<u><span>jenis - jenis bibit&nbsp;<a target="_blank" rel="nofollow" href="http://www.blogger.com/goog_61660133">kelapa sawi</a></span><a target="_blank" rel="nofollow" href="http://konsultasisawit.blogspot.com/2012/01/jenis-kelapa-sawit-unggul.html">t</a></u>&nbsp;yang unggul dimana sudah di ulas dalam artikel sebelumnya karena kita akan bergantung pada&nbsp;<a target="_blank" rel="nofollow" href="http://konsultasisawit.blogspot.com/2011/08/produksi-kelapa-sawit.html">produksi kelapa sawit</a>&nbsp;tersebut selama 25 tahun sehingga jika bibit tidak baik maka kita akan merugi selama 25 tahun tersebut</div><div><br></div><div>Kedua adalah sistem&nbsp;<a target="_blank" rel="nofollow" href="http://konsultasisawit.blogspot.com/2011/07/pembibitan-kelapa-sawit.html">pembersihan lahan kelapa sawit</a>&nbsp;atau sering disebut dengan istilah land clearing anda juga dapat membacanya dalam artikel sebelumnya</div><div><br></div><div>Ketiga adalah bagaimana cara&nbsp;<a target="_blank" rel="nofollow" href="http://konsultasisawit.blogspot.com/2011/07/pembibitan-kelapa-sawit.html">membibibitkan kelapa sawit</a>&nbsp;yang benar sebab jika di pembibitan tidak baik maka bibit yang di tanam akan kurang bagus sebab akan lama stagnan.</div>', '2016-06-02', '9_13936337821293320679.jpg', 'bcd', 'as.jpg', 'Oil Palm Cultivation', '<div>in this article will discuss how to plant oil palm neighbor efficiently so that the cost required would be lower. Nowadays agribusiness palm (Elaeis guineensis Jacq.), Both oriented local and global markets will be faced with the demands of product quality and environmental sustainability in addition to the quantity of production.</div><div>To grow well, the oil requires Lama sun shines an average of 5-7 hours / day. Annual rainfall of 1500-4000 mm. Optimal temperature 24-280C. The ideal altitude between 1-500 m above sea level. The wind speed of 5-6 km / h to help the process of pollination.</div><div><br></div><div>Good soil contains a lot of clay, aerated and fertile. Well drained, the water table deep enough, solum enough in (80 cm), soil pH 4-6, and the soil is not rocky. Latosol soil, Ultisol and alluvial, peat soil sapric, coastal plains and river estuaries can be used as oil palm plantations.</div><div><br></div><div>The following will describe how to plant oil palm effective.</div><div><br></div><div>First we need to know is the kind - the kind of superior oil palm seedlings which are already in a pillowcase in a previous article because we will rely on palm oil production for 25 years so if the seed is not good then we will lose money for 25 years</div><div><br></div><div>The second is the cleaning system of oil palm land or often referred to as land clearing you can also read it in a previous article</div><div><br></div><div>The third is how membibibitkan right palm in the nursery because if not better then the seeds being planted will be less good because it will be a long stagnant.</div>', 'Oil Palm Cultivation'),
(10, 'Ingin Membeli Kebun Sawit, Baca Tips Ini Agar Tidak Nyesal !', '<p>Bagi sebagian besar masyarakat Sumatera tentunya sudah tidak asing lagi dengan bisnis perkebunan kelapa sawit. Bisnis budidaya kelapa sawit sudah dikenal luas dan menjadi primadona bagi sebagian besar masyarakat Sumatera khususnya di Riau. Bagaimana tidak, jika harga komoditi ini sedang baik petani bisa mendapatkan hasil panen kotor sebesar 2 juta rupiah/bulan dari setiap hektarnya untuk tanaman yang sudah berproduksi.</p><p>Dari waktu ke waktu pertumbuhan lahan kelapa sawit di Riau semakin tinggi sehingga banyak lahan yang terkonversi menjadi perkebunan kelapa sawit. Hal ini tentunya membuat ketersediaan lahan semakin menipis sehingga bagi anda yang baru ingin memulai tentunya harus menyiapkan dana lebih untuk membeli lahan kosong.</p><p>Saat ini untuk memulai bisnis perkebunan kelapa sawit setidaknya anda membutuhkan waktu kurang lebih empat tahun sebelum tanaman kelapa sawit anda berproduksi dan dapat dipanen atau sering disebut TM (tanaman menghasilkan), selama masa tanaman belum menghasilkan (TBM) anda tentunya harus terus memberikan perawatan yang baik agar hasilnya baik.</p><p>Beruntungnya bagi anda yang tidak suka menunggu terlalu lama dimulai dari penanaman sampai dengan panen anda dapat membeli kebun sawit yang telah menghasilkan. Ada cukup banyak kebun sawit di jual dipasaran oleh pemiliknya, dan harganya pun bervariasi tergantung lokasi dan jenis tanahnya.</p>', '2016-06-01', '10_12662666_970663963021516_716918815545948865_n.jpg', 'Ingin Membeli Kebun Sawit, Baca Tips Ini Agar Tidak Nyesal !', '77panensawit-yus.jpg', 'Want to Buy Oil Palm Plantations, Read Tips For THIS IS NOT sorry!', '<div>For most people of Sumatra course, already familiar with the business of oil palm plantations. The business of oil palm cultivation is already widely known and to be excellent for the majority of the people of Sumatra, especially in Riau. How not, if the price of this commodity were both farmers can earn gross yield of 2 million rupiah / month from each hectare of crops already in production.</div><div><br></div><div>From time to time the growth of oil palm plantations in Riau is getting high so much land is converted into oil palm plantations. This obviously makes dwindling availability of land so that those of you who want to start a new course must be set aside for the purchase of vacant land.</div><div><br></div><div>This time to launch palm oil business at least you took less than four years before the oil palm crop you produce and can be harvested or often called TM (crop yield), during the period of immature plants (TBM) you certainly have to continue to provide good care so that the results are good.</div><div><br></div><div>Fortunately for those of you who do not like to wait too long starting from planting to harvest, you can buy oil palm plantations have produced. There are quite a lot of oil palm plantations in sold in the market by its owner, and the price varies depending on the location and type of soil.</div>', 'Want to Buy Oil Palm Plantations, Read Tips For THIS IS NOT sorry!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed_m`
--

CREATE TABLE IF NOT EXISTS `sosmed_m` (
`id_sosmed` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `id_logo` int(11) NOT NULL,
  `link` varchar(200) NOT NULL,
  `urutan` int(11) NOT NULL,
  `status` enum('active','nonactive') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sosmed_m`
--

INSERT INTO `sosmed_m` (`id_sosmed`, `nama`, `id_logo`, `link`, `urutan`, `status`) VALUES
(2, 'Twitter', 2, 'https://twitter.com/dewan_sawit', 2, 'active'),
(4, 'Facebook', 1, 'https://www.facebook.com/Dewan-Minyak-Sawit-Indonesia-DMSI-1053108968116149/', 1, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sponsor_m`
--

CREATE TABLE IF NOT EXISTS `sponsor_m` (
`id_sponsor` int(11) NOT NULL,
  `nama_sponsor` varchar(255) NOT NULL,
  `image_sponsor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `spt_kota_m`
--

CREATE TABLE IF NOT EXISTS `spt_kota_m` (
  `id_kota` int(11) unsigned NOT NULL,
  `id_propinsi` int(11) unsigned NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `mdb` int(11) DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spt_kota_m`
--

INSERT INTO `spt_kota_m` (`id_kota`, `id_propinsi`, `nama_kota`, `mdb`, `mdd`) VALUES
(1101, 11, 'Kab. Aceh Selatan', 1, '2016-08-09 07:30:25'),
(1102, 11, 'Kab. Aceh Tenggara', 1, '2010-07-04 18:45:27'),
(1103, 11, 'Kab. Aceh Timur', 1, '2010-07-04 18:45:27'),
(1104, 11, 'Kab. Aceh Tengah', 1, '2010-07-04 18:45:27'),
(1107, 11, 'Kab. Pidie', 1, '2010-07-04 18:45:27'),
(1108, 11, 'Kab. Aceh Utara', 1, '2010-07-04 18:45:27'),
(1109, 11, 'Kab. Simeulue', 1, '2010-07-04 18:45:27'),
(1110, 11, 'Kab. Aceh Singkil', 1, '2010-07-04 18:45:27'),
(1111, 11, 'Kab. Bireuen', 1, '2010-07-04 18:45:27'),
(1113, 11, 'Kab. Gayo Lues', 1, '2010-07-04 18:45:27'),
(1114, 11, 'Kab. Aceh Jaya', 1, '2010-07-04 18:45:27'),
(1115, 11, 'Kab. Nagan Raya', 1, '2010-07-04 18:45:27'),
(1116, 11, 'Kab. Aceh Tamiang', 1, '2010-07-04 18:45:27'),
(1117, 11, 'Kab. Bener Meriah', 1, '2010-07-04 18:45:27'),
(1171, 11, 'Kota Banda Aceh', 1, '2010-07-04 18:45:27'),
(1172, 11, 'Kota Sabang', 1, '2010-07-04 18:45:27'),
(1173, 11, 'Kota Lhokseumawe', 1, '2010-07-04 18:45:27'),
(1174, 11, 'Kota Langsa', 1, '2010-07-04 18:45:27'),
(1201, 12, 'Kab. Tapanuli Tengah', 1, '2010-07-04 18:45:27'),
(1202, 12, 'Kab. Tapanuli Utara', 1, '2010-07-04 18:45:27'),
(1203, 12, 'Kab. Tapanuli Selatan', 1, '2010-07-04 18:45:27'),
(1204, 12, 'Kab. Nias', 1, '2010-07-04 18:45:27'),
(1205, 12, 'Kab. Langkat', 1, '2010-07-04 18:45:27'),
(1206, 12, 'Kab. Karo', 1, '2010-07-04 18:45:27'),
(1207, 12, 'Kab. Deli Serdang', 1, '2010-07-04 18:45:27'),
(1208, 12, 'Kab. Simalungun', 1, '2010-07-04 18:45:27'),
(1209, 12, 'Kab. Asahan', 1, '2010-07-04 18:45:27'),
(1210, 12, 'Kab. Labuhan Batu', 1, '2010-07-04 18:45:27'),
(1211, 12, 'Kab. Dairi', 1, '2010-07-04 18:45:27'),
(1212, 12, 'Kab. Toba Samosir', 1, '2010-07-04 18:45:27'),
(1213, 12, 'Kab. Mandailing Natal', 1, '2010-07-04 18:45:27'),
(1214, 12, 'Kab. Nias Selatan', 1, '2010-07-04 18:45:27'),
(1215, 12, 'Kab. Pakpak Barat', 1, '2010-07-04 18:45:27'),
(1216, 12, 'Kab. Humbang Hasundutan', 1, '2010-07-04 18:45:27'),
(1217, 12, 'Kab. Samosir', 1, '2010-07-04 18:45:27'),
(1218, 12, 'Kab. Serdang Begadai', 1, '2010-07-04 18:45:27'),
(1271, 12, 'Kota Medan', 1, '2010-07-04 18:45:27'),
(1272, 12, 'Kota Pematang Siantar', 1, '2010-07-04 18:45:27'),
(1273, 12, 'Kota Sibolga', 1, '2010-07-04 18:45:27'),
(1274, 12, 'Kota Tanjung Balai', 1, '2010-07-04 18:45:27'),
(1275, 12, 'Kota Binjai', 1, '2010-07-04 18:45:27'),
(1276, 12, 'Kota Tebing Tinggi', 1, '2010-07-04 18:45:27'),
(1277, 12, 'Kota Padang Sidempuan', 1, '2010-07-04 18:45:27'),
(1301, 13, 'Kab. Pesisir Selatan', 1, '2010-07-04 18:45:27'),
(1302, 13, 'Kab. Solok', 1, '2010-07-04 18:45:27'),
(1303, 13, 'Kab. Sawah Lunto Sijunjung', 1, '2010-07-04 18:45:27'),
(1304, 13, 'Kab. Tanah Datar', 1, '2010-07-04 18:45:27'),
(1305, 13, 'Kab. Padang Pariaman', 1, '2010-07-04 18:45:27'),
(1306, 13, 'Kab. Agam', 1, '2010-07-04 18:45:27'),
(1307, 13, 'Kab. Limapuluh Kota', 1, '2010-07-04 18:45:27'),
(1308, 13, 'Kab. Pasaman', 1, '2010-07-04 18:45:27'),
(1309, 13, 'Kab. Kepulauan Mentawi', 1, '2010-07-04 18:45:27'),
(1310, 13, 'Kab. Dharmasraya', 1, '2010-07-04 18:45:27'),
(1311, 13, 'Kab. Solok Selatan', 1, '2010-07-04 18:45:27'),
(1312, 13, 'Kab. Pasaman Barat', 1, '2010-07-04 18:45:27'),
(1371, 13, 'Kota Padang', 1, '2010-07-04 18:45:27'),
(1372, 13, 'Kota Solok', 1, '2010-07-04 18:45:27'),
(1373, 13, 'Kota Sawah Lunto', 1, '2010-07-04 18:45:27'),
(1374, 13, 'Kota Padang Panjang', 1, '2010-07-04 18:45:27'),
(1375, 13, 'Kota Bukit Tinggi', 1, '2010-07-04 18:45:27'),
(1376, 13, 'Kota Payakumbuh', 1, '2010-07-04 18:45:27'),
(1377, 13, 'Kota Pariaman', 1, '2010-07-04 18:45:27'),
(1401, 14, 'Kab. Kampar', 1, '2010-07-04 18:45:27'),
(1402, 14, 'Kab. Indragiri Ulu', 1, '2010-07-04 18:45:27'),
(1403, 14, 'Kab. Bengkalis', 1, '2010-07-04 18:45:27'),
(1404, 14, 'Kab. Indragiri Hilir', 1, '2010-07-04 18:45:27'),
(1405, 14, 'Kab. Pelalawan', 1, '2010-07-04 18:45:27'),
(1406, 14, 'Kab. Rokan Hulu', 1, '2010-07-04 18:45:27'),
(1407, 14, 'Kab. Rokan Hilir', 1, '2010-07-04 18:45:27'),
(1408, 14, 'Kab. Siak', 1, '2010-07-04 18:45:27'),
(1409, 14, 'Kab. Kuantan Singingi', 1, '2010-07-04 18:45:27'),
(1471, 14, 'Kota Pekanbaru', 1, '2010-07-04 18:45:27'),
(1472, 14, 'Kota Dumai', 1, '2010-07-04 18:45:27'),
(1501, 15, 'Kab. Kerinci', 1, '2010-07-04 18:45:27'),
(1502, 15, 'Kab. Merangin', 1, '2010-07-04 18:45:27'),
(1503, 15, 'Kab. Sarolangun', 1, '2010-07-04 18:45:27'),
(1504, 15, 'Kab. Batanghari', 1, '2010-07-04 18:45:27'),
(1505, 15, 'Kab. Muaro Jambi', 1, '2010-07-04 18:45:27'),
(1506, 15, 'Kab. Tanjung Jabung Barat', 1, '2010-07-04 18:45:27'),
(1507, 15, 'Kab. Tanjung Jabung Timur', 1, '2010-07-04 18:45:27'),
(1508, 15, 'Kab. Bungo', 1, '2010-07-04 18:45:27'),
(1509, 15, 'Kab. Tebo', 1, '2010-07-04 18:45:27'),
(1571, 15, 'Kota Jambi', 1, '2010-07-04 18:45:27'),
(1601, 16, 'Kab. Ogan Komering Ulu', 1, '2010-07-04 18:45:27'),
(1602, 16, 'Kab. Ogan Komering Ilir', 1, '2010-07-04 18:45:27'),
(1603, 16, 'Kab. Muara Enim', 1, '2010-07-04 18:45:27'),
(1604, 16, 'Kab. Lahat', 1, '2010-07-04 18:45:27'),
(1605, 16, 'Kab. Musi Rawas', 1, '2010-07-04 18:45:27'),
(1606, 16, 'Kab. Musi Banyuasin', 1, '2010-07-04 18:45:27'),
(1607, 16, 'Kab. Banyuasin', 1, '2010-07-04 18:45:27'),
(1608, 16, 'Kab. Oku Timur', 1, '2010-07-04 18:45:27'),
(1609, 16, 'Kab. Oku Selatan', 1, '2010-07-04 18:45:27'),
(1610, 16, 'Kab. Ogan Ilir', 1, '2010-07-04 18:45:27'),
(1671, 16, 'Kota Palembang', 1, '2010-07-04 18:45:27'),
(1672, 16, 'Kota Pagaralam', 1, '2010-07-04 18:45:27'),
(1673, 16, 'Kota Lubuklinggau', 1, '2010-07-04 18:45:27'),
(1674, 16, 'Kota Prabumulih', 1, '2010-07-04 18:45:27'),
(1701, 17, 'Kab. Bengkulu Selatan', 1, '2010-07-04 18:45:27'),
(1702, 17, 'Kab. Rejanglebong', 1, '2010-07-04 18:45:27'),
(1703, 17, 'Kab. Bengkulu Utara', 1, '2010-07-04 18:45:27'),
(1704, 17, 'Kab. Kaur', 1, '2010-07-04 18:45:27'),
(1705, 17, 'Kab. Seluma', 1, '2010-07-04 18:45:27'),
(1706, 17, 'Kab. Muko Muko', 1, '2010-07-04 18:45:27'),
(1707, 17, 'Kab. Lebong', 1, '2010-07-04 18:45:27'),
(1708, 17, 'Kab. Kepahiang', 1, '2010-07-04 18:45:27'),
(1771, 17, 'Kota Bengkulu', 1, '2010-07-04 18:45:27'),
(1801, 18, 'Kab. Lampung Selatan', 1, '2010-07-04 18:45:27'),
(1802, 18, 'Kab. Lampung Tengah', 1, '2010-07-04 18:45:27'),
(1803, 18, 'Kab. Lampung Utara', 1, '2010-07-04 18:45:27'),
(1804, 18, 'Kab. Lampung Barat', 1, '2010-07-04 18:45:27'),
(1805, 18, 'Kab. Tulang Bawang', 1, '2010-07-04 18:45:27'),
(1806, 18, 'Kab. Tanggamus', 1, '2010-07-04 18:45:27'),
(1807, 18, 'Kab. Lampung Timur', 1, '2010-07-04 18:45:27'),
(1808, 18, 'Kab. Way Kanan', 1, '2010-07-04 18:45:27'),
(1871, 18, 'Kota Bandar Lampung', 1, '2010-07-04 18:45:27'),
(1872, 18, 'Kota Metro', 1, '2010-07-04 18:45:27'),
(1901, 19, 'Kab. Bangka', 1, '2010-07-04 18:45:27'),
(1902, 19, 'Kab. Belitung', 1, '2010-07-04 18:45:27'),
(1903, 19, 'Kab. Bangka Selatan', 1, '2010-07-04 18:45:27'),
(1904, 19, 'Kab. Bangka Tengah', 1, '2010-07-04 18:45:27'),
(1905, 19, 'Kab. Bangka Barat', 1, '2010-07-04 18:45:27'),
(1906, 19, 'Kab. Bangka Timur', 1, '2010-07-04 18:45:27'),
(1971, 19, 'Kota Pangkal Pinang', 1, '2010-07-04 18:45:27'),
(2101, 21, 'Kab. Kepulauan Anamas', 1, '2010-07-04 18:45:27'),
(2102, 21, 'Kab. Karimun', 1, '2010-07-04 18:45:27'),
(2103, 21, 'Kab. Natuna', 1, '2010-07-04 18:45:27'),
(2104, 21, 'Kab. Lingga', 1, '2010-07-04 18:45:27'),
(2105, 21, 'Kota Batam', 1, '2010-07-04 18:45:27'),
(2106, 21, 'Kota Tanjung Pinang', 1, '2010-07-04 18:45:27'),
(3101, 31, 'Kab. Adm', 1, '2010-07-04 18:45:27'),
(3171, 31, 'Jakarta Pusat', 1, '2010-07-04 18:45:27'),
(3172, 31, 'Jakarta Utara', 1, '2010-07-04 18:45:27'),
(3173, 31, 'Jakarta Barat', 1, '2010-07-04 18:45:27'),
(3174, 31, 'Jakarta Selatan', 1, '2010-07-04 18:45:27'),
(3175, 31, 'Jakarta Timur', 1, '2010-07-04 18:45:27'),
(3201, 32, 'Kab. Bogor', 1, '2010-07-04 18:45:27'),
(3202, 32, 'Kab. Sukabumi', 1, '2010-07-04 18:45:27'),
(3203, 32, 'Kab. Cianjur', 1, '2010-07-04 18:45:27'),
(3204, 32, 'Kab. Bandung', 1, '2010-07-04 18:45:27'),
(3205, 32, 'Kab. Garut', 1, '2010-07-04 18:45:27'),
(3206, 32, 'Kab. Tasikmalaya', 1, '2010-07-04 18:45:27'),
(3207, 32, 'Kab. Ciamis', 1, '2010-07-04 18:45:27'),
(3208, 32, 'Kab. Kuningan', 1, '2010-07-04 18:45:27'),
(3209, 32, 'Kab. Cirebon', 1, '2010-07-04 18:45:27'),
(3210, 32, 'Kab. Majalengka', 1, '2010-07-04 18:45:27'),
(3211, 32, 'Kab. Sumedang', 1, '2010-07-04 18:45:27'),
(3212, 32, 'Kab. Indramayu', 1, '2010-07-04 18:45:27'),
(3213, 32, 'Kab. Subang', 1, '2010-07-04 18:45:27'),
(3214, 32, 'Kab. Purwakarta', 1, '2010-07-04 18:45:27'),
(3215, 32, 'Kab. Karawang', 1, '2010-07-04 18:45:27'),
(3216, 32, 'Kab. Bekasi', 1, '2010-07-04 18:45:27'),
(3271, 32, 'Kota Bogor', 1, '2010-07-04 18:45:27'),
(3272, 32, 'Kota Sukabumi', 1, '2010-07-04 18:45:27'),
(3273, 32, 'Kota Bandung', 1, '2010-07-04 18:45:27'),
(3274, 32, 'Kota Cirebon', 1, '2010-07-04 18:45:27'),
(3275, 32, 'Kota Bekasi', 1, '2010-07-04 18:45:27'),
(3276, 32, 'Kota Depok', 1, '2010-07-04 18:45:27'),
(3277, 32, 'Kota Cimahi', 1, '2010-07-04 18:45:27'),
(3278, 32, 'Kota Tasikmalaya', 1, '2010-07-04 18:45:27'),
(3279, 32, 'Kota Banjar', 1, '2010-07-04 18:45:27'),
(3301, 33, 'Kab. Cilacap', 1, '2010-07-04 18:45:27'),
(3302, 33, 'Kab. Banyumas', 1, '2010-07-04 18:45:27'),
(3303, 33, 'Kab. Purbalingga', 1, '2010-07-04 18:45:27'),
(3304, 33, 'Kab. Banjarnegara', 1, '2010-07-04 18:45:27'),
(3305, 33, 'Kab. Kebumen', 1, '2010-07-04 18:45:27'),
(3306, 33, 'Kab. Purworejo', 1, '2010-07-04 18:45:27'),
(3307, 33, 'Kab. Wonosobo', 1, '2010-07-04 18:45:27'),
(3308, 33, 'Kab. Magelang', 1, '2010-07-04 18:45:27'),
(3309, 33, 'Kab. Boyolali', 1, '2010-07-04 18:45:27'),
(3310, 33, 'Kab. Klaten', 1, '2010-07-04 18:45:27'),
(3311, 33, 'Kab. Sukoharjo', 1, '2010-07-04 18:45:27'),
(3312, 33, 'Kab. Wonogiri', 1, '2010-07-04 18:45:27'),
(3313, 33, 'Kab. Karanganyar', 1, '2010-07-04 18:45:27'),
(3314, 33, 'Kab. Sragen', 1, '2010-07-04 18:45:27'),
(3315, 33, 'Kab. Grobogan', 1, '2010-07-04 18:45:27'),
(3316, 33, 'Kab. Blora', 1, '2010-07-04 18:45:27'),
(3317, 33, 'Kab. Rembang', 1, '2010-07-04 18:45:27'),
(3318, 33, 'Kab. Pati', 1, '2010-07-04 18:45:27'),
(3319, 33, 'Kab. Kudus', 1, '2010-07-04 18:45:27'),
(3320, 33, 'Kab. Jepara', 1, '2010-07-04 18:45:27'),
(3321, 33, 'Kab. Demak', 1, '2010-07-04 18:45:27'),
(3322, 33, 'Kab. Semarang', 1, '2010-07-04 18:45:27'),
(3323, 33, 'Kab. Temanggung', 1, '2010-07-04 18:45:27'),
(3324, 33, 'Kab. Kendal', 1, '2010-07-04 18:45:27'),
(3325, 33, 'Kab. Batang', 1, '2010-07-04 18:45:27'),
(3326, 33, 'Kab. Pekalongan', 1, '2010-07-04 18:45:27'),
(3327, 33, 'Kab. Pemalang', 1, '2010-07-04 18:45:27'),
(3328, 33, 'Kab. Tegal', 1, '2010-07-04 18:45:27'),
(3329, 33, 'Kab. Brebes', 1, '2010-07-04 18:45:27'),
(3371, 33, 'Kota Magelang', 1, '2010-07-04 18:45:27'),
(3372, 33, 'Kota Surakarta', 1, '2010-07-04 18:45:27'),
(3373, 33, 'Kota Salatiga', 1, '2010-07-04 18:45:27'),
(3374, 33, 'Kota Semarang', 1, '2010-07-04 18:45:27'),
(3375, 33, 'Kota Pekalongan', 1, '2010-07-04 18:45:27'),
(3376, 33, 'Kota Tegal', 1, '2010-07-04 18:45:27'),
(3401, 34, 'Kab. Kulon Progo', 1, '2010-07-04 18:45:27'),
(3402, 34, 'Kab. Bantul', 1, '2010-07-04 18:45:27'),
(3403, 34, 'Kab. Gunung Kidul', 1, '2010-07-04 18:45:27'),
(3404, 34, 'Kab. Sleman', 1, '2010-07-04 18:45:27'),
(3471, 34, 'Kota Yogyakarta', 1, '2010-07-04 18:45:27'),
(3501, 35, 'Kab. Pacitan', 1, '2010-07-04 18:45:27'),
(3502, 35, 'Kab. Ponorogo', 1, '2010-07-04 18:45:27'),
(3503, 35, 'Kab. Trenggalek', 1, '2010-07-04 18:45:27'),
(3504, 35, 'Kab. Tulungagung', 1, '2010-07-04 18:45:27'),
(3505, 35, 'Kab. Blitar', 1, '2010-07-04 18:45:27'),
(3506, 35, 'Kab. Kediri', 1, '2010-07-04 18:45:27'),
(3507, 35, 'Kab. Malang', 1, '2010-07-04 18:45:27'),
(3508, 35, 'Kab. Lumajang', 1, '2010-07-04 18:45:27'),
(3509, 35, 'Kab. Jember', 1, '2010-07-04 18:45:27'),
(3510, 35, 'Kab. Banyuwangi', 1, '2010-07-04 18:45:27'),
(3511, 35, 'Kab. Bondowoso', 1, '2010-07-04 18:45:27'),
(3512, 35, 'Kab. Situbondo', 1, '2010-07-04 18:45:27'),
(3513, 35, 'Kab. Probolinggo', 1, '2010-07-04 18:45:27'),
(3514, 35, 'Kab. Pasuruan', 1, '2010-07-04 18:45:27'),
(3515, 35, 'Kab. Sidoarjo', 1, '2010-07-04 18:45:27'),
(3516, 35, 'Kab. Mojokerto', 1, '2010-07-04 18:45:27'),
(3517, 35, 'Kab. Jombang', 1, '2010-07-04 18:45:27'),
(3518, 35, 'Kab. Nganjuk', 1, '2010-07-04 18:45:27'),
(3519, 35, 'Kab. Madiun', 1, '2010-07-04 18:45:27'),
(3520, 35, 'Kab. Magetan', 1, '2010-07-04 18:45:27'),
(3521, 35, 'Kab. Ngawi', 1, '2010-07-04 18:45:27'),
(3522, 35, 'Kab. Bojonegoro', 1, '2010-07-04 18:45:27'),
(3523, 35, 'Kab. Tuban', 1, '2010-07-04 18:45:27'),
(3524, 35, 'Kab. Lamongan', 1, '2010-07-04 18:45:27'),
(3525, 35, 'Kab. Gresik', 1, '2010-07-04 18:45:27'),
(3526, 35, 'Kab. Bangkalan', 1, '2010-07-04 18:45:27'),
(3527, 35, 'Kab. Sampang', 1, '2010-07-04 18:45:27'),
(3528, 35, 'Kab. Pamekasan', 1, '2010-07-04 18:45:27'),
(3529, 35, 'Kab. Sumenep', 1, '2010-07-04 18:45:27'),
(3571, 35, 'Kota Kediri', 1, '2010-07-04 18:45:27'),
(3572, 35, 'Kota Blitar', 1, '2010-07-04 18:45:27'),
(3573, 35, 'Kota Malang', 1, '2010-07-04 18:45:27'),
(3574, 35, 'Kota Probolinggo', 1, '2010-07-04 18:45:27'),
(3575, 35, 'Kota Pasuruan', 1, '2010-07-04 18:45:27'),
(3576, 35, 'Kota Mojokerto', 1, '2010-07-04 18:45:27'),
(3577, 35, 'Kota Madiun', 1, '2010-07-04 18:45:27'),
(3578, 35, 'Kota Surabaya', 1, '2010-07-04 18:45:27'),
(3579, 35, 'Kota Batu', 1, '2010-07-04 18:45:27'),
(3601, 36, 'Kab. Pandeglang', 1, '2010-07-04 18:45:27'),
(3602, 36, 'Kab. Lebak', 1, '2010-07-04 18:45:27'),
(3603, 36, 'Kab. Tangerang', 1, '2010-07-04 18:45:27'),
(3604, 36, 'Kab. Serang', 1, '2010-07-04 18:45:27'),
(3671, 36, 'Kota Tangerang', 1, '2010-07-04 18:45:27'),
(3672, 36, 'Kota Cilegon', 1, '2010-07-04 18:45:27'),
(5101, 51, 'Kab. Jembrana', 1, '2010-07-04 18:45:27'),
(5102, 51, 'Kab. Tabanan', 1, '2010-07-04 18:45:27'),
(5103, 51, 'Kab. Badung', 1, '2010-07-04 18:45:27'),
(5104, 51, 'Kab. Gianyar', 1, '2010-07-04 18:45:27'),
(5105, 51, 'Kab. Klungkung', 1, '2010-07-04 18:45:27'),
(5106, 51, 'Kab. Bangli', 1, '2010-07-04 18:45:27'),
(5107, 51, 'Kab. Karangasem', 1, '2010-07-04 18:45:27'),
(5108, 51, 'Kab. Buleleng', 1, '2010-07-04 18:45:27'),
(5171, 51, 'Kota Denpasar', 1, '2010-07-04 18:45:27'),
(5201, 52, 'Kab. Lombok Barat', 1, '2010-07-04 18:45:27'),
(5202, 16, 'Kab. Empat Lawang', 1, '2010-07-04 18:45:27'),
(5203, 18, 'Kab. Mesuji', 1, '2010-07-04 18:45:27'),
(5204, 18, 'Kab. Pesawaran', 1, '2010-07-04 18:45:27'),
(5205, 18, 'Kab. Pringsewu', 1, '2010-07-04 18:45:27'),
(5206, 18, 'Kab. Tulang Bawang Barat', 1, '2010-07-04 18:45:27'),
(5208, 21, 'Kab. Bintan', 1, '2010-07-04 18:45:27'),
(5209, 32, 'Kab. Bandung Barat', 1, '2010-07-04 18:45:27'),
(5210, 36, 'Kota Serang', 1, '2010-07-04 18:45:27'),
(5211, 36, 'Kota Tangerang Selatan', 1, '2010-07-04 18:45:27'),
(5212, 52, 'Kab. Bima', 1, '2010-07-04 18:45:27'),
(5213, 52, 'Kab. Dompu', 1, '2010-07-04 18:45:27'),
(5214, 52, 'Kab. Lombok Tengah', 1, '2010-07-04 18:45:27'),
(5215, 52, 'Kab. Lombok Timur', 1, '2010-07-04 18:45:27'),
(5216, 52, 'Kab. Sumbawa', 1, '2010-07-04 18:45:27'),
(5217, 52, 'Kab. Sumbawa Barat', 1, '2010-07-04 18:45:27'),
(5218, 52, 'Kota Mataram', 1, '2010-07-04 18:45:27'),
(5219, 52, 'Kota Bima', 1, '2010-07-04 18:45:27'),
(5220, 53, 'Kab. Alor', 1, '2010-07-04 18:45:27'),
(5221, 53, 'Kab. Belu', 1, '2010-07-04 18:45:27'),
(5222, 53, 'Kab. Ende', 1, '2010-07-04 18:45:27'),
(5223, 53, 'Kab. Flores Timur', 1, '2010-07-04 18:45:27'),
(5224, 53, 'Kab. Kupang', 1, '2010-07-04 18:45:27'),
(5225, 53, 'Kab. Lembata', 1, '2010-07-04 18:45:27'),
(5226, 53, 'Kab. Manggarai', 1, '2010-07-04 18:45:27'),
(5227, 53, 'Kab. Manggarai Barat', 1, '2010-07-04 18:45:27'),
(5228, 53, 'Kab. Ngada', 1, '2010-07-04 18:45:27'),
(5229, 53, 'Kab. Rote Ndao', 1, '2010-07-04 18:45:27'),
(5230, 53, 'Kab. Sikka', 1, '2010-07-04 18:45:27'),
(5231, 53, 'Kab. Sumba Barat', 1, '2010-07-04 18:45:27'),
(5232, 53, 'Kab. Sumba Timur', 1, '2010-07-04 18:45:27'),
(5233, 53, 'Kab. Timor Tengah Selatan', 1, '2010-07-04 18:45:27'),
(5234, 53, 'Kab. Timor Tengah Utara', 1, '2010-07-04 18:45:27'),
(5235, 53, 'Kota Kupang', 1, '2010-07-04 18:45:27'),
(5236, 61, 'Kab. Bengkayang', 1, '2010-07-04 18:45:27'),
(5237, 61, 'Kab. Kapuas Hulu', 1, '2010-07-04 18:45:27'),
(5238, 61, 'Kab. Kayong Utara', 1, '2010-07-04 18:45:27'),
(5239, 61, 'Kab. Kubu Raya', 1, '2010-07-04 18:45:27'),
(5240, 61, 'Kab. Landak', 1, '2010-07-04 18:45:27'),
(5241, 61, 'Kab. Melawi', 1, '2010-07-04 18:45:27'),
(5242, 61, 'Kab. Pontianak', 1, '2010-07-04 18:45:27'),
(5243, 61, 'Kab. Sambas', 1, '2010-07-04 18:45:27'),
(5244, 61, 'Kab. Sanggau', 1, '2010-07-04 18:45:27'),
(5245, 61, 'Kab. Sekadau', 1, '2010-07-04 18:45:27'),
(5246, 61, 'Kab. Sintang', 1, '2010-07-04 18:45:27'),
(5247, 61, 'Kota Pontianak', 1, '2010-07-04 18:45:27'),
(5248, 61, 'Kota Singkawang', 1, '2010-07-04 18:45:27'),
(5249, 61, 'Kab. Ketapang', 1, '2010-07-04 18:45:27'),
(5250, 62, 'Kab. Barito Selatan', 1, '2010-07-04 18:45:27'),
(5251, 62, 'Kab. Barito Timur', 1, '2010-07-04 18:45:27'),
(5252, 62, 'Kab. Barito Utara', 1, '2010-07-04 18:45:27'),
(5253, 62, 'Kab. Gunung Mas', 1, '2010-07-04 18:45:27'),
(5254, 62, 'Kab. Kapuas', 1, '2010-07-04 18:45:27'),
(5255, 62, 'Kab. Katingan', 1, '2010-07-04 18:45:27'),
(5256, 62, 'Kab. Kotawaringin Barat', 1, '2010-07-04 18:45:27'),
(5257, 62, 'Kab. Kotawaringin Timur', 1, '2010-07-04 18:45:27'),
(5258, 62, 'Kab. Lamandau', 1, '2010-07-04 18:45:27'),
(5259, 62, 'Kab. Murung Raya', 1, '2010-07-04 18:45:27'),
(5260, 62, 'Kab. Pulang Pisau', 1, '2010-07-04 18:45:27'),
(5261, 62, 'Kab. Sukamara', 1, '2010-07-04 18:45:27'),
(5262, 62, 'Kab. Seruyan', 1, '2010-07-04 18:45:27'),
(5263, 62, 'Kota Palangka Raya', 1, '2010-07-04 18:45:27'),
(5264, 63, 'Kab. Balangan', 1, '2010-07-04 18:45:27'),
(5265, 63, 'Kab. Banjar', 1, '2010-07-04 18:45:27'),
(5266, 63, 'Kab. Barito Kuala', 1, '2010-07-04 18:45:27'),
(5267, 63, 'Kab. Hulu Sungai Selatan', 1, '2010-07-04 18:45:27'),
(5268, 63, 'Kab. Hulu Sungai Tengah', 1, '2010-07-04 18:45:27'),
(5269, 63, 'Kab. Hulu Sungai Utara', 1, '2010-07-04 18:45:27'),
(5270, 63, 'Kab. Kotabaru', 1, '2010-07-04 18:45:27'),
(5271, 63, 'Kab. Tabalong', 1, '2010-07-04 18:45:27'),
(5272, 63, 'Kab. Tanah Bumbu', 1, '2010-07-04 18:45:27'),
(5273, 63, 'Kab. Tanah Laut', 1, '2010-07-04 18:45:27'),
(5274, 63, 'Kab. Tapin', 1, '2010-07-04 18:45:27'),
(5275, 63, 'Kota Banjarbaru', 1, '2010-07-04 18:45:27'),
(5276, 63, 'Kota Banjarmasin', 1, '2010-07-04 18:45:27'),
(5277, 64, 'Kab. Berau', 1, '2010-07-04 18:45:27'),
(5278, 64, 'Kab. Bulungan', 1, '2010-07-04 18:45:27'),
(5279, 64, 'Kab. Kutai Barat', 1, '2010-07-04 18:45:27'),
(5280, 64, 'Kab. Kutai Kartanegara', 1, '2010-07-04 18:45:27'),
(5281, 64, 'Kab. Kutai Timur', 1, '2010-07-04 18:45:27'),
(5282, 64, 'Kab. Malinau', 1, '2010-07-04 18:45:27'),
(5283, 64, 'Kab. Nunukan', 1, '2010-07-04 18:45:27'),
(5284, 64, 'Kab. Paser', 1, '2010-07-04 18:45:27'),
(5285, 64, 'Kab. Penajam Paser Utara', 1, '2010-07-04 18:45:27'),
(5286, 64, 'Kab. Tana Tidung', 1, '2010-07-04 18:45:27'),
(5287, 64, 'Kota Balikpapan', 1, '2010-07-04 18:45:27'),
(5288, 64, 'Kota Bontang', 1, '2010-07-04 18:45:27'),
(5289, 64, 'Kota Samarinda', 1, '2010-07-04 18:45:27'),
(5290, 64, 'Kota Tarakan', 1, '2010-07-04 18:45:27'),
(5291, 71, 'Kab. Bolaang Mongondow', 1, '2010-07-04 18:45:27'),
(5292, 71, 'Kab. Bolaang Mongondow Selatan', 1, '2010-07-04 18:45:27'),
(5293, 71, 'Kab. Bolaang Mongondow Timur', 1, '2010-07-04 18:45:27'),
(5294, 71, 'Kab. Bolaang Mongondow Utara', 1, '2010-07-04 18:45:27'),
(5295, 71, 'Kab. Kepulauan Sangihe', 1, '2010-07-04 18:45:27'),
(5296, 71, 'Kab. Kepulauan Siau Tagulandan', 1, '2010-07-04 18:45:27'),
(5297, 71, 'Kab. Kepulauan Talaud', 1, '2010-07-04 18:45:27'),
(5298, 71, 'Kab. Minahasa', 1, '2010-07-04 18:45:27'),
(5299, 71, 'Kab. Minahasa Selatan', 1, '2010-07-04 18:45:27'),
(5300, 71, 'Kab. Minahasa Tenggara', 1, '2010-07-04 18:45:27'),
(5301, 71, 'Kab. Minahasa Utara', 1, '2010-07-04 18:45:27'),
(5302, 71, 'Kota Bitung', 1, '2010-07-04 18:45:27'),
(5303, 71, 'Kota Kotamobagu', 1, '2010-07-04 18:45:27'),
(5304, 71, 'Kota Manado', 1, '2010-07-04 18:45:27'),
(5305, 71, 'Kota Tomohon', 1, '2010-07-04 18:45:27'),
(5306, 72, 'Kab. Banggai', 1, '2010-07-04 18:45:27'),
(5307, 72, 'Kab. Banggai Kepulauan', 1, '2010-07-04 18:45:27'),
(5308, 72, 'Kab. Buol', 1, '2010-07-04 18:45:27'),
(5309, 72, 'Kab. Donggala', 1, '2010-07-04 18:45:27'),
(5310, 72, 'Kab. Morowali', 1, '2010-07-04 18:45:27'),
(5311, 72, 'Kab. Parigi Moutong', 1, '2010-07-04 18:45:27'),
(5312, 72, 'Kab. Poso', 1, '2010-07-04 18:45:27'),
(5313, 72, 'Kab. Tojo Una-Una', 1, '2010-07-04 18:45:27'),
(5314, 72, 'Kab. Toli-Toli', 1, '2010-07-04 18:45:27'),
(5315, 72, 'Kab. Sigi', 1, '2010-07-04 18:45:27'),
(5316, 72, 'Kota Palu', 1, '2010-07-04 18:45:27'),
(5317, 73, 'Kab. Bantaeng', 1, '2010-07-04 18:45:27'),
(5318, 73, 'Kab. Barru', 1, '2010-07-04 18:45:27'),
(5319, 73, 'Kab. Bone', 1, '2010-07-04 18:45:27'),
(5320, 73, 'Kab. Bulukumba', 1, '2010-07-04 18:45:27'),
(5321, 73, 'Kab. Enrekang', 1, '2010-07-04 18:45:27'),
(5322, 73, 'Kab. Gowa', 1, '2010-07-04 18:45:27'),
(5323, 73, 'Kab. Jeneponto', 1, '2010-07-04 18:45:27'),
(5324, 73, 'Kab. Kepulauan Selayar', 1, '2010-07-04 18:45:27'),
(5325, 73, 'Kab. Luwu', 1, '2010-07-04 18:45:27'),
(5326, 73, 'Kab. Luwu Timur', 1, '2010-07-04 18:45:27'),
(5327, 73, 'Kab. Luwu Utara', 1, '2010-07-04 18:45:27'),
(5328, 73, 'Kab. Maros', 1, '2010-07-04 18:45:27'),
(5329, 73, 'Kab. Pangkajene dan Kepulauan', 1, '2010-07-04 18:45:27'),
(5330, 73, 'Kab. Pinrang', 1, '2010-07-04 18:45:27'),
(5331, 73, 'Kab. Sidenreng Rappang', 1, '2010-07-04 18:45:27'),
(5332, 73, 'Kab. Sinjai', 1, '2010-07-04 18:45:27'),
(5333, 73, 'Kab. Soppeng', 1, '2010-07-04 18:45:27'),
(5334, 73, 'Kab. Takalar', 1, '2010-07-04 18:45:27'),
(5335, 73, 'Kab. Tana Toraja', 1, '2010-07-04 18:45:27'),
(5336, 73, 'Kab. Toraja Utara', 1, '2010-07-04 18:45:27'),
(5337, 73, 'Kab. Wajo', 1, '2010-07-04 18:45:27'),
(5338, 73, 'Kota Makassar', 1, '2010-07-04 18:45:27'),
(5339, 73, 'Kota Palopo', 1, '2010-07-04 18:45:27'),
(5340, 73, 'Kota Pare-Pare', 1, '2010-07-04 18:45:27'),
(5341, 74, 'Kab. Bombana', 1, '2010-07-04 18:45:27'),
(5342, 74, 'Kab. Buton', 1, '2010-07-04 18:45:27'),
(5343, 74, 'Kab. Buton Utara', 1, '2010-07-04 18:45:27'),
(5344, 74, 'Kab. Kolaka', 1, '2010-07-04 18:45:27'),
(5345, 74, 'Kab. Kolaka Utara', 1, '2010-07-04 18:45:27'),
(5346, 74, 'Kab. Konawe', 1, '2010-07-04 18:45:27'),
(5347, 74, 'Kab. Konawe Selatan', 1, '2010-07-04 18:45:27'),
(5348, 74, 'Kab. Konawe Utara', 1, '2010-07-04 18:45:27'),
(5349, 74, 'Kab. Muna', 1, '2010-07-04 18:45:27'),
(5350, 74, 'Kab. Wakatobi', 1, '2010-07-04 18:45:27'),
(5351, 74, 'Kota Bau-Bau', 1, '2010-07-04 18:45:27'),
(5352, 74, 'Kota Kendari', 1, '2010-07-04 18:45:27'),
(5353, 75, 'Kab. Boalemo', 1, '2010-07-04 18:45:27'),
(5354, 75, 'Kab. Bone Bolango', 1, '2010-07-04 18:45:27'),
(5355, 75, 'Kab. Gorontalo', 1, '2010-07-04 18:45:27'),
(5356, 75, 'Kab. Gorontalo Utara', 1, '2010-07-04 18:45:27'),
(5357, 75, 'Kab. Pohuwato', 1, '2010-07-04 18:45:27'),
(5358, 75, 'Kota Gorontalo', 1, '2010-07-04 18:45:27'),
(5359, 76, 'Kab. Majene', 1, '2010-07-04 18:45:27'),
(5360, 76, 'Kab. Mamasa', 1, '2010-07-04 18:45:27'),
(5361, 76, 'Kab. Mamuju', 1, '2010-07-04 18:45:27'),
(5362, 76, 'Kab. Mamuju Utara', 1, '2010-07-04 18:45:27'),
(5363, 76, 'Kab. Polewali Mandar', 1, '2010-07-04 18:45:27'),
(5364, 81, 'Kab. Buru', 1, '2010-07-04 18:45:27'),
(5365, 81, 'Kab. Buru Selatan', 1, '2010-07-04 18:45:27'),
(5366, 81, 'Kab. Kepulauan Aru', 1, '2010-07-04 18:45:27'),
(5367, 81, 'Kab. Maluku Barat Daya', 1, '2010-07-04 18:45:27'),
(5368, 81, 'Kab. Maluku Tengah', 1, '2010-07-04 18:45:27'),
(5369, 81, 'Kab. Maluku Tenggara', 1, '2010-07-04 18:45:27'),
(5370, 81, 'Kab. Maluku Tenggara Barat', 1, '2010-07-04 18:45:27'),
(5371, 81, 'Kab. Seram Bagian Barat', 1, '2010-07-04 18:45:27'),
(5372, 81, 'Kab. Seram Bagian Timur', 1, '2010-07-04 18:45:27'),
(5373, 81, 'Kota Ambon', 1, '2010-07-04 18:45:27'),
(5374, 81, 'Kota Tual', 1, '2010-07-04 18:45:27'),
(5375, 82, 'Kab. Halmahera Barat', 1, '2010-07-04 18:45:27'),
(5376, 82, 'Kab. Halmahera Tengah', 1, '2010-07-04 18:45:27'),
(5377, 82, 'Kab. Halmahera Utara', 1, '2010-07-04 18:45:27'),
(5378, 82, 'Kab. Halmahera Selatan', 1, '2010-07-04 18:45:27'),
(5379, 82, 'Kab. Kepulauan Sula', 1, '2010-07-04 18:45:27'),
(5380, 82, 'Kab. Halmahera Timur', 1, '2010-07-04 18:45:27'),
(5381, 82, 'Kab. Pulau Morotai', 1, '2010-07-04 18:45:27'),
(5382, 82, 'Kota Ternate', 1, '2010-07-04 18:45:27'),
(5383, 82, 'Kota Tidore Kepulauan', 1, '2010-07-04 18:45:27'),
(5384, 92, 'Kab. Fakfak', 1, '2010-07-04 18:45:27'),
(5385, 92, 'Kab. Kaimana', 1, '2010-07-04 18:45:27'),
(5386, 92, 'Kab. Manokwari', 1, '2010-07-04 18:45:27'),
(5387, 92, 'Kab. Maybrat', 1, '2010-07-04 18:45:27'),
(5388, 92, 'Kab. Raja Ampat', 1, '2010-07-04 18:45:27'),
(5389, 92, 'Kab. Sorong', 1, '2010-07-04 18:45:27'),
(5390, 92, 'Kab. Sorong Selatan', 1, '2010-07-04 18:45:27'),
(5391, 92, 'Kab. Tambrauw', 1, '2010-07-04 18:45:27'),
(5392, 92, 'Kab. Teluk Bintuni', 1, '2010-07-04 18:45:27'),
(5393, 92, 'Kab. Teluk Wondama', 1, '2010-07-04 18:45:27'),
(5394, 92, 'Kota Sorong', 1, '2010-07-04 18:45:27'),
(5395, 91, 'Kab. Asmat', 1, '2010-07-04 18:45:27'),
(5396, 91, 'Kab. Biak Numfor', 1, '2010-07-04 18:45:27'),
(5397, 91, 'Kab. Boven Digoel', 1, '2010-07-04 18:45:27'),
(5398, 91, 'Kab. Deiyai', 1, '2010-07-04 18:45:27'),
(5399, 91, 'Kab. Dogiyai', 1, '2010-07-04 18:45:27'),
(5400, 91, 'Kab. Intan Jaya', 1, '2010-07-04 18:45:27'),
(5401, 91, 'Kab. Jayapura', 1, '2010-07-04 18:45:27'),
(5402, 91, 'Kab. Jayawijaya', 1, '2010-07-04 18:45:27'),
(5403, 91, 'Kab. Keerom', 1, '2010-07-04 18:45:27'),
(5404, 91, 'Kab. Kepulauan Yapen', 1, '2010-07-04 18:45:27'),
(5405, 91, 'Kab. Lanny Jaya', 1, '2010-07-04 18:45:27'),
(5406, 91, 'Kab. Mamberamo Raya', 1, '2010-07-04 18:45:27'),
(5407, 91, 'Kab. Mamberamo Tengah', 1, '2010-07-04 18:45:27'),
(5408, 91, 'Kab. Mappi', 1, '2010-07-04 18:45:27'),
(5409, 91, 'Kab. Merauke', 1, '2010-07-04 18:45:27'),
(5410, 91, 'Kab. Mimika', 1, '2010-07-04 18:45:27'),
(5411, 91, 'Kab. Nabire', 1, '2010-07-04 18:45:27'),
(5412, 91, 'Kab. Nduga', 1, '2010-07-04 18:45:27'),
(5413, 91, 'Kab. Paniai', 1, '2010-07-04 18:45:27'),
(5414, 91, 'Kab. Pegunungan Bintang', 1, '2010-07-04 18:45:27'),
(5415, 91, 'Kab. Puncak', 1, '2010-07-04 18:45:27'),
(5416, 91, 'Kab. Puncak Jaya', 1, '2010-07-04 18:45:27'),
(5417, 91, 'Kab. Sarmi', 1, '2010-07-04 18:45:27'),
(5418, 91, 'Kab. Supiori', 1, '2010-07-04 18:45:27'),
(5419, 91, 'Kab. Tolikara', 1, '2010-07-04 18:45:27'),
(5420, 91, 'Kab. Waropen', 1, '2010-07-04 18:45:27'),
(5421, 91, 'Kab. Yahukimo', 1, '2010-07-04 18:45:27'),
(5422, 91, 'Kab. Yalimo', 1, '2010-07-04 18:45:27'),
(5423, 91, 'Kota Jayapura', 1, '2010-07-04 18:45:27'),
(5424, 11, 'Kab. Aceh Barat', 1, '2010-07-04 18:45:27'),
(5425, 11, 'Kab. Aceh Barat Daya', 1, '2010-07-04 18:45:27'),
(5426, 11, 'Kab. Aceh Besar', 1, '2010-07-04 18:45:27'),
(5427, 11, 'Kab. Pidie Jaya', 1, '2010-07-04 18:45:27'),
(5428, 11, 'Kab. Subulussalam', 1, '2010-07-04 18:45:27'),
(5430, 12, 'Kota Gunung Sitoli', 1, '2010-07-04 18:45:27'),
(5431, 15, 'Kota Sungai Penuh', 1, '2010-07-04 18:45:27'),
(5432, 14, 'Kab. Kepulauan Meranti', 1, '2010-07-04 18:45:27'),
(5433, 17, 'Kab. Bengkulu Tengah', 1, '2010-07-04 18:45:27'),
(5434, 12, 'Kab. Batu Bara', 1, '2010-07-04 18:45:27'),
(5435, 52, 'Kab. Lombok Utara', 1, '2010-07-04 18:45:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spt_negara_m`
--

CREATE TABLE IF NOT EXISTS `spt_negara_m` (
`id_negara` int(11) unsigned NOT NULL,
  `nama_negara` varchar(50) NOT NULL DEFAULT '',
  `mdb` int(11) DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spt_negara_m`
--

INSERT INTO `spt_negara_m` (`id_negara`, `nama_negara`, `mdb`, `mdd`) VALUES
(4, 'Afghanistan', 1, '2010-07-04 18:45:39'),
(8, 'Albania', 1, '2010-07-04 18:45:39'),
(10, 'Antarctica', 1, '2010-07-04 18:45:39'),
(12, 'Algeria', 1, '2010-07-04 18:45:39'),
(16, 'American Samoa', 1, '2010-07-04 18:45:39'),
(20, 'Andorra', 1, '2010-07-04 18:45:39'),
(24, 'Angola', 1, '2010-07-04 18:45:39'),
(28, 'Antigua and Barbuda', 1, '2010-07-04 18:45:39'),
(31, 'Azerbaijan', 1, '2010-07-04 18:45:39'),
(32, 'Argentina', 1, '2010-07-04 18:45:39'),
(36, 'Australia', 1, '2010-07-04 18:45:39'),
(40, 'Austria', 1, '2010-07-04 18:45:39'),
(44, 'Bahamas', 1, '2010-07-04 18:45:39'),
(48, 'Bahrain', 1, '2010-07-04 18:45:39'),
(50, 'Bangladesh', 1, '2010-07-04 18:45:39'),
(51, 'Armenia', 1, '2010-07-04 18:45:39'),
(52, 'Barbados', 1, '2010-07-04 18:45:39'),
(56, 'Belgium', 1, '2010-07-04 18:45:39'),
(60, 'Bermuda', 1, '2010-07-04 18:45:39'),
(64, 'Bhutan', 1, '2010-07-04 18:45:39'),
(68, 'Bolivia', 1, '2010-07-04 18:45:39'),
(70, 'Bosnia and Herzegovina', 1, '2010-07-04 18:45:39'),
(72, 'Botswana', 1, '2010-07-04 18:45:39'),
(74, 'Bouvet Island', 1, '2010-07-04 18:45:39'),
(76, 'Brazil', 1, '2010-07-04 18:45:39'),
(84, 'Belize', 1, '2010-07-04 18:45:39'),
(86, 'British Indian Ocean Territory', 1, '2010-07-04 18:45:39'),
(90, 'Solomon Islands', 1, '2010-07-04 18:45:39'),
(92, 'Virgin Islands, British', 1, '2010-07-04 18:45:39'),
(96, 'Brunei Darussalam', 1, '2010-07-04 18:45:39'),
(100, 'Bulgaria', 1, '2010-07-04 18:45:39'),
(104, 'Myanmar', 1, '2010-07-04 18:45:39'),
(108, 'Burundi', 1, '2010-07-04 18:45:39'),
(112, 'Belarus', 1, '2010-07-04 18:45:39'),
(116, 'Cambodia', 1, '2010-07-04 18:45:39'),
(120, 'Cameroon', 1, '2010-07-04 18:45:39'),
(124, 'Canada', 1, '2010-07-04 18:45:39'),
(132, 'Cape Verde', 1, '2010-07-04 18:45:39'),
(136, 'Cayman Islands', 1, '2010-07-04 18:45:39'),
(140, 'Central African Republic', 1, '2010-07-04 18:45:39'),
(144, 'Sri Lanka', 1, '2010-07-04 18:45:39'),
(148, 'Chad', 1, '2010-07-04 18:45:39'),
(152, 'Chile', 1, '2010-07-04 18:45:39'),
(156, 'China', 1, '2010-07-04 18:45:39'),
(158, 'Taiwan, Province of China', 1, '2010-07-04 18:45:39'),
(162, 'Christmas Island', 1, '2010-07-04 18:45:39'),
(166, 'Cocos (Keeling) Islands', 1, '2010-07-04 18:45:39'),
(170, 'Colombia', 1, '2010-07-04 18:45:39'),
(174, 'Comoros', 1, '2010-07-04 18:45:39'),
(175, 'Mayotte', 1, '2010-07-04 18:45:39'),
(178, 'Congo', 1, '2010-07-04 18:45:39'),
(180, 'Congo, the Democratic Republic of the', 1, '2010-07-04 18:45:39'),
(184, 'Cook Islands', 1, '2010-07-04 18:45:39'),
(188, 'Costa Rica', 1, '2010-07-04 18:45:39'),
(191, 'Croatia', 1, '2010-07-04 18:45:39'),
(192, 'Cuba', 1, '2010-07-04 18:45:39'),
(196, 'Cyprus', 1, '2010-07-04 18:45:39'),
(203, 'Czech Republic', 1, '2010-07-04 18:45:39'),
(204, 'Benin', 1, '2010-07-04 18:45:39'),
(208, 'Denmark', 1, '2010-07-04 18:45:39'),
(212, 'Dominica', 1, '2010-07-04 18:45:39'),
(214, 'Dominican Republic', 1, '2010-07-04 18:45:39'),
(218, 'Ecuador', 1, '2010-07-04 18:45:39'),
(222, 'El Salvador', 1, '2010-07-04 18:45:39'),
(226, 'Equatorial Guinea', 1, '2010-07-04 18:45:39'),
(231, 'Ethiopia', 1, '2010-07-04 18:45:39'),
(232, 'Eritrea', 1, '2010-07-04 18:45:39'),
(233, 'Estonia', 1, '2010-07-04 18:45:39'),
(234, 'Faroe Islands', 1, '2010-07-04 18:45:39'),
(238, 'Falkland Islands (Malvinas)', 1, '2010-07-04 18:45:39'),
(239, 'South Georgia and the South Sandwich Islands', 1, '2010-07-04 18:45:39'),
(242, 'Fiji', 1, '2010-07-04 18:45:39'),
(246, 'Finland', 1, '2010-07-04 18:45:39'),
(248, 'Faroe Islands', 1, '2010-07-04 18:45:39'),
(250, 'France', 1, '2010-07-04 18:45:39'),
(254, 'French Guiana', 1, '2010-07-04 18:45:39'),
(258, 'French Polynesia', 1, '2010-07-04 18:45:39'),
(260, 'French Southern Territories', 1, '2010-07-04 18:45:39'),
(262, 'Djibouti', 1, '2010-07-04 18:45:39'),
(266, 'Gabon', 1, '2010-07-04 18:45:39'),
(268, 'Georgia', 1, '2010-07-04 18:45:39'),
(270, 'Gambia', 1, '2010-07-04 18:45:39'),
(275, 'Palestinian Territory, Occupied', 1, '2010-07-04 18:45:39'),
(276, 'Germany', 1, '2010-07-04 18:45:39'),
(288, 'Ghana', 1, '2010-07-04 18:45:39'),
(292, 'Gibraltar', 1, '2010-07-04 18:45:39'),
(296, 'Kiribati', 1, '2010-07-04 18:45:39'),
(300, 'Greece', 1, '2010-07-04 18:45:39'),
(304, 'Greenland', 1, '2010-07-04 18:45:39'),
(308, 'Grenada', 1, '2010-07-04 18:45:39'),
(312, 'Guadeloupe', 1, '2010-07-04 18:45:39'),
(316, 'Guam', 1, '2010-07-04 18:45:39'),
(320, 'Guatemala', 1, '2010-07-04 18:45:39'),
(324, 'Guinea', 1, '2010-07-04 18:45:39'),
(328, 'Guyana', 1, '2010-07-04 18:45:39'),
(332, 'Haiti', 1, '2010-07-04 18:45:39'),
(334, 'Heard Island and McDonald Islands', 1, '2010-07-04 18:45:39'),
(336, 'Holy See (Vatican City State)', 1, '2010-07-04 18:45:39'),
(340, 'Honduras', 1, '2010-07-04 18:45:39'),
(344, 'Hong Kong', 1, '2010-07-04 18:45:39'),
(348, 'Hungary', 1, '2010-07-04 18:45:39'),
(352, 'Iceland', 1, '2010-07-04 18:45:39'),
(356, 'India', 1, '2010-07-04 18:45:39'),
(360, 'Indonesia', 1, '2010-07-04 18:45:39'),
(364, 'Iran, Islamic Republic of', 1, '2010-07-04 18:45:39'),
(368, 'Iraq', 1, '2010-07-04 18:45:39'),
(372, 'Ireland', 1, '2010-07-04 18:45:39'),
(376, 'Israel', 1, '2010-07-04 18:45:39'),
(380, 'Italy', 1, '2010-07-04 18:45:39'),
(384, 'Cote d''Ivoire', 1, '2010-07-04 18:45:39'),
(388, 'Jamaica', 1, '2010-07-04 18:45:39'),
(392, 'Japan', 1, '2010-07-04 18:45:39'),
(398, 'Kazakhstan', 1, '2010-07-04 18:45:39'),
(400, 'Jordan', 1, '2010-07-04 18:45:39'),
(404, 'Kenya', 1, '2010-07-04 18:45:39'),
(408, 'Korea, Democratic People''s Republic of', 1, '2010-07-04 18:45:39'),
(410, 'Korea, Republic of', 1, '2010-07-04 18:45:39'),
(414, 'Kuwait', 1, '2010-07-04 18:45:39'),
(417, 'Kyrgyzstan', 1, '2010-07-04 18:45:39'),
(418, 'Lao People''s Democratic Republic', 1, '2010-07-04 18:45:39'),
(422, 'Lebanon', 1, '2010-07-04 18:45:39'),
(426, 'Lesotho', 1, '2010-07-04 18:45:39'),
(428, 'Latvia', 1, '2010-07-04 18:45:39'),
(430, 'Liberia', 1, '2010-07-04 18:45:39'),
(434, 'Libyan Arab Jamahiriya', 1, '2010-07-04 18:45:39'),
(438, 'Liechtenstein', 1, '2010-07-04 18:45:39'),
(440, 'Lithuania', 1, '2010-07-04 18:45:39'),
(442, 'Luxembourg', 1, '2010-07-04 18:45:39'),
(446, 'Macao', 1, '2010-07-04 18:45:39'),
(450, 'Madagascar', 1, '2010-07-04 18:45:39'),
(454, 'Malawi', 1, '2010-07-04 18:45:39'),
(458, 'Malaysia', 1, '2010-07-04 18:45:39'),
(462, 'Maldives', 1, '2010-07-04 18:45:39'),
(466, 'Mali', 1, '2010-07-04 18:45:39'),
(470, 'Malta', 1, '2010-07-04 18:45:39'),
(474, 'Martinique', 1, '2010-07-04 18:45:39'),
(478, 'Mauritania', 1, '2010-07-04 18:45:39'),
(480, 'Mauritius', 1, '2010-07-04 18:45:39'),
(484, 'Mexico', 1, '2010-07-04 18:45:39'),
(492, 'Monaco', 1, '2010-07-04 18:45:39'),
(496, 'Mongolia', 1, '2010-07-04 18:45:39'),
(498, 'Moldova', 1, '2010-07-04 18:45:39'),
(499, 'Montenegro', 1, '2010-07-04 18:45:39'),
(500, 'Montserrat', 1, '2010-07-04 18:45:39'),
(504, 'Morocco', 1, '2010-07-04 18:45:39'),
(508, 'Mozambique', 1, '2010-07-04 18:45:39'),
(512, 'Oman', 1, '2010-07-04 18:45:39'),
(516, 'Namibia', 1, '2010-07-04 18:45:39'),
(520, 'Nauru', 1, '2010-07-04 18:45:39'),
(524, 'Nepal', 1, '2010-07-04 18:45:39'),
(528, 'Netherlands', 1, '2010-07-04 18:45:39'),
(530, 'Netherlands Antilles', 1, '2010-07-04 18:45:39'),
(533, 'Aruba', 1, '2010-07-04 18:45:39'),
(540, 'New Caledonia', 1, '2010-07-04 18:45:39'),
(548, 'Vanuatu', 1, '2010-07-04 18:45:39'),
(554, 'New Zealand', 1, '2010-07-04 18:45:39'),
(558, 'Nicaragua', 1, '2010-07-04 18:45:39'),
(562, 'Niger', 1, '2010-07-04 18:45:39'),
(566, 'Nigeria', 1, '2010-07-04 18:45:39'),
(570, 'Niue', 1, '2010-07-04 18:45:39'),
(574, 'Norfolk Island', 1, '2010-07-04 18:45:39'),
(578, 'Norway', 1, '2010-07-04 18:45:39'),
(580, 'Northern Mariana Islands', 1, '2010-07-04 18:45:39'),
(581, 'United States Minor Outlying Islands', 1, '2010-07-04 18:45:39'),
(583, 'Micronesia, Federated States of', 1, '2010-07-04 18:45:39'),
(584, 'Marshall Islands', 1, '2010-07-04 18:45:39'),
(585, 'Palau', 1, '2010-07-04 18:45:39'),
(586, 'Pakistan', 1, '2010-07-04 18:45:39'),
(591, 'Panama', 1, '2010-07-04 18:45:39'),
(598, 'Papua New Guinea', 1, '2010-07-04 18:45:39'),
(600, 'Paraguay', 1, '2010-07-04 18:45:39'),
(604, 'Peru', 1, '2010-07-04 18:45:39'),
(608, 'Philippines', 1, '2010-07-04 18:45:39'),
(612, 'Pitcairn', 1, '2010-07-04 18:45:39'),
(616, 'Poland', 1, '2010-07-04 18:45:39'),
(620, 'Portugal', 1, '2010-07-04 18:45:39'),
(624, 'Guinea-Bissau', 1, '2010-07-04 18:45:39'),
(626, 'Timor-Leste', 1, '2010-07-04 18:45:39'),
(630, 'Puerto Rico', 1, '2010-07-04 18:45:39'),
(634, 'Qatar', 1, '2010-07-04 18:45:39'),
(638, 'RÃƒÆ’Ã‚Â©union', 1, '2010-07-04 18:45:39'),
(642, 'Romania', 1, '2010-07-04 18:45:39'),
(643, 'Russian Federation', 1, '2010-07-04 18:45:39'),
(646, 'Rwanda', 1, '2010-07-04 18:45:39'),
(652, 'Saint BarthÃƒÆ’Ã‚Â©lemy', 1, '2010-07-04 18:45:39'),
(654, 'Saint Helena', 1, '2010-07-04 18:45:39'),
(659, 'Saint Kitts and Nevis', 1, '2010-07-04 18:45:39'),
(660, 'Anguilla', 1, '2010-07-04 18:45:39'),
(662, 'Saint Lucia', 1, '2010-07-04 18:45:39'),
(663, 'Saint Martin (French part)', 1, '2010-07-04 18:45:39'),
(666, 'Saint Pierre and Miquelon', 1, '2010-07-04 18:45:39'),
(670, 'Saint Vincent and the Grenadines', 1, '2010-07-04 18:45:39'),
(674, 'San Marino', 1, '2010-07-04 18:45:39'),
(678, 'Sao Tome and Principe', 1, '2010-07-04 18:45:39'),
(682, 'Saudi Arabia', 1, '2010-07-04 18:45:39'),
(686, 'Senegal', 1, '2010-07-04 18:45:39'),
(688, 'Serbia', 1, '2010-07-04 18:45:39'),
(690, 'Seychelles', 1, '2010-07-04 18:45:39'),
(694, 'Sierra Leone', 1, '2010-07-04 18:45:39'),
(702, 'Singapore', 1, '2010-07-04 18:45:39'),
(703, 'Slovakia', 1, '2010-07-04 18:45:39'),
(704, 'Viet Nam', 1, '2010-07-04 18:45:39'),
(705, 'Slovenia', 1, '2010-07-04 18:45:39'),
(706, 'Somalia', 1, '2010-07-04 18:45:39'),
(710, 'South Africa', 1, '2010-07-04 18:45:39'),
(716, 'Zimbabwe', 1, '2010-07-04 18:45:39'),
(724, 'Spain', 1, '2010-07-04 18:45:39'),
(732, 'Western Sahara', 1, '2010-07-04 18:45:39'),
(736, 'Sudan', 1, '2010-07-04 18:45:39'),
(740, 'Suriname', 1, '2010-07-04 18:45:39'),
(744, 'Svalbard and Jan Mayen', 1, '2010-07-04 18:45:39'),
(748, 'Swaziland', 1, '2010-07-04 18:45:39'),
(752, 'Sweden', 1, '2010-07-04 18:45:39'),
(756, 'Switzerland', 1, '2010-07-04 18:45:39'),
(760, 'Syrian Arab Republic', 1, '2010-07-04 18:45:39'),
(762, 'Tajikistan', 1, '2010-07-04 18:45:39'),
(764, 'Thailand', 1, '2010-07-04 18:45:39'),
(768, 'Togo', 1, '2010-07-04 18:45:39'),
(772, 'Tokelau', 1, '2010-07-04 18:45:39'),
(776, 'Tonga', 1, '2010-07-04 18:45:39'),
(780, 'Trinidad and Tobago', 1, '2010-07-04 18:45:39'),
(784, 'United Arab Emirates', 1, '2010-07-04 18:45:39'),
(788, 'Tunisia', 1, '2010-07-04 18:45:39'),
(792, 'Turkey', 1, '2010-07-04 18:45:39'),
(795, 'Turkmenistan', 1, '2010-07-04 18:45:39'),
(796, 'Turks and Caicos Islands', 1, '2010-07-04 18:45:39'),
(798, 'Tuvalu', 1, '2010-07-04 18:45:39'),
(800, 'Uganda', 1, '2010-07-04 18:45:39'),
(804, 'Ukraine', 1, '2010-07-04 18:45:39'),
(807, 'Macedonia, the former Yugoslav Republic of', 1, '2010-07-04 18:45:39'),
(818, 'Egypt', 1, '2010-07-04 18:45:39'),
(826, 'United Kingdom', 1, '2010-07-04 18:45:39'),
(831, 'Guernsey', 1, '2010-07-04 18:45:39'),
(832, 'Jersey', 1, '2010-07-04 18:45:39'),
(833, 'Isle of Man', 1, '2010-07-04 18:45:39'),
(834, 'Tanzania, United Republic of', 1, '2010-07-04 18:45:39'),
(840, 'United States', 1, '2010-07-04 18:45:39'),
(850, 'Virgin Islands, U.S.', 1, '2010-07-04 18:45:39'),
(854, 'Burkina Faso', 1, '2010-07-04 18:45:39'),
(858, 'Uruguay', 1, '2010-07-04 18:45:39'),
(860, 'Uzbekistan', 1, '2010-07-04 18:45:39'),
(862, 'Venezuela', 1, '2010-07-04 18:45:39'),
(876, 'Wallis and Futuna', 1, '2010-07-04 18:45:39'),
(882, 'Samoa', 1, '2010-07-04 18:45:39'),
(887, 'Yemen', 1, '2010-07-04 18:45:39'),
(894, 'Zambia', 1, '2010-07-04 18:45:39'),
(895, 'xxxxxooo', 1, '2015-04-08 10:50:55'),
(896, 'Perancis', 1, '2015-04-29 09:59:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spt_propinsi_m`
--

CREATE TABLE IF NOT EXISTS `spt_propinsi_m` (
`id_propinsi` int(11) unsigned NOT NULL,
  `id_negara` int(11) unsigned NOT NULL,
  `nama_propinsi` varchar(50) NOT NULL DEFAULT '',
  `wilayah` enum('barat','tengah','timur') DEFAULT 'barat',
  `shape` varchar(50) DEFAULT NULL,
  `coords` varchar(50) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `id_internal` char(2) DEFAULT NULL,
  `id_map` char(2) DEFAULT NULL,
  `nama_singkat` varchar(50) DEFAULT NULL,
  `mdb` varchar(50) DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spt_propinsi_m`
--

INSERT INTO `spt_propinsi_m` (`id_propinsi`, `id_negara`, `nama_propinsi`, `wilayah`, `shape`, `coords`, `x`, `y`, `id_internal`, `id_map`, `nama_singkat`, `mdb`, `mdd`) VALUES
(11, 360, 'Nanggroe Aceh Darussalam', 'barat', 'rect', '7,12,136,36', 114.51, 114.51, '01', 'AC', 'NAD', NULL, NULL),
(12, 360, 'Sumatera Utara', 'barat', 'circle', '48,64,19', NULL, NULL, '26', 'SU', 'SUMUT', NULL, NULL),
(13, 360, 'Sumatera Barat', 'barat', 'rect', '28,86,76,109', NULL, NULL, '24', 'SB', 'SUMBAR', NULL, NULL),
(14, 360, 'Riau', 'barat', 'circle', '93,75,19', NULL, NULL, '37', 'RI', 'RIAU', NULL, NULL),
(15, 360, 'Jambi', 'barat', 'rect', '95,97,147,111', NULL, NULL, '05', 'JA', 'JAMBI', NULL, NULL),
(16, 360, 'Sumatera Selatan', 'barat', 'rect', '103,123,151,142', NULL, NULL, '32', 'SL', 'SUMSEL', NULL, NULL),
(17, 360, 'Bengkulu', 'barat', 'rect', '43,123,98,148', NULL, NULL, '03', 'BE', 'BENGKULU', NULL, NULL),
(18, 360, 'Lampung', 'barat', 'rect', '79,149,129,171', NULL, NULL, '15', 'LA', 'LAMPUNG', NULL, NULL),
(19, 360, 'Kepulauan Bangka Belitung', 'barat', 'rect', '128,111,175,123', NULL, NULL, '35', 'BB', 'BANGKA BELITUNG', NULL, NULL),
(21, 360, 'Kepulauan Riau', 'barat', 'rect', '108,83,147,96', NULL, NULL, '40', 'KR', 'KEP. RIAU', NULL, NULL),
(31, 360, 'DKI Jakarta', 'barat', 'rect', '152,142,206,154', NULL, NULL, '04', 'JK', 'DKI JAKARTA', NULL, NULL),
(32, 360, 'Jawa Barat', 'barat', 'rect', '122,172,153,191', NULL, NULL, '30', 'JR', 'JABAR', NULL, NULL),
(33, 360, 'Jawa Tengah', 'barat', 'rect', '165,166,197,182', NULL, NULL, '07', 'JT', 'JATENG', NULL, NULL),
(34, 360, 'D.I. Yogyakarta', 'barat', 'rect', '153,183,195,205', NULL, NULL, '10', 'YO', 'DIY', NULL, NULL),
(35, 360, 'Jawa Timur', 'barat', 'rect', '203,167,240,188', NULL, NULL, '08', 'JI', 'JATIM', NULL, NULL),
(36, 360, 'Banten', 'barat', 'rect', '130,155,169,166', NULL, NULL, '33', 'BT', 'BANTEN', NULL, NULL),
(51, 360, 'Bali', 'tengah', '', '', NULL, NULL, '02', 'BA', 'BALI', '20080222-1', '2010-01-07 16:19:40'),
(52, 360, 'Nusa Tenggara Barat', 'tengah', 'rect', '254,189,292,221', NULL, NULL, '17', 'NB', 'NTB', NULL, NULL),
(53, 360, 'Nusa Tenggara Timur', 'tengah', 'rect', '310,199,352,228', NULL, NULL, '18', 'NT', 'NTT', NULL, NULL),
(61, 360, 'Kalimantan Barat', 'barat', 'rect', '156,72,209,99', NULL, NULL, '11', 'KB', 'KALBAR', NULL, NULL),
(62, 360, 'Kalimantan Tengah', 'barat', 'rect', '198,101,239,126', NULL, NULL, '13', 'KT', 'KALTENG', NULL, NULL),
(63, 360, 'Kalimantan Selatan', 'tengah', 'rect', '230,126,263,154', NULL, NULL, '12', 'KS', 'KALSEL', NULL, NULL),
(64, 360, 'Kalimantan Timur', 'tengah', 'rect', '241,49,289,93', NULL, NULL, '14', 'KI', 'KALTIM', NULL, NULL),
(71, 360, 'Sulawesi Utara', 'tengah', 'rect', '327,70,360,85', NULL, NULL, '31', 'SA', 'SULUT', NULL, NULL),
(72, 360, 'Sulawesi Tengah', 'tengah', 'rect', '307,110,356,126', NULL, NULL, '21', 'ST', 'SULTENG', NULL, NULL),
(73, 360, 'Sulawesi Selatan', 'tengah', 'rect', '265,126,294,147', NULL, NULL, '38', 'SN', 'SULSEL', NULL, NULL),
(74, 360, 'Sulawesi Tenggara', 'tengah', 'rect', '314,137,376,156', NULL, NULL, '22', 'SG', 'SULTENG', NULL, NULL),
(75, 360, 'Gorontalo', 'tengah', 'rect', '318,85,374,99', NULL, NULL, '34', 'GO', 'GORONTALO', NULL, NULL),
(76, 360, 'Sulawesi Barat', 'tengah', 'rect', '269,107,299,118', NULL, NULL, '41', 'SR', 'SULBAR', NULL, NULL),
(81, 360, 'Maluku', 'timur', 'rect', '377,119,428,157', NULL, NULL, '28', 'MA', 'MALUKU', NULL, NULL),
(82, 360, 'Maluku Utara', 'timur', 'rect', '383,82,456,101', NULL, NULL, '29', 'MU', 'MAL. UTARA', NULL, NULL),
(91, 360, 'Papua', 'timur', 'rect', '507,107,548,213', NULL, NULL, '36', 'PA', 'PAPUA', NULL, NULL),
(92, 360, 'Irian Jaya Barat', 'timur', 'rect', '434,102,504,155', NULL, NULL, '39', 'IB', 'IRJA BARAT', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_authority_m`
--

CREATE TABLE IF NOT EXISTS `sys_authority_m` (
`id_auth` int(11) unsigned NOT NULL,
  `id_group` int(4) unsigned NOT NULL,
  `auth_name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `deskripsi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `mdb` bigint(20) DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sys_authority_m`
--

INSERT INTO `sys_authority_m` (`id_auth`, `id_group`, `auth_name`, `deskripsi`, `mdb`, `mdd`) VALUES
(1, 2, 'Developer', 'Hak akses yang khusus untuk developer dalam tahap pengembangan', NULL, '2010-07-04 11:26:52'),
(3, 2, 'Administrator DMSI', 'Admin Dewan MInyak Sawit Indonesia', 1, '2016-07-21 05:15:55'),
(4, 2, 'Admininstrator Anggota', 'Admin yang di tambahkan oleh admin utama', 1, '2016-07-21 05:16:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_build_menu_m`
--

CREATE TABLE IF NOT EXISTS `sys_build_menu_m` (
`id_nav` int(11) unsigned NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `page` varchar(50) DEFAULT NULL,
  `displayed` enum('yes','no') DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_build_menu_m`
--

INSERT INTO `sys_build_menu_m` (`id_nav`, `id_parent`, `judul`, `group`, `module`, `page`, `displayed`) VALUES
(1, 0, 'Homepage', 'build', 'welcome', 'index', 'no'),
(2, 0, 'Application', 'build', 'aplikasi', 'update', 'yes'),
(3, 0, 'Site', 'build', 'portal', 'index', 'yes'),
(4, 0, 'Authority', 'build', 'authority', 'index', 'yes'),
(5, 0, 'Navigation', 'build', 'menu', 'index', 'yes'),
(6, 0, 'Features Permission', 'build', 'map', 'index', 'yes'),
(7, 0, 'Generate Application', 'build', 'aplikasi', 'index', 'no'),
(8, 0, 'Administrator', 'build', 'admin', 'setting', 'yes'),
(21, 2, 'Process', 'build', 'aplikasi', 'process', 'no'),
(41, 4, 'Process', 'build', 'authority', 'process', 'no'),
(51, 5, 'Navigation Add', 'build', 'menu', 'add', 'no'),
(52, 5, 'Navigation Edit', 'build', 'menu', 'edit', 'no'),
(53, 5, 'Navigation Delete', 'build', 'menu', 'delete', 'no'),
(54, 5, 'Process', 'build', 'menu', 'process', 'no'),
(62, 6, 'Features Settings', 'build', 'map', 'roles', 'no'),
(63, 6, 'Process', 'build', 'map', 'process', 'no'),
(71, 7, 'Build System', 'build', 'aplikasi', 'build', 'no'),
(81, 8, 'Process', 'build', 'admin', 'process', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_group_m`
--

CREATE TABLE IF NOT EXISTS `sys_group_m` (
`id_group` int(4) unsigned NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `deskripsi` varchar(255) NOT NULL DEFAULT '',
  `judul_site` varchar(100) NOT NULL DEFAULT '',
  `meta_desc` varchar(255) DEFAULT '',
  `meta_key` varchar(255) DEFAULT '',
  `mdb` varchar(50) DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_group_m`
--

INSERT INTO `sys_group_m` (`id_group`, `nama`, `deskripsi`, `judul_site`, `meta_desc`, `meta_key`, `mdb`, `mdd`) VALUES
(2, 'Admin Console', 'Administrator Console', 'Administrator Console', 'Museum seni dan budaya di Indonesia', 'museum, seni, budaya, indonesia, koleksi', '1', '2016-05-24 06:01:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_menu_authority_t`
--

CREATE TABLE IF NOT EXISTS `sys_menu_authority_t` (
  `id_auth` int(11) unsigned NOT NULL,
  `id_nav` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_menu_authority_t`
--

INSERT INTO `sys_menu_authority_t` (`id_auth`, `id_nav`) VALUES
(1, 17),
(1, 18),
(1, 132),
(1, 135),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 149),
(1, 150),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 160),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 265),
(1, 266),
(1, 268),
(1, 273),
(1, 274),
(1, 277),
(1, 279),
(1, 280),
(1, 281),
(1, 282),
(1, 286),
(1, 287),
(1, 288),
(1, 289),
(1, 290),
(1, 291),
(1, 292),
(1, 293),
(1, 294),
(1, 295),
(1, 296),
(1, 297),
(1, 298),
(1, 299),
(1, 300),
(1, 301),
(1, 304),
(1, 305),
(1, 306),
(1, 307),
(1, 308),
(1, 309),
(1, 310),
(1, 311),
(1, 312),
(1, 313),
(1, 314),
(1, 315),
(1, 316),
(1, 317),
(1, 318),
(1, 319),
(1, 320),
(1, 322),
(1, 323),
(1, 324),
(1, 325),
(1, 326),
(1, 327),
(1, 328),
(1, 329),
(1, 330),
(1, 331),
(1, 332),
(1, 333),
(1, 334),
(1, 335),
(1, 336),
(1, 337),
(1, 338),
(1, 339),
(1, 340),
(1, 341),
(1, 342),
(1, 343),
(1, 344),
(1, 345),
(1, 346),
(1, 347),
(1, 348),
(1, 349),
(1, 350),
(1, 351),
(1, 352),
(1, 353),
(1, 354),
(1, 355),
(1, 356),
(1, 357),
(1, 358),
(1, 359),
(3, 17),
(3, 18),
(3, 132),
(3, 135),
(3, 137),
(3, 138),
(3, 139),
(3, 140),
(3, 141),
(3, 142),
(3, 143),
(3, 144),
(3, 149),
(3, 150),
(3, 154),
(3, 155),
(3, 156),
(3, 157),
(3, 160),
(3, 170),
(3, 171),
(3, 172),
(3, 173),
(3, 174),
(3, 175),
(3, 176),
(3, 177),
(3, 178),
(3, 179),
(3, 183),
(3, 184),
(3, 185),
(3, 186),
(3, 265),
(3, 266),
(3, 268),
(3, 273),
(3, 274),
(3, 277),
(3, 279),
(3, 280),
(3, 281),
(3, 282),
(3, 286),
(3, 287),
(3, 288),
(3, 289),
(3, 290),
(3, 291),
(3, 292),
(3, 293),
(3, 294),
(3, 295),
(3, 296),
(3, 297),
(3, 298),
(3, 299),
(3, 300),
(3, 301),
(3, 304),
(3, 305),
(3, 306),
(3, 307),
(3, 308),
(3, 309),
(3, 310),
(3, 311),
(3, 312),
(3, 313),
(3, 314),
(3, 315),
(3, 316),
(3, 317),
(3, 318),
(3, 319),
(3, 320),
(3, 322),
(3, 323),
(3, 324),
(3, 325),
(3, 326),
(3, 327),
(3, 328),
(3, 329),
(3, 330),
(3, 331),
(3, 332),
(3, 333),
(3, 334),
(3, 335),
(3, 336),
(3, 337),
(3, 338),
(3, 339),
(3, 340),
(3, 341),
(3, 342),
(3, 343),
(3, 344),
(3, 345),
(4, 18),
(4, 132),
(4, 135),
(4, 149),
(4, 156),
(4, 160),
(4, 176),
(4, 177),
(4, 178),
(4, 179),
(4, 268),
(4, 273),
(4, 274),
(4, 277),
(4, 279),
(4, 280),
(4, 281),
(4, 282),
(4, 286),
(4, 287),
(4, 288),
(4, 289),
(4, 290),
(4, 291),
(4, 292),
(4, 293),
(4, 294),
(4, 295),
(4, 296),
(4, 297),
(4, 298),
(4, 299),
(4, 300),
(4, 301),
(4, 304),
(4, 305),
(4, 306),
(4, 307),
(4, 308),
(4, 309),
(4, 310),
(4, 311),
(4, 312),
(4, 313),
(4, 314),
(4, 315),
(4, 316),
(4, 317),
(4, 318),
(4, 319),
(4, 320),
(4, 322),
(4, 323),
(4, 324),
(4, 325),
(4, 326),
(4, 327),
(4, 328),
(4, 329),
(4, 330),
(4, 331),
(4, 332),
(4, 333),
(4, 334),
(4, 335),
(4, 336),
(4, 337),
(4, 338),
(4, 339),
(4, 340),
(4, 341),
(4, 342),
(4, 343),
(4, 344),
(4, 345);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_menu_m`
--

CREATE TABLE IF NOT EXISTS `sys_menu_m` (
`id_nav` int(11) unsigned NOT NULL,
  `id_group` int(4) unsigned NOT NULL,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `app_path` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `module_path` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `page_path` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `order_num` int(4) unsigned DEFAULT '1',
  `uses` enum('1','0') COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `displayed` enum('1','0') COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `page_type` enum('view','process') COLLATE latin1_general_ci NOT NULL DEFAULT 'view',
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sys_menu_m`
--

INSERT INTO `sys_menu_m` (`id_nav`, `id_group`, `id_parent`, `title`, `description`, `app_path`, `module_path`, `page_path`, `order_num`, `uses`, `displayed`, `page_type`, `mdb`, `mdd`) VALUES
(10, 3, 0, 'Dashboard', 'Dashboard features', 'cpanel', 'product', 'statistik', 1, '1', '1', 'view', NULL, '2010-04-08 23:30:36'),
(11, 3, 28, 'My Account', 'Edit Account', 'cpanel', 'info', 'terbaru', 11, '1', '1', 'view', NULL, '2010-04-09 22:17:29'),
(12, 3, 11, 'Process', 'Process', 'cpanel', 'account', 'process', 13, '1', '0', 'process', NULL, '2010-04-09 22:17:43'),
(17, 2, 0, 'System', 'Halaman depan', 'private', 'sistem', 'settings', 3, '1', '1', 'view', 1, '2015-04-22 09:33:14'),
(18, 2, 0, 'My Account', 'Fasilitas pengaturan user account pribadi', 'private', 'account', 'status', 2, '1', '1', 'view', 1, '2015-04-22 09:32:50'),
(26, 3, 0, 'Products', 'Management Product', 'cpanel', 'info', 'terbaru', 2, '1', '1', 'view', NULL, '2010-04-08 22:43:59'),
(27, 3, 0, 'Website', 'Website', 'cpanel', 'profil', 'list', 5, '1', '1', 'view', NULL, '2010-04-18 22:40:37'),
(28, 3, 0, 'Settings', 'System', 'cpanel', 'info', 'terbaru', 6, '1', '1', 'view', NULL, '2010-04-08 23:10:16'),
(29, 3, 28, 'Applications', 'Halaman pengaturan aplikasi', 'cpanel', 'aplikasi', 'edit', 12, '1', '1', 'view', NULL, '2010-04-08 23:35:24'),
(30, 3, 29, 'Process', 'Halaman proses pengaturan aplikasi', 'cpanel', 'aplikasi', 'process', 1, '1', '0', 'process', NULL, '2010-04-08 00:11:59'),
(31, 3, 45, 'User Authority', 'Halaman pengaturan hak akses', 'cpanel', 'authority', 'list', 15, '1', '1', 'view', NULL, '2010-04-10 22:21:10'),
(32, 3, 45, 'Administrator', 'Halaman pengaturan administrator', 'cpanel', 'administrator', 'list', 13, '1', '1', 'view', NULL, '2010-04-08 23:34:10'),
(33, 3, 31, 'Process', 'Halaman proses', 'cpanel', 'authority', 'process', 22, '1', '0', 'process', NULL, '2010-04-10 22:21:37'),
(34, 3, 31, 'Authority Roles', 'Halaman pengaturan fasilitas', 'cpanel', 'authority', 'roles', 21, '1', '0', 'view', NULL, '2010-04-13 20:44:16'),
(35, 3, 32, 'Process', 'Halaman proses administrator', 'cpanel', 'administrator', 'process', 1, '1', '0', 'process', NULL, '2010-04-08 23:14:21'),
(38, 3, 27, 'Help and Info', 'Fasilitas pengelolaan informasi website', 'cpanel', 'profil', 'list', 11, '1', '1', 'view', NULL, '2010-04-25 21:28:48'),
(39, 3, 27, 'Articles', 'Halaman pengelolaan data news &amp; articles', 'cpanel', 'news', 'list', 12, '1', '1', 'view', NULL, '2010-04-25 21:28:28'),
(40, 3, 27, 'Forum', 'Fasilitas manajemen forum', 'cpanel', 'forum', 'list', 13, '1', '1', 'view', NULL, '2010-04-08 23:34:51'),
(41, 3, 0, 'Orders', 'Halaman pengelolaan orders product', 'cpanel', 'info', 'terbaru', 3, '1', '1', 'view', NULL, '2010-04-08 21:39:00'),
(42, 3, 41, 'New Order', 'Halaman pemesanan terbaru', 'cpanel', 'info', 'terbaru', 11, '1', '1', 'view', NULL, '2010-04-08 23:32:17'),
(43, 3, 41, 'Shipments', 'Halaman pemesanan yang di antarkan', 'cpanel', 'shipments', 'list', 12, '1', '1', 'view', NULL, '2010-04-08 23:32:22'),
(44, 3, 41, 'Invoices', 'Halaman pemesanan tanda terima', 'cpanel', 'invoices', 'list', 13, '1', '1', 'view', NULL, '2010-04-08 23:32:30'),
(45, 3, 0, 'Users', 'Halaman pengelolaan user', 'cpanel', 'member', 'terbaru', 4, '1', '1', 'view', NULL, '2010-04-18 22:39:50'),
(46, 3, 26, 'Overview', 'Halaman produk terbaru', 'cpanel', 'info', 'terbaru', 11, '1', '1', 'view', NULL, '2010-05-13 19:11:32'),
(47, 3, 26, 'Kategori', 'Halaman produk kategori', 'cpanel', 'kategori', 'list', 12, '1', '1', 'view', NULL, '2010-04-21 20:01:32'),
(48, 3, 26, 'Kain', 'Halaman pengelolaan data product', 'cpanel', 'kain', 'list', 13, '1', '1', 'view', NULL, '2010-04-19 22:12:40'),
(49, 3, 26, 'Baju', 'Halaman pengelolaan data clothing', 'cpanel', 'baju', 'list', 14, '1', '1', 'view', NULL, '2010-04-19 23:18:56'),
(50, 3, 26, 'Aksesoris', 'Halaman pengelolaan data aksesoris', 'cpanel', 'aksesoris', 'list', 15, '1', '1', 'view', NULL, '2010-04-19 23:19:04'),
(51, 3, 26, 'Editing &amp; Publishing', 'Halaman pengelolaan data product yg ditampilkan', 'cpanel', 'publishing', 'list', 30, '1', '1', 'view', NULL, '2010-05-13 13:38:35'),
(52, 3, 45, 'New Member', 'Halaman user terbaru', 'cpanel', 'member', 'terbaru', 11, '1', '1', 'view', NULL, '2010-04-18 21:01:32'),
(53, 3, 45, 'Members', 'Halaman pengelolaan data member', 'cpanel', 'member', 'list', 12, '1', '1', 'view', NULL, '2010-05-04 06:56:52'),
(55, 3, 10, 'Product &amp; Sales', 'Halaman dashboard product', 'cpanel', 'product', 'statistik', 11, '1', '1', 'view', NULL, '2010-04-08 23:29:54'),
(56, 3, 10, 'Orders', 'Halaman dashboard orders', 'cpanel', 'orders', 'statistik', 12, '1', '1', 'view', NULL, '2010-04-08 23:29:09'),
(57, 3, 10, 'Membership', 'Halaman dashboard member', 'cpanel', 'membership', 'statistik', 13, '1', '1', 'view', NULL, '2010-04-08 23:30:12'),
(58, 3, 10, 'Website', 'Halaman dashboard website', 'cpanel', 'web', 'statistik', 14, '1', '1', 'view', NULL, '2010-04-08 23:29:30'),
(59, 3, 11, 'Edit Account', 'Halaman edit account', 'cpanel', 'account', 'settings', 12, '1', '0', 'view', NULL, '2010-04-09 22:17:35'),
(60, 3, 38, 'Tambah Konten', 'Halaman tambah konten profil / info', 'cpanel', 'profil', 'add', 21, '1', '0', 'view', NULL, '2010-04-11 01:34:37'),
(61, 3, 38, 'Edit Konten', 'Halaman edit konten', 'cpanel', 'profil', 'edit', 22, '1', '0', 'view', NULL, '2010-04-11 01:34:31'),
(62, 3, 38, 'Hapus Konten', 'Halaman hapus data konten', 'cpanel', 'profil', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-11 01:46:53'),
(63, 3, 38, 'Process', 'Halaman proses', 'cpanel', 'profil', 'process', 25, '1', '0', 'process', NULL, '2010-04-11 01:36:57'),
(64, 3, 39, 'Tambah Data', 'Halaman tambah data', 'cpanel', 'news', 'add', 21, '1', '0', 'view', NULL, '2010-04-11 13:18:08'),
(65, 3, 39, 'Edit Data', 'Halaman edit data', 'cpanel', 'news', 'edit', 22, '1', '0', 'view', NULL, '2010-04-11 13:18:51'),
(66, 3, 39, 'Hapus Data', 'Halaman hapus data', 'cpanel', 'news', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-11 13:19:24'),
(67, 3, 39, 'Process', 'Halaman proses data', 'cpanel', 'news', 'process', 30, '1', '0', 'process', NULL, '2010-04-11 14:06:15'),
(68, 3, 39, 'Komentar', 'Halaman hapus komentar', 'cpanel', 'news', 'komentar', 24, '1', '0', 'view', NULL, '2010-04-11 14:06:09'),
(69, 3, 32, 'Tambah Data', 'Halaman tambah data administrator', 'cpanel', 'administrator', 'add', 21, '1', '0', 'view', NULL, '2010-04-13 22:02:03'),
(70, 3, 32, 'Edit Administrator', 'Halaman edit administrato', 'cpanel', 'administrator', 'edit', 22, '1', '0', 'view', NULL, '2010-04-13 22:01:54'),
(71, 3, 32, 'Hapus Data', 'Halaman hapus data administrator', 'cpanel', 'administrator', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-13 22:02:42'),
(75, 3, 40, 'Forum Topik', 'Halaman editing topik pada forum yang terpilih', 'cpanel', 'forum', 'thread', 2, '1', '0', 'view', NULL, '2010-04-18 14:22:58'),
(76, 3, 40, 'Forum Kategori', 'Halaman editing forum kategori', 'cpanel', 'forum', 'list', 1, '1', '0', 'view', NULL, '2010-04-18 14:22:49'),
(77, 3, 40, 'Forum Reply', 'Halaman editing reply thread', 'cpanel', 'forum', 'reply', 3, '1', '0', 'view', NULL, '2010-04-18 14:24:21'),
(78, 3, 76, 'Process', 'Halaman proses forum', 'cpanel', 'forum', 'process', 1, '1', '0', 'process', NULL, '2010-04-18 14:25:04'),
(79, 3, 75, 'Process', 'Halaman proses forum thread', 'cpanel', 'forum', 'process-thread', 1, '1', '0', 'process', NULL, '2010-04-18 14:25:38'),
(80, 3, 77, 'Process', 'Halaman proses forum reply', 'cpanel', 'forum', 'process-reply', 1, '1', '0', 'process', NULL, '2010-04-18 14:26:06'),
(81, 3, 82, 'Process Kain', 'Halaman proses kategori kain', 'cpanel', 'kategori', 'process-kain', 30, '1', '0', 'process', NULL, '2010-04-18 22:11:56'),
(82, 3, 47, 'Kain', 'Halaman produk kategori kain', 'cpanel', 'kategori', 'kain-list', 21, '1', '0', 'view', NULL, '2010-04-18 21:20:23'),
(83, 3, 47, 'Baju', 'Halaman produk kategori baju', 'cpanel', 'kategori', 'baju-list', 22, '1', '0', 'view', NULL, '2010-04-18 21:19:15'),
(84, 3, 47, 'Aksesoris', 'Halaman produk kategori aksesoris', 'cpanel', 'kategori', 'aksesoris-list', 23, '1', '0', 'view', NULL, '2010-04-18 21:19:49'),
(85, 3, 83, 'Process Baju', 'Halaman proses kategori baju', 'cpanel', 'kategori', 'process-baju', 30, '1', '0', 'process', NULL, '2010-04-18 22:10:36'),
(86, 3, 84, 'Process Aksesoris', 'Halaman proses kategori aksesoris', 'cpanel', 'kategori', 'process-aksesoris', 30, '1', '0', 'process', NULL, '2010-04-18 22:12:15'),
(87, 3, 48, 'Process', 'Halaman proses', 'cpanel', 'kain', 'process', 30, '1', '0', 'process', NULL, '2010-04-19 22:40:23'),
(88, 3, 49, 'Process', 'halaman proses baju', 'cpanel', 'baju', 'process', 30, '1', '0', 'process', NULL, '2010-04-19 23:19:34'),
(89, 3, 50, 'Process', 'halaman proses aksesoris', 'cpanel', 'aksesoris', 'process', 30, '1', '0', 'process', NULL, '2010-04-19 23:20:04'),
(90, 3, 48, 'Tambah Data Kain', 'Halaman tambah data kain', 'cpanel', 'kain', 'add', 21, '1', '0', 'view', NULL, '2010-04-20 23:28:37'),
(91, 3, 48, 'Edit Data Kain', 'Halaman edit data kain', 'cpanel', 'kain', 'edit', 22, '1', '0', 'view', NULL, '2010-04-20 23:29:30'),
(92, 3, 48, 'Hapus Data Kain', 'Halaman hapus data kain', 'cpanel', 'kain', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-22 21:46:36'),
(93, 3, 49, 'Tambah Data Baju', 'Halaman tambah data baju', 'cpanel', 'baju', 'add', 21, '1', '0', 'view', NULL, '2010-04-21 01:21:20'),
(94, 3, 49, 'Edit Data Baju', 'Halaman edit data baju', 'cpanel', 'baju', 'edit', 22, '1', '0', 'view', NULL, '2010-04-21 01:21:54'),
(95, 3, 49, 'Hapus Data Baju', 'Halaman hapus data baju', 'cpanel', 'baju', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-22 23:05:31'),
(96, 3, 50, 'Tambah Data Aksesoris', 'Halaman tambah data aksesoris', 'cpanel', 'aksesoris', 'add', 21, '1', '0', 'view', NULL, '2010-04-21 01:23:06'),
(97, 3, 50, 'Edit Data Aksesoris', 'Halaman edit data aksesoris', 'cpanel', 'aksesoris', 'edit', 22, '1', '0', 'view', NULL, '2010-04-21 01:23:32'),
(98, 3, 50, 'Hapus Data Aksesoris', 'Halaman hapus data aksesoris', 'cpanel', 'aksesoris', 'hapus', 23, '1', '0', 'view', NULL, '2010-04-22 23:05:37'),
(99, 3, 48, 'Edit Images', 'Halaman edit images produk', 'cpanel', 'kain', 'images', 26, '1', '0', 'view', NULL, '2010-04-21 20:28:09'),
(100, 3, 49, 'Edit Images', 'Halaman images editing', 'cpanel', 'baju', 'images', 26, '1', '0', 'view', NULL, '2010-04-22 23:06:17'),
(101, 3, 50, 'Edit Images', 'Halaman images editing', 'cpanel', 'aksesoris', 'images', 26, '1', '0', 'view', NULL, '2010-04-22 23:06:59'),
(106, 3, 53, 'Edit Member', 'Halaman edit data member', 'cpanel', 'member', 'edit', 21, '1', '0', 'view', NULL, '2010-05-04 06:41:30'),
(107, 3, 53, 'Hapus Member', 'Halaman hapus data member', 'cpanel', 'member', 'delete', 22, '1', '0', 'view', NULL, '2010-05-04 06:42:19'),
(108, 3, 53, 'Detail Member', 'Halaman detail data member', 'cpanel', 'member', 'detail', 20, '1', '0', 'view', NULL, '2010-05-04 06:42:57'),
(109, 3, 53, 'Process', 'Halaman Proses data member', 'cpanel', 'member', 'process', 25, '1', '0', 'process', NULL, '2010-05-04 06:43:29'),
(110, 1, 0, 'Museum Nusantara', 'Halaman informasi museum di indonesia', 'web', 'museum', 'nusantara', 3, '1', '1', 'view', 1, '2010-07-18 12:06:28'),
(115, 3, 51, 'Process', 'Halaman proses editing dan publishing', 'cpanel', 'publishing', 'process', 59, '1', '0', 'process', NULL, '2010-05-16 09:20:08'),
(116, 3, 51, 'Edit Produk', 'Edit produk', 'cpanel', 'publishing', 'edit', 31, '1', '0', 'view', NULL, '2010-05-13 13:40:30'),
(117, 3, 51, 'Hapus Produk', 'Halaman hapus produk', 'cpanel', 'publishing', 'hapus', 32, '1', '0', 'view', NULL, '2010-05-13 19:12:24'),
(118, 3, 51, 'Deskripsi Produk', 'Halaman deskripsi produk', 'cpanel', 'publishing', 'description', 33, '1', '0', 'view', NULL, '2010-05-16 09:21:00'),
(119, 3, 51, 'Images Produk', 'Halaman management gambar produk', 'cpanel', 'publishing', 'images', 34, '1', '0', 'view', NULL, '2010-05-16 09:22:01'),
(120, 3, 51, 'Stok Produk', 'Halaman management stok produk', 'cpanel', 'publishing', 'stok', 35, '1', '0', 'view', NULL, '2010-05-16 09:22:51'),
(121, 3, 51, 'Harga Produk', 'Halaman management harga produk', 'cpanel', 'publishing', 'price', 36, '1', '0', 'view', NULL, '2010-05-16 09:23:15'),
(125, 1, 0, 'Program Unggulan', 'Halaman depan', 'web', 'welcome', 'index', 1, '1', '1', 'view', 1, '2010-07-18 12:05:29'),
(126, 1, 0, 'Koleksi Museum', 'Halaman informasi koleksi di indonesia', 'web', 'koleksi', 'index', 2, '1', '1', 'view', 1, '2010-07-18 12:06:32'),
(132, 2, 18, 'Update Akun Login', 'Halaman Update Akun Login', 'private', 'account', 'login', 3, '1', '1', 'view', 1, '2015-04-04 09:38:10'),
(135, 2, 18, 'Profil User', 'Halaman Profil User', 'private', 'account', 'status', 2, '1', '1', 'view', 1, '2015-04-23 03:19:12'),
(137, 2, 17, 'Pengaturan Aplikasi', 'Halaman pengaturan data aplikasi', 'private', 'sistem', 'settings', 4, '0', '0', 'view', 1, '2015-04-04 10:01:57'),
(138, 2, 17, 'Administrator', 'Halaman pengaturan administrator', 'private', 'administrator', 'index', 5, '1', '1', 'view', 1, '2010-07-11 11:42:54'),
(139, 2, 138, 'Tambah Administrator', 'Halaman tambah data administrator', 'private', 'administrator', 'add', 7, '1', '0', 'view', 1, '2010-07-11 11:43:10'),
(140, 2, 138, 'Edit Administrator', 'Halaman edit data administrator', 'private', 'administrator', 'edit', 8, '1', '0', 'view', 1, '2010-07-11 11:43:14'),
(141, 2, 138, 'Hapus Administrator', 'Halaman hapus data administrator', 'private', 'administrator', 'hapus', 9, '1', '0', 'view', 1, '2010-07-11 11:43:19'),
(142, 2, 138, 'Proses Data Administrator', 'Halaman proses data administrator', 'private', 'administrator', 'process', 10, '1', '0', 'process', 1, '2010-07-11 11:43:23'),
(143, 2, 137, 'Proses Data Aplikasi', 'Halaman proses data aplikasi', 'private', 'sistem', 'process_settings', 6, '1', '0', 'process', 1, '2010-07-11 11:43:00'),
(144, 2, 0, 'Data Pendukung', 'Group master data pendukung', 'private', 'penyelenggara', 'index', 4, '1', '1', 'view', 1, '2015-04-22 09:33:25'),
(149, 2, 18, 'Process', 'Halaman proses', 'private', 'account', 'process', 6, '1', '0', 'process', 1, '2010-07-11 11:42:33'),
(150, 2, 0, 'Asosiasi Anggota', 'Asosiasi Anggota DMSI', 'private', 'asosiasi', 'overview', 5, '1', '1', 'view', 1, '2016-05-19 11:20:36'),
(154, 2, 144, 'Provinsi', 'Halaman pengelolaan data provinsi', 'private', 'propinsi', 'index', 1, '1', '1', 'view', 1, '2016-07-26 05:58:04'),
(155, 2, 144, 'Kota', 'Halaman pengelolaan data kota', 'private', 'kota', 'index', 2, '1', '1', 'view', 1, '2016-07-26 05:58:10'),
(156, 2, 0, 'Website', 'Group fasilitas pengelolaan data website', 'private', 'profil', 'index', 6, '1', '1', 'view', 1, '2015-04-22 09:33:40'),
(157, 2, 150, 'Data Asosiasi', 'Halaman pengelolaan data asosiasi', 'private', 'asosiasi', 'index', 11, '1', '1', 'view', 1, '2016-05-19 11:21:10'),
(160, 2, 156, 'Profil Organisasi', 'Halaman pengelolaan profil organisasi', 'private', 'profil', 'index', 1, '1', '1', 'view', 1, '2016-06-03 05:52:38'),
(170, 2, 154, 'Tambah Data Propinsi', 'Halaman tambah data propinsi', 'private', 'propinsi', 'add', 21, '1', '0', 'view', 1, '2010-07-11 11:44:46'),
(171, 2, 154, 'Edit Data Propinsi', 'Halaman edit data propinsi', 'private', 'propinsi', 'edit', 22, '1', '0', 'view', 1, '2010-07-11 11:44:50'),
(172, 2, 154, 'Process Data', 'Halaman proses data propinsi', 'private', 'propinsi', 'process', 23, '1', '0', 'process', 1, '2010-07-11 11:44:54'),
(173, 2, 155, 'Tambah Data Kota', 'Halaman tambah data kota', 'private', 'kota', 'add', 21, '1', '0', 'view', 1, '2010-07-11 11:45:00'),
(174, 2, 155, 'Edit Data Kota', 'Halaman edit data kota', 'private', 'kota', 'edit', 22, '1', '0', 'view', 1, '2010-07-11 11:45:04'),
(175, 2, 155, 'Process Data', 'Halaman proses data kota', 'private', 'kota', 'process', 23, '1', '0', 'view', 1, '2010-07-11 11:45:09'),
(176, 2, 160, 'Tambah Data Profil', 'Halaman tambah data profil', 'private', 'profil', 'add', 21, '1', '0', 'view', 1, '2010-07-11 11:46:23'),
(177, 2, 160, 'Edit Data Profil', 'Halaman edit data profil', 'private', 'profil', 'edit', 22, '1', '0', 'view', 1, '2010-07-11 11:46:54'),
(178, 2, 160, 'Hapus Data Profil', 'Halaman hapus data profil', 'private', 'profil', 'hapus', 23, '1', '0', 'view', 1, '2010-07-11 11:47:19'),
(179, 2, 160, 'Process Data Profil', 'Halaman proses data profil', 'private', 'profil', 'process', 24, '1', '0', 'process', 1, '2010-07-11 11:48:09'),
(183, 2, 157, 'Tambah Data Asosiasi', 'Halaman tambah data asosiasi', 'private', 'asosiasi', 'add', 21, '1', '0', 'view', 1, '2016-05-19 11:21:28'),
(184, 2, 157, 'Edit Data Asosiasi', 'Halaman edit data asosiasi', 'private', 'asosiasi', 'edit', 22, '1', '0', 'view', 1, '2016-05-19 11:44:10'),
(185, 2, 157, 'Hapus Data Asosiasi', 'Halaman hapus data asosiasi', 'private', 'asosiasi', 'hapus', 23, '1', '0', 'view', 1, '2016-05-19 11:21:45'),
(186, 2, 157, 'Process Data', 'Halaman proses data asosiasi', 'private', 'asosiasi', 'process', 24, '1', '0', 'process', 1, '2016-05-19 11:21:58'),
(205, 1, 110, 'Museum Propinsi', 'Halaman informasi museum propinsi', 'web', 'museum', 'propinsi', 11, '1', '0', 'view', 1, '2010-07-11 14:19:51'),
(206, 1, 110, 'Museum Detail', 'Halaman detail data museum', 'web', 'museum', 'detail', 12, '1', '0', 'view', 1, '2010-07-11 14:20:38'),
(207, 1, 110, 'Koleksi Museum', 'Halaman koleksi museum', 'web', 'museum', 'koleksi', 13, '1', '0', 'view', 1, '2010-07-11 14:23:04'),
(208, 1, 126, 'Process Data', 'Halaman proses data koleksi', 'web', 'koleksi', 'process', 11, '1', '0', 'process', 1, '2010-07-11 14:35:09'),
(209, 1, 207, 'Detail Koleksi', 'Halaman detail Koleksi', 'web', 'museum', 'koleksi_detail', 21, '1', '0', 'view', 1, '2010-07-11 15:03:53'),
(210, 1, 207, 'Manfaat Koleksi', 'Halaman detail manfaat koleksi', 'web', 'museum', 'koleksi_manfaat', 22, '1', '0', 'view', 1, '2010-07-11 14:59:38'),
(211, 1, 207, 'Perolehan Koleksi', 'Halaman detail perolehan koleksi', 'web', 'museum', 'koleksi_perolehan', 23, '1', '0', 'view', 1, '2010-07-11 15:04:00'),
(212, 1, 207, 'Penyimpanan Koleksi', 'Halaman detail koleksi penyimpanan', 'web', 'museum', 'koleksi_simpan', 24, '1', '0', 'view', 1, '2010-08-13 04:18:23'),
(213, 1, 207, 'Fisik Koleksi', 'Halaman detail koleksi fisik', 'web', 'museum', 'koleksi_fisik', 25, '1', '0', 'view', 1, '2010-07-11 15:04:13'),
(214, 1, 207, 'Fisik Koleksi - Keris', 'Halaman detail data koleksi khusus keris', 'web', 'museum', 'koleksi_keris', 26, '1', '0', 'view', 1, '2010-07-11 15:04:29'),
(215, 1, 126, 'Detail Koleksi', 'Halaman detail Koleksi', 'web', 'koleksi', 'detail', 11, '1', '0', 'view', 1, '2010-07-11 15:04:38'),
(216, 1, 126, 'Manfaat Koleksi', 'Halaman detail manfaat koleksi', 'web', 'koleksi', 'manfaat', 12, '1', '0', 'view', 1, '2010-07-11 15:03:43'),
(217, 1, 126, 'Perolehan Koleksi', 'Halaman detail perolehan koleksi', 'web', 'koleksi', 'perolehan', 13, '1', '0', 'view', 1, '2010-07-11 15:05:11'),
(218, 1, 126, 'Penyimpanan Koleksi', 'Halaman detail koleksi penyimpanan', 'web', 'koleksi', 'penyimpanan', 15, '1', '0', 'view', 1, '2010-07-11 15:05:42'),
(219, 1, 126, 'Fisik Koleksi', 'Halaman detail koleksi fisik', 'web', 'koleksi', 'fisik', 16, '1', '0', 'view', 1, '2010-07-11 15:06:19'),
(220, 1, 126, 'Fisik Koleksi - Keris', 'Halaman detail koleksi fisik khusus keris', 'web', 'koleksi', 'keris', 17, '1', '0', 'view', 1, '2010-07-11 15:06:52'),
(221, 1, 0, 'Museum Board', 'Halaman statistik', 'web', 'dashboard', 'index', 4, '1', '1', 'view', 1, '2010-07-18 12:05:52'),
(223, 1, 0, 'Fusion Chart', 'Halaman testing fusion chart', 'web', 'testing', 'fusionchart', 11, '1', '0', 'view', 1, '2010-07-18 11:59:52'),
(224, 1, 0, 'Pagination', 'Halaman testing paging', 'web', 'testing', 'pagination', 12, '1', '0', 'view', 1, '2010-07-18 11:59:57'),
(225, 1, 0, 'Uploader', 'Halaman testing upload file and images', 'web', 'testing', 'uploader', 13, '1', '0', 'view', 1, '2010-07-18 12:00:05'),
(226, 1, 225, 'Process Data', 'Halaman proses data upload', 'web', 'testing', 'process_upload', 14, '1', '0', 'view', 1, '2010-07-15 08:16:31'),
(227, 1, 0, 'Write excel', 'Halaman testing write excel', 'web', 'testing', 'excel', 15, '1', '0', 'view', 1, '2010-07-18 12:00:09'),
(228, 1, 0, 'Write PDF', 'Halaman testing write PDF', 'web', 'testing', 'pdfwriter', 15, '1', '0', 'view', 1, '2010-07-18 12:00:13'),
(229, 1, 0, 'Informasi dan Profil', 'Halaman informasi ', 'web', 'profil', 'detail', 5, '1', '0', 'view', 1, '2010-07-18 12:22:36'),
(253, 1, 207, 'Jenis Koleksi', 'Halaman jenis koleksi', 'web', 'museum', 'koleksi_jenis', 20, '1', '0', 'view', 1, '2010-08-07 21:46:28'),
(255, 1, 221, 'Museum Dashboard Propinsi', 'Halaman dashboard list propinsi', 'web', 'dashboard', 'propinsi', 21, '1', '0', 'view', 1, '2010-08-11 23:32:32'),
(265, 2, 154, 'Hapus Provinsi', 'Halaman Hapus Provinsi', 'private', 'propinsi', 'hapus', 4, '1', '0', 'view', 1, '2015-04-08 09:28:28'),
(266, 2, 155, 'Hapus Kota', 'Halaman Hapus Kota', 'private', 'kota', 'hapus', 4, '1', '0', 'view', 1, '2015-04-08 09:29:06'),
(268, 2, 0, 'Dashboard', 'Dashboard', 'private', 'dashboard', 'index', 1, '1', '1', 'view', 1, '2015-04-22 09:33:47'),
(273, 2, 268, 'Grafik Data', 'Grafik Data', 'private', 'dashboard', 'display_data_grafik', 1, '1', '0', 'view', 1, '2015-05-12 08:03:04'),
(274, 2, 268, 'Grafik Data Museum', 'Grafik Data Museum', 'private', 'dashboard', 'display_data_grafik_museum', 2, '1', '0', 'view', 1, '2015-05-12 08:04:00'),
(277, 2, 156, 'Berita', 'Berita', 'private', 'berita', 'index', 2, '1', '1', 'view', 1, '2015-06-03 09:11:37'),
(279, 2, 156, 'Kegiatan', 'Jadwal Kegiatan', 'private', 'agenda', 'index', 3, '1', '1', 'view', 1, '2016-06-03 05:49:48'),
(280, 2, 277, 'Tambah Berita', 'Tambah Berita', 'private', 'berita', 'add', 1, '1', '0', 'view', 1, '2015-06-03 09:13:02'),
(281, 2, 277, 'Edit Berita', 'Edit Berita', 'private', 'berita', 'edit', 2, '1', '0', 'view', 1, '2015-06-03 09:13:23'),
(282, 2, 277, 'Process Berita', 'Process Berita', 'private', 'berita', 'process', 3, '1', '0', 'process', 1, '2015-06-03 09:13:51'),
(286, 2, 279, 'Tambah Kegiatan', 'Tambah Kegiatan', 'private', 'agenda', 'add', 1, '1', '0', 'view', 1, '2015-06-03 09:15:52'),
(287, 2, 279, 'Edit Kegiatan', 'Edit Kegiatan', 'private', 'agenda', 'edit', 2, '1', '0', 'view', 1, '2015-06-03 09:16:18'),
(288, 2, 279, 'Process Kegiatan', 'Process Kegiatan', 'private', 'agenda', 'process', 3, '1', '0', 'process', 1, '2015-06-03 09:17:04'),
(289, 2, 156, 'Download', 'Download', 'private', 'download', 'index', 10, '1', '1', 'view', 1, '2016-07-22 09:47:25'),
(290, 2, 289, 'Tambah File', 'Tambah File', 'private', 'download', 'add', 1, '1', '0', 'view', 1, '2015-06-03 09:19:04'),
(291, 2, 289, 'Edit Download File', 'Edit Download File', 'private', 'download', 'edit', 2, '1', '0', 'view', 1, '2015-06-03 09:19:50'),
(292, 2, 289, 'Process Download', 'Process Download', 'private', 'download', 'process', 3, '1', '0', 'process', 1, '2015-06-03 09:20:20'),
(293, 2, 156, 'Video ', 'Video ', 'private', 'video', 'index', 9, '1', '1', 'view', 1, '2016-06-03 06:03:40'),
(294, 2, 293, 'Tambah Video', 'Tambah Video', 'private', 'video', 'add', 1, '1', '0', 'view', 1, '2015-06-03 09:21:15'),
(295, 2, 293, 'Edit Video', 'Edit Video', 'private', 'video', 'edit', 2, '1', '0', 'view', 1, '2015-06-03 09:22:58'),
(296, 2, 293, 'Display Video', 'Display Video', 'private', 'video', 'display', 3, '1', '0', 'view', 1, '2015-06-03 09:23:48'),
(297, 2, 293, 'Video Form', 'Video Form', 'private', 'video', 'form', 4, '1', '0', 'view', 1, '2015-06-03 09:24:20'),
(298, 2, 293, 'Process Video', 'Process Video', 'private', 'video', 'process', 5, '1', '0', 'view', 1, '2015-06-03 09:25:15'),
(299, 2, 156, 'Kontak Info', 'Kontak Info', 'private', 'kontak', 'index', 12, '1', '1', 'view', 1, '2016-05-20 05:23:14'),
(300, 2, 299, 'Process Kontak', 'Process Kontak', 'private', 'kontak', 'process', 1, '1', '0', 'process', 1, '2016-05-20 05:23:43'),
(301, 2, 156, 'Informasi', 'Informasi', 'private', 'informasi', 'index', 4, '1', '1', 'view', 1, '2016-06-03 05:49:59'),
(304, 2, 301, 'Tambah Informasi', 'Tambah Informasi', 'private', 'informasi', 'add', 1, '1', '1', 'view', 1, '2016-05-27 08:49:45'),
(305, 2, 301, 'Process Informasi', 'Process Informasi', 'private', 'informasi', 'process', 2, '1', '1', 'process', 1, '2016-05-30 06:59:18'),
(306, 2, 301, 'Edit Informasi', 'Edit Informasi', 'private', 'informasi', 'edit', 3, '1', '1', 'view', 1, '2016-05-27 10:32:10'),
(307, 2, 156, 'Opini', 'Opini', 'private', 'opini', 'index', 5, '1', '1', 'view', 1, '2016-06-03 05:50:31'),
(308, 2, 307, 'Tambah Opini', 'Tambah Opini', 'private', 'opini', 'add', 1, '1', '1', 'view', 1, '2016-05-30 06:14:40'),
(309, 2, 307, 'Process Opini', 'Opini', 'private', 'opini', 'process', 2, '1', '1', 'process', 1, '2016-05-30 07:00:30'),
(310, 2, 307, 'Edit Opini', 'Edit Opini', 'private', 'opini', 'edit', 3, '1', '1', 'view', 1, '2016-05-30 21:27:45'),
(311, 2, 156, 'Serba Serbi', 'Serba Serbi', 'private', 'sesebi', 'index', 6, '1', '1', 'view', 1, '2016-06-03 05:50:49'),
(312, 2, 311, 'Tambah Serba Serbi', 'Tambah Serba Serbi', 'private', 'sesebi', 'add', 1, '1', '1', 'view', 1, '2016-06-01 00:13:18'),
(313, 2, 311, 'Proses Serba Serbi', 'Proses Serba Serbi', 'private', 'sesebi', 'process', 2, '1', '1', 'process', 1, '2016-06-01 00:13:25'),
(314, 2, 311, 'Edit Serba Serbi', 'Edit Serba Serbi', 'private', 'sesebi', 'edit', 3, '1', '1', 'view', 1, '2016-06-01 00:13:31'),
(315, 2, 156, 'Foto', 'Foto', 'private', 'foto', 'index', 8, '1', '1', 'view', 1, '2016-06-03 06:03:26'),
(316, 2, 315, 'Tambah Album', 'Tambah Album', 'private', 'foto', 'add', 1, '1', '1', 'view', 1, '2016-06-02 05:31:59'),
(317, 2, 315, 'Process Album', 'Process Album', 'private', 'foto', 'process', 2, '1', '1', 'process', 1, '2016-06-02 05:32:22'),
(318, 2, 315, 'Edit Album', 'Edit Album', 'private', 'foto', 'edit', 3, '1', '1', 'view', 1, '2016-06-02 05:32:34'),
(319, 2, 315, 'Tambah Foto', 'Tambah Foto', 'private', 'foto', 'add_foto', 4, '1', '1', 'view', 1, '2016-06-02 05:33:17'),
(320, 2, 315, 'List Foto', 'List Foto', 'private', 'foto', 'list_foto', 5, '1', '1', 'view', 1, '2016-06-02 11:04:41'),
(322, 2, 315, 'Edit Foto', 'Edit Foto', 'private', 'foto', 'edit_foto', 6, '1', '1', 'view', 1, '2016-06-02 12:28:50'),
(323, 2, 156, 'Program', 'Program Aksi DMSI', 'private', 'program', 'index', 6, '1', '1', 'view', 1, '2016-06-03 06:01:48'),
(324, 2, 156, 'Bagan', 'Bagan', 'private', 'bagan', 'index', 7, '1', '1', 'view', 1, '2016-06-03 06:03:03'),
(325, 2, 323, 'Process Program', 'Process Program', 'private', 'program', 'process', 1, '1', '1', 'process', 1, '2016-06-03 08:20:01'),
(326, 2, 324, 'Process Bagan', 'Process Bagan', 'private', 'bagan', 'process', 1, '1', '1', 'process', 1, '2016-06-03 11:02:13'),
(327, 2, 156, 'Aspirasi', 'Aspirasi', 'private', 'aspirasi', 'index', 13, '1', '0', 'view', 1, '2016-06-09 16:00:28'),
(328, 2, 327, 'Read', 'read', 'private', 'aspirasi', 'read', 1, '1', '0', 'view', 1, '2016-07-27 14:48:47'),
(329, 2, 327, 'Process Aspirasi', 'Process Aspirasi', 'private', 'aspirasi', 'process', 2, '1', '0', 'process', 1, '2016-06-10 04:47:01'),
(330, 2, 327, 'Verifikasi Aspirasi', 'Verifikasi Aspirasi', 'private', 'aspirasi', 'verifikasi', 3, '1', '0', 'view', 1, '2016-06-10 05:38:08'),
(331, 2, 327, 'Jawaban', 'Jawaban', 'private', 'aspirasi', 'jawaban', 4, '1', '0', 'view', 1, '2016-06-10 08:11:19'),
(332, 2, 156, 'Regulasi', 'Regulasi', 'private', 'regulasi', 'index', 14, '1', '1', 'view', 1, '2016-06-13 04:40:44'),
(333, 2, 332, 'Tambah File', 'Tambah File', 'private', 'regulasi', 'add', 1, '1', '0', 'view', 1, '2016-06-13 05:17:33'),
(334, 2, 332, 'Process Regulasi', 'Process Regulasi', 'private', 'regulasi', 'process', 2, '1', '0', 'process', 1, '2016-06-13 05:59:48'),
(335, 2, 332, 'Edit Regulasi', 'Edit Regulasi', 'private', 'regulasi', 'edit', 3, '1', '1', 'view', 1, '2016-06-13 06:31:57'),
(336, 2, 156, 'Sponsorship', 'Sponsorship', 'private', 'sponsor', 'index', 15, '1', '1', 'view', 1, '2016-06-13 10:01:55'),
(337, 2, 336, 'Tambah Sponsor', 'Tambah Sponsor', 'private', 'sponsor', 'add', 1, '1', '1', 'view', 1, '2016-06-13 10:32:38'),
(338, 2, 336, 'Process Sponsor', 'Process Sponsor', 'private', 'sponsor', 'process', 2, '1', '1', 'process', 1, '2016-06-13 10:44:07'),
(339, 2, 336, 'Edit Sponsor', 'Edit Sponsor', 'private', 'sponsor', 'edit', 3, '1', '1', 'view', 1, '2016-06-14 04:27:50'),
(340, 2, 156, 'Harga', 'Harga', 'private', 'harga', 'index', 16, '1', '1', 'view', 1, '2016-06-17 05:08:09'),
(341, 2, 340, 'Tambah Harga', 'Tambah Harga', 'private', 'harga', 'add', 1, '1', '1', 'view', 1, '2016-06-20 09:27:18'),
(342, 2, 340, 'Process Harga', 'Process Harga', 'private', 'harga', 'process', 2, '1', '0', 'process', 1, '2016-06-21 05:12:14'),
(343, 2, 340, 'Edit Harga', 'Edit Harga', 'private', 'harga', 'edit', 3, '1', '1', 'view', 1, '2016-06-21 05:58:58'),
(344, 2, 340, 'Grafik Harga', 'Grafik Harga', 'private', 'harga', 'grafik', 4, '1', '1', 'view', 1, '2016-06-21 06:45:06'),
(345, 2, 340, 'Display Data Grafik', 'Display Data Grafik', 'private', 'harga', 'display_data_grafik', 5, '1', '1', 'view', 1, '2016-06-22 06:13:27'),
(346, 2, 144, 'Banner', 'Banner Home', 'private', 'banner', 'index', 3, '1', '1', 'view', 1, '2016-07-26 05:57:45'),
(347, 2, 346, 'Tambah Banner', 'Tambah Banner', 'private', 'banner', 'add', 1, '1', '1', 'view', 1, '2016-07-26 06:25:45'),
(348, 2, 346, 'Process Banner', 'Process Banner', 'private', 'banner', 'process', 2, '1', '1', 'process', 1, '2016-07-26 09:31:04'),
(349, 2, 346, 'Edit Banner', 'Edit Banner', 'private', 'banner', 'edit', 3, '1', '1', 'view', 1, '2016-07-26 09:59:07'),
(350, 2, 144, 'Sosial Media', 'Sosial Media', 'private', 'sosmed', 'index', 4, '1', '1', 'view', 1, '2016-08-16 09:26:57'),
(351, 2, 350, 'Tambah Sosmed', 'Tambah Sosmed', 'private', 'sosmed', 'add', 1, '1', '1', 'view', 1, '2016-07-27 06:25:05'),
(352, 2, 350, 'Process Sosmed', 'Process Sosmed', 'private', 'sosmed', 'process', 2, '1', '1', 'process', 1, '2016-07-27 07:12:32'),
(353, 2, 350, 'Edit Sosmed', 'Edit Sosmed', 'private', 'sosmed', 'edit', 3, '1', '1', 'view', 1, '2016-07-27 07:30:06'),
(354, 2, 144, 'Banner Atas', 'Banner Atas', 'private', 'bantas', 'index', 5, '1', '1', 'view', 1, '2016-08-16 09:32:54'),
(355, 2, 354, 'Process Bantas', 'Process Bantas', 'private', 'bantas', 'process', 1, '1', '0', 'process', 1, '2016-08-16 09:47:09'),
(356, 2, 157, 'List Anggota', 'List Anggota', 'private', 'asosiasi', 'anggota', 5, '1', '0', 'view', 1, '2016-08-23 09:52:25'),
(357, 2, 156, 'Registrasi', 'Registrasi', 'private', 'registrasi', 'index', 17, '1', '0', 'view', 1, '2016-08-23 11:46:57'),
(358, 2, 357, 'Process Registrasi', 'Process Registrasi', 'private', 'registrasi', 'process', 1, '1', '0', 'process', 1, '2016-08-24 06:17:52'),
(359, 2, 357, 'List Anggota Disetujui', 'List Anggota Disetujui', 'private', 'registrasi', 'disetujui', 2, '1', '0', 'view', 1, '2016-08-25 05:28:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_settings_m`
--

CREATE TABLE IF NOT EXISTS `sys_settings_m` (
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text NOT NULL,
  `site_url` varchar(50) NOT NULL DEFAULT '',
  `site_email` varchar(50) NOT NULL DEFAULT '',
  `smtp_name` varchar(50) DEFAULT NULL,
  `smtp_host` varchar(50) NOT NULL DEFAULT '',
  `smtp_port` varchar(10) NOT NULL,
  `smtp_username` varchar(50) NOT NULL DEFAULT '',
  `smtp_password` varchar(50) NOT NULL DEFAULT '',
  `regnas_url` varchar(255) DEFAULT NULL,
  `maintenance` enum('yes','no') NOT NULL DEFAULT 'no',
  `maintenance_message` text NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '7.00',
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_settings_m`
--

INSERT INTO `sys_settings_m` (`site_name`, `site_description`, `site_url`, `site_email`, `smtp_name`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `regnas_url`, `maintenance`, `maintenance_message`, `version`, `mdb`, `mdd`) VALUES
('Dewan Minyak Sawit Indonesia', 'Dewan Minyak Sawit Indonesia - DMSI', 'http://dmsi.taa.co.id', 'dewan.sawit@gmail.com', 'Gmail Smtp', 'smtp.gmail.com', '465', 'dewan.sawit@gmail.com', 'dewan2006', 'http://localhost/siteregnas', 'no', '', '1.1', 1, '2016-05-19 10:26:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_user_authority_t`
--

CREATE TABLE IF NOT EXISTS `sys_user_authority_t` (
  `id_user` int(11) unsigned NOT NULL,
  `id_auth` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_user_authority_t`
--

INSERT INTO `sys_user_authority_t` (`id_user`, `id_auth`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_user_login_t`
--

CREATE TABLE IF NOT EXISTS `sys_user_login_t` (
`id` bigint(20) unsigned NOT NULL,
  `id_user` int(11) unsigned NOT NULL,
  `login_date` datetime NOT NULL,
  `remote_ip` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1130 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_user_login_t`
--

INSERT INTO `sys_user_login_t` (`id`, `id_user`, `login_date`, `remote_ip`) VALUES
(1103, 2, '2016-07-27 21:26:53', '::1'),
(1129, 1, '2016-08-26 09:56:15', '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_user_m`
--

CREATE TABLE IF NOT EXISTS `sys_user_m` (
`id_user` int(11) unsigned NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_key` varchar(50) DEFAULT '123456789',
  `user_status` enum('active','blocked') DEFAULT 'active',
  `user_mail` varchar(100) DEFAULT NULL,
  `mdb` int(11) unsigned DEFAULT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_user_m`
--

INSERT INTO `sys_user_m` (`id_user`, `user_name`, `user_pass`, `user_key`, `user_status`, `user_mail`, `mdb`, `mdd`) VALUES
(1, 'systemadmin', 'OkBCQDE8Ly86MDU=', '991441253', 'active', 'dewan.sawit@gmail.com', 2, '2016-07-21 10:43:45'),
(2, 'saepul', 'PSgtP0I4', '698134640', 'active', 'bachrisaiful6@gmail.com', 1, '2016-07-28 06:13:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video_m`
--

CREATE TABLE IF NOT EXISTS `video_m` (
`id_video` int(10) unsigned NOT NULL,
  `judul_video` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `keterangan` text COLLATE latin1_general_ci,
  `sumber` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `video_file` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `video_image` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `video_embed` text COLLATE latin1_general_ci,
  `tipe` enum('upload','embed') COLLATE latin1_general_ci DEFAULT NULL,
  `judul_english` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan_english` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `video_m`
--

INSERT INTO `video_m` (`id_video`, `judul_video`, `keterangan`, `sumber`, `video_file`, `video_image`, `video_embed`, `tipe`, `judul_english`, `keterangan_english`) VALUES
(4, 'Video Clip Lagu DMSI - Ari Lasso Feat Audy', 'Video Clip Lagu DMSI ', 'DMSI', '4_20051210-w50s.flv', '4.jpg', NULL, 'upload', 'Video Clips Song DMSI - Ari Lasso Feat Audy', 'Video Clips Song DMSI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator_m`
--
ALTER TABLE `administrator_m`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `agenda_m`
--
ALTER TABLE `agenda_m`
 ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album_m`
--
ALTER TABLE `album_m`
 ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `asosiasi_m`
--
ALTER TABLE `asosiasi_m`
 ADD PRIMARY KEY (`id_asosiasi`), ADD KEY `FK_museum_kota_m` (`id_kota`);

--
-- Indexes for table `aspirasi_m`
--
ALTER TABLE `aspirasi_m`
 ADD PRIMARY KEY (`id_aspirasi`);

--
-- Indexes for table `bagan_m`
--
ALTER TABLE `bagan_m`
 ADD PRIMARY KEY (`id_bagan`);

--
-- Indexes for table `banner_m`
--
ALTER TABLE `banner_m`
 ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `bantas_m`
--
ALTER TABLE `bantas_m`
 ADD PRIMARY KEY (`id_bantas`);

--
-- Indexes for table `berita_m`
--
ALTER TABLE `berita_m`
 ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `bulan_m`
--
ALTER TABLE `bulan_m`
 ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `download_m`
--
ALTER TABLE `download_m`
 ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `foto_m`
--
ALTER TABLE `foto_m`
 ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `harga_m`
--
ALTER TABLE `harga_m`
 ADD PRIMARY KEY (`id_harga`), ADD KEY `di_katharga` (`id_katharga`), ADD KEY `di_katharga_2` (`id_katharga`);

--
-- Indexes for table `informasi_m`
--
ALTER TABLE `informasi_m`
 ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `kategori_m`
--
ALTER TABLE `kategori_m`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `katharga_m`
--
ALTER TABLE `katharga_m`
 ADD PRIMARY KEY (`id_katharga`);

--
-- Indexes for table `kontak_m`
--
ALTER TABLE `kontak_m`
 ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `logo_sosmed_m`
--
ALTER TABLE `logo_sosmed_m`
 ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `log_m`
--
ALTER TABLE `log_m`
 ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `opini_m`
--
ALTER TABLE `opini_m`
 ADD PRIMARY KEY (`id_opini`);

--
-- Indexes for table `pengumuman_m`
--
ALTER TABLE `pengumuman_m`
 ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `profil_m`
--
ALTER TABLE `profil_m`
 ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `program_m`
--
ALTER TABLE `program_m`
 ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `registrasi_m`
--
ALTER TABLE `registrasi_m`
 ADD PRIMARY KEY (`id_registrasi`), ADD KEY `id_asosiasi` (`id_asosiasi`), ADD KEY `id_kota` (`id_kota`), ADD KEY `id_negara` (`id_negara`);

--
-- Indexes for table `regulasi_m`
--
ALTER TABLE `regulasi_m`
 ADD PRIMARY KEY (`id_regulasi`);

--
-- Indexes for table `serbaserbi_m`
--
ALTER TABLE `serbaserbi_m`
 ADD PRIMARY KEY (`id_sesebi`);

--
-- Indexes for table `sosmed_m`
--
ALTER TABLE `sosmed_m`
 ADD PRIMARY KEY (`id_sosmed`);

--
-- Indexes for table `sponsor_m`
--
ALTER TABLE `sponsor_m`
 ADD PRIMARY KEY (`id_sponsor`);

--
-- Indexes for table `spt_kota_m`
--
ALTER TABLE `spt_kota_m`
 ADD PRIMARY KEY (`id_kota`), ADD KEY `FK_city_m` (`id_propinsi`);

--
-- Indexes for table `spt_negara_m`
--
ALTER TABLE `spt_negara_m`
 ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `spt_propinsi_m`
--
ALTER TABLE `spt_propinsi_m`
 ADD PRIMARY KEY (`id_propinsi`), ADD KEY `FK_spt_propinsi_m` (`id_negara`);

--
-- Indexes for table `sys_authority_m`
--
ALTER TABLE `sys_authority_m`
 ADD PRIMARY KEY (`id_auth`);

--
-- Indexes for table `sys_build_menu_m`
--
ALTER TABLE `sys_build_menu_m`
 ADD PRIMARY KEY (`id_nav`);

--
-- Indexes for table `sys_group_m`
--
ALTER TABLE `sys_group_m`
 ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `sys_menu_authority_t`
--
ALTER TABLE `sys_menu_authority_t`
 ADD PRIMARY KEY (`id_nav`,`id_auth`), ADD KEY `FK_sys_menu_authority_t_2` (`id_auth`);

--
-- Indexes for table `sys_menu_m`
--
ALTER TABLE `sys_menu_m`
 ADD PRIMARY KEY (`id_nav`), ADD KEY `FK_frendmed_menu_m` (`id_group`);

--
-- Indexes for table `sys_user_authority_t`
--
ALTER TABLE `sys_user_authority_t`
 ADD PRIMARY KEY (`id_user`,`id_auth`), ADD KEY `FK_sys_user_authority_t` (`id_auth`);

--
-- Indexes for table `sys_user_login_t`
--
ALTER TABLE `sys_user_login_t`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_sys_user_login_t` (`id_user`);

--
-- Indexes for table `sys_user_m`
--
ALTER TABLE `sys_user_m`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video_m`
--
ALTER TABLE `video_m`
 ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda_m`
--
ALTER TABLE `agenda_m`
MODIFY `id_agenda` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `album_m`
--
ALTER TABLE `album_m`
MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asosiasi_m`
--
ALTER TABLE `asosiasi_m`
MODIFY `id_asosiasi` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `aspirasi_m`
--
ALTER TABLE `aspirasi_m`
MODIFY `id_aspirasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `bagan_m`
--
ALTER TABLE `bagan_m`
MODIFY `id_bagan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner_m`
--
ALTER TABLE `banner_m`
MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `berita_m`
--
ALTER TABLE `berita_m`
MODIFY `id_berita` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `bulan_m`
--
ALTER TABLE `bulan_m`
MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `download_m`
--
ALTER TABLE `download_m`
MODIFY `id_download` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `foto_m`
--
ALTER TABLE `foto_m`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `harga_m`
--
ALTER TABLE `harga_m`
MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `informasi_m`
--
ALTER TABLE `informasi_m`
MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `kategori_m`
--
ALTER TABLE `kategori_m`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `katharga_m`
--
ALTER TABLE `katharga_m`
MODIFY `id_katharga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kontak_m`
--
ALTER TABLE `kontak_m`
MODIFY `id_kontak` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logo_sosmed_m`
--
ALTER TABLE `logo_sosmed_m`
MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log_m`
--
ALTER TABLE `log_m`
MODIFY `id_log` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `opini_m`
--
ALTER TABLE `opini_m`
MODIFY `id_opini` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengumuman_m`
--
ALTER TABLE `pengumuman_m`
MODIFY `id_pengumuman` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `profil_m`
--
ALTER TABLE `profil_m`
MODIFY `id_info` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `program_m`
--
ALTER TABLE `program_m`
MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registrasi_m`
--
ALTER TABLE `registrasi_m`
MODIFY `id_registrasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `regulasi_m`
--
ALTER TABLE `regulasi_m`
MODIFY `id_regulasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `serbaserbi_m`
--
ALTER TABLE `serbaserbi_m`
MODIFY `id_sesebi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sosmed_m`
--
ALTER TABLE `sosmed_m`
MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sponsor_m`
--
ALTER TABLE `sponsor_m`
MODIFY `id_sponsor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spt_negara_m`
--
ALTER TABLE `spt_negara_m`
MODIFY `id_negara` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=897;
--
-- AUTO_INCREMENT for table `spt_propinsi_m`
--
ALTER TABLE `spt_propinsi_m`
MODIFY `id_propinsi` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `sys_authority_m`
--
ALTER TABLE `sys_authority_m`
MODIFY `id_auth` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sys_build_menu_m`
--
ALTER TABLE `sys_build_menu_m`
MODIFY `id_nav` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `sys_group_m`
--
ALTER TABLE `sys_group_m`
MODIFY `id_group` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sys_menu_m`
--
ALTER TABLE `sys_menu_m`
MODIFY `id_nav` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=360;
--
-- AUTO_INCREMENT for table `sys_user_login_t`
--
ALTER TABLE `sys_user_login_t`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1130;
--
-- AUTO_INCREMENT for table `sys_user_m`
--
ALTER TABLE `sys_user_m`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `video_m`
--
ALTER TABLE `video_m`
MODIFY `id_video` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `asosiasi_m`
--
ALTER TABLE `asosiasi_m`
ADD CONSTRAINT `FK_museum_kota_m` FOREIGN KEY (`id_kota`) REFERENCES `spt_kota_m` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spt_propinsi_m`
--
ALTER TABLE `spt_propinsi_m`
ADD CONSTRAINT `FK_spt_propinsi_m` FOREIGN KEY (`id_negara`) REFERENCES `spt_negara_m` (`id_negara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sys_menu_authority_t`
--
ALTER TABLE `sys_menu_authority_t`
ADD CONSTRAINT `FK_sys_menu_authority_t` FOREIGN KEY (`id_auth`) REFERENCES `sys_authority_m` (`id_auth`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_sys_menu_authority_t_2` FOREIGN KEY (`id_nav`) REFERENCES `sys_menu_m` (`id_nav`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sys_user_authority_t`
--
ALTER TABLE `sys_user_authority_t`
ADD CONSTRAINT `FK_sys_user_authority_t` FOREIGN KEY (`id_auth`) REFERENCES `sys_authority_m` (`id_auth`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_sys_user_authority_t_2` FOREIGN KEY (`id_user`) REFERENCES `sys_user_m` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sys_user_login_t`
--
ALTER TABLE `sys_user_login_t`
ADD CONSTRAINT `FK_sys_user_login_t` FOREIGN KEY (`id_user`) REFERENCES `sys_user_m` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
