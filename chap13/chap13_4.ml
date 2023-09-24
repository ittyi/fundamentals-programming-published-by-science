(* test: #use "chap13_4.ml";; *)
let test1 = 3
let test2 = sqrt
(* 
val test1 : int = 3
val test2 : float -> float = <fun> 
*)

let twice7 f = f (f 7)
(* val twice7 : (int -> int) -> int = <fun> *)

let add3 x = x + 3
(* val add3 : int -> int = <fun> *)

let test3 = twice7 add3
(* val test3 : int = 13 *)
