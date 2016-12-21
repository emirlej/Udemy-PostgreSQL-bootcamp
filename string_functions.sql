-- Concatenate first and last name
SELECT first_name || ' ' || last_name AS full_name
FROM customer;

-- Use the upper() function and calc. the char.len.
SELECT upper(first_name), char_length(first_name)
FROM customer;