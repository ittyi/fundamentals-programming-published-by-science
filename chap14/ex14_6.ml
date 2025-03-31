let () = Printf.printf "Hello\n";;

(* 目的：学生リスト lst のうち、成績が seisekiXXX の人の数を返す *)
(* a` list -> b` -> int *)
(* お題：filter と length を使って解く。 *)
let count lst target = 
  let isSame target = target = "0" in
  let tmp = List.filter isSame lst in
  List.length tmp

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

let test4 = count ["0"; "1"] "0" = 1
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;
