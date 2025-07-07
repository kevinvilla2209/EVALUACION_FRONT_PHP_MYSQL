-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2025 a las 23:44:26
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `new`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `documento` int(12) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `profesion` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `id_tipo` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`documento`, `nombres`, `celular`, `correo`, `profesion`, `contrasena`, `descripcion`, `id_tipo`) VALUES
(1005, 'KEVIN VILLAFRADE', '31456', 'kev@gmail.com', 'DESARROLLADOR', '123456', 'desarrollador con 10 años de experiencia ', 1),
(1006, 'DANIEL PEREZ ', '345344', 'daniel@gmail.com', 'CONTADOR', '123456', 'Contador con experiencia de 10 años', 3),
(1007, 'VILLAFRADE KEVIN', '312545', 'villa@gmail.com', 'CONTROL DE AREAS', '123456', 'Controlador de areas con experiencia de 10 años', 2),
(1008, 'DUVAN ZAPATA', '353454', 'duvan@gmail.com', 'FUTBOLISTA', '123456', 'futbolista de buenos equipos y trabajo en equipo', 3),
(10009, 'LUCAS R', '123234', 'lucas@gmail.com', 'ALBAÑIL', '123456', 'albañil preparado para todo', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usu` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
