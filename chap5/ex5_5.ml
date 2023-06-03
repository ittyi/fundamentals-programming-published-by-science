(* 目的: 二次方程式の係数を与えられたら、解の個数を返す *)
(* kai_no_kosuu : int -> int -> int -> int *)
let kai_no_kosuu a b c = 0

(* 解の個数とは *)
(* b ** 2 − 4 * a * c < 0 の時は会の個数は0 *)
(* b ** 2 − 4 * a * c = 0 の時は会の個数は1 *)
(* b ** 2 − 4 * a * c < 0 の時は会の個数は2 *)

(* test: #use "ex5_5.ml";; *)
let test1 = kai_no_kosuu 2. 3. (-1.) = 2
let test2 = kai_no_kosuu 1. 4. 4. = 1
let test3 = kai_no_kosuu 1. 2. 1. = 0
