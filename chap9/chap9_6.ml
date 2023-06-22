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


(* gakusei_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 

(* 目的：学生リスト lst のうち成績が A の人の数を返す *) 
(* count_A : gakusei_t list -> int *) 
(* 例1
let rec count_A lst = match lst with
  [] -> 0
| first :: rest -> (
  match first with 
    {namae = n; tensuu = t; seiseki = s} -> 0 (* count_A rest *)
) *)

let rec count_A lst = match lst with
  [] -> 0
| {namae = n; tensuu = t; seiseki = s} :: rest 
    -> if s = "A"
        then 0
        else 0

(* 
二つの書き方の違いは、 first というパターン変数でレコード全体を指せるかどうか。
しかし、レコードの中身と全体の両方が必要になることはあまりないので、二つ目の書き方で事足りることが多い。

レコード中身と同時に全体を指す方法
let rec count_A lst = match lst with
  [] -> 0
| ({namae = n; tensuu = t; seiseki = s} as first) :: rest 
    -> 0 (* count_A rest *)
*)

(* test: #use "chap9_6.ml";; *) 
let test1 = count_A lst1 = 0 
let test2 = count_A lst2 = 0 
let test3 = count_A lst3 = 1 
let test4 = count_A lst4 = 2
