(* 目的: 整数の昇順リストと整数 n を受け取ったら、前から順に見ていき照準を崩さずに n をリストに挿入する関数 *)
(* insert : int list n -> int list *)
let rec insert intList integer = match intList with
| [] -> [integer]
| first :: rest -> if first > integer 
    then integer :: first :: rest
    else first :: (insert rest integer)

(* データ定義 *)
(* int list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は int 型、 
                         rest が自己参照のケース） 
*) 

(* 目的: 与えられた整数リストを昇順に整列する関数 *)
(* ins_sort : inr list -> int list *)
let rec ins_sort lst = match lst with
| [] -> []
| first :: rest -> insert (ins_sort rest) first
  (* [List.length rest] *)
  (* then []
  else if  *)
  (* match rest1 with
  | [] -> []
  | first :: rest -> ins_sort (insert rest first) *)
  
  (* ins_sort (insert rest first) 
  ↑苦戦の面影w   
  *)

(* test: #use "ex10_2.ml";;  *)
let test1 = ins_sort [] = []
let test2 = ins_sort [1; 2; 3; 4; 5] = [1; 2; 3; 4; 5]
let test3 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test4 = ins_sort [5; 4] = [4; 5]



(* 模範解答: 
  ins_sortは一応あっていましたか。ってか、まぁこれが一番シンプルなんだろなぁ 
  insertは模範の方が綺麗。
*)
(* 目的：昇順に並んでいる lst の正しい位置に n を挿入する *) 
(* insert : int list -> int -> int list *) 
let rec insert lst n = match lst with 
    [] -> [n] 
  | first :: rest -> 
      if first < n then first :: insert rest n 
      else n :: lst 

(* 目的：受け取った整数のリスト lst を昇順に並べる *) 
(* example_ins_sort : int list -> int list *) 
let rec example_ins_sort lst = match lst with 
    [] -> [] 
  | first :: rest -> insert (ins_sort rest) first 
 
(* テスト *) 
let example_test1 = ins_sort [] = [] 
let example_test2 = ins_sort [1] = [1] 
let example_test3 = ins_sort [3; 1] = [1; 3] 
let example_test4 = ins_sort [1; 3] = [1; 3] 
let example_test5 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8] 
