-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 mai 2023 à 17:33
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mazebank-vf`
--

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`id`, `name`, `photo`, `description`) VALUES
(3, 'zsrtgujhs', '16393007481563335660service-icon-1-2-6409c4313b0f7.png', 'wscfh;l'),
(4, 'menzel temime', 'Methode-Waterfall.png', 'mmmmmmmmmmmm'),
(5, 'azery', '324939060-1164923080819863-4008774182011134815-n-6409fb1699e37.jpg', 'tyjgjgh');

-- --------------------------------------------------------

--
-- Structure de la table `assurance`
--

CREATE TABLE `assurance` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partenaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `assurance`
--

INSERT INTO `assurance` (`id`, `libelle`, `image`, `partenaire`, `type`) VALUES
(1, 'sdfgyji', '16393007481563335660service-icon-1-2-6409dc72b067c.png', 'srf', 'fdxgdfg');

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `name`, `description`, `photo`, `details`) VALUES
(2, 1, 'sfwxgcfb,k:m', '<qwsvgbn;:!', '16393007481563335660service-icon-1-2-6409c81625313.png', '>wxcvbn,;:');

-- --------------------------------------------------------

--
-- Structure de la table `carnet_cheque`
--

CREATE TABLE `carnet_cheque` (
  `id` int(11) NOT NULL,
  `idtypecarnet_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carnet_cheque`
--

INSERT INTO `carnet_cheque` (`id`, `idtypecarnet_id`, `email`, `identifier`, `description`, `cin_s1`, `cin_s2`, `document`, `status`) VALUES
(1, 1, 'salmakacem@gmail.com', '1235469', 'test', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'accepté'),
(2, 2, 'salmakacem@gmail.com', '5897463', 'testtt', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'accepté');

-- --------------------------------------------------------

--
-- Structure de la table `carte_bancaire`
--

CREATE TABLE `carte_bancaire` (
  `id` int(11) NOT NULL,
  `idtypecarte_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carte_bancaire`
--

INSERT INTO `carte_bancaire` (`id`, `idtypecarte_id`, `email`, `identifier`, `description`, `cin_s1`, `cin_s2`, `status`) VALUES
(1, 3, 'kacem.salma@esprit.tn', '123456789', 'test', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'accepté'),
(2, 3, 'kacem.salma@esprit.tn', '98754632', 'test', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'refusé'),
(3, 2, 'kacem.salma@esprit.tn', '123654789', 'tt', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'En cours'),
(4, 3, 'dfdfdfdfvdfffffffffffffffffffffffffffffffff', 'dfdfd', 'desfesf', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 'En cours');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'qzdxfh;l', 'ùwsxdfhk:m');

-- --------------------------------------------------------

--
-- Structure de la table `category_credit`
--

CREATE TABLE `category_credit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_credit`
--

INSERT INTO `category_credit` (`id`, `name`, `description`) VALUES
(2, 'sdfghjk123', 'q<wscfjk123');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `id_user_id` int(11) DEFAULT NULL,
  `id_type_id` int(11) DEFAULT NULL,
  `date_creation` date NOT NULL,
  `date_fermeture` date NOT NULL,
  `solde` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin_s2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_doc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_solde` int(11) NOT NULL,
  `min_solde` int(11) NOT NULL,
  `red_solde` int(11) NOT NULL,
  `rib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `id_user_id`, `id_type_id`, `date_creation`, `date_fermeture`, `solde`, `cin_s1`, `cin_s2`, `other_doc`, `max_solde`, `min_solde`, `red_solde`, `rib`, `statue`) VALUES
(3, 2, 2, '2023-03-09', '2023-03-09', '0.0', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 5645645, 456456456, 456456456, '48460949088970', 'valide'),
(4, 4, 2, '2023-03-09', '2023-03-09', 'in progress...', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 50000, 3000, -5000, 'in progress...', 'rejected'),
(5, 4, 3, '2023-03-09', '2023-03-09', 'in progress...', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 554545, 555445, 5545454, 'in progress...', 'valide'),
(13, 2, 2, '2023-04-16', '2023-04-16', 'in progress', 'Label', 'Label', 'Label', 4545, 4545, 4545, 'in progress', 'valide'),
(18, 2, 3, '2023-04-16', '2023-04-16', 'in progress', 'Capture d’écran 2022-10-29 à 10.48.25.png', 'TD3_EX1.png', 'TD3_EX1.png', 888, 888, 77, 'in progress', 'valide'),
(26, 2, 1, '2023-04-17', '2023-04-17', 'in progress', 'Label', 'Label', 'Label', 44545, 888, 5555, 'in progress', 'in progress'),
(27, 2, 1, '2023-04-17', '2023-04-17', 'in progress', 'TD3_EX1.png', 'TD3_EX1.png', 'TD3_EX1.png', 44544, 888, 5555, 'in progress', 'valide');

-- --------------------------------------------------------

--
-- Structure de la table `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `credit_category_id` int(11) DEFAULT NULL,
  `max_amount` int(11) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `withdraw_monthly` int(11) NOT NULL,
  `months` int(11) NOT NULL,
  `loan_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `credit`
--

INSERT INTO `credit` (`id`, `credit_category_id`, `max_amount`, `min_amount`, `withdraw_monthly`, `months`, `loan_rate`) VALUES
(3, 2, 645634, 56554, 5645645, 6456456, 456456);

-- --------------------------------------------------------

--
-- Structure de la table `demande_credit`
--

CREATE TABLE `demande_credit` (
  `id` int(11) NOT NULL,
  `credit_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `cin1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `demande_credit`
--

INSERT INTO `demande_credit` (`id`, `credit_id_id`, `user_id_id`, `created_at`, `cin1`, `cin2`, `amount`, `note`, `status`) VALUES
(3, 3, 2, '2023-03-09 14:10:57', '16393007481563335660service-icon-1-2.png', '16393007481563335660service-icon-1-2.png', 7854754, '5454564645', 'accepted'),
(4, 3, 4, '2023-03-09 16:24:31', 'inconvenients-2002bca76b0ec1a43b6036259d72c5f1.jpg', 'inconvenients-2002bca76b0ec1a43b6036259d72c5f1.jpg', 555, 'azert', 'in progress'),
(5, 3, NULL, '2023-04-12 03:42:20', 'WireTransferClientController.txt', 'WireTransferClientController.txt', 121212, '1211', 'in progress');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230308190032', '2023-03-08 20:00:44', 749),
('DoctrineMigrations\\Version20230309113216', '2023-03-09 12:32:21', 426),
('DoctrineMigrations\\Version20230309131654', '2023-03-09 14:17:00', 15);

-- --------------------------------------------------------

--
-- Structure de la table `embauche`
--

CREATE TABLE `embauche` (
  `id` int(11) NOT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_embauche` date NOT NULL,
  `salaire` double NOT NULL,
  `duree` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `investissement`
