(* 目的: 二次方程式の判別式を返す関数 *)
(* hanbetsushiki : int -> int -> int -> int *)
let hanbetsushiki a b c = 0

(* 判別式とは *)
(* 二次の多項式 a * x ** 2 + b * x + cに対して， b ** 2 − 4 * a * c のこと *)

(* test: #use "ex5_4.ml";; *)
let test1 = hanbetsushiki 2 3 (-1) = 17
let test2 = hanbetsushiki 3 6 2 = 12
let test3 = hanbetsushiki 1 3 1 = 5
