-- PostgreSQL
-- Topic: SELECT and WHERE
-- Description: Retrieving specific data and filtering records

-- Retrieve all columns
SELECT *
FROM public.orders;

SELECT *
FROM public.customers;


-- Retrieve selected columns
SELECT id, first_name, score
FROM customers;


-- Retrieve customers with score greater than 500
SELECT *
FROM customers
WHERE score > 500;


-- Retrieve customers whose score is not equal to 0
SELECT *
FROM customers
WHERE score != 0;


-- Retrieve customers whose score is NULL
SELECT *
FROM customers
WHERE score IS NULL;


-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';


-- Retrieve first name and country for customers from Germany
SELECT first_name, country
FROM customers
WHERE country = 'Germany';

Notes

SELECT → retrieves data from a table.

SELECT column1, column2
FROM table_name;

SELECT * → retrieves all columns.

WHERE → filters rows based on a condition.

Common comparison operators:

Operator	Meaning
=	Equal
!=	Not equal
<>	Not equal
>	Greater than
<	Less than
>=	Greater than/equal
<=	Less than/equal

  --For NULL, don't use = NULL.

Use:

WHERE score IS NULL;
