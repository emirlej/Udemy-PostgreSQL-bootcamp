-- Remove the tables if necessary
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS students;

-- Create teachers table
CREATE TABLE teachers(
	teacher_id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    homeroom_number integer CHECK(homeroom_number > 0),
    department varchar(100),
    phone varchar(50) UNIQUE,
    email varchar(100) UNIQUE
);

CREATE TABLE students(
	student_id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    homeroom_number integer CHECK(homeroom_number > 0),
    phone varchar(50) UNIQUE,
    email varchar(100) UNIQUE,
    graduation_year integer CHECK(graduation_year > 1900)
);

-- Add student
INSERT INTO students(first_name, last_name, phone, graduation_year, homeroom_number)
VALUES ('Mark', 'Watney', '777-555-1234', 2035, 5)
RETURNING *;

-- Add teacher
INSERT INTO teachers(first_name, last_name,homeroom_number, department, email, phone)
VALUES ('Jonas', 'Salk', 5, 'Biology Department', 'jsalk@school.org', '777-555-4321')
RETURNING *;



