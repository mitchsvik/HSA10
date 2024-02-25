BEGIN; SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT * FROM "user" WHERE id = 1;

SELECT date_of_birth INTO TEMP TABLE date_of_birth_1 FROM "user" WHERE id = 1;

UPDATE "user" SET date_of_birth = date_of_birth_1.date_of_birth + INTERVAL '1 day' FROM date_of_birth_1 WHERE id = 1;

COMMIT;

SELECT * FROM "user" WHERE id = 1;