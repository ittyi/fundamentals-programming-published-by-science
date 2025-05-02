let () = Printf.printf "hello\n";;

(* 目的：総数の第 n 項の値を求める *)
(* dai_n_kou : int -> float *)
let rec dai_n_kou n = 
    if n = 0
        then 1.0
        else dai_n_kou (n - 1) /. float_of_int n 

(* 目的： e の近似値を求める *)
(* e : int -> float *)
(* テンプレートがこんな感じ
let rec e n = 
    if dai_n_kou n < 0.00001
        then 0.0 (* 自明なケース *)
        else 0.0 (* それ以外のケース *)
*)

let rec e n = 
    if dai_n_kou n < 0.00001
        then dai_n_kou n
        else dai_n_kou n +. e (n + 1)
(* この上記の 0.00001 が、0.0 だといつまでも到達しないので停止性がなくなる。 *)

(* 局所変数を使うとより簡潔 *)
let rec e n = 
    let d = dai_n_kou n in
    if d < 0.00001
        then d
        else d +. e (n + 1)