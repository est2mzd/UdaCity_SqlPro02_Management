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


