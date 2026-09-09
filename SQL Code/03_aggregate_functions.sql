-- PostgreSQL
-- Topic: Aggregate Functions
-- Description: Performing calculations on multiple rows

Notes

Aggregate functions perform calculations across multiple rows.

Function	Purpose
SUM()	Total
COUNT()	Number of rows
AVG()	Average
MIN()	Minimum
MAX()	Maximum

Example:

SELECT SUM(score)
FROM customers;
GROUP BY

Used when you want calculations for each group.

SELECT country, SUM(score)
FROM customers
GROUP BY country;

Think:

"Give me the total score for each country."

-- Find total score for each country
SELECT
    country,
    SUM(score) AS total_score
FROM public.customers
GROUP BY country;


-- Find total score and total number of customers for each country
SELECT
    country,
    COUNT(id) AS total_customers,
    SUM(score) AS total_score
FROM customers
GROUP BY country;


-- Find average score for each country
SELECT
    country,
    ROUND(AVG(score), 0) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;
