-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)

SELECT
first_name
FROM customer
WHERE first_name ILIKE '%Dan%'

-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 

SELECT
last_name
FROM customer
WHERE last_name ILIKE '%Dan%'

-- now add the results of the first query to the results of the second (UNION)

SELECT
first_name
FROM customer
WHERE first_name ILIKE '%Dan%'
UNION 
SELECT
last_name
FROM customer
WHERE last_name ILIKE '%Dan%'

-- find customers exist in both queries
-- hint: there's one

SELECT
first_name,
last_name
FROM customer
WHERE first_name ILIKE '%Dan%'
INTERSECT 
SELECT
first_name,
last_name
FROM customer
WHERE last_name ILIKE '%Dan%'

-- find all film with 'Fred' in the title

SELECT 
title
FROM film
WHERE title LIKE '%Fred%'

--find all films that mention squirrels in the description

SELECT 
title,
description
FROM film
WHERE description ILIKE '%squirrel%'

--find the intersection of the two previous subqueries

SELECT 
title,
description
FROM film
WHERE title LIKE '%Fred%'
INTERSECT 
SELECT 
title,
description
FROM film
WHERE description ILIKE '%squirrel%'