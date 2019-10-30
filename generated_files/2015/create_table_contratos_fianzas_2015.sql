CREATE TABLE `contratos_fianzas_2015` (
	`id_contratos_fianzas` INT UNSIGNED DEFAULT NULL,
	`id_contrato` INT UNSIGNED DEFAULT NULL,
	`id_fianza` INT UNSIGNED DEFAULT NULL,
	`numero_fianza` VARCHAR(255) DEFAULT NULL,
	`fecha_emision` VARCHAR(255) DEFAULT NULL,
	`fecha_recepcion` VARCHAR(255) DEFAULT NULL,
	`nombre_afianzadora` TEXT DEFAULT NULL,
	`fecha_liberacion` VARCHAR(255) DEFAULT NULL,
	`id_contrato_ampliacion` INT UNSIGNED DEFAULT NULL,
	`descripcion_fianza` VARCHAR(255) DEFAULT NULL,
	`importe_fianza` VARCHAR(255) DEFAULT NULL
);