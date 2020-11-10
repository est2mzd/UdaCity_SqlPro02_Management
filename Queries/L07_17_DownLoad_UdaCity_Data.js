
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
