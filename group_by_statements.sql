SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(*) -- count the number of rows
FROM payment
GROUP BY staff_id;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*);

SELECT rating, ROUND(AVG(rental_rate), 2) AS avg_rating
FROM film
GROUP BY rating
ORDER BY avg_rating;