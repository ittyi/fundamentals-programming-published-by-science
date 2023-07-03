(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* 目的: gakusei_t 型を受け取り、tensuu フィールドの順に整列する関数 *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let gakusei_sort gakusei = []

(* test: #use "ex10_3.ml";; *)
