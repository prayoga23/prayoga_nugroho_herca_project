-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 18 Nov 2023 pada 08.05
-- Versi server: 5.7.39
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `herca`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketings`
--

CREATE TABLE `marketings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `marketings`
--

INSERT INTO `marketings` (`id`, `user_id`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mojokerto', '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(2, 2, 'Jombang', '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(3, 3, 'Krian', '2023-11-18 00:29:38', '2023-11-18 00:29:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_11_17_013240_create_marketings_table', 1),
(13, '2023_11_17_013444_create_penjualans_table', 1),
(14, '2023_11_17_153230_create_pembayarans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marketing_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah_pembayaran` decimal(8,2) NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `marketing_id`, `tanggal_pembayaran`, `jumlah_pembayaran`, `metode_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES
(2, 1, '2023-11-17', '100.00', 'Transfer VA Bank', 'Pembayaran Pertama', '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(3, 2, '2023-11-17', '150.00', 'Kartu Kredit', 'Pembayaran Kedua', '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(4, 3, '2023-11-16', '250.00', 'ATM', 'Pembayaran Ketiga', '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(5, 1, '2023-11-15', '350.00', 'Indomaret', 'Pembayaran Keempat', '2023-11-18 00:29:38', '2023-11-18 00:29:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `cargo_fee` double NOT NULL,
  `total_balance` double NOT NULL,
  `grand_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualans`
--

INSERT INTO `penjualans` (`id`, `transaction_number`, `marketing_id`, `date`, `cargo_fee`, `total_balance`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 'TRX001', 1, '2023-05-22', 25000, 3000000, 3025000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(2, 'TRX002', 3, '2023-05-22', 25000, 320000, 345000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(3, 'TRX003', 1, '2023-05-22', 0, 65000000, 65000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(4, 'TRX004', 1, '2023-05-23', 10000, 70000000, 70010000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(5, 'TRX005', 2, '2023-05-23', 10000, 80000000, 80010000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(6, 'TRX006', 3, '2023-05-23', 12000, 44000000, 44012000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(7, 'TRX007', 1, '2023-06-01', 0, 75000000, 75000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(8, 'TRX008', 2, '2023-06-02', 0, 85000000, 85000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(9, 'TRX009', 2, '2023-06-01', 0, 175000000, 175000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(10, 'TRX010', 3, '2023-06-01', 0, 75000000, 75000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(11, 'TRX011', 2, '2023-06-01', 0, 750020000, 750020000, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(12, 'TRX012', 3, '2023-06-01', 0, 130000000, 130000000, '2023-11-18 00:29:38', '2023-11-18 00:29:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alfandy', 'alfandy@gmail.com', NULL, '$2y$10$nYUR7GKX/NWbQ8iR6UoxQO8oKhf8zG3kiHopNMr7SyE77gWchN50K', NULL, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(2, 'Mery', 'mery@gmail.com', NULL, '$2y$10$A46CNM0cnynlrjraA6NVn.P1DR7GFqUnCYVw/jRKnkaPdqodYOey6', NULL, '2023-11-18 00:29:38', '2023-11-18 00:29:38'),
(3, 'Danang', 'danang@gmail.com', NULL, '$2y$10$IqMh.X.DemSZqpudLmJR/eOjdd6QsInXT6eNc7dHPmL06WadeAqWy', NULL, '2023-11-18 00:29:38', '2023-11-18 00:29:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `marketings`
--
ALTER TABLE `marketings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketings_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_marketing_id_foreign` (`marketing_id`);

--
-- Indeks untuk tabel `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penjualans_transaction_number_unique` (`transaction_number`),
  ADD KEY `penjualans_marketing_id_foreign` (`marketing_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `marketings`
--
ALTER TABLE `marketings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `marketings`
--
ALTER TABLE `marketings`
  ADD CONSTRAINT `marketings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_marketing_id_foreign` FOREIGN KEY (`marketing_id`) REFERENCES `marketings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualans`
--
ALTER TABLE `penjualans`
  ADD CONSTRAINT `penjualans_marketing_id_foreign` FOREIGN KEY (`marketing_id`) REFERENCES `marketings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
