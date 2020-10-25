CREATE TABLE "posts"(
    "id" SERIAL,
    "title" TEXT,
    "category" VARCHAR
);


INSERT INTO "posts" ("id", "title", "category") VALUES
(DEFAULT, 'First post', 'General'),
(DEFAULT, 'Second post', 'Travel'),
(DEFAULT, 'Third post', 'Equipment'),
(DEFAULT, '4th post', 'Travel'),
(DEFAULT, 'Lorem ipsum', 'Tips'),
(DEFAULT, 'Another post', 'Travel');



CREATE TABLE "categories"(
    "id" SERIAL,
    "name" VARCHAR
 );


INSERT INTO "categories" ("name")
    SELECT DISTINCT category FROM posts;