-- PostgreSQL
-- Topic: DML (Data Manipulation Language)
--Notes

DML = Data Manipulation Language

Used to modify data inside tables.

INSERT → Add data
UPDATE → Modify data
DELETE → Remove data
Important

Always be careful with:

UPDATE customers
SET score = 0;

Without WHERE, every row will be updated.

Same with:

DELETE FROM customers;

Without WHERE, all rows will be deleted.

-- INSERT INTO ... SELECT
INSERT INTO person (id, person_name, birth_date, phone)
SELECT
    id,
    first_name AS person_name,
    NULL,
    'Unknown'
FROM customers;


SELECT *
FROM person;


-- INSERT new customers
INSERT INTO customers (id, first_name, country, score)
VALUES
    (6, 'Bingo', 'USA', NULL),
    (8, 'off', NULL, 88);


-- UPDATE customer score
UPDATE customers
SET score = 0
WHERE id = 6;


-- UPDATE customer country
UPDATE customers
SET country = 'UK'
WHERE id = 6;


-- INSERT additional customers
INSERT INTO customers (id, first_name, country, score)
VALUES
    (7, 'weewed', 'USA', NULL),
    (9, 'Jan', 'USA', NULL),
    (10, 'Meng', 'UK', NULL),
    (11, 'Gung', 'USA', NULL),
    (12, 'Jeggier', 'USA', NULL),
    (13, 'Old', 'UK', NULL);


-- Update all NULL scores to 0
UPDATE customers
SET score = 0
WHERE score IS NULL;


SELECT *
FROM customers;


-- DELETE customers with ID greater than 5
DELETE FROM customers
WHERE id > 5;
