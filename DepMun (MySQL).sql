-- phpMyAdmin SQL Dump
-- version 4.0.3deb1.precise~ppa.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2013 at 11:50 PM
-- Server version: 5.5.33a-MariaDB-1~precise-log
-- PHP Version: 5.3.10-1ubuntu3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `refugio`
--
CREATE DATABASE IF NOT EXISTS `refugio` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `refugio`;

-- --------------------------------------------------------

--
-- Table structure for table `dep_departamento`
--

DROP TABLE IF EXISTS `dep_departamento`;
CREATE TABLE IF NOT EXISTS `dep_departamento` (
  `dep_id` int(11) NOT NULL COMMENT 'ID del departamento',
  `dep_nombre` varchar(30) NOT NULL COMMENT 'Nombre del departamento',
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Departamento de donde pertenece el refugio';

--
-- Dumping data for table `dep_departamento`
--

INSERT INTO `dep_departamento` (`dep_id`, `dep_nombre`) VALUES
(1, 'Ahuachapán'),
(2, 'Santa Ana'),
(3, 'Sonsonate'),
(4, 'La Libertad'),
(5, 'Chalatenango'),
(6, 'San Salvador'),
(7, 'Cuscatlán'),
(8, 'La Paz'),
(9, 'Cabañas'),
(10, 'San Vicente'),
(11, 'Usulután'),
(12, 'Morazán'),
(13, 'San Miguel'),
(14, 'La Unión');

-- --------------------------------------------------------

--
-- Table structure for table `mun_municipio`
--

DROP TABLE IF EXISTS `mun_municipio`;
CREATE TABLE IF NOT EXISTS `mun_municipio` (
  `mun_id` int(11) NOT NULL COMMENT 'ID del municipio',
  `mun_nombre` varchar(60) NOT NULL COMMENT 'Nombre del municipio',
  `dep_mun_id` int(11) NOT NULL,
  PRIMARY KEY (`mun_id`,`dep_mun_id`),
  KEY `fk_mun_municipio_dep_departamento1_idx` (`dep_mun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Municipios en los que se encuentra el refugio';

--
-- Dumping data for table `mun_municipio`
--

INSERT INTO `mun_municipio` (`mun_id`, `mun_nombre`, `dep_mun_id`) VALUES
(1, 'Ahuachapán', 1),
(2, 'Jujutla', 1),
(3, 'Atiquizaya', 1),
(4, 'Concepción de Ataco', 1),
(5, 'El Refugio', 1),
(6, 'Guaymango', 1),
(7, 'Apaneca', 1),
(8, 'San Francisco Menéndez', 1),
(9, 'San Lorenzo', 1),
(10, 'San Pedro Puxtla', 1),
(11, 'Tacuba', 1),
(12, 'Turín', 1),
(13, 'Candelaria de la Frontera', 2),
(14, 'Chalchuapa', 2),
(15, 'Coatepeque', 2),
(16, 'El Congo', 2),
(17, 'El Porvenir', 2),
(18, 'Masahuat', 2),
(19, 'Metapán', 2),
(20, 'San Antonio Pajonal', 2),
(21, 'San Sebastián Salitrillo', 2),
(22, 'Santa Ana', 2),
(23, 'Santa Rosa Guachipilín', 2),
(24, 'Santiago de la Frontera', 2),
(25, 'Texistepeque', 2),
(26, 'Acajutla', 3),
(27, 'Armenia', 3),
(28, 'Caluco', 3),
(29, 'Cuisnahuat', 3),
(30, 'Izalco', 3),
(31, 'Juayúa', 3),
(32, 'Nahuizalco', 3),
(33, 'Nahulingo', 3),
(34, 'Salcoatitán', 3),
(35, 'San Antonio del Monte', 3),
(36, 'San Julián', 3),
(37, 'Santa Catarina Masahuat', 3),
(38, 'Santa Isabel Ishuatán', 3),
(39, 'Santo Domingo de Guzmán', 3),
(40, 'Sonsonate', 3),
(41, 'Sonzacate', 3),
(42, 'Alegría', 4),
(43, 'Berlín', 11),
(44, 'California', 11),
(45, 'Concepción Batres', 11),
(46, 'El Triunfo', 11),
(47, 'Ereguayquín', 11),
(48, 'Estanzuelas', 11),
(49, 'Jiquilisco', 11),
(50, 'Jucuapa', 11),
(51, 'Jucuarán', 11),
(52, 'Mercedes Umaña', 11),
(53, 'Nueva Granada', 11),
(54, 'Ozatlán', 11),
(55, 'Puerto El Triunfo', 11),
(56, 'San Agustín', 11),
(57, 'San Buenaventura', 11),
(58, 'San Dionisio', 11),
(59, 'San Francisco Javier', 11),
(60, 'Santa Elena', 11),
(61, 'Santa María', 11),
(62, 'Santiago de María', 11),
(63, 'Tecapán', 11),
(64, 'Usulután', 11),
(65, 'Carolina', 13),
(66, 'Chapeltique', 13),
(67, 'Chinameca', 13),
(68, 'Chirilagua', 13),
(69, 'Ciudad Barrios', 13),
(70, 'Comacarán', 13),
(71, 'El Tránsito', 13),
(72, 'Lolotique', 13),
(73, 'Moncagua', 13),
(74, 'Nueva Guadalupe', 13),
(75, 'Nuevo Edén de San Juan', 13),
(76, 'Quelepa', 13),
(77, 'San Antonio del Mosco', 13),
(78, 'San Gerardo', 13),
(79, 'San Jorge', 13),
(80, 'San Luis de la Reina', 13),
(81, 'San Miguel', 13),
(82, 'San Rafael Oriente', 13),
(83, 'Sesori', 13),
(84, 'Uluazapa', 13),
(85, 'Arambala', 12),
(86, 'Cacaopera', 12),
(87, 'Chilanga', 12),
(88, 'Corinto', 12),
(89, 'Delicias de Concepción', 12),
(90, 'El Divisadero', 12),
(91, 'El Rosario', 12),
(92, 'Gualococti', 12),
(93, 'Guatajiagua', 12),
(94, 'Joateca', 12),
(95, 'Jocoaitique', 12),
(96, 'Jocoro', 12),
(97, 'Lolotiquillo', 12),
(98, 'Meanguera', 12),
(99, 'Osicala', 12),
(100, 'Perquín', 12),
(101, 'San Carlos', 12),
(102, 'San Fernando', 12),
(103, 'San Francisco Gotera', 12),
(104, 'San Isidro', 12),
(105, 'San Simón', 12),
(106, 'Sensembra', 12),
(107, 'Sociedad', 12),
(108, 'Torola', 12),
(109, 'Yamabal', 12),
(110, 'Yoloaiquín', 12),
(111, 'La Unión ', 14),
(112, 'San Alejo ', 14),
(113, 'Yucuaiquín ', 14),
(114, 'Conchagua ', 14),
(115, 'Intipucá ', 14),
(116, 'San José ', 14),
(117, 'El Carmen ', 14),
(118, 'Yayantique ', 14),
(119, 'Bolívar ', 14),
(120, 'Meanguera del Golfo ', 14),
(121, 'Santa Rosa de Lima ', 14),
(122, 'Pasaquina ', 14),
(123, 'Anamoros', 14),
(124, 'Nueva Esparta ', 14),
(125, 'El Sauce ', 14),
(126, 'Concepción de Oriente ', 14),
(127, 'Polorós ', 14),
(128, 'Lislique ', 14),
(129, 'Antiguo Cuscatlán', 4),
(130, 'Chiltiupán', 4),
(131, 'Ciudad Arce', 4),
(132, 'Colón', 4),
(133, 'Comasagua', 4),
(134, 'Huizúcar', 4),
(135, 'Jayaque', 4),
(136, 'Jicalapa', 4),
(137, 'La Libertad', 4),
(138, 'Santa Tecla', 4),
(139, 'Nuevo Cuscatlán', 4),
(140, 'San Juan Opico', 4),
(141, 'Quezaltepeque', 4),
(142, 'Sacacoyo', 4),
(143, 'San José Villanueva', 4),
(144, 'San Matías', 4),
(145, 'San Pablo Tacachico', 4),
(146, 'Talnique', 4),
(147, 'Tamanique', 4),
(148, 'Teotepeque', 4),
(149, 'Tepecoyo', 4),
(150, 'Zaragoza', 4),
(151, 'Agua Caliente', 5),
(152, 'Arcatao', 5),
(153, 'Azacualpa', 5),
(154, 'Cancasque', 5),
(155, 'Chalatenango', 5),
(156, 'Citalá', 5),
(157, 'Comapala', 5),
(158, 'Concepción Quezaltepeque', 5),
(159, 'Dulce Nombre de María', 5),
(160, 'El Carrizal', 5),
(161, 'El Paraíso', 5),
(162, 'La Laguna', 5),
(163, 'La Palma', 5),
(164, 'La Reina', 5),
(165, 'Las Vueltas', 5),
(166, 'Nueva Concepción', 5),
(167, 'Nueva Trinidad', 5),
(168, 'Nombre de Jesús', 5),
(169, 'Ojos de Agua', 5),
(170, 'Potonico', 5),
(171, 'San Antonio de la Cruz', 5),
(172, 'San Antonio Los Ranchos', 5),
(173, 'San Fernando', 5),
(174, 'San Francisco Lempa', 5),
(175, 'San Francisco Morazán', 5),
(176, 'San Ignacio', 5),
(177, 'San Isidro Labrador', 5),
(178, 'Las Flores', 5),
(179, 'San Luis del Carmen', 5),
(180, 'San Miguel de Mercedes', 5),
(181, 'San Rafael', 5),
(182, 'Santa Rita', 5),
(183, 'Tejutla', 5),
(184, 'Cojutepeque', 7),
(185, 'Candelaria', 7),
(186, 'El Carmen', 7),
(187, 'El Rosario', 7),
(188, 'Monte San Juan', 7),
(189, 'Oratorio de Concepción', 7),
(190, 'San Bartolomé Perulapía', 7),
(191, 'San Cristóbal', 7),
(192, 'San José Guayabal', 7),
(193, 'San Pedro Perulapán', 7),
(194, 'San Rafael Cedros', 7),
(195, 'San Ramón', 7),
(196, 'Santa Cruz Analquito', 7),
(197, 'Santa Cruz Michapa', 7),
(198, 'Suchitoto', 7),
(199, 'Tenancingo', 7),
(200, 'Aguilares', 6),
(201, 'Apopa', 6),
(202, 'Ayutuxtepeque', 6),
(203, 'Cuscatancingo', 6),
(204, 'Ciudad Delgado', 6),
(205, 'El Paisnal', 6),
(206, 'Guazapa', 6),
(207, 'Ilopango', 6),
(208, 'Mejicanos', 6),
(209, 'Nejapa', 6),
(210, 'Panchimalco', 6),
(211, 'Rosario de Mora', 6),
(212, 'San Marcos', 6),
(213, 'San Martín', 6),
(214, 'San Salvador', 6),
(215, 'Santiago Texacuangos', 6),
(216, 'Santo Tomás', 6),
(217, 'Soyapango', 6),
(218, 'Tonacatepeque', 6),
(219, 'Zacatecoluca', 8),
(220, 'Cuyultitán', 8),
(221, 'El Rosario', 8),
(222, 'Jerusalén', 8),
(223, 'Mercedes La Ceiba', 8),
(224, 'Olocuilta', 8),
(225, 'Paraíso de Osorio', 8),
(226, 'San Antonio Masahuat', 8),
(227, 'San Emigdio', 8),
(228, 'San Francisco Chinameca', 8),
(229, 'San Pedro Masahuat', 8),
(230, 'San Juan Nonualco', 8),
(231, 'San Juan Talpa', 8),
(232, 'San Juan Tepezontes', 8),
(233, 'San Luis La Herradura', 8),
(234, 'San Luis Talpa', 8),
(235, 'San Miguel Tepezontes', 8),
(236, 'San Pedro Nonualco', 8),
(237, 'San Rafael Obrajuelo', 8),
(238, 'Santa María Ostuma', 8),
(239, 'Santiago Nonualco', 8),
(240, 'Tapalhuaca', 8),
(241, 'Cinquera', 9),
(242, 'Dolores', 9),
(243, 'Guacotecti', 9),
(244, 'Ilobasco', 9),
(245, 'Jutiapa', 9),
(246, 'San Isidro', 9),
(247, 'Sensuntepeque', 9),
(248, 'Tejutepeque', 9),
(249, 'Victoria', 9),
(250, 'Apastepeque', 10),
(251, 'Guadalupe', 10),
(252, 'San Cayetano Istepeque', 10),
(253, 'San Esteban Catarina', 10),
(254, 'San Ildefonso', 10),
(255, 'San Lorenzo', 10),
(256, 'San Sebastián', 10),
(257, 'San Vicente', 10),
(258, 'Santa Clara', 10),
(259, 'Santo Domingo', 10),
(260, 'Tecoluca', 10),
(261, 'Tepetitán', 10),
(262, 'Verapaz', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rol_rol`
--

DROP TABLE IF EXISTS `rol_rol`;
CREATE TABLE IF NOT EXISTS `rol_rol` (
  `rol_id` int(11) NOT NULL COMMENT 'ID de los roles',
  `rol_nombre` varchar(20) NOT NULL COMMENT 'Nombre del rol',
  `rol_descripcion` varchar(60) DEFAULT NULL COMMENT 'Descripcion del rol ingresado',
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Roles de los usuarios a ingresar al sitio';

--
-- Dumping data for table `rol_rol`
--

INSERT INTO `rol_rol` (`rol_id`, `rol_nombre`, `rol_descripcion`) VALUES
(1, 'admin', 'Administrador del sistema y del sitio'),
(2, 'user', 'Usuario con privilegios limitados'),
(3, 'refugio', 'Usuario encargado de actualizar los datos de su refugio');

-- --------------------------------------------------------

--
-- Table structure for table `usr_usuario`
--

DROP TABLE IF EXISTS `usr_usuario`;
CREATE TABLE IF NOT EXISTS `usr_usuario` (
  `usr_id` int(11) NOT NULL COMMENT 'ID del usuario',
  `usr_usuarios` varchar(30) NOT NULL COMMENT 'Username de acceso al sitio',
  `usr_nombre1` varchar(20) NOT NULL COMMENT '1er nombre real del usuario',
  `usr_nombre2` varchar(20) DEFAULT NULL COMMENT '2o nombre real del usuario',
  `usr_apellido1` varchar(20) NOT NULL COMMENT '1er apellido real del usuario',
  `usr_apellido2` varchar(20) DEFAULT NULL COMMENT '2o apellido real del usuario',
  `usr_rol_id` int(11) NOT NULL COMMENT 'Llave foranea',
  `usr_passwd` varchar(100) NOT NULL COMMENT 'Contraseña de acceso al sitio',
  PRIMARY KEY (`usr_id`,`usr_rol_id`),
  KEY `fk_usr_usuario_rol_rol_idx` (`usr_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos de usuario del sitio';

--
-- Dumping data for table `usr_usuario`
--

INSERT INTO `usr_usuario` (`usr_id`, `usr_usuarios`, `usr_nombre1`, `usr_nombre2`, `usr_apellido1`, `usr_apellido2`, `usr_rol_id`, `usr_passwd`) VALUES
(1, 'admin', 'administrador', NULL, 'administrador', NULL, 1, '91f5167c34c400758115c2a6826ec2e3'),
(2, 'santiago', 'Jose', 'Santiago', 'Burgos', 'Mejia', 1, '6f7dacfa89953d0fa5070d3dcfad7296'),
(3, 'ale', 'Alejandra', 'Iveth', 'Melendez', 'Morales', 1, '3fc13eed225435fabc994b5405745616'),
(4, 'rodrigo', 'Rodrigo', 'Jose', 'Rodriguez', NULL, 2, 'c2a013f258b73d918432126466588154'),
(5, 'soriano', 'Carlos', 'Rodolfo', 'Soriano', 'Lopez', 3, '328d753896480cf12f08c0f7e536ce3b'),
(6, 'carmen.morales', 'Carmen', 'Celia', 'Morales', 'Samayoa', 3, '80de52a87aa77f3c3f37222458713da4');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mun_municipio`
--
ALTER TABLE `mun_municipio`
  ADD CONSTRAINT `fk_mun_municipio_dep_departamento1` FOREIGN KEY (`dep_mun_id`) REFERENCES `dep_departamento` (`dep_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usr_usuario`
--
ALTER TABLE `usr_usuario`
  ADD CONSTRAINT `fk_usr_rol_id` FOREIGN KEY (`usr_rol_id`) REFERENCES `rol_rol` (`rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
