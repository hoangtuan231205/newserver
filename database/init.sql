-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2026 lúc 03:04 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `library_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `biography`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Nhật Ánh', 'Nhà văn nổi tiếng của Việt Nam chuyên viết truyện cho thanh thiếu niên như Kính Vạn Hoa, Mắt Biếc.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(2, 'Paulo Coelho', 'Nhà văn người Brazil, tác giả của cuốn tiểu thuyết nổi tiếng Nhà Giả Kim.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(3, 'J.K. Rowling', 'Nhà văn người Anh, nổi tiếng với loạt truyện Harry Potter.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(4, 'Haruki Murakami', 'Nhà văn Nhật Bản nổi tiếng với phong cách văn học siêu thực.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(5, 'Dan Brown', 'Tác giả người Mỹ chuyên viết tiểu thuyết trinh thám và giả tưởng như Mật Mã Da Vinci.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(6, 'Yuval Noah Harari', 'Sử gia và tác giả nổi tiếng với các cuốn sách Sapiens và Homo Deus.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(7, 'Robert C. Martin', 'Lập trình viên và tác giả sách nổi tiếng về Clean Code và phát triển phần mềm.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(8, 'Andrew S. Tanenbaum', 'Giáo sư khoa học máy tính, tác giả nhiều giáo trình nổi tiếng về hệ điều hành và mạng.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(9, 'Thomas H. Cormen', 'Đồng tác giả của cuốn sách kinh điển Introduction to Algorithms.', '2026-03-13 21:16:27', '2026-03-13 21:16:27'),
(10, 'Martin Fowler', 'Chuyên gia phần mềm nổi tiếng với các sách về thiết kế hệ thống và refactoring.', '2026-03-13 21:16:27', '2026-03-13 21:16:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `published_year` int(11) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `available_qty` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `category_id`, `author_id`, `publisher_id`, `isbn`, `published_year`, `total_qty`, `available_qty`, `image_url`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Mắt Biếc', 1, 1, 2, '9786042085647', 2019, 41, 39, 'mắt biếc.jpg', '', '2026-03-13 21:20:11', '2026-06-24 08:19:56'),
(3, 'Nhà Giả Kim', 5, 2, 2, '9780061122415', 1988, 15, 14, 'Nhà giả kim.jpg', '', '2026-03-13 21:20:11', '2026-05-07 19:03:37'),
(4, 'Harry Potter và Hòn Đá Phù Thủy', 7, 3, 6, '9780747532699', 1997, 31, 31, 'harrypotter.jpg', '', '2026-03-13 21:20:11', '2026-05-07 18:52:06'),
(5, 'Rừng Na Uy', 1, 4, 5, '9780375704024', 1987, 16, 11, 'rừng na uy.jpg', '', '2026-03-13 21:20:11', '2026-06-24 06:39:36'),
(6, 'Mật Mã Da Vinci', 1, 5, 6, '9780307474278', 2003, 19, 18, 'Mật_mã_davinci.jpg', '', '2026-03-13 21:20:11', '2026-05-07 15:35:23'),
(7, 'Sapiens: Lược Sử Loài Người', 6, 6, 5, '9780062316097', 2011, 25, 25, 'sapien.jpg', '', '2026-03-13 21:20:11', '2026-03-13 21:20:11'),
(8, 'Clean Code', 3, 7, 8, '9780132350884', 2008, 11, 10, 'clean code.jpg', '', '2026-03-13 21:20:11', '2026-05-07 16:49:35'),
(9, 'Operating Systems: Design and Implementation', 9, 8, 10, '9780131429383', 2006, 10, 10, 'oparating systems.jpg', '', '2026-03-13 21:20:11', '2026-05-07 17:17:13'),
(10, 'Introduction to Algorithms', 9, 9, 9, '9780262033848', 2009, 13, 12, 'ctgl gt.jpg', '', '2026-03-13 21:20:11', '2026-05-07 16:48:16'),
(11, 'Refactoring: Improving the Design of Existing Code', 3, 10, 8, '9780201485677', 1999, 11, 10, 'Refactoring.jpg', '', '2026-03-13 21:20:11', '2026-05-10 01:17:15'),
(17, 'sherlock homes', 1, 1, 1, '9876543209', 2017, 11, 7, 'sherlockhomes.jpg', '', NULL, '2026-04-22 02:07:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_copies`
--

