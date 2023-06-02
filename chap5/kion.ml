(* 目的: 現在の気温 t から快適度を表す文字列を計算する *)
(* kion : int -> string *)
let kion t = 
  if t < 15 then ""
  else if t <= 25 then ""
  else ""

(* #use "kion.ml";; *)
let test1 = kion 7 = "普通"
let test2 = kion 15 = "快適"
let test3 = kion 20 = "快適"
let test4 = kion 25 = "快適"
let test5 = kion 28 = "普通"
