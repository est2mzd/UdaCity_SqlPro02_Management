
/* Create Table -> add Unique property <1> */
CREATE TABLE users(
    "id" SERIAL,
    "username" VARCHAR
);

ALTER TABLE users ADD UNIQUE (username);


/* Create Table -> add Unique property <2> */
CREATE TABLE users_2(
    "id" SERIAL,
    "username" VARCHAR UNIQUE
);


/* Set Data <1> */
INSERT INTO users (username) VALUES ('user1');
INSERT INTO users (username) VALUES ('user2');

/* Set Data <2> ==> Error */
UPDATE users SET username='user1' WHERE id = 2;

/* Remove the constraint */
ALTER TABLE users DROP CONSTRAINT "users_username_key";

/* Add a constraint wiht Tag */
ALTER TABLE users ADD CONSTRAINT "unique_user_name" UNIQUE (username);

/* Create Table with Constraints */

/* 1 */
CREATE TABLE users(
    "id" SERIAL,
    "username" VARCHAR,
    UNIQUE("username")
);

/* 2 */
CREATE TABLE users(
    "id" SERIAL,
    "username" VARCHAR,
    CONSTRAINT "unique_usernames" UNIQUE("username")
);