/* Create Table */
CREATE TABLE users (
    id SERIAL,
    username VARCHAR UNIQUE
);

/* Set Data */
INSERT INTO users (id, username) VALUES
    (1, 'user1'),
    (1, 'user2');

SELECT * FROM users;


/* Add Constraint */
TRUNCATE TABLE users;
ALTER TABLE users ADD UNIQUE (id);


/* Set Data */
INSERT INTO users (username) VALUES
    (NULL),
    (NULL);

SELECT * FROM users;   


/* Create Table with Not Null*/
CREATE TABLE users (
    id SERIAL,
    username VARCHAR UNIQUE NOT NULL
);


/* Create Table with PRIMARY KEY*/
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR UNIQUE NOT NULL
);

CREATE TABLE users (
    id SERIAL,
    username VARCHAR(20),
    PRIMARY KEY (id),
    UNIQUE (username)
);

CREATE TABLE users (
    id SERIAL,
    username VARCHAR(20),
    CONSTRAINT "users_pk" PRIMARY KEY (id),
    CONSTRAINT "unique_usernames" UNIQUE (username)
);