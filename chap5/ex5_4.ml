(* 目的: 二次方程式のの係数を与えられたら判別式を返す関数 *)
(* 判別式とは *)
(* 二次の多項式 a * x ** 2 + b * x + cに対して， b ** 2 − 4 * a * c のこと *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = 
  (b *. b) -. 4. *. a *. c 

(* test: #use "ex5_4.ml";; *)
let test1 = hanbetsushiki 2. 3. (-1.) = 17.
let test2 = hanbetsushiki 3. 6. 2. = 12.
let test3 = hanbetsushiki 1. 3. 1. = 5.
