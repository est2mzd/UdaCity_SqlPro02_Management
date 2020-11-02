/* Delete Tables */
DROP TABLE IF EXISTS users_2;
DROP TABLE IF EXISTS comments_2;

/* Create Table 1 */
CREATE TABLE users_2 (
    id SERIAL PRIMARY KEY,
    username VARCHAR UNIQUE
);

/* Create Table 2 */
CREATE TABLE comments_2(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users_2,
    content TEXT
);

/* Set Data 1 */
INSERT INTO users_2 (username) VALUES
    ('Alice'),
    ('Bob'),
    ('Carol');

/* Set Data 2 */
INSERT INTO comments_2 (user_id, content) VALUES
    (1, 'hello world'),
    (2, 'lorem ipsum'),
    (3, 'another comment');

/* DELETE Rows */
DELETE FROM users_2
    WHERE id = 1;