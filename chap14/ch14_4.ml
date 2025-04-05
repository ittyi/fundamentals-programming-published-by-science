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

let () = Printf.printf "\n~~sum test ~~\n";;
let test1 = sum [] = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = sum [1] = 1
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = sum [1; 1] = 2
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = sum [1; 2] = 3
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

(* 模範解答 *)
let sum lst = 
  List.fold_right (fun first rest_result -> first  + rest_result) lst 0;;

let () = Printf.printf "\n~~模範解答 sum test ~~\n";;
let test1 = sum [] = 0
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = sum [1] = 1
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let test3 = sum [1; 1] = 2
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;

let test4 = sum [1; 2] = 3
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;

(* 受け取ったリスト lst の長さを求める *)
(* length : a` list -> int *)
let length lst = 
  List.fold_right (fun first rest_result -> 1 + rest_result) lst 0
