/* Table - 1 */
CREATE TABLE comments(
    id SERIAL ,
    user_id INTEGER,
    post_id INTEGER,
    text_content TEXT,
    parent_id INTEGER,
    CONSTRAINT "const_comments_pk" PRIMARY KEY (id)
);

/* Table -2 */
CREATE TABLE posts(
    id SERIAL ,
    topic_id INTEGER,
    user_id INTEGER,
    title VARCHAR(100),
    url TEXT,
    text_content TEXT,
    vote_id INTEGER,
    created_at DATE,
    CONSTRAINT "const_posts_pk" PRIMARY KEY (id)
);

/* Table - 3 */
CREATE TABLE users(
    id SERIAL ,
    name VARCHAR(25),
    login_at DATE,
    CONSTRAINT "const_users_pk" PRIMARY KEY (id)
);

/* Table - 4 */
CREATE TABLE topics(
    id SERIAL ,
    name VARCHAR(30),
    description VARCHAR(500),
    CONSTRAINT "const_topic_pk" PRIMARY KEY (id)
);

/* Table - 5 */
CREATE TABLE votes(
    id SERIAL ,
    user_id INTEGER,
    post_id INTEGER,
    vote INTEGER,
    CONSTRAINT "const_votes_pk" PRIMARY KEY (id)
);