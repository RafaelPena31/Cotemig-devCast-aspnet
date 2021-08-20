-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DEVTALKSBD
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DEVTALKSBD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DEVTALKSBD` DEFAULT CHARACTER SET utf8 ;
USE `DEVTALKSBD` ;

-- -----------------------------------------------------
-- Table `DEVTALKSBD`.`User`
-- -----------------------------------------------------

-- DROP DATABASE DEVTALKSBD;

CREATE TABLE IF NOT EXISTS `DEVTALKSBD`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `isAdmin` TINYINT NOT NULL,
  `isCC` TINYINT NOT NULL,
  `isPremium` TINYINT NOT NULL
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Channel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEVTALKSBD`.`Channel` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `subs` INT NOT NULL,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`id`, `User_id`),
    FOREIGN KEY (`User_id`)
    REFERENCES `DEVTALKSBD`.`User` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DEVTALKSBD`.`Theme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEVTALKSBD`.`Theme` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DEVTALKSBD`.`Podcast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEVTALKSBD`.`Podcast` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(25) NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `like` INT NOT NULL,
  `dislike` INT NOT NULL,
  `path` VARCHAR(400) NOT NULL,
  `Channel_id` INT UNSIGNED NOT NULL,
  `Channel_User_id` INT NOT NULL,
  `Theme_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Channel_id`, `Channel_User_id`, `Theme_id`),
    FOREIGN KEY (`Channel_id` , `Channel_User_id`)
    REFERENCES `DEVTALKSBD`.`Channel` (`id` , `User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (`Theme_id`)
    REFERENCES `DEVTALKSBD`.`Theme` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DEVTALKSBD`.`Ads`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEVTALKSBD`.`Ads` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `image` VARCHAR(250) NOT NULL,
  `link` VARCHAR(250) NOT NULL,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`id`, `User_id`),
    FOREIGN KEY (`User_id`)
    REFERENCES `DEVTALKSBD`.`User` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
