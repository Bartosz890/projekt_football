-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220629.14f90d77f8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Lip 2022, 00:42
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `samoloty_dodatkowe`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mecze`
--

CREATE TABLE `mecze` (
  `id` int(11) NOT NULL,
  `id_zespolu_1` int(3) NOT NULL,
  `id_zespolu_2` int(3) NOT NULL,
  `wynik` varchar(5) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `dzien` int(2) DEFAULT NULL,
  `miesiac` int(2) DEFAULT NULL,
  `rok` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `mecze`
--

INSERT INTO `mecze` (`id`, `id_zespolu_1`, `id_zespolu_2`, `wynik`, `dzien`, `miesiac`, `rok`) VALUES
(1, 2, 1, '2:1', 15, 6, 2022),
(2, 3, 4, '4:1', 16, 6, 2022),
(3, 5, 6, '0:0', 16, 6, 2022),
(4, 7, 8, '1:2', 17, 6, 2022),
(5, 9, 10, '1:1', 17, 6, 2022),
(6, 11, 12, '0:1', 20, 6, 2022),
(7, 14, 13, '0:1', 20, 6, 2022),
(8, 15, 16, '3:0', 22, 6, 2022),
(9, 17, 18, '2:0', 23, 6, 2022),
(10, 19, 20, '2:2', 24, 6, 2022);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odloty`
--

