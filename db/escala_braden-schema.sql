DROP DATABASE IF EXISTS `escala_braden`;

CREATE DATABASE `escala_braden`;

USE `escala_braden`;

CREATE TABLE `Items`(
	 `numero` TINYINT UNSIGNED PRIMARY KEY,
     `nombre` VARCHAR(25) NOT NULL,
     `imagen` LONGBLOB
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Situaciones`(
	`id` TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`nombre` VARCHAR(30) NOT NULL,
    `imagen` LONGBLOB,
	`descripcion` VARCHAR(120),
    `puntos` TINYINT UNSIGNED NOT NULL,
    `item`  TINYINT UNSIGNED NOT NULL,
      CONSTRAINT `FK_Situaciones_Items` FOREIGN KEY (`Item`) REFERENCES `Items` (`numero`),
	  CONSTRAINT `CH_situaciones_puntos` CHECK (`puntos` BETWEEN 1 AND 4)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `Usuarios`(
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(60) NOT NULL,
	`apellido1` VARCHAR(60) NOT NULL,
	`apellido2` VARCHAR(60) NOT NULL,
	`correo` VARCHAR(50) NOT NULL,
    `contrasenya` VARCHAR(255) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Pacientes`(
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(150) NOT NULL,
    `fecha_nac` DATE,
    `idUser` INT,
    CONSTRAINT `FK_Uuarios_Pacientes` FOREIGN KEY (`idUser`) REFERENCES `Usuarios` (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Riesgos`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`nombre` VARCHAR(8) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Resultados`(
	`fecha` DATETIME,
    `paciente` INT,
    `puntos_item1` TINYINT UNSIGNED NOT NULL,
	`puntos_item2` TINYINT UNSIGNED NOT NULL,
    `puntos_item3` TINYINT UNSIGNED NOT NULL,
    `puntos_item4` TINYINT UNSIGNED NOT NULL,
    `puntos_item5` TINYINT UNSIGNED NOT NULL,
    `puntos_item6` TINYINT UNSIGNED NOT NULL,
	`id_riesgo` INT NOT NULL,
	PRIMARY KEY(`fecha`, `paciente`),
	CONSTRAINT `FK_Resultados_Pacientes` FOREIGN KEY (`paciente`) REFERENCES `Pacientes` (`id`),
    CONSTRAINT `FK_Resultados_Riesgo` FOREIGN KEY (`id_riesgo`) REFERENCES `Riesgos` (`id`),
	CONSTRAINT `CH_result_puntos` CHECK (`puntos_item1` BETWEEN 1 AND 4 AND `puntos_item2` BETWEEN 1 AND 4 AND `puntos_item3` BETWEEN 1 AND 4 AND `puntos_item4` BETWEEN 1 AND 4 AND `puntos_item5` BETWEEN 1 AND 4 AND `puntos_item6` BETWEEN 1 AND 4)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Log`(
   `puntos_totales` TINYINT UNSIGNED,
   `paciente` INT,
   `num_tests` INT,
   PRIMARY KEY(`puntos_totales`, `paciente`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






