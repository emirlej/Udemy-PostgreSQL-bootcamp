/*
- A CHECK constraint is a kind of constraint that allows you to specify if a value in a
column must meet a specific requirement.

- The CHECK constraint uses a BOOLEAN expression to evaluate the column values. 

*/

CREATE TABLE new_users(
    id serial PRIMARY KEY,
    first_name varchar(50),
    birth_date date CHECK(birth_date > '1900-01-01'), -- Set a min date value
    join_date date CHECK(join_date > birth_date),
    salary integer CHECK(salary > 0));

INSERT INTO new_users(first_name, birth_date, join_date, salary)
VALUES 
('Joe', '1980-02-02', '1990-04-04', -10);

CREATE TABLE checktest(
    sales integer CONSTRAINT positive_sales CHECK(sales>0) -- name the constraint 
);

-- Will return error because of the positive_sales CONSTRAINT
INSERT INTO checktest(sales)
VALUES (-12);
