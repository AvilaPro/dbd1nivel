-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2019 a las 06:17:55
-- Versión del servidor: 5.7.17
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario`
--

CREATE TABLE `beneficiario` (
  `idbeneficiario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `pais_idpais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `idevento` int(11) NOT NULL,
  `localidad_idlocalidad` int(11) NOT NULL,
  `tipo_evento_idtipo_evento` int(11) NOT NULL,
  `oragnizador_idoragnizador` int(11) NOT NULL,
  `organizador_idorganizador` int(11) NOT NULL,
  `beneficiario_idbeneficiario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_evento`
--

CREATE TABLE `fotos_evento` (
  `idfotos_evento` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasto_x_evento`
--

CREATE TABLE `gasto_x_evento` (
  `idgasto_x_evento` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `evento_idevento1` int(11) NOT NULL,
  `proveedor_idproveedor` int(11) NOT NULL,
  `tipo_gasto_idtipo_gasto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `idlocalidad` int(11) NOT NULL,
  `ciudad_idciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizador`
--

CREATE TABLE `organizador` (
  `idorganizador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_externos`
--

CREATE TABLE `pagos_externos` (
  `idpagos_externos` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `idparticipante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_x_evento`
--

CREATE TABLE `participante_x_evento` (
  `idparticipante_x_evento` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `participante_idparticipante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinante`
--

CREATE TABLE `patrocinante` (
  `idpatrocinante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinante_x_evento`
--

CREATE TABLE `patrocinante_x_evento` (
  `idpatrocinante_x_evento` int(11) NOT NULL,
  `patrocinante_idpatrocinante` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `tipo_patrocinio_idtipo_patrocinio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponente`
--

CREATE TABLE `ponente` (
  `idponente` int(11) NOT NULL,
  `ciudad_idciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponente_x_evento`
--

CREATE TABLE `ponente_x_evento` (
  `idponente_x_evento` int(11) NOT NULL,
  `ponente_idponente` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `tema_idtema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_venta`
--

CREATE TABLE `puntos_venta` (
  `idpuntos_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_venta_x_evento`
--

CREATE TABLE `puntos_venta_x_evento` (
  `idpuntos_venta_x_evento` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `puntos_venta_idpuntos_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_patrocinio`
--

CREATE TABLE `solicitud_patrocinio` (
  `idsolicitud_patrocinio` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `idtema` int(11) NOT NULL,
  `tipo_evento_idtipo_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entrada`
--

CREATE TABLE `tipo_entrada` (
  `idtipo_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evento`
--

CREATE TABLE `tipo_evento` (
  `idtipo_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evento_x_evento`
--

CREATE TABLE `tipo_evento_x_evento` (
  `idtipo_evento_x_evento` int(11) NOT NULL,
  `evento_idevento` int(11) NOT NULL,
  `tipo_entrada_idtipo_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gasto`
--

CREATE TABLE `tipo_gasto` (
  `idtipo_gasto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_patrocinio`
--

CREATE TABLE `tipo_patrocinio` (
  `idtipo_patrocinio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD PRIMARY KEY (`idbeneficiario`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idciudad`),
  ADD KEY `fk_ciudad_pais_idx` (`pais_idpais`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idevento`),
  ADD KEY `fk_evento_localidad1_idx` (`localidad_idlocalidad`),
  ADD KEY `fk_evento_tipo_evento1_idx` (`tipo_evento_idtipo_evento`),
  ADD KEY `fk_evento_organizador1_idx` (`organizador_idorganizador`),
  ADD KEY `fk_evento_beneficiario1_idx` (`beneficiario_idbeneficiario`);

--
-- Indices de la tabla `fotos_evento`
--
ALTER TABLE `fotos_evento`
  ADD PRIMARY KEY (`idfotos_evento`),
  ADD KEY `fk_fotos_evento_evento1_idx` (`evento_idevento`);

--
-- Indices de la tabla `gasto_x_evento`
--
ALTER TABLE `gasto_x_evento`
  ADD PRIMARY KEY (`idgasto_x_evento`,`evento_idevento`),
  ADD KEY `fk_gasto_x_evento_evento1_idx` (`evento_idevento1`),
  ADD KEY `fk_gasto_x_evento_proveedor1_idx` (`proveedor_idproveedor`),
  ADD KEY `fk_gasto_x_evento_tipo_gasto1_idx` (`tipo_gasto_idtipo_gasto`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD KEY `fk_localidad_ciudad1_idx` (`ciudad_idciudad`);

--
-- Indices de la tabla `organizador`
--
ALTER TABLE `organizador`
  ADD PRIMARY KEY (`idorganizador`);

--
-- Indices de la tabla `pagos_externos`
--
ALTER TABLE `pagos_externos`
  ADD PRIMARY KEY (`idpagos_externos`),
  ADD KEY `fk_pagos_externos_evento1_idx` (`evento_idevento`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idpais`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`idparticipante`);

--
-- Indices de la tabla `participante_x_evento`
--
ALTER TABLE `participante_x_evento`
  ADD PRIMARY KEY (`idparticipante_x_evento`),
  ADD KEY `fk_participante_x_evento_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_participante_x_evento_participante1_idx` (`participante_idparticipante`);

--
-- Indices de la tabla `patrocinante`
--
ALTER TABLE `patrocinante`
  ADD PRIMARY KEY (`idpatrocinante`);

--
-- Indices de la tabla `patrocinante_x_evento`
--
ALTER TABLE `patrocinante_x_evento`
  ADD PRIMARY KEY (`idpatrocinante_x_evento`),
  ADD KEY `fk_patrocinante_x_evento_patrocinante1_idx` (`patrocinante_idpatrocinante`),
  ADD KEY `fk_patrocinante_x_evento_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_patrocinante_x_evento_tipo_patrocinio1_idx` (`tipo_patrocinio_idtipo_patrocinio`);

--
-- Indices de la tabla `ponente`
--
ALTER TABLE `ponente`
  ADD PRIMARY KEY (`idponente`),
  ADD KEY `fk_ponente_ciudad1_idx` (`ciudad_idciudad`);

--
-- Indices de la tabla `ponente_x_evento`
--
ALTER TABLE `ponente_x_evento`
  ADD PRIMARY KEY (`idponente_x_evento`),
  ADD KEY `fk_ponente_x_evento_ponente1_idx` (`ponente_idponente`),
  ADD KEY `fk_ponente_x_evento_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_ponente_x_evento_tema1_idx` (`tema_idtema`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `puntos_venta`
--
ALTER TABLE `puntos_venta`
  ADD PRIMARY KEY (`idpuntos_venta`);

--
-- Indices de la tabla `puntos_venta_x_evento`
--
ALTER TABLE `puntos_venta_x_evento`
  ADD PRIMARY KEY (`idpuntos_venta_x_evento`),
  ADD KEY `fk_puntos_venta_x_evento_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_puntos_venta_x_evento_puntos_venta1_idx` (`puntos_venta_idpuntos_venta`);

--
-- Indices de la tabla `solicitud_patrocinio`
--
ALTER TABLE `solicitud_patrocinio`
  ADD PRIMARY KEY (`idsolicitud_patrocinio`),
  ADD KEY `fk_solicitud_patrocinio_evento1_idx` (`evento_idevento`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idtema`),
  ADD KEY `fk_tema_tipo_evento1_idx` (`tipo_evento_idtipo_evento`);

--
-- Indices de la tabla `tipo_entrada`
--
ALTER TABLE `tipo_entrada`
  ADD PRIMARY KEY (`idtipo_entrada`);

--
-- Indices de la tabla `tipo_evento`
--
ALTER TABLE `tipo_evento`
  ADD PRIMARY KEY (`idtipo_evento`);

--
-- Indices de la tabla `tipo_evento_x_evento`
--
ALTER TABLE `tipo_evento_x_evento`
  ADD PRIMARY KEY (`idtipo_evento_x_evento`),
  ADD KEY `fk_tipo_evento_x_evento_evento1_idx` (`evento_idevento`),
  ADD KEY `fk_tipo_evento_x_evento_tipo_entrada1_idx` (`tipo_entrada_idtipo_entrada`);

--
-- Indices de la tabla `tipo_gasto`
--
ALTER TABLE `tipo_gasto`
  ADD PRIMARY KEY (`idtipo_gasto`);

--
-- Indices de la tabla `tipo_patrocinio`
--
ALTER TABLE `tipo_patrocinio`
  ADD PRIMARY KEY (`idtipo_patrocinio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `fk_evento_beneficiario1` FOREIGN KEY (`beneficiario_idbeneficiario`) REFERENCES `beneficiario` (`idbeneficiario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_evento_localidad1` FOREIGN KEY (`localidad_idlocalidad`) REFERENCES `localidad` (`idlocalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_evento_organizador1` FOREIGN KEY (`organizador_idorganizador`) REFERENCES `organizador` (`idorganizador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_evento_tipo_evento1` FOREIGN KEY (`tipo_evento_idtipo_evento`) REFERENCES `tipo_evento` (`idtipo_evento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fotos_evento`
--
ALTER TABLE `fotos_evento`
  ADD CONSTRAINT `fk_fotos_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gasto_x_evento`
--
ALTER TABLE `gasto_x_evento`
  ADD CONSTRAINT `fk_gasto_x_evento_evento1` FOREIGN KEY (`evento_idevento1`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gasto_x_evento_proveedor1` FOREIGN KEY (`proveedor_idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gasto_x_evento_tipo_gasto1` FOREIGN KEY (`tipo_gasto_idtipo_gasto`) REFERENCES `tipo_gasto` (`idtipo_gasto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `fk_localidad_ciudad1` FOREIGN KEY (`ciudad_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos_externos`
--
ALTER TABLE `pagos_externos`
  ADD CONSTRAINT `fk_pagos_externos_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participante_x_evento`
--
ALTER TABLE `participante_x_evento`
  ADD CONSTRAINT `fk_participante_x_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_participante_x_evento_participante1` FOREIGN KEY (`participante_idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `patrocinante_x_evento`
--
ALTER TABLE `patrocinante_x_evento`
  ADD CONSTRAINT `fk_patrocinante_x_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_patrocinante_x_evento_patrocinante1` FOREIGN KEY (`patrocinante_idpatrocinante`) REFERENCES `patrocinante` (`idpatrocinante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_patrocinante_x_evento_tipo_patrocinio1` FOREIGN KEY (`tipo_patrocinio_idtipo_patrocinio`) REFERENCES `tipo_patrocinio` (`idtipo_patrocinio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ponente`
--
ALTER TABLE `ponente`
  ADD CONSTRAINT `fk_ponente_ciudad1` FOREIGN KEY (`ciudad_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ponente_x_evento`
--
ALTER TABLE `ponente_x_evento`
  ADD CONSTRAINT `fk_ponente_x_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ponente_x_evento_ponente1` FOREIGN KEY (`ponente_idponente`) REFERENCES `ponente` (`idponente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ponente_x_evento_tema1` FOREIGN KEY (`tema_idtema`) REFERENCES `tema` (`idtema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `puntos_venta_x_evento`
--
ALTER TABLE `puntos_venta_x_evento`
  ADD CONSTRAINT `fk_puntos_venta_x_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_puntos_venta_x_evento_puntos_venta1` FOREIGN KEY (`puntos_venta_idpuntos_venta`) REFERENCES `puntos_venta` (`idpuntos_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud_patrocinio`
--
ALTER TABLE `solicitud_patrocinio`
  ADD CONSTRAINT `fk_solicitud_patrocinio_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `fk_tema_tipo_evento1` FOREIGN KEY (`tipo_evento_idtipo_evento`) REFERENCES `tipo_evento` (`idtipo_evento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_evento_x_evento`
--
ALTER TABLE `tipo_evento_x_evento`
  ADD CONSTRAINT `fk_tipo_evento_x_evento_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_evento_x_evento_tipo_entrada1` FOREIGN KEY (`tipo_entrada_idtipo_entrada`) REFERENCES `tipo_entrada` (`idtipo_entrada`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
