-- Active: 1748186750108@@127.0.0.1@5432@test_db


CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
)


CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(50)
)

ALTER TABLE department RENAME to departments;

INSERT INTO employees VALUES (1, 'John Doe', 101);
INSERT INTO employees VALUES (2, 'Jane Smith', 102);

INSERT INTO departments 
    VALUES (101, 'Human Resources'), (102, 'Marketing');


-- CROSS JOIN
SELECT * FROM employees
    CROSS JOIN departments;

-- NATURAL JOIN
SELECT * FROM employees
    NATURAL JOIN departments;

SELECT * FROM employees;
SELECT * FROM departments;