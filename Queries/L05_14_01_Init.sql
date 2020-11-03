CREATE TABLE "users" (
  "id" SERIAL,
  "username" VARCHAR,
  "email" VARCHAR
);

CREATE TABLE "books" (
  "id" SERIAL,
  "isbn" VARCHAR,
  "name" VARCHAR
);

CREATE TABLE "user_book_preferences" (
  "user_id" INTEGER,
  "book_id" INTEGER,
  "preference" INTEGER
);