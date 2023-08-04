(* 目的: 自然数 n の階乗を求める *)
(* fac : int -> int *)
let rec fac n = 0

(* test: #use "chap11_2.ml";; *)
let test1 = fac 0 = 1
let test2 = fac 1 = 1
let test3 = fac 2 = 2
let test4 = fac 3 = 6
let test5 = fac 4 = 24
let test6 = fac 10 = 3628800
