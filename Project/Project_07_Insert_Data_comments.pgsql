BEGIN;
/*-----------------------< comments >-----------------------------*/ 
INSERT INTO comments (id, user_id, post_id, text_content)
    SELECT bc.id, u.id, bc.post_id, bc.text_content
    FROM bad_comments bc
    JOIN users u ON bc.username = u.name;

SELECT * FROM comments LIMIT 100;

COMMIT;