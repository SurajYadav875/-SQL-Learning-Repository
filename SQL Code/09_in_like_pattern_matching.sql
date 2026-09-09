-- PostgreSQL
-- Topic: IN and LIKE
--Notes

IN is useful when checking multiple possible values.

Instead of:

WHERE country = 'Germany'
   OR country = 'USA'

you can write:

WHERE country IN ('Germany', 'USA')
LIKE

% = any number of characters

'M%'    → starts with M
'%n'    → ends with n
'%r%'   → contains r

_ = exactly one character.

'__r%'

means:

_ → 1st character
_ → 2nd character
r → 3rd character
% → anything after

-- Customers from Germany or USA
SELECT *
FROM customers
WHERE country = 'Germany'
   OR country = 'USA';


-- Using IN
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');


-- First name starts with M
SELECT *
FROM customers
WHERE first_name LIKE 'M%';


-- First name ends with N
SELECT *
FROM customers
WHERE first_name LIKE '%n';


-- First name contains R
SELECT *
FROM customers
WHERE first_name LIKE '%r%';


-- R is in the third position
SELECT *
FROM customers
WHERE first_name LIKE '__r%';
