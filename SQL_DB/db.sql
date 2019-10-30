CREATE DATABASE `wsicom` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wsicom`;

CREATE TABLE IF NOT EXISTS `cat_contratistas`(
`id_cat_contratistas` int,
`nombre` varchar(84) character set utf8,
`siglas` varchar(35) character set utf8,
`fecha_refrendo` varchar(16) character set utf8,
`responsable_legal` varchar(48) character set utf8,
`responsable_tecnico` varchar(39) character set utf8,
`codigo_postal` varchar(6) character set utf8,
`correo` varchar(43) character set utf8,
`no_escritura_publica` int,
`fecha_escritura` varchar(16) character set utf8,
`no_notario_publico` int,
`nombre_notario_publico` varchar(38) character set utf8,
`folio_mercantil` int,
`tomo_mercantil` int,
`direccion` varchar(86) character set utf8,
`telefonos` varchar(46) character set utf8,
`tipo` varchar(18) character set utf8,
`no_escritura_firma_contrato` varchar(4) character set utf8,
`fecha_escritura_firma_contrato` varchar(16) character set utf8,
`no_notario_publico_firma_contrato` varchar(4) character set utf8,
`nombre_notario_publico_firma_contrato` varchar(4) character set utf8
) COMMENT='Tabla de general de contratistas'
  ENGINE=INNODB;
  
INSERT INTO cat_contratistas(
id_cat_contratistas,
nombre,
siglas,
fecha_refrendo,
responsable_legal,
responsable_tecnico,
codigo_postal,
correo,
no_escritura_publica,
fecha_escritura,
no_notario_publico,
nombre_notario_publico,
folio_mercantil,
tomo_mercantil,
direccion,
telefonos,
tipo,
no_escritura_firma_contrato,
fecha_escritura_firma_contrato,
no_notario_publico_firma_contrato,
nombre_notario_publico_firma_contrato) VALUES
(1,"PROFESIONALES EN MANTENIMIENTO Y LIMPIEZA, S.A DE C.V.","OS","01/03/2004 00:00","ARQ. RICARDO OJEDA CRUCES",0,"37353","servicios@promali.com.mx",0.0,"29/08/2017 00:00",0.0,0,0.0,0.0,"21 DE MARZO No. 204COL. JOL GUA VERLEON, GTO.","777 0789","CONTRATISTA",0.0,"01/03/2004 00:00",0.0,0.0);
