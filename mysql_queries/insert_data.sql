-- Switch to designed database
USE hsa10;

-- Drop DB if exist for clean up
DROP TABLE IF EXISTS `user`; 

-- Create table for users
CREATE TABLE `user` 
(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `given_name` CHAR(8) NOT NULL,
    `date_of_birth` DATE NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Insert 3 users in the database
INSERT INTO `user` (`given_name`, `date_of_birth`)
VALUES 
    ('John', '2000-01-01'),
    ('Maria', '1997-05-05'),
    ('Arnold', '1993-08-08'),
    ('Margo', '1989-11-11'),
    ('Sean', '1950-12-12')
