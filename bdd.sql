-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 06, 2021 at 08:41 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog-océan`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'Phytoplancton bioluminescent', '<p><span style=\"color: #ffffff;\">La&nbsp;bioluminescence&nbsp;est un ph&eacute;nom&egrave;ne de production de lumi&egrave;re par des organismes vivants. Ce processus am&egrave;ne l&rsquo;oxydation de la&nbsp;lucif&eacute;rine&nbsp;par la lucif&eacute;rase (une enzyme) et lib&egrave;re de la lumi&egrave;re gr&acirc;ce &agrave; l&rsquo;&eacute;nergie produite. C&rsquo;est de l&rsquo;&eacute;nergie chimique qui est transform&eacute;e en &eacute;nergie lumineuse. Ce ph&eacute;nom&egrave;ne est tr&egrave;s observ&eacute;, autant sur la terre ferme que dans les milieux aquatiques.</span></p>\r\n<p><span style=\"color: #ffffff;\">Pensons aux lucioles ainsi qu&rsquo;aux invert&eacute;br&eacute;s et aux &eacute;tranges poissons qui peuplent les fonds marins. Dans l&rsquo;article pr&eacute;sent, nous verrons d\'autre groupe d&rsquo;&ecirc;tres vivants qui utilise ce ph&eacute;nom&egrave;ne et il s&rsquo;agit du&nbsp;phytoplancton.</span></p>\r\n<p style=\"padding-left: 390px;\"><img class=\"\" src=\"static/source/firefly.jpg\" alt=\"\" width=\"449\" height=\"299\" /></p>\r\n<p><span style=\"color: #ffffff;\">On diff&eacute;rencie la bioluminescence animale ou bact&eacute;rienne de la bioluminescence v&eacute;g&eacute;tale par la pr&eacute;sence de phosphorescence due &agrave; la photosynth&egrave;se.</span></p>\r\n<p><span style=\"color: #ffffff;\">Le&nbsp;<strong>phytoplancton bioluminescent</strong>&nbsp;est principalement compos&eacute; de&nbsp;Dinoflagell&eacute;s&nbsp;photosynth&eacute;tiques tels que les&nbsp;<em>Noctiluca scintillans</em>&nbsp;et les genres&nbsp;<em>Gonyaulax<span style=\"font-size: 11.6667px;\">&nbsp;</span></em>et&nbsp;<em>Lingulodium<span style=\"font-size: 11.6667px;\">.</span></em>On ne connait toutefois pas encore tous les organismes qui produisent cette lumi&egrave;re puisque les &eacute;tudes r&eacute;alis&eacute;es portent sur les caract&eacute;ristiques entourant le ph&eacute;nom&egrave;ne plut&ocirc;t que sur les esp&egrave;ces qui le produisent.</span></p>\r\n<p style=\"padding-left: 330px;\"><img class=\"\" src=\"static/source/plancton.jpg\" alt=\"\" width=\"580\" height=\"326\" /></p>\r\n<p><span style=\"color: #ffffff;\">La bioluminescence a lieu de nuit et non de jour, en raison de l\'existence du cycle circadien (en 24h) de la bioluminescence, qui s&rsquo;explique par la pr&eacute;sence de lumi&egrave;re, ou plut&ocirc;t son absence la nuit. L&rsquo;oxydation produite par la lucif&eacute;rase est r&eacute;gul&eacute;e par la pr&eacute;sence de LBP (Luciferin Binding Protein). Pendant le jour, avec la pr&eacute;sence du Soleil, la production de LBP est inhib&eacute;e, et la lucif&eacute;rine est donc moins stable et son oxydation moins importante. Ce qui implique que la phosphorescence et la bioluminescence forment des cycles inverses, l&rsquo;un stimul&eacute; par la pr&eacute;sence de lumi&egrave;re, donc de photosynth&egrave;se, et l&rsquo;autre par son absence. On note aussi une translocation des prot&eacute;ines photosynth&eacute;tiques vers diff&eacute;rents compartiments de la cellule (vacuoles) pouvant influencer la production de LBP. Environ 20 min sont n&eacute;cessaires &agrave; la cellule pour produire les premi&egrave;res mol&eacute;cules de LBP, et ce, jusqu&rsquo;au pic qui a lieu entre minuit et 2h du matin, l&agrave; o&ugrave; l&rsquo;obscurit&eacute; est la plus importante. Puis la bioluminescence commence &agrave; diminuer avec le lever du soleil. L&rsquo;intensit&eacute; de la lumi&egrave;re module donc l&rsquo;oxydation de la lucif&eacute;rine, ce qui explique la pr&eacute;sence d&rsquo;un cycle..</span></p>\r\n<p><span style=\"color: #ffffff;\">Petite Anecdote&nbsp;Les sous-marins&nbsp;furtifs&nbsp;peuvent &ecirc;tre d&eacute;tect&eacute;s par la&nbsp;bioluminescence&nbsp;induite quand ils passent au niveau d\'un nuage de phytoplancton produisant cette lumi&egrave;re.</span></p>', 'phyto.jpg', '2018-02-03 16:08:55'),
(24, 'Les Fonds Marins', '<p><span style=\"color: #ffffff;\">Les&nbsp;<strong>fonds marins</strong>&nbsp;ou&nbsp;<strong>plancher oc&eacute;anique</strong>&nbsp;(ou&nbsp;<strong>lithosph&egrave;re oc&eacute;anique</strong>&nbsp;pour les g&eacute;ologues qui &eacute;tudient la&nbsp;tectonique des plaques) d&eacute;signent au sens large tous les fonds immerg&eacute;s des mers du globe terrestre.</span></p>\r\n<p><span style=\"color: #ffffff;\">Ils constituent plus des 3/4 des fonds oc&eacute;aniques et sont habituellement subdivis&eacute;s en :</span></p>\r\n<p style=\"text-align: center;\">&nbsp;<img class=\"\" src=\"static/source/450px-Oceanic_basin-fr.svg.png\" alt=\"\" width=\"450\" height=\"317\" /></p>\r\n<p><span style=\"color: #ffffff;\">Du point de vue&nbsp;g&eacute;oclimatique, ces fonds jouent un r&ocirc;le majeur de&nbsp;puits de carbone, mais contiennent aussi d\'&eacute;normes quantit&eacute; d\'hydrates de m&eacute;thane&nbsp;susceptibles de fortement acc&eacute;l&eacute;rer le&nbsp;r&eacute;chauffement climatique&nbsp;s\'ils venaient &agrave; fondre.</span></p>\r\n<p style=\"padding-left: 300px;\"><span style=\"color: #ffffff;\"><img class=\"\" src=\"static/source/Tropical-fishes-underwater-coral-reef-ocean_3840x2160.jpg\" alt=\"\" width=\"667\" height=\"375\" /></span></p>\r\n<p><span style=\"color: #ffffff;\">On a pos&eacute; sur les fonds marins une grande quantit&eacute; de c&acirc;bles et fibres optiques qui peuvent interf&eacute;rer avec les actions de p&ecirc;che au&nbsp;chalut. Ils ont aussi localement servi de d&eacute;charge durant plusieurs d&eacute;cennies, dont de d&eacute;chets chimiques (radioactifs notamment comme dans la&nbsp;fosse des casquets&nbsp;entre France et Angleterre) et militaires (munitions immerg&eacute;es).</span></p>\r\n<p><span style=\"color: #ffffff;\">On y trouve par ailleurs de nombreuses &eacute;paves&nbsp;de navires (et plus r&eacute;cemment d\'avions ou d\'autres mat&eacute;riels militaires jet&eacute;s ou perdus en mer)&nbsp;; ces &eacute;paves sont rest&eacute;es longtemps inaccessibles, mais en 1987, le Nautile&nbsp;a pu atteindre, &agrave; 3&nbsp;850 m&nbsp;de profondeur, le Titanic&nbsp;qui avait coul&eacute; avec une partie de ses passagers le&nbsp;<time class=\"nowrap\" datetime=\"1912-04-14\" data-sort-value=\"1912-04-14\">14 avril 1912</time>, &agrave; 725 km&nbsp;de&nbsp;Terre-Neuve.</span></p>', 'fondmarin.jpg', '2018-02-03 18:33:05'),
(40, 'La Tortue Marine', '<p><span style=\"color: #ffffff;\">Les&nbsp;tortues marines&nbsp;sont les&nbsp;tortues&nbsp;de la&nbsp;super-famille&nbsp;des&nbsp;<em>Chelonioidea</em>. Elles sont pr&eacute;sentes dans tous les oc&eacute;ans du monde &agrave; l\'exception de l\'oc&eacute;an Arctique.</span></p>\r\n<p><img src=\"static/source/tortuebaby.jpg\" width=\"245\" height=\"232\" /></p>\r\n<p><span style=\"color: #ffffff;\">La tortue luth&nbsp;est la plus grande, mesurant 2&nbsp;m&nbsp;de long, de 1&nbsp;m&nbsp;&agrave; 1,5&nbsp;m&nbsp;de large et pesant 600 kg. La taille moyenne des autres esp&egrave;ces va de 50&nbsp;cm&nbsp;&agrave; 1&nbsp;m&nbsp;et est proportionnellement moins large.</span></p>\r\n<p><span style=\"color: #ffffff;\">Ces esp&egrave;ces sont toutes vuln&eacute;rables ou menac&eacute;es. Elles font localement l\'objet de protection ou de plan de restauration, mais la&nbsp;pollution, le&nbsp;braconnage&nbsp;et les prises accidentelles par engins de p&ecirc;che restent des causes pr&eacute;occupantes de recul de&nbsp;populations, d&eacute;j&agrave; tr&egrave;s relictuelles.</span></p>\r\n<p><span style=\"color: #ffffff;\">Les tortues marines, comme les autres tortues (<em>Testudines</em>) sont des reptiles&nbsp;ectothermes&nbsp;disposant d\'un syst&egrave;me respiratoire pulmonaire, qui correspondait &agrave; une adaptation compl&egrave;te &agrave; la vie terrestre. En suppl&eacute;ment des reins, des glandes lacrymales pr&egrave;s de leurs yeux sont capables d\'expulser les exc&eacute;dents de sel de leur circulation sanguine. Ces glandes lacrymales transform&eacute;es en &laquo;&nbsp;glandes &agrave; sel&nbsp;&raquo; expliquent notamment les larmes des femelles lorsqu\'elles viennent pondre. Leur m&eacute;tabolisme est capable de supporter des fortes concentrations de CO2&nbsp;lors des plong&eacute;es profondes. Elles peuvent extraire 35 &agrave; 52&nbsp;% de l\'oxyg&egrave;ne de leur respiration. Leur vision est tr&egrave;s d&eacute;velopp&eacute;e. Les yeux sont prot&eacute;g&eacute;s par trois paupi&egrave;res, leur ou&iuml;e est particuli&egrave;rement fine m&ecirc;me si elles n\'ont pas d\'oreilles externes, mais une oreille interne, sous une plaque auditive. Leur odorat est en revanche assez peu performant. Les tortues marines n\'ont qu\'un seul orifice excr&eacute;teur, qui sert &eacute;galement pour la reproduction.</span></p>\r\n<p><span style=\"color: #ffffff;\">Le sexe des tortues n\'est pas apparent, aussi c\'est d\'apr&egrave;s leurs&nbsp;caract&egrave;res sexuels secondaires&nbsp;que l\'on peut le d&eacute;terminer. On d&eacute;finit par pubert&eacute; la p&eacute;riode o&ugrave; ceux-ci apparaissent. Le plus flagrant est la taille de la queue, beaucoup plus grande chez les m&acirc;les. La taille des griffes chez les chelonid&eacute;s en est un autre. Cependant, ces caract&egrave;res sexuels ne sont pas tr&egrave;s marqu&eacute;s et certaines femelles peuvent les arborer. Seul un examen g&eacute;n&eacute;tique permet d\'&ecirc;tre certain du sexe de l\'animal.</span></p>', 'tortue.jpg', '2018-02-07 13:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(17, 'nicolas.mercier00@orange.fr', '23288f5a4f2229a2f8bd760348f73828', NULL, 'nico18');

-- --------------------------------------------------------

--
-- Table structure for table `Votes`
--

CREATE TABLE `Votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Votes`
--
ALTER TABLE `Votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Votes`
--
ALTER TABLE `Votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
