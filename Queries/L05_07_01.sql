/* Create Tables */
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR UNIQUE
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    content TEXT
);

CREATE TABLE comment_likes (
    user_id INTEGER,
    comment_id INTEGER,
    PRIMARY KEY (user_id, comment_id)
);

/* Create Foreign Key */
ALTER TABLE comments
    ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE comment_likes
    ADD FOREIGN KEY (user_id) REFERENCES users (users);