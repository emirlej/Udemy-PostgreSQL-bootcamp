-- Self Join: join a table to itself (you are joining using the same table)
-- As a general rule, always use aliases (AS statements) when using self join

-- Example: Find all that have first_name = last_name
SELECT a.customer_id, a.first_name || ' ' || a.last_name AS name1,
b.customer_id, b.first_name || ' ' || b.last_name AS name2
FROM customer AS a, customer AS b
WHERE a.first_name = b.last_name
ORDER BY a.customer_id;
