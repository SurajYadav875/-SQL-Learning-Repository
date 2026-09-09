-- PostgreSQL
-- Topic: DDL (Data Definition Language)
Notes

DDL = Data Definition Language

Used to define or modify the structure of database objects.

Command	Purpose
CREATE	Create database object
ALTER	Modify structure
DROP	Remove database object

Important:

PRIMARY KEY

Uniquely identifies each row.

NOT NULL

Does not allow missing values.
-- CREATE TABLE
CREATE TABLE person (
    id INT NOT NULL,
    person_name VARCHAR(23) NOT NULL,
    birth_date DATE,
    phone VARCHAR(12) NOT NULL,
    CONSTRAINT pk_person PRIMARY KEY (id)
);

-- Retrieve table data
SELECT *
FROM person;

-- DROP TABLE
DROP TABLE person;


-- ALTER TABLE - ADD COLUMN
ALTER TABLE person
ADD COLUMN email VARCHAR(23);

-- ALTER TABLE - DROP COLUMN
ALTER TABLE person
DROP COLUMN phone;

-- ALTER TABLE - ADD COLUMN
ALTER TABLE person
ADD COLUMN phone VARCHAR(12) NOT NULL;

-- ALTER TABLE - DROP COLUMN
ALTER TABLE person
DROP COLUMN email;
