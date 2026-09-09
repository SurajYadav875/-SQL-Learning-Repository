-- PostgreSQL
-- Topic: Comparison and Logical Operators
--Notes
Comparison operators
=       Equal
!=      Not equal
<>      Not equal
>       Greater than
>=      Greater than or equal
<       Less than
<=      Less than or equal
Logical operators
AND
OR
NOT
BETWEEN
WHERE score BETWEEN 100 AND 500

includes 100 and 500.

Equivalent to:

WHERE score >= 100
AND score <= 500

-- Equal
SELECT *
FROM customers
WHERE country = 'Germany';


-- Not equal
SELECT *
FROM customers
WHERE country != 'Germany';

SELECT *
FROM customers
WHERE country <> 'Germany';


-- Greater than
SELECT *
FROM customers
WHERE score > 500;


-- Greater than or equal
SELECT *
FROM customers
WHERE score >= 500;


-- Less than
SELECT *
FROM customers
WHERE score < 500;


-- Less than or equal
SELECT *
FROM customers
WHERE score <= 500;


-- AND
SELECT *
FROM customers
WHERE score > 500
  AND country = 'USA';


-- OR
SELECT *
FROM customers
WHERE score > 500
   OR country = 'USA';


-- NOT
SELECT *
FROM customers
WHERE NOT score < 500;


-- BETWEEN
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;


-- Equivalent condition
SELECT *
FROM customers
WHERE score >= 100
  AND score <= 500;
