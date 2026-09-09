-- PostgreSQL
-- Topic: ORDER BY and LIMIT
-- Description: Sorting and restricting query results
Notes

ORDER BY → sorts the result.

ORDER BY score ASC;
ASC = Ascending
DESC = Descending

You can sort by multiple columns:

ORDER BY country ASC, score DESC;

This means:

Sort countries alphabetically.
Within each country, sort score from highest to lowest.

LIMIT → restricts the number of rows returned.

LIMIT 3;

Means return only 3 rows.

Important pattern

For questions like:

Find highest 2 customers

Use:

ORDER BY score DESC
LIMIT 2;

For:

Find lowest 2 customers

Use:

ORDER BY score ASC
LIMIT 2;

-- Sort customers by score in ascending order
SELECT *
FROM public.customers
ORDER BY score ASC;


-- Sort customers by score in descending order
SELECT *
FROM public.customers
ORDER BY score DESC;


-- Sort by country first and then by highest score
SELECT *
FROM customers
ORDER BY country ASC, score DESC;


-- Sort by highest score first and then country
SELECT *
FROM customers
ORDER BY score DESC, country ASC;


-- Retrieve only 3 customers
SELECT *
FROM customers
LIMIT 3;


-- Retrieve the 2 customers with the lowest scores
SELECT *
FROM customers
ORDER BY score ASC
LIMIT 2;


-- Retrieve the 2 customers with the highest scores
SELECT *
FROM customers
ORDER BY score DESC
LIMIT 2;


-- Retrieve the 2 most recent orders
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 2;
