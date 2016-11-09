/*
Name: EMLE
Date: 09.11.16 
*/

-- Number of payment transactions were greater than 5000 dollars?
SELECT COUNT(amount) 
FROM payment
WHERE amount > 5;

-- How many actors have a first name starting with P?
SELECT COUNT(first_name) -- Can also use COUNT(*) 
FROM actor
WHERE first_name LIKE 'P%';

-- How many unique districts are our customers from?
SELECT COUNT(DISTINCT district)
FROM address;

-- Retrieve the unique district names
SELECT DISTINCT district
FROM address;

/*
How many films have a rating of R and a replacement cost 
between 5 and 15 dollars?
*/
SELECT COUNT(*) -- * means count number of rows
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

-- How many films have the word Truman somewhere in the title?
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';
