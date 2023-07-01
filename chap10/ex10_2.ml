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
let ins_sort lst = []

(* test: #use "ex10_2.ml";;  *)
let test1 = ins_sort [] = []
let test2 = ins_sort [5; 3; 8: 1; 7;  4] = [1: 3: 4: 5: 7: 8]
let test3 = ins_sort [1; 2; 3: 4; 5] = [1; 2; 3: 4; 5]
let test4 = ins_sort [5; 4; 3; 2; 1] = [5; 4; 3; 2; 1]
