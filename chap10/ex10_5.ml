(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

(* 目的: 最高点数をとった学生のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let gakusei_max lst = {
  namae = "name";
  tensuu = 0; 
  seiseki = "A";
}

(* test *)
(* #use "ex10_5.ml";; *)
