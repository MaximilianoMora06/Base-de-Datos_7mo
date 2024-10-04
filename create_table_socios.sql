CREATE TABLE `auditoria_socios` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`socio_id` INT(11) NOT NULL,
	`operacion` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`uid_anterior` INT(11) NOT NULL DEFAULT '0',
	`uid_nuevo` INT(11) NOT NULL DEFAULT '0',
	`fInscripcion_anterior` DATE NULL DEFAULT NULL,
	`fInscripcion_nueva` DATE NOT NULL,
	`fRenovacion_anterior` DATE NULL DEFAULT NULL,
	`fRenovacion_nuevo` DATE NULL DEFAULT NULL,
	`fBaja_anterior` DATE NULL DEFAULT NULL,
	`fBaja_nuevo` DATE NULL DEFAULT NULL,
	`emmac_anterior` DATE NULL DEFAULT NULL,
	`emmac_nuevo` DATE NULL DEFAULT NULL,
	`activo_anterior` INT(11) NOT NULL DEFAULT '0',
	`activo_nuevo` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;