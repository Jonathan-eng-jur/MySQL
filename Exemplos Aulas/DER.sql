-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema modelagem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema modelagem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modelagem` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 ;
USE `modelagem` ;

-- -----------------------------------------------------
-- Table `modelagem`.`propietarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelagem`.`propietarios` (
  `id_dono` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_dono` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dono`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`colaboradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`colaboradores` (
  `cpf` INT(11) NULL DEFAULT NULL,
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NULL DEFAULT NULL,
  `sobrenome` VARCHAR(30) NULL DEFAULT NULL,
  `nascimento` DATE NULL DEFAULT NULL,
  `sexo` ENUM('M', 'F') NULL DEFAULT NULL,
  `peso` DECIMAL(5,2) NULL DEFAULT NULL,
  `altura` DECIMAL(3,2) NULL DEFAULT NULL,
  `nacionalidade` VARCHAR(20) NULL DEFAULT 'Brasil',
  `email` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `test`.`funcionarios1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`funcionarios1` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `nascimento` DATE NULL DEFAULT NULL,
  `sexo` ENUM('M', 'F') NULL DEFAULT NULL,
  `peso` DECIMAL(3,2) NULL DEFAULT NULL,
  `altura` DECIMAL(3,2) NULL DEFAULT NULL,
  `nacionalidade` VARCHAR(20) NULL DEFAULT 'Brasil',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `test`.`matriculados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test`.`matriculados` (
  `id_curso` INT(11) NOT NULL,
  `nome` VARCHAR(30) NULL DEFAULT NULL,
  `descricao` VARCHAR(30) NULL DEFAULT NULL,
  `carga` CHAR(10) NULL DEFAULT NULL,
  `totalaulas` INT(11) NULL DEFAULT NULL,
  `ano` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
