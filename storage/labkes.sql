/*
 Navicat Premium Data Transfer

 Source Server         : db-master
 Source Server Type    : MySQL
 Source Server Version : 100206
 Source Host           : localhost:3306
 Source Schema         : labkes

 Target Server Type    : MySQL
 Target Server Version : 100206
 File Encoding         : 65001

 Date: 27/09/2024 11:18:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for berita_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `berita_kegiatan`;
CREATE TABLE `berita_kegiatan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` smallint NOT NULL,
  `foto_utama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `pembuat` smallint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of berita_kegiatan
-- ----------------------------
INSERT INTO `berita_kegiatan` VALUES (10, 'Pelaksanaan pelayanan kesehatan di posyandu Balita', '<p>Pelayanan kesehatan di posyandu Balita merupakan kegiatan rutin setiap bulan dengan jadwal yang telah ditetapkan bersama dengan kelurahan, kader dan masyarakat sekitarnya. Kegiatan posyandu berfungsi sebagai tempat melakukan pemantauan tumbuh kembang balita serta dapat mengantisipasi masalah gizi pada anak (Stunting, Gizi Buruk, Gizi kurang) maupun masalah perkembangannya apabila ditemukan.</p>', 47, 'berita-kegiatan/2yJwIP4cY2i5yFq9wiPiSEINrZn26aQgIlZBiABJ.png', '2023-02-06', 1, '2024-09-25 01:34:51', '2023-06-27 03:41:58', '2024-09-25 01:34:51');
INSERT INTO `berita_kegiatan` VALUES (11, 'Pos Pengukuran Tekanan Darah', '<p>Pos pengukuran tekanan darah merupakan program inovasi puskesmas guguk panjang dalam upaya meningkatkan cakupan pelayanan pasien penderita hipertensi agar pasien memeriksa tekanan darah nya secara teraturoke</p>', 47, 'berita-kegiatan/GExokrDJ0cKFj4aDxP1i97czrJ2PP6An5XB4VWLL.jpg', '2023-03-15', 1, NULL, '2023-06-27 03:47:18', '2024-09-25 01:45:49');
INSERT INTO `berita_kegiatan` VALUES (12, 'Senam Prolanis Dalam Rangka HUT BPJS', '<p>Dalam rangka merayakan HUT BPJS Tahun 2023, pada hari Sabtu tanggal 15 Juli 2023, Puskesmas Guguk Panjang melakukan kegiatan senam bersama prolanis dan pemeriksaan kesehatan berupa pemeriksaan tekanan darah, pemeriksaan gula darah, pemeriksaan Hba1c, pemeriksaan kolesterol total serta pemeriksaan urine rutin. Dalam kegiatan ini dihadiri oleh 35 anggota prolanis. Kegiatan ini bertujuan untuk skrinning dini Penyakit Tidak Menular. Untuk pemeriksaan kesehatan ini bekerja sama dengan Laboratorium Klinik Prodia. Kegiatan diawali dengan senam bersama di halaman Puskesmas Guguk Panjang, setelah senam selesai dilanjutkan dengan melakukan pemeriksaan kesehatan yang dilakukan oleh petugas Puskesmas Guguk Panjang dan petugas Laboratorium Klinik Prodia.</p>\r\n\r\n<p>&nbsp;</p>', 47, 'berita-kegiatan/IGKPDurvw6OuSEfIBuWqRA8I3uqvgcuacWJyb0G7.jpg', '2023-07-15', 1, NULL, '2023-07-20 06:16:44', '2024-09-25 01:51:06');
INSERT INTO `berita_kegiatan` VALUES (13, 'Pelatihan Tim Pelaksana Dalam Penyiapan Pemberian Makanan Tambahan (PMT) Berbasis Pangan Lokal', '<p>&nbsp;Kegiatan Pelatihan Tim Pelaksana Dalam Penyiapan Pemberian Makanan Tambahan Berbasis Pangan Lokal yang terdiri dari 2 angkatan. Kegiatan ini dilaksanakan pada tanggal 21-24 Agustus 2023. Pemberian Makanan Tambahan (PMT) berbahan pangan lokal merupakan salah satu strategi penanganan masalah gizi pada balita dan ibu kegiatan ini bertujuan untuk meningkatkan keterampilan tim pelaksana/ kader dalam penyiapan pemberian makanan tambahan berbasis pangan lokal bagi ibu hamil KEK dan balita yang memiliki masalah gizi di wilayah kerja</p>', 47, 'berita-kegiatan/CvE2U3hocLMEHFT0clICmcmaN51RY7P8yugTnyIO.jpg', '2023-08-21', 1, '2024-09-25 01:35:01', '2023-09-18 06:31:17', '2024-09-25 01:35:01');
INSERT INTO `berita_kegiatan` VALUES (14, 'Skirining Anak Baru Masuk Sekolah (ABMS)', '<p>Puskesmas Guguk Panjang telah menyelenggarakan kegiatan Skrining Anak Baru Masuk Sekolah (ABMS) pada tanggal 1 Agustus - 12 September 2023, kegiatan tersebut meliputi pemeriksaan mata, telinga, gigi, rambut, kuku, berat badan, tinggi badan dan pemeriksaan glukosa darah pada seluruh siswa baru dan terkhusus remaja putri dilakukan pemeriksaan hemoglobin (Hb) yang bertujuan untuk skrining remaja putri yang mengalami anemia.</p>\r\n\r\n<p>Kegiatan skrining Anak Baru Masuk Sekolah (ABMS) bertujuan untuk memastikan kesehatan siswa baru untuk mendukung kegiatan belajar yang kondusif dan menciptakan generasi yang sehat dan cerdas di masa depan</p>', 41, 'berita-kegiatan/CDw72fS9y206kzoojNalrVlwLBD5eomuC4DgdSBG.jpg', '2023-08-01', 2, '2024-09-25 01:33:31', '2023-09-18 07:03:25', '2024-09-25 01:33:31');
INSERT INTO `berita_kegiatan` VALUES (15, 'tes dulu', '<p>tes lagi tes lagi tes lagi tes lagi tes lagi tes lagi tes lagites lagi</p>\r\n\r\n<p>tes lagi tes lagi tes lagi tes lagi</p>', 0, 'berita-kegiatan/RIQlso8Ep5ZLaI8ldKWl6YQNiUWeqHQEf7ni0rbR.png', '2024-09-25', 1, NULL, '2024-09-25 01:51:44', '2024-09-25 01:51:44');

-- ----------------------------
-- Table structure for capaian_kerja
-- ----------------------------
DROP TABLE IF EXISTS `capaian_kerja`;
CREATE TABLE `capaian_kerja`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of capaian_kerja
-- ----------------------------
INSERT INTO `capaian_kerja` VALUES (1, '', 'document/sHqy0eBPVkanfSZquJOFxFATKRpG0Do4bmr9L5cY.pdf', '2024-09-19 07:37:31', '2024-09-19 07:10:33', '2024-09-19 07:37:31');
INSERT INTO `capaian_kerja` VALUES (2, '', 'document/ph83XiwVKSEHhjaR0vqCneqBQvCajQdysWdGSzPc.pdf', '2024-09-19 07:39:58', '2024-09-19 07:37:26', '2024-09-19 07:39:58');
INSERT INTO `capaian_kerja` VALUES (3, 'test', 'document/a0fIzqcM5nHEpLOuRqEJZnp2FbAo1W3rZwjXHEIQ.pdf', NULL, '2024-09-19 07:39:53', '2024-09-19 07:39:53');
INSERT INTO `capaian_kerja` VALUES (4, 'tesd', 'document/fHQ5me98LL6jw88WAbTiqlnsBmOAwiFMWKacsLSn.pdf', '2024-09-25 02:53:46', '2024-09-19 07:44:13', '2024-09-25 02:53:46');

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of document
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES (1, 'test faq', 'faq/40dyuwsLoBHP44lPCOaPcD2qB0QbEGCtExzZXuJB.pdf', NULL, '2024-09-23 02:09:36', '2024-09-23 02:09:36');

-- ----------------------------
-- Table structure for kategori_standar_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `kategori_standar_pelayanan`;
CREATE TABLE `kategori_standar_pelayanan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori_standar_pelayanan
-- ----------------------------
INSERT INTO `kategori_standar_pelayanan` VALUES (2, 'Standar Pelayanan Pendaftaran dan Rekam Medis', '2023-07-26 01:38:43', '2023-07-26 01:38:43');
INSERT INTO `kategori_standar_pelayanan` VALUES (3, 'Standar Pelayanan Ruang Tindakan dan Gawat Darurat', '2023-07-26 02:00:09', '2023-07-26 02:00:09');
INSERT INTO `kategori_standar_pelayanan` VALUES (4, 'Standar Pelayanan Ruang Pemeriksaan Umum', '2023-07-26 03:15:48', '2023-07-26 03:15:48');
INSERT INTO `kategori_standar_pelayanan` VALUES (5, 'Standar Pelayanan Ruang PTM dan Lansia', '2023-07-26 03:16:27', '2023-07-26 03:16:27');
INSERT INTO `kategori_standar_pelayanan` VALUES (6, 'Standar Pelayanan Ruang Kesehatan Anak', '2023-07-26 03:16:50', '2023-07-26 03:16:50');
INSERT INTO `kategori_standar_pelayanan` VALUES (7, 'Standar Pelayanan Ruang Kesehatan Ibu dan Reproduksi', '2023-07-26 03:17:32', '2023-07-26 03:17:32');
INSERT INTO `kategori_standar_pelayanan` VALUES (8, 'Standar Pelayanan Ruang Pemeriksaan IMS dan VCT', '2023-07-26 03:18:15', '2023-07-26 03:18:15');
INSERT INTO `kategori_standar_pelayanan` VALUES (9, 'Standar Pelayanan Ruang Institusi Penerima Wajib Lapor', '2023-07-26 03:18:58', '2023-07-26 03:18:58');
INSERT INTO `kategori_standar_pelayanan` VALUES (10, 'Standar Pelayanan Ruang Konsultasi Sanitasi', '2023-07-26 03:19:27', '2023-07-26 03:19:27');
INSERT INTO `kategori_standar_pelayanan` VALUES (11, 'Standar Pelayanan Klinik Gizi', '2023-07-26 03:20:01', '2023-07-26 03:20:01');
INSERT INTO `kategori_standar_pelayanan` VALUES (12, 'Standar Pelayanan Ruang Kesehatan Gigi dan Mulut', '2023-07-26 03:21:06', '2023-07-26 03:21:06');
INSERT INTO `kategori_standar_pelayanan` VALUES (13, 'Standar Pelayanan Kefarmasian', '2023-07-26 03:21:32', '2023-07-26 03:21:32');
INSERT INTO `kategori_standar_pelayanan` VALUES (14, 'Standar Pelayanan Laboratorium', '2023-07-26 03:21:51', '2023-07-26 03:21:51');
INSERT INTO `kategori_standar_pelayanan` VALUES (15, 'Standar Pelayanan Imunisasi', '2023-07-26 03:22:37', '2023-07-26 03:22:37');
INSERT INTO `kategori_standar_pelayanan` VALUES (16, 'Standar Pelayanan TB', '2023-07-26 03:22:59', '2023-07-26 03:22:59');
INSERT INTO `kategori_standar_pelayanan` VALUES (17, 'Standar Pelayanan Upaya Berhenti Merokok', '2023-07-26 03:23:28', '2023-07-26 03:23:28');
INSERT INTO `kategori_standar_pelayanan` VALUES (18, 'Standar Pelayanan Humas/ Pengaduan', '2023-07-26 03:25:30', '2023-07-26 03:25:30');

-- ----------------------------
-- Table structure for kategory_layanan
-- ----------------------------
DROP TABLE IF EXISTS `kategory_layanan`;
CREATE TABLE `kategory_layanan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` smallint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategory_layanan
-- ----------------------------
INSERT INTO `kategory_layanan` VALUES (1, 'Upaya Kesehatan Perorangan (UKP)', 1, NULL, '2023-04-04 03:32:20', '2023-04-04 03:32:20');
INSERT INTO `kategory_layanan` VALUES (2, 'Upaya Kesehatan Masyarakat (UKM)', 2, NULL, '2023-04-04 03:32:20', '2023-04-04 03:32:20');
INSERT INTO `kategory_layanan` VALUES (3, 'Upaya Kesehatan Masyarakat Esensial ', 21, NULL, '2023-04-04 03:32:20', '2023-04-04 03:32:20');
INSERT INTO `kategory_layanan` VALUES (4, 'Upaya Kesehatan Masyarakat Pengembangan', 22, NULL, '2023-04-04 03:32:20', '2023-04-04 03:32:20');

-- ----------------------------
-- Table structure for lapor
-- ----------------------------
DROP TABLE IF EXISTS `lapor`;
CREATE TABLE `lapor`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lapor
-- ----------------------------
INSERT INTO `lapor` VALUES (1, 'lutri', 'lutri@gmail.com', 'test', 'test', '2024-09-25 03:01:42', '2024-09-25 03:01:42');

-- ----------------------------
-- Table structure for layanan_puskesmas
-- ----------------------------
DROP TABLE IF EXISTS `layanan_puskesmas`;
CREATE TABLE `layanan_puskesmas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_layanan_puskesmas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of layanan_puskesmas
-- ----------------------------
INSERT INTO `layanan_puskesmas` VALUES (1, 'Layanan Laboratorium', 'Layanan pendaftaran dan informasi merupakan alur layanan yang pertama di UPTD Puskesmas Guguk Panjang, sebelum pengunjung/pasien dilayani di poli layanan yang akan dituju. Pasien harus melakukan pendaftaran terlebih dahulu, pasien dapat melakukan pendaftaran secara online melalui mobile JKN atau offline langsung mendaftar di layanan pendaftaran Puskesmas. Untuk melakukan pendaftaran pasien cukup menyiapkan KTP atau kartu keluarga, Kartu BPJS, dan kartu berobat (bagi pasien lama).', 'layanan-puskesmas/My181IyQDt2hMGiZuemaiWPGf753FSezhUYHWTKr.png', '2023-07-03 09:19:26', '2024-09-25 02:39:58', NULL);
INSERT INTO `layanan_puskesmas` VALUES (2, 'tes labor', 'Layanan pendaftaran dan informasi merupakan alur layanan yang pertama di UPTD Puskesmas Guguk Panjang, sebelum pengunjung/pasien dilayani di poli layanan yang akan dituju. Pasien harus melakukan pendaftaran terlebih dahulu, pasien dapat melakukan pendaftaran secara online melalui mobile JKN atau offline langsung mendaftar di layanan pendaftaran Puskesmas. Untuk melakukan pendaftaran pasien cukup menyiapkan KTP atau kartu keluarga, Kartu BPJS, dan kartu berobat (bagi pasien lama).', 'layanan-puskesmas/MSFvPjR32LpzFvi5G1yPogNO4CFy6Xb3TQud4HmP.png', '2024-09-19 03:42:36', '2024-09-25 01:34:05', NULL);
INSERT INTO `layanan_puskesmas` VALUES (4, 'tes lagi', 'ertama di UPTD Puskesmas Guguk Panjang, sebelum pengunjung/pasien dilayani di poli layanan yang akan dituju. Pasien harus melakukan pendaftaran terlebih dahulu, pasien dapat melakukan pendaftaran secara online melalui mobile JKN atau offline langsung mendaftar di layanan pendaftaran Puskesmas. Untuk melakukan pendaftaran pasien cukup menyiapkan KTP atau kartu keluarga, Kartu BPJS, dan kartu berobat (bagi pasien lama).\r\nBaca Selengkapnya', 'layanan-puskesmas/OLbqR7Ky2mX2GBDXZqxXgnfouCP4Za1OU2Dc3JIT.png', '2024-09-19 03:49:30', '2024-09-25 01:34:23', NULL);

-- ----------------------------
-- Table structure for login_logs
-- ----------------------------
DROP TABLE IF EXISTS `login_logs`;
CREATE TABLE `login_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_logs
-- ----------------------------
INSERT INTO `login_logs` VALUES (1, 1, 'eyJpdiI6IkRSZnZNU1M4RWdLdzY1K2podzdaRHc9PSIsInZhbHVlIjoiY0tUYUZzaUFqQjNGQkRvNGtoQWNGdz09IiwibWFjIjoiOTY2MTZjNzk5OTI1OGYyN2FjMzY3NjAzODZhYTU2MTFhYWRkOTJjMDcwOTM5NzU1ZTAxODFkMTI0MGMxM2NlMCIsInRhZyI6IiJ9', 1, '2023-03-08 03:31:55', '2023-03-08 03:31:55', NULL);
INSERT INTO `login_logs` VALUES (2, 1, 'eyJpdiI6InZWQzNiOHRmdjhHbU1ObWlMZFo3eGc9PSIsInZhbHVlIjoiYW1NdjRhUmZkT2cweTlheTgwM1JZQT09IiwibWFjIjoiODg4NjY3YzQ5MThkMTk5YTg3MTZkMGE0YWM3OTY0YzM5ZWU2YzdiODY3ZTE0OWMyOTkxOTY0ZWY4MzNhYjYyYyIsInRhZyI6IiJ9', 1, '2023-03-08 03:34:33', '2023-03-08 03:34:33', NULL);
INSERT INTO `login_logs` VALUES (3, 1, 'eyJpdiI6IkFpOFhDLzZuU0VFTnZYMnFLTG1nRmc9PSIsInZhbHVlIjoibmFDTEVhbk16cnFIQ2doZkpLVEhNZz09IiwibWFjIjoiNDVlYTYyZTkxZjA5NDhkY2ZmNDE0MTdhZGU4Y2RhM2M5OTY2YWViMGUyODdkMjc1NDM5MzQxZmIwMDcyMmI3YyIsInRhZyI6IiJ9', 1, '2023-03-08 03:38:20', '2023-03-08 03:38:20', NULL);
INSERT INTO `login_logs` VALUES (4, 1, 'eyJpdiI6IkNJbEdOaDBZczZ3ZlRkeG9yYjQwNXc9PSIsInZhbHVlIjoiZnh1bEV3cEFjZHBGakR0c25OcHJpQT09IiwibWFjIjoiNTFlMmU3OGJkOGFlYzdiMjU0MTBkZWYwMGUwMzJlNTBjYTk4MjU0ZjY2YjA4OWVjNWQ0MDNlOWY2NzkyZjVjMyIsInRhZyI6IiJ9', 1, '2023-03-08 03:46:05', '2023-03-08 03:46:05', NULL);
INSERT INTO `login_logs` VALUES (5, 1, 'eyJpdiI6ImV5emx1emMyNTZONHdhRHpHM2dDaXc9PSIsInZhbHVlIjoiWXBpUk5FSjZES1hRTTNRUWhCeTR0Zz09IiwibWFjIjoiN2QxM2VjYzQxMjgxNzY5Mjg5MGQxOTczYjAwODQ0YzhlNjY4NDM5Nzg0ODYyMzA1MjA0ZGY1N2U1Yjg0NzY5ZiIsInRhZyI6IiJ9', 1, '2023-03-08 03:47:15', '2023-03-08 03:47:15', NULL);
INSERT INTO `login_logs` VALUES (6, 1, 'eyJpdiI6InRoQzVUV0N4bVF1NExUWDUvc1p0aVE9PSIsInZhbHVlIjoiblFNN3ZJRUpYeElyOCtPbHRzN3p2dz09IiwibWFjIjoiZDYzYzFiMWE5MTQxMzA3YTVkYzY0YWM1NzU1ZjE3ZWNmZTQ2ZWQzNmNiZjkwYjY3YTAwZWNmYzVkMGQxMjUyYSIsInRhZyI6IiJ9', 1, '2023-03-08 03:47:30', '2023-03-08 03:47:30', NULL);
INSERT INTO `login_logs` VALUES (7, 1, 'eyJpdiI6IkUvZVpxQ1RyRmRuN0p1WWxVRWVWalE9PSIsInZhbHVlIjoiSnhkcDVmaU1BR215YzFqZDJ1NWdFQT09IiwibWFjIjoiODgwNTJkZTRiNDQyMjJiODE1NjYzMTY1MzRhODE4MTNiY2E1ZTIwMmM2ODA4NWNiNGVmNDlkY2QxZGE0NDQ0NSIsInRhZyI6IiJ9', 0, '2023-03-08 04:16:22', '2023-03-08 04:20:45', NULL);
INSERT INTO `login_logs` VALUES (8, 1, 'eyJpdiI6Iks5ZEtlZzRpcHNSK2cyRkNNZUdQbXc9PSIsInZhbHVlIjoia3pzbDR3R01leXJDWjVYWkdpSWVvZz09IiwibWFjIjoiYmY3NDVlOGVlY2NjOTY4M2I5NWMwNzdhZTA1MzU5NWQ4ZTdkZDdkZDM3MTRlYTBmMDk2NzUzNmM0NjJmNGU5MSIsInRhZyI6IiJ9', 1, '2023-03-08 04:23:29', '2023-03-08 04:23:29', NULL);
INSERT INTO `login_logs` VALUES (9, 1, 'eyJpdiI6Imo4Q05YSlFpN0RsNTBDdFpJNFJwSHc9PSIsInZhbHVlIjoieWF3OUo4ZEVkVUtBa1NaWGdRZnJVQT09IiwibWFjIjoiZDUwNDZjMzE1ZmNmOWI5NTlkZmFkNzBjMDUzNzczYmY3NWQzNDJlZDZkYTRiMmVkNjJjOWY2ZWI0NmE3Mzg5ZiIsInRhZyI6IiJ9', 1, '2023-03-08 09:31:48', '2023-03-08 09:31:48', NULL);
INSERT INTO `login_logs` VALUES (10, 1, 'eyJpdiI6IjN2RFFuSjM4SnRLeXVRbnJNQnZuYUE9PSIsInZhbHVlIjoiaEZYK1kzcG0xWEx2VkpyRXZLOGxBQT09IiwibWFjIjoiMDJjODk3ZmNkYjE4NGZlMjc5ZjUxOGU1NzdiNTU3N2FmNjI2ZTI5MTQ1ZTU3NjZmMzdiN2YyNWFjODUwY2ZmOSIsInRhZyI6IiJ9', 1, '2023-03-09 01:17:34', '2023-03-09 01:17:34', NULL);
INSERT INTO `login_logs` VALUES (11, 1, 'eyJpdiI6IkRnTHV3WlZMRVVOczZ1MTZsaWtmTUE9PSIsInZhbHVlIjoiMHBpY2VWem84V2RuZnlGUXp0bnk1UT09IiwibWFjIjoiNmM3NmEwYTFlYTU5MGVmNjkwZTkzYmFlNDEwMWQwNWJkYTA3NmM1NGYzMzEwNWUyZTczZWZjOTA5YjBhOTYwZSIsInRhZyI6IiJ9', 1, '2023-03-09 01:24:14', '2023-03-09 01:24:14', NULL);
INSERT INTO `login_logs` VALUES (12, 1, 'eyJpdiI6IkZKNksxcVlkYzJrZHA2WmVoVEVKcEE9PSIsInZhbHVlIjoid1pTaE5uN3RCOUs1eCtqUU1XLzhYdz09IiwibWFjIjoiYmIxNDE5YmI1ZWIyZTJhMjBkY2JmOTM5NzE1MzZhZTg3NzMwNWQwZWU0NDMxMjRiNGM2NjUwMDI1NTEzZDUxOCIsInRhZyI6IiJ9', 1, '2023-03-09 01:26:23', '2023-03-09 01:26:23', NULL);
INSERT INTO `login_logs` VALUES (13, 1, 'eyJpdiI6InFybUo0MjdYMWFpZzZqYWpLMVVFYVE9PSIsInZhbHVlIjoiNnppNmVydHYvM0g1djdSUi9iUXJtQT09IiwibWFjIjoiMzczMDBjYzQ4ZGY5NmNhZGE2NzlmMzMwZmU5ZDhkNmU3MTkxNmJlNWEzZWFkMzk3YmIyZmQ3MmYwMDQ0ZjQ2ZCIsInRhZyI6IiJ9', 0, '2023-03-09 02:45:56', '2023-03-09 03:25:23', NULL);
INSERT INTO `login_logs` VALUES (14, 1, 'eyJpdiI6Im5DN0J3bFVhRWFPejJIeFBDTzNHdHc9PSIsInZhbHVlIjoiSmlJeHoyREM1S1RPdEVGdHROd0xZZz09IiwibWFjIjoiNDU4ZjUzZDAwNzZiYzJkMjA1OWZiNDFkMzE4MDBjNmJjYTJkZTZlY2JmOTlkY2M3YzE5ZmY2OGEyOTM1MmZiZiIsInRhZyI6IiJ9', 1, '2023-03-09 03:25:36', '2023-03-09 03:25:36', NULL);
INSERT INTO `login_logs` VALUES (15, 1, 'eyJpdiI6ImVvbVRNVU1IcnZEOXVLQ2JITmhJY3c9PSIsInZhbHVlIjoiaWx1UTF6V2MrOHFtRzJqWjRNWDBydz09IiwibWFjIjoiNjc5ZTliMTljMDg1N2NhMWU2MjNhZTY1NGY0OWY5NDk3ZjhmZGQzOWVlYzlkMWJmYjk0NzQzMWMxNWQ3NTM5OSIsInRhZyI6IiJ9', 1, '2023-03-09 03:26:02', '2023-03-09 03:26:02', NULL);
INSERT INTO `login_logs` VALUES (16, 1, 'eyJpdiI6Ikc0Y2w5bk5vOTE5NGxYaERjanFmZlE9PSIsInZhbHVlIjoibVJmak01bVFnUEpHWGdWbDFBNVJCZz09IiwibWFjIjoiMWUyYjliMDg3NGYxMzQ3ODA3MDAwMjRlNTVmNzYwODM3NTBkYTZhNTM5YmNkYjg5Mzc1OTY0YmUyZmI1NjllMyIsInRhZyI6IiJ9', 1, '2023-03-09 15:00:49', '2023-03-09 15:00:49', NULL);
INSERT INTO `login_logs` VALUES (17, 1, 'eyJpdiI6IlB1aHZtRVBaSzVoa1lOSnVGdXNXZVE9PSIsInZhbHVlIjoiREdmaWkyOTRobFlXcjk4NktiZFZsZz09IiwibWFjIjoiZjFlOGM5NGViYTViM2U1MWRmNGZlOGM5YmViMzdmOWJhYmMxNDExMWQ2MGUxNjI2Y2ZjZjJiNjdlOTYwM2IyYSIsInRhZyI6IiJ9', 0, '2023-03-10 01:29:22', '2023-03-10 01:49:26', NULL);
INSERT INTO `login_logs` VALUES (18, 1, 'eyJpdiI6Im5odnNDcEZsc2pZYXJYR09XbDlDQWc9PSIsInZhbHVlIjoiQUZsVUc3U3BDaHdvVkw3OVEvWE9EZz09IiwibWFjIjoiMzE4OTZhZGY5MTljNjU2M2VjZGQzOTNjNjg5ZTg5MzMzZjlhZGZmYjNkZDU2NjQxNzJhN2IzZjY0MGZjNTExOSIsInRhZyI6IiJ9', 1, '2023-03-10 01:49:35', '2023-03-10 01:49:35', NULL);
INSERT INTO `login_logs` VALUES (19, 1, 'eyJpdiI6InJIaW8xZDZWOW5TRGFOZXY5dUF0OWc9PSIsInZhbHVlIjoiT3JsdlJsWDZqR1h2c0poSnZ0RFdqdz09IiwibWFjIjoiNzljMjAyMjA5M2I3OWRhNTU2ZTIyYzFlYjQ2NjI0MjZmYmEwNDUxMGEwMThiNjRhNWM3MTA0YzMwOWNlM2M5MiIsInRhZyI6IiJ9', 1, '2023-03-13 04:12:46', '2023-03-13 04:12:46', NULL);
INSERT INTO `login_logs` VALUES (20, 1, 'eyJpdiI6IitxU25qUDJCbWtPZ0lOMmp0R2JoSVE9PSIsInZhbHVlIjoiYnRRL0QwVEpYNlEwQWR1a2hnNTFZdz09IiwibWFjIjoiNzg4MDE0NWZlZTMzODI1NWFkYjI1NDdmYzZhNzU1ZGVjYjdkMWEyOWFhMjI0M2RkMDE5ZmQyMDliNjE3NmZjMCIsInRhZyI6IiJ9', 1, '2023-03-14 01:29:55', '2023-03-14 01:29:55', NULL);
INSERT INTO `login_logs` VALUES (21, 1, 'eyJpdiI6IjVIVFNYam4rWDdkbzFtWHZBZ3RDSkE9PSIsInZhbHVlIjoib3dSamxYTmZKUmVtSDlDSXAySkQ3dz09IiwibWFjIjoiNGE4NDY2YjRkNzc5NGNmMTI1ODAxYzJmM2Q2YzI0ZDE1Yzg2Yjg4ZjZjZmQyZjI0NDc5ODAxNzlmZjQ1ZWUyMCIsInRhZyI6IiJ9', 1, '2023-03-14 02:59:26', '2023-03-14 02:59:26', NULL);
INSERT INTO `login_logs` VALUES (22, 1, 'eyJpdiI6InNJekFmRDFnTi9GQWRycjl0cmZyeFE9PSIsInZhbHVlIjoiQkx6a3hpZGtIRE8vWVJTalAzUTVYZz09IiwibWFjIjoiYjEwOTdlZDkxMzllNWVkZDkxMjFhYTQ0NjEwNDRlMzhiOWE2Mzg4N2ExNzI4YmYxNzllYWFjMjNiZTU4YWI0YyIsInRhZyI6IiJ9', 1, '2023-03-14 08:22:31', '2023-03-14 08:22:31', NULL);
INSERT INTO `login_logs` VALUES (23, 1, 'eyJpdiI6Imk4d3JGVDhGUlAzOWtYaFZYNUZUWmc9PSIsInZhbHVlIjoiMzB4Y2dQTXZPbWVHdEN6TFRodTV5dz09IiwibWFjIjoiMjI5MjZjNDZjZmI3ODg3ODU5MmY3YzllMjU0MzhkMmY3Njc3OGI0ZjcxMzc3MjFiMzdkZmFjNmE1MzIwMjIyOSIsInRhZyI6IiJ9', 1, '2023-03-15 02:46:49', '2023-03-15 02:46:49', NULL);
INSERT INTO `login_logs` VALUES (24, 1, 'eyJpdiI6Inh3Y29Td1dVNUs2SmRWbXpUdU5Db1E9PSIsInZhbHVlIjoiTTY0SndhR3piYm1ITkxFUVlsTEFFdz09IiwibWFjIjoiM2M3Y2U4MWUzZWIxMWY2ZWE2OGM5MjI2NDY5ZDRlNWE1YTMxNTRjMThjOGJlZDlhYjQwMTNjY2RkNDAxNTk3YSIsInRhZyI6IiJ9', 1, '2023-03-15 02:47:43', '2023-03-15 02:47:43', NULL);
INSERT INTO `login_logs` VALUES (25, 1, 'eyJpdiI6IlVZRnExQnB3OVdjSnpTUGxUUjRTb2c9PSIsInZhbHVlIjoidGl0ZWxpWmlHTHRybjRDMHhYMEFqQT09IiwibWFjIjoiNDgwNzA0MTBjMDFkMGU1OGUyZDY1ZWMyZTBiN2FkMTQzZDE3OGI2MDdlYzk2NWJjMTA1YjgzYTNmMWIxYzIwZiIsInRhZyI6IiJ9', 1, '2023-03-15 02:53:41', '2023-03-15 02:53:41', NULL);
INSERT INTO `login_logs` VALUES (26, 1, 'eyJpdiI6InVmcGFvY3ZSMEh0am1SaHdZZmoyWnc9PSIsInZhbHVlIjoicytVZTYzRmtMMG1LcUdaMHpjMUZwQT09IiwibWFjIjoiMDQzZjc0Y2E5YjkzYWU4ZDEwYzQyMjkxYTgxYTljZDc5NTExNWUxYjQ5ZmEyNGJjZGJhYzdmN2Q4ZTVhYTdkMSIsInRhZyI6IiJ9', 1, '2023-03-15 03:07:39', '2023-03-15 03:07:39', NULL);
INSERT INTO `login_logs` VALUES (27, 1, 'eyJpdiI6IjJPbVA4bys1eU9TM1BoWG1TemJkNHc9PSIsInZhbHVlIjoiQ2crZHpBUGhOZ3prNDdHZXdzcFEvUT09IiwibWFjIjoiNWZhMDk0YWU5MTAzYjQ5ODcyOWQ4ZTgxZWUwZTY4MTM3OTNkMzZhNWRlOTU4OTA1YmM3ZGIwZTE5ZjhmZmQyOSIsInRhZyI6IiJ9', 1, '2023-03-15 08:10:07', '2023-03-15 08:10:07', NULL);
INSERT INTO `login_logs` VALUES (28, 1, 'eyJpdiI6IlhwUEgyUGpIMGxnWU43T0s4aWVFVFE9PSIsInZhbHVlIjoiZkxoNmJJUTg4WjIyd0lIVmZwRjYzZz09IiwibWFjIjoiMmQ4NjVhN2NiOTc1YzQyYTNlNGE1MmU2M2M5N2EwNjkzNGY4NjY1N2I5NGU4MjZhYmZjMDU0MzhmZDg5MzJiNSIsInRhZyI6IiJ9', 1, '2023-03-15 08:10:56', '2023-03-15 08:10:56', NULL);
INSERT INTO `login_logs` VALUES (29, 2, 'eyJpdiI6ImpPbzRZcE1mcHVwN0pEb1ZqQTlER2c9PSIsInZhbHVlIjoiREFKbS9Yd0RVS2JJeERxQ3FUTHQyUT09IiwibWFjIjoiMmI1YjIwNGI2NmUwNmU5ZDc2ODM2MWMwZjk0NmVmOTgwMjQxZGMxZmZkZDM4ZTE0YWZmYWNkYTU3YzlhN2U5MyIsInRhZyI6IiJ9', 1, '2023-03-15 15:38:50', '2023-03-15 15:38:50', NULL);
INSERT INTO `login_logs` VALUES (30, 1, 'eyJpdiI6IkNtYXNBTWNGS3VwU2JFNnZEVmRuTVE9PSIsInZhbHVlIjoiMTRESE5saFNoZDQ0b3lVaWZkbDNMZz09IiwibWFjIjoiNzVkZDYyNzJlNjY0NWMyZWY2MmU0MGFjOTc1ZWRjYTMxM2JlYTRmYjNkNWRjMmNlNmQ5N2YwMGRjYWM3YTgwNCIsInRhZyI6IiJ9', 1, '2023-03-16 07:21:17', '2023-03-16 07:21:17', NULL);
INSERT INTO `login_logs` VALUES (31, 1, 'eyJpdiI6IjZKdTBjWlFucnQvakNqRjh6RmxSamc9PSIsInZhbHVlIjoieENtT1F4Y3NmY0YxdTZtUE43YUxzQT09IiwibWFjIjoiNjA2MWY1MGVjMWRiMTZiZTM3MTdiNDcyMmUxNjZjOWNhMzliMGNiNzgwMWRlODRlYjEwODVhZjFmNDcyNTJlOCIsInRhZyI6IiJ9', 1, '2023-03-16 08:25:56', '2023-03-16 08:25:56', NULL);
INSERT INTO `login_logs` VALUES (32, 1, 'eyJpdiI6IkJzdmFLSmtHMmdnMG1ML1kyMVhtK2c9PSIsInZhbHVlIjoiUFNEaUtLS0x3YnJ1Z3NVWnE0ZFNiUT09IiwibWFjIjoiMzkxYmRlZjM1YTE5N2QyMGEyYTJhM2VmM2VkNWQ5OTdmYzFmMzhlZDdjZWUxNDcyNzE2ZGJlMTA0MDRjZGQ1OSIsInRhZyI6IiJ9', 1, '2023-03-17 03:07:25', '2023-03-17 03:07:25', NULL);
INSERT INTO `login_logs` VALUES (33, 1, 'eyJpdiI6InJqZzRNaDZDZ1dqTWcrOTlObDdmVEE9PSIsInZhbHVlIjoiN25SL0ZHVFF5ZGcwNjF1aE9Ib3R5UT09IiwibWFjIjoiZDM0NTdkZmVkM2VjMWE3ZTc4MDQ5MWU2YWMyYTc4ZTAzOWE5ZTRiNzBiODg2MGY1OTAxZmNmYWFhNzg0YTliZCIsInRhZyI6IiJ9', 1, '2023-03-17 07:12:22', '2023-03-17 07:12:22', NULL);
INSERT INTO `login_logs` VALUES (34, 1, 'eyJpdiI6IjlzNDNMUnhpekpJMzZJbUJJVGZ2K1E9PSIsInZhbHVlIjoiVWF5bnA2Qm1hVU9SOW43TDJLVlRyZz09IiwibWFjIjoiMThhNWM2MjgwMTRkNTZhMWNhMzYxODkxNDdkNTJhMmNkMmQ1NTNlNjA3OTEyNDdmOGQyYWMzZjBlZDU3MGE1NyIsInRhZyI6IiJ9', 1, '2023-03-17 07:21:15', '2023-03-17 07:21:15', NULL);
INSERT INTO `login_logs` VALUES (35, 1, 'eyJpdiI6InJ3YXM4ZW5aQklBTTBCdXl4Mnd2bEE9PSIsInZhbHVlIjoielExbXVxd1lOT0d0d05NR01yS1pLQT09IiwibWFjIjoiZDNjYTViYTg2MDYwNzdmYjc2MWFiODQ1ZTBjNWEzNjM5MzRkN2ZlYjEyNDhlOTE1OTIyOWRiMTM3OWViZWJmNyIsInRhZyI6IiJ9', 1, '2023-03-20 02:19:43', '2023-03-20 02:19:43', NULL);
INSERT INTO `login_logs` VALUES (36, 1, 'eyJpdiI6Im95cUMzTDdtWXBnYlgzM0NrWUNmS1E9PSIsInZhbHVlIjoiaTByWGY2MExqQ2M1aWdmUUpQNzhGUT09IiwibWFjIjoiOTMyNzllZDczNzVhNDg2NTdlZjZmNzk0NjZhYzdhYWQwOGE2ZGU2NDVlZDZiZjM4N2Y0YTQxMTI4MjQ2NTI1OCIsInRhZyI6IiJ9', 1, '2023-03-20 05:07:09', '2023-03-20 05:07:09', NULL);
INSERT INTO `login_logs` VALUES (37, 1, 'eyJpdiI6IjlObEpTR0o1enJkQzdUZmpFVkpKN2c9PSIsInZhbHVlIjoiNnBSME1HNnJQNk1zakMydTA0L2dlQT09IiwibWFjIjoiNjQzNTY3MDYzNTNlYmM3MmVhNzJmNzZmODNmMmZhODNiZGNhMzlhZmQ3NmNjNDQ0YmI4ODc3Njg3NzQyYWQwYSIsInRhZyI6IiJ9', 1, '2023-03-20 08:18:18', '2023-03-20 08:18:18', NULL);
INSERT INTO `login_logs` VALUES (38, 1, 'eyJpdiI6ImtWdXdXbERXNHRNR2FYSDBMeE1pb1E9PSIsInZhbHVlIjoicm9rOHJ1UnpCTmVmM05vemdUL2h1Zz09IiwibWFjIjoiNzU4N2UzMzQ5MzlmNTcwZjc1YmVlYTUzODAxZWE2NmNhYjM2MWVhZWI3NjVlMTI3NWYwYWM1YzdlMjY5ZTVhMiIsInRhZyI6IiJ9', 1, '2023-03-21 03:05:35', '2023-03-21 03:05:35', NULL);
INSERT INTO `login_logs` VALUES (39, 1, 'eyJpdiI6InhzVWZwL2pjcGVxYmV3TkJGMnZBaVE9PSIsInZhbHVlIjoiYWFJTWlROEJEaFIyeG9WSDNYTDU1dz09IiwibWFjIjoiNDU4ZWU1MDJjNWZjNzMxYTdiMmVhMTA2YzBhMTY1ZjI4ZDJmMGYyMzg3MzBmN2NlNjVmM2Y3NmJlYzEyYzc2MSIsInRhZyI6IiJ9', 1, '2023-03-21 03:16:36', '2023-03-21 03:16:36', NULL);
INSERT INTO `login_logs` VALUES (40, 1, 'eyJpdiI6Impac0RUcW9QWmZzaUkyUVZGTVlQSnc9PSIsInZhbHVlIjoiTGNuWTluZVRCMzRCMjY0MHdQVnZHZz09IiwibWFjIjoiODg1YjNhOGNiOGQwMDBiMDRhMTc5ODg5YWI4NzJkYjMzYjI5MjYxZTUzYWQyMjdjNDUwZWJmMTU5MzAyYmE3YiIsInRhZyI6IiJ9', 1, '2023-03-29 01:59:34', '2023-03-29 01:59:34', NULL);
INSERT INTO `login_logs` VALUES (41, 1, 'eyJpdiI6IkNvSTFyL3AzMi9kSlVuU1FmcmZLVkE9PSIsInZhbHVlIjoiNG5GTWpvSjlNZDRVWkMrMnYzMnJwdz09IiwibWFjIjoiYjMwMGM5OTQ4NjdhMWJkYzViNTQ5NjRjZDlhZTc2YzMyMjQyNDM3OGEzM2I4ZmQzMWY3MzMxZjc5MGU4ZjE3ZiIsInRhZyI6IiJ9', 1, '2023-03-29 06:41:54', '2023-03-29 06:41:54', NULL);
INSERT INTO `login_logs` VALUES (42, 1, 'eyJpdiI6IjBZTmJHaHU2RVdNQ2VBYWFLL1VUbFE9PSIsInZhbHVlIjoiR2p0ZCtlS216YkpwakFtL1kyUHlkZz09IiwibWFjIjoiYzI5ZmE5ZWQ3NzZhMDU0YWEwYTdlNzZiY2FiYTdlOGZhY2JkOGJlMGIzOTM1YzlkMzA0MDIwYjJkODM1ZDRmZSIsInRhZyI6IiJ9', 1, '2023-03-29 06:42:08', '2023-03-29 06:42:08', NULL);
INSERT INTO `login_logs` VALUES (43, 1, 'eyJpdiI6IkFYVWh5bDJnajNmcUFpaWFmUDdRZHc9PSIsInZhbHVlIjoiMWJDRUZXcGlURDF4bDdqQjVHLzYzQT09IiwibWFjIjoiMzNjZTZiZWRhMGNiYjczODU1NWYwZTdmN2NhODkwM2FkYjRkMjcyNGQ1ZmQ4Y2QyN2UxM2U0YWYxN2VhNzYyYSIsInRhZyI6IiJ9', 1, '2023-03-29 06:43:12', '2023-03-29 06:43:12', NULL);
INSERT INTO `login_logs` VALUES (44, 1, 'eyJpdiI6ImVTTWFrQ0pjY3hObS9oVDd0N2xzTUE9PSIsInZhbHVlIjoib0lKTTJsWG5VcGhRKzJ0OFBaaVVIUT09IiwibWFjIjoiYjhjNTMzM2E1NTM0MzQyNmJhNGVhZmViYzk3MmFmMTA5MDk1ODU3MmU3N2U2ZWY4NmJhZTNkM2M5ZjYwZmQ0MCIsInRhZyI6IiJ9', 1, '2023-03-29 06:43:59', '2023-03-29 06:43:59', NULL);
INSERT INTO `login_logs` VALUES (45, 1, 'eyJpdiI6IlhJam9uZzFLYXlGcEVIdHVqTHoyQ0E9PSIsInZhbHVlIjoiUGZpamxNeno0b1B3SkREaldFeG4ydz09IiwibWFjIjoiOGUwNDJhZTQwN2E3NjRmNTM3MjE2MTlmZDczMWVjOTA5OWUxMGY1ZmVmNzU0MjViYTMzY2EzZjczYzUwZThkMiIsInRhZyI6IiJ9', 1, '2023-03-29 06:46:04', '2023-03-29 06:46:04', NULL);
INSERT INTO `login_logs` VALUES (46, 1, 'eyJpdiI6IjN2TnNGbWN1eDR6RTRrVEZtV1VIMUE9PSIsInZhbHVlIjoiNW5MaDNPYlp3d0ROMjBOWStlRFhhUT09IiwibWFjIjoiMDFjYjJiMjFlNTIyMTNmMDJlNDdkZWE2YzExOWFkODAxMWEyNjA3YTQ5Yzc1NjE0MjY1ZTcyZDUzOTc5NDUyNSIsInRhZyI6IiJ9', 1, '2023-03-29 06:53:23', '2023-03-29 06:53:23', NULL);
INSERT INTO `login_logs` VALUES (47, 1, 'eyJpdiI6IncyeVpUNk9zSTBOcjNxTkFPdVN0aXc9PSIsInZhbHVlIjoidG0rQjZHbUp4T0QyMkRzeUF4VUZLQT09IiwibWFjIjoiN2Q2N2Y3NDVhN2U1ZjAwODM0ZjY5Y2IxNDE1OTI5ZTE4Yjc3YWUyZGNmOTE0NjBhYTliNmJkYjZmZjVlZTEzZSIsInRhZyI6IiJ9', 1, '2023-03-29 07:01:01', '2023-03-29 07:01:01', NULL);
INSERT INTO `login_logs` VALUES (48, 1, 'eyJpdiI6InFLM0xRQVdSRkhSVFNjVHZMenhnaWc9PSIsInZhbHVlIjoiN0VUbm56K25QOGNzNzdJTU9pYkdZUT09IiwibWFjIjoiNDE5NTAzYTBjYWFiN2I0ZDlkZmRmYjEyMTg2YjUxYTRkZjFmOWY4YTkyM2UzOWUxODVkOGMxNDU1MmY0ZmE4OSIsInRhZyI6IiJ9', 1, '2023-03-29 07:14:37', '2023-03-29 07:14:37', NULL);
INSERT INTO `login_logs` VALUES (49, 1, 'eyJpdiI6Ikoram9QbUp2WWhBd0ZjMHdhTUowNmc9PSIsInZhbHVlIjoiWHlhWFMwK0dZUkd1Wm1sNlJ5Zmcvdz09IiwibWFjIjoiYmUwNjY0NWFhZDhmNTI2NTYwODc2Njc1ODlmNGExNDBiY2U2N2MzOTYzMjk4MDdkZmQ4YWNiZDVlOWFkYTFhNCIsInRhZyI6IiJ9', 1, '2023-03-29 07:16:48', '2023-03-29 07:16:48', NULL);
INSERT INTO `login_logs` VALUES (50, 1, 'eyJpdiI6IndxZG9OZnR3SDIrQXMya2Q3SUQ4cUE9PSIsInZhbHVlIjoialAxV2RudUpuS0ZJSjJ5R1FDczZxZz09IiwibWFjIjoiY2VkNTgxYWJjNjhhZjI4YWFjOTgzYjc2M2IzYzQ5NzMzM2IyZGEwMGQ5ODNiNDQ2ZjYyYjFhYjU2OTdiYTk5MyIsInRhZyI6IiJ9', 1, '2023-03-29 08:00:07', '2023-03-29 08:00:07', NULL);
INSERT INTO `login_logs` VALUES (51, 1, 'eyJpdiI6InFwbjAwVkVJREVQMk9xNVNpN2tkTWc9PSIsInZhbHVlIjoiMlJueEFWa1pDZXRUZkg1SXRMRnA4QT09IiwibWFjIjoiZTJmNjU2ZGQ2MWY1YjQ3YjJjY2IyMDZhOTNjYjQxNTM1YTA1OTYzMGU3ODhjZGIxZjU5MzdlYTg4YWY1NDllYyIsInRhZyI6IiJ9', 1, '2023-03-30 01:39:05', '2023-03-30 01:39:05', NULL);
INSERT INTO `login_logs` VALUES (52, 1, 'eyJpdiI6Im5haTRUd0JNd2htWjNDY0thTFpHREE9PSIsInZhbHVlIjoiTzVjRndiaU9NdWlKSkVpMjVUNWE1UT09IiwibWFjIjoiYTRhNjc1ZmZjZjM4OTkyYTE0MjNmODVhZWYyNzM5NjBlNTg3NGYyOTUzM2JiNmFmYmZlODI1Y2Y2ZDUyNWI4MyIsInRhZyI6IiJ9', 0, '2023-04-03 07:10:17', '2023-04-03 07:56:08', NULL);
INSERT INTO `login_logs` VALUES (53, 1, 'eyJpdiI6Imd3T2d4a0JwREZvK2U2Z1BXM2JYaXc9PSIsInZhbHVlIjoidVRTeUIxUFQwM29UZ2kvUldLMUlRUT09IiwibWFjIjoiNWFjZGEwNTFiMDgzNzFlMmFjNWY4NmI2NjE2NzhlZWZjNTEwOTU5YzYwMTQ1NWYzYzhmYWIyNmRlZDY0ZTFhNiIsInRhZyI6IiJ9', 1, '2023-04-03 07:21:08', '2023-04-03 07:21:08', NULL);
INSERT INTO `login_logs` VALUES (54, 1, 'eyJpdiI6IjlseUgrZHhpN0lydHB3czFZTXowN2c9PSIsInZhbHVlIjoiNWZiNHVLT3Fvb3RUMzZMclpPNmtoQT09IiwibWFjIjoiODVjMzU0ZDMzNWJiYzczYzQ3MjlhOWNlZDRjYjY1ZDBlYjU2NjFlNWE5MDM4OTIzYjkyYWNkZWU0Mjk4Y2NmYiIsInRhZyI6IiJ9', 1, '2023-04-03 07:56:24', '2023-04-03 07:56:24', NULL);
INSERT INTO `login_logs` VALUES (55, 1, 'eyJpdiI6InF3VzVNNXFjV3M2dE9iS3VySTA2YVE9PSIsInZhbHVlIjoib0dIYWhIaDJCeDVscldLSUVodHdEdz09IiwibWFjIjoiNmUwYzU5NTYyNTVhYmQyMWM3OTQwMmQ0NzM1NmI3Yzg0MzdmMDg1MjdmZWNlNTNiZDU5MmE5MjEyNTJlOWM2ZiIsInRhZyI6IiJ9', 1, '2023-04-04 01:35:23', '2023-04-04 01:35:23', NULL);
INSERT INTO `login_logs` VALUES (56, 1, 'eyJpdiI6Ik84WGhlSHZYMWt5WGVkSEJWeE9wRVE9PSIsInZhbHVlIjoiWmtncjYvUVkxK002MmQxUVRSaFV4Zz09IiwibWFjIjoiNGE1N2Y4MzRiOTE2NDQxNjhlNTVhYjc4MzhhZjhhY2JkNTMwN2ZlNTJmNGRmODRkZTFiZWY4Mzg2NzExZDFmZSIsInRhZyI6IiJ9', 1, '2023-04-06 01:48:03', '2023-04-06 01:48:03', NULL);
INSERT INTO `login_logs` VALUES (57, 1, 'eyJpdiI6IjBtVytjaEdJdG1saU9HdmNSeVE1cmc9PSIsInZhbHVlIjoiTUNjbVFxVzc3blFhNnI5RWFlcnlLUT09IiwibWFjIjoiNmYzNjRjZTAyOTg0ODQ4OWZmZTFjODBlMmE5MmIxMDljZWVjNDdiMjFkN2EyZTUxNzE3OWQxNDViNDAxYWRiNSIsInRhZyI6IiJ9', 1, '2023-04-06 06:51:57', '2023-04-06 06:51:57', NULL);
INSERT INTO `login_logs` VALUES (58, 1, 'eyJpdiI6IkNDYm5xWEE1dDF4akRIUFNjVkgwbmc9PSIsInZhbHVlIjoieGxaclZwUjMwMHZsaHlveVBUdWxhdz09IiwibWFjIjoiNGU2OGE1MGNkNjNmZmIwNzZlZWQ2Y2FkNzc2OTMxYTJlNGU5NGFhYWNmZDI5YTVmY2RlNDZkZjJhYzcwNTU4YiIsInRhZyI6IiJ9', 1, '2023-04-10 02:09:57', '2023-04-10 02:09:57', NULL);
INSERT INTO `login_logs` VALUES (59, 1, 'eyJpdiI6IkxodlpSU0JDR2pWRHU1Tjg2MnZXd2c9PSIsInZhbHVlIjoiRHlEUktrbXRwU2htQkd3UUhhakhGZz09IiwibWFjIjoiZjRjZTI1MzJmOTkwMTQ2MGM2MGJhZGFiYTkxNzQ1ODgxYzgzNDA3OTZlMGRlMmFlYmJlODA4ZGRjOGEzNjA4YSIsInRhZyI6IiJ9', 1, '2023-04-11 01:41:35', '2023-04-11 01:41:35', NULL);
INSERT INTO `login_logs` VALUES (60, 1, 'eyJpdiI6IkY4dDExS1N0ZWsvOE5YejB2N2NreHc9PSIsInZhbHVlIjoiV3pLK2UxVWFEOExxalFFRmdLbFRqZz09IiwibWFjIjoiOWNiYmI1OWZjZjVmY2QyOTFjNGViYTgwNzMwZjI1OTc2NDJkNDdiODRmODEwMGY3ZjBiOGNjNDQxZWQxYTA4NSIsInRhZyI6IiJ9', 0, '2023-04-11 03:48:15', '2023-04-11 04:49:19', NULL);
INSERT INTO `login_logs` VALUES (61, 2, 'eyJpdiI6ImlSZGdlTWNlOEpmRWJOUmlaMG1CNkE9PSIsInZhbHVlIjoiWXVrSWNrVWJkRE9Kb1hTeVROR1ZWZz09IiwibWFjIjoiMzNlNDU4MTE5M2QxYWJjYTZjNTBiMjc3OWJlNDcxMDAyZDc2ZmQwMjhkNzVlMGEwMGNhOTY1ODhkNWU1NDllYiIsInRhZyI6IiJ9', 0, '2023-04-11 04:50:04', '2023-04-11 04:50:09', NULL);
INSERT INTO `login_logs` VALUES (62, 1, 'eyJpdiI6IkNlcmNuaVZMTkVxYjR1eUJMdlBjZWc9PSIsInZhbHVlIjoid2F3Y1NGM2NXQm5jTVYvL1I3MUJHQT09IiwibWFjIjoiNzk5ODlmNWU1ZDRiNGFiMmQ5MmJmMmQzMzFkYjViODgwNmQxMmI4OGQ3YWMzZGJhODkwM2VjZjQ1MDJmOWJhOSIsInRhZyI6IiJ9', 0, '2023-04-11 04:50:16', '2023-04-11 04:55:20', NULL);
INSERT INTO `login_logs` VALUES (63, 2, 'eyJpdiI6Im80bDJNcUZGRG00dlozb1Y1T2U3OUE9PSIsInZhbHVlIjoiaFZqbGpUSkFzQUUrQng4aWpGWUVEZz09IiwibWFjIjoiYzI0YzYwZTcwYTMwZWQzMjRjMDM3MmVlODIyMzMwMmJiYTdiNzEwNDJlZjcyNjhhOGRhZGI1M2VjNDI2YjljNSIsInRhZyI6IiJ9', 0, '2023-04-11 04:55:41', '2023-04-11 06:51:04', NULL);
INSERT INTO `login_logs` VALUES (64, 2, 'eyJpdiI6IlFyaytpS3FiWG5WZDAxN3ZrSjhwOFE9PSIsInZhbHVlIjoiRThCaWpGdnJiRFFrOXFPNVpNNXRoZz09IiwibWFjIjoiMTBkNjk0Zjk5ZGEyZjc0YjVhNjc4YzUwYjgxNWRmZjRjNGQ3NjI1ZTJhMGJmNDExOWE0NGRhYTMzNTJhZjdiNSIsInRhZyI6IiJ9', 1, '2023-04-11 06:51:12', '2023-04-11 06:51:12', NULL);
INSERT INTO `login_logs` VALUES (65, 1, 'eyJpdiI6IlJaV0dQLzdQV2lCRys5UHg0UE1JNGc9PSIsInZhbHVlIjoiK1pLZ1FaeFdNQWdsZVE3M1k4TFMzQT09IiwibWFjIjoiNWFjNjc4NzE5MDU4ZjIxMmQ4MTQ1NDcyY2IzN2E0NTIwMjAwYzNjYjUyMWEwMzdiYWJkYjZjMDZlNmU0NmEzOCIsInRhZyI6IiJ9', 1, '2023-04-11 10:24:18', '2023-04-11 10:24:18', NULL);
INSERT INTO `login_logs` VALUES (66, 1, 'eyJpdiI6InBWYVhPZmVxdUhROTB1YzFkMytabmc9PSIsInZhbHVlIjoiblZjMmM4UEYwaDVmdzRvWWwrbEQrUT09IiwibWFjIjoiNjVmMzMxYzM3ZjBiZmUwMjgzYzA4NWYwZmY1YzJjN2NlOTA3YzI3YTBiYTA1OTBjNTE2MWYxMGZjNDgzMmRlYSIsInRhZyI6IiJ9', 1, '2023-04-12 01:52:11', '2023-04-12 01:52:11', NULL);
INSERT INTO `login_logs` VALUES (67, 1, 'eyJpdiI6IlZ1OERwZEsveDBzMTFjZmZPQ1E1UEE9PSIsInZhbHVlIjoiU082ZDhnT3h0YmFaQllCVHIzVFM3Zz09IiwibWFjIjoiYzYxMTk2MjdmMWEzNmY5MzgzMWNjNDZhNmEyOTJjZTJiYzIzODRiMzczNWNhNzMxZjlmOGZlYjUyNDYwYzAwYSIsInRhZyI6IiJ9', 1, '2023-04-12 04:57:21', '2023-04-12 04:57:21', NULL);
INSERT INTO `login_logs` VALUES (68, 1, 'eyJpdiI6IjFyRWlDWDNjTWRLT2hNWVk5bXEwSnc9PSIsInZhbHVlIjoidktMZ1dNclFwRUV4Y0ZyUEtwNnpXQT09IiwibWFjIjoiZTRiYjUwZDI0ODEwMmFkYjgzNzI1YzY2OGY3MjVjOGE1ZTAxNjYwZDczOTQ1MjI5MmIxYzEwN2JlZDY4YmFhYiIsInRhZyI6IiJ9', 0, '2023-04-13 02:42:04', '2023-04-13 02:58:53', NULL);
INSERT INTO `login_logs` VALUES (69, 2, 'eyJpdiI6InZObTIyclU2U1lROWFXekt1VGhXckE9PSIsInZhbHVlIjoiNEhZTHEzR2ZXWm52VW9uNUNUME5WUT09IiwibWFjIjoiNmFkYzNjNzJjZWU2NWNjY2ExMTFiYjc0ZTUwMmZiYmVkNjkyOWFhM2IxZTExNjNmNmEzYmEzMGQzNzcyNWFlZCIsInRhZyI6IiJ9', 1, '2023-06-26 04:20:43', '2023-06-26 04:20:43', NULL);
INSERT INTO `login_logs` VALUES (70, 2, 'eyJpdiI6IjhrMTN2dVFUWkJBdkhuMkJkM3JVK1E9PSIsInZhbHVlIjoicFk3VWpvS0ppU3Z0SHhJOU5nR3VCZz09IiwibWFjIjoiNTdkYTZiOWU0MTUzNGRmZTI2NDhkM2QxNjA4YmZjNDRlNDY5YzgxMjc0MjYzOGQ4MjE5ZDU2YjRlMDkxOTVlYyIsInRhZyI6IiJ9', 1, '2023-06-27 01:35:31', '2023-06-27 01:35:31', NULL);
INSERT INTO `login_logs` VALUES (71, 2, 'eyJpdiI6Ii8xSHdGT3lQQ2VtUnFUUndJcUR0TWc9PSIsInZhbHVlIjoiUU1ld0VQTXdlc1p6MVVhdHRFVVFVZz09IiwibWFjIjoiMDBiM2FjYjkzNDIzYTdjNjgxY2YzYTg5MDIxMTg5NTU0NmVlZTgxOGVlZDVlMTgyZTA2ZjYzMDNjYmEwMjkwYyIsInRhZyI6IiJ9', 1, '2023-06-27 02:01:33', '2023-06-27 02:01:33', NULL);
INSERT INTO `login_logs` VALUES (72, 2, 'eyJpdiI6Im9YdUhWM05RVEdOR2JUbFY1cFl6cEE9PSIsInZhbHVlIjoiQ0FxUkg2N3lWOUV6UlNveWJDY0xRZz09IiwibWFjIjoiNDZjODdlMzU4ZmM0ODA3ODhjYWEwNzRhNGM5NDViYzY2MWJmMmE0YjRmNTVkY2Q1OTU3Y2U1Njg0MmE5Y2ZkYiIsInRhZyI6IiJ9', 0, '2023-06-27 02:11:22', '2023-06-27 02:20:47', NULL);
INSERT INTO `login_logs` VALUES (73, 2, 'eyJpdiI6IjUvcGdWcHpSSGptMTR1OEtjYmlvM0E9PSIsInZhbHVlIjoiTG1sWUFNSnlHcTB5UVdMdWRkb3NsZz09IiwibWFjIjoiMTkyM2NlN2NjZjUwMzZlMjliYWJiODc4M2Q2OTAwYWQ0YTMzMzI2MzkxMzMwMjJlZGU3YTJmMjI0NGQzY2E2OCIsInRhZyI6IiJ9', 1, '2023-06-27 02:25:10', '2023-06-27 02:25:10', NULL);
INSERT INTO `login_logs` VALUES (74, 2, 'eyJpdiI6IkFEbkNHY29KS3pqdTNWdy9SVE5KNnc9PSIsInZhbHVlIjoiYW1rVXFJdU5hWWJ2U3ZkVThYMHJHUT09IiwibWFjIjoiYWMzNTAxNzJmZGY0ZGUwNTRkZDIyY2VhOWRkMGY1ODU2ZmE2ZDA5NzY2ODZmNjIxNzdjZmNjOTUwZGM5MGQ5NSIsInRhZyI6IiJ9', 1, '2023-06-27 03:31:58', '2023-06-27 03:31:58', NULL);
INSERT INTO `login_logs` VALUES (75, 2, 'eyJpdiI6Imw2VGRreFhTQXpsNGQ2MWorN2N1ZHc9PSIsInZhbHVlIjoibldFcVFGZFRoQ0YvUEVld0xzNGdWQT09IiwibWFjIjoiZGI4ZmViMDIwNmJkNTNkMzdiZWNjNDM1OGIxNmQ4M2E1Y2M3ODRmZjAxMWQyMTM4OTUzMDI1NmMwNmIwODc4OCIsInRhZyI6IiJ9', 1, '2023-06-27 04:33:43', '2023-06-27 04:33:43', NULL);
INSERT INTO `login_logs` VALUES (76, 2, 'eyJpdiI6IklTbSsvK2UrNktmRGJuUVp2N0lPZ1E9PSIsInZhbHVlIjoib29GWmF2VFBZYVdsaXhFZDFQcGluQT09IiwibWFjIjoiOGY0NWNiYTJiYzcyYzNlMWUwN2YzMThlN2ZmZjllZGM0ZmU4MDEzZDk4Mjk3YTg1OTZjYmQzNGJlZTAwNTBjOCIsInRhZyI6IiJ9', 1, '2023-07-01 00:48:46', '2023-07-01 00:48:46', NULL);
INSERT INTO `login_logs` VALUES (77, 2, 'eyJpdiI6Inp2VE55Rkd4N1JUR2s3bnpRSytkd3c9PSIsInZhbHVlIjoiNXl5ak9lajNhbkppV2pvRCt3N0Nmdz09IiwibWFjIjoiMGE0N2QyN2VhMjg2Mjk5ZTQzMjFiOWIzYmU1MmU3MTkzY2QzMTJkOTVmMGQ2MDA5NDIxMjk4ZWVmMTQ3M2EyZCIsInRhZyI6IiJ9', 1, '2023-07-01 01:21:37', '2023-07-01 01:21:37', NULL);
INSERT INTO `login_logs` VALUES (78, 2, 'eyJpdiI6Im5aRm1aalR1emdHN29rcThxUlh3L2c9PSIsInZhbHVlIjoiT3hlem8vK1I4a0N6bUNtL29qaGpPdz09IiwibWFjIjoiZmZjOGYyZDY0ZjdhNTliYzA1Nzg0N2IzOWM0MjZlOGVlZjRhODIwZjhjMjhjOTQzNTVmZWNhYTMzYTk0YjcyOCIsInRhZyI6IiJ9', 1, '2023-07-01 02:23:54', '2023-07-01 02:23:54', NULL);
INSERT INTO `login_logs` VALUES (79, 2, 'eyJpdiI6Ik9OV0lHWFMwU3dzRGkxZnhBSUZvVkE9PSIsInZhbHVlIjoibXhZaUQ0SU9tbHFFRWM2Y1NEWS9uUT09IiwibWFjIjoiYmU3YThhODE5MDAzODQwYWE2OTBkYTNkOTg2Y2NmNjNkNDg2OGJjNmRmYmNmMDM2NmNhNzcxZDRlZGY1YmMxYSIsInRhZyI6IiJ9', 0, '2023-07-01 04:37:24', '2023-07-01 04:39:00', NULL);
INSERT INTO `login_logs` VALUES (80, 2, 'eyJpdiI6InJEbjZtTjBTSUs3S21rNVhYb2Z0QlE9PSIsInZhbHVlIjoiV0JCbVk1eXZ2aUJJZmVBMm5sUU8xUT09IiwibWFjIjoiYWEwNTk1OWFhMzZmOTE5NmZhNTE1MzMxY2E0MDM0OGI5MWYxYzFmMjUxYTIyZTk1YmQ0YjM5ZGM3NzBjMDA4MyIsInRhZyI6IiJ9', 0, '2023-07-01 04:40:05', '2023-07-01 05:47:51', NULL);
INSERT INTO `login_logs` VALUES (81, 2, 'eyJpdiI6IndxYTdZTFZQaUNpRWd0d1lZcXVJK0E9PSIsInZhbHVlIjoiVWpURzB6SlVJNFYyL25rbkZVdVBkdz09IiwibWFjIjoiZWYxZWY2ZGEwOTI3NjRhM2E1MzE5MjM2ZTRhZDIzYmE3N2M4Yzg4OTc2MGFkOTkwMzI3YWZmMzY1MjIzMmVlNiIsInRhZyI6IiJ9', 1, '2023-07-03 08:22:35', '2023-07-03 08:22:35', NULL);
INSERT INTO `login_logs` VALUES (82, 2, 'eyJpdiI6IlB3VHkwTkx4ZW9FUnFFUlc1TUw5OEE9PSIsInZhbHVlIjoieStZSTMxTzYxN01hSDVJeVdkMFE0UT09IiwibWFjIjoiYjUzZDM4ZDI4ZjNhZDU3MjA0ZjdkOWNiNzQ3ZjY0NjU4MGZhZGEwYTQ3YjZmYTk2ZjQ2MjFmYzU0YjA1ODJmMiIsInRhZyI6IiJ9', 1, '2023-07-03 09:18:34', '2023-07-03 09:18:34', NULL);
INSERT INTO `login_logs` VALUES (83, 2, 'eyJpdiI6Imc3YUExeEZxVVVUUXY1QXpTL1FDQ2c9PSIsInZhbHVlIjoiV2RnZDhGWk9CTUc2c1I1ZUlobmhyUT09IiwibWFjIjoiYWZiMDU3MGNiYjY1NmY1MjNlNWY5M2FjOGVhOTgyMjc1ZmNiOTg5OTk3MDgxNDVjNzUyZTE1NDkzNWYxZDY3NyIsInRhZyI6IiJ9', 1, '2023-07-04 03:11:34', '2023-07-04 03:11:34', NULL);
INSERT INTO `login_logs` VALUES (84, 2, 'eyJpdiI6IjFua1JUaERXNUx4cUQxb3VCN0tFdGc9PSIsInZhbHVlIjoiOXp0a1Y3ckpkTnduNncxcVNRN0c5UT09IiwibWFjIjoiOWQyY2E3YjM5NzA5MzU0MTM5NmIxNGNjMTFmN2M5MjVkZjAzZGFiMGZlYzY4YTZkMDZmYmNkMzE2Yzc0MmE2YyIsInRhZyI6IiJ9', 1, '2023-07-05 02:07:26', '2023-07-05 02:07:26', NULL);
INSERT INTO `login_logs` VALUES (85, 2, 'eyJpdiI6IkRZWndOV1k2TzY2T3BZSitxbHhEQWc9PSIsInZhbHVlIjoiQllISlFiSUg2d2RQeUhhdzZzNFFxQT09IiwibWFjIjoiNDM2MTYxNGM0YzgzOTY5MzM3ZGRhZmQ5N2VhMDk2YThkMzM3MmEwOTYzYjgzYTVjZTVkZDkxYTI2ZTBkZGE0YSIsInRhZyI6IiJ9', 1, '2023-07-05 05:44:21', '2023-07-05 05:44:21', NULL);
INSERT INTO `login_logs` VALUES (86, 2, 'eyJpdiI6IlFjdzNLUCswVmZuNGdEQnNCTWllN0E9PSIsInZhbHVlIjoibmQ2YlV3UjJxdHBXMjF2c0FoUVkrUT09IiwibWFjIjoiYzBiNDI2ODRlYzljZTA3OTZkOTMzYjBkNDkxZTYxNmFlN2NkYzViNDEwZmQyZmRjOGRmNWQxNGZmOGU2NzQ3ZSIsInRhZyI6IiJ9', 0, '2023-07-05 07:07:07', '2023-07-05 07:10:25', NULL);
INSERT INTO `login_logs` VALUES (87, 2, 'eyJpdiI6InBWTzVXMmxpd2FicXR4RWVqeDI5dlE9PSIsInZhbHVlIjoiUlVFelBHRHdKYXBST01DQnBISkVCZz09IiwibWFjIjoiMGRmNDI4ZTYzNzFlMGUzMTE2MmM2NTE5M2EyZWJiOTFjOTYzMjcyNmQwMDZlMGJjZjFhOTNiZTM3ZGMzYjk2NiIsInRhZyI6IiJ9', 0, '2023-07-05 07:54:05', '2023-07-05 08:59:25', NULL);
INSERT INTO `login_logs` VALUES (88, 2, 'eyJpdiI6ImtnSWEvUDBteDd3M0gxaVJBU3V5cVE9PSIsInZhbHVlIjoiYWF0Umk0N3c0WS9EZk5ZV2FxdERpQT09IiwibWFjIjoiMGVmYzdkMWUwMWUzNTVjZmUzN2IzNjYwMThlYTRhNWIzZTc5NzA1YzJhYWE1NTkwOGMxMzA4YjgyYzM0MTljNSIsInRhZyI6IiJ9', 1, '2023-07-05 08:01:58', '2023-07-05 08:01:58', NULL);
INSERT INTO `login_logs` VALUES (89, 2, 'eyJpdiI6Ii92c1RTNjE5QjZiQzR6T29lMXU3V2c9PSIsInZhbHVlIjoibkxyWnRJYjkzM1l0Yk9TNElFcDlTUT09IiwibWFjIjoiNGUwZWNjNDViNDhhOTM0NGJiMmUzNTM3NzU3M2E5ZTBlNjg5ZjgxZTQ5YzFhZGQ0NDFkNmNhNWI3MTM3ZjE2NiIsInRhZyI6IiJ9', 0, '2023-07-10 02:14:20', '2023-07-10 02:15:44', NULL);
INSERT INTO `login_logs` VALUES (90, 2, 'eyJpdiI6ImxSRlcrZ29oRzNDck03WWFqTnFVenc9PSIsInZhbHVlIjoidnk4ZEtiaFRBS2s1dEN5SGdJL0dudz09IiwibWFjIjoiNDA5MGE3YWJiOTgxMjJjMTdhOGRlODU0YjcwZDBiN2IwMWY4ZjA5NDM3ZGQ0M2RmOGNiOGQ3YTZlNTEyMWNiMyIsInRhZyI6IiJ9', 1, '2023-07-15 02:20:27', '2023-07-15 02:20:27', NULL);
INSERT INTO `login_logs` VALUES (91, 2, 'eyJpdiI6IitBR3Q1RGhJWEY4RHRDYWhLZDRmVkE9PSIsInZhbHVlIjoiTGlwdnJOek9TVENRaVQxV2Z5a1NLZz09IiwibWFjIjoiMmVlZWU4MDRlY2RmNDYzYWRkZTdhZGQ1Y2MxMDEzMDYwMWJjY2MwMGVmNDE2NGExZjg3MjNmNTVlY2FiNjk5MiIsInRhZyI6IiJ9', 1, '2023-07-15 02:36:01', '2023-07-15 02:36:01', NULL);
INSERT INTO `login_logs` VALUES (92, 2, 'eyJpdiI6Ik9BU201cllwSVVDakVUSE1idW1ZckE9PSIsInZhbHVlIjoiZmNPZk5BcmN5eHVrWWNnbmhkRG1LZz09IiwibWFjIjoiMjkwYmEwYjYwYjA5MzVkZWVmM2NjYmQ1NDk2NjE4YTBiNzkwY2NlYWQ5YjMzNmIyNjhjNDg0N2VjNWUzNzgwZSIsInRhZyI6IiJ9', 1, '2023-07-15 02:49:05', '2023-07-15 02:49:05', NULL);
INSERT INTO `login_logs` VALUES (93, 2, 'eyJpdiI6IlZFTk8rN0pGei9BTDVHTFFiUjE4UGc9PSIsInZhbHVlIjoiZ2MvZDBLeGl0VGFxVmhxMEx4V2pPUT09IiwibWFjIjoiYWZiNDY1MzM4NDZjYjc3NmE3NzU5NGE0ODk0ZDc4MWI5YzFlMWZiZjVlMmQ2YWRkNzAyYmRkZWRkOWM2OGUyNSIsInRhZyI6IiJ9', 1, '2023-07-16 06:45:02', '2023-07-16 06:45:02', NULL);
INSERT INTO `login_logs` VALUES (94, 2, 'eyJpdiI6IjdmUERwMFIveXdnNmpTMkN3Y1FQdnc9PSIsInZhbHVlIjoiN0MxMkRYTmlRYThwR2lLOXNlNFNxZz09IiwibWFjIjoiZDM4MGRhY2U3ZjFhNjI1MzgzZDNjZGY0M2VmZTQwMGQ2Mjk1ZTRjNWU3N2ZlZWI2ZTA4MjYwNjVjYzUwY2NjOCIsInRhZyI6IiJ9', 1, '2023-07-17 01:39:31', '2023-07-17 01:39:31', NULL);
INSERT INTO `login_logs` VALUES (95, 2, 'eyJpdiI6Im4reEREODBpc2tGMGNjYUVQQ1NVZXc9PSIsInZhbHVlIjoibHFjZU1ISzdhUzA5Y0pOWllJbW1WZz09IiwibWFjIjoiOWQ1ODM2ZDEyNGE5YjdmOGQ0MzM5MmJhNzYwMjViMWFhMDUwOGMyZDdlYTQ4OTBjMTYwZTFmZWM3ODM2MGI1MCIsInRhZyI6IiJ9', 1, '2023-07-17 02:45:34', '2023-07-17 02:45:34', NULL);
INSERT INTO `login_logs` VALUES (96, 2, 'eyJpdiI6IlU0R2taZXRiVjNzakMwL3ZyV0dYN1E9PSIsInZhbHVlIjoicUFLMnRLT0RTazZ6WlRDUVcxcVJnQT09IiwibWFjIjoiNDJmODM1YjU2NzEzZDlmZTA1Y2Q1MTljNmVlMmQzOTc3MjExZjYzMDNmMzVjNDU5MmVlZDVmYzUwYTIzOWM1MyIsInRhZyI6IiJ9', 1, '2023-07-17 02:50:53', '2023-07-17 02:50:53', NULL);
INSERT INTO `login_logs` VALUES (97, 2, 'eyJpdiI6IkVjbWIveVBMQ3R6cGp1K0hlaXZKQmc9PSIsInZhbHVlIjoiRTN4YmNnZWhZc3c0dmVETkg2WU5nZz09IiwibWFjIjoiNWIwNzcyYTAwMjk4ZDQ3MjJiMzE0NjVjNDI1Nzc4OGY1MzVmMTdlMTllYTFiMmUxY2U1N2VhZGQzNjI0MjliYyIsInRhZyI6IiJ9', 1, '2023-07-17 03:47:12', '2023-07-17 03:47:12', NULL);
INSERT INTO `login_logs` VALUES (98, 2, 'eyJpdiI6IjlqekF1T1ZHVkRoWkM5Q0FQOG83RkE9PSIsInZhbHVlIjoiMnhZVVA4dTNVbGpYdU9teC9ySzkwZz09IiwibWFjIjoiMWFiMjU5NTgwZTRmNWZjMjU0ZmZiNjg4ZWVhOGNkM2YwZTk5MGUwNzY3Nzc5ZjhmMzkwMWVlNTBhNTFmYTU2MSIsInRhZyI6IiJ9', 1, '2023-07-17 04:25:26', '2023-07-17 04:25:26', NULL);
INSERT INTO `login_logs` VALUES (99, 2, 'eyJpdiI6IlBCU3ZtNGdNTVh3cFh6ZHVQdHNPV3c9PSIsInZhbHVlIjoiSzEycmk2OURXZGVQOEhsaEJtOUorUT09IiwibWFjIjoiNjQ2MTliNjJhYTE0ODRhY2ZhZWZhMWNiMDQ0NzE3MDk2OWI3MTYwMjNhZGNlNjRjYTNjODhlMzJkMTA1Y2QwNCIsInRhZyI6IiJ9', 1, '2023-07-17 04:34:31', '2023-07-17 04:34:31', NULL);
INSERT INTO `login_logs` VALUES (100, 2, 'eyJpdiI6ImVHY0p5a29IN0FPalhpUmFJVWpUdWc9PSIsInZhbHVlIjoiRG4vUFJsQStaSmU0elQrRHhhbmlJUT09IiwibWFjIjoiZjM3MjM4YmU5YTcyZjU4NjZkNTYyYmQ2ZmU3MzczMjAzNjMzYTViNzNjZTI4NDY4MThhZDc3NTM1OWQxZGFiYyIsInRhZyI6IiJ9', 1, '2023-07-18 01:39:39', '2023-07-18 01:39:39', NULL);
INSERT INTO `login_logs` VALUES (101, 2, 'eyJpdiI6InptOGkxRGRGZjRmb0V2dngwSitlaUE9PSIsInZhbHVlIjoickNVaW42UXM1YVdRZHNuVWxJaWt1UT09IiwibWFjIjoiOWI5MmJmZjMxNGNhY2NkMWVjODNiZmMwNGRmNWQ3MzMzOWRhOWFmNjg0NmJlMjI0YTQ3YzE5N2RmMWU0NzVjMyIsInRhZyI6IiJ9', 1, '2023-07-18 03:37:15', '2023-07-18 03:37:15', NULL);
INSERT INTO `login_logs` VALUES (102, 2, 'eyJpdiI6ImdkNGxxNHhJTkx6RGdDTDIxdzdITmc9PSIsInZhbHVlIjoiQ1V3OXNpMTVzODRjWXJGMzdTUEJtZz09IiwibWFjIjoiN2M2MDk2ZmIzN2ZlMjZjMjBjZmZlM2M3NzlmYzIzNjZiNzkzNDNhZmQyNGE0OGZmMTI3NmMwY2I0ZTYyN2Y3MCIsInRhZyI6IiJ9', 0, '2023-07-20 05:58:00', '2023-07-20 06:19:28', NULL);
INSERT INTO `login_logs` VALUES (103, 2, 'eyJpdiI6ImVETkZyVzhjN0tyRmxycktVeG5rcGc9PSIsInZhbHVlIjoiMUU2WWp3RXVBNVpFN0FpK1RneUNzUT09IiwibWFjIjoiMjM3NGZlNmVhZWY5NmU5MWQ4ZWQxNjk3NDRjNTc0NzY3MzdkNTZmZjEwNmEzNmIyZWRmMDJlMjcyYTVjYzBjNiIsInRhZyI6IiJ9', 1, '2023-07-21 02:42:53', '2023-07-21 02:42:53', NULL);
INSERT INTO `login_logs` VALUES (104, 2, 'eyJpdiI6Ikw3bXNuRDN6U1pQenVWcXpaN2U2V0E9PSIsInZhbHVlIjoiMVBGYkpEaHQrczM3dy95ZmNLUGUxQT09IiwibWFjIjoiMzJjZDcyYzBkNTAzYzhjYWQ1ZGNkNmMyMmRhNTMwOTI2MjA5ODY3MmQ2Mjk4YTc2ZTZlNGQ2ODhlNWQ0ODBmYyIsInRhZyI6IiJ9', 1, '2023-07-24 04:06:29', '2023-07-24 04:06:29', NULL);
INSERT INTO `login_logs` VALUES (105, 2, 'eyJpdiI6IlRTZDRyZlZZeVl3eTAwZDVXdWlRZ1E9PSIsInZhbHVlIjoiaWlidnZRZzdYU0doTHgyaXJPN0t1QT09IiwibWFjIjoiNzhhZGE1OGI5MTZmYTYxMzdjZjRmNjFmZGJkN2NkNjU2NzFiYzUwNmQ5OGM2NWUwYmYzZGU3YjE1OTUzYzQ3YiIsInRhZyI6IiJ9', 1, '2023-07-24 06:01:14', '2023-07-24 06:01:14', NULL);
INSERT INTO `login_logs` VALUES (106, 2, 'eyJpdiI6IjZBOHh0a0xPQ3h6U0NEc3ZBanQ3U2c9PSIsInZhbHVlIjoiL2RwWC8zVG84SzY5bkp3bnhLOW15Zz09IiwibWFjIjoiNTAzZDc2NjAxOWFkNzIyZjZjNjAzYjljOGMxMjI5ZTAzNzNkMWZkOGJjMTUwZDYwZmQzNTEzMzBhODkwNzE3ZiIsInRhZyI6IiJ9', 1, '2023-07-25 03:53:14', '2023-07-25 03:53:14', NULL);
INSERT INTO `login_logs` VALUES (107, 2, 'eyJpdiI6ImIwSFVUMGFjMDloUWhXejRVbUZqZ0E9PSIsInZhbHVlIjoibmxGNkN6aWp4VWNHV2tUd0k3a1NLZz09IiwibWFjIjoiYjdiNWExZTFlMzMwYmNmNTcxYmJhNmNjMmY4M2I0NTc5YjJlYjk0OTY3MzVkYTU3ZjRhMjM3ZTBkY2MzYTQ0YyIsInRhZyI6IiJ9', 0, '2023-07-26 00:46:56', '2023-07-26 04:06:34', NULL);
INSERT INTO `login_logs` VALUES (108, 2, 'eyJpdiI6InZYNnRWQzhMcUZQenR4UFJJazZTUFE9PSIsInZhbHVlIjoiWTlYeHlwTDFQQWt6bEJzaUNFdlhqZz09IiwibWFjIjoiMGI5MmJhMGYwZmM4MzBkNTYzMTIxYjA2M2JhNTBjNDU1Y2JlNzc1NTViZjI0MjIzNjJhZjFhZTBmNDkwMWJhNSIsInRhZyI6IiJ9', 1, '2023-07-26 01:10:05', '2023-07-26 01:10:05', NULL);
INSERT INTO `login_logs` VALUES (109, 2, 'eyJpdiI6Imhvamd3eFV5MmE2d1RRL3h4Ymdqd3c9PSIsInZhbHVlIjoidDdjekU4N2R3Yy84dlhMV2trVlJkdz09IiwibWFjIjoiNzJkZTVkMzZmM2RmYjU3YzljZThhZDNhMzFjMDg3ODk3MTU2YTJkOWY1ZmU1Y2MyYTg4YzdlMWU4MWVlNWFiZiIsInRhZyI6IiJ9', 1, '2023-07-26 01:16:57', '2023-07-26 01:16:57', NULL);
INSERT INTO `login_logs` VALUES (110, 2, 'eyJpdiI6Ilh6Q0xDNDdLdnZtcThkbXZRNWRtNUE9PSIsInZhbHVlIjoiaTZCcjhhMzZPQS9qblRiMDRnOFh1QT09IiwibWFjIjoiZmExODYwNmEwYWU1ZDZlNDgyZjdjMDVkNzFjZTEyNzEzNDhiMDE1MTA0OWU1OTc1ZTc1ZGZkZmY4MDk1ODk3ZSIsInRhZyI6IiJ9', 0, '2023-07-26 05:53:53', '2023-07-26 05:54:36', NULL);
INSERT INTO `login_logs` VALUES (111, 2, 'eyJpdiI6InpQUDZjSFg2T2hOM1BrbWpsdVFzc2c9PSIsInZhbHVlIjoibEk5dVlyV1pYUk0zeU8wS252Mk00dz09IiwibWFjIjoiMWFiYmY1NzdhZDYyOWY3MGY3OTM2ZWY0M2QwZTkxMjEyNWJlOGY2OGEyMTI3OWNhODM3MjhmNDhiYWUxYzUwYiIsInRhZyI6IiJ9', 0, '2023-07-26 05:56:21', '2023-07-26 08:33:37', NULL);
INSERT INTO `login_logs` VALUES (112, 2, 'eyJpdiI6IkdOSk13MTlJbTc4bTlQOU1KQytTWGc9PSIsInZhbHVlIjoiZ3RHbzFKVjFISElra3VOczErWE1uQT09IiwibWFjIjoiM2ExZGUzN2U3MDY2NmE1OGJkOWY4OTg0NmU3ZjllODg1OGM1NmI1YzY1ZDZhYzZkNjc1OGM3ODI1NDY2YmMxYSIsInRhZyI6IiJ9', 1, '2023-07-27 00:46:26', '2023-07-27 00:46:26', NULL);
INSERT INTO `login_logs` VALUES (113, 2, 'eyJpdiI6IlBERjhxZmVvUURyVHUwTG8wUXoxTGc9PSIsInZhbHVlIjoiOE9KSVFUMXpTSHVUc3JpcWpnMm43QT09IiwibWFjIjoiODY5NjgxOTc3NTdjZWFlYzcwZWYwN2VjOGFiNTNlZGMyMzEyZmZjYTIyNzEyYTNhNDU0MTY1NTk2MjYzYTY4MiIsInRhZyI6IiJ9', 0, '2023-07-27 03:36:09', '2023-07-27 04:25:26', NULL);
INSERT INTO `login_logs` VALUES (114, 2, 'eyJpdiI6Ik5nZFZKS0laMXRsejY4NHVseDBLaXc9PSIsInZhbHVlIjoibkFtV3hvcXh3V1pOZ2V6b1cyeG82dz09IiwibWFjIjoiNjhkZmFiN2M1Y2I2YzcwN2NjOTE1MjU3NDY3YjRjNDVlZjQ4OWEyZDM3ODI0MWNlYWNjOGU1MmIzZGM1YzVjNSIsInRhZyI6IiJ9', 0, '2023-07-27 06:44:55', '2023-07-27 08:25:58', NULL);
INSERT INTO `login_logs` VALUES (115, 2, 'eyJpdiI6Ik5rckl1TlZMb0ZSSU9NanZBTU9Mdmc9PSIsInZhbHVlIjoiOHBVendQM1hFRkUvMzNBRFJiWXozdz09IiwibWFjIjoiMjY0MDlkMTgzMGQzNDY1ZGNhZWE5NWI1ZjA1YTJjMTgyMjA4NmU4YTc5MWQ1ZTg0NTIzYWEyN2Y4NzEwOTdkZSIsInRhZyI6IiJ9', 0, '2023-08-21 02:10:13', '2023-08-21 02:10:48', NULL);
INSERT INTO `login_logs` VALUES (116, 2, 'eyJpdiI6InJGNG9IcmZmQ0J2VXA1ME5lRW5EeXc9PSIsInZhbHVlIjoiMmZCN0liSitJNzJuU2pNM053SWNRQT09IiwibWFjIjoiN2I5YWE2NGY1MTllMTE3M2VkYzVkNWZlZDE1NDM2ZmExMDU1NWNmMzY3MmM4MDhhNWIzMDFlYmU3OTE4YzM1MiIsInRhZyI6IiJ9', 0, '2023-08-22 02:21:02', '2023-08-22 02:23:00', NULL);
INSERT INTO `login_logs` VALUES (117, 2, 'eyJpdiI6Ii9PQktqb3JjaGg5cWx2RXA1RVgvYUE9PSIsInZhbHVlIjoiUXBVTEh2WEowMi8zcG5pb3BOcUFhQT09IiwibWFjIjoiZWQ3ZDk1N2E1Y2YyYWM4YTI0NjliYmI0NmEyOGU3NmU4MTU2MWI1Yzc2ZjVhNDE2MTUyM2NhZGI3ODk0ZGI1YiIsInRhZyI6IiJ9', 0, '2023-09-18 06:18:17', '2023-09-18 07:57:25', NULL);
INSERT INTO `login_logs` VALUES (118, 2, 'eyJpdiI6Ikp1NFg2ek1uV3doVitiTmIrdEV1REE9PSIsInZhbHVlIjoiUnF6RXRFNFI1a1l3ei9XUW9LTEtqdz09IiwibWFjIjoiYTdjYWE1N2RlYmUzMmE5NTE5ZjcyYzQ0MjczZTIyNDdhMThmZjg1MmIwOWE3ZmY3MDA0Yjg5NGNmMWNkODM4OCIsInRhZyI6IiJ9', 1, '2023-11-01 02:04:29', '2023-11-01 02:04:29', NULL);
INSERT INTO `login_logs` VALUES (119, 1, 'eyJpdiI6Ino1TkVDcTZGWEhiODUxbXRyS214akE9PSIsInZhbHVlIjoiUm0wS1VOczBQMEM4bE40Q2dPRHQ3Zz09IiwibWFjIjoiZGIxZTViYmMzMzQ5NTRmODk0ODVjZDNhNzYxZmYyNzEwMDgxZjllOTg3ZjA0ZGZiN2I2MTIzOWU2NDU3ODQ4ZSIsInRhZyI6IiJ9', 1, '2024-09-17 04:33:04', '2024-09-17 04:33:04', NULL);
INSERT INTO `login_logs` VALUES (120, 1, 'eyJpdiI6InJVczVIWXRuM2k1ajJ5WTdNRUxHR0E9PSIsInZhbHVlIjoiZU1rWEp1aXJod0JjVGZJWG81ZkRCZz09IiwibWFjIjoiMGYzNDk4NjZmNWI4ZTZhNjIyYjhlMWEwMDEzODhlNDFkY2I0ZWY3YzczNWEyMDA2MDRkYTVmYmVmYTNmNjNjMCIsInRhZyI6IiJ9', 1, '2024-09-17 08:05:43', '2024-09-17 08:05:43', NULL);
INSERT INTO `login_logs` VALUES (121, 1, 'eyJpdiI6ImgvckZMc1FMalVKMnhoc0luTzRKWnc9PSIsInZhbHVlIjoiZ09ObitXUjRNR1licjdTWnI0dmtSQT09IiwibWFjIjoiZGZmMWU0ZTI3MGZhOWI2M2JhZDUzNzYyNDI3M2RlZjM5Y2NiYjgyOGIzOGViMmEzMjNjNGMzYjQ0NTQ4MWViOSIsInRhZyI6IiJ9', 1, '2024-09-19 03:17:22', '2024-09-19 03:17:22', NULL);
INSERT INTO `login_logs` VALUES (122, 1, 'eyJpdiI6Ik9CTHZILzI5UE92d2ZuNjF4OGtQUGc9PSIsInZhbHVlIjoiSE8yYUhDbFJvUnBsOVRINzVuR1o5dz09IiwibWFjIjoiMGQ2ZDllYTc3MjY5MjJkYzk2ZDJkMTViMzE5ODEyM2IxMzEwMDE2NjQzMzdmMDVkYWFhMWZlZmEwMWY1MzhiNSIsInRhZyI6IiJ9', 1, '2024-09-19 03:33:20', '2024-09-19 03:33:20', NULL);
INSERT INTO `login_logs` VALUES (123, 1, 'eyJpdiI6IndYRUdUYVNsK3BQQlphVmV0VXFoMnc9PSIsInZhbHVlIjoiaGovdnhNWVFka3BKRmpHMkZxZ2tTZz09IiwibWFjIjoiZTUwZTlmYjFiZGIyZGE0OTFlYjYwZWZlY2U2ODc3YzBiZTI1ZGNiY2FlODk3MWJmMDI3YmE2ZDgzY2Q4YmUyYiIsInRhZyI6IiJ9', 1, '2024-09-20 01:15:33', '2024-09-20 01:15:33', NULL);
INSERT INTO `login_logs` VALUES (124, 1, 'eyJpdiI6IldDeWowMmVyOHRqN1pGTUdkRUNmS0E9PSIsInZhbHVlIjoiWEE1UkFKelRlV3RQTndpTTJKMVdsZz09IiwibWFjIjoiYzkzNjQzYzIzMTQ0OTUyNDE4MTg3Y2E5N2Y2MmVlMTljOGVjNTVjODhjZjMwYzgyMGI4MjY0M2Q0N2M4ZGNkOCIsInRhZyI6IiJ9', 1, '2024-09-20 07:29:32', '2024-09-20 07:29:32', NULL);
INSERT INTO `login_logs` VALUES (125, 1, 'eyJpdiI6IlVMN2pNU01DMi9vWHczWUNyZjV0ZkE9PSIsInZhbHVlIjoialR5UTRUVHE0WWxEajVLNWZMZ1owQT09IiwibWFjIjoiMDI1OWNhZDEyNWQxODU5ZjgxZjlmOTdiNTc5NTk1MjgyNDBjM2Q2NTE5Y2I2ZWVlMzc3NDMwMmMyMTg3NTZjMCIsInRhZyI6IiJ9', 1, '2024-09-20 08:22:12', '2024-09-20 08:22:12', NULL);
INSERT INTO `login_logs` VALUES (126, 1, 'eyJpdiI6ImJWRTlzSGZManVUS3lhdE01ajlFanc9PSIsInZhbHVlIjoicGx0ZVI5dVZCdEh2WnVMWFpPMHpvZz09IiwibWFjIjoiNjFjZWZkYmE5ZGFkYWQ1ZTMwNmViMThkZjAzYTVmYjEwZTFjMmY4ZDQzZDM5M2RlYzYzOTIxZDJkMjAwOTBjMCIsInRhZyI6IiJ9', 1, '2024-09-23 02:04:39', '2024-09-23 02:04:39', NULL);
INSERT INTO `login_logs` VALUES (127, 1, 'eyJpdiI6IlBNNnFYcmJCaUdNV2ZVRDB1SHhrT2c9PSIsInZhbHVlIjoiQXFsS1daVkt0bkdpWlY4S0ZTbDM4Zz09IiwibWFjIjoiODY3NmI4Zjk1NjBhZDljNWQ2YmQzYjY5YWZjYmZlYTFlYjM5ZWZiNDcyZjhkOTY2ZjE4YTE3NTNlMmNiZjA4MSIsInRhZyI6IiJ9', 0, '2024-09-25 01:32:09', '2024-09-25 02:42:35', NULL);
INSERT INTO `login_logs` VALUES (128, 1, 'eyJpdiI6InZqNkJXenBCdjR0ZklUQ3FkZE1XU0E9PSIsInZhbHVlIjoiRm1HcEM4RkN6RjF4RFVEZk9nTm5Cdz09IiwibWFjIjoiMWQ2NTVmOGY4MDc0ZWZiNGVhOWNjMWE3NjljMDczMmI1ZWIyMTEyNzAyZTJmYWU5YWI5Mzg0NTBiZDYxZTNmNSIsInRhZyI6IiJ9', 1, '2024-09-25 02:48:39', '2024-09-25 02:48:39', NULL);
INSERT INTO `login_logs` VALUES (129, 1, 'eyJpdiI6ImYxR1BCLy91QjFEMUZSRytDblRhNXc9PSIsInZhbHVlIjoiN0I4Rk9JYUtNUUNTeUpDNlgxaDVZdz09IiwibWFjIjoiY2ExZjYwNGM5NDViMTQzNjZjOGFiNDQ5MWYzMDJiYmEwZTg3MWRiNDA0NWQxNWJkZTdjOGI1YmFjMmQ2MTc2OSIsInRhZyI6IiJ9', 1, '2024-09-26 01:32:33', '2024-09-26 01:32:33', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_01_23_050110_create_webconfig_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_01_24_094329_create_login_logs_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_03_07_071943_create_berita_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_03_07_072320_create_puskesmas_kegiatan_fotos_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_03_07_072704_create_puskesmas_kegiatan_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_03_08_031649_login_logs_table', 2);
INSERT INTO `migrations` VALUES (11, '2023_03_08_032958_login_logs_table', 3);
INSERT INTO `migrations` VALUES (12, '2023_03_09_015737_pelayanan_table', 4);
INSERT INTO `migrations` VALUES (13, '2023_03_09_034741_add_column_deleted_at_in_pelayanan_table', 5);
INSERT INTO `migrations` VALUES (14, '2023_03_09_034917_pelayanan_table', 6);
INSERT INTO `migrations` VALUES (15, '2023_03_09_043733_pelayanan_table', 7);
INSERT INTO `migrations` VALUES (16, '2023_03_09_094716_create_puskesmas_kegiatan_table', 8);
INSERT INTO `migrations` VALUES (17, '2023_03_10_013625_create_penghargaan_table', 9);
INSERT INTO `migrations` VALUES (18, '2023_03_14_014522_create_berita_kegiatan_table', 10);
INSERT INTO `migrations` VALUES (19, '2023_03_14_041515_create_berita_kegiatan_table', 11);
INSERT INTO `migrations` VALUES (20, '2023_03_14_090019_create_berita_kegiatan_table', 12);
INSERT INTO `migrations` VALUES (21, '2023_03_15_035553_create_berita_kegiatan_table', 13);
INSERT INTO `migrations` VALUES (22, '2023_04_03_071807_create_kategory_layanan_table', 14);
INSERT INTO `migrations` VALUES (23, '2023_04_03_072517_add_category_id_to_pelayanan_table', 14);
INSERT INTO `migrations` VALUES (24, '2023_04_03_073236_add_category_id_to_pelayanan', 15);
INSERT INTO `migrations` VALUES (25, '2023_04_03_073648_add_column_category_id_to_pelayanan', 16);
INSERT INTO `migrations` VALUES (26, '2023_04_03_073849_add_column_category_id_to_pelayanan_table', 17);
INSERT INTO `migrations` VALUES (27, '2023_04_03_074214_add_category_id_to_pelayanan_table', 18);
INSERT INTO `migrations` VALUES (28, '2023_04_03_074722_add_category_id_to_pelayanan_table', 19);
INSERT INTO `migrations` VALUES (29, '2023_04_04_022112_add_kategory_to_pelayanan_table', 20);
INSERT INTO `migrations` VALUES (30, '2023_04_04_022337_add_kategori_to_pelayanan_table', 21);
INSERT INTO `migrations` VALUES (31, '2023_04_05_033927_create_document_table', 22);
INSERT INTO `migrations` VALUES (32, '2023_04_06_012428_create_tarif_retribusi_table', 23);
INSERT INTO `migrations` VALUES (33, '2023_07_03_045736_create_layanan_puskesmas_table', 24);
INSERT INTO `migrations` VALUES (34, '2023_07_05_050613_create_lapor_table', 25);
INSERT INTO `migrations` VALUES (35, '2023_07_05_071318_create_penanggung_jawab_table', 25);
INSERT INTO `migrations` VALUES (36, '2023_07_18_082245_create_standar_pelayanan_table', 26);
INSERT INTO `migrations` VALUES (37, '2023_07_18_093820_create_kategori_standar_pelayanan_table', 26);
INSERT INTO `migrations` VALUES (38, '2023_07_20_011235_create_visi_table', 26);
INSERT INTO `migrations` VALUES (39, '2023_07_24_082711_create_tujuan_table', 27);
INSERT INTO `migrations` VALUES (40, '2023_07_24_082730_create_tata_nilai_table', 27);
INSERT INTO `migrations` VALUES (41, '2023_07_25_074430_create_visi_table', 28);
INSERT INTO `migrations` VALUES (42, '2024_09_19_011548_create_renstra_table', 29);
INSERT INTO `migrations` VALUES (43, '2024_09_19_011633_create_capaian_kerja_table', 29);
INSERT INTO `migrations` VALUES (44, '2024_09_19_011701_create_regulasi_internal_table', 29);
INSERT INTO `migrations` VALUES (45, '2024_09_19_011714_create_regulasi_eksternal_table', 29);
INSERT INTO `migrations` VALUES (46, '2024_09_19_061204_create_sejarah_table', 30);
INSERT INTO `migrations` VALUES (47, '2024_09_20_034950_create_waktu_layanan_table', 31);
INSERT INTO `migrations` VALUES (48, '2024_09_23_015409_create_faq_table', 32);
INSERT INTO `migrations` VALUES (49, '2024_09_25_014052_drop_kategori_from_berita_kegiatan_table', 33);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan`;
CREATE TABLE `pelayanan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_pelayanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pelayanan
-- ----------------------------
INSERT INTO `pelayanan` VALUES (22, 'Pelayanan Pemeriksaan laboratorium', '1', 'Dalam rangka pemeriksaan penunjang di Puskesmas Guguk Panjang menyediakan layanan pemeriksaan Laboratorium berupa : Pemariksaan Gula Darah, Kolesterol, dll', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/VuFF73ElEgzJ9A0M1T7zlRa0Z6wQ1xnGHIv76cg7.jpg', '2023-07-01 00:50:19', '2023-06-27 02:04:40', '2023-07-01 00:50:19');
INSERT INTO `pelayanan` VALUES (23, 'Pelayanan Pendaftaran dan Rekam Medis', '1', 'Layanan pendaftaran dan informasi merupakan alur layanan yang pertama di UPTD Puskesmas Guguk Panjang, sebelum pengunjung/pasien dilayani di poli layanan yang akan dituju. Pasien harus melakukan pendaftaran terlebih dahulu, pasien dapat melakukan pendaftaran secara online melalui mobile JKN atau offline langsung mendaftar di layanan pendaftaran Puskesmas. Untuk melakukan pendaftaran pasien cukup menyiapkan KTP atau kartu keluarga, Kartu BPJS, dan kartu berobat (bagi pasien lama)', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/O9MIu4Mn9W1LQOVBQ0iarWYIEWHPT0oQZhNtJ5Re.jpg', NULL, '2023-06-27 02:32:12', '2023-06-27 02:32:12');
INSERT INTO `pelayanan` VALUES (24, 'Pelayanan Tindakan dan Gawat Darurat', '1', 'Pelayanan Tindakan dan Gawat Darurat Puskesmas Guguk Panjang merupakan', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/KyC6i86ajBQLPeQuFrX4S4WEtGoUDnynIuFjoQYH.jpg', '2023-06-27 04:20:25', '2023-06-27 02:34:16', '2023-06-27 04:20:25');
INSERT INTO `pelayanan` VALUES (25, 'Pelayanan pemeriksaan Umum', '1', 'Pelayanan pemeriksaan umum merupakan layanan untuk pasien yang berusia 5-60 tahun, yang melayani jenis penyakit menular dan penyakit tidak menular', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/fq35OusUfz0tXsv6wiptQb5amcbnq6Ki8cWpvu25.jpg', '2023-06-27 04:17:29', '2023-06-27 03:02:48', '2023-06-27 04:17:29');
INSERT INTO `pelayanan` VALUES (26, 'Pelayanan Kesehatan Gigi dan Mulut', '1', 'Pelayanan kesehatan gigi dan mulut merupakan pelayanan yang diberikan kepada seluruh lapisan masyarakat berupa konseling, penambalan gigi karies dan pencabutan gigi', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/0J8xR6EyhOCgJ3tZlP4ICH31BsqqW6mm2c4Id8Z5.jpg', NULL, '2023-06-27 03:07:14', '2023-06-27 03:07:14');
INSERT INTO `pelayanan` VALUES (27, 'Pelayanan Pemeriksaan Penyakit Tidak Menular', '1', 'Pelayanan pemeriksaan penyakit tidak menular diberikan kepada masyarakat kelompok usia 60 tahun ke atas dan masyarakat yang terdiagnosa menderita penyakit tidak menular seperti penderita Hipertensi, Jantung, Diabetesmilitus, dll', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/A3iBzVjOcVjXmDUcC5eHBTiNcb67MAYG2A2BSgxb.jpg', NULL, '2023-06-27 03:11:19', '2023-06-27 03:11:19');
INSERT INTO `pelayanan` VALUES (28, 'Pelayanan Gizi', '1', 'Pelayana gizi diberikan kepada pasien yang membutuhkan konsultasi gizi dalam penyusunan menu sehari-hari sesuai dengan diet penyakitnya', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/vtXui6gfryg82JYCtvAanzboz6ADYCu8pK6Zjee4.jpg', NULL, '2023-06-27 03:14:27', '2023-06-27 03:14:27');
INSERT INTO `pelayanan` VALUES (29, 'Pelayanan Kesehatan Haji', '1', 'Pelayanan kesehatan haji diberikan kepada masyarakat yang merupakan jemaah haji yang berdomisili di wilayah kerja Puskesmas Guguk Panjang (Kelurahan Tarok Dipo,Pakan Kurai dan Bukit Cangang Kayu Ramang)', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/p3Hiqu8mhSVMH48aGJ8XV5ORwLEXxtWMEMXzQUUM.jpg', NULL, '2023-06-27 03:17:01', '2023-06-27 03:17:01');
INSERT INTO `pelayanan` VALUES (30, 'Pelayanan Kefarmasian', '1', 'Pelayanan kefarmasian adalah suatu pelayanan langsung dan bertanggung jawab kepada pasien yang berkaitan dengan sedian farmasi, dengan maksud mencapai hasil yang pasti untuk meningkatkan mutu kehidupan pasien.\r\nJenis pelayanan Kefarmasian di puskesmas guguk panjang : \r\n1. Pelayanan Resep\r\n2. Pelayanan farmasi obat (PIO)\r\n3. Konseling', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/wYMGuGJjCBoBemyPURCwMkIBhEdo0ynE35oKZ79b.jpg', NULL, '2023-06-27 03:24:33', '2023-06-27 03:24:33');
INSERT INTO `pelayanan` VALUES (31, 'Pelayanan Promosi Kesehatan', '2', 'Pelayanan promosi kesehatan merupakan upaya untuk meningkatkan kemampuan masyarakat melalui pembelajaran dari, oleh, untuk dan bersama masyarakat agar mereka dapat menolong diri sendiri serta mengembangkan kegiatan yang bersumber daya masyarakat sesuai dengan kondisi sosial budaya setempat dan mendukung kebijakn publik yang berwawasan kesehatan', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/ZN2W25GatZPURBNYa4fEM7qT7xpif5lew1pcQ0kw.jpg', NULL, '2023-06-27 03:36:56', '2023-06-27 03:36:56');
INSERT INTO `pelayanan` VALUES (32, 'Pelayanan Tindakan dan Gawat Darurat', '1', 'Pelayanan tindakan dan gawat darurat merupakan unit layanan yang menangani pasien yang memerlukan tindakan medis dan pasien yang memerlukan pertolongan segera dan melakukan rujukan emergensi ke rumah sakit bila diperlukan.', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/8Mm0zkhe3Zav1eZVQgkC73eq7YXbICEGnTTVkUZY.jpg', NULL, '2023-06-27 03:54:05', '2023-06-27 03:54:05');
INSERT INTO `pelayanan` VALUES (33, 'Pelayanan Kesehatan Ibu dan Reproduksi', '1', 'Pelayanan kesehatan ibu dan reproduksi merupakan unit yang melayani pemeriksaan kesehatan ibu hamil, ibu nifas, ibu menyusui dan melayani pemberian kontrasepsi (Pil KB, suntik, implant, IUD) serta pemeriksaan IVA', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/AgNb0S9FEtC71oUfQ2P8PsQPpxQdscoyzw6KaQ7O.jpg', NULL, '2023-06-27 03:57:57', '2023-06-27 03:57:57');
INSERT INTO `pelayanan` VALUES (34, 'Pelayanan Pemeriksaan Umum', '1', 'Pelayanan pemeriksaan umum merupakan unit pelayanan yang melayani pemeriksaan kesehatan dan pengobatan secara umum pada kelompok usia 5-60 tahun', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/uiiJEcYwJzxho7SGZyBBTipoL0MVlbxEoBrwjV70.jpg', '2023-06-27 04:41:16', '2023-06-27 04:18:00', '2023-06-27 04:41:16');
INSERT INTO `pelayanan` VALUES (35, 'Pelayanan Pemeriksaan Umum', '1', 'Pelayanan pemeriksaan umum merupakan unit pelayanan yang melayani pemeriksaan kesehatan dan pengobatan secara umum pada kelompok usia 5-60 tahun', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/QlNh3CwmxdydNqUrilVxOPprhikHXtwbgMpphA1m.jpg', '2023-06-27 04:35:46', '2023-06-27 04:21:39', '2023-06-27 04:35:46');
INSERT INTO `pelayanan` VALUES (36, 'Pelayanan Pemeriksaan Umum', '1', 'Pelayanan pemeriksaan umum merupakan unit pelayanan yang melayani pemeriksaan kesehatan dan pengobatan secara umum pada kelompok usia 5-60 tahun', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/51LIgljAPT8kJ4PaSQjlLm2I1aYde7Bhf19ZNWgu.jpg', NULL, '2023-06-27 04:43:31', '2023-06-27 04:43:31');
INSERT INTO `pelayanan` VALUES (37, 'Pelayanan Pemeriksaan Umum', '1', 'Pelayanan pemeriksaan umum merupakan unit pelayanan yang melayani pemeriksaan kesehatan dan pengobatan secara umum pada kelompok usia 5-60 tahun', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/mM6mKYZdSJ9AZxWFdpLUjT6dE7PqwGQGTBVLAPs5.jpg', '2023-07-01 01:10:30', '2023-06-27 04:43:59', '2023-07-01 01:10:30');
INSERT INTO `pelayanan` VALUES (38, 'Pelayanan Pemeriksaan laboratorium', '1', 'Pelayanan Laboratorium merupakan salah satu layanan penunjang medis di UPTD Puskesmas Guguk Panjang, Laboratorium merupakan salah satu pelayanan yang melaksanakan pengukuran, penetapan, dan pengujian bahan yang berasal dari manusia untuk membantu penetapan jenis penyakit, kondisi kesehatan atau factor yang berpengaruh pada kesehatan perorangan dan masyarakat.', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/AQYquBNrsn36eJLjkBAPwExrF6g4bngehq7BBXH0.jpg', NULL, '2023-07-01 00:50:57', '2023-07-01 00:50:57');
INSERT INTO `pelayanan` VALUES (39, 'Pelayanan Imunisasi', '1', 'Pelayanan imunisasi merupakan unit yang melayani pemberian imunisasi dasar kepada bayi,balita dan anak sekolah, imunisasi calon penganten dan colon jemaah haji', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/6Wih1i8OfTihcHEaZN1qLaOTQ6h23at5yFZ2VjPz.jpg', NULL, '2023-07-01 00:55:45', '2023-07-01 00:55:45');
INSERT INTO `pelayanan` VALUES (40, 'Klinik Sanitasi', '1', 'Klinik sanitasi merupakan unit yang memberikan konsultasi untuk pasien yang memiliki penyakit berbasisi lingkungan', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/7b9VijkbqxKQJS9j95iFXRbVprn8yOjgGbksRMSx.jpg', NULL, '2023-07-01 01:13:30', '2023-07-01 01:13:30');
INSERT INTO `pelayanan` VALUES (41, 'Pelayanan Kesehatan Anak', '1', 'Pelayanan kesehatan anak merupakan unit yang melayani pemeriksaan kesehatan anak di bawah lima tahun dengan menggunakan algoritma MTBS dan MTBM, deteksi dini tumbuh kembanga anak', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/T9EOsJu3fs0wm9Ku6ALiehIDRL4UTAVuEQaj8qUU.jpg', NULL, '2023-07-01 01:16:15', '2023-07-01 01:16:15');
INSERT INTO `pelayanan` VALUES (42, 'Pelayanan Gizi Masyarakat', '21', 'Pelayanan gizi masyarakat merupakan suatu kegiatan atau pelayanan yang bertujuan untuk meningkatkan mutu gizi perorangan dan masyarakat, antara lain melalui perbaikan pola konsumsi makanan, perbaikan perilaku sadar gizi dan peningkatan akses dan mutu pelayanan gizi dan kesehatan sesuai dengan kemajuan ilmu dan teknologi.', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/4waGD1l3iH4d78Zbao4rRzgzilmJKdIX2C7Ide2X.jpg', NULL, '2023-07-01 01:23:03', '2023-07-01 01:23:03');
INSERT INTO `pelayanan` VALUES (43, 'Pelayanan Kesehatan Ibu dan Anak', '2', 'Upaya kesehatan ibu dan anak adalah upaya di bidang kesehatan yang menyangkut pelayanan dan pemeliharaan ibu hamil, ibu bersalin, ibu nifas, ibu menyusui, bayi dan anak balita serta anak prasekolah. Tujuan Pelayanan Kesehatan Ibu dan anak (KIA) adalah tercapainya kemampuan hidup sehat melalui peningkatan derajat kesehatan yang optimal, bagi ibu dan keluarganya untuk menuju Norma Keluarga Kecil Bahagia Sejahtera (NKKBS) serta meningkatnya derajat kesehatan anak untuk menjamin proses tumbuh kembang optimal yang merupakan landasan bagi peningkatan kualitas manusia seutuhnya', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/hEGznjObVvSY5BZIfkxmtUBQXLzdBaBKKBTx55lY.jpg', NULL, '2023-07-01 04:43:17', '2023-07-01 04:43:17');
INSERT INTO `pelayanan` VALUES (44, 'Pelayanan Kesehatan Lingkungan', '2', 'Pelayanan Kesehatan Lingkungan adalah kegiatan atau serangkaian kegiatan yang ditujukan untuk mewujudkan kualitas lingkungan yang sehat baik dari aspek fisik, kimia, biologi, maupun sosial guna mencegah penyakit dan/atau gangguan kesehatan yang diakibatkan oleh faktor risiko lingkungan', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/BRzl4T78Izzo7tYEHf2IS4BGwCJUqJ8EXK9CpZof.jpg', NULL, '2023-07-01 04:45:00', '2023-07-01 04:45:00');
INSERT INTO `pelayanan` VALUES (45, 'Pelayanan Pencegahan dan Pemberantasan Penyakit Tidak Menular', '2', 'Pelayanan penyakit tidak menular merupakan suatu pelayanan untuk pendekatan faktor resiko PTM serta deteksi dini dan pemantauan faktor resiko PTM terintegrasi yang dilaksanakan melalui kegiatan posbindu PTM dimasyarakat, pelayanan hipertensi dan diabetes melitus serta layanan khusus PTM lainnya di puskesmas. Dengan demikian puskesmas mampu melakukan upaya pencegahan dan pengendalian terpadu PTM demi terwujudnya peningkatan derajat kesehatan masyarakat', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/sgxpjYk6rL6Js2JmDZO6ZCUWmQYIMF6JFk5YJjNx.jpg', NULL, '2023-07-01 04:48:13', '2023-07-01 04:48:13');
INSERT INTO `pelayanan` VALUES (46, 'Pelayanan Kesehatan Tubercolosis (TBC)', '1', 'Pelayanan tuberculosis (TB) adalah salah satu layanan yang ada di puskesmas guguk panjang yang diberikan kepada pasien yang diduga penyakit TB dan yang sudah positif TB. Penyakit TB adalah penyakit yang menular yang disebabkan oleh kuman mycrobacterium tuberculosis. Pelayanan TB berguna untuk mengurangi penyakit TB yang ada di masyarakat, mengobati pasien TB sampai sembuh dan mecegah penularannya', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/wLGqht0Qpfdep7gkUIxTziT1h3NU3v3birCzXfMB.jpg', NULL, '2023-07-01 04:53:01', '2023-07-01 04:53:01');
INSERT INTO `pelayanan` VALUES (47, 'Pelayanan Kesehatan Lansia', '22', 'Program lansia merupakan pelayanan kesehatan dengan sasaran masyarakat lansia dan pralansia yang bertujuan untuk memelihara kesehatan lansia melalui kegiatan posyandu lansia dan melakukan skrinning kesehatan pada lansia yang dilaksanakan sekali dalam setahun sebagai upaya penjaringan masalah kesehatan yang ada pada lansia', 'http://pusk-guguk-panjang.bukittinggikota.go.id/public/storage/pelayanan/5cCVltK2fOzqFOSUK06O5WSUfQWlUSe9v35mI79Q.jpg', NULL, '2023-07-01 04:54:24', '2023-07-01 04:54:24');

-- ----------------------------
-- Table structure for penanggung_jawab
-- ----------------------------
DROP TABLE IF EXISTS `penanggung_jawab`;
CREATE TABLE `penanggung_jawab`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ig` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of penanggung_jawab
-- ----------------------------

-- ----------------------------
-- Table structure for penghargaan
-- ----------------------------
DROP TABLE IF EXISTS `penghargaan`;
CREATE TABLE `penghargaan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_penghargaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of penghargaan
-- ----------------------------
INSERT INTO `penghargaan` VALUES (5, 'Akreditasi Puskesmas', 'Berdasarkan penilaian akreditasi yang dilakukan oleh Surveor dari Kementrian Kesehatan ke Puskesmas Guguk Panjang pada tahun 2019, mendapatkan penilaian dengan tingkat  Paripurna', 'penghargaan/P5pqHbK79WcK5cd15k4aOcN29EaYbzuDCmiPEpZX.jpg', NULL, '2023-07-01 05:33:52', '2023-07-01 05:33:52');
INSERT INTO `penghargaan` VALUES (6, 'Penghargaan Finalis Tingkat Kota Bukittinggi', 'Program inovasi Puskesmas Guguk Panjang dengan kegiatan pengukuran tekanan darah di tengah-tengah masyarakat yang dilaksanakan oleh kader terlatih.', 'penghargaan/2DgymqIUEOi7atNzZuYrCUrtCL1GK4ljNUaANMCT.jpg', NULL, '2023-07-01 05:46:53', '2023-07-01 05:46:53');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for puskesmas_kegiatan_fotos
-- ----------------------------
DROP TABLE IF EXISTS `puskesmas_kegiatan_fotos`;
CREATE TABLE `puskesmas_kegiatan_fotos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of puskesmas_kegiatan_fotos
-- ----------------------------

-- ----------------------------
-- Table structure for regulasi_eksternal
-- ----------------------------
DROP TABLE IF EXISTS `regulasi_eksternal`;
CREATE TABLE `regulasi_eksternal`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of regulasi_eksternal
-- ----------------------------
INSERT INTO `regulasi_eksternal` VALUES (1, 'tes lagiii', 'regulasi-eksternal/Puo8gssB8tOraeI5hPecIDP33C55xMf8CY0QljQU.pdf', NULL, '2024-09-20 01:42:08', '2024-09-20 01:42:27');

-- ----------------------------
-- Table structure for regulasi_internal
-- ----------------------------
DROP TABLE IF EXISTS `regulasi_internal`;
CREATE TABLE `regulasi_internal`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of regulasi_internal
-- ----------------------------
INSERT INTO `regulasi_internal` VALUES (1, 'testaja', 'regulasi-internal/SHV7QKS2HzWijgXLdqFq5sh1ARGxR2H3zk0965Vj.pdf', '2024-09-25 02:56:25', '2024-09-20 01:41:36', '2024-09-25 02:56:25');
INSERT INTO `regulasi_internal` VALUES (2, 'Regulasi', 'regulasi-internal/98CkaBnDszjV99cKOSQaczszRORjAi4mYgERF50l.pdf', NULL, '2024-09-25 02:56:50', '2024-09-25 02:56:50');

-- ----------------------------
-- Table structure for renstra
-- ----------------------------
DROP TABLE IF EXISTS `renstra`;
CREATE TABLE `renstra`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renstra
-- ----------------------------
INSERT INTO `renstra` VALUES (1, 'sfd', 'renstra/U9YfyA8Dg7BURJsG0Ki91HeCECLBxqNL3r3U9qva.pdf', NULL, '2024-09-20 02:21:11', '2024-09-20 02:21:11');

-- ----------------------------
-- Table structure for sejarah
-- ----------------------------
DROP TABLE IF EXISTS `sejarah`;
CREATE TABLE `sejarah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sejarah
-- ----------------------------
INSERT INTO `sejarah` VALUES (2, '<p>&quot;Sejarah didirika tahun ..................&quot;</p>', '2024-09-25 02:52:15', '2024-09-25 02:52:15');

-- ----------------------------
-- Table structure for standar_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `standar_pelayanan`;
CREATE TABLE `standar_pelayanan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_pelayanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Komponen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 257 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of standar_pelayanan
-- ----------------------------
INSERT INTO `standar_pelayanan` VALUES (3, '2', 'Jam Pelayanan', '<p>Senin - Kamis : 08.00 - 11.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu : 08.00 - 10.00 WIB</p>', '2023-07-26 02:05:03', '2023-07-26 02:31:51');
INSERT INTO `standar_pelayanan` VALUES (4, '2', 'Persyaratan Pelayanan', '<p>Pengguna layanan (pasien) datang dengan membawa kartu identitas: KTP/ KK atau (pasien baru), Kartu Pendaftaran Pasien (pasien lama), Kartu Jaminan Kesehatan (bagi yang memiliki)</p>', '2023-07-26 02:13:58', '2023-07-26 02:13:58');
INSERT INTO `standar_pelayanan` VALUES (5, '2', 'Sistem, Mekanisme, dan Prosedur', '<p>1. Pasien baru: pasien datang melakukan pendaftaran melalui petugas di bagian pendaftaran dengan menunjukkan kartu dentitas dan kartu jaminan kesehatan (jika ada) untuk mendapat nomor rekam medis</p>\r\n\r\n<p>2. Pasien lama: pasien datang melakukan pendaftaran melalui mesin antrian pendaftaran mandiri sesuai poli yang akan dituju. Pasien mendapatkan nomor antrian. Pasien menunggu panggilan dari poli</p>', '2023-07-26 02:17:55', '2023-07-26 02:17:55');
INSERT INTO `standar_pelayanan` VALUES (6, '2', 'Jangka Waktu Penyelesaian', '<p>&lt; 10 menit</p>', '2023-07-26 02:19:00', '2023-07-26 02:19:00');
INSERT INTO `standar_pelayanan` VALUES (7, '2', 'Biaya/ Tarif', '<p>1. Paien Umum: retribusi Rp. 7.000</p>\r\n\r\n<p>2. Pasien pemegang jaminan kesehatan: biaya ditanggung penjamin (kecuali retribusi untuk pelayanan KIR dokter, tes buta warna dan catin)</p>', '2023-07-26 02:20:39', '2023-07-26 02:20:39');
INSERT INTO `standar_pelayanan` VALUES (8, '2', 'Produk Pelayanan', '<p>Pendaftaran pasien pelayanan rekam medis pasien</p>', '2023-07-26 02:21:23', '2023-07-26 02:21:23');
INSERT INTO `standar_pelayanan` VALUES (9, '2', 'Prasarana dan/ atau fasilitas', '<p>1. Ruang tunggu dilengkapi dengan kipas angin dan telivisi</p>\r\n\r\n<p>2. Ruang tunggu dilengkapi dengan leaflet dan banner</p>', '2023-07-26 02:22:53', '2023-07-26 02:22:53');
INSERT INTO `standar_pelayanan` VALUES (10, '2', 'Kompetensi Pelaksana', '<p>D III Rekam Medis yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya&nbsp;</p>', '2023-07-26 02:24:05', '2023-07-26 02:24:05');
INSERT INTO `standar_pelayanan` VALUES (11, '2', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 02:25:12', '2023-07-26 02:31:39');
INSERT INTO `standar_pelayanan` VALUES (12, '2', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggi.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 02:29:08', '2023-07-26 02:29:08');
INSERT INTO `standar_pelayanan` VALUES (13, '2', 'Jumlah Pelaksana', '<p>Perekam Medis: 2 orang</p>', '2023-07-26 02:31:25', '2023-07-26 02:31:25');
INSERT INTO `standar_pelayanan` VALUES (14, '2', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar layanan)</p>', '2023-07-26 02:33:07', '2023-07-26 02:33:07');
INSERT INTO `standar_pelayanan` VALUES (15, '2', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>Informasi tentang rekam medis pasien dijamin kerahasiannya</p>', '2023-07-26 02:33:56', '2023-07-26 02:36:26');
INSERT INTO `standar_pelayanan` VALUES (16, '2', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen setiap 6 bulan sekali. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 02:35:57', '2023-07-26 02:37:15');
INSERT INTO `standar_pelayanan` VALUES (17, '3', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 34 Tahun 2022 tentang Akreditasi Fasilitas Kesehatan Tingkat Pertama</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI Nomor HK.01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI Nomor HK.01.07/Menkes/1936/2022 tentang Perubahan Atasan Keputusan Menteri Kesehatan Nomor HK.01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>', '2023-07-26 02:43:51', '2023-07-26 02:43:51');
INSERT INTO `standar_pelayanan` VALUES (18, '3', 'Jam Pelayanan', '<p>Senin -&nbsp; Kamis: 08.00 - 14.30 WIIB</p>\r\n\r\n<p>Jumat: 08.00 - 11.30 WIB</p>\r\n\r\n<p>Sabtu: 08.00 - 13.00 WIB</p>', '2023-07-26 02:45:17', '2023-07-26 02:45:17');
INSERT INTO `standar_pelayanan` VALUES (19, '3', 'Persyaratan Pelayanan', '<p>Kondisi pasien darurat</p>', '2023-07-26 02:46:02', '2023-07-26 02:46:02');
INSERT INTO `standar_pelayanan` VALUES (20, '3', 'Sistem, Mekanisme dan Prosedur', '<p>Pasien datang. Keluarga pasien atau penanggung jawab mendaftarkan pasien. Petugas melakukan anamnesis. Petugas melakukan pemeriksaan dan tindakan medis yang sesuai. Apabila diperlukan, petugas merujuk pasien ke fasilitas pelayanan kesehatan yang lebih tinggi</p>', '2023-07-26 02:48:04', '2023-07-26 02:48:04');
INSERT INTO `standar_pelayanan` VALUES (21, '3', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 02:48:36', '2023-07-26 02:49:16');
INSERT INTO `standar_pelayanan` VALUES (22, '3', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai standar Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Peyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 02:51:57', '2023-07-26 02:51:57');
INSERT INTO `standar_pelayanan` VALUES (23, '3', 'Produk Pelayanan', '<p>Penanganan kegawatdaruratan</p>', '2023-07-26 02:52:24', '2023-07-26 02:52:24');
INSERT INTO `standar_pelayanan` VALUES (24, '3', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang UGD</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Ambulans untuk rujukan pasien</p>', '2023-07-26 02:53:22', '2023-07-26 02:53:22');
INSERT INTO `standar_pelayanan` VALUES (25, '3', 'Kompetensi Pelaksana', '<p>1. Dokter umum yang meiliki surat ijin praktek</p>\r\n\r\n<p>2. D III/ S 1 Keperawatan yang meiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-26 02:54:51', '2023-07-26 02:54:51');
INSERT INTO `standar_pelayanan` VALUES (26, '3', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 02:56:06', '2023-07-26 03:00:28');
INSERT INTO `standar_pelayanan` VALUES (27, '3', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Wesite: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 02:56:48', '2023-07-26 03:03:28');
INSERT INTO `standar_pelayanan` VALUES (28, '3', 'Jumlah Pelaksana', '<p>Dokter Umum: 1 orang</p>\r\n\r\n<p>Perawat: minimal 1 orang</p>', '2023-07-26 03:05:59', '2023-07-26 03:05:59');
INSERT INTO `standar_pelayanan` VALUES (29, '3', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan&nbsp; (sesuai dengan standar pelayanan)</p>', '2023-07-26 03:10:16', '2023-07-26 03:10:16');
INSERT INTO `standar_pelayanan` VALUES (30, '3', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>\r\n\r\n<p>3. Obat dan vaksin yang digunakan dijamin masa berlaku penggunaannya (tidak kadaluwarsa)</p>', '2023-07-26 03:12:36', '2023-07-26 03:12:36');
INSERT INTO `standar_pelayanan` VALUES (31, '3', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 03:14:33', '2023-07-26 03:14:33');
INSERT INTO `standar_pelayanan` VALUES (32, '4', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 34 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI No. HK.01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI No. HK.01.07/Menkes/1936/2022 tentang Perubahan Atas Keputusan Menteri Kesehatan RI Nomor HK.01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>', '2023-07-26 03:36:33', '2023-07-26 03:36:33');
INSERT INTO `standar_pelayanan` VALUES (33, '4', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-26 03:38:44', '2023-07-26 03:38:44');
INSERT INTO `standar_pelayanan` VALUES (34, '4', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-26 03:39:15', '2023-07-26 03:39:15');
INSERT INTO `standar_pelayanan` VALUES (35, '4', 'Sistem, Mekanisme, dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petugas melakukan pengukuran vital sign. Petugas melakukan pemeriksaan/ tindakan sesuai prosedur. Petugas menentukan diganosis. Petugas memberikan terapi/ tindak lanjut yang sesuai</p>', '2023-07-26 03:44:19', '2023-07-26 03:44:19');
INSERT INTO `standar_pelayanan` VALUES (36, '4', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 03:45:31', '2023-07-26 03:45:31');
INSERT INTO `standar_pelayanan` VALUES (37, '4', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 03:47:41', '2023-07-26 03:47:41');
INSERT INTO `standar_pelayanan` VALUES (38, '4', 'Produk Pelayanan', '<p>1. Konsultasi dokter</p>\r\n\r\n<p>2. Pemeriksaan medis</p>\r\n\r\n<p>3. Tindakan medis</p>\r\n\r\n<p>4. Surat rujukan</p>\r\n\r\n<p>5. Surat keterangan kesehatan</p>\r\n\r\n<p>6. Surat keterangan buta warna</p>', '2023-07-26 03:49:10', '2023-07-26 03:49:10');
INSERT INTO `standar_pelayanan` VALUES (39, '4', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien umum</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>\r\n\r\n<p>&nbsp;</p>', '2023-07-26 03:50:04', '2023-07-26 03:50:04');
INSERT INTO `standar_pelayanan` VALUES (40, '4', 'Kompetensi Pelaksana', '<p>1. Dokter Umum yang memiliki surat ijin praktek</p>\r\n\r\n<p>2. D III/ S 1 Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-26 03:53:05', '2023-07-26 03:53:05');
INSERT INTO `standar_pelayanan` VALUES (41, '4', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 03:53:55', '2023-07-26 03:53:55');
INSERT INTO `standar_pelayanan` VALUES (42, '4', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 03:56:37', '2023-07-26 03:56:37');
INSERT INTO `standar_pelayanan` VALUES (43, '4', 'Jumlah Pelaksana', '<p>1. Dokter Umum minimal 1 orang</p>\r\n\r\n<p>2. Perawat minimal 1 orang</p>', '2023-07-26 03:57:15', '2023-07-26 03:57:15');
INSERT INTO `standar_pelayanan` VALUES (44, '4', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-26 03:58:46', '2023-07-26 03:58:46');
INSERT INTO `standar_pelayanan` VALUES (45, '4', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-26 04:02:27', '2023-07-26 04:02:27');
INSERT INTO `standar_pelayanan` VALUES (46, '4', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen setiap 6 bulan sekali. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 04:06:09', '2023-07-26 04:06:09');
INSERT INTO `standar_pelayanan` VALUES (47, '5', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Inodnesia Nomor 4 Tahun 2019 tentang Standar Teknis Pemenuhan Mutu Pelayanan Dasar Pada Standar Pelayanan Minimal Bidang Kesehatan</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI No. HK01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI No. HK.01.07/Menkes/1936/2022 tentang Perubahan Atas Keputusan Menteri Kesehatan Nomor HK.01.07/Menkes/1186/2022 tentang Panduan Praktik Klinis Bagi Dokter di Fasilitas Kesehatan Tingkat Pertama</p>\r\n\r\n<p>&nbsp;</p>', '2023-07-26 06:03:42', '2023-07-26 06:03:42');
INSERT INTO `standar_pelayanan` VALUES (48, '5', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-26 06:04:27', '2023-07-26 06:04:27');
INSERT INTO `standar_pelayanan` VALUES (49, '5', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-26 06:09:17', '2023-07-26 06:09:17');
INSERT INTO `standar_pelayanan` VALUES (50, '5', 'Sitem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petuga melakukan pengukuran vital sign. Petugas melakukan pemeriksaan/ tindakan sesuai prosedur. Petugas menentukan diagnosis. Petugas memberikan terapi/ tindak lanjut yang sesuai</p>', '2023-07-26 06:11:32', '2023-07-26 06:11:32');
INSERT INTO `standar_pelayanan` VALUES (51, '5', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 06:12:44', '2023-07-26 06:12:44');
INSERT INTO `standar_pelayanan` VALUES (52, '5', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 06:15:35', '2023-07-26 06:15:35');
INSERT INTO `standar_pelayanan` VALUES (53, '5', 'Produk Pelayanan', '<p>1. Konsultasi dokter</p>\r\n\r\n<p>2. Pemeriksaan medis</p>\r\n\r\n<p>3. Tindakan medis</p>\r\n\r\n<p>4. Surat rujukan</p>\r\n\r\n<p>5. Surat keterangan kesehatan</p>', '2023-07-26 06:16:41', '2023-07-26 06:16:41');
INSERT INTO `standar_pelayanan` VALUES (54, '5', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien PTM dan Lansia</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>', '2023-07-26 06:18:11', '2023-07-26 06:18:11');
INSERT INTO `standar_pelayanan` VALUES (55, '5', 'Kompetensi Pelaksana', '<p>1. Dokter Umum yang memiliki surat ijin praktek</p>\r\n\r\n<p>2. D III/ S1 Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>\r\n\r\n<p>&nbsp;</p>', '2023-07-26 06:19:36', '2023-07-26 06:19:36');
INSERT INTO `standar_pelayanan` VALUES (56, '5', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 06:20:28', '2023-07-26 06:20:28');
INSERT INTO `standar_pelayanan` VALUES (57, '5', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 06:23:32', '2023-07-26 06:23:32');
INSERT INTO `standar_pelayanan` VALUES (58, '5', 'Jumlah Pelaksana', '<p>1. Dokter Umum minimal 1 orang</p>\r\n\r\n<p>2. Perawat minimal 1 orang</p>', '2023-07-26 06:24:52', '2023-07-26 06:24:52');
INSERT INTO `standar_pelayanan` VALUES (59, '5', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-26 06:25:47', '2023-07-26 06:25:47');
INSERT INTO `standar_pelayanan` VALUES (60, '5', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing</p>', '2023-07-26 07:11:02', '2023-07-26 07:11:02');
INSERT INTO `standar_pelayanan` VALUES (61, '5', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen setiap 6 bulan sekali. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 07:12:57', '2023-07-26 07:12:57');
INSERT INTO `standar_pelayanan` VALUES (62, '6', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 4 Tahun 2019 tentang Standar Teknis Pemenuhan Mutu Pelayanan Dasar Pada Standar Pelayanan Minimal Bidang Kesehatan&nbsp;</p>', '2023-07-26 07:16:34', '2023-07-26 07:29:59');
INSERT INTO `standar_pelayanan` VALUES (63, '6', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-26 07:19:26', '2023-07-26 07:19:26');
INSERT INTO `standar_pelayanan` VALUES (64, '6', 'Persyaratan Pelayanan', '<p>1. Tersedianya rekam medis pasien</p>\r\n\r\n<p>2. Buku KIA/ KMS</p>', '2023-07-26 07:20:02', '2023-07-26 07:28:25');
INSERT INTO `standar_pelayanan` VALUES (65, '6', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petugas melakukan pengukuran vital sign. Petugas melakukan pemeriksaan/ tindakan sesuai prosedur. Petugas melakukan kolaborasi dengan dokter untuk kasus yang perlu tindak lanjut</p>', '2023-07-26 07:23:07', '2023-07-26 07:23:07');
INSERT INTO `standar_pelayanan` VALUES (66, '6', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 07:24:06', '2023-07-26 07:24:06');
INSERT INTO `standar_pelayanan` VALUES (67, '6', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 07:26:55', '2023-07-26 07:26:55');
INSERT INTO `standar_pelayanan` VALUES (68, '6', 'Produk Pelayanan', '<p>Pelayanan kesehatan anak</p>', '2023-07-26 07:31:03', '2023-07-26 07:31:03');
INSERT INTO `standar_pelayanan` VALUES (69, '6', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien anak</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>', '2023-07-26 07:32:16', '2023-07-26 07:32:16');
INSERT INTO `standar_pelayanan` VALUES (70, '6', 'Kompetensi Pelaksana', '<p>D III Kebidanan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-26 07:33:22', '2023-07-26 07:33:22');
INSERT INTO `standar_pelayanan` VALUES (71, '6', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 07:34:43', '2023-07-26 07:34:43');
INSERT INTO `standar_pelayanan` VALUES (72, '6', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 07:38:05', '2023-07-26 07:38:05');
INSERT INTO `standar_pelayanan` VALUES (73, '6', 'Jumlah Pelaksana', '<p>Bidan minimal 1 orang</p>', '2023-07-26 07:39:02', '2023-07-26 07:39:02');
INSERT INTO `standar_pelayanan` VALUES (74, '6', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjwabkan (sesuai dengan standar pelayanan)</p>', '2023-07-26 07:40:17', '2023-07-26 07:40:17');
INSERT INTO `standar_pelayanan` VALUES (75, '6', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-26 07:42:51', '2023-07-26 07:42:51');
INSERT INTO `standar_pelayanan` VALUES (76, '6', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langung terkait kinerja dan kedisiplinan. Survie indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 07:44:58', '2023-07-26 07:44:58');
INSERT INTO `standar_pelayanan` VALUES (77, '7', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Undang-Undang Nomor 4 Tahun 2019 tentang Kebidanan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 4 Tahun 2019 tentang Standar Teknis Pemenuhan Mutu Pelayanan Dasar Pada Standar Pelayanan Minimal Bidang Kesehatan</p>\r\n\r\n<p>&nbsp;</p>', '2023-07-26 07:47:13', '2023-07-26 07:47:13');
INSERT INTO `standar_pelayanan` VALUES (78, '7', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-26 07:48:46', '2023-07-26 07:48:46');
INSERT INTO `standar_pelayanan` VALUES (79, '7', 'Persyaratan Pelayanan', '<p>1. Tersedianya rekam medis pasien</p>\r\n\r\n<p>2. Tersedianya buku KIA/ KMS</p>', '2023-07-26 07:49:44', '2023-07-26 07:49:44');
INSERT INTO `standar_pelayanan` VALUES (80, '7', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petugas melakukan pengukuran vital sign. Petugas melakukan pemeriksaan/ tindakan sesuai prosedur. Petugas melakukan kolaborasi dengan dokter untuk kasus yang perlu tindak lanjut</p>', '2023-07-26 07:52:06', '2023-07-26 07:52:06');
INSERT INTO `standar_pelayanan` VALUES (81, '7', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 07:52:47', '2023-07-26 07:52:47');
INSERT INTO `standar_pelayanan` VALUES (82, '7', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 07:54:45', '2023-07-26 07:54:45');
INSERT INTO `standar_pelayanan` VALUES (83, '7', 'Produk Pelayanan', '<p>Pelayanan kesehatan ibu dan reproduksi</p>', '2023-07-26 07:55:36', '2023-07-26 07:55:36');
INSERT INTO `standar_pelayanan` VALUES (84, '7', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>', '2023-07-26 07:57:04', '2023-07-26 07:57:04');
INSERT INTO `standar_pelayanan` VALUES (85, '7', 'Kompetensi Pelaksana', '<p>D III Kebidanan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-26 07:58:14', '2023-07-26 07:58:14');
INSERT INTO `standar_pelayanan` VALUES (86, '7', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-26 07:59:12', '2023-07-26 07:59:12');
INSERT INTO `standar_pelayanan` VALUES (87, '7', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 08:02:24', '2023-07-26 08:02:24');
INSERT INTO `standar_pelayanan` VALUES (88, '7', 'Jumlah Pelaksana', '<p>Bidan minimal 1 orang</p>', '2023-07-26 08:02:49', '2023-07-26 08:02:49');
INSERT INTO `standar_pelayanan` VALUES (89, '7', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-26 08:03:36', '2023-07-26 08:03:36');
INSERT INTO `standar_pelayanan` VALUES (90, '7', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-26 08:04:45', '2023-07-26 08:04:45');
INSERT INTO `standar_pelayanan` VALUES (91, '7', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 08:06:07', '2023-07-26 08:06:07');
INSERT INTO `standar_pelayanan` VALUES (92, '8', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 4 Tahun 2019 tentang Standar Teknis Pemenuhan Mutu Pelayanan Dasar Pada Standar Pelayanan Minimal Bidang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 23 Tahun 2022 tentang Penanggulangan HIV, AIDS dan IMS</p>\r\n\r\n<p>&nbsp;</p>', '2023-07-26 08:09:18', '2023-07-26 08:09:18');
INSERT INTO `standar_pelayanan` VALUES (93, '8', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-26 08:10:07', '2023-07-26 08:10:07');
INSERT INTO `standar_pelayanan` VALUES (94, '8', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-26 08:10:38', '2023-07-26 08:10:38');
INSERT INTO `standar_pelayanan` VALUES (95, '8', 'Sistem, Mekanisme dan Prosedur', '<p>Pasien datang ke klinik IMS dan VCT dengan sendiri atau dirujuk dari ruang pemeriksaan umum, ruang PTM dan Lansia dan ruang Kesehatan Ibu dan Reproduksi. Petugas menanyakan dan mencatat identitas pasien. Petugas menganamnesis dan mengisi blanko IMS. Petugas melakukan pemeriksaan pada pasien. Petugas merujuk pasien ke laboratorium untuk dilakukan pemeriksaan cairan tubuh dan darah. Petugas menegakkan diagnosis pasien. Petugas melakukan pasca konseling pada pasien. Petugas memberikan terapi pada pasien</p>', '2023-07-26 08:14:05', '2023-07-26 08:14:05');
INSERT INTO `standar_pelayanan` VALUES (96, '8', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-26 08:14:53', '2023-07-26 08:14:53');
INSERT INTO `standar_pelayanan` VALUES (97, '8', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-26 08:17:18', '2023-07-26 08:17:18');
INSERT INTO `standar_pelayanan` VALUES (98, '8', 'Produk Pelayanan', '<p>Konsultasi IMS dan VCT</p>', '2023-07-26 08:18:12', '2023-07-26 08:18:12');
INSERT INTO `standar_pelayanan` VALUES (99, '8', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan IMS dan VCT</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>', '2023-07-26 08:19:17', '2023-07-26 08:19:17');
INSERT INTO `standar_pelayanan` VALUES (100, '8', 'Kompetensi Pelaksana', '<p>D III Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-26 08:20:09', '2023-07-26 08:20:09');
INSERT INTO `standar_pelayanan` VALUES (101, '8', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas&nbsp;</p>', '2023-07-26 08:21:20', '2023-07-26 08:21:20');
INSERT INTO `standar_pelayanan` VALUES (102, '8', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-26 08:25:46', '2023-07-26 08:25:46');
INSERT INTO `standar_pelayanan` VALUES (103, '8', 'Jumlah Pelaksana', '<p>Perawat minimal 1 orang</p>', '2023-07-26 08:26:46', '2023-07-26 08:26:46');
INSERT INTO `standar_pelayanan` VALUES (104, '8', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-26 08:28:00', '2023-07-26 08:28:00');
INSERT INTO `standar_pelayanan` VALUES (105, '8', 'Jaminan Keaman dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-26 08:29:11', '2023-07-26 08:29:11');
INSERT INTO `standar_pelayanan` VALUES (106, '8', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-26 08:31:36', '2023-07-26 08:31:36');
INSERT INTO `standar_pelayanan` VALUES (107, '9', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 4 Tahun 2019 tentang Standar Teknis Pemenuhan Mutu Pelayanan Dasar Pada Standar Pelayanan Minimal Bidang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomro 4 Tahun 2020 tentang Penyelenggaraan Institusi Penerima Wajib Lapor</p>', '2023-07-27 00:50:54', '2023-07-27 00:50:54');
INSERT INTO `standar_pelayanan` VALUES (108, '9', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-27 00:51:45', '2023-07-27 00:51:45');
INSERT INTO `standar_pelayanan` VALUES (109, '9', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-27 00:52:16', '2023-07-27 00:52:16');
INSERT INTO `standar_pelayanan` VALUES (110, '9', 'Sistem, Mekanisme dan Prosedur', '<p>Pasien datang ke ruang pemeriksaan IPWL secara sukarela atau diantar oleh keluarga. Petugas melakukan assessment dan mencatat dalam rekam medis. Petugas merujuk pasien pasien ke laboratorium untuk dilakukan tes urine. Petugas menegakkan diagnosis. Petugas merencanakan terapi berdasarkan hasil tes urine. Petugas memberikan konseling dan terapi simptomatis</p>', '2023-07-27 00:54:53', '2023-07-27 00:54:53');
INSERT INTO `standar_pelayanan` VALUES (111, '9', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 00:55:13', '2023-07-27 00:55:13');
INSERT INTO `standar_pelayanan` VALUES (112, '9', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 00:57:22', '2023-07-27 00:57:22');
INSERT INTO `standar_pelayanan` VALUES (113, '9', 'Produk Layanan', '<p>Konsultasi Institusi Penerima Wajib Lapor</p>', '2023-07-27 00:58:01', '2023-07-27 00:58:01');
INSERT INTO `standar_pelayanan` VALUES (114, '9', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Komputer dan jaringannya</p>\r\n\r\n<p>4. Ruang tunggu pasien</p>', '2023-07-27 00:58:48', '2023-07-27 00:58:48');
INSERT INTO `standar_pelayanan` VALUES (115, '9', 'Kompetensi Pelaksana', '<p>D III Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 00:59:48', '2023-07-27 00:59:48');
INSERT INTO `standar_pelayanan` VALUES (116, '9', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 01:00:40', '2023-07-27 01:00:40');
INSERT INTO `standar_pelayanan` VALUES (117, '9', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 01:03:29', '2023-07-27 01:03:29');
INSERT INTO `standar_pelayanan` VALUES (118, '9', 'Jumlah Pelaksana', '<p>Perawat minimal 1 orang</p>', '2023-07-27 01:03:55', '2023-07-27 01:03:55');
INSERT INTO `standar_pelayanan` VALUES (119, '9', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 01:04:38', '2023-07-27 01:04:38');
INSERT INTO `standar_pelayanan` VALUES (120, '9', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 01:05:37', '2023-07-27 01:05:37');
INSERT INTO `standar_pelayanan` VALUES (121, '9', 'Evaluasi Kinerja Pelaksana', '<p>Evalusi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinajuan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 01:06:56', '2023-07-27 01:06:56');
INSERT INTO `standar_pelayanan` VALUES (122, '10', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 13 Tahun 2015 tentang Penyelenggaraan Pelayanan Kesehatan Lingkungan di Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 01:08:43', '2023-07-27 01:08:43');
INSERT INTO `standar_pelayanan` VALUES (123, '10', 'Jam Pelayanan', '<p>Senin dan Rabu : 08.00 - 12.00 WIB</p>', '2023-07-27 01:09:17', '2023-07-27 01:09:17');
INSERT INTO `standar_pelayanan` VALUES (124, '10', 'Persyaratan Pelayanan', '<p>Blanko permintaan konsultasi sanitasi dari ruang pemeriksaan umum/ ruang PTM dan lansia/ ruang kesehatan anak/ ruang kesehatan ibu dan reproduksi</p>', '2023-07-27 01:10:34', '2023-07-27 01:10:34');
INSERT INTO `standar_pelayanan` VALUES (125, '10', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis pasien. Petugas memberikan penyuluhan atau konsultasi sesuai dengan keluhan</p>', '2023-07-27 01:12:10', '2023-07-27 01:12:10');
INSERT INTO `standar_pelayanan` VALUES (126, '10', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 01:12:33', '2023-07-27 01:12:33');
INSERT INTO `standar_pelayanan` VALUES (127, '10', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Standar Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 01:50:37', '2023-07-27 01:50:37');
INSERT INTO `standar_pelayanan` VALUES (128, '10', 'Produk Layanan', '<p>Konsultasi sanitasi</p>', '2023-07-27 01:51:31', '2023-07-27 01:51:31');
INSERT INTO `standar_pelayanan` VALUES (129, '10', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang konsultasi</p>\r\n\r\n<p>2. Ruang tunggu pasien</p>', '2023-07-27 01:52:02', '2023-07-27 01:52:02');
INSERT INTO `standar_pelayanan` VALUES (130, '10', 'Kompetensi Pelaksana', '<p>D III Kesehatan Lingkungan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 01:52:43', '2023-07-27 01:52:43');
INSERT INTO `standar_pelayanan` VALUES (131, '10', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 01:53:26', '2023-07-27 01:53:26');
INSERT INTO `standar_pelayanan` VALUES (132, '10', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 01:56:07', '2023-07-27 01:56:07');
INSERT INTO `standar_pelayanan` VALUES (133, '10', 'Jumlah Pelaksana', '<p>Sanitarian minimal 1 orang</p>', '2023-07-27 01:56:33', '2023-07-27 01:56:33');
INSERT INTO `standar_pelayanan` VALUES (134, '10', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 01:57:12', '2023-07-27 01:57:12');
INSERT INTO `standar_pelayanan` VALUES (135, '10', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informais tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 01:58:15', '2023-07-27 01:58:15');
INSERT INTO `standar_pelayanan` VALUES (136, '10', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinajaun Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 01:59:56', '2023-07-27 01:59:56');
INSERT INTO `standar_pelayanan` VALUES (137, '11', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas&nbsp;</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomro 28 Tahun 2019 tentang Angka Kecukupan Gizi yang Dianjurkan Untuk Masyarakat Indonesia</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 2 Tahun 2022 tentang Standar Antropometri Anak</p>', '2023-07-27 02:02:46', '2023-07-27 02:02:46');
INSERT INTO `standar_pelayanan` VALUES (138, '11', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-27 02:03:30', '2023-07-27 02:03:30');
INSERT INTO `standar_pelayanan` VALUES (139, '11', 'Persyaratan Pelayanan', '<p>Blanko permintaan konsultasi gizi dari ruang pemeriksaan umum/ ruang PTM dan lansia/ ruang kesehatan anak/ ruang kesehatan ibu dan reproduksi</p>', '2023-07-27 02:04:25', '2023-07-27 02:04:25');
INSERT INTO `standar_pelayanan` VALUES (140, '11', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas memberikan penyuluhan atau konsultasi sesuai dengan keluhan</p>', '2023-07-27 02:05:49', '2023-07-27 02:05:49');
INSERT INTO `standar_pelayanan` VALUES (141, '11', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 02:06:11', '2023-07-27 02:06:11');
INSERT INTO `standar_pelayanan` VALUES (142, '11', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 02:10:11', '2023-07-27 02:10:11');
INSERT INTO `standar_pelayanan` VALUES (143, '11', 'Produk Pelayanan', '<p>Konsultasi gizi</p>', '2023-07-27 02:10:42', '2023-07-27 02:10:42');
INSERT INTO `standar_pelayanan` VALUES (144, '11', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang konsultasi</p>\r\n\r\n<p>2. Ruang tunggu pasien</p>', '2023-07-27 02:12:07', '2023-07-27 02:12:07');
INSERT INTO `standar_pelayanan` VALUES (145, '11', 'Kompetensi Pelaksana', '<p>D III Gizi yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 02:12:46', '2023-07-27 02:12:46');
INSERT INTO `standar_pelayanan` VALUES (146, '11', 'Pengawasan Internal', '<p>Supervisi dilakukan oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 02:13:40', '2023-07-27 02:13:40');
INSERT INTO `standar_pelayanan` VALUES (147, '11', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 02:16:20', '2023-07-27 02:16:20');
INSERT INTO `standar_pelayanan` VALUES (148, '11', 'Jumlah Pelaksana', '<p>Nutrisionis minimal 1 orang</p>', '2023-07-27 02:16:52', '2023-07-27 02:16:52');
INSERT INTO `standar_pelayanan` VALUES (149, '11', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 02:17:34', '2023-07-27 02:17:34');
INSERT INTO `standar_pelayanan` VALUES (150, '11', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 02:18:36', '2023-07-27 02:18:36');
INSERT INTO `standar_pelayanan` VALUES (151, '11', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan oleh atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 02:20:28', '2023-07-27 02:20:28');
INSERT INTO `standar_pelayanan` VALUES (152, '12', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Keputusan Menteri Kesehatan RI No. HK.02/Menkes/65/2015 tentang Panduan Praktik Klinis Bagi Dokter Gigi</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 02:22:14', '2023-07-27 02:22:14');
INSERT INTO `standar_pelayanan` VALUES (153, '12', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-27 02:22:59', '2023-07-27 02:22:59');
INSERT INTO `standar_pelayanan` VALUES (154, '12', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-27 02:23:52', '2023-07-27 02:23:52');
INSERT INTO `standar_pelayanan` VALUES (155, '12', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor urut. Petugas memastikan identitas pasien sesuai dengan rekam medis. Petugas melakukan anamnesis dan pengukuran tekanan darah. Petugas melakukan pemeriksaan sesuai keluhan pasien, pemeriksaan odotogram, riwayat penyakit dan kroscek identitas untuk pasien baru, untuk pasien lama dilanjutkan pemeriksaan sesuai keluhan. Petugas menentukan diagnosa penyakit. Petugas menentukan terapi/ tindak lanjut yang sesuai. Petugas melakukan tindakan jika memang diperlukan, atau pemberian resep untuk pasien premedikasi</p>', '2023-07-27 02:28:18', '2023-07-27 02:28:18');
INSERT INTO `standar_pelayanan` VALUES (156, '12', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 02:30:53', '2023-07-27 02:30:53');
INSERT INTO `standar_pelayanan` VALUES (157, '12', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 02:32:53', '2023-07-27 02:32:53');
INSERT INTO `standar_pelayanan` VALUES (158, '12', 'Produk Pelayanan', '<p>Konsultasi gigi</p>', '2023-07-27 02:33:41', '2023-07-27 02:33:41');
INSERT INTO `standar_pelayanan` VALUES (159, '12', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan gigi</p>\r\n\r\n<p>2. Alat medis pendukung</p>', '2023-07-27 02:34:24', '2023-07-27 02:34:24');
INSERT INTO `standar_pelayanan` VALUES (160, '12', 'Kompetensi Pelaksana', '<p>1. Dokter Gigi yang memiliki surat ijin praktek</p>\r\n\r\n<p>2. D III Keperawatan Gigi yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya&nbsp;</p>', '2023-07-27 02:35:51', '2023-07-27 02:35:51');
INSERT INTO `standar_pelayanan` VALUES (161, '12', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 02:36:44', '2023-07-27 02:36:44');
INSERT INTO `standar_pelayanan` VALUES (162, '12', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 02:39:27', '2023-07-27 02:39:27');
INSERT INTO `standar_pelayanan` VALUES (163, '12', 'Jumlah Pelaksana', '<p>1. Dokter Gigi minimal 1 orang</p>\r\n\r\n<p>2. Perawat Gigi minimal 1 orang</p>', '2023-07-27 02:40:10', '2023-07-27 02:40:10');
INSERT INTO `standar_pelayanan` VALUES (164, '12', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 02:40:59', '2023-07-27 02:40:59');
INSERT INTO `standar_pelayanan` VALUES (165, '12', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 02:42:05', '2023-07-27 02:42:05');
INSERT INTO `standar_pelayanan` VALUES (166, '12', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 02:43:41', '2023-07-27 02:43:41');
INSERT INTO `standar_pelayanan` VALUES (167, '13', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 26 Tahun 2020 tentang Standar Pelayanan Kefarmasian di Puskesmas</p>', '2023-07-27 02:45:52', '2023-07-27 02:45:52');
INSERT INTO `standar_pelayanan` VALUES (168, '13', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-27 02:46:40', '2023-07-27 02:46:40');
INSERT INTO `standar_pelayanan` VALUES (169, '13', 'Persyaratan Pelayanan', '<p>Resep dari poli</p>', '2023-07-27 02:47:09', '2023-07-27 02:47:09');
INSERT INTO `standar_pelayanan` VALUES (170, '13', 'Sistem, Mekanismes dan Prosedur', '<p>Pasien datang. Petugas menerima resep. Petugas melakukan telaah resep, jika resep tidak sesuai maka petugas melakukan konfirmasi kepada penulis resep, jika sesuai maka dilakukan peracikan obat sesuai resep. Petugas melakukan pengemasan dan pelabelan obat. Petugas melakukan pemeriksaan akhir yaitu kesesuaian obat dengan resep. Petugas menyerahkan obat dan memberikan informasi obat yang akan digunakan oleh pasien. Obat diterima oleh pasien</p>', '2023-07-27 02:51:12', '2023-07-27 02:51:12');
INSERT INTO `standar_pelayanan` VALUES (171, '13', 'Jangka Waktu Penyelesaian', '<p>1. Penyiapan resep non racikan: &lt; 15 menit per 1 lembar resep</p>\r\n\r\n<p>2. Penyiapan resep racikan: &lt; 30 menit per 1 lembar resep</p>', '2023-07-27 02:52:48', '2023-07-27 02:52:48');
INSERT INTO `standar_pelayanan` VALUES (172, '13', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 03:01:54', '2023-07-27 03:01:54');
INSERT INTO `standar_pelayanan` VALUES (173, '13', 'Produk Pelayanan', '<p>1. Penyediaan obat racikan dan non racikan</p>\r\n\r\n<p>2. Pemberian informasi obat (PIO)</p>', '2023-07-27 03:02:52', '2023-07-27 03:02:52');
INSERT INTO `standar_pelayanan` VALUES (174, '13', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang penerimaan resep/ ruang penyerahan resep</p>\r\n\r\n<p>2. Ruang pelayanan resep dan peracikan</p>\r\n\r\n<p>3. Ruang penyimpanan obat dan BMHP</p>\r\n\r\n<p>4. Lemari obat, lemari pendingin, pallet, AC, lemari narkotika dan psikotropika, pengukur suhu</p>', '2023-07-27 03:05:23', '2023-07-27 03:05:23');
INSERT INTO `standar_pelayanan` VALUES (175, '13', 'Kompetensi Pelaksana', '<p>1. Apoteker yang memiliki ijin praktek</p>\r\n\r\n<p>2. Asisten Apoteker yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 03:06:35', '2023-07-27 03:06:35');
INSERT INTO `standar_pelayanan` VALUES (176, '13', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 03:07:31', '2023-07-27 03:07:31');
INSERT INTO `standar_pelayanan` VALUES (177, '13', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 03:11:37', '2023-07-27 03:11:37');
INSERT INTO `standar_pelayanan` VALUES (178, '13', 'Jumlah Pelaksana', '<p>Tenaga farmasi minimal 2 orang</p>', '2023-07-27 03:12:27', '2023-07-27 03:12:27');
INSERT INTO `standar_pelayanan` VALUES (179, '13', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 03:15:13', '2023-07-27 03:15:13');
INSERT INTO `standar_pelayanan` VALUES (180, '13', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang resep dan obat pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>\r\n\r\n<p>3. Obat, vaksin dan reagen yang digunakan dijamin mutu dan keamanan penggunaannya</p>', '2023-07-27 03:17:27', '2023-07-27 03:17:27');
INSERT INTO `standar_pelayanan` VALUES (181, '13', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 03:18:53', '2023-07-27 03:18:53');
INSERT INTO `standar_pelayanan` VALUES (182, '14', 'Dasar Hukum', '<p>Keputusan Menteri Kesehatan Nomor 364/Menkes/SK/III/2003 tentang Laboratorium Kesehatan</p>\r\n\r\n<p>Keputusan Menteri Kesehatan Nomor 657/Menkes/SK/VII/2009 tentang Pengiriman Penggunaan Spesimen Klinis, Materi Biologi dan Muatan Informasinya</p>\r\n\r\n<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Keputusan Menteri Kesehatan Nomor 37 Tahun 2012 tentang Penyelenggaraan Laboratorium Pusat Kesehatan Masyarakat</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 03:22:43', '2023-07-27 03:22:43');
INSERT INTO `standar_pelayanan` VALUES (183, '14', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 - 11.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 10.00 WIB</p>', '2023-07-27 03:23:30', '2023-07-27 03:23:30');
INSERT INTO `standar_pelayanan` VALUES (184, '14', 'Persyaratan Pelayanan', '<p>Blanko permintaan pemeriksaan laboratorium</p>', '2023-07-27 03:24:20', '2023-07-27 03:24:20');
INSERT INTO `standar_pelayanan` VALUES (185, '14', 'Sistem, Mekanisme dan Prosedur', '<p>Pasien datang ke ruang pelayanan. Pasien menerima blanko permintaan pemeriksaan laboratorium. Pasien menyerahkan blanko permintaan pemeriksaan laboratorium kepada petugas laboratorium. Pasien dipanggil sesuai nomor urut. Petugas menulis identitas pasien pada tabung vacuitaner dan wadah penampungan sampel. Petugas melakukan pengambilan sampel dan penerimaan sampel. Pasien menunggu hasil pemeriksaan, untuk pasien tanpa jaminan kesehatan diminta untuk melakukan pembayaran di kasir terlebih dahulu. Petugas melakukan pemeriksaan terhadap sampel pasien. Petugas menyerahkan hasil kepada pasien untuk konsultasi ke poli pelayanan yang merujuk</p>', '2023-07-27 03:28:36', '2023-07-27 03:28:36');
INSERT INTO `standar_pelayanan` VALUES (186, '14', 'Jangka Waktu Penyelesaian', '<p>&lt; 120 menit</p>', '2023-07-27 03:31:08', '2023-07-27 03:31:08');
INSERT INTO `standar_pelayanan` VALUES (187, '14', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 03:33:12', '2023-07-27 03:33:12');
INSERT INTO `standar_pelayanan` VALUES (188, '14', 'Produk Pelayanan', '<p>Hematologi, Kimia Darah, Urinalisis, Imunologi-serologi, Mikrobiologi</p>', '2023-07-27 03:41:13', '2023-07-27 03:41:13');
INSERT INTO `standar_pelayanan` VALUES (189, '14', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pengambilan sampel</p>\r\n\r\n<p>2. Ruang pemeriksaan sampel</p>\r\n\r\n<p>3. Peralatan laboratorium pendukung</p>\r\n\r\n<p>4. Komputer dan jaringannya</p>\r\n\r\n<p>5. Ruang tunggu pasien</p>', '2023-07-27 03:42:48', '2023-07-27 03:42:48');
INSERT INTO `standar_pelayanan` VALUES (190, '14', 'Kompetensi Pelaksana', '<p>Ahli Teknologi Laboratorium Medik (ATLM) yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 03:43:45', '2023-07-27 03:43:45');
INSERT INTO `standar_pelayanan` VALUES (191, '14', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 03:44:41', '2023-07-27 03:44:41');
INSERT INTO `standar_pelayanan` VALUES (192, '14', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 03:47:07', '2023-07-27 03:47:07');
INSERT INTO `standar_pelayanan` VALUES (193, '14', 'Jumlah Pelaksana', '<p>Tenaga ATLM minimal 2 orang</p>', '2023-07-27 03:47:32', '2023-07-27 03:47:32');
INSERT INTO `standar_pelayanan` VALUES (194, '14', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 03:48:13', '2023-07-27 03:48:13');
INSERT INTO `standar_pelayanan` VALUES (195, '14', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>\r\n\r\n<p>3. Reagen yang digunakan dijamin masa berlaku penggunaannya (tidak kadaluwarsa)</p>', '2023-07-27 03:59:23', '2023-07-27 03:59:23');
INSERT INTO `standar_pelayanan` VALUES (196, '14', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasalan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 04:03:37', '2023-07-27 04:03:37');
INSERT INTO `standar_pelayanan` VALUES (197, '15', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 04:05:48', '2023-07-27 04:05:48');
INSERT INTO `standar_pelayanan` VALUES (198, '15', 'Jam Pelayanan', '<p>Selasa: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Kamis: 08.00 - 12.00 WIB</p>\r\n\r\n<p>Sabtu: 08.00 - 11.00 WIB</p>', '2023-07-27 04:07:00', '2023-07-27 04:07:00');
INSERT INTO `standar_pelayanan` VALUES (199, '15', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-27 04:07:30', '2023-07-27 04:07:30');
INSERT INTO `standar_pelayanan` VALUES (200, '15', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan penyuluhan sebelum imunisasi. Petugas melakukan imunisasi. Petugas melakukan penyuluhan pasca imunisasi. Petugas memberikan terapi/ tindak lanjut yang sesuai</p>', '2023-07-27 04:09:30', '2023-07-27 04:09:30');
INSERT INTO `standar_pelayanan` VALUES (201, '15', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 04:09:55', '2023-07-27 04:09:55');
INSERT INTO `standar_pelayanan` VALUES (202, '15', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 04:11:42', '2023-07-27 04:11:42');
INSERT INTO `standar_pelayanan` VALUES (203, '15', 'Produk Pelayanan', '<p>1. Konsultasi imunisasi</p>\r\n\r\n<p>2. Imunisasi</p>', '2023-07-27 04:13:18', '2023-07-27 04:13:18');
INSERT INTO `standar_pelayanan` VALUES (204, '15', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang imunisasi</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Ruang tunggu pasien</p>', '2023-07-27 04:16:06', '2023-07-27 04:16:06');
INSERT INTO `standar_pelayanan` VALUES (205, '15', 'Kompetensi Pelaksana', '<p>D III/ S1 Keperawatan atau Kebidanan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 04:17:33', '2023-07-27 04:17:33');
INSERT INTO `standar_pelayanan` VALUES (206, '15', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 04:18:23', '2023-07-27 04:18:23');
INSERT INTO `standar_pelayanan` VALUES (207, '15', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 04:20:38', '2023-07-27 04:20:38');
INSERT INTO `standar_pelayanan` VALUES (208, '15', 'Jumlah Pelaksana', '<p>Perawat atau Bidan minimal 1 orang</p>', '2023-07-27 04:21:03', '2023-07-27 04:21:03');
INSERT INTO `standar_pelayanan` VALUES (209, '15', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 04:21:45', '2023-07-27 04:21:45');
INSERT INTO `standar_pelayanan` VALUES (210, '15', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>\r\n\r\n<p>3. Vaksin yang digunakan dijamin masa berlaku penggunaannya (tidak kadaluwarsa)</p>', '2023-07-27 04:23:18', '2023-07-27 04:23:18');
INSERT INTO `standar_pelayanan` VALUES (211, '15', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 04:25:14', '2023-07-27 04:25:14');
INSERT INTO `standar_pelayanan` VALUES (212, '16', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 06:50:23', '2023-07-27 06:50:23');
INSERT INTO `standar_pelayanan` VALUES (213, '16', 'Jam Pelayanan', '<p>Rabu: 08.00 - 12.00 WIB</p>', '2023-07-27 06:51:00', '2023-07-27 06:51:00');
INSERT INTO `standar_pelayanan` VALUES (214, '16', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-27 06:52:22', '2023-07-27 06:52:22');
INSERT INTO `standar_pelayanan` VALUES (215, '16', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petugas melakukan pengukuran vital sign. Petugas melakukan pemeriksaan/ tindakan sesuai prosedur. Petugas menentukan diagnosis. Petugas memberikan terapi/ tindak lanjut yang sesuai</p>', '2023-07-27 06:57:03', '2023-07-27 06:57:03');
INSERT INTO `standar_pelayanan` VALUES (216, '16', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 07:01:01', '2023-07-27 07:01:01');
INSERT INTO `standar_pelayanan` VALUES (217, '16', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 07:03:00', '2023-07-27 07:03:00');
INSERT INTO `standar_pelayanan` VALUES (218, '16', 'Produk Pelayanan', '<p>1. Konsultasi dokter</p>\r\n\r\n<p>2. Pemeriksaan medis</p>\r\n\r\n<p>3. Tindakan medis</p>\r\n\r\n<p>4. Surat rujukan</p>', '2023-07-27 07:05:37', '2023-07-27 07:05:37');
INSERT INTO `standar_pelayanan` VALUES (219, '16', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Ruang tunggu pasien</p>', '2023-07-27 07:06:15', '2023-07-27 07:06:15');
INSERT INTO `standar_pelayanan` VALUES (220, '16', 'Kompetensi Pelaksana', '<p>1. Dokter Umum yang memiliki surat ijin praktek</p>\r\n\r\n<p>2. D III/ S 1 Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 07:07:41', '2023-07-27 07:07:41');
INSERT INTO `standar_pelayanan` VALUES (221, '16', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 07:08:52', '2023-07-27 07:08:52');
INSERT INTO `standar_pelayanan` VALUES (222, '16', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 07:11:29', '2023-07-27 07:11:29');
INSERT INTO `standar_pelayanan` VALUES (223, '16', 'Jumlah Pelaksana', '<p>1. Dokter Umum minimal 1 orang</p>\r\n\r\n<p>2. Perawat minimal 1 orang</p>', '2023-07-27 07:11:58', '2023-07-27 07:11:58');
INSERT INTO `standar_pelayanan` VALUES (224, '16', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 07:12:41', '2023-07-27 07:12:41');
INSERT INTO `standar_pelayanan` VALUES (225, '16', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 07:13:38', '2023-07-27 07:13:38');
INSERT INTO `standar_pelayanan` VALUES (226, '16', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 07:17:46', '2023-07-27 07:17:46');
INSERT INTO `standar_pelayanan` VALUES (227, '17', 'Dasar Hukum', '<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 07:18:54', '2023-07-27 07:18:54');
INSERT INTO `standar_pelayanan` VALUES (228, '16', 'Jam Pelayanan', '<p>Kamis: 08.00 - 12.00 WIB</p>', '2023-07-27 07:19:22', '2023-07-27 07:19:22');
INSERT INTO `standar_pelayanan` VALUES (229, '17', 'Persyaratan Pelayanan', '<p>Tersedianya rekam medis pasien</p>', '2023-07-27 07:20:01', '2023-07-27 07:20:01');
INSERT INTO `standar_pelayanan` VALUES (230, '17', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas memanggil pasien sesuai nomor antrian. Petugas memastikan identitas pasien berdasarkan rekam medis. Petugas melakukan anamnesis. Petugas melakukan pengukuran kadar karbondioksida dalam tubuh. Petugas memberikan terapi/ tindak lanjut yang sesuai</p>', '2023-07-27 07:22:11', '2023-07-27 07:22:11');
INSERT INTO `standar_pelayanan` VALUES (231, '17', 'Jangka Waktu Penyelesaian', '<p>Sesuai kasus</p>', '2023-07-27 07:22:32', '2023-07-27 07:22:32');
INSERT INTO `standar_pelayanan` VALUES (232, '17', 'Biaya/ Tarif', '<p>1. Pasien Umum: Perda Kota Bukittinggi No. 7 Tahun 2019 tentang Perubahan Atas Peraturan Daerah No. 3 Tahun 2013 Retribusi Pelayanan Kesehatan</p>\r\n\r\n<p>2. Pasien JKN: Sesuai dengan Permenkes No. 3 Tahun 2023 tentang Standar Tarif Pelayanan Kesehatan Dalam Penyelenggaraan Jaminan Kesehatan</p>', '2023-07-27 07:24:52', '2023-07-27 07:24:52');
INSERT INTO `standar_pelayanan` VALUES (233, '17', 'Produk Pelayanan', '<p>Konsultasi dan terapi</p>', '2023-07-27 07:25:35', '2023-07-27 07:25:35');
INSERT INTO `standar_pelayanan` VALUES (234, '17', 'Prasarana dan/ atau Fasilitas', '<p>1. Ruang pemeriksaan pasien</p>\r\n\r\n<p>2. Peralatan medis pendukung</p>\r\n\r\n<p>3. Ruang tunggu pasien</p>', '2023-07-27 07:26:26', '2023-07-27 07:26:26');
INSERT INTO `standar_pelayanan` VALUES (235, '17', 'Kompetensi Pelaksana', '<p>1. Dokter Umum yang memiliki surat ijin praktek</p>\r\n\r\n<p>2. D III Keperawatan yang memiliki surat tanda registrasi dan sesuai dengan kewenangannya</p>', '2023-07-27 07:28:20', '2023-07-27 07:28:20');
INSERT INTO `standar_pelayanan` VALUES (236, '17', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 07:29:20', '2023-07-27 07:29:20');
INSERT INTO `standar_pelayanan` VALUES (237, '17', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. Whatsapp: 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuksgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebook: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 07:31:41', '2023-07-27 07:31:41');
INSERT INTO `standar_pelayanan` VALUES (238, '17', 'Jumlah Pelaksana', '<p>Dokter atau Perawat minimal 1 orang</p>', '2023-07-27 07:32:04', '2023-07-27 07:32:04');
INSERT INTO `standar_pelayanan` VALUES (239, '17', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 07:33:21', '2023-07-27 07:33:21');
INSERT INTO `standar_pelayanan` VALUES (240, '17', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>1. Informasi tentang rekam medis pasien dijamin kerahasiaannya</p>\r\n\r\n<p>2. Peralatan medis yang digunakan sesuai standar sterilitas masing-masing alat</p>', '2023-07-27 07:34:22', '2023-07-27 07:34:22');
INSERT INTO `standar_pelayanan` VALUES (241, '17', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 07:35:51', '2023-07-27 07:35:51');
INSERT INTO `standar_pelayanan` VALUES (242, '18', 'Dasar Hukum', '<p>Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik</p>\r\n\r\n<p>Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan</p>\r\n\r\n<p>Peraturan Menteri Kesehatan Republik Indonesia Nomor 43 Tahun 2019 tentang Puskesmas</p>', '2023-07-27 07:47:19', '2023-07-27 07:47:19');
INSERT INTO `standar_pelayanan` VALUES (243, '18', 'Jam Pelayanan', '<p>Senin - Kamis: 08.00 -11.00 WIB</p>\r\n\r\n<p>Jumat - Sabtu: 08.00 - 10.00 WIB</p>', '2023-07-27 07:52:42', '2023-07-27 07:52:42');
INSERT INTO `standar_pelayanan` VALUES (244, '18', 'Persyaratan Pelayanan', '<p>Adanya pengaduan pelayanan melalui kotak saran, email dan buku keluhan</p>', '2023-07-27 07:53:52', '2023-07-27 07:53:52');
INSERT INTO `standar_pelayanan` VALUES (245, '18', 'Sistem, Mekanisme dan Prosedur', '<p>Petugas membuka kotak saran, membaca buku keluhan dan email setiap hari. Petugas mencatat data pelaporan (nama, alamat dan nomor telepon, jika ada) dan isi keluhan atau umpan balik pada buku register. Petugas melaporkan keluhan atau umpan balik kepada tim penanganan pengaduan serta unit terkait. Semua jawaban yang telah disampaikan lewat email atau papan informasi dicatat di dalam buku register. Keluhan/ aduan yang sudah ditindaklanjuti dipublikasikan pada papan pengumuman setiap 1 bulan sekali</p>', '2023-07-27 07:59:15', '2023-07-27 07:59:15');
INSERT INTO `standar_pelayanan` VALUES (246, '18', 'Jangka Waktu Penyelesaian', '<p>Maksimal pengaduan 5 hari tergantung berat/ ringan</p>', '2023-07-27 08:00:26', '2023-07-27 08:00:26');
INSERT INTO `standar_pelayanan` VALUES (247, '18', 'Biaya / Tarif', '<p>Tidak dikenakan biaya</p>', '2023-07-27 08:08:23', '2023-07-27 08:08:23');
INSERT INTO `standar_pelayanan` VALUES (248, '18', 'Produk Pelayanan', '<p>Penanganan pengaduan masyarakat</p>', '2023-07-27 08:10:15', '2023-07-27 08:10:15');
INSERT INTO `standar_pelayanan` VALUES (249, '18', 'Prasarana dan/ atau Fasilitas', '<p>1. ATK</p>\r\n\r\n<p>2. Telepon</p>\r\n\r\n<p>3. Kotak Saran</p>\r\n\r\n<p>4. Papan pengumuman hasil tindak dan/ atau lanjut keluhan/ aduan</p>\r\n\r\n<p>5. Komputer dan jaringannya</p>\r\n\r\n<p>6. Ruangan dan kelengkapannya</p>', '2023-07-27 08:11:36', '2023-07-27 08:11:36');
INSERT INTO `standar_pelayanan` VALUES (250, '18', 'Kompetensi Pelaksana', '<p>Petugas yang tergabung dalam tim mutu manajemen puskesmas</p>', '2023-07-27 08:14:23', '2023-07-27 08:14:23');
INSERT INTO `standar_pelayanan` VALUES (251, '18', 'Pengawasan Internal', '<p>Supervisi oleh atasan langsung. Dilakukan sistem pengendalian mutu internal oleh auditor internal puskesmas</p>', '2023-07-27 08:16:36', '2023-07-27 08:16:36');
INSERT INTO `standar_pelayanan` VALUES (252, '18', 'Penanganan, Pengaduan, Saran dan Masukan', '<p>1. Telepon: 0752-21056 (jam kerja)</p>\r\n\r\n<p>2. 0813-6422-1212 (jam kerja)</p>\r\n\r\n<p>3. Email: layananpengaduanpuskgp@gmail.com</p>\r\n\r\n<p>4. Website: http://pusk-guguk-panjang.bukittinggikota.go.id/</p>\r\n\r\n<p>5. Instagram: promkes_gugukpanjang</p>\r\n\r\n<p>6. Facebokk: Puskesmas Guguk Panjang</p>\r\n\r\n<p>7. Kotak Saran</p>\r\n\r\n<p>8. Buku Keluhan</p>', '2023-07-27 08:19:40', '2023-07-27 08:19:40');
INSERT INTO `standar_pelayanan` VALUES (253, '18', 'Jumlah Pelaksana', '<p>Tim penanganan pengaduan</p>\r\n\r\n<p>Koordinator: 1 orang</p>\r\n\r\n<p>Anggota tim: 6 orang</p>', '2023-07-27 08:20:39', '2023-07-27 08:20:39');
INSERT INTO `standar_pelayanan` VALUES (254, '18', 'Jaminan Pelayanan', '<p>Pelayanan yang diberikan secara cepat, aman dan dapat dipertanggungjawabkan (sesuai dengan standar pelayanan)</p>', '2023-07-27 08:21:48', '2023-07-27 08:21:48');
INSERT INTO `standar_pelayanan` VALUES (255, '18', 'Jaminan Keamanan dan Keselamatan Pelayanan', '<p>Identitas yang memberikan aduan tidak dipublikasikan</p>', '2023-07-27 08:22:34', '2023-07-27 08:22:34');
INSERT INTO `standar_pelayanan` VALUES (256, '18', 'Evaluasi Kinerja Pelaksana', '<p>Evaluasi kinerja dilakukan melalui Lokakarya Mini Bulanan Puskesmas dan Rapat Tinjauan Manajemen. Evaluasi berdasarkan pengawasan atasan langsung terkait kinerja dan kedisiplinan. Survei indeks kepuasan masyarakat setiap 6 bulan sekali</p>', '2023-07-27 08:25:02', '2023-07-27 08:25:02');

-- ----------------------------
-- Table structure for tarif_retribusi
-- ----------------------------
DROP TABLE IF EXISTS `tarif_retribusi`;
CREATE TABLE `tarif_retribusi`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tarif_retribusi
-- ----------------------------
INSERT INTO `tarif_retribusi` VALUES (2, 'Perda nomor 7 tahun 2019', 'tarif-retribusi/1l7Ncryaz5XQbNhleoVQNioYxaY3yWP6dszGzDJG.pdf', NULL, '2023-06-27 02:44:20', '2024-09-26 01:33:43');

-- ----------------------------
-- Table structure for tata_nilai
-- ----------------------------
DROP TABLE IF EXISTS `tata_nilai`;
CREATE TABLE `tata_nilai`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tata_nilai
-- ----------------------------
INSERT INTO `tata_nilai` VALUES (1, '<p>&quot;MINANG OKE&quot;</p>\r\n\r\n<p>1. Mutu</p>\r\n\r\n<p>2. Inovatif</p>\r\n\r\n<p>3. Nyata</p>\r\n\r\n<p>4. Aman</p>\r\n\r\n<p>5. Nyaman</p>\r\n\r\n<p>6. Galang Kebersamaan</p>\r\n\r\n<p>7. Orientasi Pelayanan</p>\r\n\r\n<p>8. Komit dan Disiplin</p>\r\n\r\n<p>9. Efektif dan Efisien</p>', '2023-07-26 01:04:37', '2023-07-26 01:04:37');

-- ----------------------------
-- Table structure for tujuan
-- ----------------------------
DROP TABLE IF EXISTS `tujuan`;
CREATE TABLE `tujuan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tujuan
-- ----------------------------
INSERT INTO `tujuan` VALUES (1, '<p>&quot;Meningkatkan derajat kesehatan masyarakat di Kecamatan Guguk Panjang melalui pelayanan kesehatan yang paripurna, merata, bermutu dan terjangkau dengan mengutamakan usaha promotif, preventif dan kemandirian keluarga dan masyarakat untuk hidup sehat serta terlaksananya jaminan kesehatan bagi masyarakat di wilayah kerja Puskesmas Guguk Panjang&quot;</p>', '2023-07-26 00:57:47', '2023-07-26 01:02:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Lutri Veflina', 'lutri@gmail.com', '1', '2023-03-09 04:01:07', '$2y$10$iLHOOaqPqdWhDOhYjpiCzOq3sHEKt4XwvynoIfEzSm0HYcauXmTM.', NULL, '2023-03-08 01:42:26', '2023-03-09 04:01:07');
INSERT INTO `users` VALUES (2, 'Admin Operator', 'admin@gmail.com', '2', '2023-03-09 04:01:07', '$2y$10$EU4ahVL8TKK6qO6A686HPOUAVs0crbwQ0bO5fVPJnAaL6o0HwhWt.', NULL, '2023-03-08 01:42:26', '2023-03-09 04:01:07');

-- ----------------------------
-- Table structure for visi
-- ----------------------------
DROP TABLE IF EXISTS `visi`;
CREATE TABLE `visi`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visi
-- ----------------------------
INSERT INTO `visi` VALUES (2, '<p>&quot;Visi Laboratorium&quot;</p>', '<p>&quot;Misi Labor&quot;</p>\r\n\r\n<p>1.</p>\r\n\r\n<p>2.</p>\r\n\r\n<p>3.</p>\r\n\r\n<p>4.</p>\r\n\r\n<p>&nbsp;</p>', '2024-09-25 02:51:22', '2024-09-25 02:51:22');

-- ----------------------------
-- Table structure for waktu_layanan
-- ----------------------------
DROP TABLE IF EXISTS `waktu_layanan`;
CREATE TABLE `waktu_layanan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Komponen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waktu_layanan
-- ----------------------------
INSERT INTO `waktu_layanan` VALUES (1, 'Jam Pelayanan Labkes', '<p><span>Senin - Kamis : 08.00 - 16.00 WIB</span></p>\r\n\r\n<p><span>Jumat - Sabtu : 08.00 - 16.30 WIB</span></p>', '2024-09-20 04:40:06', '2024-09-25 02:54:58');

-- ----------------------------
-- Table structure for webconfig
-- ----------------------------
DROP TABLE IF EXISTS `webconfig`;
CREATE TABLE `webconfig`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of webconfig
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
