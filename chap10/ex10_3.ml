(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* データ定義 *)
(* int list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は int 型、 
                         rest が自己参照のケース） 
*) 

(* 型に対応したinsertを作る。 *)
(* 目的: gakusei_t の昇順リストと tensuu を持った gakusei_info を受け取ったら、前から順に見ていき昇順を崩さずに gakusei_info をリストに挿入する関数 *)
(* gakusei_insert : gakusei_t list gakusei_info -> gakusei_t list *)
let rec gakusei_insert gakusei_t_list gakusei_info = match gakusei_t_list with
| [] -> [gakusei_info]
| ({
  namae = n;
  tensuu = t;
  seiseki = s;
} as first) :: rest -> if first.tensuu > gakusei_info.tensuu
    then gakusei_info :: first :: rest
    else first :: (insert rest gakusei_info)

(* 目的: gakusei_t 型を受け取り、tensuu フィールドの順に整列する関数 *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort gakusei = match gakusei with
| [] -> []
| first :: rest -> gakusei_insert (gakusei_sort rest) first

(* memo: これ、挿入法でいける気がする。 *)
(* ので、まず答えはこうなってほしい。 *)

(* test: #use "ex10_3.ml";; *)
let test1 = gakusei_sort [
  {
    namae = "namae1";    (*名前*)
    tensuu = 1;      (*点数*)
    seiseki = "A";  (*成績*)
  };
  {
    namae = "namae2";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "B";  (*成績*)
  };
] = [
  {
    namae = "namae1";    (*名前*)
    tensuu = 1;      (*点数*)
    seiseki = "A";  (*成績*)
  };
  {
    namae = "namae2";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "B";  (*成績*)
  };
] 

let test2 = gakusei_sort [
  {
    namae = "namae1";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "A";  (*成績*)
  };
  {
    namae = "namae2";    (*名前*)
    tensuu = 1;      (*点数*)
    seiseki = "B";  (*成績*)
  };
] = [
  {
    namae = "namae2";    (*名前*)
    tensuu = 1;      (*点数*)
    seiseki = "B";  (*成績*)
  };
  {
    namae = "namae1";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "A";  (*成績*)
  };
] 

let test3 = gakusei_sort [] = [] 

(* 模範解答の差分は データ例の明示とgakusei_insert*)
(* 
んー、matchのネストは好かんなぁ。一つくらいのネストならドット.参照が好み。 
でも as を使うアイデアがあってたのは嬉しい  
*)
(* 学生のデータの例 *) 
let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"} 
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"} 
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"} 
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"} 
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"} 
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"} 
 
(* 学生のリストの例 *) 
let lst1 = [] 
let lst2 = [gakusei2] 
let lst3 = [gakusei3; gakusei4] 
let lst4 = [gakusei4; gakusei3] 
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3] 

(* 目的：昇順に並んでいる lst の正しい位置に gakusei を挿入する *) 
(* gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list *) 
let rec example_gakusei_insert lst gakusei0 = match lst with 
    [] -> [gakusei0] 
  | ({namae = n; tensuu = t; seiseki = s} as gakusei) :: rest -> 
      match gakusei0 with {namae = n0; tensuu = t0; seiseki = s0} -> 
	if t < t0 then gakusei :: gakusei_insert rest gakusei0 
	else gakusei0 :: lst 
 
(* テスト *) 
let example_test1 = example_gakusei_insert [] gakusei2 = [gakusei2] 
let example_test2 = example_gakusei_insert [gakusei4] gakusei3 = [gakusei4; gakusei3] 
let example_test3 = example_gakusei_insert [gakusei3] gakusei4 = [gakusei4; gakusei3] 
let example_test4 = example_gakusei_insert [gakusei6; gakusei5; gakusei3; gakusei2; gakusei1] 
			   gakusei4 
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 