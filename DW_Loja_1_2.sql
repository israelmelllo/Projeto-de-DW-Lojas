-- MySQL Script generated by MySQL Workbench
-- Sun Sep 11 16:25:50 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Equipamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamentos` (
  `id_Equipamentos` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(100) NULL,
  `categoria` VARCHAR(25) NULL,
  `quantidade_em_estoque` INT NULL,
  `preco` DECIMAL(15,2) NULL,
  PRIMARY KEY (`id_Equipamentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `id_Clientes` INT NOT NULL,
  `nome` VARCHAR(50) NULL,
  `cpf` INT(11) NOT NULL,
  `data_nascimento` INT(8) NULL,
  `sexo` VARCHAR(10) NULL,
  `telefone` INT(11) NULL,
  `email` VARCHAR(45) NULL,
  `rua` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `estado` VARCHAR(25) NULL,
  PRIMARY KEY (`id_Clientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fornecedores` (
  `id_Fornecedores` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `cnpj` INT(11) NOT NULL,
  `endereco` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  `telefone` INT(11) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Fornecedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tempo` (
  `id_Tempo` INT NOT NULL,
  `ano` YEAR(4) NULL,
  `semestre` INT(2) NULL,
  `mês` VARCHAR(45) NULL,
  `dia` INT(2) NULL,
  `hora` TIME NULL,
  PRIMARY KEY (`id_Tempo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Acessorios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Acessorios` (
  `idAcessorios` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(100) NULL,
  `categoria` VARCHAR(25) NULL,
  `quantidade` INT UNSIGNED NULL,
  `preco` DECIMAL(15,2) NULL,
  PRIMARY KEY (`idAcessorios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`relatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`relatorio` (
  `id_relatorio` INT NOT NULL,
  `quantidade_fornecedores_ativos` INT ZEROFILL NULL,
  `total_equipamentos_vendidos` INT NULL,
  `total_em_estoque` INT NULL,
  `total_equipamentos_adquiridos` INT NULL,
  `id_Clientes` INT NOT NULL,
  `id_Fornecedores` INT NOT NULL,
  `id_Tempo` INT NOT NULL,
  `id_Equipamentos` INT NOT NULL,
  `id_Acessorios` INT NOT NULL,
  PRIMARY KEY (`id_relatorio`),
  INDEX `idCliente_idx` (`id_Clientes` ASC) VISIBLE,
  INDEX `id_Fornecedores_idx` (`id_Fornecedores` ASC) VISIBLE,
  INDEX `id_Tempo_idx` (`id_Tempo` ASC) VISIBLE,
  INDEX `id_Acessorios_idx` (`id_Equipamentos` ASC) VISIBLE,
  INDEX `id_Acessorios_idx1` (`id_Acessorios` ASC) VISIBLE,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`id_Clientes`)
    REFERENCES `mydb`.`Clientes` (`id_Clientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_Fornecedores`
    FOREIGN KEY (`id_Fornecedores`)
    REFERENCES `mydb`.`Fornecedores` (`id_Fornecedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_Tempo`
    FOREIGN KEY (`id_Tempo`)
    REFERENCES `mydb`.`Tempo` (`id_Tempo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_Acessorios`
    FOREIGN KEY (`id_Equipamentos`)
    REFERENCES `mydb`.`Equipamentos` (`id_Equipamentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_Acessorios`
    FOREIGN KEY (`id_Acessorios`)
    REFERENCES `mydb`.`Acessorios` (`idAcessorios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipamentos_copy1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamentos_copy1` (
  `id_Equipamentos` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(100) NULL,
  `categoria` VARCHAR(25) NULL,
  `quantidade_em_estoque` INT NULL,
  `preco` DECIMAL(15,2) NULL,
  PRIMARY KEY (`id_Equipamentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipamentos_copy1_copy1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipamentos_copy1_copy1` (
  `id_Equipamentos` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(100) NULL,
  `categoria` VARCHAR(25) NULL,
  `quantidade_em_estoque` INT NULL,
  `preco` DECIMAL(15,2) NULL,
  PRIMARY KEY (`id_Equipamentos`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
