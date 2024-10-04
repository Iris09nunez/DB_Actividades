DROP TABLE `auditoria_usuarios_Iris`;
CREATE TABLE `auditoria_usuarios_Iris` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `operacion` VARCHAR(80) NOT NULL,
  `direccion` VARCHAR(80) NOT NULL,
  `telefono` VARCHAR(15) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE `auditoria_socios_Iris`;
CREATE TABLE `auditoria_socios_Iris` (
  `fInscripcion` DATE NOT NULL,
  `fRenovacion` DATE NULL DEFAULT NULL,
  `fBaja` DATE NULL DEFAULT NULL,
  `emmac` DATE NULL DEFAULT NULL,
  `activo` INT(11) NOT NULL DEFAULT 1
) ENGINE=INNODB;
