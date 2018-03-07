-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 07, 2018 alle 09:29
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
  `modalita_vendita` varchar(20) NOT NULL,
  `dimensione` varchar(20) NOT NULL,
  `formato` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Struttura della tabella `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('b7p6m7qtadiscc3sqbb93a7e59am0bdd', '127.0.0.1', 1520411349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303431313137343b656d61696c7c733a353a226140612e61223b7469706f5f7574656e74657c733a313a2233223b);

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente_testata_ad`
--

CREATE TABLE `cliente_testata_ad` (
  `costo` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `target` varchar(50) NOT NULL,
  `giorni` int(11) NOT NULL,
  `impression` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_testata` int(11) NOT NULL,
  `id_ad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `capitale_sociale` int(11) NOT NULL,
  `direttore` varchar(50) NOT NULL,
  `condirettore` varchar(50) NOT NULL,
  `vicedirettore` varchar(50) NOT NULL,
  `redattore_capo` varchar(50) NOT NULL,
  `issn` int(11) NOT NULL,
  `cartacea` varchar(2) NOT NULL,
  `digitale` varchar(2) NOT NULL,
  `sito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `testata`
--

INSERT INTO `testata` (`id_testata`, `nome`, `paese`, `lingua`, `periodicita`, `genere`, `formato`, `sede`, `proprieta`, `capitale_sociale`, `direttore`, `condirettore`, `vicedirettore`, `redattore_capo`, `issn`, `cartacea`, `digitale`, `sito`) VALUES
(1, 'corriere', 'italia', 'italiana', 'quotidiano', 'Generale', 'boh', 'catania', '', 1, '', '', '', '', 1, '', '', '');

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
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id_utente` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data_registrazione` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_utente` int(11) NOT NULL COMMENT '1=generico; 2=testata; 3=amministratore',
  `id_cliente` int(11) DEFAULT NULL COMMENT 'Se l''utente è una testata il valore sarà null',
  `id_testata` int(11) DEFAULT NULL COMMENT 'Se l''utente è un cliente il valore sarà null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id_utente`, `email`, `password`, `data_registrazione`, `tipo_utente`, `id_cliente`, `id_testata`) VALUES
(1, 'b@b.b', '$2y$10$5/5S5mvtidJonuVR.RIyrOv8uYd2KuFqLbB7tL7Vh7nZPSVWPFllC', '0000-00-00 00:00:00', 1, NULL, NULL),
(3, 'a@a.a', '$2y$10$5QTx4.z22IO8o3.D2vjzYu5XxDDDx7kFV/FU64Ho8td1TVxwYDy.u', '0000-00-00 00:00:00', 3, NULL, NULL);

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
-- Indici per le tabelle `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indici per le tabelle `testata`
--
ALTER TABLE `testata`
  ADD PRIMARY KEY (`id_testata`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id_utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `analytic`
--
ALTER TABLE `analytic`
  MODIFY `id_analytic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `testata`
--
ALTER TABLE `testata`
  MODIFY `id_testata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id_utente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
