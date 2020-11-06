/* create a small table from a big table */
CREATE TABLE phonebook_100 AS
    SELECT * FROM phonebook_1000000
    ORDER BY RANDOM()
    LIMIT 100;

SELECT * FROM phonebook_100 WHERE last_name = 'Jones';

CREATE INDEX ON phonebook_100 (last_name);

SELECT * FROM phonebook_100 WHERE last_name = 'Jones';