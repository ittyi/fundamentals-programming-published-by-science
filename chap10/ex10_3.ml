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
