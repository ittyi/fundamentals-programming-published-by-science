let () = Printf.printf "Hello\n";;

(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 

(* 目的：gakusei_t 型のリストから、全員の得点合計を返す関数 *)
(* gakusei_t list -> int *)
let total_points lst = 0
