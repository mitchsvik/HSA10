BEGIN; SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT date_of_birth INTO TEMP TABLE date_of_birth_2 FROM "user" WHERE id = 1;

UPDATE "user" SET date_of_birth = date_of_birth_2.date_of_birth + INTERVAL '1 day' FROM date_of_birth_2 WHERE id = 1;

COMMIT;
