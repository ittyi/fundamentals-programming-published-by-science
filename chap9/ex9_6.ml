(* データ定義
   [] : 空リスト
   first :: rest　-> 最初の要素が first で残りのリストが rest
    ( rest が自己参照のケース) *)

(* 目的: string のリストのうち、全要素を結合して返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
| [] -> ""
| first :: rest -> first ^ concat rest

(* test: #use "ex9_6.ml";; *)
let test1 = concat [] = ""
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"

