CREATE DATABASE IF NOT EXISTS `student-management`;
CREATE table `student-management`.`studen`(
`id` INT NOT NULL,
`name`VARCHAR(45)NULL,
`AGE` INT NULL,
`country`VARCHAR(45)NULL,
PRIMARY KEY (`id`));