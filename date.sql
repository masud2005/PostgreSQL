-- Active: 1748186750108@@127.0.0.1@5432@test_db

-- Show current timezone
SHOW timezone;

-- Current timestamp (includes date, time, and timezone)
SELECT now();

-- Create a table with timestamp fields
CREATE TABLE timeZ(ts TIMESTAMP WITHOUT TIME ZONE, tsz TIMESTAMP WITH TIME ZONE);

-- Insert sample data
INSERT INTO timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');


SELECT * FROM timeZ;


-- Show today’s date
SELECT CURRENT_DATE;
SELECT now()::date;     -- Casts timestamp to date

-- Show Current time
SELECT now()::time;


-- Format timestamp as string
SELECT to_char(now(), 'yyyy/mm/dd');
SELECT to_char(now(), 'dd');
SELECT to_char(now(), 'Mon');
SELECT to_char(now(), 'mon');
SELECT to_char(now(), 'Month');
SELECT to_char(now(), 'MONTH');
SELECT to_char(now(), 'DDD');    -- Day of the year


-- Date arithmetic (subtracting intervals)
SELECT CURRENT_DATE - INTERVAL '1 year';    --the day before one year from today
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';    -- the day before one year and 2 months from today


-- Calculate age
SELECT age(CURRENT_DATE, '2005/01/20');     -- Result in years, months, days, e,g., {"years":20,"months":4,"days":10}

--calculating age of each student
SELECT *, age(CURRENT_DATE, dob) FROM students;


-- Extract parts from a date
SELECT extract(YEAR FROM '2023-08-12'::date);   --2023
SELECT extract(MONTH FROM '2023-08-12'::date);  -- 8
SELECT extract(DAY FROM '2023-08-12'::date);  -- 12


-- Boolean casting examples
SELECT 1::boolean;      --true
SELECT 'n'::boolean;    --false
SELECT 'y'::boolean;    --true
SELECT 'f'::boolean;    --false
SELECT 't'::boolean;    --true
SELECT 'no'::boolean;    --false
SELECT 'yes'::boolean;   --true