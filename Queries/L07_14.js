// Listの取り扱い

LPUSH numbers 1
  --> (integer) 1

LPUSH numbers 2
  --> (integer) 2

LPUSH numbers 3
  --> (integer) 3

LPUSH numbers 4 5 6
  --> (integer) 6


LLEN numbers
  --> (integer) 6


LRANGE numbers 0 2
  --> 1) "6"
      2) "5"
      3) "4"

LRANGE numbers 0 -1
--> 1) "6"
    2) "5"
    3) "4"
    4) "3"
    5) "2"
    6) "1"

//-----------------------------------------------
// Sets : データの順番は関係ない

// メンバーを追加
SADD deck 2 3 4 5 6 7 8 9 10
--> (integer) 9

SADD deck A J Q K
--> (integer) 4

// メンバー数を取得
SCARD deck
--> (integer) 13

// メンバー一覧を取得
SMEMBERS deck
--> 
 1) "J"
 2) "6"
 3) "4"
 4) "10"
 5) "8"
 6) "5"
 7) "7"
 8) "K"
 9) "A"
10) "9"
11) "2"
12) "Q"
13) "3"

// Aはすでに、あるので　Add　できない
SADD deck A
--> (integer) 0

// メンバー数を取得 --> A の追加ができていない
SCARD deck
--> (integer) 13

// ランダムにメンバーを取得
SPOP deck
--> "A"

SPOP deck
--> "7"

// 存在の確認--> Aは SPOPしたからない
SISMEMBER deck A
--> (integer) 0

// 存在の確認--> 8はSetsに残っている
SISMEMBER deck 8
--> (integer) 1

//------------------------------------------------------------
// Hashes : 複数keyが可能

// Hashesを作成
HMSET person first_name Sarah last_name Connor
--> OK

// age　を追加
HSET  person age 60
--> (integer) 1

// first_name　を取得
HGET  person first_name
--> "Sarah"

// person　を取得
GET person
--> Error // personは、single valueじゃないので、エラーになる

// person　を取得
HGETALL person
1) "first_name"
2) "Sarah"
3) "last_name"
4) "Connor"
5) "age"
6) "50"

// age に　1を足す
HINCRBY person age 1
--> (integer) 51

// person　を取得
HGETALL person
1) "first_name"
2) "Sarah"
3) "last_name"
4) "Connor"
5) "age"
6) "51"

// person　から　ageを削除
HDEL person age
--> (integer) 1

// person　から　ageを取得 --> エラー。
HGET  person age
--> (nil)