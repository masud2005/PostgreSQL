-- Active: 1748186750108@@127.0.0.1@5432@test_db

-- Select Data from Table
SELECT * FROM person1;

-- Add a Column
ALTER Table person1
ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

-- Delete a Column
ALTER Table person1 DROP COLUMN email;

-- Rename a Column
ALTER TABLE person1 RENAME COLUMN age to user_age;

-- Change Data Type of a Column
ALTER TABLE person1 ALTER COLUMN user_name TYPE VARCHAR(30);

-- Add Constraint to Existing Column
ALTER TABLE person1 ALTER COLUMN user_age set NOT NULL;

-- Delete a Constraint
ALTER TABLE person1 ALTER COLUMN user_age drop NOT NULL;

-- Add Unique Constraint
ALTER TABLE person1
ADD constraint unique_person1_user_age UNIQUE (user_age);

-- Delete unique constraint
ALTER TABLE person1
    DROP constraint unique_person1_user_age;

-- All record remove from person1
TRUNCATE TABLE person1;

-- Insert Data into Table
INSERT INTO person1 VALUES ( 5, 'masud', 21, 'masud@gmail.com' );