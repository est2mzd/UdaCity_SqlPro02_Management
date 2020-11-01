ALTER TABLE "books" ADD PRIMARY KEY ("id");

ALTER TABLE "books" ADD UNIQUE ("isbn");

ALTER TABLE "authors" ADD PRIMARY KEY ("id");

ALTER TABLE "authors" ADD UNIQUE ("email_address");

ALTER TABLE "book_authors" ADD PRIMARY KEY ("book_id", "author_id");

ALTER TABLE "book_authors" ADD UNIQUE ("book_id", "contribution_rank");