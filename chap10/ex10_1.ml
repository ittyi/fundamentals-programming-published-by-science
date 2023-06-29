(* データ定義 *)
(* int list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は int 型、 
                         rest が自己参照のケース） 
*) 

(* 目的: 整数の昇順リストと整数 n を受け取ったら、前から順に見ていき照準を崩さずに n をリストに挿入する関数 *)
(* insert : int list n -> int list *)
let insert intList integer = match intList with
| [] -> [integer]
| first :: rest -> []

(* test: #use "ex10_1.ml";; *)
let test1 = insert [] 0 = [0]
let test2 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
