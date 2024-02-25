-- Drop table/sequence if exist for clean up
DROP TABLE IF EXISTS "user"; 
DROP SEQUENCE IF EXISTS "user_seq";

-- Create sequence
CREATE SEQUENCE "user_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999;

-- Create table for users
CREATE TABLE "user"
(
    id bigint NOT NULL DEFAULT nextval('user_seq'),
    given_name character(8) NOT NULL,
    date_of_birth date NOT NULL DEFAULT now(),
    PRIMARY KEY (id)
);

-- Insert 3 users in the database
INSERT INTO "user" ("given_name", "date_of_birth")
VALUES 
    ('John', '2000-01-01'),
    ('Maria', '1997-05-05'),
    ('Arnold', '1993-08-08'),
    ('Margo', '1989-11-11'),
    ('Sean', '1950-12-12')
