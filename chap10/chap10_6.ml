(* 目的: 昇順に並んでいるリスト二つをマージする *)
(* merge : int list -> int list -> int list *)
let rec merge lst1 lst2 = []

(* test: #use "chap10_6.ml";; *)
let test1 = merge [] [] = []
let test2 = merge [] [1; 2] = [1; 2]
let test3 = merge [1; 2] [] = [1; 2]
let test4 = merge [1; 3] [2; 4] = [1; 2; 3; 4]
let test5 = merge [2; 4] [1; 3] = [1; 2; 3; 4]
let test6 = merge [1; 4] [1; 3] = [1; 1; 3; 4]
