-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2022 a las 04:17:15
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis_27`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `asunto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `espacio` int(11) NOT NULL,
  `estatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id_reporte`, `asunto`, `descripcion`, `foto`, `fecha`, `usuario`, `categoria`, `espacio`, `estatus`) VALUES
(25, 'Hola', 'Hola', 'Foto', '2022-01-20 01:25:50', 3, 1, 2, 'Pendiente'),
(26, 'Hola', 'Hola', 'Foto', '2022-01-20 01:26:00', 3, 1, 2, 'Rechazado'),
(27, 'Hola a todos', 'Esto es genial...', 'foto.png', '2022-01-20 01:29:31', 3, 4, 9, 'Pendiente'),
(28, 'Hola a todos', 'Esto es genial...', 'foto.png', '2022-01-20 01:29:40', 3, 4, 9, 'Atendido'),
(29, 'kkd', 'ndjsjs', 'foto.png', '2022-01-20 01:37:38', 3, 4, 9, 'Pendiente'),
(30, 'kkd', 'ndjsjs', 'foto.png', '2022-01-20 01:37:38', 3, 4, 9, 'Pendiente'),
(31, 'kkd', 'ndjsjs', 'foto.png', '2022-01-20 01:37:38', 3, 4, 9, 'Rechazado'),
(32, 'kkd', 'ndjsjs', 'foto.png', '2022-01-20 01:37:38', 3, 4, 9, 'Atendido'),
(33, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:47', 3, 4, 9, 'Pendiente'),
(34, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:47', 3, 4, 9, 'Pendiente'),
(35, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:47', 3, 4, 9, 'Pendiente'),
(36, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:48', 3, 4, 9, 'Pendiente'),
(37, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:48', 3, 4, 9, 'Pendiente'),
(38, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:48', 3, 4, 9, 'Pendiente'),
(39, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:48', 3, 4, 9, 'Pendiente'),
(40, 'Betty', 'La Fea...', 'foto.png', '2022-01-20 01:38:48', 3, 4, 9, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `username`, `password`, `nivel`) VALUES
(2, 'Joqsan Adalid', 'Castellanos', 'Alicea', 'joqsan', '1234', 1),
(3, 'Soanny Amlean', 'Alvarez', 'Castellanos', 'soanna', 'loca', 4),
(4, 'Lindita', 'Herrera', 'Castellanos', 'linda', 'jahary', 3),
(5, 'Alexis', 'Castellanos', 'Alicea', 'alex', '456', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
