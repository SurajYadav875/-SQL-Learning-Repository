-- PostgreSQL
-- Topic: Combining Current and Archived Data

--Notes

This is a practical example of combining:
Current Orders
      +
Archived Orders
      ↓
One Report
UNION ALL is appropriate when you want to retain all records.
The additional:

'orders' AS source_table

is useful because it tells you where each record came from.

SELECT
    'orders' AS source_table,
    orderid,
    productid,
    customerid,
    salespersonid,
    orderdate,
    shipdate,
    orderstatus,
    shipaddress,
    billaddress,
    quantity,
    sales,
    creationtime
FROM sales.orders

UNION ALL

SELECT
    'ordersArchived' AS source_table,
    orderid,
    productid,
    customerid,
    salespersonid,
    orderdate,
    shipdate,
    orderstatus,
    shipaddress,
    billaddress,
    quantity,
    sales,
    creationtime
FROM sales.ordersarchive;
