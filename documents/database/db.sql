-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 08:29 PM
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
  `omschrijving` text NOT NULL,
  `prijs` float NOT NULL,
  `verpaking` float NOT NULL,
  `eenheid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `naam`, `omschrijving`, `prijs`, `verpaking`, `eenheid`) VALUES
(1, 'vegan burger bun', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.3, 6, 'stuk'),
(2, 'vegan burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 4.2, 320, 'gram'),
(3, 'vegan burger sauce', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 3.4, 300, 'ml'),
(4, 'advocado', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2, 1, 'stuk'),
(5, 'shushi rijst', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5, 1, 'kg'),
(6, 'zeewier vellen', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5.3, 10, 'stuk'),
(7, 'zalm', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 6.96, 500, 'gr'),
(8, 'komkommer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.3, 1, 'stuk'),
(9, 'pizza bodem', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 1.4, 1, 'stuk'),
(10, 'champion', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.2, 200, 'gr'),
(11, 'pizza sauce', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.22, 500, 'ml'),
(12, 'blok jong belegen kaas', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 5.95, 500, 'gr'),
(13, 'boter', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 195, 300, 'ml'),
(14, 'vloer brood', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, officiis quo. Id perspiciatis exercitationem reprehenderit, eos voluptatum dolores? Ex non repudiandae officiis laborum quis, rerum vero sint sapiente dolor consequatur.', 2.34, 10, 'stuk');

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
  `lange_omschrijving` text NOT NULL,
  `afbeelding` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gerecht`
--

INSERT INTO `gerecht` (`id`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(1, 1, 1, 1, '2023-03-16', 'vegan burger', 'lorem ipsum dolor sit amet', 'lorem ipsum dolor sit amet', 'https'),
(2, 2, 14, 2, '2023-03-16', 'Sushi Rolls', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https'),
(3, 6, 10, 5, '2023-03-08', 'pizza fungi', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https'),
(4, 3, 10, 4, '2023-02-08', 'Broodje met kaas', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi atque explicabo repellat ipsam qui iure dolorem nemo temporibus quos nostrum voluptatem corporis maxime, optio vero deserunt fugiat eos aliquam consequatur!', 'https');

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
(23, 'O', 2, 2, '2023-03-08', NULL, 'wel lekker maar simpel');

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
(1, 'jan', 'pasword123', 'jan@email.com', NULL),
(2, 'bob', 'pasword1234', 'bob@email.com', NULL),
(3, 'sam', 'pasword1', 'sam@email.com', NULL),
(4, 'eric', 'pasword123', 'eric@email.com', NULL),
(5, 'hans', 'hans123', 'hans@mial.com', 'http');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
