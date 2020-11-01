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
    ADD FOREIGN KEY (user_id) REFERENCES users;

/* Set Data 1 */
INSERT INTO users (username) VALUES 
    ('user1'), 
    ('user2');

INSERT INTO comments (user_id, content) VALUES
    (100, 'comment text'),
    (-5 , 'other comment text...');