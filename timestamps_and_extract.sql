SELECT customer_id, extract(day from payment_date) AS day
FROM payment;

-- Find the sum for every month
SELECT SUM(amount) as total, EXTRACT(month from payment_date) AS month
FROM payment
GROUP BY month
ORDER BY total DESC;