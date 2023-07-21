(* a' list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は a' 型、 
                         rest が自己参照のケース） 
*) 

(* 目的: listの長さを計測する *)
(* leng : a' list -> int *)
let rec leng lst = match lst with
| [] -> 0
| first :: rest -> 1 + (leng rest)

let test1 = leng [1; 2; 3] = 3
let test2 = leng ["a"; "b"; "c"] = 3
(* 組とリストのミスよくやってしまうな〜 *)

(* 目的: 二つのリストの長さが同じかどうかを判定する *)
(* equal_length : a' list -> a'list -> bool *)
let equal_length = false

(* test: #use "ex10_9.ml";; *)
