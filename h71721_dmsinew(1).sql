-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Sep 2016 pada 12.17
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
(1, 'Developer Web', 100, 'L', 'Web Developer', '089698016569', '1_7451317dmsi2.jpg', 1, '2016-09-06 06:10:30'),
(2, 'Admin Utama', 100, 'P', 'Admin Utama', '0987654765421', NULL, 1, '2016-09-06 06:15:35'),
(3, 'Dewi', 100, 'P', 'Admin Anggota', '0987654', NULL, 1, '2016-09-06 06:16:34'),
(4, 'Niken Larasati', 100, 'P', 'Sekretaris', '', NULL, 1, '2016-09-06 09:17:23'),
(5, 'TEST', 6, 'L', 'xxx', '0813', NULL, 1, '2016-09-07 05:00:14');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `agenda_m`
--

INSERT INTO `agenda_m` (`id_agenda`, `id_asosiasi`, `judul_agenda`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`, `keterangan`, `image_agenda`, `file_agenda`, `judul_english`, `keterangan_english`) VALUES
(11, 100, 'POIDEC  2015', '2015-01-01', '2016-09-02', 'Jakarta', '<p><em>Disaat masalah masih menggunung seperti harga yang masih melemah, munculnya tudingan miring dan infrastruktur yang tak kunjung rampung, justru industri kelapa sawit melakukan lompatan besar, dengan berupaya menjadi industri yang mandiri.</em></p><p>Kendati masih banyak yang perlu diselesaikan, lantaran kendala pada industri kelapa sawit masih saja menggunung, tidak menghentikan industri emas licin ini untuk terus tumbuh dan bergerak.</p><p>Terbukti, malah telah melakukan sebuah lompatan besar dengan berupaya menjadi industri yang bisa berdiri sendiri. Langkah besar yang dilakukan industri kelapa sawit itu menjadi tema utama dalam sebuah pagelaran konferensi&nbsp; Palm Oil Industry Development Conference (POIDEC) 2015, yang sudah kali kedua digagas oleh Dewan Minyak Sawit Indonesia (DMSI).</p><p>Dalam kegiatan konferensi POIDC 2015 yang digelar di Hotel Borobudur, Jakarta banyak diangkat&nbsp; berbagai hal yang berkaitan dengan masalah-masalah di sektor hulu hingga hilir sawit.</p><p>Termasuk seperti kondisi saat ini yang mana industri sawit nasional masih dihadapkan pada melemahnya harga, namun demikian industri sawit dituntut untuk bisa terus berkembang. “Semua sedang sulit maka &nbsp;kita semua mesti berkorban,” kata Menteri Koordinasi Bidang Perekonomian, Darmin Nasution, belum&nbsp; lama ini di Jakarta.</p>', '11_unduhan.jpg', NULL, 'POIDEC  2015', '<div>While&nbsp;the problem still&nbsp;menggunung&nbsp;like&nbsp;the price is&nbsp;still&nbsp;weakening,&nbsp;the appearance of&nbsp;a&nbsp;incline&nbsp;and&nbsp;tudingan&nbsp;infrastructure that&nbsp;never&nbsp;complete,&nbsp;thus&nbsp;the oil palm&nbsp;industry&nbsp;do&nbsp;a huge leap, with&nbsp;the&nbsp;industry&nbsp;strives to be&nbsp;independent.</div><br><div>Although&nbsp;there is still much&nbsp;that needs to be&nbsp;resolved,&nbsp;due to the&nbsp;constraints&nbsp;on&nbsp;oil palm&nbsp;industry is&nbsp;still a&nbsp;menggunung,&nbsp;didn''t stop&nbsp;this&nbsp;slippery&nbsp;gold&nbsp;industry&nbsp;to&nbsp;continue to grow and&nbsp;move.</div><br><div>Proven,&nbsp;even&nbsp;have done&nbsp;a huge leap&nbsp;with&nbsp;strives to be&nbsp;the industry that&nbsp;can stand&nbsp;on its own.&nbsp;Big step done oil palm industry was becoming the main theme of the Conference, in a performance of Palm Oil Industry Development Conference (POIDEC) 2015, which is already the second time was initiated by Indonesia palm oil Board (DMSI).</div><br><div>In the activities of the Conference POIDC 2015 held at Hotel Borobudur Jakarta, many raised various matters relating to the issues in the upstream sector to downstream palm oil.</div><br><div>Including&nbsp;such a&nbsp;condition&nbsp;which&nbsp;the national&nbsp;oil&nbsp;industry&nbsp;is still&nbsp;faced with&nbsp;weakening&nbsp;prices,&nbsp;oil&nbsp;industry&nbsp;nevertheless&nbsp;claimed to&nbsp;be&nbsp;growing.&nbsp;"All are difficult and we all have to make sacrifices," said Minister Coordinating the field of economy, Darmin Nasution, not long ago in Jakarta.</div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album_m`
--

CREATE TABLE IF NOT EXISTS `album_m` (
`id_album` int(11) NOT NULL,
  `nama_album` varchar(200) NOT NULL,
  `image_album` varchar(200) NOT NULL,
  `nama_english` varchar(100) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `album_m`
--

INSERT INTO `album_m` (`id_album`, `nama_album`, `image_album`, `nama_english`, `tanggal`) VALUES
(4, 'Kelapa Sawit', '4_474279_620.jpg', 'Palm Oil', '05-09-2016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `asosiasi_m`
--

CREATE TABLE IF NOT EXISTS `asosiasi_m` (
`id_asosiasi` int(11) unsigned NOT NULL,
  `nama_propinsi` varchar(200) NOT NULL,
  `nama_kota` varchar(200) NOT NULL,
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
  `mdb` int(11) NOT NULL,
  `mdd` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asosiasi_m`
--

INSERT INTO `asosiasi_m` (`id_asosiasi`, `nama_propinsi`, `nama_kota`, `nama_asosiasi`, `alamat`, `kodepos`, `telepon`, `fax`, `website`, `email`, `logo_asosiasi`, `profil`, `profil_english`, `mdb`, `mdd`) VALUES
(1, 'Sumatera Utara', 'Kota Medan', 'Asosiasi Petani Kelapa Sawit Indonesia (APKASINDO)', 'Jl. Setia Budi, Komplek Setia Budi Point B-6', '-', '061 - 8225828 ', '061 - 8225827', 'http://apkasindosumut.blogspot.co.id/', 'apkasindosumut@gmail.com', '1_apkasindo.png', 'Asosiasi Petani Kelapa Sawit Indonesia (APKASINDO) didirikan pada tanggal 28 Oktober 2000 di Palembang, oleh utusan-utusan petani kelapa sawit dari seluruh Indonesia. APKASINDO adalah satu-satunya organisasi profesi petani sebagai wadah pemersatu petani di Indonesia yang difasilitasi oleh Pemerintah c/q Departemen Pertanian.\n\nAPKASINDO mempunyai AD/ART yang dibuat didepan Notaris Ny. Sartutiyasni Agoeng Iskandar SH Medan, akte No. 1 tanggal 3 September 2001 dengan perubahan tanggal 5 November 2003 sesuai Munas I APKASINDO tanggal 3-5 September 2003 di Medan.\n\nAPKASINDO saat ini tersebar pada 16 Provinsi penghasil kelapa sawit di Indonesia mulai dari Aceh sampai Papua. Dari luas total kelapa sawit Nasional yaitu 7,3 juta hektar, 3,2 juta hektar diantaranya adalah kelapa sawit rakyat atau 43,8%. Jumlah anggota APKASINDO saat ini mencapai 12 juta jiwa beserta keluarganya.\n\nsesuai dengan AD/ART maka tujuan dan fungsi APKASINDO antara lain :\n\nMempersatukan masyarakat petani kelapa sawit di seluruh Indonesia menjadi salah satu kekuatan ekonomi yang dapat meningkatkan kesejahteraan yang merata bagi petani kelapa sawit.\nMembangun ekonomi kerakyatan di pedesaan dengan menumbuh kembangkan usaha petani kelapa sawit yang berwawasan lingkungan dan bermanfaat bagi seluruh komponen bangsa untuk mencapai masyarakat petani yang adil dan makmur.\nMeningkatkan dan memberdayakan SDM petani kelapa sawit agar menguasai Ilmu dan Teknologi (IPTEK) pertanian modern.\n\nDengan demikian diharapkan APKASINDO dapat berfungsi sebagai berikut :\n\nMembantu mempersiapkan petani kelapa sawit menjadi petani yang mandiri dan professional yang mampu bersaing dalam era globalisasi.\nMenjembatani kepentingan masyarakat petani kelapa sawit, pengusaha dna Pemerintah dalam rangka mewujudkan berbagai kepentingan dengan tidak merugikan semua pihak.\nMelindungi petani kelapa sawit dari segala bentuk perbuatan yang dilakukan oleh pihak manapun juga yang merugikan kelangsungan kehidupan masyarakat petani kelapa sawit di Indonesia.\n              \n              \n              ', 'Indonesian Palm Oil Growers Association (Apkasindo) was established on October 28, 2000 in Palembang, by the emissaries of oil palm farmers from all over Indonesia. Apkasindo is the only professional organization of farmers as a unifying container farmers in Indonesia are funded by the Government c / q Department of Agriculture.\n\nApkasindo have AD / ART made before the Notary Ny. Sartutiyasni Agoeng Medan Iskandar SH, certificate No. 1 dated September 3, 2001 with the change November 5, 2003 as the first National Conference Apkasindo 3-5 September 2003 in Medan.\n\nApkasindo currently scattered in 16 provinces of palm oil in Indonesia from Aceh to Papua. Of the total area of ??national palm oil was 7.3 million hectares, 3.2 million hectares of which are oil palm, or 43.8%. Number of members Apkasindo now reached 12 million people and their families.\n\nin accordance with AD / ART, the purpose and function Apkasindo among others:\n\nOil palm farmers unite people across Indonesia became one of the economic power that could improve the welfare of equitable for oil palm farmers.\nBuilding a democratic economy in the countryside with efforts to cultivate oil palm farmers with environmental and beneficial for all societies to achieve a fair society and a prosperous farmer.\nImproving and empowering human resources oil palm farmers in order to master the Science and Technology (Science and Technology) modern agriculture.\n\nIt is expected Apkasindo can function as follows:\n\nHelp prepare oil palm farmers become independent farmers and professionals who are able to compete in the era of globalization.\nBridging the interests of society by the farmers, entrepreneurs dna Government in order to realize a wide range of interests by not detrimental to all parties.\nProtecting oil palm farmers from all forms of acts committed by any party which is detrimental to the sustainability of the farming community of palm oil in Indonesia.\n              \n              \n              ', 1, '2016-09-07 02:54:06'),
(2, 'DKI Jakarta', 'Jakarta Selatan', 'Gabungan Perusahaan Perkebunan Indonesia (GPPI)', 'Jl. Iskandarsyah 2 No.62 Kebayoran Baru', '', '+6221 7250515', '+6221 7210752', '-', '-', '2_gppi.png', '              -\n              \n              ', '              -\n              \n              ', 1, '2016-09-07 02:54:42'),
(3, 'DKI Jakarta', 'Jakarta Selatan', 'Asosiasi Industri Minyak Makan Indonesia (AIMMI)', ' JL. Karet Pedurenan, No. 14 - 25, Jakarta Selatan, DKI Jakarta, Indonesia', '-', '+6221 5253600', '+6221 5250928', '-', '-', '3_3_ENDORSER_8.png', '              -\n              \n              ', '              -\n              \n              ', 1, '2016-09-07 02:55:31'),
(4, 'DKI Jakarta', 'Jakarta Selatan', 'Asosiasi Produsen Biofuels Indonesia (APROBI)', 'Plaza Dua Mutiara (DM), Lt.3Jl. Jend. Sudirman Kav.24-25', '-', '+6221 5278921 - 23', '-', '-', '-', '4_aprobi.png', '              -\n              \n              \n              ', '              -\n              \n              \n              ', 1, '2016-09-07 03:00:47'),
(5, 'DKI Jakarta', 'Jakarta Pusat', 'Gabungan Industri Minyak Nabati Indonesia (GIMNI)', 'Wisma BNI 46 15th floor suite 15.03 Jl. Jend.Sudirman Kav I Jakarta 10220 – Indonesia', '-', '021 – 5745678 ', '021 – 5724878', 'http://www.gimni.org/', 'gimni@gimni.org', '5_gimni1.png', '              GIMNI adalah singkatan dari Gabungan Industri Minyak Nabati Indonesia. Didirikan pada tanggal dua belas desember dua ribu enam untuk jangka waktu yang tidak di tentukan lamanya. Asosiasi ini bersifat resmi, didasari oleh Akte Pendirian oleh Notaris Buntario Tigris, S.H, S.E, M.H, dan telah memperoleh pengesahan dari Departemen Kehakiman dan HAM dengan nomor 249 tertanggal tiga puluh April dua ribu tujuh.\nGIMNI berkedudukan di Jakarta dengan alamat sesuai dengan alamat yang tertera pada kopsuratnya. Perusahaan yang menjadi anggota assosiasi ini disebut juga “refiners”, yaitu mencakup unit-unit usaha, baik berbentuk Perseroan Terbatas atau Badan Hukum lainnya,  yang bergerak di bidang usaha industri minyak nabati, yang memiliki fasilitas Pemurnian Minyak Nabati (Refineries dan atau Frantionantion), Kernel Crushing Plang (KCP) dan Copra Crushing Plang (CCP). Tahapan proses “refiners” ini sering juga disebut “mid down-stream process”.\n              \n              ', '   GIMNI stands Indonesian Vegetable Oil Industry Association. Founded on the twelfth of December two thousand and six for a period not specified duration. This association is authorized, based on the Deed by Notary Buntario Tigris, S.H, S.E, M.H, and has obtained approval from the Department of Justice and Human Rights with the number 249, dated April thirtieth two thousand and seven.\nGIMNI domiciled in Jakarta, according to the address indicated on kopsuratnya. Companies that become members of associations is also called "refiners", which includes the business units, both limited liability company or other Legal Entity, which is engaged in the edible oil industry, which has facilities Oil Purification Plant (Refineries and or Frantionantion), kernel Crushing signpost (KCP) and Copra Crushing signpost (CCP). The process steps "refiners" are often also called "mid-stream down process".           \n              \n              ', 1, '2016-09-07 02:56:09'),
(6, 'Jawa Barat', 'Kab. Bogor', 'Masyarakat Perkelapa-sawitan Indonesia (MAKSI)', 'Gedung PAU IPB, Lt.2 Kampus IPB Darmaga Bogor', '-', '+62251 8621560', '+62251 8621560', 'https://www.facebook.com/Masyarakat-Perkelapasawit', '-', '6_maksi1.png', 'Kelapa sawit merupakan komoditas unggulan dalam pembangunan ekonomi pada umumnya, dan dalam pembangunan agro-industri di Indonesia pada khususnya. Dalam mengantisipasi perkembangan industri sawit diperlukan kerjasama yang baik antar stakeholder, baik pemerintah, swasta, maupun peneliti, peminat dan pemerhati lainnya. Hal ini penting untuk menjamin perkembangan dan keberlanjutan perkelapasawitan di Indonesia, secara terpadu dari sektor hulu sampai sektor hilir. Selanjutnya, nilai tambah industri hilir pengolahan sawit dapat dinikmati oleh bangsa Indonesia.\n\n              \n              ', 'Palm oil is the leading commodity in economic development in general, and in the development of agro-industries in Indonesia in particular. In anticipation of the development of the oil industry needed good cooperation between stakeholders, including government, private sector, and researchers, enthusiasts and other observers. It is important to ensure the development and sustainability perkelapasawitan in Indonesia, in an integrated manner from upstream to downstream. Furthermore, value-added downstream processing of palm can be enjoyed by the nation of Indonesia.\n              \n              ', 1, '2016-09-07 02:56:43'),
(7, 'Sumatera Utara', 'Kota Medan', 'Asosiasi Produsen Oleochemical Indonesia (APOLIN)', 'Jl. Pulau Irian No.2Kawasan Industri', '20371', '+6261 6851582', '+6261 6859371', 'http://apolin.blogspot.co.id/', '-', '7_apolin1.png', '             - \n              \n              ', '              -\n              \n              ', 1, '2016-09-07 02:57:21'),
(8, 'DKI Jakarta', 'Jakarta Pusat', 'Gabungan Pengusaha Kelapa Sawit Indonesia (GAPKI)', 'Sudirman Park Rukan Blok B No.18 Jl. K.H. Mas Mansyur Kav.35 ', '10220', '+6221-57943871', '+6221-57943872', 'http://gapki.id/', 'gapki@gapki.or.id / gapkipusat@yahoo.com', '8_gapki1.png', '              Gabungan Pengusaha Kelapa Sawit Indonesia (GAPKI) atau Indonesian Palm Oil Association (IPOA) didirikan pada 27 Februari 1981 karena para pengusaha minyak sawit sadar bahwa mereka mesti dipersatukan di satu organisasi serta timbulnya perusahaan industri minyak sawit baru. Pada awal pembentukan organisasi, GAPKI terdiri atas dua bagian, Jenderal (Pengurus) dan Komisi Teknik. Ketua pertama GAPKI (Komisi Pengurus) adalah Manap Nasution yang membawahi tiga orang ketua bidang, tiga orang sekretaris, dua bendahara dan seorang komisaris. Sedangkan Komisi Teknik, yang bertanggung jawab dalam membantu pengurus untuk merumuskan program kerja, mentabulasi permasalah yang dihadapi industri sawit dan memberikan masukan-masukan untuk perkembangan industri sawit, yang diketuai oleh Mohd. Yahya Rowter, MA.\nPada mulanya, GAPKI hanya mempunyai 23 perusahaan perkebunan sebagai anggotanya yang terdiri perkebunan milik pemerintah (BUMN), perusahaan perkebunan milik swasta nasional dan asing, serta petani sawit yang tergabung dalam koperasi. Saat ini, keanggotaan GAPKI sudah menjadi 644 perkebunan, dengan 21 anggota Pusat, 79 anggota Cabang Sumatera Utara, 19 anggota Cabang Sumatera Barat, 29 anggota Cabang Jambi, 76 anggota Cabang Riau, 60 anggota Cabang Sumatera Selatan, 48 anggota Cabang Kalimantan Barat, 89 anggota Cabang Kalimantan Tengah, 47 anggota Cabang Kalimantan Selatan, 123 anggota Cabang Kalimantan Timur, 11 anggota Cabang Sulawesi, 6 anggota Cabang Bengkulu dan 36 anggota Cabang Aceh.\n\nDewasa ini, pentingnya minyak sawit bagi perekonomian negara mendesak GAPKI untuk mengelola organisasinya secara profesional dan efektif untuk menambah sumbangannya kepada pembangunan ekonomi daerah dan nasional.\n\nGAPKI telah melakukan berbagai upaya untuk memajukan industri kelapa sawit Indonesia. GAPKI selaku mitra Pemerintah telah memberikan masukan-masukan sebagai bahan pemerintah dalam menyusun berbagai kebijakan terkait dengan industri kelapa sawit. Dengan kemitraan ini GAPKI bersama-sama pemerintah akan terus berupaya meningkatkan daya saing usaha kelapa sawit Indonesia di pasar Internasional. Selain itu GAPKI juga melaksanakan visi strategis membangun industri kelapa sawit Indonesia yang berkelanjutan.\n              \n              ', '              Indonesian Palm Oil Association (GAPKI) or the Indonesian Palm Oil Association (IPOA) was established on February 27, 1981 because the palm oil businessmen are aware that they should be united in one organization and the emergence of new palm oil industry corporation. At the beginning of the formation of the organization, GAPKI consists of two parts, General (Management) and the Technical Commission. The first chairman GAPKI (Management Committee) is Manap Nasution who oversees three areas of the chairman, three secretaries, two treasurers and a commissioner. While the Technical Commission, which is responsible for assisting the Board to formulate a work program, tabulate the problems faced by the oil industry and provide input to the development of the oil industry, which is chaired by Mohd. Yahya Rowter, MA.\nAt first, GAPKI only have 23 plantation companies as members comprising government-owned plantations (SOE), a private company owned plantations and foreign national, as well as oil palm farmers who are members of cooperatives. Currently, membership GAPKI already a 644 plantations, with 21 members of the Centre, 79 members of the Branch North Sumatra, 19 members of the Branch West Sumatra, 29 members of Jambi Branch, 76 members of the Branch Riau, 60 members of the Branch South Sumatra, 48 members of the Branch West Kalimantan, 89 Branch member of Central Kalimantan, South Kalimantan Branch 47 members, 123 members of the Branch East Kalimantan, Sulawesi Branch 11 members, 6 members of the Branch Bengkulu and 36 members of the Aceh branch.\n\nToday, the importance of palm oil for the country''s economy for managing organization urged GAPKI professional and effective manner to increase its contribution to regional and national economic development.\n\nGAPKI has made various efforts to promote Indonesian palm oil industry. GAPKI as government partners have provided input as an ingredient in formulating government policies related to the palm oil industry. With this partnership GAPKI together government will continue to work to improve the competitiveness of Indonesian palm oil business in the international market. In addition GAPKI also carry out a strategic vision to build Indonesia''s palm oil industry sustainable.\n              \n              ', 1, '2016-09-07 02:57:52'),
(100, 'a', 'a', 'Dewan Minyak Sawit Indonesia                 ', 'a', 'a', 'a', 'a', 'a', 'a', '1_100_dmsi.png', 'a\n              \n              ', 'a\n              ', 1, '2016-09-06 06:08:09');

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
  `judul_english` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bagan_m`
--

INSERT INTO `bagan_m` (`id_bagan`, `judul_bagan`, `image`, `tanggal`, `judul_english`, `keterangan`) VALUES
(1, 'abc ', 'pengantar-manajemen-strategi-25-638.jpg', '1900-12-01', 'sbc ', '');

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
(7, 'ab', 'ab', '7_baner-1.jpg', '7_baner-1_english.jpg', 'tetap', '2000-01-01', '9999-12-31', 1, 'active'),
(8, 'b', 'b', '8_baner-2.jpg', '8_baner-2_english.jpg', 'tetap', '2000-01-01', '9999-12-31', 2, 'active'),
(9, 'cd', 'cd', '9_baner-3.jpg', '9_baner-3_english.jpg', 'tetap', '2000-01-01', '9999-12-31', 4, 'active');

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita_m`
--

INSERT INTO `berita_m` (`id_berita`, `id_asosiasi`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `file_berita`, `judul_english`, `content_english`, `caption_picture`) VALUES
(47, 100, 'Dewan Minyak Sawit Indonesia Dorong Perusahaan Sawit Indonesia Terapkan ISPO', '<strong>Metrotvnews.com, Medan:</strong>&nbsp;Dewan Minyak Sawit Indonesia (DMSI) mendorong lebih banyak perusahaan sawit menerapkan standar Indonesian Sustainable Palm Oil (ISPO) karena hingga 2015 baru sekitar 96 perusahaan yang menerapkannya.<br><br>"ISPO bermanfaat untuk membuat industri sawit Indonesia mencapai tingkat keberlanjutan sesuai harapan pasar," ujar Ketua Umum DMSI, Derom Bangun dikutip dari Antara, Minggu (3/1/2015).Menurut dia, &nbsp;masih banyak perusahaan yang belum disertifikasi, bahkan banyak sekali yang belum memenuhi syarat untuk mendaftar.<br><br>DMSI menyambut baik Komisi ISPO yang semakin giat melakukan upaya agar perusahaan-perusahaan sawit lebih cepat untuk sanggup mengikuti ketentuan-ketentuan sertifikasi itu.<br><br>"DMSI juga melihat adanya upaya Komisi ISPO untuk mencari terobosan dalam menyesuaikan standar ISPO agar di lapangan penerapannya tidak terhambat oleh hal-hal yang sifatnya formalitas," katanya.<br><br>Dengan bantuan dari Dinas Perkebunan provinsi dan kabupaten/kota, DMSI yakin bahwa untuk 2016 realisasi sertifikasi ISPO oleh perusahaan-perusahaan akan bergerak lebih cepat lagi.<br><br>Langkah pemerintah yang mengenalkan ISPO ke berbagai negara juga diapresiasi.<br><br>Pada 2012 dan 2013 lalu misalnya, Indonesia telah melakukan sosialisasi ISPO di Eropa, Republik Rakyat Tiongkok (RRT) dan India yang merupakan pasar ekspor sawit terbesar Indonesia.<br><br>Ketua Umum Asosiasi Petani Kelapa Sawit Indonesia (Apkasindo) Anizar Simanjuntak mengatakan, pihaknya berharap Pemerintah membantu petani agar bisa mendapatkan ISPO.<br><br>"Kebun petani yang sudah mendapat ISPO atau RSPO masih petani binaan perusahaan," katanya.<br><br>Dia mengakui, petani kesulitan memenuhi kriteria untuk bisa mendaftar atau mendapatkan sertifikat ISPO akibat banyak kelemahan petani.<br><br>"Tetapi kalau mendapat bantuan dan dukungan kuat diyakini petani bisa mengikuti memproses sertifikasi ISPO itu," katanya.\n                    <br><br>Sumber :&nbsp;<a target="_blank" rel="nofollow" href="http://ekonomi.metrotvnews.com/read/2016/01/03/207450/dewan-minyak-sawit-indonesia-dorong-perusahaan-sawit-indonesia-terapkan-ispo">http://ekonomi.metrotvnews.com/read/2016/01/03/207450/dewan-minyak-sawit-indonesia-dorong-perusahaan...</a>', '2016-01-03', '47_AkOA054ces.jpg', 'Kelapa Sawit (ANT / Wahyu Putro).', NULL, 'The Board Of Palm Oil Palm Companies Thrust Indonesia Indonesia Apply To ISPO  ', '<div>Metrotvnews.com, Medan, Indonesia palm oil: the Board (DMSI) encourage more oil companies to apply the standard Indonesian Sustainable Palm Oil (ISPO) due to the new 2015 approximately 96 companies that implement it.</div><br><div>The "ISPO&nbsp;beneficial&nbsp;to make&nbsp;Indonesia&nbsp;palm oil&nbsp;industry&nbsp;reached the level of&nbsp;sustainability of&nbsp;the market''s&nbsp;expectations," said&nbsp;Chairman&nbsp;Derom,&nbsp;DMSI&nbsp;Wake&nbsp;quoted from&nbsp;Between&nbsp;Sunday (3/1/2015).&nbsp;According to him, there are still many companies that have not been certified, even an awful lot that is not yet eligible to apply.</div><br><div>DMSI&nbsp;welcomed the&nbsp;Commission''s increasingly&nbsp;enterprising&nbsp;ISPO&nbsp;made efforts&nbsp;so that&nbsp;oil&nbsp;companies&nbsp;can afford&nbsp;faster to&nbsp;follow&nbsp;the provisions&nbsp;of that&nbsp;certification.</div><br><div>"DMSI&nbsp;also&nbsp;saw&nbsp;the presence of&nbsp;the Commission''s efforts&nbsp;to find&nbsp;a breakthrough in&nbsp;ISPO&nbsp;adjust&nbsp;so that&nbsp;ISPO&nbsp;standards&nbsp;in field&nbsp;implementation&nbsp;is not&nbsp;hampered&nbsp;by things&nbsp;which is&nbsp;a formality," he said.</div><br><div>With help from&nbsp;the estate&nbsp;agency of&nbsp;the province and&nbsp;kabupaten/kota,&nbsp;DMSI&nbsp;convinced that&nbsp;to&nbsp;2016&nbsp;ISPO&nbsp;certification&nbsp;realization&nbsp;by companies&nbsp;will be&nbsp;moving faster&nbsp;again.</div><br><div>Government&nbsp;measures&nbsp;to introduce&nbsp;ISPO&nbsp;to various countries&nbsp;also&nbsp;appreciated.</div><br><div>In 2012&nbsp;and 2013&nbsp;and then&nbsp;for example,&nbsp;Indonesia&nbsp;has conducted&nbsp;socialization&nbsp;ISPOin Europe,&nbsp;the people''s Republic&nbsp;of China (PRC) and&nbsp;India&nbsp;which is the&nbsp;largest&nbsp;Indonesia&nbsp;palm oil&nbsp;export market.</div><br><div>Chairman of the&nbsp;Indonesia&nbsp;palm oil&nbsp;Growers Association&nbsp;(Apkasindo)&nbsp;Anizar&nbsp;Simanjuntak&nbsp;said,&nbsp;it&nbsp;hopes&nbsp;the Government is&nbsp;helping farmers&nbsp;to&nbsp;get the&nbsp;ISPO.</div><br><div>"The&nbsp;farmers&nbsp;have got&nbsp;ISPO&nbsp;or&nbsp;small-scale&nbsp;farmers&nbsp;still&nbsp;RSPO&nbsp;company,"&nbsp;he said.</div><br><div>He acknowledged the&nbsp;difficulties, the farmer&nbsp;meets the criteria&nbsp;to be able&nbsp;to&nbsp;register or&nbsp;obtain a certificate of&nbsp;ISPO&nbsp;due to&nbsp;many shortcomings&nbsp;of the farmers.</div><br><div>"But&nbsp;if it&nbsp;gets&nbsp;strong&nbsp;help and support&nbsp;is believed to&nbsp;be&nbsp;a farmer&nbsp;could&nbsp;follow the&nbsp;process&nbsp;that&nbsp;ISPO&nbsp;certification," he said.<br><br>Sumber :&nbsp;<a target="_blank" rel="nofollow" href="http://ekonomi.metrotvnews.com/read/2016/01/03/207450/dewan-minyak-sawit-indonesia-dorong-perusahaan-sawit-indonesia-terapkan-ispo">http://ekonomi.metrotvnews.com/read/2016/01/03/207450/dewan-minyak-sawit-indonesia-dorong-perusahaan...</a></div>', 'Palm Oil (ANT/Rev. Putro).'),
(48, 8, 'Gapki Optimistis Ekspor CPO Bisa Mencapai 27 Juta Ton  ', '<strong>TEMPO.CO</strong>,&nbsp;<strong>Jakarta</strong>&nbsp;- Ketua Umum Gabungan Pengusaha Kelapa Sawit Indonesia (Gapki) Joko Supriyono memprediksi, hingga akhir 2016, minyak sawit mentah atau&nbsp;<em>crude palm oil</em>&nbsp;(CPO) yang bisa diekspor Indonesia bisa mencapai 27 juta ton.<br><br>“Sebenarnya tergantung produksi,” ujar Joko saat ditemui dalam acara bincang-bincang Gapki di Shangri-La Hotel, Jakarta, kemarin. Ia menuturkan, pada Mei lalu, ekspor CPO mengalami penurunan. Namun biasanya, pada semester kedua sampai akhir tahun, nilai ekspor CPO mengalami perbaikan.<br><br>Menurut Joko, bila produksi CPO bisa seperti tahun lalu, yakni di angka 32,5 juta ton, produksi tahun ini bisa mencapai 33 juta ton. Dengan asumsi tersebut, proyeksi ekspornya mencapai 26-27 juta ton.<br><br>Berdasarkan data Gapki, volume ekspor minyak sawit Indonesia pada April tercatat naik 20 persen dibanding pada bulan sebelumnya atau dari 1,74 juta ton pada Maret menjadi 2,09 juta ton pada April.&nbsp;<br><br>Secara&nbsp;<em>year-on-year,</em>&nbsp;kinerja ekspor minyak sawit Indonesia selama caturwulan pertama 2016 mencapai 8,23 juta ton atau naik sekitar 4,5 persen dibanding pada periode yang sama pada 2015, yaitu 7,88 juta ton.<br><br>Gapki juga mencatat produksi minyak sawit Indonesia pada April mengalami stagnasi. Beberapa daerah, terutama Sumatera, rata-rata mengalami penurunan produksi. Produksi minyak sawit yang mengalami kenaikan tipis hanya terjadi di Kalimantan, kecuali Kalimantan Tengah.&nbsp;Volume produksi minyak sawit Indonesia pada April mencapai 2,34 juta ton atau naik 1 persen dibanding produksi pada bulan sebelumnya, yakni 2,32 juta ton.<br><br>Sepanjang April 2016, ekspor minyak sawit Indonesia ke beberapa negara tujuan utama mengalami kenaikan, kecuali ke Cina. Amerika Serikat mencatatkan kenaikan impor minyak sawit dari Indonesia yang sangat signifikan, yaitu 564 persen atau dari 12,24 ribu ton pada Maret menjadi 81,31 ribu ton.\n                    <br><br>Sumber :&nbsp;<a target="_blank" rel="nofollow" href="https://bisnis.tempo.co/read/news/2016/06/11/090779026/gapki-optimistis-ekspor-cpo-bisa-mencapai-27-juta-ton">https://bisnis.tempo.co/read/news/2016/06/11/090779026/gapki-optimistis-ekspor-cpo-bisa-mencapai-27-...</a>', '2016-06-11', '48_474279_620.jpg', 'Pekerja membongkar kapal bermuatan minyak sawit mentah (crude palm oil) di Pelabuhan Cilincing, Jakarta, 18 Januari 2016. Sebelumnya, pembukaan harga minyak kelapa sawit pagi tadi menguat 0,33% ke har', NULL, 'Gapki Optimistic export of CPO could reach 27 million Tons  ', '<div>TEMPO.CO, Jakarta-Chairman of the Indonesia palm oil Entrepreneurs Combined (Gapki) Joko Supriyono predicts, until the end of 2016, crude palm oil or crude palm oil (CPO) that can be exported to Indonesia could reach 27 million tons.</div><br><div>"Depending on the&nbsp;Actual&nbsp;production," said&nbsp;Joko&nbsp;when&nbsp;found in the&nbsp;Gapki&nbsp;talk show&nbsp;at the Shangri-La&nbsp;Hotel,&nbsp;Jakarta,&nbsp;yesterday.&nbsp;He&nbsp;said, in&nbsp;may,&nbsp;exports of&nbsp;CPO&nbsp;has decreased.&nbsp;However, generally,&nbsp;in the second half&nbsp;until the&nbsp;end of the year, the value of&nbsp;exports of&nbsp;CPO&nbsp;undergoes&nbsp;repairs.</div><br><div>According to Joko, when production of CPO could be like last year, the figure is 32.5 million tons this year, production could reach 33 million tons.&nbsp;With&nbsp;that assumption,its export&nbsp;projection&nbsp;reaches&nbsp;26-27&nbsp;million tons.</div><br><div>Based on the data of Gapki, Indonesia palm oil export volume in April recorded a 20 percent rise compared to the previous month or from 1.74 million tons in March became 2.09 million tons in April.</div><br><div>In year-on-year, Indonesia palm oil export performance for the first caturwulan 2016 reached 8.23 million tonnes or about 4.5 percent compared to the same period in 2015, namely 7.88 million tons.</div><br><div>Gapki&nbsp;also noted&nbsp;Indonesia&nbsp;palm oil production&nbsp;stagnated&nbsp;in April.&nbsp;Some areas, especially&nbsp;Sumatra,&nbsp;an average&nbsp;decline&nbsp;of production.&nbsp;The&nbsp;palm oil production&nbsp;rising&nbsp;sheer&nbsp;just happened&nbsp;in Borneo, except&nbsp;Central Kalimantan.&nbsp;Indonesia palm oil production volume in April reached 2.34 million tons or rise 1 percent compared to the previous month production, i.e. 2.32 million tons.</div><br><br>Throughout&nbsp;April&nbsp;2016,&nbsp;Indonesia&nbsp;palm oil&nbsp;export&nbsp;to several countries&nbsp;the main objective&nbsp;increase, except&nbsp;to China.&nbsp;United States notes the increase in imports of palm oil from Indonesia who are very significant, i.e. percent or 564 of 12.24 thousand tons in March into a 81.31 thousand tons.<br><br>Sumber :&nbsp;<a target="_blank" rel="nofollow" href="https://bisnis.tempo.co/read/news/2016/06/11/090779026/gapki-optimistis-ekspor-cpo-bisa-mencapai-27-juta-ton">https://bisnis.tempo.co/read/news/2016/06/11/090779026/gapki-optimistis-ekspor-cpo-bisa-mencapai-27-...</a><br>', 'Workers dismantling ships laden the crude palm oil (crude palm oil) in the port of Cilincing, Jakarta, January 18, 2016. Earlier, the opening price of palm oil rose 0.33% this morning to har');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `foto_m`
--

INSERT INTO `foto_m` (`id_foto`, `id_album`, `judul_foto`, `foto`, `urutan`, `judul_english`) VALUES
(26, 4, 'a', '4_26_474279_620.jpg', 1, 'a en'),
(27, 4, 'b', '4_27_021280400_1441101577-kelapa-sawit.jpg', 2, 'b en'),
(28, 4, 'c', '4_28_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 3, 'c en'),
(29, 4, 'd', '4_29_045297700_1444804579-20151014-_Ilustrasi_Kelapa_Sawit-4.jpg', 4, 'd en'),
(30, 4, 'e', '4_30_054718200_1444804559-20151014-_Ilustrasi_Kelapa_Sawit-3.jpg', 5, 'e en'),
(31, 4, 'f', '4_31_070148300_1444804540-20151014-_Ilustrasi_Kelapa_Sawit-2.jpg', 6, 'f en'),
(32, 4, 'g', '4_32_090156200_1454488091-20160203-MENDAG-JT-2.jpg', 7, 'g en'),
(33, 4, 'h', '4_33_056783500_1444215122-asap-pembakaran-tandan-kosong-sawit-ganggu-warga-.jpg', 8, 'h en'),
(34, 4, 'i', '4_34_22507_620.jpg', 9, 'i en'),
(35, 4, 'j', '4_35_161548_620.jpg', 10, 'j en'),
(36, 4, 'k', '4_36_22507_620.jpg', 11, 'k en'),
(37, 4, 'l', '4_37_161549_620.jpg', 12, 'l en'),
(38, 4, 'z', '4_38_sawit-6-1.jpg', 13, 'z en'),
(39, 4, 'tes', '4_39_045297700_1444804579-20151014-_Ilustrasi_Kelapa_Sawit-4.jpg', 1, 'tes'),
(40, 4, 'a', '4_40_021280400_1441101577-kelapa-sawit.jpg', 17, 'a en'),
(41, 4, 'z', '4_41_AkOA054ces.jpg', 12, 'z en'),
(43, 4, 'tes', '4_43_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 15, 'tes a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_m`
--

CREATE TABLE IF NOT EXISTS `harga_m` (
`id_harga` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_bulan` varchar(50) NOT NULL,
  `id_katharga` int(11) NOT NULL,
  `id_sub_katharga` int(11) NOT NULL,
  `harga_rupiah` varchar(100) NOT NULL,
  `harga_dolar` varchar(100) NOT NULL,
  `sumber` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `harga_m`
--

INSERT INTO `harga_m` (`id_harga`, `tahun`, `id_bulan`, `id_katharga`, `id_sub_katharga`, `harga_rupiah`, `harga_dolar`, `sumber`) VALUES
(0, 2016, '3', 2, 0, '4000', '0.30', 'dmsi'),
(26, 2016, '1', 1, 1, '10000', '0.75', 'dmsi'),
(30, 2016, '2', 1, 1, '4000', '0.30', 'dmsi'),
(31, 2016, '3', 1, 1, '7000', '0.52', 'dmsi'),
(32, 2016, '4', 1, 1, '20000', '1.50', 'dmsi'),
(33, 2016, '1', 1, 2, '10000', '0.75', 'dmsi'),
(34, 2016, '2', 1, 2, '7000', '0.52', 'dmsi'),
(35, 2016, '3', 1, 2, '30000', '2.25', 'dmsi'),
(36, 2016, '4', 1, 2, '20000', '1.50', 'dmsi'),
(37, 2016, '1', 1, 3, '9500', '0.71', 'dmsi'),
(38, 2016, '2', 1, 3, '7000', '0.52', 'dmsi'),
(39, 2016, '3', 1, 3, '20000', '1.50', 'dmsi'),
(40, 2016, '4', 1, 3, '30000', '2.25', 'dmsi'),
(41, 2016, '5', 1, 1, '20000', '1.50', 'dmsi'),
(42, 2016, '6', 1, 1, '4000', '0.30', 'dmsi'),
(43, 2016, '7', 1, 1, '7000', '0.52', 'dmsi'),
(44, 2016, '8', 1, 1, '10000', '0.75', 'dmsi'),
(45, 2016, '9', 1, 1, '10000', '0.75', 'dmsi'),
(46, 2016, '10', 1, 1, '10000', '0.75', 'dmsi'),
(47, 2016, '11', 1, 1, '4000', '0.30', 'dmsi'),
(48, 2016, '12', 1, 1, '10000', '0.75', 'dmsi'),
(49, 2016, '5', 1, 2, '4000', '0.30', 'dmsi'),
(50, 2016, '6', 1, 2, '4000', '0.30', 'dmsi'),
(51, 2016, '8', 1, 2, '20000', '1.50', 'dmsi'),
(52, 2016, '9', 1, 2, '30000', '2.25', 'dmsi'),
(53, 2016, '10', 1, 2, '10000', '0.75', 'dmsi'),
(54, 2016, '11', 1, 2, '10000', '0.75', 'dmsi'),
(55, 2016, '7', 1, 2, '4000', '0.30', 'dmsi'),
(56, 2016, '12', 1, 2, '7000', '0.52', 'dmsi'),
(57, 2016, '5', 1, 3, '10000', '0.75', 'dmsi'),
(58, 2016, '6', 1, 3, '20000', '1.50', 'dmsi'),
(59, 2016, '7', 1, 3, '7000', '0.52', 'dmsi'),
(60, 2016, '8', 1, 3, '9500', '0.71', 'dmsi'),
(61, 2016, '9', 1, 3, '20000', '1.50', 'dmsi'),
(62, 2016, '10', 1, 3, '4000', '0.30', 'dmsi'),
(63, 2016, '11', 1, 3, '30000', '2.25', 'dmsi'),
(64, 2016, '12', 1, 3, '4000', '0.30', 'dmsi'),
(65, 2016, '1', 2, 0, '10000', '0.75', 'dmsi'),
(66, 2016, '2', 2, 0, '20000', '1.50', 'dmsi'),
(68, 2016, '5', 2, 0, '30000', '2.25', 'dmsi'),
(69, 2016, '6', 2, 0, '7000', '0.52', 'dmsi'),
(70, 2016, '4', 2, 0, '9500', '0.71', 'dmsi'),
(71, 2016, '8', 2, 0, '4000', '0.30', 'dmsi'),
(72, 2016, '9', 2, 0, '20000', '1.50', 'dmsi'),
(73, 2016, '10', 2, 0, '10000', '0.75', 'dmsi'),
(74, 2016, '11', 2, 0, '7000', '0.52', 'dmsi'),
(75, 2016, '12', 2, 0, '7000', '0.52', 'dmsi'),
(76, 2016, '7', 2, 0, '20000', '1.50', 'dmsi'),
(77, 2016, '1', 3, 4, '10000', '0.75', 'dmsi'),
(78, 2016, '2', 3, 4, '20000', '1.50', 'dmsi'),
(79, 2016, '3', 3, 4, '4000', '0.30', 'dmsi'),
(80, 2016, '4', 3, 4, '10000', '0.75', 'dmsi'),
(81, 2016, '5', 3, 4, '10000', '0.75', 'dmsi'),
(82, 2016, '6', 3, 4, '7000', '0.52', 'dmsi'),
(83, 2016, '7', 3, 4, '20000', '1.50', 'dmsi'),
(84, 2016, '8', 3, 4, '30000', '2.25', 'dmsi'),
(85, 2016, '9', 3, 4, '4000', '0.30', 'dmsi'),
(86, 2016, '10', 3, 4, '9500', '0.71', 'dmsi'),
(87, 2016, '11', 3, 4, '7000', '0.52', 'dmsi'),
(88, 2016, '12', 3, 4, '30000', '2.25', 'dmsi'),
(89, 2016, '1', 3, 5, '10000', '0.75', 'dmsi'),
(90, 2016, '2', 3, 5, '20000', '1.50', 'dmsi'),
(91, 2016, '3', 3, 5, '4000', '0.30', 'dmsi'),
(92, 2016, '4', 3, 5, '7000', '0.52', 'dmsi'),
(93, 2016, '5', 3, 5, '9500', '0.71', 'dmsi'),
(94, 2016, '6', 3, 5, '9500', '0.71', 'dmsi'),
(95, 2016, '7', 3, 5, '7500', '0.56', 'dmsi'),
(96, 2016, '8', 3, 5, '7000', '0.52', 'dmsi'),
(97, 2016, '9', 3, 5, '10000', '0.75', 'dmsi'),
(98, 2016, '10', 3, 5, '7000', '0.52', 'dmsi'),
(99, 2016, '11', 3, 5, '9500', '0.71', 'dmsi'),
(100, 2016, '12', 3, 5, '7000', '0.52', 'dmsi'),
(101, 2016, '1', 3, 6, '9500', '0.71', 'dmsi'),
(102, 2016, '2', 3, 6, '6000', '0.45', 'dmsi'),
(103, 2016, '3', 3, 6, '4500', '0.34', 'dmsi'),
(104, 2016, '5', 3, 6, '7000', '0.52', 'dmsi'),
(105, 2016, '6', 3, 6, '3500', '0.26', 'dmsi'),
(106, 2016, '7', 3, 6, '30000', '2.25', 'dmsi'),
(107, 2016, '8', 3, 6, '7000', '0.52', 'dmsi'),
(108, 2016, '9', 3, 6, '4000', '0.30', 'dmsi'),
(109, 2016, '10', 3, 6, '10000', '0.75', 'dmsi'),
(110, 2016, '11', 3, 6, '10000', '0.75', 'dmsi'),
(111, 2016, '12', 3, 6, '10000', '0.75', 'dmsi'),
(112, 2016, '4', 3, 6, '7000', '0.52', 'dmsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklan_m`
--

CREATE TABLE IF NOT EXISTS `iklan_m` (
`id_iklan` int(11) NOT NULL,
  `id_sponsor` int(11) NOT NULL,
  `judul_iklan` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `informasi_m`
--

INSERT INTO `informasi_m` (`id_informasi`, `id_kategori`, `judul`, `content`, `tanggal`, `image`, `keterangan_gambar`, `judul_english`, `content_english`, `caption_picture`) VALUES
(28, 1, 'Masalah Sawit Indonesia: Lingkungan, Ketahanan Pangan dan Konflik Agraria', '<p>Berbagai penelitian dan kajian, baik dari luar maupun dalam negeri, berbicara mengenai perkebunan kelapa sawit. Banyak pendapat kontra yang beredar dengan mengedepankan isu lingkungan dan kesehatan. Namun pendapat dan pembelaan yang pro&nbsp; -terutama dari pelaku perkebunan sawit- tidak kalah serunya.</p><p>Kita harus meletakkan permasalahan pada porsinya dan melihat apa yang bisa dilakukan untuk meminimalisir masalah tersebut. Secara jujur juga diakui bahwa perkebunan kelapa sawit berdampak terhadap lingkungan hidup. Namun pernyataan bahwa perkebunan kelapa sawit menyerap tenaga kerja dan berperan dalam ekonomi kita juga merupakan fakta yang tidak bisa kita singkirkan begitu saja.</p><p>Informasi yang jujur dan berimbang mesti dikedepankan agar informasi yang disampaikan bukan menjadi proses pembodohan masyarakat (baik yang pro maupun kontra), namun menjadi pertimbangan pemikiran guna menyiapkan antisipasi masalah jangka panjangnya.</p><p>Bagaimanapun juga, fakta saat ini Indonesia memiliki sudah lahan sawit dengan jumlah terbesar di dunia. Indonesia juga merupakan eksportir terbesar tidak hanya dalam komoditas minyak kelapa sawit, tapi juga pada keseluruhan komoditas minyak nabati dunia. Dari kelapa sawit ini Indonesia mendapatkan devisa yang lumayan ditambah dengan penyerapan tenaga kerja. Bahwa terdapat berbagai masalah yang ada di fakta yang ada seperti kerusakan hutan dan keanekaragaman hayati, ketahanan pangan serta konflik agraria dan sumber daya alam juga merupakan fakta yang kesemuanya harus menjadi pijakan dalam mencari solusi yang terbaik.</p><p>Solusi yang dibuat haruslah berpihak pada kepentingan bersama internal nasional kita. Sebab pengusahaan perkebunan merupakan kepentingan nasional, terlebih dalam konteks kelapa sawit dimana kita merupakan penghasil terbesar dan pengekspor terbesar serta penguasa pasar minyak nabati dunia. Harus dikesampingkan dulu masalah-masalah tambahan berupa tekanan internasional karena hal tersebut tidak hanya memperumit masalah yang sudah ada, namun juga dapat merongrong kepentingan nasional kita. Toh, pemecahan beberapa masalah yang kita hadapai secara internal, masih terkorelasi dengan tekanan internasional.</p><p>Kerusakan Lingkungan<br>Budidaya tanaman kelapa sawit menerapkan sistem monokultur yang mensyaratkan pembersihan awal pada lahan yang akan digunakan (land clearing). Secara ekologis, memang pola monokultur lebih banyak merugikan karena penganak-emasan tanaman tersebut akan berdampak pada penghilangan (atau pengurangan tanaman lain).</p><p>Jika lahan baru yang dibuka berupa hutan, maka tentu saja ini akan berdampak pada berkurangnya -atau bahkan hilangnya- keanekaragaman hayati yang sudah ada sebelumnya. Keanekaragaman hayati membentuk ekosistem yang kompleks dan saling melengkapi, gangguan atas ekosistem tentu akan mengganggu keseimbangan alam, misalnya pada hilangnya aktor-aktor alam yang berperan dalam rantai makanan. Kehilangan satu aktor yang ada pada rantai makanan dalam posisi lebih tinggi dari aktor lainnya akan menyebabkan peningkatan populasi aktor dibawahnya tanpa dikontrol oleh predator alami yang ada di atasnya. Bisa dibayangkan jika ledakan populasi itu merupakan ancaman bagi populasi lain. Contoh paling gampang adalah populasi yang mengganggu dan kemudian disebut hama.</p><p>Pada beberapa kasus, pembukaan lahan hutan -tidak hanya lahan sawit- diikuti dengan pembakaran untuk mempercepat proses land clearing. Kasus asap yang muncul dari kebakaran (atau pembakaran) hutan sangat sering muncul beberapa waktu lalu dan kita semua sudah tahu dampaknya.</p><p>Adapun untuk lahan yang sudah beroperasi, kegiatan pertanian dan perkebunan, seperti aktivitas pemupukan, pengangkutan hasil, termasuk juga pengolahan tanah dan aktivitas lainnya, secara kumulatif telah mengakibatkan tanah mengalami penurunan kualitas (terdegradasi), karena secara fisik, akibat kegiatan tersebut mengakibatkan tanah menjadi bertekstur keras, tidak mampu menyerap dan menyimpan air. Penggunaan herbisida dan pestisida dalam kegiatan perkebunan akan menimbun residu di dalam tanah. Demikian juga dengan pemupukan yang biasanya menggunakan pupuk kimia dan kurang menggunakan pupuk organik akan mengakibatkan pencemaran air tanah dan peningkatan keasaman tanah.</p><p>Tanaman kelapa sawit juga merupakan tanaman yang rakus air. Ketersediaan air tanah pada lahan yang menjadi perkebunan kelapa sawit tersebut akan semakin berkurang. Hal ini akan mengganggu ketersediaan air, tidak hanya bagi manusia namun bagi tanaman itu sendiri. Dengan berkurangnya kuantitas air pada tanah dapat menyebabkan para petani akan sulit mengembangkan lahan pertanian pasca lahan perkebunan kelapa sawit ini beroperasi.</p><p>Jika dibiarkan tanpa antisipasi atas dampak jangka panjang, maka lahan demikian akan menjadi terlantar dan pada akhirnya akan menjadi lahan kering juga gersang yang terbengkalai.</p><p>Dampak lingkungan tersebut memang cukup mengkhawatirkan. Namun bukan berarti tidak ada solusi yang bisa dikembangkan guna mengantisipasi dampak tersebut.</p><p>Kita harus mempertimbangkan ulang pembukaan hutan, terutama pada hutan-hutan yang berfungsi sebagai daerah resapan dan di masa mendatang diproyeksikan sebagai sumber air untuk infrastruktur pendukung pertanian seperti waduk. Namun memang diperlukan sinergi supaya semua kebijakan tersebut dapat saling topang.</p><p>Konservasi hutan dalam jangka panjang akan membantu konversi balik lahan sawit menjadi lahan pertanian jika pasokan air yang mencukupi dari hutan yang terkonservasi dapat dijaga. Atau dalam konteks perkebunan kelapa sawit itu sendiri, pasokan air yang mencukupi akan membantu pertumbuhan tanaman kelapa sawit dalam hal ketersediaan air dalam jangka panjang.</p><p>Demikian juga penggunaan masif pupuk kimia harus mulai dikombinasi dengan pupuk organik berbasis bioteknologi yang memiliki kadar mikroba penyubur/pembenah tanah. Penggunaan pupuk kimia yang lebih berorientasi pada pertumbuhan tanaman harus dikombinasi dengan pupuk organik yang berorientasi pada kesuburan tanah dengan menjaga proses biologi dan kimia tanah tetap berlangsung. Kesuburan tanah diharapkan bisa tetap terjaga sehingga tidak hanya menguntungkan bagi tanaman, namun mencegah proses penggurunan yang terjadi.</p><p>Ancaman Ketahanan Pangan<br>Jika lahan yang akan digunakan bukan hutan dan merupakan lahan produktif pertanian tanaman lain terlebih tanaman pangan maka konversi lahan ini pasti akan berdampak pada ketahanan pangan. Pola perubahan lahan seperti ini sangat dipengaruhi oleh faktor ekonomi yang menunjukkan bahwa komoditas kelapa sawit merupakan komoditas yang memiliki nilai ekonomis yang cukup menjanjikan karena tren konsumsi yang terus meningkat pada pasar internasional.</p><p>Faktor ekonomi tersebut pada level pengusaha perkebunan skala kecil akan mendorong mereka melakukan konversi lahan karena secara modal mungkin tidak memiliki kemampuan untuk membuka lahan baru dengan cara konversi hutan. Fluktuasi harga kelapa sawit yang relatif stabil mendorong masyarakat yang memiliki lahan pertanian pangan mengalihkannya ke perkebunan sawit. Hal itu terjadi di sejumlah sentra perkebunan sawit. Jambi misalnya, saat ini telah menggantungkan pasokan berasnya ke daerah lain akibat banyaknya lahan padi yang dikonversi.</p><p>Demikian juga dengan para pengusaha dalam skala besar, konversi lahan ini akan menjadi pilihan ketika konversi hutan dihentikan sementara oleh pemerintah melalui moratorium Inpres No 10 Tahun 2011. Inpres ini berlaku khusus untuk 64,2 juta hektar hutan alam primer dan lahan gambut di Indonesia. Permintaan internasional yang tidak pernah turun dan mempunyai tren meningkat ditambah dengan tingginya produksi minyak kelapa sawit dibanding minyak nabati lainnya dalam hal efisiensi lahan,&nbsp; jalan keluar yang terlihat karena tembok moratorium adalah konversi lahan yang sudah ada saat ini.</p><p>Konversi lahan pertanian pangan menjadi perkebunan termasuk kelapa sawit bisa memicu semakin tingginya harga pangan. Pasalnya, luas lahan pertanian semakin menyusut dan berimbas terhadap penurunan produksi atau bahkan hilangnya komoditas pangan di daerah tersebut. Di Sumatra Utara, beras yang selama ini menjadi andalan, beras Ramos Leidong sudah ‘menghilang.’ Dan tidak tertutup kemungkinan akan menyusul komoditas lainnya.</p><p>Dalam konteks ketahanan pangan, kondisi ini akan mendorong masuknya produk impor untuk komoditas pangan. Sehingga langsung atau tidak, akan berdampak pada naiknya harga kebutuhan pangan dan ketergantungan atas pangan dari luar.</p><p>Masalah ketahanan pangan memang tidak bisa hanya dibebankan pada komoditas kelapa sawit atau komoditas lain perkebunan besar saja. Masalah ini selalu saja menjadi topik ‘panas’ yang menjadi pekerjaan besar pemerintah. Masalah ini lebih pada keberpihakan pemerintah pada kesejahteraan petani tanaman pangan. Bagaimana mungkin petani menanam komoditas yang tidak bisa menopang kehidupannya?</p><p>Subsidi dan insentif sangat dibutuhkan pada urusan ketahanan pangan. Subsidi bukan hanya untuk pupuk, namun juga untuk stabilitas dan kepastian harga jual petani. Bantuan permodalan harus serius diselenggarakan dan bukan hanya sebatas program kerja dan pernyataan namun benar-benar terealisasi ke bawah dan dirasakan petani sebagai bentuk perhatian negara/pemerintah. Demikian juga infrastruktur yang memadai dan terus terpelihara.</p><p>Insentif bagi perkebunan besar harus diberikan untuk mendorong penggunaan lahan-lahan ‘terbengkalai.’ Lahan tidur yang sulit dimanfaatkan pertanian pangan dapat diinisiasi untuk lahan perkebunan dengan membuat persyaratan yang tegas mengenai tanggungjawab lingkungan. Misalkan pembukaan perkebunan yang mensyaratkan adanya reservoir air dan sebagainya. Insentif dapat diberikan dengan pengurangan pajak, memberikan kemudahan ijin dan perpanjangan HGU dan sebagainya yang bisa dikalkulasi secara ekonomi oleh pengusaha perkebunan. Tapi lagi-lagi perlu ditekankan konsistensi atas kebijakan ini. Dan seperti pada masalah lingkungan hidup, sinergi lagi-lagi diperlukan agar kebijakan ini bisa menjadi bagian dari strategi besar yang akan dilakukan. Jangan hari ini bicara insentif, tahun depan kenaikan pajak dan diversifikasi pajak dilakukan.</p><p>Konflik Agraria dan Sumber Daya Alam<br>Perkebunan kelapa sawit menduduki peringkat pertama penyebab konflik sumber daya alam dan agraria yang terjadi di Indonesia saat ini. Menurut HuMa, dari total 232 kasus, konflik perkebunan sawit menduduki posisi pertama dengan 118 kasus. Konflik ini tidak lepas dari kurangnya sinergisitas antar instansi, kebijakan yang mementingkan peningkatan PAD oleh pemerintah setempat dan kepastian hukum atas lahan.</p><p>Peta potensi kelompok yang berkonfik juga sangat beragam. Ada konflik antara masyarakat adat dengan perkebunan, karyawan dengan perusahaan dan pemilik lahan dengan pemerintah. Selain itu, konflik juga bisa melebar menjadi masyarakat dengan pemerintah, perusahaan dengan pemerintah, masyarakat dengan masyarakat, masyarakat dengan LSM dan LSM dengan pihak perusahaan. Variasi konflik yang sangat kompleks itu masih bisa ditambah lagi dengan konflik perusahaan dengan perusahaan jika menyangkut pemberian izin lahan yang tumpang-tindih, baik usaha perkebunan dengan perkebunan, usaha perkebunan dengan pertambangan maupun usaha perkebunan dengan kehutanan. Dan akan makin kompleks lagi jika perusahaan yang berkonflik merupakan perusahaan multinasional.</p><p>Peraturan-peraturan yang berbeda-beda antara pemerintah provinsi dan kabupaten dengan intepretasi yang beragam juga turut memicu munculnya konflik.&nbsp; Adanya peraturan di tingkat provinsi, belum lagi perda di tingkat kabupaten, kesemuanya&nbsp; belum tentu sejalan dengan kebijakan pemerintah pusat. Kondisi ini jelas membuka ruang konflik. Selain itu, pengawasan pemerintah di dalam perkebunan ini relatif kurang. Yang rajin dilakukan pemerintah justru penerbitan surat izin, tapi jarang berani mencabut izin pada perkebunan yang tidak melaksanakan ketentuan. Masih dalam urusan peraturan, perubahan peruntukan lahan sering berubah juga dapat menimbulkan masalah sendiri. Misalnya lahan tersebut merupakan lahan perkebunan, tetapi muncul kebijakan baru yang menetapkan bahwa lahan tersebut adalah lahan lindung.</p><p>Banyak perusahaan perkebunan juga membuat konflik itu sendiri, seperti sosialisasi tidak dilakukan dengan baik dan optimal kepada masyarakat dan pemerintah setempat. Pemahaman sosial budaya setempat dan penyelesaian masalah pembelian lahan masyarakat yang juga tidak dilakukan dengan baik. Keterlambatan pengelolaan kebun ditambah dengan pembangunan kebun plasma dimana perusahaan itu lebih memprioritaskan pembangunan kebun inti daripada plasmanya.</p><p>Dari sisi masyarakat, tidak bisa dipungkiri menjadi pemicu konflik. Petani kerap melakukan penyerobotan terhadap lahan perusahaan yang masih mempunyai status HGU dengan berbagai alasan. Hal ini masih ditambah dengan pemindahtanganan kebun plasma dan masalah susulan seperti urusan hak waris dan sebagainya. Dijual oleh sang bapak, tetapi anaknya tidak tahu. Begitu bapaknya meninggal anaknya protes lagi. LSM juga kadang kala menjadi pemicu konflik di areal perkebunan. Dengan berbagai agenda-agenda internasional seperti masalah emisi karbon dan global warming dibawa ke dalam arena konflik dan makin mempertajam konflik.</p><p>Konflik yang terjadi secara langsung akan lebih banyak merugikan dua pihak, yaitu masyarakat setempat dan pengusaha yang berinvestasi di daerah tersebut. Dampak lanjutannya adalah berkurangnya penerimaan negara dari apa yang seharusnya dapat diperoleh melalui kegiatan usaha tersebut.</p><p>Dampak langsung ke masyarakat dapat berupa terancamnya -bahkan hilangnya- sumber-sumber produksi seperti lahan-lahan pertanian, tempat mencari ikan maupun hasil-hasil hutan baik kayu maupun non kayu,&nbsp; penggusuran paksa pemukiman, konflik horizontal antar warga, hilangnya situs maupun eksistensi sosial budaya setempat dan penangkapan dan kriminalisasi masyarakat dan tokoh adat maupun pencemaran lingkungan yang berdampak penyakit dan terganggunya ekosistem. Jika konflik terjadi pada saat sudah beroperasi, maka masalah baru seperti menumpuknya hutang petani PIR perkebunan kelapa sawit akibat cicilan yang tidak disetorkan perusahaan dan sebagainya.</p><p>Dampak ke perusahaan adalah terganggunya operasional perusahaan yang tentu saja berdampak pada kerugian atau berkurangnya keuntungan, tekanan dari berbagai pihak yang dapat berujung pada penghentian usaha. Dan tentu saja ini tidak hanya merugikan pengusaha itu sendiri, tetapi juga mempengaruhi banyak pihak lain. Pekerja kehilangan pekerjaan karena PHK diikuti dengan masalah kerawanan sosial yang bisa saja timbul sebagai dampaknya, lahan menjadi terlantar dan berdampak pada lingkungan tanpa pengembalian ke fungsi awal sebelum menjadi perkebunan serta hilangnya pendapatan negara baik dalam bentuk PAD maupun pajak-pajak.</p><p>Akar masalah yang menjadi sumber konflik utama harus segera diperbaiki, terutama dari sisi aturan-aturan. Kebijakan tata ruang harus dipertegas pelaksanaannya sehingga tercipta kejelasan mengenai peruntukan atas tanah dan sumber daya alam yang ada. Kebijakan ini harus melihat fakta saat ini dan situasi sosial budaya yang melingkupi tanah dan sumber daya alam tersebut. Jika kebijakan tersebut belum bercermin pada kedua hal di atas, maka sudah saatnya dilakukan perbaikan agar konflik yang tidak perlu tidak terjadi.</p><p>Demikian juga dengan kekuasaan daerah dalam memberikan ijin-ijin pengelolaan agraria dan sumber daya alam harus diformulasi ulang agar dan dicari solusi kompensasinya agar daerah tidak jor-joran mengeksploitasi wilayah mereka tanpa melihat kepentingan&nbsp; nasional yang lebih besar.</p><p>sumber: <a target="_blank" rel="nofollow" href="http://ekonomi.kompasiana.com/">http://ekonomi.kompasiana.com/</a></p>', '2016-09-07', '28_021633800_1457095246-20160304-kelapa-sawit-istock-5.jpg', 'Kelapa Sawit', 'Palm Indonesia issue: environment, food security and Agrarian Conflicts', '<div>Various studies&nbsp;and research, either&nbsp;from outside&nbsp;or&nbsp;inside&nbsp;the country, talk&nbsp;about&nbsp;Palm oil plantations.&nbsp;Many opinions&nbsp;that circulated&nbsp;with the&nbsp;cons&nbsp;put forward&nbsp;the issue of&nbsp;environment and health.&nbsp;But opinions and advocacy that pro-especially from principals of palm plantations-not less excitement.</div><br><div>We have to put&nbsp;the issue&nbsp;on the&nbsp;portions&nbsp;and see&nbsp;what can be done&nbsp;to minimise&nbsp;the problem.&nbsp;Honestly&nbsp;also&nbsp;acknowledged&nbsp;that&nbsp;Palm oil plantations&nbsp;have an impact&nbsp;on the environment&nbsp;of living.&nbsp;However&nbsp;the statement that&nbsp;Palm oil plantations&nbsp;absorbs&nbsp;labor and&nbsp;was instrumental&nbsp;in&nbsp;our economies&nbsp;is also&nbsp;a&nbsp;fact&nbsp;that&nbsp;we cannot&nbsp;get rid of&nbsp;it.</div><br><div>An honest and&nbsp;balanced&nbsp;information&nbsp;must be&nbsp;noteworthy&nbsp;in order that the&nbsp;information submitted&nbsp;is not&nbsp;being&nbsp;the process of&nbsp;tricking&nbsp;community (pro&nbsp;or&nbsp;con),&nbsp;however&nbsp;the thought&nbsp;into consideration&nbsp;in order to&nbsp;set up&nbsp;the anticipation of&nbsp;long-term&nbsp;problems.</div><br><div>However, the fact&nbsp;is currently&nbsp;Indonesia&nbsp;has&nbsp;been&nbsp;a land&nbsp;of Palm&nbsp;with&nbsp;the largest number&nbsp;in the world.&nbsp;Indonesia&nbsp;is also the&nbsp;largest exporter of&nbsp;commodities&nbsp;not only inPalm oil,&nbsp;but&nbsp;also&nbsp;on the overall&nbsp;commodity&nbsp;vegetable oils&nbsp;of the world.&nbsp;From&nbsp;this&nbsp;Palm&nbsp;Indonesia&nbsp;get&nbsp;a hefty&nbsp;foreign exchange&nbsp;coupled with&nbsp;absorption of&nbsp;labor.&nbsp;That there are&nbsp;various problems&nbsp;that exist in&nbsp;the fact&nbsp;that&nbsp;there are&nbsp;such as&nbsp;the destruction of forests&nbsp;and biodiversity,&nbsp;food security&nbsp;and&nbsp;agrarian&nbsp;conflict&nbsp;and natural resources&nbsp;is also&nbsp;a&nbsp;fact&nbsp;that&nbsp;all of them&nbsp;should&nbsp;be&nbsp;footing&nbsp;in finding&nbsp;the best solution.</div><br><div>The solution&nbsp;shall be&nbsp;created&nbsp;in favour of&nbsp;the common good&nbsp;of our nationalinternal.&nbsp;Because&nbsp;the business of&nbsp;the estate&nbsp;is&nbsp;of national importance, especially&nbsp;in the context of&nbsp;palm oil&nbsp;is&nbsp;the largest&nbsp;producer of&nbsp;where we are&nbsp;and&nbsp;the largest&nbsp;exporting&nbsp;market of&nbsp;vegetable oils&nbsp;as well&nbsp;as&nbsp;ruler of the&nbsp;world.&nbsp;Should be&nbsp;ruled out&nbsp;additional&nbsp;problems&nbsp;used to&nbsp;be&nbsp;international pressure&nbsp;because it is&nbsp;not only&nbsp;complicate&nbsp;the existing&nbsp;problems, but&nbsp;can also&nbsp;undermine&nbsp;our national interests.&nbsp;Anyway,&nbsp;solvingsome of&nbsp;the problems we&nbsp;face&nbsp;internally,&nbsp;still&nbsp;correlated&nbsp;with&nbsp;international pressure.</div><br><div>Environmental Damage</div><div>Oil palm&nbsp;cultivation&nbsp;apply&nbsp;a&nbsp;monoculture&nbsp;system&nbsp;requires&nbsp;early&nbsp;cleanup&nbsp;on&nbsp;land&nbsp;use&nbsp;(land&nbsp;clearing).&nbsp;Ecologically, it is&nbsp;more&nbsp;detrimental to the&nbsp;monoculture&nbsp;pattern&nbsp;because&nbsp;the&nbsp;plant&nbsp;penganak-ecobliss&nbsp;will impact&nbsp;on removing&nbsp;(or&nbsp;reduction in&nbsp;other plants).</div><br><div>If&nbsp;a new land&nbsp;which opened&nbsp;a forest, then of course&nbsp;it will&nbsp;have an impact on&nbsp;the decline&nbsp;– or even&nbsp;loss of&nbsp;biodiversity-is already there&nbsp;before.&nbsp;Biodiversity&nbsp;forms&nbsp;a complex&nbsp;ecosystem&nbsp;and&nbsp;complement each other,&nbsp;disorders of the&nbsp;upper&nbsp;ecosystem&nbsp;will certainly&nbsp;disrupt&nbsp;the balance of&nbsp;nature,&nbsp;for example&nbsp;the loss of&nbsp;natural&nbsp;actors&nbsp;who&nbsp;play a role in&nbsp;the food chain.&nbsp;Lost one&nbsp;of the actors&nbsp;in the&nbsp;food chain&nbsp;in a position&nbsp;higher than the&nbsp;other&nbsp;actors&nbsp;will lead to&nbsp;an increase&nbsp;in&nbsp;the population of&nbsp;the&nbsp;actors&nbsp;belowwithout&nbsp;controlled by&nbsp;natural predators&nbsp;existing&nbsp;on it.&nbsp;Imagine&nbsp;if&nbsp;that&nbsp;population&nbsp;explosion&nbsp;is a threat to&nbsp;the population of&nbsp;the&nbsp;other.&nbsp;The most&nbsp;straightforward&nbsp;exampleis&nbsp;population&nbsp;disturbing and&nbsp;later called&nbsp;hama.</div><br><div>In some cases,&nbsp;the opening of&nbsp;the&nbsp;forest-land&nbsp;is not only&nbsp;a land&nbsp;of Palm-followed byburning&nbsp;to speed up&nbsp;the process of&nbsp;land&nbsp;clearing.&nbsp;The case of&nbsp;smoke&nbsp;emerging from the&nbsp;fire (or burning) forest&nbsp;is very often&nbsp;appear&nbsp;some time ago&nbsp;and we all&nbsp;already know&nbsp;its impact.</div><br><div>With regard&nbsp;to&nbsp;land&nbsp;already in operation, the activities&nbsp;of agriculture and&nbsp;forestry,&nbsp;such as&nbsp;fertilizing, transporting&nbsp;activity&nbsp;results,&nbsp;including&nbsp;tillage&nbsp;and other events,&nbsp;cumulatively&nbsp;have resulted in&nbsp;decreased&nbsp;soil&nbsp;quality (degraded), because&nbsp;physically,&nbsp;due to&nbsp;such activities&nbsp;resulted in&nbsp;the ground&nbsp;being&nbsp;hard-textured, unable to&nbsp;absorb andstore water.&nbsp;The use of&nbsp;herbicides&nbsp;and pesticides&nbsp;in&nbsp;plantation&nbsp;activity&nbsp;will&nbsp;hoard&nbsp;the residue&nbsp;in the soil.&nbsp;Likewise&nbsp;with&nbsp;the&nbsp;fertilization&nbsp;usually use&nbsp;less&nbsp;chemical fertilizers and&nbsp;use&nbsp;organic fertilizer&nbsp;will result in&nbsp;the pollution of&nbsp;groundwater&nbsp;and&nbsp;soil&nbsp;acidification.</div><br><div>Plant&nbsp;oil palm&nbsp;is also&nbsp;a&nbsp;voracious&nbsp;water&nbsp;plants.&nbsp;Availability of&nbsp;soil water&nbsp;on the&nbsp;land that&nbsp;became&nbsp;the&nbsp;palm oil plantation&nbsp;will be&nbsp;on the wane.&nbsp;This would&nbsp;interfere with&nbsp;the availability of&nbsp;water,&nbsp;not only&nbsp;for human beings&nbsp;but&nbsp;for the plant&nbsp;itself.&nbsp;With the decline&nbsp;in&nbsp;the quantity&nbsp;of water in&nbsp;the soil&nbsp;can cause&nbsp;the farmers&nbsp;will be hard to&nbsp;develop&nbsp;farmland&nbsp;post-war&nbsp;oil palm&nbsp;plantation&nbsp;operations.</div><br><div>If left&nbsp;without&nbsp;the anticipation&nbsp;over the&nbsp;long-term impact, then&nbsp;such&nbsp;land&nbsp;would bedisplaced and&nbsp;will eventually become&nbsp;dry land&nbsp;also&nbsp;that&nbsp;barren&nbsp;dormant.</div><br><div>The environmental impact&nbsp;is&nbsp;alarming enough.&nbsp;But that does not&nbsp;mean&nbsp;there is no&nbsp;solution that&nbsp;can be developed&nbsp;in order to&nbsp;anticipate&nbsp;the impact of&nbsp;tersebu</div>', 'Palm Oil');

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
(1, 'Informasi Sawit Nasional dan Internasional (Pasar Global)', 'Palm information national and international (Global markets)'),
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `katharga_m`
--

INSERT INTO `katharga_m` (`id_katharga`, `katharga`) VALUES
(1, 'Harga Tandan Buah SEGAR (TBS)'),
(2, 'Harga CPO Domestik (KPB dan Astra)'),
(3, 'Harga Referensi dari Pasar Global (CIF Rotterdam atau FOB Rotterdam)');

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
(1, 'ipob@dmsi.or.id / dm.sawit@gmail.com', 'Pusat Bisnis Thamrin City Lt.7 No.729-730\nJl. Thamrin Boulevard\nJakarta Pusat 10230\nIndonesia\n              \n              ', '+62 21 29625788', '+62 21 29625789', 'http://www.dmsi.or.id');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_m`
--

INSERT INTO `profil_m` (`id_info`, `judul`, `content`, `judul_english`, `content_english`, `order_num`) VALUES
(1, 'Tentang DMSI', '<p>Pembangunan kelapa sawit nasional\r\nmemerlukan adanya sebuah lembaga yang mampu mengakomodasikan seluruh\r\nkepentingan bersama dari para pelaku usaha kelapa sawit nasional.</p>\r\n\r\n<p>Lembaga termaksud harus berfungsi\r\nsebagai himpunan seluruh kekuatan nasional, baik unsur pemerintah maupun\r\nseluruh pelaku usaha, untuk membangun industri kelapa sawit nasional yang\r\ntangguh.</p>\r\n\r\n<p>Bahwa atas dasar hal-hal tersebut\r\ndiatas dan sebagai pelaksanaan Pasal 19 Undang-Undang Nomor 18 Tahun 2004\r\ntentang Perkebunan, maka segenap pemangku kepentingan dalam industri kelapa\r\nsawit nasional mulai dari perbenihan, perkebunan sampai dengan penghasil produk\r\nturunannya memandang perlu untuk membentuk Dewan Minyak Sawit Indonesia (DMSI)\r\nmelalui deklarasi pada tanggal 7 Desember 2006 di Nusa Dua Bali, oleh:</p>\r\n\r\n\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nGabungan Pengusaha Kelapa Sawit\r\nIndonesia (GAPKI), diwakili Oleh H. Akmaluddin Hasibuan) (Ketua Umum);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nAsosiasi Industri Minyak Makan Indonesia\r\n(AIMMI), diwakili oleh Adiwisoko Kasman (Ketua Umum);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nAsosiasi Produsen Oleochemical Indonesia\r\n(APOLIN), diwakili oleh Stefanus Goei King (Ketua Umum);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nAsosiasi Petani Kelapa Sawit Indonesia\r\n(APKASINDO), diwakili oleh Sumardi Syarief (Ketua Umum);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nGabungan Pengusaha Perkebunan Indonesia\r\n(GPPI), diwakili oleh Soedjai Kartasasmita (Ketua Umum);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nMasyarakat Perkelapa-sawitan Indonesia\r\n(MAKSI), diwakili oleh Gardjito (atas nama Masyarakat Perkelapa-sawitan\r\nIndonesia);</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nDirektorat Jenderal Pengolahan dan\r\nPemasaran Hasil Pertanian, diwakili oleh Djoko Said Damardjati; </p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nDirektorat Jenderal Perkebunan, diwakili\r\noleh Achmad Mangga Barani.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DMSI bertujuan untuk meningkatkan\r\nkerjasama dan koordinasi antar pelaku usaha serta memfasilitasi perumusan\r\nregulasi dan kebijakan perkelapa sawitan nasional yang mampu membawa pelaku\r\nusaha untuk bersaing, tangguh dipasar Internasional dengan tetap memperhatikan\r\nkelestarian lingkungan.</p>\r\n\r\n<p>DMSI sebagai pusat koordinasi\r\nprogram dan kebijakan perkelapa-sawitan nasional&nbsp; bertugas memfasilitasi secara aktif:&nbsp; </p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPerumusan program pembangunan industri\r\nkelapa sawit nasional.</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPerumusan regulasi dan kebijakan\r\npembangunan industri kelapa sawit nasional yang berdayasaing, tangguh di pasar\r\ninternasioal dan berkelanjutan untuk dilaksanakan oleh seluruh instansi yang\r\nberwenang dan pihak-pihak terkait.</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPerumusan pedoman jangka panjang program\r\npembangunan kelapa sawit nasional.</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPemantauan dan evaluasi implementasi\r\nregulasi dan kebijakan pembangunan industri kelapa sawit nasional.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DMSI menyelenggarakan kegiatan:</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPenyiapan saran pertimbangan kepada\r\npemerintah dalam merumuskan kebijakan agribisnis perkelapa-sawitan;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPengupayaan peningkatan produktivitas\r\ndan efisiensi, melakukan penelitian, dan pengembangan yang berorientasi pasar,\r\nserta pengembangan sumberdaya manusia;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPelaksanaan inventarisasi, monitoring\r\ndan evaluasi produksi kebun dan pabrik serta industri;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nFasilitasi pelaksanaan ekspor dan\r\npromosi, mengembangkan pasar baru yang potensial serta memelihara dan\r\nmemperluas pasar yang sudah ada;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPelaksanaan advokasi usaha dan jasa\r\npendukung lainnya serta mengatasi masalah dampak lingkungan dalam rangka\r\nmembangun bidang usaha kelapa sawit dan produk turunannya yang lestari;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPenyediaan data dan informasi melalui\r\nkerjasama dengan Badan Pusat Statistik;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPelaksanaan koordinasi dengan instansi,\r\nbaik di pusat maupun daerah dalam mewujudkan iklim usaha yang kondusif,\r\nkhususnya dibidang hukum dan keamanan, serta bekerjasama dengan organisasi\r\nterkait baik didalam maupun di luar negeri;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPemberian masukan dan alternatif dalam\r\nstabilisasi harga dan pasokan minyak goreng kelapa sawit di pasar dalam negeri;</p>\r\n\r\n<p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nPengusulan percepatan pembangunan sarana\r\ndan prasarana.</p>', 'About DMSI', '<div>National oil palm development requires the existence of an institution that is able to accommodate all the common interests of the national oil palm businesses.</div><div><br></div><div><br></div><div><br></div><div>The said institutions should serve as the set of all national forces, both elements of the government and the whole business, to build national oil palm industry is tough.</div><div><br></div><div><br></div><div><br></div><div>That based on the above matters and the implementation of Article 19 of Law No. 18 of 2004 on Plantations, then all stakeholders in the national palm oil industry started from seed, plantation up to producing derivatives deems it necessary to form the Indonesian Palm Oil Board (DMSI) through a declaration on December 7, 2006 in Nusa Dua Bali, by:</div><div><br></div><div>Indonesian Palm Oil Association (GAPKI), represented by H. Akmaluddin Hasibuan) (Chairman);</div><div><br></div><div>Indonesian Cooking Oil Industry Association (AIMMI), represented by Adiwisoko Kasman (Chairman);</div><div><br></div><div>Oleochemical Manufacturers Association of Indonesia (APOLIN), represented by Goei Stephen King (Chairman);</div><div><br></div><div>Indonesian Palm Oil Growers Association (Apkasindo), represented by Sumardi Syarief (Chairman);</div><div><br></div><div>Association of Indonesian Plantation (GPPI), represented by Soedjai Kartasasmita (Chairman);</div><div><br></div><div>Perkelapa-Indonesia Society of the oil (MAKSI), represented by Gardjito (on behalf of the oil community-Perkelapa Indonesia);</div><div><br></div><div>Directorate General of Processing and Marketing of Agricultural Products, represented by Djoko Said Damardjati;</div><div><br></div><div>Directorate General of Plantation, represented by Achmad Mangga Barani.</div><div><br></div><div>DMSI aims to improve cooperation and coordination between businesses and facilitate the formulation of regulations and national policies of the oil palm are able to bring businesses to compete, tough International market with regard to environmental sustainability.</div><div><br></div><div><br></div><div><br></div><div>DMSI as program and policy coordination center of the oil perkelapa-national task is to facilitate active:</div><div><br></div><div>Formulation development program of national palm oil industry.</div><div><br></div><div>Formulation of regulatory and policy development of national palm oil industry is energized, tough in the international market and continuing to be implemented by all authorized institutions and stakeholders.</div><div><br></div><div>The formulation of guidelines for long-term national development programs of oil palm.</div><div><br></div><div>Monitoring and evaluation of the implementation of the regulatory and policy development of national palm oil industry.</div><div><br></div><div>DMSI organizes:</div><div><br></div><div>Preparation of advice and judgment to the government in formulating policies perkelapa agri-of the oil;</div><div><br></div><div>The insistence on increasing productivity and efficiency, conduct research, and market-oriented development, as well as the development of human resources;</div><div><br></div><div>Implementation of inventory, monitoring and evaluation of the estate and mill production industry;</div><div><br></div><div>Facilitation of the implementation and promotion of exports, developing new market potential as well as maintaining and expanding existing markets;</div><div><br></div><div>Implementation of business advocacy and other support services as well as address the issue of environmental impact in order to build the business field of palm oil and its derivatives, which sustainably;</div><div><br></div><div>Provision of data and information through cooperation with the Central Bureau of Statistics;</div><div><br></div><div>Coordination with the agencies, both at central and local levels in creating a conducive business climate, especially in the field of law and security, as well as in cooperation with relevant organizations both within and outside the country;</div><div><br></div><div>Giving feedback and alternatives in the stabilization of prices and supplies of cooking oil palm in the domestic market;</div><div><br></div><div>Proposing the accelerated development of facilities and infrastructure.</div>', 1),
(3, 'Visi dan Misi', '<p><b>VISI DMSI</b><br><br></p><ul><li>Mendorong pengembangan industri minyak sawit yang berkelanjutan sebagai salah satu pilar pembangunan nasional</li><li>Menjadikan Indonesia Sebagai <i>World Leader</i> industri minyak sawit yang berwawasan lingkungan</li></ul>', 'VisionAND Mision', '<p><b>VISION DMSI</b><br><br></p><ul><li>Encouraging the development of a sustainable palm oil industry as one of the pillars of national development</li><li>As the World Leader Making Indonesia''s palm oil industry of environmentally sound</li></ul>', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sponsor_m`
--

INSERT INTO `sponsor_m` (`id_sponsor`, `nama_sponsor`, `image_sponsor`) VALUES
(2, 'bb', '2_13662326_692241810916615_337703489118306928_o.jpg');

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
-- Struktur dari tabel `sub_katharga_m`
--

CREATE TABLE IF NOT EXISTS `sub_katharga_m` (
`id_sub_katharga` int(11) NOT NULL,
  `id_katharga` int(11) NOT NULL,
  `sub_katharga` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_katharga_m`
--

INSERT INTO `sub_katharga_m` (`id_sub_katharga`, `id_katharga`, `sub_katharga`) VALUES
(1, 1, 'Provinsi Kalimantan Barat'),
(2, 1, 'Provinsi Sumatera Utara'),
(3, 1, 'Provinsi Riau'),
(4, 3, 'CPO'),
(5, 3, 'Soybean Oil'),
(6, 3, 'Rapeseed Oil');

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
(1, 156),
(1, 157),
(1, 160),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
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
(1, 315),
(1, 316),
(1, 317),
(1, 318),
(1, 319),
(1, 320),
(1, 322),
(1, 324),
(1, 326),
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
(1, 360),
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
(3, 156),
(3, 157),
(3, 160),
(3, 176),
(3, 177),
(3, 178),
(3, 179),
(3, 183),
(3, 184),
(3, 185),
(3, 186),
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
(3, 315),
(3, 316),
(3, 317),
(3, 318),
(3, 319),
(3, 320),
(3, 322),
(3, 324),
(3, 326),
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
(3, 346),
(3, 347),
(3, 348),
(3, 349),
(3, 350),
(3, 351),
(3, 352),
(3, 353),
(3, 354),
(3, 355),
(4, 18),
(4, 132),
(4, 135),
(4, 149),
(4, 156),
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
(4, 293),
(4, 294),
(4, 295),
(4, 296),
(4, 297),
(4, 298),
(4, 301),
(4, 304),
(4, 305),
(4, 306),
(4, 315),
(4, 316),
(4, 317),
(4, 318),
(4, 319),
(4, 320),
(4, 322);

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
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

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
(359, 2, 357, 'List Anggota Disetujui', 'List Anggota Disetujui', 'private', 'registrasi', 'disetujui', 2, '1', '0', 'view', 1, '2016-08-25 05:28:25'),
(360, 2, 336, 'List Iklan', 'List Iklan', 'private', 'sponsor', 'list_iklan', 4, '1', '1', 'view', 1, '2016-09-14 12:00:56');

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
('Dewan Minyak Sawit Indonesia', 'Dewan Minyak Sawit Indonesia - DMSI', 'http://dmsi.taa.co.id', 'dewan.sawit@dmsi.or.id', 'Gmail Smtp', 'mail.dmsi.or.id', '465', 'dewan.sawit@dmsi.or.id', 'dewan2006', 'http://localhost/siteregnas', 'no', '', '1.1', 1, '2016-05-19 10:26:25');

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
(2, 1),
(4, 3),
(3, 4),
(5, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_user_login_t`
--

CREATE TABLE IF NOT EXISTS `sys_user_login_t` (
`id` bigint(20) unsigned NOT NULL,
  `id_user` int(11) unsigned NOT NULL,
  `login_date` datetime NOT NULL,
  `remote_ip` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1173 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_user_login_t`
--

INSERT INTO `sys_user_login_t` (`id`, `id_user`, `login_date`, `remote_ip`) VALUES
(1161, 5, '2016-09-08 03:06:09', '110.137.231.204'),
(1172, 1, '2016-09-14 10:54:21', '::1');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_user_m`
--

INSERT INTO `sys_user_m` (`id_user`, `user_name`, `user_pass`, `user_key`, `user_status`, `user_mail`, `mdb`, `mdd`) VALUES
(1, 'systemadmin', 'OkBCQDE8Ly86MDU=', '991441253', 'active', 'bachrisaiful6@gmail.com', 1, '2016-09-06 06:10:30'),
(2, 'adminutama', 'KTA2OTdERCo8KQ==', '847071071', 'active', 'dewan.sawit@gmail.com', 1, '2016-09-06 06:15:35'),
(3, 'dewi', 'My0+NA==', '1895006130', 'active', 'dewi@gmail.com', 1, '2016-09-06 06:16:34'),
(4, 'nikenlarasati', 'PDU1LTI9PEM0QDA+NS01Lw==', '1054986050', 'active', 'niken.dmsi@gmail.com', 1, '2016-09-06 09:17:23'),
(5, 'maksi', 'eyk2OjE=', '1859834741', 'active', 'xx@yahoo.com', 1, '2016-09-07 05:00:14');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `video_m`
--

INSERT INTO `video_m` (`id_video`, `judul_video`, `keterangan`, `sumber`, `video_file`, `video_image`, `video_embed`, `tipe`, `judul_english`, `keterangan_english`) VALUES
(12, 'MINYAK SAWIT INDONESIA - ARI LASSO FEAT AUDY SAWIT', 'MINYAK SAWIT INDONESIA - ARI LASSO FEAT AUDY SAWIT\n                    ', 'Youtube', NULL, '12.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7SipSK6Ff7E" frameborder="0" allowfullscreen></iframe>  ', 'embed', 'PALM OIL INDONESIA - ARI LASSO FEAT AUDY SAWIT', 'PALM OIL INDONESIA - ARI LASSO FEAT AUDY SAWIT\n                    '),
(13, 'a', '                    a\r\n                    ', 'a', '13_20051210-w50s.flv', '13.jpg', NULL, 'upload', 'a', '                    a\r\n                    ');

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
 ADD PRIMARY KEY (`id_asosiasi`);

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
-- Indexes for table `iklan_m`
--
ALTER TABLE `iklan_m`
 ADD PRIMARY KEY (`id_iklan`);

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
-- Indexes for table `sub_katharga_m`
--
ALTER TABLE `sub_katharga_m`
 ADD PRIMARY KEY (`id_sub_katharga`), ADD KEY `id_katharga` (`id_katharga`), ADD KEY `id_katharga_2` (`id_katharga`), ADD KEY `id_katharga_3` (`id_katharga`);

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
MODIFY `id_agenda` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `album_m`
--
ALTER TABLE `album_m`
MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
MODIFY `id_berita` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
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
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `harga_m`
--
ALTER TABLE `harga_m`
MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `iklan_m`
--
ALTER TABLE `iklan_m`
MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `informasi_m`
--
ALTER TABLE `informasi_m`
MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `kategori_m`
--
ALTER TABLE `kategori_m`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `katharga_m`
--
ALTER TABLE `katharga_m`
MODIFY `id_katharga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id_info` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `program_m`
--
ALTER TABLE `program_m`
MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registrasi_m`
--
ALTER TABLE `registrasi_m`
MODIFY `id_registrasi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regulasi_m`
--
ALTER TABLE `regulasi_m`
MODIFY `id_regulasi` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id_sponsor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
-- AUTO_INCREMENT for table `sub_katharga_m`
--
ALTER TABLE `sub_katharga_m`
MODIFY `id_sub_katharga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id_nav` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT for table `sys_user_login_t`
--
ALTER TABLE `sys_user_login_t`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1173;
--
-- AUTO_INCREMENT for table `sys_user_m`
--
ALTER TABLE `sys_user_m`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `video_m`
--
ALTER TABLE `video_m`
MODIFY `id_video` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `spt_propinsi_m`
--
ALTER TABLE `spt_propinsi_m`
ADD CONSTRAINT `FK_spt_propinsi_m` FOREIGN KEY (`id_negara`) REFERENCES `spt_negara_m` (`id_negara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_katharga_m`
--
ALTER TABLE `sub_katharga_m`
ADD CONSTRAINT `sub_katharga_m_ibfk_1` FOREIGN KEY (`id_katharga`) REFERENCES `katharga_m` (`id_katharga`) ON DELETE CASCADE ON UPDATE CASCADE;

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
