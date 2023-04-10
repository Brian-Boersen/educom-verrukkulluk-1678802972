-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 04:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verrukkulluk`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `naam` tinytext NOT NULL,
  `afbeelding` varchar(1000) DEFAULT NULL,
  `omschrijving` text NOT NULL,
  `prijs` float NOT NULL,
  `verpaking` float NOT NULL,
  `eenheid` char(10) NOT NULL,
  `calorieen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `naam`, `afbeelding`, `omschrijving`, `prijs`, `verpaking`, `eenheid`, `calorieen`) VALUES
(1, 'vegan burger bun', 'https://static.ah.nl/dam/product/AHI_43545239383338333433?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.3, 6, 'stuk(s)', 600),
(2, 'vegan burger', 'https://static.ah.nl/dam/product/AHI_43545239363533393630?revLabel=16&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 4.2, 320, 'gr', 600),
(3, 'vegan burger sauce', 'https://static.ah.nl/dam/product/AHI_43545239383133353530?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 3.4, 300, 'ml', 600),
(4, 'advocado', 'https://static.ah.nl/dam/product/AHI_434d50323436393539?revLabel=5&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2, 1, 'stuk(s)', 200),
(5, 'shushi rijst', 'https://static.ah.nl/dam/product/AHI_43545239353536333133?revLabel=3&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5, 300, 'gr', 340),
(6, 'zeewier vellen', 'https://static.ah.nl/dam/product/AHI_43545239353537323139?revLabel=4&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5.3, 10, 'stuk(s)', 100),
(7, 'zalm', 'https://static.ah.nl/dam/product/AHI_43545239373235393332?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 6.96, 500, 'gr', 1000),
(8, 'komkommer', 'https://static.ah.nl/dam/product/AHI_43545239393130333237?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.3, 1, 'stuk(s)', 4),
(9, 'pizza bodem', 'https://static.ah.nl/dam/product/AHI_43545239383232373930?revLabel=7&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 1.4, 1, 'stuk(s)', 200),
(10, 'champion', 'https://static.ah.nl/dam/product/AHI_43545239373335353931?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.2, 200, 'gr', 123),
(11, 'pizza sauce', 'https://static.ah.nl/dam/product/AHI_43545239373737353437?revLabel=3&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.22, 500, 'ml', 433),
(12, 'blok jong belegen kaas', 'https://static.ah.nl/dam/product/AHI_43545239363935393532?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5.95, 500, 'gr', 546),
(13, 'boter', 'https://static.ah.nl/dam/product/AHI_43545239393331333833?revLabel=1&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 1.95, 300, 'ml', 403),
(14, 'vloer brood', 'https://static.ah.nl/dam/product/AHI_43545239373136383733?revLabel=2&rendition=800x800_JPG_Q90&fileType=binary', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.34, 10, 'stuk(s)', 654);

-- --------------------------------------------------------

--
-- Table structure for table `gerecht`
--

CREATE TABLE `gerecht` (
  `id` int(11) NOT NULL,
  `keuken_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datum_toegevoegd` date NOT NULL,
  `titel` char(255) NOT NULL,
  `korte_omschrijving` tinytext NOT NULL,
  `lange_omschrijving` varchar(1000) NOT NULL,
  `afbeelding` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gerecht`
--

INSERT INTO `gerecht` (`id`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(1, 1, 9, 1, '2023-03-16', 'Vegan burger', 'lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https://img.freepik.com/free-photo/tasty-healthy-burgers-with-chicken-breast_1220-7107.jpg?w=1060&t=st=1680449456~exp=1680450056~hmac=33fda03fb1b47f648023da530d89cc6c5ad75bc41ec6aeaa830ef4fe17bfcff2'),
(2, 2, 14, 2, '2023-03-16', 'Sushi Rolls', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https://img.freepik.com/free-photo/side-view-sushi-set-with-soy-sauce-chopsticks-wooden-serving-board_176474-3234.jpg?w=1060&t=st=1680449580~exp=1680450180~hmac=e5878f3caf3ebc7c85b3f5a80259b1b8f9655359a5c028b4b59ef3d6a2d98b49'),
(3, 6, 10, 5, '2023-03-08', 'Pizza fungi', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https://img.freepik.com/premium-photo/ready-eat-rustic-pizza-with-noble-mushrooms-thyme_681987-4305.jpg?w=1060'),
(4, 3, 10, 4, '2023-02-08', 'tosti met kaas', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https://img.freepik.com/free-photo/close-up-melted-cheese-sandwich_23-2149286864.jpg?w=1060&t=st=1680449955~exp=1680450555~hmac=9d7ac77137d9ef64167c18677e1eba1e9bd66a95445153ed4e6395d00676d534');

-- --------------------------------------------------------

--
-- Table structure for table `gerecht_info`
--

CREATE TABLE `gerecht_info` (
  `id` int(11) NOT NULL,
  `record_type` char(2) NOT NULL,
  `gerecht_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `nummeriek_veld` int(11) DEFAULT NULL,
  `tekst_veld` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gerecht_info`
--

INSERT INTO `gerecht_info` (`id`, `record_type`, `gerecht_id`, `user_id`, `datum`, `nummeriek_veld`, `tekst_veld`) VALUES
(5, 'B', 1, NULL, NULL, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(6, 'B', 1, NULL, NULL, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(7, 'B', 1, NULL, NULL, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(8, 'O', 1, 2, '2023-03-08', NULL, 'lekker hoor!!'),
(9, 'F', 1, 2, NULL, NULL, NULL),
(10, 'F', 1, 5, NULL, NULL, NULL),
(11, 'W', 1, 2, NULL, 5, NULL),
(12, 'W', 1, 5, NULL, 5, NULL),
(13, 'B', 2, NULL, NULL, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(14, 'B', 2, NULL, NULL, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(15, 'B', 2, NULL, NULL, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(16, 'B', 2, NULL, NULL, 4, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(17, 'B', 3, NULL, NULL, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(18, 'B', 3, NULL, NULL, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(19, 'B', 3, NULL, NULL, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(20, 'B', 4, NULL, NULL, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(21, 'B', 4, NULL, NULL, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!'),
(22, 'W', 3, NULL, NULL, 3, NULL),
(23, 'O', 2, 2, '2023-03-08', NULL, 'wel lekker maar simpel'),
(47, 'F', 2, 1, NULL, NULL, NULL),
(48, 'W', 2, 1, NULL, 1, NULL),
(49, 'W', 2, 2, NULL, 2, NULL),
(79, 'W', 4, NULL, NULL, 4, NULL),
(97, 'W', 3, NULL, NULL, 3, NULL),
(98, 'W', 3, NULL, NULL, 2, NULL),
(99, 'W', 3, NULL, NULL, 4, NULL),
(100, 'W', 3, NULL, NULL, 5, NULL),
(101, 'W', 3, NULL, NULL, 4, NULL),
(102, 'W', 3, NULL, NULL, 3, NULL),
(103, 'W', 1, NULL, NULL, 2, NULL),
(104, 'W', 1, NULL, NULL, 3, NULL),
(105, 'W', 1, NULL, NULL, 2, NULL),
(106, 'W', 1, NULL, NULL, 2, NULL),
(107, 'W', 1, NULL, NULL, 3, NULL),
(108, 'W', 1, NULL, NULL, 4, NULL),
(109, 'W', 1, NULL, NULL, 3, NULL),
(110, 'W', 1, NULL, NULL, 4, NULL),
(111, 'W', 1, NULL, NULL, 5, NULL),
(112, 'W', 1, NULL, NULL, 4, NULL),
(113, 'W', 1, NULL, NULL, 3, NULL),
(114, 'W', 2, NULL, NULL, 3, NULL),
(115, 'W', 2, NULL, NULL, 2, NULL),
(116, 'W', 2, NULL, NULL, 3, NULL),
(117, 'W', 1, NULL, NULL, 2, NULL),
(132, 'F', 1, 1, NULL, NULL, NULL),
(133, 'W', 1, NULL, NULL, 4, NULL),
(134, 'W', 1, NULL, NULL, 3, NULL),
(135, 'W', 1, NULL, NULL, 2, NULL),
(136, 'W', 1, NULL, NULL, 3, NULL),
(137, 'W', 1, NULL, NULL, 3, NULL),
(138, 'W', 4, NULL, NULL, 3, NULL),
(139, 'W', 4, NULL, NULL, 2, NULL),
(140, 'W', 4, NULL, NULL, 4, NULL),
(141, 'W', 4, NULL, NULL, 5, NULL),
(142, 'W', 4, NULL, NULL, 4, NULL),
(143, 'W', 4, NULL, NULL, 5, NULL),
(144, 'W', 4, NULL, NULL, 5, NULL),
(145, 'W', 4, NULL, NULL, 5, NULL),
(146, 'W', 1, NULL, NULL, 3, NULL),
(147, 'W', 1, NULL, NULL, 3, NULL),
(148, 'W', 1, NULL, NULL, 4, NULL),
(149, 'W', 1, NULL, NULL, 4, NULL),
(150, 'W', 1, NULL, NULL, 4, NULL),
(151, 'W', 1, NULL, NULL, 4, NULL),
(152, 'W', 1, NULL, NULL, 4, NULL),
(153, 'W', 1, NULL, NULL, 4, NULL),
(154, 'W', 1, NULL, NULL, 4, NULL),
(155, 'W', 1, NULL, NULL, 4, NULL),
(156, 'W', 1, NULL, NULL, 4, NULL),
(157, 'W', 1, NULL, NULL, 4, NULL),
(158, 'W', 1, NULL, NULL, 4, NULL),
(159, 'W', 1, NULL, NULL, 5, NULL),
(160, 'W', 1, NULL, NULL, 5, NULL),
(161, 'W', 1, NULL, NULL, 5, NULL),
(162, 'W', 1, NULL, NULL, 5, NULL),
(163, 'W', 1, NULL, NULL, 5, NULL),
(164, 'W', 1, NULL, NULL, 5, NULL),
(165, 'W', 1, NULL, NULL, 5, NULL),
(166, 'W', 1, NULL, NULL, 5, NULL),
(167, 'W', 1, NULL, NULL, 5, NULL),
(168, 'W', 1, NULL, NULL, 5, NULL),
(169, 'W', 1, NULL, NULL, 5, NULL),
(170, 'W', 1, NULL, NULL, 5, NULL),
(171, 'W', 1, NULL, NULL, 5, NULL),
(172, 'W', 1, NULL, NULL, 5, NULL),
(173, 'W', 1, NULL, NULL, 5, NULL),
(174, 'W', 1, NULL, NULL, 5, NULL),
(175, 'W', 1, NULL, NULL, 5, NULL),
(176, 'W', 1, NULL, NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `gerecht_id` int(11) NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `gerecht_id`, `artikel_id`, `aantal`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 640),
(3, 1, 3, 100),
(4, 1, 4, 2),
(5, 2, 5, 400),
(6, 2, 6, 6),
(7, 2, 7, 200),
(8, 2, 8, 1),
(9, 2, 4, 1),
(10, 3, 9, 2),
(11, 3, 11, 300),
(12, 3, 10, 150),
(13, 3, 12, 130),
(14, 4, 14, 8),
(15, 4, 13, 60),
(16, 4, 12, 100);

-- --------------------------------------------------------

--
-- Table structure for table `keuken_type`
--

CREATE TABLE `keuken_type` (
  `id` int(11) NOT NULL,
  `record_type` char(255) NOT NULL,
  `omschrijving` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keuken_type`
--

INSERT INTO `keuken_type` (`id`, `record_type`, `omschrijving`) VALUES
(1, 'k', 'Amerikaans'),
(2, 'k', 'Japans'),
(3, 'k', 'Nederlands'),
(4, 'k', 'Frans'),
(5, 'k', 'chinees'),
(6, 'k', 'Italiaans'),
(7, 'k', 'Spaans'),
(8, 'k', 'Italiaans'),
(9, 't', 'vegan'),
(10, 't', 'vegatarisch'),
(11, 't', 'kip'),
(12, 't', 'varken'),
(13, 't', 'koe'),
(14, 't', 'vis'),
(15, 't', 'overig');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `afbeelding` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `afbeelding`) VALUES
(1, 'jan', 'pasword123', 'jan@email.com', 'https://randomuser.me/api/portraits/men/33.jpg'),
(2, 'bob', 'pasword1234', 'bob@email.com', 'https://randomuser.me/api/portraits/men/60.jpg'),
(3, 'sam', 'pasword1', 'sam@email.com', 'https://randomuser.me/api/portraits/men/31.jpg'),
(4, 'eric', 'pasword123', 'eric@email.com', 'https://randomuser.me/api/portraits/men/86.jpg'),
(5, 'stan', 'hans123', 'hans@mial.com', 'https://randomuser.me/api/portraits/men/55.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `winkelmand`
--

CREATE TABLE `winkelmand` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `deel_in_gebruik` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winkelmand`
--

INSERT INTO `winkelmand` (`id`, `user_id`, `artikel_id`, `aantal`, `deel_in_gebruik`) VALUES
(161, 1, 1, 2, 1.33333),
(162, 1, 2, 4, 4),
(165, 1, 3, 1, 0.333333),
(166, 1, 4, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gerecht`
--
ALTER TABLE `gerecht`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_fk` (`type_id`),
  ADD KEY `keuken_fk` (`keuken_id`),
  ADD KEY `users_fk` (`user_id`);

--
-- Indexes for table `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gerecht_fk` (`gerecht_id`),
  ADD KEY `user_fk` (`user_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_fk` (`artikel_id`),
  ADD KEY `gerecht_fl` (`gerecht_id`);

--
-- Indexes for table `keuken_type`
--
ALTER TABLE `keuken_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winkelmand`
--
ALTER TABLE `winkelmand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `winkelmand_user_fk` (`user_id`),
  ADD KEY `winkelmand_artikel_fk` (`artikel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gerecht`
--
ALTER TABLE `gerecht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gerecht_info`
--
ALTER TABLE `gerecht_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `keuken_type`
--
ALTER TABLE `keuken_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `winkelmand`
--
ALTER TABLE `winkelmand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gerecht`
--
ALTER TABLE `gerecht`
  ADD CONSTRAINT `keuken_fk` FOREIGN KEY (`keuken_id`) REFERENCES `keuken_type` (`id`),
  ADD CONSTRAINT `type_fk` FOREIGN KEY (`type_id`) REFERENCES `keuken_type` (`id`),
  ADD CONSTRAINT `users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD CONSTRAINT `gerecht_fk` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`id`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `artikel_fk` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`),
  ADD CONSTRAINT `gerecht_fl` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`id`);

--
-- Constraints for table `winkelmand`
--
ALTER TABLE `winkelmand`
  ADD CONSTRAINT `winkelmand_artikel_fk` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `winkelmand_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
