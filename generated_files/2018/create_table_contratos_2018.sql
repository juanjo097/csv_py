CREATE TABLE `contratos_2018` (
	`id_contratos` INT UNSIGNED DEFAULT NULL,
	`id_presupuesto` INT UNSIGNED DEFAULT NULL,
	`numero_contrato` VARCHAR(255) DEFAULT NULL,
	`nombre_final` TEXT DEFAULT NULL,
	`importe` VARCHAR(255) DEFAULT NULL,
	`porcentaje_anticipo` VARCHAR(255) DEFAULT NULL,
	`importe_anticipo` VARCHAR(255) DEFAULT NULL,
	`fecha_firma_contrato` VARCHAR(255) DEFAULT NULL,
	`fecha_inicio` VARCHAR(255) DEFAULT NULL,
	`fecha_termino` VARCHAR(255) DEFAULT NULL,
	`id_formato_contrato` INT UNSIGNED DEFAULT NULL,
	`id_formato_caratula` INT UNSIGNED DEFAULT NULL,
	`id_formato_hoja_estimaciones` INT UNSIGNED DEFAULT NULL,
	`observaciones` TEXT DEFAULT NULL,
	`estatus` VARCHAR(255) DEFAULT NULL,
	`año` VARCHAR(255) DEFAULT NULL,
	`id_contratista` INT UNSIGNED DEFAULT NULL,
	`id_supervisor_interno` INT UNSIGNED DEFAULT NULL,
	`id_supervisor_externo` INT UNSIGNED DEFAULT NULL,
	`id_fuente_inversion` INT UNSIGNED DEFAULT NULL,
	`fecha_adjudicacion` VARCHAR(255) DEFAULT NULL,
	`id_modalidad` INT UNSIGNED DEFAULT NULL,
	`numero_licitacion` VARCHAR(255) DEFAULT NULL,
	`leyenda_oficial` VARCHAR(255) DEFAULT NULL,
	`id_oficio_asignacion_obra` INT UNSIGNED DEFAULT NULL,
	`id_numero_contrato_pertenece` INT UNSIGNED DEFAULT NULL
);