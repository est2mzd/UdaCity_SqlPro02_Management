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

/* This Script becomes Error */
INSERT INTO user_data ("first_name", "last_name")
    SELECT SPLIT_PART(name, ' ', 1),
           SPLIT_PART(name, ' ', 2)
    FROM user_data;


SELECT * FROM user_data LIMIT 5;


/*---------------- Question - 3-A & 3-B ----------------------*/
/* Create State Table */
CREATE TABLE "states"(
    "id" SMALLSERIAL,
    "state" CHAR(2)
);

/* Check DATA */
SELECT DISTINCT state 
From user_data;

/* Set DATA */
INSERT INTO states (state)
    SELECT DISTINCT state FROM user_data;

SELECT * FROM states LIMIT 5;


/*---------------- Question - 3-C & 3-D ----------------------*/
/* Add Column state_id to user_data */
ALTER TABLE user_data ADD state_id SMALLINT;

SELECT * FROM user_data LIMIT 5;

/* Set id */
UPDATE user_data SET state_id = (
    SELECT states.id
    FROM states
    WHERE states.state = user_data.state
);


/*---------------- Question - 3-E ----------------------*/
/* Delete unnecessary column */
ALTER TABLE user_data DROP COLUMN state;








/* End Transaction */
COMMIT;    