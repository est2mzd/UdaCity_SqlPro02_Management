CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(500), --  Night of the Day of the Dawn of the Son of the Bride of the Return of the Revenge of the Terror of the Attack of the Evil, Mutant, Hellbound, Flesh-Eating Subhumanoid Zombified Living Dead, Part 3
  "description" TEXT
);


CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) UNIQUE
);

CREATE TABLE "movie_categories" (
  "movie_id" INTEGER REFERENCES "movies",
  "category_id" INTEGER REFERENCES "categories",
  PRIMARY KEY ("movie_id", "category_id")
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "username" VARCHAR(100),
);
CREATE UNIQUE INDEX ON "users" (LOWER("username"));

CREATE TABLE "user_movie_ratings" (
  "user_id" INTEGER REFERENCES "users",
  "movie_id" INTEGER REFERENCES "movies",
  "rating" SMALLINT CHECK ("rating" BETWEEN 0 AND 100),
  PRIMARY KEY ("user_id", "movie_id")
);
CREATE INDEX ON "user_movie_ratings" ("movie_id");

CREATE TABLE "user_category_likes" (
  "user_id" INTEGER REFERENCES "users",
  "category_id" INTEGER REFERENCES "categories",
  PRIMARY KEY ("user_id", "category_id")
);
CREATE INDEX ON "user_category_likes" ("category_id");