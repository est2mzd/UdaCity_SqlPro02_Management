/* Create Table */
CREATE TABLE samebook AS
    SELECT
      GENERATE_SERIES(1, 1000000) AS id,
      'John'::VARCHAR AS first_name,
      'Smith'::VARCHAR AS last_name;

/* Add Index */
CREATE INDEX ON samebook (last_name);

/* Get Statistics Information */
ANALYZE samebook;

EXPLAIN SELECT * FROM samebook WHERE last_name = 'Smith';

EXPLAIN SELECT * FROM samebook WHERE last_name = 'Jones';


/*--------------------------------------------------------------------*/

EXPLAIN SELECT * FROM phonebook_1000000 WHERE id = 12345;

EXPLAIN SELECT * FROM phonebook_1000000
    WHERE last_name = 'Jones'
        OR last_name = 'Smith';

EXPLAIN SELECT * FROM phonebook_1000000 WHERE id < 500000;

EXPLAIN SELECT * FROM phonebook_1000000 WHERE id < 600000;

EXPLAIN SELECT * FROM phonebook_1000000
    WHERE WHERE id < 500000
    ORDER BY id;

EXPLAIN SELECT * FROM phonebook_1000000
    WHERE last_name = 'Smith'
    LIMIT 10;