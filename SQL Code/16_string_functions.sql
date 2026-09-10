-- PostgreSQL
-- Topic: String Functions

--Notes

These are the important PostgreSQL string functions you've covered:

        Function	  Purpose	                          Example
        CONCAT()	Combine strings	                CONCAT(firstname, lastname)
        LOWER()	  Convert to lowercase	          LOWER(firstname)
        UPPER()	  Convert to uppercase	          UPPER(firstname)
        TRIM()	  Remove leading/trailing spaces	TRIM(firstname)
        LENGTH()	Count characters	              LENGTH(firstname)
        REPLACE()	Replace text	                  REPLACE(phone,'-','')
        LEFT()	  Get characters from left	      LEFT(firstname,2)
        RIGHT()	  Get characters from right	      RIGHT(firstname,2)
        SUBSTRING()	Extract part of string	      SUBSTRING(firstname,2,3)

--Important Data Analyst use cases

String functions are commonly used for:

Data Cleaning
    ↓
Remove spaces
    ↓
Standardize case
    ↓
Clean phone numbers
    ↓
Extract text
    ↓
Create combined fields

For example:

TRIM()

is particularly useful when cleaning messy source data.

-- Concatenate first name and country into one column
SELECT
    firstname,
    country,
    CONCAT(firstname, ' ', country) AS full_info
FROM sales.customers;


-- Transform first name to lowercase
SELECT
    firstname,
    LOWER(firstname) AS lowercase_name
FROM sales.customers;


-- Transform first name to uppercase
SELECT
    firstname,
    UPPER(firstname) AS uppercase_name
FROM sales.customers;


-- Find customers whose first name contains
-- leading or trailing spaces
SELECT
    firstname,
    LENGTH(firstname) AS name_length
FROM sales.customers
WHERE firstname != TRIM(firstname);


-- Find customers whose last name contains
-- leading or trailing spaces
SELECT
    lastname,
    LENGTH(lastname) AS name_length
FROM sales.customers
WHERE lastname != TRIM(lastname);


-- Remove dashes from a phone number
SELECT
    '8788-261-856' AS phone_no,
    REPLACE('8788-261-856', '-', '') AS clean_phone_no;


-- Replace file extension from .txt to .csv
SELECT
    'report.txt' AS old_filename,
    REPLACE('report.txt', '.txt', '.csv') AS new_filename;


-- Calculate the length of each customer's first name
SELECT
    firstname,
    LENGTH(firstname) AS name_length
FROM sales.customers;


-- Retrieve the first two characters
SELECT
    firstname,
    LEFT(firstname, 2) AS first_two_characters
FROM sales.customers;


-- Retrieve the last two characters
SELECT
    firstname,
    RIGHT(firstname, 2) AS last_two_characters
FROM sales.customers;


-- Remove the first character from the first name
SELECT
    firstname,
    SUBSTRING(firstname, 2, LENGTH(firstname)) AS name_without_first_character
FROM sales.customers;
