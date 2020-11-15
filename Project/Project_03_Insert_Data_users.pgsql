BEGIN;
/*-----------------------<users>-----------------------------*/
/* INSERT : name in users table */
INSERT INTO users (name)(
    SELECT DISTINCT username
    FROM bad_comments
  UNION
    SELECT DISTINCT username
    FROM bad_posts
  UNION
    SELECT DISTINCT REGEXP_SPLIT_TO_TABLE(upvotes, ',')
    FROM bad_posts
  UNION
    SELECT DISTINCT REGEXP_SPLIT_TO_TABLE(downvotes, ',')
    FROM bad_posts
);

/* INSERT : login_at in users table */
UPDATE users SET login_at = '2020-01-01'
    WHERE id BETWEEN 1 AND 2000;

UPDATE users SET login_at = '2019-02-01'
    WHERE id BETWEEN 2001 AND 4000;

UPDATE users SET login_at = '2018-03-01'
    WHERE id BETWEEN 4001 AND 6000;

UPDATE users SET login_at = '2017-04-01'
    WHERE id BETWEEN 6001 AND 8000;

UPDATE users SET login_at = '2016-05-01'
    WHERE id >= 8001;

COMMIT;

SELECT * FROM users LIMIT 100;