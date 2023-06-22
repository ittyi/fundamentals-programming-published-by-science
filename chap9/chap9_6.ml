(* レコードのリストなど、入力が複雑になった場合のテンプレートについて学ぶ。 *)

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* gakusei_t list は 
     - []              空リスト、あるいは 
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は gakusei_t 型、 
                         rest が自己参照のケース） 
   という形 *) 

