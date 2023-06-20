(* データ定義
   [] : 空リスト
   first :: rest　-> 最初の要素が first で残りのリストが rest
    ( rest が自己参照のケース) *)

(* 目的: リストの長さを返す関数 *)
(* length : int list -> int *)
let length lst = match lst with
| first :: rest -> 0 (* length rest *)

(* test: #use "ex9_4.ml";; *)
let test1 = length [] = 0
let test2 = length [2; 1; 6; 4; 7] = 5
let test3 = length [2] = 1
