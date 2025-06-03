-- Active: 1748186750108@@127.0.0.1@5432@test_db

-- Group by country
SELECT country FROM students
    GROUP BY country;

-- Count students in each country
SELECT country, count(*) FROM students
    GROUP BY country;

-- Average age per country
SELECT country, avg(age) FROM students
    GROUP BY country;

-- Filter groups using HAVING
-- Filters country groups where average age > 20
SELECT country, avg(age) FROM students
    GROUP BY country
    HAVING avg(age) > 21;       --Note: WHERE filters individual rows; HAVING filters grouped results.

-- Count students born in each year
SELECT EXTRACT(YEAR from dob) as birth_year, count(*) FROM students
    GROUP BY birth_year;

SELECT * FROM students;