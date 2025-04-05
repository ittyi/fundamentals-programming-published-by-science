(* (fun x -> x + 1) 1;; *)

let () = Printf.printf "\n~~fun x -> x + 1 test ~~\n";;
let test1 = (fun x -> x + 1) 1 = 2
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = (fun x -> x + 1) 2 = 3
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;