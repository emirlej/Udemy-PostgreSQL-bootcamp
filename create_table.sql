-- Create an account table
CREATE TABLE account(
    user_id serial PRIMARY KEY, -- colname datatype constraint(s)
    username varchar(50) UNIQUE NOT NULL,
    password varchar(50) NOT NULL,
    email varchar(335) UNIQUE NOT NULL,
    created_on timestamp NOT NULL,
    last_login timestamp);
    
-- Role table
CREATE TABLE role(
    role_id serial PRIMARY KEY,
    role_name varchar(255) UNIQUE NOT NULL);
    
-- Account role
CREATE TABLE account_role(
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    grant_date timestamp without time zone,
    PRIMARY KEY (user_id, role_id),
    -- DON*T WORRY ABOUT THIS NOW, WILL DISCUSS IT LATER...
    CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
    REFERENCES role (role_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    
    CONSTRAINT account_role_user_ide_fkey FOREIGN KEY (user_id)    
    REFERENCES account (user_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );
