let () = Printf.printf "Hello\n";;

(* 目的： 整数を受け取ってきたら、その 2 乗から 1 を引いた数を返す *)
fun n -> n * n - 1;;

let () = Printf.printf "\n~~length test ~~\n";;
let test1 = (fun n -> n * n - 1) 0 = -1
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = (fun n -> n * n - 1) 1 = 0
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = (fun n -> n * n - 1) 2 = 3
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;