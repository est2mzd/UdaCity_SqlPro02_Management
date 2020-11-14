SELECT username FROM bad_comments LIMIT 100;

SELECT username FROM bad_posts LIMIT 100;

SELECT * FROM users ORDER BY id; 
SELECT * FROM topics ORDER BY id; 
SELECT * FROM posts ORDER BY id; 

SELECT id FROM bad_posts;

TRUNCATE TABLE users RESTART IDENTITY;

/*-----------------------<users>-----------------------------*/
/* INSERT : name in users table */
INSERT INTO users (name)
    SELECT DISTINCT username
    FROM bad_comments;

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

/*-----------------------<topic>-----------------------------*/
INSERT INTO topics (name)
    SELECT DISTINCT topic
    FROM bad_posts;

/*-----------------------<posts>-----------------------------*/ 
TRUNCATE TABLE posts RESTART IDENTITY;

INSERT INTO posts(topic_id, user_id, title, url, text_content)
    SELECT t.id, u.id, bp.title, bp.url, bp.text_content
    FROM bad_posts bp
    JOIN users u ON bp.username = u.name
    JOIN topics t ON bp.topic = t.name
    ORDER BY t.id ASC;


SELECT  
    id post_id, 
    REGEXP_SPLIT_TO_TABLE(upvotes, ',') up_name
FROM bad_posts
ORDER BY 1 ASC
LIMIT 100 ;

SELECT  
    id post_id, 
    REGEXP_SPLIT_TO_TABLE(downvotes, ',') down_name
FROM bad_posts
ORDER BY 1 ASC
LIMIT 100 ;


WITH 
  bp_up AS(
    SELECT  
        id post_id, 
        REGEXP_SPLIT_TO_TABLE(upvotes, ',') up_name
    FROM bad_posts),
  bp_down AS(
    SELECT  
        id post_id, 
        REGEXP_SPLIT_TO_TABLE(downvotes, ',') down_name
    FROM bad_posts)    

/*
    SELECT post_id, COUNT(down_name) down
    FROM bp_down
    GROUP BY post_id
    ORDER BY post_id
    LIMIT 100;
*/
    SELECT post_id, COUNT(up_name) up
    FROM bp_up
    GROUP BY post_id
    ORDER BY post_id
    LIMIT 100;

    SELECT post_id, COUNT(up_name) up, COUNT(down_name) down
    FROM bp
    GROUP BY post_id
    ORDER BY post_id
