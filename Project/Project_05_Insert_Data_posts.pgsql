BEGIN;

/*-----------------------<posts>-----------------------------*/ 
INSERT INTO posts (id, topic_id, user_id, title, url, text_content)
    SELECT bp.id, t.id, u.id, LEFT(bp.title,100), bp.url, bp.text_content
    FROM bad_posts bp
    JOIN users u ON bp.username = u.name
    JOIN topics t ON bp.topic = t.topic;

COMMIT;

SELECT * FROM posts LIMIT 100;
