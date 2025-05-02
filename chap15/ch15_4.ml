let () = Printf.printf "hello\n";;

(* 目的：総数の第 n 項の値を求める *)
(* dai_n_kou : int -> float *)
let rec dai_n_kou n = 
    if n = 0
        then 1.0
        else dai_n_kou (n - 1) /. float_of_int n 

