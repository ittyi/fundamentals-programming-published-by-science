(* (fun x -> x + 1) 1;; *)

let () = Printf.printf "\n~~fun x -> x + 1 test ~~\n";;
let test1 = (fun x -> x + 1) 1 = 2
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = (fun x -> x + 1) 2 = 3
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let add1 = fun x -> x + 1;;
let () = Printf.printf "\n~~add1 test ~~\n";;
let test1 = add1 1 = 2
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = add1 2 = 3
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

(* 目的：受け取ったリスト lst の各要素の和を求める *)
(* sum : int list -> int *)
let sum = 
  fun lst -> let add_int first rest_result = first + rest_result in
  List.fold_right add_int lst 0;;
