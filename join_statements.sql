-- Connect data from different tables.

-- Syntax:
SELECT A.primkey, A.col1, B.primkey, B.col2
FROM A
INNER JOIN B ON A.primkey = B.foreignkey;

SELECT 
customer.customer_id, 
-- unique to the customer table 
first_name 
last_name,
email,
-- unique to the payment table 
amount, 
payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE customer.customer_id = 1
ORDER BY amount DESC;

SELECT country, COUNT(city) as cnt_cities
FROM city
INNER JOIN country ON city.country_id = country.country_id
GROUP BY country
ORDER BY cnt_cities DESC;

SELECT film.film_id, film.title, inventory_id
FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL
ORDER BY film.film_id;
