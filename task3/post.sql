-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 12:29 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `post_id`, `user_id`) VALUES
(1, 'Aenean eget elementum quam, eget vehicula elit. Aliquam erat volutpat. Phasellus varius est eu est pellentesque commodo. Quisque pulvinar augue cursus magna porttitor, in dignissim risus pharetra. Suspendisse ac molestie mi. Duis pulvinar turpis sed lacus tincidunt, sit amet rhoncus tortor facilisis. Pellentesque eros elit, laoreet sit amet pharetra eu, porta vitae lacus. Cras in enim nisi. Nullam a pretium est, quis dignissim justo. Ut vestibulum dapibus mauris vel aliquet. Ut et enim eget lectus accumsan commodo. Duis nec turpis sit amet diam vestibulum posuere vitae eget mi. Nunc ante nunc, euismod vitae neque et, blandit iaculis augue. Etiam at orci consequat, aliquam neque ut, pulvinar dui. Aliquam erat volutpat', '2021-03-29 09:48:40', 5, 1),
(2, 'Mauris a diam et lorem vestibulum iaculis non id nisi. Nam eget blandit mi. Morbi a tortor augue. Pellentesque efficitur ipsum nisi, nec iaculis eros finibus quis. Integer finibus lorem ut pretium viverra. Praesent molestie metus nulla, ac rhoncus risus lacinia a. Duis vel cursus nisl, id vulputate ante. Nam hendrerit nulla ornare felis ullamcorper, non pharetra turpis suscipit.', '2021-03-29 09:48:40', 5, 1),
(7, 'Quisque sollicitudin diam vitae magna accumsan lobortis. Morbi metus ante, semper ac odio id, vestibulum sagittis risus. Maecenas ullamcorper hendrerit porta. Quisque nec pulvinar eros. Cras ullamcorper aliquet dui, vitae aliquet enim pulvinar quis. Vivamus sollicitudin quis diam ut placerat. Sed viverra erat ante, non vehicula eros pulvinar sed. Pellentesque pharetra nulla felis, in volutpat nunc mattis nec. Sed sed dolor luctus, posuere odio sit amet, varius dolor. Sed augue est, auctor et consectetur eu, vulputate quis sem.', '2021-03-29 10:23:50', 8, 3),
(9, 'Aenean imperdiet at tellus nec dictum. Cras in ex imperdiet, porta sem at, porttitor odio. Integer at porta lacus. Aliquam vulputate vulputate dolor, consectetur vulputate libero scelerisque ut. Donec cursus hendrerit orci at placerat. Etiam porttitor, quam feugiat gravida dapibus, enim nisl ullamcorper mauris, sed hendrerit elit erat vel mi. Duis cursus lobortis massa, in efficitur lectus mattis id. Duis in arcu sit amet erat pretium ultricies. Fusce fermentum enim vel nunc finibus bibendum. Vestibulum ultrices cursus leo, nec scelerisque urna dapibus vitae. Duis ultrices odio vel enim ullamcorper, et faucibus lectus fringilla. Suspendisse faucibus pharetra sem, ut ultricies ligula tempus nec. Mauris accumsan tellus at pellentesque accumsan. Vivamus efficitur ut turpis ac tempor. Duis fermentum pretium dolor, nec tempor nisl. Nulla ac luctus mi.\r\n\r\n', '2021-03-29 10:26:14', 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue risus sit amet ante dictum iaculis. Proin iaculis volutpat nisl ac tincidunt. Etiam gravida euismod ultricies. Vivamus odio felis, auctor vitae lorem sit amet, lacinia posuere ligula. Integer tincidunt orci quis commodo venenatis. Duis vestibulum id dolor ut tempor. Donec mollis ornare tellus, id auctor neque. Vestibulum mollis pulvinar ullamcorper. Nunc ac sem nulla.', '2021-03-29 09:45:08', '0000-00-00 00:00:00', 1),
(8, 'Proin efficitur', 'Proin efficitur convallis nisi, vel condimentum ligula consequat id. Pellentesque sapien urna, rhoncus sit amet lorem molestie, hendrerit mollis sem. Sed est sem, vehicula at convallis ut, interdum sed ex. Nam et dolor eu nunc mollis fermentum eu ut mauris. Mauris sed aliquam felis, at egestas nisi. Phasellus id urna pharetra, auctor erat eget, porttitor orci. Quisque imperdiet nisi eu dui euismod pretium. Aenean congue aliquam lorem nec mollis. Nulla tincidunt ante consequat purus rhoncus, auctor condimentum eros venenatis. Nam sit amet sapien ut magna ultricies commodo. Suspendisse in tortor nec libero ornare mollis. Aenean quis mauris quis ex blandit cursus. Suspendisse ultrices mauris sit amet finibus lobortis. In ullamcorper ante sed mi tempus eleifend. Phasellus quis arcu cursus, mollis urna sit amet, tristique mi. Proin ac interdum orci, eu dignissim dui.', '2021-03-29 10:18:38', '2021-03-29 10:23:04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `date_of_birth`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 'ae2b299b1c065b186f8d50869097cbff26ea283b', '1989-03-16'),
(3, 'Tom Barkley', 'tombarkley@gmail.com', 'b5ea063b9a19f32cc8fd0433eb4f50189a93766b', '1992-06-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_post` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
