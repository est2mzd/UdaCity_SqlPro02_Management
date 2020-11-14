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

SELECT DISTINCT(p.username), COUNT(p.username),  COUNT(c.username)
FROM bad_comments c, bad_posts p
WHERE c.username = p.username
GROUP BY p.username

SELECT DISTINCT p.username, c.username
FROM bad_comments c, bad_posts p
LIMIT 10