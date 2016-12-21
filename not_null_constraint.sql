/*
- In database theory, NULL is an unknown or missing value.
- It is different from 0 or empty (email can be marked with '', which is an empty string).
*/

CREATE TABLE learn_null(
    first_name varchar(50),
    sales integer NOT NULL
);

-- This will return an error because sales cannot be NULL!
INSERT INTO learn_null(first_name)
VALUES ('John');

-- This works
INSERT INTO learn_null(first_name, sales)
VALUES ('John', 12);

