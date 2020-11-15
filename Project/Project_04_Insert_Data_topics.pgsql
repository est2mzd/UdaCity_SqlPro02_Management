BEGIN;

/*-----------------------<topic>-----------------------------*/
INSERT INTO topics (topic)
    SELECT DISTINCT LEFT(topic,30)
    FROM bad_posts;

COMMIT;

SELECT * FROM topics LIMIT 100;