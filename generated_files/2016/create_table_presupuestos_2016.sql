CREATE TABLE `presupuestos_2016` (
	`id_presupuestos` INT UNSIGNED DEFAULT NULL,
	`id_obra` INT UNSIGNED DEFAULT NULL,
	`nombre` TEXT DEFAULT NULL,
	`tipo_presupuesto` VARCHAR(255) DEFAULT NULL,
	`id_modalidad` INT UNSIGNED DEFAULT NULL,
	`fecha_adjudicacion` VARCHAR(255) DEFAULT NULL,
	`id_presupuesto_pertenece` INT UNSIGNED DEFAULT NULL,
	`clave` VARCHAR(255) DEFAULT NULL,
	`numero_ampliacion` VARCHAR(255) DEFAULT NULL
);