let () = Printf.printf "helolo\n";;

(* 目的：受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst = match lst with
| [] -> [] (* 自明に答えが出るケース *)
| f :: r -> [] (* それ以外のケース *)

(* テスト *) 
let () = Printf.printf "\n~~ quick_sort test ~~ \n"
let test1 = quick_sort [] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = quick_sort [1] = [1]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = quick_sort [1; 2] = [1; 2]
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = quick_sort [2; 1] = [1; 2]
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]
let () = Printf.printf "test5: ";;
print_endline (string_of_bool (test5 = true));;
