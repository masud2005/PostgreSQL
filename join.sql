-- Active: 1748186750108@@127.0.0.1@5432@test_db

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


-- Inner Join/Join
SELECT title, username FROM post
    INNER JOIN "user" ON post.user_id = "user".id;


INSERT INTO post (title, user_id) VALUES
('this is a test post title', NULL);

-- LEFT Join / LEFT OUTER JOIN
SELECT * FROM post as p
    LEFT JOIN "user" as u ON p.user_id = u.id;

-- RIGHT JOIN / RIGHT OUTER JOIN
SELECT * FROM post as p
    RIGHT JOIN "user" as u ON p.user_id = u.id;

-- FULL Join/ FULL OUTER JOIN
SELECT * FROM post as p
    FULL JOIN "user" as u ON p.user_id = u.id;

-- Drop Table
DROP TABLE "user";
DROP TABLE post;

-- View Table
SELECT * FROM "user";
SELECT * FROM post;