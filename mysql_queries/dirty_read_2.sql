SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN;

SELECT * FROM `user` WHERE `id` = 1;

SELECT * FROM `user` WHERE `id` = 1;

SELECT * FROM `user` WHERE `id` = 1;