-- Estructura de tablas para la bd `tareamarzo24`
--

CREATE TABLE IF NOT EXISTS `curso` (
  id INT(3) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `faculta` text NOT NULL
) ;

CREATE TABLE IF NOT EXISTS `estudiante` (
  id INT(3) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `edad` int(2) NOT NULL  
) ;


CREATE TABLE IF NOT EXISTS `matricula` (
 id INT(3) PRIMARY KEY AUTO_INCREMENT,
  `nota_final` DEC(2,1) NOT NULL,
   `id_curso` INT(3),
    `id_estudiante` INT(3),
     FOREIGN KEY(`id_curso`) REFERENCES `curso`(id),
     FOREIGN KEY(`id_estudiante`) REFERENCES `estudiante`(id)
) ;

--modificacion id INT(3) PRIMARY KEY AUTO_INCREMENT