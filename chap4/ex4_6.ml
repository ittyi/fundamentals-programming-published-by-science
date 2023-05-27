let crane_legs = 2

(* 目的: 鶴の数から足の数を算出する *)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi how_many_birds = how_many_birds * crane_legs

(* test *)
let test_normal1 = tsuru_no_ashi 8 = 16
let test_zero = tsuru_no_ashi 0 = 0
let test_normal2 = tsuru_no_ashi 100 = 200


let turtle_legs = 4

(* 目的: 亀の数から足の数を算出する *)
(* kame_no_ashi: int -> int *)
let kame_no_ashi how_many_turtle = how_many_turtle * turtle_legs

(* test *)
let test_normal1 = kame_no_ashi 8 = 32
let test_zero = kame_no_ashi 0 = 0
let test_normal2 = kame_no_ashi 100 = 400
