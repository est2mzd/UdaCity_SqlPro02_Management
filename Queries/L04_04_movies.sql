CREATE TABLE "movies"(
    "id" SERIAL,
    "name" VARCHAR,
    "release_date" Date
);


INSERT INTO "movies" ("name", "release_date") VALUES
('Episode IV - A New Hope', '1977-05-25'),
('Episode V  - The Empire Strikes Back', '1980-08-17'),
('Episode VI - Return of the Jedi', '1983-05-25');

INSERT INTO "movies" ("id", "name", "release_date") VALUES
(1, 'Episode IV - A New Hope', '1977-05-25'),
(2, 'Episode V  - The Empire Strikes Back', '1980-08-17'),
(3, 'Episode VI - Return of the Jedi', '1983-05-25');

INSERT INTO "movies" VALUES
(1, 'Episode IV - A New Hope', '1977-05-25'),
(2, 'Episode V  - The Empire Strikes Back', '1980-08-17'),
(3, 'Episode VI - Return of the Jedi', '1983-05-25');

INSERT INTO "movies" ("id", "name", "release_date") VALUES
(DEFAULT, 'Episode IV - A New Hope', '1977-05-25'),
(DEFAULT, 'Episode V  - The Empire Strikes Back', '1980-08-17'),
(DEFAULT, 'Episode VI - Return of the Jedi', '1983-05-25');