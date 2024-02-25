SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN;

SELECT * FROM `user` WHERE `id` = 1;

UPDATE `user` SET `date_of_birth` = '2000-03-01' WHERE `id` = 1;

COMMIT;

SELECT * FROM `user` WHERE `id` = 1;