CREATE TABLE `odloty` (
  `id` int(11) NOT NULL,
  `nr_lotu` varchar(10) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `kierunek` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `dzien` int(2) DEFAULT NULL,
  `miesiac` int(2) DEFAULT NULL,
  `rok` int(4) DEFAULT NULL,
  `czas_lotu` varchar(10) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `odloty`
--

INSERT INTO `odloty` (`id`, `nr_lotu`, `kierunek`, `dzien`, `miesiac`, `rok`, `czas_lotu`) VALUES
(1, 'XL830285', 'Barcelona', 20, 6, 2022, '3:30:00'),
(2, 'XL43905249', 'Barcelona', 15, 6, 2022, '3:20:00'),
(3, 'XL4305693', 'Valencia', 17, 6, 2022, '3:40:00'),
(4, 'XL58936889', 'Madrid', 20, 6, 2022, '3:50:00'),
(5, 'XL4927493', 'Madrid', 19, 6, 2022, '3:45:00'),
(6, 'XL4935837', 'Vigo', 17, 6, 2022, '3:30:00'),
(7, 'XL958305', 'Eibar', 16, 6, 2022, '3:30:00'),
(8, 'XL830435', 'Barcelona', 20, 6, 2022, '3:30:00'),
(9, 'XL8340285', 'Barcelona', 21, 6, 2022, '3:30:00'),
(10, 'XL43432423', 'Barcelona', 22, 6, 2022, '3:30:00'),
(11, 'XL8543285', 'Getafe', 16, 6, 2022, '3:30:00'),
(12, 'XL6754562', 'Valencia', 20, 6, 2022, '3:30:00'),
(13, 'XL672462', 'Valencia', 19, 6, 2022, '3:23:00'),
(14, 'XL66462', 'Sevilla', 19, 6, 2022, '3:23:00'),
(15, 'XL672462', 'Valencia', 19, 6, 2022, '3:23:00'),
(16, 'XL675462', 'Valencia', 22, 6, 2022, '3:23:00'),
(17, 'XL678762', 'Sevilla', 22, 6, 2022, '3:23:00'),
(18, 'XL907948', 'Sevilla', 16, 6, 2022, '3:23:00'),
(19, 'XL49434337', 'Vigo', 16, 6, 2022, '3:30:00'),
(20, 'XL959875', 'Eibar', 18, 6, 2022, '3:30:00'),
(21, 'XL58936189', 'Madrid', 22, 6, 2022, '3:40:00'),
(22, 'XL8543285', 'Getafe', 24, 6, 2022, '3:30:00'),
(23, 'XL0156485', 'Paris', 16, 6, 2022, '1:30:00'),
(24, 'XL85643285', 'Palermo', 16, 6, 2022, '2:30:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `team_football`
--

CREATE TABLE `team_football` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `points` smallint(11) DEFAULT NULL,
  `venue_stadion` varchar(30) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(30) DEFAULT 'Spain - Hiszpania',
  `img_shield` varchar(40) DEFAULT './img/img01A.jpg',
  `img2` varchar(30) DEFAULT './img/img01B.jpg',
  `img_city` varchar(30) DEFAULT './img/img01C.jpg',
  `descript` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `team_football`
--

INSERT INTO `team_football` (`id`, `name`, `points`, `venue_stadion`, `city`, `country`, `img_shield`, `img2`, `img_city`, `descript`) VALUES
(1, 'Athletic Club', 62, '4', 'Bilbao', 'Spain - Hiszpania', './img/imgA01AtlBilb117y117.png', '../img/img/1.png', './imgBarcel/01.jpg', NULL),
(2, 'Atlético de Madrid', 88, '2', 'Madrid', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/2.png', './imgBarcel/02.jpg', NULL),
(3, 'FC Barcelona', 91, '3', 'Barcelona', 'Spain - Hiszpania', './img/imgA03FcBarcel117y117.png', '../img/img/3.png', './imgBarcel/03.jpg', NULL),
(4, 'Real Betis Balompié', 45, '5', 'Sevilla', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/4.png', './imgBarcel/04.jpg', NULL),
(5, 'RC Celta de Vigo', 60, '6', 'Vigo', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/5.png', './imgBarcel/05.jpg', NULL),
(6, 'RC Deportivo de La Coruña', 42, '7', ' A Coruna', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/6.png', './imgBarcel/02.jpg', NULL),
(7, 'SD Éibar', 43, '8', 'Eibar', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/7.png', './imgBarcel/06.jpg', NULL),
(8, 'RCD Espanyol de Barcelona', 43, '9', 'Barcelona', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/8.png', './imgBarcel/07.jpg', NULL),
(9, 'Getafe CF', 36, '10', 'Getafe', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/9.png', './imgBarcel/03.jpg', NULL),
(10, 'Granada CF', 39, '11', 'Grenada', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/10.png', './imgBarcel/01.jpg', NULL),
(11, 'UD Las Palmas', 44, '12', 'Las Palmas', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/11.png', './imgBarcel/05.jpg', NULL),
(12, 'Levante UD', 32, '13', 'Levante', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/12.png', './imgBarcel/07.jpg', NULL),
(13, 'Málaga CF', 48, '14', 'Malaga', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/13.png', './imgBarcel/06.jpg', NULL),
(14, 'Rayo Vallecano de Madrid', 38, '15', 'Madrid', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/14.png', './imgBarcel/04.jpg', NULL),
(15, 'Real Madrid CF', 90, '1', 'Madrid', 'Spain - Hiszpania', './img/imgA15RealMadr90y120.png', '../img/img/15.png', './imgBarcel/02.jpg', NULL),
(16, 'Real Sociedad de Fútbol', 48, '16', 'San Sebastian', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/16.png', './imgBarcel/01.jpg', NULL),
(17, 'Sevilla FC', 52, '17', 'Sevilla', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/17.png', './imgBarcel/04.jpg', NULL),
(18, 'Real Sporting de Gijón', 39, '18', 'Gijon', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/18.png', './imgBarcel/05.jpg', NULL),
(19, 'Valencia CF', 44, '19', 'Valencia', 'Spain - Hiszpania', './img/imgA01.jpg', '../img/img/19.png', './imgBarcel/03.jpg', NULL),
(20, 'Villarreal CF', 64, '20', 'Villarreal', 'Spain - Hiszpania', './img/imgA20VilaReal117y117.png', '../img/img/20.png', './imgBarcel/02.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `username`) VALUES
(1, 'user@ex.com', '1', 'user'),
(2, 'user2@ex.com', '1', 'user2'),
(3, 'user3@ex.com', '1', 'user3'),
(4, 'user5@ex.com', '1', 'user5');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mecze`
--
ALTER TABLE `mecze`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `team_football`
--
ALTER TABLE `team_football`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `mecze`
--
ALTER TABLE `mecze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `team_football`
--
ALTER TABLE `team_football`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



