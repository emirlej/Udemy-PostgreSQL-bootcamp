-- Subquery: A query which is nested inside another query

-- Usual way (two steps)
SELECT AVG(rental_rate) FROM FILM; -- Find the avearge values (2.98)
-- Get the wanted titles and rates
SELECT title, rental_rate
FROM FILM
WHERE rental_rate > 2.98;

-- Subquery example 1 
SELECT title, rental_rate
FROM FILM
WHERE rental_rate > (SELECT AVG(rental_rate) FROM FILM); 

-- Subquery example 2
SELECT film_id, title
FROM film
WHERE film_id IN
-- Good to have either a comment here, or white space for readability
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');

