-- PostgreSQL
-- Topic: HAVING
-- Description: Filtering grouped/aggregated results
Remember this difference:

WHERE → filters rows BEFORE grouping

HAVING → filters groups AFTER grouping

Think of the execution logically as:

FROM
 ↓
WHERE
 ↓
GROUP BY
 ↓
HAVING
 ↓
SELECT
 ↓
ORDER BY
 ↓
LIMIT

Example:

WHERE score > 400

means:

First remove customers whose score is 400 or less.

Then:

GROUP BY country

Then:

HAVING SUM(score) > 800

means:

After grouping, keep only countries whose total score is greater than 800.

This is very important for interviews.

-- Return countries whose total score is greater than 800
SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 800;


-- Filter customers first, then group and filter the groups
SELECT
    country,
    SUM(score) AS total_score
FROM customers
WHERE score > 400
GROUP BY country
HAVING SUM(score) > 800;
