-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 13, 2018 alle 11:26
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
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `id_articoli` int(11) NOT NULL,
  `autore` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `contenuto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `titolo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`id_articoli`, `autore`, `data`, `contenuto`, `titolo`, `excerpt`) VALUES
(1, 'Christian', '2018-02-07', '&lt;p&gt;Questo &amp;egrave; il &lt;em&gt;corpo&lt;/em&gt; dell&amp;nbsp;&lt;strong&gt;articolo&lt;/strong&gt;&lt;strong&gt; 1&lt;/strong&gt;&lt;/p&gt;\r\n', 'Articolo 1', 'Excerpt articolo 1');

-- --------------------------------------------------------

--
-- Struttura della tabella `aziende`
--

CREATE TABLE `aziende` (
  `ID` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `aziende`
--

INSERT INTO `aziende` (`ID`, `nome`, `mail`, `logo`) VALUES
(1, 'Amazon', 'amazon@mail.com', 'http://localhost/postadvisor/assets/img/amazon_logo.jpg'),
(2, 'Nike', 'nike@mail.com', 'http://localhost/postadvisor/assets/img/nike_logo.jpg'),
(3, 'Playboy', 'playboy@mail.com', 'http://localhost/postadvisor/assets/img/playboy_logo.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `aziende_posts`
--

CREATE TABLE `aziende_posts` (
  `ID_posts` int(11) NOT NULL,
  `ID_aziende` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `aziende_posts`
--

INSERT INTO `aziende_posts` (`ID_posts`, `ID_aziende`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('6v149ld4r6f0p0u9os1q44rirjmci1t0', '127.0.0.1', 1518438118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383433373938323b),
('vcvjfolq9dtu6jekkihe1enqhb75vttg', '127.0.0.1', 1518448399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383434383336393b656d61696c7c733a353a226140612e61223b7469706f5f7574656e74657c733a313a2233223b),
('m6um1pn1sokcr21gv26e9v8r9s7qgoot', '127.0.0.1', 1518517574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383531373537343b);

-- --------------------------------------------------------

--
-- Struttura della tabella `page_view`
--

CREATE TABLE `page_view` (
  `id_page_view` int(11) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `id_testate` int(11) NOT NULL,
  `page_view` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `postmeta`
--

CREATE TABLE `postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

CREATE TABLE `posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `preventivo`
--

CREATE TABLE `preventivo` (
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `id_testate` int(11) NOT NULL,
  `data_pubblicazione` date NOT NULL,
  `data_fine_pubblicazione` date NOT NULL,
  `prezzo` int(11) NOT NULL,
  `stato` varchar(20) NOT NULL COMMENT 'approvato=2, rifiutato=0, in attesa=3, pubblicato=1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `testate`
--

CREATE TABLE `testate` (
  `id_testate` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `ranking` varchar(20) NOT NULL,
  `tipologia` varchar(20) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `testate`
--

INSERT INTO `testate` (`id_testate`, `nome`, `url`, `ranking`, `tipologia`, `logo`) VALUES
(1, 'Corriere della Sera', 'http://www.corriere.it/', '', '', 'http://localhost/postadvisor/assets/img/corriere_logo.jpg'),
(2, 'Ansa', 'ansa.it', '', '', 'http://localhost/postadvisor/assets/img/ansa_logo.png'),
(3, 'Tuttoandroid', '', '', '', 'http://localhost/postadvisor/assets/img/tuttoandroid_logo.png'),
(4, 'Palermotoday', '', '', '', 'http://localhost/postadvisor/assets/img/palermotoday_logo.png'),
(5, 'Macitynet', '', '', '', 'http://localhost/postadvisor/assets/img/macitynet_logo.png'),
(6, 'New York Times', '', '', '', 'http://localhost/postadvisor/assets/img/newyorktimes_logo.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) NOT NULL COMMENT '1=azienda; 2=testata; 3=standard; 4=amministratore'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `user_type`) VALUES
(3, 'a@a.a', '$2y$10$5QTx4.z22IO8o3.D2vjzYu5XxDDDx7kFV/FU64Ho8td1TVxwYDy.u', '', 'a@a.a', '', '0000-00-00 00:00:00', '', 0, NULL, 3),
(4, 'b@b.b', '$2y$10$Non/5m/fCuAD3P2cSrT0c.d4cYm2dBO2qHokYwh1U667UdBfVLimq', '', 'b@b.b', '', '0000-00-00 00:00:00', '', 0, NULL, 3),
(6, 'c@c.c', '$2y$10$dw7Yjx2GUxVIpApwRrNjFe/jjO4k.r87Cokm7YOSA5BD8QBLNPyf2', '', 'c@c.c', '', '0000-00-00 00:00:00', '', 0, NULL, 1),
(7, 'd@d.d', '$2y$10$MPp3HeFOGDsP0JduGEuxe.0JjZH4gob7FKMdzKIrYIskSzl1FFs4e', '', 'd@d.d', '', '0000-00-00 00:00:00', '', 0, NULL, 1),
(8, 'e@e.e', '$2y$10$a6aR9CqsC.ppzaE.yRI.3OB2y.ZAAc.F1rxib.AmALZp/fE4YjcIm', '', 'e@e.e', '', '2018-02-12 10:47:14', '', 0, NULL, 1),
(9, 'f@f.f', '$2y$10$8uQXxWo4OEoXlXI6YcH6ouMTiIfDPDRQjN/G0ND6Faj7/.NCOWlzy', '', 'f@f.f', '', '2018-02-12 11:09:44', '', 0, NULL, 2),
(10, 'ludovicapagani@gmail.com', '$2y$10$nWghTzbQbIgBiF7TMqCfYOUyMviEbNuNLwGAb.AC.rAyQ6YsYAan.', '', 'ludovicapagani@gmail.com', '', '2018-02-13 11:25:56', '', 0, NULL, 2);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`id_articoli`);

--
-- Indici per le tabelle `aziende`
--
ALTER TABLE `aziende`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indici per le tabelle `page_view`
--
ALTER TABLE `page_view`
  ADD PRIMARY KEY (`id_page_view`);

--
-- Indici per le tabelle `postmeta`
--
ALTER TABLE `postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indici per le tabelle `testate`
--
ALTER TABLE `testate`
  ADD PRIMARY KEY (`id_testate`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `user_email_2` (`user_email`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `id_articoli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `aziende`
--
ALTER TABLE `aziende`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `page_view`
--
ALTER TABLE `page_view`
  MODIFY `id_page_view` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `postmeta`
--
ALTER TABLE `postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `testate`
--
ALTER TABLE `testate`
  MODIFY `id_testate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
