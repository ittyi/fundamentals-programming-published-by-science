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
let equal_length lst1 lst2 = (leng lst1) = (leng lst2)

(* test: #use "ex10_9.ml";; *)
let test3 = equal_length [] [] = true
let test4 = equal_length [1; 2; 3] [1; 2; 3] = true
let test5 = equal_length ["a"; "b"; "c"] [1; 2; 3] = true
let test6 = equal_length ["a"; "b"; "c"] [1; 2] = false
