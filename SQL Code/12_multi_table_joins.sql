-- PostgreSQL
-- Topic: Multi-table Joins
-- Database schema: sales

SELECT
    o.orderid AS order_id,
    o.sales,
    CONCAT(c.firstname, ' ', c.lastname) AS customer_name,
    p.product AS product_name,
    p.price AS product_price,
    CONCAT(e.firstname, ' ', e.lastname) AS sales_person
FROM sales.orders o
LEFT JOIN sales.customers c
    ON o.customerid = c.customerid
LEFT JOIN sales.products p
    ON o.productid = p.productid
LEFT JOIN sales.employees e
    ON o.salespersonid = e.employeeid;

Notes

This demonstrates joining four tables:

Orders
  │
  ├── Customers
  │
  ├── Products
  │
  └── Employees

This is very relevant to real Data Analyst work, where information is usually spread across multiple tables.

