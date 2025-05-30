-- Active: 1748186750108@@127.0.0.1@5432@test_db

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');


-- Select All Rows
SELECT * FROM students;

-- Select Specific Column
SELECT email FROM students;

-- Select Multiple Columns
SELECT email, age FROM students;

-- Using Aliases
SELECT email as studentEmail FROM students;
SELECT email as "Student Email" FROM students;

-- Order By
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY age DESC;

-- Uniq value
SELECT DISTINCT country from students;



-- Data filtering

-- Select students from the USA
SELECT * FROM students 
    WHERE country = 'USA'

-- Select students with 'A' grade in Physics
SELECT * FROM students 
    WHERE grade = 'A' AND course = 'Physics';

-- Select students with a specific blood group ('A+')
SELECT * FROM students 
    WHERE blood_group = 'A+';

-- Select students from the USA or from Australia
SELECT * FROM students 
    WHERE country = 'USA' OR country = 'Australia';

-- Select students from the USA or from Australia and the age is 20
SELECT * FROM students 
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

-- Select students with a grade of 'A' or 'B' in Math or Physics:
SELECT * FROM students 
    WHERE (grade = 'A' or grade = 'B') AND (course = 'Math' OR course = 'Physics');


-- Filtering by Range

-- Age greater than 20
SELECT * FROM students 
    WHERE age > 20;

-- Between 18 and 22
SELECT * FROM students 
    WHERE age BETWEEN 18 AND 22;

--select students older than 20 years old with course history;
SELECT * FROM students 
    WHERE age > 20 and course = 'History';

-- Not Equal
SELECT * FROM students 
    WHERE age <> 20;

SELECT * FROM students 
    WHERE age != 20;

SELECT * FROM students 
    WHERE NOT age = 20;



/*
    @Scalar functions
    UPPER() Converts a string to uppercase.
    LOWER() Converts a string to lowercase.
    CONCAT() Concatenates two or more strings.
    LENGTH() Returns the number of characters in a string.
    
    @Aggregate functions
    AVG() Calculate the average of a set of values.
    MAX() Returns the max value in a set.
    MIN() Returns the minimum value in a set.
    SUM Calculates the sum of values in a set.
    COUNT() Counts the number of rows in a set.

*/

SELECT * FROM students;

-- UPPER()
SELECT UPPER(first_name) FROM students;

SELECT UPPER(first_name) as "First Name in Uppercase", * FROM students;

-- LOWER()
SELECT LOWER(first_name) FROM students;

-- CONCAT()
SELECT CONCAT(first_name, ' ', last_name) FROM students;

-- LENGTH()
SELECT LENGTH(first_name) FROM students;

-- AVG()
SELECT AVG(age) FROM students;

-- MAX()
SELECT MAX(age) FROM students;

-- MIN()
SELECT MIN(age) FROM students;

-- COUNT()
SELECT COUNT(*) FROM students;

-- Find Longest Name
SELECT MAX(LENGTH(first_name)) FROM students;


-- NULL Filtering

-- Is Null
SELECT email FROM students
    WHERE email IS NULL;

-- Is Not Null
SELECT email FROM students
    WHERE email IS NOT NULL;

-- Specific email
SELECT * FROM students 
    WHERE email = 'olivia.davis@example.com';

-- Handling NULL with COALESCE
SELECT COALESCE(email, 'Email Not Provided') FROM students;


-- IN Operator

-- Using OR Operator
SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK' OR country = 'Canada';

-- Using IN Operator
SELECT * FROM students
    WHERE country IN ('USA', 'UK', 'Canada');

-- Using NOT IN Operator
SELECT * FROM students
    WHERE country NOT IN ('USA', 'UK', 'Canada');


-- BETWEEN Operator
SELECT * FROM students
    WHERE age BETWEEN 19 and 22;

SELECT * FROM students
    WHERE dob BETWEEN '2001-01-01' and '2005-01-01' ORDER BY dob;


-- LIKE Operator this is Case Sensitive
SELECT * FROM students
    WHERE first_name LIKE '%am';

SELECT * FROM students
    WHERE first_name LIKE 'A%';

SELECT * FROM students
    WHERE first_name LIKE 'a%';

SELECT * FROM students
    WHERE first_name LIKE '__a%';

SELECT * FROM students
    WHERE first_name LIKE '%a__';

SELECT * FROM students
    WHERE first_name LIKE '__a';


-- ILIKE Operator this is not Case Sensitive
SELECT * FROM students
    WHERE first_name ILIKE 'a%';



-- Pagination (LIMIT and OFFSET)

-- Shows first 5 rows
SELECT * FROM students
    LIMIT 5;

-- Skips the first 5 rows, shows next 5 rows
SELECT * FROM students
    LIMIT 5 OFFSET 5;


-- Pagination Example
-- Rows 1-5
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 0;

-- Rows 6-10
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 1;

-- Rows 11-15
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 2;

-- Rows 16-20
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 3;


-- Deleting data
-- Delete all B grade students
DELETE FROM students
    WHERE grade = 'B';

-- Specific condition
DELETE FROM students
    WHERE grade = 'B' AND country = 'USA';

-- Deletes all rows in the table
DELETE FROM students;


-- Update Data

-- one data updated in rows
UPDATE students
    set email = 'default@mail.com'
    WHERE student_id = 41;

-- multiple data updated in rows
UPDATE students
    set email = 'default@mail.com', age = 21;
    WHERE student_id = 41;

SELECT * FROM students;