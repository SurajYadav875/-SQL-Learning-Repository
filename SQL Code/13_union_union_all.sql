-- PostgreSQL
-- Topic: UNION and UNION ALL
--Notes

UNION:
Combines results
+
Removes duplicates
UNION ALL:
Combines results
+
Keeps duplicates
Both queries must have:
Same number of columns
Compatible data types
Corresponding columns in the same order

-- Combine customers and employees
SELECT
    firstname,
    lastname
FROM sales.customers

UNION

SELECT
    firstname,
    lastname
FROM sales.employees;


-- UNION with ID
SELECT
    customerid,
    firstname,
    lastname
FROM sales.customers

UNION

SELECT
    employeeid,
    firstname,
    lastname
FROM sales.employees;


-- UNION ALL
SELECT
    employeeid,
    firstname,
    lastname
FROM sales.employees

UNION ALL

SELECT
    customerid,
    firstname,
    lastname
FROM sales.customers;
