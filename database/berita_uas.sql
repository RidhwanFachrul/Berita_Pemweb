-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2024 at 03:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seotitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `seotitle`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Makanan', 'makanan', 'Yes', '2024-06-14 07:37:45', '2024-06-14 07:37:45'),
(3, 'Olahraga', 'olahraga', 'Yes', '2024-06-14 23:31:48', '2024-06-14 23:31:48'),
(5, 'Elektronik', 'elektronik', 'Yes', '2024-06-14 23:32:11', '2024-06-14 23:32:11'),
(7, 'Keagamaan', 'keagamaan', 'Yes', '2024-06-14 23:32:34', '2024-06-14 23:32:34'),
(8, 'Politik', 'politik', 'Yes', '2024-06-14 23:32:43', '2024-06-14 23:32:43'),
(10, 'Fashion', 'fashion', 'Yes', '2024-06-15 07:31:07', '2024-06-15 07:31:07'),
(12, 'kiw', 'kiw', 'Yes', '2024-06-15 08:41:54', '2024-06-15 08:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(5, 5, 3, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 2, 10, NULL, NULL),
(8, 7, 8, NULL, NULL),
(9, 8, 5, NULL, NULL),
(10, 9, 7, NULL, NULL),
(11, 10, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_06_12_012817_create_users_table', 1),
(5, '2024_06_12_012843_create_categories_table', 1),
(6, '2024_06_12_012859_create_posts_table', 1),
(7, '2024_06_12_013121_create_category_post_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seotitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noimage.jpg',
  `hits` int NOT NULL DEFAULT '0',
  `active` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `seotitle`, `user_id`, `content`, `image`, `hits`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ronaldo Pemain tersukses Abad Ini', 'ronaldo-pemain-tersukses-abad-ini', 3, 'Cristiano Ronaldo dinobatkan sebagai pemain abad ini di Anugerah Globe Soccer di Dubai pada Ahad, lapor Agensi Anadolu.\r\n\r\nMengalahkan Leo Messi dari Barcelona dan pemain Liverpool, Mohamed Salah, Ronaldo terpilih pemain terbaik abad ke-21 oleh 23 juri, termasuk jurulatih dan bekas pemain serta undian peminat dari seluruh dunia.\r\n\r\n\"CRISTIANO RONALDO dinobatkan PEMAIN ABAD 2001-2020 Anugerah Globe Soccer,\" kata Dubai Global Soccer Awards di Twitter.\r\n\r\nPemenang lima kali Liga Juara-Juara UEFA (empat bersama Real Madrid, satu bersama Man United) memimpin pasukan kebangsaan Portugal memenangi gelaran utama pertama mereka, UEFA EURO 2016.\r\n\r\nRonaldo, yang juga kapten Portugal, menjaringkan 102 gol untuk negaranya.\r\n\r\nADS\r\nBeliau merangkul gelaran Liga Perdana Inggeris bersama The Red Devils selama tiga tahun berturut-turut (2007, 2008 dan 2009).\r\n\r\nBersama Juventus sejak 2018, Ronaldo menjadi juara Itali dua kali ketika menjaringkan 81 gol dalam 103 perlawanan untuk kelab Itali itu.\r\n\r\nBintang sensasi itu turut meraih dua anugerah Pemain Lelaki Terbaik FIFA, lima anugerah Ballon d\'Or, dan tiga kali dipilih sebagai pemain terbaik UEFA di Eropah.\r\n\r\nDalam acara sama, Real Madrid dinobatkan sebagai Club of the Century, sementara pengurus Manchester City Pep Guardiola memenangi gelaran Coach of the Century dan penyerang Bayern Munich, Robert Lewandowski menjadi Pemain Terbaik Tahun 2020.', '666d587488054.jpeg', 4, 'Yes', 'publish', '2024-06-14 23:34:46', '2024-06-15 08:11:13'),
(2, 'Impor pakaian bekas ilegal’', 'impor-pakaian-bekas-ilegal', 3, 'Masih diminati oleh masyarakat karena harga yang murah,” ujar Plt. Direktur Jenderal Perdagangan Luar Negeri Kementerian Perdagangan, Veri Anggrijono melalui sambungan telepon, Senin (29/8).\r\n\r\nVeri tidak menyebut barang bermerek sebagai daya tarik, tapi kenyataan di lapangan mengukuhkan anggapan itu. Seperti yang diakui oleh Rukiahati Ginting, mantan pedagang Pasar Cimol. \r\n\r\n“Karena kita itu gila branded dan gila akan barang luar negeri. Imej kita barang luar lebih bagus, jadi laku saja. Bahkan, kadang yang sudah sobek mau juga dibeli, asal mereknya bagus,” kata perempuan yang akrab dipanggil Yati ini.\r\n\r\nPakaian bekas yang kualitasnya hanya 35% dari versi barunya, ujar Yati, “Katakanlah merek Levi’s, tetap laku.”Mengacu pada data Badan Pusat Statistik (BPS), volume dan nilai impor pakaian bekas ke Indonesia relatif meningkat setiap tahunnya dan memuncak pada 2019. Di tahun tersebut, impor pakaian bekas mencapai volume 392 ton dengan nilai US $6,08 juta. \r\n\r\nPada 2021, BPS mencatat impor pakaian bekas Indonesia hanya delapan ton dengan nilai US $44 ribu dengan pos tarif HS 6309 (worn clothing and other worn articles/pakaian bekas dan produk bekas lainnya).\r\n\r\nNamun menurut situs Trade Map, seperti dilaporkan oleh Kompas, data ekspor baju bekas yang dicatat negara eksportir menunjukkan, sepanjang 2021, ada 27.420 ton baju bekas yang diimpor Indonesia dengan nilai total US $31,95 juta. \r\n\r\nPerbedaan angka ini menimbulkan kecurigaan banyaknya pakaian bekas yang masuk Indonesia melalui jalur ilegal.', '666d9bde23d83.jpeg', 0, 'Yes', 'publish', '2024-06-15 02:08:54', '2024-06-15 06:49:18'),
(5, 'Messi Goat Ke 2', 'messi-goat-ke-2', 3, 'Persaingan Messi–Ronaldo, atau persaingan Ronaldo–Messi, adalah persaingan olahraga dalam sepak bola yang didorong oleh media dan penggemar yang melibatkan pesepak bola Argentina Lionel Messi dan pesepak bola Portugal Cristiano Ronaldo, terutama karena sezaman dan karena rekor dan kesuksesan olahraga mereka yang serupa.[1] Bersama-sama mereka telah mencapai berbagai tonggak sejarah dalam olahraga, datang untuk dianggap sebagai dua pemain terbaik sepanjang masa. Mereka adalah dua dari pesepak bola yang paling sukses, setelah memenangkan 71 trofi utama (Messi 37, Ronaldo 34) selama karir senior mereka sejauh ini, dan secara teratur menembus batas 50 gol dalam satu musim. Mereka termasuk di antara delapan pemain yang masing-masing mencetak lebih dari 700 gol dalam karir mereka untuk klub dan negara. Ronaldo memegang rekor gol resmi terbanyak dalam kariernya.\r\n\r\nWartawan dan pakar secara teratur memperdebatkan manfaat individu dari kedua pemain dalam upaya untuk menetapkan siapa yang mereka yakini sebagai pemain terbaik di sepak bola modern atau yang pernah ada. Terlepas dari preferensi, kritikus sepak bola umumnya setuju bahwa mereka berdua adalah pemain terbaik dari generasi mereka, melebihi jumlah rekan-rekan mereka dengan selisih yang signifikan. Ronaldo telah menerima pujian untuk atribut fisiknya, keterampilan mencetak gol, kepemimpinan dan kinerja di bawah tekanan, sementara Messi dipuji karena kombinasi dribbling, playmaking, passing, dan mencetak golnya.[2] Ini telah dibandingkan dengan persaingan olahraga global masa lalu seperti persaingan Muhammad Ali–Joe Frazier dalam tinju dan persaingan Roger Federer–Rafael Nadal dan persaingan Björn Borg–John McEnroe dalam tenis. Beberapa komentator memilih untuk menganalisis perbedaan fisik dan gaya bermain keduanya, sementara bagian dari perdebatan berkisar pada kepribadian yang kontras dari kedua pemain; Ronaldo terkadang digambarkan sebagai seseorang yang memiliki karakter temperamental, sedangkan Messi dianggap memiliki karakter yang lebih pendiam.', '666d9695bbd3f.jpg', 0, 'Yes', 'publish', '2024-06-15 06:26:45', '2024-06-15 06:26:45'),
(6, 'Ini Dia Resep Gulai Kambing', 'ini-dia-resep-gulai-kambing', 3, 'GULAI kambing merupakan salah satu makanan Indonesia yang banyak disukai oleh masyarakat.\r\n\r\nHal ini karena makanan gulai kambing memiliki cita rasa yang enak dan gurih, tak heran banyak yang menyukai makanan ini, terutama pada saat lebaran Idul Adha.\r\n\r\nDilansir dari akun YouTube Ade Koerniawan pada Sabtu (15/6), berikut ini merupakan bahan-bahan dan cara untuk membuat gulai kambing yang enak dan mudah dibuat di rumah.\r\nBahan untuk membuat bumbu halus:\r\n\r\n10 siung bawang merah\r\n6 siung bawang putih\r\n6 buah kemiri\r\n1 sdt ketumbar\r\n1 ruas jempol jahe\r\n1 ruas jari kunyit bakar\r\n2 buah cabe rawit\r\n1/2 sdt bubuk kari\r\nBahan lainnya:\r\n\r\n1/2 bongkah gula jawa\r\n1 buah tomat\r\n2 lembar daun jeruk\r\n1 ruas jempol lengkuas\r\n3 lembar daun salam\r\n1 batang sereh\r\n4 sdm santan kental yang dibagi 2 bagian, yaitu 2 sdm untuk masuk presto dan 2 sdm di akhir\r\n1 sdm kecap manis\r\n2 lt air\r\n1/2-1 sdm garam\r\n1 sdm kaldu jamur\r\n1/2 sdt lada putih bubuk\r\nCara untuk membuat:\r\n\r\nDidihkan air dan potong-potong daging kambing. Lalu masukkan daging kambing ke dalam panci\r\nMasukkan garam ke dalam presto dan diamkan selama 30 menit hingga 1 jam\r\nUntuk membuat bumbu halus, potong-potong  bawang merah, bawang putih, cabe rawit, jahe, kunyit dan tomat\r\nLalu siapkan panci dan tuang minyak, masukkan bawang merah, bawang putih, tomat, jahe, kunyit dan bubuk kari. Sisihkan dan masukkan ke dalam blender\r\nTuang air dan blender bumbu hingga halus. Lalu masukkan ke dalam panci dan tumis bumbu\r\nMasukkan lengkuas, sereh, daun salam, daun jeruk ke dalam panci bersama dengan bumbu halus. Tumis hingga matang\r\nSetelah itu, matikan kompor dan tuang bumbu ke dalam presto yang berisi daging kambing. Lalu aduk hingga merata\r\nKemudian masukkan kaldu jamur, garam, dan aduk kembali hingga merata\r\nMasukkan gula merah dan santan. Aduk hingga merata dan diamkan selama 1 jam\r\nLalu buka tutup presto dan tuang sedikit santan ke dalam gulai kambing sambil diaduk dan sisihkan ke dalam wadah\r\nGulai kambing siap disajikan', '666da6da0b7a0.jpeg', 1, 'Yes', 'publish', '2024-06-15 07:36:10', '2024-06-15 08:10:11'),
(7, 'Prabowo-Gibran Menang dari Amin dan Ganjar', 'prabowo-gibran-menang-dari-amin-dan-ganjar', 3, 'Hal tersebut diperoleh dari pembaruan data hasil rekapitulasi suara tingkat nasional, yang digelar KPU RI di kantornya, Jalan Imam Bonjol, Menteng, Jakarta Pusat, Jumat (15/3).\r\n\r\nDari segi total perolehan suara, pasangan Pabowo-Gibran memperoleh 67.389.556 suara. Sementara, pasangan nomor urut 1 Anies Baswedan-Muhaimin Iskandar mengantongi 26.139.917 suara. Adapun pasangan nomor urut 3 Ganjar Pranowo-Mahfud MD mendapat 21.188.651 suara.\r\n\r\nJika dirinci, perolehan suara Prabowo-Gibran unggul dari Anies-Muhaimin dan Ganjar-Mahfud di 25 provinsi. Sementara sisanya, yaitu 2 provinsi dimenangkan Anies-Muhaimin. Adapun Ganjar-Mahfud tidak menang di 27 provinsi yang selesai direkapitulasi KPU RI.\r\n\r\nBerikut ini rincian perolehan suara 3 pasangan capres-cawapres di 27 provinsi yang selesai dilakukan rekapitulasi suara di tingkat nasional:\r\n\r\n*Daerah Istimewa Yogyakarta*\r\n1. Anies-Muhaimin: 496.280\r\n2. Prabowo-Gibran: 1.269.265\r\n3. Ganjar-Mahfud: 741.220 (suara)\r\n\r\n*Gorontalo*\r\n1. Anies-Muhaimin: 227.354\r\n2. Prabowo-Gibran: 504.662\r\n3. Ganjar-Mahfud:  41.508\r\n\r\n*Kalimantan Tengah*\r\n1. Anies-Muhaimin: 256.811\r\n2. Prabowo-Gibran: 1.097.070\r\n3. Ganjar-Mahfud: 158.788\r\n\r\n*Bali*\r\n1. Anies-Muhaimin: 99.233\r\n2. Prabowo-Gibran: 1.454.640\r\n3. Ganjar-Mahfud: 1.127.134\r\n\r\n*Sumatera Selatan*\r\n1. Anies-Muhaimin: 997.299\r\n2. Prabowo-Gibran: 3.649.651\r\n3. Ganjar-Mahfud: 606.681\r\n\r\n*Lampung*\r\n1. Anies-Muhaimin: 791.892\r\n2. Prabowo-Gibran: 3.554.310\r\n3. Ganjar-Mahfud: 764.486\r\n\r\n*Jawa Tengah*\r\n1. Anies-Muhaimin: 2.866.373\r\n2. Prabowo-Gibran: 12.096.454\r\n3. Ganjar-Mahfud: 7.827.335.\r\n\r\n*DKI Jakarta*\r\n1. Anies-Muhaimin: 2.653.762\r\n2. Prabowo-Gibran: 2.692.011\r\n3. Ganjar-Mahfud: 1.115.138\r\n\r\n*Kepulauan Riau*\r\n1. Anies-Muhaimin: 370.671\r\n2. Prabowo-Gibran: 641.388\r\n3. Ganjar-Mahfud: 140.733\r\n\r\n*Nusa Tenggara Timur*\r\n1. Anies-Muhaimin: 153.446\r\n2. Prabowo-Gibran: 1.798.753\r\n3. Ganjar-Mahfud: 958.505\r\n\r\n*Kalimantan Utara*\r\n1. Anies-Muhaimin: 72.065\r\n2. Prabowo-Gibran: 284.209\r\n3. Ganjar-Mahfud: 51.451\r\n\r\n*Kalimantan Selatan*\r\n1. Anies-Muhaimin: 849.948\r\n2. Prabowo-Gibran: 1.407.684\r\n3. Ganjar-Mahfud: 159.950\r\n\r\n*Banten*\r\n1. Anies-Muhaimin: 2.451.383\r\n2. Prabowo-Gibran: 4.035.052\r\n3. Ganjar-Mahfud: 720.275\r\n\r\n*Kalimantan Timur*\r\n1. Anies-Muhaimin: 448.046\r\n2. Prabowo-Gibran: 1.542.346\r\n3. Ganjar-Mahfud: 240.143\r\n\r\n*Sulawesi Tenggara*\r\n1. Anies-Muhaimin: 361.585\r\n2. Prabowo-Gibran: 1.113.344\r\n3. Ganjar-Mahfud: 90.727\r\n\r\n*Jawa Timur*\r\n1. Anies-Muhaimin: 4.492.652\r\n2. Prabowo-Gibran: 16.716.603\r\n3. Ganjar-Mahfud: 4.434.805.\r\n\r\n*Sulawesi Barat*\r\n1. Anies-Muhaimin: 223.153\r\n2. Prabowo-Gibran: 533.757\r\n3. Ganjar-Mahfud: 62.514\r\n\r\n*Riau*\r\n1. Anies-Muhaimin: 1.400.093\r\n2. Prabowo-Gibran: 1.931.113\r\n3. Ganjar-Mahfud: 357.298\r\n\r\n*Papua Barat*\r\n1. Anies-Muhaimin: 37.459\r\n2. Prabowo-Gibran: 172.965\r\n3. Ganjar-Mahfud: 120.565\r\n\r\n*Sulawesi Utara*\r\n1. Anies-Muhaimin: 119.103\r\n2. Prabowo-Gibran: 1.229.069\r\n3. Ganjar-Mahfud: 283.796\r\n\r\n*Bengkulu*\r\n1. Anies-Muhaimin: 229.681\r\n2. Prabowo-Gibran: 893.499\r\n3. Ganjar-Mahfud: 145.570\r\n\r\n*Sumatera Barat*\r\n1. Anies-Muhaimin: 1.744.042\r\n2. Prabowo-Gibran: 1.217.314\r\n3. Ganjar-Mahfud: 124.044.\r\n\r\n*Sulawesi Selatan*\r\n1. Anies-Muhaimin: 2.003.081\r\n2. Prabowo-Gibran: 3.010.726\r\n3. Ganjar-Mahfud: 265.948\r\n\r\n*Aceh*\r\n1. Anies-Muhaimin: 2.369.534\r\n2. Prabowo-Gibran: 787.024\r\n3. Ganjar-Mahfud: 64.677\r\n\r\n*Nusa Tenggara Barat*\r\n1. Anies-Muhaimin: 850.359\r\n2. Prabowo-Gibran: 2.154.843\r\n3. Ganjar-Mahfud: 241.106.\r\n\r\n*Papua Selatan*\r\n1. Anies-Muhaimin: 41.906\r\n2. Prabowo-Gibran: 162.852\r\n3. Ganjar-Mahfud: 110.003', '666da7f117906.jpeg', 0, 'Yes', 'publish', '2024-06-15 07:40:49', '2024-06-15 07:49:24'),
(8, 'Website berita terpercaya', 'website-berita-terpercaya', 3, 'Salah satu cara untuk mengetahui portal berita online terbaik di Indonesia adalah dengan melihat peringkatnya di mesin pencari seperti Google. \r\n\r\nPeringkat ini dapat mencerminkan tingkat popularitas, kredibilitas serta pengunjung suatu portal berita online.\r\n\r\nKali ini kami akan membahas 15 portal berita online teratas Indonesia yang bisa jadi pertimbangkan Anda untuk menerbitkan publikasi di media.', '666da8d312fbc.jpeg', 0, 'Yes', 'publish', '2024-06-15 07:44:35', '2024-06-15 07:44:35'),
(9, 'Ormas Selain NU Tolak Ajukan Konsesi Tambang,', 'ormas-selain-nu-tolak-ajukan-konsesi-tambang', 3, 'Menteri Investasi/Kepala Badan Koordinasi Penanaman Modal (BKPM) Bahlil Lahadalia mengaku tidak ingin memaksa organisasi kemasyarakatan (ormas) yang menolak mengelola pertambangan. Sejauh ini, baru Pengurus Besar Nahdlatul Ulama (PBNU) yang sudah mendaftar untuk mendapat izin konsesi tambang. Bahlil pun mengaku akan mensosialisasikan Peraturan Pemerintah (PP) Nomor 25 Tahun 2024 tentang Pelaksanaan Kegiatan Usaha Pertambangan Mineral dan Batubara yang mengatur soal konsesi tambang tersebut. \"Nanti dilihat kalau misalnya katakanlah setelah mereka tahu isinya, tujuannya, dan mau menerima, Alhamdulillah kan. Kalau enggak, ya kita enggak boleh memaksa kan,\" kata Bahlil di Kompleks Istana Kepresidenan, Jakarta Pusat, Senin (10/6/2024).', '666da9641db4d.jpg', 0, 'Yes', 'publish', '2024-06-15 07:47:00', '2024-06-15 07:47:00'),
(10, 'amakanak', 'amakanak', 3, 'amamamamam', '666da98cb1b05.jpg', 0, 'No', 'draft', '2024-06-15 07:47:40', '2024-06-15 07:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','pengelola') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pengelola',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ridhwan', 'admin@gmail.com', NULL, '$2y$10$KgFasFNSG69Kl4GgRkeHieYO61cGngxpybGqxC3d/bi9WsPZHhnoW', 'pengelola', NULL, '2024-06-14 05:38:44', '2024-06-14 05:38:44'),
(2, 'Arief', 'arief@gmail.com', NULL, '$2y$10$JdxGIFCORZEnRoVtKnzTluExeM06ZZp2s9pHW3.5rx0IQetiB1sKe', 'admin', NULL, '2024-06-14 07:34:41', '2024-06-14 07:34:41'),
(3, 'Admin', 'admin@example.com', NULL, '$2y$10$31wlwQbW7xcVZdPHI/esJuAEr7mFibb8lsIWDA316dqW5xO3Dr3nm', 'admin', NULL, '2024-06-14 23:21:35', '2024-06-14 23:21:35'),
(4, 'Fachrul', 'fachrul@gmail.com', NULL, '$2y$10$p7mR6ze4lAFYw2MDii2wresmLu41ZEw83GROpw6O7v44eOXezM2D2', 'pengelola', NULL, '2024-06-15 02:04:38', '2024-06-15 02:04:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
