/* 
HAVING is like WHERE, but used when GROUP BY is specified. 

Main difference between WHERE and HAVING is that:
1. WHERE is stated before a GROUP BY clause.
2. HAVING is stated after a GROUP BY clause.

Example:
SELECT column1, aggregate_func(column2)
FROM tablename
GROUP BY column1
HAVING condition;
*/

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT store_id, COUNT(customer_id)
FROM customer_id
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

-- WHERE and HAVING
SELECT rating, AVG(rental_rate)
FROM film
WHERE rating IN ('R', 'G', 'PG') -- want only these ratings
GROUP BY rating
HAVING AVG(rental_rate) < 3; -- HAVING is used on the aggregated results
