CREATE TABLE `Users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `username` VARCHAR(150) NOT NULL UNIQUE,
    `password` CHAR(128) NOT NULL,

    PRIMARY KEY(`id`)
);

CREATE TABLE `Academies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL UNIQUE,
    `type` VARCHAR(200) NOT NULL,
    `location` TEXT NOT NULL,
    `founded_at` YEAR NOT NULL,

    PRIMARY KEY(`id`)
);

CREATE TABLE `Companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL UNIQUE,
    `industry` VARCHAR(200) NOT NULL,
    `location` TEXT NOT NULL,

    PRIMARY KEY(`id`)
);

CREATE TABLE `People_Network` (
    `id` INT AUTO_INCREMENT,
    `first_user_id` INT,
    `second_user_id` INT,

    PRIMARY KEY(`id`),
    FOREIGN KEY(`first_user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`second_user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Company_Network` (
    `id` INT AUTO_INCREMENT,
    `company_id` INT,
    `user_id` INT,

    PRIMARY KEY(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `Companies`(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Academy_Network` (
    `id` INT AUTO_INCREMENT,
    `academy_id` INT,
    `user_id` INT,

    PRIMARY KEY(`id`),
    FOREIGN KEY(`academy_id`) REFERENCES `Academies`(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`)
);
