CREATE TABLE leads(
    user_id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL UNIQUE,
    minutes_spent_on_site numeric(3,1) -- Can be an int also. Depends
    signup_date timestamp NOT NULL, 
    );
    