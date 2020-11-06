CREATE TABLE "books" (
  "id" SERIAL,
  "title" VARCHAR,
  "isbn" VARCHAR,
  "author_id" INTEGER
);

CREATE TABLE "authors" (
  "id" SERIAL,
  "name" VARCHAR
);

CREATE TABLE "topics" (
  "id" SERIAL,
  "name" VARCHAR
);

CREATE TABLE "book_topics" (
  "book_id" INTEGER,
  "topic_id" INTEGER
);