BEGIN; SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT * FROM "user";

INSERT INTO "user" ("given_name", "date_of_birth")
VALUES 
('John', '2000-01-01');

COMMIT;

SELECT * FROM "user";
