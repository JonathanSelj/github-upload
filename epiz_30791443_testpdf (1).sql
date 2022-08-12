-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql210.byetcluster.com
-- Tiempo de generación: 22-06-2022 a las 12:46:22
-- Versión del servidor: 10.3.27-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epiz_30791443_testpdf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `n_control` varchar(10) NOT NULL,
  `datime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_documentos`
--

CREATE TABLE `tbl_documentos` (
  `n_control` int(8) NOT NULL,
  `nombre_al` varchar(150) DEFAULT NULL,
  `estatus` varchar(20) DEFAULT NULL,
  `tamanio` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `nombre_archivo2` varchar(255) DEFAULT NULL,
  `correo` varchar(25) NOT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `semestre` varchar(10) NOT NULL,
  `especialidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_documentos`
--

INSERT INTO `tbl_documentos` (`n_control`, `nombre_al`, `estatus`, `tamanio`, `tipo`, `nombre_archivo`, `nombre_archivo2`, `correo`, `curp`, `semestre`, `especialidad`) VALUES
(18690088, 'Camara Gonzalez Jose Luis', 'Pendiente', 98208, 'application/pdf', 'CAGL000824HSPMNSA5.pdf', 'IDENTIFICACION_18690088.pdf', '18690088@tecvalles.mx', 'CAGL000824HSPMNSA5', '8 Semestre', 'ISC'),
(18690201, 'Hernandez Resendiz Rocio Candelaria', 'ACEPTADO', 98144, 'application/pdf', 'HERR991123MSPRSC08.pdf', 'IDENTIFICACION 18690201.pdf', '18690201@tecvalles.mx', 'HERR991123MSPRSC08', '', ''),
(18690210, 'Flores Hernandez Omar', 'ACEPTADO', 98144, 'application/pdf', 'FOHO990921HSPLRM09 (1).pdf', 'INE_18690210.pdf', '18690210@tecvalles.mx', 'FOHO990921HSPLRM09', '', ''),
(18690220, 'Balleza Ramos Gamaliel', 'Inactivo', 98126, 'application/pdf', 'BARG000306HSPLMMA3.pdf', 'IDENTIFICACIÃ“N_18690220.pdf', '18690220@tecvalles.mx', 'BARG000306HSPLMMA3', '', ''),
(18690290, 'Sebastian Lopez Jonathan', 'Pendiente', 98215, 'application/pdf', 'SELJ991228HSPBPN07.pdf', 'identificacion 18690290.pdf', '18690290@tecvalles.mx', 'SELJ991228HSPBPN07', '', ''),
(21690000, 'Paterno Materno Nombres', 'Inactivo', 310657, 'application/pdf', 'CURPXXXXXXXXXXXXXX.pdf', 'IDENTIFICACION-21690000.pdf', '21690000@tecvalles.mx', 'CURPXXXXXXXXXXXXXX', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`) VALUES
(1, 'admin', 'admin@tecvalles.mx', '4124bc0a9335c27f086f24ba207a4912');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_documentos`
--
ALTER TABLE `tbl_documentos`
  ADD PRIMARY KEY (`n_control`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
