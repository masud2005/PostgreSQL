-- Active: 1748186750108@@127.0.0.1@5432@test_db

CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL, 
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

INSERT INTO "user" (username)
VALUES  ('Masud'),
        ('Rana'),
        ('Abdullah'),
        ('Sabbir'),
        ('Kawsar');


INSERT INTO post (title, user_id)
VALUES
    ('My first post!', 1),
    ('Just another update!', 2),
    ('Learning SQL is fun!', 3),
    ('Post number four!', 3),
    ('Quick post for practice.', 2)

INSERT INTO post (title, user_id)
    VALUES ('Test', NULL);

-- Make column non-nullable (if needed):
ALTER TABLE post ALTER COLUMN user_id set NOT NULL;

-- Attempt to delete a user
DELETE FROM "user" 
    WHERE id = 3;

-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT


-- Drop Table
DROP TABLE "user";
DROP TABLE post;

-- View Table
SELECT * FROM "user";
SELECT * FROM post;