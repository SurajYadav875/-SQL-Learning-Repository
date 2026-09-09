-- PostgreSQL
-- Topic: SQL Joins
--Notes

This is a very important Data Analyst topic.

Join	Returns
INNER JOIN	Matching records only
LEFT JOIN	All left + matching right
RIGHT JOIN	All right + matching left
FULL JOIN	Everything from both tables
Important pattern

Finding customers without orders:

LEFT JOIN
WHERE right_table.id IS NULL

This is extremely common in interviews.

-- INNER JOIN
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
INNER JOIN orders o
    ON c.id = o.customer_id;


-- LEFT JOIN
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
LEFT JOIN orders o
    ON c.id = o.customer_id;


-- RIGHT JOIN
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
RIGHT JOIN orders o
    ON c.id = o.customer_id;


-- FULL JOIN
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
FULL JOIN orders o
    ON c.id = o.customer_id;


-- Customers who haven't placed any order
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
LEFT JOIN orders o
    ON c.id = o.customer_id
WHERE o.customer_id IS NULL;
