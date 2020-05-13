-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 12, 2020 at 01:47 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `laravelpizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `review`, `rate`, `created_at`, `updated_at`, `food_id`, `user_id`) VALUES
(1, 'nice', 0, '2020-05-09 04:52:21', '2020-05-09 04:52:21', 1, 1),
(2, 'ooo', 2, '2020-05-09 04:53:01', '2020-05-09 04:53:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Peppy Paneer', 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!', '99.00', NULL, NULL, 1),
(2, 'Mexican Green Wave', 'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.', '149.00', NULL, NULL, 1),
(3, 'Veg Extravaganza', 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', '149.00', NULL, NULL, 1),
(4, 'Farm House', 'A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes', '199.00', NULL, NULL, 1),
(5, 'Double Cheese Margherita', 'The ever-popular Margherita - loaded with extra cheese... oodies of it!', '199.00', NULL, NULL, 1),
(6, 'VEG LOADED', 'Tomato | Grilled Mushroom |Jalapeno |Golden Corn | Beans in a fresh pan crust', '99.00', NULL, NULL, 1),
(7, 'Chicken Dominator', 'Treat your taste buds with Double Pepper Barbecue Chicken, Peri-Peri Chicken, Chicken Tikka & Grilled Chicken Rasher', '99.00', NULL, NULL, 2),
(8, 'Non Veg Supreme', 'Bite into supreme delight of Black Olives, Onions, Grilled Mushrooms, Pepper BBQ Chicken, Peri-Peri Chicken, Grilled Chicken Rashers', '199.00', NULL, NULL, 2),
(9, 'CHEESY', 'Orange Cheddar Cheese I Mozzarella', '99.00', NULL, NULL, 1),
(13, 'PEPPER BARBECUE & ONION', 'Pepper Barbecue Chicken I Onion', '199.00', '2020-05-11 07:15:52', '2020-05-11 07:15:52', 2),
(34, 'Deluxe Veggie', 'For a vegetarian looking for a BIG treat that goes easy on the spices, this one\'s got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.\r\n\r\n', '150.00', '2020-05-12 06:37:32', '2020-05-12 06:37:32', 1),
(35, 'Margherita', 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(36, 'Double Cheese Margherita', 'The ever-popular Margherita - loaded with extra cheese... oodies of it!\r\n\r\n', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(37, 'Paneer Makhani', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(38, 'Veg Extravaganza', 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(39, 'VEGGIE PARADISE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(40, 'PEPPER BARBECUE CHICKEN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 2),
(41, 'Indi Chicken Tikka', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 2),
(42, 'FRESH VEGGIE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(43, 'Indi Tandoori Paneer', 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo\r\n\r\n', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(44, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:46:26', '2020-05-12 06:46:26', 1),
(45, 'Margherita', 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(46, 'Double Cheese Margherita', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(47, 'Paneer Makhani', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(48, 'Veg Extravaganza', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(49, 'VEGGIE PARADISE', 'The ever-popular Margherita - loaded with extra cheese... oodies of it!\r\n\r\n', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(50, 'PEPPER BARBECUE CHICKEN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(51, 'Indi Chicken Tikka', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(52, 'FRESH VEGGIE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(53, 'Indi Tandoori Paneer', 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo\r\n\r\n', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(54, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:47:29', '2020-05-12 06:47:29', 1),
(55, 'Margherita', 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(56, 'Double Cheese Margherita', 'The ever-popular Margherita - loaded with extra cheese... oodies of it!\r\n\r\n', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(57, 'Paneer Makhani', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(58, 'Veg Extravaganza', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(59, 'VEGGIE PARADISE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika\r\n\r\n', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(60, 'PEPPER BARBECUE CHICKEN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 2),
(61, 'Indi Chicken Tikka', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(62, 'FRESH VEGGIE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(63, 'Indi Tandoori Paneer', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(64, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:07', '2020-05-12 06:48:07', 1),
(65, 'Margherita', 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(66, 'Double Cheese Margherita', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(67, 'Paneer Makhani', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(68, 'Veg Extravaganza', 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(69, 'VEGGIE PARADISE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(70, 'PEPPER BARBECUE CHICKEN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 2),
(71, 'Indi Chicken Tikka', 'The wholesome flavour of tandoori masala with Chicken tikka I onion I red paprika I mint mayo\r\n\r\n', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(72, 'FRESH VEGGIE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(73, 'Indi Tandoori Paneer', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(74, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:26', '2020-05-12 06:48:26', 1),
(75, 'Margherita', 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(76, 'Double Cheese Margherita', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(77, 'Paneer Makhani', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(78, 'Veg Extravaganza', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(79, 'VEGGIE PARADISE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(80, 'PEPPER BARBECUE CHICKEN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 2),
(81, 'Indi Chicken Tikka', 'The wholesome flavour of tandoori masala with Chicken tikka I onion I red paprika I mint mayo\r\n\r\n', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 2),
(82, 'FRESH VEGGIE', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(83, 'Indi Tandoori Paneer', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(84, 'CHEESE N CORN', 'Cheese I Golden Corn\r\n\r\n', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(85, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(86, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(87, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(88, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(89, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(90, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(91, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(92, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(93, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(94, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1),
(95, 'CHEESE N CORN', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '150.00', '2020-05-12 06:48:38', '2020-05-12 06:48:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_categories`
--

