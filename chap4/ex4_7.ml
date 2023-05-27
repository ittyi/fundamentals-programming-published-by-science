let crane_legs = 2
let turtle_legs = 4

(* 目的: 鶴と亀の数から足の数をする *)
(* tsurukame_no_ashi: int -> int -> int *)
let tsurukame_no_ashi how_many_birds how_many_turtle = 
    (how_many_birds * crane_legs) + (how_many_turtle * turtle_legs)

let test_zero = tsurukame_no_ashi 0 0 = 0
let testcase1 = tsurukame_no_ashi 2 4 = 20
let testcase2 = tsurukame_no_ashi 10 10 = 60
