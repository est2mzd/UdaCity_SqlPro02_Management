UPDATE people SET last_name =
    SUBSTR(last_name, 1,1) ||
    LOWER(SUBSTR(last_name,2));


-- Change born_ago to data_of birth

<1> error
SELECT CURRENT_TIMESTAMP - born_ago FROM people;

<2>
SELECT CURRENT_TIMESTAMP - born_ago::INTERVAL FROM people;

<3>
SELECT (CURRENT_TIMESTAMP - born_ago::INTERVAL)::DATE FROM people;

-----------

ALTER TABLE people ADD COLUMN date_of_birth DATE;

UPDATE people SET date_of_birth = 
    (CURRENT_TIMESTAMP - born_ago::INTERVAL)::DATE;

ALTER TABLE people DROP COLUMN born_ago;