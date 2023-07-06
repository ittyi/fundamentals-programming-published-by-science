(* ちょっと構造体の扱いについて動作確認 *)
(* #use "test.ml";;  *)

(* 学生1人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae: string;    (*名前*)
  tensuu: int;      (*点数*)
  seiseki: string;  (*成績*)
}

let testttt = {
    namae = "namae1";    (*名前*)
    tensuu = 2;      (*点数*)
    seiseki = "A";  (*成績*)
  }

let tst = testttt.tensuu

(* 普通にフィールドアクセスはできる
# #use "test.ml";; 
type gakusei_t = { namae : string; tensuu : int; seiseki : string; }
val testttt : gakusei_t = {namae = "namae1"; tensuu = 2; seiseki = "A"}
val tst : int = 2 

*)