--

CREATE TABLE `investissement` (
  `id` int(11) NOT NULL,
  `min_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int(11) NOT NULL,
  `offre_embauche_id` int(11) DEFAULT NULL,
  `offre_investissement_id` int(11) DEFAULT NULL,
  `offre_assurance_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `type_reclamation_id` int(11) DEFAULT NULL,
  `client_name_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priorite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `type_reclamation_id`, `client_name_id`, `name`, `description`, `priorite`) VALUES
(2, 1, 2, 'zefsdf', 'ssdfsdf', 'LOW');

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `type_transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agence_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`id`, `compte_id`, `type_transaction`, `montant`, `request_from`, `request_to`, `statue`, `agence_name`, `date`) VALUES
(4, 3, 'Wire Transfer', '500', 'azerty', 'hadil', 'valide', 'zsrtgujhs', '2023-03-09'),
(5, 3, 'Wire Transfer', '500', 'ones', 'salma', 'valide', 'menzel temime', '2023-03-09'),
(6, 3, 'Wire Transfer', '500', 'ones', 'manar', 'valide', 'menzel temime', '2023-03-09'),
(8, 3, 'Wire Transfer', '100', 'amal', 'nahla', 'valide', 'menzel temime', '2023-03-09'),
(9, 3, 'Send Money', '400', '76548645326534', '145287965666666', 'rejected', 'no agence', '2023-03-09');

