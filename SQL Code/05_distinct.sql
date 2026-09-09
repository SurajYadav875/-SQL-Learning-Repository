-- PostgreSQL
-- Topic: DISTINCT
-- Description: Retrieving unique values
Notes

DISTINCT removes duplicate values.

Suppose your data contains:

USA
USA
Germany
UK
USA
Germany

Then:

SELECT DISTINCT country
FROM customers;

returns:

USA
Germany
UK

-- Retrieve unique countries
SELECT DISTINCT country
FROM customers;
