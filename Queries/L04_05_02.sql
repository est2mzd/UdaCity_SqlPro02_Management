INSERT INTO "people" ("first_name", "last_name")
    SELECT "first_name", "last_name" FROM "denormalized_people";

SELECT * FROM people;


SELECT first_name, last_name, REGEXP_SPLIT_TO_TABLE("email", ',')
FROM   denormalized_people  ;