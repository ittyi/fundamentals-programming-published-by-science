let () = Printf.printf "hello\n";;

(* 目的：総数の第 n 項の値を求める *)
(* dai_n_kou : int -> float *)
let rec dai_n_kou n = 
    if n = 0
        then 1.0
        else dai_n_kou (n - 1) /. float_of_int n 

(* 目的： e の近似値を求める *)
(* e : int -> float *)
let rec e n = 
    if dai_n_kou n < 0.00001
        then 0.0 (* 自明なケース *)
        else 0.0 (* それ以外のケース *)

