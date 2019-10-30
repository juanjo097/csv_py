CREATE TABLE `obras_2016` (
	`id_obras` INT UNSIGNED DEFAULT NULL,
	`año` VARCHAR(255) DEFAULT NULL,
	`clave_obra` VARCHAR(255) DEFAULT NULL,
	`nombre` VARCHAR(255) DEFAULT NULL,
	`tipo_precio` VARCHAR(255) DEFAULT NULL,
	`id_sub_programa` INT UNSIGNED DEFAULT NULL,
	`id_localidad` INT UNSIGNED DEFAULT NULL,
	`beneficiarios` VARCHAR(255) DEFAULT NULL,
	`id_convenio` INT UNSIGNED DEFAULT NULL,
	`tipo_obra_proyecto` VARCHAR(255) DEFAULT NULL,
	`id_sub_tipo_obra` INT UNSIGNED DEFAULT NULL,
	`observaciones` TEXT DEFAULT NULL,
	`enviar_para` VARCHAR(255) DEFAULT NULL,
	`id_oficio_asignacion_obra` INT UNSIGNED DEFAULT NULL
);