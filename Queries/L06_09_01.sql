/* Start tic/toc */
\timing on


/* create a small table from a big table */
CREATE TABLE phonebook_100 AS
    SELECT * FROM phonebook_1000000
    ORDER BY RANDOM()
    LIMIT 100;

/* 1.0 ms */
SELECT * FROM phonebook_100 WHERE last_name = 'Jones';

/* 0.3 ms */
SELECT * FROM phonebook_100 WHERE last_name = 'Jones';

CREATE INDEX ON phonebook_100 (last_name);

/* 0.6 ms */
SELECT * FROM phonebook_100 WHERE last_name = 'Jones';

/* 0.4 ms */
SELECT * FROM phonebook_100 WHERE last_name = 'Jones';


/*-------------------------------------------------*/

/* 0.4 ms*/
EXPLAIN SELECT * FROM phonebook_1000000 WHERE last_name = 'Jones';

CREATE INDEX ON phonebook_1000000 (last_name);

/*  ms*/
EXPLAIN SELECT * FROM phonebook_1000000 WHERE last_name = 'Jones';

/*  ms*/
EXPLAIN SELECT * FROM phonebook_100 WHERE last_name = 'Jones';

/*  ms*/
EXPLAIN SELECT * FROM phonebook_1000000 WHERE last_name = 'Clara';


