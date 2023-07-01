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