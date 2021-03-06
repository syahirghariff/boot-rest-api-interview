CREATE TABLE `USER`(
	`USERNAME` VARCHAR(100) NOT NULL,
	`PASSWORD` VARCHAR(100) DEFAULT NULL, 
    `ROLE` VARCHAR(100) DEFAULT NULL,
    `ACTIVE` VARCHAR(1) DEFAULT NULL,
	`CREATED_DATE` DATETIME DEFAULT NULL, 
	PRIMARY KEY (`USERNAME`)
);


CREATE TABLE `BOOKS`(
	`ID` VARCHAR(36) NOT NULL,
	`BOOK_NAME` VARCHAR(100) DEFAULT NULL,
	`STATUS` VARCHAR(10) DEFAULT NULL, 
	`BORROWED_BY` VARCHAR(36) DEFAULT NULL, 
	`CREATED_DATE` DATETIME DEFAULT NULL, 
    `CREATED_BY` VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY (`ID`), 
    FOREIGN KEY(`BORROWED_BY`) REFERENCES `MEMBERS`(`ID`),
    FOREIGN KEY(`CREATED_BY`) REFERENCES `LIBRARIAN`(`ID`)
);

CREATE TABLE `MEMBERS`(
	`ID` VARCHAR(36) NOT NULL,
    `USER_USERNAME` VARCHAR(36) NOT NULL,
	`NAME` DATETIME DEFAULT NULL,
	`AGE` INT DEFAULT NULL, 
    `GENDER` VARCHAR(7) DEFAULT NULL,
	`CREATED_DATE` DATETIME DEFAULT NULL, 
	PRIMARY KEY (`ID`),
    FOREIGN KEY(`USER_USERNAME`) REFERENCES `USER`(`USERNAME`)
);

CREATE TABLE `LIBRARIAN`(
	`ID` VARCHAR(36) NOT NULL,
    `USER_USERNAME` VARCHAR(36) NOT NULL,
	`NAME` DATETIME DEFAULT NULL, 
	`CREATED_DATE` DATETIME DEFAULT NULL, 
	PRIMARY KEY (`ID`),
    FOREIGN KEY(`USER_USERNAME`) REFERENCES `USER`(`USERNAME`)
);




CREATE DATABASE IF NOT EXISTS `GFK_DB`; 

USE GFK_DB;

