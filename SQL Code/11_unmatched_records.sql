-- PostgreSQL
-- Topic: Finding Unmatched Records
--Notes

The general pattern is:

LEFT JOIN
WHERE right_table.key IS NULL

or

RIGHT JOIN
WHERE left_table.key IS NULL

Used to identify missing relationships / unmatched records.

-- Orders without matching customers
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers c
RIGHT JOIN orders o
    ON c.id = o.customer_id
WHERE o.customer_id IS NULL;
