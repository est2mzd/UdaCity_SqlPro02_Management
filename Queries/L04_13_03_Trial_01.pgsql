/* Set Mode */
\set AUTOCOMMIT off


/* Start Transaction */
BEGIN;

/*---------------- Question - 1 ----------------------*/

/* Check Table */
SELECT *
FROM user_data ud
WHERE ud.state IN ('NY', 'CA');

SELECT *
FROM user_data ud
WHERE ud.state = 'NY' OR ud.state = 'CA';


/* Delete Rows = 'NY' or 'CA'*/
DELETE FROM user_data ud
    WHERE ud.state IN ('NY', 'CA');

SELECT COUNT(state) FROM user_data WHERE state IN ('NY', 'CA');


/*---------------- Question - 2 ----------------------*/
/* SPLIT_PART( column, delimiter, position_to_return ) */
SELECT SPLIT_PART(name, ' ', 1) first_name, 
       SPLIT_PART(name, ' ', 2) last_name
FROM user_data
LIMIT 5;

/* add column */
ALTER TABLE user_data
    ADD COLUMN "first_name" VARCHAR,
    ADD COLUMN "last_name"  VARCHAR;

\d user_data

/* Set Data */
UPDATE user_data SET
    first_name = SPLIT_PART(name, ' ', 1),
    last_name  = SPLIT_PART(name, ' ', 2);















/* End Transaction */
COMMIT;    