/* Create Table */
CREATE TABLE users (
    id SERIAL,
    username VARCHAR UNIQUE
);

/* Set Data */
INSERT INTO users (id, username) VALUES
    (1, 'user1'),
    (1, 'user2');

/* Add Constraint */
ALTER TABLE users ADD UNIQUE (id);

/* Set Data */
INSERT INTO users (username) VALUES
    (NULL),
    (NULL);