SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `GOFASTDB` DEFAULT CHARACTER SET latin1 ;
USE `GOFASTDB` ;

-- -----------------------------------------------------
-- Table `GOFASTDB`.`GO_FAST_LOCATION`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `GOFASTDB`.`GO_FAST_LOCATION` (
  `GFL_ID` INT(11) NOT NULL AUTO_INCREMENT ,
  `GFL_NAME` VARCHAR(255) NULL DEFAULT NULL ,
  `GFL_DETAIL` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`GFL_ID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = tis620;


-- -----------------------------------------------------
-- Table `GOFASTDB`.`GO_FAST_AREA`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `GOFASTDB`.`GO_FAST_AREA` (
  `GFA_ID` INT(11) NOT NULL AUTO_INCREMENT ,
  `GFL_ID` INT(11) NOT NULL ,
  `GFA_NAME` VARCHAR(100) NULL DEFAULT NULL ,
  `GFA_DETAIL` VARCHAR(500) NULL DEFAULT NULL ,
  PRIMARY KEY (`GFA_ID`) ,
  INDEX `fk_GO_FAST_AREA_1` (`GFL_ID` ASC) ,
  CONSTRAINT `fk_GO_FAST_AREA_1`
    FOREIGN KEY (`GFL_ID` )
    REFERENCES `GOFASTDB`.`GO_FAST_LOCATION` (`GFL_ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = tis620;


-- -----------------------------------------------------
-- Table `GOFASTDB`.`GO_FAST_CAT`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `GOFASTDB`.`GO_FAST_CAT` (
  `GFCA_ID` INT(11) NOT NULL AUTO_INCREMENT ,
  `GFCA_NAME` VARCHAR(255) NULL DEFAULT NULL ,
  `GFCA_DETAIL` VARCHAR(255) NULL DEFAULT NULL ,
  `GFCA_ICON_NAME` VARCHAR(45) NULL DEFAULT NULL ,
  `GFCA_ICON_PATH` VARCHAR(100) NULL DEFAULT NULL ,
  `GFCA_LEVEL` INT(11) NULL DEFAULT NULL ,
  `GFCA_PARENT` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`GFCA_ID`) )
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = tis620;


-- -----------------------------------------------------
-- Table `GOFASTDB`.`GO_FAST_CUSTOMER`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `GOFASTDB`.`GO_FAST_CUSTOMER` (
  `GFC_ID` INT(11) NOT NULL AUTO_INCREMENT ,
  `GFC_NAME` VARCHAR(255) NULL DEFAULT NULL ,
  `GFC_DETAIL` VARCHAR(500) NULL DEFAULT NULL ,
  `GFC_LAT` DOUBLE NULL DEFAULT NULL ,
  `GFC_LONG` DOUBLE NULL DEFAULT NULL ,
  `GFC_ICON_NAME` VARCHAR(45) NULL DEFAULT NULL ,
  `GFC_ICON_PATH` VARCHAR(100) NULL DEFAULT NULL ,
  `GFC_PHONE` VARCHAR(45) NULL DEFAULT NULL ,
  `GFC_EMAIL` VARCHAR(45) NULL DEFAULT NULL ,
  `GFC_STATUS` VARCHAR(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`GFC_ID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = tis620;


-- -----------------------------------------------------
-- Table `GOFASTDB`.`GO_FAST_ITEM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `GOFASTDB`.`GO_FAST_ITEM` (
  `GFI_ID` INT(11) NOT NULL AUTO_INCREMENT ,
  `GFC_ID` INT(11) NOT NULL ,
  `GFCA_ID` INT(11) NOT NULL ,
  `GFA_ID` INT(11) NULL DEFAULT NULL ,
  `GFI_NAME` VARCHAR(255) NULL DEFAULT NULL ,
  `GFI_DETAIL` VARCHAR(500) NULL DEFAULT NULL ,
  `GFI_DISCOUNT` VARCHAR(45) NULL DEFAULT NULL ,
  `GFI_STATUS` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`GFI_ID`) ,
  INDEX `fk_GO_FAST_ITEM_1` (`GFC_ID` ASC) ,
  INDEX `fk_GO_FAST_ITEM_2` (`GFCA_ID` ASC) ,
  INDEX `fk_GO_FAST_ITEM_4` (`GFA_ID` ASC) ,
  CONSTRAINT `fk_GO_FAST_ITEM_1`
    FOREIGN KEY (`GFC_ID` )
    REFERENCES `GOFASTDB`.`GO_FAST_CUSTOMER` (`GFC_ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GO_FAST_ITEM_2`
    FOREIGN KEY (`GFCA_ID` )
    REFERENCES `GOFASTDB`.`GO_FAST_CAT` (`GFCA_ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GO_FAST_ITEM_4`
    FOREIGN KEY (`GFA_ID` )
    REFERENCES `GOFASTDB`.`GO_FAST_AREA` (`GFA_ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = tis620;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
