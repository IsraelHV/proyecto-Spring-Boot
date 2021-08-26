-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema aceradecomida
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aceradecomida
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aceradecomida` DEFAULT CHARACTER SET utf8 ;
USE `aceradecomida` ;

-- -----------------------------------------------------
-- Table `aceradecomida`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`usuario` (
  `id_usuario` INT NOT NULL,
  `id_orden` INT NOT NULL,
  `nombreUsuario` VARCHAR(45) NULL DEFAULT NULL,
  `apellidoUsuario` VARCHAR(45) NULL DEFAULT NULL,
  `direccionEntrega` VARCHAR(200) NULL DEFAULT NULL,
  `fotoPerfil` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`, `id_orden`),
  INDEX `fk_Usuario_Orden1_idx` (`id_orden` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Orden1`
    FOREIGN KEY (`id_orden`)
    REFERENCES `aceradecomida`.`orden` (`id_orden`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3
COMMENT = '			';


-- -----------------------------------------------------
-- Table `aceradecomida`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`direccion` (
  `id_direccion` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `direccionEntrega` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id_direccion`, `id_usuario`),
  INDEX `fk_Direcciones_Usuario1` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Direcciones_Usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `aceradecomida`.`usuario` (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `aceradecomida`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`producto` (
  `id-producto` INT NOT NULL,
  `nombreProducto` VARCHAR(200) NULL DEFAULT NULL,
  `precio` FLOAT NULL DEFAULT NULL,
  `categoria` VARCHAR(500) NULL DEFAULT NULL,
  `descripcion` VARCHAR(1000) NULL DEFAULT NULL,
  `foto` VARCHAR(5000) NULL DEFAULT NULL,
  PRIMARY KEY (`id-producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3
COMMENT = '									';


-- -----------------------------------------------------
-- Table `aceradecomida`.`orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`orden` (
  `id_orden` INT NOT NULL,
  `id_producto` INT NOT NULL,
  `id_direccion` INT NOT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_orden`, `id_direccion`, `id_producto`),
  INDEX `id-producto` (`id_producto` ASC) INVISIBLE,
  INDEX `fk_Orden_Direcciones1_idx` (`id_direccion` ASC) VISIBLE,
  CONSTRAINT `fk_Orden_Direcciones1`
    FOREIGN KEY (`id_direccion`)
    REFERENCES `aceradecomida`.`direccion` (`id_direccion`),
  CONSTRAINT `fk_Orden_Producto`
    FOREIGN KEY (`id_producto`)
    REFERENCES `aceradecomida`.`producto` (`id-producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `aceradecomida`.`Comercio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`Comercio` (
  `id_comenzal` INT NOT NULL,
  `id_orden` INT NOT NULL,
  `id-productos` INT NOT NULL,
  `nombreComercio` VARCHAR(60) NULL DEFAULT NULL,
  `nombreTitular` VARCHAR(70) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `telefono` VARCHAR(10) NULL DEFAULT NULL,
  `contrasena` VARCHAR(45) NULL DEFAULT NULL,
  `direccion salida` VARCHAR(200) NULL DEFAULT NULL,
  `terminos&condiciones` VARCHAR(300) NULL DEFAULT NULL,
  `fotoPerfil` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id_comenzal`, `id_orden`, `id-productos`),
  INDEX `fk_Comenzal_Producto1_idx` (`id-productos` ASC) VISIBLE,
  INDEX `fk_Comenzal_Orden1_idx` (`id_orden` ASC) VISIBLE,
  CONSTRAINT `fk_id-orden`
    FOREIGN KEY (`id_orden`)
    REFERENCES `aceradecomida`.`orden` (`id_orden`),
  CONSTRAINT `fk_id-producto`
    FOREIGN KEY (`id-productos`)
    REFERENCES `aceradecomida`.`producto` (`id-producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `aceradecomida`.`contactanos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aceradecomida`.`contactanos` (
  `folio` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `telefono` VARCHAR(10) NULL DEFAULT NULL,
  `comentario` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`folio`, `id_usuario`),
  INDEX `fk_Contactanos_Usuario1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Contactanos_Usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `aceradecomida`.`usuario` (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
