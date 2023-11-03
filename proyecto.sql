-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2023 a las 05:05:17
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE latin1_spanish_ci,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `colortexto` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `colorfondo` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `descripcion`, `inicio`, `fin`, `colortexto`, `colorfondo`) VALUES
(14, 'No disponible', '', '2023-10-24 06:00:00', '2023-10-24 09:00:00', '#000000', '#0fff00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventospredefinidos`
--

CREATE TABLE `eventospredefinidos` (
  `id_evento` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `colortexto` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `colorfondo` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `eventospredefinidos`
--

INSERT INTO `eventospredefinidos` (`id_evento`, `titulo`, `horainicio`, `horafin`, `colortexto`, `colorfondo`) VALUES
(2, 'No disponible', '06:00:00', '09:00:00', '#000000', '#0FFF00'),
(3, 'No vine a clases', '06:00:00', '09:00:00', '#ffffff', '#ff0109');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventospredefinidosusuarios`
--

CREATE TABLE `eventospredefinidosusuarios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `colortexto` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `colorfondo` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosusuarios`
--

CREATE TABLE `eventosusuarios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE latin1_spanish_ci,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `colortexto` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `colorfondo` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fe_nac` date DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `usuario` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `contrasena` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tipo_usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `correo`, `fe_nac`, `telefono`, `usuario`, `contrasena`, `tipo_usuario`) VALUES
(3, 'Jesus Alberto', 'OsBr', 'jesusospino401@gmail.com', '2005-05-15', 300652656, 'Administrador', '12345', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventospredefinidos`
--
ALTER TABLE `eventospredefinidos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `eventospredefinidosusuarios`
--
ALTER TABLE `eventospredefinidosusuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventosusuarios`
--
ALTER TABLE `eventosusuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `eventospredefinidos`
--
ALTER TABLE `eventospredefinidos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `eventospredefinidosusuarios`
--
ALTER TABLE `eventospredefinidosusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventosusuarios`
--
ALTER TABLE `eventosusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
