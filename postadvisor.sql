-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 09, 2018 alle 12:32
-- Versione del server: 5.7.17
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postadvisor`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ad`
--

CREATE TABLE `ad` (
  `id_ad` int(11) NOT NULL,
  `modalita_vendita` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dimensione` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `formato` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ad`
--

INSERT INTO `ad` (`id_ad`, `modalita_vendita`, `dimensione`, `formato`) VALUES
(1, 'asdf', 'fdefs', 'sdfd'),
(3, 'cc', 'fgfd', 'dgdsfg');

-- --------------------------------------------------------

--
-- Struttura della tabella `analytic`
--

CREATE TABLE `analytic` (
  `id_analytic` int(11) NOT NULL,
  `page_view` int(11) NOT NULL,
  `alexa_rank` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_testata` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `azienda`
--

CREATE TABLE `azienda` (
  `id_azienda` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `url` text NOT NULL,
  `logo` text NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `azienda`
--

INSERT INTO `azienda` (`id_azienda`, `nome`, `url`, `logo`, `userId`) VALUES
(1, 'Amazon', '', 'assets/img/amazon_logo.jpg', 1),
(2, 'Nike', '', 'assets/img/nike_logo.jpg', 2),
(3, 'Playboy', '', 'assets/img/playboy_logo.jpg', 3),
(4, 'Facebook', '', 'assets/img/facebook_logo.png', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `comune`
--

CREATE TABLE `comune` (
  `id_comune` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `provincia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `influencer`
--

CREATE TABLE `influencer` (
  `id_influencer` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 08:50:37'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 11:12:52'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 11:15:07'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 12:32:20'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 14:23:46'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 15:01:01'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-08 18:15:29'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-09 08:54:14'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"Christian Gritto\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-09 10:50:24'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"Amministratore\",\"name\":\"Christian Gritto\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-09 11:42:41'),
(11, 9, '{\"role\":\"5\",\"roleText\":\"Influencer\",\"name\":null}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-09 11:42:53'),
(12, 11, '{\"role\":\"5\",\"roleText\":\"Influencer\",\"name\":\"Germano Ticini\"}', '127.0.0.1', 'Chrome 64.0.3282.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'Windows 10', '2018-03-09 12:00:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Amministratore'),
(2, 'Moderatore'),
(3, 'Testata'),
(4, 'Azienda'),
(5, 'Influencer');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'display name of the user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'Christian Gritto', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 1, '2018-03-08 11:13:28'),
(9, 'a@a.a', '$2y$10$2fzCQuByy8IC2S9ShUxoh.hRZJ/pNVBF3aEPqbvzfTz.GNcdrIyuW', NULL, NULL, 5, 0, 0, '2018-03-09 11:41:05', NULL, NULL),
(10, 'b@b.b', '$2y$10$U68xIgnKTwiMhPhPyAD71exHrjWHQ8GNgCy04t2qm07dN4X9sfv5a', NULL, NULL, 4, 0, 0, '2018-03-09 11:42:18', NULL, NULL),
(11, 'c@c.c', '$2y$10$UjVK5wzZ6sv9m1DJnr57LOc19mbSvWPgm2JG8quHoDBS5YWkzVrFS', 'Germano Ticini', NULL, 5, 0, 0, '2018-03-09 11:50:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `testata`
--

CREATE TABLE `testata` (
  `id_testata` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `paese` varchar(50) NOT NULL,
  `lingua` varchar(20) NOT NULL,
  `periodicita` varchar(50) NOT NULL,
  `genere` varchar(20) NOT NULL,
  `formato` varchar(20) NOT NULL,
  `sede` varchar(50) NOT NULL,
  `proprieta` varchar(100) NOT NULL,
  `capitale_sociale` int(11) DEFAULT NULL,
  `direttore` varchar(50) NOT NULL,
  `condirettore` varchar(50) NOT NULL,
  `vicedirettore` varchar(50) NOT NULL,
  `redattore_capo` varchar(50) NOT NULL,
  `issn` int(11) DEFAULT NULL,
  `cartacea` varchar(2) NOT NULL,
  `digitale` varchar(2) NOT NULL,
  `sito` varchar(100) NOT NULL,
  `logo` text NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `testata`
--

INSERT INTO `testata` (`id_testata`, `nome`, `paese`, `lingua`, `periodicita`, `genere`, `formato`, `sede`, `proprieta`, `capitale_sociale`, `direttore`, `condirettore`, `vicedirettore`, `redattore_capo`, `issn`, `cartacea`, `digitale`, `sito`, `logo`, `userId`) VALUES
(2, 'Ansa', '', '', '', '', '', '', '', 1, '', '', '', '', 1, '', '', '', 'assets/img/ansa_logo.png', 1),
(3, 'Corriere', '', '', '', '', '', '', '', 1, '', '', '', '', 1, '', '', '', 'assets/img/corriere_logo.jpg', 2),
(4, 'Macitynet', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', 'assets/img/macitynet_logo.png', 3),
(5, 'New York Times', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', 'assets/img/newyorktimes_logo.jpg', 4),
(6, 'Palermotoday', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', 'assets/img/palermotoday_logo.png', 5),
(7, 'Tuttoandroid', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', 'assets/img/tuttoandroid_logo.png', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `testata_ad`
--

CREATE TABLE `testata_ad` (
  `costo_giornaliero` int(11) NOT NULL,
  `costo_per_impression` int(11) NOT NULL,
  `percventuale_massima_sconto` int(11) NOT NULL,
  `id_testata` int(11) NOT NULL,
  `id_ad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `testata_comune`
--

CREATE TABLE `testata_comune` (
  `copertura` text NOT NULL,
  `id_testata` int(11) NOT NULL,
  `id_comune` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `users_testata_ad`
--

CREATE TABLE `users_testata_ad` (
  `costo` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `target` varchar(50) NOT NULL,
  `giorni` int(11) NOT NULL,
  `impression` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `id_testata` int(11) NOT NULL,
  `id_ad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indici per le tabelle `analytic`
--
ALTER TABLE `analytic`
  ADD PRIMARY KEY (`id_analytic`);

--
-- Indici per le tabelle `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`id_azienda`);

--
-- Indici per le tabelle `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indici per le tabelle `influencer`
--
ALTER TABLE `influencer`
  ADD PRIMARY KEY (`id_influencer`);

--
-- Indici per le tabelle `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indici per le tabelle `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `testata`
--
ALTER TABLE `testata`
  ADD PRIMARY KEY (`id_testata`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ad`
--
ALTER TABLE `ad`
  MODIFY `id_ad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `analytic`
--
ALTER TABLE `analytic`
  MODIFY `id_analytic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `id_azienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `influencer`
--
ALTER TABLE `influencer`
  MODIFY `id_influencer` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT per la tabella `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT per la tabella `testata`
--
ALTER TABLE `testata`
  MODIFY `id_testata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
