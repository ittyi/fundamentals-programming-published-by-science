(* 目的: 現在の気温 t から快適度を表す文字列を計算する *)
(* kion : int -> string *)
let kion t = 
  if kaiteki t then "快適"
  else "普通"

(* test: #use "kion.ml";; *)
let test1 = kion 7 = "普通"
let test2 = kion 15 = "快適"
let test3 = kion 20 = "快適"
let test4 = kion 25 = "快適"
let test5 = kion 28 = "普通"

(* 目的: 現在の気温 t が 15 以上 25 以下かどうかをチェックする *)
(* kaiteki : int -> bool *)
let kaiteki t = 
  15 <= t && t <= 25

(* test: #use "kion.ml";; *)
let test6 = kaiteki 7 = false
let test7 = kaiteki 15 = true
let test8 = kaiteki 20 = true
let test9 = kaiteki 25 = true
let test10 = kaiteki 28 = false
