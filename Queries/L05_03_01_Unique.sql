
/* Create Table -> add Unique property <1> */
CREATE TABLE users(
    "id" SERIAL,
    "username" VARCHAR
);

ALTER TABLE users ADD UNIQUE (user_name);


/* Create Table -> add Unique property <2> */
CREATE TABLE users(
    "id" SERIAL,
    "username" VARCHAR UNIQUE
);
