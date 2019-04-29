-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 03:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dolibarr`
--

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_account`
--

CREATE TABLE `llx_accounting_account` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_pcg_version` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pcg_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pcg_subtype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `account_parent` int(11) DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_accounting_category` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_bookkeeping`
--

CREATE TABLE `llx_accounting_bookkeeping` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `doc_ref` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `thirdparty_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subledger_account` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subledger_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label_compte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label_operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` double(24,8) NOT NULL,
  `credit` double(24,8) NOT NULL,
  `montant` double(24,8) NOT NULL,
  `sens` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_amount` double(24,8) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lettering_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_lettering` datetime DEFAULT NULL,
  `date_lim_reglement` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user` int(11) DEFAULT NULL,
  `code_journal` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `journal_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `validated` tinyint(4) NOT NULL DEFAULT '0',
  `date_validated` datetime DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_bookkeeping_tmp`
--

CREATE TABLE `llx_accounting_bookkeeping_tmp` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `doc_ref` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `thirdparty_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subledger_account` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subledger_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_compte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label_operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` double(24,8) NOT NULL,
  `credit` double(24,8) NOT NULL,
  `montant` double(24,8) NOT NULL,
  `sens` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_amount` double(24,8) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lettering_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_lettering` datetime DEFAULT NULL,
  `date_lim_reglement` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user` int(11) DEFAULT NULL,
  `code_journal` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `journal_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `validated` tinyint(4) NOT NULL DEFAULT '0',
  `date_validated` datetime DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_fiscalyear`
--

CREATE TABLE `llx_accounting_fiscalyear` (
  `rowid` int(11) NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_journal`
--

CREATE TABLE `llx_accounting_journal` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `nature` smallint(6) NOT NULL DEFAULT '1',
  `active` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_accounting_journal`
--

INSERT INTO `llx_accounting_journal` (`rowid`, `entity`, `code`, `label`, `nature`, `active`) VALUES
(1, 1, 'VT', 'ACCOUNTING_SELL_JOURNAL', 2, 1),
(2, 1, 'AC', 'ACCOUNTING_PURCHASE_JOURNAL', 3, 1),
(3, 1, 'BQ', 'FinanceJournal', 4, 1),
(4, 1, 'OD', 'ACCOUNTING_MISCELLANEOUS_JOURNAL', 1, 1),
(5, 1, 'AN', 'ACCOUNTING_HAS_NEW_JOURNAL', 9, 1),
(6, 1, 'ER', 'ExpenseReportsJournal', 5, 1),
(7, 1, 'INV', 'InventoryJournal', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_system`
--

CREATE TABLE `llx_accounting_system` (
  `rowid` int(11) NOT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `pcg_version` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `active` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_accounting_system`
--

INSERT INTO `llx_accounting_system` (`rowid`, `fk_country`, `pcg_version`, `label`, `active`) VALUES
(1, 1, 'PCG99-ABREGE', 'The simple accountancy french plan', 1),
(2, 1, 'PCG99-BASE', 'The base accountancy french plan', 1),
(3, 1, 'PCG14-DEV', 'The developed accountancy french plan 2014', 1),
(4, 2, 'PCMN-BASE', 'The base accountancy belgium plan', 1),
(5, 4, 'PCG08-PYME', 'The PYME accountancy spanish plan', 1),
(6, 5, 'SKR03', 'Standardkontenrahmen SKR 03', 1),
(7, 5, 'SKR04', 'Standardkontenrahmen SKR 04', 1),
(8, 6, 'PCG_SUISSE', 'Switzerland plan', 1),
(9, 7, 'ENG-BASE', 'England plan', 1),
(10, 10, 'PCT', 'The Tunisia plan', 1),
(11, 67, 'PC-MIPYME', 'The PYME accountancy Chile plan', 1),
(12, 80, 'DK-STD', 'Standardkontoplan fra SKAT', 1),
(13, 140, 'PCN-LUXEMBURG', 'Plan comptable normalisé Luxembourgeois', 1),
(14, 12, 'PCG', 'The Moroccan chart of accounts', 1),
(15, 49, 'SYSCOHADA-BJ', 'Plan comptable Ouest-Africain', 1),
(16, 60, 'SYSCOHADA-BF', 'Plan comptable Ouest-Africain', 1),
(17, 24, 'SYSCOHADA-CM', 'Plan comptable Ouest-Africain', 1),
(18, 65, 'SYSCOHADA-CF', 'Plan comptable Ouest-Africain', 1),
(19, 71, 'SYSCOHADA-KM', 'Plan comptable Ouest-Africain', 1),
(20, 72, 'SYSCOHADA-CG', 'Plan comptable Ouest-Africain', 1),
(21, 21, 'SYSCOHADA-CI', 'Plan comptable Ouest-Africain', 1),
(22, 16, 'SYSCOHADA-GA', 'Plan comptable Ouest-Africain', 1),
(23, 87, 'SYSCOHADA-GQ', 'Plan comptable Ouest-Africain', 1),
(24, 147, 'SYSCOHADA-ML', 'Plan comptable Ouest-Africain', 1),
(25, 168, 'SYSCOHADA-NE', 'Plan comptable Ouest-Africain', 1),
(26, 73, 'SYSCOHADA-CD', 'Plan comptable Ouest-Africain', 1),
(27, 22, 'SYSCOHADA-SN', 'Plan comptable Ouest-Africain', 1),
(28, 66, 'SYSCOHADA-TD', 'Plan comptable Ouest-Africain', 1),
(29, 15, 'SYSCOHADA-TG', 'Plan comptable Ouest-Africain', 1),
(30, 188, 'RO-BASE', 'Plan de conturi romanesc', 1),
(31, 13, 'NSCF', 'Nouveau système comptable financier', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm`
--

CREATE TABLE `llx_actioncomm` (
  `id` int(11) NOT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datep` datetime DEFAULT NULL,
  `datep2` datetime DEFAULT NULL,
  `fk_action` int(11) DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `fk_user_action` int(11) DEFAULT NULL,
  `fk_user_done` int(11) DEFAULT NULL,
  `transparency` int(11) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `fulldayevent` smallint(6) NOT NULL DEFAULT '0',
  `punctual` smallint(6) NOT NULL DEFAULT '1',
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `location` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `durationp` double DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_msgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_tocc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_tobcc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `errors_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurrule` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurdateend` datetime DEFAULT NULL,
  `fk_element` int(11) DEFAULT NULL,
  `elementtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_extrafields`
--

CREATE TABLE `llx_actioncomm_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_reminder`
--

CREATE TABLE `llx_actioncomm_reminder` (
  `rowid` int(11) NOT NULL,
  `dateremind` datetime NOT NULL,
  `typeremind` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fk_user` int(11) NOT NULL,
  `offsetvalue` int(11) NOT NULL,
  `offsetunit` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_resources`
--

CREATE TABLE `llx_actioncomm_resources` (
  `rowid` int(11) NOT NULL,
  `fk_actioncomm` int(11) NOT NULL,
  `element_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_element` int(11) NOT NULL,
  `answer_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `transparency` smallint(6) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent`
--

CREATE TABLE `llx_adherent` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civility` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_crypted` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_adherent_type` int(11) NOT NULL,
  `morphy` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `societe` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `zip` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_perso` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `datefin` datetime DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datevalid` datetime DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `canvas` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_extrafields`
--

CREATE TABLE `llx_adherent_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type`
--

CREATE TABLE `llx_adherent_type` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subscription` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `vote` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `note` text COLLATE utf8_unicode_ci,
  `mail_valid` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type_extrafields`
--

CREATE TABLE `llx_adherent_type_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_advtargetemailing`
--

CREATE TABLE `llx_advtargetemailing` (
  `rowid` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_element` int(11) NOT NULL,
  `type_element` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `filtervalue` text COLLATE utf8_unicode_ci,
  `fk_user_author` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_asset`
--

CREATE TABLE `llx_asset` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_ht` double(24,8) DEFAULT NULL,
  `amount_vat` double(24,8) DEFAULT NULL,
  `fk_asset_type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `note_private` text COLLATE utf8_unicode_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_asset_extrafields`
--

CREATE TABLE `llx_asset_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_asset_type`
--

CREATE TABLE `llx_asset_type` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `accountancy_code_asset` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_depreciation_asset` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_depreciation_expense` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_asset_type_extrafields`
--

CREATE TABLE `llx_asset_type_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank`
--

CREATE TABLE `llx_bank` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datev` date DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_rappro` int(11) DEFAULT NULL,
  `fk_type` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_releve` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_chq` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rappro` tinyint(4) DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `fk_bordereau` int(11) DEFAULT '0',
  `banque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emetteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_account`
--

CREATE TABLE `llx_bank_account` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `bank` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_banque` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban_prefix` varchar(34) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_iban` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_iban` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domiciliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `proprio` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courant` smallint(6) NOT NULL DEFAULT '0',
  `clos` smallint(6) NOT NULL DEFAULT '0',
  `rappro` smallint(6) DEFAULT '1',
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_accountancy_journal` int(11) DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `min_allowed` int(11) DEFAULT '0',
  `min_desired` int(11) DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_account_extrafields`
--

CREATE TABLE `llx_bank_account_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_categ`
--

CREATE TABLE `llx_bank_categ` (
  `rowid` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_class`
--

CREATE TABLE `llx_bank_class` (
  `lineid` int(11) NOT NULL,
  `fk_categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_url`
--

CREATE TABLE `llx_bank_url` (
  `rowid` int(11) NOT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(24) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_blockedlog`
--

CREATE TABLE `llx_blockedlog` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amounts` double(24,8) NOT NULL,
  `element` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `user_fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL,
  `ref_object` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_object` datetime DEFAULT NULL,
  `signature` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `signature_line` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `object_data` text COLLATE utf8_unicode_ci,
  `certified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_blockedlog_authority`
--

CREATE TABLE `llx_blockedlog_authority` (
  `rowid` int(11) NOT NULL,
  `blockchain` longtext COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bookmark`
--

CREATE TABLE `llx_bookmark` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `dateb` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bordereau_cheque`
--

CREATE TABLE `llx_bordereau_cheque` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` datetime NOT NULL,
  `date_bordereau` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL,
  `nbcheque` smallint(6) NOT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes`
--

CREATE TABLE `llx_boxes` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `box_id` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `box_order` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `maxline` int(11) DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_boxes`
--

INSERT INTO `llx_boxes` (`rowid`, `entity`, `box_id`, `position`, `box_order`, `fk_user`, `maxline`, `params`) VALUES
(9, 1, 9, 0, 'B04', 0, NULL, NULL),
(10, 1, 10, 0, 'A03', 0, NULL, NULL),
(11, 1, 11, 0, 'B02', 0, NULL, NULL),
(12, 1, 12, 0, 'A01', 0, NULL, NULL),
(15, 1, 15, 0, '0', 0, NULL, NULL),
(16, 1, 16, 0, '0', 0, NULL, NULL),
(17, 1, 17, 0, '0', 0, NULL, NULL),
(18, 1, 18, 0, '0', 0, NULL, NULL),
(19, 1, 19, 0, '0', 0, NULL, NULL),
(20, 1, 20, 0, '0', 0, NULL, NULL),
(21, 1, 21, 0, '0', 0, NULL, NULL),
(166, 1, 15, 0, 'A01', 1, NULL, NULL),
(167, 1, 20, 0, 'A02', 1, NULL, NULL),
(168, 1, 21, 0, 'A03', 1, NULL, NULL),
(169, 1, 12, 0, 'A04', 1, NULL, NULL),
(170, 1, 11, 0, 'B01', 1, NULL, NULL),
(171, 1, 9, 0, 'B02', 1, NULL, NULL),
(172, 1, 10, 0, 'B03', 1, NULL, NULL),
(173, 1, 16, 0, 'B04', 1, NULL, NULL),
(174, 1, 17, 0, 'B05', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes_def`
--

CREATE TABLE `llx_boxes_def` (
  `rowid` int(11) NOT NULL,
  `file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_boxes_def`
--

INSERT INTO `llx_boxes_def` (`rowid`, `file`, `entity`, `tms`, `note`) VALUES
(9, 'box_lastlogin.php', 1, '2019-04-25 21:19:30', NULL),
(10, 'box_produits.php', 1, '2019-04-25 22:57:36', NULL),
(11, 'box_produits_alerte_stock.php', 1, '2019-04-25 22:57:36', NULL),
(12, 'box_graph_product_distribution.php', 1, '2019-04-25 22:57:36', NULL),
(15, 'box_clients.php', 1, '2019-04-26 21:24:20', NULL),
(16, 'box_prospect.php', 1, '2019-04-26 21:24:20', NULL),
(17, 'box_contacts.php', 1, '2019-04-26 21:24:20', NULL),
(18, 'box_activity.php', 1, '2019-04-26 21:24:20', '(WarningUsingThisBoxSlowDown)'),
(19, 'box_goodcustomers.php', 1, '2019-04-26 21:24:20', '(WarningUsingThisBoxSlowDown)'),
(20, 'box_commandes.php', 1, '2019-04-26 21:38:56', NULL),
(21, 'box_graph_orders_permonth.php', 1, '2019-04-26 21:38:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_budget`
--

CREATE TABLE `llx_budget` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_budget_lines`
--

CREATE TABLE `llx_budget_lines` (
  `rowid` int(11) NOT NULL,
  `fk_budget` int(11) NOT NULL,
  `fk_project_ids` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(24,8) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie`
--

CREATE TABLE `llx_categorie` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `label` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `color` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categories_extrafields`
--

CREATE TABLE `llx_categories_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_account`
--

CREATE TABLE `llx_categorie_account` (
  `fk_categorie` int(11) NOT NULL,
  `fk_account` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_contact`
--

CREATE TABLE `llx_categorie_contact` (
  `fk_categorie` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_fournisseur`
--

CREATE TABLE `llx_categorie_fournisseur` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_lang`
--

CREATE TABLE `llx_categorie_lang` (
  `rowid` int(11) NOT NULL,
  `fk_category` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_member`
--

CREATE TABLE `llx_categorie_member` (
  `fk_categorie` int(11) NOT NULL,
  `fk_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_product`
--

CREATE TABLE `llx_categorie_product` (
  `fk_categorie` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_project`
--

CREATE TABLE `llx_categorie_project` (
  `fk_categorie` int(11) NOT NULL,
  `fk_project` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_societe`
--

CREATE TABLE `llx_categorie_societe` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_user`
--

CREATE TABLE `llx_categorie_user` (
  `fk_categorie` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_chargesociales`
--

CREATE TABLE `llx_chargesociales` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_ech` datetime NOT NULL,
  `libelle` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `periode` date DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_chargesociales`
--

INSERT INTO `llx_chargesociales` (`rowid`, `ref`, `date_ech`, `libelle`, `entity`, `tms`, `date_creation`, `date_valid`, `fk_user_author`, `fk_user_modif`, `fk_user_valid`, `fk_type`, `fk_account`, `fk_mode_reglement`, `amount`, `paye`, `periode`, `fk_projet`, `import_key`) VALUES
(1, NULL, '2019-12-31 00:00:00', 'IVA - 12%', 1, '2019-04-25 23:06:54', '2019-04-26 01:06:54', NULL, 1, NULL, NULL, 4110, NULL, 4, 12.00000000, 0, '2019-12-31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande`
--

CREATE TABLE `llx_commande` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double(24,8) DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facture` tinyint(4) DEFAULT '0',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_commande`
--

INSERT INTO `llx_commande` (`rowid`, `ref`, `entity`, `ref_ext`, `ref_int`, `ref_client`, `fk_soc`, `fk_projet`, `tms`, `date_creation`, `date_valid`, `date_cloture`, `date_commande`, `fk_user_author`, `fk_user_modif`, `fk_user_valid`, `fk_user_cloture`, `source`, `fk_statut`, `amount_ht`, `remise_percent`, `remise_absolue`, `remise`, `tva`, `localtax1`, `localtax2`, `total_ht`, `total_ttc`, `note_private`, `note_public`, `model_pdf`, `last_main_doc`, `facture`, `fk_account`, `fk_currency`, `fk_cond_reglement`, `fk_mode_reglement`, `date_livraison`, `fk_shipping_method`, `fk_warehouse`, `fk_availability`, `fk_input_reason`, `fk_delivery_address`, `fk_incoterms`, `location_incoterms`, `import_key`, `extraparams`, `fk_multicurrency`, `multicurrency_code`, `multicurrency_tx`, `multicurrency_total_ht`, `multicurrency_total_tva`, `multicurrency_total_ttc`) VALUES
(1, '(PROV1)', 1, NULL, NULL, NULL, 1, NULL, '2019-04-25 23:20:04', '2019-04-25 22:45:38', NULL, NULL, '2019-04-25', 1, NULL, NULL, NULL, NULL, 0, 0.00000000, 0, NULL, 0, 11.75000000, 0.00000000, 0.00000000, 185.26000000, 197.01000000, 'hhhhhh', 'ffffff', 'einstein', 'commande/(PROV1)/(PROV1).pdf', 0, NULL, NULL, 4, 4, '2019-04-29', NULL, NULL, 2, 5, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 185.26000000, 11.75000000, 197.01000000),
(2, 'CO1904-0001', 1, NULL, NULL, NULL, 3, NULL, '2019-04-26 19:42:02', '2019-04-26 01:23:53', '2019-04-26 01:27:52', '2019-04-26 21:41:52', '2019-04-25', 2, NULL, 2, 1, NULL, 3, 0.00000000, 0, NULL, 0, 3.84000000, 0.00000000, 0.00000000, 32.00000000, 35.84000000, '', '', 'einstein', 'commande/CO1904-0001/CO1904-0001.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 32.00000000, 3.84000000, 35.84000000),
(3, 'CO1904-0003', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 21:13:15', '2019-04-26 22:49:56', '2019-04-26 23:13:12', NULL, '2019-04-26', 2, NULL, 1, NULL, NULL, 1, 0.00000000, 0, NULL, 0, 19.32000000, 0.00000000, 0.00000000, 161.00000000, 180.32000000, '', '', 'einstein', 'commande/CO1904-0003/CO1904-0003.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 161.00000000, 19.32000000, 180.32000000),
(4, 'CO1904-0002', 1, NULL, NULL, 'rrfrrfr', 4, NULL, '2019-04-26 21:22:40', '2019-04-26 23:08:06', '2019-04-26 23:12:33', NULL, '2019-04-26', 2, NULL, 1, NULL, NULL, -1, 0.00000000, 0, NULL, 0, 3.84000000, 0.00000000, 0.00000000, 32.00000000, 35.84000000, '', '', 'einstein', 'commande/CO1904-0002/CO1904-0002.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 32.00000000, 3.84000000, 35.84000000),
(5, 'CO1904-0004', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 21:19:21', '2019-04-26 23:18:59', '2019-04-26 23:19:16', '2019-04-26 23:19:21', '2019-04-26', 2, NULL, 2, 2, NULL, 3, 0.00000000, 0, NULL, 0, 3.72000000, 0.00000000, 0.00000000, 31.04000000, 34.76000000, '', '', 'einstein', 'commande/CO1904-0004/CO1904-0004.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 31.04000000, 3.72000000, 34.76000000),
(6, '(PROV6)', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 22:44:47', '2019-04-26 23:19:48', NULL, NULL, '2019-04-26', 2, NULL, NULL, NULL, NULL, 0, 0.00000000, 0, NULL, 0, 10.68000000, 0.00000000, 0.00000000, 89.00000000, 99.68000000, '', '', 'einstein', 'commande/(PROV6)/(PROV6).pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 89.00000000, 10.68000000, 99.68000000),
(7, 'CO1904-0005', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 22:08:26', '2019-04-26 23:20:21', '2019-04-26 23:20:30', NULL, '2019-04-26', 2, NULL, 2, NULL, NULL, 0, 0.00000000, 0, NULL, 0, 8.28000000, 0.00000000, 0.00000000, 69.00000000, 77.28000000, '', '', 'einstein', 'commande/CO1904-0005/CO1904-0005.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 69.00000000, 8.28000000, 77.28000000),
(8, 'CO1904-0006', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 21:20:55', '2019-04-26 23:20:39', '2019-04-26 23:20:49', NULL, '2019-04-26', 2, NULL, 2, NULL, NULL, -1, 0.00000000, 0, NULL, 0, 3.84000000, 0.00000000, 0.00000000, 32.00000000, 35.84000000, '', '', 'einstein', 'commande/CO1904-0006/CO1904-0006.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 32.00000000, 3.84000000, 35.84000000),
(9, '(PROV9)', 1, NULL, NULL, NULL, 2, NULL, '2019-04-26 21:43:24', '2019-04-26 23:41:38', NULL, NULL, '2019-04-26', 2, NULL, NULL, NULL, NULL, 0, 0.00000000, 0, NULL, 0, 11.52000000, 0.00000000, 0.00000000, 96.00000000, 107.52000000, '', '', 'einstein', 'commande/(PROV9)/(PROV9).pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 96.00000000, 11.52000000, 107.52000000),
(10, '(PROV10)', 1, NULL, NULL, NULL, 3, NULL, '2019-04-29 13:27:52', '2019-04-29 15:27:29', NULL, NULL, '2019-04-29', 1, NULL, NULL, NULL, NULL, 0, 0.00000000, 0, NULL, 0, 3.00000000, 0.00000000, 0.00000000, 25.00000000, 28.00000000, '', '', 'einstein', 'commande/(PROV10)/(PROV10).pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, 'USD', 1.00000000, 25.00000000, 3.00000000, 28.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet`
--

CREATE TABLE `llx_commandedet` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_commandefourndet` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_commandedet`
--

INSERT INTO `llx_commandedet` (`rowid`, `fk_commande`, `fk_parent_line`, `fk_product`, `label`, `description`, `vat_src_code`, `tva_tx`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `qty`, `remise_percent`, `remise`, `fk_remise_except`, `price`, `subprice`, `total_ht`, `total_tva`, `total_localtax1`, `total_localtax2`, `total_ttc`, `product_type`, `date_start`, `date_end`, `info_bits`, `buy_price_ht`, `fk_product_fournisseur_price`, `special_code`, `rang`, `fk_unit`, `import_key`, `fk_commandefourndet`, `fk_multicurrency`, `multicurrency_code`, `multicurrency_subprice`, `multicurrency_total_ht`, `multicurrency_total_tva`, `multicurrency_total_ttc`) VALUES
(1, 1, NULL, NULL, NULL, 'hola', 'IVA-0', 0.000, 0.000, '0', 0.000, '0', 2, 3, 1.35, NULL, 43.65, 45.00000000, 87.30000000, 0.00000000, 0.00000000, 0.00000000, 87.30000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 45.00000000, 87.30000000, 0.00000000, 87.30000000),
(2, 1, NULL, NULL, NULL, 'EDF', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 3, 3, 0.36, NULL, 11.64, 12.00000000, 34.92000000, 4.19000000, 0.00000000, 0.00000000, 39.11000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 2, NULL, NULL, NULL, NULL, 'USD', 12.00000000, 34.92000000, 4.19000000, 39.11000000),
(3, 1, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 3, 0.96, NULL, 31.04, 32.00000000, 31.04000000, 3.72000000, 0.00000000, 0.00000000, 34.76000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 31.04000000, 3.72000000, 34.76000000),
(4, 1, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 4, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(5, 2, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(6, 3, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(7, 3, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 2, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(8, 3, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(9, 3, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 33, 33.00000000, 33.00000000, 3.96000000, 0.00000000, 0.00000000, 36.96000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 4, NULL, NULL, NULL, NULL, 'USD', 33.00000000, 33.00000000, 3.96000000, 36.96000000),
(10, 3, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 5, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(11, 4, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(14, 5, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 3, 0.96, NULL, 31.04, 32.00000000, 31.04000000, 3.72000000, 0.00000000, 0.00000000, 34.76000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 31.04000000, 3.72000000, 34.76000000),
(15, 6, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(16, 7, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 2, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(17, 8, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(18, 9, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(19, 9, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 2, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(20, 9, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(21, 6, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 2, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(25, 7, NULL, 1, NULL, '222222', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 32, 32.00000000, 32.00000000, 3.84000000, 0.00000000, 0.00000000, 35.84000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3, NULL, NULL, NULL, NULL, 'USD', 32.00000000, 32.00000000, 3.84000000, 35.84000000),
(29, 7, NULL, NULL, NULL, 'rrrrrrr', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 5, 5.00000000, 5.00000000, 0.60000000, 0.00000000, 0.00000000, 5.60000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 5.00000000, 5.00000000, 0.60000000, 5.60000000),
(30, 6, NULL, 2, NULL, '', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 25, 25.00000000, 25.00000000, 3.00000000, 0.00000000, 0.00000000, 28.00000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3, NULL, NULL, NULL, NULL, 'USD', 25.00000000, 25.00000000, 3.00000000, 28.00000000),
(31, 10, NULL, 2, NULL, '', 'IVA-12', 12.000, 0.000, '1', 0.000, '0', 1, 0, 0, NULL, 25, 25.00000000, 25.00000000, 3.00000000, 0.00000000, 0.00000000, 28.00000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 1, NULL, NULL, NULL, NULL, 'USD', 25.00000000, 25.00000000, 3.00000000, 28.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet_extrafields`
--

CREATE TABLE `llx_commandedet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_extrafields`
--

CREATE TABLE `llx_commande_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur`
--

CREATE TABLE `llx_commande_fournisseur` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_supplier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_approve2` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_approve2` int(11) DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `amount_ht` double(24,8) DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_livraison` datetime DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `fk_input_method` int(11) DEFAULT '0',
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseurdet`
--

CREATE TABLE `llx_commande_fournisseurdet` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseurdet_extrafields`
--

CREATE TABLE `llx_commande_fournisseurdet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_dispatch`
--

CREATE TABLE `llx_commande_fournisseur_dispatch` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `fk_commandefourndet` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_extrafields`
--

CREATE TABLE `llx_commande_fournisseur_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_log`
--

CREATE TABLE `llx_commande_fournisseur_log` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelog` datetime NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_statut` smallint(6) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_comment`
--

CREATE TABLE `llx_comment` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_element` int(11) DEFAULT NULL,
  `element_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `import_key` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_const`
--

CREATE TABLE `llx_const` (
  `rowid` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'string',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_const`
--

INSERT INTO `llx_const` (`rowid`, `name`, `entity`, `value`, `type`, `visible`, `note`, `tms`) VALUES
(2, 'MAIN_FEATURES_LEVEL', 0, '0', 'chaine', 1, 'Level of features to show: -1=stable+deprecated, 0=stable only (default), 1=stable+experimental, 2=stable+experimental+development', '2019-04-25 20:25:38'),
(3, 'MAILING_LIMIT_SENDBYWEB', 0, '25', 'chaine', 1, 'Number of targets to defined packet size when sending mass email', '2019-04-25 20:25:38'),
(4, 'MAIN_ENABLE_LOG_TO_HTML', 0, '0', 'chaine', 1, 'If this option is set to 1, it is possible to see log output at end of HTML sources by adding paramater logtohtml=1 on URL. Module log must also be enabled.', '2019-04-25 20:25:38'),
(5, 'MAIN_SECURITY_CSRF_WITH_TOKEN', 0, '0', 'chaine', 1, 'If this option is set to 1, a CSRF protection using an antiCSRF token is added.', '2019-04-25 20:25:38'),
(6, 'SYSLOG_HANDLERS', 0, '[\"mod_syslog_file\"]', 'chaine', 0, 'Which logger to use', '2019-04-25 20:25:38'),
(7, 'SYSLOG_FILE', 0, 'DOL_DATA_ROOT/dolibarr.log', 'chaine', 0, 'Directory where to write log file', '2019-04-25 20:25:38'),
(8, 'SYSLOG_LEVEL', 0, '7', 'chaine', 0, 'Level of debug info to show', '2019-04-25 20:25:38'),
(9, 'MAIN_UPLOAD_DOC', 0, '2048', 'chaine', 0, 'Max size for file upload (0 means no upload allowed)', '2019-04-25 20:25:38'),
(10, 'MAIN_ENABLE_OVERWRITE_TRANSLATION', 1, '1', 'chaine', 0, 'Enable translation overwrite', '2019-04-25 20:25:38'),
(11, 'MAIN_ENABLE_DEFAULT_VALUES', 1, '1', 'chaine', 0, 'Enable default value overwrite', '2019-04-25 20:25:38'),
(13, 'MAIN_MAIL_SMTP_SERVER', 1, '', 'chaine', 0, 'Host or ip address for SMTP server', '2019-04-25 20:25:38'),
(14, 'MAIN_MAIL_SMTP_PORT', 1, '', 'chaine', 0, 'Port for SMTP server', '2019-04-25 20:25:38'),
(15, 'MAIN_MAIL_EMAIL_FROM', 1, 'jorgefprietol@gmail.com', 'chaine', 0, 'EMail emetteur pour les emails automatiques Dolibarr', '2019-04-26 19:55:02'),
(16, 'MAIN_SIZE_LISTE_LIMIT', 0, '25', 'chaine', 0, 'Longueur maximum des listes', '2019-04-25 20:25:38'),
(17, 'MAIN_SIZE_SHORTLIST_LIMIT', 0, '3', 'chaine', 0, 'Longueur maximum des listes courtes (fiche client)', '2019-04-25 20:25:38'),
(18, 'MAIN_MENU_STANDARD', 0, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users', '2019-04-25 20:25:38'),
(19, 'MAIN_MENUFRONT_STANDARD', 0, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users', '2019-04-25 20:25:38'),
(20, 'MAIN_MENU_SMARTPHONE', 0, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users using smartphones', '2019-04-25 20:25:38'),
(21, 'MAIN_MENUFRONT_SMARTPHONE', 0, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users using smartphones', '2019-04-25 20:25:38'),
(22, 'MAIN_DELAY_ACTIONS_TODO', 1, '7', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur actions planifiées non réalisées', '2019-04-25 20:25:38'),
(23, 'MAIN_DELAY_ORDERS_TO_PROCESS', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes clients non traitées', '2019-04-25 20:25:38'),
(24, 'MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS', 1, '7', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées', '2019-04-25 20:25:38'),
(25, 'MAIN_DELAY_PROPALS_TO_CLOSE', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur propales à cloturer', '2019-04-25 20:25:38'),
(26, 'MAIN_DELAY_PROPALS_TO_BILL', 1, '7', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur propales non facturées', '2019-04-25 20:25:38'),
(27, 'MAIN_DELAY_CUSTOMER_BILLS_UNPAYED', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur factures client impayées', '2019-04-25 20:25:38'),
(28, 'MAIN_DELAY_SUPPLIER_BILLS_TO_PAY', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées', '2019-04-25 20:25:38'),
(29, 'MAIN_DELAY_NOT_ACTIVATED_SERVICES', 1, '0', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur services à activer', '2019-04-25 20:25:38'),
(30, 'MAIN_DELAY_RUNNING_SERVICES', 1, '0', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur services expirés', '2019-04-25 20:25:38'),
(31, 'MAIN_DELAY_MEMBERS', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard', '2019-04-25 20:25:38'),
(32, 'MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE', 1, '62', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire', '2019-04-25 20:25:38'),
(33, 'MAIN_DELAY_EXPENSEREPORTS_TO_PAY', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur les notes de frais impayées', '2019-04-25 20:25:38'),
(34, 'MAIN_FIX_FOR_BUGGED_MTA', 1, '1', 'chaine', 1, 'Set constant to fix email ending from PHP with some linux ike system', '2019-04-25 20:25:38'),
(35, 'MAILING_EMAIL_FROM', 1, 'dolibarr@domain.com', 'chaine', 0, 'EMail emmetteur pour les envois d emailings', '2019-04-25 20:25:38'),
(36, 'PRODUCT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/products', 'chaine', 0, NULL, '2019-04-25 20:25:38'),
(37, 'CONTRACT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/contracts', 'chaine', 0, NULL, '2019-04-25 20:25:38'),
(38, 'USERGROUP_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/usergroups', 'chaine', 0, NULL, '2019-04-25 20:25:38'),
(39, 'USER_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/users', 'chaine', 0, NULL, '2019-04-25 20:25:38'),
(41, 'DATABASE_PWD_ENCRYPTED', 1, '1', 'chaine', 0, '', '2019-04-25 20:26:40'),
(42, 'MAIN_SECURITY_SALT', 0, '20190425222640', 'chaine', 0, '', '2019-04-25 20:26:40'),
(43, 'MAIN_SECURITY_HASH_ALGO', 0, 'password_hash', 'chaine', 0, '', '2019-04-25 20:26:40'),
(44, 'MAIN_VERSION_FIRST_INSTALL', 0, '9.0.2', 'chaine', 0, 'Dolibarr version when first install', '2019-04-25 22:39:08'),
(75, 'COMMANDE_ADDON_PDF', 1, 'einstein', 'chaine', 0, 'Name of PDF model of order', '2019-04-25 20:35:38'),
(76, 'COMMANDE_ADDON', 1, 'mod_commande_marbre', 'chaine', 0, 'Name of numbering numerotation rules of order', '2019-04-25 20:35:38'),
(77, 'COMMANDE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/orders', 'chaine', 0, NULL, '2019-04-25 20:35:38'),
(79, 'SOCIETE_CODECLIENT_ADDON', 1, 'mod_codeclient_monkey', 'chaine', 0, 'Module to control third parties codes', '2019-04-25 20:35:39'),
(80, 'SOCIETE_CODECOMPTA_ADDON', 1, 'mod_codecompta_panicum', 'chaine', 0, 'Module to control third parties codes', '2019-04-25 20:35:39'),
(81, 'COMPANY_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/thirdparties', 'chaine', 0, NULL, '2019-04-25 20:35:39'),
(82, 'SOCIETE_ADD_REF_IN_LIST', 1, '0', 'yesno', 0, 'Display customer ref into select list', '2019-04-25 20:35:39'),
(122, 'MAIN_MODULE_USER', 0, '1', 'string', 0, '{\"authorid\":0,\"ip\":\"127.0.0.1\"}', '2019-04-25 21:19:30'),
(124, 'MAIN_VERSION_LAST_INSTALL', 0, '9.0.2', 'chaine', 0, 'Dolibarr version when last install', '2019-04-25 21:19:31'),
(165, 'MAIN_MODULE_PRODUCT', 1, '1', 'string', 0, '{\"authorid\":\"1\",\"ip\":\"127.0.0.1\"}', '2019-04-25 22:57:36'),
(166, 'PRODUCT_CODEPRODUCT_ADDON', 1, 'mod_codeproduct_leopard', 'chaine', 0, 'Module to control product codes', '2019-04-25 22:57:36'),
(167, 'MAIN_MODULE_STOCK', 1, '1', 'string', 0, '{\"authorid\":\"1\",\"ip\":\"127.0.0.1\"}', '2019-04-25 22:57:43'),
(168, 'STOCK_ALLOW_NEGATIVE_TRANSFER', 1, '1', 'chaine', 1, NULL, '2019-04-25 22:57:43'),
(169, 'STOCK_ADDON_PDF', 1, 'Standard', 'chaine', 0, 'Name of PDF model of stock', '2019-04-25 22:57:43'),
(170, 'MOUVEMENT_ADDON_PDF', 1, 'StdMouvement', 'chaine', 0, 'Name of PDF model of stock mouvement', '2019-04-25 22:57:43'),
(171, 'STOCK_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/stocks', 'chaine', 0, NULL, '2019-04-25 22:57:43'),
(172, 'MOUVEMENT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/stocks/mouvements', 'chaine', 0, NULL, '2019-04-25 22:57:43'),
(320, 'MAIN_INFO_ACCOUNTANT_NAME', 1, 'Baterias Ecuador', 'chaine', 0, '', '2019-04-26 15:59:36'),
(321, 'MAIN_INFO_ACCOUNTANT_ADDRESS', 1, 'republica con portugal', 'chaine', 0, '', '2019-04-26 15:59:36'),
(322, 'MAIN_INFO_ACCOUNTANT_TOWN', 1, 'Quito', 'chaine', 0, '', '2019-04-26 15:59:36'),
(323, 'MAIN_INFO_ACCOUNTANT_ZIP', 1, '170203', 'chaine', 0, '', '2019-04-26 15:59:36'),
(324, 'MAIN_INFO_ACCOUNTANT_STATE', 1, '0', 'chaine', 0, '', '2019-04-26 15:59:36'),
(325, 'MAIN_INFO_ACCOUNTANT_COUNTRY', 1, '84', 'chaine', 0, '', '2019-04-26 15:59:36'),
(326, 'MAIN_INFO_ACCOUNTANT_PHONE', 1, '0963210838', 'chaine', 0, '', '2019-04-26 15:59:36'),
(327, 'MAIN_INFO_ACCOUNTANT_MAIL', 1, 'jprieto@pulpo.ec', 'chaine', 0, '', '2019-04-26 15:59:36'),
(328, 'MAIN_INFO_ACCOUNTANT_WEB', 1, 'www.bateriasecuador.com', 'chaine', 0, '', '2019-04-26 15:59:36'),
(797, 'MAIN_INFO_SOCIETE_COUNTRY', 1, '84:EC:Ecuador', 'chaine', 0, '', '2019-04-26 21:07:17'),
(798, 'MAIN_INFO_SOCIETE_NOM', 1, 'Baterias Ecuador', 'chaine', 0, '', '2019-04-26 21:07:17'),
(799, 'MAIN_INFO_SOCIETE_ADDRESS', 1, 'Baterias ecuador', 'chaine', 0, '', '2019-04-26 21:07:17'),
(800, 'MAIN_INFO_SOCIETE_TOWN', 1, 'Quito', 'chaine', 0, '', '2019-04-26 21:07:17'),
(801, 'MAIN_INFO_SOCIETE_ZIP', 1, '170203', 'chaine', 0, '', '2019-04-26 21:07:17'),
(802, 'MAIN_INFO_SOCIETE_STATE', 1, '0', 'chaine', 0, '', '2019-04-26 21:07:17'),
(803, 'MAIN_MONNAIE', 1, 'USD', 'chaine', 0, '', '2019-04-26 21:07:17'),
(804, 'MAIN_INFO_SOCIETE_TEL', 1, '0963210838', 'chaine', 0, '', '2019-04-26 21:07:17'),
(805, 'MAIN_INFO_SOCIETE_MAIL', 1, 'jprieto@pulpo.ec', 'chaine', 0, '', '2019-04-26 21:07:17'),
(806, 'MAIN_INFO_SOCIETE_WEB', 1, 'bateriasecuador.com', 'chaine', 0, '', '2019-04-26 21:07:17'),
(807, 'MAIN_INFO_SOCIETE_NOTE', 1, 'sdfsdf', 'chaine', 0, '', '2019-04-26 21:07:17'),
(808, 'MAIN_INFO_SOCIETE_LOGO', 1, 'logo_192.png', 'chaine', 0, '', '2019-04-26 21:07:17'),
(809, 'MAIN_INFO_SOCIETE_LOGO_SMALL', 1, 'logo_192_small.png', 'chaine', 0, '', '2019-04-26 21:07:17'),
(810, 'MAIN_INFO_SOCIETE_LOGO_MINI', 1, 'logo_192_mini.png', 'chaine', 0, '', '2019-04-26 21:07:17'),
(811, 'MAIN_INFO_SOCIETE_MANAGERS', 1, 'Jorge Prieto', 'chaine', 0, '', '2019-04-26 21:07:17'),
(812, 'MAIN_INFO_SOCIETE_FORME_JURIDIQUE', 1, '0', 'chaine', 0, '', '2019-04-26 21:07:17'),
(813, 'SOCIETE_FISCAL_MONTH_START', 1, '1', 'chaine', 0, '', '2019-04-26 21:07:17'),
(814, 'FACTURE_TVAOPTION', 1, '1', 'chaine', 0, '', '2019-04-26 21:07:17'),
(815, 'FACTURE_LOCAL_TAX1_OPTION', 1, 'localtax1off', 'chaine', 0, '', '2019-04-26 21:07:17'),
(817, 'CONTRACT_ADDON', 1, 'mod_contract_serpis', 'chaine', 0, 'Nom du gestionnaire de numerotation des contrats', '2019-04-26 21:24:19'),
(818, 'CONTRACT_ADDON_PDF', 1, 'strato', 'chaine', 0, 'Name of PDF model of contract', '2019-04-26 21:24:19'),
(819, 'MAIN_MODULE_SOCIETE', 1, '1', 'string', 0, '{\"authorid\":\"1\",\"ip\":\"127.0.0.1\"}', '2019-04-26 21:24:20'),
(820, 'USER_PASSWORD_PATTERN', 1, '8;1;1;1;3;1', 'chaine', 0, '', '2019-04-26 21:25:55'),
(821, 'MAIN_SECURITY_ENABLECAPTCHA', 1, '1', 'chaine', 0, '', '2019-04-26 21:27:30'),
(822, 'MAIN_SESSION_TIMEOUT', 1, '1440', 'chaine', 0, '', '2019-04-26 21:27:34'),
(823, 'MAIN_MODULE_COMMANDE', 1, '1', 'string', 0, '{\"authorid\":\"1\",\"ip\":\"127.0.0.1\"}', '2019-04-26 21:38:56'),
(849, 'MAIN_LANG_DEFAULT', 1, 'es_EC', 'chaine', 0, '', '2019-04-26 21:58:40'),
(850, 'MAIN_MULTILANGS', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(851, 'MAIN_THEME', 1, 'eldy', 'chaine', 0, '', '2019-04-26 21:58:40'),
(852, 'THEME_ELDY_TOPMENU_BACK1', 1, '226,30,38', 'chaine', 0, '', '2019-04-26 21:58:40'),
(853, 'THEME_ELDY_VERMENU_BACK1', 1, '255,255,255', 'chaine', 0, '', '2019-04-26 21:58:40'),
(854, 'THEME_ELDY_TEXTTITLENOTAB', 1, '226,30,38', 'chaine', 0, '', '2019-04-26 21:58:40'),
(855, 'THEME_ELDY_LINEPAIR1', 1, '239,174,177', 'chaine', 0, '', '2019-04-26 21:58:40'),
(856, 'THEME_ELDY_LINEPAIR2', 1, '239,174,177', 'chaine', 0, '', '2019-04-26 21:58:40'),
(857, 'THEME_ELDY_TEXTLINK', 1, '128,128,128', 'chaine', 0, '', '2019-04-26 21:58:40'),
(858, 'THEME_ELDY_USE_HOVER', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(859, 'THEME_ELDY_USE_CHECKED', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(860, 'MAIN_SIZE_LISTE_LIMIT', 1, '25', 'chaine', 0, '', '2019-04-26 21:58:40'),
(861, 'MAIN_SIZE_SHORTLIST_LIMIT', 1, '3', 'chaine', 0, '', '2019-04-26 21:58:40'),
(862, 'MAIN_DISABLE_JAVASCRIPT', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(863, 'MAIN_BUTTON_HIDE_UNAUTHORIZED', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(864, 'MAIN_START_WEEK', 1, '1', 'chaine', 0, '', '2019-04-26 21:58:40'),
(865, 'MAIN_DEFAULT_WORKING_DAYS', 1, '1-5', 'chaine', 0, '', '2019-04-26 21:58:40'),
(866, 'MAIN_DEFAULT_WORKING_HOURS', 1, '9-18', 'chaine', 0, '', '2019-04-26 21:58:40'),
(867, 'MAIN_SHOW_LOGO', 1, '1', 'chaine', 0, '', '2019-04-26 21:58:40'),
(868, 'MAIN_FIRSTNAME_NAME_POSITION', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(869, 'MAIN_HELPCENTER_DISABLELINK', 0, '0', 'chaine', 0, '', '2019-04-26 21:58:40'),
(870, 'MAIN_MOTD', 1, 'Energia en Movimiento', 'chaine', 0, '', '2019-04-26 21:58:40'),
(871, 'MAIN_HOME', 1, 'Bienvenido a Baterias Ecuador', 'chaine', 0, '', '2019-04-26 21:58:40'),
(872, 'MAIN_HELP_DISABLELINK', 0, '1', 'chaine', 0, '', '2019-04-26 21:58:40'),
(873, 'MAIN_BUGTRACK_ENABLELINK', 1, '0', 'chaine', 0, '', '2019-04-26 21:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat`
--

CREATE TABLE `llx_contrat` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_supplier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_contrat` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `mise_en_service` datetime DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_commercial_signature` int(11) DEFAULT NULL,
  `fk_commercial_suivi` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_mise_en_service` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_contrat`
--

INSERT INTO `llx_contrat` (`rowid`, `ref`, `ref_customer`, `ref_supplier`, `ref_ext`, `entity`, `tms`, `datec`, `date_contrat`, `statut`, `mise_en_service`, `fin_validite`, `date_cloture`, `fk_soc`, `fk_projet`, `fk_commercial_signature`, `fk_commercial_suivi`, `fk_user_author`, `fk_user_modif`, `fk_user_mise_en_service`, `fk_user_cloture`, `note_private`, `note_public`, `model_pdf`, `last_main_doc`, `import_key`, `extraparams`) VALUES
(1, '(PROV1)', NULL, NULL, NULL, 1, '2019-04-26 21:35:09', '2019-04-26 23:35:09', '2019-04-26 00:00:00', 0, NULL, NULL, NULL, 2, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '(PROV2)', NULL, NULL, NULL, 1, '2019-04-26 21:37:31', '2019-04-26 23:37:31', '2019-04-26 00:00:00', 0, NULL, NULL, NULL, 2, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet`
--

CREATE TABLE `llx_contratdet` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contrat` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `label` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `fk_remise_except` int(11) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_ouverture_prevue` datetime DEFAULT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `remise_percent` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `price_ht` double DEFAULT NULL,
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '1',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT NULL,
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_ouverture` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `commentaire` text COLLATE utf8_unicode_ci,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet_extrafields`
--

CREATE TABLE `llx_contratdet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet_log`
--

CREATE TABLE `llx_contratdet_log` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contratdet` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `statut` smallint(6) NOT NULL,
  `fk_user_author` int(11) NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat_extrafields`
--

CREATE TABLE `llx_contrat_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_cronjob`
--

CREATE TABLE `llx_cronjob` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `label` text COLLATE utf8_unicode_ci NOT NULL,
  `command` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classesname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methodename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `md5params` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text COLLATE utf8_unicode_ci,
  `lastoutput` text COLLATE utf8_unicode_ci,
  `unitfrequency` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3600',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `maxrun` int(11) NOT NULL DEFAULT '0',
  `nbrun` int(11) DEFAULT NULL,
  `autodelete` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `processing` int(11) NOT NULL DEFAULT '0',
  `test` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_mailing` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `libname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_accounting_category`
--

CREATE TABLE `llx_c_accounting_category` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `range_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sens` tinyint(4) NOT NULL DEFAULT '0',
  `category_type` tinyint(4) NOT NULL DEFAULT '0',
  `formula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_accounting_category`
--

INSERT INTO `llx_c_accounting_category` (`rowid`, `entity`, `code`, `label`, `range_account`, `sens`, `category_type`, `formula`, `position`, `fk_country`, `active`) VALUES
(1, 1, 'INCOMES', 'Income of products/services', 'Example: 7xxxxx', 0, 0, '', 10, 0, 1),
(2, 1, 'EXPENSES', 'Expenses of products/services', 'Example: 6xxxxx', 0, 0, '', 20, 0, 1),
(3, 1, 'PROFIT', 'Balance', '', 0, 1, 'INCOMES+EXPENSES', 30, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_actioncomm`
--

CREATE TABLE `llx_c_actioncomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system',
  `libelle` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `todo` tinyint(4) DEFAULT NULL,
  `color` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picto` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_actioncomm`
--

INSERT INTO `llx_c_actioncomm` (`id`, `code`, `type`, `libelle`, `module`, `active`, `todo`, `color`, `picto`, `position`) VALUES
(1, 'AC_TEL', 'system', 'Phone call', NULL, 1, NULL, NULL, NULL, 2),
(2, 'AC_FAX', 'system', 'Send Fax', NULL, 1, NULL, NULL, NULL, 3),
(4, 'AC_EMAIL', 'system', 'Send Email', NULL, 1, NULL, NULL, NULL, 4),
(5, 'AC_RDV', 'system', 'Rendez-vous', NULL, 1, NULL, NULL, NULL, 1),
(11, 'AC_INT', 'system', 'Intervention on site', NULL, 1, NULL, NULL, NULL, 4),
(40, 'AC_OTH_AUTO', 'systemauto', 'Other (automatically inserted events)', NULL, 1, NULL, NULL, NULL, 20),
(50, 'AC_OTH', 'system', 'Other (manually inserted events)', NULL, 1, NULL, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_action_trigger`
--

CREATE TABLE `llx_c_action_trigger` (
  `rowid` int(11) NOT NULL,
  `elementtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_action_trigger`
--

INSERT INTO `llx_c_action_trigger` (`rowid`, `elementtype`, `code`, `label`, `description`, `rang`) VALUES
(79, 'societe', 'COMPANY_CREATE', 'Third party created', 'Executed when a third party is created', 1),
(80, 'societe', 'COMPANY_SENTBYMAIL', 'Mails sent from third party card', 'Executed when you send email from third party card', 1),
(81, 'societe', 'COMPANY_DELETE', 'Third party deleted', 'Executed when you delete third party', 1),
(82, 'propal', 'PROPAL_VALIDATE', 'Customer proposal validated', 'Executed when a commercial proposal is validated', 2),
(83, 'propal', 'PROPAL_SENTBYMAIL', 'Commercial proposal sent by mail', 'Executed when a commercial proposal is sent by mail', 3),
(84, 'propal', 'PROPAL_CLOSE_SIGNED', 'Customer proposal closed signed', 'Executed when a customer proposal is closed signed', 2),
(85, 'propal', 'PROPAL_CLOSE_REFUSED', 'Customer proposal closed refused', 'Executed when a customer proposal is closed refused', 2),
(86, 'propal', 'PROPAL_CLASSIFY_BILLED', 'Customer proposal set billed', 'Executed when a customer proposal is set to billed', 2),
(87, 'propal', 'PROPAL_DELETE', 'Customer proposal deleted', 'Executed when a customer proposal is deleted', 2),
(88, 'commande', 'ORDER_VALIDATE', 'Customer order validate', 'Executed when a customer order is validated', 4),
(89, 'commande', 'ORDER_CLOSE', 'Customer order classify delivered', 'Executed when a customer order is set delivered', 5),
(90, 'commande', 'ORDER_CLASSIFY_BILLED', 'Customer order classify billed', 'Executed when a customer order is set to billed', 5),
(91, 'commande', 'ORDER_CANCEL', 'Customer order canceled', 'Executed when a customer order is canceled', 5),
(92, 'commande', 'ORDER_SENTBYMAIL', 'Customer order sent by mail', 'Executed when a customer order is sent by mail ', 5),
(93, 'commande', 'ORDER_DELETE', 'Customer order deleted', 'Executed when a customer order is deleted', 5),
(94, 'facture', 'BILL_VALIDATE', 'Customer invoice validated', 'Executed when a customer invoice is approved', 6),
(95, 'facture', 'BILL_PAYED', 'Customer invoice payed', 'Executed when a customer invoice is payed', 7),
(96, 'facture', 'BILL_CANCEL', 'Customer invoice canceled', 'Executed when a customer invoice is conceled', 8),
(97, 'facture', 'BILL_SENTBYMAIL', 'Customer invoice sent by mail', 'Executed when a customer invoice is sent by mail', 9),
(98, 'facture', 'BILL_UNVALIDATE', 'Customer invoice unvalidated', 'Executed when a customer invoice status set back to draft', 9),
(99, 'facture', 'BILL_DELETE', 'Customer invoice deleted', 'Executed when a customer invoice is deleted', 9),
(100, 'proposal_supplier', 'PROPOSAL_SUPPLIER_VALIDATE', 'Price request validated', 'Executed when a commercial proposal is validated', 10),
(101, 'proposal_supplier', 'PROPOSAL_SUPPLIER_SENTBYMAIL', 'Price request sent by mail', 'Executed when a commercial proposal is sent by mail', 10),
(102, 'proposal_supplier', 'PROPOSAL_SUPPLIER_CLOSE_SIGNED', 'Price request closed signed', 'Executed when a customer proposal is closed signed', 10),
(103, 'proposal_supplier', 'PROPOSAL_SUPPLIER_CLOSE_REFUSED', 'Price request closed refused', 'Executed when a customer proposal is closed refused', 10),
(104, 'proposal_supplier', 'PROPOSAL_SUPPLIER_DELETE', 'Price request deleted', 'Executed when a customer proposal delete', 10),
(105, 'order_supplier', 'ORDER_SUPPLIER_VALIDATE', 'Supplier order validated', 'Executed when a supplier order is validated', 12),
(106, 'order_supplier', 'ORDER_SUPPLIER_APPROVE', 'Supplier order request approved', 'Executed when a supplier order is approved', 13),
(107, 'order_supplier', 'ORDER_SUPPLIER_SUBMIT', 'Supplier order request submited', 'Executed when a supplier order is approved', 13),
(108, 'order_supplier', 'ORDER_SUPPLIER_RECEIVE', 'Supplier order request received', 'Executed when a supplier order is received', 13),
(109, 'order_supplier', 'ORDER_SUPPLIER_REFUSE', 'Supplier order request refused', 'Executed when a supplier order is refused', 13),
(110, 'order_supplier', 'ORDER_SUPPLIER_SENTBYMAIL', 'Supplier order sent by mail', 'Executed when a supplier order is sent by mail', 14),
(111, 'order_supplier', 'ORDER_SUPPLIER_CLASSIFY_BILLED', 'Supplier order set billed', 'Executed when a supplier order is set as billed', 14),
(112, 'order_supplier', 'ORDER_SUPPLIER_DELETE', 'Supplier order deleted', 'Executed when a supplier order is deleted', 14),
(113, 'invoice_supplier', 'BILL_SUPPLIER_VALIDATE', 'Supplier invoice validated', 'Executed when a supplier invoice is validated', 15),
(114, 'invoice_supplier', 'BILL_SUPPLIER_UNVALIDATE', 'Supplier invoice unvalidated', 'Executed when a supplier invoice status is set back to draft', 15),
(115, 'invoice_supplier', 'BILL_SUPPLIER_PAYED', 'Supplier invoice payed', 'Executed when a supplier invoice is payed', 16),
(116, 'invoice_supplier', 'BILL_SUPPLIER_SENTBYMAIL', 'Supplier invoice sent by mail', 'Executed when a supplier invoice is sent by mail', 17),
(117, 'invoice_supplier', 'BILL_SUPPLIER_CANCELED', 'Supplier invoice cancelled', 'Executed when a supplier invoice is cancelled', 17),
(118, 'invoice_supplier', 'BILL_SUPPLIER_DELETE', 'Supplier invoice deleted', 'Executed when a supplier invoice is deleted', 17),
(119, 'contrat', 'CONTRACT_VALIDATE', 'Contract validated', 'Executed when a contract is validated', 18),
(120, 'contrat', 'CONTRACT_SENTBYMAIL', 'Contract sent by mail', 'Executed when a contract is sent by mail', 18),
(121, 'contrat', 'CONTRACT_DELETE', 'Contract deleted', 'Executed when a contract is deleted', 18),
(122, 'shipping', 'SHIPPING_VALIDATE', 'Shipping validated', 'Executed when a shipping is validated', 20),
(123, 'shipping', 'SHIPPING_SENTBYMAIL', 'Shipping sent by mail', 'Executed when a shipping is sent by mail', 21),
(124, 'shipping', 'SHIPPING_DELETE', 'Shipping sent is deleted', 'Executed when a shipping is deleted', 21),
(125, 'member', 'MEMBER_VALIDATE', 'Member validated', 'Executed when a member is validated', 22),
(126, 'member', 'MEMBER_SENTBYMAIL', 'Mails sent from member card', 'Executed when you send email from member card', 23),
(127, 'member', 'MEMBER_SUBSCRIPTION_CREATE', 'Member subscribtion recorded', 'Executed when a member subscribtion is deleted', 24),
(128, 'member', 'MEMBER_SUBSCRIPTION_MODIFY', 'Member subscribtion modified', 'Executed when a member subscribtion is modified', 24),
(129, 'member', 'MEMBER_SUBSCRIPTION_DELETE', 'Member subscribtion deleted', 'Executed when a member subscribtion is deleted', 24),
(130, 'member', 'MEMBER_RESILIATE', 'Member resiliated', 'Executed when a member is resiliated', 25),
(131, 'member', 'MEMBER_DELETE', 'Member deleted', 'Executed when a member is deleted', 26),
(132, 'ficheinter', 'FICHINTER_VALIDATE', 'Intervention validated', 'Executed when a intervention is validated', 30),
(133, 'ficheinter', 'FICHINTER_CLASSIFY_BILLED', 'Intervention set billed', 'Executed when a intervention is set to billed (when option FICHINTER_CLASSIFY_BILLED is set)', 32),
(134, 'ficheinter', 'FICHINTER_CLASSIFY_UNBILLED', 'Intervention set unbilled', 'Executed when a intervention is set to unbilled (when option FICHINTER_CLASSIFY_BILLED is set)', 33),
(135, 'ficheinter', 'FICHINTER_REOPEN', 'Intervention opened', 'Executed when a intervention is re-opened', 34),
(136, 'ficheinter', 'FICHINTER_SENTBYMAIL', 'Intervention sent by mail', 'Executed when a intervention is sent by mail', 35),
(137, 'ficheinter', 'FICHINTER_DELETE', 'Intervention is deleted', 'Executed when a intervention is deleted', 35),
(138, 'product', 'PRODUCT_CREATE', 'Product or service created', 'Executed when a product or sevice is created', 40),
(139, 'product', 'PRODUCT_DELETE', 'Product or service deleted', 'Executed when a product or sevice is deleted', 42),
(140, 'expensereport', 'EXPENSE_REPORT_CREATE', 'Expense report created', 'Executed when an expense report is created', 201),
(141, 'expensereport', 'EXPENSE_REPORT_VALIDATE', 'Expense report validated', 'Executed when an expense report is validated', 202),
(142, 'expensereport', 'EXPENSE_REPORT_APPROVE', 'Expense report approved', 'Executed when an expense report is approved', 203),
(143, 'expensereport', 'EXPENSE_REPORT_PAYED', 'Expense report billed', 'Executed when an expense report is set as billed', 204),
(144, 'expensereport', 'EXPENSE_DELETE', 'Expense report deleted', 'Executed when an expense report is deleted', 204),
(145, 'expensereport', 'HOLIDAY_VALIDATE', 'Expense report validated', 'Executed when an expense report is validated', 202),
(146, 'expensereport', 'HOLIDAY_APPROVE', 'Expense report approved', 'Executed when an expense report is approved', 203),
(147, 'project', 'PROJECT_VALIDATE', 'Project validation', 'Executed when a project is validated', 141),
(148, 'project', 'PROJECT_DELETE', 'Project deleted', 'Executed when a project is deleted', 143),
(149, 'product', 'PRODUCT_MODIFY', 'Product or service modified', 'Executed when a product or sevice is modified', 41),
(150, 'member', 'MEMBER_MODIFY', 'Member modified', 'Executed when a member is modified', 23),
(151, 'ficheinter', 'FICHINTER_MODIFY', 'Intervention modified', 'Executed when a intervention is modified', 31),
(152, 'project', 'PROJECT_CREATE', 'Project creation', 'Executed when a project is created', 140),
(153, 'project', 'PROJECT_MODIFY', 'Project modified', 'Executed when a project is modified', 142),
(154, 'project', 'TASK_CREATE', 'Task created', 'Executed when a project task is created', 150),
(155, 'project', 'TASK_MODIFY', 'Task modified', 'Executed when a project task is modified', 151),
(156, 'project', 'TASK_DELETE', 'Task deleted', 'Executed when a project task is deleted', 152);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_availability`
--

CREATE TABLE `llx_c_availability` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_availability`
--

INSERT INTO `llx_c_availability` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'AV_NOW', 'Immediate', 1),
(2, 'AV_1W', '1 week', 1),
(3, 'AV_2W', '2 weeks', 1),
(4, 'AV_3W', '3 weeks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_barcode_type`
--

CREATE TABLE `llx_c_barcode_type` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `coder` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `example` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_chargesociales`
--

CREATE TABLE `llx_c_chargesociales` (
  `id` int(11) NOT NULL,
  `libelle` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deductible` smallint(6) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `accountancy_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_chargesociales`
--

INSERT INTO `llx_c_chargesociales` (`id`, `libelle`, `deductible`, `active`, `code`, `accountancy_code`, `fk_pays`, `module`) VALUES
(1, 'Allocations familiales', 1, 1, 'TAXFAM', NULL, 1, NULL),
(2, 'CSG Deductible', 1, 1, 'TAXCSGD', NULL, 1, NULL),
(3, 'CSG/CRDS NON Deductible', 0, 1, 'TAXCSGND', NULL, 1, NULL),
(10, 'Taxe apprentissage', 0, 1, 'TAXAPP', NULL, 1, NULL),
(11, 'Taxe professionnelle', 0, 1, 'TAXPRO', NULL, 1, NULL),
(12, 'Cotisation fonciere des entreprises', 0, 1, 'TAXCFE', NULL, 1, NULL),
(13, 'Cotisation sur la valeur ajoutee des entreprises', 0, 1, 'TAXCVAE', NULL, 1, NULL),
(20, 'Impots locaux/fonciers', 0, 1, 'TAXFON', NULL, 1, NULL),
(25, 'Impots revenus', 0, 1, 'TAXREV', NULL, 1, NULL),
(30, 'Assurance Sante', 0, 1, 'TAXSECU', NULL, 1, NULL),
(40, 'Mutuelle', 0, 1, 'TAXMUT', NULL, 1, NULL),
(50, 'Assurance vieillesse', 0, 1, 'TAXRET', NULL, 1, NULL),
(60, 'Assurance Chomage', 0, 1, 'TAXCHOM', NULL, 1, NULL),
(201, 'ONSS', 1, 1, 'TAXBEONSS', NULL, 2, NULL),
(210, 'Precompte professionnel', 1, 1, 'TAXBEPREPRO', NULL, 2, NULL),
(220, 'Prime existence', 1, 1, 'TAXBEPRIEXI', NULL, 2, NULL),
(230, 'Precompte immobilier', 1, 1, 'TAXBEPREIMMO', NULL, 2, NULL),
(4101, 'Krankenversicherung', 1, 1, 'TAXATKV', NULL, 41, NULL),
(4102, 'Unfallversicherung', 1, 1, 'TAXATUV', NULL, 41, NULL),
(4103, 'Pensionsversicherung', 1, 1, 'TAXATPV', NULL, 41, NULL),
(4104, 'Arbeitslosenversicherung', 1, 1, 'TAXATAV', NULL, 41, NULL),
(4105, 'Insolvenzentgeltsicherungsfond', 1, 1, 'TAXATIESG', NULL, 41, NULL),
(4106, 'Wohnbauförderung', 1, 1, 'TAXATWF', NULL, 41, NULL),
(4107, 'Arbeiterkammerumlage', 1, 1, 'TAXATAK', NULL, 41, NULL),
(4108, 'Mitarbeitervorsorgekasse', 1, 1, 'TAXATMVK', NULL, 41, NULL),
(4109, 'Familienlastenausgleichsfond', 1, 1, 'TAXATFLAF', NULL, 41, NULL),
(4110, 'Impuesto Ecuador', 1, 1, 'TAXEC', NULL, 84, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_civility`
--

CREATE TABLE `llx_c_civility` (
  `rowid` int(11) NOT NULL,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_civility`
--

INSERT INTO `llx_c_civility` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'MME', 'Madame', 1, NULL),
(3, 'MR', 'Monsieur', 1, NULL),
(5, 'MLE', 'Mademoiselle', 1, NULL),
(7, 'MTRE', 'Maître', 1, NULL),
(8, 'DR', 'Docteur', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_country`
--

CREATE TABLE `llx_c_country` (
  `rowid` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `code_iso` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `favorite` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_country`
--

INSERT INTO `llx_c_country` (`rowid`, `code`, `code_iso`, `label`, `active`, `favorite`) VALUES
(0, '', NULL, '-', 1, 1),
(1, 'FR', 'FRA', 'France', 1, 0),
(2, 'BE', 'BEL', 'Belgium', 1, 0),
(3, 'IT', 'ITA', 'Italy', 1, 0),
(4, 'ES', 'ESP', 'Spain', 1, 0),
(5, 'DE', 'DEU', 'Germany', 1, 0),
(6, 'CH', 'CHE', 'Switzerland', 1, 0),
(7, 'GB', 'GBR', 'United Kingdom', 1, 0),
(8, 'IE', 'IRL', 'Irland', 1, 0),
(9, 'CN', 'CHN', 'China', 1, 0),
(10, 'TN', 'TUN', 'Tunisia', 1, 0),
(11, 'US', 'USA', 'United States', 1, 0),
(12, 'MA', 'MAR', 'Maroc', 1, 0),
(13, 'DZ', 'DZA', 'Algeria', 1, 0),
(14, 'CA', 'CAN', 'Canada', 1, 0),
(15, 'TG', 'TGO', 'Togo', 1, 0),
(16, 'GA', 'GAB', 'Gabon', 1, 0),
(17, 'NL', 'NLD', 'Nederland', 1, 0),
(18, 'HU', 'HUN', 'Hongrie', 1, 0),
(19, 'RU', 'RUS', 'Russia', 1, 0),
(20, 'SE', 'SWE', 'Sweden', 1, 0),
(21, 'CI', 'CIV', 'Côte d\'Ivoire', 1, 0),
(22, 'SN', 'SEN', 'Senegal', 1, 0),
(23, 'AR', 'ARG', 'Argentine', 1, 0),
(24, 'CM', 'CMR', 'Cameroun', 1, 0),
(25, 'PT', 'PRT', 'Portugal', 1, 0),
(26, 'SA', 'SAU', 'Saudi Arabia', 1, 0),
(27, 'MC', 'MCO', 'Monaco', 1, 0),
(28, 'AU', 'AUS', 'Australia', 1, 0),
(29, 'SG', 'SGP', 'Singapour', 1, 0),
(30, 'AF', 'AFG', 'Afghanistan', 1, 0),
(31, 'AX', 'ALA', 'Iles Aland', 1, 0),
(32, 'AL', 'ALB', 'Albanie', 1, 0),
(33, 'AS', 'ASM', 'Samoa américaines', 1, 0),
(34, 'AD', 'AND', 'Andorre', 1, 0),
(35, 'AO', 'AGO', 'Angola', 1, 0),
(36, 'AI', 'AIA', 'Anguilla', 1, 0),
(37, 'AQ', 'ATA', 'Antarctique', 1, 0),
(38, 'AG', 'ATG', 'Antigua-et-Barbuda', 1, 0),
(39, 'AM', 'ARM', 'Arménie', 1, 0),
(40, 'AW', 'ABW', 'Aruba', 1, 0),
(41, 'AT', 'AUT', 'Autriche', 1, 0),
(42, 'AZ', 'AZE', 'Azerbaïdjan', 1, 0),
(43, 'BS', 'BHS', 'Bahamas', 1, 0),
(44, 'BH', 'BHR', 'Bahreïn', 1, 0),
(45, 'BD', 'BGD', 'Bangladesh', 1, 0),
(46, 'BB', 'BRB', 'Barbade', 1, 0),
(47, 'BY', 'BLR', 'Biélorussie', 1, 0),
(48, 'BZ', 'BLZ', 'Belize', 1, 0),
(49, 'BJ', 'BEN', 'Bénin', 1, 0),
(50, 'BM', 'BMU', 'Bermudes', 1, 0),
(51, 'BT', 'BTN', 'Bhoutan', 1, 0),
(52, 'BO', 'BOL', 'Bolivie', 1, 0),
(53, 'BA', 'BIH', 'Bosnie-Herzégovine', 1, 0),
(54, 'BW', 'BWA', 'Botswana', 1, 0),
(55, 'BV', 'BVT', 'Ile Bouvet', 1, 0),
(56, 'BR', 'BRA', 'Brazil', 1, 0),
(57, 'IO', 'IOT', 'Territoire britannique de l\'Océan Indien', 1, 0),
(58, 'BN', 'BRN', 'Brunei', 1, 0),
(59, 'BG', 'BGR', 'Bulgarie', 1, 0),
(60, 'BF', 'BFA', 'Burkina Faso', 1, 0),
(61, 'BI', 'BDI', 'Burundi', 1, 0),
(62, 'KH', 'KHM', 'Cambodge', 1, 0),
(63, 'CV', 'CPV', 'Cap-Vert', 1, 0),
(64, 'KY', 'CYM', 'Iles Cayman', 1, 0),
(65, 'CF', 'CAF', 'République centrafricaine', 1, 0),
(66, 'TD', 'TCD', 'Tchad', 1, 0),
(67, 'CL', 'CHL', 'Chili', 1, 0),
(68, 'CX', 'CXR', 'Ile Christmas', 1, 0),
(69, 'CC', 'CCK', 'Iles des Cocos (Keeling)', 1, 0),
(70, 'CO', 'COL', 'Colombie', 1, 0),
(71, 'KM', 'COM', 'Comores', 1, 0),
(72, 'CG', 'COG', 'Congo', 1, 0),
(73, 'CD', 'COD', 'République démocratique du Congo', 1, 0),
(74, 'CK', 'COK', 'Iles Cook', 1, 0),
(75, 'CR', 'CRI', 'Costa Rica', 1, 0),
(76, 'HR', 'HRV', 'Croatie', 1, 0),
(77, 'CU', 'CUB', 'Cuba', 1, 0),
(78, 'CY', 'CYP', 'Cyprus', 1, 0),
(79, 'CZ', 'CZE', 'République Tchèque', 1, 0),
(80, 'DK', 'DNK', 'Danemark', 1, 0),
(81, 'DJ', 'DJI', 'Djibouti', 1, 0),
(82, 'DM', 'DMA', 'Dominique', 1, 0),
(83, 'DO', 'DOM', 'République Dominicaine', 1, 0),
(84, 'EC', 'ECU', 'Equateur', 1, 0),
(85, 'EG', 'EGY', 'Egypte', 1, 0),
(86, 'SV', 'SLV', 'Salvador', 1, 0),
(87, 'GQ', 'GNQ', 'Guinée Equatoriale', 1, 0),
(88, 'ER', 'ERI', 'Erythrée', 1, 0),
(89, 'EE', 'EST', 'Estonia', 1, 0),
(90, 'ET', 'ETH', 'Ethiopie', 1, 0),
(91, 'FK', 'FLK', 'Iles Falkland', 1, 0),
(92, 'FO', 'FRO', 'Iles Féroé', 1, 0),
(93, 'FJ', 'FJI', 'Iles Fidji', 1, 0),
(94, 'FI', 'FIN', 'Finlande', 1, 0),
(95, 'GF', 'GUF', 'Guyane française', 1, 0),
(96, 'PF', 'PYF', 'Polynésie française', 1, 0),
(97, 'TF', 'ATF', 'Terres australes françaises', 1, 0),
(98, 'GM', 'GMB', 'Gambie', 1, 0),
(99, 'GE', 'GEO', 'Georgia', 1, 0),
(100, 'GH', 'GHA', 'Ghana', 1, 0),
(101, 'GI', 'GIB', 'Gibraltar', 1, 0),
(102, 'GR', 'GRC', 'Greece', 1, 0),
(103, 'GL', 'GRL', 'Groenland', 1, 0),
(104, 'GD', 'GRD', 'Grenade', 1, 0),
(106, 'GU', 'GUM', 'Guam', 1, 0),
(107, 'GT', 'GTM', 'Guatemala', 1, 0),
(108, 'GN', 'GIN', 'Guinea', 1, 0),
(109, 'GW', 'GNB', 'Guinea-Bissao', 1, 0),
(111, 'HT', 'HTI', 'Haiti', 1, 0),
(112, 'HM', 'HMD', 'Iles Heard et McDonald', 1, 0),
(113, 'VA', 'VAT', 'Saint-Siège (Vatican)', 1, 0),
(114, 'HN', 'HND', 'Honduras', 1, 0),
(115, 'HK', 'HKG', 'Hong Kong', 1, 0),
(116, 'IS', 'ISL', 'Islande', 1, 0),
(117, 'IN', 'IND', 'India', 1, 0),
(118, 'ID', 'IDN', 'Indonésie', 1, 0),
(119, 'IR', 'IRN', 'Iran', 1, 0),
(120, 'IQ', 'IRQ', 'Iraq', 1, 0),
(121, 'IL', 'ISR', 'Israel', 1, 0),
(122, 'JM', 'JAM', 'Jamaïque', 1, 0),
(123, 'JP', 'JPN', 'Japon', 1, 0),
(124, 'JO', 'JOR', 'Jordanie', 1, 0),
(125, 'KZ', 'KAZ', 'Kazakhstan', 1, 0),
(126, 'KE', 'KEN', 'Kenya', 1, 0),
(127, 'KI', 'KIR', 'Kiribati', 1, 0),
(128, 'KP', 'PRK', 'North Corea', 1, 0),
(129, 'KR', 'KOR', 'South Corea', 1, 0),
(130, 'KW', 'KWT', 'Koweït', 1, 0),
(131, 'KG', 'KGZ', 'Kirghizistan', 1, 0),
(132, 'LA', 'LAO', 'Laos', 1, 0),
(133, 'LV', 'LVA', 'Lettonie', 1, 0),
(134, 'LB', 'LBN', 'Liban', 1, 0),
(135, 'LS', 'LSO', 'Lesotho', 1, 0),
(136, 'LR', 'LBR', 'Liberia', 1, 0),
(137, 'LY', 'LBY', 'Libye', 1, 0),
(138, 'LI', 'LIE', 'Liechtenstein', 1, 0),
(139, 'LT', 'LTU', 'Lituanie', 1, 0),
(140, 'LU', 'LUX', 'Luxembourg', 1, 0),
(141, 'MO', 'MAC', 'Macao', 1, 0),
(142, 'MK', 'MKD', 'ex-République yougoslave de Macédoine', 1, 0),
(143, 'MG', 'MDG', 'Madagascar', 1, 0),
(144, 'MW', 'MWI', 'Malawi', 1, 0),
(145, 'MY', 'MYS', 'Malaisie', 1, 0),
(146, 'MV', 'MDV', 'Maldives', 1, 0),
(147, 'ML', 'MLI', 'Mali', 1, 0),
(148, 'MT', 'MLT', 'Malte', 1, 0),
(149, 'MH', 'MHL', 'Iles Marshall', 1, 0),
(151, 'MR', 'MRT', 'Mauritanie', 1, 0),
(152, 'MU', 'MUS', 'Maurice', 1, 0),
(153, 'YT', 'MYT', 'Mayotte', 1, 0),
(154, 'MX', 'MEX', 'Mexique', 1, 0),
(155, 'FM', 'FSM', 'Micronésie', 1, 0),
(156, 'MD', 'MDA', 'Moldavie', 1, 0),
(157, 'MN', 'MNG', 'Mongolie', 1, 0),
(158, 'MS', 'MSR', 'Monserrat', 1, 0),
(159, 'MZ', 'MOZ', 'Mozambique', 1, 0),
(160, 'MM', 'MMR', 'Birmanie (Myanmar)', 1, 0),
(161, 'NA', 'NAM', 'Namibie', 1, 0),
(162, 'NR', 'NRU', 'Nauru', 1, 0),
(163, 'NP', 'NPL', 'Népal', 1, 0),
(165, 'NC', 'NCL', 'Nouvelle-Calédonie', 1, 0),
(166, 'NZ', 'NZL', 'Nouvelle-Zélande', 1, 0),
(167, 'NI', 'NIC', 'Nicaragua', 1, 0),
(168, 'NE', 'NER', 'Niger', 1, 0),
(169, 'NG', 'NGA', 'Nigeria', 1, 0),
(170, 'NU', 'NIU', 'Nioué', 1, 0),
(171, 'NF', 'NFK', 'Ile Norfolk', 1, 0),
(172, 'MP', 'MNP', 'Mariannes du Nord', 1, 0),
(173, 'NO', 'NOR', 'Norvège', 1, 0),
(174, 'OM', 'OMN', 'Oman', 1, 0),
(175, 'PK', 'PAK', 'Pakistan', 1, 0),
(176, 'PW', 'PLW', 'Palaos', 1, 0),
(177, 'PS', 'PSE', 'Territoire Palestinien Occupé', 1, 0),
(178, 'PA', 'PAN', 'Panama', 1, 0),
(179, 'PG', 'PNG', 'Papouasie-Nouvelle-Guinée', 1, 0),
(180, 'PY', 'PRY', 'Paraguay', 1, 0),
(181, 'PE', 'PER', 'Peru', 1, 0),
(182, 'PH', 'PHL', 'Philippines', 1, 0),
(183, 'PN', 'PCN', 'Iles Pitcairn', 1, 0),
(184, 'PL', 'POL', 'Pologne', 1, 0),
(185, 'PR', 'PRI', 'Porto Rico', 1, 0),
(186, 'QA', 'QAT', 'Qatar', 1, 0),
(188, 'RO', 'ROU', 'Roumanie', 1, 0),
(189, 'RW', 'RWA', 'Rwanda', 1, 0),
(190, 'SH', 'SHN', 'Sainte-Hélène', 1, 0),
(191, 'KN', 'KNA', 'Saint-Christophe-et-Niévès', 1, 0),
(192, 'LC', 'LCA', 'Sainte-Lucie', 1, 0),
(193, 'PM', 'SPM', 'Saint-Pierre-et-Miquelon', 1, 0),
(194, 'VC', 'VCT', 'Saint-Vincent-et-les-Grenadines', 1, 0),
(195, 'WS', 'WSM', 'Samoa', 1, 0),
(196, 'SM', 'SMR', 'Saint-Marin', 1, 0),
(197, 'ST', 'STP', 'Sao Tomé-et-Principe', 1, 0),
(198, 'RS', 'SRB', 'Serbie', 1, 0),
(199, 'SC', 'SYC', 'Seychelles', 1, 0),
(200, 'SL', 'SLE', 'Sierra Leone', 1, 0),
(201, 'SK', 'SVK', 'Slovaquie', 1, 0),
(202, 'SI', 'SVN', 'Slovénie', 1, 0),
(203, 'SB', 'SLB', 'Iles Salomon', 1, 0),
(204, 'SO', 'SOM', 'Somalie', 1, 0),
(205, 'ZA', 'ZAF', 'South Africa', 1, 0),
(206, 'GS', 'SGS', 'Iles Géorgie du Sud et Sandwich du Sud', 1, 0),
(207, 'LK', 'LKA', 'Sri Lanka', 1, 0),
(208, 'SD', 'SDN', 'Soudan', 1, 0),
(209, 'SR', 'SUR', 'Suriname', 1, 0),
(210, 'SJ', 'SJM', 'Iles Svalbard et Jan Mayen', 1, 0),
(211, 'SZ', 'SWZ', 'Swaziland', 1, 0),
(212, 'SY', 'SYR', 'Syrie', 1, 0),
(213, 'TW', 'TWN', 'Taïwan', 1, 0),
(214, 'TJ', 'TJK', 'Tadjikistan', 1, 0),
(215, 'TZ', 'TZA', 'Tanzanie', 1, 0),
(216, 'TH', 'THA', 'Thaïlande', 1, 0),
(217, 'TL', 'TLS', 'Timor Oriental', 1, 0),
(218, 'TK', 'TKL', 'Tokélaou', 1, 0),
(219, 'TO', 'TON', 'Tonga', 1, 0),
(220, 'TT', 'TTO', 'Trinité-et-Tobago', 1, 0),
(221, 'TR', 'TUR', 'Turquie', 1, 0),
(222, 'TM', 'TKM', 'Turkménistan', 1, 0),
(223, 'TC', 'TCA', 'Iles Turks-et-Caicos', 1, 0),
(224, 'TV', 'TUV', 'Tuvalu', 1, 0),
(225, 'UG', 'UGA', 'Ouganda', 1, 0),
(226, 'UA', 'UKR', 'Ukraine', 1, 0),
(227, 'AE', 'ARE', 'United Arab Emirates', 1, 0),
(228, 'UM', 'UMI', 'Iles mineures éloignées des États-Unis', 1, 0),
(229, 'UY', 'URY', 'Uruguay', 1, 0),
(230, 'UZ', 'UZB', 'Ouzbékistan', 1, 0),
(231, 'VU', 'VUT', 'Vanuatu', 1, 0),
(232, 'VE', 'VEN', 'Vénézuela', 1, 0),
(233, 'VN', 'VNM', 'Viêt Nam', 1, 0),
(234, 'VG', 'VGB', 'Iles Vierges britanniques', 1, 0),
(235, 'VI', 'VIR', 'Iles Vierges américaines', 1, 0),
(236, 'WF', 'WLF', 'Wallis-et-Futuna', 1, 0),
(237, 'EH', 'ESH', 'Sahara occidental', 1, 0),
(238, 'YE', 'YEM', 'Yémen', 1, 0),
(239, 'ZM', 'ZMB', 'Zambie', 1, 0),
(240, 'ZW', 'ZWE', 'Zimbabwe', 1, 0),
(241, 'GG', 'GGY', 'Guernesey', 1, 0),
(242, 'IM', 'IMN', 'Ile de Man', 1, 0),
(243, 'JE', 'JEY', 'Jersey', 1, 0),
(244, 'ME', 'MNE', 'Monténégro', 1, 0),
(245, 'BL', 'BLM', 'Saint-Barthélemy', 1, 0),
(246, 'MF', 'MAF', 'Saint-Martin', 1, 0),
(247, 'XK', 'XKX', 'Kosovo', 1, 0),
(300, 'CW', 'CUW', 'Curaçao', 1, 0),
(301, 'SX', 'SXM', 'Sint Maarten', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_currencies`
--

CREATE TABLE `llx_c_currencies` (
  `code_iso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `unicode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_currencies`
--

INSERT INTO `llx_c_currencies` (`code_iso`, `label`, `unicode`, `active`) VALUES
('AED', 'United Arab Emirates Dirham', NULL, 1),
('AFN', 'Afghanistan Afghani', '[1547]', 1),
('ALL', 'Albania Lek', '[76,101,107]', 1),
('ANG', 'Netherlands Antilles Guilder', '[402]', 1),
('ARP', 'Pesos argentins', NULL, 0),
('ARS', 'Argentino Peso', '[36]', 1),
('ATS', 'Shiliing autrichiens', NULL, 0),
('AUD', 'Australia Dollar', '[36]', 1),
('AWG', 'Aruba Guilder', '[402]', 1),
('AZN', 'Azerbaijan New Manat', '[1084,1072,1085]', 1),
('BAM', 'Bosnia and Herzegovina Convertible Marka', '[75,77]', 1),
('BBD', 'Barbados Dollar', '[36]', 1),
('BDT', 'Bangladeshi Taka', '[2547]', 1),
('BEF', 'Francs belges', NULL, 0),
('BGN', 'Bulgaria Lev', '[1083,1074]', 1),
('BHD', 'Bahrain', NULL, 1),
('BMD', 'Bermuda Dollar', '[36]', 1),
('BND', 'Brunei Darussalam Dollar', '[36]', 1),
('BOB', 'Bolivia Boliviano', '[36,98]', 1),
('BRL', 'Brazil Real', '[82,36]', 1),
('BSD', 'Bahamas Dollar', '[36]', 1),
('BWP', 'Botswana Pula', '[80]', 1),
('BYR', 'Belarus Ruble', '[112,46]', 1),
('BZD', 'Belize Dollar', '[66,90,36]', 1),
('CAD', 'Canada Dollar', '[36]', 1),
('CHF', 'Switzerland Franc', '[67,72,70]', 1),
('CLP', 'Chile Peso', '[36]', 1),
('CNY', 'China Yuan Renminbi', '[165]', 1),
('COP', 'Colombia Peso', '[36]', 1),
('CRC', 'Costa Rica Colon', '[8353]', 1),
('CUP', 'Cuba Peso', '[8369]', 1),
('CZK', 'Czech Republic Koruna', '[75,269]', 1),
('DEM', 'Deutsch mark', NULL, 0),
('DKK', 'Denmark Krone', '[107,114]', 1),
('DOP', 'Dominican Republic Peso', '[82,68,36]', 1),
('DZD', 'Algeria Dinar', NULL, 1),
('EEK', 'Estonia Kroon', '[107,114]', 1),
('EGP', 'Egypt Pound', '[163]', 1),
('ESP', 'Pesete', NULL, 0),
('EUR', 'Euro Member Countries', '[8364]', 1),
('FIM', 'Mark finlandais', NULL, 0),
('FJD', 'Fiji Dollar', '[36]', 1),
('FKP', 'Falkland Islands (Malvinas) Pound', '[163]', 1),
('FRF', 'Francs francais', NULL, 0),
('GBP', 'United Kingdom Pound', '[163]', 1),
('GGP', 'Guernsey Pound', '[163]', 1),
('GHC', 'Ghana Cedis', '[162]', 1),
('GIP', 'Gibraltar Pound', '[163]', 1),
('GNF', 'Franc Guinéen', '[70,71]', 1),
('GRD', 'Drachme (grece)', NULL, 0),
('GTQ', 'Guatemala Quetzal', '[81]', 1),
('GYD', 'Guyana Dollar', '[36]', 1),
('HKD', 'Hong Kong Dollar', '[36]', 1),
('HNL', 'Honduras Lempira', '[76]', 1),
('HRK', 'Croatia Kuna', '[107,110]', 1),
('HUF', 'Hungary Forint', '[70,116]', 1),
('IDR', 'Indonesia Rupiah', '[82,112]', 1),
('IEP', 'Livres irlandaises', NULL, 0),
('ILS', 'Israel Shekel', '[8362]', 1),
('IMP', 'Isle of Man Pound', '[163]', 1),
('INR', 'India Rupee', '[8377]', 1),
('IRR', 'Iran Rial', '[65020]', 1),
('ISK', 'Iceland Krona', '[107,114]', 1),
('ITL', 'Lires', NULL, 0),
('JEP', 'Jersey Pound', '[163]', 1),
('JMD', 'Jamaica Dollar', '[74,36]', 1),
('JPY', 'Japan Yen', '[165]', 1),
('KES', 'Kenya Shilling', NULL, 1),
('KGS', 'Kyrgyzstan Som', '[1083,1074]', 1),
('KHR', 'Cambodia Riel', '[6107]', 1),
('KPW', 'Korea (North) Won', '[8361]', 1),
('KRW', 'Korea (South) Won', '[8361]', 1),
('KYD', 'Cayman Islands Dollar', '[36]', 1),
('KZT', 'Kazakhstan Tenge', '[1083,1074]', 1),
('LAK', 'Laos Kip', '[8365]', 1),
('LBP', 'Lebanon Pound', '[163]', 1),
('LKR', 'Sri Lanka Rupee', '[8360]', 1),
('LRD', 'Liberia Dollar', '[36]', 1),
('LTL', 'Lithuania Litas', '[76,116]', 1),
('LUF', 'Francs luxembourgeois', NULL, 0),
('LVL', 'Latvia Lat', '[76,115]', 1),
('MAD', 'Morocco Dirham', NULL, 1),
('MGA', 'Ariary', NULL, 1),
('MKD', 'Macedonia Denar', '[1076,1077,1085]', 1),
('MNT', 'Mongolia Tughrik', '[8366]', 1),
('MRO', 'Mauritania Ouguiya', NULL, 1),
('MUR', 'Mauritius Rupee', '[8360]', 1),
('MXN', 'Mexico Peso', '[36]', 1),
('MXP', 'Pesos Mexicans', NULL, 0),
('MYR', 'Malaysia Ringgit', '[82,77]', 1),
('MZN', 'Mozambique Metical', '[77,84]', 1),
('NAD', 'Namibia Dollar', '[36]', 1),
('NGN', 'Nigeria Naira', '[8358]', 1),
('NIO', 'Nicaragua Cordoba', '[67,36]', 1),
('NLG', 'Florins', NULL, 0),
('NOK', 'Norway Krone', '[107,114]', 1),
('NPR', 'Nepal Rupee', '[8360]', 1),
('NZD', 'New Zealand Dollar', '[36]', 1),
('OMR', 'Oman Rial', '[65020]', 1),
('PAB', 'Panama Balboa', '[66,47,46]', 1),
('PEN', 'Peru Nuevo Sol', '[83,47,46]', 1),
('PHP', 'Philippines Peso', '[8369]', 1),
('PKR', 'Pakistan Rupee', '[8360]', 1),
('PLN', 'Poland Zloty', '[122,322]', 1),
('PTE', 'Escudos', NULL, 0),
('PYG', 'Paraguay Guarani', '[71,115]', 1),
('QAR', 'Qatar Riyal', '[65020]', 1),
('RON', 'Romania New Leu', '[108,101,105]', 1),
('RSD', 'Serbia Dinar', '[1044,1080,1085,46]', 1),
('RUB', 'Russia Ruble', '[1088,1091,1073]', 1),
('SAR', 'Saudi Arabia Riyal', '[65020]', 1),
('SBD', 'Solomon Islands Dollar', '[36]', 1),
('SCR', 'Seychelles Rupee', '[8360]', 1),
('SEK', 'Sweden Krona', '[107,114]', 1),
('SGD', 'Singapore Dollar', '[36]', 1),
('SHP', 'Saint Helena Pound', '[163]', 1),
('SKK', 'Couronnes slovaques', NULL, 0),
('SOS', 'Somalia Shilling', '[83]', 1),
('SRD', 'Suriname Dollar', '[36]', 1),
('SUR', 'Rouble', NULL, 0),
('SVC', 'El Salvador Colon', '[36]', 1),
('SYP', 'Syria Pound', '[163]', 1),
('THB', 'Thailand Baht', '[3647]', 1),
('TND', 'Tunisia Dinar', NULL, 1),
('TRL', 'Turkey Lira', '[84,76]', 1),
('TRY', 'Turkey Lira', '[8356]', 1),
('TTD', 'Trinidad and Tobago Dollar', '[84,84,36]', 1),
('TVD', 'Tuvalu Dollar', '[36]', 1),
('TWD', 'Taiwan New Dollar', '[78,84,36]', 1),
('UAH', 'Ukraine Hryvna', '[8372]', 1),
('USD', 'United States Dollar', '[36]', 1),
('UYU', 'Uruguay Peso', '[36,85]', 1),
('UZS', 'Uzbekistan Som', '[1083,1074]', 1),
('VEF', 'Venezuela Bolivar Fuerte', '[66,115]', 1),
('VND', 'Viet Nam Dong', '[8363]', 1),
('XAF', 'Communaute Financiere Africaine (BEAC) CFA Franc', NULL, 1),
('XCD', 'East Caribbean Dollar', '[36]', 1),
('XEU', 'Ecus', NULL, 0),
('XOF', 'Communaute Financiere Africaine (BCEAO) Franc', NULL, 1),
('XPF', 'Franc CFP', '[70]', 1),
('YER', 'Yemen Rial', '[65020]', 1),
('ZAR', 'South Africa Rand', '[82]', 1),
('ZWD', 'Zimbabwe Dollar', '[90,36]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_departements`
--

CREATE TABLE `llx_c_departements` (
  `rowid` int(11) NOT NULL,
  `code_departement` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `fk_region` int(11) DEFAULT NULL,
  `cheflieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `ncc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_departements`
--

INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(1, '0', 0, '0', 0, '-', '-', 1),
(2, '971', 1, '97105', 3, 'GUADELOUPE', 'Guadeloupe', 1),
(3, '972', 2, '97209', 3, 'MARTINIQUE', 'Martinique', 1),
(4, '973', 3, '97302', 3, 'GUYANE', 'Guyane', 1),
(5, '974', 4, '97411', 3, 'REUNION', 'Réunion', 1),
(6, '976', 6, '97601', 3, 'MAYOTTE', 'Mayotte', 1),
(7, '01', 82, '01053', 5, 'AIN', 'Ain', 1),
(8, '02', 22, '02408', 5, 'AISNE', 'Aisne', 1),
(9, '03', 83, '03190', 5, 'ALLIER', 'Allier', 1),
(10, '04', 93, '04070', 4, 'ALPES-DE-HAUTE-PROVENCE', 'Alpes-de-Haute-Provence', 1),
(11, '05', 93, '05061', 4, 'HAUTES-ALPES', 'Hautes-Alpes', 1),
(12, '06', 93, '06088', 4, 'ALPES-MARITIMES', 'Alpes-Maritimes', 1),
(13, '07', 82, '07186', 5, 'ARDECHE', 'Ardèche', 1),
(14, '08', 21, '08105', 4, 'ARDENNES', 'Ardennes', 1),
(15, '09', 73, '09122', 5, 'ARIEGE', 'Ariège', 1),
(16, '10', 21, '10387', 5, 'AUBE', 'Aube', 1),
(17, '11', 91, '11069', 5, 'AUDE', 'Aude', 1),
(18, '12', 73, '12202', 5, 'AVEYRON', 'Aveyron', 1),
(19, '13', 93, '13055', 4, 'BOUCHES-DU-RHONE', 'Bouches-du-Rhône', 1),
(20, '14', 25, '14118', 2, 'CALVADOS', 'Calvados', 1),
(21, '15', 83, '15014', 2, 'CANTAL', 'Cantal', 1),
(22, '16', 54, '16015', 3, 'CHARENTE', 'Charente', 1),
(23, '17', 54, '17300', 3, 'CHARENTE-MARITIME', 'Charente-Maritime', 1),
(24, '18', 24, '18033', 2, 'CHER', 'Cher', 1),
(25, '19', 74, '19272', 3, 'CORREZE', 'Corrèze', 1),
(26, '2A', 94, '2A004', 3, 'CORSE-DU-SUD', 'Corse-du-Sud', 1),
(27, '2B', 94, '2B033', 3, 'HAUTE-CORSE', 'Haute-Corse', 1),
(28, '21', 26, '21231', 3, 'COTE-D OR', 'Côte-d Or', 1),
(29, '22', 53, '22278', 4, 'COTES-D ARMOR', 'Côtes-d Armor', 1),
(30, '23', 74, '23096', 3, 'CREUSE', 'Creuse', 1),
(31, '24', 72, '24322', 3, 'DORDOGNE', 'Dordogne', 1),
(32, '25', 43, '25056', 2, 'DOUBS', 'Doubs', 1),
(33, '26', 82, '26362', 3, 'DROME', 'Drôme', 1),
(34, '27', 23, '27229', 5, 'EURE', 'Eure', 1),
(35, '28', 24, '28085', 1, 'EURE-ET-LOIR', 'Eure-et-Loir', 1),
(36, '29', 53, '29232', 2, 'FINISTERE', 'Finistère', 1),
(37, '30', 91, '30189', 2, 'GARD', 'Gard', 1),
(38, '31', 73, '31555', 3, 'HAUTE-GARONNE', 'Haute-Garonne', 1),
(39, '32', 73, '32013', 2, 'GERS', 'Gers', 1),
(40, '33', 72, '33063', 3, 'GIRONDE', 'Gironde', 1),
(41, '34', 91, '34172', 5, 'HERAULT', 'Hérault', 1),
(42, '35', 53, '35238', 1, 'ILLE-ET-VILAINE', 'Ille-et-Vilaine', 1),
(43, '36', 24, '36044', 5, 'INDRE', 'Indre', 1),
(44, '37', 24, '37261', 1, 'INDRE-ET-LOIRE', 'Indre-et-Loire', 1),
(45, '38', 82, '38185', 5, 'ISERE', 'Isère', 1),
(46, '39', 43, '39300', 2, 'JURA', 'Jura', 1),
(47, '40', 72, '40192', 4, 'LANDES', 'Landes', 1),
(48, '41', 24, '41018', 0, 'LOIR-ET-CHER', 'Loir-et-Cher', 1),
(49, '42', 82, '42218', 3, 'LOIRE', 'Loire', 1),
(50, '43', 83, '43157', 3, 'HAUTE-LOIRE', 'Haute-Loire', 1),
(51, '44', 52, '44109', 3, 'LOIRE-ATLANTIQUE', 'Loire-Atlantique', 1),
(52, '45', 24, '45234', 2, 'LOIRET', 'Loiret', 1),
(53, '46', 73, '46042', 2, 'LOT', 'Lot', 1),
(54, '47', 72, '47001', 0, 'LOT-ET-GARONNE', 'Lot-et-Garonne', 1),
(55, '48', 91, '48095', 3, 'LOZERE', 'Lozère', 1),
(56, '49', 52, '49007', 0, 'MAINE-ET-LOIRE', 'Maine-et-Loire', 1),
(57, '50', 25, '50502', 3, 'MANCHE', 'Manche', 1),
(58, '51', 21, '51108', 3, 'MARNE', 'Marne', 1),
(59, '52', 21, '52121', 3, 'HAUTE-MARNE', 'Haute-Marne', 1),
(60, '53', 52, '53130', 3, 'MAYENNE', 'Mayenne', 1),
(61, '54', 41, '54395', 0, 'MEURTHE-ET-MOSELLE', 'Meurthe-et-Moselle', 1),
(62, '55', 41, '55029', 3, 'MEUSE', 'Meuse', 1),
(63, '56', 53, '56260', 2, 'MORBIHAN', 'Morbihan', 1),
(64, '57', 41, '57463', 3, 'MOSELLE', 'Moselle', 1),
(65, '58', 26, '58194', 3, 'NIEVRE', 'Nièvre', 1),
(66, '59', 31, '59350', 2, 'NORD', 'Nord', 1),
(67, '60', 22, '60057', 5, 'OISE', 'Oise', 1),
(68, '61', 25, '61001', 5, 'ORNE', 'Orne', 1),
(69, '62', 31, '62041', 2, 'PAS-DE-CALAIS', 'Pas-de-Calais', 1),
(70, '63', 83, '63113', 2, 'PUY-DE-DOME', 'Puy-de-Dôme', 1),
(71, '64', 72, '64445', 4, 'PYRENEES-ATLANTIQUES', 'Pyrénées-Atlantiques', 1),
(72, '65', 73, '65440', 4, 'HAUTES-PYRENEES', 'Hautes-Pyrénées', 1),
(73, '66', 91, '66136', 4, 'PYRENEES-ORIENTALES', 'Pyrénées-Orientales', 1),
(74, '67', 42, '67482', 2, 'BAS-RHIN', 'Bas-Rhin', 1),
(75, '68', 42, '68066', 2, 'HAUT-RHIN', 'Haut-Rhin', 1),
(76, '69', 82, '69123', 2, 'RHONE', 'Rhône', 1),
(77, '70', 43, '70550', 3, 'HAUTE-SAONE', 'Haute-Saône', 1),
(78, '71', 26, '71270', 0, 'SAONE-ET-LOIRE', 'Saône-et-Loire', 1),
(79, '72', 52, '72181', 3, 'SARTHE', 'Sarthe', 1),
(80, '73', 82, '73065', 3, 'SAVOIE', 'Savoie', 1),
(81, '74', 82, '74010', 3, 'HAUTE-SAVOIE', 'Haute-Savoie', 1),
(82, '75', 11, '75056', 0, 'PARIS', 'Paris', 1),
(83, '76', 23, '76540', 3, 'SEINE-MARITIME', 'Seine-Maritime', 1),
(84, '77', 11, '77288', 0, 'SEINE-ET-MARNE', 'Seine-et-Marne', 1),
(85, '78', 11, '78646', 4, 'YVELINES', 'Yvelines', 1),
(86, '79', 54, '79191', 4, 'DEUX-SEVRES', 'Deux-Sèvres', 1),
(87, '80', 22, '80021', 3, 'SOMME', 'Somme', 1),
(88, '81', 73, '81004', 2, 'TARN', 'Tarn', 1),
(89, '82', 73, '82121', 0, 'TARN-ET-GARONNE', 'Tarn-et-Garonne', 1),
(90, '83', 93, '83137', 2, 'VAR', 'Var', 1),
(91, '84', 93, '84007', 0, 'VAUCLUSE', 'Vaucluse', 1),
(92, '85', 52, '85191', 3, 'VENDEE', 'Vendée', 1),
(93, '86', 54, '86194', 3, 'VIENNE', 'Vienne', 1),
(94, '87', 74, '87085', 3, 'HAUTE-VIENNE', 'Haute-Vienne', 1),
(95, '88', 41, '88160', 4, 'VOSGES', 'Vosges', 1),
(96, '89', 26, '89024', 5, 'YONNE', 'Yonne', 1),
(97, '90', 43, '90010', 0, 'TERRITOIRE DE BELFORT', 'Territoire de Belfort', 1),
(98, '91', 11, '91228', 5, 'ESSONNE', 'Essonne', 1),
(99, '92', 11, '92050', 4, 'HAUTS-DE-SEINE', 'Hauts-de-Seine', 1),
(100, '93', 11, '93008', 3, 'SEINE-SAINT-DENIS', 'Seine-Saint-Denis', 1),
(101, '94', 11, '94028', 2, 'VAL-DE-MARNE', 'Val-de-Marne', 1),
(102, '95', 11, '95500', 2, 'VAL-D OISE', 'Val-d Oise', 1),
(103, 'B', 4101, NULL, NULL, 'BURGENLAND', 'Burgenland', 1),
(104, 'K', 4101, NULL, NULL, 'KAERNTEN', 'Kärnten', 1),
(105, 'N', 4101, NULL, NULL, 'NIEDEROESTERREICH', 'Niederösterreich', 1),
(106, 'O', 4101, NULL, NULL, 'OBEROESTERREICH', 'Oberösterreich', 1),
(107, 'S', 4101, NULL, NULL, 'SALZBURG', 'Salzburg', 1),
(108, 'ST', 4101, NULL, NULL, 'STEIERMARK', 'Steiermark', 1),
(109, 'T', 4101, NULL, NULL, 'TIROL', 'Tirol', 1),
(110, 'V', 4101, NULL, NULL, 'VORARLBERG', 'Vorarlberg', 1),
(111, 'W', 4101, NULL, NULL, 'WIEN', 'Wien', 1),
(112, '01', 201, '', 1, 'ANVERS', 'Anvers', 1),
(113, '02', 203, '', 3, 'BRUXELLES-CAPITALE', 'Bruxelles-Capitale', 1),
(114, '03', 202, '', 2, 'BRABANT-WALLON', 'Brabant-Wallon', 1),
(115, '04', 201, '', 1, 'BRABANT-FLAMAND', 'Brabant-Flamand', 1),
(116, '05', 201, '', 1, 'FLANDRE-OCCIDENTALE', 'Flandre-Occidentale', 1),
(117, '06', 201, '', 1, 'FLANDRE-ORIENTALE', 'Flandre-Orientale', 1),
(118, '07', 202, '', 2, 'HAINAUT', 'Hainaut', 1),
(119, '08', 201, '', 2, 'LIEGE', 'Liège', 1),
(120, '09', 202, '', 1, 'LIMBOURG', 'Limbourg', 1),
(121, '10', 202, '', 2, 'LUXEMBOURG', 'Luxembourg', 1),
(122, '11', 201, '', 2, 'NAMUR', 'Namur', 1),
(123, 'AG', 315, NULL, NULL, NULL, 'AGRIGENTO', 1),
(124, 'AL', 312, NULL, NULL, NULL, 'ALESSANDRIA', 1),
(125, 'AN', 310, NULL, NULL, NULL, 'ANCONA', 1),
(126, 'AO', 319, NULL, NULL, NULL, 'AOSTA', 1),
(127, 'AR', 316, NULL, NULL, NULL, 'AREZZO', 1),
(128, 'AP', 310, NULL, NULL, NULL, 'ASCOLI PICENO', 1),
(129, 'AT', 312, NULL, NULL, NULL, 'ASTI', 1),
(130, 'AV', 304, NULL, NULL, NULL, 'AVELLINO', 1),
(131, 'BA', 313, NULL, NULL, NULL, 'BARI', 1),
(132, 'BT', 313, NULL, NULL, NULL, 'BARLETTA-ANDRIA-TRANI', 1),
(133, 'BL', 320, NULL, NULL, NULL, 'BELLUNO', 1),
(134, 'BN', 304, NULL, NULL, NULL, 'BENEVENTO', 1),
(135, 'BG', 309, NULL, NULL, NULL, 'BERGAMO', 1),
(136, 'BI', 312, NULL, NULL, NULL, 'BIELLA', 1),
(137, 'BO', 305, NULL, NULL, NULL, 'BOLOGNA', 1),
(138, 'BZ', 317, NULL, NULL, NULL, 'BOLZANO', 1),
(139, 'BS', 309, NULL, NULL, NULL, 'BRESCIA', 1),
(140, 'BR', 313, NULL, NULL, NULL, 'BRINDISI', 1),
(141, 'CA', 314, NULL, NULL, NULL, 'CAGLIARI', 1),
(142, 'CL', 315, NULL, NULL, NULL, 'CALTANISSETTA', 1),
(143, 'CB', 311, NULL, NULL, NULL, 'CAMPOBASSO', 1),
(144, 'CI', 314, NULL, NULL, NULL, 'CARBONIA-IGLESIAS', 1),
(145, 'CE', 304, NULL, NULL, NULL, 'CASERTA', 1),
(146, 'CT', 315, NULL, NULL, NULL, 'CATANIA', 1),
(147, 'CZ', 303, NULL, NULL, NULL, 'CATANZARO', 1),
(148, 'CH', 301, NULL, NULL, NULL, 'CHIETI', 1),
(149, 'CO', 309, NULL, NULL, NULL, 'COMO', 1),
(150, 'CS', 303, NULL, NULL, NULL, 'COSENZA', 1),
(151, 'CR', 309, NULL, NULL, NULL, 'CREMONA', 1),
(152, 'KR', 303, NULL, NULL, NULL, 'CROTONE', 1),
(153, 'CN', 312, NULL, NULL, NULL, 'CUNEO', 1),
(154, 'EN', 315, NULL, NULL, NULL, 'ENNA', 1),
(155, 'FM', 310, NULL, NULL, NULL, 'FERMO', 1),
(156, 'FE', 305, NULL, NULL, NULL, 'FERRARA', 1),
(157, 'FI', 316, NULL, NULL, NULL, 'FIRENZE', 1),
(158, 'FG', 313, NULL, NULL, NULL, 'FOGGIA', 1),
(159, 'FC', 305, NULL, NULL, NULL, 'FORLI-CESENA', 1),
(160, 'FR', 307, NULL, NULL, NULL, 'FROSINONE', 1),
(161, 'GE', 308, NULL, NULL, NULL, 'GENOVA', 1),
(162, 'GO', 306, NULL, NULL, NULL, 'GORIZIA', 1),
(163, 'GR', 316, NULL, NULL, NULL, 'GROSSETO', 1),
(164, 'IM', 308, NULL, NULL, NULL, 'IMPERIA', 1),
(165, 'IS', 311, NULL, NULL, NULL, 'ISERNIA', 1),
(166, 'SP', 308, NULL, NULL, NULL, 'LA SPEZIA', 1),
(167, 'AQ', 301, NULL, NULL, NULL, 'L AQUILA', 1),
(168, 'LT', 307, NULL, NULL, NULL, 'LATINA', 1),
(169, 'LE', 313, NULL, NULL, NULL, 'LECCE', 1),
(170, 'LC', 309, NULL, NULL, NULL, 'LECCO', 1),
(171, 'LI', 314, NULL, NULL, NULL, 'LIVORNO', 1),
(172, 'LO', 309, NULL, NULL, NULL, 'LODI', 1),
(173, 'LU', 316, NULL, NULL, NULL, 'LUCCA', 1),
(174, 'MC', 310, NULL, NULL, NULL, 'MACERATA', 1),
(175, 'MN', 309, NULL, NULL, NULL, 'MANTOVA', 1),
(176, 'MS', 316, NULL, NULL, NULL, 'MASSA-CARRARA', 1),
(177, 'MT', 302, NULL, NULL, NULL, 'MATERA', 1),
(178, 'VS', 314, NULL, NULL, NULL, 'MEDIO CAMPIDANO', 1),
(179, 'ME', 315, NULL, NULL, NULL, 'MESSINA', 1),
(180, 'MI', 309, NULL, NULL, NULL, 'MILANO', 1),
(181, 'MB', 309, NULL, NULL, NULL, 'MONZA e BRIANZA', 1),
(182, 'MO', 305, NULL, NULL, NULL, 'MODENA', 1),
(183, 'NA', 304, NULL, NULL, NULL, 'NAPOLI', 1),
(184, 'NO', 312, NULL, NULL, NULL, 'NOVARA', 1),
(185, 'NU', 314, NULL, NULL, NULL, 'NUORO', 1),
(186, 'OG', 314, NULL, NULL, NULL, 'OGLIASTRA', 1),
(187, 'OT', 314, NULL, NULL, NULL, 'OLBIA-TEMPIO', 1),
(188, 'OR', 314, NULL, NULL, NULL, 'ORISTANO', 1),
(189, 'PD', 320, NULL, NULL, NULL, 'PADOVA', 1),
(190, 'PA', 315, NULL, NULL, NULL, 'PALERMO', 1),
(191, 'PR', 305, NULL, NULL, NULL, 'PARMA', 1),
(192, 'PV', 309, NULL, NULL, NULL, 'PAVIA', 1),
(193, 'PG', 318, NULL, NULL, NULL, 'PERUGIA', 1),
(194, 'PU', 310, NULL, NULL, NULL, 'PESARO e URBINO', 1),
(195, 'PE', 301, NULL, NULL, NULL, 'PESCARA', 1),
(196, 'PC', 305, NULL, NULL, NULL, 'PIACENZA', 1),
(197, 'PI', 316, NULL, NULL, NULL, 'PISA', 1),
(198, 'PT', 316, NULL, NULL, NULL, 'PISTOIA', 1),
(199, 'PN', 306, NULL, NULL, NULL, 'PORDENONE', 1),
(200, 'PZ', 302, NULL, NULL, NULL, 'POTENZA', 1),
(201, 'PO', 316, NULL, NULL, NULL, 'PRATO', 1),
(202, 'RG', 315, NULL, NULL, NULL, 'RAGUSA', 1),
(203, 'RA', 305, NULL, NULL, NULL, 'RAVENNA', 1),
(204, 'RC', 303, NULL, NULL, NULL, 'REGGIO CALABRIA', 1),
(205, 'RE', 305, NULL, NULL, NULL, 'REGGIO NELL EMILIA', 1),
(206, 'RI', 307, NULL, NULL, NULL, 'RIETI', 1),
(207, 'RN', 305, NULL, NULL, NULL, 'RIMINI', 1),
(208, 'RM', 307, NULL, NULL, NULL, 'ROMA', 1),
(209, 'RO', 320, NULL, NULL, NULL, 'ROVIGO', 1),
(210, 'SA', 304, NULL, NULL, NULL, 'SALERNO', 1),
(211, 'SS', 314, NULL, NULL, NULL, 'SASSARI', 1),
(212, 'SV', 308, NULL, NULL, NULL, 'SAVONA', 1),
(213, 'SI', 316, NULL, NULL, NULL, 'SIENA', 1),
(214, 'SR', 315, NULL, NULL, NULL, 'SIRACUSA', 1),
(215, 'SO', 309, NULL, NULL, NULL, 'SONDRIO', 1),
(216, 'TA', 313, NULL, NULL, NULL, 'TARANTO', 1),
(217, 'TE', 301, NULL, NULL, NULL, 'TERAMO', 1),
(218, 'TR', 318, NULL, NULL, NULL, 'TERNI', 1),
(219, 'TO', 312, NULL, NULL, NULL, 'TORINO', 1),
(220, 'TP', 315, NULL, NULL, NULL, 'TRAPANI', 1),
(221, 'TN', 317, NULL, NULL, NULL, 'TRENTO', 1),
(222, 'TV', 320, NULL, NULL, NULL, 'TREVISO', 1),
(223, 'TS', 306, NULL, NULL, NULL, 'TRIESTE', 1),
(224, 'UD', 306, NULL, NULL, NULL, 'UDINE', 1),
(225, 'VA', 309, NULL, NULL, NULL, 'VARESE', 1),
(226, 'VE', 320, NULL, NULL, NULL, 'VENEZIA', 1),
(227, 'VB', 312, NULL, NULL, NULL, 'VERBANO-CUSIO-OSSOLA', 1),
(228, 'VC', 312, NULL, NULL, NULL, 'VERCELLI', 1),
(229, 'VR', 320, NULL, NULL, NULL, 'VERONA', 1),
(230, 'VV', 303, NULL, NULL, NULL, 'VIBO VALENTIA', 1),
(231, 'VI', 320, NULL, NULL, NULL, 'VICENZA', 1),
(232, 'VT', 307, NULL, NULL, NULL, 'VITERBO', 1),
(233, 'AL01', 1301, '', 0, '', 'Wilaya d\'Adrar', 1),
(234, 'AL02', 1301, '', 0, '', 'Wilaya de Chlef', 1),
(235, 'AL03', 1301, '', 0, '', 'Wilaya de Laghouat', 1),
(236, 'AL04', 1301, '', 0, '', 'Wilaya d\'Oum El Bouaghi', 1),
(237, 'AL05', 1301, '', 0, '', 'Wilaya de Batna', 1),
(238, 'AL06', 1301, '', 0, '', 'Wilaya de Béjaïa', 1),
(239, 'AL07', 1301, '', 0, '', 'Wilaya de Biskra', 1),
(240, 'AL08', 1301, '', 0, '', 'Wilaya de Béchar', 1),
(241, 'AL09', 1301, '', 0, '', 'Wilaya de Blida', 1),
(242, 'AL10', 1301, '', 0, '', 'Wilaya de Bouira', 1),
(243, 'AL11', 1301, '', 0, '', 'Wilaya de Tamanrasset', 1),
(244, 'AL12', 1301, '', 0, '', 'Wilaya de Tébessa', 1),
(245, 'AL13', 1301, '', 0, '', 'Wilaya de Tlemcen', 1),
(246, 'AL14', 1301, '', 0, '', 'Wilaya de Tiaret', 1),
(247, 'AL15', 1301, '', 0, '', 'Wilaya de Tizi Ouzou', 1),
(248, 'AL16', 1301, '', 0, '', 'Wilaya d\'Alger', 1),
(249, 'AL17', 1301, '', 0, '', 'Wilaya de Djelfa', 1),
(250, 'AL18', 1301, '', 0, '', 'Wilaya de Jijel', 1),
(251, 'AL19', 1301, '', 0, '', 'Wilaya de Sétif	', 1),
(252, 'AL20', 1301, '', 0, '', 'Wilaya de Saïda', 1),
(253, 'AL21', 1301, '', 0, '', 'Wilaya de Skikda', 1),
(254, 'AL22', 1301, '', 0, '', 'Wilaya de Sidi Bel Abbès', 1),
(255, 'AL23', 1301, '', 0, '', 'Wilaya d\'Annaba', 1),
(256, 'AL24', 1301, '', 0, '', 'Wilaya de Guelma', 1),
(257, 'AL25', 1301, '', 0, '', 'Wilaya de Constantine', 1),
(258, 'AL26', 1301, '', 0, '', 'Wilaya de Médéa', 1),
(259, 'AL27', 1301, '', 0, '', 'Wilaya de Mostaganem', 1),
(260, 'AL28', 1301, '', 0, '', 'Wilaya de M\'Sila', 1),
(261, 'AL29', 1301, '', 0, '', 'Wilaya de Mascara', 1),
(262, 'AL30', 1301, '', 0, '', 'Wilaya d\'Ouargla', 1),
(263, 'AL31', 1301, '', 0, '', 'Wilaya d\'Oran', 1),
(264, 'AL32', 1301, '', 0, '', 'Wilaya d\'El Bayadh', 1),
(265, 'AL33', 1301, '', 0, '', 'Wilaya d\'Illizi', 1),
(266, 'AL34', 1301, '', 0, '', 'Wilaya de Bordj Bou Arreridj', 1),
(267, 'AL35', 1301, '', 0, '', 'Wilaya de Boumerdès', 1),
(268, 'AL36', 1301, '', 0, '', 'Wilaya d\'El Tarf', 1),
(269, 'AL37', 1301, '', 0, '', 'Wilaya de Tindouf', 1),
(270, 'AL38', 1301, '', 0, '', 'Wilaya de Tissemsilt', 1),
(271, 'AL39', 1301, '', 0, '', 'Wilaya d\'El Oued', 1),
(272, 'AL40', 1301, '', 0, '', 'Wilaya de Khenchela', 1),
(273, 'AL41', 1301, '', 0, '', 'Wilaya de Souk Ahras', 1),
(274, 'AL42', 1301, '', 0, '', 'Wilaya de Tipaza', 1),
(275, 'AL43', 1301, '', 0, '', 'Wilaya de Mila', 1),
(276, 'AL44', 1301, '', 0, '', 'Wilaya d\'Aïn Defla', 1),
(277, 'AL45', 1301, '', 0, '', 'Wilaya de Naâma', 1),
(278, 'AL46', 1301, '', 0, '', 'Wilaya d\'Aïn Témouchent', 1),
(279, 'AL47', 1301, '', 0, '', 'Wilaya de Ghardaia', 1),
(280, 'AL48', 1301, '', 0, '', 'Wilaya de Relizane', 1),
(281, 'MA', 1209, '', 0, '', 'Province de Benslimane', 1),
(282, 'MA1', 1209, '', 0, '', 'Province de Berrechid', 1),
(283, 'MA2', 1209, '', 0, '', 'Province de Khouribga', 1),
(284, 'MA3', 1209, '', 0, '', 'Province de Settat', 1),
(285, 'MA4', 1210, '', 0, '', 'Province d\'El Jadida', 1),
(286, 'MA5', 1210, '', 0, '', 'Province de Safi', 1),
(287, 'MA6', 1210, '', 0, '', 'Province de Sidi Bennour', 1),
(288, 'MA7', 1210, '', 0, '', 'Province de Youssoufia', 1),
(289, 'MA6B', 1205, '', 0, '', 'Préfecture de Fès', 1),
(290, 'MA7B', 1205, '', 0, '', 'Province de Boulemane', 1),
(291, 'MA8', 1205, '', 0, '', 'Province de Moulay Yacoub', 1),
(292, 'MA9', 1205, '', 0, '', 'Province de Sefrou', 1),
(293, 'MA8A', 1202, '', 0, '', 'Province de Kénitra', 1),
(294, 'MA9A', 1202, '', 0, '', 'Province de Sidi Kacem', 1),
(295, 'MA10', 1202, '', 0, '', 'Province de Sidi Slimane', 1),
(296, 'MA11', 1208, '', 0, '', 'Préfecture de Casablanca', 1),
(297, 'MA12', 1208, '', 0, '', 'Préfecture de Mohammédia', 1),
(298, 'MA13', 1208, '', 0, '', 'Province de Médiouna', 1),
(299, 'MA14', 1208, '', 0, '', 'Province de Nouaceur', 1),
(300, 'MA15', 1214, '', 0, '', 'Province d\'Assa-Zag', 1),
(301, 'MA16', 1214, '', 0, '', 'Province d\'Es-Semara', 1),
(302, 'MA17A', 1214, '', 0, '', 'Province de Guelmim', 1),
(303, 'MA18', 1214, '', 0, '', 'Province de Tata', 1),
(304, 'MA19', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(305, 'MA15', 1215, '', 0, '', 'Province de Boujdour', 1),
(306, 'MA16', 1215, '', 0, '', 'Province de Lâayoune', 1),
(307, 'MA17', 1215, '', 0, '', 'Province de Tarfaya', 1),
(308, 'MA18', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(309, 'MA19', 1211, '', 0, '', 'Province d\'Al Haouz', 1),
(310, 'MA20', 1211, '', 0, '', 'Province de Chichaoua', 1),
(311, 'MA21', 1211, '', 0, '', 'Province d\'El Kelâa des Sraghna', 1),
(312, 'MA22', 1211, '', 0, '', 'Province d\'Essaouira', 1),
(313, 'MA23', 1211, '', 0, '', 'Province de Rehamna', 1),
(314, 'MA24', 1206, '', 0, '', 'Préfecture de Meknès', 1),
(315, 'MA25', 1206, '', 0, '', 'Province d’El Hajeb', 1),
(316, 'MA26', 1206, '', 0, '', 'Province d\'Errachidia', 1),
(317, 'MA27', 1206, '', 0, '', 'Province d’Ifrane', 1),
(318, 'MA28', 1206, '', 0, '', 'Province de Khénifra', 1),
(319, 'MA29', 1206, '', 0, '', 'Province de Midelt', 1),
(320, 'MA30', 1204, '', 0, '', 'Préfecture d\'Oujda-Angad', 1),
(321, 'MA31', 1204, '', 0, '', 'Province de Berkane', 1),
(322, 'MA32', 1204, '', 0, '', 'Province de Driouch', 1),
(323, 'MA33', 1204, '', 0, '', 'Province de Figuig', 1),
(324, 'MA34', 1204, '', 0, '', 'Province de Jerada', 1),
(325, 'MA35', 1204, '', 0, '', 'Province de Nador', 1),
(326, 'MA36', 1204, '', 0, '', 'Province de Taourirt', 1),
(327, 'MA37', 1216, '', 0, '', 'Province d\'Aousserd', 1),
(328, 'MA38', 1216, '', 0, '', 'Province d\'Oued Ed-Dahab', 1),
(329, 'MA39', 1207, '', 0, '', 'Préfecture de Rabat', 1),
(330, 'MA40', 1207, '', 0, '', 'Préfecture de Skhirat-Témara', 1),
(331, 'MA41', 1207, '', 0, '', 'Préfecture de Salé', 1),
(332, 'MA42', 1207, '', 0, '', 'Province de Khémisset', 1),
(333, 'MA43', 1213, '', 0, '', 'Préfecture d\'Agadir Ida-Outanane', 1),
(334, 'MA44', 1213, '', 0, '', 'Préfecture d\'Inezgane-Aït Melloul', 1),
(335, 'MA45', 1213, '', 0, '', 'Province de Chtouka-Aït Baha', 1),
(336, 'MA46', 1213, '', 0, '', 'Province d\'Ouarzazate', 1),
(337, 'MA47', 1213, '', 0, '', 'Province de Sidi Ifni', 1),
(338, 'MA48', 1213, '', 0, '', 'Province de Taroudant', 1),
(339, 'MA49', 1213, '', 0, '', 'Province de Tinghir', 1),
(340, 'MA50', 1213, '', 0, '', 'Province de Tiznit', 1),
(341, 'MA51', 1213, '', 0, '', 'Province de Zagora', 1),
(342, 'MA52', 1212, '', 0, '', 'Province d\'Azilal', 1),
(343, 'MA53', 1212, '', 0, '', 'Province de Beni Mellal', 1),
(344, 'MA54', 1212, '', 0, '', 'Province de Fquih Ben Salah', 1),
(345, 'MA55', 1201, '', 0, '', 'Préfecture de M\'diq-Fnideq', 1),
(346, 'MA56', 1201, '', 0, '', 'Préfecture de Tanger-Asilah', 1),
(347, 'MA57', 1201, '', 0, '', 'Province de Chefchaouen', 1),
(348, 'MA58', 1201, '', 0, '', 'Province de Fahs-Anjra', 1),
(349, 'MA59', 1201, '', 0, '', 'Province de Larache', 1),
(350, 'MA60', 1201, '', 0, '', 'Province d\'Ouezzane', 1),
(351, 'MA61', 1201, '', 0, '', 'Province de Tétouan', 1),
(352, 'MA62', 1203, '', 0, '', 'Province de Guercif', 1),
(353, 'MA63', 1203, '', 0, '', 'Province d\'Al Hoceïma', 1),
(354, 'MA64', 1203, '', 0, '', 'Province de Taounate', 1),
(355, 'MA65', 1203, '', 0, '', 'Province de Taza', 1),
(356, 'MA6A', 1205, '', 0, '', 'Préfecture de Fès', 1),
(357, 'MA7A', 1205, '', 0, '', 'Province de Boulemane', 1),
(358, 'MA15A', 1214, '', 0, '', 'Province d\'Assa-Zag', 1),
(359, 'MA16A', 1214, '', 0, '', 'Province d\'Es-Semara', 1),
(360, 'MA18A', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(361, 'MA19A', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(362, 'MA19B', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(363, 'TN01', 1001, '', 0, '', 'Ariana', 1),
(364, 'TN02', 1001, '', 0, '', 'Béja', 1),
(365, 'TN03', 1001, '', 0, '', 'Ben Arous', 1),
(366, 'TN04', 1001, '', 0, '', 'Bizerte', 1),
(367, 'TN05', 1001, '', 0, '', 'Gabès', 1),
(368, 'TN06', 1001, '', 0, '', 'Gafsa', 1),
(369, 'TN07', 1001, '', 0, '', 'Jendouba', 1),
(370, 'TN08', 1001, '', 0, '', 'Kairouan', 1),
(371, 'TN09', 1001, '', 0, '', 'Kasserine', 1),
(372, 'TN10', 1001, '', 0, '', 'Kébili', 1),
(373, 'TN11', 1001, '', 0, '', 'La Manouba', 1),
(374, 'TN12', 1001, '', 0, '', 'Le Kef', 1),
(375, 'TN13', 1001, '', 0, '', 'Mahdia', 1),
(376, 'TN14', 1001, '', 0, '', 'Médenine', 1),
(377, 'TN15', 1001, '', 0, '', 'Monastir', 1),
(378, 'TN16', 1001, '', 0, '', 'Nabeul', 1),
(379, 'TN17', 1001, '', 0, '', 'Sfax', 1),
(380, 'TN18', 1001, '', 0, '', 'Sidi Bouzid', 1),
(381, 'TN19', 1001, '', 0, '', 'Siliana', 1),
(382, 'TN20', 1001, '', 0, '', 'Sousse', 1),
(383, 'TN21', 1001, '', 0, '', 'Tataouine', 1),
(384, 'TN22', 1001, '', 0, '', 'Tozeur', 1),
(385, 'TN23', 1001, '', 0, '', 'Tunis', 1),
(386, 'TN24', 1001, '', 0, '', 'Zaghouan', 1),
(387, '001', 5201, '', 0, '', 'Belisario Boeto', 1),
(388, '002', 5201, '', 0, '', 'Hernando Siles', 1),
(389, '003', 5201, '', 0, '', 'Jaime Zudáñez', 1),
(390, '004', 5201, '', 0, '', 'Juana Azurduy de Padilla', 1),
(391, '005', 5201, '', 0, '', 'Luis Calvo', 1),
(392, '006', 5201, '', 0, '', 'Nor Cinti', 1),
(393, '007', 5201, '', 0, '', 'Oropeza', 1),
(394, '008', 5201, '', 0, '', 'Sud Cinti', 1),
(395, '009', 5201, '', 0, '', 'Tomina', 1),
(396, '010', 5201, '', 0, '', 'Yamparáez', 1),
(397, '011', 5202, '', 0, '', 'Abel Iturralde', 1),
(398, '012', 5202, '', 0, '', 'Aroma', 1),
(399, '013', 5202, '', 0, '', 'Bautista Saavedra', 1),
(400, '014', 5202, '', 0, '', 'Caranavi', 1),
(401, '015', 5202, '', 0, '', 'Eliodoro Camacho', 1),
(402, '016', 5202, '', 0, '', 'Franz Tamayo', 1),
(403, '017', 5202, '', 0, '', 'Gualberto Villarroel', 1),
(404, '018', 5202, '', 0, '', 'Ingaví', 1),
(405, '019', 5202, '', 0, '', 'Inquisivi', 1),
(406, '020', 5202, '', 0, '', 'José Ramón Loayza', 1),
(407, '021', 5202, '', 0, '', 'Larecaja', 1),
(408, '022', 5202, '', 0, '', 'Los Andes (Bolivia)', 1),
(409, '023', 5202, '', 0, '', 'Manco Kapac', 1),
(410, '024', 5202, '', 0, '', 'Muñecas', 1),
(411, '025', 5202, '', 0, '', 'Nor Yungas', 1),
(412, '026', 5202, '', 0, '', 'Omasuyos', 1),
(413, '027', 5202, '', 0, '', 'Pacajes', 1),
(414, '028', 5202, '', 0, '', 'Pedro Domingo Murillo', 1),
(415, '029', 5202, '', 0, '', 'Sud Yungas', 1),
(416, '030', 5202, '', 0, '', 'General José Manuel Pando', 1),
(417, '031', 5203, '', 0, '', 'Arani', 1),
(418, '032', 5203, '', 0, '', 'Arque', 1),
(419, '033', 5203, '', 0, '', 'Ayopaya', 1),
(420, '034', 5203, '', 0, '', 'Bolívar (Bolivia)', 1),
(421, '035', 5203, '', 0, '', 'Campero', 1),
(422, '036', 5203, '', 0, '', 'Capinota', 1),
(423, '037', 5203, '', 0, '', 'Cercado (Cochabamba)', 1),
(424, '038', 5203, '', 0, '', 'Esteban Arze', 1),
(425, '039', 5203, '', 0, '', 'Germán Jordán', 1),
(426, '040', 5203, '', 0, '', 'José Carrasco', 1),
(427, '041', 5203, '', 0, '', 'Mizque', 1),
(428, '042', 5203, '', 0, '', 'Punata', 1),
(429, '043', 5203, '', 0, '', 'Quillacollo', 1),
(430, '044', 5203, '', 0, '', 'Tapacarí', 1),
(431, '045', 5203, '', 0, '', 'Tiraque', 1),
(432, '046', 5203, '', 0, '', 'Chapare', 1),
(433, '047', 5204, '', 0, '', 'Carangas', 1),
(434, '048', 5204, '', 0, '', 'Cercado (Oruro)', 1),
(435, '049', 5204, '', 0, '', 'Eduardo Avaroa', 1),
(436, '050', 5204, '', 0, '', 'Ladislao Cabrera', 1),
(437, '051', 5204, '', 0, '', 'Litoral de Atacama', 1),
(438, '052', 5204, '', 0, '', 'Mejillones', 1),
(439, '053', 5204, '', 0, '', 'Nor Carangas', 1),
(440, '054', 5204, '', 0, '', 'Pantaleón Dalence', 1),
(441, '055', 5204, '', 0, '', 'Poopó', 1),
(442, '056', 5204, '', 0, '', 'Sabaya', 1),
(443, '057', 5204, '', 0, '', 'Sajama', 1),
(444, '058', 5204, '', 0, '', 'San Pedro de Totora', 1),
(445, '059', 5204, '', 0, '', 'Saucarí', 1),
(446, '060', 5204, '', 0, '', 'Sebastián Pagador', 1),
(447, '061', 5204, '', 0, '', 'Sud Carangas', 1),
(448, '062', 5204, '', 0, '', 'Tomás Barrón', 1),
(449, '063', 5205, '', 0, '', 'Alonso de Ibáñez', 1),
(450, '064', 5205, '', 0, '', 'Antonio Quijarro', 1),
(451, '065', 5205, '', 0, '', 'Bernardino Bilbao', 1),
(452, '066', 5205, '', 0, '', 'Charcas (Potosí)', 1),
(453, '067', 5205, '', 0, '', 'Chayanta', 1),
(454, '068', 5205, '', 0, '', 'Cornelio Saavedra', 1),
(455, '069', 5205, '', 0, '', 'Daniel Campos', 1),
(456, '070', 5205, '', 0, '', 'Enrique Baldivieso', 1),
(457, '071', 5205, '', 0, '', 'José María Linares', 1),
(458, '072', 5205, '', 0, '', 'Modesto Omiste', 1),
(459, '073', 5205, '', 0, '', 'Nor Chichas', 1),
(460, '074', 5205, '', 0, '', 'Nor Lípez', 1),
(461, '075', 5205, '', 0, '', 'Rafael Bustillo', 1),
(462, '076', 5205, '', 0, '', 'Sud Chichas', 1),
(463, '077', 5205, '', 0, '', 'Sud Lípez', 1),
(464, '078', 5205, '', 0, '', 'Tomás Frías', 1),
(465, '079', 5206, '', 0, '', 'Aniceto Arce', 1),
(466, '080', 5206, '', 0, '', 'Burdet O\'Connor', 1),
(467, '081', 5206, '', 0, '', 'Cercado (Tarija)', 1),
(468, '082', 5206, '', 0, '', 'Eustaquio Méndez', 1),
(469, '083', 5206, '', 0, '', 'José María Avilés', 1),
(470, '084', 5206, '', 0, '', 'Gran Chaco', 1),
(471, '085', 5207, '', 0, '', 'Andrés Ibáñez', 1),
(472, '086', 5207, '', 0, '', 'Caballero', 1),
(473, '087', 5207, '', 0, '', 'Chiquitos', 1),
(474, '088', 5207, '', 0, '', 'Cordillera (Bolivia)', 1),
(475, '089', 5207, '', 0, '', 'Florida', 1),
(476, '090', 5207, '', 0, '', 'Germán Busch', 1),
(477, '091', 5207, '', 0, '', 'Guarayos', 1),
(478, '092', 5207, '', 0, '', 'Ichilo', 1),
(479, '093', 5207, '', 0, '', 'Obispo Santistevan', 1),
(480, '094', 5207, '', 0, '', 'Sara', 1),
(481, '095', 5207, '', 0, '', 'Vallegrande', 1),
(482, '096', 5207, '', 0, '', 'Velasco', 1),
(483, '097', 5207, '', 0, '', 'Warnes', 1),
(484, '098', 5207, '', 0, '', 'Ángel Sandóval', 1),
(485, '099', 5207, '', 0, '', 'Ñuflo de Chaves', 1),
(486, '100', 5208, '', 0, '', 'Cercado (Beni)', 1),
(487, '101', 5208, '', 0, '', 'Iténez', 1),
(488, '102', 5208, '', 0, '', 'Mamoré', 1),
(489, '103', 5208, '', 0, '', 'Marbán', 1),
(490, '104', 5208, '', 0, '', 'Moxos', 1),
(491, '105', 5208, '', 0, '', 'Vaca Díez', 1),
(492, '106', 5208, '', 0, '', 'Yacuma', 1),
(493, '107', 5208, '', 0, '', 'General José Ballivián Segurola', 1),
(494, '108', 5209, '', 0, '', 'Abuná', 1),
(495, '109', 5209, '', 0, '', 'Madre de Dios', 1),
(496, '110', 5209, '', 0, '', 'Manuripi', 1),
(497, '111', 5209, '', 0, '', 'Nicolás Suárez', 1),
(498, '112', 5209, '', 0, '', 'General Federico Román', 1),
(499, 'NSW', 2801, '', 1, '', 'New South Wales', 1),
(500, 'VIC', 2801, '', 1, '', 'Victoria', 1),
(501, 'QLD', 2801, '', 1, '', 'Queensland', 1),
(502, 'SA', 2801, '', 1, '', 'South Australia', 1),
(503, 'ACT', 2801, '', 1, '', 'Australia Capital Territory', 1),
(504, 'TAS', 2801, '', 1, '', 'Tasmania', 1),
(505, 'WA', 2801, '', 1, '', 'Western Australia', 1),
(506, 'NT', 2801, '', 1, '', 'Northern Territory', 1),
(507, 'ON', 1401, '', 1, '', 'Ontario', 1),
(508, 'QC', 1401, '', 1, '', 'Quebec', 1),
(509, 'NS', 1401, '', 1, '', 'Nova Scotia', 1),
(510, 'NB', 1401, '', 1, '', 'New Brunswick', 1),
(511, 'MB', 1401, '', 1, '', 'Manitoba', 1),
(512, 'BC', 1401, '', 1, '', 'British Columbia', 1),
(513, 'PE', 1401, '', 1, '', 'Prince Edward Island', 1),
(514, 'SK', 1401, '', 1, '', 'Saskatchewan', 1),
(515, 'AB', 1401, '', 1, '', 'Alberta', 1),
(516, 'NL', 1401, '', 1, '', 'Newfoundland and Labrador', 1),
(517, 'VI', 419, '', 19, 'ALAVA', 'Álava', 1),
(518, 'AB', 404, '', 4, 'ALBACETE', 'Albacete', 1),
(519, 'A', 411, '', 11, 'ALICANTE', 'Alicante', 1),
(520, 'AL', 401, '', 1, 'ALMERIA', 'Almería', 1),
(521, 'AV', 403, '', 3, 'AVILA', 'Avila', 1),
(522, 'BA', 412, '', 12, 'BADAJOZ', 'Badajoz', 1),
(523, 'PM', 414, '', 14, 'ISLAS BALEARES', 'Islas Baleares', 1),
(524, 'B', 406, '', 6, 'BARCELONA', 'Barcelona', 1),
(525, 'BU', 403, '', 8, 'BURGOS', 'Burgos', 1),
(526, 'CC', 412, '', 12, 'CACERES', 'Cáceres', 1),
(527, 'CA', 401, '', 1, 'CADIZ', 'Cádiz', 1),
(528, 'CS', 411, '', 11, 'CASTELLON', 'Castellón', 1),
(529, 'CR', 404, '', 4, 'CIUDAD REAL', 'Ciudad Real', 1),
(530, 'CO', 401, '', 1, 'CORDOBA', 'Córdoba', 1),
(531, 'C', 413, '', 13, 'LA CORUÑA', 'La Coruña', 1),
(532, 'CU', 404, '', 4, 'CUENCA', 'Cuenca', 1),
(533, 'GI', 406, '', 6, 'GERONA', 'Gerona', 1),
(534, 'GR', 401, '', 1, 'GRANADA', 'Granada', 1),
(535, 'GU', 404, '', 4, 'GUADALAJARA', 'Guadalajara', 1),
(536, 'SS', 419, '', 19, 'GUIPUZCOA', 'Guipúzcoa', 1),
(537, 'H', 401, '', 1, 'HUELVA', 'Huelva', 1),
(538, 'HU', 402, '', 2, 'HUESCA', 'Huesca', 1),
(539, 'J', 401, '', 1, 'JAEN', 'Jaén', 1),
(540, 'LE', 403, '', 3, 'LEON', 'León', 1),
(541, 'L', 406, '', 6, 'LERIDA', 'Lérida', 1),
(542, 'LO', 415, '', 15, 'LA RIOJA', 'La Rioja', 1),
(543, 'LU', 413, '', 13, 'LUGO', 'Lugo', 1),
(544, 'M', 416, '', 16, 'MADRID', 'Madrid', 1),
(545, 'MA', 401, '', 1, 'MALAGA', 'Málaga', 1),
(546, 'MU', 417, '', 17, 'MURCIA', 'Murcia', 1),
(547, 'NA', 408, '', 8, 'NAVARRA', 'Navarra', 1),
(548, 'OR', 413, '', 13, 'ORENSE', 'Orense', 1),
(549, 'O', 418, '', 18, 'ASTURIAS', 'Asturias', 1),
(550, 'P', 403, '', 3, 'PALENCIA', 'Palencia', 1),
(551, 'GC', 405, '', 5, 'LAS PALMAS', 'Las Palmas', 1),
(552, 'PO', 413, '', 13, 'PONTEVEDRA', 'Pontevedra', 1),
(553, 'SA', 403, '', 3, 'SALAMANCA', 'Salamanca', 1),
(554, 'TF', 405, '', 5, 'STA. CRUZ DE TENERIFE', 'Sta. Cruz de Tenerife', 1),
(555, 'S', 410, '', 10, 'CANTABRIA', 'Cantabria', 1),
(556, 'SG', 403, '', 3, 'SEGOVIA', 'Segovia', 1),
(557, 'SE', 401, '', 1, 'SEVILLA', 'Sevilla', 1),
(558, 'SO', 403, '', 3, 'SORIA', 'Soria', 1),
(559, 'T', 406, '', 6, 'TARRAGONA', 'Tarragona', 1),
(560, 'TE', 402, '', 2, 'TERUEL', 'Teruel', 1),
(561, 'TO', 404, '', 5, 'TOLEDO', 'Toledo', 1),
(562, 'V', 411, '', 11, 'VALENCIA', 'Valencia', 1),
(563, 'VA', 403, '', 3, 'VALLADOLID', 'Valladolid', 1),
(564, 'BI', 419, '', 19, 'VIZCAYA', 'Vizcaya', 1),
(565, 'ZA', 403, '', 3, 'ZAMORA', 'Zamora', 1),
(566, 'Z', 402, '', 1, 'ZARAGOZA', 'Zaragoza', 1),
(567, 'CE', 407, '', 7, 'CEUTA', 'Ceuta', 1),
(568, 'ML', 409, '', 9, 'MELILLA', 'Melilla', 1),
(569, 'BW', 501, NULL, NULL, 'BADEN-WÜRTTEMBERG', 'Baden-Württemberg', 1),
(570, 'BY', 501, NULL, NULL, 'BAYERN', 'Bayern', 1),
(571, 'BE', 501, NULL, NULL, 'BERLIN', 'Berlin', 1),
(572, 'BB', 501, NULL, NULL, 'BRANDENBURG', 'Brandenburg', 1),
(573, 'HB', 501, NULL, NULL, 'BREMEN', 'Bremen', 1),
(574, 'HH', 501, NULL, NULL, 'HAMBURG', 'Hamburg', 1),
(575, 'HE', 501, NULL, NULL, 'HESSEN', 'Hessen', 1),
(576, 'MV', 501, NULL, NULL, 'MECKLENBURG-VORPOMMERN', 'Mecklenburg-Vorpommern', 1),
(577, 'NI', 501, NULL, NULL, 'NIEDERSACHSEN', 'Niedersachsen', 1),
(578, 'NW', 501, NULL, NULL, 'NORDRHEIN-WESTFALEN', 'Nordrhein-Westfalen', 1),
(579, 'RP', 501, NULL, NULL, 'RHEINLAND-PFALZ', 'Rheinland-Pfalz', 1),
(580, 'SL', 501, NULL, NULL, 'SAARLAND', 'Saarland', 1),
(581, 'SN', 501, NULL, NULL, 'SACHSEN', 'Sachsen', 1),
(582, 'ST', 501, NULL, NULL, 'SACHSEN-ANHALT', 'Sachsen-Anhalt', 1),
(583, 'SH', 501, NULL, NULL, 'SCHLESWIG-HOLSTEIN', 'Schleswig-Holstein', 1),
(584, 'TH', 501, NULL, NULL, 'THÜRINGEN', 'Thüringen', 1),
(585, '66', 10201, '', 0, '', 'Αθήνα', 1),
(586, '67', 10205, '', 0, '', 'Δράμα', 1),
(587, '01', 10205, '', 0, '', 'Έβρος', 1),
(588, '02', 10205, '', 0, '', 'Θάσος', 1),
(589, '03', 10205, '', 0, '', 'Καβάλα', 1),
(590, '04', 10205, '', 0, '', 'Ξάνθη', 1),
(591, '05', 10205, '', 0, '', 'Ροδόπη', 1),
(592, '06', 10203, '', 0, '', 'Ημαθία', 1),
(593, '07', 10203, '', 0, '', 'Θεσσαλονίκη', 1),
(594, '08', 10203, '', 0, '', 'Κιλκίς', 1),
(595, '09', 10203, '', 0, '', 'Πέλλα', 1),
(596, '10', 10203, '', 0, '', 'Πιερία', 1),
(597, '11', 10203, '', 0, '', 'Σέρρες', 1),
(598, '12', 10203, '', 0, '', 'Χαλκιδική', 1),
(599, '13', 10206, '', 0, '', 'Άρτα', 1),
(600, '14', 10206, '', 0, '', 'Θεσπρωτία', 1),
(601, '15', 10206, '', 0, '', 'Ιωάννινα', 1),
(602, '16', 10206, '', 0, '', 'Πρέβεζα', 1),
(603, '17', 10213, '', 0, '', 'Γρεβενά', 1),
(604, '18', 10213, '', 0, '', 'Καστοριά', 1),
(605, '19', 10213, '', 0, '', 'Κοζάνη', 1),
(606, '20', 10213, '', 0, '', 'Φλώρινα', 1),
(607, '21', 10212, '', 0, '', 'Καρδίτσα', 1),
(608, '22', 10212, '', 0, '', 'Λάρισα', 1),
(609, '23', 10212, '', 0, '', 'Μαγνησία', 1),
(610, '24', 10212, '', 0, '', 'Τρίκαλα', 1),
(611, '25', 10212, '', 0, '', 'Σποράδες', 1),
(612, '26', 10212, '', 0, '', 'Βοιωτία', 1),
(613, '27', 10202, '', 0, '', 'Εύβοια', 1),
(614, '28', 10202, '', 0, '', 'Ευρυτανία', 1),
(615, '29', 10202, '', 0, '', 'Φθιώτιδα', 1),
(616, '30', 10202, '', 0, '', 'Φωκίδα', 1),
(617, '31', 10209, '', 0, '', 'Αργολίδα', 1),
(618, '32', 10209, '', 0, '', 'Αρκαδία', 1),
(619, '33', 10209, '', 0, '', 'Κορινθία', 1),
(620, '34', 10209, '', 0, '', 'Λακωνία', 1),
(621, '35', 10209, '', 0, '', 'Μεσσηνία', 1),
(622, '36', 10211, '', 0, '', 'Αιτωλοακαρνανία', 1),
(623, '37', 10211, '', 0, '', 'Αχαΐα', 1),
(624, '38', 10211, '', 0, '', 'Ηλεία', 1),
(625, '39', 10207, '', 0, '', 'Ζάκυνθος', 1),
(626, '40', 10207, '', 0, '', 'Κέρκυρα', 1),
(627, '41', 10207, '', 0, '', 'Κεφαλληνία', 1),
(628, '42', 10207, '', 0, '', 'Ιθάκη', 1),
(629, '43', 10207, '', 0, '', 'Λευκάδα', 1),
(630, '44', 10208, '', 0, '', 'Ικαρία', 1),
(631, '45', 10208, '', 0, '', 'Λέσβος', 1),
(632, '46', 10208, '', 0, '', 'Λήμνος', 1),
(633, '47', 10208, '', 0, '', 'Σάμος', 1),
(634, '48', 10208, '', 0, '', 'Χίος', 1),
(635, '49', 10210, '', 0, '', 'Άνδρος', 1),
(636, '50', 10210, '', 0, '', 'Θήρα', 1),
(637, '51', 10210, '', 0, '', 'Κάλυμνος', 1),
(638, '52', 10210, '', 0, '', 'Κάρπαθος', 1),
(639, '53', 10210, '', 0, '', 'Κέα-Κύθνος', 1),
(640, '54', 10210, '', 0, '', 'Κω', 1),
(641, '55', 10210, '', 0, '', 'Μήλος', 1),
(642, '56', 10210, '', 0, '', 'Μύκονος', 1),
(643, '57', 10210, '', 0, '', 'Νάξος', 1),
(644, '58', 10210, '', 0, '', 'Πάρος', 1),
(645, '59', 10210, '', 0, '', 'Ρόδος', 1),
(646, '60', 10210, '', 0, '', 'Σύρος', 1),
(647, '61', 10210, '', 0, '', 'Τήνος', 1),
(648, '62', 10204, '', 0, '', 'Ηράκλειο', 1),
(649, '63', 10204, '', 0, '', 'Λασίθι', 1),
(650, '64', 10204, '', 0, '', 'Ρέθυμνο', 1),
(651, '65', 10204, '', 0, '', 'Χανιά', 1),
(652, 'AG', 601, NULL, NULL, 'ARGOVIE', 'Argovie', 1),
(653, 'AI', 601, NULL, NULL, 'APPENZELL RHODES INTERIEURES', 'Appenzell Rhodes intérieures', 1),
(654, 'AR', 601, NULL, NULL, 'APPENZELL RHODES EXTERIEURES', 'Appenzell Rhodes extérieures', 1),
(655, 'BE', 601, NULL, NULL, 'BERNE', 'Berne', 1),
(656, 'BL', 601, NULL, NULL, 'BALE CAMPAGNE', 'Bâle Campagne', 1),
(657, 'BS', 601, NULL, NULL, 'BALE VILLE', 'Bâle Ville', 1),
(658, 'FR', 601, NULL, NULL, 'FRIBOURG', 'Fribourg', 1),
(659, 'GE', 601, NULL, NULL, 'GENEVE', 'Genève', 1),
(660, 'GL', 601, NULL, NULL, 'GLARIS', 'Glaris', 1),
(661, 'GR', 601, NULL, NULL, 'GRISONS', 'Grisons', 1),
(662, 'JU', 601, NULL, NULL, 'JURA', 'Jura', 1),
(663, 'LU', 601, NULL, NULL, 'LUCERNE', 'Lucerne', 1),
(664, 'NE', 601, NULL, NULL, 'NEUCHATEL', 'Neuchâtel', 1),
(665, 'NW', 601, NULL, NULL, 'NIDWALD', 'Nidwald', 1),
(666, 'OW', 601, NULL, NULL, 'OBWALD', 'Obwald', 1),
(667, 'SG', 601, NULL, NULL, 'SAINT-GALL', 'Saint-Gall', 1),
(668, 'SH', 601, NULL, NULL, 'SCHAFFHOUSE', 'Schaffhouse', 1),
(669, 'SO', 601, NULL, NULL, 'SOLEURE', 'Soleure', 1),
(670, 'SZ', 601, NULL, NULL, 'SCHWYZ', 'Schwyz', 1),
(671, 'TG', 601, NULL, NULL, 'THURGOVIE', 'Thurgovie', 1),
(672, 'TI', 601, NULL, NULL, 'TESSIN', 'Tessin', 1),
(673, 'UR', 601, NULL, NULL, 'URI', 'Uri', 1),
(674, 'VD', 601, NULL, NULL, 'VAUD', 'Vaud', 1),
(675, 'VS', 601, NULL, NULL, 'VALAIS', 'Valais', 1),
(676, 'ZG', 601, NULL, NULL, 'ZUG', 'Zug', 1),
(677, 'ZH', 601, NULL, NULL, 'ZURICH', 'Zürich', 1),
(678, '701', 701, NULL, 0, NULL, 'Bedfordshire', 1),
(679, '702', 701, NULL, 0, NULL, 'Berkshire', 1),
(680, '703', 701, NULL, 0, NULL, 'Bristol, City of', 1),
(681, '704', 701, NULL, 0, NULL, 'Buckinghamshire', 1),
(682, '705', 701, NULL, 0, NULL, 'Cambridgeshire', 1),
(683, '706', 701, NULL, 0, NULL, 'Cheshire', 1),
(684, '707', 701, NULL, 0, NULL, 'Cleveland', 1),
(685, '708', 701, NULL, 0, NULL, 'Cornwall', 1),
(686, '709', 701, NULL, 0, NULL, 'Cumberland', 1),
(687, '710', 701, NULL, 0, NULL, 'Cumbria', 1),
(688, '711', 701, NULL, 0, NULL, 'Derbyshire', 1),
(689, '712', 701, NULL, 0, NULL, 'Devon', 1),
(690, '713', 701, NULL, 0, NULL, 'Dorset', 1),
(691, '714', 701, NULL, 0, NULL, 'Co. Durham', 1),
(692, '715', 701, NULL, 0, NULL, 'East Riding of Yorkshire', 1),
(693, '716', 701, NULL, 0, NULL, 'East Sussex', 1),
(694, '717', 701, NULL, 0, NULL, 'Essex', 1),
(695, '718', 701, NULL, 0, NULL, 'Gloucestershire', 1),
(696, '719', 701, NULL, 0, NULL, 'Greater Manchester', 1),
(697, '720', 701, NULL, 0, NULL, 'Hampshire', 1),
(698, '721', 701, NULL, 0, NULL, 'Hertfordshire', 1),
(699, '722', 701, NULL, 0, NULL, 'Hereford and Worcester', 1),
(700, '723', 701, NULL, 0, NULL, 'Herefordshire', 1),
(701, '724', 701, NULL, 0, NULL, 'Huntingdonshire', 1),
(702, '725', 701, NULL, 0, NULL, 'Isle of Man', 1),
(703, '726', 701, NULL, 0, NULL, 'Isle of Wight', 1),
(704, '727', 701, NULL, 0, NULL, 'Jersey', 1),
(705, '728', 701, NULL, 0, NULL, 'Kent', 1),
(706, '729', 701, NULL, 0, NULL, 'Lancashire', 1),
(707, '730', 701, NULL, 0, NULL, 'Leicestershire', 1),
(708, '731', 701, NULL, 0, NULL, 'Lincolnshire', 1),
(709, '732', 701, NULL, 0, NULL, 'London - City of London', 1),
(710, '733', 701, NULL, 0, NULL, 'Merseyside', 1),
(711, '734', 701, NULL, 0, NULL, 'Middlesex', 1),
(712, '735', 701, NULL, 0, NULL, 'Norfolk', 1),
(713, '736', 701, NULL, 0, NULL, 'North Yorkshire', 1),
(714, '737', 701, NULL, 0, NULL, 'North Riding of Yorkshire', 1),
(715, '738', 701, NULL, 0, NULL, 'Northamptonshire', 1),
(716, '739', 701, NULL, 0, NULL, 'Northumberland', 1),
(717, '740', 701, NULL, 0, NULL, 'Nottinghamshire', 1),
(718, '741', 701, NULL, 0, NULL, 'Oxfordshire', 1),
(719, '742', 701, NULL, 0, NULL, 'Rutland', 1),
(720, '743', 701, NULL, 0, NULL, 'Shropshire', 1),
(721, '744', 701, NULL, 0, NULL, 'Somerset', 1),
(722, '745', 701, NULL, 0, NULL, 'Staffordshire', 1),
(723, '746', 701, NULL, 0, NULL, 'Suffolk', 1),
(724, '747', 701, NULL, 0, NULL, 'Surrey', 1),
(725, '748', 701, NULL, 0, NULL, 'Sussex', 1),
(726, '749', 701, NULL, 0, NULL, 'Tyne and Wear', 1),
(727, '750', 701, NULL, 0, NULL, 'Warwickshire', 1),
(728, '751', 701, NULL, 0, NULL, 'West Midlands', 1),
(729, '752', 701, NULL, 0, NULL, 'West Sussex', 1),
(730, '753', 701, NULL, 0, NULL, 'West Yorkshire', 1),
(731, '754', 701, NULL, 0, NULL, 'West Riding of Yorkshire', 1),
(732, '755', 701, NULL, 0, NULL, 'Wiltshire', 1),
(733, '756', 701, NULL, 0, NULL, 'Worcestershire', 1),
(734, '757', 701, NULL, 0, NULL, 'Yorkshire', 1),
(735, '758', 702, NULL, 0, NULL, 'Anglesey', 1),
(736, '759', 702, NULL, 0, NULL, 'Breconshire', 1),
(737, '760', 702, NULL, 0, NULL, 'Caernarvonshire', 1),
(738, '761', 702, NULL, 0, NULL, 'Cardiganshire', 1),
(739, '762', 702, NULL, 0, NULL, 'Carmarthenshire', 1),
(740, '763', 702, NULL, 0, NULL, 'Ceredigion', 1),
(741, '764', 702, NULL, 0, NULL, 'Denbighshire', 1),
(742, '765', 702, NULL, 0, NULL, 'Flintshire', 1),
(743, '766', 702, NULL, 0, NULL, 'Glamorgan', 1),
(744, '767', 702, NULL, 0, NULL, 'Gwent', 1),
(745, '768', 702, NULL, 0, NULL, 'Gwynedd', 1),
(746, '769', 702, NULL, 0, NULL, 'Merionethshire', 1),
(747, '770', 702, NULL, 0, NULL, 'Monmouthshire', 1),
(748, '771', 702, NULL, 0, NULL, 'Mid Glamorgan', 1),
(749, '772', 702, NULL, 0, NULL, 'Montgomeryshire', 1),
(750, '773', 702, NULL, 0, NULL, 'Pembrokeshire', 1),
(751, '774', 702, NULL, 0, NULL, 'Powys', 1),
(752, '775', 702, NULL, 0, NULL, 'Radnorshire', 1),
(753, '776', 702, NULL, 0, NULL, 'South Glamorgan', 1),
(754, '777', 703, NULL, 0, NULL, 'Aberdeen, City of', 1),
(755, '778', 703, NULL, 0, NULL, 'Angus', 1),
(756, '779', 703, NULL, 0, NULL, 'Argyll', 1),
(757, '780', 703, NULL, 0, NULL, 'Ayrshire', 1),
(758, '781', 703, NULL, 0, NULL, 'Banffshire', 1),
(759, '782', 703, NULL, 0, NULL, 'Berwickshire', 1),
(760, '783', 703, NULL, 0, NULL, 'Bute', 1),
(761, '784', 703, NULL, 0, NULL, 'Caithness', 1),
(762, '785', 703, NULL, 0, NULL, 'Clackmannanshire', 1),
(763, '786', 703, NULL, 0, NULL, 'Dumfriesshire', 1),
(764, '787', 703, NULL, 0, NULL, 'Dumbartonshire', 1),
(765, '788', 703, NULL, 0, NULL, 'Dundee, City of', 1),
(766, '789', 703, NULL, 0, NULL, 'East Lothian', 1),
(767, '790', 703, NULL, 0, NULL, 'Fife', 1),
(768, '791', 703, NULL, 0, NULL, 'Inverness', 1),
(769, '792', 703, NULL, 0, NULL, 'Kincardineshire', 1),
(770, '793', 703, NULL, 0, NULL, 'Kinross-shire', 1),
(771, '794', 703, NULL, 0, NULL, 'Kirkcudbrightshire', 1),
(772, '795', 703, NULL, 0, NULL, 'Lanarkshire', 1),
(773, '796', 703, NULL, 0, NULL, 'Midlothian', 1),
(774, '797', 703, NULL, 0, NULL, 'Morayshire', 1),
(775, '798', 703, NULL, 0, NULL, 'Nairnshire', 1),
(776, '799', 703, NULL, 0, NULL, 'Orkney', 1),
(777, '800', 703, NULL, 0, NULL, 'Peebleshire', 1),
(778, '801', 703, NULL, 0, NULL, 'Perthshire', 1),
(779, '802', 703, NULL, 0, NULL, 'Renfrewshire', 1),
(780, '803', 703, NULL, 0, NULL, 'Ross & Cromarty', 1),
(781, '804', 703, NULL, 0, NULL, 'Roxburghshire', 1),
(782, '805', 703, NULL, 0, NULL, 'Selkirkshire', 1),
(783, '806', 703, NULL, 0, NULL, 'Shetland', 1),
(784, '807', 703, NULL, 0, NULL, 'Stirlingshire', 1),
(785, '808', 703, NULL, 0, NULL, 'Sutherland', 1),
(786, '809', 703, NULL, 0, NULL, 'West Lothian', 1),
(787, '810', 703, NULL, 0, NULL, 'Wigtownshire', 1),
(788, '811', 704, NULL, 0, NULL, 'Antrim', 1),
(789, '812', 704, NULL, 0, NULL, 'Armagh', 1),
(790, '813', 704, NULL, 0, NULL, 'Co. Down', 1),
(791, '814', 704, NULL, 0, NULL, 'Co. Fermanagh', 1),
(792, '815', 704, NULL, 0, NULL, 'Co. Londonderry', 1),
(793, 'AL', 1101, '', 0, 'ALABAMA', 'Alabama', 1),
(794, 'AK', 1101, '', 0, 'ALASKA', 'Alaska', 1),
(795, 'AZ', 1101, '', 0, 'ARIZONA', 'Arizona', 1),
(796, 'AR', 1101, '', 0, 'ARKANSAS', 'Arkansas', 1),
(797, 'CA', 1101, '', 0, 'CALIFORNIA', 'California', 1),
(798, 'CO', 1101, '', 0, 'COLORADO', 'Colorado', 1),
(799, 'CT', 1101, '', 0, 'CONNECTICUT', 'Connecticut', 1),
(800, 'DE', 1101, '', 0, 'DELAWARE', 'Delaware', 1),
(801, 'FL', 1101, '', 0, 'FLORIDA', 'Florida', 1),
(802, 'GA', 1101, '', 0, 'GEORGIA', 'Georgia', 1),
(803, 'HI', 1101, '', 0, 'HAWAII', 'Hawaii', 1),
(804, 'ID', 1101, '', 0, 'IDAHO', 'Idaho', 1),
(805, 'IL', 1101, '', 0, 'ILLINOIS', 'Illinois', 1),
(806, 'IN', 1101, '', 0, 'INDIANA', 'Indiana', 1),
(807, 'IA', 1101, '', 0, 'IOWA', 'Iowa', 1),
(808, 'KS', 1101, '', 0, 'KANSAS', 'Kansas', 1),
(809, 'KY', 1101, '', 0, 'KENTUCKY', 'Kentucky', 1),
(810, 'LA', 1101, '', 0, 'LOUISIANA', 'Louisiana', 1),
(811, 'ME', 1101, '', 0, 'MAINE', 'Maine', 1),
(812, 'MD', 1101, '', 0, 'MARYLAND', 'Maryland', 1),
(813, 'MA', 1101, '', 0, 'MASSACHUSSETTS', 'Massachusetts', 1),
(814, 'MI', 1101, '', 0, 'MICHIGAN', 'Michigan', 1),
(815, 'MN', 1101, '', 0, 'MINNESOTA', 'Minnesota', 1),
(816, 'MS', 1101, '', 0, 'MISSISSIPPI', 'Mississippi', 1),
(817, 'MO', 1101, '', 0, 'MISSOURI', 'Missouri', 1),
(818, 'MT', 1101, '', 0, 'MONTANA', 'Montana', 1),
(819, 'NE', 1101, '', 0, 'NEBRASKA', 'Nebraska', 1),
(820, 'NV', 1101, '', 0, 'NEVADA', 'Nevada', 1),
(821, 'NH', 1101, '', 0, 'NEW HAMPSHIRE', 'New Hampshire', 1),
(822, 'NJ', 1101, '', 0, 'NEW JERSEY', 'New Jersey', 1),
(823, 'NM', 1101, '', 0, 'NEW MEXICO', 'New Mexico', 1),
(824, 'NY', 1101, '', 0, 'NEW YORK', 'New York', 1),
(825, 'NC', 1101, '', 0, 'NORTH CAROLINA', 'North Carolina', 1),
(826, 'ND', 1101, '', 0, 'NORTH DAKOTA', 'North Dakota', 1),
(827, 'OH', 1101, '', 0, 'OHIO', 'Ohio', 1),
(828, 'OK', 1101, '', 0, 'OKLAHOMA', 'Oklahoma', 1),
(829, 'OR', 1101, '', 0, 'OREGON', 'Oregon', 1),
(830, 'PA', 1101, '', 0, 'PENNSYLVANIA', 'Pennsylvania', 1),
(831, 'RI', 1101, '', 0, 'RHODE ISLAND', 'Rhode Island', 1),
(832, 'SC', 1101, '', 0, 'SOUTH CAROLINA', 'South Carolina', 1),
(833, 'SD', 1101, '', 0, 'SOUTH DAKOTA', 'South Dakota', 1),
(834, 'TN', 1101, '', 0, 'TENNESSEE', 'Tennessee', 1),
(835, 'TX', 1101, '', 0, 'TEXAS', 'Texas', 1),
(836, 'UT', 1101, '', 0, 'UTAH', 'Utah', 1),
(837, 'VT', 1101, '', 0, 'VERMONT', 'Vermont', 1),
(838, 'VA', 1101, '', 0, 'VIRGINIA', 'Virginia', 1),
(839, 'WA', 1101, '', 0, 'WASHINGTON', 'Washington', 1),
(840, 'WV', 1101, '', 0, 'WEST VIRGINIA', 'West Virginia', 1),
(841, 'WI', 1101, '', 0, 'WISCONSIN', 'Wisconsin', 1),
(842, 'WY', 1101, '', 0, 'WYOMING', 'Wyoming', 1),
(843, 'GR', 1701, NULL, NULL, NULL, 'Groningen', 1),
(844, 'FR', 1701, NULL, NULL, NULL, 'Friesland', 1),
(845, 'DR', 1701, NULL, NULL, NULL, 'Drenthe', 1),
(846, 'OV', 1701, NULL, NULL, NULL, 'Overijssel', 1),
(847, 'GD', 1701, NULL, NULL, NULL, 'Gelderland', 1),
(848, 'FL', 1701, NULL, NULL, NULL, 'Flevoland', 1),
(849, 'UT', 1701, NULL, NULL, NULL, 'Utrecht', 1),
(850, 'NH', 1701, NULL, NULL, NULL, 'Noord-Holland', 1),
(851, 'ZH', 1701, NULL, NULL, NULL, 'Zuid-Holland', 1),
(852, 'ZL', 1701, NULL, NULL, NULL, 'Zeeland', 1),
(853, 'NB', 1701, NULL, NULL, NULL, 'Noord-Brabant', 1),
(854, 'LB', 1701, NULL, NULL, NULL, 'Limburg', 1),
(855, 'SS', 8601, '', 0, '', 'San Salvador', 1),
(856, 'SA', 8603, '', 0, '', 'Santa Ana', 1),
(857, 'AH', 8603, '', 0, '', 'Ahuachapan', 1),
(858, 'SO', 8603, '', 0, '', 'Sonsonate', 1),
(859, 'US', 8602, '', 0, '', 'Usulutan', 1),
(860, 'SM', 8602, '', 0, '', 'San Miguel', 1),
(861, 'MO', 8602, '', 0, '', 'Morazan', 1),
(862, 'LU', 8602, '', 0, '', 'La Union', 1),
(863, 'LL', 8601, '', 0, '', 'La Libertad', 1),
(864, 'CH', 8601, '', 0, '', 'Chalatenango', 1),
(865, 'CA', 8601, '', 0, '', 'Cabañas', 1),
(866, 'LP', 8601, '', 0, '', 'La Paz', 1),
(867, 'SV', 8601, '', 0, '', 'San Vicente', 1),
(868, 'CU', 8601, '', 0, '', 'Cuscatlan', 1),
(869, '2301', 2301, '', 0, 'CATAMARCA', 'Catamarca', 1),
(870, '2302', 2301, '', 0, 'JUJUY', 'Jujuy', 1),
(871, '2303', 2301, '', 0, 'TUCAMAN', 'Tucamán', 1),
(872, '2304', 2301, '', 0, 'SANTIAGO DEL ESTERO', 'Santiago del Estero', 1),
(873, '2305', 2301, '', 0, 'SALTA', 'Salta', 1),
(874, '2306', 2302, '', 0, 'CHACO', 'Chaco', 1),
(875, '2307', 2302, '', 0, 'CORRIENTES', 'Corrientes', 1),
(876, '2308', 2302, '', 0, 'ENTRE RIOS', 'Entre Ríos', 1),
(877, '2309', 2302, '', 0, 'FORMOSA', 'Formosa', 1),
(878, '2310', 2302, '', 0, 'SANTA FE', 'Santa Fe', 1),
(879, '2311', 2303, '', 0, 'LA RIOJA', 'La Rioja', 1),
(880, '2312', 2303, '', 0, 'MENDOZA', 'Mendoza', 1),
(881, '2313', 2303, '', 0, 'SAN JUAN', 'San Juan', 1),
(882, '2314', 2303, '', 0, 'SAN LUIS', 'San Luis', 1),
(883, '2315', 2304, '', 0, 'CORDOBA', 'Córdoba', 1),
(884, '2316', 2304, '', 0, 'BUENOS AIRES', 'Buenos Aires', 1),
(885, '2317', 2304, '', 0, 'CABA', 'Caba', 1),
(886, '2318', 2305, '', 0, 'LA PAMPA', 'La Pampa', 1),
(887, '2319', 2305, '', 0, 'NEUQUEN', 'Neuquén', 1),
(888, '2320', 2305, '', 0, 'RIO NEGRO', 'Río Negro', 1),
(889, '2321', 2305, '', 0, 'CHUBUT', 'Chubut', 1),
(890, '2322', 2305, '', 0, 'SANTA CRUZ', 'Santa Cruz', 1),
(891, '2323', 2305, '', 0, 'TIERRA DEL FUEGO', 'Tierra del Fuego', 1),
(892, '2324', 2305, '', 0, 'ISLAS MALVINAS', 'Islas Malvinas', 1),
(893, '2325', 2305, '', 0, 'ANTARTIDA', 'Antártida', 1),
(894, '2326', 2305, '', 0, 'MISIONES', 'Misiones', 1),
(895, 'CC', 4601, 'Oistins', 0, 'CC', 'Christ Church', 1),
(896, 'SA', 4601, 'Greenland', 0, 'SA', 'Saint Andrew', 1),
(897, 'SG', 4601, 'Bulkeley', 0, 'SG', 'Saint George', 1),
(898, 'JA', 4601, 'Holetown', 0, 'JA', 'Saint James', 1),
(899, 'SJ', 4601, 'Four Roads', 0, 'SJ', 'Saint John', 1),
(900, 'SB', 4601, 'Bathsheba', 0, 'SB', 'Saint Joseph', 1),
(901, 'SL', 4601, 'Crab Hill', 0, 'SL', 'Saint Lucy', 1),
(902, 'SM', 4601, 'Bridgetown', 0, 'SM', 'Saint Michael', 1),
(903, 'SP', 4601, 'Speightstown', 0, 'SP', 'Saint Peter', 1),
(904, 'SC', 4601, 'Crane', 0, 'SC', 'Saint Philip', 1),
(905, 'ST', 4601, 'Hillaby', 0, 'ST', 'Saint Thomas', 1),
(906, 'AC', 5601, 'ACRE', 0, 'AC', 'Acre', 1),
(907, 'AL', 5601, 'ALAGOAS', 0, 'AL', 'Alagoas', 1),
(908, 'AP', 5601, 'AMAPA', 0, 'AP', 'Amapá', 1),
(909, 'AM', 5601, 'AMAZONAS', 0, 'AM', 'Amazonas', 1),
(910, 'BA', 5601, 'BAHIA', 0, 'BA', 'Bahia', 1),
(911, 'CE', 5601, 'CEARA', 0, 'CE', 'Ceará', 1),
(912, 'ES', 5601, 'ESPIRITO SANTO', 0, 'ES', 'Espirito Santo', 1),
(913, 'GO', 5601, 'GOIAS', 0, 'GO', 'Goiás', 1),
(914, 'MA', 5601, 'MARANHAO', 0, 'MA', 'Maranhão', 1),
(915, 'MT', 5601, 'MATO GROSSO', 0, 'MT', 'Mato Grosso', 1),
(916, 'MS', 5601, 'MATO GROSSO DO SUL', 0, 'MS', 'Mato Grosso do Sul', 1),
(917, 'MG', 5601, 'MINAS GERAIS', 0, 'MG', 'Minas Gerais', 1),
(918, 'PA', 5601, 'PARA', 0, 'PA', 'Pará', 1),
(919, 'PB', 5601, 'PARAIBA', 0, 'PB', 'Paraiba', 1),
(920, 'PR', 5601, 'PARANA', 0, 'PR', 'Paraná', 1),
(921, 'PE', 5601, 'PERNAMBUCO', 0, 'PE', 'Pernambuco', 1),
(922, 'PI', 5601, 'PIAUI', 0, 'PI', 'Piauí', 1),
(923, 'RJ', 5601, 'RIO DE JANEIRO', 0, 'RJ', 'Rio de Janeiro', 1),
(924, 'RN', 5601, 'RIO GRANDE DO NORTE', 0, 'RN', 'Rio Grande do Norte', 1),
(925, 'RS', 5601, 'RIO GRANDE DO SUL', 0, 'RS', 'Rio Grande do Sul', 1),
(926, 'RO', 5601, 'RONDONIA', 0, 'RO', 'Rondônia', 1),
(927, 'RR', 5601, 'RORAIMA', 0, 'RR', 'Roraima', 1),
(928, 'SC', 5601, 'SANTA CATARINA', 0, 'SC', 'Santa Catarina', 1),
(929, 'SE', 5601, 'SERGIPE', 0, 'SE', 'Sergipe', 1),
(930, 'SP', 5601, 'SAO PAULO', 0, 'SP', 'Sao Paulo', 1),
(931, 'TO', 5601, 'TOCANTINS', 0, 'TO', 'Tocantins', 1),
(932, 'DF', 5601, 'DISTRITO FEDERAL', 0, 'DF', 'Distrito Federal', 1),
(933, '151', 6715, '', 0, '151', 'Arica', 1),
(934, '152', 6715, '', 0, '152', 'Parinacota', 1),
(935, '011', 6701, '', 0, '011', 'Iquique', 1),
(936, '014', 6701, '', 0, '014', 'Tamarugal', 1),
(937, '021', 6702, '', 0, '021', 'Antofagasa', 1),
(938, '022', 6702, '', 0, '022', 'El Loa', 1),
(939, '023', 6702, '', 0, '023', 'Tocopilla', 1),
(940, '031', 6703, '', 0, '031', 'Copiapó', 1),
(941, '032', 6703, '', 0, '032', 'Chañaral', 1),
(942, '033', 6703, '', 0, '033', 'Huasco', 1),
(943, '041', 6704, '', 0, '041', 'Elqui', 1),
(944, '042', 6704, '', 0, '042', 'Choapa', 1),
(945, '043', 6704, '', 0, '043', 'Limarí', 1),
(946, '051', 6705, '', 0, '051', 'Valparaíso', 1),
(947, '052', 6705, '', 0, '052', 'Isla de Pascua', 1),
(948, '053', 6705, '', 0, '053', 'Los Andes', 1),
(949, '054', 6705, '', 0, '054', 'Petorca', 1),
(950, '055', 6705, '', 0, '055', 'Quillota', 1),
(951, '056', 6705, '', 0, '056', 'San Antonio', 1),
(952, '057', 6705, '', 0, '057', 'San Felipe de Aconcagua', 1),
(953, '058', 6705, '', 0, '058', 'Marga Marga', 1),
(954, '061', 6706, '', 0, '061', 'Cachapoal', 1),
(955, '062', 6706, '', 0, '062', 'Cardenal Caro', 1),
(956, '063', 6706, '', 0, '063', 'Colchagua', 1),
(957, '071', 6707, '', 0, '071', 'Talca', 1),
(958, '072', 6707, '', 0, '072', 'Cauquenes', 1),
(959, '073', 6707, '', 0, '073', 'Curicó', 1),
(960, '074', 6707, '', 0, '074', 'Linares', 1),
(961, '081', 6708, '', 0, '081', 'Concepción', 1),
(962, '082', 6708, '', 0, '082', 'Arauco', 1),
(963, '083', 6708, '', 0, '083', 'Biobío', 1),
(964, '084', 6708, '', 0, '084', 'Ñuble', 1),
(965, '091', 6709, '', 0, '091', 'Cautín', 1),
(966, '092', 6709, '', 0, '092', 'Malleco', 1),
(967, '141', 6714, '', 0, '141', 'Valdivia', 1),
(968, '142', 6714, '', 0, '142', 'Ranco', 1),
(969, '101', 6710, '', 0, '101', 'Llanquihue', 1),
(970, '102', 6710, '', 0, '102', 'Chiloé', 1),
(971, '103', 6710, '', 0, '103', 'Osorno', 1),
(972, '104', 6710, '', 0, '104', 'Palena', 1),
(973, '111', 6711, '', 0, '111', 'Coihaique', 1),
(974, '112', 6711, '', 0, '112', 'Aisén', 1),
(975, '113', 6711, '', 0, '113', 'Capitán Prat', 1),
(976, '114', 6711, '', 0, '114', 'General Carrera', 1);
INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(977, '121', 6712, '', 0, '121', 'Magallanes', 1),
(978, '122', 6712, '', 0, '122', 'Antártica Chilena', 1),
(979, '123', 6712, '', 0, '123', 'Tierra del Fuego', 1),
(980, '124', 6712, '', 0, '124', 'Última Esperanza', 1),
(981, '131', 6713, '', 0, '131', 'Santiago', 1),
(982, '132', 6713, '', 0, '132', 'Cordillera', 1),
(983, '133', 6713, '', 0, '133', 'Chacabuco', 1),
(984, '134', 6713, '', 0, '134', 'Maipo', 1),
(985, '135', 6713, '', 0, '135', 'Melipilla', 1),
(986, '136', 6713, '', 0, '136', 'Talagante', 1),
(987, 'AN', 11701, NULL, 0, 'AN', 'Andaman & Nicobar', 1),
(988, 'AP', 11701, NULL, 0, 'AP', 'Andhra Pradesh', 1),
(989, 'AR', 11701, NULL, 0, 'AR', 'Arunachal Pradesh', 1),
(990, 'AS', 11701, NULL, 0, 'AS', 'Assam', 1),
(991, 'BR', 11701, NULL, 0, 'BR', 'Bihar', 1),
(992, 'CG', 11701, NULL, 0, 'CG', 'Chattisgarh', 1),
(993, 'CH', 11701, NULL, 0, 'CH', 'Chandigarh', 1),
(994, 'DD', 11701, NULL, 0, 'DD', 'Daman & Diu', 1),
(995, 'DL', 11701, NULL, 0, 'DL', 'Delhi', 1),
(996, 'DN', 11701, NULL, 0, 'DN', 'Dadra and Nagar Haveli', 1),
(997, 'GA', 11701, NULL, 0, 'GA', 'Goa', 1),
(998, 'GJ', 11701, NULL, 0, 'GJ', 'Gujarat', 1),
(999, 'HP', 11701, NULL, 0, 'HP', 'Himachal Pradesh', 1),
(1000, 'HR', 11701, NULL, 0, 'HR', 'Haryana', 1),
(1001, 'JH', 11701, NULL, 0, 'JH', 'Jharkhand', 1),
(1002, 'JK', 11701, NULL, 0, 'JK', 'Jammu & Kashmir', 1),
(1003, 'KA', 11701, NULL, 0, 'KA', 'Karnataka', 1),
(1004, 'KL', 11701, NULL, 0, 'KL', 'Kerala', 1),
(1005, 'LD', 11701, NULL, 0, 'LD', 'Lakshadweep', 1),
(1006, 'MH', 11701, NULL, 0, 'MH', 'Maharashtra', 1),
(1007, 'ML', 11701, NULL, 0, 'ML', 'Meghalaya', 1),
(1008, 'MN', 11701, NULL, 0, 'MN', 'Manipur', 1),
(1009, 'MP', 11701, NULL, 0, 'MP', 'Madhya Pradesh', 1),
(1010, 'MZ', 11701, NULL, 0, 'MZ', 'Mizoram', 1),
(1011, 'NL', 11701, NULL, 0, 'NL', 'Nagaland', 1),
(1012, 'OR', 11701, NULL, 0, 'OR', 'Orissa', 1),
(1013, 'PB', 11701, NULL, 0, 'PB', 'Punjab', 1),
(1014, 'PY', 11701, NULL, 0, 'PY', 'Puducherry', 1),
(1015, 'RJ', 11701, NULL, 0, 'RJ', 'Rajasthan', 1),
(1016, 'SK', 11701, NULL, 0, 'SK', 'Sikkim', 1),
(1017, 'TN', 11701, NULL, 0, 'TN', 'Tamil Nadu', 1),
(1018, 'TR', 11701, NULL, 0, 'TR', 'Tripura', 1),
(1019, 'UL', 11701, NULL, 0, 'UL', 'Uttarakhand', 1),
(1020, 'UP', 11701, NULL, 0, 'UP', 'Uttar Pradesh', 1),
(1021, 'WB', 11701, NULL, 0, 'WB', 'West Bengal', 1),
(1022, 'BA', 11801, NULL, 0, 'BA', 'Bali', 1),
(1023, 'BB', 11801, NULL, 0, 'BB', 'Bangka Belitung', 1),
(1024, 'BT', 11801, NULL, 0, 'BT', 'Banten', 1),
(1025, 'BE', 11801, NULL, 0, 'BA', 'Bengkulu', 1),
(1026, 'YO', 11801, NULL, 0, 'YO', 'DI Yogyakarta', 1),
(1027, 'JK', 11801, NULL, 0, 'JK', 'DKI Jakarta', 1),
(1028, 'GO', 11801, NULL, 0, 'GO', 'Gorontalo', 1),
(1029, 'JA', 11801, NULL, 0, 'JA', 'Jambi', 1),
(1030, 'JB', 11801, NULL, 0, 'JB', 'Jawa Barat', 1),
(1031, 'JT', 11801, NULL, 0, 'JT', 'Jawa Tengah', 1),
(1032, 'JI', 11801, NULL, 0, 'JI', 'Jawa Timur', 1),
(1033, 'KB', 11801, NULL, 0, 'KB', 'Kalimantan Barat', 1),
(1034, 'KS', 11801, NULL, 0, 'KS', 'Kalimantan Selatan', 1),
(1035, 'KT', 11801, NULL, 0, 'KT', 'Kalimantan Tengah', 1),
(1036, 'KI', 11801, NULL, 0, 'KI', 'Kalimantan Timur', 1),
(1037, 'KU', 11801, NULL, 0, 'KU', 'Kalimantan Utara', 1),
(1038, 'KR', 11801, NULL, 0, 'KR', 'Kepulauan Riau', 1),
(1039, 'LA', 11801, NULL, 0, 'LA', 'Lampung', 1),
(1040, 'MA', 11801, NULL, 0, 'MA', 'Maluku', 1),
(1041, 'MU', 11801, NULL, 0, 'MU', 'Maluku Utara', 1),
(1042, 'AC', 11801, NULL, 0, 'AC', 'Nanggroe Aceh Darussalam', 1),
(1043, 'NB', 11801, NULL, 0, 'NB', 'Nusa Tenggara Barat', 1),
(1044, 'NT', 11801, NULL, 0, 'NT', 'Nusa Tenggara Timur', 1),
(1045, 'PA', 11801, NULL, 0, 'PA', 'Papua', 1),
(1046, 'PB', 11801, NULL, 0, 'PB', 'Papua Barat', 1),
(1047, 'RI', 11801, NULL, 0, 'RI', 'Riau', 1),
(1048, 'SR', 11801, NULL, 0, 'SR', 'Sulawesi Barat', 1),
(1049, 'SN', 11801, NULL, 0, 'SN', 'Sulawesi Selatan', 1),
(1050, 'ST', 11801, NULL, 0, 'ST', 'Sulawesi Tengah', 1),
(1051, 'SG', 11801, NULL, 0, 'SG', 'Sulawesi Tenggara', 1),
(1052, 'SA', 11801, NULL, 0, 'SA', 'Sulawesi Utara', 1),
(1053, 'SB', 11801, NULL, 0, 'SB', 'Sumatera Barat', 1),
(1054, 'SS', 11801, NULL, 0, 'SS', 'Sumatera Selatan', 1),
(1055, 'SU', 11801, NULL, 0, 'SU', 'Sumatera Utara	', 1),
(1056, 'DIF', 15401, '', 0, 'DIF', 'Distrito Federal', 1),
(1057, 'AGS', 15401, '', 0, 'AGS', 'Aguascalientes', 1),
(1058, 'BCN', 15401, '', 0, 'BCN', 'Baja California Norte', 1),
(1059, 'BCS', 15401, '', 0, 'BCS', 'Baja California Sur', 1),
(1060, 'CAM', 15401, '', 0, 'CAM', 'Campeche', 1),
(1061, 'CHP', 15401, '', 0, 'CHP', 'Chiapas', 1),
(1062, 'CHI', 15401, '', 0, 'CHI', 'Chihuahua', 1),
(1063, 'COA', 15401, '', 0, 'COA', 'Coahuila', 1),
(1064, 'COL', 15401, '', 0, 'COL', 'Colima', 1),
(1065, 'DUR', 15401, '', 0, 'DUR', 'Durango', 1),
(1066, 'GTO', 15401, '', 0, 'GTO', 'Guanajuato', 1),
(1067, 'GRO', 15401, '', 0, 'GRO', 'Guerrero', 1),
(1068, 'HGO', 15401, '', 0, 'HGO', 'Hidalgo', 1),
(1069, 'JAL', 15401, '', 0, 'JAL', 'Jalisco', 1),
(1070, 'MEX', 15401, '', 0, 'MEX', 'México', 1),
(1071, 'MIC', 15401, '', 0, 'MIC', 'Michoacán de Ocampo', 1),
(1072, 'MOR', 15401, '', 0, 'MOR', 'Morelos', 1),
(1073, 'NAY', 15401, '', 0, 'NAY', 'Nayarit', 1),
(1074, 'NLE', 15401, '', 0, 'NLE', 'Nuevo León', 1),
(1075, 'OAX', 15401, '', 0, 'OAX', 'Oaxaca', 1),
(1076, 'PUE', 15401, '', 0, 'PUE', 'Puebla', 1),
(1077, 'QRO', 15401, '', 0, 'QRO', 'Querétaro', 1),
(1078, 'ROO', 15401, '', 0, 'ROO', 'Quintana Roo', 1),
(1079, 'SLP', 15401, '', 0, 'SLP', 'San Luis Potosí', 1),
(1080, 'SIN', 15401, '', 0, 'SIN', 'Sinaloa', 1),
(1081, 'SON', 15401, '', 0, 'SON', 'Sonora', 1),
(1082, 'TAB', 15401, '', 0, 'TAB', 'Tabasco', 1),
(1083, 'TAM', 15401, '', 0, 'TAM', 'Tamaulipas', 1),
(1084, 'TLX', 15401, '', 0, 'TLX', 'Tlaxcala', 1),
(1085, 'VER', 15401, '', 0, 'VER', 'Veracruz', 1),
(1086, 'YUC', 15401, '', 0, 'YUC', 'Yucatán', 1),
(1087, 'ZAC', 15401, '', 0, 'ZAC', 'Zacatecas', 1),
(1088, 'ANT', 7001, '', 0, 'ANT', 'Antioquia', 1),
(1089, 'BOL', 7001, '', 0, 'BOL', 'Bolívar', 1),
(1090, 'BOY', 7001, '', 0, 'BOY', 'Boyacá', 1),
(1091, 'CAL', 7001, '', 0, 'CAL', 'Caldas', 1),
(1092, 'CAU', 7001, '', 0, 'CAU', 'Cauca', 1),
(1093, 'CUN', 7001, '', 0, 'CUN', 'Cundinamarca', 1),
(1094, 'HUI', 7001, '', 0, 'HUI', 'Huila', 1),
(1095, 'LAG', 7001, '', 0, 'LAG', 'La Guajira', 1),
(1096, 'MET', 7001, '', 0, 'MET', 'Meta', 1),
(1097, 'NAR', 7001, '', 0, 'NAR', 'Nariño', 1),
(1098, 'NDS', 7001, '', 0, 'NDS', 'Norte de Santander', 1),
(1099, 'SAN', 7001, '', 0, 'SAN', 'Santander', 1),
(1100, 'SUC', 7001, '', 0, 'SUC', 'Sucre', 1),
(1101, 'TOL', 7001, '', 0, 'TOL', 'Tolima', 1),
(1102, 'VAC', 7001, '', 0, 'VAC', 'Valle del Cauca', 1),
(1103, 'RIS', 7001, '', 0, 'RIS', 'Risalda', 1),
(1104, 'ATL', 7001, '', 0, 'ATL', 'Atlántico', 1),
(1105, 'COR', 7001, '', 0, 'COR', 'Córdoba', 1),
(1106, 'SAP', 7001, '', 0, 'SAP', 'San Andrés, Providencia y Santa Catalina', 1),
(1107, 'ARA', 7001, '', 0, 'ARA', 'Arauca', 1),
(1108, 'CAS', 7001, '', 0, 'CAS', 'Casanare', 1),
(1109, 'AMA', 7001, '', 0, 'AMA', 'Amazonas', 1),
(1110, 'CAQ', 7001, '', 0, 'CAQ', 'Caquetá', 1),
(1111, 'CHO', 7001, '', 0, 'CHO', 'Chocó', 1),
(1112, 'GUA', 7001, '', 0, 'GUA', 'Guainía', 1),
(1113, 'GUV', 7001, '', 0, 'GUV', 'Guaviare', 1),
(1114, 'PUT', 7001, '', 0, 'PUT', 'Putumayo', 1),
(1115, 'QUI', 7001, '', 0, 'QUI', 'Quindío', 1),
(1116, 'VAU', 7001, '', 0, 'VAU', 'Vaupés', 1),
(1117, 'BOG', 7001, '', 0, 'BOG', 'Bogotá', 1),
(1118, 'VID', 7001, '', 0, 'VID', 'Vichada', 1),
(1119, 'CES', 7001, '', 0, 'CES', 'Cesar', 1),
(1120, 'MAG', 7001, '', 0, 'MAG', 'Magdalena', 1),
(1121, 'AT', 11401, '', 0, 'AT', 'Atlántida', 1),
(1122, 'CH', 11401, '', 0, 'CH', 'Choluteca', 1),
(1123, 'CL', 11401, '', 0, 'CL', 'Colón', 1),
(1124, 'CM', 11401, '', 0, 'CM', 'Comayagua', 1),
(1125, 'CO', 11401, '', 0, 'CO', 'Copán', 1),
(1126, 'CR', 11401, '', 0, 'CR', 'Cortés', 1),
(1127, 'EP', 11401, '', 0, 'EP', 'El Paraíso', 1),
(1128, 'FM', 11401, '', 0, 'FM', 'Francisco Morazán', 1),
(1129, 'GD', 11401, '', 0, 'GD', 'Gracias a Dios', 1),
(1130, 'IN', 11401, '', 0, 'IN', 'Intibucá', 1),
(1131, 'IB', 11401, '', 0, 'IB', 'Islas de la Bahía', 1),
(1132, 'LP', 11401, '', 0, 'LP', 'La Paz', 1),
(1133, 'LM', 11401, '', 0, 'LM', 'Lempira', 1),
(1134, 'OC', 11401, '', 0, 'OC', 'Ocotepeque', 1),
(1135, 'OL', 11401, '', 0, 'OL', 'Olancho', 1),
(1136, 'SB', 11401, '', 0, 'SB', 'Santa Bárbara', 1),
(1137, 'VL', 11401, '', 0, 'VL', 'Valle', 1),
(1138, 'YO', 11401, '', 0, 'YO', 'Yoro', 1),
(1139, 'DC', 11401, '', 0, 'DC', 'Distrito Central', 1),
(1140, 'AB', 18801, '', 0, '', 'Alba', 1),
(1141, 'AR', 18801, '', 0, '', 'Arad', 1),
(1142, 'AG', 18801, '', 0, '', 'Argeș', 1),
(1143, 'BC', 18801, '', 0, '', 'Bacău', 1),
(1144, 'BH', 18801, '', 0, '', 'Bihor', 1),
(1145, 'BN', 18801, '', 0, '', 'Bistrița-Năsăud', 1),
(1146, 'BT', 18801, '', 0, '', 'Botoșani', 1),
(1147, 'BV', 18801, '', 0, '', 'Brașov', 1),
(1148, 'BR', 18801, '', 0, '', 'Brăila', 1),
(1149, 'BZ', 18801, '', 0, '', 'Buzău', 1),
(1150, 'CL', 18801, '', 0, '', 'Călărași', 1),
(1151, 'CS', 18801, '', 0, '', 'Caraș-Severin', 1),
(1152, 'CJ', 18801, '', 0, '', 'Cluj', 1),
(1153, 'CT', 18801, '', 0, '', 'Constanța', 1),
(1154, 'CV', 18801, '', 0, '', 'Covasna', 1),
(1155, 'DB', 18801, '', 0, '', 'Dâmbovița', 1),
(1156, 'DJ', 18801, '', 0, '', 'Dolj', 1),
(1157, 'GL', 18801, '', 0, '', 'Galați', 1),
(1158, 'GR', 18801, '', 0, '', 'Giurgiu', 1),
(1159, 'GJ', 18801, '', 0, '', 'Gorj', 1),
(1160, 'HR', 18801, '', 0, '', 'Harghita', 1),
(1161, 'HD', 18801, '', 0, '', 'Hunedoara', 1),
(1162, 'IL', 18801, '', 0, '', 'Ialomița', 1),
(1163, 'IS', 18801, '', 0, '', 'Iași', 1),
(1164, 'IF', 18801, '', 0, '', 'Ilfov', 1),
(1165, 'MM', 18801, '', 0, '', 'Maramureș', 1),
(1166, 'MH', 18801, '', 0, '', 'Mehedinți', 1),
(1167, 'MS', 18801, '', 0, '', 'Mureș', 1),
(1168, 'NT', 18801, '', 0, '', 'Neamț', 1),
(1169, 'OT', 18801, '', 0, '', 'Olt', 1),
(1170, 'PH', 18801, '', 0, '', 'Prahova', 1),
(1171, 'SM', 18801, '', 0, '', 'Satu Mare', 1),
(1172, 'SJ', 18801, '', 0, '', 'Sălaj', 1),
(1173, 'SB', 18801, '', 0, '', 'Sibiu', 1),
(1174, 'SV', 18801, '', 0, '', 'Suceava', 1),
(1175, 'TR', 18801, '', 0, '', 'Teleorman', 1),
(1176, 'TM', 18801, '', 0, '', 'Timiș', 1),
(1177, 'TL', 18801, '', 0, '', 'Tulcea', 1),
(1178, 'VS', 18801, '', 0, '', 'Vaslui', 1),
(1179, 'VL', 18801, '', 0, '', 'Vâlcea', 1),
(1180, 'VN', 18801, '', 0, '', 'Vrancea', 1),
(1181, 'BU', 18801, '', 0, '', 'Bucuresti', 1),
(1182, 'VE-L', 23201, '', 0, 'VE-L', 'Mérida', 1),
(1183, 'VE-T', 23201, '', 0, 'VE-T', 'Trujillo', 1),
(1184, 'VE-E', 23201, '', 0, 'VE-E', 'Barinas', 1),
(1185, 'VE-M', 23202, '', 0, 'VE-M', 'Miranda', 1),
(1186, 'VE-W', 23202, '', 0, 'VE-W', 'Vargas', 1),
(1187, 'VE-A', 23202, '', 0, 'VE-A', 'Distrito Capital', 1),
(1188, 'VE-D', 23203, '', 0, 'VE-D', 'Aragua', 1),
(1189, 'VE-G', 23203, '', 0, 'VE-G', 'Carabobo', 1),
(1190, 'VE-I', 23204, '', 0, 'VE-I', 'Falcón', 1),
(1191, 'VE-K', 23204, '', 0, 'VE-K', 'Lara', 1),
(1192, 'VE-U', 23204, '', 0, 'VE-U', 'Yaracuy', 1),
(1193, 'VE-F', 23205, '', 0, 'VE-F', 'Bolívar', 1),
(1194, 'VE-X', 23205, '', 0, 'VE-X', 'Amazonas', 1),
(1195, 'VE-Y', 23205, '', 0, 'VE-Y', 'Delta Amacuro', 1),
(1196, 'VE-O', 23206, '', 0, 'VE-O', 'Nueva Esparta', 1),
(1197, 'VE-Z', 23206, '', 0, 'VE-Z', 'Dependencias Federales', 1),
(1198, 'VE-C', 23207, '', 0, 'VE-C', 'Apure', 1),
(1199, 'VE-J', 23207, '', 0, 'VE-J', 'Guárico', 1),
(1200, 'VE-H', 23207, '', 0, 'VE-H', 'Cojedes', 1),
(1201, 'VE-P', 23207, '', 0, 'VE-P', 'Portuguesa', 1),
(1202, 'VE-B', 23208, '', 0, 'VE-B', 'Anzoátegui', 1),
(1203, 'VE-N', 23208, '', 0, 'VE-N', 'Monagas', 1),
(1204, 'VE-R', 23208, '', 0, 'VE-R', 'Sucre', 1),
(1205, 'VE-V', 23209, '', 0, 'VE-V', 'Zulia', 1),
(1206, 'VE-S', 23209, '', 0, 'VE-S', 'Táchira', 1),
(1207, 'LU0001', 14001, '', 0, '', 'Clervaux', 1),
(1208, 'LU0002', 14001, '', 0, '', 'Diekirch', 1),
(1209, 'LU0003', 14001, '', 0, '', 'Redange', 1),
(1210, 'LU0004', 14001, '', 0, '', 'Vianden', 1),
(1211, 'LU0005', 14001, '', 0, '', 'Wiltz', 1),
(1212, 'LU0006', 14002, '', 0, '', 'Echternach', 1),
(1213, 'LU0007', 14002, '', 0, '', 'Grevenmacher', 1),
(1214, 'LU0008', 14002, '', 0, '', 'Remich', 1),
(1215, 'LU0009', 14003, '', 0, '', 'Capellen', 1),
(1216, 'LU0010', 14003, '', 0, '', 'Esch-sur-Alzette', 1),
(1217, 'LU0011', 14003, '', 0, '', 'Luxembourg', 1),
(1218, 'LU0012', 14003, '', 0, '', 'Mersch', 1),
(1219, '0101', 18101, '', 0, '', 'Chachapoyas', 1),
(1220, '0102', 18101, '', 0, '', 'Bagua', 1),
(1221, '0103', 18101, '', 0, '', 'Bongará', 1),
(1222, '0104', 18101, '', 0, '', 'Condorcanqui', 1),
(1223, '0105', 18101, '', 0, '', 'Luya', 1),
(1224, '0106', 18101, '', 0, '', 'Rodríguez de Mendoza', 1),
(1225, '0107', 18101, '', 0, '', 'Utcubamba', 1),
(1226, '0201', 18102, '', 0, '', 'Huaraz', 1),
(1227, '0202', 18102, '', 0, '', 'Aija', 1),
(1228, '0203', 18102, '', 0, '', 'Antonio Raymondi', 1),
(1229, '0204', 18102, '', 0, '', 'Asunción', 1),
(1230, '0205', 18102, '', 0, '', 'Bolognesi', 1),
(1231, '0206', 18102, '', 0, '', 'Carhuaz', 1),
(1232, '0207', 18102, '', 0, '', 'Carlos Fermín Fitzcarrald', 1),
(1233, '0208', 18102, '', 0, '', 'Casma', 1),
(1234, '0209', 18102, '', 0, '', 'Corongo', 1),
(1235, '0210', 18102, '', 0, '', 'Huari', 1),
(1236, '0211', 18102, '', 0, '', 'Huarmey', 1),
(1237, '0212', 18102, '', 0, '', 'Huaylas', 1),
(1238, '0213', 18102, '', 0, '', 'Mariscal Luzuriaga', 1),
(1239, '0214', 18102, '', 0, '', 'Ocros', 1),
(1240, '0215', 18102, '', 0, '', 'Pallasca', 1),
(1241, '0216', 18102, '', 0, '', 'Pomabamba', 1),
(1242, '0217', 18102, '', 0, '', 'Recuay', 1),
(1243, '0218', 18102, '', 0, '', 'Papá', 1),
(1244, '0219', 18102, '', 0, '', 'Sihuas', 1),
(1245, '0220', 18102, '', 0, '', 'Yungay', 1),
(1246, '0301', 18103, '', 0, '', 'Abancay', 1),
(1247, '0302', 18103, '', 0, '', 'Andahuaylas', 1),
(1248, '0303', 18103, '', 0, '', 'Antabamba', 1),
(1249, '0304', 18103, '', 0, '', 'Aymaraes', 1),
(1250, '0305', 18103, '', 0, '', 'Cotabambas', 1),
(1251, '0306', 18103, '', 0, '', 'Chincheros', 1),
(1252, '0307', 18103, '', 0, '', 'Grau', 1),
(1253, '0401', 18104, '', 0, '', 'Arequipa', 1),
(1254, '0402', 18104, '', 0, '', 'Camaná', 1),
(1255, '0403', 18104, '', 0, '', 'Caravelí', 1),
(1256, '0404', 18104, '', 0, '', 'Castilla', 1),
(1257, '0405', 18104, '', 0, '', 'Caylloma', 1),
(1258, '0406', 18104, '', 0, '', 'Condesuyos', 1),
(1259, '0407', 18104, '', 0, '', 'Islay', 1),
(1260, '0408', 18104, '', 0, '', 'La Unión', 1),
(1261, '0501', 18105, '', 0, '', 'Huamanga', 1),
(1262, '0502', 18105, '', 0, '', 'Cangallo', 1),
(1263, '0503', 18105, '', 0, '', 'Huanca Sancos', 1),
(1264, '0504', 18105, '', 0, '', 'Huanta', 1),
(1265, '0505', 18105, '', 0, '', 'La Mar', 1),
(1266, '0506', 18105, '', 0, '', 'Lucanas', 1),
(1267, '0507', 18105, '', 0, '', 'Parinacochas', 1),
(1268, '0508', 18105, '', 0, '', 'Páucar del Sara Sara', 1),
(1269, '0509', 18105, '', 0, '', 'Sucre', 1),
(1270, '0510', 18105, '', 0, '', 'Víctor Fajardo', 1),
(1271, '0511', 18105, '', 0, '', 'Vilcas Huamán', 1),
(1272, '0601', 18106, '', 0, '', 'Cajamarca', 1),
(1273, '0602', 18106, '', 0, '', 'Cajabamba', 1),
(1274, '0603', 18106, '', 0, '', 'Celendín', 1),
(1275, '0604', 18106, '', 0, '', 'Chota', 1),
(1276, '0605', 18106, '', 0, '', 'Contumazá', 1),
(1277, '0606', 18106, '', 0, '', 'Cutervo', 1),
(1278, '0607', 18106, '', 0, '', 'Hualgayoc', 1),
(1279, '0608', 18106, '', 0, '', 'Jaén', 1),
(1280, '0609', 18106, '', 0, '', 'San Ignacio', 1),
(1281, '0610', 18106, '', 0, '', 'San Marcos', 1),
(1282, '0611', 18106, '', 0, '', 'San Miguel', 1),
(1283, '0612', 18106, '', 0, '', 'San Pablo', 1),
(1284, '0613', 18106, '', 0, '', 'Santa Cruz', 1),
(1285, '0701', 18107, '', 0, '', 'Callao', 1),
(1286, '0801', 18108, '', 0, '', 'Cusco', 1),
(1287, '0802', 18108, '', 0, '', 'Acomayo', 1),
(1288, '0803', 18108, '', 0, '', 'Anta', 1),
(1289, '0804', 18108, '', 0, '', 'Calca', 1),
(1290, '0805', 18108, '', 0, '', 'Canas', 1),
(1291, '0806', 18108, '', 0, '', 'Canchis', 1),
(1292, '0807', 18108, '', 0, '', 'Chumbivilcas', 1),
(1293, '0808', 18108, '', 0, '', 'Espinar', 1),
(1294, '0809', 18108, '', 0, '', 'La Convención', 1),
(1295, '0810', 18108, '', 0, '', 'Paruro', 1),
(1296, '0811', 18108, '', 0, '', 'Paucartambo', 1),
(1297, '0812', 18108, '', 0, '', 'Quispicanchi', 1),
(1298, '0813', 18108, '', 0, '', 'Urubamba', 1),
(1299, '0901', 18109, '', 0, '', 'Huancavelica', 1),
(1300, '0902', 18109, '', 0, '', 'Acobamba', 1),
(1301, '0903', 18109, '', 0, '', 'Angaraes', 1),
(1302, '0904', 18109, '', 0, '', 'Castrovirreyna', 1),
(1303, '0905', 18109, '', 0, '', 'Churcampa', 1),
(1304, '0906', 18109, '', 0, '', 'Huaytará', 1),
(1305, '0907', 18109, '', 0, '', 'Tayacaja', 1),
(1306, '1001', 18110, '', 0, '', 'Huánuco', 1),
(1307, '1002', 18110, '', 0, '', 'Ambón', 1),
(1308, '1003', 18110, '', 0, '', 'Dos de Mayo', 1),
(1309, '1004', 18110, '', 0, '', 'Huacaybamba', 1),
(1310, '1005', 18110, '', 0, '', 'Huamalíes', 1),
(1311, '1006', 18110, '', 0, '', 'Leoncio Prado', 1),
(1312, '1007', 18110, '', 0, '', 'Marañón', 1),
(1313, '1008', 18110, '', 0, '', 'Pachitea', 1),
(1314, '1009', 18110, '', 0, '', 'Puerto Inca', 1),
(1315, '1010', 18110, '', 0, '', 'Lauricocha', 1),
(1316, '1011', 18110, '', 0, '', 'Yarowilca', 1),
(1317, '1101', 18111, '', 0, '', 'Ica', 1),
(1318, '1102', 18111, '', 0, '', 'Chincha', 1),
(1319, '1103', 18111, '', 0, '', 'Nazca', 1),
(1320, '1104', 18111, '', 0, '', 'Palpa', 1),
(1321, '1105', 18111, '', 0, '', 'Pisco', 1),
(1322, '1201', 18112, '', 0, '', 'Huancayo', 1),
(1323, '1202', 18112, '', 0, '', 'Concepción', 1),
(1324, '1203', 18112, '', 0, '', 'Chanchamayo', 1),
(1325, '1204', 18112, '', 0, '', 'Jauja', 1),
(1326, '1205', 18112, '', 0, '', 'Junín', 1),
(1327, '1206', 18112, '', 0, '', 'Satipo', 1),
(1328, '1207', 18112, '', 0, '', 'Tarma', 1),
(1329, '1208', 18112, '', 0, '', 'Yauli', 1),
(1330, '1209', 18112, '', 0, '', 'Chupaca', 1),
(1331, '1301', 18113, '', 0, '', 'Trujillo', 1),
(1332, '1302', 18113, '', 0, '', 'Ascope', 1),
(1333, '1303', 18113, '', 0, '', 'Bolívar', 1),
(1334, '1304', 18113, '', 0, '', 'Chepén', 1),
(1335, '1305', 18113, '', 0, '', 'Julcán', 1),
(1336, '1306', 18113, '', 0, '', 'Otuzco', 1),
(1337, '1307', 18113, '', 0, '', 'Pacasmayo', 1),
(1338, '1308', 18113, '', 0, '', 'Pataz', 1),
(1339, '1309', 18113, '', 0, '', 'Sánchez Carrión', 1),
(1340, '1310', 18113, '', 0, '', 'Santiago de Chuco', 1),
(1341, '1311', 18113, '', 0, '', 'Gran Chimú', 1),
(1342, '1312', 18113, '', 0, '', 'Virú', 1),
(1343, '1401', 18114, '', 0, '', 'Chiclayo', 1),
(1344, '1402', 18114, '', 0, '', 'Ferreñafe', 1),
(1345, '1403', 18114, '', 0, '', 'Lambayeque', 1),
(1346, '1501', 18115, '', 0, '', 'Lima', 1),
(1347, '1502', 18116, '', 0, '', 'Huaura', 1),
(1348, '1503', 18116, '', 0, '', 'Barranca', 1),
(1349, '1504', 18116, '', 0, '', 'Cajatambo', 1),
(1350, '1505', 18116, '', 0, '', 'Canta', 1),
(1351, '1506', 18116, '', 0, '', 'Cañete', 1),
(1352, '1507', 18116, '', 0, '', 'Huaral', 1),
(1353, '1508', 18116, '', 0, '', 'Huarochirí', 1),
(1354, '1509', 18116, '', 0, '', 'Oyón', 1),
(1355, '1510', 18116, '', 0, '', 'Yauyos', 1),
(1356, '1601', 18117, '', 0, '', 'Maynas', 1),
(1357, '1602', 18117, '', 0, '', 'Alto Amazonas', 1),
(1358, '1603', 18117, '', 0, '', 'Loreto', 1),
(1359, '1604', 18117, '', 0, '', 'Mariscal Ramón Castilla', 1),
(1360, '1605', 18117, '', 0, '', 'Requena', 1),
(1361, '1606', 18117, '', 0, '', 'Ucayali', 1),
(1362, '1607', 18117, '', 0, '', 'Datem del Marañón', 1),
(1363, '1701', 18118, '', 0, '', 'Tambopata', 1),
(1364, '1702', 18118, '', 0, '', 'Manú', 1),
(1365, '1703', 18118, '', 0, '', 'Tahuamanu', 1),
(1366, '1801', 18119, '', 0, '', 'Mariscal Nieto', 1),
(1367, '1802', 18119, '', 0, '', 'General Sánchez Cerro', 1),
(1368, '1803', 18119, '', 0, '', 'Ilo', 1),
(1369, '1901', 18120, '', 0, '', 'Pasco', 1),
(1370, '1902', 18120, '', 0, '', 'Daniel Alcides Carrión', 1),
(1371, '1903', 18120, '', 0, '', 'Oxapampa', 1),
(1372, '2001', 18121, '', 0, '', 'Piura', 1),
(1373, '2002', 18121, '', 0, '', 'Ayabaca', 1),
(1374, '2003', 18121, '', 0, '', 'Huancabamba', 1),
(1375, '2004', 18121, '', 0, '', 'Morropón', 1),
(1376, '2005', 18121, '', 0, '', 'Paita', 1),
(1377, '2006', 18121, '', 0, '', 'Sullana', 1),
(1378, '2007', 18121, '', 0, '', 'Talara', 1),
(1379, '2008', 18121, '', 0, '', 'Sechura', 1),
(1380, '2101', 18122, '', 0, '', 'Puno', 1),
(1381, '2102', 18122, '', 0, '', 'Azángaro', 1),
(1382, '2103', 18122, '', 0, '', 'Carabaya', 1),
(1383, '2104', 18122, '', 0, '', 'Chucuito', 1),
(1384, '2105', 18122, '', 0, '', 'El Collao', 1),
(1385, '2106', 18122, '', 0, '', 'Huancané', 1),
(1386, '2107', 18122, '', 0, '', 'Lampa', 1),
(1387, '2108', 18122, '', 0, '', 'Melgar', 1),
(1388, '2109', 18122, '', 0, '', 'Moho', 1),
(1389, '2110', 18122, '', 0, '', 'San Antonio de Putina', 1),
(1390, '2111', 18122, '', 0, '', 'San Román', 1),
(1391, '2112', 18122, '', 0, '', 'Sandia', 1),
(1392, '2113', 18122, '', 0, '', 'Yunguyo', 1),
(1393, '2201', 18123, '', 0, '', 'Moyobamba', 1),
(1394, '2202', 18123, '', 0, '', 'Bellavista', 1),
(1395, '2203', 18123, '', 0, '', 'El Dorado', 1),
(1396, '2204', 18123, '', 0, '', 'Huallaga', 1),
(1397, '2205', 18123, '', 0, '', 'Lamas', 1),
(1398, '2206', 18123, '', 0, '', 'Mariscal Cáceres', 1),
(1399, '2207', 18123, '', 0, '', 'Picota', 1),
(1400, '2208', 18123, '', 0, '', 'La Rioja', 1),
(1401, '2209', 18123, '', 0, '', 'San Martín', 1),
(1402, '2210', 18123, '', 0, '', 'Tocache', 1),
(1403, '2301', 18124, '', 0, '', 'Tacna', 1),
(1404, '2302', 18124, '', 0, '', 'Candarave', 1),
(1405, '2303', 18124, '', 0, '', 'Jorge Basadre', 1),
(1406, '2304', 18124, '', 0, '', 'Tarata', 1),
(1407, '2401', 18125, '', 0, '', 'Tumbes', 1),
(1408, '2402', 18125, '', 0, '', 'Contralmirante Villar', 1),
(1409, '2403', 18125, '', 0, '', 'Zarumilla', 1),
(1410, '2501', 18126, '', 0, '', 'Coronel Portillo', 1),
(1411, '2502', 18126, '', 0, '', 'Atalaya', 1),
(1412, '2503', 18126, '', 0, '', 'Padre Abad', 1),
(1413, '2504', 18126, '', 0, '', 'Purús', 1),
(1414, 'PA-1', 17801, '', 0, '', 'Bocas del Toro', 1),
(1415, 'PA-2', 17801, '', 0, '', 'Coclé', 1),
(1416, 'PA-3', 17801, '', 0, '', 'Colón', 1),
(1417, 'PA-4', 17801, '', 0, '', 'Chiriquí', 1),
(1418, 'PA-5', 17801, '', 0, '', 'Darién', 1),
(1419, 'PA-6', 17801, '', 0, '', 'Herrera', 1),
(1420, 'PA-7', 17801, '', 0, '', 'Los Santos', 1),
(1421, 'PA-8', 17801, '', 0, '', 'Panamá', 1),
(1422, 'PA-9', 17801, '', 0, '', 'Veraguas', 1),
(1423, 'PA-13', 17801, '', 0, '', 'Panamá Oeste', 1),
(1424, 'AE-1', 22701, '', 0, '', 'Abu Dhabi', 1),
(1425, 'AE-2', 22701, '', 0, '', 'Dubai', 1),
(1426, 'AE-3', 22701, '', 0, '', 'Ajman', 1),
(1427, 'AE-4', 22701, '', 0, '', 'Fujairah', 1),
(1428, 'AE-5', 22701, '', 0, '', 'Ras al-Khaimah', 1),
(1429, 'AE-6', 22701, '', 0, '', 'Sharjah', 1),
(1430, 'AE-7', 22701, '', 0, '', 'Umm al-Quwain', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ecotaxe`
--

CREATE TABLE `llx_c_ecotaxe` (
  `rowid` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_ecotaxe`
--

INSERT INTO `llx_c_ecotaxe` (`rowid`, `code`, `label`, `price`, `organization`, `fk_pays`, `active`) VALUES
(1, '25040', 'PETIT APPAREILS MENAGERS', 0.25000000, 'Eco-systèmes', 1, 1),
(2, '25050', 'TRES PETIT APPAREILS MENAGERS', 0.08000000, 'Eco-systèmes', 1, 1),
(3, '32070', 'ECRAN POIDS < 5 KG', 2.08000000, 'Eco-systèmes', 1, 1),
(4, '32080', 'ECRAN POIDS > 5 KG', 1.25000000, 'Eco-systèmes', 1, 1),
(5, '32051', 'ORDINATEUR PORTABLE', 0.42000000, 'Eco-systèmes', 1, 1),
(6, '32061', 'TABLETTE INFORMATIQUE', 0.84000000, 'Eco-systèmes', 1, 1),
(7, '36011', 'ORDINATEUR FIXE (UC)', 1.15000000, 'Eco-systèmes', 1, 1),
(8, '36021', 'IMPRIMANTES', 0.83000000, 'Eco-systèmes', 1, 1),
(9, '36030', 'IT (INFORMATIQUE ET TELECOMS)', 0.83000000, 'Eco-systèmes', 1, 1),
(10, '36040', 'PETIT IT (CLAVIERS / SOURIS)', 0.08000000, 'Eco-systèmes', 1, 1),
(11, '36050', 'TELEPHONIE MOBILE', 0.02000000, 'Eco-systèmes', 1, 1),
(12, '36060', 'CONNECTIQUE CABLES', 0.02000000, 'Eco-systèmes', 1, 1),
(13, '45010', 'GROS MATERIEL GRAND PUBLIC (TELEAGRANDISSEURS)', 1.67000000, 'Eco-systèmes', 1, 1),
(14, '45020', 'MOYEN MATERIEL GRAND PUBLIC (LOUPES ELECTRONIQUES)', 0.42000000, 'Eco-systèmes', 1, 1),
(15, '45030', 'PETIT MATERIEL GRAND PUBLIC (VIE QUOTIDIENNE)', 0.08000000, 'Eco-systèmes', 1, 1),
(16, '75030', 'JOUETS < 0,5 KG', 0.08000000, 'Eco-systèmes', 1, 1),
(17, '75040', 'JOUETS ENTRE 0,5 KG ET 10 KG', 0.17000000, 'Eco-systèmes', 1, 1),
(18, '74050', 'JOUETS > 10 KG', 1.67000000, 'Eco-systèmes', 1, 1),
(19, '85010', 'EQUIPEMENT MEDICAL < 0,5 KG', 0.08000000, 'Eco-systèmes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_effectif`
--

CREATE TABLE `llx_c_effectif` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_effectif`
--

INSERT INTO `llx_c_effectif` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'EF0', '-', 1, NULL),
(1, 'EF1-5', '1 - 5', 1, NULL),
(2, 'EF6-10', '6 - 10', 1, NULL),
(3, 'EF11-50', '11 - 50', 1, NULL),
(4, 'EF51-100', '51 - 100', 1, NULL),
(5, 'EF100-500', '100 - 500', 1, NULL),
(6, 'EF500-', '> 500', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_email_senderprofile`
--

CREATE TABLE `llx_c_email_senderprofile` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `private` smallint(6) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signature` text COLLATE utf8_unicode_ci,
  `position` smallint(6) DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_email_templates`
--

CREATE TABLE `llx_c_email_templates` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_template` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT '',
  `private` smallint(6) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `enabled` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `topic` text COLLATE utf8_unicode_ci,
  `joinfiles` text COLLATE utf8_unicode_ci,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `content_lines` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_email_templates`
--

INSERT INTO `llx_c_email_templates` (`rowid`, `entity`, `module`, `type_template`, `lang`, `private`, `fk_user`, `datec`, `tms`, `label`, `position`, `enabled`, `active`, `topic`, `joinfiles`, `content`, `content_lines`) VALUES
(1, 0, 'banque', 'thirdparty', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(YourSEPAMandate)', 1, '$conf->societe->enabled && $conf->banque->enabled && $conf->prelevement->enabled', 0, '__(YourSEPAMandate)__', NULL, '__(Hello)__,<br><br>\n\n__(FindYourSEPAMandate)__ :<br>\n__MYCOMPANY_NAME__<br>\n__MYCOMPANY_FULLADDRESS__<br><br>\n__(Sincerely)__<br>\n__USER_SIGNATURE__', NULL),
(2, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingEmailOnAutoSubscription)', 10, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipRequestWasReceived)__', '0', '__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipRequestWasReceived)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL),
(3, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingEmailOnMemberValidation)', 20, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasValidated)__', '0', '__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipWasValidated)__<br>__INFOS__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL),
(4, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingEmailOnNewSubscription)', 30, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(YourSubscriptionWasRecorded)__', '1', '__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourSubscriptionWasRecorded)__<br>\n\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL),
(5, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingReminderForExpiredSubscription)', 40, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(SubscriptionReminderEmail)__', '0', '__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfSubscriptionReminderEmail)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL),
(6, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingEmailOnCancelation)', 50, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasCanceled)__', '0', '__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(YourMembershipWasCanceled)__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL),
(7, 0, 'adherent', 'member', '', 0, NULL, NULL, '2019-04-25 20:25:33', '(SendingAnEMailToMember)', 60, '$conf->adherent->enabled', 1, '[__[MAIN_INFO_SOCIETE_NOM]__] __(CardContent)__', '0', '__(Hello)__,<br><br>\n\n__(ThisIsContentOfYourCard)__<br>\n__(ID)__ : __ID__<br>\n__(Civiliyty)__ : __MEMBER_CIVILITY__<br>\n__(Firstname)__ : __MEMBER_FIRSTNAME__<br>\n__(Lastname)__ : __MEMBER_LASTNAME__<br>\n__(Fullname)__ : __MEMBER_FULLNAME__<br>\n__(Company)__ : __MEMBER_COMPANY__<br>\n__(Address)__ : __MEMBER_ADDRESS__<br>\n__(Zip)__ : __MEMBER_ZIP__<br>\n__(Town)__ : __MEMBER_TOWN__<br>\n__(Country)__ : __MEMBER_COUNTRY__<br>\n__(Email)__ : __MEMBER_EMAIL__<br>\n__(Birthday)__ : __MEMBER_BIRTH__<br>\n__(Photo)__ : __MEMBER_PHOTO__<br>\n__(Login)__ : __MEMBER_LOGIN__<br>\n__(Password)__ : __MEMBER_PASSWORD__<br>\n__(Phone)__ : __MEMBER_PHONE__<br>\n__(PhonePerso)__ : __MEMBER_PHONEPRO__<br>\n__(PhoneMobile)__ : __MEMBER_PHONEMOBILE__<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_exp_tax_cat`
--

CREATE TABLE `llx_c_exp_tax_cat` (
  `rowid` int(11) NOT NULL,
  `label` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_exp_tax_cat`
--

INSERT INTO `llx_c_exp_tax_cat` (`rowid`, `label`, `entity`, `active`) VALUES
(1, 'ExpAutoCat', 1, 0),
(2, 'ExpCycloCat', 1, 0),
(3, 'ExpMotoCat', 1, 0),
(4, 'ExpAuto3CV', 1, 1),
(5, 'ExpAuto4CV', 1, 1),
(6, 'ExpAuto5CV', 1, 1),
(7, 'ExpAuto6CV', 1, 1),
(8, 'ExpAuto7CV', 1, 1),
(9, 'ExpAuto8CV', 1, 1),
(10, 'ExpAuto9CV', 1, 0),
(11, 'ExpAuto10CV', 1, 0),
(12, 'ExpAuto11CV', 1, 0),
(13, 'ExpAuto12CV', 1, 0),
(14, 'ExpAuto3PCV', 1, 0),
(15, 'ExpAuto4PCV', 1, 0),
(16, 'ExpAuto5PCV', 1, 0),
(17, 'ExpAuto6PCV', 1, 0),
(18, 'ExpAuto7PCV', 1, 0),
(19, 'ExpAuto8PCV', 1, 0),
(20, 'ExpAuto9PCV', 1, 0),
(21, 'ExpAuto10PCV', 1, 0),
(22, 'ExpAuto11PCV', 1, 0),
(23, 'ExpAuto12PCV', 1, 0),
(24, 'ExpAuto13PCV', 1, 0),
(25, 'ExpCyclo', 1, 0),
(26, 'ExpMoto12CV', 1, 0),
(27, 'ExpMoto345CV', 1, 0),
(28, 'ExpMoto5PCV', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_exp_tax_range`
--

CREATE TABLE `llx_c_exp_tax_range` (
  `rowid` int(11) NOT NULL,
  `fk_c_exp_tax_cat` int(11) NOT NULL DEFAULT '1',
  `range_ik` double NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_exp_tax_range`
--

INSERT INTO `llx_c_exp_tax_range` (`rowid`, `fk_c_exp_tax_cat`, `range_ik`, `entity`, `active`) VALUES
(1, 4, 0, 1, 1),
(2, 4, 5000, 1, 1),
(3, 4, 20000, 1, 1),
(4, 5, 0, 1, 1),
(5, 5, 5000, 1, 1),
(6, 5, 20000, 1, 1),
(7, 6, 0, 1, 1),
(8, 6, 5000, 1, 1),
(9, 6, 20000, 1, 1),
(10, 7, 0, 1, 1),
(11, 7, 5000, 1, 1),
(12, 7, 20000, 1, 1),
(13, 8, 0, 1, 1),
(14, 8, 5000, 1, 1),
(15, 8, 20000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_field_list`
--

CREATE TABLE `llx_c_field_list` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `element` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `align` varchar(6) COLLATE utf8_unicode_ci DEFAULT 'left',
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `search` tinyint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `enabled` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_format_cards`
--

CREATE TABLE `llx_c_format_cards` (
  `rowid` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paper_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `orientation` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `metric` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `leftmargin` double(24,8) NOT NULL,
  `topmargin` double(24,8) NOT NULL,
  `nx` int(11) NOT NULL,
  `ny` int(11) NOT NULL,
  `spacex` double(24,8) NOT NULL,
  `spacey` double(24,8) NOT NULL,
  `width` double(24,8) NOT NULL,
  `height` double(24,8) NOT NULL,
  `font_size` int(11) NOT NULL,
  `custom_x` double(24,8) NOT NULL,
  `custom_y` double(24,8) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_format_cards`
--

INSERT INTO `llx_c_format_cards` (`rowid`, `code`, `name`, `paper_size`, `orientation`, `metric`, `leftmargin`, `topmargin`, `nx`, `ny`, `spacex`, `spacey`, `width`, `height`, `font_size`, `custom_x`, `custom_y`, `active`) VALUES
(1, '5160', 'Avery-5160, WL-875WX', 'letter', 'P', 'mm', 5.58165000, 12.70000000, 3, 10, 3.55600000, 0.00000000, 65.87490000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(2, '5161', 'Avery-5161, WL-75WX', 'letter', 'P', 'mm', 4.44500000, 12.70000000, 2, 10, 3.96800000, 0.00000000, 101.60000000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(3, '5162', 'Avery-5162, WL-100WX', 'letter', 'P', 'mm', 3.87350000, 22.35200000, 2, 7, 4.95400000, 0.00000000, 101.60000000, 33.78100000, 8, 0.00000000, 0.00000000, 1),
(4, '5163', 'Avery-5163, WL-125WX', 'letter', 'P', 'mm', 4.57200000, 12.70000000, 2, 5, 3.55600000, 0.00000000, 101.60000000, 50.80000000, 10, 0.00000000, 0.00000000, 1),
(5, '5164', '5164 (Letter)', 'letter', 'P', 'in', 0.14800000, 0.50000000, 2, 3, 0.20310000, 0.00000000, 4.00000000, 3.33000000, 12, 0.00000000, 0.00000000, 0),
(6, '8600', 'Avery-8600', 'letter', 'P', 'mm', 7.10000000, 19.00000000, 3, 10, 9.50000000, 3.10000000, 66.60000000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(7, '99012', 'DYMO 99012 89*36mm', 'custom', 'L', 'mm', 1.00000000, 1.00000000, 1, 1, 0.00000000, 0.00000000, 36.00000000, 89.00000000, 10, 36.00000000, 89.00000000, 1),
(8, '99014', 'DYMO 99014 101*54mm', 'custom', 'L', 'mm', 1.00000000, 1.00000000, 1, 1, 0.00000000, 0.00000000, 54.00000000, 101.00000000, 10, 54.00000000, 101.00000000, 1),
(9, 'AVERYC32010', 'Avery-C32010', 'A4', 'P', 'mm', 15.00000000, 13.00000000, 2, 5, 10.00000000, 0.00000000, 85.00000000, 54.00000000, 10, 0.00000000, 0.00000000, 1),
(10, 'CARD', 'Dolibarr Business cards', 'A4', 'P', 'mm', 15.00000000, 15.00000000, 2, 5, 0.00000000, 0.00000000, 85.00000000, 54.00000000, 10, 0.00000000, 0.00000000, 1),
(11, 'L7163', 'Avery-L7163', 'A4', 'P', 'mm', 5.00000000, 15.00000000, 2, 7, 2.50000000, 0.00000000, 99.10000000, 38.10000000, 8, 0.00000000, 0.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_forme_juridique`
--

CREATE TABLE `llx_c_forme_juridique` (
  `rowid` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isvatexempted` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_forme_juridique`
--

INSERT INTO `llx_c_forme_juridique` (`rowid`, `code`, `fk_pays`, `libelle`, `isvatexempted`, `active`, `module`, `position`) VALUES
(247, 0, 0, '-', 0, 1, NULL, 0),
(248, 2301, 23, 'Monotributista', 0, 1, NULL, 0),
(249, 2302, 23, 'Sociedad Civil', 0, 1, NULL, 0),
(250, 2303, 23, 'Sociedades Comerciales', 0, 1, NULL, 0),
(251, 2304, 23, 'Sociedades de Hecho', 0, 1, NULL, 0),
(252, 2305, 23, 'Sociedades Irregulares', 0, 1, NULL, 0),
(253, 2306, 23, 'Sociedad Colectiva', 0, 1, NULL, 0),
(254, 2307, 23, 'Sociedad en Comandita Simple', 0, 1, NULL, 0),
(255, 2308, 23, 'Sociedad de Capital e Industria', 0, 1, NULL, 0),
(256, 2309, 23, 'Sociedad Accidental o en participación', 0, 1, NULL, 0),
(257, 2310, 23, 'Sociedad de Responsabilidad Limitada', 0, 1, NULL, 0),
(258, 2311, 23, 'Sociedad Anónima', 0, 1, NULL, 0),
(259, 2312, 23, 'Sociedad Anónima con Participación Estatal Mayoritaria', 0, 1, NULL, 0),
(260, 2313, 23, 'Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)', 0, 1, NULL, 0),
(261, 4100, 41, 'GmbH - Gesellschaft mit beschränkter Haftung', 0, 1, NULL, 0),
(262, 4101, 41, 'GesmbH - Gesellschaft mit beschränkter Haftung', 0, 1, NULL, 0),
(263, 4102, 41, 'AG - Aktiengesellschaft', 0, 1, NULL, 0),
(264, 4103, 41, 'EWIV - Europäische wirtschaftliche Interessenvereinigung', 0, 1, NULL, 0),
(265, 4104, 41, 'KEG - Kommanditerwerbsgesellschaft', 0, 1, NULL, 0),
(266, 4105, 41, 'OEG - Offene Erwerbsgesellschaft', 0, 1, NULL, 0),
(267, 4106, 41, 'OHG - Offene Handelsgesellschaft', 0, 1, NULL, 0),
(268, 4107, 41, 'AG & Co KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(269, 4108, 41, 'GmbH & Co KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(270, 4109, 41, 'KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(271, 4110, 41, 'OG - Offene Gesellschaft', 0, 1, NULL, 0),
(272, 4111, 41, 'GbR - Gesellschaft nach bürgerlichem Recht', 0, 1, NULL, 0),
(273, 4112, 41, 'GesbR - Gesellschaft nach bürgerlichem Recht', 0, 1, NULL, 0),
(274, 4113, 41, 'GesnbR - Gesellschaft nach bürgerlichem Recht', 0, 1, NULL, 0),
(275, 4114, 41, 'e.U. - eingetragener Einzelunternehmer', 0, 1, NULL, 0),
(276, 11, 1, 'Artisan Commerçant (EI)', 0, 1, NULL, 0),
(277, 12, 1, 'Commerçant (EI)', 0, 1, NULL, 0),
(278, 13, 1, 'Artisan (EI)', 0, 1, NULL, 0),
(279, 14, 1, 'Officier public ou ministériel', 0, 1, NULL, 0),
(280, 15, 1, 'Profession libérale (EI)', 0, 1, NULL, 0),
(281, 16, 1, 'Exploitant agricole', 0, 1, NULL, 0),
(282, 17, 1, 'Agent commercial', 0, 1, NULL, 0),
(283, 18, 1, 'Associé Gérant de société', 0, 1, NULL, 0),
(284, 19, 1, 'Personne physique', 0, 1, NULL, 0),
(285, 21, 1, 'Indivision', 0, 1, NULL, 0),
(286, 22, 1, 'Société créée de fait', 0, 1, NULL, 0),
(287, 23, 1, 'Société en participation', 0, 1, NULL, 0),
(288, 27, 1, 'Paroisse hors zone concordataire', 0, 1, NULL, 0),
(289, 29, 1, 'Groupement de droit privé non doté de la personnalité morale', 0, 1, NULL, 0),
(290, 31, 1, 'Personne morale de droit étranger, immatriculée au RCS', 0, 1, NULL, 0),
(291, 32, 1, 'Personne morale de droit étranger, non immatriculée au RCS', 0, 1, NULL, 0),
(292, 35, 1, 'Régime auto-entrepreneur', 0, 1, NULL, 0),
(293, 41, 1, 'Etablissement public ou régie à caractère industriel ou commercial', 0, 1, NULL, 0),
(294, 51, 1, 'Société coopérative commerciale particulière', 0, 1, NULL, 0),
(295, 52, 1, 'Société en nom collectif', 0, 1, NULL, 0),
(296, 53, 1, 'Société en commandite', 0, 1, NULL, 0),
(297, 54, 1, 'Société à responsabilité limitée (SARL)', 0, 1, NULL, 0),
(298, 55, 1, 'Société anonyme à conseil d administration', 0, 1, NULL, 0),
(299, 56, 1, 'Société anonyme à directoire', 0, 1, NULL, 0),
(300, 57, 1, 'Société par actions simplifiée (SAS)', 0, 1, NULL, 0),
(301, 58, 1, 'Entreprise Unipersonnelle à Responsabilité Limitée (EURL)', 0, 1, NULL, 0),
(302, 59, 1, 'Société par actions simplifiée unipersonnelle (SASU)', 0, 1, NULL, 0),
(303, 60, 1, 'Entreprise Individuelle à Responsabilité Limitée (EIRL)', 0, 1, NULL, 0),
(304, 61, 1, 'Caisse d\'épargne et de prévoyance', 0, 1, NULL, 0),
(305, 62, 1, 'Groupement d\'intérêt économique (GIE)', 0, 1, NULL, 0),
(306, 63, 1, 'Société coopérative agricole', 0, 1, NULL, 0),
(307, 64, 1, 'Société non commerciale d assurances', 0, 1, NULL, 0),
(308, 65, 1, 'Société civile', 0, 1, NULL, 0),
(309, 69, 1, 'Personnes de droit privé inscrites au RCS', 0, 1, NULL, 0),
(310, 71, 1, 'Administration de l état', 0, 1, NULL, 0),
(311, 72, 1, 'Collectivité territoriale', 0, 1, NULL, 0),
(312, 73, 1, 'Etablissement public administratif', 0, 1, NULL, 0),
(313, 74, 1, 'Personne morale de droit public administratif', 0, 1, NULL, 0),
(314, 81, 1, 'Organisme gérant régime de protection social à adhésion obligatoire', 0, 1, NULL, 0),
(315, 82, 1, 'Organisme mutualiste', 0, 1, NULL, 0),
(316, 83, 1, 'Comité d entreprise', 0, 1, NULL, 0),
(317, 84, 1, 'Organisme professionnel', 0, 1, NULL, 0),
(318, 85, 1, 'Organisme de retraite à adhésion non obligatoire', 0, 1, NULL, 0),
(319, 91, 1, 'Syndicat de propriétaires', 0, 1, NULL, 0),
(320, 92, 1, 'Association loi 1901 ou assimilé', 0, 1, NULL, 0),
(321, 93, 1, 'Fondation', 0, 1, NULL, 0),
(322, 99, 1, 'Personne morale de droit privé', 0, 1, NULL, 0),
(323, 200, 2, 'Indépendant', 0, 1, NULL, 0),
(324, 201, 2, 'SPRL - Société à responsabilité limitée', 0, 1, NULL, 0),
(325, 202, 2, 'SA   - Société Anonyme', 0, 1, NULL, 0),
(326, 203, 2, 'SCRL - Société coopérative à responsabilité limitée', 0, 1, NULL, 0),
(327, 204, 2, 'ASBL - Association sans but Lucratif', 0, 1, NULL, 0),
(328, 205, 2, 'SCRI - Société coopérative à responsabilité illimitée', 0, 1, NULL, 0),
(329, 206, 2, 'SCS  - Société en commandite simple', 0, 1, NULL, 0),
(330, 207, 2, 'SCA  - Société en commandite par action', 0, 1, NULL, 0),
(331, 208, 2, 'SNC  - Société en nom collectif', 0, 1, NULL, 0),
(332, 209, 2, 'GIE  - Groupement d intérêt économique', 0, 1, NULL, 0),
(333, 210, 2, 'GEIE - Groupement européen d intérêt économique', 0, 1, NULL, 0),
(334, 220, 2, 'Eenmanszaak', 0, 1, NULL, 0),
(335, 221, 2, 'BVBA - Besloten vennootschap met beperkte aansprakelijkheid', 0, 1, NULL, 0),
(336, 222, 2, 'NV   - Naamloze Vennootschap', 0, 1, NULL, 0),
(337, 223, 2, 'CVBA - Coöperatieve vennootschap met beperkte aansprakelijkheid', 0, 1, NULL, 0),
(338, 224, 2, 'VZW  - Vereniging zonder winstoogmerk', 0, 1, NULL, 0),
(339, 225, 2, 'CVOA - Coöperatieve vennootschap met onbeperkte aansprakelijkheid ', 0, 1, NULL, 0),
(340, 226, 2, 'GCV  - Gewone commanditaire vennootschap', 0, 1, NULL, 0),
(341, 227, 2, 'Comm.VA - Commanditaire vennootschap op aandelen', 0, 1, NULL, 0),
(342, 228, 2, 'VOF  - Vennootschap onder firma', 0, 1, NULL, 0),
(343, 229, 2, 'VS0  - Vennootschap met sociaal oogmerk', 0, 1, NULL, 0),
(344, 500, 5, 'GmbH - Gesellschaft mit beschränkter Haftung', 0, 1, NULL, 0),
(345, 501, 5, 'AG - Aktiengesellschaft ', 0, 1, NULL, 0),
(346, 502, 5, 'GmbH&Co. KG - Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft', 0, 1, NULL, 0),
(347, 503, 5, 'Gewerbe - Personengesellschaft', 0, 1, NULL, 0),
(348, 504, 5, 'UG - Unternehmergesellschaft -haftungsbeschränkt-', 0, 1, NULL, 0),
(349, 505, 5, 'GbR - Gesellschaft des bürgerlichen Rechts', 0, 1, NULL, 0),
(350, 506, 5, 'KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(351, 507, 5, 'Ltd. - Limited Company', 0, 1, NULL, 0),
(352, 508, 5, 'OHG - Offene Handelsgesellschaft', 0, 1, NULL, 0),
(353, 8001, 80, 'Aktieselvskab A/S', 0, 1, NULL, 0),
(354, 8002, 80, 'Anparts Selvskab ApS', 0, 1, NULL, 0),
(355, 8003, 80, 'Personlig ejet selvskab', 0, 1, NULL, 0),
(356, 8004, 80, 'Iværksætterselvskab IVS', 0, 1, NULL, 0),
(357, 8005, 80, 'Interessentskab I/S', 0, 1, NULL, 0),
(358, 8006, 80, 'Holdingselskab', 0, 1, NULL, 0),
(359, 8007, 80, 'Selskab Med Begrænset Hæftelse SMBA', 0, 1, NULL, 0),
(360, 8008, 80, 'Kommanditselskab K/S', 0, 1, NULL, 0),
(361, 8009, 80, 'SPE-selskab', 0, 1, NULL, 0),
(362, 10201, 102, 'Ατομική επιχείρηση', 0, 1, NULL, 0),
(363, 10202, 102, 'Εταιρική  επιχείρηση', 0, 1, NULL, 0),
(364, 10203, 102, 'Ομόρρυθμη Εταιρεία Ο.Ε', 0, 1, NULL, 0),
(365, 10204, 102, 'Ετερόρρυθμη Εταιρεία Ε.Ε', 0, 1, NULL, 0),
(366, 10205, 102, 'Εταιρεία Περιορισμένης Ευθύνης Ε.Π.Ε', 0, 1, NULL, 0),
(367, 10206, 102, 'Ανώνυμη Εταιρεία Α.Ε', 0, 1, NULL, 0),
(368, 10207, 102, 'Ανώνυμη ναυτιλιακή εταιρεία Α.Ν.Ε', 0, 1, NULL, 0),
(369, 10208, 102, 'Συνεταιρισμός', 0, 1, NULL, 0),
(370, 10209, 102, 'Συμπλοιοκτησία', 0, 1, NULL, 0),
(371, 301, 3, 'Società semplice', 0, 1, NULL, 0),
(372, 302, 3, 'Società in nome collettivo s.n.c.', 0, 1, NULL, 0),
(373, 303, 3, 'Società in accomandita semplice s.a.s.', 0, 1, NULL, 0),
(374, 304, 3, 'Società per azioni s.p.a.', 0, 1, NULL, 0),
(375, 305, 3, 'Società a responsabilità limitata s.r.l.', 0, 1, NULL, 0),
(376, 306, 3, 'Società in accomandita per azioni s.a.p.a.', 0, 1, NULL, 0),
(377, 307, 3, 'Società cooperativa a r.l.', 0, 1, NULL, 0),
(378, 308, 3, 'Società consortile', 0, 1, NULL, 0),
(379, 309, 3, 'Società europea', 0, 1, NULL, 0),
(380, 310, 3, 'Società cooperativa europea', 0, 1, NULL, 0),
(381, 311, 3, 'Società unipersonale', 0, 1, NULL, 0),
(382, 312, 3, 'Società di professionisti', 0, 1, NULL, 0),
(383, 313, 3, 'Società di fatto', 0, 1, NULL, 0),
(384, 315, 3, 'Società apparente', 0, 1, NULL, 0),
(385, 316, 3, 'Impresa individuale ', 0, 1, NULL, 0),
(386, 317, 3, 'Impresa coniugale', 0, 1, NULL, 0),
(387, 318, 3, 'Impresa familiare', 0, 1, NULL, 0),
(388, 319, 3, 'Consorzio cooperativo', 0, 1, NULL, 0),
(389, 320, 3, 'Società cooperativa sociale', 0, 1, NULL, 0),
(390, 321, 3, 'Società cooperativa di consumo', 0, 1, NULL, 0),
(391, 322, 3, 'Società cooperativa agricola', 0, 1, NULL, 0),
(392, 323, 3, 'A.T.I. Associazione temporanea di imprese', 0, 1, NULL, 0),
(393, 324, 3, 'R.T.I. Raggruppamento temporaneo di imprese', 0, 1, NULL, 0),
(394, 325, 3, 'Studio associato', 0, 1, NULL, 0),
(395, 600, 6, 'Raison Individuelle', 0, 1, NULL, 0),
(396, 601, 6, 'Société Simple', 0, 1, NULL, 0),
(397, 602, 6, 'Société en nom collectif', 0, 1, NULL, 0),
(398, 603, 6, 'Société en commandite', 0, 1, NULL, 0),
(399, 604, 6, 'Société anonyme (SA)', 0, 1, NULL, 0),
(400, 605, 6, 'Société en commandite par actions', 0, 1, NULL, 0),
(401, 606, 6, 'Société à responsabilité limitée (SARL)', 0, 1, NULL, 0),
(402, 607, 6, 'Société coopérative', 0, 1, NULL, 0),
(403, 608, 6, 'Association', 0, 1, NULL, 0),
(404, 609, 6, 'Fondation', 0, 1, NULL, 0),
(405, 700, 7, 'Sole Trader', 0, 1, NULL, 0),
(406, 701, 7, 'Partnership', 0, 1, NULL, 0),
(407, 702, 7, 'Private Limited Company by shares (LTD)', 0, 1, NULL, 0),
(408, 703, 7, 'Public Limited Company', 0, 1, NULL, 0),
(409, 704, 7, 'Workers Cooperative', 0, 1, NULL, 0),
(410, 705, 7, 'Limited Liability Partnership', 0, 1, NULL, 0),
(411, 706, 7, 'Franchise', 0, 1, NULL, 0),
(412, 1000, 10, 'Société à responsabilité limitée (SARL)', 0, 1, NULL, 0),
(413, 1001, 10, 'Société en Nom Collectif (SNC)', 0, 1, NULL, 0),
(414, 1002, 10, 'Société en Commandite Simple (SCS)', 0, 1, NULL, 0),
(415, 1003, 10, 'société en participation', 0, 1, NULL, 0),
(416, 1004, 10, 'Société Anonyme (SA)', 0, 1, NULL, 0),
(417, 1005, 10, 'Société Unipersonnelle à Responsabilité Limitée (SUARL)', 0, 1, NULL, 0),
(418, 1006, 10, 'Groupement d\'intérêt économique (GEI)', 0, 1, NULL, 0),
(419, 1007, 10, 'Groupe de sociétés', 0, 1, NULL, 0),
(420, 1701, 17, 'Eenmanszaak', 0, 1, NULL, 0),
(421, 1702, 17, 'Maatschap', 0, 1, NULL, 0),
(422, 1703, 17, 'Vennootschap onder firma', 0, 1, NULL, 0),
(423, 1704, 17, 'Commanditaire vennootschap', 0, 1, NULL, 0),
(424, 1705, 17, 'Besloten vennootschap (BV)', 0, 1, NULL, 0),
(425, 1706, 17, 'Naamloze Vennootschap (NV)', 0, 1, NULL, 0),
(426, 1707, 17, 'Vereniging', 0, 1, NULL, 0),
(427, 1708, 17, 'Stichting', 0, 1, NULL, 0),
(428, 1709, 17, 'Coöperatie met beperkte aansprakelijkheid (BA)', 0, 1, NULL, 0),
(429, 1710, 17, 'Coöperatie met uitgesloten aansprakelijkheid (UA)', 0, 1, NULL, 0),
(430, 1711, 17, 'Coöperatie met wettelijke aansprakelijkheid (WA)', 0, 1, NULL, 0),
(431, 1712, 17, 'Onderlinge waarborgmaatschappij', 0, 1, NULL, 0),
(432, 401, 4, 'Empresario Individual', 0, 1, NULL, 0),
(433, 402, 4, 'Comunidad de Bienes', 0, 1, NULL, 0),
(434, 403, 4, 'Sociedad Civil', 0, 1, NULL, 0),
(435, 404, 4, 'Sociedad Colectiva', 0, 1, NULL, 0),
(436, 405, 4, 'Sociedad Limitada', 0, 1, NULL, 0),
(437, 406, 4, 'Sociedad Anónima', 0, 1, NULL, 0),
(438, 407, 4, 'Sociedad Comanditaria por Acciones', 0, 1, NULL, 0),
(439, 408, 4, 'Sociedad Comanditaria Simple', 0, 1, NULL, 0),
(440, 409, 4, 'Sociedad Laboral', 0, 1, NULL, 0),
(441, 410, 4, 'Sociedad Cooperativa', 0, 1, NULL, 0),
(442, 411, 4, 'Sociedad de Garantía Recíproca', 0, 1, NULL, 0),
(443, 412, 4, 'Entidad de Capital-Riesgo', 0, 1, NULL, 0),
(444, 413, 4, 'Agrupación de Interés Económico', 0, 1, NULL, 0),
(445, 414, 4, 'Sociedad de Inversión Mobiliaria', 0, 1, NULL, 0),
(446, 415, 4, 'Agrupación sin Ánimo de Lucro', 0, 1, NULL, 0),
(447, 15201, 152, 'Mauritius Private Company Limited By Shares', 0, 1, NULL, 0),
(448, 15202, 152, 'Mauritius Company Limited By Guarantee', 0, 1, NULL, 0),
(449, 15203, 152, 'Mauritius Public Company Limited By Shares', 0, 1, NULL, 0),
(450, 15204, 152, 'Mauritius Foreign Company', 0, 1, NULL, 0),
(451, 15205, 152, 'Mauritius GBC1 (Offshore Company)', 0, 1, NULL, 0),
(452, 15206, 152, 'Mauritius GBC2 (International Company)', 0, 1, NULL, 0),
(453, 15207, 152, 'Mauritius General Partnership', 0, 1, NULL, 0),
(454, 15208, 152, 'Mauritius Limited Partnership', 0, 1, NULL, 0),
(455, 15209, 152, 'Mauritius Sole Proprietorship', 0, 1, NULL, 0),
(456, 15210, 152, 'Mauritius Trusts', 0, 1, NULL, 0),
(457, 15401, 154, 'Sociedad en nombre colectivo', 0, 1, NULL, 0),
(458, 15402, 154, 'Sociedad en comandita simple', 0, 1, NULL, 0),
(459, 15403, 154, 'Sociedad de responsabilidad limitada', 0, 1, NULL, 0),
(460, 15404, 154, 'Sociedad anónima', 0, 1, NULL, 0),
(461, 15405, 154, 'Sociedad en comandita por acciones', 0, 1, NULL, 0),
(462, 15406, 154, 'Sociedad cooperativa', 0, 1, NULL, 0),
(463, 14001, 140, 'Entreprise individuelle', 0, 1, NULL, 0),
(464, 14002, 140, 'Société en nom collectif (SENC)', 0, 1, NULL, 0),
(465, 14003, 140, 'Société en commandite simple (SECS)', 0, 1, NULL, 0),
(466, 14004, 140, 'Société en commandite par actions (SECA)', 0, 1, NULL, 0),
(467, 14005, 140, 'Société à responsabilité limitée (SARL)', 0, 1, NULL, 0),
(468, 14006, 140, 'Société anonyme (SA)', 0, 1, NULL, 0),
(469, 14007, 140, 'Société coopérative (SC)', 0, 1, NULL, 0),
(470, 14008, 140, 'Société européenne (SE)', 0, 1, NULL, 0),
(471, 18801, 188, 'AFJ - Alte forme juridice', 0, 1, NULL, 0),
(472, 18802, 188, 'ASF - Asociatie familialã', 0, 1, NULL, 0),
(473, 18803, 188, 'CON - Concesiune', 0, 1, NULL, 0),
(474, 18804, 188, 'CRL - Soc civilã profesionala cu pers. juridica si rãspundere limitata (SPRL)', 0, 1, NULL, 0),
(475, 18805, 188, 'INC - Închiriere', 0, 1, NULL, 0),
(476, 18806, 188, 'LOC - Locaţie de gestiune', 0, 1, NULL, 0),
(477, 18807, 188, 'OC1 - Organizaţie cooperatistã meşteşugãreascã', 0, 1, NULL, 0),
(478, 18808, 188, 'OC2 - Organizaţie cooperatistã de consum', 0, 1, NULL, 0),
(479, 18809, 188, 'OC3 - Organizaţie cooperatistã de credit', 0, 1, NULL, 0),
(480, 18810, 188, 'PFA - Persoanã fizicã independentã', 0, 1, NULL, 0),
(481, 18811, 188, 'RA - Regie autonomã', 0, 1, NULL, 0),
(482, 18812, 188, 'SA - Societate comercialã pe acţiuni', 0, 1, NULL, 0),
(483, 18813, 188, 'SCS - Societate comercialã în comanditã simplã', 0, 1, NULL, 0),
(484, 18814, 188, 'SNC - Societate comercialã în nume colectiv', 0, 1, NULL, 0),
(485, 18815, 188, 'SPI - Societate profesionala practicieni in insolventa (SPPI)', 0, 1, NULL, 0),
(486, 18816, 188, 'SRL - Societate comercialã cu rãspundere limitatã', 0, 1, NULL, 0),
(487, 18817, 188, 'URL - Intreprindere profesionala unipersonala cu rãspundere limitata (IPURL)', 0, 1, NULL, 0),
(488, 17801, 178, 'Empresa individual', 0, 1, NULL, 0),
(489, 17802, 178, 'Asociación General', 0, 1, NULL, 0),
(490, 17803, 178, 'Sociedad de Responsabilidad Limitada', 0, 1, NULL, 0),
(491, 17804, 178, 'Sociedad Civil', 0, 1, NULL, 0),
(492, 17805, 178, 'Sociedad Anónima', 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_holiday_types`
--

CREATE TABLE `llx_c_holiday_types` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `affect` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `newByMonth` double(8,5) NOT NULL DEFAULT '0.00000',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_holiday_types`
--

INSERT INTO `llx_c_holiday_types` (`rowid`, `code`, `label`, `affect`, `delay`, `newByMonth`, `fk_country`, `active`) VALUES
(1, 'LEAVE_SICK', 'Sick leave', 0, 0, 0.00000, NULL, 1),
(2, 'LEAVE_OTHER', 'Other leave', 0, 0, 0.00000, NULL, 1),
(3, 'LEAVE_PAID', 'Paid vacation', 1, 7, 0.00000, NULL, 0),
(4, 'LEAVE_RTT_FR', 'RTT', 1, 7, 0.83000, 1, 1),
(5, 'LEAVE_PAID_FR', 'Paid vacation', 1, 30, 2.08334, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_hrm_department`
--

CREATE TABLE `llx_c_hrm_department` (
  `rowid` int(11) NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_hrm_department`
--

INSERT INTO `llx_c_hrm_department` (`rowid`, `pos`, `code`, `label`, `active`) VALUES
(1, 5, 'MANAGEMENT', 'Management', 1),
(3, 15, 'TRAINING', 'Training', 1),
(4, 20, 'IT', 'Inform. Technology (IT)', 0),
(5, 25, 'MARKETING', 'Marketing', 0),
(6, 30, 'SALES', 'Sales', 1),
(7, 35, 'LEGAL', 'Legal', 0),
(8, 40, 'FINANCIAL', 'Financial accounting', 1),
(9, 45, 'HUMANRES', 'Human resources', 1),
(10, 50, 'PURCHASING', 'Purchasing', 1),
(12, 60, 'CUSTOMSERV', 'Customer service', 0),
(14, 70, 'LOGISTIC', 'Logistics', 1),
(15, 75, 'CONSTRUCT', 'Engineering/design', 0),
(16, 80, 'PRODUCTION', 'Production', 1),
(17, 85, 'QUALITY', 'Quality assurance', 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_hrm_function`
--

CREATE TABLE `llx_c_hrm_function` (
  `rowid` int(11) NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_level` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_hrm_function`
--

INSERT INTO `llx_c_hrm_function` (`rowid`, `pos`, `code`, `label`, `c_level`, `active`) VALUES
(1, 5, 'EXECBOARD', 'Executive board', 0, 1),
(2, 10, 'MANAGDIR', 'Managing director', 1, 1),
(3, 15, 'ACCOUNTMANAG', 'Account manager', 0, 1),
(4, 20, 'ENGAGDIR', 'Engagement director', 1, 1),
(5, 25, 'DIRECTOR', 'Director', 1, 1),
(6, 30, 'PROJMANAG', 'Project manager', 0, 1),
(7, 35, 'DEPHEAD', 'Department head', 0, 1),
(8, 40, 'SECRETAR', 'Secretary', 0, 1),
(9, 45, 'EMPLOYEE', 'Department employee', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_incoterms`
--

CREATE TABLE `llx_c_incoterms` (
  `rowid` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_incoterms`
--

INSERT INTO `llx_c_incoterms` (`rowid`, `code`, `libelle`, `active`) VALUES
(1, 'EXW', 'Ex Works, au départ non chargé, non dédouané sortie d\'usine (uniquement adapté aux flux domestiques, nationaux)', 1),
(2, 'FCA', 'Free Carrier, marchandises dédouanées et chargées dans le pays de départ, chez le vendeur ou chez le commissionnaire de transport de l\'acheteur', 1),
(3, 'FAS', 'Free Alongside Ship, sur le quai du port de départ', 1),
(4, 'FOB', 'Free On Board, chargé sur le bateau, les frais de chargement dans celui-ci étant fonction du liner term indiqué par la compagnie maritime (à la charge du vendeur)', 1),
(5, 'CFR', 'Cost and Freight, chargé dans le bateau, livraison au port de départ, frais payés jusqu\'au port d\'arrivée, sans assurance pour le transport, non déchargé du navire à destination (les frais de déchargement sont inclus ou non au port d\'arrivée)', 1),
(6, 'CIF', 'Cost, Insurance and Freight, chargé sur le bateau, frais jusqu\'au port d\'arrivée, avec l\'assurance marchandise transportée souscrite par le vendeur pour le compte de l\'acheteur', 1),
(7, 'CPT', 'Carriage Paid To, livraison au premier transporteur, frais jusqu\'au déchargement du mode de transport, sans assurance pour le transport', 1),
(8, 'CIP', 'Carriage and Insurance Paid to, idem CPT, avec assurance marchandise transportée souscrite par le vendeur pour le compte de l\'acheteur', 1),
(9, 'DAT', 'Delivered At Terminal, marchandises (déchargées) livrées sur quai, dans un terminal maritime, fluvial, aérien, routier ou ferroviaire désigné (dédouanement import, et post-acheminement payés par l\'acheteur)', 1),
(10, 'DAP', 'Delivered At Place, marchandises (non déchargées) mises à disposition de l\'acheteur dans le pays d\'importation au lieu précisé dans le contrat (déchargement, dédouanement import payé par l\'acheteur)', 1),
(11, 'DDP', 'Delivered Duty Paid, marchandises (non déchargées) livrées à destination finale, dédouanement import et taxes à la charge du vendeur ; l\'acheteur prend en charge uniquement le déchargement (si exclusion des taxes type TVA, le préciser clairement)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_method`
--

CREATE TABLE `llx_c_input_method` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_input_method`
--

INSERT INTO `llx_c_input_method` (`rowid`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'OrderByMail', 'Courrier', 1, NULL),
(2, 'OrderByFax', 'Fax', 1, NULL),
(3, 'OrderByEMail', 'EMail', 1, NULL),
(4, 'OrderByPhone', 'Téléphone', 1, NULL),
(5, 'OrderByWWW', 'En ligne', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_reason`
--

CREATE TABLE `llx_c_input_reason` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_input_reason`
--

INSERT INTO `llx_c_input_reason` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'SRC_INTE', 'Web site', 1, NULL),
(2, 'SRC_CAMP_MAIL', 'Mailing campaign', 1, NULL),
(3, 'SRC_CAMP_PHO', 'Phone campaign', 1, NULL),
(4, 'SRC_CAMP_FAX', 'Fax campaign', 1, NULL),
(5, 'SRC_COMM', 'Commercial contact', 1, NULL),
(6, 'SRC_SHOP', 'Shop contact', 1, NULL),
(7, 'SRC_CAMP_EMAIL', 'EMailing campaign', 1, NULL),
(8, 'SRC_WOM', 'Word of mouth', 1, NULL),
(9, 'SRC_PARTNER', 'Partner', 1, NULL),
(10, 'SRC_EMPLOYEE', 'Employee', 1, NULL),
(11, 'SRC_SPONSORING', 'Sponsorship', 1, NULL),
(12, 'SRC_CUSTOMER', 'Incoming contact of a customer', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_lead_status`
--

CREATE TABLE `llx_c_lead_status` (
  `rowid` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `percent` double(5,2) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_lead_status`
--

INSERT INTO `llx_c_lead_status` (`rowid`, `code`, `label`, `position`, `percent`, `active`) VALUES
(1, 'PROSP', 'Prospection', 10, 0.00, 1),
(2, 'QUAL', 'Qualification', 20, 20.00, 1),
(3, 'PROPO', 'Proposal', 30, 40.00, 1),
(4, 'NEGO', 'Negotiation', 40, 60.00, 1),
(5, 'PENDING', 'Pending', 50, 50.00, 0),
(6, 'WON', 'Won', 60, 100.00, 1),
(7, 'LOST', 'Lost', 70, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paiement`
--

CREATE TABLE `llx_c_paiement` (
  `id` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(62) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_paiement`
--

INSERT INTO `llx_c_paiement` (`id`, `entity`, `code`, `libelle`, `type`, `active`, `accountancy_code`, `module`, `position`) VALUES
(1, 1, 'TIP', 'TIP', 2, 0, NULL, NULL, 0),
(2, 1, 'VIR', 'Transfer', 2, 1, NULL, NULL, 0),
(3, 1, 'PRE', 'Debit order', 2, 1, NULL, NULL, 0),
(4, 1, 'LIQ', 'Cash', 2, 1, NULL, NULL, 0),
(6, 1, 'CB', 'Credit card', 2, 1, NULL, NULL, 0),
(7, 1, 'CHQ', 'Cheque', 2, 1, NULL, NULL, 0),
(50, 1, 'VAD', 'Online payment', 2, 0, NULL, NULL, 0),
(51, 1, 'TRA', 'Traite', 2, 0, NULL, NULL, 0),
(52, 1, 'LCR', 'LCR', 2, 0, NULL, NULL, 0),
(53, 1, 'FAC', 'Factor', 2, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paper_format`
--

CREATE TABLE `llx_c_paper_format` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `width` float(6,2) DEFAULT '0.00',
  `height` float(6,2) DEFAULT '0.00',
  `unit` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_paper_format`
--

INSERT INTO `llx_c_paper_format` (`rowid`, `code`, `label`, `width`, `height`, `unit`, `active`, `module`) VALUES
(1, 'EU4A0', 'Format 4A0', 1682.00, 2378.00, 'mm', 1, NULL),
(2, 'EU2A0', 'Format 2A0', 1189.00, 1682.00, 'mm', 1, NULL),
(3, 'EUA0', 'Format A0', 840.00, 1189.00, 'mm', 1, NULL),
(4, 'EUA1', 'Format A1', 594.00, 840.00, 'mm', 1, NULL),
(5, 'EUA2', 'Format A2', 420.00, 594.00, 'mm', 1, NULL),
(6, 'EUA3', 'Format A3', 297.00, 420.00, 'mm', 1, NULL),
(7, 'EUA4', 'Format A4', 210.00, 297.00, 'mm', 1, NULL),
(8, 'EUA5', 'Format A5', 148.00, 210.00, 'mm', 1, NULL),
(9, 'EUA6', 'Format A6', 105.00, 148.00, 'mm', 1, NULL),
(100, 'USLetter', 'Format Letter (A)', 216.00, 279.00, 'mm', 1, NULL),
(105, 'USLegal', 'Format Legal', 216.00, 356.00, 'mm', 1, NULL),
(110, 'USExecutive', 'Format Executive', 190.00, 254.00, 'mm', 1, NULL),
(115, 'USLedger', 'Format Ledger/Tabloid (B)', 279.00, 432.00, 'mm', 1, NULL),
(200, 'CAP1', 'Format Canadian P1', 560.00, 860.00, 'mm', 1, NULL),
(205, 'CAP2', 'Format Canadian P2', 430.00, 560.00, 'mm', 1, NULL),
(210, 'CAP3', 'Format Canadian P3', 280.00, 430.00, 'mm', 1, NULL),
(215, 'CAP4', 'Format Canadian P4', 215.00, 280.00, 'mm', 1, NULL),
(220, 'CAP5', 'Format Canadian P5', 140.00, 215.00, 'mm', 1, NULL),
(225, 'CAP6', 'Format Canadian P6', 107.00, 140.00, 'mm', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_payment_term`
--

CREATE TABLE `llx_c_payment_term` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle_facture` text COLLATE utf8_unicode_ci,
  `type_cdr` tinyint(4) DEFAULT NULL,
  `nbjour` smallint(6) DEFAULT NULL,
  `decalage` smallint(6) DEFAULT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_payment_term`
--

INSERT INTO `llx_c_payment_term` (`rowid`, `entity`, `code`, `sortorder`, `active`, `libelle`, `libelle_facture`, `type_cdr`, `nbjour`, `decalage`, `module`, `position`) VALUES
(1, 1, 'RECEP', 1, 1, 'Due upon receipt', 'Due upon receipt', 0, 1, NULL, NULL, 0),
(2, 1, '30D', 2, 1, '30 days', 'Due in 30 days', 0, 30, NULL, NULL, 0),
(3, 1, '30DENDMONTH', 3, 1, '30 days end of month', 'Due in 30 days, end of month', 1, 30, NULL, NULL, 0),
(4, 1, '60D', 4, 1, '60 days', 'Due in 60 days, end of month', 0, 60, NULL, NULL, 0),
(5, 1, '60DENDMONTH', 5, 1, '60 days end of month', 'Due in 60 days, end of month', 1, 60, NULL, NULL, 0),
(6, 1, 'PT_ORDER', 6, 1, 'Due on order', 'Due on order', 0, 1, NULL, NULL, 0),
(7, 1, 'PT_DELIVERY', 7, 1, 'Due on delivery', 'Due on delivery', 0, 1, NULL, NULL, 0),
(8, 1, 'PT_5050', 8, 1, '50 and 50', '50% on order, 50% on delivery', 0, 1, NULL, NULL, 0),
(9, 1, '10D', 9, 1, '10 days', 'Due in 10 days', 0, 10, NULL, NULL, 0),
(10, 1, '10DENDMONTH', 10, 1, '10 days end of month', 'Due in 10 days, end of month', 1, 10, NULL, NULL, 0),
(11, 1, '14D', 11, 1, '14 days', 'Due in 14 days', 0, 14, NULL, NULL, 0),
(12, 1, '14DENDMONTH', 12, 1, '14 days end of month', 'Due in 14 days, end of month', 1, 14, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_expression`
--

CREATE TABLE `llx_c_price_expression` (
  `rowid` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `expression` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_global_variable`
--

CREATE TABLE `llx_c_price_global_variable` (
  `rowid` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `value` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_global_variable_updater`
--

CREATE TABLE `llx_c_price_global_variable_updater` (
  `rowid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parameters` text COLLATE utf8_unicode_ci,
  `fk_variable` int(11) NOT NULL,
  `update_interval` int(11) DEFAULT '0',
  `next_update` int(11) DEFAULT '0',
  `last_status` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_propalst`
--

CREATE TABLE `llx_c_propalst` (
  `id` smallint(6) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_propalst`
--

INSERT INTO `llx_c_propalst` (`id`, `code`, `label`, `active`) VALUES
(0, 'PR_DRAFT', 'Brouillon', 1),
(1, 'PR_OPEN', 'Ouverte', 1),
(2, 'PR_SIGNED', 'Signée', 1),
(3, 'PR_NOTSIGNED', 'Non Signée', 1),
(4, 'PR_FAC', 'Facturée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_prospectlevel`
--

CREATE TABLE `llx_c_prospectlevel` (
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_prospectlevel`
--

INSERT INTO `llx_c_prospectlevel` (`code`, `label`, `sortorder`, `active`, `module`) VALUES
('PL_HIGH', 'High', 4, 1, NULL),
('PL_LOW', 'Low', 2, 1, NULL),
('PL_MEDIUM', 'Medium', 3, 1, NULL),
('PL_NONE', 'None', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_regions`
--

CREATE TABLE `llx_c_regions` (
  `rowid` int(11) NOT NULL,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_regions`
--

INSERT INTO `llx_c_regions` (`rowid`, `code_region`, `fk_pays`, `cheflieu`, `tncc`, `nom`, `active`) VALUES
(1, 0, 0, '0', 0, '-', 1),
(2, 1, 1, '97105', 3, 'Guadeloupe', 1),
(3, 2, 1, '97209', 3, 'Martinique', 1),
(4, 3, 1, '97302', 3, 'Guyane', 1),
(5, 4, 1, '97411', 3, 'Réunion', 1),
(6, 6, 1, '97601', 3, 'Mayotte', 1),
(7, 11, 1, '75056', 1, 'Île-de-France', 1),
(8, 21, 1, '51108', 0, 'Champagne-Ardenne', 1),
(9, 22, 1, '80021', 0, 'Picardie', 1),
(10, 23, 1, '76540', 0, 'Haute-Normandie', 1),
(11, 24, 1, '45234', 2, 'Centre', 1),
(12, 25, 1, '14118', 0, 'Basse-Normandie', 1),
(13, 26, 1, '21231', 0, 'Bourgogne', 1),
(14, 31, 1, '59350', 2, 'Nord-Pas-de-Calais', 1),
(15, 41, 1, '57463', 0, 'Lorraine', 1),
(16, 42, 1, '67482', 1, 'Alsace', 1),
(17, 43, 1, '25056', 0, 'Franche-Comté', 1),
(18, 52, 1, '44109', 4, 'Pays de la Loire', 1),
(19, 53, 1, '35238', 0, 'Bretagne', 1),
(20, 54, 1, '86194', 2, 'Poitou-Charentes', 1),
(21, 72, 1, '33063', 1, 'Aquitaine', 1),
(22, 73, 1, '31555', 0, 'Midi-Pyrénées', 1),
(23, 74, 1, '87085', 2, 'Limousin', 1),
(24, 82, 1, '69123', 2, 'Rhône-Alpes', 1),
(25, 83, 1, '63113', 1, 'Auvergne', 1),
(26, 91, 1, '34172', 2, 'Languedoc-Roussillon', 1),
(27, 93, 1, '13055', 0, 'Provence-Alpes-Côte d\'Azur', 1),
(28, 94, 1, '2A004', 0, 'Corse', 1),
(29, 4101, 41, '', 0, 'Österreich', 1),
(30, 201, 2, '', 1, 'Flandre', 1),
(31, 202, 2, '', 2, 'Wallonie', 1),
(32, 203, 2, '', 3, 'Bruxelles-Capitale', 1),
(33, 301, 3, NULL, 1, 'Abruzzo', 1),
(34, 302, 3, NULL, 1, 'Basilicata', 1),
(35, 303, 3, NULL, 1, 'Calabria', 1),
(36, 304, 3, NULL, 1, 'Campania', 1),
(37, 305, 3, NULL, 1, 'Emilia-Romagna', 1),
(38, 306, 3, NULL, 1, 'Friuli-Venezia Giulia', 1),
(39, 307, 3, NULL, 1, 'Lazio', 1),
(40, 308, 3, NULL, 1, 'Liguria', 1),
(41, 309, 3, NULL, 1, 'Lombardia', 1),
(42, 310, 3, NULL, 1, 'Marche', 1),
(43, 311, 3, NULL, 1, 'Molise', 1),
(44, 312, 3, NULL, 1, 'Piemonte', 1),
(45, 313, 3, NULL, 1, 'Puglia', 1),
(46, 314, 3, NULL, 1, 'Sardegna', 1),
(47, 315, 3, NULL, 1, 'Sicilia', 1),
(48, 316, 3, NULL, 1, 'Toscana', 1),
(49, 317, 3, NULL, 1, 'Trentino-Alto Adige', 1),
(50, 318, 3, NULL, 1, 'Umbria', 1),
(51, 319, 3, NULL, 1, 'Valle d Aosta', 1),
(52, 320, 3, NULL, 1, 'Veneto', 1),
(53, 401, 4, '', 0, 'Andalucia', 1),
(54, 402, 4, '', 0, 'Aragón', 1),
(55, 403, 4, '', 0, 'Castilla y León', 1),
(56, 404, 4, '', 0, 'Castilla la Mancha', 1),
(57, 405, 4, '', 0, 'Canarias', 1),
(58, 406, 4, '', 0, 'Cataluña', 1),
(59, 407, 4, '', 0, 'Comunidad de Ceuta', 1),
(60, 408, 4, '', 0, 'Comunidad Foral de Navarra', 1),
(61, 409, 4, '', 0, 'Comunidad de Melilla', 1),
(62, 410, 4, '', 0, 'Cantabria', 1),
(63, 411, 4, '', 0, 'Comunidad Valenciana', 1),
(64, 412, 4, '', 0, 'Extemadura', 1),
(65, 413, 4, '', 0, 'Galicia', 1),
(66, 414, 4, '', 0, 'Islas Baleares', 1),
(67, 415, 4, '', 0, 'La Rioja', 1),
(68, 416, 4, '', 0, 'Comunidad de Madrid', 1),
(69, 417, 4, '', 0, 'Región de Murcia', 1),
(70, 418, 4, '', 0, 'Principado de Asturias', 1),
(71, 419, 4, '', 0, 'Pais Vasco', 1),
(72, 420, 4, '', 0, 'Otros', 1),
(73, 501, 5, '', 0, 'Deutschland', 1),
(74, 10201, 102, NULL, NULL, 'Αττική', 1),
(75, 10202, 102, NULL, NULL, 'Στερεά Ελλάδα', 1),
(76, 10203, 102, NULL, NULL, 'Κεντρική Μακεδονία', 1),
(77, 10204, 102, NULL, NULL, 'Κρήτη', 1),
(78, 10205, 102, NULL, NULL, 'Ανατολική Μακεδονία και Θράκη', 1),
(79, 10206, 102, NULL, NULL, 'Ήπειρος', 1),
(80, 10207, 102, NULL, NULL, 'Ιόνια νησιά', 1),
(81, 10208, 102, NULL, NULL, 'Βόρειο Αιγαίο', 1),
(82, 10209, 102, NULL, NULL, 'Πελοπόννησος', 1),
(83, 10210, 102, NULL, NULL, 'Νότιο Αιγαίο', 1),
(84, 10211, 102, NULL, NULL, 'Δυτική Ελλάδα', 1),
(85, 10212, 102, NULL, NULL, 'Θεσσαλία', 1),
(86, 10213, 102, NULL, NULL, 'Δυτική Μακεδονία', 1),
(87, 601, 6, '', 1, 'Cantons', 1),
(88, 701, 7, '', 0, 'England', 1),
(89, 702, 7, '', 0, 'Wales', 1),
(90, 703, 7, '', 0, 'Scotland', 1),
(91, 704, 7, '', 0, 'Northern Ireland', 1),
(92, 1001, 10, '', 0, 'Ariana', 1),
(93, 1002, 10, '', 0, 'Béja', 1),
(94, 1003, 10, '', 0, 'Ben Arous', 1),
(95, 1004, 10, '', 0, 'Bizerte', 1),
(96, 1005, 10, '', 0, 'Gabès', 1),
(97, 1006, 10, '', 0, 'Gafsa', 1),
(98, 1007, 10, '', 0, 'Jendouba', 1),
(99, 1008, 10, '', 0, 'Kairouan', 1),
(100, 1009, 10, '', 0, 'Kasserine', 1),
(101, 1010, 10, '', 0, 'Kébili', 1),
(102, 1011, 10, '', 0, 'La Manouba', 1),
(103, 1012, 10, '', 0, 'Le Kef', 1),
(104, 1013, 10, '', 0, 'Mahdia', 1),
(105, 1014, 10, '', 0, 'Médenine', 1),
(106, 1015, 10, '', 0, 'Monastir', 1),
(107, 1016, 10, '', 0, 'Nabeul', 1),
(108, 1017, 10, '', 0, 'Sfax', 1),
(109, 1018, 10, '', 0, 'Sidi Bouzid', 1),
(110, 1019, 10, '', 0, 'Siliana', 1),
(111, 1020, 10, '', 0, 'Sousse', 1),
(112, 1021, 10, '', 0, 'Tataouine', 1),
(113, 1022, 10, '', 0, 'Tozeur', 1),
(114, 1023, 10, '', 0, 'Tunis', 1),
(115, 1024, 10, '', 0, 'Zaghouan', 1),
(116, 1101, 11, '', 0, 'United-States', 1),
(117, 1301, 13, '', 0, 'Algerie', 1),
(118, 1401, 14, '', 0, 'Canada', 1),
(119, 1701, 17, '', 0, 'Provincies van Nederland ', 1),
(120, 2301, 23, '', 0, 'Norte', 1),
(121, 2302, 23, '', 0, 'Litoral', 1),
(122, 2303, 23, '', 0, 'Cuyana', 1),
(123, 2304, 23, '', 0, 'Central', 1),
(124, 2305, 23, '', 0, 'Patagonia', 1),
(125, 2801, 28, '', 0, 'Australia', 1),
(126, 4601, 46, '', 0, 'Barbados', 1),
(127, 5201, 52, '', 0, 'Chuquisaca', 1),
(128, 5202, 52, '', 0, 'La Paz', 1),
(129, 5203, 52, '', 0, 'Cochabamba', 1),
(130, 5204, 52, '', 0, 'Oruro', 1),
(131, 5205, 52, '', 0, 'Potosí', 1),
(132, 5206, 52, '', 0, 'Tarija', 1),
(133, 5207, 52, '', 0, 'Santa Cruz', 1),
(134, 5208, 52, '', 0, 'El Beni', 1),
(135, 5209, 52, '', 0, 'Pando', 1),
(136, 5601, 56, '', 0, 'Brasil', 1),
(137, 7001, 70, '', 0, 'Colombie', 1),
(138, 6701, 67, NULL, NULL, 'Tarapacá', 1),
(139, 6702, 67, NULL, NULL, 'Antofagasta', 1),
(140, 6703, 67, NULL, NULL, 'Atacama', 1),
(141, 6704, 67, NULL, NULL, 'Coquimbo', 1),
(142, 6705, 67, NULL, NULL, 'Valparaíso', 1),
(143, 6706, 67, NULL, NULL, 'General Bernardo O Higgins', 1),
(144, 6707, 67, NULL, NULL, 'Maule', 1),
(145, 6708, 67, NULL, NULL, 'Biobío', 1),
(146, 6709, 67, NULL, NULL, 'Raucanía', 1),
(147, 6710, 67, NULL, NULL, 'Los Lagos', 1),
(148, 6711, 67, NULL, NULL, 'Aysén General Carlos Ibáñez del Campo', 1),
(149, 6712, 67, NULL, NULL, 'Magallanes y Antártica Chilena', 1),
(150, 6713, 67, NULL, NULL, 'Metropolitana de Santiago', 1),
(151, 6714, 67, NULL, NULL, 'Los Ríos', 1),
(152, 6715, 67, NULL, NULL, 'Arica y Parinacota', 1),
(153, 8601, 86, NULL, NULL, 'Central', 1),
(154, 8602, 86, NULL, NULL, 'Oriental', 1),
(155, 8603, 86, NULL, NULL, 'Occidental', 1),
(156, 11401, 114, '', 0, 'Honduras', 1),
(157, 11701, 117, '', 0, 'India', 1),
(158, 11801, 118, '', 0, 'Indonesia', 1),
(159, 1201, 12, '', 0, 'Tanger-Tétouan', 1),
(160, 1202, 12, '', 0, 'Gharb-Chrarda-Beni Hssen', 1),
(161, 1203, 12, '', 0, 'Taza-Al Hoceima-Taounate', 1),
(162, 1204, 12, '', 0, 'L\'Oriental', 1),
(163, 1205, 12, '', 0, 'Fès-Boulemane', 1),
(164, 1206, 12, '', 0, 'Meknès-Tafialet', 1),
(165, 1207, 12, '', 0, 'Rabat-Salé-Zemour-Zaër', 1),
(166, 1208, 12, '', 0, 'Grand Cassablanca', 1),
(167, 1209, 12, '', 0, 'Chaouia-Ouardigha', 1),
(168, 1210, 12, '', 0, 'Doukahla-Adba', 1),
(169, 1211, 12, '', 0, 'Marrakech-Tensift-Al Haouz', 1),
(170, 1212, 12, '', 0, 'Tadla-Azilal', 1),
(171, 1213, 12, '', 0, 'Sous-Massa-Drâa', 1),
(172, 1214, 12, '', 0, 'Guelmim-Es Smara', 1),
(173, 1215, 12, '', 0, 'Laâyoune-Boujdour-Sakia el Hamra', 1),
(174, 1216, 12, '', 0, 'Oued Ed-Dahab Lagouira', 1),
(175, 14001, 140, '', 0, 'Diekirch', 1),
(176, 14002, 140, '', 0, 'Grevenmacher', 1),
(177, 14003, 140, '', 0, 'Luxembourg', 1),
(178, 15201, 152, '', 0, 'Rivière Noire', 1),
(179, 15202, 152, '', 0, 'Flacq', 1),
(180, 15203, 152, '', 0, 'Grand Port', 1),
(181, 15204, 152, '', 0, 'Moka', 1),
(182, 15205, 152, '', 0, 'Pamplemousses', 1),
(183, 15206, 152, '', 0, 'Plaines Wilhems', 1),
(184, 15207, 152, '', 0, 'Port-Louis', 1),
(185, 15208, 152, '', 0, 'Rivière du Rempart', 1),
(186, 15209, 152, '', 0, 'Savanne', 1),
(187, 15210, 152, '', 0, 'Rodrigues', 1),
(188, 15211, 152, '', 0, 'Les îles Agaléga', 1),
(189, 15212, 152, '', 0, 'Les écueils des Cargados Carajos', 1),
(190, 15401, 154, '', 0, 'Mexique', 1),
(191, 18801, 188, '', 0, 'Romania', 1),
(192, 23201, 232, '', 0, 'Los Andes', 1),
(193, 23202, 232, '', 0, 'Capital', 1),
(194, 23203, 232, '', 0, 'Central', 1),
(195, 23204, 232, '', 0, 'Cento Occidental', 1),
(196, 23205, 232, '', 0, 'Guayana', 1),
(197, 23206, 232, '', 0, 'Insular', 1),
(198, 23207, 232, '', 0, 'Los Llanos', 1),
(199, 23208, 232, '', 0, 'Nor-Oriental', 1),
(200, 23209, 232, '', 0, 'Zuliana', 1),
(201, 18101, 181, '', 0, 'Amazonas', 1),
(202, 18102, 181, '', 0, 'Ancash', 1),
(203, 18103, 181, '', 0, 'Apurimac', 1),
(204, 18104, 181, '', 0, 'Arequipa', 1),
(205, 18105, 181, '', 0, 'Ayacucho', 1),
(206, 18106, 181, '', 0, 'Cajamarca', 1),
(207, 18107, 181, '', 0, 'Callao', 1),
(208, 18108, 181, '', 0, 'Cuzco', 1),
(209, 18109, 181, '', 0, 'Huancavelica', 1),
(210, 18110, 181, '', 0, 'Huanuco', 1),
(211, 18111, 181, '', 0, 'Ica', 1),
(212, 18112, 181, '', 0, 'Junin', 1),
(213, 18113, 181, '', 0, 'La Libertad', 1),
(214, 18114, 181, '', 0, 'Lambayeque', 1),
(215, 18115, 181, '', 0, 'Lima Metropolitana', 1),
(216, 18116, 181, '', 0, 'Lima', 1),
(217, 18117, 181, '', 0, 'Loreto', 1),
(218, 18118, 181, '', 0, 'Madre de Dios', 1),
(219, 18119, 181, '', 0, 'Moquegua', 1),
(220, 18120, 181, '', 0, 'Pasco', 1),
(221, 18121, 181, '', 0, 'Piura', 1),
(222, 18122, 181, '', 0, 'Puno', 1),
(223, 18123, 181, '', 0, 'San Martín', 1),
(224, 18124, 181, '', 0, 'Tacna', 1),
(225, 18125, 181, '', 0, 'Tumbes', 1),
(226, 18126, 181, '', 0, 'Ucayali', 1),
(227, 17801, 178, '', 0, 'Panama', 1),
(228, 22701, 227, '', 0, 'United Arab Emirates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_revenuestamp`
--

CREATE TABLE `llx_c_revenuestamp` (
  `rowid` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `revenuestamp_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fixed',
  `note` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_buy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_revenuestamp`
--

INSERT INTO `llx_c_revenuestamp` (`rowid`, `fk_pays`, `taux`, `revenuestamp_type`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(101, 10, 0.4, 'fixed', 'Revenue stamp tunisia', 1, NULL, NULL),
(1541, 154, 1.5, 'percent', 'Revenue stamp mexico', 1, NULL, NULL),
(1542, 154, 3, 'percent', 'Revenue stamp mexico', 1, NULL, NULL),
(1543, 84, 0.12, 'percent', 'IVA -12', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_shipment_mode`
--

CREATE TABLE `llx_c_shipment_mode` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_shipment_mode`
--

INSERT INTO `llx_c_shipment_mode` (`rowid`, `tms`, `code`, `libelle`, `description`, `tracking`, `active`, `module`) VALUES
(1, '2019-04-25 20:25:36', 'CATCH', 'At-Store Reclamation', 'At-Store Reclamation by the customer', '', 1, NULL),
(2, '2019-04-25 20:25:36', 'TRANS', 'Generic transporter', 'Generic transporter', '', 1, NULL),
(3, '2019-04-25 20:25:36', 'COLSUI', 'Colissimo Suivi', 'Colissimo Suivi', 'http://www.colissimo.fr/portail_colissimo/suivre.do?colispart={TRACKID}', 0, NULL),
(4, '2019-04-25 20:25:37', 'LETTREMAX', 'Lettre Max', 'Courrier Suivi et Lettre Max', '', 0, NULL),
(5, '2019-04-25 20:25:37', 'UPS', 'UPS', 'United Parcel Service', 'http://wwwapps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}', 0, NULL),
(6, '2019-04-25 20:25:37', 'KIALA', 'KIALA', 'Relais Kiala', 'http://www.kiala.fr/tnt/delivery/{TRACKID}', 0, NULL),
(7, '2019-04-25 20:25:37', 'GLS', 'GLS', 'General Logistics Systems', 'https://gls-group.eu/FR/fr/suivi-colis?match={TRACKID}', 0, NULL),
(8, '2019-04-25 20:25:37', 'CHRONO', 'Chronopost', 'Chronopost', 'http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_stcomm`
--

CREATE TABLE `llx_c_stcomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picto` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_stcomm`
--

INSERT INTO `llx_c_stcomm` (`id`, `code`, `libelle`, `picto`, `active`) VALUES
(-1, 'ST_NO', 'Do not contact', NULL, 1),
(0, 'ST_NEVER', 'Never contacted', NULL, 1),
(1, 'ST_TODO', 'To contact', NULL, 1),
(2, 'ST_PEND', 'Contact in progress', NULL, 1),
(3, 'ST_DONE', 'Contacted', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ticket_category`
--

CREATE TABLE `llx_c_ticket_category` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pos` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_ticket_category`
--

INSERT INTO `llx_c_ticket_category` (`rowid`, `entity`, `code`, `pos`, `label`, `active`, `use_default`, `description`) VALUES
(1, 1, 'OTHER', '10', 'Other', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ticket_severity`
--

CREATE TABLE `llx_c_ticket_severity` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pos` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_ticket_severity`
--

INSERT INTO `llx_c_ticket_severity` (`rowid`, `entity`, `code`, `pos`, `label`, `color`, `active`, `use_default`, `description`) VALUES
(1, 1, 'LOW', '10', 'Low', '', 1, 0, NULL),
(2, 1, 'NORMAL', '20', 'Normal', '', 1, 1, NULL),
(3, 1, 'HIGH', '30', 'High', '', 1, 0, NULL),
(4, 1, 'BLOCKING', '40', 'Critical / blocking', '', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ticket_type`
--

CREATE TABLE `llx_c_ticket_type` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pos` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_ticket_type`
--

INSERT INTO `llx_c_ticket_type` (`rowid`, `entity`, `code`, `pos`, `label`, `active`, `use_default`, `description`) VALUES
(1, 1, 'COM', '10', 'Commercial question', 1, 1, NULL),
(2, 1, 'ISSUE', '20', 'Issue or problem', 1, 0, NULL),
(3, 1, 'REQUEST', '25', 'Change or enhancement request', 1, 0, NULL),
(4, 1, 'PROJECT', '30', 'Project', 0, 0, NULL),
(5, 1, 'OTHER', '40', 'Other', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_tva`
--

CREATE TABLE `llx_c_tva` (
  `rowid` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `taux` double NOT NULL,
  `localtax1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `note` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_buy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_tva`
--

INSERT INTO `llx_c_tva` (`rowid`, `fk_pays`, `code`, `taux`, `localtax1`, `localtax1_type`, `localtax2`, `localtax2_type`, `recuperableonly`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(11, 1, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(14, 1, '', 5.5, '0', '0', '0', '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 1, NULL, NULL),
(15, 1, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(16, 1, '', 2.1, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(17, 1, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(21, 2, '', 21, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(22, 2, '', 6, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(23, 2, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(24, 2, '', 12, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(31, 3, '', 22, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(32, 3, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(33, 3, '', 4, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(34, 3, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(41, 4, '', 21, '5.2', '3', '-19:-15:-9', '5', 0, 'VAT standard rate', 1, NULL, NULL),
(42, 4, '', 10, '1.4', '3', '-19:-15:-9', '5', 0, 'VAT reduced rate', 1, NULL, NULL),
(43, 4, '', 4, '0.5', '3', '-19:-15:-9', '5', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(44, 4, '', 0, '0', '3', '-19:-15:-9', '5', 0, 'VAT Rate 0', 1, NULL, NULL),
(51, 5, '', 19, '0', '0', '0', '0', 0, 'allgemeine Ust.', 1, NULL, NULL),
(52, 5, '', 7, '0', '0', '0', '0', 0, 'ermäßigte USt.', 1, NULL, NULL),
(53, 5, '', 0, '0', '0', '0', '0', 0, 'keine USt.', 1, NULL, NULL),
(54, 5, '', 5.5, '0', '0', '0', '0', 0, 'USt. Forst', 0, NULL, NULL),
(55, 5, '', 10.7, '0', '0', '0', '0', 0, 'USt. Landwirtschaft', 0, NULL, NULL),
(61, 6, '', 7.7, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(62, 6, '', 3.7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(63, 6, '', 2.5, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(64, 6, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(71, 7, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(72, 7, '', 17.5, '0', '0', '0', '0', 0, 'VAT standard rate before 2011', 1, NULL, NULL),
(73, 7, '', 5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(74, 7, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(81, 8, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(82, 8, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(83, 8, '', 13.5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(84, 8, '', 9, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(85, 8, '', 4.8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(91, 9, '', 17, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(92, 9, '', 13, '0', '0', '0', '0', 0, 'VAT reduced rate 0', 1, NULL, NULL),
(93, 9, '', 3, '0', '0', '0', '0', 0, 'VAT super reduced rate 0', 1, NULL, NULL),
(94, 9, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(101, 10, '', 6, '1', '4', '0', '0', 0, 'VAT 6%', 1, NULL, NULL),
(102, 10, '', 12, '1', '4', '0', '0', 0, 'VAT 12%', 1, NULL, NULL),
(103, 10, '', 18, '1', '4', '0', '0', 0, 'VAT 18%', 1, NULL, NULL),
(104, 10, '', 7.5, '1', '4', '0', '0', 0, 'VAT 6% Majoré à 25% (7.5%)', 1, NULL, NULL),
(105, 10, '', 15, '1', '4', '0', '0', 0, 'VAT 12% Majoré à 25% (15%)', 1, NULL, NULL),
(106, 10, '', 22.5, '1', '4', '0', '0', 0, 'VAT 18% Majoré à 25% (22.5%)', 1, NULL, NULL),
(107, 10, '', 0, '1', '4', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(111, 11, '', 0, '0', '0', '0', '0', 0, 'No Sales Tax', 1, NULL, NULL),
(112, 11, '', 4, '0', '0', '0', '0', 0, 'Sales Tax 4%', 1, NULL, NULL),
(113, 11, '', 6, '0', '0', '0', '0', 0, 'Sales Tax 6%', 1, NULL, NULL),
(121, 12, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(122, 12, '', 14, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(123, 12, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(124, 12, '', 7, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(125, 12, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(141, 14, '', 7, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(142, 14, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(143, 14, '', 5, '9.975', '1', '0', '0', 0, 'GST/TPS and PST/TVQ rate for Province', 1, NULL, NULL),
(171, 17, '', 19, '0', '0', '0', '0', 0, 'Algemeen BTW tarief', 1, NULL, NULL),
(172, 17, '', 6, '0', '0', '0', '0', 0, 'Verlaagd BTW tarief', 1, NULL, NULL),
(173, 17, '', 0, '0', '0', '0', '0', 0, '0 BTW tarief', 1, NULL, NULL),
(174, 17, '', 21, '0', '0', '0', '0', 0, 'Algemeen BTW tarief (vanaf 1 oktober 2012)', 0, NULL, NULL),
(201, 20, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(202, 20, '', 12, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(203, 20, '', 6, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(204, 20, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(211, 21, '', 0, '0', '0', '0', '0', 0, 'IVA Rate 0', 1, NULL, NULL),
(212, 21, '', 18, '7.5', '2', '0', '0', 0, 'IVA standard rate', 1, NULL, NULL),
(221, 22, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(222, 22, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(223, 22, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(231, 23, '', 21, '0', '0', '0', '0', 0, 'IVA standard rate', 1, NULL, NULL),
(232, 23, '', 10.5, '0', '0', '0', '0', 0, 'IVA reduced rate', 1, NULL, NULL),
(233, 23, '', 0, '0', '0', '0', '0', 0, 'IVA Rate 0', 1, NULL, NULL),
(241, 24, '', 19.25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(242, 24, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(251, 25, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(252, 25, '', 13, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(253, 25, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(254, 25, '', 6, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(261, 26, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(262, 26, '', 5, '0', '0', '0', '0', 0, 'VAT Rate 5', 1, NULL, NULL),
(271, 27, '', 19.6, '0', '0', '0', '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(272, 27, '', 8.5, '0', '0', '0', '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(273, 27, '', 8.5, '0', '0', '0', '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(274, 27, '', 5.5, '0', '0', '0', '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 0, NULL, NULL),
(275, 27, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(276, 27, '', 2.1, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(277, 27, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(281, 28, '', 10, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(282, 28, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(411, 41, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(412, 41, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(413, 41, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(461, 46, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(462, 46, '', 15, '0', '0', '0', '0', 0, 'VAT 15%', 1, NULL, NULL),
(463, 46, '', 7.5, '0', '0', '0', '0', 0, 'VAT 7.5%', 1, NULL, NULL),
(561, 56, '', 0, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(591, 59, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(592, 59, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(593, 59, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(671, 67, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(672, 67, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(781, 78, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(782, 78, '', 9, '0', '0', '0', '0', 0, 'VAT Rate 9', 1, NULL, NULL),
(783, 78, '', 5, '0', '0', '0', '0', 0, 'VAT Rate 5', 1, NULL, NULL),
(784, 78, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(801, 80, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(802, 80, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(861, 86, '', 13, '0', '0', '0', '0', 0, 'IVA 13', 1, NULL, NULL),
(862, 86, '', 0, '0', '0', '0', '0', 0, 'SIN IVA', 1, NULL, NULL),
(1141, 114, '', 0, '0', '0', '0', '0', 0, 'No ISV', 1, NULL, NULL),
(1142, 114, '', 12, '0', '0', '0', '0', 0, 'ISV 12%', 1, NULL, NULL),
(1161, 116, '', 25.5, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1162, 116, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1163, 116, '', 0, '0', '0', '0', '0', 0, 'VAT rate 0', 1, NULL, NULL),
(1171, 117, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1176, 117, 'C+S-18', 0, '9', '1', '9', '1', 0, 'CGST+SGST - Same state sales', 1, NULL, NULL),
(1177, 117, 'I-18', 18, '0', '0', '0', '0', 0, 'IGST', 1, NULL, NULL),
(1178, 117, 'C+S-5', 0, '2.5', '1', '2.5', '1', 0, 'CGST+SGST - Same state sales', 1, NULL, NULL),
(1179, 117, 'I-5', 5, '0', '0', '0', '0', 0, 'IGST', 1, NULL, NULL),
(1180, 117, 'C+S-12', 0, '6', '1', '6', '1', 0, 'CGST+SGST - Same state sales', 1, NULL, NULL),
(1181, 117, 'I-12', 12, '0', '0', '0', '0', 0, 'IGST', 1, NULL, NULL),
(1182, 117, 'C+S-28', 0, '14', '1', '14', '1', 0, 'CGST+SGST - Same state sales', 1, NULL, NULL),
(1183, 117, 'I-28', 28, '0', '0', '0', '0', 0, 'IGST', 1, NULL, NULL),
(1231, 123, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1232, 123, '', 5, '0', '0', '0', '0', 0, 'VAT Rate 5', 1, NULL, NULL),
(1401, 140, '', 17, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1402, 140, '', 14, '0', '0', '0', '0', 0, 'VAT intermediary rate', 1, NULL, NULL),
(1403, 140, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1404, 140, '', 3, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1405, 140, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1481, 148, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1482, 148, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1483, 148, '', 5, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1484, 148, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1511, 151, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1512, 151, '', 14, '0', '0', '0', '0', 0, 'VAT Rate 14', 1, NULL, NULL),
(1521, 152, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1522, 152, '', 15, '0', '0', '0', '0', 0, 'VAT Rate 15', 1, NULL, NULL),
(1541, 154, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(1542, 154, '', 16, '0', '0', '0', '0', 0, 'VAT 16%', 1, NULL, NULL),
(1543, 154, '', 10, '0', '0', '0', '0', 0, 'VAT Frontero', 1, NULL, NULL),
(1662, 166, '', 15, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1663, 166, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1692, 169, '', 5, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1693, 169, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1731, 173, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1732, 173, '', 14, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1733, 173, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1734, 173, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1781, 178, '', 7, '0', '0', '0', '0', 0, 'ITBMS standard rate', 1, NULL, NULL),
(1782, 178, '', 0, '0', '0', '0', '0', 0, 'ITBMS Rate 0', 1, NULL, NULL),
(1811, 181, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1812, 181, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1841, 184, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1842, 184, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1843, 184, '', 3, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1844, 184, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1881, 188, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1882, 188, '', 9, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1883, 188, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1884, 188, '', 5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1931, 193, '', 0, '0', '0', '0', '0', 0, 'No VAT in SPM', 1, NULL, NULL),
(2011, 201, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2012, 201, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2013, 201, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2021, 202, '', 22, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2022, 202, '', 9.5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2023, 202, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2051, 205, '', 15, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2052, 205, '', 14, '0', '0', '0', '0', 0, 'VAT 14%', 1, NULL, NULL),
(2053, 205, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2071, 207, '', 0, '0', '0', '0', '0', 0, 'VAT 0', 1, NULL, NULL),
(2072, 207, '', 15, '0', '0', '0', '0', 0, 'VAT 15%', 1, NULL, NULL),
(2131, 213, '', 5, '0', '0', '0', '0', 0, 'VAT 5%', 1, NULL, NULL),
(2132, 213, '', 0, '0', '0', '0', '0', 0, 'VAT 0', 1, NULL, NULL),
(2261, 226, '', 20, '0', '0', '0', '0', 0, 'VAT standart rate', 1, NULL, NULL),
(2262, 226, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2321, 232, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(2322, 232, '', 12, '0', '0', '0', '0', 0, 'VAT 12%', 1, NULL, NULL),
(2323, 232, '', 8, '0', '0', '0', '0', 0, 'VAT 8%', 1, NULL, NULL),
(2461, 246, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2462, 102, '', 24, '0', '0', '0', '0', 0, 'Κανονικός Φ.Π.Α.', 1, NULL, NULL),
(2463, 102, '', 0, '0', '0', '0', '0', 0, 'Μηδενικό Φ.Π.Α.', 1, NULL, NULL),
(2464, 102, '', 13, '0', '0', '0', '0', 0, 'Μειωμένος Φ.Π.Α.', 1, NULL, NULL),
(2465, 102, '', 6.5, '0', '0', '0', '0', 0, 'Υπερμειωμένος Φ.Π.Α.', 1, NULL, NULL),
(2466, 102, '', 16, '0', '0', '0', '0', 0, 'Νήσων κανονικός Φ.Π.Α.', 1, NULL, NULL),
(2467, 102, '', 9, '0', '0', '0', '0', 0, 'Νήσων μειωμένος Φ.Π.Α.', 1, NULL, NULL),
(2468, 102, '', 5, '0', '0', '0', '0', 0, 'Νήσων υπερμειωμένος Φ.Π.Α.', 1, NULL, NULL),
(2469, 1, '85', 8.5, '0', '0', '0', '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(2470, 1, '85NPR', 8.5, '0', '0', '0', '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(2471, 1, '85NPROM', 8.5, '2', '3', '0', '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer', 0, NULL, NULL),
(2472, 1, '85NPROMOMR', 8.5, '2', '3', '2.5', '3', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer et Octroi de Mer Regional', 0, NULL, NULL),
(2473, 84, 'IVA-12', 12, '0', '1', '0', '0', 0, 'IVA ECUADOR', 1, NULL, NULL),
(2474, 84, 'IVA-0', 0, '0', '0', '0', '0', 0, 'IVA ECUADOR', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_typent`
--

CREATE TABLE `llx_c_typent` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_typent`
--

INSERT INTO `llx_c_typent` (`id`, `code`, `libelle`, `fk_country`, `active`, `module`, `position`) VALUES
(0, 'TE_UNKNOWN', '-', NULL, 1, NULL, 0),
(1, 'TE_STARTUP', 'Start-up', NULL, 0, NULL, 0),
(2, 'TE_GROUP', 'Grand groupe', NULL, 1, NULL, 0),
(3, 'TE_MEDIUM', 'PME/PMI', NULL, 1, NULL, 0),
(4, 'TE_SMALL', 'TPE', NULL, 1, NULL, 0),
(5, 'TE_ADMIN', 'Administration', NULL, 1, NULL, 0),
(6, 'TE_WHOLE', 'Grossiste', NULL, 0, NULL, 0),
(7, 'TE_RETAIL', 'Revendeur', NULL, 0, NULL, 0),
(8, 'TE_PRIVATE', 'Particulier', NULL, 1, NULL, 0),
(100, 'TE_OTHER', 'Autres', NULL, 1, NULL, 0),
(231, 'TE_A_RI', 'Responsable Inscripto (typo A)', 23, 0, NULL, 0),
(232, 'TE_B_RNI', 'Responsable No Inscripto (typo B)', 23, 0, NULL, 0),
(233, 'TE_C_FE', 'Consumidor Final/Exento (typo C)', 23, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_contact`
--

CREATE TABLE `llx_c_type_contact` (
  `rowid` int(11) NOT NULL,
  `element` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'external',
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_type_contact`
--

INSERT INTO `llx_c_type_contact` (`rowid`, `element`, `source`, `code`, `libelle`, `active`, `module`, `position`) VALUES
(10, 'contrat', 'internal', 'SALESREPSIGN', 'Commercial signataire du contrat', 1, NULL, 0),
(11, 'contrat', 'internal', 'SALESREPFOLL', 'Commercial suivi du contrat', 1, NULL, 0),
(20, 'contrat', 'external', 'BILLING', 'Contact client facturation contrat', 1, NULL, 0),
(21, 'contrat', 'external', 'CUSTOMER', 'Contact client suivi contrat', 1, NULL, 0),
(22, 'contrat', 'external', 'SALESREPSIGN', 'Contact client signataire contrat', 1, NULL, 0),
(31, 'propal', 'internal', 'SALESREPFOLL', 'Commercial à l\'origine de la propale', 1, NULL, 0),
(40, 'propal', 'external', 'BILLING', 'Contact client facturation propale', 1, NULL, 0),
(41, 'propal', 'external', 'CUSTOMER', 'Contact client suivi propale', 1, NULL, 0),
(42, 'propal', 'external', 'SHIPPING', 'Contact client livraison propale', 1, NULL, 0),
(50, 'facture', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL, 0),
(60, 'facture', 'external', 'BILLING', 'Contact client facturation', 1, NULL, 0),
(61, 'facture', 'external', 'SHIPPING', 'Contact client livraison', 1, NULL, 0),
(62, 'facture', 'external', 'SERVICE', 'Contact client prestation', 1, NULL, 0),
(70, 'invoice_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL, 0),
(71, 'invoice_supplier', 'external', 'BILLING', 'Contact fournisseur facturation', 1, NULL, 0),
(72, 'invoice_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison', 1, NULL, 0),
(73, 'invoice_supplier', 'external', 'SERVICE', 'Contact fournisseur prestation', 1, NULL, 0),
(80, 'agenda', 'internal', 'ACTOR', 'Responsable', 1, NULL, 0),
(81, 'agenda', 'internal', 'GUEST', 'Guest', 1, NULL, 0),
(85, 'agenda', 'external', 'ACTOR', 'Responsable', 1, NULL, 0),
(86, 'agenda', 'external', 'GUEST', 'Guest', 1, NULL, 0),
(91, 'commande', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL, 0),
(100, 'commande', 'external', 'BILLING', 'Contact client facturation commande', 1, NULL, 0),
(101, 'commande', 'external', 'CUSTOMER', 'Contact client suivi commande', 1, NULL, 0),
(102, 'commande', 'external', 'SHIPPING', 'Contact client livraison commande', 1, NULL, 0),
(120, 'fichinter', 'internal', 'INTERREPFOLL', 'Responsable suivi de l\'intervention', 1, NULL, 0),
(121, 'fichinter', 'internal', 'INTERVENING', 'Intervenant', 1, NULL, 0),
(130, 'fichinter', 'external', 'BILLING', 'Contact client facturation intervention', 1, NULL, 0),
(131, 'fichinter', 'external', 'CUSTOMER', 'Contact client suivi de l\'intervention', 1, NULL, 0),
(140, 'order_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL, 0),
(141, 'order_supplier', 'internal', 'SHIPPING', 'Responsable réception de la commande', 1, NULL, 0),
(142, 'order_supplier', 'external', 'BILLING', 'Contact fournisseur facturation commande', 1, NULL, 0),
(143, 'order_supplier', 'external', 'CUSTOMER', 'Contact fournisseur suivi commande', 1, NULL, 0),
(145, 'order_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison commande', 1, NULL, 0),
(150, 'dolresource', 'internal', 'USERINCHARGE', 'In charge of resource', 1, NULL, 0),
(151, 'dolresource', 'external', 'THIRDINCHARGE', 'In charge of resource', 1, NULL, 0),
(155, 'ticket', 'internal', 'SUPPORTTEC', 'Utilisateur contact support', 1, NULL, 0),
(156, 'ticket', 'internal', 'CONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(157, 'ticket', 'external', 'SUPPORTCLI', 'Contact client suivi incident', 1, NULL, 0),
(158, 'ticket', 'external', 'CONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(160, 'project', 'internal', 'PROJECTLEADER', 'Chef de Projet', 1, NULL, 0),
(161, 'project', 'internal', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(170, 'project', 'external', 'PROJECTLEADER', 'Chef de Projet', 1, NULL, 0),
(171, 'project', 'external', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(180, 'project_task', 'internal', 'TASKEXECUTIVE', 'Responsable', 1, NULL, 0),
(181, 'project_task', 'internal', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(190, 'project_task', 'external', 'TASKEXECUTIVE', 'Responsable', 1, NULL, 0),
(191, 'project_task', 'external', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_container`
--

CREATE TABLE `llx_c_type_container` (
  `rowid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_type_container`
--

INSERT INTO `llx_c_type_container` (`rowid`, `code`, `entity`, `label`, `module`, `active`) VALUES
(1, 'page', 1, 'Page', 'system', 1),
(2, 'banner', 1, 'Banner', 'system', 1),
(3, 'blogpost', 1, 'BlogPost', 'system', 1),
(4, 'other', 1, 'Other', 'system', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_fees`
--

CREATE TABLE `llx_c_type_fees` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `accountancy_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_type_fees`
--

INSERT INTO `llx_c_type_fees` (`id`, `code`, `label`, `type`, `accountancy_code`, `active`, `module`, `position`) VALUES
(1, 'TF_OTHER', 'Other', 0, NULL, 1, NULL, 0),
(2, 'TF_TRIP', 'Transportation', 0, NULL, 1, NULL, 0),
(3, 'TF_LUNCH', 'Lunch', 0, NULL, 1, NULL, 0),
(4, 'EX_KME', 'ExpLabelKm', 0, NULL, 1, NULL, 0),
(5, 'EX_FUE', 'ExpLabelFuelCV', 0, NULL, 0, NULL, 0),
(6, 'EX_HOT', 'ExpLabelHotel', 0, NULL, 0, NULL, 0),
(7, 'EX_PAR', 'ExpLabelParkingCV', 0, NULL, 0, NULL, 0),
(8, 'EX_TOL', 'ExpLabelTollCV', 0, NULL, 0, NULL, 0),
(9, 'EX_TAX', 'ExpLabelVariousTaxes', 0, NULL, 0, NULL, 0),
(10, 'EX_IND', 'ExpLabelIndemnityTransSubscrip', 0, NULL, 0, NULL, 0),
(11, 'EX_SUM', 'ExpLabelMaintenanceSupply', 0, NULL, 0, NULL, 0),
(12, 'EX_SUO', 'ExpLabelOfficeSupplies', 0, NULL, 0, NULL, 0),
(13, 'EX_CAR', 'ExpLabelCarRental', 0, NULL, 0, NULL, 0),
(14, 'EX_DOC', 'ExpLabelDocumentation', 0, NULL, 0, NULL, 0),
(15, 'EX_CUR', 'ExpLabelCustomersReceiving', 0, NULL, 0, NULL, 0),
(16, 'EX_OTR', 'ExpLabelOtherReceiving', 0, NULL, 0, NULL, 0),
(17, 'EX_POS', 'ExpLabelPostage', 0, NULL, 0, NULL, 0),
(18, 'EX_CAM', 'ExpLabelMaintenanceRepairCV', 0, NULL, 0, NULL, 0),
(19, 'EX_EMM', 'ExpLabelEmployeesMeal', 0, NULL, 0, NULL, 0),
(20, 'EX_GUM', 'ExpLabelGuestsMeal', 0, NULL, 0, NULL, 0),
(21, 'EX_BRE', 'ExpLabelBreakfast', 0, NULL, 0, NULL, 0),
(22, 'EX_FUE_VP', 'ExpLabelFuelPV', 0, NULL, 0, NULL, 0),
(23, 'EX_TOL_VP', 'ExpLabelTollPV', 0, NULL, 0, NULL, 0),
(24, 'EX_PAR_VP', 'ExpLabelParkingPV', 0, NULL, 0, NULL, 0),
(25, 'EX_CAM_VP', 'ExpLabelMaintenanceRepairPV', 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_resource`
--

CREATE TABLE `llx_c_type_resource` (
  `rowid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_type_resource`
--

INSERT INTO `llx_c_type_resource` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'RES_ROOMS', 'Rooms', 1),
(2, 'RES_CARS', 'Cars', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_units`
--

CREATE TABLE `llx_c_units` (
  `rowid` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_label` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_c_units`
--

INSERT INTO `llx_c_units` (`rowid`, `code`, `label`, `short_label`, `active`) VALUES
(1, 'P', 'piece', 'p', 1),
(2, 'SET', 'set', 'se', 1),
(3, 'S', 'second', 's', 1),
(4, 'H', 'hour', 'h', 1),
(5, 'D', 'day', 'd', 1),
(6, 'KG', 'kilogram', 'kg', 1),
(7, 'G', 'gram', 'g', 1),
(8, 'M', 'meter', 'm', 1),
(9, 'LM', 'linear meter', 'lm', 1),
(10, 'M2', 'square meter', 'm2', 1),
(11, 'M3', 'cubic meter', 'm3', 1),
(12, 'L', 'liter', 'l', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ziptown`
--

CREATE TABLE `llx_c_ziptown` (
  `rowid` int(11) NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_county` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_default_values`
--

CREATE TABLE `llx_default_values` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_deplacement`
--

CREATE TABLE `llx_deplacement` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '1',
  `km` double DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_document_model`
--

CREATE TABLE `llx_document_model` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_document_model`
--

INSERT INTO `llx_document_model` (`rowid`, `nom`, `entity`, `type`, `libelle`, `description`) VALUES
(2, 'Standard', 1, 'stock', NULL, NULL),
(3, 'StdMouvement', 1, 'mouvement', NULL, NULL),
(4, 'strato', 1, 'contract', NULL, NULL),
(5, 'einstein', 1, 'order', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_don`
--

CREATE TABLE `llx_don` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `datedon` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_payment` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `societe` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `zip` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_country` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` smallint(6) NOT NULL DEFAULT '1',
  `fk_projet` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_don_extrafields`
--

CREATE TABLE `llx_don_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ecm_directories`
--

CREATE TABLE `llx_ecm_directories` (
  `rowid` int(11) NOT NULL,
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cachenbofdoc` int(11) NOT NULL DEFAULT '0',
  `fullpath` varchar(750) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ecm_files`
--

CREATE TABLE `llx_ecm_files` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `share` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `filepath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `src_object_type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src_object_id` int(11) DEFAULT NULL,
  `fullpath_orig` varchar(750) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` varchar(750) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `gen_or_uploaded` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_ecm_files`
--

INSERT INTO `llx_ecm_files` (`rowid`, `ref`, `label`, `share`, `entity`, `filepath`, `filename`, `src_object_type`, `src_object_id`, `fullpath_orig`, `description`, `keywords`, `cover`, `position`, `gen_or_uploaded`, `extraparams`, `date_c`, `date_m`, `fk_user_c`, `fk_user_m`, `acl`) VALUES
(2, '4e67fcdbae0aa4391749f0bafc496c12', '9255e9d0e6a9b589fc2478f7d58dc4b7', NULL, 1, 'commande/(PROV1)', '(PROV1).pdf', 'commande', 1, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 01:17:49', '2019-04-25 23:22:21', 1, 1, NULL),
(3, '952596a63bd5ad921d2ddcbfb6e97837', '389f84dc7fd88a74f2e9a25320da9ddb', NULL, 1, 'commande/(PROV2)', '(PROV2).pdf', 'commande', 2, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 01:24:04', '2019-04-26 06:24:04', 2, NULL, NULL),
(4, 'd012475d79ea34ddff938409392ec220', '4432c1d91f41183af7954feb54a27ee4', NULL, 1, 'commande/CO1904-0001', 'CO1904-0001.pdf', 'commande', 2, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 01:27:53', '2019-04-26 06:27:53', 2, NULL, NULL),
(5, '5cdd99c85314db8281b0d0a0d9c754d4', '530632ff7e80d510f36afd32f59acc6b', NULL, 1, 'commande/(PROV4)', '(PROV4).pdf', 'commande', 4, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:08:18', '2019-04-26 21:10:05', 2, 2, NULL),
(6, 'dcdad20caefa98ea5be4f31ac1340209', '7b5d641a6098a148b210e476ed97b738', NULL, 1, 'commande/CO1904-0002', 'CO1904-0002.pdf', 'commande', 4, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:12:33', '2019-04-27 04:12:33', 1, NULL, NULL),
(7, '6e0808f7cbf3f5c86f3ba45f182936f1', 'a95887cf9d1d011ce83ea30a8cc082d1', NULL, 1, 'commande/CO1904-0003', 'CO1904-0003.pdf', 'commande', 3, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:13:12', '2019-04-27 04:13:12', 1, NULL, NULL),
(8, '0df4e6af9c8eb8a7f80e8b9ef330bc43', '8f7588a9b04d92216d1f8d55b3ef2c6e', NULL, 1, 'commande/(PROV5)', '(PROV5).pdf', 'commande', 5, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:19:11', '2019-04-27 04:19:11', 2, NULL, NULL),
(9, 'ae134c7825224dce605712a7e4f14852', '84ca5d17432583d915ccc1a1c1f65b43', NULL, 1, 'commande/CO1904-0004', 'CO1904-0004.pdf', 'commande', 5, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:19:17', '2019-04-27 04:19:17', 2, NULL, NULL),
(10, 'd6e7ae317f8ad0c44ea7a9e5b2278015', 'eb365887d2b149986c6245d36c550ba1', NULL, 1, 'commande/(PROV6)', '(PROV6).pdf', 'commande', 6, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:19:55', '2019-04-26 22:44:48', 2, 2, NULL),
(11, '16696684e659f9d27e4d79a85413fa95', '92899ed6f7c881f0d091f66cf1faba3b', NULL, 1, 'commande/(PROV7)', '(PROV7).pdf', 'commande', 7, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:20:27', '2019-04-27 04:20:27', 2, NULL, NULL),
(12, 'cafe9cdcd5cc39738fd40a3955bb63a9', 'ad432440e58a3bc7879d6746320f0736', NULL, 1, 'commande/CO1904-0005', 'CO1904-0005.pdf', 'commande', 7, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:20:30', '2019-04-26 22:08:26', 2, 1, NULL),
(13, 'e2cece0d67dd45232d0165cc8a202f20', '0ee0cd4e68735dfd1fdebb5174872872', NULL, 1, 'commande/(PROV8)', '(PROV8).pdf', 'commande', 8, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:20:45', '2019-04-27 04:20:45', 2, NULL, NULL),
(14, '9d5868addb860fa71adc8f320e9a29c1', '54602f03086f19c669bf16ca9516adea', NULL, 1, 'commande/CO1904-0006', 'CO1904-0006.pdf', 'commande', 8, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:20:49', '2019-04-27 04:20:49', 2, NULL, NULL),
(15, '431c2ed2eaa6a653a2472e1e2b4406e7', 'ff2fd5cf71968119efc4085037d31427', NULL, 1, 'commande/(PROV9)', '(PROV9).pdf', 'commande', 9, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-26 23:41:46', '2019-04-26 21:43:25', 2, 2, NULL),
(16, '18fede0824817ae0c6fb77d07638b11b', '2e775af10068b14c55e06937be700f02', NULL, 1, 'commande/(PROV10)', '(PROV10).pdf', 'commande', 10, '', '', NULL, NULL, 1, 'generated', NULL, '2019-04-29 15:27:51', '2019-04-29 20:27:51', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_contact`
--

CREATE TABLE `llx_element_contact` (
  `rowid` int(11) NOT NULL,
  `datecreate` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '5',
  `element_id` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_element_contact`
--

INSERT INTO `llx_element_contact` (`rowid`, `datecreate`, `statut`, `element_id`, `fk_c_type_contact`, `fk_socpeople`) VALUES
(1, '2019-04-26 23:35:09', 4, 1, 10, 2),
(2, '2019-04-26 23:35:09', 4, 1, 11, 2),
(3, '2019-04-26 23:37:31', 4, 2, 10, 2),
(4, '2019-04-26 23:37:31', 4, 2, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_element`
--

CREATE TABLE `llx_element_element` (
  `rowid` int(11) NOT NULL,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_resources`
--

CREATE TABLE `llx_element_resources` (
  `rowid` int(11) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busy` int(11) DEFAULT NULL,
  `mandatory` int(11) DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_emailcollector_emailcollector`
--

CREATE TABLE `llx_emailcollector_emailcollector` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_directory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `codelastresult` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastresult` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_public` text COLLATE utf8_unicode_ci,
  `note_private` text COLLATE utf8_unicode_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_emailcollector_emailcollectoraction`
--

CREATE TABLE `llx_emailcollector_emailcollectoraction` (
  `rowid` int(11) NOT NULL,
  `fk_emailcollector` int(11) NOT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `actionparam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_emailcollector_emailcollectorfilter`
--

CREATE TABLE `llx_emailcollector_emailcollectorfilter` (
  `rowid` int(11) NOT NULL,
  `fk_emailcollector` int(11) NOT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `rulevalue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_entrepot`
--

CREATE TABLE `llx_entrepot` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entity` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `lieu` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `statut` tinyint(4) DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_parent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_entrepot`
--

INSERT INTO `llx_entrepot` (`rowid`, `ref`, `datec`, `tms`, `entity`, `description`, `lieu`, `address`, `zip`, `town`, `fk_departement`, `fk_pays`, `statut`, `fk_user_author`, `model_pdf`, `import_key`, `fk_parent`) VALUES
(1, 'Baterias', '2019-04-27 00:34:22', '2019-04-26 22:34:22', 1, 'Baterias', 'Baterias', '', '', '', NULL, 84, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_establishment`
--

CREATE TABLE `llx_establishment` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `profid1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profid2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profid3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_events`
--

CREATE TABLE `llx_events` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_event_element`
--

CREATE TABLE `llx_event_element` (
  `rowid` int(11) NOT NULL,
  `fk_source` int(11) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expedition`
--

CREATE TABLE `llx_expedition` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet`
--

CREATE TABLE `llx_expeditiondet` (
  `rowid` int(11) NOT NULL,
  `fk_expedition` int(11) NOT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet_batch`
--

CREATE TABLE `llx_expeditiondet_batch` (
  `rowid` int(11) NOT NULL,
  `fk_expeditiondet` int(11) NOT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `batch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `fk_origin_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet_extrafields`
--

CREATE TABLE `llx_expeditiondet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expedition_extrafields`
--

CREATE TABLE `llx_expedition_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport`
--

CREATE TABLE `llx_expensereport` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_number_int` int(11) DEFAULT NULL,
  `ref_ext` int(11) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_create` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_validator` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `fk_statut` int(11) NOT NULL,
  `fk_c_paiement` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `note_public` text COLLATE utf8_unicode_ci,
  `note_private` text COLLATE utf8_unicode_ci,
  `detail_refuse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_cancel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integration_compta` int(11) DEFAULT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `model_pdf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport_det`
--

CREATE TABLE `llx_expensereport_det` (
  `rowid` int(11) NOT NULL,
  `fk_expensereport` int(11) NOT NULL,
  `docnumber` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_c_type_fees` int(11) NOT NULL,
  `fk_c_exp_tax_cat` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `product_type` int(11) DEFAULT '-1',
  `qty` double NOT NULL,
  `value_unit` double NOT NULL,
  `remise_percent` double DEFAULT NULL,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `date` date NOT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_facture` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_warning_message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport_extrafields`
--

CREATE TABLE `llx_expensereport_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport_ik`
--

CREATE TABLE `llx_expensereport_ik` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_c_exp_tax_cat` int(11) NOT NULL DEFAULT '0',
  `fk_range` int(11) NOT NULL DEFAULT '0',
  `coef` double NOT NULL DEFAULT '0',
  `ikoffset` double NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_expensereport_ik`
--

INSERT INTO `llx_expensereport_ik` (`rowid`, `datec`, `tms`, `fk_c_exp_tax_cat`, `fk_range`, `coef`, `ikoffset`, `active`) VALUES
(1, NULL, '2019-04-25 20:25:38', 4, 1, 0.41, 0, 1),
(2, NULL, '2019-04-25 20:25:38', 4, 2, 0.244, 824, 1),
(3, NULL, '2019-04-25 20:25:38', 4, 3, 0.286, 0, 1),
(4, NULL, '2019-04-25 20:25:38', 5, 4, 0.493, 0, 1),
(5, NULL, '2019-04-25 20:25:38', 5, 5, 0.277, 1082, 1),
(6, NULL, '2019-04-25 20:25:38', 5, 6, 0.332, 0, 1),
(7, NULL, '2019-04-25 20:25:38', 6, 7, 0.543, 0, 1),
(8, NULL, '2019-04-25 20:25:38', 6, 8, 0.305, 1180, 1),
(9, NULL, '2019-04-25 20:25:38', 6, 9, 0.364, 0, 1),
(10, NULL, '2019-04-25 20:25:38', 7, 10, 0.568, 0, 1),
(11, NULL, '2019-04-25 20:25:38', 7, 11, 0.32, 1244, 1),
(12, NULL, '2019-04-25 20:25:38', 7, 12, 0.382, 0, 1),
(13, NULL, '2019-04-25 20:25:38', 8, 13, 0.595, 0, 1),
(14, NULL, '2019-04-25 20:25:38', 8, 14, 0.337, 1288, 1),
(15, NULL, '2019-04-25 20:25:38', 8, 15, 0.401, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport_rules`
--

CREATE TABLE `llx_expensereport_rules` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dates` datetime NOT NULL,
  `datee` datetime NOT NULL,
  `amount` double(24,8) NOT NULL,
  `restrictive` tinyint(4) NOT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_usergroup` int(11) DEFAULT NULL,
  `fk_c_type_fees` int(11) NOT NULL,
  `code_expense_rules_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_for_all` tinyint(4) DEFAULT '0',
  `entity` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_compta`
--

CREATE TABLE `llx_export_compta` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `date_export` datetime NOT NULL,
  `fk_user` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_model`
--

CREATE TABLE `llx_export_model` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `filter` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_extrafields`
--

CREATE TABLE `llx_extrafields` (
  `rowid` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `elementtype` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldcomputed` text COLLATE utf8_unicode_ci,
  `fielddefault` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldunique` int(11) DEFAULT '0',
  `fieldrequired` int(11) DEFAULT '0',
  `perms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `alwayseditable` int(11) DEFAULT '0',
  `param` text COLLATE utf8_unicode_ci,
  `list` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `totalizable` tinyint(1) DEFAULT '0',
  `langs` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `help` text COLLATE utf8_unicode_ci,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture`
--

CREATE TABLE `llx_facture` (
  `rowid` int(11) NOT NULL,
  `facnumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `increment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_pointoftax` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `close_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `close_note` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `module_source` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos_source` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_fac_rec_source` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_cycle_ref` smallint(6) DEFAULT NULL,
  `situation_counter` smallint(6) DEFAULT NULL,
  `situation_final` smallint(6) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet`
--

CREATE TABLE `llx_facturedet` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_percent` double DEFAULT NULL,
  `fk_prev_id` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_extrafields`
--

CREATE TABLE `llx_facturedet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_rec`
--

CREATE TABLE `llx_facturedet_rec` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `date_start_fill` int(11) DEFAULT '0',
  `date_end_fill` int(11) DEFAULT '0',
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(10) UNSIGNED DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_rec_extrafields`
--

CREATE TABLE `llx_facturedet_rec_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_extrafields`
--

CREATE TABLE `llx_facture_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn`
--

CREATE TABLE `llx_facture_fourn` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `ref_supplier` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_pointoftax` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double(24,8) DEFAULT '0.00000000',
  `close_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `close_note` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_det`
--

CREATE TABLE `llx_facture_fourn_det` (
  `rowid` int(11) NOT NULL,
  `fk_facture_fourn` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `pu_ht` double(24,8) DEFAULT NULL,
  `pu_ttc` double(24,8) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_det_extrafields`
--

CREATE TABLE `llx_facture_fourn_det_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_extrafields`
--

CREATE TABLE `llx_facture_fourn_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_rec`
--

CREATE TABLE `llx_facture_rec` (
  `rowid` int(11) NOT NULL,
  `titre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `suspended` int(11) DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT '0',
  `fk_mode_reglement` int(11) DEFAULT '0',
  `date_lim_reglement` date DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `modelpdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `usenewprice` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'm',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  `auto_validate` int(11) DEFAULT '0',
  `generate_pdf` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_rec_extrafields`
--

CREATE TABLE `llx_facture_rec_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter`
--

CREATE TABLE `llx_fichinter` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `fk_contrat` int(11) DEFAULT '0',
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `datei` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `datet` date DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet`
--

CREATE TABLE `llx_fichinterdet` (
  `rowid` int(11) NOT NULL,
  `fk_fichinter` int(11) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet_extrafields`
--

CREATE TABLE `llx_fichinterdet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet_rec`
--

CREATE TABLE `llx_fichinterdet_rec` (
  `rowid` int(11) NOT NULL,
  `fk_fichinter` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `fk_export_commpta` int(11) NOT NULL DEFAULT '0',
  `special_code` int(10) UNSIGNED DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter_extrafields`
--

CREATE TABLE `llx_fichinter_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter_rec`
--

CREATE TABLE `llx_fichinter_rec` (
  `rowid` int(11) NOT NULL,
  `titre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `fk_contrat` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `modelpdf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'm',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  `auto_validate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday`
--

CREATE TABLE `llx_holiday` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `halfday` int(11) DEFAULT '0',
  `statut` int(11) NOT NULL DEFAULT '1',
  `fk_validator` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `detail_refuse` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_config`
--

CREATE TABLE `llx_holiday_config` (
  `rowid` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_holiday_config`
--

INSERT INTO `llx_holiday_config` (`rowid`, `name`, `value`) VALUES
(1, 'lastUpdate', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_logs`
--

CREATE TABLE `llx_holiday_logs` (
  `rowid` int(11) NOT NULL,
  `date_action` datetime NOT NULL,
  `fk_user_action` int(11) NOT NULL,
  `fk_user_update` int(11) NOT NULL,
  `fk_type` int(11) NOT NULL,
  `type_action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prev_solde` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_solde` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_users`
--

CREATE TABLE `llx_holiday_users` (
  `fk_user` int(11) NOT NULL,
  `fk_type` int(11) NOT NULL,
  `nb_holiday` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_import_model`
--

CREATE TABLE `llx_import_model` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_inventory`
--

CREATE TABLE `llx_inventory` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '0',
  `ref` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_inventory` datetime DEFAULT NULL,
  `date_validation` datetime DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_inventorydet`
--

CREATE TABLE `llx_inventorydet` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_inventory` int(11) DEFAULT '0',
  `fk_warehouse` int(11) DEFAULT '0',
  `fk_product` int(11) DEFAULT '0',
  `batch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_view` double DEFAULT NULL,
  `qty_stock` double DEFAULT NULL,
  `qty_regulated` double DEFAULT NULL,
  `pmp` double DEFAULT '0',
  `pa` double DEFAULT '0',
  `new_pmp` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_links`
--

CREATE TABLE `llx_links` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datea` datetime NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objecttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraison`
--

CREATE TABLE `llx_livraison` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraisondet`
--

CREATE TABLE `llx_livraisondet` (
  `rowid` int(11) NOT NULL,
  `fk_livraison` int(11) DEFAULT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `qty` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraisondet_extrafields`
--

CREATE TABLE `llx_livraisondet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraison_extrafields`
--

CREATE TABLE `llx_livraison_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_loan`
--

CREATE TABLE `llx_loan` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `capital` double(24,8) NOT NULL DEFAULT '0.00000000',
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `nbterm` double DEFAULT NULL,
  `rate` double NOT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `capital_position` double(24,8) DEFAULT '0.00000000',
  `date_position` date DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `accountancy_account_capital` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_account_insurance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_account_interest` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_loan_schedule`
--

CREATE TABLE `llx_loan_schedule` (
  `rowid` int(11) NOT NULL,
  `fk_loan` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount_capital` double(24,8) DEFAULT '0.00000000',
  `amount_insurance` double(24,8) DEFAULT '0.00000000',
  `amount_interest` double(24,8) DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_localtax`
--

CREATE TABLE `llx_localtax` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `localtaxtype` tinyint(4) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing`
--

CREATE TABLE `llx_mailing` (
  `rowid` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `titre` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `sujet` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci,
  `bgcolor` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bgimage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cible` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbemail` int(11) DEFAULT NULL,
  `email_from` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_replyto` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_errorsto` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_appro` datetime DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_appro` int(11) DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_file1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_file2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_file3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_file4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing_cibles`
--

CREATE TABLE `llx_mailing_cibles` (
  `rowid` int(11) NOT NULL,
  `fk_mailing` int(11) NOT NULL,
  `fk_contact` int(11) NOT NULL,
  `lastname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `source_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `error_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_menu`
--

CREATE TABLE `llx_menu` (
  `rowid` int(11) NOT NULL,
  `menu_handler` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `mainmenu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `leftmenu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_menu` int(11) NOT NULL,
  `fk_mainmenu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_leftmenu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `perms` text COLLATE utf8_unicode_ci,
  `enabled` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `usertype` int(11) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_multicurrency`
--

CREATE TABLE `llx_multicurrency` (
  `rowid` int(11) NOT NULL,
  `date_create` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `fk_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_multicurrency_rate`
--

CREATE TABLE `llx_multicurrency_rate` (
  `rowid` int(11) NOT NULL,
  `date_sync` datetime DEFAULT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `fk_multicurrency` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify`
--

CREATE TABLE `llx_notify` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `daten` datetime DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'email',
  `type_target` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objet_type` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `objet_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify_def`
--

CREATE TABLE `llx_notify_def` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify_def_object`
--

CREATE TABLE `llx_notify_def_object` (
  `id` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `objet_type` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objet_id` int(11) NOT NULL,
  `type_notif` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'browser',
  `date_notif` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `moreparam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_oauth_state`
--

CREATE TABLE `llx_oauth_state` (
  `rowid` int(11) NOT NULL,
  `service` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_oauth_token`
--

CREATE TABLE `llx_oauth_token` (
  `rowid` int(11) NOT NULL,
  `service` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8_unicode_ci,
  `tokenstring` text COLLATE utf8_unicode_ci,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_onlinesignature`
--

CREATE TABLE `llx_onlinesignature` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `object_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pathoffile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_comments`
--

CREATE TABLE `llx_opensurvey_comments` (
  `id_comment` int(10) UNSIGNED NOT NULL,
  `id_sondage` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercomment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_formquestions`
--

CREATE TABLE `llx_opensurvey_formquestions` (
  `rowid` int(11) NOT NULL,
  `id_sondage` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8_unicode_ci,
  `available_answers` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_sondage`
--

CREATE TABLE `llx_opensurvey_sondage` (
  `id_sondage` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `commentaires` text COLLATE utf8_unicode_ci,
  `mail_admin` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_admin` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `titre` text COLLATE utf8_unicode_ci NOT NULL,
  `date_fin` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `format` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `mailsonde` tinyint(4) NOT NULL DEFAULT '0',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_spy` tinyint(4) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sujet` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_user_formanswers`
--

CREATE TABLE `llx_opensurvey_user_formanswers` (
  `fk_user_survey` int(11) NOT NULL,
  `fk_question` int(11) NOT NULL,
  `reponses` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_user_studs`
--

CREATE TABLE `llx_opensurvey_user_studs` (
  `id_users` int(11) NOT NULL,
  `nom` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `id_sondage` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `reponses` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_overwrite_trans`
--

CREATE TABLE `llx_overwrite_trans` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transkey` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transvalue` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement`
--

CREATE TABLE `llx_paiement` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `ext_payment_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext_payment_site` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_bank` int(11) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_export_compta` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementcharge`
--

CREATE TABLE `llx_paiementcharge` (
  `rowid` int(11) NOT NULL,
  `fk_charge` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_typepaiement` int(11) NOT NULL,
  `num_paiement` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn`
--

CREATE TABLE `llx_paiementfourn` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn_facturefourn`
--

CREATE TABLE `llx_paiementfourn_facturefourn` (
  `rowid` int(11) NOT NULL,
  `fk_paiementfourn` int(11) DEFAULT NULL,
  `fk_facturefourn` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement_facture`
--

CREATE TABLE `llx_paiement_facture` (
  `rowid` int(11) NOT NULL,
  `fk_paiement` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_donation`
--

CREATE TABLE `llx_payment_donation` (
  `rowid` int(11) NOT NULL,
  `fk_donation` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_expensereport`
--

CREATE TABLE `llx_payment_expensereport` (
  `rowid` int(11) NOT NULL,
  `fk_expensereport` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_loan`
--

CREATE TABLE `llx_payment_loan` (
  `rowid` int(11) NOT NULL,
  `fk_loan` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount_capital` double(24,8) DEFAULT '0.00000000',
  `amount_insurance` double(24,8) DEFAULT '0.00000000',
  `amount_interest` double(24,8) DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_salary`
--

CREATE TABLE `llx_payment_salary` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fk_projet` int(11) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datesp` date DEFAULT NULL,
  `dateep` date DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_various`
--

CREATE TABLE `llx_payment_various` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `sens` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `accountancy_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_pos_cash_fence`
--

CREATE TABLE `llx_pos_cash_fence` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opening` double(24,8) DEFAULT '0.00000000',
  `cash` double(24,8) DEFAULT '0.00000000',
  `card` double(24,8) DEFAULT '0.00000000',
  `cheque` double(24,8) DEFAULT '0.00000000',
  `status` int(11) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `day_close` int(11) DEFAULT NULL,
  `month_close` int(11) DEFAULT NULL,
  `year_close` int(11) DEFAULT NULL,
  `posmodule` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posnumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_bons`
--

CREATE TABLE `llx_prelevement_bons` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `statut` smallint(6) DEFAULT '0',
  `credite` smallint(6) DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `date_trans` datetime DEFAULT NULL,
  `method_trans` smallint(6) DEFAULT NULL,
  `fk_user_trans` int(11) DEFAULT NULL,
  `date_credit` datetime DEFAULT NULL,
  `fk_user_credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture`
--

CREATE TABLE `llx_prelevement_facture` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture_demande`
--

CREATE TABLE `llx_prelevement_facture_demande` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `amount` double(24,8) NOT NULL,
  `date_demande` datetime NOT NULL,
  `traite` smallint(6) DEFAULT '0',
  `date_traite` datetime DEFAULT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_user_demande` int(11) NOT NULL,
  `code_banque` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_lignes`
--

CREATE TABLE `llx_prelevement_lignes` (
  `rowid` int(11) NOT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `client_nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `code_banque` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_rejet`
--

CREATE TABLE `llx_prelevement_rejet` (
  `rowid` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) DEFAULT NULL,
  `date_rejet` datetime DEFAULT NULL,
  `motif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_creation` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `afacturer` tinyint(4) DEFAULT '0',
  `fk_facture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_printing`
--

CREATE TABLE `llx_printing` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text COLLATE utf8_unicode_ci NOT NULL,
  `printer_location` text COLLATE utf8_unicode_ci NOT NULL,
  `printer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product`
--

CREATE TABLE `llx_product` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_parent` int(11) DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `customcode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `cost_price` double(24,8) DEFAULT NULL,
  `default_vat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `tobuy` tinyint(4) DEFAULT '1',
  `onportal` tinyint(4) DEFAULT '0',
  `tobatch` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product_type` int(11) DEFAULT '0',
  `duration` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seuil_stock_alerte` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT NULL,
  `accountancy_code_sell` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_sell_intra` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_sell_export` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_buy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partnumber` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` tinyint(4) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `length_units` tinyint(4) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `width_units` tinyint(4) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `height_units` tinyint(4) DEFAULT NULL,
  `surface` float DEFAULT NULL,
  `surface_units` tinyint(4) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `volume_units` tinyint(4) DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fifo` double(24,8) DEFAULT NULL,
  `lifo` double(24,8) DEFAULT NULL,
  `fk_default_warehouse` int(11) DEFAULT NULL,
  `canvas` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finished` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(4) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_price_expression` int(11) DEFAULT NULL,
  `desiredstock` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `price_autogen` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_product`
--

INSERT INTO `llx_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `fk_parent`, `label`, `description`, `note_public`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `cost_price`, `default_vat_code`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `fk_user_author`, `fk_user_modif`, `tosell`, `tobuy`, `onportal`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_sell_intra`, `accountancy_code_sell_export`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `width`, `width_units`, `height`, `height_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `fifo`, `lifo`, `fk_default_warehouse`, `canvas`, `finished`, `hidden`, `import_key`, `model_pdf`, `fk_price_expression`, `desiredstock`, `fk_unit`, `price_autogen`) VALUES
(1, 'BMOTBMC12N7-3B', 1, NULL, '2019-04-26 01:15:03', '2019-04-26 22:43:25', 0, '12N7-3B', '222222', NULL, '', '', NULL, 37.95000000, 42.50400000, 36.00000000, 40.32000000, 'HT', NULL, 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 1, 1, 0, 0, 0, '', 10, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.00000000, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, 50, NULL, 0),
(2, 'ACCEALU0027', 1, NULL, '2019-04-27 00:39:34', '2019-04-26 22:41:52', 0, 'COMPROBADOR 6-12 VOLTIOS', '', NULL, '', '', NULL, 25.00000000, 28.00000000, 24.00000000, 26.88000000, 'HT', NULL, 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 1, 1, 0, 0, 0, '', 10, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 45, 20.00000000, NULL, NULL, 1, '', NULL, 0, NULL, NULL, NULL, 30, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_association`
--

CREATE TABLE `llx_product_association` (
  `rowid` int(11) NOT NULL,
  `fk_product_pere` int(11) NOT NULL DEFAULT '0',
  `fk_product_fils` int(11) NOT NULL DEFAULT '0',
  `qty` double DEFAULT NULL,
  `incdec` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_attribute`
--

CREATE TABLE `llx_product_attribute` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_attribute_combination`
--

CREATE TABLE `llx_product_attribute_combination` (
  `rowid` int(11) NOT NULL,
  `fk_product_parent` int(11) NOT NULL,
  `fk_product_child` int(11) NOT NULL,
  `variation_price` float NOT NULL,
  `variation_price_percentage` int(11) DEFAULT NULL,
  `variation_weight` float NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_attribute_combination2val`
--

CREATE TABLE `llx_product_attribute_combination2val` (
  `rowid` int(11) NOT NULL,
  `fk_prod_combination` int(11) NOT NULL,
  `fk_prod_attr` int(11) NOT NULL,
  `fk_prod_attr_val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_attribute_value`
--

CREATE TABLE `llx_product_attribute_value` (
  `rowid` int(11) NOT NULL,
  `fk_product_attribute` int(11) NOT NULL,
  `ref` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_batch`
--

CREATE TABLE `llx_product_batch` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product_stock` int(11) NOT NULL,
  `eatby` datetime DEFAULT NULL,
  `sellby` datetime DEFAULT NULL,
  `batch` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price`
--

CREATE TABLE `llx_product_customer_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `default_vat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price_log`
--

CREATE TABLE `llx_product_customer_price_log` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL DEFAULT '0',
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `default_vat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_extrafields`
--

CREATE TABLE `llx_product_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price`
--

CREATE TABLE `llx_product_fournisseur_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `ref_fourn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc_fourn` text COLLATE utf8_unicode_ci,
  `fk_availability` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `charges` double(24,8) DEFAULT '0.00000000',
  `default_vat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) NOT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `info_bits` int(11) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `fk_supplier_price_expression` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_time_days` int(11) DEFAULT NULL,
  `supplier_reputation` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_unitprice` double(24,8) DEFAULT NULL,
  `multicurrency_price` double(24,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price_log`
--

CREATE TABLE `llx_product_fournisseur_price_log` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `fk_product_fournisseur` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_unitprice` double(24,8) DEFAULT NULL,
  `multicurrency_price` double(24,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lang`
--

CREATE TABLE `llx_product_lang` (
  `rowid` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lot`
--

CREATE TABLE `llx_product_lot` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lot_extrafields`
--

CREATE TABLE `llx_product_lot_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price`
--

CREATE TABLE `llx_product_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `date_price` datetime NOT NULL,
  `price_level` smallint(6) DEFAULT '1',
  `price` double(24,8) DEFAULT NULL,
  `price_ttc` double(24,8) DEFAULT NULL,
  `price_min` double(24,8) DEFAULT NULL,
  `price_min_ttc` double(24,8) DEFAULT NULL,
  `price_base_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `default_vat_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_tx` double(6,3) NOT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `price_by_qty` int(11) NOT NULL DEFAULT '0',
  `fk_price_expression` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_price` double(24,8) DEFAULT NULL,
  `multicurrency_price_ttc` double(24,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_product_price`
--

INSERT INTO `llx_product_price` (`rowid`, `entity`, `tms`, `fk_product`, `date_price`, `price_level`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `default_vat_code`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `fk_user_author`, `tosell`, `price_by_qty`, `fk_price_expression`, `import_key`, `fk_multicurrency`, `multicurrency_code`, `multicurrency_tx`, `multicurrency_price`, `multicurrency_price_ttc`) VALUES
(1, 1, '2019-04-25 23:15:03', 1, '2019-04-26 01:15:03', 1, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'HT', 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 0, NULL, NULL, NULL, NULL, 1.00000000, NULL, NULL),
(2, 1, '2019-04-25 23:16:40', 1, '2019-04-26 01:16:40', 1, 32.00000000, 35.84000000, 30.00000000, 33.60000000, 'HT', 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 0, NULL, NULL, NULL, NULL, 1.00000000, NULL, NULL),
(3, 1, '2019-04-26 22:39:34', 2, '2019-04-27 00:39:34', 1, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'HT', 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 0, NULL, NULL, NULL, NULL, 1.00000000, NULL, NULL),
(4, 1, '2019-04-26 22:40:30', 2, '2019-04-27 00:40:30', 1, 25.00000000, 28.00000000, 24.00000000, 26.88000000, 'HT', 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 0, NULL, NULL, NULL, NULL, 1.00000000, NULL, NULL),
(5, 1, '2019-04-26 22:43:25', 1, '2019-04-27 00:43:25', 1, 37.95000000, 42.50400000, 36.00000000, 40.32000000, 'HT', 'IVA-12', 12.000, 0, 0.000, '1', 0.000, '0', 1, 1, 0, NULL, NULL, NULL, NULL, 1.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_pricerules`
--

CREATE TABLE `llx_product_pricerules` (
  `rowid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `fk_level` int(11) NOT NULL,
  `var_percent` float NOT NULL,
  `var_min_percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price_by_qty`
--

CREATE TABLE `llx_product_price_by_qty` (
  `rowid` int(11) NOT NULL,
  `fk_product_price` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_price` double(24,8) DEFAULT NULL,
  `multicurrency_price_ttc` double(24,8) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_stock`
--

CREATE TABLE `llx_product_stock` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `reel` double DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_product_stock`
--

INSERT INTO `llx_product_stock` (`rowid`, `tms`, `fk_product`, `fk_entrepot`, `reel`, `import_key`) VALUES
(1, '2019-04-26 22:41:52', 2, 1, 45, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_warehouse_properties`
--

CREATE TABLE `llx_product_warehouse_properties` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `seuil_stock_alerte` int(11) DEFAULT '0',
  `desiredstock` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet`
--

CREATE TABLE `llx_projet` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '0',
  `fk_opp_status` int(11) DEFAULT NULL,
  `opp_percent` double(5,2) DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `fk_user_close` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `opp_amount` double(24,8) DEFAULT NULL,
  `budget_amount` double(24,8) DEFAULT NULL,
  `bill_time` int(11) DEFAULT '0',
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_extrafields`
--

CREATE TABLE `llx_projet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task`
--

CREATE TABLE `llx_projet_task` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_projet` int(11) NOT NULL,
  `fk_task_parent` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `datev` datetime DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `duration_effective` double DEFAULT '0',
  `planned_workload` double DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `rang` int(11) DEFAULT '0',
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_extrafields`
--

CREATE TABLE `llx_projet_task_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_time`
--

CREATE TABLE `llx_projet_task_time` (
  `rowid` int(11) NOT NULL,
  `fk_task` int(11) NOT NULL,
  `task_date` date DEFAULT NULL,
  `task_datehour` datetime DEFAULT NULL,
  `task_date_withhour` int(11) DEFAULT '0',
  `task_duration` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `invoice_line_id` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal`
--

CREATE TABLE `llx_propal` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet`
--

CREATE TABLE `llx_propaldet` (
  `rowid` int(11) NOT NULL,
  `fk_propal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fk_remise_except` int(11) DEFAULT NULL,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet_extrafields`
--

CREATE TABLE `llx_propaldet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal_extrafields`
--

CREATE TABLE `llx_propal_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal_merge_pdf_product`
--

CREATE TABLE `llx_propal_merge_pdf_product` (
  `rowid` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `file_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_resource`
--

CREATE TABLE `llx_resource` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fk_code_type_resource` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_public` text COLLATE utf8_unicode_ci,
  `note_private` text COLLATE utf8_unicode_ci,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_resource_extrafields`
--

CREATE TABLE `llx_resource_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_rights_def`
--

CREATE TABLE `llx_rights_def` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `perms` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subperms` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bydefault` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_rights_def`
--

INSERT INTO `llx_rights_def` (`id`, `libelle`, `module`, `entity`, `perms`, `subperms`, `type`, `bydefault`) VALUES
(31, 'Read products', 'produit', 1, 'lire', NULL, 'r', 0),
(32, 'Create/modify products', 'produit', 1, 'creer', NULL, 'w', 0),
(34, 'Delete products', 'produit', 1, 'supprimer', NULL, 'd', 0),
(38, 'Export products', 'produit', 1, 'export', NULL, 'r', 0),
(39, 'Ignore minimum price', 'produit', 1, 'ignore_price_min_advance', NULL, 'r', 0),
(81, 'Lire les commandes clients', 'commande', 1, 'lire', NULL, 'r', 0),
(82, 'Creer/modifier les commandes clients', 'commande', 1, 'creer', NULL, 'w', 0),
(84, 'Valider les commandes clients', 'commande', 1, 'order_advance', 'validate', 'd', 0),
(86, 'Envoyer les commandes clients', 'commande', 1, 'order_advance', 'send', 'd', 0),
(87, 'Cloturer les commandes clients', 'commande', 1, 'cloturer', NULL, 'd', 0),
(88, 'Annuler les commandes clients', 'commande', 1, 'order_advance', 'annuler', 'd', 0),
(89, 'Supprimer les commandes clients', 'commande', 1, 'supprimer', NULL, 'd', 0),
(121, 'Read third parties', 'societe', 1, 'lire', NULL, 'r', 0),
(122, 'Create and update third parties', 'societe', 1, 'creer', NULL, 'w', 0),
(125, 'Delete third parties', 'societe', 1, 'supprimer', NULL, 'd', 0),
(126, 'Export third parties', 'societe', 1, 'export', NULL, 'r', 0),
(251, 'Consulter les autres utilisateurs', 'user', 1, 'user', 'lire', 'r', 0),
(252, 'Consulter les permissions des autres utilisateurs', 'user', 1, 'user_advance', 'readperms', 'r', 0),
(253, 'Creer/modifier utilisateurs internes et externes', 'user', 1, 'user', 'creer', 'w', 0),
(254, 'Creer/modifier utilisateurs externes seulement', 'user', 1, 'user_advance', 'write', 'w', 0),
(255, 'Modifier le mot de passe des autres utilisateurs', 'user', 1, 'user', 'password', 'w', 0),
(256, 'Supprimer ou desactiver les autres utilisateurs', 'user', 1, 'user', 'supprimer', 'd', 0),
(262, 'Read all third parties by internal users (otherwise only if commercial contact). Not effective for external users (limited to themselves).', 'societe', 1, 'client', 'voir', 'r', 0),
(281, 'Read contacts', 'societe', 1, 'contact', 'lire', 'r', 0),
(282, 'Create and update contact', 'societe', 1, 'contact', 'creer', 'w', 0),
(283, 'Delete contacts', 'societe', 1, 'contact', 'supprimer', 'd', 0),
(286, 'Export contacts', 'societe', 1, 'contact', 'export', 'd', 0),
(341, 'Consulter ses propres permissions', 'user', 1, 'self_advance', 'readperms', 'r', 0),
(342, 'Creer/modifier ses propres infos utilisateur', 'user', 1, 'self', 'creer', 'w', 0),
(343, 'Modifier son propre mot de passe', 'user', 1, 'self', 'password', 'w', 0),
(344, 'Modifier ses propres permissions', 'user', 1, 'self_advance', 'writeperms', 'w', 0),
(351, 'Consulter les groupes', 'user', 1, 'group_advance', 'read', 'r', 0),
(352, 'Consulter les permissions des groupes', 'user', 1, 'group_advance', 'readperms', 'r', 0),
(353, 'Creer/modifier les groupes et leurs permissions', 'user', 1, 'group_advance', 'write', 'w', 0),
(354, 'Supprimer ou desactiver les groupes', 'user', 1, 'group_advance', 'delete', 'd', 0),
(358, 'Exporter les utilisateurs', 'user', 1, 'user', 'export', 'r', 0),
(1001, 'Lire les stocks', 'stock', 1, 'lire', NULL, 'r', 0),
(1002, 'Creer/Modifier les stocks', 'stock', 1, 'creer', NULL, 'w', 0),
(1003, 'Supprimer les stocks', 'stock', 1, 'supprimer', NULL, 'd', 0),
(1004, 'Lire mouvements de stocks', 'stock', 1, 'mouvement', 'lire', 'r', 0),
(1005, 'Creer/modifier mouvements de stocks', 'stock', 1, 'mouvement', 'creer', 'w', 0),
(1421, 'Exporter les commandes clients et attributs', 'commande', 1, 'commande', 'export', 'r', 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe`
--

CREATE TABLE `llx_societe` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_alias` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `code_client` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_fournisseur` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_compta` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_compta_fournisseur` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_departement` int(11) DEFAULT '0',
  `fk_pays` int(11) DEFAULT '0',
  `fk_account` int(11) DEFAULT '0',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_effectif` int(11) DEFAULT '0',
  `fk_typent` int(11) DEFAULT '0',
  `fk_forme_juridique` int(11) DEFAULT '0',
  `fk_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siren` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siret` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idprof4` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idprof5` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idprof6` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_intra` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` double(24,8) DEFAULT NULL,
  `fk_stcomm` int(11) NOT NULL DEFAULT '0',
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefix_comm` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client` tinyint(4) DEFAULT '0',
  `fournisseur` tinyint(4) DEFAULT '0',
  `supplier_account` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_prospectlevel` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_bad` tinyint(4) DEFAULT '0',
  `customer_rate` double DEFAULT '0',
  `supplier_rate` double DEFAULT '0',
  `remise_client` double DEFAULT '0',
  `remise_supplier` double DEFAULT '0',
  `mode_reglement` tinyint(4) DEFAULT NULL,
  `cond_reglement` tinyint(4) DEFAULT NULL,
  `mode_reglement_supplier` tinyint(4) DEFAULT NULL,
  `cond_reglement_supplier` tinyint(4) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tva_assuj` tinyint(4) DEFAULT '1',
  `localtax1_assuj` tinyint(4) DEFAULT '0',
  `localtax1_value` double(6,3) DEFAULT NULL,
  `localtax2_assuj` tinyint(4) DEFAULT '0',
  `localtax2_value` double(6,3) DEFAULT NULL,
  `barcode` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `price_level` int(11) DEFAULT NULL,
  `outstanding_limit` double(24,8) DEFAULT NULL,
  `order_min_amount` double(24,8) DEFAULT NULL,
  `supplier_order_min_amount` double(24,8) DEFAULT NULL,
  `default_lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canvas` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT '0',
  `webservices_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webservices_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_societe`
--

INSERT INTO `llx_societe` (`rowid`, `nom`, `name_alias`, `entity`, `ref_ext`, `ref_int`, `statut`, `parent`, `status`, `code_client`, `code_fournisseur`, `code_compta`, `code_compta_fournisseur`, `address`, `zip`, `town`, `fk_departement`, `fk_pays`, `fk_account`, `phone`, `fax`, `url`, `email`, `skype`, `twitter`, `facebook`, `instagram`, `snapchat`, `googleplus`, `youtube`, `whatsapp`, `fk_effectif`, `fk_typent`, `fk_forme_juridique`, `fk_currency`, `siren`, `siret`, `ape`, `idprof4`, `idprof5`, `idprof6`, `tva_intra`, `capital`, `fk_stcomm`, `note_private`, `note_public`, `model_pdf`, `prefix_comm`, `client`, `fournisseur`, `supplier_account`, `fk_prospectlevel`, `fk_incoterms`, `location_incoterms`, `customer_bad`, `customer_rate`, `supplier_rate`, `remise_client`, `remise_supplier`, `mode_reglement`, `cond_reglement`, `mode_reglement_supplier`, `cond_reglement_supplier`, `fk_shipping_method`, `tva_assuj`, `localtax1_assuj`, `localtax1_value`, `localtax2_assuj`, `localtax2_value`, `barcode`, `fk_barcode_type`, `price_level`, `outstanding_limit`, `order_min_amount`, `supplier_order_min_amount`, `default_lang`, `logo`, `canvas`, `fk_entrepot`, `webservices_url`, `webservices_key`, `tms`, `datec`, `fk_user_creat`, `fk_user_modif`, `fk_multicurrency`, `multicurrency_code`, `import_key`) VALUES
(1, 'ING BLANCA OCHOA', 'fffffff', 1, NULL, NULL, 0, NULL, 1, 'CU1904-0001', NULL, NULL, NULL, 'fffff', '17456456', 'quito', 0, 84, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, '', 0, NULL, 0, 0, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.000, NULL, 0.000, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'adidas_off.png', NULL, 0, NULL, NULL, '2019-04-26 22:17:34', '2019-04-25 22:42:23', 1, 1, 0, '', NULL),
(2, 'Baterias Quito', 'Baterias Quito', 1, NULL, NULL, 0, NULL, 1, 'CU1904-0002', NULL, NULL, NULL, 'Baterias Quito', NULL, NULL, 0, 84, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '', '', '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, 3, 0, NULL, '', 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.000, NULL, 0.000, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'adidas_on.png', NULL, 0, NULL, NULL, '2019-04-26 21:13:12', '2019-04-25 23:30:50', 2, 2, 0, '', NULL),
(3, 'LUBRICADORA REGALO DE DIOS', 'LUBRICADORA REGALO DE DIOS', 1, NULL, NULL, 0, NULL, 1, 'CU1904-0003', NULL, NULL, NULL, 'HHHH', NULL, NULL, 0, 84, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, '', 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.000, NULL, 0.000, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'coca_on.png', NULL, 0, NULL, NULL, '2019-04-26 22:17:56', '2019-04-26 01:23:44', 2, 1, 0, '', NULL),
(4, 'AZUCENA CHAVEZ', '', 1, NULL, NULL, 0, NULL, 1, 'CU1904-0004', NULL, NULL, NULL, '', NULL, NULL, 0, 84, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, '', 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.000, NULL, 0.000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-04-26 22:18:13', '2019-04-26 23:08:01', 2, 1, 0, '', NULL),
(5, 'POZO COQUE MILTON', '', 1, NULL, NULL, 0, NULL, 1, 'CU1904-0005', NULL, NULL, NULL, '', NULL, NULL, 0, 84, 0, NULL, NULL, NULL, 'milton_pozo@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, '', 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.000, NULL, 0.000, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-04-26 22:22:23', '2019-04-27 00:18:43', 1, 1, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_account`
--

CREATE TABLE `llx_societe_account` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `key_account` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pass_encoding` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_crypted` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_temp` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `site` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_website` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `date_last_login` datetime DEFAULT NULL,
  `date_previous_login` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_address`
--

CREATE TABLE `llx_societe_address` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_commerciaux`
--

CREATE TABLE `llx_societe_commerciaux` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_societe_commerciaux`
--

INSERT INTO `llx_societe_commerciaux` (`rowid`, `fk_soc`, `fk_user`, `import_key`) VALUES
(1, 2, 2, NULL),
(2, 3, 2, NULL),
(3, 4, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_extrafields`
--

CREATE TABLE `llx_societe_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_log`
--

CREATE TABLE `llx_societe_log` (
  `id` int(11) NOT NULL,
  `datel` datetime DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `author` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_prices`
--

CREATE TABLE `llx_societe_prices` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `price_level` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise`
--

CREATE TABLE `llx_societe_remise` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_client` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_societe_remise`
--

INSERT INTO `llx_societe_remise` (`rowid`, `entity`, `fk_soc`, `tms`, `datec`, `fk_user_author`, `remise_client`, `note`) VALUES
(1, 1, 1, '2019-04-25 20:43:23', '2019-04-25 22:43:23', 1, 3.000, 'rrrrrrr');

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise_except`
--

CREATE TABLE `llx_societe_remise_except` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `amount_ht` double(24,8) NOT NULL,
  `amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `fk_user` int(11) NOT NULL,
  `fk_facture_line` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_invoice_supplier_line` int(11) DEFAULT NULL,
  `fk_invoice_supplier` int(11) DEFAULT NULL,
  `fk_invoice_supplier_source` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `multicurrency_amount_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_societe_remise_except`
--

INSERT INTO `llx_societe_remise_except` (`rowid`, `entity`, `fk_soc`, `discount_type`, `datec`, `amount_ht`, `amount_tva`, `amount_ttc`, `tva_tx`, `fk_user`, `fk_facture_line`, `fk_facture`, `fk_facture_source`, `fk_invoice_supplier_line`, `fk_invoice_supplier`, `fk_invoice_supplier_source`, `description`, `multicurrency_amount_ht`, `multicurrency_amount_tva`, `multicurrency_amount_ttc`) VALUES
(2, 1, 5, 0, '2019-04-27 00:23:27', 25.00000000, 0.00000000, 25.00000000, 0.000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'wwwww', 25.00000000, 0.00000000, 25.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise_supplier`
--

CREATE TABLE `llx_societe_remise_supplier` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_supplier` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_rib`
--

CREATE TABLE `llx_societe_rib` (
  `rowid` int(11) NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ban',
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_banque` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban_prefix` varchar(34) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domiciliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proprio` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_rib` smallint(6) NOT NULL DEFAULT '0',
  `rum` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_rum` date DEFAULT NULL,
  `frstrecur` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'FRST',
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp_date_month` int(11) DEFAULT NULL,
  `exp_date_year` int(11) DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` int(11) DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `max_total_amount_of_all_payments` double(24,8) DEFAULT NULL,
  `preapproval_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `total_amount_of_all_payments` double(24,8) DEFAULT NULL,
  `stripe_card_ref` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipaddress` varchar(68) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople`
--

CREATE TABLE `llx_socpeople` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_soc` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civility` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `poste` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_perso` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabberid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_email` smallint(6) NOT NULL DEFAULT '0',
  `priv` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `default_lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canvas` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople_extrafields`
--

CREATE TABLE `llx_socpeople_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_stock_mouvement`
--

CREATE TABLE `llx_stock_mouvement` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datem` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `type_mouvement` smallint(6) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventorycode` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_origin` int(11) DEFAULT NULL,
  `origintype` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_stock_mouvement`
--

INSERT INTO `llx_stock_mouvement` (`rowid`, `tms`, `datem`, `fk_product`, `batch`, `eatby`, `sellby`, `fk_entrepot`, `value`, `price`, `type_mouvement`, `fk_user_author`, `label`, `inventorycode`, `fk_project`, `fk_origin`, `origintype`, `model_pdf`) VALUES
(1, '2019-04-26 22:41:52', '2019-04-27 00:41:52', 2, NULL, NULL, NULL, 1, 45, 20.00000000, 0, 1, 'Correción de sotck del producto ACCEALU0027', '190427004130', NULL, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_subscription`
--

CREATE TABLE `llx_subscription` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `dateadh` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `subscription` double(24,8) DEFAULT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposal`
--

CREATE TABLE `llx_supplier_proposal` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text COLLATE utf8_unicode_ci,
  `note_public` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_main_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposaldet`
--

CREATE TABLE `llx_supplier_proposaldet` (
  `rowid` int(11) NOT NULL,
  `fk_supplier_proposal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fk_remise_except` int(11) DEFAULT NULL,
  `vat_src_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `ref_fourn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_unit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposaldet_extrafields`
--

CREATE TABLE `llx_supplier_proposaldet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposal_extrafields`
--

CREATE TABLE `llx_supplier_proposal_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_takepos_floor_tables`
--

CREATE TABLE `llx_takepos_floor_tables` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leftpos` float DEFAULT NULL,
  `toppos` float DEFAULT NULL,
  `floor` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ticket`
--

CREATE TABLE `llx_ticket` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `ref` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `track_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `fk_project` int(11) DEFAULT '0',
  `origin_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `fk_user_assign` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `fk_statut` int(11) DEFAULT NULL,
  `resolution` int(11) DEFAULT NULL,
  `progress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timing` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `severity_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `notify_tiers_at_create` tinyint(4) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ticket_extrafields`
--

CREATE TABLE `llx_ticket_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ticket_msg`
--

CREATE TABLE `llx_ticket_msg` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  `fk_track_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_action` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `private` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_tva`
--

CREATE TABLE `llx_tva` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fk_typepayment` int(11) DEFAULT NULL,
  `num_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user`
--

CREATE TABLE `llx_user` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_int` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee` tinyint(4) DEFAULT '1',
  `fk_establishment` int(11) DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass_encoding` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_crypted` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_temp` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civility` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `birth` date DEFAULT NULL,
  `job` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabberid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8_unicode_ci,
  `admin` smallint(6) DEFAULT '0',
  `module_comm` smallint(6) DEFAULT '1',
  `module_compta` smallint(6) DEFAULT '1',
  `fk_soc` int(11) DEFAULT NULL,
  `fk_socpeople` int(11) DEFAULT NULL,
  `fk_member` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `note_public` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datelastlogin` datetime DEFAULT NULL,
  `datepreviouslogin` datetime DEFAULT NULL,
  `egroupware_id` int(11) DEFAULT NULL,
  `ldap_sid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '1',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_holiday` int(11) DEFAULT '0',
  `thm` double(24,8) DEFAULT NULL,
  `tjm` double(24,8) DEFAULT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `salaryextra` double(24,8) DEFAULT NULL,
  `dateemployment` date DEFAULT NULL,
  `dateemploymentend` date DEFAULT NULL,
  `weeklyhours` double(16,8) DEFAULT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_range` int(11) DEFAULT NULL,
  `default_c_exp_tax_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_user`
--

INSERT INTO `llx_user` (`rowid`, `entity`, `ref_ext`, `ref_int`, `employee`, `fk_establishment`, `datec`, `tms`, `fk_user_creat`, `fk_user_modif`, `login`, `pass_encoding`, `pass`, `pass_crypted`, `pass_temp`, `api_key`, `gender`, `civility`, `lastname`, `firstname`, `address`, `zip`, `town`, `fk_state`, `fk_country`, `birth`, `job`, `office_phone`, `office_fax`, `user_mobile`, `email`, `jabberid`, `skype`, `twitter`, `facebook`, `instagram`, `snapchat`, `googleplus`, `youtube`, `whatsapp`, `signature`, `admin`, `module_comm`, `module_compta`, `fk_soc`, `fk_socpeople`, `fk_member`, `fk_user`, `note_public`, `note`, `model_pdf`, `datelastlogin`, `datepreviouslogin`, `egroupware_id`, `ldap_sid`, `openid`, `statut`, `photo`, `lang`, `color`, `barcode`, `fk_barcode_type`, `accountancy_code`, `nb_holiday`, `thm`, `tjm`, `salary`, `salaryextra`, `dateemployment`, `dateemploymentend`, `weeklyhours`, `import_key`, `default_range`, `default_c_exp_tax_cat`) VALUES
(1, 0, NULL, NULL, 1, 0, '2019-04-25 22:26:40', '2019-04-25 20:26:40', NULL, NULL, 'jorgefprietol@gmail.com', NULL, NULL, '$2y$10$IgfRRpblWk/pBeJgKc9N4uibcz69G/4nWKylLWppBePrrhBrkGmky', NULL, NULL, '', NULL, 'SuperAdmin', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '', NULL, '2019-04-27 00:46:20', '2019-04-27 00:03:54', NULL, '', NULL, 1, NULL, NULL, '', NULL, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, 0, 0, '2019-04-25 22:54:59', '2019-04-25 20:54:59', NULL, NULL, 'distribuidor@gmail.com', NULL, NULL, '$2y$10$HnklFYThSqUhMfma3ZogY.G65JjrXNGFuloaMKvsFjl4ii8mdCDmm', NULL, 'fsgj5h4x', 'man', NULL, 'Distribuidor', 'Distribuidor', 'frefrefg th tyhyhy', '', '', NULL, 84, NULL, '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '', 0, 1, 1, NULL, NULL, NULL, 1, NULL, '', NULL, '2019-04-27 00:03:19', '2019-04-26 23:59:03', NULL, '', NULL, 1, NULL, NULL, '', NULL, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup`
--

CREATE TABLE `llx_usergroup` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci,
  `model_pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_extrafields`
--

CREATE TABLE `llx_usergroup_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_rights`
--

CREATE TABLE `llx_usergroup_rights` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_usergroup` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_user`
--

CREATE TABLE `llx_usergroup_user` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_alert`
--

CREATE TABLE `llx_user_alert` (
  `rowid` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_clicktodial`
--

CREATE TABLE `llx_user_clicktodial` (
  `fk_user` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poste` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_employment`
--

CREATE TABLE `llx_user_employment` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_ext` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `job` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `salaryextra` double(24,8) DEFAULT NULL,
  `weeklyhours` double(16,8) DEFAULT NULL,
  `dateemployment` date DEFAULT NULL,
  `dateemploymentend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_extrafields`
--

CREATE TABLE `llx_user_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_param`
--

CREATE TABLE `llx_user_param` (
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `param` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_user_param`
--

INSERT INTO `llx_user_param` (`fk_user`, `entity`, `param`, `value`) VALUES
(1, 1, 'MAIN_BOXES_0', '1'),
(2, 1, 'MAIN_LANDING_PAGE', 'comm/index.php?mainmenu=commercial&leftmenu=');

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_rib`
--

CREATE TABLE `llx_user_rib` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_banque` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban_prefix` varchar(34) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domiciliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proprio` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_rights`
--

CREATE TABLE `llx_user_rights` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `llx_user_rights`
--

INSERT INTO `llx_user_rights` (`rowid`, `entity`, `fk_user`, `fk_id`) VALUES
(72, 1, 1, 31),
(67, 1, 1, 32),
(69, 1, 1, 34),
(71, 1, 1, 38),
(73, 1, 1, 39),
(129, 1, 1, 81),
(123, 1, 1, 82),
(124, 1, 1, 84),
(125, 1, 1, 86),
(127, 1, 1, 87),
(128, 1, 1, 88),
(130, 1, 1, 89),
(63, 1, 1, 91),
(60, 1, 1, 92),
(62, 1, 1, 93),
(64, 1, 1, 94),
(98, 1, 1, 121),
(95, 1, 1, 122),
(97, 1, 1, 125),
(99, 1, 1, 126),
(91, 1, 1, 161),
(84, 1, 1, 162),
(86, 1, 1, 163),
(88, 1, 1, 164),
(90, 1, 1, 165),
(92, 1, 1, 167),
(53, 1, 1, 251),
(34, 1, 1, 252),
(36, 1, 1, 253),
(37, 1, 1, 254),
(39, 1, 1, 255),
(41, 1, 1, 256),
(100, 1, 1, 262),
(106, 1, 1, 281),
(103, 1, 1, 282),
(105, 1, 1, 283),
(107, 1, 1, 286),
(42, 1, 1, 341),
(43, 1, 1, 342),
(44, 1, 1, 343),
(45, 1, 1, 344),
(51, 1, 1, 351),
(48, 1, 1, 352),
(50, 1, 1, 353),
(52, 1, 1, 354),
(54, 1, 1, 358),
(77, 1, 1, 1001),
(76, 1, 1, 1002),
(78, 1, 1, 1003),
(80, 1, 1, 1004),
(81, 1, 1, 1005),
(131, 1, 1, 1421),
(132, 1, 2, 81),
(29, 1, 2, 82),
(31, 1, 2, 87),
(133, 1, 2, 89),
(119, 1, 2, 161),
(110, 1, 2, 162),
(118, 1, 2, 163),
(120, 1, 2, 164),
(112, 1, 2, 165),
(114, 1, 2, 167),
(32, 1, 2, 1421);

-- --------------------------------------------------------

--
-- Table structure for table `llx_website`
--

CREATE TABLE `llx_website` (
  `rowid` int(11) NOT NULL,
  `type_container` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maincolor` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maincolorbis` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `fk_default_home` int(11) DEFAULT NULL,
  `virtualhost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_website_extrafields`
--

CREATE TABLE `llx_website_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llx_website_page`
--

CREATE TABLE `llx_website_page` (
  `rowid` int(11) NOT NULL,
  `fk_website` int(11) NOT NULL,
  `type_container` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `pageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aliasalt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_page` int(11) DEFAULT NULL,
  `htmlheader` text COLLATE utf8_unicode_ci,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1',
  `grabbed_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `llx_accounting_account`
--
ALTER TABLE `llx_accounting_account`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_accounting_account` (`account_number`,`entity`,`fk_pcg_version`),
  ADD KEY `idx_accounting_account_fk_pcg_version` (`fk_pcg_version`),
  ADD KEY `idx_accounting_account_account_parent` (`account_parent`);

--
-- Indexes for table `llx_accounting_bookkeeping`
--
ALTER TABLE `llx_accounting_bookkeeping`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_accounting_bookkeeping_doc_date` (`doc_date`),
  ADD KEY `idx_accounting_bookkeeping_fk_doc` (`fk_doc`),
  ADD KEY `idx_accounting_bookkeeping_fk_docdet` (`fk_docdet`),
  ADD KEY `idx_accounting_bookkeeping_numero_compte` (`numero_compte`),
  ADD KEY `idx_accounting_bookkeeping_code_journal` (`code_journal`);

--
-- Indexes for table `llx_accounting_bookkeeping_tmp`
--
ALTER TABLE `llx_accounting_bookkeeping_tmp`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_accounting_bookkeeping_tmp_doc_date` (`doc_date`),
  ADD KEY `idx_accounting_bookkeeping_tmp_fk_docdet` (`fk_docdet`),
  ADD KEY `idx_accounting_bookkeeping_tmp_numero_compte` (`numero_compte`),
  ADD KEY `idx_accounting_bookkeeping_tmp_code_journal` (`code_journal`);

--
-- Indexes for table `llx_accounting_fiscalyear`
--
ALTER TABLE `llx_accounting_fiscalyear`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_accounting_journal`
--
ALTER TABLE `llx_accounting_journal`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_accounting_journal_code` (`code`,`entity`);

--
-- Indexes for table `llx_accounting_system`
--
ALTER TABLE `llx_accounting_system`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`);

--
-- Indexes for table `llx_actioncomm`
--
ALTER TABLE `llx_actioncomm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_actioncomm_fk_soc` (`fk_soc`),
  ADD KEY `idx_actioncomm_fk_contact` (`fk_contact`),
  ADD KEY `idx_actioncomm_code` (`code`),
  ADD KEY `idx_actioncomm_fk_element` (`fk_element`),
  ADD KEY `idx_actioncomm_fk_user_action` (`fk_user_action`),
  ADD KEY `idx_actioncomm_fk_project` (`fk_project`),
  ADD KEY `idx_actioncomm_datep` (`datep`),
  ADD KEY `idx_actioncomm_datep2` (`datep2`),
  ADD KEY `idx_actioncomm_recurid` (`recurid`),
  ADD KEY `idx_actioncomm_ref_ext` (`ref_ext`);

--
-- Indexes for table `llx_actioncomm_extrafields`
--
ALTER TABLE `llx_actioncomm_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_actioncomm_extrafields` (`fk_object`);

--
-- Indexes for table `llx_actioncomm_reminder`
--
ALTER TABLE `llx_actioncomm_reminder`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_actioncomm_reminder_unique` (`fk_user`,`typeremind`,`offsetvalue`,`offsetunit`),
  ADD KEY `idx_actioncomm_reminder_rowid` (`rowid`),
  ADD KEY `idx_actioncomm_reminder_dateremind` (`dateremind`),
  ADD KEY `idx_actioncomm_reminder_fk_user` (`fk_user`);

--
-- Indexes for table `llx_actioncomm_resources`
--
ALTER TABLE `llx_actioncomm_resources`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_actioncomm_resources` (`fk_actioncomm`,`element_type`,`fk_element`),
  ADD KEY `idx_actioncomm_resources_fk_element` (`fk_element`);

--
-- Indexes for table `llx_adherent`
--
ALTER TABLE `llx_adherent`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_adherent_login` (`login`,`entity`),
  ADD UNIQUE KEY `uk_adherent_fk_soc` (`fk_soc`),
  ADD KEY `idx_adherent_fk_adherent_type` (`fk_adherent_type`);

--
-- Indexes for table `llx_adherent_extrafields`
--
ALTER TABLE `llx_adherent_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_adherent_extrafields` (`fk_object`);

--
-- Indexes for table `llx_adherent_type`
--
ALTER TABLE `llx_adherent_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_adherent_type_libelle` (`libelle`,`entity`);

--
-- Indexes for table `llx_adherent_type_extrafields`
--
ALTER TABLE `llx_adherent_type_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_adherent_type_extrafields` (`fk_object`);

--
-- Indexes for table `llx_advtargetemailing`
--
ALTER TABLE `llx_advtargetemailing`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_advtargetemailing_name` (`name`);

--
-- Indexes for table `llx_asset`
--
ALTER TABLE `llx_asset`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_asset_rowid` (`rowid`),
  ADD KEY `idx_asset_ref` (`ref`),
  ADD KEY `idx_asset_entity` (`entity`),
  ADD KEY `idx_asset_fk_asset_type` (`fk_asset_type`);

--
-- Indexes for table `llx_asset_extrafields`
--
ALTER TABLE `llx_asset_extrafields`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_asset_type`
--
ALTER TABLE `llx_asset_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_asset_type_label` (`label`,`entity`);

--
-- Indexes for table `llx_asset_type_extrafields`
--
ALTER TABLE `llx_asset_type_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_asset_type_extrafields` (`fk_object`);

--
-- Indexes for table `llx_bank`
--
ALTER TABLE `llx_bank`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_bank_datev` (`datev`),
  ADD KEY `idx_bank_dateo` (`dateo`),
  ADD KEY `idx_bank_fk_account` (`fk_account`),
  ADD KEY `idx_bank_rappro` (`rappro`),
  ADD KEY `idx_bank_num_releve` (`num_releve`);

--
-- Indexes for table `llx_bank_account`
--
ALTER TABLE `llx_bank_account`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bank_account_label` (`label`,`entity`),
  ADD KEY `idx_fk_accountancy_journal` (`fk_accountancy_journal`);

--
-- Indexes for table `llx_bank_account_extrafields`
--
ALTER TABLE `llx_bank_account_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_bank_account_extrafields` (`fk_object`);

--
-- Indexes for table `llx_bank_categ`
--
ALTER TABLE `llx_bank_categ`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_bank_class`
--
ALTER TABLE `llx_bank_class`
  ADD UNIQUE KEY `uk_bank_class_lineid` (`lineid`,`fk_categ`);

--
-- Indexes for table `llx_bank_url`
--
ALTER TABLE `llx_bank_url`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bank_url` (`fk_bank`,`type`);

--
-- Indexes for table `llx_blockedlog`
--
ALTER TABLE `llx_blockedlog`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `signature` (`signature`),
  ADD KEY `fk_object_element` (`fk_object`,`element`),
  ADD KEY `entity` (`entity`),
  ADD KEY `fk_user` (`fk_user`),
  ADD KEY `entity_action` (`entity`,`action`),
  ADD KEY `entity_action_certified` (`entity`,`action`,`certified`);

--
-- Indexes for table `llx_blockedlog_authority`
--
ALTER TABLE `llx_blockedlog_authority`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `signature` (`signature`);

--
-- Indexes for table `llx_bookmark`
--
ALTER TABLE `llx_bookmark`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bookmark_url` (`fk_user`,`url`),
  ADD UNIQUE KEY `uk_bookmark_title` (`fk_user`,`title`);

--
-- Indexes for table `llx_bordereau_cheque`
--
ALTER TABLE `llx_bordereau_cheque`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bordereau_cheque` (`ref`,`entity`);

--
-- Indexes for table `llx_boxes`
--
ALTER TABLE `llx_boxes`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  ADD KEY `idx_boxes_boxid` (`box_id`),
  ADD KEY `idx_boxes_fk_user` (`fk_user`);

--
-- Indexes for table `llx_boxes_def`
--
ALTER TABLE `llx_boxes_def`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`);

--
-- Indexes for table `llx_budget`
--
ALTER TABLE `llx_budget`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_budget_lines`
--
ALTER TABLE `llx_budget_lines`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_budget_lines` (`fk_budget`,`fk_project_ids`);

--
-- Indexes for table `llx_categorie`
--
ALTER TABLE `llx_categorie`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_categorie_ref` (`entity`,`fk_parent`,`label`,`type`),
  ADD KEY `idx_categorie_type` (`type`),
  ADD KEY `idx_categorie_label` (`label`);

--
-- Indexes for table `llx_categories_extrafields`
--
ALTER TABLE `llx_categories_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_categories_extrafields` (`fk_object`);

--
-- Indexes for table `llx_categorie_account`
--
ALTER TABLE `llx_categorie_account`
  ADD PRIMARY KEY (`fk_categorie`,`fk_account`),
  ADD KEY `idx_categorie_account_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_account_fk_account` (`fk_account`);

--
-- Indexes for table `llx_categorie_contact`
--
ALTER TABLE `llx_categorie_contact`
  ADD PRIMARY KEY (`fk_categorie`,`fk_socpeople`),
  ADD KEY `idx_categorie_contact_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_contact_fk_socpeople` (`fk_socpeople`);

--
-- Indexes for table `llx_categorie_fournisseur`
--
ALTER TABLE `llx_categorie_fournisseur`
  ADD PRIMARY KEY (`fk_categorie`,`fk_soc`),
  ADD KEY `idx_categorie_fournisseur_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_fournisseur_fk_societe` (`fk_soc`);

--
-- Indexes for table `llx_categorie_lang`
--
ALTER TABLE `llx_categorie_lang`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_category_lang` (`fk_category`,`lang`);

--
-- Indexes for table `llx_categorie_member`
--
ALTER TABLE `llx_categorie_member`
  ADD PRIMARY KEY (`fk_categorie`,`fk_member`),
  ADD KEY `idx_categorie_member_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_member_fk_member` (`fk_member`);

--
-- Indexes for table `llx_categorie_product`
--
ALTER TABLE `llx_categorie_product`
  ADD PRIMARY KEY (`fk_categorie`,`fk_product`),
  ADD KEY `idx_categorie_product_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_product_fk_product` (`fk_product`);

--
-- Indexes for table `llx_categorie_project`
--
ALTER TABLE `llx_categorie_project`
  ADD PRIMARY KEY (`fk_categorie`,`fk_project`),
  ADD KEY `idx_categorie_project_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_project_fk_project` (`fk_project`);

--
-- Indexes for table `llx_categorie_societe`
--
ALTER TABLE `llx_categorie_societe`
  ADD PRIMARY KEY (`fk_categorie`,`fk_soc`),
  ADD KEY `idx_categorie_societe_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_societe_fk_societe` (`fk_soc`);

--
-- Indexes for table `llx_categorie_user`
--
ALTER TABLE `llx_categorie_user`
  ADD PRIMARY KEY (`fk_categorie`,`fk_user`),
  ADD KEY `idx_categorie_user_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_user_fk_user` (`fk_user`);

--
-- Indexes for table `llx_chargesociales`
--
ALTER TABLE `llx_chargesociales`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_commande`
--
ALTER TABLE `llx_commande`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_commande_ref` (`ref`,`entity`),
  ADD KEY `idx_commande_fk_soc` (`fk_soc`),
  ADD KEY `idx_commande_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_commande_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_commande_fk_user_cloture` (`fk_user_cloture`),
  ADD KEY `idx_commande_fk_projet` (`fk_projet`),
  ADD KEY `idx_commande_fk_account` (`fk_account`),
  ADD KEY `idx_commande_fk_currency` (`fk_currency`);

--
-- Indexes for table `llx_commandedet`
--
ALTER TABLE `llx_commandedet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commandedet_fk_commande` (`fk_commande`),
  ADD KEY `idx_commandedet_fk_product` (`fk_product`),
  ADD KEY `fk_commandedet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_commandedet_extrafields`
--
ALTER TABLE `llx_commandedet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commandedet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_commande_extrafields`
--
ALTER TABLE `llx_commande_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_extrafields` (`fk_object`);

--
-- Indexes for table `llx_commande_fournisseur`
--
ALTER TABLE `llx_commande_fournisseur`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_commande_fournisseur_ref` (`ref`,`fk_soc`,`entity`),
  ADD KEY `idx_commande_fournisseur_fk_soc` (`fk_soc`),
  ADD KEY `billed` (`billed`);

--
-- Indexes for table `llx_commande_fournisseurdet`
--
ALTER TABLE `llx_commande_fournisseurdet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `fk_commande_fournisseurdet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_commande_fournisseurdet_extrafields`
--
ALTER TABLE `llx_commande_fournisseurdet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_fournisseurdet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_commande_fournisseur_dispatch`
--
ALTER TABLE `llx_commande_fournisseur_dispatch`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_fournisseur_dispatch_fk_commande` (`fk_commande`);

--
-- Indexes for table `llx_commande_fournisseur_extrafields`
--
ALTER TABLE `llx_commande_fournisseur_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_fournisseur_extrafields` (`fk_object`);

--
-- Indexes for table `llx_commande_fournisseur_log`
--
ALTER TABLE `llx_commande_fournisseur_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_comment`
--
ALTER TABLE `llx_comment`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_const`
--
ALTER TABLE `llx_const`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_const` (`name`,`entity`);

--
-- Indexes for table `llx_contrat`
--
ALTER TABLE `llx_contrat`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_contrat_ref` (`ref`,`entity`),
  ADD KEY `idx_contrat_fk_soc` (`fk_soc`),
  ADD KEY `idx_contrat_fk_user_author` (`fk_user_author`);

--
-- Indexes for table `llx_contratdet`
--
ALTER TABLE `llx_contratdet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contratdet_fk_contrat` (`fk_contrat`),
  ADD KEY `idx_contratdet_fk_product` (`fk_product`),
  ADD KEY `idx_contratdet_date_ouverture_prevue` (`date_ouverture_prevue`),
  ADD KEY `idx_contratdet_date_ouverture` (`date_ouverture`),
  ADD KEY `idx_contratdet_date_fin_validite` (`date_fin_validite`),
  ADD KEY `fk_contratdet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_contratdet_extrafields`
--
ALTER TABLE `llx_contratdet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contratdet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_contratdet_log`
--
ALTER TABLE `llx_contratdet_log`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contratdet_log_fk_contratdet` (`fk_contratdet`),
  ADD KEY `idx_contratdet_log_date` (`date`);

--
-- Indexes for table `llx_contrat_extrafields`
--
ALTER TABLE `llx_contrat_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contrat_extrafields` (`fk_object`);

--
-- Indexes for table `llx_cronjob`
--
ALTER TABLE `llx_cronjob`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_cronjob_status` (`status`),
  ADD KEY `idx_cronjob_datelastrun` (`datelastrun`),
  ADD KEY `idx_cronjob_datenextrun` (`datenextrun`),
  ADD KEY `idx_cronjob_datestart` (`datestart`),
  ADD KEY `idx_cronjob_dateend` (`dateend`);

--
-- Indexes for table `llx_c_accounting_category`
--
ALTER TABLE `llx_c_accounting_category`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_accounting_category` (`code`,`entity`);

--
-- Indexes for table `llx_c_actioncomm`
--
ALTER TABLE `llx_c_actioncomm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_actioncomm` (`code`);

--
-- Indexes for table `llx_c_action_trigger`
--
ALTER TABLE `llx_c_action_trigger`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_action_trigger_code` (`code`),
  ADD KEY `idx_action_trigger_rang` (`rang`);

--
-- Indexes for table `llx_c_availability`
--
ALTER TABLE `llx_c_availability`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_availability` (`code`);

--
-- Indexes for table `llx_c_barcode_type`
--
ALTER TABLE `llx_c_barcode_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_barcode_type` (`code`,`entity`);

--
-- Indexes for table `llx_c_chargesociales`
--
ALTER TABLE `llx_c_chargesociales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llx_c_civility`
--
ALTER TABLE `llx_c_civility`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_civility` (`code`);

--
-- Indexes for table `llx_c_country`
--
ALTER TABLE `llx_c_country`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_c_country_code` (`code`),
  ADD UNIQUE KEY `idx_c_country_label` (`label`),
  ADD UNIQUE KEY `idx_c_country_code_iso` (`code_iso`);

--
-- Indexes for table `llx_c_currencies`
--
ALTER TABLE `llx_c_currencies`
  ADD PRIMARY KEY (`code_iso`),
  ADD UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`);

--
-- Indexes for table `llx_c_departements`
--
ALTER TABLE `llx_c_departements`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_departements` (`code_departement`,`fk_region`),
  ADD KEY `idx_departements_fk_region` (`fk_region`);

--
-- Indexes for table `llx_c_ecotaxe`
--
ALTER TABLE `llx_c_ecotaxe`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_ecotaxe` (`code`);

--
-- Indexes for table `llx_c_effectif`
--
ALTER TABLE `llx_c_effectif`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_effectif` (`code`);

--
-- Indexes for table `llx_c_email_senderprofile`
--
ALTER TABLE `llx_c_email_senderprofile`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_email_senderprofile` (`entity`,`label`,`email`);

--
-- Indexes for table `llx_c_email_templates`
--
ALTER TABLE `llx_c_email_templates`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_email_templates` (`entity`,`label`,`lang`),
  ADD KEY `idx_type` (`type_template`);

--
-- Indexes for table `llx_c_exp_tax_cat`
--
ALTER TABLE `llx_c_exp_tax_cat`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_exp_tax_range`
--
ALTER TABLE `llx_c_exp_tax_range`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_field_list`
--
ALTER TABLE `llx_c_field_list`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_format_cards`
--
ALTER TABLE `llx_c_format_cards`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_forme_juridique`
--
ALTER TABLE `llx_c_forme_juridique`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_forme_juridique` (`code`);

--
-- Indexes for table `llx_c_holiday_types`
--
ALTER TABLE `llx_c_holiday_types`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_holiday_types` (`code`);

--
-- Indexes for table `llx_c_hrm_department`
--
ALTER TABLE `llx_c_hrm_department`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_hrm_function`
--
ALTER TABLE `llx_c_hrm_function`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_incoterms`
--
ALTER TABLE `llx_c_incoterms`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_incoterms` (`code`);

--
-- Indexes for table `llx_c_input_method`
--
ALTER TABLE `llx_c_input_method`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_input_method` (`code`);

--
-- Indexes for table `llx_c_input_reason`
--
ALTER TABLE `llx_c_input_reason`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_input_reason` (`code`);

--
-- Indexes for table `llx_c_lead_status`
--
ALTER TABLE `llx_c_lead_status`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_lead_status_code` (`code`);

--
-- Indexes for table `llx_c_paiement`
--
ALTER TABLE `llx_c_paiement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_paiement_code` (`entity`,`code`);

--
-- Indexes for table `llx_c_paper_format`
--
ALTER TABLE `llx_c_paper_format`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_payment_term`
--
ALTER TABLE `llx_c_payment_term`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_payment_term_code` (`entity`,`code`);

--
-- Indexes for table `llx_c_price_expression`
--
ALTER TABLE `llx_c_price_expression`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_price_global_variable`
--
ALTER TABLE `llx_c_price_global_variable`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_price_global_variable_updater`
--
ALTER TABLE `llx_c_price_global_variable_updater`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_propalst`
--
ALTER TABLE `llx_c_propalst`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_propalst` (`code`);

--
-- Indexes for table `llx_c_prospectlevel`
--
ALTER TABLE `llx_c_prospectlevel`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_code_region` (`code_region`),
  ADD KEY `idx_c_regions_fk_pays` (`fk_pays`);

--
-- Indexes for table `llx_c_revenuestamp`
--
ALTER TABLE `llx_c_revenuestamp`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_c_shipment_mode`
--
ALTER TABLE `llx_c_shipment_mode`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_shipment_mode` (`code`);

--
-- Indexes for table `llx_c_stcomm`
--
ALTER TABLE `llx_c_stcomm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_stcomm` (`code`);

--
-- Indexes for table `llx_c_ticket_category`
--
ALTER TABLE `llx_c_ticket_category`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_code` (`code`,`entity`);

--
-- Indexes for table `llx_c_ticket_severity`
--
ALTER TABLE `llx_c_ticket_severity`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_code` (`code`,`entity`);

--
-- Indexes for table `llx_c_ticket_type`
--
ALTER TABLE `llx_c_ticket_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_code` (`code`,`entity`);

--
-- Indexes for table `llx_c_tva`
--
ALTER TABLE `llx_c_tva`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_tva_id` (`fk_pays`,`code`,`taux`,`recuperableonly`);

--
-- Indexes for table `llx_c_typent`
--
ALTER TABLE `llx_c_typent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_typent` (`code`);

--
-- Indexes for table `llx_c_type_contact`
--
ALTER TABLE `llx_c_type_contact`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`);

--
-- Indexes for table `llx_c_type_container`
--
ALTER TABLE `llx_c_type_container`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_type_container_id` (`code`,`entity`);

--
-- Indexes for table `llx_c_type_fees`
--
ALTER TABLE `llx_c_type_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_type_fees` (`code`);

--
-- Indexes for table `llx_c_type_resource`
--
ALTER TABLE `llx_c_type_resource`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_type_resource_id` (`label`,`code`);

--
-- Indexes for table `llx_c_units`
--
ALTER TABLE `llx_c_units`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_units_code` (`code`);

--
-- Indexes for table `llx_c_ziptown`
--
ALTER TABLE `llx_c_ziptown`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_ziptown_fk_pays` (`zip`,`town`,`fk_pays`),
  ADD KEY `idx_c_ziptown_fk_county` (`fk_county`),
  ADD KEY `idx_c_ziptown_fk_pays` (`fk_pays`),
  ADD KEY `idx_c_ziptown_zip` (`zip`);

--
-- Indexes for table `llx_default_values`
--
ALTER TABLE `llx_default_values`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_default_values` (`type`,`entity`,`user_id`,`page`,`param`);

--
-- Indexes for table `llx_deplacement`
--
ALTER TABLE `llx_deplacement`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_document_model`
--
ALTER TABLE `llx_document_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_document_model` (`nom`,`type`,`entity`);

--
-- Indexes for table `llx_don`
--
ALTER TABLE `llx_don`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_don_extrafields`
--
ALTER TABLE `llx_don_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_don_extrafields` (`fk_object`);

--
-- Indexes for table `llx_ecm_directories`
--
ALTER TABLE `llx_ecm_directories`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_ecm_directories` (`label`,`fk_parent`,`entity`),
  ADD KEY `idx_ecm_directories_fk_user_c` (`fk_user_c`),
  ADD KEY `idx_ecm_directories_fk_user_m` (`fk_user_m`);

--
-- Indexes for table `llx_ecm_files`
--
ALTER TABLE `llx_ecm_files`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_ecm_files` (`filepath`,`filename`,`entity`),
  ADD KEY `idx_ecm_files_label` (`label`);

--
-- Indexes for table `llx_element_contact`
--
ALTER TABLE `llx_element_contact`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_contact_idx1` (`element_id`,`fk_c_type_contact`,`fk_socpeople`),
  ADD KEY `fk_element_contact_fk_c_type_contact` (`fk_c_type_contact`),
  ADD KEY `idx_element_contact_fk_socpeople` (`fk_socpeople`);

--
-- Indexes for table `llx_element_element`
--
ALTER TABLE `llx_element_element`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_element_idx1` (`fk_source`,`sourcetype`,`fk_target`,`targettype`),
  ADD KEY `idx_element_element_fk_target` (`fk_target`);

--
-- Indexes for table `llx_element_resources`
--
ALTER TABLE `llx_element_resources`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_resources_idx1` (`resource_id`,`resource_type`,`element_id`,`element_type`),
  ADD KEY `idx_element_element_element_id` (`element_id`);

--
-- Indexes for table `llx_emailcollector_emailcollector`
--
ALTER TABLE `llx_emailcollector_emailcollector`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_emailcollector_entity` (`entity`),
  ADD KEY `idx_emailcollector_status` (`status`);

--
-- Indexes for table `llx_emailcollector_emailcollectoraction`
--
ALTER TABLE `llx_emailcollector_emailcollectoraction`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_emailcollector_emailcollectoraction` (`fk_emailcollector`,`type`),
  ADD KEY `idx_emailcollector_fk_emailcollector` (`fk_emailcollector`);

--
-- Indexes for table `llx_emailcollector_emailcollectorfilter`
--
ALTER TABLE `llx_emailcollector_emailcollectorfilter`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_emailcollector_emailcollectorfilter` (`fk_emailcollector`,`type`,`rulevalue`),
  ADD KEY `idx_emailcollector_fk_emailcollector` (`fk_emailcollector`);

--
-- Indexes for table `llx_entrepot`
--
ALTER TABLE `llx_entrepot`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_entrepot_label` (`ref`,`entity`);

--
-- Indexes for table `llx_establishment`
--
ALTER TABLE `llx_establishment`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_events`
--
ALTER TABLE `llx_events`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_events_dateevent` (`dateevent`);

--
-- Indexes for table `llx_event_element`
--
ALTER TABLE `llx_event_element`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_expedition`
--
ALTER TABLE `llx_expedition`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_expedition_uk_ref` (`ref`,`entity`),
  ADD KEY `idx_expedition_fk_soc` (`fk_soc`),
  ADD KEY `idx_expedition_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_expedition_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_expedition_fk_shipping_method` (`fk_shipping_method`);

--
-- Indexes for table `llx_expeditiondet`
--
ALTER TABLE `llx_expeditiondet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_expeditiondet_fk_expedition` (`fk_expedition`);

--
-- Indexes for table `llx_expeditiondet_batch`
--
ALTER TABLE `llx_expeditiondet_batch`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_fk_expeditiondet` (`fk_expeditiondet`);

--
-- Indexes for table `llx_expeditiondet_extrafields`
--
ALTER TABLE `llx_expeditiondet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_expeditiondet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_expedition_extrafields`
--
ALTER TABLE `llx_expedition_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_expedition_extrafields` (`fk_object`);

--
-- Indexes for table `llx_expensereport`
--
ALTER TABLE `llx_expensereport`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_expensereport_uk_ref` (`ref`,`entity`),
  ADD KEY `idx_expensereport_date_debut` (`date_debut`),
  ADD KEY `idx_expensereport_date_fin` (`date_fin`),
  ADD KEY `idx_expensereport_fk_statut` (`fk_statut`),
  ADD KEY `idx_expensereport_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_expensereport_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_expensereport_fk_user_approve` (`fk_user_approve`),
  ADD KEY `idx_expensereport_fk_refuse` (`fk_user_approve`);

--
-- Indexes for table `llx_expensereport_det`
--
ALTER TABLE `llx_expensereport_det`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_expensereport_extrafields`
--
ALTER TABLE `llx_expensereport_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_expensereport_extrafields` (`fk_object`);

--
-- Indexes for table `llx_expensereport_ik`
--
ALTER TABLE `llx_expensereport_ik`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_expensereport_rules`
--
ALTER TABLE `llx_expensereport_rules`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_export_compta`
--
ALTER TABLE `llx_export_compta`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_export_model`
--
ALTER TABLE `llx_export_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_export_model` (`label`,`type`);

--
-- Indexes for table `llx_extrafields`
--
ALTER TABLE `llx_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_extrafields_name` (`name`,`entity`,`elementtype`);

--
-- Indexes for table `llx_facture`
--
ALTER TABLE `llx_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_facture_uk_facnumber` (`facnumber`,`entity`),
  ADD KEY `idx_facture_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_facture_fk_facture_source` (`fk_facture_source`),
  ADD KEY `idx_facture_fk_projet` (`fk_projet`),
  ADD KEY `idx_facture_fk_account` (`fk_account`),
  ADD KEY `idx_facture_fk_currency` (`fk_currency`),
  ADD KEY `idx_facture_fk_statut` (`fk_statut`);

--
-- Indexes for table `llx_facturedet`
--
ALTER TABLE `llx_facturedet`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_fk_remise_except` (`fk_remise_except`,`fk_facture`),
  ADD KEY `idx_facturedet_fk_facture` (`fk_facture`),
  ADD KEY `idx_facturedet_fk_product` (`fk_product`),
  ADD KEY `idx_facturedet_fk_code_ventilation` (`fk_code_ventilation`),
  ADD KEY `fk_facturedet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_facturedet_extrafields`
--
ALTER TABLE `llx_facturedet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facturedet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_facturedet_rec`
--
ALTER TABLE `llx_facturedet_rec`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `fk_facturedet_rec_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_facturedet_rec_extrafields`
--
ALTER TABLE `llx_facturedet_rec_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facturedet_rec_extrafields` (`fk_object`);

--
-- Indexes for table `llx_facture_extrafields`
--
ALTER TABLE `llx_facture_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_extrafields` (`fk_object`);

--
-- Indexes for table `llx_facture_fourn`
--
ALTER TABLE `llx_facture_fourn`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_facture_fourn_ref` (`ref`,`entity`),
  ADD UNIQUE KEY `uk_facture_fourn_ref_supplier` (`ref_supplier`,`fk_soc`,`entity`),
  ADD KEY `idx_facture_fourn_date_lim_reglement` (`date_lim_reglement`),
  ADD KEY `idx_facture_fourn_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_fourn_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_fourn_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_facture_fourn_fk_projet` (`fk_projet`);

--
-- Indexes for table `llx_facture_fourn_det`
--
ALTER TABLE `llx_facture_fourn_det`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_fourn_det_fk_facture` (`fk_facture_fourn`),
  ADD KEY `idx_facture_fourn_det_fk_product` (`fk_product`),
  ADD KEY `idx_facture_fourn_det_fk_code_ventilation` (`fk_code_ventilation`),
  ADD KEY `fk_facture_fourn_det_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_facture_fourn_det_extrafields`
--
ALTER TABLE `llx_facture_fourn_det_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_fourn_det_extrafields` (`fk_object`);

--
-- Indexes for table `llx_facture_fourn_extrafields`
--
ALTER TABLE `llx_facture_fourn_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_fourn_extrafields` (`fk_object`);

--
-- Indexes for table `llx_facture_rec`
--
ALTER TABLE `llx_facture_rec`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_facture_rec_uk_titre` (`titre`,`entity`),
  ADD KEY `idx_facture_rec_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_rec_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_rec_fk_projet` (`fk_projet`);

--
-- Indexes for table `llx_facture_rec_extrafields`
--
ALTER TABLE `llx_facture_rec_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_rec_extrafields` (`fk_object`);

--
-- Indexes for table `llx_fichinter`
--
ALTER TABLE `llx_fichinter`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_fichinter_ref` (`ref`,`entity`),
  ADD KEY `idx_fichinter_fk_soc` (`fk_soc`);

--
-- Indexes for table `llx_fichinterdet`
--
ALTER TABLE `llx_fichinterdet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_fichinterdet_fk_fichinter` (`fk_fichinter`);

--
-- Indexes for table `llx_fichinterdet_extrafields`
--
ALTER TABLE `llx_fichinterdet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_ficheinterdet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_fichinterdet_rec`
--
ALTER TABLE `llx_fichinterdet_rec`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_fichinter_extrafields`
--
ALTER TABLE `llx_fichinter_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_ficheinter_extrafields` (`fk_object`);

--
-- Indexes for table `llx_fichinter_rec`
--
ALTER TABLE `llx_fichinter_rec`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_fichinter_rec_uk_titre` (`titre`,`entity`),
  ADD KEY `idx_fichinter_rec_fk_soc` (`fk_soc`),
  ADD KEY `idx_fichinter_rec_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_fichinter_rec_fk_projet` (`fk_projet`);

--
-- Indexes for table `llx_holiday`
--
ALTER TABLE `llx_holiday`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_holiday_entity` (`entity`),
  ADD KEY `idx_holiday_fk_user` (`fk_user`),
  ADD KEY `idx_holiday_fk_user_create` (`fk_user_create`),
  ADD KEY `idx_holiday_date_create` (`date_create`),
  ADD KEY `idx_holiday_date_debut` (`date_debut`),
  ADD KEY `idx_holiday_date_fin` (`date_fin`),
  ADD KEY `idx_holiday_fk_validator` (`fk_validator`);

--
-- Indexes for table `llx_holiday_config`
--
ALTER TABLE `llx_holiday_config`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_holiday_config` (`name`);

--
-- Indexes for table `llx_holiday_logs`
--
ALTER TABLE `llx_holiday_logs`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_holiday_users`
--
ALTER TABLE `llx_holiday_users`
  ADD UNIQUE KEY `uk_holiday_users` (`fk_user`,`fk_type`,`nb_holiday`);

--
-- Indexes for table `llx_import_model`
--
ALTER TABLE `llx_import_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_import_model` (`label`,`type`);

--
-- Indexes for table `llx_inventory`
--
ALTER TABLE `llx_inventory`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_inventory_ref` (`ref`,`entity`),
  ADD KEY `idx_inventory_tms` (`tms`),
  ADD KEY `idx_inventory_date_creation` (`date_creation`);

--
-- Indexes for table `llx_inventorydet`
--
ALTER TABLE `llx_inventorydet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_inventorydet_tms` (`tms`),
  ADD KEY `idx_inventorydet_datec` (`datec`),
  ADD KEY `idx_inventorydet_fk_inventory` (`fk_inventory`);

--
-- Indexes for table `llx_links`
--
ALTER TABLE `llx_links`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_links` (`objectid`,`label`);

--
-- Indexes for table `llx_livraison`
--
ALTER TABLE `llx_livraison`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_livraison_uk_ref` (`ref`,`entity`),
  ADD KEY `idx_livraison_fk_soc` (`fk_soc`),
  ADD KEY `idx_livraison_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_livraison_fk_user_valid` (`fk_user_valid`);

--
-- Indexes for table `llx_livraisondet`
--
ALTER TABLE `llx_livraisondet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_livraisondet_fk_expedition` (`fk_livraison`);

--
-- Indexes for table `llx_livraisondet_extrafields`
--
ALTER TABLE `llx_livraisondet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_livraisondet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_livraison_extrafields`
--
ALTER TABLE `llx_livraison_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_livraison_extrafields` (`fk_object`);

--
-- Indexes for table `llx_loan`
--
ALTER TABLE `llx_loan`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_loan_schedule`
--
ALTER TABLE `llx_loan_schedule`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_localtax`
--
ALTER TABLE `llx_localtax`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_mailing`
--
ALTER TABLE `llx_mailing`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_mailing_cibles`
--
ALTER TABLE `llx_mailing_cibles`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_mailing_cibles` (`fk_mailing`,`email`),
  ADD KEY `idx_mailing_cibles_email` (`email`);

--
-- Indexes for table `llx_menu`
--
ALTER TABLE `llx_menu`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_menu_uk_menu` (`menu_handler`,`fk_menu`,`position`,`url`,`entity`),
  ADD KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`);

--
-- Indexes for table `llx_multicurrency`
--
ALTER TABLE `llx_multicurrency`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_multicurrency_rate`
--
ALTER TABLE `llx_multicurrency_rate`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_notify`
--
ALTER TABLE `llx_notify`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_notify_def`
--
ALTER TABLE `llx_notify_def`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_notify_def_object`
--
ALTER TABLE `llx_notify_def_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llx_oauth_state`
--
ALTER TABLE `llx_oauth_state`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_oauth_token`
--
ALTER TABLE `llx_oauth_token`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_onlinesignature`
--
ALTER TABLE `llx_onlinesignature`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_opensurvey_comments`
--
ALTER TABLE `llx_opensurvey_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `idx_id_comment` (`id_comment`),
  ADD KEY `idx_id_sondage` (`id_sondage`);

--
-- Indexes for table `llx_opensurvey_formquestions`
--
ALTER TABLE `llx_opensurvey_formquestions`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_opensurvey_sondage`
--
ALTER TABLE `llx_opensurvey_sondage`
  ADD PRIMARY KEY (`id_sondage`),
  ADD KEY `idx_date_fin` (`date_fin`);

--
-- Indexes for table `llx_opensurvey_user_studs`
--
ALTER TABLE `llx_opensurvey_user_studs`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `idx_opensurvey_user_studs_id_users` (`id_users`),
  ADD KEY `idx_opensurvey_user_studs_nom` (`nom`),
  ADD KEY `idx_opensurvey_user_studs_id_sondage` (`id_sondage`);

--
-- Indexes for table `llx_overwrite_trans`
--
ALTER TABLE `llx_overwrite_trans`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_overwrite_trans` (`lang`,`transkey`);

--
-- Indexes for table `llx_paiement`
--
ALTER TABLE `llx_paiement`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_paiementcharge`
--
ALTER TABLE `llx_paiementcharge`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_paiementfourn`
--
ALTER TABLE `llx_paiementfourn`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_paiementfourn_facturefourn`
--
ALTER TABLE `llx_paiementfourn_facturefourn`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_paiementfourn_facturefourn` (`fk_paiementfourn`,`fk_facturefourn`),
  ADD KEY `idx_paiementfourn_facturefourn_fk_facture` (`fk_facturefourn`),
  ADD KEY `idx_paiementfourn_facturefourn_fk_paiement` (`fk_paiementfourn`);

--
-- Indexes for table `llx_paiement_facture`
--
ALTER TABLE `llx_paiement_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_paiement_facture` (`fk_paiement`,`fk_facture`),
  ADD KEY `idx_paiement_facture_fk_facture` (`fk_facture`),
  ADD KEY `idx_paiement_facture_fk_paiement` (`fk_paiement`);

--
-- Indexes for table `llx_payment_donation`
--
ALTER TABLE `llx_payment_donation`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_payment_expensereport`
--
ALTER TABLE `llx_payment_expensereport`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_payment_loan`
--
ALTER TABLE `llx_payment_loan`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_payment_salary`
--
ALTER TABLE `llx_payment_salary`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_payment_salary_ref` (`num_payment`),
  ADD KEY `idx_payment_salary_user` (`fk_user`,`entity`),
  ADD KEY `idx_payment_salary_datep` (`datep`),
  ADD KEY `idx_payment_salary_datesp` (`datesp`),
  ADD KEY `idx_payment_salary_dateep` (`dateep`);

--
-- Indexes for table `llx_payment_various`
--
ALTER TABLE `llx_payment_various`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_pos_cash_fence`
--
ALTER TABLE `llx_pos_cash_fence`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_prelevement_bons`
--
ALTER TABLE `llx_prelevement_bons`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_prelevement_bons_ref` (`ref`,`entity`);

--
-- Indexes for table `llx_prelevement_facture`
--
ALTER TABLE `llx_prelevement_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_prelevement_facture_fk_prelevement_lignes` (`fk_prelevement_lignes`);

--
-- Indexes for table `llx_prelevement_facture_demande`
--
ALTER TABLE `llx_prelevement_facture_demande`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_prelevement_lignes`
--
ALTER TABLE `llx_prelevement_lignes`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_prelevement_lignes_fk_prelevement_bons` (`fk_prelevement_bons`);

--
-- Indexes for table `llx_prelevement_rejet`
--
ALTER TABLE `llx_prelevement_rejet`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_printing`
--
ALTER TABLE `llx_printing`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_product`
--
ALTER TABLE `llx_product`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_ref` (`ref`,`entity`),
  ADD UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  ADD KEY `idx_product_label` (`label`),
  ADD KEY `idx_product_barcode` (`barcode`),
  ADD KEY `idx_product_import_key` (`import_key`),
  ADD KEY `idx_product_seuil_stock_alerte` (`seuil_stock_alerte`),
  ADD KEY `idx_product_fk_country` (`fk_country`),
  ADD KEY `idx_product_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_product_fk_barcode_type` (`fk_barcode_type`),
  ADD KEY `fk_product_fk_unit` (`fk_unit`),
  ADD KEY `fk_product_default_warehouse` (`fk_default_warehouse`);

--
-- Indexes for table `llx_product_association`
--
ALTER TABLE `llx_product_association`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_association` (`fk_product_pere`,`fk_product_fils`),
  ADD KEY `idx_product_association_fils` (`fk_product_fils`);

--
-- Indexes for table `llx_product_attribute`
--
ALTER TABLE `llx_product_attribute`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_attribute_ref` (`ref`);

--
-- Indexes for table `llx_product_attribute_combination`
--
ALTER TABLE `llx_product_attribute_combination`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_product_attribute_combination2val`
--
ALTER TABLE `llx_product_attribute_combination2val`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_product_attribute_value`
--
ALTER TABLE `llx_product_attribute_value`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_attribute_value` (`fk_product_attribute`,`ref`);

--
-- Indexes for table `llx_product_batch`
--
ALTER TABLE `llx_product_batch`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_batch` (`fk_product_stock`,`batch`),
  ADD KEY `idx_fk_product_stock` (`fk_product_stock`),
  ADD KEY `idx_batch` (`batch`);

--
-- Indexes for table `llx_product_customer_price`
--
ALTER TABLE `llx_product_customer_price`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_customer_price_fk_product_fk_soc` (`fk_product`,`fk_soc`),
  ADD KEY `idx_product_customer_price_fk_user` (`fk_user`),
  ADD KEY `idx_product_customer_price_fk_soc` (`fk_soc`);

--
-- Indexes for table `llx_product_customer_price_log`
--
ALTER TABLE `llx_product_customer_price_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_product_extrafields`
--
ALTER TABLE `llx_product_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_product_extrafields` (`fk_object`);

--
-- Indexes for table `llx_product_fournisseur_price`
--
ALTER TABLE `llx_product_fournisseur_price`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_fournisseur_price_ref` (`ref_fourn`,`fk_soc`,`quantity`,`entity`),
  ADD KEY `idx_product_fournisseur_price_fk_user` (`fk_user`),
  ADD KEY `idx_product_fourn_price_fk_product` (`fk_product`,`entity`),
  ADD KEY `idx_product_fourn_price_fk_soc` (`fk_soc`,`entity`);

--
-- Indexes for table `llx_product_fournisseur_price_log`
--
ALTER TABLE `llx_product_fournisseur_price_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_product_lang`
--
ALTER TABLE `llx_product_lang`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_lang` (`fk_product`,`lang`);

--
-- Indexes for table `llx_product_lot`
--
ALTER TABLE `llx_product_lot`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_lot` (`fk_product`,`batch`);

--
-- Indexes for table `llx_product_lot_extrafields`
--
ALTER TABLE `llx_product_lot_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_product_lot_extrafields` (`fk_object`);

--
-- Indexes for table `llx_product_price`
--
ALTER TABLE `llx_product_price`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_product_price_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_product_price_fk_product` (`fk_product`);

--
-- Indexes for table `llx_product_pricerules`
--
ALTER TABLE `llx_product_pricerules`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `unique_level` (`level`);

--
-- Indexes for table `llx_product_price_by_qty`
--
ALTER TABLE `llx_product_price_by_qty`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_price_by_qty_level` (`fk_product_price`,`quantity`),
  ADD KEY `idx_product_price_by_qty_fk_product_price` (`fk_product_price`);

--
-- Indexes for table `llx_product_stock`
--
ALTER TABLE `llx_product_stock`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_stock` (`fk_product`,`fk_entrepot`),
  ADD KEY `idx_product_stock_fk_product` (`fk_product`),
  ADD KEY `idx_product_stock_fk_entrepot` (`fk_entrepot`);

--
-- Indexes for table `llx_product_warehouse_properties`
--
ALTER TABLE `llx_product_warehouse_properties`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_projet`
--
ALTER TABLE `llx_projet`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_projet_ref` (`ref`,`entity`),
  ADD KEY `idx_projet_fk_soc` (`fk_soc`);

--
-- Indexes for table `llx_projet_extrafields`
--
ALTER TABLE `llx_projet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_projet_task`
--
ALTER TABLE `llx_projet_task`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_projet_task_ref` (`ref`,`entity`),
  ADD KEY `idx_projet_task_fk_projet` (`fk_projet`),
  ADD KEY `idx_projet_task_fk_user_creat` (`fk_user_creat`),
  ADD KEY `idx_projet_task_fk_user_valid` (`fk_user_valid`);

--
-- Indexes for table `llx_projet_task_extrafields`
--
ALTER TABLE `llx_projet_task_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_task_extrafields` (`fk_object`);

--
-- Indexes for table `llx_projet_task_time`
--
ALTER TABLE `llx_projet_task_time`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_task_time_task` (`fk_task`),
  ADD KEY `idx_projet_task_time_date` (`task_date`),
  ADD KEY `idx_projet_task_time_datehour` (`task_datehour`);

--
-- Indexes for table `llx_propal`
--
ALTER TABLE `llx_propal`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_propal_ref` (`ref`,`entity`),
  ADD KEY `idx_propal_fk_soc` (`fk_soc`),
  ADD KEY `idx_propal_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_propal_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_propal_fk_user_cloture` (`fk_user_cloture`),
  ADD KEY `idx_propal_fk_projet` (`fk_projet`),
  ADD KEY `idx_propal_fk_account` (`fk_account`),
  ADD KEY `idx_propal_fk_currency` (`fk_currency`);

--
-- Indexes for table `llx_propaldet`
--
ALTER TABLE `llx_propaldet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propaldet_fk_propal` (`fk_propal`),
  ADD KEY `idx_propaldet_fk_product` (`fk_product`),
  ADD KEY `fk_propaldet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_propaldet_extrafields`
--
ALTER TABLE `llx_propaldet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propaldet_extrafields` (`fk_object`);

--
-- Indexes for table `llx_propal_extrafields`
--
ALTER TABLE `llx_propal_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propal_extrafields` (`fk_object`);

--
-- Indexes for table `llx_propal_merge_pdf_product`
--
ALTER TABLE `llx_propal_merge_pdf_product`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_resource`
--
ALTER TABLE `llx_resource`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_resource_ref` (`ref`,`entity`),
  ADD KEY `fk_code_type_resource_idx` (`fk_code_type_resource`),
  ADD KEY `idx_resource_fk_country` (`fk_country`);

--
-- Indexes for table `llx_resource_extrafields`
--
ALTER TABLE `llx_resource_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_resource_extrafields` (`fk_object`);

--
-- Indexes for table `llx_rights_def`
--
ALTER TABLE `llx_rights_def`
  ADD PRIMARY KEY (`id`,`entity`);

--
-- Indexes for table `llx_societe`
--
ALTER TABLE `llx_societe`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_prefix_comm` (`prefix_comm`,`entity`),
  ADD UNIQUE KEY `uk_societe_code_client` (`code_client`,`entity`),
  ADD UNIQUE KEY `uk_societe_code_fournisseur` (`code_fournisseur`,`entity`),
  ADD UNIQUE KEY `uk_societe_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  ADD KEY `idx_societe_user_creat` (`fk_user_creat`),
  ADD KEY `idx_societe_user_modif` (`fk_user_modif`);

--
-- Indexes for table `llx_societe_account`
--
ALTER TABLE `llx_societe_account`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_account_login_website_soc` (`entity`,`fk_soc`,`login`,`site`,`fk_website`),
  ADD UNIQUE KEY `uk_societe_account_key_account_soc` (`entity`,`fk_soc`,`key_account`,`site`,`fk_website`),
  ADD KEY `idx_societe_account_rowid` (`rowid`),
  ADD KEY `idx_societe_account_login` (`login`),
  ADD KEY `idx_societe_account_status` (`status`),
  ADD KEY `idx_societe_account_fk_website` (`fk_website`),
  ADD KEY `idx_societe_account_fk_soc` (`fk_soc`);

--
-- Indexes for table `llx_societe_address`
--
ALTER TABLE `llx_societe_address`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_societe_commerciaux`
--
ALTER TABLE `llx_societe_commerciaux`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_commerciaux` (`fk_soc`,`fk_user`);

--
-- Indexes for table `llx_societe_extrafields`
--
ALTER TABLE `llx_societe_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_extrafields` (`fk_object`);

--
-- Indexes for table `llx_societe_log`
--
ALTER TABLE `llx_societe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llx_societe_prices`
--
ALTER TABLE `llx_societe_prices`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_societe_remise`
--
ALTER TABLE `llx_societe_remise`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_societe_remise_except`
--
ALTER TABLE `llx_societe_remise_except`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_societe_remise_except_fk_user` (`fk_user`),
  ADD KEY `idx_societe_remise_except_fk_soc` (`fk_soc`),
  ADD KEY `idx_societe_remise_except_fk_facture_line` (`fk_facture_line`),
  ADD KEY `idx_societe_remise_except_fk_facture` (`fk_facture`),
  ADD KEY `idx_societe_remise_except_fk_facture_source` (`fk_facture_source`),
  ADD KEY `idx_societe_remise_except_discount_type` (`discount_type`),
  ADD KEY `fk_soc_remise_fk_invoice_supplier_line` (`fk_invoice_supplier_line`),
  ADD KEY `fk_societe_remise_fk_invoice_supplier_source` (`fk_invoice_supplier`);

--
-- Indexes for table `llx_societe_remise_supplier`
--
ALTER TABLE `llx_societe_remise_supplier`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_societe_rib`
--
ALTER TABLE `llx_societe_rib`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_rib` (`label`,`fk_soc`);

--
-- Indexes for table `llx_socpeople`
--
ALTER TABLE `llx_socpeople`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_socpeople_fk_soc` (`fk_soc`),
  ADD KEY `idx_socpeople_fk_user_creat` (`fk_user_creat`);

--
-- Indexes for table `llx_socpeople_extrafields`
--
ALTER TABLE `llx_socpeople_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_socpeople_extrafields` (`fk_object`);

--
-- Indexes for table `llx_stock_mouvement`
--
ALTER TABLE `llx_stock_mouvement`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_stock_mouvement_fk_product` (`fk_product`),
  ADD KEY `idx_stock_mouvement_fk_entrepot` (`fk_entrepot`);

--
-- Indexes for table `llx_subscription`
--
ALTER TABLE `llx_subscription`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_subscription` (`fk_adherent`,`dateadh`);

--
-- Indexes for table `llx_supplier_proposal`
--
ALTER TABLE `llx_supplier_proposal`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_supplier_proposaldet`
--
ALTER TABLE `llx_supplier_proposaldet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_supplier_proposaldet_fk_supplier_proposal` (`fk_supplier_proposal`),
  ADD KEY `idx_supplier_proposaldet_fk_product` (`fk_product`),
  ADD KEY `fk_supplier_proposaldet_fk_unit` (`fk_unit`);

--
-- Indexes for table `llx_supplier_proposaldet_extrafields`
--
ALTER TABLE `llx_supplier_proposaldet_extrafields`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_supplier_proposal_extrafields`
--
ALTER TABLE `llx_supplier_proposal_extrafields`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_takepos_floor_tables`
--
ALTER TABLE `llx_takepos_floor_tables`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_ticket`
--
ALTER TABLE `llx_ticket`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_ticket_track_id` (`track_id`);

--
-- Indexes for table `llx_ticket_extrafields`
--
ALTER TABLE `llx_ticket_extrafields`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_ticket_msg`
--
ALTER TABLE `llx_ticket_msg`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_tva`
--
ALTER TABLE `llx_tva`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_user`
--
ALTER TABLE `llx_user`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_user_login` (`login`,`entity`),
  ADD UNIQUE KEY `uk_user_fk_socpeople` (`fk_socpeople`),
  ADD UNIQUE KEY `uk_user_fk_member` (`fk_member`),
  ADD UNIQUE KEY `uk_user_api_key` (`api_key`),
  ADD KEY `idx_user_fk_societe` (`fk_soc`);

--
-- Indexes for table `llx_usergroup`
--
ALTER TABLE `llx_usergroup`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_usergroup_name` (`nom`,`entity`);

--
-- Indexes for table `llx_usergroup_extrafields`
--
ALTER TABLE `llx_usergroup_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_usergroup_extrafields` (`fk_object`);

--
-- Indexes for table `llx_usergroup_rights`
--
ALTER TABLE `llx_usergroup_rights`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_usergroup_rights` (`entity`,`fk_usergroup`,`fk_id`),
  ADD KEY `fk_usergroup_rights_fk_usergroup` (`fk_usergroup`);

--
-- Indexes for table `llx_usergroup_user`
--
ALTER TABLE `llx_usergroup_user`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_usergroup_user` (`entity`,`fk_user`,`fk_usergroup`),
  ADD KEY `fk_usergroup_user_fk_user` (`fk_user`),
  ADD KEY `fk_usergroup_user_fk_usergroup` (`fk_usergroup`);

--
-- Indexes for table `llx_user_alert`
--
ALTER TABLE `llx_user_alert`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_user_clicktodial`
--
ALTER TABLE `llx_user_clicktodial`
  ADD PRIMARY KEY (`fk_user`);

--
-- Indexes for table `llx_user_employment`
--
ALTER TABLE `llx_user_employment`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_user_employment` (`ref`,`entity`),
  ADD KEY `fk_user_employment_fk_user` (`fk_user`);

--
-- Indexes for table `llx_user_extrafields`
--
ALTER TABLE `llx_user_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_user_extrafields` (`fk_object`);

--
-- Indexes for table `llx_user_param`
--
ALTER TABLE `llx_user_param`
  ADD UNIQUE KEY `uk_user_param` (`fk_user`,`param`,`entity`);

--
-- Indexes for table `llx_user_rib`
--
ALTER TABLE `llx_user_rib`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_user_rights`
--
ALTER TABLE `llx_user_rights`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_user_rights` (`entity`,`fk_user`,`fk_id`),
  ADD KEY `fk_user_rights_fk_user_user` (`fk_user`);

--
-- Indexes for table `llx_website`
--
ALTER TABLE `llx_website`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_website_ref` (`ref`,`entity`);

--
-- Indexes for table `llx_website_extrafields`
--
ALTER TABLE `llx_website_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_website_extrafields` (`fk_object`);

--
-- Indexes for table `llx_website_page`
--
ALTER TABLE `llx_website_page`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_website_page_url` (`fk_website`,`pageurl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `llx_accounting_account`
--
ALTER TABLE `llx_accounting_account`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_accounting_bookkeeping`
--
ALTER TABLE `llx_accounting_bookkeeping`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_accounting_bookkeeping_tmp`
--
ALTER TABLE `llx_accounting_bookkeeping_tmp`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_accounting_fiscalyear`
--
ALTER TABLE `llx_accounting_fiscalyear`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_accounting_journal`
--
ALTER TABLE `llx_accounting_journal`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `llx_accounting_system`
--
ALTER TABLE `llx_accounting_system`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `llx_actioncomm`
--
ALTER TABLE `llx_actioncomm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_actioncomm_extrafields`
--
ALTER TABLE `llx_actioncomm_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_actioncomm_reminder`
--
ALTER TABLE `llx_actioncomm_reminder`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_actioncomm_resources`
--
ALTER TABLE `llx_actioncomm_resources`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_adherent`
--
ALTER TABLE `llx_adherent`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_adherent_extrafields`
--
ALTER TABLE `llx_adherent_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_adherent_type`
--
ALTER TABLE `llx_adherent_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_adherent_type_extrafields`
--
ALTER TABLE `llx_adherent_type_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_advtargetemailing`
--
ALTER TABLE `llx_advtargetemailing`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_asset`
--
ALTER TABLE `llx_asset`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_asset_extrafields`
--
ALTER TABLE `llx_asset_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_asset_type`
--
ALTER TABLE `llx_asset_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_asset_type_extrafields`
--
ALTER TABLE `llx_asset_type_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bank`
--
ALTER TABLE `llx_bank`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bank_account`
--
ALTER TABLE `llx_bank_account`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bank_account_extrafields`
--
ALTER TABLE `llx_bank_account_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bank_categ`
--
ALTER TABLE `llx_bank_categ`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bank_url`
--
ALTER TABLE `llx_bank_url`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_blockedlog`
--
ALTER TABLE `llx_blockedlog`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_blockedlog_authority`
--
ALTER TABLE `llx_blockedlog_authority`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bookmark`
--
ALTER TABLE `llx_bookmark`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_bordereau_cheque`
--
ALTER TABLE `llx_bordereau_cheque`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_boxes`
--
ALTER TABLE `llx_boxes`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `llx_boxes_def`
--
ALTER TABLE `llx_boxes_def`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `llx_budget`
--
ALTER TABLE `llx_budget`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_budget_lines`
--
ALTER TABLE `llx_budget_lines`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_categorie`
--
ALTER TABLE `llx_categorie`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_categories_extrafields`
--
ALTER TABLE `llx_categories_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_categorie_lang`
--
ALTER TABLE `llx_categorie_lang`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_chargesociales`
--
ALTER TABLE `llx_chargesociales`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_commande`
--
ALTER TABLE `llx_commande`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `llx_commandedet`
--
ALTER TABLE `llx_commandedet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `llx_commandedet_extrafields`
--
ALTER TABLE `llx_commandedet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_extrafields`
--
ALTER TABLE `llx_commande_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseur`
--
ALTER TABLE `llx_commande_fournisseur`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseurdet`
--
ALTER TABLE `llx_commande_fournisseurdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseurdet_extrafields`
--
ALTER TABLE `llx_commande_fournisseurdet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseur_dispatch`
--
ALTER TABLE `llx_commande_fournisseur_dispatch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseur_extrafields`
--
ALTER TABLE `llx_commande_fournisseur_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_commande_fournisseur_log`
--
ALTER TABLE `llx_commande_fournisseur_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_comment`
--
ALTER TABLE `llx_comment`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_const`
--
ALTER TABLE `llx_const`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- AUTO_INCREMENT for table `llx_contrat`
--
ALTER TABLE `llx_contrat`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llx_contratdet`
--
ALTER TABLE `llx_contratdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_contratdet_extrafields`
--
ALTER TABLE `llx_contratdet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_contratdet_log`
--
ALTER TABLE `llx_contratdet_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_contrat_extrafields`
--
ALTER TABLE `llx_contrat_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_cronjob`
--
ALTER TABLE `llx_cronjob`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_accounting_category`
--
ALTER TABLE `llx_c_accounting_category`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `llx_c_action_trigger`
--
ALTER TABLE `llx_c_action_trigger`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `llx_c_availability`
--
ALTER TABLE `llx_c_availability`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `llx_c_barcode_type`
--
ALTER TABLE `llx_c_barcode_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_chargesociales`
--
ALTER TABLE `llx_c_chargesociales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4111;

--
-- AUTO_INCREMENT for table `llx_c_departements`
--
ALTER TABLE `llx_c_departements`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1431;

--
-- AUTO_INCREMENT for table `llx_c_ecotaxe`
--
ALTER TABLE `llx_c_ecotaxe`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `llx_c_email_senderprofile`
--
ALTER TABLE `llx_c_email_senderprofile`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_email_templates`
--
ALTER TABLE `llx_c_email_templates`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `llx_c_exp_tax_cat`
--
ALTER TABLE `llx_c_exp_tax_cat`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `llx_c_exp_tax_range`
--
ALTER TABLE `llx_c_exp_tax_range`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `llx_c_field_list`
--
ALTER TABLE `llx_c_field_list`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_format_cards`
--
ALTER TABLE `llx_c_format_cards`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `llx_c_forme_juridique`
--
ALTER TABLE `llx_c_forme_juridique`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `llx_c_holiday_types`
--
ALTER TABLE `llx_c_holiday_types`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_c_incoterms`
--
ALTER TABLE `llx_c_incoterms`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `llx_c_input_method`
--
ALTER TABLE `llx_c_input_method`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_c_input_reason`
--
ALTER TABLE `llx_c_input_reason`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `llx_c_lead_status`
--
ALTER TABLE `llx_c_lead_status`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `llx_c_paiement`
--
ALTER TABLE `llx_c_paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `llx_c_paper_format`
--
ALTER TABLE `llx_c_paper_format`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `llx_c_payment_term`
--
ALTER TABLE `llx_c_payment_term`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `llx_c_price_expression`
--
ALTER TABLE `llx_c_price_expression`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_price_global_variable`
--
ALTER TABLE `llx_c_price_global_variable`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_price_global_variable_updater`
--
ALTER TABLE `llx_c_price_global_variable_updater`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `llx_c_revenuestamp`
--
ALTER TABLE `llx_c_revenuestamp`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1544;

--
-- AUTO_INCREMENT for table `llx_c_shipment_mode`
--
ALTER TABLE `llx_c_shipment_mode`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `llx_c_ticket_category`
--
ALTER TABLE `llx_c_ticket_category`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_c_ticket_severity`
--
ALTER TABLE `llx_c_ticket_severity`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `llx_c_ticket_type`
--
ALTER TABLE `llx_c_ticket_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_c_tva`
--
ALTER TABLE `llx_c_tva`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2475;

--
-- AUTO_INCREMENT for table `llx_c_type_container`
--
ALTER TABLE `llx_c_type_container`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `llx_c_type_fees`
--
ALTER TABLE `llx_c_type_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `llx_c_type_resource`
--
ALTER TABLE `llx_c_type_resource`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llx_c_units`
--
ALTER TABLE `llx_c_units`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `llx_c_ziptown`
--
ALTER TABLE `llx_c_ziptown`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_default_values`
--
ALTER TABLE `llx_default_values`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_deplacement`
--
ALTER TABLE `llx_deplacement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_document_model`
--
ALTER TABLE `llx_document_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_don`
--
ALTER TABLE `llx_don`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_don_extrafields`
--
ALTER TABLE `llx_don_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_ecm_directories`
--
ALTER TABLE `llx_ecm_directories`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_ecm_files`
--
ALTER TABLE `llx_ecm_files`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `llx_element_contact`
--
ALTER TABLE `llx_element_contact`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `llx_element_element`
--
ALTER TABLE `llx_element_element`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_element_resources`
--
ALTER TABLE `llx_element_resources`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_emailcollector_emailcollector`
--
ALTER TABLE `llx_emailcollector_emailcollector`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_emailcollector_emailcollectoraction`
--
ALTER TABLE `llx_emailcollector_emailcollectoraction`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_emailcollector_emailcollectorfilter`
--
ALTER TABLE `llx_emailcollector_emailcollectorfilter`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_entrepot`
--
ALTER TABLE `llx_entrepot`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_establishment`
--
ALTER TABLE `llx_establishment`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_events`
--
ALTER TABLE `llx_events`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_event_element`
--
ALTER TABLE `llx_event_element`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expedition`
--
ALTER TABLE `llx_expedition`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expeditiondet`
--
ALTER TABLE `llx_expeditiondet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expeditiondet_batch`
--
ALTER TABLE `llx_expeditiondet_batch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expeditiondet_extrafields`
--
ALTER TABLE `llx_expeditiondet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expedition_extrafields`
--
ALTER TABLE `llx_expedition_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expensereport`
--
ALTER TABLE `llx_expensereport`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expensereport_det`
--
ALTER TABLE `llx_expensereport_det`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expensereport_extrafields`
--
ALTER TABLE `llx_expensereport_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_expensereport_ik`
--
ALTER TABLE `llx_expensereport_ik`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `llx_expensereport_rules`
--
ALTER TABLE `llx_expensereport_rules`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_export_compta`
--
ALTER TABLE `llx_export_compta`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_export_model`
--
ALTER TABLE `llx_export_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_extrafields`
--
ALTER TABLE `llx_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture`
--
ALTER TABLE `llx_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facturedet`
--
ALTER TABLE `llx_facturedet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facturedet_extrafields`
--
ALTER TABLE `llx_facturedet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facturedet_rec`
--
ALTER TABLE `llx_facturedet_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facturedet_rec_extrafields`
--
ALTER TABLE `llx_facturedet_rec_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_extrafields`
--
ALTER TABLE `llx_facture_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_fourn`
--
ALTER TABLE `llx_facture_fourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_fourn_det`
--
ALTER TABLE `llx_facture_fourn_det`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_fourn_det_extrafields`
--
ALTER TABLE `llx_facture_fourn_det_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_fourn_extrafields`
--
ALTER TABLE `llx_facture_fourn_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_rec`
--
ALTER TABLE `llx_facture_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_facture_rec_extrafields`
--
ALTER TABLE `llx_facture_rec_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinter`
--
ALTER TABLE `llx_fichinter`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinterdet`
--
ALTER TABLE `llx_fichinterdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinterdet_extrafields`
--
ALTER TABLE `llx_fichinterdet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinterdet_rec`
--
ALTER TABLE `llx_fichinterdet_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinter_extrafields`
--
ALTER TABLE `llx_fichinter_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_fichinter_rec`
--
ALTER TABLE `llx_fichinter_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_holiday`
--
ALTER TABLE `llx_holiday`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_holiday_config`
--
ALTER TABLE `llx_holiday_config`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_holiday_logs`
--
ALTER TABLE `llx_holiday_logs`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_import_model`
--
ALTER TABLE `llx_import_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_inventory`
--
ALTER TABLE `llx_inventory`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_inventorydet`
--
ALTER TABLE `llx_inventorydet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_links`
--
ALTER TABLE `llx_links`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_livraison`
--
ALTER TABLE `llx_livraison`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_livraisondet`
--
ALTER TABLE `llx_livraisondet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_livraisondet_extrafields`
--
ALTER TABLE `llx_livraisondet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_livraison_extrafields`
--
ALTER TABLE `llx_livraison_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_loan`
--
ALTER TABLE `llx_loan`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_loan_schedule`
--
ALTER TABLE `llx_loan_schedule`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_localtax`
--
ALTER TABLE `llx_localtax`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_mailing`
--
ALTER TABLE `llx_mailing`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_mailing_cibles`
--
ALTER TABLE `llx_mailing_cibles`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_menu`
--
ALTER TABLE `llx_menu`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_multicurrency`
--
ALTER TABLE `llx_multicurrency`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_multicurrency_rate`
--
ALTER TABLE `llx_multicurrency_rate`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_notify`
--
ALTER TABLE `llx_notify`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_notify_def`
--
ALTER TABLE `llx_notify_def`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_notify_def_object`
--
ALTER TABLE `llx_notify_def_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_oauth_state`
--
ALTER TABLE `llx_oauth_state`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_oauth_token`
--
ALTER TABLE `llx_oauth_token`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_onlinesignature`
--
ALTER TABLE `llx_onlinesignature`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_opensurvey_comments`
--
ALTER TABLE `llx_opensurvey_comments`
  MODIFY `id_comment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_opensurvey_formquestions`
--
ALTER TABLE `llx_opensurvey_formquestions`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_opensurvey_user_studs`
--
ALTER TABLE `llx_opensurvey_user_studs`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_overwrite_trans`
--
ALTER TABLE `llx_overwrite_trans`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_paiement`
--
ALTER TABLE `llx_paiement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_paiementcharge`
--
ALTER TABLE `llx_paiementcharge`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_paiementfourn`
--
ALTER TABLE `llx_paiementfourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_paiementfourn_facturefourn`
--
ALTER TABLE `llx_paiementfourn_facturefourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_paiement_facture`
--
ALTER TABLE `llx_paiement_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_payment_donation`
--
ALTER TABLE `llx_payment_donation`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_payment_expensereport`
--
ALTER TABLE `llx_payment_expensereport`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_payment_loan`
--
ALTER TABLE `llx_payment_loan`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_payment_salary`
--
ALTER TABLE `llx_payment_salary`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_payment_various`
--
ALTER TABLE `llx_payment_various`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_pos_cash_fence`
--
ALTER TABLE `llx_pos_cash_fence`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_prelevement_bons`
--
ALTER TABLE `llx_prelevement_bons`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_prelevement_facture`
--
ALTER TABLE `llx_prelevement_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_prelevement_facture_demande`
--
ALTER TABLE `llx_prelevement_facture_demande`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_prelevement_lignes`
--
ALTER TABLE `llx_prelevement_lignes`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_prelevement_rejet`
--
ALTER TABLE `llx_prelevement_rejet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_printing`
--
ALTER TABLE `llx_printing`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product`
--
ALTER TABLE `llx_product`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llx_product_association`
--
ALTER TABLE `llx_product_association`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_attribute`
--
ALTER TABLE `llx_product_attribute`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_attribute_combination`
--
ALTER TABLE `llx_product_attribute_combination`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_attribute_combination2val`
--
ALTER TABLE `llx_product_attribute_combination2val`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_attribute_value`
--
ALTER TABLE `llx_product_attribute_value`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_batch`
--
ALTER TABLE `llx_product_batch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_customer_price`
--
ALTER TABLE `llx_product_customer_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_customer_price_log`
--
ALTER TABLE `llx_product_customer_price_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_extrafields`
--
ALTER TABLE `llx_product_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_fournisseur_price`
--
ALTER TABLE `llx_product_fournisseur_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_fournisseur_price_log`
--
ALTER TABLE `llx_product_fournisseur_price_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_lang`
--
ALTER TABLE `llx_product_lang`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_lot`
--
ALTER TABLE `llx_product_lot`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_lot_extrafields`
--
ALTER TABLE `llx_product_lot_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_price`
--
ALTER TABLE `llx_product_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_product_pricerules`
--
ALTER TABLE `llx_product_pricerules`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_price_by_qty`
--
ALTER TABLE `llx_product_price_by_qty`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_product_stock`
--
ALTER TABLE `llx_product_stock`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_product_warehouse_properties`
--
ALTER TABLE `llx_product_warehouse_properties`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_projet`
--
ALTER TABLE `llx_projet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_projet_extrafields`
--
ALTER TABLE `llx_projet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_projet_task`
--
ALTER TABLE `llx_projet_task`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_projet_task_extrafields`
--
ALTER TABLE `llx_projet_task_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_projet_task_time`
--
ALTER TABLE `llx_projet_task_time`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_propal`
--
ALTER TABLE `llx_propal`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_propaldet`
--
ALTER TABLE `llx_propaldet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_propaldet_extrafields`
--
ALTER TABLE `llx_propaldet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_propal_extrafields`
--
ALTER TABLE `llx_propal_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_propal_merge_pdf_product`
--
ALTER TABLE `llx_propal_merge_pdf_product`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_resource`
--
ALTER TABLE `llx_resource`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_resource_extrafields`
--
ALTER TABLE `llx_resource_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe`
--
ALTER TABLE `llx_societe`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `llx_societe_account`
--
ALTER TABLE `llx_societe_account`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_address`
--
ALTER TABLE `llx_societe_address`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_commerciaux`
--
ALTER TABLE `llx_societe_commerciaux`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `llx_societe_extrafields`
--
ALTER TABLE `llx_societe_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_log`
--
ALTER TABLE `llx_societe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_prices`
--
ALTER TABLE `llx_societe_prices`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_remise`
--
ALTER TABLE `llx_societe_remise`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_societe_remise_except`
--
ALTER TABLE `llx_societe_remise_except`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llx_societe_remise_supplier`
--
ALTER TABLE `llx_societe_remise_supplier`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_societe_rib`
--
ALTER TABLE `llx_societe_rib`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_socpeople`
--
ALTER TABLE `llx_socpeople`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_socpeople_extrafields`
--
ALTER TABLE `llx_socpeople_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_stock_mouvement`
--
ALTER TABLE `llx_stock_mouvement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_subscription`
--
ALTER TABLE `llx_subscription`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_supplier_proposal`
--
ALTER TABLE `llx_supplier_proposal`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_supplier_proposaldet`
--
ALTER TABLE `llx_supplier_proposaldet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_supplier_proposaldet_extrafields`
--
ALTER TABLE `llx_supplier_proposaldet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_supplier_proposal_extrafields`
--
ALTER TABLE `llx_supplier_proposal_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_takepos_floor_tables`
--
ALTER TABLE `llx_takepos_floor_tables`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_ticket`
--
ALTER TABLE `llx_ticket`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_ticket_extrafields`
--
ALTER TABLE `llx_ticket_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_ticket_msg`
--
ALTER TABLE `llx_ticket_msg`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_tva`
--
ALTER TABLE `llx_tva`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_user`
--
ALTER TABLE `llx_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `llx_usergroup`
--
ALTER TABLE `llx_usergroup`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_usergroup_extrafields`
--
ALTER TABLE `llx_usergroup_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_usergroup_rights`
--
ALTER TABLE `llx_usergroup_rights`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `llx_usergroup_user`
--
ALTER TABLE `llx_usergroup_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `llx_user_alert`
--
ALTER TABLE `llx_user_alert`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_user_employment`
--
ALTER TABLE `llx_user_employment`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_user_extrafields`
--
ALTER TABLE `llx_user_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_user_rib`
--
ALTER TABLE `llx_user_rib`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_user_rights`
--
ALTER TABLE `llx_user_rights`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `llx_website`
--
ALTER TABLE `llx_website`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_website_extrafields`
--
ALTER TABLE `llx_website_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llx_website_page`
--
ALTER TABLE `llx_website_page`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `llx_accounting_account`
--
ALTER TABLE `llx_accounting_account`
  ADD CONSTRAINT `fk_accounting_account_fk_pcg_version` FOREIGN KEY (`fk_pcg_version`) REFERENCES `llx_accounting_system` (`pcg_version`);

--
-- Constraints for table `llx_adherent`
--
ALTER TABLE `llx_adherent`
  ADD CONSTRAINT `adherent_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_adherent_adherent_type` FOREIGN KEY (`fk_adherent_type`) REFERENCES `llx_adherent_type` (`rowid`);

--
-- Constraints for table `llx_asset`
--
ALTER TABLE `llx_asset`
  ADD CONSTRAINT `fk_asset_asset_type` FOREIGN KEY (`fk_asset_type`) REFERENCES `llx_asset_type` (`rowid`);

--
-- Constraints for table `llx_bank_account`
--
ALTER TABLE `llx_bank_account`
  ADD CONSTRAINT `fk_bank_account_accountancy_journal` FOREIGN KEY (`fk_accountancy_journal`) REFERENCES `llx_accounting_journal` (`rowid`);

--
-- Constraints for table `llx_boxes`
--
ALTER TABLE `llx_boxes`
  ADD CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `llx_boxes_def` (`rowid`);

--
-- Constraints for table `llx_budget_lines`
--
ALTER TABLE `llx_budget_lines`
  ADD CONSTRAINT `fk_budget_lines_budget` FOREIGN KEY (`fk_budget`) REFERENCES `llx_budget` (`rowid`);

--
-- Constraints for table `llx_categorie_account`
--
ALTER TABLE `llx_categorie_account`
  ADD CONSTRAINT `fk_categorie_account_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_account_fk_account` FOREIGN KEY (`fk_account`) REFERENCES `llx_bank_account` (`rowid`);

--
-- Constraints for table `llx_categorie_contact`
--
ALTER TABLE `llx_categorie_contact`
  ADD CONSTRAINT `fk_categorie_contact_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_contact_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `llx_socpeople` (`rowid`);

--
-- Constraints for table `llx_categorie_fournisseur`
--
ALTER TABLE `llx_categorie_fournisseur`
  ADD CONSTRAINT `fk_categorie_fournisseur_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_categorie_lang`
--
ALTER TABLE `llx_categorie_lang`
  ADD CONSTRAINT `fk_category_lang_fk_category` FOREIGN KEY (`fk_category`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_member`
--
ALTER TABLE `llx_categorie_member`
  ADD CONSTRAINT `fk_categorie_member_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_member_member_rowid` FOREIGN KEY (`fk_member`) REFERENCES `llx_adherent` (`rowid`);

--
-- Constraints for table `llx_categorie_product`
--
ALTER TABLE `llx_categorie_product`
  ADD CONSTRAINT `fk_categorie_product_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_product_product_rowid` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_categorie_project`
--
ALTER TABLE `llx_categorie_project`
  ADD CONSTRAINT `fk_categorie_project_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_project_fk_project_rowid` FOREIGN KEY (`fk_project`) REFERENCES `llx_projet` (`rowid`);

--
-- Constraints for table `llx_categorie_societe`
--
ALTER TABLE `llx_categorie_societe`
  ADD CONSTRAINT `fk_categorie_societe_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_societe_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_categorie_user`
--
ALTER TABLE `llx_categorie_user`
  ADD CONSTRAINT `fk_categorie_user_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_commande`
--
ALTER TABLE `llx_commande`
  ADD CONSTRAINT `fk_commande_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_commandedet`
--
ALTER TABLE `llx_commandedet`
  ADD CONSTRAINT `fk_commandedet_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `llx_commande` (`rowid`),
  ADD CONSTRAINT `fk_commandedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_commande_fournisseur`
--
ALTER TABLE `llx_commande_fournisseur`
  ADD CONSTRAINT `fk_commande_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_commande_fournisseurdet`
--
ALTER TABLE `llx_commande_fournisseurdet`
  ADD CONSTRAINT `fk_commande_fournisseurdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_contrat`
--
ALTER TABLE `llx_contrat`
  ADD CONSTRAINT `fk_contrat_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_contrat_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_contratdet`
--
ALTER TABLE `llx_contratdet`
  ADD CONSTRAINT `fk_contratdet_fk_contrat` FOREIGN KEY (`fk_contrat`) REFERENCES `llx_contrat` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_contratdet_log`
--
ALTER TABLE `llx_contratdet_log`
  ADD CONSTRAINT `fk_contratdet_log_fk_contratdet` FOREIGN KEY (`fk_contratdet`) REFERENCES `llx_contratdet` (`rowid`);

--
-- Constraints for table `llx_c_departements`
--
ALTER TABLE `llx_c_departements`
  ADD CONSTRAINT `fk_departements_fk_region` FOREIGN KEY (`fk_region`) REFERENCES `llx_c_regions` (`code_region`);

--
-- Constraints for table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD CONSTRAINT `fk_c_regions_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_country` (`rowid`);

--
-- Constraints for table `llx_c_ziptown`
--
ALTER TABLE `llx_c_ziptown`
  ADD CONSTRAINT `fk_c_ziptown_fk_county` FOREIGN KEY (`fk_county`) REFERENCES `llx_c_departements` (`rowid`),
  ADD CONSTRAINT `fk_c_ziptown_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_country` (`rowid`);

--
-- Constraints for table `llx_ecm_directories`
--
ALTER TABLE `llx_ecm_directories`
  ADD CONSTRAINT `fk_ecm_directories_fk_user_c` FOREIGN KEY (`fk_user_c`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_ecm_directories_fk_user_m` FOREIGN KEY (`fk_user_m`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_element_contact`
--
ALTER TABLE `llx_element_contact`
  ADD CONSTRAINT `fk_element_contact_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `llx_c_type_contact` (`rowid`);

--
-- Constraints for table `llx_emailcollector_emailcollectoraction`
--
ALTER TABLE `llx_emailcollector_emailcollectoraction`
  ADD CONSTRAINT `fk_emailcollectoraction_fk_emailcollector` FOREIGN KEY (`fk_emailcollector`) REFERENCES `llx_emailcollector_emailcollector` (`rowid`);

--
-- Constraints for table `llx_emailcollector_emailcollectorfilter`
--
ALTER TABLE `llx_emailcollector_emailcollectorfilter`
  ADD CONSTRAINT `fk_emailcollectorfilter_fk_emailcollector` FOREIGN KEY (`fk_emailcollector`) REFERENCES `llx_emailcollector_emailcollector` (`rowid`);

--
-- Constraints for table `llx_expedition`
--
ALTER TABLE `llx_expedition`
  ADD CONSTRAINT `fk_expedition_fk_shipping_method` FOREIGN KEY (`fk_shipping_method`) REFERENCES `llx_c_shipment_mode` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_expeditiondet`
--
ALTER TABLE `llx_expeditiondet`
  ADD CONSTRAINT `fk_expeditiondet_fk_expedition` FOREIGN KEY (`fk_expedition`) REFERENCES `llx_expedition` (`rowid`);

--
-- Constraints for table `llx_expeditiondet_batch`
--
ALTER TABLE `llx_expeditiondet_batch`
  ADD CONSTRAINT `fk_expeditiondet_batch_fk_expeditiondet` FOREIGN KEY (`fk_expeditiondet`) REFERENCES `llx_expeditiondet` (`rowid`);

--
-- Constraints for table `llx_facture`
--
ALTER TABLE `llx_facture`
  ADD CONSTRAINT `fk_facture_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facturedet`
--
ALTER TABLE `llx_facturedet`
  ADD CONSTRAINT `fk_facturedet_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_facturedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_facturedet_rec`
--
ALTER TABLE `llx_facturedet_rec`
  ADD CONSTRAINT `fk_facturedet_rec_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_facture_fourn`
--
ALTER TABLE `llx_facture_fourn`
  ADD CONSTRAINT `fk_facture_fourn_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facture_fourn_det`
--
ALTER TABLE `llx_facture_fourn_det`
  ADD CONSTRAINT `fk_facture_fourn_det_fk_facture` FOREIGN KEY (`fk_facture_fourn`) REFERENCES `llx_facture_fourn` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_det_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_facture_rec`
--
ALTER TABLE `llx_facture_rec`
  ADD CONSTRAINT `fk_facture_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_fichinter`
--
ALTER TABLE `llx_fichinter`
  ADD CONSTRAINT `fk_fichinter_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_fichinterdet`
--
ALTER TABLE `llx_fichinterdet`
  ADD CONSTRAINT `fk_fichinterdet_fk_fichinter` FOREIGN KEY (`fk_fichinter`) REFERENCES `llx_fichinter` (`rowid`);

--
-- Constraints for table `llx_fichinter_rec`
--
ALTER TABLE `llx_fichinter_rec`
  ADD CONSTRAINT `fk_fichinter_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_fichinter_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_livraison`
--
ALTER TABLE `llx_livraison`
  ADD CONSTRAINT `fk_livraison_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_livraisondet`
--
ALTER TABLE `llx_livraisondet`
  ADD CONSTRAINT `fk_livraisondet_fk_livraison` FOREIGN KEY (`fk_livraison`) REFERENCES `llx_livraison` (`rowid`);

--
-- Constraints for table `llx_paiement_facture`
--
ALTER TABLE `llx_paiement_facture`
  ADD CONSTRAINT `fk_paiement_facture_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_paiement_facture_fk_paiement` FOREIGN KEY (`fk_paiement`) REFERENCES `llx_paiement` (`rowid`);

--
-- Constraints for table `llx_payment_salary`
--
ALTER TABLE `llx_payment_salary`
  ADD CONSTRAINT `fk_payment_salary_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_prelevement_facture`
--
ALTER TABLE `llx_prelevement_facture`
  ADD CONSTRAINT `fk_prelevement_facture_fk_prelevement_lignes` FOREIGN KEY (`fk_prelevement_lignes`) REFERENCES `llx_prelevement_lignes` (`rowid`);

--
-- Constraints for table `llx_prelevement_lignes`
--
ALTER TABLE `llx_prelevement_lignes`
  ADD CONSTRAINT `fk_prelevement_lignes_fk_prelevement_bons` FOREIGN KEY (`fk_prelevement_bons`) REFERENCES `llx_prelevement_bons` (`rowid`);

--
-- Constraints for table `llx_product`
--
ALTER TABLE `llx_product`
  ADD CONSTRAINT `fk_product_barcode_type` FOREIGN KEY (`fk_barcode_type`) REFERENCES `llx_c_barcode_type` (`rowid`),
  ADD CONSTRAINT `fk_product_default_warehouse` FOREIGN KEY (`fk_default_warehouse`) REFERENCES `llx_entrepot` (`rowid`),
  ADD CONSTRAINT `fk_product_fk_country` FOREIGN KEY (`fk_country`) REFERENCES `llx_c_country` (`rowid`),
  ADD CONSTRAINT `fk_product_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_product_batch`
--
ALTER TABLE `llx_product_batch`
  ADD CONSTRAINT `fk_product_batch_fk_product_stock` FOREIGN KEY (`fk_product_stock`) REFERENCES `llx_product_stock` (`rowid`);

--
-- Constraints for table `llx_product_customer_price`
--
ALTER TABLE `llx_product_customer_price`
  ADD CONSTRAINT `fk_product_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_fournisseur_price`
--
ALTER TABLE `llx_product_fournisseur_price`
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_lang`
--
ALTER TABLE `llx_product_lang`
  ADD CONSTRAINT `fk_product_lang_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_product_price`
--
ALTER TABLE `llx_product_price`
  ADD CONSTRAINT `fk_product_price_product` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_product_price_user_author` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_product_price_by_qty`
--
ALTER TABLE `llx_product_price_by_qty`
  ADD CONSTRAINT `fk_product_price_by_qty_fk_product_price` FOREIGN KEY (`fk_product_price`) REFERENCES `llx_product_price` (`rowid`);

--
-- Constraints for table `llx_projet`
--
ALTER TABLE `llx_projet`
  ADD CONSTRAINT `fk_projet_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_projet_task`
--
ALTER TABLE `llx_projet_task`
  ADD CONSTRAINT `fk_projet_task_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propal`
--
ALTER TABLE `llx_propal`
  ADD CONSTRAINT `fk_propal_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propaldet`
--
ALTER TABLE `llx_propaldet`
  ADD CONSTRAINT `fk_propaldet_fk_propal` FOREIGN KEY (`fk_propal`) REFERENCES `llx_propal` (`rowid`),
  ADD CONSTRAINT `fk_propaldet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_resource`
--
ALTER TABLE `llx_resource`
  ADD CONSTRAINT `fk_resource_fk_country` FOREIGN KEY (`fk_country`) REFERENCES `llx_c_country` (`rowid`);

--
-- Constraints for table `llx_societe_account`
--
ALTER TABLE `llx_societe_account`
  ADD CONSTRAINT `llx_societe_account_fk_societe` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `llx_societe_account_fk_website` FOREIGN KEY (`fk_website`) REFERENCES `llx_website` (`rowid`);

--
-- Constraints for table `llx_societe_remise_except`
--
ALTER TABLE `llx_societe_remise_except`
  ADD CONSTRAINT `fk_soc_remise_fk_facture_line` FOREIGN KEY (`fk_facture_line`) REFERENCES `llx_facturedet` (`rowid`),
  ADD CONSTRAINT `fk_soc_remise_fk_invoice_supplier_line` FOREIGN KEY (`fk_invoice_supplier_line`) REFERENCES `llx_facture_fourn_det` (`rowid`),
  ADD CONSTRAINT `fk_soc_remise_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_invoice_supplier` FOREIGN KEY (`fk_invoice_supplier`) REFERENCES `llx_facture_fourn` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_invoice_supplier_source` FOREIGN KEY (`fk_invoice_supplier`) REFERENCES `llx_facture_fourn` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_socpeople`
--
ALTER TABLE `llx_socpeople`
  ADD CONSTRAINT `fk_socpeople_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_socpeople_user_creat_user_rowid` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_supplier_proposaldet`
--
ALTER TABLE `llx_supplier_proposaldet`
  ADD CONSTRAINT `fk_supplier_proposaldet_fk_supplier_proposal` FOREIGN KEY (`fk_supplier_proposal`) REFERENCES `llx_supplier_proposal` (`rowid`),
  ADD CONSTRAINT `fk_supplier_proposaldet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_usergroup_rights`
--
ALTER TABLE `llx_usergroup_rights`
  ADD CONSTRAINT `fk_usergroup_rights_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`);

--
-- Constraints for table `llx_usergroup_user`
--
ALTER TABLE `llx_usergroup_user`
  ADD CONSTRAINT `fk_usergroup_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_usergroup_user_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`);

--
-- Constraints for table `llx_user_employment`
--
ALTER TABLE `llx_user_employment`
  ADD CONSTRAINT `fk_user_employment_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_user_rights`
--
ALTER TABLE `llx_user_rights`
  ADD CONSTRAINT `fk_user_rights_fk_user_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_website_page`
--
ALTER TABLE `llx_website_page`
  ADD CONSTRAINT `fk_website_page_website` FOREIGN KEY (`fk_website`) REFERENCES `llx_website` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
