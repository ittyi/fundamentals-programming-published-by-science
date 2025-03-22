(* 目的：受け取ったリスト lst の長さを求める *)
(* length : a' list -> int *)
let rec length lst = match lst with
| [] -> 0
| f :: r -> 1 + length r
