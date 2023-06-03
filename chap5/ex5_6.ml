(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = 
  (b *. b) -. 4. *. a *. c 

(* 目的: 二次方程式の係数を与えられたら、虚数解を持つか判別する *)
(* 虚数解 判別の仕方 *)
(* ・D＞0のとき　異なる２つの実数解をもつ
・D＜0のとき　異なる２つの虚数解をもつ
・D＝0のとき　ただ１つの実数解をもつ *)
(* kyosuukai: float -> float -> float -> bool *)
let kyosuukai a b c = 
  if hanbetsushiki a b c < 0. then true
  else false

(* test: #use "ex5_6.ml";; *)
let test1 = kyosuukai 2. 3. (-1.) = false
let test2 = kyosuukai 1. 4. 4. = false
let test3 = kyosuukai 1. 2. 2. = true
