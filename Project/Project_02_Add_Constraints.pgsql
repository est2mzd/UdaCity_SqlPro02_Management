/* Table - 1 */
ALTER TABLE comments
    ADD CONSTRAINT "const_comments_user_id" 
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL,
    ALTER COLUMN text_content SET NOT NULL,
    ADD CONSTRAINT "const_comments_parent_id" 
        FOREIGN KEY (parent_id) REFERENCES comments (id) ON DELETE CASCADE;


/* Table -2 */
ALTER TABLE posts
    ADD CONSTRAINT "const_posts_topic_id" 
        FOREIGN KEY (topic_id) REFERENCES topics (id) ON DELETE CASCADE,
    ADD CONSTRAINT "const_posts_user_id" 
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL,
    ALTER COLUMN title SET NOT NULL,
    ADD CONSTRAINT "const_posts_url_text"
        CHECK (url IS NOT NULL OR text_content IS NOT NULL);

/* Table - 3 */
ALTER TABLE users
    ADD CONSTRAINT "const_users_name_unique" UNIQUE (name),
    ALTER COLUMN name SET NOT NULL;

/* Table - 4 */
ALTER TABLE topics
    ADD CONSTRAINT "const_topics_name_unique" UNIQUE (name),
    ALTER COLUMN name SET NOT NULL;

/* Table - 5 */
ALTER TABLE votes
    ADD CONSTRAINT "const_votes_user_id"
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE SET NULL,
    ADD CONSTRAINT "const_votes_post_id"
        FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE CASCADE;