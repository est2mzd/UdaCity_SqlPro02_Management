/*============================================================================================*/
/* Check Table */
\d bad_comments

                                   Table "public.bad_comments"
    Column    |         Type          |                         Modifiers                         
--------------+-----------------------+-----------------------------------------------------------
 id           | integer               | not null default nextval('bad_comments_id_seq'::regclass)
 username     | character varying(50) | 
 post_id      | bigint                | 
 text_content | text                  | 
Indexes:
    "bad_comments_pkey" PRIMARY KEY, btree (id)

/*============================================================================================*/
\d bad_posts
                                    Table "public.bad_posts"
    Column    |          Type           |                       Modifiers                        
--------------+-------------------------+--------------------------------------------------------
 id           | integer                 | not null default nextval('bad_posts_id_seq'::regclass)
 topic        | character varying(50)   | 
 username     | character varying(50)   | 
 title        | character varying(150)  | 
 url          | character varying(4000) | default NULL::character varying
 text_content | text                    | 
 upvotes      | text                    | 
 downvotes    | text                    | 
Indexes:
    "bad_posts_pkey" PRIMARY KEY, btree (id)