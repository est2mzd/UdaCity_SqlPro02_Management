BEGIN;
/*-----------------------<votes>-----------------------------*/ 
WITH 
  bp_up AS (
    SELECT id, REGEXP_SPLIT_TO_TABLE(upvotes, ',') username
    FROM bad_posts),
  bp_down AS (
    SELECT id, REGEXP_SPLIT_TO_TABLE(downvotes, ',') username
    FROM bad_posts)

INSERT INTO votes (user_id, post_id, vote)
    SELECT u.id, bp_up.id, 1
    FROM bp_up
    JOIN users u ON u.name = bp_up.username
  UNION
    SELECT u.id, bp_down.id, -1
    FROM bp_down
    JOIN users u ON u.name = bp_down.username;

SELECT * FROM votes LIMIT 100;


SELECT * FROM votes LIMIT 10;

SELECT DISTINCT user_id , COUNT(user_id)
FROM votes 
GROUP BY user_id
ORDER BY 1;


COMMIT;