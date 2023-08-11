(* 目的: 0 から受け取った自然数までの 2 乗の和を求める関数 *)
(* sum_of_square : int -> int *)
let rec sum_of_square 0 = 0

(* test: #use "ex11_1.ml";; *)
let test1 = sum_of_square 0 = 0
let test2 = sum_of_square 1 = 1
let test3 = sum_of_square 2 = 5
let test4 = sum_of_square 3 = 14
let test5 = sum_of_square 4 = 30
let test6 = sum_of_square 5 = 55
