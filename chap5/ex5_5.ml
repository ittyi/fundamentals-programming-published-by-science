(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = 
  (b *. b) -. 4. *. a *. c 

(* 目的: 二次方程式の係数を与えられたら、解の個数を返す *)
(* 解の個数とは *)
(* b ** 2 − 4 * a * c < 0 の時は会の個数は0 *)
(* b ** 2 − 4 * a * c = 0 の時は会の個数は1 *)
(* b ** 2 − 4 * a * c < 0 の時は会の個数は2 *)
(* kai_no_kosuu : float -> float -> float -> float *)
let kai_no_kosuu a b c = 
  if hanbetsushiki a b c < 0. then 0
  else if hanbetsushiki a b c = 0. then 1
  else 2


(* test: #use "ex5_5.ml";; *)
let test1 = kai_no_kosuu 2. 3. (-1.) = 2
let test2 = kai_no_kosuu 1. 4. 4. = 1
let test3 = kai_no_kosuu 1. 2. 2. = 0

