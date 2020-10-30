INSERT INTO people (first_name, last_name)
    SELECT first_name, last_name FROM denormalized_people;

SELECT * FROM people;


SELECT first_name, last_name, REGEXP_SPLIT_TO_TABLE(email, ',')
FROM   denormalized_people  ;


INSERT INTO people_emails (person_id, email_address)
    SELECT p.id, REGEXP_SPLIT_TO_TABLE(d.emails, ',')
    FROM denormalized_people AS d
    JOIN people AS p
    ON   d.first_name = p.first_name AND
         d.last_name  = p.last_name;