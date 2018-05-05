-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 05 mei 2018 om 17:04
-- Serverversie: 10.1.26-MariaDB
-- PHP-versie: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_login`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `finances`
--

CREATE TABLE `finances` (
  `id` int(11) NOT NULL,
  `a_value` varchar(200) NOT NULL,
  `a_type` varchar(200) NOT NULL,
  `a_amount` varchar(200) NOT NULL,
  `a_tofrom` varchar(120) NOT NULL,
  `a_date` date NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `finances`
--

INSERT INTO `finances` (`id`, `a_value`, `a_type`, `a_amount`, `a_tofrom`, `a_date`, `userID`) VALUES
(50, 'Albert heijn', 'Spend', 'â‚¬150', 'To', '2018-04-03', 44),
(51, '123', 'Spend', 'â‚¬12', 'To', '2018-04-10', 46),
(52, 'Jumbo', 'Spend', 'â‚¬20', 'To', '1200-01-01', 45);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `finances`
--
ALTER TABLE `finances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
