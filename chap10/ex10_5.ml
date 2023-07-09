(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  name: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* gakusei_t list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は gakusei_t 型、 
                         rest が自己参照のケース） 
*) 

(* gakuseiデータの例 *) 
let gakusei1 = {name = "gakusei1"; tensuu = 40; seiseki = "A"} 
let gakusei2 = {name = "gakusei2"; tensuu = 50; seiseki = "B"} 
let gakusei3 = {name = "gakusei3"; tensuu = 60; seiseki = "C"} 
let gakusei4 = {name = "gakusei4"; tensuu = 70; seiseki = "D"} 
let gakusei5 = {name = "gakusei5"; tensuu = 80; seiseki = "E"} 
let gakusei6 = {name = "gakusei6"; tensuu = 90; seiseki = "A"} 
 
(* gakuseiリストの例 *) 
let lst1 = [] 
let lst2 = [gakusei1] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei1; gakusei5; gakusei2; gakusei3] 
let lst5 = [gakusei1; gakusei2; gakusei3; gakusei4; gakusei5; gakusei6] 

(* 目的: 最高点数をとった学生のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let gakusei_max lst = match lst with
| [] -> gakusei6
| first :: rest -> gakusei6
  
  (* {
  name = "name";
  tensuu = 0; 
  seiseki = "A";
} *)

(* test *)
(* #use "ex10_5.ml";; *)
let test1 = gakusei_max lst5 = gakusei6
let test2 = gakusei_max lst2 = gakusei1
let test3 = gakusei_max lst3 = gakusei4
let test4 = gakusei_max lst4 = gakusei5
