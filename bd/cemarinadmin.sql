-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2022 a las 03:12:41
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cemarinadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriainvestigador`
--

CREATE TABLE `categoriainvestigador` (
  `categoriainvestigador_id` int(11) NOT NULL,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `configuracion_id` int(11) NOT NULL,
  `razon_social` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `domicilio_comercial` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `cuit` bigint(20) DEFAULT NULL,
  `ingresos_brutos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_actividad` date DEFAULT NULL,
  `punto_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`configuracion_id`, `razon_social`, `domicilio_comercial`, `cuit`, `ingresos_brutos`, `fecha_inicio_actividad`, `punto_venta`) VALUES
(1, 'VALDEZ JULIO', 'España 333 - La Rioja - La Rioja', 20280565424, '000-044426-6', '2018-04-01', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracionmenu`
--

CREATE TABLE `configuracionmenu` (
  `configuracionmenu_id` int(11) NOT NULL,
  `denominacion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracionmenu`
--

INSERT INTO `configuracionmenu` (`configuracionmenu_id`, `denominacion`, `nivel`) VALUES
(1, 'DESARROLLADOR', 9),
(2, 'ADMINISTRADOR', 3),
(3, 'FACTURADOR', 1),
(4, 'SUPERVISOR', 2),
(5, 'VENDEDOR', 1),
(6, 'LEGUIZAMON CLAUDIO', 1),
(7, 'MARASSO FERNANDO', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infocontacto`
--

CREATE TABLE `infocontacto` (
  `infocontacto_id` int(11) NOT NULL,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `submenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`item_id`, `denominacion`, `detalle`, `url`, `submenu`) VALUES
(1, 'Panel', 'Menú', '/menu/panel', 8),
(2, 'Agregar Ítems', 'Agregar Ítems', '/menu/agregar', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemconfiguracionmenu`
--

CREATE TABLE `itemconfiguracionmenu` (
  `itemconfiguracionmenu_id` int(11) NOT NULL,
  `compuesto` int(11) DEFAULT NULL,
  `compositor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `itemconfiguracionmenu`
--

INSERT INTO `itemconfiguracionmenu` (`itemconfiguracionmenu_id`, `compuesto`, `compositor`) VALUES
(153, 1, 1),
(154, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menu_id`, `denominacion`, `icon`, `url`) VALUES
(4, 'CONFIGURACIÓN', 'fa-cogs', '#'),
(7, 'PROVEEDORES', 'fa-briefcase', '#'),
(8, 'PRODUCTOS', 'fa-archive', '#'),
(9, 'CLIENTES', 'fa-briefcase', '#'),
(10, 'VENTAS', 'fa-usd', '#'),
(11, 'OTROS', 'fa-cogs', '#'),
(12, 'VENDEDORES', 'fa-briefcase', '#'),
(13, 'FLETES', 'fa-truck', '#'),
(14, 'INGRESOS', 'fa-archive', '#'),
(15, 'GASTOS', 'fa-usd', '#'),
(16, 'VEHICULOS', 'fa-car', '#'),
(17, 'EMPLEADOS', 'fa-users', '#');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu`
--

CREATE TABLE `submenu` (
  `submenu_id` int(11) NOT NULL,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `submenu`
--

INSERT INTO `submenu` (`submenu_id`, `denominacion`, `icon`, `url`, `detalle`, `menu`) VALUES
(8, 'Menú', 'fa-bars', '#', '', 4),
(9, 'Usuarios', 'fa-users', '/usuario/agregar', '', 4),
(22, 'Agregar', 'fa-plus-circle', '/proveedor/agregar', '', 7),
(24, 'Agregar Producto', 'fa-plus-circle', '/producto/agregar', '', 8),
(27, 'Agregar', 'fa-plus-circle', '/cliente/agregar', '', 9),
(28, 'Buscar Producto', 'fa-search', '/producto/buscar_producto', '', 8),
(29, 'Marcas', 'fa-archive', '/productomarca/panel', '', 8),
(30, 'Rubros', 'fa-archive', '/productocategoria/panel', '', 8),
(31, 'Unidades de Medida', 'fa-archive', '/productounidad/panel', '', 8),
(32, 'Configuración', 'fa-cog', '/configuracion/panel', '', 4),
(33, 'Ingresar Productos', 'fa-level-up', '/ingreso/ingresar', '', 14),
(34, 'Condición IVA', 'fa-cog', '/condicioniva/panel', '', 11),
(35, 'Condición de Pago', 'fa-cog', '/condicionpago/panel', '', 11),
(36, 'Listar', 'fa-table', '/producto/listar', '', 8),
(37, 'Listar', 'fa-table', '/cliente/listar', '', 9),
(38, 'Listar', 'fa-table', '/proveedor/listar', '', 7),
(39, 'Listar Ingresos', 'fa-table', '/ingreso/listar', '', 14),
(40, 'Panel', 'fa-cube', '/stock/panel', '', 10),
(41, 'Zonas de Venta', 'fa-cog', '/frecuenciaventa/panel', '', 11),
(43, 'Listar', 'fa-table', '/vendedor/listar', '', 12),
(44, 'Agregar', 'fa-plus-circle', '/vendedor/agregar', '', 12),
(45, 'Condición Fiscal', 'fa-cog', '/condicionfiscal/panel', '', 11),
(46, 'Buscar Cliente', 'fa-search', '/cliente/panel', '', 9),
(47, 'Buscar Proveedor', 'fa-search', '/proveedor/panel', '', 7),
(48, 'Buscar Vendedor', 'fa-search', '/vendedor/panel', '', 12),
(49, 'Tipos de Factura', 'fa-cog', '/tipofactura/panel', '', 11),
(50, 'Registrar Venta', 'fa-usd', '/egreso/egresar', '', 10),
(51, 'Listar Ventas', 'fa-table', '/egreso/listar', '', 10),
(52, 'Listar', 'fa-table', '/flete/listar', '', 13),
(53, 'Buscar flete', 'fa-search', '/flete/panel', '', 13),
(54, 'Agregar Flete', 'fa-plus-circle', '/flete/agregar', '', 13),
(55, 'Cta Corriente Cliente', 'fa-table', '/cuentacorrientecliente/panel', '', 10),
(56, 'Cargar Stock Inicial', 'fa-plus-circle', '/stock/stock_inicial/1', '', 14),
(57, 'Entregas Pendientes', 'fa-truck', '/egreso/entregas_pendientes/1', '', 10),
(58, 'Lista de Precio', 'fa-usd', '/producto/lista_precio', '', 8),
(59, 'Ajustar Stock', 'fa-cogs', '/stock/ajustar_stock', '', 14),
(60, 'Cta Corriente Proveedor', 'fa-table', '/cuentacorrienteproveedor/panel', '', 7),
(61, 'Listar Notas Crédito', 'fa-table', '/notacredito/listar', '', 10),
(62, 'Gastos', 'fa-cog', '/gasto/panel', '', 15),
(63, 'Categoria de Gasto', 'fa-cog', '/gastocategoria/panel', '', 15),
(64, 'Estadísticas', 'fa-bar-chart', '/vendedor/estadisticas', '', 12),
(65, 'Ocultos', 'fa-eye-slash', '/cliente/ocultos', '', 9),
(66, 'Ocultos', 'fa-eye-slash', '/producto/ocultos', '', 8),
(67, 'Ocultos', 'fa-eye-slash', '/proveedor/ocultos', '', 7),
(68, 'Presupuestos', 'fa-file-text', '/presupuesto/listar', '', 10),
(69, 'Lista de Precio', 'fa-usd', '/producto/vdr_lista_precio', '', 8),
(70, 'Inventario', 'fa-cube', '/stock/vdr_stock', '', 8),
(71, 'Cuentas Corrientes', 'fa-table', '/cuentacorrientecliente/vdr_panel', '', 9),
(72, 'Pedidos', 'fa-file-text', '/pedidovendedor/panel', '', 10),
(73, 'Notas de Credito', 'fa-usd', '/proveedor/creditos', '', 7),
(74, 'Agregar Lista de Precio', 'fa-plus', '/listaprecio/panel', '', 8),
(75, 'Cobranzas', 'fa-usd', '/entregaclientedetalle/panel', '', 10),
(76, 'Panel', 'fa-cube', '/vehiculo/panel', '', 16),
(77, 'Marcas', 'fa-cog', '/vehiculomarca/panel', '', 16),
(78, 'Modelos', 'fa-cog', '/vehiculomodelo/panel', '', 16),
(79, 'Panel', 'fa-cube', '/empleado/listar', '', 17),
(80, 'Ocultos', 'fa-eye-slash', '/empleado/listar_ocultos', '', 17),
(81, 'Salario', 'fa-file-text-o', '/salario/listar', '', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenuconfiguracionmenu`
--

CREATE TABLE `submenuconfiguracionmenu` (
  `submenuconfiguracionmenu_id` int(11) NOT NULL,
  `compuesto` int(11) DEFAULT NULL,
  `compositor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `submenuconfiguracionmenu`
--

INSERT INTO `submenuconfiguracionmenu` (`submenuconfiguracionmenu_id`, `compuesto`, `compositor`) VALUES
(7032, 5, 71),
(7033, 5, 69),
(7034, 5, 70),
(7035, 5, 72),
(8172, 6, 69),
(8173, 4, 51),
(8174, 4, 55),
(8175, 4, 57),
(8176, 4, 61),
(8177, 4, 39),
(8178, 4, 36),
(8179, 4, 58),
(8180, 4, 37),
(8181, 4, 38),
(8182, 4, 60),
(8183, 4, 43),
(8184, 4, 64),
(8185, 4, 52),
(8186, 4, 27),
(8187, 4, 50),
(8188, 4, 65),
(8189, 4, 72),
(8190, 4, 75),
(9722, 3, 50),
(9723, 3, 51),
(9724, 3, 55),
(9725, 3, 57),
(9726, 3, 61),
(9727, 3, 37),
(9728, 3, 27),
(9729, 3, 72),
(9730, 3, 69),
(10757, 2, 51),
(10758, 2, 50),
(10759, 2, 55),
(10760, 2, 39),
(10761, 2, 33),
(10762, 2, 36),
(10763, 2, 24),
(10764, 2, 37),
(10765, 2, 27),
(10766, 2, 38),
(10767, 2, 22),
(10768, 2, 43),
(10769, 2, 44),
(10770, 2, 52),
(10771, 2, 54),
(10772, 2, 59),
(10773, 2, 56),
(10774, 2, 60),
(10775, 2, 64),
(10776, 2, 65),
(10777, 2, 68),
(10778, 2, 61),
(10779, 2, 57),
(10780, 2, 72),
(10781, 2, 73),
(10782, 2, 67),
(10783, 2, 74),
(10784, 2, 58),
(10785, 2, 66),
(10786, 2, 29),
(10787, 2, 30),
(10788, 2, 31),
(10789, 2, 75),
(10790, 2, 76),
(10791, 2, 77),
(10792, 2, 78),
(10793, 2, 62),
(10794, 2, 63),
(10795, 2, 79),
(10796, 2, 80),
(10797, 2, 32),
(10798, 2, 9),
(10799, 2, 81),
(10800, 1, 51),
(10801, 1, 39),
(10802, 1, 33),
(10803, 1, 36),
(10804, 1, 24),
(10805, 1, 37),
(10806, 1, 27),
(10807, 1, 38),
(10808, 1, 22),
(10809, 1, 43),
(10810, 1, 44),
(10811, 1, 52),
(10812, 1, 54),
(10813, 1, 59),
(10814, 1, 56),
(10815, 1, 60),
(10816, 1, 62),
(10817, 1, 63),
(10818, 1, 64),
(10819, 1, 65),
(10820, 1, 61),
(10821, 1, 55),
(10822, 1, 72),
(10823, 1, 68),
(10824, 1, 57),
(10825, 1, 50),
(10826, 1, 73),
(10827, 1, 67),
(10828, 1, 74),
(10829, 1, 58),
(10830, 1, 70),
(10831, 1, 66),
(10832, 1, 29),
(10833, 1, 30),
(10834, 1, 31),
(10835, 1, 75),
(10836, 1, 76),
(10837, 1, 77),
(10838, 1, 78),
(10839, 1, 79),
(10840, 1, 80),
(10841, 1, 45),
(10842, 1, 34),
(10843, 1, 35),
(10844, 1, 49),
(10845, 1, 35),
(10846, 1, 32),
(10847, 1, 8),
(10848, 1, 9),
(10849, 1, 81),
(10962, 7, 50),
(10963, 7, 51),
(10964, 7, 55),
(10965, 7, 57),
(10966, 7, 61),
(10967, 7, 72),
(10968, 7, 75),
(10969, 7, 39),
(10970, 7, 59),
(10971, 7, 36),
(10972, 7, 58),
(10973, 7, 27),
(10974, 7, 37),
(10975, 7, 65),
(10976, 7, 43),
(10977, 7, 64),
(10978, 7, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `universidad_id` int(11) NOT NULL,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidadarea`
--

CREATE TABLE `universidadarea` (
  `universidadarea_id` int(11) NOT NULL,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidadfacultad`
--

CREATE TABLE `universidadfacultad` (
  `universidadfacultad_id` int(11) NOT NULL,
  `denominacion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `denominacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` int(1) DEFAULT NULL,
  `usuariodetalle` int(11) DEFAULT NULL,
  `configuracionmenu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `denominacion`, `nivel`, `usuariodetalle`, `configuracionmenu`) VALUES
(1, 'admin', 3, 1, 2),
(2, 'desarrollador', 9, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariodetalle`
--

CREATE TABLE `usuariodetalle` (
  `usuariodetalle_id` int(11) NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correoelectronico` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuariodetalle`
--

INSERT INTO `usuariodetalle` (`usuariodetalle_id`, `apellido`, `nombre`, `correoelectronico`, `token`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '4850fc35306cb8590e00564f5462e1bb'),
(2, 'Desarrollador', 'Admin', 'infozamba@gmail.com', '7ea60ee02f2b59bc8841b2b481c11d68');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriainvestigador`
--
ALTER TABLE `categoriainvestigador`
  ADD PRIMARY KEY (`categoriainvestigador_id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`configuracion_id`);

--
-- Indices de la tabla `configuracionmenu`
--
ALTER TABLE `configuracionmenu`
  ADD PRIMARY KEY (`configuracionmenu_id`);

--
-- Indices de la tabla `infocontacto`
--
ALTER TABLE `infocontacto`
  ADD PRIMARY KEY (`infocontacto_id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `submenu` (`submenu`);

--
-- Indices de la tabla `itemconfiguracionmenu`
--
ALTER TABLE `itemconfiguracionmenu`
  ADD PRIMARY KEY (`itemconfiguracionmenu_id`),
  ADD KEY `compuesto` (`compuesto`),
  ADD KEY `compositor` (`compositor`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`submenu_id`),
  ADD KEY `submenu` (`menu`);

--
-- Indices de la tabla `submenuconfiguracionmenu`
--
ALTER TABLE `submenuconfiguracionmenu`
  ADD PRIMARY KEY (`submenuconfiguracionmenu_id`),
  ADD KEY `compuesto` (`compuesto`),
  ADD KEY `compositor` (`compositor`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`universidad_id`);

--
-- Indices de la tabla `universidadarea`
--
ALTER TABLE `universidadarea`
  ADD PRIMARY KEY (`universidadarea_id`);

--
-- Indices de la tabla `universidadfacultad`
--
ALTER TABLE `universidadfacultad`
  ADD PRIMARY KEY (`universidadfacultad_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `usuariodetalle` (`usuariodetalle`),
  ADD KEY `configuracionmenu` (`configuracionmenu`);

--
-- Indices de la tabla `usuariodetalle`
--
ALTER TABLE `usuariodetalle`
  ADD PRIMARY KEY (`usuariodetalle_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriainvestigador`
--
ALTER TABLE `categoriainvestigador`
  MODIFY `categoriainvestigador_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `configuracion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `configuracionmenu`
--
ALTER TABLE `configuracionmenu`
  MODIFY `configuracionmenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `infocontacto`
--
ALTER TABLE `infocontacto`
  MODIFY `infocontacto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6397;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `itemconfiguracionmenu`
--
ALTER TABLE `itemconfiguracionmenu`
  MODIFY `itemconfiguracionmenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `submenu`
--
ALTER TABLE `submenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `submenuconfiguracionmenu`
--
ALTER TABLE `submenuconfiguracionmenu`
  MODIFY `submenuconfiguracionmenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10979;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `universidad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universidadarea`
--
ALTER TABLE `universidadarea`
  MODIFY `universidadarea_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universidadfacultad`
--
ALTER TABLE `universidadfacultad`
  MODIFY `universidadfacultad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuariodetalle`
--
ALTER TABLE `usuariodetalle`
  MODIFY `usuariodetalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`submenu`) REFERENCES `submenu` (`submenu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `itemconfiguracionmenu`
--
ALTER TABLE `itemconfiguracionmenu`
  ADD CONSTRAINT `itemconfiguracionmenu_ibfk_1` FOREIGN KEY (`compuesto`) REFERENCES `configuracionmenu` (`configuracionmenu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `itemconfiguracionmenu_ibfk_2` FOREIGN KEY (`compositor`) REFERENCES `item` (`item_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `submenuconfiguracionmenu`
--
ALTER TABLE `submenuconfiguracionmenu`
  ADD CONSTRAINT `submenuconfiguracionmenu_ibfk_1` FOREIGN KEY (`compuesto`) REFERENCES `configuracionmenu` (`configuracionmenu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submenuconfiguracionmenu_ibfk_2` FOREIGN KEY (`compositor`) REFERENCES `submenu` (`submenu_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuariodetalle`) REFERENCES `usuariodetalle` (`usuariodetalle_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
