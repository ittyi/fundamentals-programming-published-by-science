(* 目的：受け取った lst の中の最小値を返す *) 
(* minimum : int list -> int *) 
let rec minimum lst = match lst with 
    [] -> max_int
  | first :: rest -> 
    let min_rest = minimum rest in
      if first < min_rest
        then first
        else min_rest


(* test: #use "chap10_3.ml";; *) 
let test1 = minimum [3] = 3 
let test2 = minimum [1; 2] = 1 
let test3 = minimum [3; 2] = 2 
let test4 = minimum [3; 2; 6; 4; 1; 8] = 1 
let test4 = minimum [3; 2; 2; 1; 1; 8] = 1 

(* 動作確認 *)
let max_int_test = max_int
(* 
val max_int_test : int = 4611686018427387903 
→ 上記は 64bit の場合の max値
min_int もある。
*)
