(* 目的: 二つの整数の組 pair を受け取りその要素の和を返す *)
(* add: int * int -> inr *)
let add pair = match pair with
| (a, b) -> a + b

(* test: #use "chap7_3.ml";; *)
let test1 = add (0, 0) = 0
let test2 = add (3, 5) = 8
let test3 = add (3, -5) = -2
