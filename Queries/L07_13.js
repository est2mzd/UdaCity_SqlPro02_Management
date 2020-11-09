// Redis Command

//---------------------------------------
// 文字列に値を代入
GET name
  --> (nil)

SET name "Sarah Connor"

GET name
--> "Sarah Connor"

DEL name

//---------------------------------------
// 整数の取り扱い-1
SET temperature 42

GET temperature
--> "42"

INCR temperature
--> "43"

//---------------------------------------
// 整数の取り扱い-2
INCR visitors
--> (integer) 1

INCR visitors
--> (integer) 2

GET visitors
--> "2"