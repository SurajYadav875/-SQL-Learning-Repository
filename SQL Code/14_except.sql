-- PostgreSQL
-- Topic: EXCEPT
-- Description: Find records existing in first query but not second

--Notes

EXCEPT returns records from the first query that don't exist in the second query.

Think:

Employees
    -
Customers
    =
Employees who aren't customers

SELECT
    employeeid,
    firstname,
    lastname
FROM sales.employees

EXCEPT

SELECT
    customerid,
    firstname,
    lastname
FROM sales.customers;
