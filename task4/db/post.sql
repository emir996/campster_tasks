-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2021 at 08:23 PM
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
(2, 'Mauris a diam et lorem vestibulum iaculis non id nisi. Nam eget blandit mi. Morbi a tortor augue. Pellentesque efficitur ipsum nisi, nec iaculis eros finibus quis. Integer finibus lorem ut pretium viverra.', '2021-03-29 09:48:40', 5, 1),
(7, 'Quisque sollicitudin diam vitae magna accumsan lobortis. Morbi metus ante, semper ac odio id, vestibulum sagittis risus. Maecenas ullamcorper hendrerit porta. Quisque nec pulvinar eros. Cras ullamcorper aliquet dui, vitae aliquet enim pulvinar quis. Vivamus sollicitudin quis diam ut placerat. Sed viverra erat ante, non vehicula eros pulvinar sed. Pellentesque pharetra nulla felis, in volutpat nunc mattis nec. Sed sed dolor luctus, posuere odio sit amet, varius dolor. Sed augue est, auctor et consectetur eu, vulputate quis sem.', '2021-03-29 10:23:50', 8, 3),
(9, 'Aenean imperdiet at tellus nec dictum. Cras in ex imperdiet, porta sem at, porttitor odio. Integer at porta lacus. Aliquam vulputate vulputate dolor, consectetur vulputate libero scelerisque ut. Donec cursus hendrerit orci at placerat. Etiam porttitor, quam feugiat gravida dapibus, enim nisl ullamcorper mauris, sed hendrerit elit erat vel mi. Duis cursus lobortis massa, in efficitur lectus mattis id. Duis in arcu sit amet erat pretium ultricies. Fusce fermentum enim vel nunc finibus bibendum. Vestibulum ultrices cursus leo, nec scelerisque urna dapibus vitae. Duis ultrices odio vel enim ullamcorper, et faucibus lectus fringilla. Suspendisse faucibus pharetra sem, ut ultricies ligula tempus nec. Mauris accumsan tellus at pellentesque accumsan. Vivamus efficitur ut turpis ac tempor. Duis fermentum pretium dolor, nec tempor nisl. Nulla ac luctus mi.\r\n\r\n', '2021-03-29 10:26:14', 8, 3),
(14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices porttitor enim at varius. Aenean rhoncus ipsum vitae justo suscipit posuere. Pellentesque at venenatis metus, bibendum vehicula sapien. Vestibulum et libero augue. Proin tempor, lacus vel tempus pretium, justo ligula dignissim ante, sit amet porttitor augue nibh ut elit.', '2021-03-30 12:57:16', 16, 1),
(15, 'onsectetur semper sapien at blandit. Nullam eu dolor sapien. Donec enim quam, tincidunt ut mi ut, vulputate vehicula ante. Nulla in sollicitudin dui. Nunc tortor ligula, varius at elementum at, dapibus sit amet nunc. Nam tincidunt augue malesuada diam luctus, consectetur auctor lectus posuere. Pellentesque nec convallis metus, vitae facilisis enim. Phasellus laoreet, nisi ac ornare lacinia, lorem lacus facilisis elit, vel euismod leo magna vitae nisl. Cras quis varius elit.', '2021-03-30 12:57:16', 17, 3),
(16, 'Integer tortor mi, rutrum ac hendrerit ac, facilisis ac dolor. Curabitur in posuere velit, vel ullamcorper felis. Integer ultricies lectus in lorem volutpat mattis. Integer pulvinar luctus scelerisque. Donec congue ipsum et eros finibus cursus. Integer laoreet tempor nisi ac cursus. Duis vitae tempor urna. Proin in mauris rutrum arcu maximus porttitor. Curabitur id fermentum metus, sollicitudin sollicitudin lacus. Proin blandit vestibulum ultricies. ', '2021-03-30 12:57:16', 20, 4),
(17, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam vulputate ullamcorper metus, hendrerit porttitor mi aliquet ac. Donec egestas augue at arcu tincidunt auctor. Sed in vestibulum felis, et congue lorem. Proin aliquet volutpat leo sit amet varius. In sit amet elementum dolor, a vehicula ipsum. Maecenas vestibulum volutpat elit, eu condimentum ex dignissim vel. Phasellus sagittis eros id dictum mollis.', '2021-03-30 12:57:16', 25, 5),
(18, 'Maecenas at rhoncus augue, sed sagittis velit. Phasellus erat turpis, sagittis consectetur tempor varius, feugiat quis mi. Donec eleifend diam ut mauris condimentum egestas. Aliquam erat tellus, venenatis eget suscipit ac, scelerisque a lectus. Ut interdum et odio sit amet lobortis. Sed maximus massa auctor vestibulum ornare. ', '2021-03-30 12:57:16', 5, 7),
(19, 'Pellentesque nec ultricies enim. Aenean quis lobortis nulla, ut facilisis leo. Quisque sollicitudin, ex eget suscipit maximus, nisi nibh egestas erat, id ullamcorper neque erat non nibh. Aenean ac vehicula lectus. In condimentum tristique posuere. Maecenas auctor metus ac est faucibus, sit amet faucibus metus aliquet. Fusce sollicitudin dapibus urna eu fringilla. Nam pretium tincidunt massa, eget lacinia tortor interdum sit amet. Pellentesque gravida vitae augue non tristique. Cras elementum sit amet dolor ac tristique. Suspendisse gravida semper semper. Nulla efficitur mattis eros, eu gravida augue pulvinar a.', '2021-03-30 12:57:16', 13, 8),
(20, 'Donec vulputate tortor justo. Phasellus tempor purus non placerat auctor. Nam auctor felis quis bibendum pellentesque. Donec rhoncus quam eget elit iaculis, sed aliquam dolor convallis. Ut egestas quam in turpis ullamcorper, vitae lacinia urna pretium. Proin et imperdiet mi, sit amet dictum purus. Ut facilisis, eros ac gravida finibus, sapien arcu dapibus tortor, eu ultrices enim ante eu nulla. Curabitur sit amet quam eget lectus faucibus facilisis. ', '2021-03-30 12:57:16', 15, 1),
(21, 'Etiam feugiat ligula in iaculis bibendum. Nullam iaculis faucibus ex id condimentum. Fusce consectetur est id turpis elementum, nec condimentum sem eleifend. Nullam fermentum neque eget dapibus feugiat. In ut ullamcorper diam, sit amet fermentum enim. Nunc a eleifend est. Proin luctus aliquam arcu, vel tristique eros placerat eu. Curabitur aliquet dictum consequat. Etiam nisi ipsum, bibendum sed felis vel, viverra ultricies orci. ', '2021-03-30 12:57:16', 26, 3),
(22, 'Mauris ut massa nulla. Aliquam tincidunt leo eget pharetra venenatis. Sed sodales arcu nec ultrices efficitur. Mauris convallis odio nec enim iaculis, nec venenatis metus hendrerit. Maecenas ut pretium enim. Aenean dolor quam, ultrices nec tincidunt eget, accumsan quis enim. Aliquam sed felis dictum, egestas sem id, auctor diam.', '2021-03-30 12:57:16', 14, 4),
(23, 'Cras sed turpis sit amet nulla fermentum pretium. Sed et vehicula elit, at egestas ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sagittis et nibh eget semper. Nulla consectetur sollicitudin varius. Donec convallis quis mauris nec congue. Integer a urna sodales, consectetur nisl sed, placerat nulla. ', '2021-03-30 12:57:16', 18, 5),
(24, 'Etiam id erat ac diam vestibulum condimentum. Pellentesque sit amet nunc quis diam sodales suscipit. Aliquam non erat gravida, placerat magna quis, fermentum enim. Cras at pharetra turpis. Nulla et efficitur erat. Sed euismod hendrerit molestie. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam commodo placerat orci in vestibulum.\r\n\r\n', '2021-03-30 12:57:16', 24, 7),
(25, 'Nulla vel suscipit arcu. Donec id venenatis mi, sit amet egestas ante. Morbi molestie in tellus nec imperdiet. Sed aliquam neque sed nunc mollis volutpat. Praesent bibendum nec lacus eu ornare. Aliquam vestibulum fermentum dui in imperdiet. Morbi vel condimentum erat. Nullam viverra vitae sapien at posuere. Vestibulum blandit mi massa, sit amet ornare nibh maximus nec. Aliquam sed dui elit. Sed aliquet ante justo, ut posuere arcu tincidunt ac.', '2021-03-30 12:57:16', 8, 8),
(26, 'Cras a nulla erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Donec et augue nec felis lacinia finibus at accumsan augue. Etiam dignissim sed lectus ac venenatis. Vestibulum placerat massa in nulla pellentesque convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec accumsan enim id nisl elementum pellentesque. Etiam ligula urna, sollicitudin nec vestibulum nec, semper ac lacus.', '2021-03-30 12:57:16', 23, 1),
(27, 'Donec non euismod libero. Nam nec tellus erat. Maecenas augue turpis, vehicula vitae libero a, aliquet porta justo. Vestibulum volutpat eleifend lacus, ut tempor sem sodales nec. Suspendisse porta semper tellus, in pharetra libero eleifend at.', '2021-03-30 12:57:16', 21, 3),
(28, 'Etiam in neque fringilla elit suscipit eleifend et eu nisl. Nulla condimentum, dolor quis sagittis sagittis, sem ex gravida felis, vel accumsan ligula lectus at sapien. Etiam turpis ex, mollis suscipit turpis quis, finibus facilisis est. In pellentesque ligula sed dapibus fringilla. Vestibulum ultricies ut lorem nec congue', '2021-03-30 12:57:16', 19, 4),
(29, 'Proin pretium ultrices ex non consequat. Aliquam id iaculis ipsum, quis convallis nisl. Ut pellentesque sem non dictum placerat. Proin ante dui, ullamcorper vitae mauris non, accumsan venenatis odio. Proin fringilla eros id tortor scelerisque faucibus. Aenean auctor id augue vel faucibus. Morbi neque nisi, luctus a lectus nec,', '2021-03-30 12:57:52', 22, 7),
(30, 'Curabitur libero turpis, lobortis eu risus in, tincidunt condimentum augue. Pellentesque at lorem ligula. Quisque arcu diam, lacinia in nulla eget, mollis auctor massa. Curabitur vulputate fringilla massa id efficitur. Praesent volutpat commodo magna et viverra.', '2021-03-30 12:57:52', 27, 8);

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
(5, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue risus sit amet ante dictum iaculis. Proin iaculis volutpat nisl ac tincidunt. Etiam gravida euismod ultricies. Vivamus odio felis, auctor vitae lorem sit amet, lacinia posuere ligula. Integer tincidunt orci quis commodo venenatis. Duis vestibulum id dolor ut tempor. Donec mollis ornare tellus, id auctor neque. Vestibulum mollis pulvinar ullamcorper. Nunc ac sem nulla.', '2021-03-29 09:45:08', '2021-03-30 11:47:08', 1),
(8, 'Proin efficitur', 'Proin efficitur convallis nisi, vel condimentum ligula consequat id. Pellentesque sapien urna, rhoncus sit amet lorem molestie, hendrerit mollis sem. Sed est sem, vehicula at convallis ut, interdum sed ex. Nam et dolor eu nunc mollis fermentum eu ut mauris. Mauris sed aliquam felis, at egestas nisi. Phasellus id urna pharetra, auctor erat eget, porttitor orci. Quisque imperdiet nisi eu dui euismod pretium. Aenean congue aliquam lorem nec mollis. Nulla tincidunt ante consequat purus rhoncus, auctor condimentum eros venenatis. Nam sit amet sapien ut magna ultricies commodo. Suspendisse in tortor nec libero ornare mollis. Aenean quis mauris quis ex blandit cursus. Suspendisse ultrices mauris sit amet finibus lobortis. In ullamcorper ante sed mi tempus eleifend. Phasellus quis arcu cursus, mollis urna sit amet, tristique mi. Proin ac interdum orci, eu dignissim dui.', '2021-03-29 10:18:38', '2021-03-29 10:23:04', 3),
(13, 'Maecenas', 'Maecenas auctor diam sed neque fermentum placerat. Nullam gravida mi et purus accumsan, vitae semper eros tempus. Praesent mauris nibh, volutpat sed justo non, convallis ultricies lorem. Aliquam pharetra ut magna et euismod. Nunc vel diam non leo sollicitudin finibus. Sed faucibus purus eget augue venenatis, id faucibus sapien dapibus. Sed at elit ligula. Praesent ligula diam, ultricies at placerat sit amet, euismod ut magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam finibus arcu pharetra odio posuere eleifend. Proin rhoncus auctor mi non pretium. Nunc quis dictum leo, non vulputate mauris. In eget iaculis enim.', '2021-03-30 12:22:30', '0000-00-00 00:00:00', 1),
(14, 'Pellentesque', 'Pellentesque nec dolor et purus iaculis faucibus nec sed diam. Cras fermentum interdum turpis ut rhoncus. Nam pretium tellus in tellus faucibus, eget consectetur lacus tempor. Mauris fringilla sollicitudin viverra. Quisque eu commodo ex. Pellentesque at nisl mollis, sagittis nulla sit amet, dictum diam. Morbi tempor, ante quis porttitor feugiat, sem orci elementum mauris, id sollicitudin velit ligula molestie elit. Maecenas condimentum diam sed quam malesuada, quis accumsan tellus elementum. In at massa in dui posuere pellentesque sed fringilla eros. Sed fringilla laoreet justo, vitae fringilla dui tristique vel. Curabitur urna nisl, elementum vel eros eget, pulvinar accumsan felis.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 3),
(15, 'Mauris', 'Mauris feugiat, orci et lacinia bibendum, sapien ligula lacinia erat, a viverra lacus nisi ac massa. Nam commodo, magna nec pellentesque finibus, elit felis sagittis nisl, eu accumsan mi orci a eros. Donec dictum ac ex ac sollicitudin. Vivamus est quam, malesuada condimentum ullamcorper at, facilisis ut ipsum. Praesent ullamcorper condimentum lacus, vel aliquam lacus placerat et. Mauris vulputate cursus purus, nec aliquam eros mollis sit amet. Praesent ut nunc vel quam aliquam tincidunt. In porta quis ipsum gravida vehicula. Ut vulputate eget neque eget laoreet. Cras at laoreet ipsum. Integer congue est sodales velit pulvinar, eu tempus justo malesuada. Integer viverra aliquet massa, sit amet dictum sapien condimentum nec.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 4),
(16, 'Cras laoreet ', 'Cras laoreet libero eu iaculis aliquet. Aliquam iaculis ipsum mi, venenatis fringilla elit viverra egestas. Nunc auctor, lectus vel vulputate euismod, nisi mi euismod metus, vitae finibus quam purus ut libero. Pellentesque quis pulvinar lectus. Nunc posuere nisi vitae lectus rutrum malesuada. Sed ac luctus nibh. Curabitur congue, tortor a blandit tempor, lacus ex sollicitudin neque, non dignissim ante tellus in nibh. Phasellus gravida ac tortor eget lacinia. Maecenas pharetra elementum diam, eget ultricies ligula vestibulum consequat. Pellentesque pellentesque id justo non consectetur. Aenean facilisis, mi vitae semper condimentum, nisl sapien consequat ante, eget tristique eros felis eget lectus.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 5),
(17, 'Donec', 'Donec imperdiet rhoncus metus, et ultrices ligula consectetur sed. Pellentesque in enim in mauris placerat malesuada. Proin tristique eros id rhoncus dapibus. Phasellus semper urna dolor. Quisque sed vulputate justo. Sed mi ligula, euismod eu porttitor a, porttitor a erat. Curabitur sagittis a erat id eleifend. Aenean semper vehicula pellentesque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 7),
(18, 'Praesent', 'Praesent posuere sit amet quam et posuere. Duis interdum vulputate neque, at elementum augue vehicula id. Etiam laoreet, risus eget ultricies maximus, purus tortor ornare lorem, auctor commodo quam tortor ut nibh. Aliquam efficitur id nibh non aliquam. Cras pulvinar ac libero sit amet pulvinar. Nunc condimentum pretium nunc et egestas. Ut eget interdum magna.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 8),
(19, 'Ut eu justo vitae quam volutpat mattis', 'Ut eu justo vitae quam volutpat mattis. Nulla dolor sem, dapibus sed convallis vitae, suscipit sit amet leo. Maecenas a lectus egestas, pharetra ex in, sagittis nulla. Morbi ullamcorper lorem sed massa elementum mattis. Proin cursus justo urna, a efficitur purus aliquet at. Proin sit amet diam lacus. Phasellus tempus pretium ullamcorper. Nunc tempor tellus sit amet nisl convallis lacinia. Nulla auctor, erat eu pretium ultricies, sapien tellus mattis lorem, vitae tincidunt mi ex at est. Ut non mollis ipsum, non mattis massa. Integer blandit fringilla magna maximus vulputate. Cras ultricies, lorem sit amet vulputate dapibus, sem nulla rutrum justo, sollicitudin auctor lorem nisl ut augue.\r\n\r\n', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 1),
(20, 'Integer', 'Integer semper, odio sit amet posuere varius, ex libero ultrices nisi, vel egestas ex neque a nisl. Etiam dolor ipsum, volutpat quis sollicitudin eu, viverra in neque. Pellentesque dui libero, consequat ac lacus et, auctor congue massa. Vestibulum convallis imperdiet dui id vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut in efficitur nisi. Cras non sem in purus viverra ultrices. Quisque id mi ornare nisi sagittis iaculis et ac odio.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 3),
(21, 'Sente', 'Vivamus viverra diam at neque aliquam mollis. Nulla facilisis suscipit suscipit. Donec euismod diam id purus elementum molestie. Sed dictum velit erat, et elementum lectus vestibulum sed. Aliquam erat volutpat. Donec et rutrum sapien, ut rutrum massa. Duis ac sapien sed justo facilisis rhoncus eget ut nulla. Curabitur mattis rutrum justo ac ultricies. In gravida ligula nec sem malesuada, ut molestie est commodo. Aliquam non luctus mi.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 4),
(22, 'Vivamus', 'Vivamus facilisis nisl a ante fermentum, a lacinia dolor accumsan. Vestibulum cursus orci ut neque mattis, eu congue lorem placerat. Phasellus vel justo vel mi iaculis dictum vitae sit amet enim. Proin dapibus blandit fringilla. Suspendisse sed egestas quam. Integer nisi arcu, dictum quis risus eget, ullamcorper convallis lacus. Aenean luctus sapien quis sagittis feugiat. Morbi nec blandit elit.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 5),
(23, 'Sed mattis', 'Sed mattis metus nisi, quis volutpat nulla commodo vel. Mauris eget dictum nulla, nec viverra felis. Nam nec justo ipsum. Integer tortor tellus, ullamcorper quis placerat a, lobortis id eros. Nunc urna est, porttitor id nisi sit amet, tincidunt ullamcorper dolor. Sed vitae quam id urna viverra consectetur vestibulum eu elit. Nam pulvinar metus vel magna pulvinar, id ultrices urna tristique. Pellentesque cursus tincidunt nisl non consequat. Morbi congue consectetur nibh, nec congue nisl. Nulla varius ut arcu vel cursus. Aenean eget augue ligula. Nulla vel laoreet diam, ut fringilla eros. Quisque metus dolor, facilisis a sodales quis, faucibus vel libero.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 7),
(24, 'Proin', 'Proin lacus enim, ultricies ac nisl vel, fringilla finibus urna. Maecenas consequat, leo sed rhoncus dignissim, mi tellus auctor tortor, at mattis sapien est et ante. Nam ultricies turpis augue, quis elementum turpis lobortis eu. Nulla tincidunt vitae enim quis vestibulum. Mauris eget tincidunt ex. Proin quam tortor, posuere at erat tincidunt, aliquet tempus libero. Nunc tristique vel risus nec fermentum. Donec convallis egestas mi, a congue enim hendrerit id. Donec sed venenatis ante. Proin tincidunt dui vel lectus volutpat, eu ornare nisl aliquet. Praesent scelerisque finibus fringilla. Morbi rutrum ultricies lacinia. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ut cursus elit. Sed cursus dolor iaculis ligula iaculis interdum. Ut quam tellus, volutpat quis tellus id, rutrum blandit nulla.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 8),
(25, 'Interdum', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam felis diam, hendrerit eu pellentesque at, bibendum ut mauris. Proin vitae elit in ex commodo lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus faucibus eleifend facilisis. Integer consequat a metus laoreet dictum. Aliquam elementum pellentesque ligula non gravida. Ut eu lorem tempus lorem hendrerit porttitor. Vivamus feugiat leo eu erat euismod, sodales rutrum lorem tincidunt. Curabitur nulla sem, ornare at ex a, pharetra molestie lectus. Nam ac nibh et libero molestie dictum. Vivamus feugiat odio ante, ac posuere tellus consequat nec. Praesent id vulputate risus.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 1),
(26, 'Pellentesque', 'Pellentesque in ex sit amet eros pulvinar tincidunt tempus sit amet ante. In porttitor ex id purus scelerisque, imperdiet venenatis est tincidunt. Integer luctus non tellus at faucibus. Quisque commodo sapien sit amet tortor sagittis malesuada. Vivamus vulputate, orci sit amet condimentum ultrices, lacus odio rutrum odio, ac laoreet magna orci a purus. Maecenas nibh lorem, bibendum ut tempor non, pulvinar eget ex. Aliquam quis erat non libero scelerisque hendrerit. Curabitur ultrices, nisi sit amet sodales porta, odio justo viverra velit, et tempor mauris ligula in nisi. Curabitur lacinia nisi ut metus egestas, rhoncus aliquam mi placerat. Aenean id eros lobortis, vestibulum velit vitae, congue erat.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 3),
(27, 'Vivamus', 'Vivamus facilisis nisl a ante fermentum, a lacinia dolor accumsan. Vestibulum cursus orci ut neque mattis, eu congue lorem placerat. Phasellus vel justo vel mi iaculis dictum vitae sit amet enim. Proin dapibus blandit fringilla. Suspendisse sed egestas quam. Integer nisi arcu, dictum quis risus eget, ullamcorper convallis lacus. Aenean luctus sapien quis sagittis feugiat. Morbi nec blandit elit.', '2021-03-30 12:29:09', '0000-00-00 00:00:00', 5);

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
(3, 'Tom Barkley', 'tombarkley@gmail.com', 'b5ea063b9a19f32cc8fd0433eb4f50189a93766b', '1992-06-24'),
(4, 'Emir Džinović', 'admin@nbgteam.com', '', '0000-00-00'),
(5, 'Steve Jobs', 'steve@icloud.com', '', '0000-00-00'),
(7, 'Steven Seagal', 'steven@gmail.com', 'qwerty', '2018-09-18'),
(8, 'John Lenon', 'john@gmail.com', 'asdfg', '1990-03-11');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_comments_foreign_key` FOREIGN KEY (`id`) REFERENCES `comments` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
