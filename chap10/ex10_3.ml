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

(* 目的: gakusei_t 型を受け取り、tensuu フィールドの順に整列する関数 *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let gakusei_sort gakusei = match gakusei with
| [] -> []
| first :: rest -> []

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
    seiseki = "A";  (*成績*)
  };
  {
    namae = "namae1";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "B";  (*成績*)
  };
] 

let test3 = gakusei_sort [] = [] 