-- --------------------------------------------------------

--
-- Structure de la table `type_carnet`
--

CREATE TABLE `type_carnet` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `datevalidation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_carnet`
--

INSERT INTO `type_carnet` (`id`, `nom`, `description`, `startnum`, `endnum`, `datecreation`, `datevalidation`) VALUES
(1, 'cheque gold', 'chequee', '100', '200', '2018-08-01', '2023-01-01'),
(2, 'cheque de garantie', 'cheque', '300', '400', '2019-01-01', '2018-01-01'),
(3, 'QSDFGHJK', 'Q<WSCF?', 'WQSCFN.L', '<WXC V', '2018-01-01', '2018-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `type_carte`
--

CREATE TABLE `type_carte` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_carte`
--

INSERT INTO `type_carte` (`id`, `nom`, `description`) VALUES
(2, 'visaCard', 'visaCard'),
(3, 'gold', 'gold card');

-- --------------------------------------------------------

--
-- Structure de la table `type_compte`
--

CREATE TABLE `type_compte` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_compte`
--

INSERT INTO `type_compte` (`id`, `type`, `description`) VALUES
(1, 'Salary account', 'A Salary Package account is a special savings account offered to salaried customers'),
(2, 'Savings account', 'A Savings Package account is a special savings account offered to salaried customers'),
(3, 'aaaaaa', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `type_reclamation`
--

CREATE TABLE `type_reclamation` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_reclamation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigné` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_reclamation`
--

INSERT INTO `type_reclamation` (`id`, `titre`, `description_reclamation`, `assigné`) VALUES
(1, 'xdbh;l!', 'swcf,k:!', '<wxcvgbh;l!');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency_name_id` int(11) DEFAULT NULL,
  `google_authenticator_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `phone`, `agency_name_id`, `google_authenticator_secret`, `roles`, `password`, `is_verified`, `name`, `reset_token`, `status`) VALUES
(2, 'onesrhaime28@gmail.com', '123456', 3, '4MZ2BTQTMKZ4K5O4M7JDSTJDRDU2X2HKU54I7ST4GHCDSAWNUODQ', '[\"ROLE_USER\"]', '$2y$13$OWOc6quaGZmEFgnd.IlwJei8h9hXYs.lJ/.vrIAieI4kea0DGGRjK', 0, 'azer', NULL, 'enabled'),
(3, 'admin@admin.tn', '4656556565', NULL, NULL, '[\"ROLE_ADMIN\"]', '$2y$13$OWOc6quaGZmEFgnd.IlwJei8h9hXYs.lJ/.vrIAieI4kea0DGGRjK', 0, 'admin', NULL, NULL),
(4, 'ones.benrhaime@esprit.tn', '21866975', 4, '4MZ2BTQTMKZ4K5O4M7JDSTJDRDU2X2HKU54I7ST4GHCDSAWNUODQ', '[\"ROLE_USER\"]', '$2y$13$cIzQcYPqpLcZ7MU2CqLyxuO1siAJxm5hx54GgNz8L9GnuNkDrZaMq', 0, 'ones ben rhaime', NULL, 'enabled');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `assurance`
--
ALTER TABLE `assurance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C015514312469DE2` (`category_id`);

--
-- Index pour la table `carnet_cheque`
--
ALTER TABLE `carnet_cheque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9CD0911160850051` (`idtypecarnet_id`);

--
-- Index pour la table `carte_bancaire`
--
ALTER TABLE `carte_bancaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_59E3C22DD3013F37` (`idtypecarte_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_credit`
--
ALTER TABLE `category_credit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CFF6526079F37AE5` (`id_user_id`),
  ADD KEY `IDX_CFF652601BD125E3` (`id_type_id`);

--
-- Index pour la table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1CC16EFE3E6C7BD2` (`credit_category_id`);

--
-- Index pour la table `demande_credit`
--
ALTER TABLE `demande_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5E852811272B10F9` (`credit_id_id`),
  ADD KEY `IDX_5E8528119D86650F` (`user_id_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `embauche`
--
ALTER TABLE `embauche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `investissement`
--
ALTER TABLE `investissement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BF5476CAA76ED395` (`user_id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_AF86866F476A2296` (`offre_embauche_id`),
  ADD UNIQUE KEY `UNIQ_AF86866F1D1FA5E9` (`offre_investissement_id`),
  ADD UNIQUE KEY `UNIQ_AF86866F89ADCAA1` (`offre_assurance_id`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CE6064047BA88B4D` (`type_reclamation_id`),
  ADD KEY `IDX_CE606404232AD8AB` (`client_name_id`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_723705D1F2C56620` (`compte_id`);

--
-- Index pour la table `type_carnet`
--
ALTER TABLE `type_carnet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_carte`
--
ALTER TABLE `type_carte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_compte`
--
ALTER TABLE `type_compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_reclamation`
--
ALTER TABLE `type_reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D6497170587` (`agency_name_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `assurance`
--
ALTER TABLE `assurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carnet_cheque`
--
ALTER TABLE `carnet_cheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carte_bancaire`
--
ALTER TABLE `carte_bancaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `category_credit`
--
ALTER TABLE `category_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `demande_credit`
--
ALTER TABLE `demande_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `embauche`
--
ALTER TABLE `embauche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `investissement`
--
ALTER TABLE `investissement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `type_carnet`
--
ALTER TABLE `type_carnet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `type_carte`
--
ALTER TABLE `type_carte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `type_compte`
--
ALTER TABLE `type_compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_reclamation`
--
ALTER TABLE `type_reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_C015514312469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `carnet_cheque`
--
ALTER TABLE `carnet_cheque`
  ADD CONSTRAINT `FK_9CD0911160850051` FOREIGN KEY (`idtypecarnet_id`) REFERENCES `type_carnet` (`id`);

--
-- Contraintes pour la table `carte_bancaire`
--
ALTER TABLE `carte_bancaire`
  ADD CONSTRAINT `FK_59E3C22DD3013F37` FOREIGN KEY (`idtypecarte_id`) REFERENCES `type_carte` (`id`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `FK_CFF652601BD125E3` FOREIGN KEY (`id_type_id`) REFERENCES `type_compte` (`id`),
  ADD CONSTRAINT `FK_CFF6526079F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `FK_1CC16EFE3E6C7BD2` FOREIGN KEY (`credit_category_id`) REFERENCES `category_credit` (`id`);

--
-- Contraintes pour la table `demande_credit`
--
ALTER TABLE `demande_credit`
  ADD CONSTRAINT `FK_5E852811272B10F9` FOREIGN KEY (`credit_id_id`) REFERENCES `credit` (`id`),
  ADD CONSTRAINT `FK_5E8528119D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FK_BF5476CAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `FK_AF86866F1D1FA5E9` FOREIGN KEY (`offre_investissement_id`) REFERENCES `investissement` (`id`),
  ADD CONSTRAINT `FK_AF86866F476A2296` FOREIGN KEY (`offre_embauche_id`) REFERENCES `embauche` (`id`),
  ADD CONSTRAINT `FK_AF86866F89ADCAA1` FOREIGN KEY (`offre_assurance_id`) REFERENCES `assurance` (`id`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_CE606404232AD8AB` FOREIGN KEY (`client_name_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CE6064047BA88B4D` FOREIGN KEY (`type_reclamation_id`) REFERENCES `type_reclamation` (`id`);

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_723705D1F2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6497170587` FOREIGN KEY (`agency_name_id`) REFERENCES `agence` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
