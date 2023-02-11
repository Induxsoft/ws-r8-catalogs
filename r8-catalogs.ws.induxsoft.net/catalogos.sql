-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.52 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------



-- Volcando datos para la tabla catalogos.agente: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.almacen


-- Volcando datos para la tabla catalogos.almacen: ~2 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.banco


-- Volcando datos para la tabla catalogos.banco: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.caja


-- Volcando datos para la tabla catalogos.caja: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.cajero


-- Volcando datos para la tabla catalogos.cajero: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.categoria


-- Volcando datos para la tabla catalogos.categoria: ~11 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.cconsumo


-- Volcando datos para la tabla catalogos.cconsumo: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.cfgimpuesto

-- Volcando estructura para tabla catalogos.ciudad


-- Volcando datos para la tabla catalogos.ciudad: ~2,691 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.cliente


-- Volcando datos para la tabla catalogos.cliente: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.contacto


-- Volcando datos para la tabla catalogos.contacto: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.cpoliza
CREATE TABLE IF NOT EXISTS `cpoliza` (
  `Sys_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_TimeStamp` datetime NOT NULL,
  `Sys_GUID` varchar(32) NOT NULL,
  `Sys_DTCreated` datetime DEFAULT NULL,
  `Sys_User` varchar(5) DEFAULT NULL,
  `Sys_LastUser` varchar(5) DEFAULT NULL,
  `Sys_Exported` tinyint(1) DEFAULT NULL,
  `Sys_DTExported` datetime DEFAULT NULL,
  `Sys_Info` varchar(32) DEFAULT NULL,
  `Aplicada` tinyint(1) DEFAULT NULL,
  `Auditada` tinyint(1) DEFAULT NULL,
  `Concepto` varchar(255) NOT NULL,
  `Debe` decimal(18,8) DEFAULT NULL,
  `Fecha` date NOT NULL,
  `Haber` decimal(18,8) DEFAULT NULL,
  `Notas` varchar(32000) DEFAULT NULL,
  `Periodo` int(11) DEFAULT NULL,
  `Referencia` varchar(35) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `sys_recver` int(11) DEFAULT '0',
  `sys_deleted` bit(1) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sys_PK`),
  UNIQUE KEY `Sys_GUID` (`Sys_GUID`),
  UNIQUE KEY `Referencia` (`Referencia`),
  KEY `RLCPolizaTipo_cTiposPolizasID` (`Tipo`),
  CONSTRAINT `RLCPolizaTipo_cTiposPolizasID` FOREIGN KEY (`Tipo`) REFERENCES `ctipospolizas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla catalogos.cpoliza: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.ctipospolizas


-- Volcando datos para la tabla catalogos.ctipospolizas: ~3 rows (aproximadamente)


-- Volcando estructura para tabla catalogos.departamento


-- Volcando datos para la tabla catalogos.departamento: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.divisa


-- Volcando datos para la tabla catalogos.divisa: ~185 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.edoprov


-- Volcando datos para la tabla catalogos.edoprov: ~34 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.linea


-- Volcando datos para la tabla catalogos.linea: ~1 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.marca


-- Volcando datos para la tabla catalogos.marca: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.pais


-- Volcando datos para la tabla catalogos.pais: ~3 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.porteador


-- Volcando datos para la tabla catalogos.porteador: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `Sys_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_TimeStamp` datetime NOT NULL,
  `Sys_GUID` varchar(32) NOT NULL,
  `Sys_DTCreated` datetime DEFAULT NULL,
  `Sys_User` varchar(5) DEFAULT NULL,
  `Sys_LastUser` varchar(5) DEFAULT NULL,
  `Sys_Exported` tinyint(1) DEFAULT NULL,
  `Sys_DTExported` datetime DEFAULT NULL,
  `Sys_Info` varchar(32) DEFAULT NULL,
  `Adicional` tinyint(1) DEFAULT NULL,
  `CDirecto` decimal(18,8) DEFAULT NULL,
  `CIndirecto` decimal(18,8) DEFAULT NULL,
  `CManoObra` decimal(18,8) DEFAULT NULL,
  `CMaquinaria` decimal(18,8) DEFAULT NULL,
  `CodBar1` varchar(35) DEFAULT NULL,
  `CodBar2` varchar(35) DEFAULT NULL,
  `CodBar3` varchar(35) DEFAULT NULL,
  `Codigo` varchar(35) NOT NULL,
  `Color` int(11) DEFAULT NULL,
  `Comision` decimal(18,8) DEFAULT NULL,
  `Comision1` decimal(18,8) DEFAULT NULL,
  `Comision2` decimal(18,8) DEFAULT NULL,
  `Comision3` decimal(18,8) DEFAULT NULL,
  `Comision4` decimal(18,8) DEFAULT NULL,
  `Comision5` decimal(18,8) DEFAULT NULL,
  `CostoPromedio` decimal(18,8) DEFAULT NULL,
  `CostoUltimo` decimal(18,8) DEFAULT NULL,
  `Data1` varchar(500) DEFAULT NULL,
  `Data2` varchar(500) DEFAULT NULL,
  `Data3` varchar(500) DEFAULT NULL,
  `Desc2` decimal(18,8) DEFAULT NULL,
  `Desc3` decimal(18,8) DEFAULT NULL,
  `Desc4` decimal(18,8) DEFAULT NULL,
  `Desc5` decimal(18,8) DEFAULT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `DiasEntrega` int(11) DEFAULT NULL,
  `Existencia` decimal(18,8) DEFAULT NULL,
  `FactorB` decimal(18,8) DEFAULT NULL,
  `FactorC` decimal(18,8) DEFAULT NULL,
  `FactorD` decimal(18,8) DEFAULT NULL,
  `FactorE` decimal(18,8) DEFAULT NULL,
  `flagLimites` tinyint(1) DEFAULT NULL,
  `flagUtilidad` tinyint(1) DEFAULT NULL,
  `FormaComision` int(11) DEFAULT NULL,
  `IClase` int(11) NOT NULL,
  `ITipo` int(11) NOT NULL,
  `Lim2` decimal(18,8) DEFAULT NULL,
  `Lim3` decimal(18,8) DEFAULT NULL,
  `Lim4` decimal(18,8) DEFAULT NULL,
  `Lim5` decimal(18,8) DEFAULT NULL,
  `Maximo` decimal(18,8) DEFAULT NULL,
  `MetodoValuacion` int(11) NOT NULL,
  `Minimo` decimal(18,8) DEFAULT NULL,
  `Notas` varchar(4096) DEFAULT NULL,
  `PAdic1` decimal(18,8) DEFAULT NULL,
  `PAdic2` decimal(18,8) DEFAULT NULL,
  `PAdic3` decimal(18,8) DEFAULT NULL,
  `PAdic4` decimal(18,8) DEFAULT NULL,
  `PAdic5` decimal(18,8) DEFAULT NULL,
  `PPuntos` decimal(18,8) DEFAULT NULL,
  `Precio1` decimal(18,8) DEFAULT NULL,
  `Precio2` decimal(18,8) DEFAULT NULL,
  `Precio3` decimal(18,8) DEFAULT NULL,
  `Precio4` decimal(18,8) DEFAULT NULL,
  `Precio5` decimal(18,8) DEFAULT NULL,
  `PuntoRO` decimal(18,8) DEFAULT NULL,
  `ReqLote` tinyint(1) NOT NULL,
  `ReqSerie` tinyint(1) NOT NULL,
  `Saldo` decimal(18,8) DEFAULT NULL,
  `TipoComision` int(11) DEFAULT NULL,
  `Unidad` varchar(10) NOT NULL,
  `UnidadB` varchar(10) DEFAULT NULL,
  `UnidadC` varchar(10) DEFAULT NULL,
  `UnidadD` varchar(10) DEFAULT NULL,
  `UnidadE` varchar(10) DEFAULT NULL,
  `Util1` decimal(18,8) DEFAULT NULL,
  `Util2` decimal(18,8) DEFAULT NULL,
  `Util3` decimal(18,8) DEFAULT NULL,
  `Util4` decimal(18,8) DEFAULT NULL,
  `Util5` decimal(18,8) DEFAULT NULL,
  `UtilMin` decimal(18,8) DEFAULT NULL,
  `VincularData` tinyint(1) DEFAULT NULL,
  `Visible` tinyint(1) DEFAULT NULL,
  `IDepartamento` int(11) DEFAULT NULL,
  `IDivisa` int(11) NOT NULL,
  `ILinea` int(11) NOT NULL,
  `IMarca` int(11) DEFAULT NULL,
  `Impuestos` int(11) NOT NULL,
  `IVariables` int(11) DEFAULT NULL,
  `Proveedor1` int(11) DEFAULT NULL,
  `Proveedor2` int(11) DEFAULT NULL,
  `Proveedor3` int(11) DEFAULT NULL,
  `Uf_Sys_Baja` bit(1) DEFAULT NULL,
  `sys_recver` int(11) DEFAULT '0',
  `sys_deleted` bit(1) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT NULL,
  `uf_Complemento` tinyint(1) DEFAULT NULL,
  `Precio106` decimal(18,8) DEFAULT NULL,
  `Precio107` decimal(18,8) DEFAULT NULL,
  `Precio108` decimal(18,8) DEFAULT NULL,
  `Precio109` decimal(18,8) DEFAULT NULL,
  `Precio110` decimal(18,8) DEFAULT NULL,
  `Precio111` decimal(18,8) DEFAULT NULL,
  `Precio112` decimal(18,8) DEFAULT NULL,
  `Precio113` decimal(18,8) DEFAULT NULL,
  `Precio114` decimal(18,8) DEFAULT NULL,
  `Precio115` decimal(18,8) DEFAULT NULL,
  `Precio116` decimal(18,8) DEFAULT NULL,
  `Precio117` decimal(18,8) DEFAULT NULL,
  `Precio118` decimal(18,8) DEFAULT NULL,
  `Precio119` decimal(18,8) DEFAULT NULL,
  `Precio120` decimal(18,8) DEFAULT NULL,
  `Util106` decimal(18,8) DEFAULT NULL,
  `Util107` decimal(18,8) DEFAULT NULL,
  `Util108` decimal(18,8) DEFAULT NULL,
  `Util109` decimal(18,8) DEFAULT NULL,
  `Util110` decimal(18,8) DEFAULT NULL,
  `Util111` decimal(18,8) DEFAULT NULL,
  `Util112` decimal(18,8) DEFAULT NULL,
  `Util113` decimal(18,8) DEFAULT NULL,
  `Util114` decimal(18,8) DEFAULT NULL,
  `Util115` decimal(18,8) DEFAULT NULL,
  `Util116` decimal(18,8) DEFAULT NULL,
  `Util117` decimal(18,8) DEFAULT NULL,
  `Util118` decimal(18,8) DEFAULT NULL,
  `Util119` decimal(18,8) DEFAULT NULL,
  `Util120` decimal(18,8) DEFAULT NULL,
  `uf_CodigoParaProveedor1` varchar(50) DEFAULT NULL,
  `uf_CodigoParaProveedor2` varchar(50) DEFAULT NULL,
  `uf_CodigoParaProveedor3` varchar(50) DEFAULT NULL,
  `uf_pdv` decimal(18,8) DEFAULT NULL,
  `uf_dv_DiasReOrden` int(11) DEFAULT NULL,
  `uf_dv_InventarioSeguridadDias` int(11) DEFAULT NULL,
  `uf_GrupoSimilares` int(11) DEFAULT NULL,
  `uf_fechainhabilitacion` datetime DEFAULT NULL,
  `uf_inhabilitado` bit(1) DEFAULT b'0',
  `uf_sat_proser` varchar(50) NOT NULL DEFAULT '01010101',
  `uf_sat_uniproser` varchar(50) NOT NULL DEFAULT 'H87',
  PRIMARY KEY (`Sys_PK`),
  UNIQUE KEY `Sys_GUID` (`Sys_GUID`),
  UNIQUE KEY `Codigo` (`Codigo`),
  UNIQUE KEY `Descripcion` (`Descripcion`),
  UNIQUE KEY `CodBar1` (`CodBar1`),
  UNIQUE KEY `CodBar2` (`CodBar2`),
  UNIQUE KEY `CodBar3` (`CodBar3`),
  KEY `RLProductoIDepartamento_DepartamentoSys_PK` (`IDepartamento`),
  KEY `RLProductoIDivisa_DivisaSys_PK` (`IDivisa`),
  KEY `RLProductoILinea_LineaSys_PK` (`ILinea`),
  KEY `RLProductoIMarca_MarcaSys_PK` (`IMarca`),
  KEY `RLProductoImpuestos_cfgImpuestoSys_PK` (`Impuestos`),
  KEY `RLProductoIVariables_IVariableSys_PK` (`IVariables`),
  KEY `RLProductoProveedor1_ProveedorSys_PK` (`Proveedor1`),
  KEY `RLProductoProveedor2_ProveedorSys_PK` (`Proveedor2`),
  KEY `RLProductoProveedor3_ProveedorSys_PK` (`Proveedor3`),
  KEY `RLProductoIClase_cClaseProductoID` (`IClase`),
  KEY `RLProductoFormaComision_cFormaComisionProductoID` (`FormaComision`),
  KEY `RLProductoMetodoValuacion_cMetodosValuacionID` (`MetodoValuacion`),
  KEY `RLProductoITipo_cTipoProductoID` (`ITipo`),
  KEY `RLProductoTipoComision_cTiposComisionesProductoID` (`TipoComision`),
  CONSTRAINT `RLProductoFormaComision_cFormaComisionProductoID` FOREIGN KEY (`FormaComision`) REFERENCES `cformacomisionproducto` (`ID`),
  CONSTRAINT `RLProductoIClase_cClaseProductoID` FOREIGN KEY (`IClase`) REFERENCES `cclaseproducto` (`ID`),
  CONSTRAINT `RLProductoIDepartamento_DepartamentoSys_PK` FOREIGN KEY (`IDepartamento`) REFERENCES `departamento` (`Sys_PK`),
  CONSTRAINT `RLProductoIDivisa_DivisaSys_PK` FOREIGN KEY (`IDivisa`) REFERENCES `divisa` (`Sys_PK`),
  CONSTRAINT `RLProductoILinea_LineaSys_PK` FOREIGN KEY (`ILinea`) REFERENCES `linea` (`Sys_PK`),
  CONSTRAINT `RLProductoIMarca_MarcaSys_PK` FOREIGN KEY (`IMarca`) REFERENCES `marca` (`Sys_PK`),
  CONSTRAINT `RLProductoITipo_cTipoProductoID` FOREIGN KEY (`ITipo`) REFERENCES `ctipoproducto` (`ID`),
  CONSTRAINT `RLProductoIVariables_IVariableSys_PK` FOREIGN KEY (`IVariables`) REFERENCES `ivariable` (`Sys_PK`),
  CONSTRAINT `RLProductoImpuestos_cfgImpuestoSys_PK` FOREIGN KEY (`Impuestos`) REFERENCES `cfgimpuesto` (`Sys_PK`),
  CONSTRAINT `RLProductoMetodoValuacion_cMetodosValuacionID` FOREIGN KEY (`MetodoValuacion`) REFERENCES `cmetodosvaluacion` (`ID`),
  CONSTRAINT `RLProductoProveedor1_ProveedorSys_PK` FOREIGN KEY (`Proveedor1`) REFERENCES `proveedor` (`Sys_PK`),
  CONSTRAINT `RLProductoProveedor2_ProveedorSys_PK` FOREIGN KEY (`Proveedor2`) REFERENCES `proveedor` (`Sys_PK`),
  CONSTRAINT `RLProductoProveedor3_ProveedorSys_PK` FOREIGN KEY (`Proveedor3`) REFERENCES `proveedor` (`Sys_PK`),
  CONSTRAINT `RLProductoTipoComision_cTiposComisionesProductoID` FOREIGN KEY (`TipoComision`) REFERENCES `ctiposcomisionesproducto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla catalogos.producto: ~3 rows (aproximadamente)
INSERT INTO `producto` (`Sys_PK`, `Sys_TimeStamp`, `Sys_GUID`, `Sys_DTCreated`, `Sys_User`, `Sys_LastUser`, `Sys_Exported`, `Sys_DTExported`, `Sys_Info`, `Adicional`, `CDirecto`, `CIndirecto`, `CManoObra`, `CMaquinaria`, `CodBar1`, `CodBar2`, `CodBar3`, `Codigo`, `Color`, `Comision`, `Comision1`, `Comision2`, `Comision3`, `Comision4`, `Comision5`, `CostoPromedio`, `CostoUltimo`, `Data1`, `Data2`, `Data3`, `Desc2`, `Desc3`, `Desc4`, `Desc5`, `Descripcion`, `DiasEntrega`, `Existencia`, `FactorB`, `FactorC`, `FactorD`, `FactorE`, `flagLimites`, `flagUtilidad`, `FormaComision`, `IClase`, `ITipo`, `Lim2`, `Lim3`, `Lim4`, `Lim5`, `Maximo`, `MetodoValuacion`, `Minimo`, `Notas`, `PAdic1`, `PAdic2`, `PAdic3`, `PAdic4`, `PAdic5`, `PPuntos`, `Precio1`, `Precio2`, `Precio3`, `Precio4`, `Precio5`, `PuntoRO`, `ReqLote`, `ReqSerie`, `Saldo`, `TipoComision`, `Unidad`, `UnidadB`, `UnidadC`, `UnidadD`, `UnidadE`, `Util1`, `Util2`, `Util3`, `Util4`, `Util5`, `UtilMin`, `VincularData`, `Visible`, `IDepartamento`, `IDivisa`, `ILinea`, `IMarca`, `Impuestos`, `IVariables`, `Proveedor1`, `Proveedor2`, `Proveedor3`, `Uf_Sys_Baja`, `sys_recver`, `sys_deleted`, `sys_lock`, `uf_Complemento`, `Precio106`, `Precio107`, `Precio108`, `Precio109`, `Precio110`, `Precio111`, `Precio112`, `Precio113`, `Precio114`, `Precio115`, `Precio116`, `Precio117`, `Precio118`, `Precio119`, `Precio120`, `Util106`, `Util107`, `Util108`, `Util109`, `Util110`, `Util111`, `Util112`, `Util113`, `Util114`, `Util115`, `Util116`, `Util117`, `Util118`, `Util119`, `Util120`, `uf_CodigoParaProveedor1`, `uf_CodigoParaProveedor2`, `uf_CodigoParaProveedor3`, `uf_pdv`, `uf_dv_DiasReOrden`, `uf_dv_InventarioSeguridadDias`, `uf_GrupoSimilares`, `uf_fechainhabilitacion`, `uf_inhabilitado`, `uf_sat_proser`, `uf_sat_uniproser`) VALUES
	(1, '2017-11-08 10:22:29', 'C5D88B667EBC47450090FCBD4F004DDA', '2017-10-06 11:47:07', NULL, NULL, 0, '2017-10-06 11:47:07', NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, NULL, 'PR01', 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.00000000, NULL, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'KIT DE TECLADO Y MOUSE USB 3.0', 0, 0.00000000, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 1, 3, 1, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 99, 0.00000000, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 0.00000000, 1, 'KIT', 'KIT', NULL, NULL, NULL, 100.00000000, -100.00000000, -100.00000000, -100.00000000, -100.00000000, 0.00000000, 0, 1, NULL, 1, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, b'0', '01010101', 'H87'),
	(2, '2017-11-08 10:22:07', '681364730E974122B5CBFA8160384816', '2017-11-08 07:38:38', NULL, NULL, 0, '2017-11-08 07:38:38', NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, NULL, 'PR02', 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, NULL, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'BOCINAS PARA PC DE ESCRITORIO', 0, 0.00000000, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 1, 4, 2, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, 0.00000000, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 0.00000000, 1, 'PZA', 'PZA', NULL, NULL, NULL, 400.00000000, -100.00000000, -100.00000000, -100.00000000, -100.00000000, 0.00000000, 0, 1, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, b'0', '01010101', 'H87'),
	(3, '2017-11-08 10:21:45', '90FAA48C767E46188EA1DAB78C492E5F', '2017-11-08 07:38:59', NULL, NULL, 0, '2017-11-08 07:38:59', NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, NULL, 'PR03', 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.00000000, NULL, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 'ADAPTADOR BLUETOOHT DE USB', 0, 0.00000000, 12.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 1, 4, 2, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, 0.00000000, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 20.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0, 0, 0.00000000, 1, 'PZA', 'CAJA', NULL, NULL, NULL, 300.00000000, -100.00000000, -100.00000000, -100.00000000, -100.00000000, 0.00000000, 0, 1, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, b'0', '01010101', 'H87');

-- Volcando estructura para tabla catalogos.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `Sys_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_TimeStamp` datetime NOT NULL,
  `Sys_GUID` varchar(32) NOT NULL,
  `Sys_DTCreated` datetime DEFAULT NULL,
  `Sys_User` varchar(5) DEFAULT NULL,
  `Sys_LastUser` varchar(5) DEFAULT NULL,
  `Sys_Exported` tinyint(1) DEFAULT NULL,
  `Sys_DTExported` datetime DEFAULT NULL,
  `Sys_Info` varchar(32) DEFAULT NULL,
  `CodCuenta` varchar(50) DEFAULT NULL,
  `Codigo` varchar(35) NOT NULL,
  `CURP` varchar(35) DEFAULT NULL,
  `DiasCredito` int(11) DEFAULT NULL,
  `DiasEntrega` int(11) DEFAULT NULL,
  `eMail` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `LimiteCredito` decimal(18,8) DEFAULT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Notas` varchar(32000) DEFAULT NULL,
  `RFC` varchar(15) DEFAULT NULL,
  `Saldo` decimal(18,8) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `TasaIVA` int(11) NOT NULL,
  `Telefonos` varchar(50) DEFAULT NULL,
  `WebSite` varchar(150) DEFAULT NULL,
  `Contacto1` int(11) DEFAULT NULL,
  `Contacto2` int(11) DEFAULT NULL,
  `Contacto3` int(11) DEFAULT NULL,
  `Domicilio1` int(11) DEFAULT NULL,
  `Domicilio2` int(11) DEFAULT NULL,
  `Domicilio3` int(11) DEFAULT NULL,
  `IDivisa` int(11) NOT NULL,
  `IZona` int(11) DEFAULT NULL,
  `Tipo` int(11) NOT NULL,
  `Uf_Sys_Baja` bit(1) DEFAULT NULL,
  `sys_recver` int(11) DEFAULT '0',
  `sys_deleted` bit(1) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT NULL,
  `uf_vueltaviajero` int(11) DEFAULT NULL,
  `UF_TipoOp` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sys_PK`),
  UNIQUE KEY `Sys_GUID` (`Sys_GUID`),
  UNIQUE KEY `Codigo` (`Codigo`),
  UNIQUE KEY `Nombre` (`Nombre`),
  UNIQUE KEY `CodCuenta` (`CodCuenta`),
  UNIQUE KEY `CURP` (`CURP`),
  KEY `RLProveedorContacto1_ContactoSys_PK` (`Contacto1`),
  KEY `RLProveedorContacto2_ContactoSys_PK` (`Contacto2`),
  KEY `RLProveedorContacto3_ContactoSys_PK` (`Contacto3`),
  KEY `RLProveedorDomicilio1_DomicilioSys_PK` (`Domicilio1`),
  KEY `RLProveedorDomicilio2_DomicilioSys_PK` (`Domicilio2`),
  KEY `RLProveedorDomicilio3_DomicilioSys_PK` (`Domicilio3`),
  KEY `RLProveedorIDivisa_DivisaSys_PK` (`IDivisa`),
  KEY `RLProveedorIZona_ZonaSys_PK` (`IZona`),
  KEY `RLProveedorTipo_TipoProveedorSys_PK` (`Tipo`),
  KEY `RLProveedorStatus_cStatusOrgID` (`Status`),
  KEY `RLProveedorTasaIVA_cTasasIVAID` (`TasaIVA`),
  KEY `UF_TipoOp` (`UF_TipoOp`),
  CONSTRAINT `RLProveedorContacto1_ContactoSys_PK` FOREIGN KEY (`Contacto1`) REFERENCES `contacto` (`Sys_PK`),
  CONSTRAINT `RLProveedorContacto2_ContactoSys_PK` FOREIGN KEY (`Contacto2`) REFERENCES `contacto` (`Sys_PK`),
  CONSTRAINT `RLProveedorContacto3_ContactoSys_PK` FOREIGN KEY (`Contacto3`) REFERENCES `contacto` (`Sys_PK`),
  CONSTRAINT `RLProveedorDomicilio1_DomicilioSys_PK` FOREIGN KEY (`Domicilio1`) REFERENCES `domicilio` (`Sys_PK`),
  CONSTRAINT `RLProveedorDomicilio2_DomicilioSys_PK` FOREIGN KEY (`Domicilio2`) REFERENCES `domicilio` (`Sys_PK`),
  CONSTRAINT `RLProveedorDomicilio3_DomicilioSys_PK` FOREIGN KEY (`Domicilio3`) REFERENCES `domicilio` (`Sys_PK`),
  CONSTRAINT `RLProveedorIDivisa_DivisaSys_PK` FOREIGN KEY (`IDivisa`) REFERENCES `divisa` (`Sys_PK`),
  CONSTRAINT `RLProveedorIZona_ZonaSys_PK` FOREIGN KEY (`IZona`) REFERENCES `zona` (`Sys_PK`),
  CONSTRAINT `RLProveedorStatus_cStatusOrgID` FOREIGN KEY (`Status`) REFERENCES `cstatusorg` (`ID`),
  CONSTRAINT `RLProveedorTasaIVA_cTasasIVAID` FOREIGN KEY (`TasaIVA`) REFERENCES `ctasasiva` (`ID`),
  CONSTRAINT `RLProveedorTipo_TipoProveedorSys_PK` FOREIGN KEY (`Tipo`) REFERENCES `tipoproveedor` (`Sys_PK`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`UF_TipoOp`) REFERENCES `tipooperacion` (`Sys_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla catalogos.proveedor: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.repartidor


-- Volcando datos para la tabla catalogos.repartidor: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.tarjetacredito


-- Volcando datos para la tabla catalogos.tarjetacredito: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.tipocliente
CREATE TABLE IF NOT EXISTS `tipocliente` (
  `Sys_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_TimeStamp` datetime NOT NULL,
  `Sys_GUID` varchar(32) NOT NULL,
  `Sys_DTCreated` datetime DEFAULT NULL,
  `Sys_User` varchar(5) DEFAULT NULL,
  `Sys_LastUser` varchar(5) DEFAULT NULL,
  `Sys_Exported` tinyint(1) DEFAULT NULL,
  `Sys_DTExported` datetime DEFAULT NULL,
  `Sys_Info` varchar(32) DEFAULT NULL,
  `Codigo` varchar(15) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Notas` varchar(4096) DEFAULT NULL,
  `sys_recver` int(11) DEFAULT '0',
  `sys_deleted` bit(1) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sys_PK`),
  UNIQUE KEY `Sys_GUID` (`Sys_GUID`),
  UNIQUE KEY `Codigo` (`Codigo`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla catalogos.tipocliente: ~1 rows (aproximadamente)
INSERT INTO `tipocliente` (`Sys_PK`, `Sys_TimeStamp`, `Sys_GUID`, `Sys_DTCreated`, `Sys_User`, `Sys_LastUser`, `Sys_Exported`, `Sys_DTExported`, `Sys_Info`, `Codigo`, `Descripcion`, `Notas`, `sys_recver`, `sys_deleted`, `sys_lock`) VALUES
	(1, '2017-05-13 12:22:24', 'DE84D73DBCCE436D9DF5057D66AD747C', '2008-01-28 01:27:15', NULL, NULL, 0, '2008-01-28 01:27:15', NULL, '0001', 'Tipo de cliente predeterminado', NULL, 0, NULL, NULL);

-- Volcando estructura para tabla catalogos.tipoproveedor
CREATE TABLE IF NOT EXISTS `tipoproveedor` (
  `Sys_PK` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_TimeStamp` datetime NOT NULL,
  `Sys_GUID` varchar(32) NOT NULL,
  `Sys_DTCreated` datetime DEFAULT NULL,
  `Sys_User` varchar(5) DEFAULT NULL,
  `Sys_LastUser` varchar(5) DEFAULT NULL,
  `Sys_Exported` tinyint(1) DEFAULT NULL,
  `Sys_DTExported` datetime DEFAULT NULL,
  `Sys_Info` varchar(32) DEFAULT NULL,
  `Codigo` varchar(15) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Notas` varchar(4096) DEFAULT NULL,
  `sys_recver` int(11) DEFAULT '0',
  `sys_deleted` bit(1) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sys_PK`),
  UNIQUE KEY `Sys_GUID` (`Sys_GUID`),
  UNIQUE KEY `Codigo` (`Codigo`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla catalogos.tipoproveedor: ~1 rows (aproximadamente)
INSERT INTO `tipoproveedor` (`Sys_PK`, `Sys_TimeStamp`, `Sys_GUID`, `Sys_DTCreated`, `Sys_User`, `Sys_LastUser`, `Sys_Exported`, `Sys_DTExported`, `Sys_Info`, `Codigo`, `Descripcion`, `Notas`, `sys_recver`, `sys_deleted`, `sys_lock`) VALUES
	(1, '2017-05-13 12:22:25', '61A9A134A18446888BBAF297748E526F', '2008-04-01 11:47:47', NULL, NULL, 0, '2008-04-01 11:47:47', NULL, '0001', 'Tipo de proveedor predeterminado', NULL, 0, NULL, NULL);

-- Volcando estructura para tabla catalogos.ut_aduana


-- Volcando datos para la tabla catalogos.ut_aduana: ~0 rows (aproximadamente)

-- Volcando estructura para tabla catalogos.zona


-- Volcando datos para la tabla catalogos.zona: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
