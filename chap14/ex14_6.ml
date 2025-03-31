let () = Printf.printf "Hello\n";;

(* 目的：学生リスト lst のうち、成績が seisekiXXX の人の数を返す *)
(* a` list -> b` -> int *)
let count lst target = 0

let () = Printf.printf "\n~~let count test ~~\n";;
let test1 = count [] 0 = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = count ["0"] "0" = 1
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = count ["0"; "0"] "0" = 2
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = count [0; 0] "0" = 0
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

let test5 = count ["0"; "1"] "0" = 1
let () = Printf.printf "test5: ";;
print_endline (string_of_bool (test5 = true));;
