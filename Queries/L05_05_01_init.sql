CREATE TABLE "books" (
  "id" SERIAL,
  "title" VARCHAR,
  "isbn" VARCHAR
);

CREATE TABLE "authors" (
  "id" SERIAL,
  "name" VARCHAR,
  "email_address" VARCHAR
);

CREATE TABLE "book_authors" (
  "book_id" INTEGER,
  "author_id" INTEGER,
  "contribution_rank" SMALLINT
);

COMMENT ON COLUMN "book_authors"."contribution_rank" IS
  'Each author should have a different rank for a given book';