// Tiny socail media app

//-------------< Create User-1 > ----------------//
// Increment user's primary key next value
INCR user_id
--> (integer) 1

// Use value to create new user
HMSET users:1 username Bilbo email bilbo@shire.me
--> OK

HGETALL users:1
--> 
1) "username"
2) "Bilbo"
3) "email"
4) "bilbo@shire.me"


//-------------< Create Reverse Lookup Table > ----------------//
// Reverse lookup for users by username
HSET users_by_username Bilbo 1
--> (integer) 1

HGET users_by_username
--> "1"


//-------------< Create User-2 > ----------------//
INCR user_id
HMSET users:2 username Gandalf email gandalf@wizards.org
HSET  users_by_username Gandalf 2

//-------------< Create Follwers > ----------------//
//-- Bilbo(1) follows Gandalf(2)
SADD followers:2 1
SADD following:1 2


//-------------< Create User-3 > ----------------//
// PostgreのTransactionのように、MUTI - EXECの間のコマンドは、
// 全て成功　or　すべて実行しない　のように制御できる
MULTI
INCR user_id
HMSET users:3 username Gandalf2 email gandalf2@wizards.org
HSET  users_by_username Gandalf 3
EXEC