INSERT INTO `food_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Veg', NULL, NULL),
(2, 'Non-Veg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_24_100617_create_food_categories_table', 1),
(4, '2018_03_24_101349_create_foods_table', 1),
(5, '2018_03_24_102726_create_photos_table', 1),
(6, '2018_03_24_103630_create_orders_table', 1),
(7, '2018_03_24_104219_create_order_details_table', 1),
(8, '2018_03_24_104259_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_money` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `address`, `total_money`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'lucknow', '248.00', '2020-05-09 04:06:56', '2020-05-09 04:06:56', 1),
(2, 'lucknow', '248.00', '2020-05-09 04:10:34', '2020-05-09 04:10:35', 1),
(3, 'lucknow', '248.00', '2020-05-10 00:09:49', '2020-05-10 00:09:49', 2),
(4, 'Lucknow', '250.00', '2020-05-12 07:22:56', '2020-05-12 07:22:56', 1),
(5, 'Kanpur', '250.00', '2020-05-12 07:22:56', '2020-05-12 07:22:56', 1),
(6, 'Delhi', '250.00', '2020-05-12 07:22:56', '2020-05-12 07:22:56', 1),
(7, 'Noida', '250.00', '2020-05-12 07:22:56', '2020-05-12 07:22:56', 1),
(8, 'Gurgaon', '250.00', '2020-05-12 07:22:56', '2020-05-12 07:22:56', 1),
(9, 'Lucknow', '250.00', '2020-05-12 07:23:05', '2020-05-12 07:23:05', 1),
(10, 'Kanpur', '250.00', '2020-05-12 07:23:05', '2020-05-12 07:23:05', 1),
(11, 'Delhi', '250.00', '2020-05-12 07:23:05', '2020-05-12 07:23:05', 1),
(12, 'Noida', '250.00', '2020-05-12 07:23:05', '2020-05-12 07:23:05', 1),
(13, 'Gurgaon', '250.00', '2020-05-12 07:23:05', '2020-05-12 07:23:05', 1),
(14, 'Lucknow', '250.00', '2020-05-12 07:23:28', '2020-05-12 07:23:28', 1),
(15, 'Kanpur', '250.00', '2020-05-12 07:23:28', '2020-05-12 07:23:28', 1),
(16, 'Delhi', '250.00', '2020-05-12 07:23:28', '2020-05-12 07:23:28', 1),
(17, 'Noida', '250.00', '2020-05-12 07:23:28', '2020-05-12 07:23:28', 1),
(18, 'Gurgaon', '250.00', '2020-05-12 07:23:28', '2020-05-12 07:23:28', 1),
(19, 'Lucknow', '250.00', '2020-05-12 07:23:48', '2020-05-12 07:23:48', 1),
(20, 'Kanpur', '250.00', '2020-05-12 07:23:48', '2020-05-12 07:23:48', 1),
(21, 'Delhi', '250.00', '2020-05-12 07:23:48', '2020-05-12 07:23:48', 1),
(22, 'Noida', '250.00', '2020-05-12 07:23:48', '2020-05-12 07:23:48', 1),
(23, 'Gurgaon', '250.00', '2020-05-12 07:23:48', '2020-05-12 07:23:48', 1),
(24, 'Lucknow', '250.00', '2020-05-12 07:24:08', '2020-05-12 07:24:08', 1),
(25, 'Kanpur', '250.00', '2020-05-12 07:24:08', '2020-05-12 07:24:08', 1),
(26, 'Noida', '250.00', '2020-05-12 07:24:08', '2020-05-12 07:24:08', 1),
(27, 'Gurgaon', '250.00', '2020-05-12 07:24:08', '2020-05-12 07:24:08', 1),
(28, 'Lucknow', '250.00', '2020-05-12 07:24:31', '2020-05-12 07:24:31', 1),
(29, 'Kanpur', '250.00', '2020-05-12 07:24:31', '2020-05-12 07:24:31', 1),
(30, 'Noida', '250.00', '2020-05-12 07:24:31', '2020-05-12 07:24:31', 1),
(31, 'Lucknow', '250.00', '2020-05-12 07:25:10', '2020-05-12 07:25:10', 1),
(32, 'Kanpur', '250.00', '2020-05-12 07:25:10', '2020-05-12 07:25:10', 1),
(33, 'Delhi', '250.00', '2020-05-12 07:25:10', '2020-05-12 07:25:10', 1),
(34, 'Noida', '250.00', '2020-05-12 07:25:10', '2020-05-12 07:25:10', 1),
(35, 'Gurgaon', '250.00', '2020-05-12 07:25:10', '2020-05-12 07:25:10', 1),
(36, 'Noida', '250.00', '2020-05-12 07:26:54', '2020-05-12 07:26:54', 1),
(37, 'Kanpur', '250.00', '2020-05-12 07:26:54', '2020-05-12 07:26:54', 1),
(38, 'Delhi', '250.00', '2020-05-12 07:26:54', '2020-05-12 07:26:54', 1),
(39, 'Delhi', '250.00', '2020-05-12 07:26:54', '2020-05-12 07:26:54', 1),
(40, 'Noida', '250.00', '2020-05-12 07:26:54', '2020-05-12 07:26:54', 1),
(41, '1', '250.00', '2020-05-12 07:27:15', '2020-05-12 07:27:15', 1),
(42, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(43, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(44, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(45, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(46, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(47, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(48, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(49, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(50, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(51, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(52, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(53, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(54, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(55, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(56, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(57, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(58, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(59, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(60, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1),
(61, '1', '250.00', '2020-05-12 07:27:16', '2020-05-12 07:27:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `food_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `order_id`, `food_id`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 2),
(3, 3, 2, 6),
(4, 1, 2, 3),
(5, 1, 3, 1),
(6, 2, 3, 2),
(7, 2, 20, 42),
(8, 2, 20, 53),
(9, 2, 10, 43),
(10, 2, 19, 40),
(11, 2, 19, 46),
(12, 1, 20, 48),
(13, 2, 24, 46),
(14, 2, 9, 48),
(15, 3, 27, 37),
(16, 2, 10, 40),
(17, 2, 29, 41),
(18, 1, 12, 43),
(19, 2, 11, 48),
(20, 2, 1, 40),
(21, 3, 19, 52),
(22, 2, 25, 44),
(23, 2, 8, 50),
(24, 2, 19, 41),
(25, 2, 17, 37),
(26, 3, 21, 53),
(27, 2, 14, 45);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `created_at`, `updated_at`, `food_id`) VALUES
(1, '/img/1589201152_0.png', '2020-05-11 07:15:52', '2020-05-11 07:15:52', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `photo`, `type`, `created_at`, `updated_at`) VALUES
(1, 'prasoon', 'prasoon4lko@gmail.com', '$2y$10$AmaYqK2ivrLNhB31I.e8dOzozbtje/9mMIkBtSljqVSDg1CXChh1q', '9898989898', 'lucknow', NULL, 1, NULL, NULL),
(2, 'sunny', 'sunny@gmail.com', '$2y$10$ZQsoNsNy7Q3AsJa5uA49K.6rcLuM5EgWZbf6KGbY2LEJZFzYdM08q', '98989898989', 'lucknow', NULL, 0, '2020-05-10 00:08:08', '2020-05-10 00:08:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_food_id_foreign` (`food_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_category_id_foreign` (`category_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_food_id_foreign` (`food_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_food_id_foreign` (`food_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `food_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE;
