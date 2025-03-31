let () = Printf.printf "Hello\n";;

(* 偶数の数を数える関数 *)
let even lst = 
  let isEven n = n mod 2 == 0 in
  List.filter isEven lst

let () = Printf.printf "\n~~let even test ~~\n";;
let test1 = even [] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;
let test2 = even [2; 1; 6; 4; 7] = [2; 6; 4]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;
let test3 = even [1; 5; 7] = []
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;
let test4 = even [2; 6; 4] = [2; 6; 4]
let () = Printf.printf "test4: ";;
print_endline (string_of_bool (test4 = true));;
