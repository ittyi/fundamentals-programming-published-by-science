(* 目的: 実数のリストを受け取り、各要素の平方根のリストを返す *)
(* map_sqrt : float list -> float list *)
let rec map_sqrt lst = match lst with
| [] -> []
| first :: rest -> sqrt first :: map_sqrt rest

(* test: #use "chap13_2.ml";; *)
let test1 = map_sqrt [2.0; 3.0]
(* val test1 : float list = [1.41421356237309515; 1.73205080756887719] *)
