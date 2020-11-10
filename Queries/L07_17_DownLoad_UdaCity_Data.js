
$ wget "https://github.com/ziad-saab/scenarios/raw/master/redis-exercise/init.redis"
$ redis-cli < ./init.redis

//-------------------------------------------
// Check All Data
KEYS *
-->
1) "users:1"
2) "books:2"
3) "books:1"
4) "users:3"
5) "ids"
6) "users:2"

//-------------------------------------------
// Check "ids"
GET ids
-->(error) WRONGTYPE Operation against a key holding the wrong kind of value

HGETALL ids
-->
1) "users"
2) "3"
3) "books"
4) "3"


//-------------------------------------------
// Check other data
HGETALL users:1
-->
1) "name"
2) "first user"


HGETALL books:1
-->
1) "title"
2) "1984"
3) "release_year"
4) "1949"
5) "author"
6) "George Orwell"

//----------------< Q2 > -------------------------
HGET users:3 name
-->
"some user"


//----------------< Q3 > -------------------------
KEYS *
-->
1) "users:1"
2) "books:2"
3) "books:1"
4) "users:3"
5) "ids"
6) "users:2"
-------> Next book id = 3 ?

HGETALL ids
-->
1) "users"
2) "3"
3) "books"
4) "3"
-------> Next book id = 4 ?

// Probabaly books:3 was deleted.
// So, next book id is 4.


//----------------< Q4 > -------------------------
// First, Check Data
HGETALL books:1
-->
1) "title"
2) "1984"
3) "release_year"
4) "1949"
5) "author"
6) "George Orwell"

HGETALL books:2
-->
1) "title"
2) "Animal Farm"
3) "release_year"
4) "1945"
5) "author"
6) "George Orwell"

// So, the answer is ....
// create field authors in ids
HINCRBY ids authors 1

// create hashes
HMSET authors:1 name "George Orwell"

// add author_id and delete author
HSET books:1 author_id 1
HDEL books:1 author

HSET books:2 author_id 1
HDEL books:2 author


//----------------< Q5 > -------------------------
// SQL
SELECT * FROM books WHERE LOWER(title) LIKE 'anim%'

// Redis
// Answer is to create many SETS
// When I want to find "Animal Farm" in books:2

SADD book_search:a 2
SADD book_search:an 2
SADD book_search:ani 2
...
SADD "book_search:animan f" 2 // if there is spaces.
...

// How to user this SETS
SMEMBERS book_search:anim
--> "2"










