(* データ定義
   [] : 空リスト
   first :: rest　-> 最初の要素が first で残りのリストが rest
    ( rest が自己参照のケース) *)

(* 目的: 整数のリストのうち、偶数の要素をリスト化して返す *)
(* even : int list -> int list *)
let even lst = lst

(* test: #use "ex9_5.ml";; *)
let test1 = even [] = []
let test2 = even [2; 1; 6; 4; 7] = [2; 6; 4]
let test3 = even [1; 5; 7] = []
let test2 = even [2; 6; 4] = [2; 6; 4]