CREATE TABLE `book_copies` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `shelf_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `condition_status` varchar(255) DEFAULT NULL,
  `availability_status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `book_copies`
--

INSERT INTO `book_copies` (`id`, `book_id`, `shelf_id`, `barcode`, `condition_status`, `availability_status`, `created_at`, `updated_at`) VALUES
(3, 2, NULL, 'BC17755254578010', 'GOOD', 'AVAILABLE', NULL, '2026-05-10 01:18:55'),
(4, 3, NULL, 'BC17755254676840', 'GOOD', 'AVAILABLE', NULL, '2026-05-07 19:03:37'),
(5, 3, NULL, 'BC17755254704090', 'NEW', 'BORROWED', NULL, NULL),
(6, 3, NULL, 'BC17755254712280', 'NEW', 'RESERVED', NULL, '2026-05-05 15:39:14'),
(7, 2, NULL, 'BC17768303315370', 'NEW', 'RESERVED', '2026-04-22 03:58:51', '2026-05-04 15:08:14'),
(9, 2, NULL, 'BC17768303315432', 'NEW', 'BORROWED', '2026-04-22 03:58:51', '2026-05-07 19:47:25'),
(10, 2, NULL, 'BC17768303315543', 'NEW', 'UNAVAILABLE', '2026-04-22 03:58:51', '2026-05-07 19:49:45'),
(11, 2, NULL, 'BC17768303315544', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(12, 2, NULL, 'BC17768303315545', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(13, 2, NULL, 'BC17768303315586', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(14, 2, NULL, 'BC17768303315587', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(15, 2, NULL, 'BC17768303315608', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(16, 2, NULL, 'BC17768303315609', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(17, 2, NULL, 'BC177683033156010', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(18, 2, NULL, 'BC177683033156111', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(19, 2, NULL, 'BC177683033156112', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(20, 2, NULL, 'BC177683033156113', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(21, 2, NULL, 'BC177683033156114', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(22, 2, NULL, 'BC177683033156115', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(23, 2, NULL, 'BC177683033156116', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(24, 2, NULL, 'BC177683033156117', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(25, 2, NULL, 'BC177683033156118', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(26, 2, NULL, 'BC177683033156119', 'NEW', 'AVAILABLE', '2026-04-22 03:58:51', '2026-04-22 03:58:51'),
(27, 2, NULL, 'BC17780808710410', 'NEW', 'AVAILABLE', '2026-05-06 15:21:11', '2026-05-06 15:21:11'),
(28, 2, NULL, 'BC17780808762120', 'NEW', 'AVAILABLE', '2026-05-06 15:21:16', '2026-05-06 15:21:16'),
(29, 5, NULL, 'BC17781678112860', 'NEW', 'BORROWED', '2026-05-07 15:30:11', '2026-05-07 15:30:17'),
(30, 6, NULL, 'BC17781681076520', 'NEW', 'BORROWED', '2026-05-07 15:35:07', '2026-05-07 15:35:23'),
(31, 10, NULL, 'BC17781716059500', 'NEW', 'BORROWED', '2026-05-07 16:33:25', '2026-05-07 16:33:35'),
(32, 10, NULL, 'BC17781716253320', 'NEW', 'RESERVED', '2026-05-07 16:33:45', '2026-05-07 17:20:12'),
(33, 10, NULL, 'BC17781724959540', 'NEW', 'AVAILABLE', '2026-05-07 16:48:15', '2026-05-07 16:48:15'),
(34, 8, NULL, 'BC17781725486800', 'NEW', 'BORROWED', '2026-05-07 16:49:08', '2026-05-07 16:49:18'),
(36, 5, NULL, 'BC17781739174370', 'NEW', 'RESERVED', '2026-05-07 17:11:57', '2026-05-07 17:13:15'),
(37, 5, NULL, 'BC17781739187560', 'NEW', 'BORROWED', '2026-05-07 17:11:58', '2026-05-07 17:16:03'),
(38, 9, NULL, 'BC17781742329530', 'NEW', 'RESERVED', '2026-05-07 17:17:12', '2026-05-07 17:17:23'),
(39, 9, NULL, 'BC17781742330900', 'NEW', 'RESERVED', '2026-05-07 17:17:13', '2026-05-07 17:17:32'),
(40, 11, NULL, 'BC17781744376620', 'GOOD', 'UNAVAILABLE', '2026-05-07 17:20:37', '2026-05-10 01:17:15'),
(41, 11, NULL, 'BC17781744378250', 'NEW', 'AVAILABLE', '2026-05-07 17:20:37', '2026-05-07 17:20:37'),
(42, 5, NULL, 'BC17781753271760', 'NEW', 'UNAVAILABLE', '2026-05-07 17:35:27', '2026-06-24 06:39:36'),
(43, 4, NULL, 'HPVHPTTN1997-43', 'GOOD', 'AVAILABLE', '2026-05-07 18:23:58', '2026-05-07 18:52:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết', 'Các loại sách tiểu thuyết văn học trong và ngoài nước', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(2, 'Khoa học', 'Sách về khoa học tự nhiên và ứng dụng', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(3, 'Công nghệ thông tin', 'Sách lập trình, AI, khoa học máy tính', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(4, 'Kinh doanh', 'Sách về kinh doanh, marketing và khởi nghiệp', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(5, 'Tâm lý - Kỹ năng sống', 'Sách phát triển bản thân và tâm lý học', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(6, 'Lịch sử', 'Sách về lịch sử thế giới và Việt Nam', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(7, 'Thiếu nhi', 'Sách dành cho trẻ em và thiếu niên', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(8, 'Ngoại ngữ', 'Sách học tiếng Anh và các ngoại ngữ khác', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(9, 'Giáo trình', 'Sách giáo trình cho sinh viên đại học', '2026-03-13 21:15:35', '2026-03-13 21:15:35'),
(10, 'Truyện tranh', 'Manga, comic và các loại truyện tranh', '2026-03-13 21:15:35', '2026-03-13 21:15:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fines`
--

CREATE TABLE `fines` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `loan_detail_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `fines`
--

INSERT INTO `fines` (`id`, `user_id`, `loan_detail_id`, `amount`, `reason`, `is_paid`, `created_at`, `updated_at`) VALUES
(1, 3, 9, 3500000.00, 'Trả trễ hạn 350 ngày', 1, '2026-05-07 18:52:06', '2026-05-07 19:48:58'),
(2, 23, 3, 30000.00, 'Trả trễ hạn 3 ngày', 0, '2026-05-07 19:03:37', '2026-05-07 19:03:37'),
(3, 4, 2, 260000.00, 'Trả trễ hạn 26 ngày', 0, '2026-05-10 01:18:55', '2026-05-10 01:18:55'),
(4, 23, 4, 500000.00, 'Trả trễ hạn 50 ngày', 0, '2026-06-24 08:19:56', '2026-06-24 08:19:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `borrow_date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `borrow_date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-10 08:00:00', NULL, '2026-03-02 22:45:57', NULL),
(2, 4, '2026-04-08 17:00:00', '', NULL, NULL),
(3, 23, '2026-04-21 16:52:30', 'Tạo tự động từ phiếu đặt #RES049', '2026-04-21 16:52:30', '2026-04-21 16:52:30'),
(4, 23, '2026-04-21 16:55:15', 'Tạo tự động từ phiếu đặt #RES047', '2026-04-21 16:55:15', '2026-04-21 16:55:15'),
(5, 23, '2026-05-07 16:34:04', 'Tạo tự động từ phiếu đặt #RES059', '2026-05-07 16:34:04', '2026-05-07 16:34:04'),
(6, 23, '2026-05-07 16:49:48', 'Tạo tự động từ phiếu đặt #RES061', '2026-05-07 16:49:48', '2026-05-07 16:49:48'),
(7, 25, '2026-05-07 17:23:24', 'Tạo tự động từ phiếu đặt #RES067', '2026-05-07 17:23:24', '2026-05-07 17:23:24'),
(8, 25, '2026-05-07 18:24:57', 'Tạo tự động từ phiếu đặt #RES070', '2026-05-07 18:24:57', '2026-05-07 18:24:57'),
(9, 3, '2026-05-08 17:00:00', '', '2026-05-07 18:51:41', '2026-05-07 18:51:41'),
(10, 25, '2026-05-07 19:47:29', 'Tạo tự động từ phiếu đặt #RES071', '2026-05-07 19:47:29', '2026-05-07 19:47:29'),
(11, 3, '2026-05-09 17:00:00', '', '2026-05-07 19:49:45', '2026-05-07 19:49:45'),
(12, 1, '2026-05-09 17:00:00', 'mượn sách ngày 24/5', '2026-05-10 01:17:15', '2026-05-10 01:17:15'),
(13, 6, '2026-06-23 17:00:00', '', '2026-06-24 06:39:36', '2026-06-24 06:39:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loan_details`
--

CREATE TABLE `loan_details` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `book_copy_id` int(11) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loan_details`
--

INSERT INTO `loan_details` (`id`, `loan_id`, `book_copy_id`, `due_date`, `return_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 3, '2026-04-14 16:59:59', '2026-05-10 01:18:55', 'returned', NULL, '2026-05-10 01:18:55'),
(3, 3, 4, '2026-05-05 16:52:30', '2026-05-07 19:03:37', 'returned', '2026-04-21 16:52:30', '2026-05-07 19:03:37'),
(4, 4, 3, '2026-05-05 16:55:15', '2026-06-24 08:19:56', 'returned', '2026-04-21 16:55:15', '2026-06-24 08:19:56'),
(5, 5, 31, '2026-05-21 16:34:04', NULL, 'borrowing', '2026-05-07 16:34:04', '2026-05-07 16:34:04'),
(6, 6, 34, '2026-05-21 16:49:48', NULL, 'borrowing', '2026-05-07 16:49:48', '2026-05-07 16:49:48'),
(7, 7, 40, '2026-05-21 17:23:24', '2026-05-07 19:03:21', 'returned', '2026-05-07 17:23:24', '2026-05-07 19:03:21'),
(8, 8, 43, '2026-05-21 18:24:57', '2026-05-07 18:50:25', 'returned', '2026-05-07 18:24:57', '2026-05-07 18:50:25'),
(9, 9, 43, '2025-05-23 16:59:59', '2026-05-07 18:52:06', 'returned', '2026-05-07 18:51:41', '2026-05-07 18:52:06'),
(10, 10, 9, '2026-05-21 19:47:29', NULL, 'borrowing', '2026-05-07 19:47:29', '2026-05-07 19:47:29'),
(11, 11, 10, '2026-05-16 16:59:59', NULL, 'borrowing', '2026-05-07 19:49:45', '2026-05-07 19:49:45'),
(12, 12, 40, '2026-05-24 16:59:59', NULL, 'borrowing', '2026-05-10 01:17:15', '2026-05-10 01:17:15'),
(13, 13, 42, '2026-06-26 16:59:59', NULL, 'borrowing', '2026-06-24 06:39:36', '2026-06-24 06:39:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Nhà xuất bản Kim Đồng', '55 Quang Trung, Hai Bà Trưng, Hà Nội, Việt Nam', 'contact@kimdong.vn', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(2, 'Nhà xuất bản Trẻ', '161B Lý Chính Thắng, Quận 3, TP.HCM, Việt Nam', 'info@nxbtre.com.vn', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(3, 'Nhà xuất bản Giáo Dục Việt Nam', '81 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội, Việt Nam', 'info@nxbgd.vn', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(4, 'Nhà xuất bản Lao Động', '175 Giảng Võ, Ba Đình, Hà Nội, Việt Nam', 'contact@nxblaodong.vn', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(5, 'Nhà xuất bản Thế Giới', '46 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội, Việt Nam', 'info@thegioipublishers.vn', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(6, 'Penguin Random House', '1745 Broadway, New York, USA', 'contact@penguinrandomhouse.com', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(7, 'HarperCollins', '195 Broadway, New York, USA', 'info@harpercollins.com', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(8, 'O\'Reilly Media', '1005 Gravenstein Highway North, Sebastopol, California, USA', 'support@oreilly.com', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(9, 'Springer', 'Tiergartenstrasse 17, Heidelberg, Germany', 'contact@springer.com', '2026-03-13 21:17:32', '2026-03-13 21:17:32'),
(10, 'McGraw-Hill Education', '1325 Avenue of the Americas, New York, USA', 'support@mheducation.com', '2026-03-13 21:17:32', '2026-03-13 21:17:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `reservation_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `book_copy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `book_id`, `reservation_date`, `status`, `created_at`, `updated_at`, `book_copy_id`) VALUES
(1, 3, 2, '2026-03-01 10:00:00', 'pending', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(3, 5, 4, '2026-03-03 09:15:00', 'pending', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(4, 6, 5, '2026-03-04 11:45:00', 'cancelled', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(5, 7, 6, '2026-03-05 16:30:00', 'approved', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(6, 8, 7, '2026-03-06 13:10:00', 'pending', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(9, 3, 10, '2026-03-09 10:25:00', 'approved', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(10, 4, 2, '2026-03-10 17:00:00', 'pending', '2026-03-13 21:29:09', '2026-03-13 21:29:09', NULL),
(34, 22, 4, '2026-03-01 10:00:00', 'approved', '2026-03-13 21:24:23', '2026-03-13 21:24:23', NULL),
(37, 22, 3, '2026-04-10 02:00:00', 'PENDING', NULL, '2026-04-09 10:33:10', NULL),
(41, 22, 2, '2026-04-09 02:00:00', 'PENDING', NULL, NULL, NULL),
(43, 22, 5, '2026-04-10 02:00:00', 'PENDING', NULL, '2026-04-09 10:37:48', NULL),
(47, 23, 2, '2026-04-24 02:00:00', 'completed', '2026-04-17 14:06:23', '2026-04-21 16:55:15', NULL),
(49, 23, 3, '2026-04-23 02:00:00', 'completed', '2026-04-21 16:51:51', '2026-04-21 16:52:30', NULL),
(57, 23, 5, '2026-05-07 17:00:00', 'approved', '2026-05-05 16:12:43', '2026-05-07 15:30:17', 29),
(58, 23, 6, '2026-05-07 17:00:00', 'approved', '2026-05-05 16:13:09', '2026-05-07 15:35:23', 30),
(59, 23, 10, '2026-05-07 17:00:00', 'completed', '2026-05-07 16:15:27', '2026-05-07 16:34:04', 31),
(60, 23, 7, NULL, 'pending', '2026-05-07 16:16:55', '2026-05-07 16:16:55', NULL),
(61, 23, 8, '2026-05-07 17:00:00', 'completed', '2026-05-07 16:48:44', '2026-05-07 16:49:48', 34),
(63, 26, 5, NULL, 'pending', '2026-05-07 17:13:15', '2026-05-07 17:13:15', 36),
(65, 26, 9, NULL, 'pending', '2026-05-07 17:17:32', '2026-05-07 17:17:32', 39),
(66, 25, 10, NULL, 'pending', '2026-05-07 17:20:12', '2026-05-07 17:20:12', 32),
(67, 25, 11, '2026-05-07 17:00:00', 'completed', '2026-05-07 17:22:02', '2026-05-07 17:23:24', 40),
(70, 25, 4, '2026-05-07 17:00:00', 'completed', '2026-05-07 18:23:21', '2026-05-07 18:24:57', 43),
(71, 25, 2, '2026-05-07 17:00:00', 'completed', '2026-05-07 19:47:17', '2026-05-07 19:47:29', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `book_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 5, 'Cuốn sách rất hay và truyền cảm hứng.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(2, 4, 3, 4, 'Nội dung hấp dẫn, cốt truyện lôi cuốn.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(3, 5, 4, 5, 'Một trong những cuốn sách yêu thích của tôi.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(4, 6, 5, 4, 'Đọc rất cuốn, khó dừng lại.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(5, 7, 6, 5, 'Kiến thức cực kỳ bổ ích.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(6, 8, 7, 5, 'Sách lập trình nên đọc cho mọi developer.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(7, 9, 8, 4, 'Giáo trình khá chi tiết và dễ hiểu.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(8, 10, 9, 5, 'Cuốn sách thuật toán kinh điển.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(9, 3, 10, 4, 'Rất hữu ích cho việc học lập trình.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(10, 4, 2, 5, 'Đọc lại vẫn thấy rất hay.', '2026-03-13 21:32:13', '2026-03-13 21:32:13'),
(19, 23, 2, 4, 'sách không hay', '2026-04-18 08:50:42', '2026-04-18 08:50:42'),
(20, 23, 2, 5, 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdddddddddddddddd', '2026-04-20 10:25:08', '2026-04-21 16:25:13'),
(21, 23, 2, 5, 'dvadsfasfasfasdfasdfasgagagadfgf', '2026-04-21 16:25:19', '2026-04-21 16:25:19'),
(23, 23, 2, 5, 'sách hay nên đọc thử 1 lần trong đời!!!!!!', '2026-05-05 16:00:38', '2026-05-09 05:21:51'),
(24, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-27 18:47:03', '2026-06-27 18:47:03'),
(25, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-27 18:48:00', '2026-06-27 18:48:00'),
(26, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-27 18:52:05', '2026-06-27 18:52:05'),
(27, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 15:35:57', '2026-06-28 15:35:57'),
(28, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 15:57:41', '2026-06-28 15:57:41'),
(29, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 15:58:14', '2026-06-28 15:58:14'),
(30, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:04:29', '2026-06-28 17:04:29'),
(31, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:04:34', '2026-06-28 17:04:34'),
(32, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:04:42', '2026-06-28 17:04:42'),
(33, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:22:20', '2026-06-28 17:22:20'),
(34, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:52:06', '2026-06-28 17:52:06'),
(35, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-28 17:52:12', '2026-06-28 17:52:12'),
(36, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-29 08:35:49', '2026-06-29 08:35:49'),
(37, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-29 08:40:24', '2026-06-29 08:40:24'),
(38, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:03:37', '2026-06-30 02:03:37'),
(39, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:04:22', '2026-06-30 02:04:22'),
(40, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:06:11', '2026-06-30 02:06:11'),
(41, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:06:21', '2026-06-30 02:06:21'),
(42, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:07:31', '2026-06-30 02:07:31'),
(43, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:08:30', '2026-06-30 02:08:30'),
(44, 25, 2, 5, 'Sách rất hay và bổ ích', '2026-06-30 02:08:56', '2026-06-30 02:08:56'),
(45, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:09:41', '2026-06-30 02:09:41'),
(46, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:10:35', '2026-06-30 02:10:35'),
(47, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:13:38', '2026-06-30 02:13:38'),
(48, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:14:04', '2026-06-30 02:14:04'),
(49, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:29:22', '2026-06-30 02:29:22'),
(50, 25, 2, 5, 'Chuỗi 501 ký tự', '2026-06-30 02:29:47', '2026-06-30 02:29:47'),
(51, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 02:30:18', '2026-06-30 02:30:18'),
(52, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 03:54:11', '2026-06-30 03:54:11'),
(53, 25, 2, 5, 'Sach nay thuc su rat hay va lôi cuon', '2026-06-30 04:20:17', '2026-06-30 04:20:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2026-03-13 21:24:07', '2026-03-13 21:24:07'),
(2, 'librarian', '2026-03-13 21:24:07', '2026-03-13 21:24:07'),
(3, 'user', '2026-03-13 21:24:07', '2026-03-13 21:24:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shelves`
--

CREATE TABLE `shelves` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `msv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `full_name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`, `msv`) VALUES
(1, NULL, 'Nguyễn Văn A', 'nva@gmail.com', NULL, NULL, 'ACTIVE', '2026-03-02 22:45:57', NULL, ''),
(2, 1, 'Nguyễn Văn Admin', 'admin@library.com', '123456', '0900000001', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(3, 3, 'Trần Văn Tâm', 'librarian1@library.com', '123456', '0900000002', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(4, 2, 'Lê Minh Quản Lý', 'librarian2@library.com', '123456', '0900000003', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(5, 3, 'Phạm Văn An', 'user1@gmail.com', '123456', '0900000004', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(6, 3, 'Nguyễn Thị Bình', 'user2@gmail.com', '123456', '0900000005', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(7, 3, 'Đỗ Minh Hoàng', 'user3@gmail.com', '123456', '0900000006', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(8, 3, 'Trần Quang Huy', 'user4@gmail.com', '123456', '0900000007', 'inactive', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(9, 3, 'Lê Thu Trang', 'user5@gmail.com', '123456', '0900000008', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(10, 3, 'Nguyễn Đức Anh', 'user6@gmail.com', '123456', '0900000009', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(11, 3, 'Phạm Thị Lan', 'user7@gmail.com', '123456', '0900000010', 'active', '2026-03-13 21:24:23', '2026-03-13 21:24:23', ''),
(22, 1, 'tuan', 'tuan@gmail.com', '$2a$10$OJaA0zRpte4nOVxY7PnxgORGexvRGLB8pJCfbpwbFAIQFDISFW3XG', '0123456789', 'ACTIVE', NULL, NULL, ''),
(23, 3, 'tuần', 'tuan36@gmail.com', '$2a$10$4XCgq1tFGi6Yt/oWRHSIEOlcL./zmJrbA4TFk3aidHwHUGTdBFJDm', '0123456788', 'ACTIVE', NULL, NULL, ''),
(24, 3, 'tuan', 'tuan34@gmail.com', '$2a$10$NEmw1mll7Tne1dCFJkQuzugzrTarjHib0/iZiPXEwrGbNHV178mBy', '0123456770', 'ACTIVE', '2026-04-19 17:26:03', '2026-04-19 17:26:03', ''),
(25, 3, 'tuần', 'tuan37@gmail.com', '$2a$10$3M/zWHOITAorFmz2X7KVyOkulrIyEP.V8j23g9mLKqr7r.njhJ/im', 'tuan37@gmail.com', 'ACTIVE', '2026-05-07 17:11:28', '2026-05-07 17:11:28', NULL),
(26, 3, 'Hoàng Anh Tuấn', 'hoangtuan231205@gmail.com', '$2a$10$ACrKBAmJUG8i8K6SzowLlOGCSyHeTepP4i8hEjJYfc69w2JdXWe2S', '+84962944624', 'ACTIVE', '2026-05-07 17:12:58', '2026-05-07 17:12:58', NULL),
(27, 3, 'duong', 'tuan23@gmail.com', '$2a$10$ZjODDNxBUBVvYd2rb87HbuXHhikHby0OIgwkaYDg5Nzp1Cz/llH5e', '0962944624', 'ACTIVE', '2026-05-10 01:09:30', '2026-05-10 01:09:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(4, 5, '2026-03-13 21:33:13', NULL),
(4, 6, '2026-03-13 21:33:13', NULL),
(5, 4, '2026-03-13 21:33:13', NULL),
(5, 7, '2026-03-13 21:33:13', NULL),
(6, 8, '2026-03-13 21:33:13', NULL),
(7, 9, '2026-03-13 21:33:13', NULL),
(8, 10, '2026-03-13 21:33:13', NULL),
(9, 2, '2026-03-13 21:33:13', NULL),
(22, 2, '2026-04-11 15:37:22', '2026-04-11 15:37:22.000000'),
(22, 3, '2026-04-09 07:11:28', '2026-04-09 07:11:28.000000'),
(22, 4, '2026-04-06 16:52:21', '2026-04-06 16:52:21.000000'),
(22, 5, '2026-04-07 01:57:30', '2026-04-07 01:57:30.000000'),
(22, 6, '2026-04-09 10:38:01', '2026-04-09 10:38:01.000000'),
(23, 2, '2026-05-05 16:00:47', '2026-05-05 16:00:47.000000'),
(23, 3, '2026-04-21 16:47:58', '2026-04-21 16:47:58.000000'),
(23, 4, '2026-05-08 14:12:04', '2026-05-08 14:12:04.000000'),
(23, 5, '2026-05-09 14:30:20', '2026-05-09 14:30:20.000000'),
(23, 6, '2026-05-09 14:30:23', '2026-05-09 14:30:23.000000'),
(23, 9, '2026-05-09 14:30:27', '2026-05-09 14:30:27.000000'),
(23, 10, '2026-05-09 14:30:29', '2026-05-09 14:30:29.000000'),
(23, 11, '2026-05-09 14:30:30', '2026-05-09 14:30:30.000000'),
(23, 17, '2026-05-09 14:30:30', '2026-05-09 14:30:30.000000'),
(24, 2, '2026-04-19 18:01:44', '2026-04-19 18:01:44.000000'),
(25, 2, '2026-05-07 17:28:20', '2026-05-07 17:28:20.000000'),
(25, 3, '2026-05-07 17:28:20', '2026-05-07 17:28:20.000000'),
(25, 4, '2026-05-07 17:28:22', '2026-05-07 17:28:22.000000'),
(27, 2, '2026-05-10 01:23:08', '2026-05-10 01:23:08.000000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_book_category` (`category_id`),
  ADD KEY `fk_book_author` (`author_id`),
  ADD KEY `fk_book_publisher` (`publisher_id`);

--
-- Chỉ mục cho bảng `book_copies`
--
ALTER TABLE `book_copies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_copy_book` (`book_id`),
  ADD KEY `fk_copy_shelf` (`shelf_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fine_user` (`user_id`),
  ADD KEY `fk_fine_detail` (`loan_detail_id`);

--
-- Chỉ mục cho bảng `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loan_user` (`user_id`);

--
-- Chỉ mục cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_loan` (`loan_id`),
  ADD KEY `fk_detail_copy` (`book_copy_id`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_res_user` (`user_id`),
  ADD KEY `fk_res_book` (`book_id`),
  ADD KEY `fk_book_copies` (`book_copy_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_user` (`user_id`),
  ADD KEY `fk_review_book` (`book_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shelves`
--
ALTER TABLE `shelves`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`user_id`,`book_id`),
  ADD KEY `fk_wish_book` (`book_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `book_copies`
--
ALTER TABLE `book_copies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shelves`
--
ALTER TABLE `shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_book_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `book_copies`
--
ALTER TABLE `book_copies`
  ADD CONSTRAINT `fk_copy_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_copy_shelf` FOREIGN KEY (`shelf_id`) REFERENCES `shelves` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fk_fine_detail` FOREIGN KEY (`loan_detail_id`) REFERENCES `loan_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fine_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `fk_loan_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  ADD CONSTRAINT `fk_detail_copy` FOREIGN KEY (`book_copy_id`) REFERENCES `book_copies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detail_loan` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_book_copies` FOREIGN KEY (`book_copy_id`) REFERENCES `book_copies` (`id`),
  ADD CONSTRAINT `fk_res_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_res_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_review_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `fk_wish_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wish_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
