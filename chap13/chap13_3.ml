(* test: #use "chap13_3.ml";; *)
let is_zero n = (n = 0)

(* 目的: 関数 f とリスト lst を受け取り f を施したリストを返す *)
(* map : (a' -> b') -> 'a list -> 'b list *)
let rec map f lst = match lst with
| [] -> []
| first :: rest -> f first :: map f rest

let test1 = map is_zero [2; 1; 0; -1; -2]
(* val is_zero : int -> bool = <fun>
val map : ('a -> 'b) -> 'a list -> 'b list = <fun>
val test1 : bool list = [false; false; true; false; false] *)

let test2 = List.map is_zero [2; 1; 0; -1; -2]
(* val is_zero : int -> bool = <fun>
val map : ('a -> 'b) -> 'a list -> 'b list = <fun>
val test1 : bool list = [false; false; true; false; false]
val test2 : bool list = [false; false; true; false; false] *)