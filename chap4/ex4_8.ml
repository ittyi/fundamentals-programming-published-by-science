(* 目的: 鶴亀算でつるの数を出す *)
(* tsurukame: int -> int -> int *)
let tsurukame how_many how_many_legs = 
    how_many - ((how_many_legs - how_many * 2) / 2)

(* test *)
let test_zero = tsurukame 0 0 = 0
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 2 6 = 1
let test2 = tsurukame 3 10 = 1
let test3 = tsurukame 100 274 = 63
