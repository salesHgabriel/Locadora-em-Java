-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema locadora05
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema locadora05
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `locadora05` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `locadora05` ;

-- -----------------------------------------------------
-- Table `locadora05`.`adm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora05`.`adm` (
  `idadm` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idadm`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `locadora05`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora05`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `end` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `locadora05`.`chamados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora05`.`chamados` (
  `idchamados` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `obs` TEXT NOT NULL,
  PRIMARY KEY (`idchamados`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `locadora05`.`grade_filmes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora05`.`grade_filmes` (
  `nome_filmes` VARCHAR(45) NOT NULL,
  `data_lancamento` DATE NOT NULL,
  `diretor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nome_filmes`),
  UNIQUE INDEX `data_lancamento_UNIQUE` (`data_lancamento` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `locadora05`.`filmes_vendidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora05`.`filmes_vendidos` (
  `grade_filmes_nome` VARCHAR(45) NOT NULL,
  `grade_filmes_data` DATE NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
