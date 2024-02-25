SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN;

SELECT `date_of_birth` FROM `user` WHERE `id` = 1 INTO @date_of_birth_2;

UPDATE `user` SET `date_of_birth` = @date_of_birth_2 + INTERVAL 1 DAY WHERE `id` = 1;

COMMIT;
