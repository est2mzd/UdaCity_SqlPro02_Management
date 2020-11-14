/* Check Unique Values*/
SELECT 
    COUNT(DISTINCT id) AS num_id ,  
    COUNT(DISTINCT username) AS num_name, 
    COUNT(DISTINCT post_id)  AS num_post_id, 
    COUNT(DISTINCT text_content) AS num_text
FROM bad_comments;


/* Check Unique Values*/
SELECT 
    COUNT(DISTINCT id) AS num_id ,  
    COUNT(DISTINCT topic) AS num_topic, 
    COUNT(DISTINCT username)  AS num_name, 
    COUNT(DISTINCT title)  AS num_title,
    COUNT(DISTINCT url)  AS num_url,
    COUNT(DISTINCT text_content) AS num_text,
    COUNT(DISTINCT upvotes) AS num_up,
    COUNT(DISTINCT downvotes) AS num_down
FROM bad_posts;

SELECT COUNT(p.username)
FROM bad_comments c, bad_posts p
WHERE c.username = p.username


SELECT DISTINCT username
FROM bad_comments
LIMIT 10

SELECT DISTINCT username
FROM bad_posts
LIMIT 10

SELECT id, post_id
FROM bad_comments
LIMIT 10;
