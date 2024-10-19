-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 08:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Christmas Gifts'),
(2, 'Wedding Gifts'),
(3, 'Eid Gifts'),
(4, 'Kids Gifts'),
(5, 'Souvenirs');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `todo_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Great list! I love the ideas, especially the personalized gifts for weddings.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(2, 2, 6, 'The project looks good! Can\'t wait to see the final version.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(3, 3, 5, 'I just completed my workout today! Always feel great after a gym session.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(4, 4, 1, 'I love finding unique personalized gifts for every occasion. Great tips here!', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(5, 5, 3, 'Choosing the perfect custom gift is always tricky, but this guide is super helpful!', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(6, 6, 5, 'Definitely bookmarking this for future gift shopping. Thanks for the ideas!', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(7, 7, 3, 'Such a thoughtful list of gift ideas! My wife will love these suggestions.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(8, 8, 4, 'Personalized gifts are always the best! Great reason why they stand out as presents.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(9, 9, 5, 'This is perfect for finding unique gifts for kids. Thanks for the recommendations!', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(10, 10, 2, 'Corporate gifts can make a huge difference in client relationships. Great ideas here.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(11, 11, 5, 'Amazing! I never thought of giving pet lovers custom gifts before.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(12, 12, 4, 'Eco-friendly personalized gifts are the future! So glad to see this trend growing.', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(13, 13, 5, 'Personalizing gifts with photos and text makes them so much more meaningful. Great tips!', '2024-10-14 16:50:06', '2024-10-14 16:50:06'),
(14, 4, 1, 'This is a great gift idea for weddings, birthdays, and other special events!', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(15, 4, 2, 'I love the idea of giving personalized gifts for every occasion. Very thoughtful!', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(16, 4, 3, 'Personalized gifts make any event more special and meaningful!', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(17, 5, 1, 'Choosing a custom gift can be tricky, but this guide makes it easy.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(18, 5, 2, 'Great tips! Personalized gifts are the best choice for a memorable present.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(19, 5, 3, 'This article is so helpful in selecting the perfect gift for someone special.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(20, 6, 4, 'Perfect ideas for men! Personalized gifts are always a hit.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(21, 6, 5, 'Loved the list! I’m definitely getting some of these gifts for my husband.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(22, 6, 1, 'These gift ideas are exactly what I need for my dad. Personalized gifts always feel more personal.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(23, 7, 2, 'These are great ideas for gifts for women. Personalizing them makes them extra special.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(24, 7, 3, 'I love the variety of personalized gifts! Perfect for any woman in your life.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(25, 7, 4, 'Such unique and thoughtful gift ideas for her, thank you for the suggestions.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(26, 8, 5, 'Personalized gifts are always appreciated because they show how much thought was put into them.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(27, 8, 1, 'Great article! Personalized gifts really do make the best presents.', '2024-10-14 17:23:52', '2024-10-14 17:23:52'),
(28, 8, 2, 'I couldn’t agree more! Personalized gifts make any occasion so much more special.', '2024-10-14 17:23:52', '2024-10-14 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `todo_id`, `user_id`, `created_at`) VALUES
(1, 1, 1, '2024-10-14 16:57:01'),
(2, 1, 2, '2024-10-14 16:57:01'),
(3, 1, 3, '2024-10-14 16:57:01'),
(4, 1, 4, '2024-10-14 16:57:01'),
(5, 2, 2, '2024-10-14 16:57:01'),
(6, 2, 3, '2024-10-14 16:57:01'),
(7, 3, 3, '2024-10-14 16:57:01'),
(8, 3, 4, '2024-10-14 16:57:01'),
(9, 3, 5, '2024-10-14 16:57:01'),
(10, 4, 1, '2024-10-14 16:57:01'),
(11, 4, 2, '2024-10-14 16:57:01'),
(12, 5, 1, '2024-10-14 16:57:01'),
(13, 5, 5, '2024-10-14 16:57:01'),
(14, 6, 2, '2024-10-14 16:57:01'),
(15, 6, 4, '2024-10-14 16:57:01'),
(16, 7, 3, '2024-10-14 16:57:01'),
(17, 7, 5, '2024-10-14 16:57:01'),
(18, 8, 1, '2024-10-14 16:57:01'),
(19, 8, 2, '2024-10-14 16:57:01'),
(20, 9, 4, '2024-10-14 16:57:01'),
(21, 9, 5, '2024-10-14 16:57:01'),
(22, 10, 1, '2024-10-14 16:57:01'),
(23, 10, 3, '2024-10-14 16:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `image_url`, `status`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Buy groceries', 'Buy milk, eggs, and bread', NULL, 'pending', '2024-10-13 10:25:34', '2024-10-14 16:33:20', 9, 3),
(2, 'Complete project', 'Finish the PHP project for the client', NULL, 'pending', '2024-10-13 10:25:34', '2024-10-14 16:33:20', 6, 3),
(3, 'Workout', 'Go to the gym for a 1-hour workout session', NULL, 'completed', '2024-10-13 10:25:34', '2024-10-14 16:33:20', 5, 5),
(4, 'Unique Personalized Gifts for Every Occasion', 'Discover unique personalized gifts for weddings, birthdays, anniversaries, and more to make any celebration special.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 4, 1),
(5, 'How to Choose the Perfect Custom Gift', 'Learn how to choose the perfect custom gift for your loved ones with these simple tips and ideas.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 1, 3),
(6, 'Personalized Gifts for Him', 'Explore the best personalized gift ideas for men, from engraved watches to custom leather goods.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 7, 5),
(7, 'Top 10 Personalized Gift Ideas for Her', 'Looking for a gift she will love? Check out our top 10 personalized gift ideas for women.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 2, 3),
(8, 'Why Personalized Gifts Make the Best Presents', 'Find out why personalized gifts are the ultimate way to show you care and make lasting memories.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 9, 4),
(9, 'Create Custom Gifts for Kids', 'From personalized toys to custom books, here are fun and creative personalized gifts for children.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:32:54', 4, 5),
(10, 'The Importance of Personalized Corporate Gifts', 'Boost your business relationships with thoughtful personalized corporate gifts that leave a lasting impression.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 9, 2),
(11, 'Custom Gift Ideas for Pet Lovers', 'Give the pet lovers in your life something special with personalized gifts that celebrate their furry friends.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 2, 5),
(12, 'Eco-Friendly Personalized Gifts for the Conscious Consumer', 'Explore sustainable and eco-friendly personalized gift options for the environmentally conscious.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 1, 4),
(13, 'How to Personalize Gifts with Photos and Text', 'Learn creative ways to personalize gifts with photos and text for a one-of-a-kind present.', NULL, 'pending', '2024-10-14 13:48:32', '2024-10-14 16:33:20', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `avatar` varchar(255) DEFAULT 'default-avatar.png',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `avatar`, `role_id`) VALUES
(1, 'John Doe', 'johndoe@example.com', 'password123', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/men/1.jpg', 1),
(2, 'Jane Smith', 'janesmith@example.com', 'password456', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/men/2.jpg', 3),
(3, 'Michael Johnson', 'michaeljohnson@example.com', 'password789', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/men/3.jpg', 2),
(4, 'Emily Davis', 'emilydavis@example.com', 'password321', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/men/4.jpg', 2),
(5, 'Daniel Brown', 'danielbrown@example.com', 'password654', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/women/1.jpg', 3),
(6, 'Olivia Wilson', 'oliviawilson@example.com', 'password987', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/women/2.jpg', 2),
(7, 'William Martinez', 'williammartinez@example.com', 'password135', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/women/3.jpg', 2),
(8, 'Sophia Anderson', 'sophiaanderson@example.com', 'password246', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'https://randomuser.me/api/portraits/women/4.jpg', 2),
(9, 'James Taylor', 'jamestaylor@example.com', 'password579', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'default-avatar.png', 2),
(10, 'Isabella Moore', 'isabellamoore@example.com', 'password864', '2024-10-14 14:06:59', '2024-10-14 19:28:49', 'default-avatar.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
